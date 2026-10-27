import SequenceMachineLib
import Mathlib.Tactic
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C003
import Seq.B000.C004
import Seq.B000.C006
import Seq.B000.C007
import Seq.B000.C008
import Seq.B000.C009
import Seq.B000.C010
import Seq.B000.C012
import Seq.B000.C013
import Seq.B000.C014
import Seq.B000.C015
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C022
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C028
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C036
import Seq.B000.C037
import Seq.B000.C038
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C008
import Seq.B001.C009
import Seq.B001.C010
import Seq.B001.C012
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
import Seq.B003.C005
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
import Seq.B008.C000
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
import SequenceMachineLib.Triangle

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A345000: a(n) = gcd(A003415(n), A003415(A276086(n))), where A003415(n) is the arithmetic derivative of n, and A276086(n) gives the prime product form of primorial base expansion of n.

The programs for A345000, there is no canonical definition to state claims against.
-/

/-! ## A345000.P6867067137374484987

`gcd(A003415(n), A327860(n))`
-/

namespace A345000.P6867067137374484987
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A003415 n) (A327860 n)

end

end A345000.P6867067137374484987

/-! ## A345000.P1270652245702239418

`gcd(A003415(n), A003415(A276086(n)))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A345000.P1270652245702239418
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A003415 n) (A003415 (A276086 n).toNat)

end

end A345000.P1270652245702239418

/-! ## A345000.P5878961307823647231

`gcd(A342016(n)+A276086(n), A129283(n)-n)`
-/

namespace A345000.P5878961307823647231
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A342016 n + A276086 n) (A129283 n - (n : ℤ))

end

end A345000.P5878961307823647231

/-! ## A345000.P7578604081687127604

`gcd(A328572(n)*A342002(n), ∑{d}[n, A300251(#)])`
-/

namespace A345000.P7578604081687127604
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A328572 n * A342002 n) (∑ d ∈ Nat.divisors (f1 n), A300251 d)

end

end A345000.P7578604081687127604

/-! ## A345000.P17053934168173544207

`gcd(A328572(n)*A346253(A328622(n)), A319703(A028310(2*n)))`
-/

namespace A345000.P17053934168173544207
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A328572 n * A346253 (A328622 n).toNat) (A319703 (A028310 (2 * n)).toNat)

end

end A345000.P17053934168173544207

/-! ## A345000.P13704410877502087691

`gcd(∑{d}[n, A348976(#)]-n, A328572(n)*A344760(A289234(n)))`
-/

namespace A345000.P13704410877502087691
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (∑ d ∈ Nat.divisors (f1 n), A348976 d - (n : ℤ)) (A328572 n * A344760 (A289234 n).toNat)

end

end A345000.P13704410877502087691

/-! ## A345000.P8480201674448256438

`gcd(A328572(n)*A344760(A289234(n)), A319703(A004275(n+1)))`
-/

namespace A345000.P8480201674448256438
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A328572 n * A344760 (A289234 n).toNat) (A319703 (A004275 (n + 1)).toNat)

end

end A345000.P8480201674448256438

/-! ## A345000.P7894825297183917225

`gcd(n-A129283(n), A344026(A277022(n)))`
-/

namespace A345000.P7894825297183917225
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd ((n : ℤ) - A129283 n) (A344026 (A277022 n).toNat)

end

end A345000.P7894825297183917225

/-! ## A345000.P16112709238818363434

`gcd(A319703(n-(1-n)%(n+1)+1), A328099(A276086(n)))`
-/

namespace A345000.P16112709238818363434
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A319703 ((n : ℤ) - Int.tmod (1 - (n : ℤ)) (n + 1 : ℤ) + 1).toNat) (A328099 (A276086 n).toNat)

end

end A345000.P16112709238818363434

/-!
# A345001: a(n) = sigma(n) + n' - 2n, where n' is the arithmetic derivative of n (A003415) and sigma is the sum of divisors (A000203).

The programs for A345001, the canonical program `A345001.P11556338326385216766` is in `Seq.B006.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A345001 has offset 1).

The definition of A345001 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A168036, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A345001.P11556338326385216766

`A001065(n+1)+A168036(n+1)`

The canonical program, it is in `Seq.B006.C001`.
-/

namespace A345001

/-- `A001065(n+1)+A168036(n+1)` -/
def P11556338326385216766.Spec : Prop :=
  ∀ n, P11556338326385216766.a n = A345001 (n + 1)

theorem P11556338326385216766.correct : P11556338326385216766.Spec := by
  intro n
  simp only [A345001, Nat.add_sub_cancel]

end A345001

/-! ## A345001.P18374117725777644400

`A003415(n+1)-A033879(n+1)`
-/

namespace A345001.P18374117725777644400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 (n + 1) - A033879 (n + 1)

end

end A345001.P18374117725777644400

namespace A345001

/-- `A003415(n+1)-A033879(n+1)` -/
def P18374117725777644400.Spec : Prop :=
  ∀ n, P18374117725777644400.a n = A345001 (n + 1)

end A345001

/-! ## A345001.P1088274681918576011

`A344999(n+1)/A048250(n+1)`
-/

namespace A345001.P1088274681918576011
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A344999 (n + 1) : ℚ) / (A048250 (n + 1) : ℚ)

end

end A345001.P1088274681918576011

namespace A345001

/-- `A344999(n+1)/A048250(n+1)` -/
def P1088274681918576011.Spec : Prop :=
  ∀ n, P1088274681918576011.a n = (A345001 (n + 1) : ℚ)

end A345001

/-! ## A345001.P4194245933170683976

`A345049(n+1)/A173557(n+1)`
-/

namespace A345001.P4194245933170683976
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A345049 (n + 1) : ℚ) / (A173557 (n + 1) : ℚ)

end

end A345001.P4194245933170683976

namespace A345001

/-- `A345049(n+1)/A173557(n+1)` -/
def P4194245933170683976.Spec : Prop :=
  ∀ n, P4194245933170683976.a n = (A345001 (n + 1) : ℚ)

end A345001

/-! ## A345001.P18362306250752943086

`A000203(n+1)+A003415(n+1)-2*(n+1)`
-/

namespace A345001.P18362306250752943086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1) + A003415 (n + 1) - (2 * (n + 1) : ℤ)

end

end A345001.P18362306250752943086

namespace A345001

/-- `A000203(n+1)+A003415(n+1)-2*(n+1)` -/
def P18362306250752943086.Spec : Prop :=
  ∀ n, P18362306250752943086.a n = A345001 (n + 1)

end A345001

/-! ## A345001.P8869257302098607186

`∑[A258057(n)]-(2*(n+1)-∑{d}[n+1, #])`
-/

namespace A345001.P8869257302098607186
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258057 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - ((2 * (n + 1) : ℤ) - ((∑ d ∈ Nat.divisors (f2 n), d : ℕ) : ℤ))

end

end A345001.P8869257302098607186

namespace A345001

/-- `∑[A258057(n)]-(2*(n+1)-∑{d}[n+1, #])` -/
def P8869257302098607186.Spec : Prop :=
  ∀ n, P8869257302098607186.a n = A345001 (n + 1)

end A345001

/-! ## A345001.P7469662751096251248

`A033880(n+1)+∑[A258057(n)]`
-/

namespace A345001.P7469662751096251248
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258057 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033880 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A345001.P7469662751096251248

namespace A345001

/-- `A033880(n+1)+∑[A258057(n)]` -/
def P7469662751096251248.Spec : Prop :=
  ∀ n, P7469662751096251248.a n = A345001 (n + 1)

end A345001

/-! ## A345001.P16421014595604910959

`∑[A258057(n)]-A033879(n+1)`
-/

namespace A345001.P16421014595604910959
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258057 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A033879 (n + 1)

end

end A345001.P16421014595604910959

namespace A345001

/-- `∑[A258057(n)]-A033879(n+1)` -/
def P16421014595604910959.Spec : Prop :=
  ∀ n, P16421014595604910959.a n = A345001 (n + 1)

end A345001

/-! ## A345001.P8767974117120905364

`A033880(n+1)+A003415(n+1)`
-/

namespace A345001.P8767974117120905364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033880 (n + 1) + A003415 (n + 1)

end

end A345001.P8767974117120905364

namespace A345001

/-- `A033880(n+1)+A003415(n+1)` -/
def P8767974117120905364.Spec : Prop :=
  ∀ n, P8767974117120905364.a n = A345001 (n + 1)

end A345001

/-! ## A345001.P18429997828646851019

`A344178(n+1)+A228947(n+1)`
-/

namespace A345001.P18429997828646851019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344178 (n + 1) + A228947 (n + 1)

end

end A345001.P18429997828646851019

namespace A345001

/-- `A344178(n+1)+A228947(n+1)` -/
def P18429997828646851019.Spec : Prop :=
  ∀ n, P18429997828646851019.a n = A345001 (n + 1)

end A345001

/-! ## A345001.P8010661800819855890

`A091818(n+1)-A343224(n+1)`
-/

namespace A345001.P8010661800819855890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091818 (n + 1) - A343224 (n + 1)

end

end A345001.P8010661800819855890

namespace A345001

/-- `A091818(n+1)-A343224(n+1)` -/
def P8010661800819855890.Spec : Prop :=
  ∀ n, P8010661800819855890.a n = A345001 (n + 1)

end A345001

/-! ## A345001.P3914366907031249236

`A345049(n+1)/A000010(A007947(n+1))`
-/

namespace A345001.P3914366907031249236
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A345049 (n + 1) : ℚ) / (A000010 (A007947 (n + 1)).toNat : ℚ)

end

end A345001.P3914366907031249236

namespace A345001

/-- `A345049(n+1)/A000010(A007947(n+1))` -/
def P3914366907031249236.Spec : Prop :=
  ∀ n, P3914366907031249236.a n = (A345001 (n + 1) : ℚ)

end A345001

/-! ## A345001.P8241044022922866134

`A168036(n+1)+A343224(n+1)+A168036(n+1)`
-/

namespace A345001.P8241044022922866134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168036 (n + 1) + (A343224 (n + 1) + A168036 (n + 1))

end

end A345001.P8241044022922866134

namespace A345001

/-- `A168036(n+1)+A343224(n+1)+A168036(n+1)` -/
def P8241044022922866134.Spec : Prop :=
  ∀ n, P8241044022922866134.a n = A345001 (n + 1)

end A345001

/-! ## A345001.P3487879968695554085

`A003415(n+1)+A168036(n+1)-A211991(n+1)`
-/

namespace A345001.P3487879968695554085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 (n + 1) + (A168036 (n + 1) - A211991 (n + 1))

end

end A345001.P3487879968695554085

namespace A345001

/-- `A003415(n+1)+A168036(n+1)-A211991(n+1)` -/
def P3487879968695554085.Spec : Prop :=
  ∀ n, P3487879968695554085.a n = A345001 (n + 1)

end A345001

/-! ## A345001.P13086743236057975266

`A003415(n+1)+A348508(n+1)-A348029(n+1)`
-/

namespace A345001.P13086743236057975266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 (n + 1) + (A348508 (n + 1) - A348029 (n + 1))

end

end A345001.P13086743236057975266

namespace A345001

/-- `A003415(n+1)+A348508(n+1)-A348029(n+1)` -/
def P13086743236057975266.Spec : Prop :=
  ∀ n, P13086743236057975266.a n = A345001 (n + 1)

end A345001

/-! ## A345001.P16809957070447977635

`A348507(n+1)-(A348970(n+1)+A033879(n+1))`
-/

namespace A345001.P16809957070447977635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348507 (n + 1) - (A348970 (n + 1) + A033879 (n + 1))

end

end A345001.P16809957070447977635

namespace A345001

/-- `A348507(n+1)-(A348970(n+1)+A033879(n+1))` -/
def P16809957070447977635.Spec : Prop :=
  ∀ n, P16809957070447977635.a n = A345001 (n + 1)

end A345001

/-! ## A345001.P9499552518585034482

`(A344998(n+1)-A345043(n+1))/A048250(n+1)`
-/

namespace A345001.P9499552518585034482
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A344998 (n + 1) - A345043 (n + 1) : ℚ) / (A048250 (n + 1) : ℚ)

end

end A345001.P9499552518585034482

namespace A345001

/-- `(A344998(n+1)-A345043(n+1))/A048250(n+1)` -/
def P9499552518585034482.Spec : Prop :=
  ∀ n, P9499552518585034482.a n = (A345001 (n + 1) : ℚ)

end A345001

/-! ## A345001.P15403645737121584855

`(A345048(n+1)-A345050(n+1))/A173557(n+1)`
-/

namespace A345001.P15403645737121584855
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A345048 (n + 1) - A345050 (n + 1) : ℚ) / (A173557 (n + 1) : ℚ)

end

end A345001.P15403645737121584855

namespace A345001

/-- `(A345048(n+1)-A345050(n+1))/A173557(n+1)` -/
def P15403645737121584855.Spec : Prop :=
  ∀ n, P15403645737121584855.a n = (A345001 (n + 1) : ℚ)

end A345001

/-! ## A345001.P12592511586560279461

`A319703(2*(n+1))+∑{d}[n+1, #]-2*(n+1)`
-/

namespace A345001.P12592511586560279461
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319703 (2 * (n + 1)) + (((∑ d ∈ Nat.divisors (f1 n), d : ℕ) : ℤ) - (2 * (n + 1) : ℤ))

end

end A345001.P12592511586560279461

namespace A345001

/-- `A319703(2*(n+1))+∑{d}[n+1, #]-2*(n+1)` -/
def P12592511586560279461.Spec : Prop :=
  ∀ n, P12592511586560279461.a n = A345001 (n + 1)

end A345001

/-!
# A345002: Numbers k such that A345001(k)/A342001(k) is a positive natural number and a divisor of k.

The programs for A345002, there is no canonical definition to state claims against.
-/

/-! ## A345002.P2361329351372213532

`A175126(A256150(n+2))`
-/

namespace A345002.P2361329351372213532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175126 (A256150 (n + 2)).toNat

end

end A345002.P2361329351372213532

/-!
# A345003: Numbers k for which A344998(k) = A344999(k).

The programs for A345003, there is no canonical definition to state claims against.
-/

/-! ## A345003.P17301462470480185340

`eq[A344998(n+1), A344999(n+1)]+1`
-/

namespace A345003.P17301462470480185340
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344998 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344999 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A345003.P17301462470480185340

/-!
# A345004: Numbers k such that A345001(k)*A048250(k) is equal to A342001(k)*A344753(k) and A345001(n)/A342001(n) is an integer.

The programs for A345004, there is no canonical definition to state claims against.
-/

/-! ## A345004.P3414440826940689538

`A345003(record[A104615(n+1)])`
-/

namespace A345004.P3414440826940689538
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104615 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345003 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A345004.P3414440826940689538

/-!
# A345005: Odd numbers whose arithmetic derivative (A003415) is equal to Dedekind psi (A001615) applied to the same number.

The programs for A345005, there is no canonical definition to state claims against.
-/

/-! ## A345005.P6134642660086779479

`∩[or(1, A301939(n+1)), A301939(n+1)]`
-/

namespace A345005.P6134642660086779479
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A301939 (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301939 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A345005.P6134642660086779479

/-! ## A345005.P4782632947424765894

`∩[or(1, A345003(n+1)), A345003(n+1)]`
-/

namespace A345005.P4782632947424765894
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A345003 (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345003 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A345005.P4782632947424765894

/-!
# A345008: a(0) = 1; a(4*n) = a(n) - a(n-1), a(4*n+1) = a(4*n+2) = a(4*n+3) = a(n).

The programs for A345008, there is no canonical definition to state claims against.
-/

/-! ## A345008.P14263607608120844155

`A345009(A020654(n+1))`
-/

namespace A345008.P14263607608120844155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345009 (A020654 (n + 1)).toNat

end

end A345008.P14263607608120844155

/-! ## A345008.P8172381743124924697

`A345009(A020655(n+1)-1)`
-/

namespace A345008.P8172381743124924697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345009 (A020655 (n + 1) - 1).toNat

end

end A345008.P8172381743124924697

/-! ## A345008.P10408070051836185255

`A345009(A023733(n+1))`
-/

namespace A345008.P10408070051836185255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345009 (A023733 (n + 1)).toNat

end

end A345008.P10408070051836185255

/-! ## A345008.P11256537955715071143

`A345009(A023729(n+1))`
-/

namespace A345008.P11256537955715071143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345009 (A023729 (n + 1)).toNat

end

end A345008.P11256537955715071143

/-! ## A345008.P513583907768100577

`A348910(A277872(n))^A073711(A030109(n+1)²)`
-/

namespace A345008.P513583907768100577
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A348910 (A277872 n).toNat : ℚ) ^ (A073711 (A030109 (n + 1) ^ 2).toNat : ℤ)

end

end A345008.P513583907768100577

/-! ## A345008.P5050711995494412568

`(2-A277872(n))^A000701(n)`
-/

namespace A345008.P5050711995494412568
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 - A277872 n : ℚ) ^ (A000701 n : ℤ)

end

end A345008.P5050711995494412568

/-! ## A345008.P10067730490246414886

`(2-A277872(n))^A002623(n)`
-/

namespace A345008.P10067730490246414886
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 - A277872 n : ℚ) ^ (A002623 n : ℤ)

end

end A345008.P10067730490246414886

/-! ## A345008.P4964440185405233409

`(2-A277872(n))^A003520(n)`
-/

namespace A345008.P4964440185405233409
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 - A277872 n : ℚ) ^ (A003520 n : ℤ)

end

end A345008.P4964440185405233409

/-! ## A345008.P12354662012753851711

`(2-A277872(n))^A008804(n)`
-/

namespace A345008.P12354662012753851711
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 - A277872 n : ℚ) ^ (A008804 n : ℤ)

end

end A345008.P12354662012753851711

/-! ## A345008.P13407612801016581222

`(2-A277872(n))^A051879(n)`
-/

namespace A345008.P13407612801016581222
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 - A277872 n : ℚ) ^ (A051879 n : ℤ)

end

end A345008.P13407612801016581222

/-!
# A345009: a(0) = 1; a(5*n) = a(n) - a(n-1), a(5*n+1) = a(5*n+2) = a(5*n+3) = a(5*n+4) = a(n).

The programs for A345009, there is no canonical definition to state claims against.
-/

/-! ## A345009.P16646809841289755719

`A000122(A085986(n+1))-A277873(n)`
-/

namespace A345009.P16646809841289755719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000122 (A085986 (n + 1)).toNat - A277873 n

end

end A345009.P16646809841289755719

/-! ## A345009.P10673515881277682873

`A096737(A067363(2*(n+1)))-A277873(n)`
-/

namespace A345009.P10673515881277682873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096737 (A067363 (2 * (n + 1))).toNat - A277873 n

end

end A345009.P10673515881277682873

/-! ## A345009.P10489480968562845511

`A000005(A027867(n+1))-A277873(n)`
-/

namespace A345009.P10489480968562845511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A027867 (n + 1)).toNat - A277873 n

end

end A345009.P10489480968562845511

/-! ## A345009.P6384449634719843535

`A000005(A130791(n+1))-A277873(n)`
-/

namespace A345009.P6384449634719843535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A130791 (n + 1)).toNat - A277873 n

end

end A345009.P6384449634719843535

/-!
# A345013: Triangle read by rows, related to clusters of type D.

The programs for A345013, there is no canonical definition to state claims against.
-/

/-! ## A345013.P1816334637185505459

`C(row(n), col(n))*C(2*(row(n)+1)-col(n), row(n))`
-/

namespace A345013.P1816334637185505459
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (SequenceMachineLib.triRow n) (SequenceMachineLib.triCol n) * Nat.choose ((2 * (SequenceMachineLib.triRow n + 1) : ℤ) - (SequenceMachineLib.triCol n : ℤ)).toNat (SequenceMachineLib.triRow n)

end

end A345013.P1816334637185505459

/-! ## A345013.P9803268418571161729

`(C(comp[∑[n]]-n, 2)-n)*A060693(comp[∑[n-1]])`
-/

namespace A345013.P9803268418571161729
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f4 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 : ℤ) - (n : ℤ)) * A060693 (SequenceMachineLib.nth (fun x => ∀ j, f3 j ≠ (x : ℤ)) n)

end

end A345013.P9803268418571161729

/-! ## A345013.P7676221239694465964

`A004736(n+1)*A060693(comp[∑[n-1]])`
-/

namespace A345013.P7676221239694465964
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1) * A060693 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A345013.P7676221239694465964

/-! ## A345013.P16530141083804531715

`A130746(A038722(n+1))*A209518(n)`
-/

namespace A345013.P16530141083804531715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130746 (A038722 (n + 1)).toNat * A209518 n

end

end A345013.P16530141083804531715

/-! ## A345013.P9664572785913613665

`A000005(A130321(n))*A060693(A007401(n+1))`
-/

namespace A345013.P9664572785913613665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A130321 n).toNat * A060693 (A007401 (n + 1)).toNat

end

end A345013.P9664572785913613665

/-!
# A345014: a(n) is the least nonnegative integer k such that 2^n - k is a Sophie Germain prime.

The programs for A345014, there is no canonical definition to state claims against.
-/

/-! ## A345014.P9078052970321213851

`A000079(n+1)-A259788(A198633(n))`
-/

namespace A345014.P9078052970321213851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (n + 1) - A259788 (A198633 n).toNat

end

end A345014.P9078052970321213851

/-! ## A345014.P17378381231122242345

`A198633(n)-A259788(A198633(n)+1)`
-/

namespace A345014.P17378381231122242345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198633 n - A259788 (A198633 n + 1).toNat

end

end A345014.P17378381231122242345

/-! ## A345014.P6757951290537303329

`2*A000079(n)-A259788(A198633(n))`
-/

namespace A345014.P6757951290537303329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000079 n - A259788 (A198633 n).toNat

end

end A345014.P6757951290537303329

/-!
# A345016: Positive even integers with an odd number of Goldbach partitions.

The programs for A345016, there is no canonical definition to state claims against.
-/

/-! ## A345016.P3514422625500241859

`comp[or(n, A061358(n)%2)]`
-/

namespace A345016.P3514422625500241859
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (n : ℤ) (Int.tmod (A061358 n) 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A345016.P3514422625500241859

/-! ## A345016.P6074530872665846886

`eq[gcd(2, A061358(n)), A033999(n)]`
-/

namespace A345016.P6074530872665846886
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 2 (A061358 n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A345016.P6074530872665846886

/-! ## A345016.P3847019953037946075

`lt[0, and(A000034(n), A061358(n))]`
-/

namespace A345016.P3847019953037946075
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A000034 n) (A061358 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A345016.P3847019953037946075

/-! ## A345016.P12154256591962263864

`eq[1, and(A010685(n), A061358(n))]`
-/

namespace A345016.P12154256591962263864
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A010685 n) (A061358 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A345016.P12154256591962263864

/-! ## A345016.P16151546824579524749

`eq[1, and(A019431(n), A061358(n))]`
-/

namespace A345016.P16151546824579524749
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A019431 n) (A061358 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A345016.P16151546824579524749

/-! ## A345016.P1694217403003273658

`eq[1, and(A061358(n), A266303(n))]`
-/

namespace A345016.P1694217403003273658
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A061358 n) (A266303 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A345016.P1694217403003273658

/-! ## A345016.P2564807315399924406

`eq[A000034(n), A000035(A061358(n))]`
-/

namespace A345016.P2564807315399924406
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A061358 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A345016.P2564807315399924406

/-! ## A345016.P17935728184113274904

`eq[A000035(A061358(n)), A010685(n)]`
-/

namespace A345016.P17935728184113274904
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A061358 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010685 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A345016.P17935728184113274904

/-! ## A345016.P4229905902255254597

`eq[A000035(A061358(n)), A010691(n)]`
-/

namespace A345016.P4229905902255254597
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A061358 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010691 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A345016.P4229905902255254597

/-! ## A345016.P8578967835146199472

`eq[A020639(n+2), A000034(A061358(n))]`
-/

namespace A345016.P8578967835146199472
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 (A061358 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A345016.P8578967835146199472

/-!
# A345017: Positive even integers with an even number of Goldbach partitions.

The programs for A345017, there is no canonical definition to state claims against.
-/

/-! ## A345017.P13522606971837159121

`eq[A061358(n)%2, A266437(n)]`
-/

namespace A345017.P13522606971837159121
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A061358 n) 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266437 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A345017.P13522606971837159121

/-! ## A345017.P9038003161948973877

`lt[1, A040001(gcd(n, A061358(n)))]`
-/

namespace A345017.P9038003161948973877
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040001 (Int.gcd (n : ℤ) (A061358 n))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A345017.P9038003161948973877

/-! ## A345017.P13824194944824213213

`lt[2, A020639((n+1)*(A061358(n)+1))]`
-/

namespace A345017.P13824194944824213213
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 ((n + 1 : ℤ) * (A061358 n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A345017.P13824194944824213213

/-! ## A345017.P13584986967417125931

`2*(lt[n, A319308(A002375(n+1))]+1)`
-/

namespace A345017.P13584986967417125931
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319308 (A002375 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1)

end

end A345017.P13584986967417125931

/-! ## A345017.P9632596222428856488

`eq[A000034(A061358(n)), A019426(n)]`
-/

namespace A345017.P9632596222428856488
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 (A061358 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019426 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A345017.P9632596222428856488

/-! ## A345017.P168784306115806382

`eq[A000034(A061358(n)), A019427(n)]`
-/

namespace A345017.P168784306115806382
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 (A061358 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019427 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A345017.P168784306115806382

/-! ## A345017.P9992145702618603069

`eq[A000034(A061358(n)), A019428(n)]`
-/

namespace A345017.P9992145702618603069
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 (A061358 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019428 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A345017.P9992145702618603069

/-! ## A345017.P4933860053920766621

`eq[A000034(A061358(n)), A019429(n)]`
-/

namespace A345017.P4933860053920766621
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 (A061358 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019429 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A345017.P4933860053920766621

/-! ## A345017.P14749926519175456948

`eq[A000034(A061358(n)), A019430(n)]`
-/

namespace A345017.P14749926519175456948
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 (A061358 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019430 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A345017.P14749926519175456948

/-!
# A345018: For each n, append to the sequence n^2 consecutive integers, starting from n.

The programs for A345018, the canonical program `A345018.P322366405058277997` is in `Seq.B001.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A345018 has offset 1).

The definition of A345018 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A345018.P319100991892039423

`A064866(n+1)+∑[char[∑[(n+1)²]]]`
-/

namespace A345018.P319100991892039423
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064866 (n + 1) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A345018.P319100991892039423

namespace A345018

/-- `A064866(n+1)+∑[char[∑[(n+1)²]]]` -/
def P319100991892039423.Spec : Prop :=
  ∀ n, P319100991892039423.a n = A345018 (n + 1)

end A345018

/-! ## A345018.P12423982110580332793

`A074279(n+1)-1+A064866(n+1)`
-/

namespace A345018.P12423982110580332793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074279 (n + 1) - 1 + A064866 (n + 1)

end

end A345018.P12423982110580332793

namespace A345018

/-- `A074279(n+1)-1+A064866(n+1)` -/
def P12423982110580332793.Spec : Prop :=
  ∀ n, P12423982110580332793.a n = A345018 (n + 1)

theorem P12423982110580332793.correct : P12423982110580332793.Spec := by
  intro n
  simp only [A345018, Nat.add_sub_cancel, A345018.P12423982110580332793.a, A345018.P322366405058277997.a, A000330, A000330.P6574240937923917945.a, A023443, A023443.P2966051066474347068.a, A064866, A064866.P4672307026795007307.a, A074279, A074279.P14114170349531926327.f3, A074279.P14114170349531926327.f2, A074279.P14114170349531926327.f1, A074279.P14114170349531926327.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A345018

/-! ## A345018.P7349444432186433697

`A023443(A074279(n+1)+A064866(n+1))`
-/

namespace A345018.P7349444432186433697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A074279 (n + 1) + A064866 (n + 1)).toNat

end

end A345018.P7349444432186433697

namespace A345018

/-- `A023443(A074279(n+1)+A064866(n+1))` -/
def P7349444432186433697.Spec : Prop :=
  ∀ n, P7349444432186433697.a n = A345018 (n + 1)

end A345018

/-! ## A345018.P322366405058277997

`A023443(A074279(n+1))+n+1-A000330(A074279(n+1)-1)`

The canonical program, it is in `Seq.B001.C012`.
-/

namespace A345018

/-- `A023443(A074279(n+1))+n+1-A000330(A074279(n+1)-1)` -/
def P322366405058277997.Spec : Prop :=
  ∀ n, P322366405058277997.a n = A345018 (n + 1)

theorem P322366405058277997.correct : P322366405058277997.Spec := by
  intro n
  simp only [A345018, Nat.add_sub_cancel]

end A345018

/-! ## A345018.P3138434611292611915

`A237451(n+1)+A074279(n+1)*A238013(n+1)`
-/

namespace A345018.P3138434611292611915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237451 (n + 1) + A074279 (n + 1) * A238013 (n + 1)

end

end A345018.P3138434611292611915

namespace A345018

/-- `A237451(n+1)+A074279(n+1)*A238013(n+1)` -/
def P3138434611292611915.Spec : Prop :=
  ∀ n, P3138434611292611915.a n = A345018 (n + 1)

end A345018

/-! ## A345018.P8595251479879927696

`A002378(A074279(n+1))-A253902(n+1)`
-/

namespace A345018.P8595251479879927696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002378 (A074279 (n + 1)).toNat - A253902 (n + 1)

end

end A345018.P8595251479879927696

namespace A345018

/-- `A002378(A074279(n+1))-A253902(n+1)` -/
def P8595251479879927696.Spec : Prop :=
  ∀ n, P8595251479879927696.a n = A345018 (n + 1)

end A345018

/-!
# A345019: Numbers whose last digit is refactorable.

The programs for A345019, the canonical program `A345019.P5603473894539981261` is in `Seq.B000.C038`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A345019 has offset 1).

The definition of A345019 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A345019.P5603473894539981261

`a(n-1)+a(n-4)-a(n-5)` with `a(0)=1, a(1)=2, a(2)=8, a(3)=9, a(4)=11`

The canonical program, it is in `Seq.B000.C038`.
-/

namespace A345019

/-- `a(n-1)+a(n-4)-a(n-5)` -/
def P5603473894539981261.Spec : Prop :=
  ∀ n, P5603473894539981261.a n = A345019 (n + 1)

theorem P5603473894539981261.correct : P5603473894539981261.Spec := by
  intro n
  simp only [A345019, Nat.add_sub_cancel]

end A345019

/-! ## A345019.P2523652172568197537

`∑[and(7, 2-n²)]-1`
-/

namespace A345019.P2523652172568197537
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 7 (2 - (n ^ 2 : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A345019.P2523652172568197537

namespace A345019

/-- `∑[and(7, 2-n²)]-1` -/
def P2523652172568197537.Spec : Prop :=
  ∀ n, P2523652172568197537.a n = A345019 (n + 1)

end A345019

/-! ## A345019.P8571222298444212740

`∑[n²%8]+or(1, n)`
-/

namespace A345019.P8571222298444212740
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2 % 8

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + Nat.lor 1 n

end

end A345019.P8571222298444212740

namespace A345019

/-- `∑[n²%8]+or(1, n)` -/
def P8571222298444212740.Spec : Prop :=
  ∀ n, (P8571222298444212740.a n : ℤ) = A345019 (n + 1)

end A345019

/-! ## A345019.P6050156561265740469

`a(n-4)+10` with `a(0)=1, a(1)=2, a(2)=8, a(3)=9`
-/

namespace A345019.P6050156561265740469
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2, 8, 9] fun n a =>
  a (n - 4) + 10

end

end A345019.P6050156561265740469

namespace A345019

/-- `a(n-4)+10` -/
def P6050156561265740469.Spec : Prop :=
  ∀ n, (P6050156561265740469.a n : ℤ) = A345019 (n + 1)

end A345019

/-! ## A345019.P9645517008260521343

`ceil(xor(3, 5*n+2)/2)`
-/

namespace A345019.P9645517008260521343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(Nat.xor 3 (5 * n + 2) : ℚ) / 2⌉

end

end A345019.P9645517008260521343

namespace A345019

/-- `ceil(xor(3, 5*n+2)/2)` -/
def P9645517008260521343.Spec : Prop :=
  ∀ n, P9645517008260521343.a n = A345019 (n + 1)

end A345019

/-! ## A345019.P17546329711643259581

`∑[abs(a(n-4))]` with `a(0)=1, a(1)=1, a(2)=6, a(3)=1, a(4)=2`
-/

namespace A345019.P17546329711643259581
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 1, 6, 1, 2] fun n f1 =>
  f1 (n - 4)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A345019.P17546329711643259581

namespace A345019

/-- `∑[abs(a(n-4))]` -/
def P17546329711643259581.Spec : Prop :=
  ∀ n, (P17546329711643259581.a n : ℤ) = A345019 (n + 1)

end A345019

/-! ## A345019.P403411480953187153

`∑[floor(a(n-4))]` with `a(0)=1, a(1)=1, a(2)=6, a(3)=1, a(4)=2`

`floor` is left out, it is the identity on integers.
-/

namespace A345019.P403411480953187153
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 1, 6, 1, 2] fun n f1 =>
  f1 (n - 4)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A345019.P403411480953187153

namespace A345019

/-- `∑[floor(a(n-4))]` -/
def P403411480953187153.Spec : Prop :=
  ∀ n, (P403411480953187153.a n : ℤ) = A345019 (n + 1)

end A345019

/-! ## A345019.P318598573508820984

`∑[gcd(6, a(n-4))]` with `a(0)=1, a(1)=1, a(2)=6, a(3)=1, a(4)=2`
-/

namespace A345019.P318598573508820984
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 1, 6, 1, 2] fun n f1 =>
  Nat.gcd 6 (f1 (n - 4))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A345019.P318598573508820984

namespace A345019

/-- `∑[gcd(6, a(n-4))]` -/
def P318598573508820984.Spec : Prop :=
  ∀ n, (P318598573508820984.a n : ℤ) = A345019 (n + 1)

end A345019

/-! ## A345019.P3745440178083949881

`round(xor(3, n+2)/2+2*n)`
-/

namespace A345019.P3745440178083949881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((Nat.xor 3 (n + 2) : ℚ) / 2 + (2 * n : ℚ))

end

end A345019.P3745440178083949881

namespace A345019

/-- `round(xor(3, n+2)/2+2*n)` -/
def P3745440178083949881.Spec : Prop :=
  ∀ n, P3745440178083949881.a n = A345019 (n + 1)

end A345019

/-! ## A345019.P15802965116944834514

`∑[a(n-4)^a(n-1)]` with `a(0)=1, a(1)=1, a(2)=6, a(3)=1, a(4)=2`
-/

namespace A345019.P15802965116944834514
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 1, 6, 1, 2] fun n f1 =>
  f1 (n - 4) ^ f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A345019.P15802965116944834514

namespace A345019

/-- `∑[a(n-4)^a(n-1)]` -/
def P15802965116944834514.Spec : Prop :=
  ∀ n, (P15802965116944834514.a n : ℤ) = A345019 (n + 1)

end A345019

/-! ## A345019.P4960863405348777215

`4*gcd(2, a(n-1))-(1-a(n-2))` with `a(0)=1, a(1)=2`
-/

namespace A345019.P4960863405348777215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  (4 * Int.gcd 2 (a (n - 1)) : ℤ) - (1 - a (n - 2))

end

end A345019.P4960863405348777215

namespace A345019

/-- `4*gcd(2, a(n-1))-(1-a(n-2))` -/
def P4960863405348777215.Spec : Prop :=
  ∀ n, P4960863405348777215.a n = A345019 (n + 1)

end A345019

/-! ## A345019.P10980988003193044036

`∑[dr(A040375(n))]`
-/

namespace A345019.P10980988003193044036
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A040375 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A345019.P10980988003193044036

namespace A345019

/-- `∑[dr(A040375(n))]` -/
def P10980988003193044036.Spec : Prop :=
  ∀ n, (P10980988003193044036.a n : ℤ) = A345019 (n + 1)

end A345019

/-! ## A345019.P12947621541874654438

`∑[dr(A299285(n))]`
-/

namespace A345019.P12947621541874654438
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A299285 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A345019.P12947621541874654438

namespace A345019

/-- `∑[dr(A299285(n))]` -/
def P12947621541874654438.Spec : Prop :=
  ∀ n, (P12947621541874654438.a n : ℤ) = A345019 (n + 1)

end A345019

/-! ## A345019.P17910839792859239157

`A047389(n+1)-or(2, n)`
-/

namespace A345019.P17910839792859239157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047389 (n + 1) - (Nat.lor 2 n : ℤ)

end

end A345019.P17910839792859239157

namespace A345019

/-- `A047389(n+1)-or(2, n)` -/
def P17910839792859239157.Spec : Prop :=
  ∀ n, P17910839792859239157.a n = A345019 (n + 1)

end A345019

/-! ## A345019.P14789771335444986057

`A047551(n+1)+A008619(n)`
-/

namespace A345019.P14789771335444986057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047551 (n + 1) + A008619 n

end

end A345019.P14789771335444986057

namespace A345019

/-- `A047551(n+1)+A008619(n)` -/
def P14789771335444986057.Spec : Prop :=
  ∀ n, P14789771335444986057.a n = A345019 (n + 1)

end A345019

/-! ## A345019.P16343573498427286359

`A047221(n+1)-A057077(n)`
-/

namespace A345019.P16343573498427286359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047221 (n + 1) - A057077 n

end

end A345019.P16343573498427286359

namespace A345019

/-- `A047221(n+1)-A057077(n)` -/
def P16343573498427286359.Spec : Prop :=
  ∀ n, P16343573498427286359.a n = A345019 (n + 1)

end A345019

/-! ## A345019.P17408792801588515129

`A047389(n+1)-A174091(n)`
-/

namespace A345019.P17408792801588515129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047389 (n + 1) - A174091 n

end

end A345019.P17408792801588515129

namespace A345019

/-- `A047389(n+1)-A174091(n)` -/
def P17408792801588515129.Spec : Prop :=
  ∀ n, P17408792801588515129.a n = A345019 (n + 1)

end A345019

/-! ## A345019.P17896096897474941954

`A047374(n+1)-A244584(n)`
-/

namespace A345019.P17896096897474941954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047374 (n + 1) - A244584 n

end

end A345019.P17896096897474941954

namespace A345019

/-- `A047374(n+1)-A244584(n)` -/
def P17896096897474941954.Spec : Prop :=
  ∀ n, P17896096897474941954.a n = A345019 (n + 1)

end A345019

/-! ## A345019.P6304454244540842655

`A090773(n+1)-A326422(n+1)`
-/

namespace A345019.P6304454244540842655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090773 (n + 1) - A326422 (n + 1)

end

end A345019.P6304454244540842655

namespace A345019

/-- `A090773(n+1)-A326422(n+1)` -/
def P6304454244540842655.Spec : Prop :=
  ∀ n, P6304454244540842655.a n = A345019 (n + 1)

end A345019

/-! ## A345019.P9142622749549883349

`∪[A090771(n+1), A090772(n+1)]`
-/

namespace A345019.P9142622749549883349
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090771 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090772 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A345019.P9142622749549883349

namespace A345019

/-- `∪[A090771(n+1), A090772(n+1)]` -/
def P9142622749549883349.Spec : Prop :=
  ∀ n, (P9142622749549883349.a n : ℤ) = A345019 (n + 1)

end A345019

/-!
# A345020: a(0) = a(1) = 1, a(n) = largest natural number m <= a(n-1) + a(n-2) where gcd(m,a(k)) = 1 for all 1 < k <= n-1.

The programs for A345020, there is no canonical definition to state claims against.
-/

/-! ## A345020.P3662818042162258181

`A167688(A339724(n+1))+A055500(n)`
-/

namespace A345020.P3662818042162258181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167688 (A339724 (n + 1)).toNat + A055500 n

end

end A345020.P3662818042162258181

/-!
# A345021: a(n) is the result of replacing 2's by 0's in the hereditary base-2 expansion of n.

The programs for A345021, the canonical program `A345021.P12098449152776448699` is in `Seq.B002.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A345021 has offset 0).

The definition of A345021 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 171 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A345021.P12098449152776448699

`val(A126567(n), 2)`

The canonical program, it is in `Seq.B002.C007`.
-/

namespace A345021

/-- `val(A126567(n), 2)` -/
def P12098449152776448699.Spec : Prop :=
  ∀ n, (P12098449152776448699.a n : ℤ) = A345021 n

theorem P12098449152776448699.correct : P12098449152776448699.Spec := by
  intro n
  simp only [A345021]

end A345021

/-!
# A345022: Smallest number divisible by all numbers 1 through n+1 except n, or 0 if impossible.

The programs for A345022, the canonical program `A345022.P15260461067715733175` is in `Seq.B001.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A345022 has offset 2).

The definition of A345022 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 232 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A345022.P15260461067715733175

`A003418(n+1)*A010055(n+2)*A020500(n+3)`

The canonical program, it is in `Seq.B001.C012`.
-/

namespace A345022

/-- `A003418(n+1)*A010055(n+2)*A020500(n+3)` -/
def P15260461067715733175.Spec : Prop :=
  ∀ n, P15260461067715733175.a n = A345022 (n + 2)

theorem P15260461067715733175.correct : P15260461067715733175.Spec := by
  intro n
  simp only [A345022, Nat.add_sub_cancel]

end A345022

/-! ## A345022.P257022641660215284

`A003418(n+1)%A003418(n+2)*A020500(n+3)`
-/

namespace A345022.P257022641660215284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A003418 (n + 1)) (A003418 (n + 2)) * A020500 (n + 3)

end

end A345022.P257022641660215284

namespace A345022

/-- `A003418(n+1)%A003418(n+2)*A020500(n+3)` -/
def P257022641660215284.Spec : Prop :=
  ∀ n, P257022641660215284.a n = A345022 (n + 2)

end A345022

/-! ## A345022.P511543403653677439

`(A003418(n+1)*A140580(n+3))%A003418(n+3)`
-/

namespace A345022.P511543403653677439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A003418 (n + 1) * A140580 (n + 3)) (A003418 (n + 3))

end

end A345022.P511543403653677439

namespace A345022

/-- `(A003418(n+1)*A140580(n+3))%A003418(n+3)` -/
def P511543403653677439.Spec : Prop :=
  ∀ n, P511543403653677439.a n = A345022 (n + 2)

end A345022

/-! ## A345022.P11623027919161009635

`lcm(n+3, A328449(n+1))`
-/

namespace A345022.P11623027919161009635
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (n + 3 : ℤ) (A328449 (n + 1))

end

end A345022.P11623027919161009635

namespace A345022

/-- `lcm(n+3, A328449(n+1))` -/
def P11623027919161009635.Spec : Prop :=
  ∀ n, (P11623027919161009635.a n : ℤ) = A345022 (n + 2)

end A345022

/-! ## A345022.P12240673091591671173

`A051543(n+1)*A328449(n+1)`
-/

namespace A345022.P12240673091591671173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051543 (n + 1) * A328449 (n + 1)

end

end A345022.P12240673091591671173

namespace A345022

/-- `A051543(n+1)*A328449(n+1)` -/
def P12240673091591671173.Spec : Prop :=
  ∀ n, P12240673091591671173.a n = A345022 (n + 2)

end A345022

/-!
# A345023: a(n) is the surface area of the symmetric tower described in A221529 which is a polycube whose successive terraces are the symmetric representation of sigma A000203(i) (from i = 1 to n) starting from the top and the levels of these terraces are the partition numbers A000041(h-1) (from h = 1 to n) starting from the base.

The programs for A345023, there is no canonical definition to state claims against.
-/

/-! ## A345023.P13870867570786218706

`4*A000070(n)+A327329(n+1)`
-/

namespace A345023.P13870867570786218706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A000070 n + A327329 (n + 1)

end

end A345023.P13870867570786218706

/-! ## A345023.P599274127873818867

`4*A000070(n)+2*A024916(n+1)`
-/

namespace A345023.P599274127873818867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A000070 n + 2 * A024916 (n + 1)

end

end A345023.P599274127873818867

/-! ## A345023.P10897332757319522316

`∑[A299474(n)+A074400(n+1)]`
-/

namespace A345023.P10897332757319522316
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299474 n + A074400 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A345023.P10897332757319522316

/-! ## A345023.P6247262838303240230

`A327329(n+1)+∑[A299474(n)]`
-/

namespace A345023.P6247262838303240230
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299474 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327329 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A345023.P6247262838303240230

/-! ## A345023.P18143636749707750852

`∑[2*(A139582(n)+A000203(n+1))]`
-/

namespace A345023.P18143636749707750852
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A139582 n + A000203 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A345023.P18143636749707750852

/-! ## A345023.P3179624473270078611

`∑[A299474(n)+2*A000203(n+1)]`
-/

namespace A345023.P3179624473270078611
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299474 n + 2 * A000203 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A345023.P3179624473270078611

/-! ## A345023.P8157114796425357546

`∑[A299474(n)]+2*A024916(n+1)`
-/

namespace A345023.P8157114796425357546
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299474 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 2 * A024916 (n + 1)

end

end A345023.P8157114796425357546

/-!
# A345024: a(n) is the number of maximal chains of labeled chordal graphs with n vertices.

The programs for A345024, there is no canonical definition to state claims against.
-/

/-! ## A345024.P14699684750090981622

`∏[A000010(A145066(n!))]`
-/

namespace A345024.P14699684750090981622
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A145066 (Nat.factorial n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A345024.P14699684750090981622

/-!
# A345025: Number of regions formed when every pair of vertices of a regular n-gon are joined by an infinite line.

The programs for A345025, there is no canonical definition to state claims against.
-/

/-! ## A345025.P7460756517241897455

`A344857(n+1)+A004277(∑[n])`
-/

namespace A345025.P7460756517241897455
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344857 (n + 1) + A004277 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A345025.P7460756517241897455

/-! ## A345025.P2017659615010776782

`A344857(n+1)+A028310(∑[2*n])`
-/

namespace A345025.P2017659615010776782
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344857 (n + 1) + A028310 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A345025.P2017659615010776782

/-! ## A345025.P6321083378888105947

`A344857(n+1)+A028310(n)+n²`
-/

namespace A345025.P6321083378888105947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344857 (n + 1) + (A028310 n + (n ^ 2 : ℤ))

end

end A345025.P6321083378888105947

/-! ## A345025.P11750893685702986033

`A344857(n+1)+A076921(2*n+1)`
-/

namespace A345025.P11750893685702986033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344857 (n + 1) + A076921 (2 * n + 1)

end

end A345025.P11750893685702986033

/-! ## A345025.P9614786246110199519

`A007318(A000124(n))²+A344857(n+1)+n`
-/

namespace A345025.P9614786246110199519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (A000124 n).toNat ^ 2 + (A344857 (n + 1) + (n : ℤ))

end

end A345025.P9614786246110199519

/-!
# A345026: Total area of all i X j rectangles where i and j are the final digits of positive integers r and s such that r + s = n.

The programs for A345026, there is no canonical definition to state claims against.
-/

/-! ## A345026.P15454365042760259882

`∑[A245288(∑[A061603(n)])]`
-/

namespace A345026.P15454365042760259882
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061603 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245288 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A345026.P15454365042760259882

/-! ## A345026.P67428846000006691

`Δ[A228314(A152947(n+1))]`
-/

namespace A345026.P67428846000006691
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228314 (A152947 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A345026.P67428846000006691

/-! ## A345026.P12373385852068052962

`A000194(∑[A245288(n+1)]²)`
-/

namespace A345026.P12373385852068052962
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245288 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000194 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2).toNat

end

end A345026.P12373385852068052962

/-! ## A345026.P1350542869950273410

`A357304(A351704(n+1))`
-/

namespace A345026.P1350542869950273410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357304 (A351704 (n + 1)).toNat

end

end A345026.P1350542869950273410

/-!
# A345028: a(n) = Sum_{k=1..n} 2^(floor(n/k) - 1).

The programs for A345028, the canonical program `A345028.P12947712929757512005` is in `Seq.B000.C038`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A345028 has offset 1).

The definition of A345028 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 333 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A345028.P12947712929757512005

`∑[∑{d}[n+1, ceil(2^(#-2))]]`

The canonical program, it is in `Seq.B000.C038`.
-/

namespace A345028

/-- `∑[∑{d}[n+1, ceil(2^(#-2))]]` -/
def P12947712929757512005.Spec : Prop :=
  ∀ n, P12947712929757512005.a n = A345028 (n + 1)

theorem P12947712929757512005.correct : P12947712929757512005.Spec := by
  intro n
  simp only [A345028, Nat.add_sub_cancel]

end A345028

/-! ## A345028.P7214938948435921312

`∑[round(∑{d}[n+1, 2^(#-1)]/2)]`
-/

namespace A345028.P7214938948435921312
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((∑ d ∈ Nat.divisors (f2 n), (2 : ℚ) ^ ((d : ℤ) - 1 : ℤ)) / 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A345028.P7214938948435921312

namespace A345028

/-- `∑[round(∑{d}[n+1, 2^(#-1)]/2)]` -/
def P7214938948435921312.Spec : Prop :=
  ∀ n, P7214938948435921312.a n = A345028 (n + 1)

end A345028

/-! ## A345028.P2741036345466222918

`∑[ceil(A034729(n+1)/2)]`
-/

namespace A345028.P2741036345466222918
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A034729 (n + 1) : ℚ) / 2⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A345028.P2741036345466222918

namespace A345028

/-- `∑[ceil(A034729(n+1)/2)]` -/
def P2741036345466222918.Spec : Prop :=
  ∀ n, P2741036345466222918.a n = A345028 (n + 1)

end A345028

/-! ## A345028.P13253909005205908177

`(A268235(n+1)+1+n)/2`
-/

namespace A345028.P13253909005205908177
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A268235 (n + 1) + 1 + (n : ℤ) : ℚ) / 2

end

end A345028.P13253909005205908177

namespace A345028

/-- `(A268235(n+1)+1+n)/2` -/
def P13253909005205908177.Spec : Prop :=
  ∀ n, P13253909005205908177.a n = (A345028 (n + 1) : ℚ)

end A345028

/-!
# A345029: a(n) = Sum_{k=1..n} 3^(floor(n/k) - 1).

The programs for A345029, the canonical program `A345029.P10052612625783975616` is in `Seq.B001.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A345029 has offset 1).

The definition of A345029 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 210 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A345029.P10052612625783975616

`∑[∑{d}[n+1, A025192(#-1)]]`

The canonical program, it is in `Seq.B001.C012`.
-/

namespace A345029

/-- `∑[∑{d}[n+1, A025192(#-1)]]` -/
def P10052612625783975616.Spec : Prop :=
  ∀ n, P10052612625783975616.a n = A345029 (n + 1)

theorem P10052612625783975616.correct : P10052612625783975616.Spec := by
  intro n
  simp only [A345029, Nat.add_sub_cancel]

end A345029

/-! ## A345029.P1217177514193840060

`∑[∑{d}[n+1, A147720(A000124(#))]]`
-/

namespace A345029.P1217177514193840060
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n), A147720 (A000124 d).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A345029.P1217177514193840060

namespace A345029

/-- `∑[∑{d}[n+1, A147720(A000124(#))]]` -/
def P1217177514193840060.Spec : Prop :=
  ∀ n, P1217177514193840060.a n = A345029 (n + 1)

end A345029

/-! ## A345029.P14706892773718923083

`∑[∑{d}[n+1, A193722(A000217(#)-1)]]`
-/

namespace A345029.P14706892773718923083
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n), A193722 (A000217 d - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A345029.P14706892773718923083

namespace A345029

/-- `∑[∑{d}[n+1, A193722(A000217(#)-1)]]` -/
def P14706892773718923083.Spec : Prop :=
  ∀ n, P14706892773718923083.a n = A345029 (n + 1)

end A345029

/-! ## A345029.P525946751524464017

`∑[∑{d}[n+1, A193722(A000124(#)-2)]]`
-/

namespace A345029.P525946751524464017
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n), A193722 (A000124 d - 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A345029.P525946751524464017

namespace A345029

/-- `∑[∑{d}[n+1, A193722(A000124(#)-2)]]` -/
def P525946751524464017.Spec : Prop :=
  ∀ n, P525946751524464017.a n = A345029 (n + 1)

end A345029

/-! ## A345029.P16846610586829304845

`∑[∑{d}[n+1, A000010(A000010(3^#))]]`
-/

namespace A345029.P16846610586829304845
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n), A000010 (A000010 (3 ^ d)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A345029.P16846610586829304845

namespace A345029

/-- `∑[∑{d}[n+1, A000010(A000010(3^#))]]` -/
def P16846610586829304845.Spec : Prop :=
  ∀ n, P16846610586829304845.a n = A345029 (n + 1)

end A345029

/-!
# A345030: a(n) = Sum_{k=1..n} n^(floor(n/k) - 1).

The programs for A345030, there is no canonical definition to state claims against.
-/

/-! ## A345030.P9108843874411167839

`A345032(2*(n+1)²)`
-/

namespace A345030.P9108843874411167839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345032 (2 * (n + 1) ^ 2)

end

end A345030.P9108843874411167839

/-! ## A345030.P12848882130043742984

`A000027(A345032(∑[4*n+2]))`
-/

namespace A345030.P12848882130043742984
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A345032 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A345030.P12848882130043742984

/-!
# A345031: a(n) = 6*a(n-1) - 7*a(n-2) - 2*a(n-3) for n >= 3, with a(0) = a(1) = 0, a(2) = 1.

The programs for A345031, the canonical program `A345031.P2350117445831643144` is in `Seq.B000.C038`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A345031 has offset 0).

The definition of A345031 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `6*a(n-1)-7*a(n-2)-2*a(n-3)` (program `A345031.P2350117445831643144`, by `A345031.P2350117445831643144.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A345031.P2350117445831643144

`6*a(n-1)-7*a(n-2)-2*a(n-3)` with `a(0)=0, a(1)=0, a(2)=1`

The canonical program, it is in `Seq.B000.C038`.
-/

namespace A345031

/-- `6*a(n-1)-7*a(n-2)-2*a(n-3)` -/
def P2350117445831643144.Spec : Prop :=
  ∀ n, P2350117445831643144.a n = A345031 n

theorem P2350117445831643144.correct : P2350117445831643144.Spec := by
  intro n
  simp only [A345031]

end A345031

/-! ## A345031.P1464763229532453907

`ogf(x^2/(1-6x+7x^2+2x^3))`
-/

namespace A345031.P1464763229532453907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 0, 1] [1, -6, 7, 2] n

end

end A345031.P1464763229532453907

namespace A345031

/-- `ogf(x^2/(1-6x+7x^2+2x^3))` -/
def P1464763229532453907.Spec : Prop :=
  ∀ n, P1464763229532453907.a n = A345031 n

end A345031

/-! ## A345031.P16981286228276587115

`(A000032(3*n)-2^(n+1))/10`
-/

namespace A345031.P16981286228276587115
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000032 (3 * n) - (2 ^ (n + 1) : ℤ) : ℚ) / 10

end

end A345031.P16981286228276587115

namespace A345031

/-- `(A000032(3*n)-2^(n+1))/10` -/
def P16981286228276587115.Spec : Prop :=
  ∀ n, P16981286228276587115.a n = (A345031 n : ℚ)

end A345031

/-! ## A345031.P7279371211107268307

`(A001077(n)-A000079(n))/5`
-/

namespace A345031.P7279371211107268307
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001077 n - A000079 n : ℚ) / 5

end

end A345031.P7279371211107268307

namespace A345031

/-- `(A001077(n)-A000079(n))/5` -/
def P7279371211107268307.Spec : Prop :=
  ∀ n, P7279371211107268307.a n = (A345031 n : ℚ)

end A345031

/-! ## A345031.P13002708625525967544

`(A001077(n)-Δ[A000225(n)])/5`
-/

namespace A345031.P13002708625525967544
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001077 n - (f1 (n + 1) - f1 n) : ℚ) / 5

end

end A345031.P13002708625525967544

namespace A345031

/-- `(A001077(n)-Δ[A000225(n)])/5` -/
def P13002708625525967544.Spec : Prop :=
  ∀ n, P13002708625525967544.a n = (A345031 n : ℚ)

end A345031

/-! ## A345031.P8009676593708429188

`(A001077(n)-A011782(n+1))/5`
-/

namespace A345031.P8009676593708429188
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001077 n - A011782 (n + 1) : ℚ) / 5

end

end A345031.P8009676593708429188

namespace A345031

/-- `(A001077(n)-A011782(n+1))/5` -/
def P8009676593708429188.Spec : Prop :=
  ∀ n, P8009676593708429188.a n = (A345031 n : ℚ)

end A345031

/-! ## A345031.P17762053869808028882

`(A000032(3*n)/2-A000079(n))/5`
-/

namespace A345031.P17762053869808028882
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A000032 (3 * n) : ℚ) / 2 - (A000079 n : ℚ)) / 5

end

end A345031.P17762053869808028882

namespace A345031

/-- `(A000032(3*n)/2-A000079(n))/5` -/
def P17762053869808028882.Spec : Prop :=
  ∀ n, P17762053869808028882.a n = (A345031 n : ℚ)

end A345031

/-! ## A345031.P4044361022701036070

`(record[A000032(A006368(n))/2]-A000079(n))/5`
-/

namespace A345031.P4044361022701036070
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000032 (A006368 n).toNat : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - (A000079 n : ℚ)) / 5

end

end A345031.P4044361022701036070

namespace A345031

/-- `(record[A000032(A006368(n))/2]-A000079(n))/5` -/
def P4044361022701036070.Spec : Prop :=
  ∀ n, P4044361022701036070.a n = (A345031 n : ℚ)

end A345031

/-!
# A345032: Square array T(n,k), n >= 1, k >= 0, read by antidiagonals downwards, where T(n,k) = Sum_{j=1..n} k^(floor(n/j) - 1).

The programs for A345032, there is no canonical definition to state claims against.
-/

/-! ## A345032.P13622117171591142050

`A292741(n)+A055396(A249027(n+1))`
-/

namespace A345032.P13622117171591142050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292741 n + A055396 (A249027 (n + 1)).toNat

end

end A345032.P13622117171591142050

/-! ## A345032.P519432257279542826

`A007895(A056151(n+1)²)`
-/

namespace A345032.P519432257279542826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007895 (A056151 (n + 1) ^ 2).toNat

end

end A345032.P519432257279542826

/-! ## A345032.P11741412994090490270

`A116543(lcm(2, A167128(n+1)))`
-/

namespace A345032.P11741412994090490270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116543 (Int.lcm 2 (A167128 (n + 1)))

end

end A345032.P11741412994090490270

/-! ## A345032.P18214046991184257547

`dr(A014417(A056151(n+1)²))`
-/

namespace A345032.P18214046991184257547
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A014417 (A056151 (n + 1) ^ 2).toNat)

end

end A345032.P18214046991184257547

/-! ## A345032.P8086878076472003669

`A001222(A317644(n)+A130123(n))`
-/

namespace A345032.P8086878076472003669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A317644 n + A130123 n).toNat

end

end A345032.P8086878076472003669

/-!
# A345034: a(n) = Sum_{k=1..n} (-2)^(floor(n/k) - 1).

The programs for A345034, there is no canonical definition to state claims against.
-/

/-! ## A345034.P2673190478991292138

`A345033(∑[n+3]+1)`
-/

namespace A345034.P2673190478991292138
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345033 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A345034.P2673190478991292138

/-!
# A345035: a(n) = Sum_{k=1..n} (-3)^(floor(n/k) - 1).

The programs for A345035, there is no canonical definition to state claims against.
-/

/-! ## A345035.P6675025101615693707

`A345033(∑[n+4]+3)`
-/

namespace A345035.P6675025101615693707
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345033 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A345035.P6675025101615693707

/-!
# A345036: a(n) = Sum_{k=1..n} (-n)^(floor(n/k) - 1).

The programs for A345036, there is no canonical definition to state claims against.
-/

/-! ## A345036.P13468670118435260832

`A345033(2*(n+1)²)`
-/

namespace A345036.P13468670118435260832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345033 (2 * (n + 1) ^ 2)

end

end A345036.P13468670118435260832

/-! ## A345036.P13728174424925334083

`A055642(n)*A345033(A001105(n+1))`
-/

namespace A345036.P13728174424925334083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055642 n * A345033 (A001105 (n + 1)).toNat

end

end A345036.P13728174424925334083

/-!
# A345039: Number of partitions of n into two composite parts that share a nontrivial divisor.

The programs for A345039, the canonical program `A345039.P8520321823126508405` is in `Seq.B005.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A345039 has offset 1).

The definition of A345039 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A345039.P8520321823126508405

`A057860(n+1)%A008619(A016035(n+1))`

The canonical program, it is in `Seq.B005.C002`.
-/

namespace A345039

/-- `A057860(n+1)%A008619(A016035(n+1))` -/
def P8520321823126508405.Spec : Prop :=
  ∀ n, P8520321823126508405.a n = A345039 (n + 1)

theorem P8520321823126508405.correct : P8520321823126508405.Spec := by
  intro n
  simp only [A345039, Nat.add_sub_cancel]

end A345039

/-! ## A345039.P4355365623054284755

`A062610(n+1)-A185279(n+1)`
-/

namespace A345039.P4355365623054284755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062610 (n + 1) - A185279 (n + 1)

end

end A345039.P4355365623054284755

namespace A345039

/-- `A062610(n+1)-A185279(n+1)` -/
def P4355365623054284755.Spec : Prop :=
  ∀ n, P4355365623054284755.a n = A345039 (n + 1)

end A345039

/-! ## A345039.P17467551993432217961

`A110654(A076608(n+1))-A185279(n+1)`
-/

namespace A345039.P17467551993432217961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (A076608 (n + 1)).toNat - A185279 (n + 1)

end

end A345039.P17467551993432217961

namespace A345039

/-- `A110654(A076608(n+1))-A185279(n+1)` -/
def P17467551993432217961.Spec : Prop :=
  ∀ n, P17467551993432217961.a n = A345039 (n + 1)

end A345039

/-! ## A345039.P17244002219922335956

`A076608(n+1)-(A302479(n+1)+A185279(n+1))`
-/

namespace A345039.P17244002219922335956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076608 (n + 1) - (A302479 (n + 1) + A185279 (n + 1))

end

end A345039.P17244002219922335956

namespace A345039

/-- `A076608(n+1)-(A302479(n+1)+A185279(n+1))` -/
def P17244002219922335956.Spec : Prop :=
  ∀ n, P17244002219922335956.a n = A345039 (n + 1)

end A345039

/-! ## A345039.P14366423166162869550

`A002265(2*(A076608(n+1)+1))-A185279(n+1)`
-/

namespace A345039.P14366423166162869550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (2 * (A076608 (n + 1) + 1)).toNat - A185279 (n + 1)

end

end A345039.P14366423166162869550

namespace A345039

/-- `A002265(2*(A076608(n+1)+1))-A185279(n+1)` -/
def P14366423166162869550.Spec : Prop :=
  ∀ n, P14366423166162869550.a n = A345039 (n + 1)

end A345039

/-!
# A345040: a(n) = Sum_{k=0..n} Stirling2(n,k)^k.

The programs for A345040, there is no canonical definition to state claims against.
-/

/-! ## A345040.P7392345844687466355

`ceil(∏{e}[(2*n)!, n-1+#]/6)*a(n-3)` with `a(0)=1, a(1)=2, a(2)=3`
-/

namespace A345040.P7392345844687466355
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 3] fun n a =>
  ⌈((∏ p ∈ Nat.primeFactors (f1 n), ((n : ℤ) - 1 + (Nat.factorization (f1 n) p : ℤ)) : ℤ) : ℚ) / 6⌉ * a (n - 3)

end

end A345040.P7392345844687466355

/-!
# A345041: a(n) = Sum_{k=0..n} Stirling2(n,k)^n.

The programs for A345041, there is no canonical definition to state claims against.
-/

/-! ## A345041.P9434217864053639109

`A101337(A075509(n))`
-/

namespace A345041.P9434217864053639109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101337 (A075509 n).toNat

end

end A345041.P9434217864053639109

/-!
# A345042: The lesser of twin primes that are also the sum of 3 consecutive primes.

The programs for A345042, there is no canonical definition to state claims against.
-/

/-! ## A345042.P14230451132181503238

`p?[A165981(n+1)-2]`
-/

namespace A345042.P14230451132181503238
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165981 (n + 1) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A345042.P14230451132181503238

/-! ## A345042.P2205835748822022946

`p?[A034962(n+1)+2]-2`
-/

namespace A345042.P2205835748822022946
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034962 (n + 1) + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - 2

end

end A345042.P2205835748822022946

/-! ## A345042.P9905955141056191227

`filter[A034962(n+1), A296212(#)]`
-/

namespace A345042.P9905955141056191227
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034962 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A296212 (f1 j).toNat = 1) n)

end

end A345042.P9905955141056191227

/-! ## A345042.P468032037355187756

`filter[A034961(n+1), A353463(#)]`
-/

namespace A345042.P468032037355187756
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034961 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353463 (f1 j).toNat = 1) n)

end

end A345042.P468032037355187756

/-! ## A345042.P16919723898722566516

`filter[A034962(n+1), A353463(#)]`
-/

namespace A345042.P16919723898722566516
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034962 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353463 (f1 j).toNat = 1) n)

end

end A345042.P16919723898722566516

/-!
# A345043: a(n) = A344998(n) - A344999(n).

The programs for A345043, the canonical program `A345043.P6507924935837030801` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A345043 has offset 1).

The definition of A345043 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A344998, A344999, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A345043.P6507924935837030801

`A344998(n+1)-A344999(n+1)`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A345043

/-- `A344998(n+1)-A344999(n+1)` -/
def P6507924935837030801.Spec : Prop :=
  ∀ n, P6507924935837030801.a n = A345043 (n + 1)

theorem P6507924935837030801.correct : P6507924935837030801.Spec := by
  intro n
  simp only [A345043, Nat.add_sub_cancel]

end A345043

/-! ## A345043.P14351219376327510338

`(A048250(n+1)-A342001(n+1))*A033879(n+1)`
-/

namespace A345043.P14351219376327510338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A048250 (n + 1) - A342001 (n + 1)) * A033879 (n + 1)

end

end A345043.P14351219376327510338

namespace A345043

/-- `(A048250(n+1)-A342001(n+1))*A033879(n+1)` -/
def P14351219376327510338.Spec : Prop :=
  ∀ n, P14351219376327510338.a n = A345043 (n + 1)

end A345043

/-! ## A345043.P8051711467877625301

`A344998(n+1)-A048250(n+1)*A345001(n+1)`
-/

namespace A345043.P8051711467877625301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344998 (n + 1) - A048250 (n + 1) * A345001 (n + 1)

end

end A345043.P8051711467877625301

namespace A345043

/-- `A344998(n+1)-A048250(n+1)*A345001(n+1)` -/
def P8051711467877625301.Spec : Prop :=
  ∀ n, P8051711467877625301.a n = A345043 (n + 1)

end A345043

/-! ## A345043.P12120382533076338080

`A344998(n+1)-abs(A323363(n+1))*A345001(n+1)`
-/

namespace A345043.P12120382533076338080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344998 (n + 1) - |A323363 (n + 1)| * A345001 (n + 1)

end

end A345043.P12120382533076338080

namespace A345043

/-- `A344998(n+1)-abs(A323363(n+1))*A345001(n+1)` -/
def P12120382533076338080.Spec : Prop :=
  ∀ n, P12120382533076338080.a n = A345043 (n + 1)

end A345043

/-! ## A345043.P10819572062578979672

`A344998(n+1)-A000203(∏{p}[n+1, #])*A345001(n+1)`
-/

namespace A345043.P10819572062578979672
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344998 (n + 1) - A000203 (∏ p ∈ Nat.primeFactors (f1 n), p) * A345001 (n + 1)

end

end A345043.P10819572062578979672

namespace A345043

/-- `A344998(n+1)-A000203(∏{p}[n+1, #])*A345001(n+1)` -/
def P10819572062578979672.Spec : Prop :=
  ∀ n, P10819572062578979672.a n = A345043 (n + 1)

end A345043

/-! ## A345043.P6188579238179946417

`A344998(n+1)-A001615(∏{p}[n+1, #])*A345001(n+1)`
-/

namespace A345043.P6188579238179946417
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344998 (n + 1) - A001615 (∏ p ∈ Nat.primeFactors (f1 n), p) * A345001 (n + 1)

end

end A345043.P6188579238179946417

namespace A345043

/-- `A344998(n+1)-A001615(∏{p}[n+1, #])*A345001(n+1)` -/
def P6188579238179946417.Spec : Prop :=
  ∀ n, P6188579238179946417.a n = A345043 (n + 1)

end A345043

/-! ## A345043.P10730523982385267505

`A344998(n+1)-∑{d}[n+1, #*A008683(#)²]*A345001(n+1)`
-/

namespace A345043.P10730523982385267505
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344998 (n + 1) - (∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * A008683 d ^ 2) * A345001 (n + 1)

end

end A345043.P10730523982385267505

namespace A345043

/-- `A344998(n+1)-∑{d}[n+1, #*A008683(#)²]*A345001(n+1)` -/
def P10730523982385267505.Spec : Prop :=
  ∀ n, P10730523982385267505.a n = A345043 (n + 1)

end A345043

/-! ## A345043.P12677961576322713546

`A344998(n+1)-A000203(A007947(n+1))*A345001(n+1)`
-/

namespace A345043.P12677961576322713546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344998 (n + 1) - A000203 (A007947 (n + 1)).toNat * A345001 (n + 1)

end

end A345043.P12677961576322713546

namespace A345043

/-- `A344998(n+1)-A000203(A007947(n+1))*A345001(n+1)` -/
def P12677961576322713546.Spec : Prop :=
  ∀ n, P12677961576322713546.a n = A345043 (n + 1)

end A345043

/-!
# A345044: If n = Product p(k)^e(k) then a(n) = LCM (p(k)^e(k) - 1).

The programs for A345044, there is no canonical definition to state claims against.
-/

/-! ## A345044.P1037640618228601706

`A047994(n+1)/A345045(n+1)`
-/

namespace A345044.P1037640618228601706
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A047994 (n + 1) : ℚ) / (A345045 (n + 1) : ℚ)

end

end A345044.P1037640618228601706

/-! ## A345044.P16609511472560154243

`A344878(gcd(n+1, ∑[n]))`
-/

namespace A345044.P16609511472560154243
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344878 (Nat.gcd (n + 1) (∑ j ∈ Finset.range (n + 1), f1 j))

end

end A345044.P16609511472560154243

/-! ## A345044.P15315235212498141602

`A344878(lcm(2, n+1)/2)`
-/

namespace A345044.P15315235212498141602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344878 (SequenceMachineLib.roundAway ((Nat.lcm 2 (n + 1) : ℚ) / 2)).toNat

end

end A345044.P15315235212498141602

/-! ## A345044.P1662650675561273036

`A344878(floor(n/(n%2+1))+1)`
-/

namespace A345044.P1662650675561273036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344878 (⌊(n : ℚ) / ((n % 2 + 1 : ℕ) : ℚ)⌋ + 1).toNat

end

end A345044.P1662650675561273036

/-! ## A345044.P4814004486035204174

`A344878((∑[n]-1)%(n+1)+1)`
-/

namespace A345044.P4814004486035204174
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344878 (Int.tmod (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 1) (n + 1 : ℤ) + 1).toNat

end

end A345044.P4814004486035204174

/-! ## A345044.P7557515578691070720

`A344878(A026741(n+1))`
-/

namespace A345044.P7557515578691070720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344878 (A026741 (n + 1)).toNat

end

end A345044.P7557515578691070720

/-! ## A345044.P8007370924069714775

`A344878(∑[∑[A274922(n)]])`
-/

namespace A345044.P8007370924069714775
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274922 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344878 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A345044.P8007370924069714775

/-! ## A345044.P486315713361580161

`A344878(Δ[A001318(n)])`
-/

namespace A345044.P486315713361580161
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001318 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344878 (f1 (n + 1) - f1 n).toNat

end

end A345044.P486315713361580161

/-! ## A345044.P6118483465464434616

`A344878(Δ[A319390(n)])`
-/

namespace A345044.P6118483465464434616
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319390 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344878 (f1 (n + 1) - f1 n).toNat

end

end A345044.P6118483465464434616

/-!
# A345045: a(n) = A047994(n) / A345044(n), where A047994(n) is multiplicative with a(p^e) = p^e - 1, and A345044(n) gives the least common multiple of the same factors.

The programs for A345045, there is no canonical definition to state claims against.
-/

/-! ## A345045.P4978180964335859883

`A047994(n+1)/A345044(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A345045.P4978180964335859883
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A047994 (n + 1) : ℚ) / (A345044 (n + 1) : ℚ)

end

end A345045.P4978180964335859883

/-! ## A345045.P480293946634347564

`A344879(A026741(n+1))`
-/

namespace A345045.P480293946634347564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344879 (A026741 (n + 1)).toNat

end

end A345045.P480293946634347564

/-! ## A345045.P11834861079643196034

`A344879(∑[∑[A274922(n)]])`
-/

namespace A345045.P11834861079643196034
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274922 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344879 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A345045.P11834861079643196034

/-! ## A345045.P15647170543078114839

`A344879((n+1)/A000034(n))`
-/

namespace A345045.P15647170543078114839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344879 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A000034 n : ℚ))).toNat

end

end A345045.P15647170543078114839

/-! ## A345045.P4484877231990184083

`A344879(A000096(n)%(n+1)+1)`
-/

namespace A345045.P4484877231990184083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344879 (Int.tmod (A000096 n) (n + 1 : ℤ) + 1).toNat

end

end A345045.P4484877231990184083

/-! ## A345045.P6745364978481810686

`A344879((A000217(n)-1)%(n+1)+1)`
-/

namespace A345045.P6745364978481810686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344879 (Int.tmod (A000217 n - 1) (n + 1 : ℤ) + 1).toNat

end

end A345045.P6745364978481810686

/-! ## A345045.P16893711985216147481

`A344879((n*A161680(n))%(n+1)+1)`
-/

namespace A345045.P16893711985216147481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344879 (Int.tmod ((n : ℤ) * A161680 n) (n + 1 : ℤ) + 1).toNat

end

end A345045.P16893711985216147481

/-! ## A345045.P11879645459369297210

`A344879((A161680(n+1)-1)%(n+1)+1)`
-/

namespace A345045.P11879645459369297210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344879 (Int.tmod (A161680 (n + 1) - 1) (n + 1 : ℤ) + 1).toNat

end

end A345045.P11879645459369297210

/-! ## A345045.P5075260862508604296

`A344879(Δ[A001318(n)])`
-/

namespace A345045.P5075260862508604296
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001318 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344879 (f1 (n + 1) - f1 n).toNat

end

end A345045.P5075260862508604296

/-! ## A345045.P12318350665480589104

`A344879(Δ[A319390(n)])`
-/

namespace A345045.P12318350665480589104
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319390 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344879 (f1 (n + 1) - f1 n).toNat

end

end A345045.P12318350665480589104

/-! ## A345045.P6618146008101941250

`A344879(A060819(2*(n+1)))`
-/

namespace A345045.P6618146008101941250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344879 (A060819 (2 * (n + 1))).toNat

end

end A345045.P6618146008101941250

/-!
# A345046: If n = Product p(k)^e(k) then a(n) = LCM (p(k)-1)^e(k).

The programs for A345046, there is no canonical definition to state claims against.
-/

/-! ## A345046.P3188727266661817998

`A003958(n+1)/A345047(n+1)`
-/

namespace A345046.P3188727266661817998
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003958 (n + 1) : ℚ) / (A345047 (n + 1) : ℚ)

end

end A345046.P3188727266661817998

/-! ## A345046.P814506328885977935

`abs(A125131(n+1)/A345047(n+1))`
-/

namespace A345046.P814506328885977935
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  |(A125131 (n + 1) : ℚ) / (A345047 (n + 1) : ℚ)|

end

end A345046.P814506328885977935

/-! ## A345046.P17539328454123396019

`sqrt(A167343(n+1))/A345047(n+1)`
-/

namespace A345046.P17539328454123396019
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A167343 (n + 1) : ℝ) / (A345047 (n + 1) : ℝ)

end

end A345046.P17539328454123396019

/-! ## A345046.P8453044540019205428

`∑{d}[n+1, A003966(#)]/A345047(n+1)`
-/

namespace A345046.P8453044540019205428
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ d ∈ Nat.divisors (f1 n), A003966 d : ℤ) : ℚ) / (A345047 (n + 1) : ℚ)

end

end A345046.P8453044540019205428

/-! ## A345046.P2001412628214937515

`(1-A322582(n+1)+n)/A345047(n+1)`
-/

namespace A345046.P2001412628214937515
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 - A322582 (n + 1) + (n : ℤ) : ℚ) / (A345047 (n + 1) : ℚ)

end

end A345046.P2001412628214937515

/-! ## A345046.P12249689225717154148

`ceil(A079579(n+1)/(n+1))/A345047(n+1)`
-/

namespace A345046.P12249689225717154148
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (⌈(A079579 (n + 1) : ℚ) / (n + 1 : ℚ)⌉ : ℚ) / (A345047 (n + 1) : ℚ)

end

end A345046.P12249689225717154148

/-! ## A345046.P17742002529507159917

`∏{d}[n+1, A000010(A014963(#))]/A345047(n+1)`
-/

namespace A345046.P17742002529507159917
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∏ d ∈ Nat.divisors (f1 n), A000010 (A014963 d).toNat : ℤ) : ℚ) / (A345047 (n + 1) : ℚ)

end

end A345046.P17742002529507159917

/-! ## A345046.P1004713349409381010

`∑{d}[n+1, A008683(#)*A003967((n+1)/#)]/A345047(n+1)`
-/

namespace A345046.P1004713349409381010
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ d ∈ Nat.divisors (f1 n), A008683 d * A003967 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat : ℤ) : ℚ) / (A345047 (n + 1) : ℚ)

end

end A345046.P1004713349409381010

/-!
# A345047: a(n) = A003958(n) / A345046(n), where A003958(n) is multiplicative with a(p^e) = (p-1)^e, and A345046(n) gives the least common multiple of the same factors.

The programs for A345047, there is no canonical definition to state claims against.
-/

/-! ## A345047.P6159786433159244677

`A003958(n+1)/A345046(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A345047.P6159786433159244677
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003958 (n + 1) : ℚ) / (A345046 (n + 1) : ℚ)

end

end A345047.P6159786433159244677

/-! ## A345047.P4045313887798515555

`A344879(-((n+1)/or(n+1, -(n+1)))%A082994(2*n+3))`
-/

namespace A345047.P4045313887798515555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344879 (Int.tmod (SequenceMachineLib.roundAway (-((n + 1 : ℚ) / (Int.lor (n + 1 : ℤ) (-(n + 1 : ℤ)) : ℚ)))) (A082994 (2 * n + 3))).toNat

end

end A345047.P4045313887798515555

/-! ## A345047.P15053550047211789415

`A344879(A000265(n+1)%A082994(2*n+3))`
-/

namespace A345047.P15053550047211789415
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344879 (Int.tmod (A000265 (n + 1)) (A082994 (2 * n + 3))).toNat

end

end A345047.P15053550047211789415

/-! ## A345047.P14770169950124021746

`A344879((A153733(n)+1)%A082994(2*n+3))`
-/

namespace A345047.P14770169950124021746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344879 (Int.tmod (A153733 n + 1) (A082994 (2 * n + 3))).toNat

end

end A345047.P14770169950124021746

/-! ## A345047.P10324495717171210008

`gcd(A002492(A265901(n+1)), A345045(n+1))`
-/

namespace A345047.P10324495717171210008
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002492 (A265901 (n + 1)).toNat) (A345045 (n + 1))

end

end A345047.P10324495717171210008

/-! ## A345047.P217985697834269893

`gcd(A259755(A032523(n+1)), A344879(n+1))`
-/

namespace A345047.P217985697834269893
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A259755 (A032523 (n + 1)).toNat) (A344879 (n + 1))

end

end A345047.P217985697834269893

/-! ## A345047.P9459794218236774103

`A006519(A345045(n+1)%A325347(2*n+5))`
-/

namespace A345047.P9459794218236774103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006519 (Int.tmod (A345045 (n + 1)) (A325347 (2 * n + 5))).toNat

end

end A345047.P9459794218236774103

/-! ## A345047.P2398380675545311848

`A006519(A345045(n+1)%A262759(n+1))`
-/

namespace A345047.P2398380675545311848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006519 (Int.tmod (A345045 (n + 1)) (A262759 (n + 1))).toNat

end

end A345047.P2398380675545311848

/-! ## A345047.P9506931060373603335

`gcd(A005897(A019565(n)), A344879(n+1))`
-/

namespace A345047.P9506931060373603335
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A005897 (A019565 n).toNat) (A344879 (n + 1))

end

end A345047.P9506931060373603335

/-!
# A345048: a(n) = A342001(n) * A051709(n).

The programs for A345048, the canonical program `A345048.P15501208074800543925` is in `Seq.B006.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A345048 has offset 1).

The definition of A345048 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A051709, A342001, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A345048.P318170268886098308

`A345049(n+1)+A345050(n+1)`
-/

namespace A345048.P318170268886098308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345049 (n + 1) + A345050 (n + 1)

end

end A345048.P318170268886098308

namespace A345048

/-- `A345049(n+1)+A345050(n+1)` -/
def P318170268886098308.Spec : Prop :=
  ∀ n, P318170268886098308.a n = A345048 (n + 1)

end A345048

/-! ## A345048.P15501208074800543925

`A342001(n+1)*A051709(n+1)`

The canonical program, it is in `Seq.B006.C001`.
-/

namespace A345048

/-- `A342001(n+1)*A051709(n+1)` -/
def P15501208074800543925.Spec : Prop :=
  ∀ n, P15501208074800543925.a n = A345048 (n + 1)

theorem P15501208074800543925.correct : P15501208074800543925.Spec := by
  intro n
  simp only [A345048, Nat.add_sub_cancel]

end A345048

/-! ## A345048.P1432592402609103949

`∑{d}[n+1, A346485(#)]*A051709(n+1)`
-/

namespace A345048.P1432592402609103949
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ d ∈ Nat.divisors (f1 n), A346485 d) * A051709 (n + 1)

end

end A345048.P1432592402609103949

namespace A345048

/-- `∑{d}[n+1, A346485(#)]*A051709(n+1)` -/
def P1432592402609103949.Spec : Prop :=
  ∀ n, P1432592402609103949.a n = A345048 (n + 1)

end A345048

/-! ## A345048.P4303607134026073145

`(A209187(n+1)-(n+1))*A342001(n+1)`
-/

namespace A345048.P4303607134026073145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A209187 (n + 1) - (n + 1 : ℤ)) * A342001 (n + 1)

end

end A345048.P4303607134026073145

namespace A345048

/-- `(A209187(n+1)-(n+1))*A342001(n+1)` -/
def P4303607134026073145.Spec : Prop :=
  ∀ n, P4303607134026073145.a n = A345048 (n + 1)

end A345048

/-! ## A345048.P15614867031053547622

`(A033880(n+1)+A000010(n+1))*A342001(n+1)`
-/

namespace A345048.P15614867031053547622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A033880 (n + 1) + A000010 (n + 1)) * A342001 (n + 1)

end

end A345048.P15614867031053547622

namespace A345048

/-- `(A033880(n+1)+A000010(n+1))*A342001(n+1)` -/
def P15614867031053547622.Spec : Prop :=
  ∀ n, P15614867031053547622.a n = A345048 (n + 1)

end A345048

/-! ## A345048.P2815618941105478905

`A345050(n+1)+A173557(n+1)*A345001(n+1)`
-/

namespace A345048.P2815618941105478905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345050 (n + 1) + A173557 (n + 1) * A345001 (n + 1)

end

end A345048.P2815618941105478905

namespace A345048

/-- `A345050(n+1)+A173557(n+1)*A345001(n+1)` -/
def P2815618941105478905.Spec : Prop :=
  ∀ n, P2815618941105478905.a n = A345048 (n + 1)

end A345048

/-! ## A345048.P6930813615131411093

`(A000203(n+1)-A053158(n+1))*A342001(n+1)`
-/

namespace A345048.P6930813615131411093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000203 (n + 1) - A053158 (n + 1)) * A342001 (n + 1)

end

end A345048.P6930813615131411093

namespace A345048

/-- `(A000203(n+1)-A053158(n+1))*A342001(n+1)` -/
def P6930813615131411093.Spec : Prop :=
  ∀ n, P6930813615131411093.a n = A345048 (n + 1)

end A345048

/-! ## A345048.P11174512844353089706

`(A344178(n+1)-A211991(n+1))*A342001(n+1)`
-/

namespace A345048.P11174512844353089706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A344178 (n + 1) - A211991 (n + 1)) * A342001 (n + 1)

end

end A345048.P11174512844353089706

namespace A345048

/-- `(A344178(n+1)-A211991(n+1))*A342001(n+1)` -/
def P11174512844353089706.Spec : Prop :=
  ∀ n, P11174512844353089706.a n = A345048 (n + 1)

end A345048

/-! ## A345048.P14067937544810711615

`A003415(n+1)/A003557(n+1)*A051709(n+1)`
-/

namespace A345048.P14067937544810711615
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003415 (n + 1) : ℚ) / (A003557 (n + 1) : ℚ) * (A051709 (n + 1) : ℚ)

end

end A345048.P14067937544810711615

namespace A345048

/-- `A003415(n+1)/A003557(n+1)*A051709(n+1)` -/
def P14067937544810711615.Spec : Prop :=
  ∀ n, P14067937544810711615.a n = (A345048 (n + 1) : ℚ)

end A345048

/-! ## A345048.P245565964473281397

`2/A000005(n+1)*A347129(n+1)*A051709(n+1)`
-/

namespace A345048.P245565964473281397
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 / (A000005 (n + 1) : ℚ) * (A347129 (n + 1) : ℚ) * (A051709 (n + 1) : ℚ)

end

end A345048.P245565964473281397

namespace A345048

/-- `2/A000005(n+1)*A347129(n+1)*A051709(n+1)` -/
def P245565964473281397.Spec : Prop :=
  ∀ n, P245565964473281397.a n = (A345048 (n + 1) : ℚ)

end A345048

/-! ## A345048.P9114218129221188526

`(A033880(n+1)+A000010(n+1))*∑{d}[n+1, A346485(#)]`
-/

namespace A345048.P9114218129221188526
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A033880 (n + 1) + A000010 (n + 1)) * (∑ d ∈ Nat.divisors (f1 n), A346485 d)

end

end A345048.P9114218129221188526

namespace A345048

/-- `(A033880(n+1)+A000010(n+1))*∑{d}[n+1, A346485(#)]` -/
def P9114218129221188526.Spec : Prop :=
  ∀ n, P9114218129221188526.a n = A345048 (n + 1)

end A345048

/-! ## A345048.P12080049693860210432

`(A000010(n+1)-(2*(n+1)-A000203(n+1)))*A342001(n+1)`
-/

namespace A345048.P12080049693860210432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000010 (n + 1) - ((2 * (n + 1) : ℤ) - A000203 (n + 1))) * A342001 (n + 1)

end

end A345048.P12080049693860210432

namespace A345048

/-- `(A000010(n+1)-(2*(n+1)-A000203(n+1)))*A342001(n+1)` -/
def P12080049693860210432.Spec : Prop :=
  ∀ n, P12080049693860210432.a n = A345048 (n + 1)

end A345048

/-! ## A345048.P9876040582039175285

`(A000010(n+1)-(2*(n+1)-A000203(n+1)))*∑{d}[n+1, A346485(#)]`
-/

namespace A345048.P9876040582039175285
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000010 (n + 1) - ((2 * (n + 1) : ℤ) - A000203 (n + 1))) * (∑ d ∈ Nat.divisors (f1 n), A346485 d)

end

end A345048.P9876040582039175285

namespace A345048

/-- `(A000010(n+1)-(2*(n+1)-A000203(n+1)))*∑{d}[n+1, A346485(#)]` -/
def P9876040582039175285.Spec : Prop :=
  ∀ n, P9876040582039175285.a n = A345048 (n + 1)

end A345048

/-! ## A345048.P908012813778274383

`(A000010(n+1)-A033879(n+1))*2/A000005(n+1)*A347129(n+1)`
-/

namespace A345048.P908012813778274383
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000010 (n + 1) - A033879 (n + 1) : ℚ) * (2 / (A000005 (n + 1) : ℚ) * (A347129 (n + 1) : ℚ))

end

end A345048.P908012813778274383

namespace A345048

/-- `(A000010(n+1)-A033879(n+1))*2/A000005(n+1)*A347129(n+1)` -/
def P908012813778274383.Spec : Prop :=
  ∀ n, P908012813778274383.a n = (A345048 (n + 1) : ℚ)

end A345048

/-!
# A345049: a(n) = A173557(n) * A345001(n).

The programs for A345049, the canonical program `A345049.P10676505459348622812` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A345049 has offset 1).

The definition of A345049 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A173557, A345001, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A345049.P10385201094887187915

`A345048(n+1)-A345050(n+1)`
-/

namespace A345049.P10385201094887187915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345048 (n + 1) - A345050 (n + 1)

end

end A345049.P10385201094887187915

namespace A345049

/-- `A345048(n+1)-A345050(n+1)` -/
def P10385201094887187915.Spec : Prop :=
  ∀ n, P10385201094887187915.a n = A345049 (n + 1)

end A345049

/-! ## A345049.P10676505459348622812

`A173557(n+1)*A345001(n+1)`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A345049

/-- `A173557(n+1)*A345001(n+1)` -/
def P10676505459348622812.Spec : Prop :=
  ∀ n, P10676505459348622812.a n = A345049 (n + 1)

theorem P10676505459348622812.correct : P10676505459348622812.Spec := by
  intro n
  simp only [A345049, Nat.add_sub_cancel]

end A345049

/-! ## A345049.P3252886118260778883

`abs(A023900(n+1))*A345001(n+1)`
-/

namespace A345049.P3252886118260778883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A023900 (n + 1)| * A345001 (n + 1)

end

end A345049.P3252886118260778883

namespace A345049

/-- `abs(A023900(n+1))*A345001(n+1)` -/
def P3252886118260778883.Spec : Prop :=
  ∀ n, P3252886118260778883.a n = A345049 (n + 1)

end A345049

/-! ## A345049.P7983698279723679477

`A000010(∏{p}[n+1, #])*A345001(n+1)`
-/

namespace A345049.P7983698279723679477
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (∏ p ∈ Nat.primeFactors (f1 n), p) * A345001 (n + 1)

end

end A345049.P7983698279723679477

namespace A345049

/-- `A000010(∏{p}[n+1, #])*A345001(n+1)` -/
def P7983698279723679477.Spec : Prop :=
  ∀ n, P7983698279723679477.a n = A345049 (n + 1)

end A345049

/-! ## A345049.P11182097351245589434

`abs(∑{d}[n+1, #*A008683(#)])*A345001(n+1)`
-/

namespace A345049.P11182097351245589434
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * A008683 d| * A345001 (n + 1)

end

end A345049.P11182097351245589434

namespace A345049

/-- `abs(∑{d}[n+1, #*A008683(#)])*A345001(n+1)` -/
def P11182097351245589434.Spec : Prop :=
  ∀ n, P11182097351245589434.a n = A345049 (n + 1)

end A345049

/-! ## A345049.P14112807995718792410

`(∑[A258057(n)-2]+A000203(n+1))*∏{p}[n+1, #-1]`
-/

namespace A345049.P14112807995718792410
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258057 n - 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j + A000203 (n + 1)) * (∏ p ∈ Nat.primeFactors (f2 n), ((p : ℤ) - 1))

end

end A345049.P14112807995718792410

namespace A345049

/-- `(∑[A258057(n)-2]+A000203(n+1))*∏{p}[n+1, #-1]` -/
def P14112807995718792410.Spec : Prop :=
  ∀ n, P14112807995718792410.a n = A345049 (n + 1)

end A345049

/-! ## A345049.P11039932694688393506

`A000010(A007947(n+1))*A345001(n+1)`
-/

namespace A345049.P11039932694688393506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A007947 (n + 1)).toNat * A345001 (n + 1)

end

end A345049.P11039932694688393506

namespace A345049

/-- `A000010(A007947(n+1))*A345001(n+1)` -/
def P11039932694688393506.Spec : Prop :=
  ∀ n, P11039932694688393506.a n = A345049 (n + 1)

end A345049

/-! ## A345049.P6852430287853277301

`A051709(n+1)*A342001(n+1)-A345050(n+1)`
-/

namespace A345049.P6852430287853277301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051709 (n + 1) * A342001 (n + 1) - A345050 (n + 1)

end

end A345049.P6852430287853277301

namespace A345049

/-- `A051709(n+1)*A342001(n+1)-A345050(n+1)` -/
def P6852430287853277301.Spec : Prop :=
  ∀ n, P6852430287853277301.a n = A345049 (n + 1)

end A345049

/-! ## A345049.P5410431657351777338

`(A000203(n+1)+A168036(n+1)-(n+1))*A000010(∏{p}[n+1, #])`
-/

namespace A345049.P5410431657351777338
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000203 (n + 1) + (A168036 (n + 1) - (n + 1 : ℤ))) * A000010 (∏ p ∈ Nat.primeFactors (f1 n), p)

end

end A345049.P5410431657351777338

namespace A345049

/-- `(A000203(n+1)+A168036(n+1)-(n+1))*A000010(∏{p}[n+1, #])` -/
def P5410431657351777338.Spec : Prop :=
  ∀ n, P5410431657351777338.a n = A345049 (n + 1)

end A345049

/-!
# A345050: a(n) = A345048(n) - A345049(n).

The programs for A345050, the canonical program `A345050.P16317635263124639318` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A345050 has offset 1).

The definition of A345050 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A345048, A345049, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A345050.P16317635263124639318

`A345048(n+1)-A345049(n+1)`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A345050

/-- `A345048(n+1)-A345049(n+1)` -/
def P16317635263124639318.Spec : Prop :=
  ∀ n, P16317635263124639318.a n = A345050 (n + 1)

theorem P16317635263124639318.correct : P16317635263124639318.Spec := by
  intro n
  simp only [A345050, Nat.add_sub_cancel]

end A345050

/-! ## A345050.P7975798145600572361

`(A173557(n+1)-A342001(n+1))*A033879(n+1)`
-/

namespace A345050.P7975798145600572361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A173557 (n + 1) - A342001 (n + 1)) * A033879 (n + 1)

end

end A345050.P7975798145600572361

namespace A345050

/-- `(A173557(n+1)-A342001(n+1))*A033879(n+1)` -/
def P7975798145600572361.Spec : Prop :=
  ∀ n, P7975798145600572361.a n = A345050 (n + 1)

end A345050

/-! ## A345050.P11483079767557712284

`A051709(n+1)*A342001(n+1)-A345049(n+1)`
-/

namespace A345050.P11483079767557712284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051709 (n + 1) * A342001 (n + 1) - A345049 (n + 1)

end

end A345050.P11483079767557712284

namespace A345050

/-- `A051709(n+1)*A342001(n+1)-A345049(n+1)` -/
def P11483079767557712284.Spec : Prop :=
  ∀ n, P11483079767557712284.a n = A345050 (n + 1)

end A345050

/-! ## A345050.P7545314158364743124

`A345048(n+1)-A173557(n+1)*A345001(n+1)`
-/

namespace A345050.P7545314158364743124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345048 (n + 1) - A173557 (n + 1) * A345001 (n + 1)

end

end A345050.P7545314158364743124

namespace A345050

/-- `A345048(n+1)-A173557(n+1)*A345001(n+1)` -/
def P7545314158364743124.Spec : Prop :=
  ∀ n, P7545314158364743124.a n = A345050 (n + 1)

end A345050

/-! ## A345050.P12285785247417321239

`A345048(n+1)-A000010(∏{p}[n+1, #])*A345001(n+1)`
-/

namespace A345050.P12285785247417321239
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345048 (n + 1) - A000010 (∏ p ∈ Nat.primeFactors (f1 n), p) * A345001 (n + 1)

end

end A345050.P12285785247417321239

namespace A345050

/-- `A345048(n+1)-A000010(∏{p}[n+1, #])*A345001(n+1)` -/
def P12285785247417321239.Spec : Prop :=
  ∀ n, P12285785247417321239.a n = A345050 (n + 1)

end A345050

/-! ## A345050.P2923428322811919000

`A345048(n+1)-A000010(A007947(n+1))*A345001(n+1)`
-/

namespace A345050.P2923428322811919000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345048 (n + 1) - A000010 (A007947 (n + 1)).toNat * A345001 (n + 1)

end

end A345050.P2923428322811919000

namespace A345050

/-- `A345048(n+1)-A000010(A007947(n+1))*A345001(n+1)` -/
def P2923428322811919000.Spec : Prop :=
  ∀ n, P2923428322811919000.a n = A345050 (n + 1)

end A345050

/-! ## A345050.P10665504951715373829

`(A344178(n+1)-A211991(n+1))*A342001(n+1)-A345049(n+1)`
-/

namespace A345050.P10665504951715373829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A344178 (n + 1) - A211991 (n + 1)) * A342001 (n + 1) - A345049 (n + 1)

end

end A345050.P10665504951715373829

namespace A345050

/-- `(A344178(n+1)-A211991(n+1))*A342001(n+1)-A345049(n+1)` -/
def P10665504951715373829.Spec : Prop :=
  ∀ n, P10665504951715373829.a n = A345050 (n + 1)

end A345050

/-!
# A345051: Numbers k such that A345048(k) is equal to A345049(k).

The programs for A345051, there is no canonical definition to state claims against.
-/

/-! ## A345051.P6473800933164680295

`A084265(∑[A086246(n)!])`
-/

namespace A345051.P6473800933164680295
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A086246 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084265 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A345051.P6473800933164680295

/-! ## A345051.P6585143319478751731

`A084265(∑[A171367(n)!])`
-/

namespace A345051.P6585143319478751731
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A171367 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084265 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A345051.P6585143319478751731

/-!
# A345052: a(n) = A003557(n) * A048250(n) * A173557(n).

The programs for A345052, the canonical program `A345052.P3135942060331182586` is in `Seq.B002.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A345052 has offset 1).

The definition of A345052 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A048250, A173557, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A345052.P5371367688819967749

`A000010(n+1)*A048250(n+1)`
-/

namespace A345052.P5371367688819967749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1) * A048250 (n + 1)

end

end A345052.P5371367688819967749

namespace A345052

/-- `A000010(n+1)*A048250(n+1)` -/
def P5371367688819967749.Spec : Prop :=
  ∀ n, P5371367688819967749.a n = A345052 (n + 1)

end A345052

/-! ## A345052.P74828368055388541

`A007434(n+1)/A003557(n+1)`
-/

namespace A345052.P74828368055388541
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007434 (n + 1) : ℚ) / (A003557 (n + 1) : ℚ)

end

end A345052.P74828368055388541

namespace A345052

/-- `A007434(n+1)/A003557(n+1)` -/
def P74828368055388541.Spec : Prop :=
  ∀ n, P74828368055388541.a n = (A345052 (n + 1) : ℚ)

end A345052

/-! ## A345052.P3135942060331182586

`A003557(n+1)*A048250(n+1)*A173557(n+1)`

The canonical program, it is in `Seq.B002.C007`.
-/

namespace A345052

/-- `A003557(n+1)*A048250(n+1)*A173557(n+1)` -/
def P3135942060331182586.Spec : Prop :=
  ∀ n, P3135942060331182586.a n = A345052 (n + 1)

theorem P3135942060331182586.correct : P3135942060331182586.Spec := by
  intro n
  simp only [A345052, Nat.add_sub_cancel]

end A345052

/-! ## A345052.P9593345275499310092

`(n+1)*∏{p}[n+1, #-1/#]`
-/

namespace A345052.P9593345275499310092
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) * (∏ p ∈ Nat.primeFactors (f1 n), ((p : ℚ) - 1 / (p : ℚ)))

end

end A345052.P9593345275499310092

namespace A345052

/-- `(n+1)*∏{p}[n+1, #-1/#]` -/
def P9593345275499310092.Spec : Prop :=
  ∀ n, P9593345275499310092.a n = (A345052 (n + 1) : ℚ)

end A345052

/-! ## A345052.P5428242083237508463

`(n+1)/∏{p}[n+1, #/(#²-1)]`
-/

namespace A345052.P5428242083237508463
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (∏ p ∈ Nat.primeFactors (f1 n), (p : ℚ) / ((p ^ 2 : ℤ) - 1 : ℚ))

end

end A345052.P5428242083237508463

namespace A345052

/-- `(n+1)/∏{p}[n+1, #/(#²-1)]` -/
def P5428242083237508463.Spec : Prop :=
  ∀ n, P5428242083237508463.a n = (A345052 (n + 1) : ℚ)

end A345052

/-! ## A345052.P13285974862799566917

`Δ[A002088(n)]*A048250(n+1)`
-/

namespace A345052.P13285974862799566917
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002088 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A048250 (n + 1)

end

end A345052.P13285974862799566917

namespace A345052

/-- `Δ[A002088(n)]*A048250(n+1)` -/
def P13285974862799566917.Spec : Prop :=
  ∀ n, P13285974862799566917.a n = A345052 (n + 1)

end A345052

/-! ## A345052.P2756694760076851986

`Δ[A005728(n)]*A048250(n+1)`
-/

namespace A345052.P2756694760076851986
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005728 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A048250 (n + 1)

end

end A345052.P2756694760076851986

namespace A345052

/-- `Δ[A005728(n)]*A048250(n+1)` -/
def P2756694760076851986.Spec : Prop :=
  ∀ n, P2756694760076851986.a n = A345052 (n + 1)

end A345052

/-! ## A345052.P12823082852339146484

`A001615(n+1)*A173557(n+1)`
-/

namespace A345052.P12823082852339146484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001615 (n + 1) * A173557 (n + 1)

end

end A345052.P12823082852339146484

namespace A345052

/-- `A001615(n+1)*A173557(n+1)` -/
def P12823082852339146484.Spec : Prop :=
  ∀ n, P12823082852339146484.a n = A345052 (n + 1)

end A345052

/-! ## A345052.P8430306110024574279

`A003557(n+1)*A322360(n+1)`
-/

namespace A345052.P8430306110024574279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003557 (n + 1) * A322360 (n + 1)

end

end A345052.P8430306110024574279

namespace A345052

/-- `A003557(n+1)*A322360(n+1)` -/
def P8430306110024574279.Spec : Prop :=
  ∀ n, P8430306110024574279.a n = A345052 (n + 1)

end A345052

/-! ## A345052.P9253331844458936185

`A175732(n+1)*A322359(n+1)`
-/

namespace A345052.P9253331844458936185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175732 (n + 1) * A322359 (n + 1)

end

end A345052.P9253331844458936185

namespace A345052

/-- `A175732(n+1)*A322359(n+1)` -/
def P9253331844458936185.Spec : Prop :=
  ∀ n, P9253331844458936185.a n = A345052 (n + 1)

end A345052

/-! ## A345052.P14975474684197927841

`A000056(n+1)/A102631(n+1)`
-/

namespace A345052.P14975474684197927841
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000056 (n + 1) : ℚ) / (A102631 (n + 1) : ℚ)

end

end A345052.P14975474684197927841

namespace A345052

/-- `A000056(n+1)/A102631(n+1)` -/
def P14975474684197927841.Spec : Prop :=
  ∀ n, P14975474684197927841.a n = (A345052 (n + 1) : ℚ)

end A345052

/-! ## A345052.P14583552282659255364

`∑{d}[A007947(n+1), #*A000010(n+1)]`
-/

namespace A345052.P14583552282659255364
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, (d : ℤ) * A000010 (n + 1)

end

end A345052.P14583552282659255364

namespace A345052

/-- `∑{d}[A007947(n+1), #*A000010(n+1)]` -/
def P14583552282659255364.Spec : Prop :=
  ∀ n, P14583552282659255364.a n = A345052 (n + 1)

end A345052

/-! ## A345052.P624119888108975174

`A000010(n+1)*∑{d}[A062953(n+1), #]`
-/

namespace A345052.P624119888108975174
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062953 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1) * ((∑ d ∈ Nat.divisors (f1 n).natAbs, d : ℕ) : ℤ)

end

end A345052.P624119888108975174

namespace A345052

/-- `A000010(n+1)*∑{d}[A062953(n+1), #]` -/
def P624119888108975174.Spec : Prop :=
  ∀ n, P624119888108975174.a n = A345052 (n + 1)

end A345052

/-! ## A345052.P12430436480103080482

`A000203(∏{p}[n+1, #])*A000010(n+1)`
-/

namespace A345052.P12430436480103080482
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (∏ p ∈ Nat.primeFactors (f1 n), p) * A000010 (n + 1)

end

end A345052.P12430436480103080482

namespace A345052

/-- `A000203(∏{p}[n+1, #])*A000010(n+1)` -/
def P12430436480103080482.Spec : Prop :=
  ∀ n, P12430436480103080482.a n = A345052 (n + 1)

end A345052

/-! ## A345052.P1434792096691527436

`A000010(∏{p}[n+1, #])*A001615(n+1)`
-/

namespace A345052.P1434792096691527436
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (∏ p ∈ Nat.primeFactors (f1 n), p) * A001615 (n + 1)

end

end A345052.P1434792096691527436

namespace A345052

/-- `A000010(∏{p}[n+1, #])*A001615(n+1)` -/
def P1434792096691527436.Spec : Prop :=
  ∀ n, P1434792096691527436.a n = A345052 (n + 1)

end A345052

/-! ## A345052.P15065609376349900272

`A000010(n+1)*A000203(A007947(n+1))`
-/

namespace A345052.P15065609376349900272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1) * A000203 (A007947 (n + 1)).toNat

end

end A345052.P15065609376349900272

namespace A345052

/-- `A000010(n+1)*A000203(A007947(n+1))` -/
def P15065609376349900272.Spec : Prop :=
  ∀ n, P15065609376349900272.a n = A345052 (n + 1)

end A345052

/-! ## A345052.P9528517251529048678

`A000010(A007947(n+1))*A001615(n+1)`
-/

namespace A345052.P9528517251529048678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A007947 (n + 1)).toNat * A001615 (n + 1)

end

end A345052.P9528517251529048678

namespace A345052

/-- `A000010(A007947(n+1))*A001615(n+1)` -/
def P9528517251529048678.Spec : Prop :=
  ∀ n, P9528517251529048678.a n = A345052 (n + 1)

end A345052

/-! ## A345052.P3834783392451088718

`A003557(n+1)*A007434(A007947(n+1))`
-/

namespace A345052.P3834783392451088718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003557 (n + 1) * A007434 (A007947 (n + 1)).toNat

end

end A345052.P3834783392451088718

namespace A345052

/-- `A003557(n+1)*A007434(A007947(n+1))` -/
def P3834783392451088718.Spec : Prop :=
  ∀ n, P3834783392451088718.a n = A345052 (n + 1)

end A345052

/-! ## A345052.P13315162943240877656

`A001615(n+1)*A390753(A015053(n+1))`
-/

namespace A345052.P13315162943240877656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001615 (n + 1) * A390753 (A015053 (n + 1)).toNat

end

end A345052.P13315162943240877656

namespace A345052

/-- `A001615(n+1)*A390753(A015053(n+1))` -/
def P13315162943240877656.Spec : Prop :=
  ∀ n, P13315162943240877656.a n = A345052 (n + 1)

end A345052

/-! ## A345052.P10670705482557439984

`(A109606(n+1)+1)*A000203(A007947(n+1))`
-/

namespace A345052.P10670705482557439984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A109606 (n + 1) + 1) * A000203 (A007947 (n + 1)).toNat

end

end A345052.P10670705482557439984

namespace A345052

/-- `(A109606(n+1)+1)*A000203(A007947(n+1))` -/
def P10670705482557439984.Spec : Prop :=
  ∀ n, P10670705482557439984.a n = A345052 (n + 1)

end A345052

/-!
# A345053: Positions of zeros in A345055, which is the Dirichlet inverse of A011772.

The programs for A345053, there is no canonical definition to state claims against.
-/

/-! ## A345053.P15367350651590887062

`eq[0, A345055(n+1)]+1`
-/

namespace A345053.P15367350651590887062
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345055 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A345053.P15367350651590887062

/-! ## A345053.P5095546658782300853

`eq[0, A345055(A028310(n))]`
-/

namespace A345053.P5095546658782300853
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345055 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A345053.P5095546658782300853

/-! ## A345053.P14068448211763317367

`A020725(eq[0, A345055(n+1)])`
-/

namespace A345053.P14068448211763317367
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345055 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A345053.P14068448211763317367

/-! ## A345053.P2202536143475726183

`A181569(eq[0, A345055(n+1)])`
-/

namespace A345053.P2202536143475726183
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345055 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181569 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A345053.P2202536143475726183

/-! ## A345053.P12574988396135018071

`eq[A011772(n+1), A345065(n+1)]+1`
-/

namespace A345053.P12574988396135018071
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011772 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345065 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A345053.P12574988396135018071

/-!
# A345055: Dirichlet inverse of A011772.

The programs for A345055, there is no canonical definition to state claims against.
-/

/-! ## A345055.P16117846252930157490

`A345065(n+1)-A011772(n+1)`
-/

namespace A345055.P16117846252930157490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345065 (n + 1) - A011772 (n + 1)

end

end A345055.P16117846252930157490

/-! ## A345055.P8899939112998508901

`A345065(n+1)+1-A321366(n+1)`
-/

namespace A345055.P8899939112998508901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345065 (n + 1) + (1 - A321366 (n + 1))

end

end A345055.P8899939112998508901

/-! ## A345055.P14540567694982727191

`A344874(n+1)+A345065(n+1)-A047994(n+1)`
-/

namespace A345055.P14540567694982727191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344874 (n + 1) + (A345065 (n + 1) - A047994 (n + 1))

end

end A345055.P14540567694982727191

/-! ## A345055.P874826368639045821

`A345065(n+1)-(A088580(n+1)-(A344765(n+1)+1))`
-/

namespace A345055.P874826368639045821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345065 (n + 1) - (A088580 (n + 1) - (A344765 (n + 1) + 1))

end

end A345055.P874826368639045821

/-! ## A345055.P14026878575477648328

`A345065(n+1)-(A343996(n+1)+A343999(n+1)-1)`
-/

namespace A345055.P14026878575477648328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345065 (n + 1) - (A343996 (n + 1) + (A343999 (n + 1) - 1))

end

end A345055.P14026878575477648328

/-! ## A345055.P10462116598543506936

`A345065(n+1)-A354985(2*(n+1))*A354987(2*(n+1))`
-/

namespace A345055.P10462116598543506936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345065 (n + 1) - A354985 (2 * (n + 1)) * A354987 (2 * (n + 1))

end

end A345055.P10462116598543506936

/-! ## A345055.P16692367913711817502

`A345065(n+1)+A024000(A321366(n+1))`
-/

namespace A345055.P16692367913711817502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345065 (n + 1) + A024000 (A321366 (n + 1)).toNat

end

end A345055.P16692367913711817502

/-! ## A345055.P9003289631886224166

`A345065(n+1)-A344005(2*(n+1))`
-/

namespace A345055.P9003289631886224166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345065 (n + 1) - A344005 (2 * (n + 1))

end

end A345055.P9003289631886224166

/-! ## A345055.P1419956740509514421

`A345065(n+1)-A002260(A066561(n+1))`
-/

namespace A345055.P1419956740509514421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345065 (n + 1) - A002260 (A066561 (n + 1)).toNat

end

end A345055.P1419956740509514421

/-!
# A345056: a(n) is the next larger number k > n for which A011772(k) = A011772(n), or n itself if no such larger number exists.

The programs for A345056, there is no canonical definition to state claims against.
-/

/-! ## A345056.P17235649564135903009

`n+1+A345057(n+1)`
-/

namespace A345056.P17235649564135903009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) + A345057 (n + 1)

end

end A345056.P17235649564135903009

/-!
# A345057: Distance to the next larger number k > n for which A011772(k) = A011772(n), or 0 if no such number exists.

The programs for A345057, there is no canonical definition to state claims against.
-/

/-! ## A345057.P14512140763568088741

`A345056(n+1)-(n+1)`
-/

namespace A345057.P14512140763568088741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345056 (n + 1) - (n + 1 : ℤ)

end

end A345057.P14512140763568088741

/-! ## A345057.P1634554566678134994

`A023443(A345056(n+1)-n)`
-/

namespace A345057.P1634554566678134994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A345056 (n + 1) - (n : ℤ)).toNat

end

end A345057.P1634554566678134994

/-! ## A345057.P1107806167783904021

`abs(A345056(n+1)+A001478(n+1))`
-/

namespace A345057.P1107806167783904021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A345056 (n + 1) + A001478 (n + 1)|

end

end A345057.P1107806167783904021

/-!
# A345058: Number of distinct k > 0 for which A011772(k) = n.

The programs for A345058, there is no canonical definition to state claims against.
-/

/-! ## A345058.P3016829772156195875

`A344590(A066561(n+1))`
-/

namespace A345058.P3016829772156195875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344590 (A066561 (n + 1)).toNat

end

end A345058.P3016829772156195875

/-! ## A345058.P14124921672638470525

`A344590(C(A321366(n+1), 2))`
-/

namespace A345058.P14124921672638470525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344590 (Nat.choose (A321366 (n + 1)).toNat 2)

end

end A345058.P14124921672638470525

/-! ## A345058.P10192074817268732476

`A344770(C(A321366(n+1), 2))`
-/

namespace A345058.P10192074817268732476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344770 (Nat.choose (A321366 (n + 1)).toNat 2)

end

end A345058.P10192074817268732476

/-! ## A345058.P1442842794264426682

`A344590(A345988(2*(n+1))/2)`
-/

namespace A345058.P1442842794264426682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344590 (SequenceMachineLib.roundAway ((A345988 (2 * (n + 1)) : ℚ) / 2)).toNat

end

end A345058.P1442842794264426682

/-! ## A345058.P4790531880952505989

`A344770(A345988(2*(n+1))/2)`
-/

namespace A345058.P4790531880952505989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344770 (SequenceMachineLib.roundAway ((A345988 (2 * (n + 1)) : ℚ) / 2)).toNat

end

end A345058.P4790531880952505989

/-! ## A345058.P16057786866759692498

`A344590(C(A011772(n+1)+1, 2))`
-/

namespace A345058.P16057786866759692498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344590 (Nat.choose (A011772 (n + 1) + 1).toNat 2)

end

end A345058.P16057786866759692498

/-! ## A345058.P13472083901575547362

`A344590((n+1)*A061782(n+1))`
-/

namespace A345058.P13472083901575547362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344590 ((n + 1 : ℤ) * A061782 (n + 1)).toNat

end

end A345058.P13472083901575547362

/-! ## A345058.P9782564144274399407

`A344770((n+1)*A061782(n+1))`
-/

namespace A345058.P9782564144274399407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344770 ((n + 1 : ℤ) * A061782 (n + 1)).toNat

end

end A345058.P9782564144274399407

/-! ## A345058.P11544181099725766452

`A344770(A066561(2*n+1-n))`
-/

namespace A345058.P11544181099725766452
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344770 (A066561 (2 * n + 1 - n)).toNat

end

end A345058.P11544181099725766452

/-! ## A345058.P8255556937842164188

`A344590(A000217(A011772(n+1)))`
-/

namespace A345058.P8255556937842164188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344590 (A000217 (A011772 (n + 1)).toNat).toNat

end

end A345058.P8255556937842164188

/-! ## A345058.P3825203762412075001

`A344590(A000217(A344005(2*(n+1))))`
-/

namespace A345058.P3825203762412075001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344590 (A000217 (A344005 (2 * (n + 1))).toNat).toNat

end

end A345058.P3825203762412075001

/-!
# A345059: a(n) = A129283(n) / gcd(sigma(n), A129283(n)), where A129283(n) is the sum of n and its arithmetic derivative.

The programs for A345059, the canonical program `A345059.P15757506483102927457` is in `Seq.B006.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A345059 has offset 1).

The definition of A345059 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A129283, A343226, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A345059.P15757506483102927457

`A129283(n+1)/A343226(n+1)`

The canonical program, it is in `Seq.B006.C001`.
-/

namespace A345059

/-- `A129283(n+1)/A343226(n+1)` -/
def P15757506483102927457.Spec : Prop :=
  ∀ n, P15757506483102927457.a n = (A345059 (n + 1) : ℚ)

end A345059

/-! ## A345059.P13545777903304117796

`A129283(n+1)/gcd(A000203(n+1), A129283(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A345059.P13545777903304117796
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A129283 (n + 1) : ℚ) / (Int.gcd (A000203 (n + 1)) (A129283 (n + 1)) : ℚ)

end

end A345059.P13545777903304117796

namespace A345059

/-- `A129283(n+1)/gcd(A000203(n+1), A129283(n+1))` -/
def P13545777903304117796.Spec : Prop :=
  ∀ n, P13545777903304117796.a n = (A345059 (n + 1) : ℚ)

end A345059

/-! ## A345059.P7982926179310103244

`(A003415(n+1)+n+1)/A343226(n+1)`
-/

namespace A345059.P7982926179310103244
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003415 (n + 1) + (n + 1 : ℤ) : ℚ) / (A343226 (n + 1) : ℚ)

end

end A345059.P7982926179310103244

namespace A345059

/-- `(A003415(n+1)+n+1)/A343226(n+1)` -/
def P7982926179310103244.Spec : Prop :=
  ∀ n, P7982926179310103244.a n = (A345059 (n + 1) : ℚ)

end A345059

/-! ## A345059.P1256989533514483308

`(A211991(n+1)+A000203(n+1))/A343226(n+1)`
-/

namespace A345059.P1256989533514483308
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A211991 (n + 1) + A000203 (n + 1) : ℚ) / (A343226 (n + 1) : ℚ)

end

end A345059.P1256989533514483308

namespace A345059

/-- `(A211991(n+1)+A000203(n+1))/A343226(n+1)` -/
def P1256989533514483308.Spec : Prop :=
  ∀ n, P1256989533514483308.a n = (A345059 (n + 1) : ℚ)

end A345059

/-! ## A345059.P11774030369937988078

`A343227(n+1)+A211991(n+1)/A343226(n+1)`
-/

namespace A345059.P11774030369937988078
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A343227 (n + 1) : ℚ) + (A211991 (n + 1) : ℚ) / (A343226 (n + 1) : ℚ)

end

end A345059.P11774030369937988078

namespace A345059

/-- `A343227(n+1)+A211991(n+1)/A343226(n+1)` -/
def P11774030369937988078.Spec : Prop :=
  ∀ n, P11774030369937988078.a n = (A345059 (n + 1) : ℚ)

end A345059

/-! ## A345059.P12309323580334029663

`(A003959(n+1)-A348970(n+1))/A343226(n+1)`
-/

namespace A345059.P12309323580334029663
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003959 (n + 1) - A348970 (n + 1) : ℚ) / (A343226 (n + 1) : ℚ)

end

end A345059.P12309323580334029663

namespace A345059

/-- `(A003959(n+1)-A348970(n+1))/A343226(n+1)` -/
def P12309323580334029663.Spec : Prop :=
  ∀ n, P12309323580334029663.a n = (A345059 (n + 1) : ℚ)

end A345059

/-! ## A345059.P13404929976758606672

`A129283(n+1)/A000203(n+1)*A343227(n+1)`
-/

namespace A345059.P13404929976758606672
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A129283 (n + 1) : ℚ) / (A000203 (n + 1) : ℚ) * (A343227 (n + 1) : ℚ)

end

end A345059.P13404929976758606672

namespace A345059

/-- `A129283(n+1)/A000203(n+1)*A343227(n+1)` -/
def P13404929976758606672.Spec : Prop :=
  ∀ n, P13404929976758606672.a n = (A345059 (n + 1) : ℚ)

end A345059

/-! ## A345059.P11748537743822985423

`A348972(n+1)/A343226(n+1)*A348973(n+1)`
-/

namespace A345059.P11748537743822985423
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A348972 (n + 1) : ℚ) / (A343226 (n + 1) : ℚ) * (A348973 (n + 1) : ℚ)

end

end A345059.P11748537743822985423

namespace A345059

/-- `A348972(n+1)/A343226(n+1)*A348973(n+1)` -/
def P11748537743822985423.Spec : Prop :=
  ∀ n, P11748537743822985423.a n = (A345059 (n + 1) : ℚ)

end A345059

/-!
# A345060: a(n) = A071324(n) - A206369(n).

The programs for A345060, there is no canonical definition to state claims against.
-/

/-! ## A345060.P4307075994538718760

`A071324(n+1)-A206369(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A345060.P4307075994538718760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071324 (n + 1) - A206369 (n + 1)

end

end A345060.P4307075994538718760

/-! ## A345060.P15138848377186039470

`A071324(n+1)-(1-A344439(n+1)+n)`
-/

namespace A345060.P15138848377186039470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071324 (n + 1) - (1 - A344439 (n + 1) + (n : ℤ))

end

end A345060.P15138848377186039470

/-! ## A345060.P6749555101154560581

`A061020(n+1)+A071324(n+1)-A344441(n+1)`
-/

namespace A345060.P6749555101154560581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061020 (n + 1) + (A071324 (n + 1) - A344441 (n + 1))

end

end A345060.P6749555101154560581

/-! ## A345060.P10699726357903678695

`A071324(n+1)-A008836(n+1)*A061020(n+1)`
-/

namespace A345060.P10699726357903678695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071324 (n + 1) - A008836 (n + 1) * A061020 (n + 1)

end

end A345060.P10699726357903678695

/-! ## A345060.P11737196747079033569

`A071324(n+1)-A345061(n+1)*A345063(n+1)`
-/

namespace A345060.P11737196747079033569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071324 (n + 1) - A345061 (n + 1) * A345063 (n + 1)

end

end A345060.P11737196747079033569

/-! ## A345060.P210923012655833839

`A345061(n+1)*A345062(n+1)-A206369(n+1)`
-/

namespace A345060.P210923012655833839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345061 (n + 1) * A345062 (n + 1) - A206369 (n + 1)

end

end A345060.P210923012655833839

/-! ## A345060.P12838503967506992919

`(A345062(n+1)-A345063(n+1))*A345061(n+1)`
-/

namespace A345060.P12838503967506992919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A345062 (n + 1) - A345063 (n + 1)) * A345061 (n + 1)

end

end A345060.P12838503967506992919

/-!
# A345061: a(n) = gcd(A071324(n), A206369(n)).

The programs for A345061, there is no canonical definition to state claims against.
-/

/-! ## A345061.P1631655091243238931

`A071324(n+1)/A345062(n+1)`
-/

namespace A345061.P1631655091243238931
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A071324 (n + 1) : ℚ) / (A345062 (n + 1) : ℚ)

end

end A345061.P1631655091243238931

/-! ## A345061.P2483748483143257968

`A206369(n+1)/A345063(n+1)`
-/

namespace A345061.P2483748483143257968
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A206369 (n + 1) : ℚ) / (A345063 (n + 1) : ℚ)

end

end A345061.P2483748483143257968

/-! ## A345061.P7401874845754752641

`gcd(A071324(n+1), A206369(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A345061.P7401874845754752641
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A071324 (n + 1)) (A206369 (n + 1))

end

end A345061.P7401874845754752641

/-! ## A345061.P3378600646576069983

`gcd(A061020(n+1), A071323(n+1))`
-/

namespace A345061.P3378600646576069983
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A061020 (n + 1)) (A071323 (n + 1))

end

end A345061.P3378600646576069983

/-! ## A345061.P16466420098576237130

`gcd(1-A344439(n+1)+n, A345060(n+1))`
-/

namespace A345061.P16466420098576237130
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (1 - A344439 (n + 1) + (n : ℤ)) (A345060 (n + 1))

end

end A345061.P16466420098576237130

/-! ## A345061.P23542918030623154

`(A345060(n+1)+A206369(n+1))/A345062(n+1)`
-/

namespace A345061.P23542918030623154
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A345060 (n + 1) + A206369 (n + 1) : ℚ) / (A345062 (n + 1) : ℚ)

end

end A345061.P23542918030623154

/-! ## A345061.P12686238988189912475

`(A071324(n+1)-A345060(n+1))/A345063(n+1)`
-/

namespace A345061.P12686238988189912475
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A071324 (n + 1) - A345060 (n + 1) : ℚ) / (A345063 (n + 1) : ℚ)

end

end A345061.P12686238988189912475

/-!
# A345062: a(n) = A071324(n) / gcd(A071324(n), A206369(n)).

The programs for A345062, there is no canonical definition to state claims against.
-/

/-! ## A345062.P9337733454547326580

`A071324(n+1)/A345061(n+1)`
-/

namespace A345062.P9337733454547326580
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A071324 (n + 1) : ℚ) / (A345061 (n + 1) : ℚ)

end

end A345062.P9337733454547326580

/-! ## A345062.P16999280593115491377

`A071324(n+1)/gcd(A071324(n+1), A206369(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A345062.P16999280593115491377
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A071324 (n + 1) : ℚ) / (Int.gcd (A071324 (n + 1)) (A206369 (n + 1)) : ℚ)

end

end A345062.P16999280593115491377

/-! ## A345062.P9030163613498979559

`abs(A071323(n+1)/A345061(n+1))`
-/

namespace A345062.P9030163613498979559
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  |(A071323 (n + 1) : ℚ) / (A345061 (n + 1) : ℚ)|

end

end A345062.P9030163613498979559

/-! ## A345062.P2848440277006628571

`(A345060(n+1)+A206369(n+1))/A345061(n+1)`
-/

namespace A345062.P2848440277006628571
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A345060 (n + 1) + A206369 (n + 1) : ℚ) / (A345061 (n + 1) : ℚ)

end

end A345062.P2848440277006628571

/-! ## A345062.P3645143877677410039

`A345063(n+1)+A345060(n+1)/A345061(n+1)`
-/

namespace A345062.P3645143877677410039
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A345063 (n + 1) : ℚ) + (A345060 (n + 1) : ℚ) / (A345061 (n + 1) : ℚ)

end

end A345062.P3645143877677410039

/-! ## A345062.P5611560380144979678

`A071324(n+1)/A206369(n+1)*A345063(n+1)`
-/

namespace A345062.P5611560380144979678
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A071324 (n + 1) : ℚ) / (A206369 (n + 1) : ℚ) * (A345063 (n + 1) : ℚ)

end

end A345062.P5611560380144979678

/-!
# A345063: a(n) = A206369(n) / gcd(A071324(n), A206369(n)).

The programs for A345063, there is no canonical definition to state claims against.
-/

/-! ## A345063.P4429961690981947243

`A206369(n+1)/A345061(n+1)`
-/

namespace A345063.P4429961690981947243
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A206369 (n + 1) : ℚ) / (A345061 (n + 1) : ℚ)

end

end A345063.P4429961690981947243

/-! ## A345063.P10712256083314432832

`A206369(n+1)/gcd(A071324(n+1), A206369(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A345063.P10712256083314432832
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A206369 (n + 1) : ℚ) / (Int.gcd (A071324 (n + 1)) (A206369 (n + 1)) : ℚ)

end

end A345063.P10712256083314432832

/-! ## A345063.P16284917600749186419

`abs(A061020(n+1)/A345061(n+1))`
-/

namespace A345063.P16284917600749186419
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  |(A061020 (n + 1) : ℚ) / (A345061 (n + 1) : ℚ)|

end

end A345063.P16284917600749186419

/-! ## A345063.P18060113915312253887

`(A071324(n+1)-A345060(n+1))/A345061(n+1)`
-/

namespace A345063.P18060113915312253887
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A071324 (n + 1) - A345060 (n + 1) : ℚ) / (A345061 (n + 1) : ℚ)

end

end A345063.P18060113915312253887

/-! ## A345063.P7187658236993581752

`A345062(n+1)-A345060(n+1)/A345061(n+1)`
-/

namespace A345063.P7187658236993581752
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A345062 (n + 1) : ℚ) - (A345060 (n + 1) : ℚ) / (A345061 (n + 1) : ℚ)

end

end A345063.P7187658236993581752

/-! ## A345063.P9713191311501270904

`A206369(n+1)/A071324(n+1)*A345062(n+1)`
-/

namespace A345063.P9713191311501270904
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A206369 (n + 1) : ℚ) / (A071324 (n + 1) : ℚ) * (A345062 (n + 1) : ℚ)

end

end A345063.P9713191311501270904

/-!
# A345064: a(n) = 1 if A071324(n) is equal to A206369(n), otherwise 0; characteristic function of A317923.

The programs for A345064, there is no canonical definition to state claims against.
-/

/-! ## A345064.P16396434615678959357

`C(2, A345060(n+1)²)`
-/

namespace A345064.P16396434615678959357
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 2 (A345060 (n + 1) ^ 2).toNat

end

end A345064.P16396434615678959357

/-! ## A345064.P16338034221983247848

`floor(1/A345062(n+1))`
-/

namespace A345064.P16338034221983247848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊1 / (A345062 (n + 1) : ℚ)⌋

end

end A345064.P16338034221983247848

/-! ## A345064.P18247344043438829097

`round(A345061(n+1)/(n+1))`
-/

namespace A345064.P18247344043438829097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A345061 (n + 1) : ℚ) / (n + 1 : ℚ))

end

end A345064.P18247344043438829097

/-! ## A345064.P7866631204182041942

`A000007(A345060(n+1))`
-/

namespace A345064.P7866631204182041942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (A345060 (n + 1)).toNat

end

end A345064.P7866631204182041942

/-! ## A345064.P7047185827301404511

`A000007(A345062(n+1)-1)`
-/

namespace A345064.P7047185827301404511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (A345062 (n + 1) - 1).toNat

end

end A345064.P7047185827301404511

/-! ## A345064.P6248843975772315478

`A010051(A345060(n+1)+2)`
-/

namespace A345064.P6248843975772315478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (A345060 (n + 1) + 2).toNat

end

end A345064.P6248843975772315478

/-! ## A345064.P12119342709187198418

`C(A004530(n), A345060(n+1))`
-/

namespace A345064.P12119342709187198418
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A004530 n).toNat (A345060 (n + 1)).toNat

end

end A345064.P12119342709187198418

/-! ## A345064.P2225023028517109207

`∏{d}[A345060(n+1), A345060(#)]`
-/

namespace A345064.P2225023028517109207
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345060 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n).natAbs, A345060 d

end

end A345064.P2225023028517109207

/-! ## A345064.P15705318219210063566

`∏{p}[A345060(n+1), A087401(#)]`
-/

namespace A345064.P15705318219210063566
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345060 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A087401 p

end

end A345064.P15705318219210063566

/-! ## A345064.P18045413345448486237

`∏{p}[A345062(n+1), A345060(#)]`
-/

namespace A345064.P18045413345448486237
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345062 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A345060 p

end

end A345064.P18045413345448486237

/-! ## A345064.P2550711888452306253

`C(A206369(n+1), A071324(n+1))`
-/

namespace A345064.P2550711888452306253
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A206369 (n + 1)).toNat (A071324 (n + 1)).toNat

end

end A345064.P2550711888452306253

/-! ## A345064.P2392259833769716011

`C(A345061(n+1), A071324(n+1))`
-/

namespace A345064.P2392259833769716011
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A345061 (n + 1)).toNat (A071324 (n + 1)).toNat

end

end A345064.P2392259833769716011

/-! ## A345064.P18440328870074739777

`C(A345063(n+1), A345062(n+1))`
-/

namespace A345064.P18440328870074739777
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A345063 (n + 1)).toNat (A345062 (n + 1)).toNat

end

end A345064.P18440328870074739777

/-! ## A345064.P14944143900489993704

`∏{p}[A345062(n+1), 1-A345062(#)]`
-/

namespace A345064.P14944143900489993704
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345062 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, (1 - A345062 p)

end

end A345064.P14944143900489993704

/-! ## A345064.P5220038316085370955

`A000330(C(n, A345060(n+1)+n))`
-/

namespace A345064.P5220038316085370955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000330 (Nat.choose n (A345060 (n + 1) + (n : ℤ)).toNat)

end

end A345064.P5220038316085370955

/-! ## A345064.P15307690254129957971

`A122306(C(n, A345060(n+1)+n))`
-/

namespace A345064.P15307690254129957971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122306 (Nat.choose n (A345060 (n + 1) + (n : ℤ)).toNat)

end

end A345064.P15307690254129957971

/-! ## A345064.P8377322786855145558

`C(A007814(n+1), 2*A345060(n+1))`
-/

namespace A345064.P8377322786855145558
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A007814 (n + 1)).toNat (2 * A345060 (n + 1)).toNat

end

end A345064.P8377322786855145558

/-! ## A345064.P11662150323297983395

`A066628(a(n-1))^A345060(n+1)` with `a(0)=1`
-/

namespace A345064.P11662150323297983395
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (A066628 (SequenceMachineLib.roundAway (a (n - 1))).toNat : ℚ) ^ (A345060 (n + 1) : ℤ)

end

end A345064.P11662150323297983395

/-! ## A345064.P14481613944118838868

`C(A087401(∑{e}[n+1, #]), A345060(n+1))`
-/

namespace A345064.P14481613944118838868
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A087401 (∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p)).toNat (A345060 (n + 1)).toNat

end

end A345064.P14481613944118838868

/-! ## A345064.P7609141267219952573

`A345060(a(n-1)+1)^A345060(n+1)` with `a(0)=1`
-/

namespace A345064.P7609141267219952573
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (A345060 (SequenceMachineLib.roundAway (a (n - 1) + 1)).toNat : ℚ) ^ (A345060 (n + 1) : ℤ)

end

end A345064.P7609141267219952573

/-!
# A345065: Sum of A011772 and its Dirichlet inverse.

The programs for A345065, there is no canonical definition to state claims against.
-/

/-! ## A345065.P15773432254960093627

`A011772(n+1)+A345055(n+1)`
-/

namespace A345065.P15773432254960093627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011772 (n + 1) + A345055 (n + 1)

end

end A345065.P15773432254960093627

/-! ## A345065.P88255384836924787

`A321366(n+1)+A345055(n+1)-1`
-/

namespace A345065.P88255384836924787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321366 (n + 1) + (A345055 (n + 1) - 1)

end

end A345065.P88255384836924787

/-! ## A345065.P8947440744325147277

`A000203(n+1)+A345055(n+1)-A344765(n+1)`
-/

namespace A345065.P8947440744325147277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1) + (A345055 (n + 1) - A344765 (n + 1))

end

end A345065.P8947440744325147277

/-! ## A345065.P14097506241216564904

`A047994(n+1)+A345055(n+1)-A344874(n+1)`
-/

namespace A345065.P14097506241216564904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047994 (n + 1) + (A345055 (n + 1) - A344874 (n + 1))

end

end A345065.P14097506241216564904

/-! ## A345065.P18187197755844484386

`A344878(n+1)+A345055(n+1)-A344976(n+1)`
-/

namespace A345065.P18187197755844484386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344878 (n + 1) + (A345055 (n + 1) - A344976 (n + 1))

end

end A345065.P18187197755844484386

/-! ## A345065.P8577833001059807504

`A345055(n+1)+A064987(n+1)/(n+1)-A344765(n+1)`
-/

namespace A345065.P8577833001059807504
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A345055 (n + 1) : ℚ) + ((A064987 (n + 1) : ℚ) / (n + 1 : ℚ) - (A344765 (n + 1) : ℚ))

end

end A345065.P8577833001059807504

/-! ## A345065.P9702623396861863390

`A345055(n+1)-A024000(A321366(n+1))`
-/

namespace A345065.P9702623396861863390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345055 (n + 1) - A024000 (A321366 (n + 1)).toNat

end

end A345065.P9702623396861863390

/-! ## A345065.P6190941650577319710

`A345055(n+1)+A344005(2*(n+1))`
-/

namespace A345065.P6190941650577319710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345055 (n + 1) + A344005 (2 * (n + 1))

end

end A345065.P6190941650577319710

/-! ## A345065.P18426324858629320775

`A345055(n+1)+A002260(A066561(n+1))`
-/

namespace A345065.P18426324858629320775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345055 (n + 1) + A002260 (A066561 (n + 1)).toNat

end

end A345065.P18426324858629320775

/-!
# A345068: a(n) = Sum_{d|n, d>1} d^floor(1/omega(d)).

The programs for A345068, the canonical program `A345068.P8859983234347188221` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A345068 has offset 1).

The definition of A345068 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A345068.P8859983234347188221

`∑{d}[n+1, A100994(#)]-1`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A345068

/-- `∑{d}[n+1, A100994(#)]-1` -/
def P8859983234347188221.Spec : Prop :=
  ∀ n, P8859983234347188221.a n = A345068 (n + 1)

theorem P8859983234347188221.correct : P8859983234347188221.Spec := by
  intro n
  simp only [A345068, Nat.add_sub_cancel]

end A345068

/-! ## A345068.P8154967042033925200

`A023889(n+1)+A081707(n+1)-1`
-/

namespace A345068.P8154967042033925200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023889 (n + 1) + (A081707 (n + 1) - 1)

end

end A345068.P8154967042033925200

namespace A345068

/-- `A023889(n+1)+A081707(n+1)-1` -/
def P8154967042033925200.Spec : Prop :=
  ∀ n, P8154967042033925200.a n = A345068 (n + 1)

end A345068

/-! ## A345068.P6343242609992029871

`A023888(n+1)+A081707(n+1)-2`
-/

namespace A345068.P6343242609992029871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023888 (n + 1) + (A081707 (n + 1) - 2)

end

end A345068.P6343242609992029871

namespace A345068

/-- `A023888(n+1)+A081707(n+1)-2` -/
def P6343242609992029871.Spec : Prop :=
  ∀ n, P6343242609992029871.a n = A345068 (n + 1)

end A345068

/-! ## A345068.P15748228333991448522

`∑{d}[n+1, #^A001222(A014963(#))]-1`
-/

namespace A345068.P15748228333991448522
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℚ) ^ (A001222 (A014963 d).toNat : ℤ) - 1

end

end A345068.P15748228333991448522

namespace A345068

/-- `∑{d}[n+1, #^A001222(A014963(#))]-1` -/
def P15748228333991448522.Spec : Prop :=
  ∀ n, P15748228333991448522.a n = (A345068 (n + 1) : ℚ)

end A345068

/-! ## A345068.P17405874465485786885

`A023889(n+1)+A023443(A081707(n+1))`
-/

namespace A345068.P17405874465485786885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023889 (n + 1) + A023443 (A081707 (n + 1)).toNat

end

end A345068.P17405874465485786885

namespace A345068

/-- `A023889(n+1)+A023443(A081707(n+1))` -/
def P17405874465485786885.Spec : Prop :=
  ∀ n, P17405874465485786885.a n = A345068 (n + 1)

end A345068

/-! ## A345068.P15223924105781869512

`A000005(n+1)+A023888(n+1)-(A001222(n+1)+2)`
-/

namespace A345068.P15223924105781869512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) + (A023888 (n + 1) - (A001222 (n + 1) + 2))

end

end A345068.P15223924105781869512

namespace A345068

/-- `A000005(n+1)+A023888(n+1)-(A001222(n+1)+2)` -/
def P15223924105781869512.Spec : Prop :=
  ∀ n, P15223924105781869512.a n = A345068 (n + 1)

end A345068

/-! ## A345068.P10812420287426073768

`∑{d}[n+1, A100994(#)%A067894(#)]`
-/

namespace A345068.P10812420287426073768
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), Int.tmod (A100994 d) (A067894 d)

end

end A345068.P10812420287426073768

namespace A345068

/-- `∑{d}[n+1, A100994(#)%A067894(#)]` -/
def P10812420287426073768.Spec : Prop :=
  ∀ n, P10812420287426073768.a n = A345068 (n + 1)

end A345068

/-! ## A345068.P15952306995987140454

`A023443(∑{d}[n+1, A100994(#)])`
-/

namespace A345068.P15952306995987140454
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (∑ d ∈ Nat.divisors (f1 n), A100994 d).toNat

end

end A345068.P15952306995987140454

namespace A345068

/-- `A023443(∑{d}[n+1, A100994(#)])` -/
def P15952306995987140454.Spec : Prop :=
  ∀ n, P15952306995987140454.a n = A345068 (n + 1)

end A345068

/-!
# A345069: Sums of two consecutive even-indexed primes.

The programs for A345069, the canonical program `A345069.P14863870966218806747` is in `Seq.B001.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A345069 has offset 1).

The definition of A345069 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A345069.P14863870966218806747

`A000040(2*(n+1))+A000040(2*(n+1)+2)`

The canonical program, it is in `Seq.B001.C012`.
-/

namespace A345069

/-- `A000040(2*(n+1))+A000040(2*(n+1)+2)` -/
def P14863870966218806747.Spec : Prop :=
  ∀ n, P14863870966218806747.a n = A345069 (n + 1)

theorem P14863870966218806747.correct : P14863870966218806747.Spec := by
  intro n
  simp only [A345069, Nat.add_sub_cancel]

end A345069

/-! ## A345069.P2566790730582340675

`2*A345070(n+1)`
-/

namespace A345069.P2566790730582340675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A345070 (n + 1)

end

end A345069.P2566790730582340675

namespace A345069

/-- `2*A345070(n+1)` -/
def P2566790730582340675.Spec : Prop :=
  ∀ n, P2566790730582340675.a n = A345069 (n + 1)

end A345069

/-! ## A345069.P2385897774581200277

`A155750(n+1)+2*A031215(n+1)`
-/

namespace A345069.P2385897774581200277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155750 (n + 1) + 2 * A031215 (n + 1)

end

end A345069.P2385897774581200277

namespace A345069

/-- `A155750(n+1)+2*A031215(n+1)` -/
def P2385897774581200277.Spec : Prop :=
  ∀ n, P2385897774581200277.a n = A345069 (n + 1)

end A345069

/-! ## A345069.P16082578587800145028

`A031215(n+1)+A031215(n+2)`
-/

namespace A345069.P16082578587800145028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031215 (n + 1) + A031215 (n + 2)

end

end A345069.P16082578587800145028

namespace A345069

/-- `A031215(n+1)+A031215(n+2)` -/
def P16082578587800145028.Spec : Prop :=
  ∀ n, P16082578587800145028.a n = A345069 (n + 1)

end A345069

/-! ## A345069.P8480114909754109566

`A092390(n+1)+A092390(n+2)-A001043(n+1)`
-/

namespace A345069.P8480114909754109566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092390 (n + 1) + (A092390 (n + 2) - A001043 (n + 1))

end

end A345069.P8480114909754109566

namespace A345069

/-- `A092390(n+1)+A092390(n+2)-A001043(n+1)` -/
def P8480114909754109566.Spec : Prop :=
  ∀ n, P8480114909754109566.a n = A345069 (n + 1)

end A345069

/-! ## A345069.P7608082267061805031

`A031166(2*n)+a(n-1)` with `a(0)=10`
-/

namespace A345069.P7608082267061805031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [10] fun n a =>
  A031166 (2 * n) + a (n - 1)

end

end A345069.P7608082267061805031

namespace A345069

/-- `A031166(2*n)+a(n-1)` -/
def P7608082267061805031.Spec : Prop :=
  ∀ n, P7608082267061805031.a n = A345069 (n + 1)

end A345069

/-! ## A345069.P11786607927827569785

`2*(A073273(2*(n+1))+1)`
-/

namespace A345069.P11786607927827569785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A073273 (2 * (n + 1)) + 1)

end

end A345069.P11786607927827569785

namespace A345069

/-- `2*(A073273(2*(n+1))+1)` -/
def P11786607927827569785.Spec : Prop :=
  ∀ n, P11786607927827569785.a n = A345069 (n + 1)

end A345069

/-! ## A345069.P5557816859610373334

`A077126(n+2)-A355726(2*n+1)`
-/

namespace A345069.P5557816859610373334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077126 (n + 2) - A355726 (2 * n + 1)

end

end A345069.P5557816859610373334

namespace A345069

/-- `A077126(n+2)-A355726(2*n+1)` -/
def P5557816859610373334.Spec : Prop :=
  ∀ n, P5557816859610373334.a n = A345069 (n + 1)

end A345069

/-! ## A345069.P6036144145086841244

`A004139(2*(n+1))+A000040(2*(n+1))`
-/

namespace A345069.P6036144145086841244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004139 (2 * (n + 1)) + A000040 (2 * (n + 1))

end

end A345069.P6036144145086841244

namespace A345069

/-- `A004139(2*(n+1))+A000040(2*(n+1))` -/
def P6036144145086841244.Spec : Prop :=
  ∀ n, P6036144145086841244.a n = A345069 (n + 1)

end A345069

/-! ## A345069.P12862053612740524053

`A031165(2*n+1)+A001043(2*n+1)`
-/

namespace A345069.P12862053612740524053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031165 (2 * n + 1) + A001043 (2 * n + 1)

end

end A345069.P12862053612740524053

namespace A345069

/-- `A031165(2*n+1)+A001043(2*n+1)` -/
def P12862053612740524053.Spec : Prop :=
  ∀ n, P12862053612740524053.a n = A345069 (n + 1)

end A345069

/-! ## A345069.P11059385117723073954

`A031165(2*n+1)+A011974(2*(n+1))`
-/

namespace A345069.P11059385117723073954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031165 (2 * n + 1) + A011974 (2 * (n + 1))

end

end A345069.P11059385117723073954

namespace A345069

/-- `A031165(2*n+1)+A011974(2*(n+1))` -/
def P11059385117723073954.Spec : Prop :=
  ∀ n, P11059385117723073954.a n = A345069 (n + 1)

end A345069

/-! ## A345069.P10839095781737666656

`A065091(2*n+1)+A004139(2*(n+1))`
-/

namespace A345069.P10839095781737666656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (2 * n + 1) + A004139 (2 * (n + 1))

end

end A345069.P10839095781737666656

namespace A345069

/-- `A065091(2*n+1)+A004139(2*(n+1))` -/
def P10839095781737666656.Spec : Prop :=
  ∀ n, P10839095781737666656.a n = A345069 (n + 1)

end A345069

/-! ## A345069.P17593191016392623272

`A093667(2*(n+1))+A065091(2*(n+1))`
-/

namespace A345069.P17593191016392623272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093667 (2 * (n + 1)) + A065091 (2 * (n + 1))

end

end A345069.P17593191016392623272

namespace A345069

/-- `A093667(2*(n+1))+A065091(2*(n+1))` -/
def P17593191016392623272.Spec : Prop :=
  ∀ n, P17593191016392623272.a n = A345069 (n + 1)

end A345069

/-! ## A345069.P9706731246353836215

`A215848(2*(n+1))+A000040(2*(n+1))`
-/

namespace A345069.P9706731246353836215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215848 (2 * (n + 1)) + A000040 (2 * (n + 1))

end

end A345069.P9706731246353836215

namespace A345069

/-- `A215848(2*(n+1))+A000040(2*(n+1))` -/
def P9706731246353836215.Spec : Prop :=
  ∀ n, P9706731246353836215.a n = A345069 (n + 1)

end A345069

/-! ## A345069.P1661417632214718672

`A139049(2*(n+1))+A086304(2*n+1)`
-/

namespace A345069.P1661417632214718672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139049 (2 * (n + 1)) + A086304 (2 * n + 1)

end

end A345069.P1661417632214718672

namespace A345069

/-- `A139049(2*(n+1))+A086304(2*n+1)` -/
def P1661417632214718672.Spec : Prop :=
  ∀ n, P1661417632214718672.a n = A345069 (n + 1)

end A345069

/-! ## A345069.P12514584084600549463

`A215848(2*(n+1))+A065091(2*n+1)`
-/

namespace A345069.P12514584084600549463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215848 (2 * (n + 1)) + A065091 (2 * n + 1)

end

end A345069.P12514584084600549463

namespace A345069

/-- `A215848(2*(n+1))+A065091(2*n+1)` -/
def P12514584084600549463.Spec : Prop :=
  ∀ n, P12514584084600549463.a n = A345069 (n + 1)

end A345069

/-! ## A345069.P75395475317479294

`A215848(2*n+1)+A093667(2*(n+1))`
-/

namespace A345069.P75395475317479294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215848 (2 * n + 1) + A093667 (2 * (n + 1))

end

end A345069.P75395475317479294

namespace A345069

/-- `A215848(2*n+1)+A093667(2*(n+1))` -/
def P75395475317479294.Spec : Prop :=
  ∀ n, P75395475317479294.a n = A345069 (n + 1)

end A345069

/-! ## A345069.P4936899376814112907

`A175221(2*(n+1))+A172367(2*(n+1))`
-/

namespace A345069.P4936899376814112907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175221 (2 * (n + 1)) + A172367 (2 * (n + 1))

end

end A345069.P4936899376814112907

namespace A345069

/-- `A175221(2*(n+1))+A172367(2*(n+1))` -/
def P4936899376814112907.Spec : Prop :=
  ∀ n, P4936899376814112907.a n = A345069 (n + 1)

end A345069

/-! ## A345069.P235999751491603257

`A048449(2*n+1)-A048448(2*n+1)`
-/

namespace A345069.P235999751491603257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048449 (2 * n + 1) - A048448 (2 * n + 1)

end

end A345069.P235999751491603257

namespace A345069

/-- `A048449(2*n+1)-A048448(2*n+1)` -/
def P235999751491603257.Spec : Prop :=
  ∀ n, P235999751491603257.a n = A345069 (n + 1)

end A345069

/-! ## A345069.P13412817070909627309

`A034961(2*(n+1))-A065091(2*(n+1))`
-/

namespace A345069.P13412817070909627309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034961 (2 * (n + 1)) - A065091 (2 * (n + 1))

end

end A345069.P13412817070909627309

namespace A345069

/-- `A034961(2*(n+1))-A065091(2*(n+1))` -/
def P13412817070909627309.Spec : Prop :=
  ∀ n, P13412817070909627309.a n = A345069 (n + 1)

end A345069

/-!
# A345070: Averages of two consecutive even-indexed primes.

The programs for A345070, the canonical program `A345070.P15824775357037310664` is in `Seq.B001.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A345070 has offset 1).

The definition of A345070 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A345070.P15824775357037310664

`(A000040(2*(n+1))+A000040(2*(n+1)+2))/2`

The canonical program, it is in `Seq.B001.C012`.
-/

namespace A345070

/-- `(A000040(2*(n+1))+A000040(2*(n+1)+2))/2` -/
def P15824775357037310664.Spec : Prop :=
  ∀ n, P15824775357037310664.a n = (A345070 (n + 1) : ℚ)

end A345070

/-! ## A345070.P14970259234537640589

`A345069(n+1)/2`
-/

namespace A345070.P14970259234537640589
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A345069 (n + 1) : ℚ) / 2

end

end A345070.P14970259234537640589

namespace A345070

/-- `A345069(n+1)/2` -/
def P14970259234537640589.Spec : Prop :=
  ∀ n, P14970259234537640589.a n = (A345070 (n + 1) : ℚ)

end A345070

/-! ## A345070.P10654575619763050892

`A031215(n+1)+A155750(n+1)/2`
-/

namespace A345070.P10654575619763050892
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A031215 (n + 1) : ℚ) + (A155750 (n + 1) : ℚ) / 2

end

end A345070.P10654575619763050892

namespace A345070

/-- `A031215(n+1)+A155750(n+1)/2` -/
def P10654575619763050892.Spec : Prop :=
  ∀ n, P10654575619763050892.a n = (A345070 (n + 1) : ℚ)

end A345070

/-! ## A345070.P14079944709202323757

`(A031215(n+1)+A031215(n+2))/2`
-/

namespace A345070.P14079944709202323757
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A031215 (n + 1) + A031215 (n + 2) : ℚ) / 2

end

end A345070.P14079944709202323757

namespace A345070

/-- `(A031215(n+1)+A031215(n+2))/2` -/
def P14079944709202323757.Spec : Prop :=
  ∀ n, P14079944709202323757.a n = (A345070 (n + 1) : ℚ)

end A345070

/-! ## A345070.P15578245829109004108

`A073273(2*(n+1))+1`
-/

namespace A345070.P15578245829109004108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073273 (2 * (n + 1)) + 1

end

end A345070.P15578245829109004108

namespace A345070

/-- `A073273(2*(n+1))+1` -/
def P15578245829109004108.Spec : Prop :=
  ∀ n, P15578245829109004108.a n = A345070 (n + 1)

end A345070

/-! ## A345070.P13679529805052263475

`ceil(sqrt(A090076(2*(n+1))))`
-/

namespace A345070.P13679529805052263475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (A090076 (2 * (n + 1)) : ℝ)⌉

end

end A345070.P13679529805052263475

namespace A345070

/-- `ceil(sqrt(A090076(2*(n+1))))` -/
def P13679529805052263475.Spec : Prop :=
  ∀ n, P13679529805052263475.a n = A345070 (n + 1)

end A345070

/-! ## A345070.P13903233005937035035

`ceil(sqrt(A087105(2*n+3)))`
-/

namespace A345070.P13903233005937035035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (A087105 (2 * n + 3) : ℝ)⌉

end

end A345070.P13903233005937035035

namespace A345070

/-- `ceil(sqrt(A087105(2*n+3)))` -/
def P13903233005937035035.Spec : Prop :=
  ∀ n, P13903233005937035035.a n = A345070 (n + 1)

end A345070

/-! ## A345070.P16869639288332879716

`A052288(2*n+1)+A000040(2*(n+1))`
-/

namespace A345070.P16869639288332879716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052288 (2 * n + 1) + A000040 (2 * (n + 1))

end

end A345070.P16869639288332879716

namespace A345070

/-- `A052288(2*n+1)+A000040(2*(n+1))` -/
def P16869639288332879716.Spec : Prop :=
  ∀ n, P16869639288332879716.a n = A345070 (n + 1)

end A345070

/-! ## A345070.P17414906103864724924

`A052288(2*n+1)+A006005(2*(n+1))`
-/

namespace A345070.P17414906103864724924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052288 (2 * n + 1) + A006005 (2 * (n + 1))

end

end A345070.P17414906103864724924

namespace A345070

/-- `A052288(2*n+1)+A006005(2*(n+1))` -/
def P17414906103864724924.Spec : Prop :=
  ∀ n, P17414906103864724924.a n = A345070 (n + 1)

end A345070

/-! ## A345070.P2573993398527381539

`A065091(2*n+1)+A052288(2*n+1)`
-/

namespace A345070.P2573993398527381539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (2 * n + 1) + A052288 (2 * n + 1)

end

end A345070.P2573993398527381539

namespace A345070

/-- `A065091(2*n+1)+A052288(2*n+1)` -/
def P2573993398527381539.Spec : Prop :=
  ∀ n, P2573993398527381539.a n = A345070 (n + 1)

end A345070

/-! ## A345070.P1346056432047132342

`A089253(2*n+1)+A089038(2*(n+1))`
-/

namespace A345070.P1346056432047132342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089253 (2 * n + 1) + A089038 (2 * (n + 1))

end

end A345070.P1346056432047132342

namespace A345070

/-- `A089253(2*n+1)+A089038(2*(n+1))` -/
def P1346056432047132342.Spec : Prop :=
  ∀ n, P1346056432047132342.a n = A345070 (n + 1)

end A345070

/-! ## A345070.P13989487693198661180

`A105760(2*n+1)+A089192(2*n+1)`
-/

namespace A345070.P13989487693198661180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105760 (2 * n + 1) + A089192 (2 * n + 1)

end

end A345070.P13989487693198661180

namespace A345070

/-- `A105760(2*n+1)+A089192(2*n+1)` -/
def P13989487693198661180.Spec : Prop :=
  ∀ n, P13989487693198661180.a n = A345070 (n + 1)

end A345070

/-! ## A345070.P3535186528039690790

`A161720(2*(n+2))+A089192(2*n+1)`
-/

namespace A345070.P3535186528039690790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161720 (2 * (n + 2)) + A089192 (2 * n + 1)

end

end A345070.P3535186528039690790

namespace A345070

/-- `A161720(2*(n+2))+A089192(2*n+1)` -/
def P3535186528039690790.Spec : Prop :=
  ∀ n, P3535186528039690790.a n = A345070 (n + 1)

end A345070

/-! ## A345070.P7533131984939850346

`A028334(2*n+3)+A024675(2*n+1)`
-/

namespace A345070.P7533131984939850346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028334 (2 * n + 3) + A024675 (2 * n + 1)

end

end A345070.P7533131984939850346

namespace A345070

/-- `A028334(2*n+3)+A024675(2*n+1)` -/
def P7533131984939850346.Spec : Prop :=
  ∀ n, P7533131984939850346.a n = A345070 (n + 1)

end A345070

/-! ## A345070.P308132875067486865

`A062839(2*n+3)`
-/

namespace A345070.P308132875067486865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062839 (2 * n + 3)

end

end A345070.P308132875067486865

namespace A345070

/-- `A062839(2*n+3)` -/
def P308132875067486865.Spec : Prop :=
  ∀ n, P308132875067486865.a n = A345070 (n + 1)

end A345070

/-! ## A345070.P6735298946337271001

`A176099(2*(n+2))/2`
-/

namespace A345070.P6735298946337271001
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A176099 (2 * (n + 2)) : ℚ) / 2

end

end A345070.P6735298946337271001

namespace A345070

/-- `A176099(2*(n+2))/2` -/
def P6735298946337271001.Spec : Prop :=
  ∀ n, P6735298946337271001.a n = (A345070 (n + 1) : ℚ)

end A345070

/-! ## A345070.P17632455356603719431

`A048448(2*n+3)/2`
-/

namespace A345070.P17632455356603719431
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A048448 (2 * n + 3) : ℚ) / 2

end

end A345070.P17632455356603719431

namespace A345070

/-- `A048448(2*n+3)/2` -/
def P17632455356603719431.Spec : Prop :=
  ∀ n, P17632455356603719431.a n = (A345070 (n + 1) : ℚ)

end A345070

/-! ## A345070.P2243915894244863546

`ceil(sqrt(A176098(2*(n+2))))`
-/

namespace A345070.P2243915894244863546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (A176098 (2 * (n + 2)) : ℝ)⌉

end

end A345070.P2243915894244863546

namespace A345070

/-- `ceil(sqrt(A176098(2*(n+2))))` -/
def P2243915894244863546.Spec : Prop :=
  ∀ n, P2243915894244863546.a n = A345070 (n + 1)

end A345070

/-! ## A345070.P16191679965142985777

`A000040(2*(n+1))+Δ[A005097(2*n+1)]`
-/

namespace A345070.P16191679965142985777
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005097 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (2 * (n + 1)) + (f1 (n + 1) - f1 n)

end

end A345070.P16191679965142985777

namespace A345070

/-- `A000040(2*(n+1))+Δ[A005097(2*n+1)]` -/
def P16191679965142985777.Spec : Prop :=
  ∀ n, P16191679965142985777.a n = A345070 (n + 1)

end A345070

/-! ## A345070.P5860620436763794443

`A065091(2*n+1)+Δ[A098090(2*n+1)]`
-/

namespace A345070.P5860620436763794443
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098090 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (2 * n + 1) + (f1 (n + 1) - f1 n)

end

end A345070.P5860620436763794443

namespace A345070

/-- `A065091(2*n+1)+Δ[A098090(2*n+1)]` -/
def P5860620436763794443.Spec : Prop :=
  ∀ n, P5860620436763794443.a n = A345070 (n + 1)

end A345070

/-!
# A345071: Sums of two consecutive odd-indexed primes.

The programs for A345071, the canonical program `A345071.P17369145219068528899` is in `Seq.B001.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A345071 has offset 1).

The definition of A345071 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A345071.P17369145219068528899

`A000040(2*(n+1)-1)+A000040(2*(n+1)+1)`

The canonical program, it is in `Seq.B001.C012`.
-/

namespace A345071

/-- `A000040(2*(n+1)-1)+A000040(2*(n+1)+1)` -/
def P17369145219068528899.Spec : Prop :=
  ∀ n, P17369145219068528899.a n = A345071 (n + 1)

theorem P17369145219068528899.correct : P17369145219068528899.Spec := by
  intro n
  simp only [A345071, Nat.add_sub_cancel]

end A345071

/-! ## A345071.P2353007092059445250

`A100479(n+1)+A088680(n+1)`
-/

namespace A345071.P2353007092059445250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100479 (n + 1) + A088680 (n + 1)

end

end A345071.P2353007092059445250

namespace A345071

/-- `A100479(n+1)+A088680(n+1)` -/
def P2353007092059445250.Spec : Prop :=
  ∀ n, P2353007092059445250.a n = A345071 (n + 1)

theorem P2353007092059445250.correct : P2353007092059445250.Spec := by
  intro n
  simp only [A345071, Nat.add_sub_cancel, A345071.P2353007092059445250.a, A345071.P17369145219068528899.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A088680, A088680.P2200563258996376312.a, A100479, A100479.P2671842593850112912.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A345071

/-! ## A345071.P4413877385861154219

`A135277(n+1)-A031215(n+1)`
-/

namespace A345071.P4413877385861154219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135277 (n + 1) - A031215 (n + 1)

end

end A345071.P4413877385861154219

namespace A345071

/-- `A135277(n+1)-A031215(n+1)` -/
def P4413877385861154219.Spec : Prop :=
  ∀ n, P4413877385861154219.a n = A345071 (n + 1)

theorem P4413877385861154219.correct : P4413877385861154219.Spec := by
  intro n
  simp only [A345071, Nat.add_sub_cancel, A345071.P4413877385861154219.a, A345071.P17369145219068528899.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A031215, A031215.P2952175553723239727.a, A135277, A135277.P16978678375135393666.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A345071

/-! ## A345071.P17764051786238988696

`A092163(n+1)-A078584(n+1)`
-/

namespace A345071.P17764051786238988696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092163 (n + 1) - A078584 (n + 1)

end

end A345071.P17764051786238988696

namespace A345071

/-- `A092163(n+1)-A078584(n+1)` -/
def P17764051786238988696.Spec : Prop :=
  ∀ n, P17764051786238988696.a n = A345071 (n + 1)

theorem P17764051786238988696.correct : P17764051786238988696.Spec := by
  intro n
  simp only [A345071, Nat.add_sub_cancel, A345071.P17764051786238988696.a, A345071.P17369145219068528899.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A078584, A078584.P9091488304949966444.a, A092163, A092163.P2119975698864424644.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A345071

/-! ## A345071.P16905062595123099647

`A092163(n+1)-A001223(2*n+1)`
-/

namespace A345071.P16905062595123099647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092163 (n + 1) - A001223 (2 * n + 1)

end

end A345071.P16905062595123099647

namespace A345071

/-- `A092163(n+1)-A001223(2*n+1)` -/
def P16905062595123099647.Spec : Prop :=
  ∀ n, P16905062595123099647.a n = A345071 (n + 1)

end A345071

/-! ## A345071.P7597067322928297143

`A001223(2*(n+1))+Δ[A007504(2*n)]`
-/

namespace A345071.P7597067322928297143
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001223 (2 * (n + 1)) + (f1 (n + 1) - f1 n)

end

end A345071.P7597067322928297143

namespace A345071

/-- `A001223(2*(n+1))+Δ[A007504(2*n)]` -/
def P7597067322928297143.Spec : Prop :=
  ∀ n, P7597067322928297143.a n = A345071 (n + 1)

end A345071

/-! ## A345071.P10839399188557710524

`A031368(n+1)+A031368(n+2)`
-/

namespace A345071.P10839399188557710524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031368 (n + 1) + A031368 (n + 2)

end

end A345071.P10839399188557710524

namespace A345071

/-- `A031368(n+1)+A031368(n+2)` -/
def P10839399188557710524.Spec : Prop :=
  ∀ n, P10839399188557710524.a n = A345071 (n + 1)

end A345071

/-! ## A345071.P6747090535801629544

`A077131(n+2)-A355726(2*n)`
-/

namespace A345071.P6747090535801629544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077131 (n + 2) - A355726 (2 * n)

end

end A345071.P6747090535801629544

namespace A345071

/-- `A077131(n+2)-A355726(2*n)` -/
def P6747090535801629544.Spec : Prop :=
  ∀ n, P6747090535801629544.a n = A345071 (n + 1)

end A345071

/-! ## A345071.P6964474754763413481

`A048448(2*(n+1))`
-/

namespace A345071.P6964474754763413481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048448 (2 * (n + 1))

end

end A345071.P6964474754763413481

namespace A345071

/-- `A048448(2*(n+1))` -/
def P6964474754763413481.Spec : Prop :=
  ∀ n, P6964474754763413481.a n = A345071 (n + 1)

end A345071

/-! ## A345071.P5725566463369342122

`record[Δ[A008866(n+1)]]`
-/

namespace A345071.P5725566463369342122
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008866 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A345071.P5725566463369342122

namespace A345071

/-- `record[Δ[A008866(n+1)]]` -/
def P5725566463369342122.Spec : Prop :=
  ∀ n, P5725566463369342122.a n = A345071 (n + 1)

end A345071

/-! ## A345071.P15440396073288397927

`record[A048448(n%or(1, n)+2)]`
-/

namespace A345071.P15440396073288397927
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048448 (n % Nat.lor 1 n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A345071.P15440396073288397927

namespace A345071

/-- `record[A048448(n%or(1, n)+2)]` -/
def P15440396073288397927.Spec : Prop :=
  ∀ n, P15440396073288397927.a n = A345071 (n + 1)

end A345071

/-! ## A345071.P11133479082191117513

`A048449(2*n)-a(n-1)` with `a(0)=7`
-/

namespace A345071.P11133479082191117513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [7] fun n a =>
  A048449 (2 * n) - a (n - 1)

end

end A345071.P11133479082191117513

namespace A345071

/-- `A048449(2*n)-a(n-1)` -/
def P11133479082191117513.Spec : Prop :=
  ∀ n, P11133479082191117513.a n = A345071 (n + 1)

end A345071

/-! ## A345071.P13285805353189045301

`ceil(2*sqrt(A087105(2*(n+1))))`
-/

namespace A345071.P13285805353189045301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈2 * Real.sqrt (A087105 (2 * (n + 1)) : ℝ)⌉

end

end A345071.P13285805353189045301

namespace A345071

/-- `ceil(2*sqrt(A087105(2*(n+1))))` -/
def P13285805353189045301.Spec : Prop :=
  ∀ n, P13285805353189045301.a n = A345071 (n + 1)

end A345071

/-! ## A345071.P11816463886739208734

`A084856(2*n+1)/A155067(n+1)`
-/

namespace A345071.P11816463886739208734
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A084856 (2 * n + 1) : ℚ) / (A155067 (n + 1) : ℚ)

end

end A345071.P11816463886739208734

namespace A345071

/-- `A084856(2*n+1)/A155067(n+1)` -/
def P11816463886739208734.Spec : Prop :=
  ∀ n, P11816463886739208734.a n = (A345071 (n + 1) : ℚ)

end A345071

/-! ## A345071.P14800069589796411321

`record[A008866(n+2)]-A008866(2*n+1)`
-/

namespace A345071.P14800069589796411321
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008866 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A008866 (2 * n + 1)

end

end A345071.P14800069589796411321

namespace A345071

/-- `record[A008866(n+2)]-A008866(2*n+1)` -/
def P14800069589796411321.Spec : Prop :=
  ∀ n, P14800069589796411321.a n = A345071 (n + 1)

end A345071

/-! ## A345071.P456451838097979298

`A001223(2*(n+1))+A001043(2*n+1)`
-/

namespace A345071.P456451838097979298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001223 (2 * (n + 1)) + A001043 (2 * n + 1)

end

end A345071.P456451838097979298

namespace A345071

/-- `A001223(2*(n+1))+A001043(2*n+1)` -/
def P456451838097979298.Spec : Prop :=
  ∀ n, P456451838097979298.a n = A345071 (n + 1)

end A345071

/-! ## A345071.P2823839228828932704

`A014687(2*(n+1))+A014686(2*n+1)`
-/

namespace A345071.P2823839228828932704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014687 (2 * (n + 1)) + A014686 (2 * n + 1)

end

end A345071.P2823839228828932704

namespace A345071

/-- `A014687(2*(n+1))+A014686(2*n+1)` -/
def P2823839228828932704.Spec : Prop :=
  ∀ n, P2823839228828932704.a n = A345071 (n + 1)

end A345071

/-! ## A345071.P13148039163605000777

`A045344(2*(n+1))+A000040(2*n+1)`
-/

namespace A345071.P13148039163605000777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045344 (2 * (n + 1)) + A000040 (2 * n + 1)

end

end A345071.P13148039163605000777

namespace A345071

/-- `A045344(2*(n+1))+A000040(2*n+1)` -/
def P13148039163605000777.Spec : Prop :=
  ∀ n, P13148039163605000777.a n = A345071 (n + 1)

end A345071

/-! ## A345071.P1923806165589395326

`A065091(2*(n+1))+A000040(2*n+1)`
-/

namespace A345071.P1923806165589395326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (2 * (n + 1)) + A000040 (2 * n + 1)

end

end A345071.P1923806165589395326

namespace A345071

/-- `A065091(2*(n+1))+A000040(2*n+1)` -/
def P1923806165589395326.Spec : Prop :=
  ∀ n, P1923806165589395326.a n = A345071 (n + 1)

end A345071

/-! ## A345071.P16637259904941215265

`A048974(2*(n+1))+A040976(2*n+1)`
-/

namespace A345071.P16637259904941215265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048974 (2 * (n + 1)) + A040976 (2 * n + 1)

end

end A345071.P16637259904941215265

namespace A345071

/-- `A048974(2*(n+1))+A040976(2*n+1)` -/
def P16637259904941215265.Spec : Prop :=
  ∀ n, P16637259904941215265.a n = A345071 (n + 1)

end A345071

/-!
# A345072: Numbers k such that the sum of cubes of digits of both k and k-2 are primes.

The programs for A345072, there is no canonical definition to state claims against.
-/

/-! ## A345072.P15663342405921627048

`∩[A225534(n+1)+2, A225534(n+1)]`
-/

namespace A345072.P15663342405921627048
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225534 (n + 1) + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225534 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A345072.P15663342405921627048

/-!
# A345073: a(n) is the least integer k such that e * (n!)^(1/n) < n + k.

The programs for A345073, the canonical program `A345073.P4902809471837997029` is in `Seq.B000.C038`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A345073 has offset 1).

The definition of A345073 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A345073.P4902809471837997029

`floor(exp(∑[log(n+1)+1]/(n+1)))-n`

The canonical program, it is in `Seq.B000.C038`.
-/

namespace A345073

/-- `floor(exp(∑[log(n+1)+1]/(n+1)))-n` -/
def P4902809471837997029.Spec : Prop :=
  ∀ n, P4902809471837997029.a n = A345073 (n + 1)

theorem P4902809471837997029.correct : P4902809471837997029.Spec := by
  intro n
  simp only [A345073, Nat.add_sub_cancel]

end A345073

/-! ## A345073.P12916526570526112290

`A055642(A097036(n+1)+A000010(n+1))`
-/

namespace A345073.P12916526570526112290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055642 (A097036 (n + 1) + A000010 (n + 1)).toNat

end

end A345073.P12916526570526112290

namespace A345073

/-- `A055642(A097036(n+1)+A000010(n+1))` -/
def P12916526570526112290.Spec : Prop :=
  ∀ n, P12916526570526112290.a n = A345073 (n + 1)

end A345073

/-! ## A345073.P9646460702107429756

`A055642(A097036(n+1)+A057512(n))`
-/

namespace A345073.P9646460702107429756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055642 (A097036 (n + 1) + A057512 n).toNat

end

end A345073.P9646460702107429756

namespace A345073

/-- `A055642(A097036(n+1)+A057512(n))` -/
def P9646460702107429756.Spec : Prop :=
  ∀ n, P9646460702107429756.a n = A345073 (n + 1)

end A345073

/-! ## A345073.P10186303207433951342

`A055642(A189056(2*n+3)+A059008(n+1))`
-/

namespace A345073.P10186303207433951342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055642 (A189056 (2 * n + 3) + A059008 (n + 1)).toNat

end

end A345073.P10186303207433951342

namespace A345073

/-- `A055642(A189056(2*n+3)+A059008(n+1))` -/
def P10186303207433951342.Spec : Prop :=
  ∀ n, P10186303207433951342.a n = A345073 (n + 1)

end A345073

/-! ## A345073.P12843629951077184874

`A055642(A045234(n+1)+A003327(n+1))`
-/

namespace A345073.P12843629951077184874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055642 (A045234 (n + 1) + A003327 (n + 1)).toNat

end

end A345073.P12843629951077184874

namespace A345073

/-- `A055642(A045234(n+1)+A003327(n+1))` -/
def P12843629951077184874.Spec : Prop :=
  ∀ n, P12843629951077184874.a n = A345073 (n + 1)

end A345073

/-! ## A345073.P3619376321056902298

`A055642(A251536(A005153(n+8)))`
-/

namespace A345073.P3619376321056902298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055642 (A251536 (A005153 (n + 8)).toNat).toNat

end

end A345073.P3619376321056902298

namespace A345073

/-- `A055642(A251536(A005153(n+8)))` -/
def P3619376321056902298.Spec : Prop :=
  ∀ n, P3619376321056902298.a n = A345073 (n + 1)

end A345073

/-! ## A345073.P11714574312576256020

`A055642(A359136(2*(n+2))+A008578(n+1))`
-/

namespace A345073.P11714574312576256020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055642 (A359136 (2 * (n + 2)) + A008578 (n + 1)).toNat

end

end A345073.P11714574312576256020

namespace A345073

/-- `A055642(A359136(2*(n+2))+A008578(n+1))` -/
def P11714574312576256020.Spec : Prop :=
  ∀ n, P11714574312576256020.a n = A345073 (n + 1)

end A345073

/-! ## A345073.P17569111315575643625

`A172471(ceil(log2(A278638(n+1))))`
-/

namespace A345073.P17569111315575643625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172471 ⌈Real.logb 2 (A278638 (n + 1) : ℝ)⌉.toNat

end

end A345073.P17569111315575643625

namespace A345073

/-- `A172471(ceil(log2(A278638(n+1))))` -/
def P17569111315575643625.Spec : Prop :=
  ∀ n, P17569111315575643625.a n = A345073 (n + 1)

end A345073

/-! ## A345073.P12323492313603052750

`A055642(A019557(n+3)-A187360(n+1))`
-/

namespace A345073.P12323492313603052750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055642 (A019557 (n + 3) - A187360 (n + 1)).toNat

end

end A345073.P12323492313603052750

namespace A345073

/-- `A055642(A019557(n+3)-A187360(n+1))` -/
def P12323492313603052750.Spec : Prop :=
  ∀ n, P12323492313603052750.a n = A345073 (n + 1)

end A345073

/-! ## A345073.P15978148219008301273

`A130256(p?[A130259(2*n+1)])`
-/

namespace A345073.P15978148219008301273
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130259 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130256 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A345073.P15978148219008301273

namespace A345073

/-- `A130256(p?[A130259(2*n+1)])` -/
def P15978148219008301273.Spec : Prop :=
  ∀ n, P15978148219008301273.a n = A345073 (n + 1)

end A345073

/-! ## A345073.P11522248159590329853

`A055642(p?[A004525(A007304(n+1))])`
-/

namespace A345073.P11522248159590329853
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A007304 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055642 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A345073.P11522248159590329853

namespace A345073

/-- `A055642(p?[A004525(A007304(n+1))])` -/
def P11522248159590329853.Spec : Prop :=
  ∀ n, P11522248159590329853.a n = A345073 (n + 1)

end A345073

/-! ## A345073.P18051493873275528121

`ceil(root(A245664(n+1), 6))`
-/

namespace A345073.P18051493873275528121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A245664 (n + 1) : ℝ) ^ (1 / (6 : ℝ))⌉

end

end A345073.P18051493873275528121

namespace A345073

/-- `ceil(root(A245664(n+1), 6))` -/
def P18051493873275528121.Spec : Prop :=
  ∀ n, P18051493873275528121.a n = A345073 (n + 1)

end A345073

/-! ## A345073.P1847350070355732758

`floor(sqrt(log(A276413(3*n+1))))`
-/

namespace A345073.P1847350070355732758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.sqrt (Real.log (A276413 (3 * n + 1) : ℝ))⌋

end

end A345073.P1847350070355732758

namespace A345073

/-- `floor(sqrt(log(A276413(3*n+1))))` -/
def P1847350070355732758.Spec : Prop :=
  ∀ n, P1847350070355732758.a n = A345073 (n + 1)

end A345073

/-! ## A345073.P5193400942672083559

`A055642(A119350(n+5)+A017221(2*(n+2)))`
-/

namespace A345073.P5193400942672083559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055642 (A119350 (n + 5) + A017221 (2 * (n + 2))).toNat

end

end A345073.P5193400942672083559

namespace A345073

/-- `A055642(A119350(n+5)+A017221(2*(n+2)))` -/
def P5193400942672083559.Spec : Prop :=
  ∀ n, P5193400942672083559.a n = A345073 (n + 1)

end A345073

/-!
# A345075: E.g.f.: exp( x*(1 + 2*x) / (1 - x - x^2) ).

The programs for A345075, there is no canonical definition to state claims against.
-/

/-! ## A345075.P2139312261000122588

`A000015(A000142(n)*A323583(n))`
-/

namespace A345075.P2139312261000122588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000015 (A000142 n * A323583 n).toNat

end

end A345075.P2139312261000122588

/-! ## A345075.P4480737124751417183

`A061026(A000142(n)*A323583(n))`
-/

namespace A345075.P4480737124751417183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061026 (A000142 n * A323583 n).toNat

end

end A345075.P4480737124751417183

/-!
# A345076: Number of generalized polyforms on the elongated triangular tiling with n cells.

The programs for A345076, there is no canonical definition to state claims against.
-/

/-! ## A345076.P9433710989356136006

`A100196(A347953(n)+A005179(n+1))`
-/

namespace A345076.P9433710989356136006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100196 (A347953 n + A005179 (n + 1)).toNat

end

end A345076.P9433710989356136006

/-!
# A345077: a(0) = 1; a(n) = 6 * Sum_{k=1..n} binomial(n,k) * a(k-1).

The programs for A345077, there is no canonical definition to state claims against.
-/

/-! ## A345077.P4439748050365123978

`A288674(A361554(n))+n`
-/

namespace A345077.P4439748050365123978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288674 (A361554 n).toNat + (n : ℤ)

end

end A345077.P4439748050365123978

/-!
# A345078: a(0) = 1; a(n) = 7 * Sum_{k=1..n} binomial(n,k) * a(k-1).

The programs for A345078, there is no canonical definition to state claims against.
-/

/-! ## A345078.P1728824131587560577

`A167500(or(A074431(n+1), A337390(n)))`
-/

namespace A345078.P1728824131587560577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167500 (Int.lor (A074431 (n + 1)) (A337390 n)).toNat

end

end A345078.P1728824131587560577

/-!
# A345079: Consider the coefficients in the expansion of the n-th cyclotomic polynomial. a(n) is the difference between the extremes.

The programs for A345079, there is no canonical definition to state claims against.
-/

/-! ## A345079.P13234361163148847423

`A230799(n+1)-A010051(n+1)`
-/

namespace A345079.P13234361163148847423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230799 (n + 1) - A010051 (n + 1)

end

end A345079.P13234361163148847423

/-! ## A345079.P12970896233769533467

`A005171(n+1)*A230799(n+1)`
-/

namespace A345079.P12970896233769533467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005171 (n + 1) * A230799 (n + 1)

end

end A345079.P12970896233769533467

/-! ## A345079.P9152308394825546505

`A230799(n+1)-char[record[A000010(n+1)]]`
-/

namespace A345079.P9152308394825546505
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230799 (n + 1) - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A345079.P9152308394825546505

/-! ## A345079.P15764154622218437516

`A230799(n+1)-char[A000010(A014963(n+1))]`
-/

namespace A345079.P15764154622218437516
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A014963 (n + 1)).toNat

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230799 (n + 1) - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A345079.P15764154622218437516

/-! ## A345079.P14418413751497730508

`A230799(n+1)-A000188(n+1)%A014963(n+1)`
-/

namespace A345079.P14418413751497730508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230799 (n + 1) - Int.tmod (A000188 (n + 1)) (A014963 (n + 1))

end

end A345079.P14418413751497730508

/-! ## A345079.P14931498089995965478

`A007423(∑{e}[A014963(n+1), #]*A118759(n)+1)`
-/

namespace A345079.P14931498089995965478
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007423 (((∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p : ℕ) : ℤ) * A118759 n + 1).toNat

end

end A345079.P14931498089995965478

/-! ## A345079.P12188009088537427062

`A189021(A014963(n+1)^A000005(n+1))+1`
-/

namespace A345079.P12188009088537427062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189021 (SequenceMachineLib.roundAway ((A014963 (n + 1) : ℚ) ^ (A000005 (n + 1) : ℤ))).toNat + 1

end

end A345079.P12188009088537427062

/-!
# A345080: First occurrence of n in A345079, or -1 if n does not occur in A345079.

The programs for A345080, there is no canonical definition to state claims against.
-/

/-! ## A345080.P8747081555239993810

`A125231(A125183(3*n+5))`
-/

namespace A345080.P8747081555239993810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125231 (A125183 (3 * n + 5)).toNat

end

end A345080.P8747081555239993810

/-!
# A345081: a(0) = 1; a(n) = 8 * Sum_{k=1..n} binomial(n,k) * a(k-1).

The programs for A345081, there is no canonical definition to state claims against.
-/

/-! ## A345081.P10022147432464202864

`A008574(A201205(n)-A000262(n))`
-/

namespace A345081.P10022147432464202864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008574 (A201205 n - A000262 n).toNat

end

end A345081.P10022147432464202864

/-!
# A345082: Number of elements of order n in R/Z X Z/2Z.

The programs for A345082, the canonical program `A345082.P16266768967040016348` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A345082 has offset 1).

The definition of A345082 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, A319998, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A345082.P16266768967040016348

`A000010(n+1)+A319998(n+1)`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A345082

/-- `A000010(n+1)+A319998(n+1)` -/
def P16266768967040016348.Spec : Prop :=
  ∀ n, P16266768967040016348.a n = A345082 (n + 1)

theorem P16266768967040016348.correct : P16266768967040016348.Spec := by
  intro n
  simp only [A345082, Nat.add_sub_cancel]

end A345082

/-! ## A345082.P5539198153480292569

`2*A000010(n+1)-A319997(n+1)`
-/

namespace A345082.P5539198153480292569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000010 (n + 1) - A319997 (n + 1)

end

end A345082.P5539198153480292569

namespace A345082

/-- `2*A000010(n+1)-A319997(n+1)` -/
def P5539198153480292569.Spec : Prop :=
  ∀ n, P5539198153480292569.a n = A345082 (n + 1)

end A345082

/-! ## A345082.P16485389164805479230

`ceil(Δ[A209984(n)/32])`
-/

namespace A345082.P16485389164805479230
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A209984 n : ℚ) / 32

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈f1 (n + 1) - f1 n⌉

end

end A345082.P16485389164805479230

namespace A345082

/-- `ceil(Δ[A209984(n)/32])` -/
def P16485389164805479230.Spec : Prop :=
  ∀ n, P16485389164805479230.a n = A345082 (n + 1)

end A345082

/-! ## A345082.P7718738041622157306

`A062771(n+1)/gcd(2, n+1)`
-/

namespace A345082.P7718738041622157306
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A062771 (n + 1) : ℚ) / (Nat.gcd 2 (n + 1) : ℚ)

end

end A345082.P7718738041622157306

namespace A345082

/-- `A062771(n+1)/gcd(2, n+1)` -/
def P7718738041622157306.Spec : Prop :=
  ∀ n, P7718738041622157306.a n = (A345082 (n + 1) : ℚ)

end A345082

/-! ## A345082.P6334752638484094666

`∑{d}[n+1, #*A086831((n+1)/#)]`
-/

namespace A345082.P6334752638484094666
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * A086831 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A345082.P6334752638484094666

namespace A345082

/-- `∑{d}[n+1, #*A086831((n+1)/#)]` -/
def P6334752638484094666.Spec : Prop :=
  ∀ n, P6334752638484094666.a n = A345082 (n + 1)

end A345082

/-! ## A345082.P4647872727382615303

`A062771(n+1)/A000034(n)`
-/

namespace A345082.P4647872727382615303
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A062771 (n + 1) : ℚ) / (A000034 n : ℚ)

end

end A345082.P4647872727382615303

namespace A345082

/-- `A062771(n+1)/A000034(n)` -/
def P4647872727382615303.Spec : Prop :=
  ∀ n, P4647872727382615303.a n = (A345082 (n + 1) : ℚ)

end A345082

/-! ## A345082.P17685719525607889430

`A319998(n+1)+Δ[A002088(n)]`
-/

namespace A345082.P17685719525607889430
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002088 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319998 (n + 1) + (f1 (n + 1) - f1 n)

end

end A345082.P17685719525607889430

namespace A345082

/-- `A319998(n+1)+Δ[A002088(n)]` -/
def P17685719525607889430.Spec : Prop :=
  ∀ n, P17685719525607889430.a n = A345082 (n + 1)

end A345082

/-! ## A345082.P4714872683381977771

`A319998(n+1)+Δ[A005728(n)]`
-/

namespace A345082.P4714872683381977771
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005728 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319998 (n + 1) + (f1 (n + 1) - f1 n)

end

end A345082.P4714872683381977771

namespace A345082

/-- `A319998(n+1)+Δ[A005728(n)]` -/
def P4714872683381977771.Spec : Prop :=
  ∀ n, P4714872683381977771.a n = A345082 (n + 1)

end A345082

/-! ## A345082.P10237653417092990794

`A039649(n+1)+A319998(n+1)-1`
-/

namespace A345082.P10237653417092990794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039649 (n + 1) + (A319998 (n + 1) - 1)

end

end A345082.P10237653417092990794

namespace A345082

/-- `A039649(n+1)+A319998(n+1)-1` -/
def P10237653417092990794.Spec : Prop :=
  ∀ n, P10237653417092990794.a n = A345082 (n + 1)

end A345082

/-! ## A345082.P7702206961627311355

`A319997(n+1)+2*A319998(n+1)`
-/

namespace A345082.P7702206961627311355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319997 (n + 1) + 2 * A319998 (n + 1)

end

end A345082.P7702206961627311355

namespace A345082

/-- `A319997(n+1)+2*A319998(n+1)` -/
def P7702206961627311355.Spec : Prop :=
  ∀ n, P7702206961627311355.a n = A345082 (n + 1)

end A345082

/-! ## A345082.P8986013107154105922

`2*A126246(n+1)-A000010(n+1)`
-/

namespace A345082.P8986013107154105922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A126246 (n + 1) - A000010 (n + 1)

end

end A345082.P8986013107154105922

namespace A345082

/-- `2*A126246(n+1)-A000010(n+1)` -/
def P8986013107154105922.Spec : Prop :=
  ∀ n, P8986013107154105922.a n = A345082 (n + 1)

end A345082

/-! ## A345082.P15135922952312886449

`A126246(n+1)+A319998(n+1)/2`
-/

namespace A345082.P15135922952312886449
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A126246 (n + 1) : ℚ) + (A319998 (n + 1) : ℚ) / 2

end

end A345082.P15135922952312886449

namespace A345082

/-- `A126246(n+1)+A319998(n+1)/2` -/
def P15135922952312886449.Spec : Prop :=
  ∀ n, P15135922952312886449.a n = (A345082 (n + 1) : ℚ)

end A345082

/-! ## A345082.P11487159567791089856

`A000032(∑[1-and(2, n)])*A000010(n+1)`
-/

namespace A345082.P11487159567791089856
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (Nat.land 2 n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 (∑ j ∈ Finset.range (n + 1), f1 j).toNat * A000010 (n + 1)

end

end A345082.P11487159567791089856

namespace A345082

/-- `A000032(∑[1-and(2, n)])*A000010(n+1)` -/
def P11487159567791089856.Spec : Prop :=
  ∀ n, P11487159567791089856.a n = A345082 (n + 1)

end A345082

/-! ## A345082.P7841926701449047528

`A000005(gcd(n+3, 1-n))*A000010(n+1)`
-/

namespace A345082.P7841926701449047528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (Int.gcd (n + 3 : ℤ) (1 - (n : ℤ))) * A000010 (n + 1)

end

end A345082.P7841926701449047528

namespace A345082

/-- `A000005(gcd(n+3, 1-n))*A000010(n+1)` -/
def P7841926701449047528.Spec : Prop :=
  ∀ n, P7841926701449047528.a n = A345082 (n + 1)

end A345082

/-! ## A345082.P4044501845008511630

`∑{d}[n+1, A007427(#)*A215947((n+1)/#)]`
-/

namespace A345082.P4044501845008511630
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A007427 d * A215947 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A345082.P4044501845008511630

namespace A345082

/-- `∑{d}[n+1, A007427(#)*A215947((n+1)/#)]` -/
def P4044501845008511630.Spec : Prop :=
  ∀ n, P4044501845008511630.a n = A345082 (n + 1)

end A345082

/-! ## A345082.P2507268516589559139

`∑{d}[n+1, A046897(#)*A327274((n+1)/#)]`
-/

namespace A345082.P2507268516589559139
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A046897 d * A327274 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A345082.P2507268516589559139

namespace A345082

/-- `∑{d}[n+1, A046897(#)*A327274((n+1)/#)]` -/
def P2507268516589559139.Spec : Prop :=
  ∀ n, P2507268516589559139.a n = A345082 (n + 1)

end A345082

/-! ## A345082.P4228937341259782283

`∑{d}[n+1, A127802(#-1)*A326305((n+1)/#)]`
-/

namespace A345082.P4228937341259782283
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A127802 (d - 1) * A326305 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A345082.P4228937341259782283

namespace A345082

/-- `∑{d}[n+1, A127802(#-1)*A326305((n+1)/#)]` -/
def P4228937341259782283.Spec : Prop :=
  ∀ n, P4228937341259782283.a n = A345082 (n + 1)

end A345082

/-! ## A345082.P8485734490771221660

`A319997(n+1)+A022998(A319998(n+1))`
-/

namespace A345082.P8485734490771221660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319997 (n + 1) + A022998 (A319998 (n + 1)).toNat

end

end A345082.P8485734490771221660

namespace A345082

/-- `A319997(n+1)+A022998(A319998(n+1))` -/
def P8485734490771221660.Spec : Prop :=
  ∀ n, P8485734490771221660.a n = A345082 (n + 1)

end A345082

/-! ## A345082.P9070939938973789797

`A062570(n+1)-A000035(n)*A319997(n+1)`
-/

namespace A345082.P9070939938973789797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062570 (n + 1) - A000035 n * A319997 (n + 1)

end

end A345082.P9070939938973789797

namespace A345082

/-- `A062570(n+1)-A000035(n)*A319997(n+1)` -/
def P9070939938973789797.Spec : Prop :=
  ∀ n, P9070939938973789797.a n = A345082 (n + 1)

end A345082

/-! ## A345082.P8981697916676471793

`A000010(n+1)*A001511(A060648(n+1))`
-/

namespace A345082.P8981697916676471793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1) * A001511 (A060648 (n + 1)).toNat

end

end A345082.P8981697916676471793

namespace A345082

/-- `A000010(n+1)*A001511(A060648(n+1))` -/
def P8981697916676471793.Spec : Prop :=
  ∀ n, P8981697916676471793.a n = A345082 (n + 1)

end A345082

/-!
# A345083: Numbers that are the sum of three third powers in six or more ways.

The programs for A345083, there is no canonical definition to state claims against.
-/

/-! ## A345083.P322188281883315491

`∪[A345084(n+1), A345086(n+1)]`
-/

namespace A345083.P322188281883315491
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345084 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345086 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A345083.P322188281883315491

/-! ## A345083.P12848989284263683882

`A345084(record[A307089(n)])`
-/

namespace A345083.P12848989284263683882
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307089 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345084 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A345083.P12848989284263683882

/-!
# A345084: Numbers that are the sum of three third powers in exactly six ways.

The programs for A345084, there is no canonical definition to state claims against.
-/

/-! ## A345084.P5268245324963766090

`A345083(lt[A284583(n), A215732(n+1)])`
-/

namespace A345084.P5268245324963766090
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284583 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215732 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345083 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A345084.P5268245324963766090

/-! ## A345084.P16511036515545725151

`A345083(lt[A027750(n+1), A215732(n+1)])`
-/

namespace A345084.P16511036515545725151
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027750 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215732 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345083 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A345084.P16511036515545725151

/-! ## A345084.P3540790142584130410

`A345083(lt[A347270(n+1), A215732(n+1)])`
-/

namespace A345084.P3540790142584130410
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347270 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215732 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345083 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A345084.P3540790142584130410

/-! ## A345084.P13125544793639089608

`A345083(A018609(n+1)%A273934(n+1))`
-/

namespace A345084.P13125544793639089608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345083 (Int.tmod (A018609 (n + 1)) (A273934 (n + 1))).toNat

end

end A345084.P13125544793639089608

/-! ## A345084.P7069085279008145699

`A345083(gcd(A018609(n+1), A273931(n+1)))`
-/

namespace A345084.P7069085279008145699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345083 (Int.gcd (A018609 (n + 1)) (A273931 (n + 1)))

end

end A345084.P7069085279008145699

/-!
# A345085: Numbers that are the sum of three third powers in exactly seven ways.

The programs for A345085, there is no canonical definition to state claims against.
-/

/-! ## A345085.P5833851124129444853

`A345086(A330929(n+1)+A261915(n))`
-/

namespace A345085.P5833851124129444853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345086 (A330929 (n + 1) + A261915 n).toNat

end

end A345085.P5833851124129444853

/-!
# A345086: Numbers that are the sum of three third powers in seven or more ways.

The programs for A345086, there is no canonical definition to state claims against.
-/

/-! ## A345086.P15979546568858628046

`∪[A345085(n+1), A345087(n+1)]`
-/

namespace A345086.P15979546568858628046
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345085 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345087 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A345086.P15979546568858628046

/-! ## A345086.P753081997760850039

`∪[A345085(n+1), A345088(n+1)]%A344862(n+1)`
-/

namespace A345086.P753081997760850039
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345085 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345088 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n : ℤ) (A344862 (n + 1))

end

end A345086.P753081997760850039

/-! ## A345086.P12456714617666078410

`∪[A345085(A330929(n+1)), A345088(n+1)]`
-/

namespace A345086.P12456714617666078410
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345085 (A330929 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345088 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A345086.P12456714617666078410

/-!
# A345087: Numbers that are the sum of three third powers in eight or more ways.

The programs for A345087, there is no canonical definition to state claims against.
-/

/-! ## A345087.P7883985787895014389

`∪[A345088(n+1), A345119(n+1)]`
-/

namespace A345087.P7883985787895014389
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345088 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345119 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A345087.P7883985787895014389

/-! ## A345087.P15237367671134052682

`∪[A345088(n+1), A345120(n+1)]%A344862(n+1)`
-/

namespace A345087.P15237367671134052682
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345088 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345120 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n : ℤ) (A344862 (n + 1))

end

end A345087.P15237367671134052682

/-! ## A345087.P18076372340799683962

`A345088(A032555(n+1))`
-/

namespace A345087.P18076372340799683962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345088 (A032555 (n + 1)).toNat

end

end A345087.P18076372340799683962

/-! ## A345087.P4910641202659363539

`A345088(A032557(n+1))`
-/

namespace A345087.P4910641202659363539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345088 (A032557 (n + 1)).toNat

end

end A345087.P4910641202659363539

/-! ## A345087.P9355656015024374447

`A345088(A032559(n+1))`
-/

namespace A345087.P9355656015024374447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345088 (A032559 (n + 1)).toNat

end

end A345087.P9355656015024374447

/-!
# A345088: Numbers that are the sum of three third powers in exactly eight ways.

The programs for A345088, there is no canonical definition to state claims against.
-/

/-! ## A345088.P4968451336994019183

`A345087(lt[A239871(n), A355661(3*n+1)])`
-/

namespace A345088.P4968451336994019183
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239871 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355661 (3 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345087 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A345088.P4968451336994019183

/-! ## A345088.P10970391813577630451

`A345087(A217973(n+1)^A344879(n+4))`
-/

namespace A345088.P10970391813577630451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345087 (SequenceMachineLib.roundAway ((A217973 (n + 1) : ℚ) ^ (A344879 (n + 4) : ℤ))).toNat

end

end A345088.P10970391813577630451

/-!
# A345089: Averages of two consecutive odd-indexed odd primes.

The programs for A345089, the canonical program `A345089.P14459247808587654407` is in `Seq.B002.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A345089 has offset 1).

The definition of A345089 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A345089.P14459247808587654407

`A345071(n+2)/2`

The canonical program, it is in `Seq.B002.C007`.
-/

namespace A345089

/-- `A345071(n+2)/2` -/
def P14459247808587654407.Spec : Prop :=
  ∀ n, P14459247808587654407.a n = (A345089 (n + 1) : ℚ)

end A345089

/-! ## A345089.P11624773129530470584

`(A000040(2*(n+1)+1)+A000040(2*(n+1)+3))/2`
-/

namespace A345089.P11624773129530470584
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000040 (2 * (n + 1) + 1) + A000040 (2 * (n + 1) + 3) : ℚ) / 2

end

end A345089.P11624773129530470584

namespace A345089

/-- `(A000040(2*(n+1)+1)+A000040(2*(n+1)+3))/2` -/
def P11624773129530470584.Spec : Prop :=
  ∀ n, P11624773129530470584.a n = (A345089 (n + 1) : ℚ)

end A345089

/-! ## A345089.P5094163128112437941

`A065091(2*(n+1))+A052288(2*(n+1))`
-/

namespace A345089.P5094163128112437941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (2 * (n + 1)) + A052288 (2 * (n + 1))

end

end A345089.P5094163128112437941

namespace A345089

/-- `A065091(2*(n+1))+A052288(2*(n+1))` -/
def P5094163128112437941.Spec : Prop :=
  ∀ n, P5094163128112437941.a n = A345089 (n + 1)

end A345089

/-! ## A345089.P13154080662008661994

`A105760(2*(n+1))+A089192(2*(n+1))`
-/

namespace A345089.P13154080662008661994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105760 (2 * (n + 1)) + A089192 (2 * (n + 1))

end

end A345089.P13154080662008661994

namespace A345089

/-- `A105760(2*(n+1))+A089192(2*(n+1))` -/
def P13154080662008661994.Spec : Prop :=
  ∀ n, P13154080662008661994.a n = A345089 (n + 1)

end A345089

/-! ## A345089.P6463318040685411303

`A101448(2*n+1)+A097338(2*(n+1))`
-/

namespace A345089.P6463318040685411303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101448 (2 * n + 1) + A097338 (2 * (n + 1))

end

end A345089.P6463318040685411303

namespace A345089

/-- `A101448(2*n+1)+A097338(2*(n+1))` -/
def P6463318040685411303.Spec : Prop :=
  ∀ n, P6463318040685411303.a n = A345089 (n + 1)

end A345089

/-! ## A345089.P2656259796908683743

`A155722(2*n+1)+A097069(2*(n+1))`
-/

namespace A345089.P2656259796908683743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155722 (2 * n + 1) + A097069 (2 * (n + 1))

end

end A345089.P2656259796908683743

namespace A345089

/-- `A155722(2*n+1)+A097069(2*(n+1))` -/
def P2656259796908683743.Spec : Prop :=
  ∀ n, P2656259796908683743.a n = A345089 (n + 1)

end A345089

/-! ## A345089.P2212080636350343759

`A062839(2*(n+2))`
-/

namespace A345089.P2212080636350343759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062839 (2 * (n + 2))

end

end A345089.P2212080636350343759

namespace A345089

/-- `A062839(2*(n+2))` -/
def P2212080636350343759.Spec : Prop :=
  ∀ n, P2212080636350343759.a n = A345089 (n + 1)

end A345089

/-! ## A345089.P18280836658946256044

`A073273(2*n+3)+1`
-/

namespace A345089.P18280836658946256044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073273 (2 * n + 3) + 1

end

end A345089.P18280836658946256044

namespace A345089

/-- `A073273(2*n+3)+1` -/
def P18280836658946256044.Spec : Prop :=
  ∀ n, P18280836658946256044.a n = A345089 (n + 1)

end A345089

/-! ## A345089.P14355022124992988977

`A048448(2*(n+2))/2`
-/

namespace A345089.P14355022124992988977
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A048448 (2 * (n + 2)) : ℚ) / 2

end

end A345089.P14355022124992988977

namespace A345089

/-- `A048448(2*(n+2))/2` -/
def P14355022124992988977.Spec : Prop :=
  ∀ n, P14355022124992988977.a n = (A345089 (n + 1) : ℚ)

end A345089

/-! ## A345089.P6668921349136871840

`ceil(sqrt(A090076(2*n+3)))`
-/

namespace A345089.P6668921349136871840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (A090076 (2 * n + 3) : ℝ)⌉

end

end A345089.P6668921349136871840

namespace A345089

/-- `ceil(sqrt(A090076(2*n+3)))` -/
def P6668921349136871840.Spec : Prop :=
  ∀ n, P6668921349136871840.a n = A345089 (n + 1)

end A345089

/-! ## A345089.P13344989590000260076

`floor(sqrt(A090076(2*(n+1)+1)))+1`
-/

namespace A345089.P13344989590000260076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A090076 (2 * (n + 1) + 1)) + 1

end

end A345089.P13344989590000260076

namespace A345089

/-- `floor(sqrt(A090076(2*(n+1)+1)))+1` -/
def P13344989590000260076.Spec : Prop :=
  ∀ n, P13344989590000260076.a n = A345089 (n + 1)

end A345089

/-! ## A345089.P7164725513626031348

`A065091(2*(n+1))+Δ[A098090(2*(n+1))]`
-/

namespace A345089.P7164725513626031348
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098090 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (2 * (n + 1)) + (f1 (n + 1) - f1 n)

end

end A345089.P7164725513626031348

namespace A345089

/-- `A065091(2*(n+1))+Δ[A098090(2*(n+1))]` -/
def P7164725513626031348.Spec : Prop :=
  ∀ n, P7164725513626031348.a n = A345089 (n + 1)

end A345089

/-! ## A345089.P12673986903220383806

`A176099(2*n+5)/2`
-/

namespace A345089.P12673986903220383806
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A176099 (2 * n + 5) : ℚ) / 2

end

end A345089.P12673986903220383806

namespace A345089

/-- `A176099(2*n+5)/2` -/
def P12673986903220383806.Spec : Prop :=
  ∀ n, P12673986903220383806.a n = (A345089 (n + 1) : ℚ)

end A345089

/-! ## A345089.P6048434953107656050

`ceil(sqrt(A333747(4*n+6)))`
-/

namespace A345089.P6048434953107656050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (A333747 (4 * n + 6) : ℝ)⌉

end

end A345089.P6048434953107656050

namespace A345089

/-- `ceil(sqrt(A333747(4*n+6)))` -/
def P6048434953107656050.Spec : Prop :=
  ∀ n, P6048434953107656050.a n = A345089 (n + 1)

end A345089

/-! ## A345089.P7679510119853443544

`A033597(A031215(n+2))`
-/

namespace A345089.P7679510119853443544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033597 (A031215 (n + 2)).toNat

end

end A345089.P7679510119853443544

namespace A345089

/-- `A033597(A031215(n+2))` -/
def P7679510119853443544.Spec : Prop :=
  ∀ n, P7679510119853443544.a n = A345089 (n + 1)

end A345089

/-! ## A345089.P16763363872725223135

`A033597(A000040(2*(n+2)))`
-/

namespace A345089.P16763363872725223135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033597 (A000040 (2 * (n + 2))).toNat

end

end A345089.P16763363872725223135

namespace A345089

/-- `A033597(A000040(2*(n+2)))` -/
def P16763363872725223135.Spec : Prop :=
  ∀ n, P16763363872725223135.a n = A345089 (n + 1)

end A345089

/-! ## A345089.P2632513074597786339

`A033597(A151800(A151800(A024675(2*n+1))))`
-/

namespace A345089.P2632513074597786339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033597 (A151800 (A151800 (A024675 (2 * n + 1)).toNat).toNat).toNat

end

end A345089.P2632513074597786339

namespace A345089

/-- `A033597(A151800(A151800(A024675(2*n+1))))` -/
def P2632513074597786339.Spec : Prop :=
  ∀ n, P2632513074597786339.a n = A345089 (n + 1)

end A345089

/-! ## A345089.P8773924557577443200

`A076272(A001043(2*(n+1)))+A052288(2*(n+1))`
-/

namespace A345089.P8773924557577443200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076272 (A001043 (2 * (n + 1))).toNat + A052288 (2 * (n + 1))

end

end A345089.P8773924557577443200

namespace A345089

/-- `A076272(A001043(2*(n+1)))+A052288(2*(n+1))` -/
def P8773924557577443200.Spec : Prop :=
  ∀ n, P8773924557577443200.a n = A345089 (n + 1)

end A345089

/-! ## A345089.P8248203108998497386

`A001281(A345071(n+2))`
-/

namespace A345089.P8248203108998497386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A345071 (n + 2)).toNat

end

end A345089.P8248203108998497386

namespace A345089

/-- `A001281(A345071(n+2))` -/
def P8248203108998497386.Spec : Prop :=
  ∀ n, P8248203108998497386.a n = A345089 (n + 1)

end A345089

/-!
# A345090: a(n) = Sum_{k=1..n} k^floor(1/gcd(k,2*n-k)).

The programs for A345090, there is no canonical definition to state claims against.
-/

/-! ## A345090.P16471060305697385302

`2*A282601(2*(n+1))+n+1`
-/

namespace A345090.P16471060305697385302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A282601 (2 * (n + 1)) + (n + 1 : ℤ)

end

end A345090.P16471060305697385302

/-! ## A345090.P2535347995929079174

`A005843(A282601(2*(n+1)))+1+n`
-/

namespace A345090.P2535347995929079174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A282601 (2 * (n + 1))).toNat + 1 + (n : ℤ)

end

end A345090.P2535347995929079174

/-!
# A345091: a(n) = Sum_{k=1..n} k^floor(1/gcd(n,k)).

The programs for A345091, the canonical program `A345091.P9820535298903829219` is in `Seq.B004.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A345091 has offset 1).

The definition of A345091 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A345091.P2803702414669753537

`∑[n+2]-A349679(n+1)`
-/

namespace A345091.P2803702414669753537
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - A349679 (n + 1)

end

end A345091.P2803702414669753537

namespace A345091

/-- `∑[n+2]-A349679(n+1)` -/
def P2803702414669753537.Spec : Prop :=
  ∀ n, P2803702414669753537.a n = A345091 (n + 1)

end A345091

/-! ## A345091.P2863100950650809389

`(n-1)*floor(A000010(n+1)/2)+n+1`
-/

namespace A345091.P2863100950650809389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - 1) * ⌊(A000010 (n + 1) : ℚ) / 2⌋ + (n + 1 : ℤ)

end

end A345091.P2863100950650809389

namespace A345091

/-- `(n-1)*floor(A000010(n+1)/2)+n+1` -/
def P2863100950650809389.Spec : Prop :=
  ∀ n, P2863100950650809389.a n = A345091 (n + 1)

end A345091

/-! ## A345091.P14028729799678090032

`A051953(n+1)+A023896(n+1)`
-/

namespace A345091.P14028729799678090032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051953 (n + 1) + A023896 (n + 1)

end

end A345091.P14028729799678090032

namespace A345091

/-- `A051953(n+1)+A023896(n+1)` -/
def P14028729799678090032.Spec : Prop :=
  ∀ n, P14028729799678090032.a n = A345091 (n + 1)

end A345091

/-! ## A345091.P9820535298903829219

`A023896(n+1)+1-Δ[A002088(n)]+n`

The canonical program, it is in `Seq.B004.C003`.
-/

namespace A345091

/-- `A023896(n+1)+1-Δ[A002088(n)]+n` -/
def P9820535298903829219.Spec : Prop :=
  ∀ n, P9820535298903829219.a n = A345091 (n + 1)

theorem P9820535298903829219.correct : P9820535298903829219.Spec := by
  intro n
  simp only [A345091, Nat.add_sub_cancel]

end A345091

/-! ## A345091.P14727447212039740461

`(n-1)*A008619(A109606(n+1)+1)+2`
-/

namespace A345091.P14727447212039740461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - 1) * A008619 (A109606 (n + 1) + 1).toNat + 2

end

end A345091.P14727447212039740461

namespace A345091

/-- `(n-1)*A008619(A109606(n+1)+1)+2` -/
def P14727447212039740461.Spec : Prop :=
  ∀ n, P14727447212039740461.a n = A345091 (n + 1)

end A345091

/-! ## A345091.P16732536493942948997

`1-A000010(n+1)+A023896(n+1)+n`
-/

namespace A345091.P16732536493942948997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A000010 (n + 1) + (A023896 (n + 1) + (n : ℤ))

end

end A345091.P16732536493942948997

namespace A345091

/-- `1-A000010(n+1)+A023896(n+1)+n` -/
def P16732536493942948997.Spec : Prop :=
  ∀ n, P16732536493942948997.a n = A345091 (n + 1)

end A345091

/-! ## A345091.P14035948709043147234

`A023896(n+1)+A300824(n+1)+A300823(n+1)`
-/

namespace A345091.P14035948709043147234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023896 (n + 1) + (A300824 (n + 1) + A300823 (n + 1))

end

end A345091.P14035948709043147234

namespace A345091

/-- `A023896(n+1)+A300824(n+1)+A300823(n+1)` -/
def P14035948709043147234.Spec : Prop :=
  ∀ n, P14035948709043147234.a n = A345091 (n + 1)

end A345091

/-! ## A345091.P8485566478874244833

`A000217(n+1)+A051953(n+1)-A067392(n+1)`
-/

namespace A345091.P8485566478874244833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (n + 1) + (A051953 (n + 1) - A067392 (n + 1))

end

end A345091.P8485566478874244833

namespace A345091

/-- `A000217(n+1)+A051953(n+1)-A067392(n+1)` -/
def P8485566478874244833.Spec : Prop :=
  ∀ n, P8485566478874244833.a n = A345091 (n + 1)

end A345091

/-! ## A345091.P460392789029901962

`A023896(n+1)+A318325(n+1)-A318326(n+1)`
-/

namespace A345091.P460392789029901962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023896 (n + 1) + (A318325 (n + 1) - A318326 (n + 1))

end

end A345091.P460392789029901962

namespace A345091

/-- `A023896(n+1)+A318325(n+1)-A318326(n+1)` -/
def P460392789029901962.Spec : Prop :=
  ∀ n, P460392789029901962.a n = A345091 (n + 1)

end A345091

/-! ## A345091.P17584281731544813388

`A023896(n+1)+A318827(n+1)-A318830(n+1)`
-/

namespace A345091.P17584281731544813388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023896 (n + 1) + (A318827 (n + 1) - A318830 (n + 1))

end

end A345091.P17584281731544813388

namespace A345091

/-- `A023896(n+1)+A318827(n+1)-A318830(n+1)` -/
def P17584281731544813388.Spec : Prop :=
  ∀ n, P17584281731544813388.a n = A345091 (n + 1)

end A345091

/-! ## A345091.P269567935175849540

`A023896(n+1)+n+1-A054522(∑[n+1])`
-/

namespace A345091.P269567935175849540
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023896 (n + 1) + ((n + 1 : ℤ) - A054522 (∑ j ∈ Finset.range (n + 1), f1 j))

end

end A345091.P269567935175849540

namespace A345091

/-- `A023896(n+1)+n+1-A054522(∑[n+1])` -/
def P269567935175849540.Spec : Prop :=
  ∀ n, P269567935175849540.a n = A345091 (n + 1)

end A345091

/-! ## A345091.P17300452358164116312

`A051953(n+1)+A026741(A002618(n+1))`
-/

namespace A345091.P17300452358164116312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051953 (n + 1) + A026741 (A002618 (n + 1)).toNat

end

end A345091.P17300452358164116312

namespace A345091

/-- `A051953(n+1)+A026741(A002618(n+1))` -/
def P17300452358164116312.Spec : Prop :=
  ∀ n, P17300452358164116312.a n = A345091 (n + 1)

end A345091

/-! ## A345091.P4457584148068395803

`A051953(n+1)+A026741(A000010((n+1)²))`
-/

namespace A345091.P4457584148068395803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051953 (n + 1) + A026741 (A000010 ((n + 1) ^ 2)).toNat

end

end A345091.P4457584148068395803

namespace A345091

/-- `A051953(n+1)+A026741(A000010((n+1)²))` -/
def P4457584148068395803.Spec : Prop :=
  ∀ n, P4457584148068395803.a n = A345091 (n + 1)

end A345091

/-!
# A345092: a(n) = Sum_{d|n} n^(phi(n/d) - 1).

The programs for A345092, there is no canonical definition to state claims against.
-/

/-! ## A345092.P3582775761387644261

`A345893(n+1)/(n+1)`
-/

namespace A345092.P3582775761387644261
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A345893 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A345092.P3582775761387644261

/-! ## A345092.P2392197779660633485

`∑{d}[n+1, (n+1)^A109606(#)]`
-/

namespace A345092.P2392197779660633485
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (n + 1 : ℚ) ^ (A109606 d : ℤ)

end

end A345092.P2392197779660633485

/-! ## A345092.P13462540916217661664

`∑{d}[n+1, (n+1)^(A000010(#)-1)]`
-/

namespace A345092.P13462540916217661664
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (n + 1 : ℚ) ^ (A000010 d - 1 : ℤ)

end

end A345092.P13462540916217661664

/-! ## A345092.P11309700519105814195

`∑{d}[n+1, (n+1)^A000010(#)]/A000005(2^n)`
-/

namespace A345092.P11309700519105814195
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (∑ d ∈ Nat.divisors (f1 n), (n + 1 : ℚ) ^ (A000010 d : ℤ)) / (A000005 (2 ^ n) : ℚ)

end

end A345092.P11309700519105814195

/-! ## A345092.P17106546285152693242

`∑{d}[n+1, (n+1)^A000010(#)]/A002487(∑[2^n])`
-/

namespace A345092.P17106546285152693242
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (∑ d ∈ Nat.divisors (f1 n), (n + 1 : ℚ) ^ (A000010 d : ℤ)) / (A002487 (∑ j ∈ Finset.range (n + 1), f2 j) : ℚ)

end

end A345092.P17106546285152693242

/-!
# A345093: a(n) = Sum_{d^2|n} n^abs(mu(n-d)).

The programs for A345093, there is no canonical definition to state claims against.
-/

/-! ## A345093.P12903856768740003922

`A001222(A005009(n))+Δ[A105570(n)]`
-/

namespace A345093.P12903856768740003922
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105570 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A005009 n).toNat + (f1 (n + 1) - f1 n)

end

end A345093.P12903856768740003922

/-! ## A345093.P4950160710486269497

`A294519(A000096(n))+Δ[A105570(n)]`
-/

namespace A345093.P4950160710486269497
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105570 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294519 (A000096 n).toNat + (f1 (n + 1) - f1 n)

end

end A345093.P4950160710486269497

/-!
# A345094: a(n) = Sum_{k=1..n} floor(n/k)^(floor(n/k) - 1).

The programs for A345094, there is no canonical definition to state claims against.
-/

/-! ## A345094.P8697605998309552959

`A007918(A037205(n))-A261736(n)`
-/

namespace A345094.P8697605998309552959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007918 (A037205 n).toNat - A261736 n

end

end A345094.P8697605998309552959

/-! ## A345094.P9888265323828611916

`A007918(A055860(n))-A261736(n)`
-/

namespace A345094.P9888265323828611916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007918 (A055860 n).toNat - A261736 n

end

end A345094.P9888265323828611916

/-!
# A345096: a(n) = Sum_{k=1..n} Sum_{i=1..k} k^(1 - ceiling(n/k^i) + floor(n/k^i)).

The programs for A345096, there is no canonical definition to state claims against.
-/

/-! ## A345096.P6866629648749741319

`A052905(n)-A300718(A351870(n)+1)`
-/

namespace A345096.P6866629648749741319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052905 n - A300718 (A351870 n + 1).toNat

end

end A345096.P6866629648749741319

/-! ## A345096.P5735593981383849851

`A046691(n+1)-A006530(A131385(n+1))`
-/

namespace A345096.P5735593981383849851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046691 (n + 1) - A006530 (A131385 (n + 1)).toNat

end

end A345096.P5735593981383849851

/-! ## A345096.P12968027669864754728

`A046691(n+1)-A006530(A102381(n+1))`
-/

namespace A345096.P12968027669864754728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046691 (n + 1) - A006530 (A102381 (n + 1)).toNat

end

end A345096.P12968027669864754728

/-! ## A345096.P18143836907162683206

`A180409(A052905(n)-A300718(n+1))`
-/

namespace A345096.P18143836907162683206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180409 (A052905 n - A300718 (n + 1)).toNat

end

end A345096.P18143836907162683206

/-!
# A345098: a(n) = Sum_{k=1..n} floor(n/k)^floor(n/k).

The programs for A345098, there is no canonical definition to state claims against.
-/

/-! ## A345098.P15726268764096270855

`A065475(A342389(n+1)-n)`
-/

namespace A345098.P15726268764096270855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065475 (A342389 (n + 1) - (n : ℤ)).toNat

end

end A345098.P15726268764096270855

/-!
# A345099: Primes in A114381.

The programs for A345099, the canonical program `A345099.P13746055854138142594` is in `Seq.B004.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A345099 has offset 1).

The definition of A345099 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 128 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A345099.P13839661060821774766

`p?[A114381(n+1)%A128825(n+1)]`
-/

namespace A345099.P13839661060821774766
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A114381 (n + 1)) (A128825 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A345099.P13839661060821774766

namespace A345099

/-- `p?[A114381(n+1)%A128825(n+1)]` -/
def P13839661060821774766.Spec : Prop :=
  ∀ n, P13839661060821774766.a n = A345099 (n + 1)

end A345099

/-! ## A345099.P13746055854138142594

`p?[A114381(n+1)]`

The canonical program, it is in `Seq.B004.C003`.
-/

namespace A345099

/-- `p?[A114381(n+1)]` -/
def P13746055854138142594.Spec : Prop :=
  ∀ n, P13746055854138142594.a n = A345099 (n + 1)

theorem P13746055854138142594.correct : P13746055854138142594.Spec := by
  intro n
  simp only [A345099, Nat.add_sub_cancel]

end A345099

/-! ## A345099.P14880386585270124038

`p?[A006450(n+1)+Δ[A022094(n+1)]]`
-/

namespace A345099.P14880386585270124038
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022094 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006450 (n + 1) + (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A345099.P14880386585270124038

namespace A345099

/-- `p?[A006450(n+1)+Δ[A022094(n+1)]]` -/
def P14880386585270124038.Spec : Prop :=
  ∀ n, P14880386585270124038.a n = A345099 (n + 1)

end A345099

/-! ## A345099.P15379502691300345226

`p?[A007504(A000040(n+2))-A007504(A006093(n+1))]`
-/

namespace A345099.P15379502691300345226
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 (A000040 (n + 2)).toNat - A007504 (A006093 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A345099.P15379502691300345226

namespace A345099

/-- `p?[A007504(A000040(n+2))-A007504(A006093(n+1))]` -/
def P15379502691300345226.Spec : Prop :=
  ∀ n, P15379502691300345226.a n = A345099 (n + 1)

end A345099

/-! ## A345099.P10455276671795671685

`p?[A036439(A065091(n+1)+1)-A036439(A000040(n+1))]`
-/

namespace A345099.P10455276671795671685
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036439 (A065091 (n + 1) + 1).toNat - A036439 (A000040 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A345099.P10455276671795671685

namespace A345099

/-- `p?[A036439(A065091(n+1)+1)-A036439(A000040(n+1))]` -/
def P10455276671795671685.Spec : Prop :=
  ∀ n, P10455276671795671685.a n = A345099 (n + 1)

end A345099

/-! ## A345099.P18396398393435078024

`p?[A007504(A065091(n+1))-A007504(A000040(n+1)-1)]`
-/

namespace A345099.P18396398393435078024
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 (A065091 (n + 1)).toNat - A007504 (A000040 (n + 1) - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A345099.P18396398393435078024

namespace A345099

/-- `p?[A007504(A065091(n+1))-A007504(A000040(n+1)-1)]` -/
def P18396398393435078024.Spec : Prop :=
  ∀ n, P18396398393435078024.a n = A345099 (n + 1)

end A345099

/-! ## A345099.P2166401288073125739

`p?[A036439(A000040(n+2)+1)-A175965(A000040(n+1)+1)]`
-/

namespace A345099.P2166401288073125739
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036439 (A000040 (n + 2) + 1).toNat - A175965 (A000040 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A345099.P2166401288073125739

namespace A345099

/-- `p?[A036439(A000040(n+2)+1)-A175965(A000040(n+1)+1)]` -/
def P2166401288073125739.Spec : Prop :=
  ∀ n, P2166401288073125739.a n = A345099 (n + 1)

end A345099

