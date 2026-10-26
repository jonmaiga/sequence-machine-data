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
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C030
import Seq.B000.C037
import Seq.B000.C039
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C008
import Seq.B001.C009
import Seq.B001.C011
import Seq.B001.C012
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C005
import Seq.B002.C006
import Seq.B002.C007
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B003.C004
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C002
import Seq.B006.C001
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
import SequenceMachineLib.Triangle

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A366100: Expansion of (1/x) * Series_Reversion( x*(1+x-x^4)/(1+x)^4 ).

The programs for A366100, there is no canonical definition to state claims against.
-/

/-! ## A366100.P9803507322922877990

`A369159(n)+A083894(A023998(n))`
-/

namespace A366100.P9803507322922877990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369159 n + A083894 (A023998 n).toNat

end

end A366100.P9803507322922877990

/-! ## A366100.P4264010961879138195

`A369165(A369161(n))+A369159(n)`
-/

namespace A366100.P4264010961879138195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369165 (A369161 n).toNat + A369159 n

end

end A366100.P4264010961879138195

/-!
# A366104: G.f. ( Chi(sqrt(x))^4 + Chi(-sqrt(x))^4 )/2, where Chi(x) = Product_{k >= 0} 1 + x^(2*k+1) is the g.f. of A000700.

The programs for A366104, there is no canonical definition to state claims against.
-/

/-! ## A366104.P5968208357401907396

`record[A022599(n)]`
-/

namespace A366104.P5968208357401907396
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022599 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A366104.P5968208357401907396

/-! ## A366104.P14894385415365544648

`record[A112149(n)]`
-/

namespace A366104.P14894385415365544648
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112149 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A366104.P14894385415365544648

/-! ## A366104.P3236322801737899261

`A022599(2*n)`
-/

namespace A366104.P3236322801737899261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022599 (2 * n)

end

end A366104.P3236322801737899261

/-! ## A366104.P12132786888223357987

`A112160(2*n)`
-/

namespace A366104.P12132786888223357987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112160 (2 * n)

end

end A366104.P12132786888223357987

/-! ## A366104.P6931132073635827943

`A227033(4*n)`
-/

namespace A366104.P6931132073635827943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227033 (4 * n)

end

end A366104.P6931132073635827943

/-! ## A366104.P11054742664883753158

`A058493(6*n)`
-/

namespace A366104.P11054742664883753158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058493 (6 * n)

end

end A366104.P11054742664883753158

/-! ## A366104.P668276578861377209

`A112149(6*n)`
-/

namespace A366104.P668276578861377209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112149 (6 * n)

end

end A366104.P668276578861377209

/-!
# A366105: a(n) is the number of parts in the n-th partition of n when the partitions are listed in graded reverse lexicographic order (cf. A080577, as in Mathematica).

The programs for A366105, there is no canonical definition to state claims against.
-/

/-! ## A366105.P15639737649711875614

`or(char[A238229(n+1)], A308355(n+1))`
-/

namespace A366105.P15639737649711875614
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238229 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) (A308355 (n + 1))

end

end A366105.P15639737649711875614

/-! ## A366105.P6316075738967662992

`A049085(A026905(n+1)-n)`
-/

namespace A366105.P6316075738967662992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049085 (A026905 (n + 1) - (n : ℤ)).toNat

end

end A366105.P6316075738967662992

/-! ## A366105.P15300578476671375038

`A049085(A000070(n+1)-(n+1))`
-/

namespace A366105.P15300578476671375038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049085 (A000070 (n + 1) - (n + 1 : ℤ)).toNat

end

end A366105.P15300578476671375038

/-! ## A366105.P15859991215811879078

`A128628(A000070(n)+n)`
-/

namespace A366105.P15859991215811879078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128628 (A000070 n + (n : ℤ)).toNat

end

end A366105.P15859991215811879078

/-! ## A366105.P14192192092890370233

`A128628(A025065(2*n)+n)`
-/

namespace A366105.P14192192092890370233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128628 (A025065 (2 * n) + (n : ℤ)).toNat

end

end A366105.P14192192092890370233

/-!
# A366106: Primes that are the concatenation of three squares in base 10.

The programs for A366106, there is no canonical definition to state claims against.
-/

/-! ## A366106.P954332467290421950

`∩[A046030(n+1), A092628(n+1)]`
-/

namespace A366106.P954332467290421950
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046030 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092628 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A366106.P954332467290421950

/-! ## A366106.P1228294137880480257

`∩[A061246(n+1), A092628(n+1)]`
-/

namespace A366106.P1228294137880480257
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061246 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092628 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A366106.P1228294137880480257

/-! ## A366106.P11653939824444664730

`A061246(n+4)/A051064(A011782(n))`
-/

namespace A366106.P11653939824444664730
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A061246 (n + 4) : ℚ) / (A051064 (A011782 n).toNat : ℚ)

end

end A366106.P11653939824444664730

/-! ## A366106.P11546159955985706822

`A001221(A005420(n+2))*A061246(n+4)`
-/

namespace A366106.P11546159955985706822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A005420 (n + 2)).toNat * A061246 (n + 4)

end

end A366106.P11546159955985706822

/-! ## A366106.P10488204310243644717

`A061246(n+4)^A000219(A184964(n+1))`
-/

namespace A366106.P10488204310243644717
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A061246 (n + 4) : ℚ) ^ (A000219 (A184964 (n + 1)).toNat : ℤ)

end

end A366106.P10488204310243644717

/-!
# A366107: a(n) = Sum_{i=0..floor(q(n)/3)} binomial(n-3*(i+1), q(n)-3*i) with q(n) = ceiling((n-3)/2).

The programs for A366107, there is no canonical definition to state claims against.
-/

/-! ## A366107.P4884470363793963549

`A118923(A074148(n+1))`
-/

namespace A366107.P4884470363793963549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118923 (A074148 (n + 1)).toNat

end

end A366107.P4884470363793963549

/-! ## A366107.P9065321626650016180

`or(A092684(n), A143731(A120588(n)))`
-/

namespace A366107.P9065321626650016180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A092684 n) (A143731 (A120588 n).toNat)

end

end A366107.P9065321626650016180

/-! ## A366107.P12340438535104681547

`or(A092684(n), A277648(A003418(n)))`
-/

namespace A366107.P12340438535104681547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A092684 n) (A277648 (A003418 n).toNat)

end

end A366107.P12340438535104681547

/-! ## A366107.P5913054536910793548

`A337690(A202784(3*n))+A092684(n)`
-/

namespace A366107.P5913054536910793548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337690 (A202784 (3 * n)).toNat + A092684 n

end

end A366107.P5913054536910793548

/-! ## A366107.P8024804690261309023

`or(A004601(A060230(n+2)), A092684(n))`
-/

namespace A366107.P8024804690261309023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A004601 (A060230 (n + 2)).toNat) (A092684 n)

end

end A366107.P8024804690261309023

/-!
# A366108: a(n) = floor(binomial(n-1, floor((n-1)/2))/2).

The programs for A366108, the canonical program `A366108.P5540069339756683816` is in `Seq.B000.C039`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A366108 has offset 3).

The definition of A366108 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor(C(n+2, floor((n+2)/2))/2)` (program `A366108.P5540069339756683816`, by `A366108.P5540069339756683816.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A366108.P5540069339756683816

`floor(C(n+2, floor((n+2)/2))/2)`

The canonical program, it is in `Seq.B000.C039`.
-/

namespace A366108

/-- `floor(C(n+2, floor((n+2)/2))/2)` -/
def P5540069339756683816.Spec : Prop :=
  ∀ n, P5540069339756683816.a n = A366108 (n + 3)

theorem P5540069339756683816.correct : P5540069339756683816.Spec := by
  intro n
  simp only [A366108, Nat.add_sub_cancel]

end A366108

/-! ## A366108.P13156216161246593229

`2*A001405(n)-A028304(n)`
-/

namespace A366108.P13156216161246593229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A001405 n - A028304 n

end

end A366108.P13156216161246593229

namespace A366108

/-- `2*A001405(n)-A028304(n)` -/
def P13156216161246593229.Spec : Prop :=
  ∀ n, P13156216161246593229.a n = A366108 (n + 3)

end A366108

/-! ## A366108.P12014490878419307018

`floor(A001405(n+2)/2)`
-/

namespace A366108.P12014490878419307018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A001405 (n + 2) : ℚ) / 2⌋

end

end A366108.P12014490878419307018

namespace A366108

/-- `floor(A001405(n+2)/2)` -/
def P12014490878419307018.Spec : Prop :=
  ∀ n, P12014490878419307018.a n = A366108 (n + 3)

theorem P12014490878419307018.correct : P12014490878419307018.Spec := by
  intro n
  simp only [A366108, Nat.add_sub_cancel, A366108.P12014490878419307018.a, A366108.P5540069339756683816.a, A001405, A001405.P5205018418992951678.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A366108

/-! ## A366108.P6561842222822625386

`floor(A210736(n+3)/2)`
-/

namespace A366108.P6561842222822625386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A210736 (n + 3) : ℚ) / 2⌋

end

end A366108.P6561842222822625386

namespace A366108

/-- `floor(A210736(n+3)/2)` -/
def P6561842222822625386.Spec : Prop :=
  ∀ n, P6561842222822625386.a n = A366108 (n + 3)

end A366108

/-! ## A366108.P2677311688398018102

`floor(∑[A007007(n+1)]/2)+1`
-/

namespace A366108.P2677311688398018102
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007007 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / 2⌋ + 1

end

end A366108.P2677311688398018102

namespace A366108

/-- `floor(∑[A007007(n+1)]/2)+1` -/
def P2677311688398018102.Spec : Prop :=
  ∀ n, P2677311688398018102.a n = A366108 (n + 3)

end A366108

/-! ## A366108.P8352303444195296076

`A166454(A061925(n+1))`
-/

namespace A366108.P8352303444195296076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166454 (A061925 (n + 1)).toNat

end

end A366108.P8352303444195296076

namespace A366108

/-- `A166454(A061925(n+1))` -/
def P8352303444195296076.Spec : Prop :=
  ∀ n, P8352303444195296076.a n = A366108 (n + 3)

end A366108

/-! ## A366108.P14513514079800705477

`A166454(A333574(n+2))`
-/

namespace A366108.P14513514079800705477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166454 (A333574 (n + 2)).toNat

end

end A366108.P14513514079800705477

namespace A366108

/-- `A166454(A333574(n+2))` -/
def P14513514079800705477.Spec : Prop :=
  ∀ n, P14513514079800705477.a n = A366108 (n + 3)

end A366108

/-! ## A366108.P3744799852674510447

`A166454(A104563(n+1)+1)`
-/

namespace A366108.P3744799852674510447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166454 (A104563 (n + 1) + 1).toNat

end

end A366108.P3744799852674510447

namespace A366108

/-- `A166454(A104563(n+1)+1)` -/
def P3744799852674510447.Spec : Prop :=
  ∀ n, P3744799852674510447.a n = A366108 (n + 3)

end A366108

/-!
# A366109: a(n) = floor(n!*(3*floor(n/2)!*ceiling(n/2)! + 3*floor((n+2)/2)!*ceiling((n-2)/2)! - 6*floor(n/2)!*ceiling((n-2)/2)!)^(-1)).

The programs for A366109, there is no canonical definition to state claims against.
-/

/-! ## A366109.P12644924250797783366

`A372759(A001405(n))+A001405(n)`
-/

namespace A366109.P12644924250797783366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372759 (A001405 n).toNat + A001405 n

end

end A366109.P12644924250797783366

/-! ## A366109.P12530059120153852263

`or(A000005(A113229(n)), A005255(n))`
-/

namespace A366109.P12530059120153852263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000005 (A113229 n).toNat) (A005255 n)

end

end A366109.P12530059120153852263

/-! ## A366109.P11705895959546190448

`A003056(A148729(n)+A055226(n+1))`
-/

namespace A366109.P11705895959546190448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (A148729 n + A055226 (n + 1)).toNat

end

end A366109.P11705895959546190448

/-! ## A366109.P13442365779722498694

`A118760(A026643(n)-A353528(n+2))`
-/

namespace A366109.P13442365779722498694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118760 (A026643 n - A353528 (n + 2)).toNat

end

end A366109.P13442365779722498694

/-! ## A366109.P16657643411706279141

`A026643(n)-A216230(A007629(2*n+1))`
-/

namespace A366109.P16657643411706279141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026643 n - A216230 (A007629 (2 * n + 1)).toNat

end

end A366109.P16657643411706279141

/-!
# A366110: a(n) is the difference between the maximum and minimum number whose proper divisors sum to n, or 0 if there is no such number.

The programs for A366110, there is no canonical definition to state claims against.
-/

/-! ## A366110.P11514486560848282663

`A135244(n+2)-A070015(n+2)`
-/

namespace A366110.P11514486560848282663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135244 (n + 2) - A070015 (n + 2)

end

end A366110.P11514486560848282663

/-! ## A366110.P406059433521007800

`A135244(n+2)-A070016(n+1)`
-/

namespace A366110.P406059433521007800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135244 (n + 2) - A070016 (n + 1)

end

end A366110.P406059433521007800

/-!
# A366113: A fractal sequence. Pick any term t: exactly one of the t terms following t is larger than t.

The programs for A366113, there is no canonical definition to state claims against.
-/

/-! ## A366113.P3211936671649927504

`A065120(A257797(n+1))`
-/

namespace A366113.P3211936671649927504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065120 (A257797 (n + 1)).toNat

end

end A366113.P3211936671649927504

/-! ## A366113.P9669468210943061741

`A385892(A083047(n))`
-/

namespace A366113.P9669468210943061741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385892 (A083047 n).toNat

end

end A366113.P9669468210943061741

/-! ## A366113.P18105902859198244066

`A001511(A345254(n+1)%A092424(n+2))`
-/

namespace A366113.P18105902859198244066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001511 (Int.tmod (A345254 (n + 1)) (A092424 (n + 2))).toNat

end

end A366113.P18105902859198244066

/-! ## A366113.P12289479779703424576

`A374997(gcd(A000079(n), A081551(n+1)))`
-/

namespace A366113.P12289479779703424576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374997 (Int.gcd (A000079 n) (A081551 (n + 1)))

end

end A366113.P12289479779703424576

/-! ## A366113.P3976318336928961821

`A001511(A077800(n+1)*A345254(n+1))`
-/

namespace A366113.P3976318336928961821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001511 (A077800 (n + 1) * A345254 (n + 1)).toNat

end

end A366113.P3976318336928961821

/-!
# A366115: Expansion of (1/x) * Series_Reversion( x*(1+x+x^2)/(1+x)^5 ).

The programs for A366115, there is no canonical definition to state claims against.
-/

/-! ## A366115.P9969595820177462231

`A370545(A090872(n)+n)`
-/

namespace A366115.P9969595820177462231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370545 (A090872 n + (n : ℤ)).toNat

end

end A366115.P9969595820177462231

/-!
# A366118: Expansion of (1/x) * Series_Reversion( x*(1+x+x^3)/(1+x)^4 ).

The programs for A366118, there is no canonical definition to state claims against.
-/

/-! ## A366118.P15951863528528344802

`A362597(n+1)-A014376(A051026(n+1))`
-/

namespace A366118.P15951863528528344802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362597 (n + 1) - A014376 (A051026 (n + 1)).toNat

end

end A366118.P15951863528528344802

/-! ## A366118.P1012830571872809836

`A054666(n+1)-A088722(A290445(n+1))`
-/

namespace A366118.P1012830571872809836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054666 (n + 1) - A088722 (A290445 (n + 1)).toNat

end

end A366118.P1012830571872809836

/-!
# A366119: Expansion of (1/x) * Series_Reversion( x*(1+x+x^3)/(1+x)^5 ).

The programs for A366119, there is no canonical definition to state claims against.
-/

/-! ## A366119.P6908435476005678587

`Δ[A005346(n+1)-A139250(n)]`
-/

namespace A366119.P6908435476005678587
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005346 (n + 1) - A139250 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A366119.P6908435476005678587

/-!
# A366123: The number of prime factors of the cube root of the largest cube dividing n, counted with multiplicity.

The programs for A366123, the canonical program `A366123.P2071442233333240034` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A366123 has offset 1).

The definition of A366123 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001222, A053150, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A366123.P2071442233333240034

`A001222(A053150(n+1))`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A366123

/-- `A001222(A053150(n+1))` -/
def P2071442233333240034.Spec : Prop :=
  ∀ n, P2071442233333240034.a n = A366123 (n + 1)

theorem P2071442233333240034.correct : P2071442233333240034.Spec := by
  intro n
  simp only [A366123, Nat.add_sub_cancel]

end A366123

/-! ## A366123.P14540294024627815576

`A001222(A008834(n+1))/3`
-/

namespace A366123.P14540294024627815576
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001222 (A008834 (n + 1)).toNat : ℚ) / 3

end

end A366123.P14540294024627815576

namespace A366123

/-- `A001222(A008834(n+1))/3` -/
def P14540294024627815576.Spec : Prop :=
  ∀ n, P14540294024627815576.a n = (A366123 (n + 1) : ℚ)

end A366123

/-! ## A366123.P8488094421894864011

`∑{e}[n+1, floor(#/3)]`
-/

namespace A366123.P8488094421894864011
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), ⌊(Nat.factorization (f1 n) p : ℚ) / 3⌋

end

end A366123.P8488094421894864011

namespace A366123

/-- `∑{e}[n+1, floor(#/3)]` -/
def P8488094421894864011.Spec : Prop :=
  ∀ n, P8488094421894864011.a n = A366123 (n + 1)

end A366123

/-! ## A366123.P12957801774135017756

`∑{p}[∑[n], val(n+1, #^3)]`
-/

namespace A366123.P12957801774135017756
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), SequenceMachineLib.valuation (n + 1) (p ^ 3)

end

end A366123.P12957801774135017756

namespace A366123

/-- `∑{p}[∑[n], val(n+1, #^3)]` -/
def P12957801774135017756.Spec : Prop :=
  ∀ n, (P12957801774135017756.a n : ℤ) = A366123 (n + 1)

end A366123

/-! ## A366123.P17656727222812284874

`A001222(A256689(n+1))-A001222(n+1)`
-/

namespace A366123.P17656727222812284874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A256689 (n + 1)).toNat - A001222 (n + 1)

end

end A366123.P17656727222812284874

namespace A366123

/-- `A001222(A256689(n+1))-A001222(n+1)` -/
def P17656727222812284874.Spec : Prop :=
  ∀ n, P17656727222812284874.a n = A366123 (n + 1)

end A366123

/-! ## A366123.P2779097209472132336

`A007949(∏{e}[n+1, #!])`
-/

namespace A366123.P2779097209472132336
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007949 (∏ p ∈ Nat.primeFactors (f1 n), Nat.factorial (Nat.factorization (f1 n) p))

end

end A366123.P2779097209472132336

namespace A366123

/-- `A007949(∏{e}[n+1, #!])` -/
def P2779097209472132336.Spec : Prop :=
  ∀ n, P2779097209472132336.a n = A366123 (n + 1)

end A366123

/-!
# A366124: The number of distinct prime factors of the largest unitary divisor of n that is a cube (A366126).

The programs for A366124, the canonical program `A366124.P4971256452977429991` is in `Seq.B000.C039`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A366124 has offset 1).

The definition of A366124 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A366124.P1422585924981816872

`A001221(A366126(n+1))`
-/

namespace A366124.P1422585924981816872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A366126 (n + 1)).toNat

end

end A366124.P1422585924981816872

namespace A366124

/-- `A001221(A366126(n+1))` -/
def P1422585924981816872.Spec : Prop :=
  ∀ n, P1422585924981816872.a n = A366124 (n + 1)

end A366124

/-! ## A366124.P4971256452977429991

`∑{e}[n+1, 1-#²%3]`

The canonical program, it is in `Seq.B000.C039`.
-/

namespace A366124

/-- `∑{e}[n+1, 1-#²%3]` -/
def P4971256452977429991.Spec : Prop :=
  ∀ n, P4971256452977429991.a n = A366124 (n + 1)

theorem P4971256452977429991.correct : P4971256452977429991.Spec := by
  intro n
  simp only [A366124, Nat.add_sub_cancel]

end A366124

/-! ## A366124.P10899959734659687631

`log2(A380395(n+1))`
-/

namespace A366124.P10899959734659687631
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A380395 (n + 1) : ℝ)

end

end A366124.P10899959734659687631

namespace A366124

/-- `log2(A380395(n+1))` -/
def P10899959734659687631.Spec : Prop :=
  ∀ n, P10899959734659687631.a n = (A366124 (n + 1) : ℝ)

end A366124

/-! ## A366124.P16094855210065259270

`A293439(A270419(n+1))`
-/

namespace A366124.P16094855210065259270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293439 (A270419 (n + 1)).toNat

end

end A366124.P16094855210065259270

namespace A366124

/-- `A293439(A270419(n+1))` -/
def P16094855210065259270.Spec : Prop :=
  ∀ n, P16094855210065259270.a n = A366124 (n + 1)

end A366124

/-! ## A366124.P1522980040529074391

`∑{e}[A003961(n+1), A079978(#)]`
-/

namespace A366124.P1522980040529074391
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003961 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A079978 (Nat.factorization (f1 n).natAbs p)

end

end A366124.P1522980040529074391

namespace A366124

/-- `∑{e}[A003961(n+1), A079978(#)]` -/
def P1522980040529074391.Spec : Prop :=
  ∀ n, P1522980040529074391.a n = A366124 (n + 1)

end A366124

/-! ## A366124.P7800948453660490357

`A000244(n)%A307427(n+1)`
-/

namespace A366124.P7800948453660490357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000244 n) (A307427 (n + 1))

end

end A366124.P7800948453660490357

namespace A366124

/-- `A000244(n)%A307427(n+1)` -/
def P7800948453660490357.Spec : Prop :=
  ∀ n, P7800948453660490357.a n = A366124 (n + 1)

end A366124

/-! ## A366124.P153927661616486204

`A001047(n)%A307427(n+1)`
-/

namespace A366124.P153927661616486204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001047 n) (A307427 (n + 1))

end

end A366124.P153927661616486204

namespace A366124

/-- `A001047(n)%A307427(n+1)` -/
def P153927661616486204.Spec : Prop :=
  ∀ n, P153927661616486204.a n = A366124 (n + 1)

end A366124

/-! ## A366124.P7799639818712278645

`A004054(n)%A307427(n+1)`
-/

namespace A366124.P7799639818712278645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A004054 n) (A307427 (n + 1))

end

end A366124.P7799639818712278645

namespace A366124

/-- `A004054(n)%A307427(n+1)` -/
def P7799639818712278645.Spec : Prop :=
  ∀ n, P7799639818712278645.a n = A366124 (n + 1)

end A366124

/-! ## A366124.P16411797662644071451

`A096019(n)%A307427(n+1)`
-/

namespace A366124.P16411797662644071451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A096019 n) (A307427 (n + 1))

end

end A366124.P16411797662644071451

namespace A366124

/-- `A096019(n)%A307427(n+1)` -/
def P16411797662644071451.Spec : Prop :=
  ∀ n, P16411797662644071451.a n = A366124 (n + 1)

end A366124

/-! ## A366124.P17338721491185809623

`A100305(n)%A307427(n+1)`
-/

namespace A366124.P17338721491185809623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A100305 n) (A307427 (n + 1))

end

end A366124.P17338721491185809623

namespace A366124

/-- `A100305(n)%A307427(n+1)` -/
def P17338721491185809623.Spec : Prop :=
  ∀ n, P17338721491185809623.a n = A366124 (n + 1)

end A366124

/-! ## A366124.P8674230102013130607

`A054387(n)%A307427(n+1)`
-/

namespace A366124.P8674230102013130607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A054387 n) (A307427 (n + 1))

end

end A366124.P8674230102013130607

namespace A366124

/-- `A054387(n)%A307427(n+1)` -/
def P8674230102013130607.Spec : Prop :=
  ∀ n, P8674230102013130607.a n = A366124 (n + 1)

end A366124

/-! ## A366124.P7631695276264188011

`A159638(A270419((n+1)²))`
-/

namespace A366124.P7631695276264188011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159638 (A270419 ((n + 1) ^ 2)).toNat

end

end A366124.P7631695276264188011

namespace A366124

/-- `A159638(A270419((n+1)²))` -/
def P7631695276264188011.Spec : Prop :=
  ∀ n, P7631695276264188011.a n = A366124 (n + 1)

end A366124

/-! ## A366124.P10669435145789124513

`A088357(n)%A307427(n+1)`
-/

namespace A366124.P10669435145789124513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A088357 n) (A307427 (n + 1))

end

end A366124.P10669435145789124513

namespace A366124

/-- `A088357(n)%A307427(n+1)` -/
def P10669435145789124513.Spec : Prop :=
  ∀ n, P10669435145789124513.a n = A366124 (n + 1)

end A366124

/-! ## A366124.P7354310341189303902

`A067029(A380396((n+1)²))`
-/

namespace A366124.P7354310341189303902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067029 (A380396 ((n + 1) ^ 2)).toNat

end

end A366124.P7354310341189303902

namespace A366124

/-- `A067029(A380396((n+1)²))` -/
def P7354310341189303902.Spec : Prop :=
  ∀ n, P7354310341189303902.a n = A366124 (n + 1)

end A366124

/-! ## A366124.P15357911379531792568

`A162641(A366126((n+1)²))`
-/

namespace A366124.P15357911379531792568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162641 (A366126 ((n + 1) ^ 2)).toNat

end

end A366124.P15357911379531792568

namespace A366124

/-- `A162641(A366126((n+1)²))` -/
def P15357911379531792568.Spec : Prop :=
  ∀ n, P15357911379531792568.a n = A366124 (n + 1)

end A366124

/-! ## A366124.P3999008275298026833

`A148066(n)%A307427(n+1)`
-/

namespace A366124.P3999008275298026833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A148066 n) (A307427 (n + 1))

end

end A366124.P3999008275298026833

namespace A366124

/-- `A148066(n)%A307427(n+1)` -/
def P3999008275298026833.Spec : Prop :=
  ∀ n, P3999008275298026833.a n = A366124 (n + 1)

end A366124

/-!
# A366125: The number of prime factors of the cube root of the largest unitary divisor of n that is a cube (A366126), counted with multiplicity.

The programs for A366125, the canonical program `A366125.P4631598459402495062` is in `Seq.B001.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A366125 has offset 1).

The definition of A366125 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A366125.P18071064792397758809

`A001222(A366126(n+1))/3`
-/

namespace A366125.P18071064792397758809
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001222 (A366126 (n + 1)).toNat : ℚ) / 3

end

end A366125.P18071064792397758809

namespace A366125

/-- `A001222(A366126(n+1))/3` -/
def P18071064792397758809.Spec : Prop :=
  ∀ n, P18071064792397758809.a n = (A366125 (n + 1) : ℚ)

end A366125

/-! ## A366125.P4631598459402495062

`∑{e}[n+1, A175676(#)]`

The canonical program, it is in `Seq.B001.C012`.
-/

namespace A366125

/-- `∑{e}[n+1, A175676(#)]` -/
def P4631598459402495062.Spec : Prop :=
  ∀ n, P4631598459402495062.a n = A366125 (n + 1)

theorem P4631598459402495062.correct : P4631598459402495062.Spec := by
  intro n
  simp only [A366125, Nat.add_sub_cancel]

end A366125

/-! ## A366125.P9567764725806946139

`A366123(A366126(n+1))`
-/

namespace A366125.P9567764725806946139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366123 (A366126 (n + 1)).toNat

end

end A366125.P9567764725806946139

namespace A366125

/-- `A366123(A366126(n+1))` -/
def P9567764725806946139.Spec : Prop :=
  ∀ n, P9567764725806946139.a n = A366125 (n + 1)

end A366125

/-! ## A366125.P59178082275970123

`∑{e}[A003557((n+1)²/∏{p}[n+1, #]), A341353(#)]`
-/

namespace A366125.P59178082275970123
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003557 (SequenceMachineLib.roundAway (((n + 1) ^ 2 : ℚ) / ((∏ p ∈ Nat.primeFactors (f2 n), p : ℕ) : ℚ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A341353 (Nat.factorization (f1 n).natAbs p)

end

end A366125.P59178082275970123

namespace A366125

/-- `∑{e}[A003557((n+1)²/∏{p}[n+1, #]), A341353(#)]` -/
def P59178082275970123.Spec : Prop :=
  ∀ n, P59178082275970123.a n = A366125 (n + 1)

end A366125

/-! ## A366125.P11368686457107311196

`val(∑{d}[A195851(A000688(n+1)²), #], 4)`
-/

namespace A366125.P11368686457107311196
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195851 (A000688 (n + 1) ^ 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (∑ d ∈ Nat.divisors (f1 n).natAbs, d) 4

end

end A366125.P11368686457107311196

namespace A366125

/-- `val(∑{d}[A195851(A000688(n+1)²), #], 4)` -/
def P11368686457107311196.Spec : Prop :=
  ∀ n, (P11368686457107311196.a n : ℤ) = A366125 (n + 1)

end A366125

/-! ## A366125.P14309722050331507236

`A292592(A051903(n+1))^A007318(3*n+1)`
-/

namespace A366125.P14309722050331507236
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A292592 (A051903 (n + 1)).toNat : ℚ) ^ (A007318 (3 * n + 1) : ℤ)

end

end A366125.P14309722050331507236

namespace A366125

/-- `A292592(A051903(n+1))^A007318(3*n+1)` -/
def P14309722050331507236.Spec : Prop :=
  ∀ n, P14309722050331507236.a n = (A366125 (n + 1) : ℚ)

end A366125

/-! ## A366125.P17706600009410991043

`A000120(A318673(n+1)^A003415(3*n+4))`
-/

namespace A366125.P17706600009410991043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (SequenceMachineLib.roundAway ((A318673 (n + 1) : ℚ) ^ (A003415 (3 * n + 4) : ℤ))).toNat

end

end A366125.P17706600009410991043

namespace A366125

/-- `A000120(A318673(n+1)^A003415(3*n+4))` -/
def P17706600009410991043.Spec : Prop :=
  ∀ n, P17706600009410991043.a n = A366125 (n + 1)

end A366125

/-! ## A366125.P4491200025762941918

`A292592(A051903(n+1)%A292570(n+1))`
-/

namespace A366125.P4491200025762941918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292592 (Int.tmod (A051903 (n + 1)) (A292570 (n + 1))).toNat

end

end A366125.P4491200025762941918

namespace A366125

/-- `A292592(A051903(n+1)%A292570(n+1))` -/
def P4491200025762941918.Spec : Prop :=
  ∀ n, P4491200025762941918.a n = A366125 (n + 1)

end A366125

/-! ## A366125.P7722911474597659312

`A015958(n+4)%A272121(∏{e}[n+1, #])`
-/

namespace A366125.P7722911474597659312
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A015958 (n + 4)) (A272121 (∏ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p))

end

end A366125.P7722911474597659312

namespace A366125

/-- `A015958(n+4)%A272121(∏{e}[n+1, #])` -/
def P7722911474597659312.Spec : Prop :=
  ∀ n, P7722911474597659312.a n = A366125 (n + 1)

end A366125

/-! ## A366125.P17695882236423844923

`A363329(n+1)-A325989(n+1)`
-/

namespace A366125.P17695882236423844923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363329 (n + 1) - A325989 (n + 1)

end

end A366125.P17695882236423844923

namespace A366125

/-- `A363329(n+1)-A325989(n+1)` -/
def P17695882236423844923.Spec : Prop :=
  ∀ n, P17695882236423844923.a n = A366125 (n + 1)

end A366125

/-!
# A366126: The largest unitary divisor of n that is a cube.

The programs for A366126, there is no canonical definition to state claims against.
-/

/-! ## A366126.P4650143550128087129

`A048762(A380396(n+1))`
-/

namespace A366126.P4650143550128087129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048762 (A380396 (n + 1)).toNat

end

end A366126.P4650143550128087129

/-! ## A366126.P14106605531147184621

`A270418(A270419(n+1))^3`
-/

namespace A366126.P14106605531147184621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270418 (A270419 (n + 1)).toNat ^ 3

end

end A366126.P14106605531147184621

/-! ## A366126.P7173434280512979419

`A367513(A056623(n+1)*A350389(n+1))`
-/

namespace A366126.P7173434280512979419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367513 (A056623 (n + 1) * A350389 (n + 1)).toNat

end

end A366126.P7173434280512979419

/-! ## A366126.P16495889707671751321

`A367513(A056623(n+1)*A368167(n+1))`
-/

namespace A366126.P16495889707671751321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367513 (A056623 (n + 1) * A368167 (n + 1)).toNat

end

end A366126.P16495889707671751321

/-! ## A366126.P12219436745822385029

`A367513((n+1)/A055229(n+1)^3*A368167(n+1))`
-/

namespace A366126.P12219436745822385029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367513 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A055229 (n + 1) ^ 3 : ℚ) * (A368167 (n + 1) : ℚ))).toNat

end

end A366126.P12219436745822385029

/-! ## A366126.P14556856669326572840

`A270419(A270419(n+1)*A356194(n+1))`
-/

namespace A366126.P14556856669326572840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270419 (A270419 (n + 1) * A356194 (n + 1)).toNat

end

end A366126.P14556856669326572840

/-! ## A366126.P3638571115321907807

`A270419((n+1)*A270419((n+1)²))`
-/

namespace A366126.P3638571115321907807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270419 ((n + 1 : ℤ) * A270419 ((n + 1) ^ 2)).toNat

end

end A366126.P3638571115321907807

/-! ## A366126.P2459619804336656599

`A270419((n+1)²/A270419(n+1))`
-/

namespace A366126.P2459619804336656599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270419 (SequenceMachineLib.roundAway (((n + 1) ^ 2 : ℚ) / (A270419 (n + 1) : ℚ))).toNat

end

end A366126.P2459619804336656599

/-! ## A366126.P1794291248987417580

`A367513((n+1)/A055229(n+1)^3*A350389(n+1))`
-/

namespace A366126.P1794291248987417580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367513 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A055229 (n + 1) ^ 3 : ℚ) * (A350389 (n + 1) : ℚ))).toNat

end

end A366126.P1794291248987417580

/-! ## A366126.P15755399007581826999

`A367513(A367513(n+1)%A196034(n+1))`
-/

namespace A366126.P15755399007581826999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367513 (Int.tmod (A367513 (n + 1)) (A196034 (n + 1))).toNat

end

end A366126.P15755399007581826999

/-!
# A366127: Number of finite incomplete multisets of positive integers with greatest non-subset-sum n.

The programs for A366127, there is no canonical definition to state claims against.
-/

/-! ## A366127.P9054744408094536268

`∑[A344608(n+3)]-A237821(n+1)`
-/

namespace A366127.P9054744408094536268
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344608 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A237821 (n + 1)

end

end A366127.P9054744408094536268

/-! ## A366127.P1835059740282249681

`A303140(n+1)+∑[A182270(2*(n+2))]`
-/

namespace A366127.P1835059740282249681
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182270 (2 * (n + 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303140 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A366127.P1835059740282249681

/-! ## A366127.P1814224501909821478

`A003056(A062860(n)*A093848(n+1))`
-/

namespace A366127.P1814224501909821478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (A062860 n * A093848 (n + 1)).toNat

end

end A366127.P1814224501909821478

/-! ## A366127.P13073213958902595863

`A003056(Δ[A056133(n+2)]*A062860(n))`
-/

namespace A366127.P13073213958902595863
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056133 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 ((f1 (n + 1) - f1 n) * A062860 n).toNat

end

end A366127.P13073213958902595863

/-! ## A366127.P1422642920804367498

`A344742(∑[2^floor(n/2)])`
-/

namespace A366127.P1422642920804367498
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (⌊(n : ℚ) / 2⌋ : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344742 (SequenceMachineLib.roundAway (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A366127.P1422642920804367498

/-!
# A366128: Least non-subset-sum of the multiset of prime indices of n.

The programs for A366128, there is no canonical definition to state claims against.
-/

/-! ## A366128.P5255856680239830829

`A221530(A027642(n+1))%A023900(n+1)`
-/

namespace A366128.P5255856680239830829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A221530 (A027642 (n + 1)).toNat) (A023900 (n + 1))

end

end A366128.P5255856680239830829

/-! ## A366128.P11243329111555194152

`and(and(1, n)+1, A191754(n))`
-/

namespace A366128.P11243329111555194152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (Nat.land 1 n + 1 : ℤ) (A191754 n)

end

end A366128.P11243329111555194152

/-! ## A366128.P7410332184551101338

`and(A000034(n), A191754(n))`
-/

namespace A366128.P7410332184551101338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A000034 n) (A191754 n)

end

end A366128.P7410332184551101338

/-! ## A366128.P17239035204106359259

`and(A093324(n), A219175(n+1))`
-/

namespace A366128.P17239035204106359259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A093324 n) (A219175 (n + 1))

end

end A366128.P17239035204106359259

/-! ## A366128.P4165693039264424125

`A219175(n+1)%A096485(n+2)`
-/

namespace A366128.P4165693039264424125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A219175 (n + 1)) (A096485 (n + 2))

end

end A366128.P4165693039264424125

/-!
# A366130: Number of subsets of {1..n} with a subset summing to n + 1.

The programs for A366130, there is no canonical definition to state claims against.
-/

/-! ## A366130.P12786880787173164671

`2^n-A365377(n+1)`
-/

namespace A366130.P12786880787173164671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) - A365377 (n + 1)

end

end A366130.P12786880787173164671

/-! ## A366130.P13190444523740287191

`A365376(n+1)-2^n`
-/

namespace A366130.P13190444523740287191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365376 (n + 1) - (2 ^ n : ℤ)

end

end A366130.P13190444523740287191

/-! ## A366130.P2231198956411405125

`A365376(n+1)%A000079(n)`
-/

namespace A366130.P2231198956411405125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A365376 (n + 1)) (A000079 n)

end

end A366130.P2231198956411405125

/-! ## A366130.P2449636505112499177

`and(A000225(n), A365376(n+1))`
-/

namespace A366130.P2449636505112499177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A000225 n) (A365376 (n + 1))

end

end A366130.P2449636505112499177

/-! ## A366130.P11542642666038244785

`xor(∑[A011782(n)], A365376(n+1))`
-/

namespace A366130.P11542642666038244785
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (∑ j ∈ Finset.range (n + 1), f1 j) (A365376 (n + 1))

end

end A366130.P11542642666038244785

/-!
# A366131: Number of subsets of {1..n} with two elements (possibly the same) summing to n.

The programs for A366131, the canonical program `A366131.P5120260200907403236` is in `Seq.B000.C039`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A366131 has offset 0).

The definition of A366131 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A366131.P5120260200907403236

`2*a(n-1)+3*a(n-2)-6*a(n-3)` with `a(0)=0, a(1)=0, a(2)=2, a(3)=2`

The canonical program, it is in `Seq.B000.C039`.
-/

namespace A366131

/-- `2*a(n-1)+3*a(n-2)-6*a(n-3)` -/
def P5120260200907403236.Spec : Prop :=
  ∀ n, P5120260200907403236.a n = A366131 n

theorem P5120260200907403236.correct : P5120260200907403236.Spec := by
  intro n
  simp only [A366131]

end A366131

/-! ## A366131.P15446958726271977803

`A000079(n)-Δ[A068911(n)]`
-/

namespace A366131.P15446958726271977803
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068911 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n - (f1 (n + 1) - f1 n)

end

end A366131.P15446958726271977803

namespace A366131

/-- `A000079(n)-Δ[A068911(n)]` -/
def P15446958726271977803.Spec : Prop :=
  ∀ n, P15446958726271977803.a n = A366131 n

end A366131

/-! ## A366131.P11003939331935376089

`A167762(n)+A167762(n)-A365544(n)`
-/

namespace A366131.P11003939331935376089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167762 n + (A167762 n - A365544 n)

end

end A366131.P11003939331935376089

namespace A366131

/-- `A167762(n)+A167762(n)-A365544(n)` -/
def P11003939331935376089.Spec : Prop :=
  ∀ n, P11003939331935376089.a n = A366131 n

end A366131

/-! ## A366131.P13313802831717509000

`A000079(n)+A068911(n)-A068911(n+1)`
-/

namespace A366131.P13313802831717509000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n + (A068911 n - A068911 (n + 1))

end

end A366131.P13313802831717509000

namespace A366131

/-- `A000079(n)+A068911(n)-A068911(n+1)` -/
def P13313802831717509000.Spec : Prop :=
  ∀ n, P13313802831717509000.a n = A366131 n

end A366131

/-! ## A366131.P488916696963909859

`ogf((2x^2-2x^3)/(1-2x-3x^2+6x^3))`
-/

namespace A366131.P488916696963909859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 0, 2, -2] [1, -2, -3, 6] n

end

end A366131.P488916696963909859

namespace A366131

/-- `ogf((2x^2-2x^3)/(1-2x-3x^2+6x^3))` -/
def P488916696963909859.Spec : Prop :=
  ∀ n, P488916696963909859.a n = A366131 n

end A366131

/-! ## A366131.P8280963603979291985

`Δ[A365544(n)]`
-/

namespace A366131.P8280963603979291985
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365544 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A366131.P8280963603979291985

namespace A366131

/-- `Δ[A365544(n)]` -/
def P8280963603979291985.Spec : Prop :=
  ∀ n, P8280963603979291985.a n = A366131 n

end A366131

/-! ## A366131.P13627684437202076737

`A365544(n+1)-A365544(n)`
-/

namespace A366131.P13627684437202076737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365544 (n + 1) - A365544 n

end

end A366131.P13627684437202076737

namespace A366131

/-- `A365544(n+1)-A365544(n)` -/
def P13627684437202076737.Spec : Prop :=
  ∀ n, P13627684437202076737.a n = A366131 n

end A366131

/-! ## A366131.P7290051235399773818

`2*A167762(n)-A365544(n)`
-/

namespace A366131.P7290051235399773818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A167762 n - A365544 n

end

end A366131.P7290051235399773818

namespace A366131

/-- `2*A167762(n)-A365544(n)` -/
def P7290051235399773818.Spec : Prop :=
  ∀ n, P7290051235399773818.a n = A366131 n

end A366131

/-!
# A366132: Number of unordered pairs of distinct strict integer partitions of n.

The programs for A366132, there is no canonical definition to state claims against.
-/

/-! ## A366132.P2627096408049935574

`C(A000009(n), 2)`
-/

namespace A366132.P2627096408049935574
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A000009 n).toNat 2

end

end A366132.P2627096408049935574

/-! ## A366132.P9380117308227917274

`A366317(n)-A000009(n)`
-/

namespace A366132.P9380117308227917274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366317 n - A000009 n

end

end A366132.P9380117308227917274

/-! ## A366132.P352602631486116926

`A000009(n)/2*A111133(n)`
-/

namespace A366132.P352602631486116926
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000009 n : ℚ) / 2 * (A111133 n : ℚ)

end

end A366132.P352602631486116926

/-! ## A366132.P13772703803914735831

`A304990(n)-A366317(n)`
-/

namespace A366132.P13772703803914735831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304990 n - A366317 n

end

end A366132.P13772703803914735831

/-! ## A366132.P1092249880460894205

`C(abs(A081360(n)), 2)`
-/

namespace A366132.P1092249880460894205
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose |A081360 n|.toNat 2

end

end A366132.P1092249880460894205

/-! ## A366132.P7682839732101739882

`C(∑[A087897(n)], 2)`
-/

namespace A366132.P7682839732101739882
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087897 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j).toNat 2

end

end A366132.P7682839732101739882

/-! ## A366132.P16518411336790548500

`C(A111133(n)+1, 2)`
-/

namespace A366132.P16518411336790548500
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A111133 n + 1).toNat 2

end

end A366132.P16518411336790548500

/-! ## A366132.P14135664190641597005

`C(A052839(n)-1, 2)`
-/

namespace A366132.P14135664190641597005
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A052839 n - 1).toNat 2

end

end A366132.P14135664190641597005

/-! ## A366132.P8520184768091534495

`C(A117409(n+2), 2)`
-/

namespace A366132.P8520184768091534495
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A117409 (n + 2)).toNat 2

end

end A366132.P8520184768091534495

/-! ## A366132.P635897216503222054

`C(A035457(2*n), 2)`
-/

namespace A366132.P635897216503222054
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A035457 (2 * n)).toNat 2

end

end A366132.P635897216503222054

/-! ## A366132.P484106937571680154

`C(A172033(2*n), 2)`
-/

namespace A366132.P484106937571680154
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A172033 (2 * n)).toNat 2

end

end A366132.P484106937571680154

/-! ## A366132.P1445456603528161063

`A265506(n)+A265508(n)-A000009(n)`
-/

namespace A366132.P1445456603528161063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265506 n + (A265508 n - A000009 n)

end

end A366132.P1445456603528161063

/-! ## A366132.P7443539590156724583

`C(A264405(∑[n]), 2)`
-/

namespace A366132.P7443539590156724583
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A264405 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat 2

end

end A366132.P7443539590156724583

/-!
# A366133: Triangle read by rows: coefficients in expansion of another Asveld's polynomials Pi_j(x).

The programs for A366133, there is no canonical definition to state claims against.
-/

/-! ## A366133.P16256757019191957964

`C(row(n), col(n))*A005444(row(n)-col(n))`
-/

namespace A366133.P16256757019191957964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose (SequenceMachineLib.triRow n) (SequenceMachineLib.triCol n) : ℤ) * A005444 (SequenceMachineLib.triRow n - SequenceMachineLib.triCol n)

end

end A366133.P16256757019191957964

/-!
# A366135: Expansion of Sum_{k>=1} k^3 * x^k/(1 - x^k)^3.

The programs for A366135, the canonical program `A366135.P4017335287159148948` is in `Seq.B004.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A366135 has offset 1).

The definition of A366135 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001157, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A366135.P4017335287159148948

`(n+1)*((n+1)*A000203(n+1)+A001157(n+1))/2`

The canonical program, it is in `Seq.B004.C003`.
-/

namespace A366135

/-- `(n+1)*((n+1)*A000203(n+1)+A001157(n+1))/2` -/
def P4017335287159148948.Spec : Prop :=
  ∀ n, P4017335287159148948.a n = (A366135 (n + 1) : ℚ)

end A366135

/-! ## A366135.P17787456277591234646

`∑{d}[n+1, A001158(#)*A007438((n+1)/#)]`
-/

namespace A366135.P17787456277591234646
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A001158 d * A007438 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A366135.P17787456277591234646

namespace A366135

/-- `∑{d}[n+1, A001158(#)*A007438((n+1)/#)]` -/
def P17787456277591234646.Spec : Prop :=
  ∀ n, P17787456277591234646.a n = A366135 (n + 1)

end A366135

/-! ## A366135.P399922864624036996

`∑{d}[n+1, A007437(#)*A059376((n+1)/#)]`
-/

namespace A366135.P399922864624036996
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A007437 d * A059376 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A366135.P399922864624036996

namespace A366135

/-- `∑{d}[n+1, A007437(#)*A059376((n+1)/#)]` -/
def P399922864624036996.Spec : Prop :=
  ∀ n, P399922864624036996.a n = A366135 (n + 1)

end A366135

/-! ## A366135.P17879905103609651888

`∑{d}[n+1, A000056(#)*A309731((n+1)/#)]`
-/

namespace A366135.P17879905103609651888
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000056 d * A309731 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A366135.P17879905103609651888

namespace A366135

/-- `∑{d}[n+1, A000056(#)*A309731((n+1)/#)]` -/
def P17879905103609651888.Spec : Prop :=
  ∀ n, P17879905103609651888.a n = A366135 (n + 1)

end A366135

/-! ## A366135.P1891639476594349074

`∑{d}[n+1, A023896(#)*A328259((n+1)/#)]`
-/

namespace A366135.P1891639476594349074
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A023896 d * A328259 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A366135.P1891639476594349074

namespace A366135

/-- `∑{d}[n+1, A023896(#)*A328259((n+1)/#)]` -/
def P1891639476594349074.Spec : Prop :=
  ∀ n, P1891639476594349074.a n = A366135 (n + 1)

end A366135

/-! ## A366135.P7161136397226646945

`∑{d}[n+1, A053191(#)*A309732((n+1)/#)]`
-/

namespace A366135.P7161136397226646945
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A053191 d * A309732 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A366135.P7161136397226646945

namespace A366135

/-- `∑{d}[n+1, A053191(#)*A309732((n+1)/#)]` -/
def P7161136397226646945.Spec : Prop :=
  ∀ n, P7161136397226646945.a n = A366135 (n + 1)

end A366135

/-! ## A366135.P1443018767894130379

`∑{d}[n+1, A057661(#)*A343497((n+1)/#)]`
-/

namespace A366135.P1443018767894130379
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A057661 d * A343497 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A366135.P1443018767894130379

namespace A366135

/-- `∑{d}[n+1, A057661(#)*A343497((n+1)/#)]` -/
def P1443018767894130379.Spec : Prop :=
  ∀ n, P1443018767894130379.a n = A366135 (n + 1)

end A366135

/-! ## A366135.P3273599461412668082

`∑{d}[n+1, A321140(#)*A326828((n+1)/#)]`
-/

namespace A366135.P3273599461412668082
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A321140 d * A326828 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A366135.P3273599461412668082

namespace A366135

/-- `∑{d}[n+1, A321140(#)*A326828((n+1)/#)]` -/
def P3273599461412668082.Spec : Prop :=
  ∀ n, P3273599461412668082.a n = A366135 (n + 1)

end A366135

/-! ## A366135.P12169424650029760702

`∑{d}[n+1, A309322(#)*A350156((n+1)/#)]`
-/

namespace A366135.P12169424650029760702
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A309322 d * A350156 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A366135.P12169424650029760702

namespace A366135

/-- `∑{d}[n+1, A309322(#)*A350156((n+1)/#)]` -/
def P12169424650029760702.Spec : Prop :=
  ∀ n, P12169424650029760702.a n = A366135 (n + 1)

end A366135

/-! ## A366135.P1505062770431207851

`∑{d}[n+1, A027847(#)*A331388((n+1)/#)]`
-/

namespace A366135.P1505062770431207851
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A027847 d * A331388 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A366135.P1505062770431207851

namespace A366135

/-- `∑{d}[n+1, A027847(#)*A331388((n+1)/#)]` -/
def P1505062770431207851.Spec : Prop :=
  ∀ n, P1505062770431207851.a n = A366135 (n + 1)

end A366135

/-!
# A366136: Minimal number of factorials or their negatives that add to n.

The programs for A366136, there is no canonical definition to state claims against.
-/

/-! ## A366136.P12870101322743044057

`A307319(A002264(2*n+1)%A246706(n+1))`
-/

namespace A366136.P12870101322743044057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307319 (Int.tmod (A002264 (2 * n + 1)) (A246706 (n + 1))).toNat

end

end A366136.P12870101322743044057

/-! ## A366136.P7440283071979522077

`A111850(n+1)-A353488(A241760(3*n+4))`
-/

namespace A366136.P7440283071979522077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111850 (n + 1) - A353488 (A241760 (3 * n + 4)).toNat

end

end A366136.P7440283071979522077

/-! ## A366136.P7762420212285737597

`A325121(n+1)-A158924(A019320(n))`
-/

namespace A366136.P7762420212285737597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325121 (n + 1) - A158924 (A019320 n).toNat

end

end A366136.P7762420212285737597

/-! ## A366136.P13816864645489081450

`A001221(A103587(3*n+1)*A325159(n))`
-/

namespace A366136.P13816864645489081450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A103587 (3 * n + 1) * A325159 n).toNat

end

end A366136.P13816864645489081450

/-! ## A366136.P1854274142026915259

`A000120(lt[A162343(n), A162323(3*n+4)])`
-/

namespace A366136.P1854274142026915259
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162343 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162323 (3 * n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A366136.P1854274142026915259

/-!
# A366137: Main diagonal of A365673.

The programs for A366137, there is no canonical definition to state claims against.
-/

/-! ## A366137.P8794275194762087203

`A365673(∑[4*n])`
-/

namespace A366137.P8794275194762087203
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365673 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A366137.P8794275194762087203

/-! ## A366137.P10899895795970665092

`A365673(A046092(n))^A365673(n)`
-/

namespace A366137.P10899895795970665092
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A365673 (A046092 n).toNat : ℚ) ^ (A365673 n : ℤ)

end

end A366137.P10899895795970665092

/-!
# A366138: Triangle read by rows. T(n, k) = A000326(n - k + 1) * T(n, k - 1) + T(n - 1, k) for 0 < k < n. T(n, 0) = 1 and T(n, n) = T(n, n - 1) if n > 0.

The programs for A366138, the canonical program `A366138.P2654854252646273173` is in `Seq.B001.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A366138 has offset 0).

The definition of A366138 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000326(row(n)-col(n)+1)*T(n,k-1)+T(n-1,k)` (program `A366138.P2654854252646273173`, by `A366138.P2654854252646273173.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A366138.P2654854252646273173

`A000326(row(n)-col(n)+1)*T(n,k-1)+T(n-1,k)` with `a(0)=1`

The canonical program, it is in `Seq.B001.C012`.
-/

namespace A366138

/-- `A000326(row(n)-col(n)+1)*T(n,k-1)+T(n-1,k)` -/
def P2654854252646273173.Spec : Prop :=
  ∀ n, P2654854252646273173.a n = A366138 n

theorem P2654854252646273173.correct : P2654854252646273173.Spec := by
  intro n
  simp only [A366138]

end A366138

/-! ## A366138.P15180914766146315265

`A000326(row(n)+1-(col(n)+1)+1)*T(n,k-1)+T(n-1,k)` with `a(0)=1`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A366138.P15180914766146315265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A000326 ((SequenceMachineLib.triRow n + 1 : ℤ) - (SequenceMachineLib.triCol n + 1 : ℤ) + 1).toNat * SequenceMachineLib.triLeft a n + SequenceMachineLib.triUp a n

end

end A366138.P15180914766146315265

namespace A366138

/-- `A000326(row(n)+1-(col(n)+1)+1)*T(n,k-1)+T(n-1,k)` -/
def P15180914766146315265.Spec : Prop :=
  ∀ n, P15180914766146315265.a n = A366138 n

theorem P15180914766146315265.correct : P15180914766146315265.Spec := by
  intro n
  simp only [A366138, Nat.add_sub_cancel, A366138.P15180914766146315265.a, A366138.P2654854252646273173.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A366138

/-! ## A366138.P8457704663797935762

`A008279(n)*A033541(A009766(n))`
-/

namespace A366138.P8457704663797935762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008279 n * A033541 (A009766 n).toNat

end

end A366138.P8457704663797935762

namespace A366138

/-- `A008279(n)*A033541(A009766(n))` -/
def P8457704663797935762.Spec : Prop :=
  ∀ n, P8457704663797935762.a n = A366138 n

end A366138

/-! ## A366138.P16294861483116752208

`A324188(A276852(n))/A206487(n+3)`
-/

namespace A366138.P16294861483116752208
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A324188 (A276852 n).toNat : ℚ) / (A206487 (n + 3) : ℚ)

end

end A366138.P16294861483116752208

namespace A366138

/-- `A324188(A276852(n))/A206487(n+3)` -/
def P16294861483116752208.Spec : Prop :=
  ∀ n, P16294861483116752208.a n = (A366138 n : ℚ)

end A366138

/-! ## A366138.P12262776996790101558

`A138706(A057883(n+2)%A056151(n+1))`
-/

namespace A366138.P12262776996790101558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138706 (Int.tmod (A057883 (n + 2)) (A056151 (n + 1))).toNat

end

end A366138.P12262776996790101558

namespace A366138

/-- `A138706(A057883(n+2)%A056151(n+1))` -/
def P12262776996790101558.Spec : Prop :=
  ∀ n, P12262776996790101558.a n = A366138 n

end A366138

/-!
# A366140: Fixed points of the binary rotations A336953 and A366139: numbers k >= 0 such that A336953(k) = A366139(k) = k.

The programs for A366140, there is no canonical definition to state claims against.
-/

/-! ## A366140.P8781706659008200793

`eq[n, A336953(n)]`
-/

namespace A366140.P8781706659008200793
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336953 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A366140.P8781706659008200793

/-! ## A366140.P13324702944190794646

`eq[n, A366139(n)]`
-/

namespace A366140.P13324702944190794646
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366139 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A366140.P13324702944190794646

/-! ## A366140.P18020843721873376262

`record[gcd(A005843(n), A366139(n))]`
-/

namespace A366140.P18020843721873376262
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A005843 n) (A366139 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A366140.P18020843721873376262

/-!
# A366143: a(n) = a(n-2) + 2*a(n-4) - a(n-10), with a[0..9] = [1, 1, 1, 1, 1, 2, 3, 5, 6, 9].

The programs for A366143, the canonical program `A366143.P3630874422542234448` is in `Seq.B000.C039`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A366143 has offset 0).

The definition of A366143 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-2)+2*a(n-4)-a(n-10)` (program `A366143.P3630874422542234448`, by `A366143.P3630874422542234448.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A366143.P3630874422542234448

`a(n-2)+2*a(n-4)-a(n-10)` with `a(0)=1, a(1)=1, a(2)=1, a(3)=1, a(4)=1, a(5)=2, a(6)=3, a(7)=5, a(8)=6, a(9)=9`

The canonical program, it is in `Seq.B000.C039`.
-/

namespace A366143

/-- `a(n-2)+2*a(n-4)-a(n-10)` -/
def P3630874422542234448.Spec : Prop :=
  ∀ n, P3630874422542234448.a n = A366143 n

theorem P3630874422542234448.correct : P3630874422542234448.Spec := by
  intro n
  simp only [A366143]

end A366143

/-!
# A366145: The number of divisors of the largest divisor of n that is a cubefull number (A036966).

The programs for A366145, the canonical program `A366145.P15841595300471254035` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A366145 has offset 1).

The definition of A366145 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A366147, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A366145.P4368711008542692891

`A000005(A360540(n+1))`
-/

namespace A366145.P4368711008542692891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A360540 (n + 1)).toNat

end

end A366145.P4368711008542692891

namespace A366145

/-- `A000005(A360540(n+1))` -/
def P4368711008542692891.Spec : Prop :=
  ∀ n, P4368711008542692891.a n = A366145 (n + 1)

end A366145

/-! ## A366145.P15841595300471254035

`A000005(n+1)/A366147(n+1)`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A366145

/-- `A000005(n+1)/A366147(n+1)` -/
def P15841595300471254035.Spec : Prop :=
  ∀ n, P15841595300471254035.a n = (A366145 (n + 1) : ℚ)

end A366145

/-! ## A366145.P7809993097738048117

`A357669(A366765(n+1))`
-/

namespace A366145.P7809993097738048117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357669 (A366765 (n + 1)).toNat

end

end A366145.P7809993097738048117

namespace A366145

/-- `A357669(A366765(n+1))` -/
def P7809993097738048117.Spec : Prop :=
  ∀ n, P7809993097738048117.a n = A366145 (n + 1)

end A366145

/-! ## A366145.P4194883229820224090

`A000005((n+1)/A360539(n+1))`
-/

namespace A366145.P4194883229820224090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A360539 (n + 1) : ℚ))).toNat

end

end A366145.P4194883229820224090

namespace A366145

/-- `A000005((n+1)/A360539(n+1))` -/
def P4194883229820224090.Spec : Prop :=
  ∀ n, P4194883229820224090.a n = A366145 (n + 1)

end A366145

/-! ## A366145.P11342836590991419530

`A357669(A360540(2*n+1-n))`
-/

namespace A366145.P11342836590991419530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357669 (A360540 (2 * n + 1 - n)).toNat

end

end A366145.P11342836590991419530

namespace A366145

/-- `A357669(A360540(2*n+1-n))` -/
def P11342836590991419530.Spec : Prop :=
  ∀ n, P11342836590991419530.a n = A366145 (n + 1)

end A366145

/-! ## A366145.P2928144601247469924

`gcd(A369716(n+1), A369719(n+1))`
-/

namespace A366145.P2928144601247469924
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A369716 (n + 1)) (A369719 (n + 1))

end

end A366145.P2928144601247469924

namespace A366145

/-- `gcd(A369716(n+1), A369719(n+1))` -/
def P2928144601247469924.Spec : Prop :=
  ∀ n, (P2928144601247469924.a n : ℤ) = A366145 (n + 1)

end A366145

/-! ## A366145.P9366337276008585019

`A360997(A003557(A003557(n+1)))`
-/

namespace A366145.P9366337276008585019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360997 (A003557 (A003557 (n + 1)).toNat).toNat

end

end A366145.P9366337276008585019

namespace A366145

/-- `A360997(A003557(A003557(n+1)))` -/
def P9366337276008585019.Spec : Prop :=
  ∀ n, P9366337276008585019.a n = A366145 (n + 1)

end A366145

/-! ## A366145.P8633194323715062628

`A190867((n+1)*A007948(A360540(n+1)))`
-/

namespace A366145.P8633194323715062628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190867 ((n + 1 : ℤ) * A007948 (A360540 (n + 1)).toNat).toNat

end

end A366145.P8633194323715062628

namespace A366145

/-- `A190867((n+1)*A007948(A360540(n+1)))` -/
def P8633194323715062628.Spec : Prop :=
  ∀ n, P8633194323715062628.a n = A366145 (n + 1)

end A366145

/-! ## A366145.P15872124065492848711

`A368977(A390371((n+1)*A390371(n+1)))`
-/

namespace A366145.P15872124065492848711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368977 (A390371 ((n + 1 : ℤ) * A390371 (n + 1)).toNat).toNat

end

end A366145.P15872124065492848711

namespace A366145

/-- `A368977(A390371((n+1)*A390371(n+1)))` -/
def P15872124065492848711.Spec : Prop :=
  ∀ n, P15872124065492848711.a n = A366145 (n + 1)

end A366145

/-! ## A366145.P17521099439121569122

`A369719((n+1)/A360541(A360541(n+1)))`
-/

namespace A366145.P17521099439121569122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369719 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A360541 (A360541 (n + 1)).toNat : ℚ))).toNat

end

end A366145.P17521099439121569122

namespace A366145

/-- `A369719((n+1)/A360541(A360541(n+1)))` -/
def P17521099439121569122.Spec : Prop :=
  ∀ n, P17521099439121569122.a n = A366145 (n + 1)

end A366145

/-!
# A366146: The sum of divisors of the largest divisor of n that is a cubefull number (A036966).

The programs for A366146, the canonical program `A366146.P17064204824048131682` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A366146 has offset 1).

The definition of A366146 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A360540, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A366146.P17064204824048131682

`A000203(A360540(n+1))`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A366146

/-- `A000203(A360540(n+1))` -/
def P17064204824048131682.Spec : Prop :=
  ∀ n, P17064204824048131682.a n = A366146 (n + 1)

theorem P17064204824048131682.correct : P17064204824048131682.Spec := by
  intro n
  simp only [A366146, Nat.add_sub_cancel]

end A366146

/-! ## A366146.P4437368537851437974

`A000203(n+1)/A366148(n+1)`
-/

namespace A366146.P4437368537851437974
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000203 (n + 1) : ℚ) / (A366148 (n + 1) : ℚ)

end

end A366146.P4437368537851437974

namespace A366146

/-- `A000203(n+1)/A366148(n+1)` -/
def P4437368537851437974.Spec : Prop :=
  ∀ n, P4437368537851437974.a n = (A366146 (n + 1) : ℚ)

end A366146

/-! ## A366146.P10256995848498163525

`∑{d}[(n+1)/A360539(n+1), #]`
-/

namespace A366146.P10256995848498163525
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A360539 (n + 1) : ℚ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (SequenceMachineLib.roundAway (f1 n)).natAbs, d

end

end A366146.P10256995848498163525

namespace A366146

/-- `∑{d}[(n+1)/A360539(n+1), #]` -/
def P10256995848498163525.Spec : Prop :=
  ∀ n, (P10256995848498163525.a n : ℤ) = A366146 (n + 1)

end A366146

/-! ## A366146.P5329004018189169903

`A295294(A366765(n+1))`
-/

namespace A366146.P5329004018189169903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295294 (A366765 (n + 1)).toNat

end

end A366146.P5329004018189169903

namespace A366146

/-- `A295294(A366765(n+1))` -/
def P5329004018189169903.Spec : Prop :=
  ∀ n, P5329004018189169903.a n = A366146 (n + 1)

end A366146

/-! ## A366146.P12782063109736731068

`A295294(A368886(n+1))`
-/

namespace A366146.P12782063109736731068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295294 (A368886 (n + 1)).toNat

end

end A366146.P12782063109736731068

namespace A366146

/-- `A295294(A368886(n+1))` -/
def P12782063109736731068.Spec : Prop :=
  ∀ n, P12782063109736731068.a n = A366146 (n + 1)

end A366146

/-! ## A366146.P14126256852528009036

`A000203((n+1)/A360539(n+1))`
-/

namespace A366146.P14126256852528009036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A360539 (n + 1) : ℚ))).toNat

end

end A366146.P14126256852528009036

namespace A366146

/-- `A000203((n+1)/A360539(n+1))` -/
def P14126256852528009036.Spec : Prop :=
  ∀ n, P14126256852528009036.a n = A366146 (n + 1)

end A366146

/-! ## A366146.P16013119946988443548

`A295294((n+1)/A360539(n+1))`
-/

namespace A366146.P16013119946988443548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295294 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A360539 (n + 1) : ℚ))).toNat

end

end A366146.P16013119946988443548

namespace A366146

/-- `A295294((n+1)/A360539(n+1))` -/
def P16013119946988443548.Spec : Prop :=
  ∀ n, P16013119946988443548.a n = A366146 (n + 1)

end A366146

/-! ## A366146.P16586549050288719735

`A369720((n+1)/A360539(n+1))`
-/

namespace A366146.P16586549050288719735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369720 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A360539 (n + 1) : ℚ))).toNat

end

end A366146.P16586549050288719735

namespace A366146

/-- `A369720((n+1)/A360539(n+1))` -/
def P16586549050288719735.Spec : Prop :=
  ∀ n, P16586549050288719735.a n = A366146 (n + 1)

end A366146

/-! ## A366146.P1852150587520471483

`A295294(A360540(2*n+1-n))`
-/

namespace A366146.P1852150587520471483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295294 (A360540 (2 * n + 1 - n)).toNat

end

end A366146.P1852150587520471483

namespace A366146

/-- `A295294(A360540(2*n+1-n))` -/
def P1852150587520471483.Spec : Prop :=
  ∀ n, P1852150587520471483.a n = A366146 (n + 1)

end A366146

/-! ## A366146.P10937773648578209968

`A000203(A064549(A057521(A003557(n+1))))`
-/

namespace A366146.P10937773648578209968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A064549 (A057521 (A003557 (n + 1)).toNat).toNat).toNat

end

end A366146.P10937773648578209968

namespace A366146

/-- `A000203(A064549(A057521(A003557(n+1))))` -/
def P10937773648578209968.Spec : Prop :=
  ∀ n, P10937773648578209968.a n = A366146 (n + 1)

end A366146

/-!
# A366147: The number of divisors of the cubefree part of n (A360539).

The programs for A366147, the canonical program `A366147.P10283015225632227018` is in `Seq.B006.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A366147 has offset 1).

The definition of A366147 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A360539, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A366147.P10283015225632227018

`A000005(A360539(n+1))`

The canonical program, it is in `Seq.B006.C001`.
-/

namespace A366147

/-- `A000005(A360539(n+1))` -/
def P10283015225632227018.Spec : Prop :=
  ∀ n, P10283015225632227018.a n = A366147 (n + 1)

theorem P10283015225632227018.correct : P10283015225632227018.Spec := by
  intro n
  simp only [A366147, Nat.add_sub_cancel]

end A366147

/-! ## A366147.P13178952172206408410

`A000005(n+1)/A366145(n+1)`
-/

namespace A366147.P13178952172206408410
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000005 (n + 1) : ℚ) / (A366145 (n + 1) : ℚ)

end

end A366147.P13178952172206408410

namespace A366147

/-- `A000005(n+1)/A366145(n+1)` -/
def P13178952172206408410.Spec : Prop :=
  ∀ n, P13178952172206408410.a n = (A366147 (n + 1) : ℚ)

end A366147

/-! ## A366147.P16942862421352118327

`A065331(A181819(n+1))`
-/

namespace A366147.P16942862421352118327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065331 (A181819 (n + 1)).toNat

end

end A366147.P16942862421352118327

namespace A366147

/-- `A065331(A181819(n+1))` -/
def P16942862421352118327.Spec : Prop :=
  ∀ n, P16942862421352118327.a n = A366147 (n + 1)

end A366147

/-! ## A366147.P6542228358055837838

`A367170(A058035(n+1))`
-/

namespace A366147.P6542228358055837838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367170 (A058035 (n + 1)).toNat

end

end A366147.P6542228358055837838

namespace A366147

/-- `A367170(A058035(n+1))` -/
def P6542228358055837838.Spec : Prop :=
  ∀ n, P6542228358055837838.a n = A366147 (n + 1)

end A366147

/-! ## A366147.P3626541385901794631

`A367170(A365683(n+1))`
-/

namespace A366147.P3626541385901794631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367170 (A365683 (n + 1)).toNat

end

end A366147.P3626541385901794631

namespace A366147

/-- `A367170(A365683(n+1))` -/
def P3626541385901794631.Spec : Prop :=
  ∀ n, P3626541385901794631.a n = A366147 (n + 1)

end A366147

/-! ## A366147.P5297718878412242980

`A367170(A366994(n+1))`
-/

namespace A366147.P5297718878412242980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367170 (A366994 (n + 1)).toNat

end

end A366147.P5297718878412242980

namespace A366147

/-- `A367170(A366994(n+1))` -/
def P5297718878412242980.Spec : Prop :=
  ∀ n, P5297718878412242980.a n = A366147 (n + 1)

end A366147

/-! ## A366147.P18307628735463128289

`A367170(A383764(n+1))`
-/

namespace A366147.P18307628735463128289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367170 (A383764 (n + 1)).toNat

end

end A366147.P18307628735463128289

namespace A366147

/-- `A367170(A383764(n+1))` -/
def P18307628735463128289.Spec : Prop :=
  ∀ n, P18307628735463128289.a n = A366147 (n + 1)

end A366147

/-! ## A366147.P2192970132159591029

`A367170(A385007(n+1))`
-/

namespace A366147.P2192970132159591029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367170 (A385007 (n + 1)).toNat

end

end A366147.P2192970132159591029

namespace A366147

/-- `A367170(A385007(n+1))` -/
def P2192970132159591029.Spec : Prop :=
  ∀ n, P2192970132159591029.a n = A366147 (n + 1)

end A366147

/-! ## A366147.P5781462246996178672

`A000005((n+1)/A360540(n+1))`
-/

namespace A366147.P5781462246996178672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A360540 (n + 1) : ℚ))).toNat

end

end A366147.P5781462246996178672

namespace A366147

/-- `A000005((n+1)/A360540(n+1))` -/
def P5781462246996178672.Spec : Prop :=
  ∀ n, P5781462246996178672.a n = A366147 (n + 1)

end A366147

/-! ## A366147.P17859373239535124907

`A073182((n+1)/A360540(n+1))`
-/

namespace A366147.P17859373239535124907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073182 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A360540 (n + 1) : ℚ))).toNat

end

end A366147.P17859373239535124907

namespace A366147

/-- `A073182((n+1)/A360540(n+1))` -/
def P17859373239535124907.Spec : Prop :=
  ∀ n, P17859373239535124907.a n = A366147 (n + 1)

end A366147

/-! ## A366147.P3868042235833811428

`A073184((n+1)/A360540(n+1))`
-/

namespace A366147.P3868042235833811428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073184 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A360540 (n + 1) : ℚ))).toNat

end

end A366147.P3868042235833811428

namespace A366147

/-- `A073184((n+1)/A360540(n+1))` -/
def P3868042235833811428.Spec : Prop :=
  ∀ n, P3868042235833811428.a n = A366147 (n + 1)

end A366147

/-! ## A366147.P16263685720285839793

`A073184(n+1)/A368247(n+1)`
-/

namespace A366147.P16263685720285839793
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A073184 (n + 1) : ℚ) / (A368247 (n + 1) : ℚ)

end

end A366147.P16263685720285839793

namespace A366147

/-- `A073184(n+1)/A368247(n+1)` -/
def P16263685720285839793.Spec : Prop :=
  ∀ n, P16263685720285839793.a n = (A366147 (n + 1) : ℚ)

end A366147

/-! ## A366147.P11319902625278442331

`A049599(A360539(2*n+1-n))`
-/

namespace A366147.P11319902625278442331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049599 (A360539 (2 * n + 1 - n)).toNat

end

end A366147.P11319902625278442331

namespace A366147

/-- `A049599(A360539(2*n+1-n))` -/
def P11319902625278442331.Spec : Prop :=
  ∀ n, P11319902625278442331.a n = A366147 (n + 1)

end A366147

/-! ## A366147.P12084171904943876156

`gcd(A252505(n+1), A369015(n+1))`
-/

namespace A366147.P12084171904943876156
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A252505 (n + 1)) (A369015 (n + 1))

end

end A366147.P12084171904943876156

namespace A366147

/-- `gcd(A252505(n+1), A369015(n+1))` -/
def P12084171904943876156.Spec : Prop :=
  ∀ n, (P12084171904943876156.a n : ℤ) = A366147 (n + 1)

end A366147

/-! ## A366147.P2969055657621529619

`A056671(n+1)*A357669(n+1)/A366145(n+1)`
-/

namespace A366147.P2969055657621529619
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A056671 (n + 1) * A357669 (n + 1) : ℚ) / (A366145 (n + 1) : ℚ)

end

end A366147.P2969055657621529619

namespace A366147

/-- `A056671(n+1)*A357669(n+1)/A366145(n+1)` -/
def P2969055657621529619.Spec : Prop :=
  ∀ n, P2969055657621529619.a n = (A366147 (n + 1) : ℚ)

end A366147

/-! ## A366147.P16522623477882804092

`A367170(A365684(n+1))`
-/

namespace A366147.P16522623477882804092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367170 (A365684 (n + 1)).toNat

end

end A366147.P16522623477882804092

namespace A366147

/-- `A367170(A365684(n+1))` -/
def P16522623477882804092.Spec : Prop :=
  ∀ n, P16522623477882804092.a n = A366147 (n + 1)

end A366147

/-! ## A366147.P1211792375613095591

`gcd(A175806(n), A181819(n+1))`
-/

namespace A366147.P1211792375613095591
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A175806 n) (A181819 (n + 1))

end

end A366147.P1211792375613095591

namespace A366147

/-- `gcd(A175806(n), A181819(n+1))` -/
def P1211792375613095591.Spec : Prop :=
  ∀ n, (P1211792375613095591.a n : ℤ) = A366147 (n + 1)

end A366147

/-! ## A366147.P12223466262259389722

`gcd(A206089(n+1), A367170(n+1))`
-/

namespace A366147.P12223466262259389722
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A206089 (n + 1)) (A367170 (n + 1))

end

end A366147.P12223466262259389722

namespace A366147

/-- `gcd(A206089(n+1), A367170(n+1))` -/
def P12223466262259389722.Spec : Prop :=
  ∀ n, (P12223466262259389722.a n : ℤ) = A366147 (n + 1)

end A366147

/-! ## A366147.P12462924379025175556

`gcd(A180141(n), A367170(n+1))`
-/

namespace A366147.P12462924379025175556
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A180141 n) (A367170 (n + 1))

end

end A366147.P12462924379025175556

namespace A366147

/-- `gcd(A180141(n), A367170(n+1))` -/
def P12462924379025175556.Spec : Prop :=
  ∀ n, (P12462924379025175556.a n : ℤ) = A366147 (n + 1)

end A366147

/-! ## A366147.P127918658593876101

`A061389(A360539(n+1)²)`
-/

namespace A366147.P127918658593876101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061389 (A360539 (n + 1) ^ 2).toNat

end

end A366147.P127918658593876101

namespace A366147

/-- `A061389(A360539(n+1)²)` -/
def P127918658593876101.Spec : Prop :=
  ∀ n, P127918658593876101.a n = A366147 (n + 1)

end A366147

/-!
# A366148: The sum of divisors of the cubefree part of n (A360539).

The programs for A366148, the canonical program `A366148.P12886226844423616150` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A366148 has offset 1).

The definition of A366148 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A366146, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A366148.P14405975858273977943

`A000203(A360539(n+1))`
-/

namespace A366148.P14405975858273977943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A360539 (n + 1)).toNat

end

end A366148.P14405975858273977943

namespace A366148

/-- `A000203(A360539(n+1))` -/
def P14405975858273977943.Spec : Prop :=
  ∀ n, P14405975858273977943.a n = A366148 (n + 1)

end A366148

/-! ## A366148.P12886226844423616150

`A000203(n+1)/A366146(n+1)`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A366148

/-- `A000203(n+1)/A366146(n+1)` -/
def P12886226844423616150.Spec : Prop :=
  ∀ n, P12886226844423616150.a n = (A366148 (n + 1) : ℚ)

end A366148

/-! ## A366148.P5107713555529135230

`∑{d}[(n+1)/A360540(n+1), #]`
-/

namespace A366148.P5107713555529135230
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A360540 (n + 1) : ℚ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (SequenceMachineLib.roundAway (f1 n)).natAbs, d

end

end A366148.P5107713555529135230

namespace A366148

/-- `∑{d}[(n+1)/A360540(n+1), #]` -/
def P5107713555529135230.Spec : Prop :=
  ∀ n, (P5107713555529135230.a n : ℤ) = A366148 (n + 1)

end A366148

/-! ## A366148.P7648490179635299794

`A367171(A058035(n+1))`
-/

namespace A366148.P7648490179635299794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367171 (A058035 (n + 1)).toNat

end

end A366148.P7648490179635299794

namespace A366148

/-- `A367171(A058035(n+1))` -/
def P7648490179635299794.Spec : Prop :=
  ∀ n, P7648490179635299794.a n = A366148 (n + 1)

end A366148

/-! ## A366148.P10433020672289057827

`A367171(A365683(n+1))`
-/

namespace A366148.P10433020672289057827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367171 (A365683 (n + 1)).toNat

end

end A366148.P10433020672289057827

namespace A366148

/-- `A367171(A365683(n+1))` -/
def P10433020672289057827.Spec : Prop :=
  ∀ n, P10433020672289057827.a n = A366148 (n + 1)

end A366148

/-! ## A366148.P12107954680859806753

`A367171(A366994(n+1))`
-/

namespace A366148.P12107954680859806753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367171 (A366994 (n + 1)).toNat

end

end A366148.P12107954680859806753

namespace A366148

/-- `A367171(A366994(n+1))` -/
def P12107954680859806753.Spec : Prop :=
  ∀ n, P12107954680859806753.a n = A366148 (n + 1)

end A366148

/-! ## A366148.P14003535763052495066

`A367171(A383764(n+1))`
-/

namespace A366148.P14003535763052495066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367171 (A383764 (n + 1)).toNat

end

end A366148.P14003535763052495066

namespace A366148

/-- `A367171(A383764(n+1))` -/
def P14003535763052495066.Spec : Prop :=
  ∀ n, P14003535763052495066.a n = A366148 (n + 1)

end A366148

/-! ## A366148.P64376018712760138

`A367171(A385007(n+1))`
-/

namespace A366148.P64376018712760138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367171 (A385007 (n + 1)).toNat

end

end A366148.P64376018712760138

namespace A366148

/-- `A367171(A385007(n+1))` -/
def P64376018712760138.Spec : Prop :=
  ∀ n, P64376018712760138.a n = A366148 (n + 1)

end A366148

/-! ## A366148.P15314810367795170789

`A000203((n+1)/A360540(n+1))`
-/

namespace A366148.P15314810367795170789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A360540 (n + 1) : ℚ))).toNat

end

end A366148.P15314810367795170789

namespace A366148

/-- `A000203((n+1)/A360540(n+1))` -/
def P15314810367795170789.Spec : Prop :=
  ∀ n, P15314810367795170789.a n = A366148 (n + 1)

end A366148

/-! ## A366148.P8702953547357399451

`A073183((n+1)/A360540(n+1))`
-/

namespace A366148.P8702953547357399451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073183 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A360540 (n + 1) : ℚ))).toNat

end

end A366148.P8702953547357399451

namespace A366148

/-- `A073183((n+1)/A360540(n+1))` -/
def P8702953547357399451.Spec : Prop :=
  ∀ n, P8702953547357399451.a n = A366148 (n + 1)

end A366148

/-! ## A366148.P1836784667648404929

`gcd(A365682(n+1), A369761(n+1))`
-/

namespace A366148.P1836784667648404929
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A365682 (n + 1)) (A369761 (n + 1))

end

end A366148.P1836784667648404929

namespace A366148

/-- `gcd(A365682(n+1), A369761(n+1))` -/
def P1836784667648404929.Spec : Prop :=
  ∀ n, (P1836784667648404929.a n : ℤ) = A366148 (n + 1)

end A366148

/-! ## A366148.P17790236948146923349

`A367171(A365684(n+1))`
-/

namespace A366148.P17790236948146923349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367171 (A365684 (n + 1)).toNat

end

end A366148.P17790236948146923349

namespace A366148

/-- `A367171(A365684(n+1))` -/
def P17790236948146923349.Spec : Prop :=
  ∀ n, P17790236948146923349.a n = A366148 (n + 1)

end A366148

/-! ## A366148.P16757570496733803238

`A073185(n+1)/A073185(A062378(n+1)²)`
-/

namespace A366148.P16757570496733803238
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A073185 (n + 1) : ℚ) / (A073185 (A062378 (n + 1) ^ 2).toNat : ℚ)

end

end A366148.P16757570496733803238

namespace A366148

/-- `A073185(n+1)/A073185(A062378(n+1)²)` -/
def P16757570496733803238.Spec : Prop :=
  ∀ n, P16757570496733803238.a n = (A366148 (n + 1) : ℚ)

end A366148

/-!
# A366149: Triangle read by rows. T(n, k) = A000566(n - k + 1) * T(n, k - 1) + T(n - 1, k) for 0 < k < n. T(n, 0) = 1 and T(n, n) = T(n, n - 1) if n > 0.

The programs for A366149, the canonical program `A366149.P13195317199118685412` is in `Seq.B001.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A366149 has offset 0).

The definition of A366149 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000566(row(n)-col(n)+1)*T(n,k-1)+T(n-1,k)` (program `A366149.P13195317199118685412`, by `A366149.P13195317199118685412.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A366149.P13195317199118685412

`A000566(row(n)-col(n)+1)*T(n,k-1)+T(n-1,k)` with `a(0)=1`

The canonical program, it is in `Seq.B001.C012`.
-/

namespace A366149

/-- `A000566(row(n)-col(n)+1)*T(n,k-1)+T(n-1,k)` -/
def P13195317199118685412.Spec : Prop :=
  ∀ n, P13195317199118685412.a n = A366149 n

theorem P13195317199118685412.correct : P13195317199118685412.Spec := by
  intro n
  simp only [A366149]

end A366149

/-! ## A366149.P1110177154106748941

`A000566(row(n)+1-(col(n)+1)+1)*T(n,k-1)+T(n-1,k)` with `a(0)=1`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A366149.P1110177154106748941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A000566 ((SequenceMachineLib.triRow n + 1 : ℤ) - (SequenceMachineLib.triCol n + 1 : ℤ) + 1).toNat * SequenceMachineLib.triLeft a n + SequenceMachineLib.triUp a n

end

end A366149.P1110177154106748941

namespace A366149

/-- `A000566(row(n)+1-(col(n)+1)+1)*T(n,k-1)+T(n-1,k)` -/
def P1110177154106748941.Spec : Prop :=
  ∀ n, P1110177154106748941.a n = A366149 n

theorem P1110177154106748941.correct : P1110177154106748941.Spec := by
  intro n
  simp only [A366149, Nat.add_sub_cancel, A366149.P1110177154106748941.a, A366149.P13195317199118685412.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A366149

/-!
# A366150: a(n) = A366149(n, n).

The programs for A366150, there is no canonical definition to state claims against.
-/

/-! ## A366150.P1683124275342436404

`A366149(∑[n]+n)`
-/

namespace A366150.P1683124275342436404
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366149 (∑ j ∈ Finset.range (n + 1), f1 j + n)

end

end A366150.P1683124275342436404

/-!
# A366151: a(n) = T(n, 3), where T(n, k) = Sum_{i=0..n} i^k * binomial(n, i) * (1/2)^(n-k).

The programs for A366151, the canonical program `A366151.P1265820382094336323` is in `Seq.B000.C039`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A366151 has offset 0).

The definition of A366151 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A366151.P1265820382094336323

`n²*(n+3)`

The canonical program, it is in `Seq.B000.C039`.
-/

namespace A366151

/-- `n²*(n+3)` -/
def P1265820382094336323.Spec : Prop :=
  ∀ n, (P1265820382094336323.a n : ℤ) = A366151 n

theorem P1265820382094336323.correct : P1265820382094336323.Spec := by
  intro n
  simp only [A366151]

end A366151

/-! ## A366151.P11072113383521662366

`record[n*(3-n)²]`
-/

namespace A366151.P11072113383521662366
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (3 - (n : ℤ)) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A366151.P11072113383521662366

namespace A366151

/-- `record[n*(3-n)²]` -/
def P11072113383521662366.Spec : Prop :=
  ∀ n, P11072113383521662366.a n = A366151 n

end A366151

/-! ## A366151.P6175162707484588860

`n²/tan(acot(n+3))`
-/

namespace A366151.P6175162707484588860
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℝ) / Real.tan (SequenceMachineLib.acot (n + 3 : ℝ))

end

end A366151.P6175162707484588860

namespace A366151

/-- `n²/tan(acot(n+3))` -/
def P6175162707484588860.Spec : Prop :=
  ∀ n, P6175162707484588860.a n = (A366151 n : ℝ)

end A366151

/-! ## A366151.P8448791409441036172

`n²/cot(atan(n+3))`
-/

namespace A366151.P8448791409441036172
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℝ) / Real.cot (Real.arctan (n + 3 : ℝ))

end

end A366151.P8448791409441036172

namespace A366151

/-- `n²/cot(atan(n+3))` -/
def P8448791409441036172.Spec : Prop :=
  ∀ n, P8448791409441036172.a n = (A366151 n : ℝ)

end A366151

/-! ## A366151.P12770121102897239520

`lcm(2, n*n*(n+3))`
-/

namespace A366151.P12770121102897239520
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm 2 (n * (n * (n + 3)))

end

end A366151.P12770121102897239520

namespace A366151

/-- `lcm(2, n*n*(n+3))` -/
def P12770121102897239520.Spec : Prop :=
  ∀ n, (P12770121102897239520.a n : ℤ) = A366151 n

end A366151

/-! ## A366151.P10963213717669668567

`floor(n/acot(n*(n+3)))`
-/

namespace A366151.P10963213717669668567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℝ) / SequenceMachineLib.acot (n * (n + 3) : ℝ)⌋

end

end A366151.P10963213717669668567

namespace A366151

/-- `floor(n/acot(n*(n+3)))` -/
def P10963213717669668567.Spec : Prop :=
  ∀ n, P10963213717669668567.a n = A366151 n

end A366151

/-! ## A366151.P16119331102907359182

`round(n/acot(n*(n+3)))`
-/

namespace A366151.P16119331102907359182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((n : ℝ) / SequenceMachineLib.acot (n * (n + 3) : ℝ))

end

end A366151.P16119331102907359182

namespace A366151

/-- `round(n/acot(n*(n+3)))` -/
def P16119331102907359182.Spec : Prop :=
  ∀ n, P16119331102907359182.a n = A366151 n

end A366151

/-! ## A366151.P15976322985479813905

`and(n*n*(n+3), -2)`
-/

namespace A366151.P15976322985479813905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n * (n * (n + 3)) : ℤ) (-2)

end

end A366151.P15976322985479813905

namespace A366151

/-- `and(n*n*(n+3), -2)` -/
def P15976322985479813905.Spec : Prop :=
  ∀ n, P15976322985479813905.a n = A366151 n

end A366151

/-! ## A366151.P340703557368936159

`lcm(n, (n+1)²+n)-n`
-/

namespace A366151.P340703557368936159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.lcm n ((n + 1) ^ 2 + n) : ℤ) - (n : ℤ)

end

end A366151.P340703557368936159

namespace A366151

/-- `lcm(n, (n+1)²+n)-n` -/
def P340703557368936159.Spec : Prop :=
  ∀ n, P340703557368936159.a n = A366151 n

end A366151

/-! ## A366151.P435306661441929265

`6*C(n+2, 3)-2*n`
-/

namespace A366151.P435306661441929265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (6 * Nat.choose (n + 2) 3 : ℤ) - (2 * n : ℤ)

end

end A366151.P435306661441929265

namespace A366151

/-- `6*C(n+2, 3)-2*n` -/
def P435306661441929265.Spec : Prop :=
  ∀ n, P435306661441929265.a n = A366151 n

theorem P435306661441929265.correct : P435306661441929265.Spec := by
  intro n
  simp only [A366151, Nat.add_sub_cancel, A366151.P435306661441929265.a, A366151.P1265820382094336323.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A366151

/-! ## A366151.P14012437611601607412

`∑[a(n-1)+6*n]` with `a(0)=0, a(1)=4`
-/

namespace A366151.P14012437611601607412
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 4] fun n f1 =>
  f1 (n - 1) + 6 * n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A366151.P14012437611601607412

namespace A366151

/-- `∑[a(n-1)+6*n]` -/
def P14012437611601607412.Spec : Prop :=
  ∀ n, (P14012437611601607412.a n : ℤ) = A366151 n

end A366151

/-! ## A366151.P5681670362285709670

`(n+3)*Δ[C(2*n, 3)]/4`
-/

namespace A366151.P5681670362285709670
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (2 * n) 3

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 3 : ℤ) * ((f1 (n + 1) : ℤ) - (f1 n : ℤ)) : ℚ) / 4

end

end A366151.P5681670362285709670

namespace A366151

/-- `(n+3)*Δ[C(2*n, 3)]/4` -/
def P5681670362285709670.Spec : Prop :=
  ∀ n, P5681670362285709670.a n = (A366151 n : ℚ)

theorem P5681670362285709670.correct : P5681670362285709670.Spec := by
  intro n
  simp only [A366151, Nat.add_sub_cancel, A366151.P5681670362285709670.f1, A366151.P5681670362285709670.a, A366151.P1265820382094336323.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A366151

/-! ## A366151.P3488198912186188172

`∑[6*n]-(2-a(n-1))` with `a(0)=0`
-/

namespace A366151.P3488198912186188172
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6 * n

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - (2 - a (n - 1))

end

end A366151.P3488198912186188172

namespace A366151

/-- `∑[6*n]-(2-a(n-1))` -/
def P3488198912186188172.Spec : Prop :=
  ∀ n, P3488198912186188172.a n = A366151 n

end A366151

/-! ## A366151.P7068479949733100445

`(n*sqrt(n+3))^gcd(2, 2*n)`
-/

namespace A366151.P7068479949733100445
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((n : ℝ) * Real.sqrt (n + 3 : ℝ)) ^ Nat.gcd 2 (2 * n)

end

end A366151.P7068479949733100445

namespace A366151

/-- `(n*sqrt(n+3))^gcd(2, 2*n)` -/
def P7068479949733100445.Spec : Prop :=
  ∀ n, P7068479949733100445.a n = (A366151 n : ℝ)

end A366151

/-! ## A366151.P11615627107376895709

`(C(2*n, 2)+n)*(n+3)/2`
-/

namespace A366151.P11615627107376895709
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((Nat.choose (2 * n) 2 + n) * (n + 3) : ℚ) / 2

end

end A366151.P11615627107376895709

namespace A366151

/-- `(C(2*n, 2)+n)*(n+3)/2` -/
def P11615627107376895709.Spec : Prop :=
  ∀ n, P11615627107376895709.a n = (A366151 n : ℚ)

theorem P11615627107376895709.correct : P11615627107376895709.Spec := by
  intro n
  simp only [A366151, Nat.add_sub_cancel, A366151.P11615627107376895709.a, A366151.P1265820382094336323.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A366151

/-! ## A366151.P15979076413405385763

`Δ[(1-C(n+1, 2))²]-(n-1)`
-/

namespace A366151.P15979076413405385763
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - (Nat.choose (n + 1) 2 : ℤ)) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - ((n : ℤ) - 1)

end

end A366151.P15979076413405385763

namespace A366151

/-- `Δ[(1-C(n+1, 2))²]-(n-1)` -/
def P15979076413405385763.Spec : Prop :=
  ∀ n, P15979076413405385763.a n = A366151 n

theorem P15979076413405385763.correct : P15979076413405385763.Spec := by
  intro n
  simp only [A366151, Nat.add_sub_cancel, A366151.P15979076413405385763.f1, A366151.P15979076413405385763.a, A366151.P1265820382094336323.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A366151

/-! ## A366151.P1739265336148551592

`C(2, n+3)+n*n*(n+3)`
-/

namespace A366151.P1739265336148551592
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 2 (n + 3) + n * (n * (n + 3))

end

end A366151.P1739265336148551592

namespace A366151

/-- `C(2, n+3)+n*n*(n+3)` -/
def P1739265336148551592.Spec : Prop :=
  ∀ n, (P1739265336148551592.a n : ℤ) = A366151 n

end A366151

/-! ## A366151.P2746810780550951401

`and(1, 2*n)+n*n*(n+3)`
-/

namespace A366151.P2746810780550951401
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 1 (2 * n) + n * (n * (n + 3))

end

end A366151.P2746810780550951401

namespace A366151

/-- `and(1, 2*n)+n*n*(n+3)` -/
def P2746810780550951401.Spec : Prop :=
  ∀ n, (P2746810780550951401.a n : ℤ) = A366151 n

theorem P2746810780550951401.correct : P2746810780550951401.Spec := by
  intro n
  simp only [A366151, Nat.add_sub_cancel, A366151.P2746810780550951401.a, A366151.P1265820382094336323.a, SequenceMachineLib.memo_apply]
  try norm_num [Nat.choose_two_right, Nat.factorial]
  try ring_nf

end A366151

/-! ## A366151.P866127638981629012

`n*n*(n+3)/gcd(n, n+1)`
-/

namespace A366151.P866127638981629012
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n * (n * (n + 3)) : ℚ) / (Nat.gcd n (n + 1) : ℚ)

end

end A366151.P866127638981629012

namespace A366151

/-- `n*n*(n+3)/gcd(n, n+1)` -/
def P866127638981629012.Spec : Prop :=
  ∀ n, P866127638981629012.a n = (A366151 n : ℚ)

theorem P866127638981629012.correct : P866127638981629012.Spec := by
  intro n
  simp only [A366151, Nat.add_sub_cancel, A366151.P866127638981629012.a, A366151.P1265820382094336323.a, SequenceMachineLib.memo_apply]
  try norm_num [Nat.choose_two_right, Nat.factorial]
  try ring_nf

end A366151

/-! ## A366151.P6710733903008076950

`record[(1-n)²-(n+1)]²/(n+3)`
-/

namespace A366151.P6710733903008076950
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - (n : ℤ)) ^ 2 - (n + 1 : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) ^ 2 : ℚ) / (n + 3 : ℚ)

end

end A366151.P6710733903008076950

namespace A366151

/-- `record[(1-n)²-(n+1)]²/(n+3)` -/
def P6710733903008076950.Spec : Prop :=
  ∀ n, P6710733903008076950.a n = (A366151 n : ℚ)

end A366151

/-!
# A366152: a(n) = denominator(denominator(Bernoulli'(n, x)) / denominator(Bernoulli(n, 1))).

The programs for A366152, there is no canonical definition to state claims against.
-/

/-! ## A366152.P5221720037671840374

`gcd(A002790(n), A366571(n))`
-/

namespace A366152.P5221720037671840374
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002790 n) (A366571 n)

end

end A366152.P5221720037671840374

/-! ## A366152.P607730955738397123

`and(A094360(n), A366571(n))`
-/

namespace A366152.P607730955738397123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A094360 n) (A366571 n)

end

end A366152.P607730955738397123

/-! ## A366152.P14824825377321457327

`A366571(n)%(A027642(n)+1)`
-/

namespace A366152.P14824825377321457327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A366571 n) (A027642 n + 1)

end

end A366152.P14824825377321457327

/-! ## A366152.P67033372903402487

`A186421(A366571(n))`
-/

namespace A366152.P67033372903402487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186421 (A366571 n).toNat

end

end A366152.P67033372903402487

/-! ## A366152.P7307169303447059120

`A366571(n)^A324882(A027642(n))`
-/

namespace A366152.P7307169303447059120
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A366571 n : ℚ) ^ (A324882 (A027642 n).toNat : ℤ)

end

end A366152.P7307169303447059120

/-!
# A366153: Starting with the n-th shortest Cartesian line segment, a(n) is the minimal number of consecutive line segments required to make a simple polygon.

The programs for A366153, there is no canonical definition to state claims against.
-/

/-! ## A366153.P11746192729931121150

`A076826(A000992(n+3))+3`
-/

namespace A366153.P11746192729931121150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076826 (A000992 (n + 3)).toNat + 3

end

end A366153.P11746192729931121150

/-! ## A366153.P18164353810982477718

`A297770(C(A077085(n+1), A196879(n)))`
-/

namespace A366153.P18164353810982477718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297770 (Nat.choose (A077085 (n + 1)).toNat (A196879 n).toNat)

end

end A366153.P18164353810982477718

/-! ## A366153.P1688052193601948792

`A111867(A108951(n+1)+A003331(3*n+5))`
-/

namespace A366153.P1688052193601948792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111867 (A108951 (n + 1) + A003331 (3 * n + 5)).toNat

end

end A366153.P1688052193601948792

/-! ## A366153.P14129353255051017182

`A008687(A004754(A322261(A004754(A022442(n+1)))))`
-/

namespace A366153.P14129353255051017182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008687 (A004754 (A322261 (A004754 (A022442 (n + 1)).toNat).toNat).toNat).toNat

end

end A366153.P14129353255051017182

/-!
# A366155: Expansion of e.g.f. exp(x^3/(3*(1-x)^3)).

The programs for A366155, there is no canonical definition to state claims against.
-/

/-! ## A366155.P12055238417495076166

`A271707(A192957(n))`
-/

namespace A366155.P12055238417495076166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271707 (A192957 n).toNat

end

end A366155.P12055238417495076166

/-! ## A366155.P3714203588157117507

`A181786(A000165(n)+2)`
-/

namespace A366155.P3714203588157117507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181786 (A000165 n + 2).toNat

end

end A366155.P3714203588157117507

/-!
# A366158: Number of distinct determinants of 3 X 3 matrices with entries from {0, 1, ..., n}.

The programs for A366158, there is no canonical definition to state claims against.
-/

/-! ## A366158.P9211772428879907459

`A080605(A054569(∑[∑[n]]+1))`
-/

namespace A366158.P9211772428879907459
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080605 (A054569 (∑ j ∈ Finset.range (n + 1), f1 j + 1)).toNat

end

end A366158.P9211772428879907459

/-!
# A366160: Numbers whose binary expansion is not quasiperiodic.

The programs for A366160, there is no canonical definition to state claims against.
-/

/-! ## A366160.P5691074063748847131

`comp[A320441(n+1)-1]+1`
-/

namespace A366160.P5691074063748847131
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320441 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A366160.P5691074063748847131

/-! ## A366160.P17770471760415674199

`lt[A036290(A091064(n)), A003817(n)]`
-/

namespace A366160.P17770471760415674199
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036290 (A091064 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003817 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A366160.P17770471760415674199

/-! ## A366160.P10383003729692635629

`lt[A091064(n), A004526(A070941(n))]`
-/

namespace A366160.P10383003729692635629
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091064 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A070941 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A366160.P10383003729692635629

/-! ## A366160.P16592285586784439177

`lt[A062395(A242869(n)), A209860(2*n+1)]`
-/

namespace A366160.P16592285586784439177
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062395 (A242869 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209860 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A366160.P16592285586784439177

/-! ## A366160.P16439994137645744800

`lt[A006530(A090632(2*(n+2))), A392417(n+1)]`
-/

namespace A366160.P16439994137645744800
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A090632 (2 * (n + 2))).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392417 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A366160.P16439994137645744800

/-!
# A366167: Semiprimes that are the sum of two successive terms of A092192.

The programs for A366167, there is no canonical definition to state claims against.
-/

/-! ## A366167.P7511052039633011236

`A365448(A167614(n+1))`
-/

namespace A366167.P7511052039633011236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365448 (A167614 (n + 1)).toNat

end

end A366167.P7511052039633011236

/-! ## A366167.P6579007881137121511

`A365448(A000217(n+3)-n)`
-/

namespace A366167.P6579007881137121511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365448 (A000217 (n + 3) - (n : ℤ)).toNat

end

end A366167.P6579007881137121511

/-!
# A366168: Denominator of the second derivative of the n-th Bernoulli polynomial B(n,x).

The programs for A366168, there is no canonical definition to state claims against.
-/

/-! ## A366168.P2088126958084074589

`A318256(n)/A366573(n+1)`
-/

namespace A366168.P2088126958084074589
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A318256 n : ℚ) / (A366573 (n + 1) : ℚ)

end

end A366168.P2088126958084074589

/-! ## A366168.P16098267503812565976

`A144845(n+1)/(A366571(n+1)*A366573(n+1))`
-/

namespace A366168.P16098267503812565976
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A144845 (n + 1) : ℚ) / (A366571 (n + 1) * A366573 (n + 1) : ℚ)

end

end A366168.P16098267503812565976

/-! ## A366168.P9442058865468347096

`A027642(n+1)*A366426(n+1)/A366427(n+1)`
-/

namespace A366168.P9442058865468347096
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A027642 (n + 1) * A366426 (n + 1) : ℚ) / (A366427 (n + 1) : ℚ)

end

end A366168.P9442058865468347096

/-! ## A366168.P13096789216549981526

`A144845(n+1)/A366572(n+1)`
-/

namespace A366168.P13096789216549981526
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A144845 (n + 1) : ℚ) / (A366572 (n + 1) : ℚ)

end

end A366168.P13096789216549981526

/-! ## A366168.P2996474343667648380

`A366571(n+1)/A366572(n+1)*A318256(n)`
-/

namespace A366168.P2996474343667648380
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A366571 (n + 1) : ℚ) / (A366572 (n + 1) : ℚ) * (A318256 n : ℚ)

end

end A366168.P2996474343667648380

/-!
# A366169: Positive integers k such that the second derivative of the k-th Bernoulli polynomial B(k,x) contains only integer coefficients.

The programs for A366169, there is no canonical definition to state claims against.
-/

/-! ## A366169.P12099570199613826206

`eq[1, A366168(n+1)]+1`
-/

namespace A366169.P12099570199613826206
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366168 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A366169.P12099570199613826206

/-! ## A366169.P17551373607787795305

`lt[A366189(n+1), 3]+1`
-/

namespace A366169.P17551373607787795305
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366189 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A366169.P17551373607787795305

/-! ## A366169.P8973296322711178718

`eq[A324732(n+1), A366426(n)]`
-/

namespace A366169.P8973296322711178718
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324732 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366426 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A366169.P8973296322711178718

/-! ## A366169.P10631730146242082291

`eq[A324882(n+1), A366426(n)]`
-/

namespace A366169.P10631730146242082291
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324882 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366426 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A366169.P10631730146242082291

/-! ## A366169.P6072581974837197397

`eq[A327407(n+1), A366426(n)]`
-/

namespace A366169.P6072581974837197397
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327407 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366426 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A366169.P6072581974837197397

/-!
# A366176: G.f. A(x) satisfies A(x) = 1 + x*A(x)^3/(1 - x)^2.

The programs for A366176, there is no canonical definition to state claims against.
-/

/-! ## A366176.P13091957925658303871

`A123108(A000096(n)*A005802(n))`
-/

namespace A366176.P13091957925658303871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123108 (A000096 n * A005802 n).toNat

end

end A366176.P13091957925658303871

/-! ## A366176.P8640169680526761243

`A165109(n+1)+A004523(A154623(n))`
-/

namespace A366176.P8640169680526761243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165109 (n + 1) + A004523 (A154623 n).toNat

end

end A366176.P8640169680526761243

/-!
# A366177: G.f. A(x) satisfies A(x) = 1/(1 - x) + x*A(x)^3/(1 - x)^2.

The programs for A366177, there is no canonical definition to state claims against.
-/

/-! ## A366177.P12669850855905176436

`A258037(round((4-2/n)*a(n-1)))` with `a(0)=1`
-/

namespace A366177.P12669850855905176436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A258037 (SequenceMachineLib.roundAway ((4 - 2 / (n : ℚ)) * (a (n - 1) : ℚ))).toNat

end

end A366177.P12669850855905176436

/-!
# A366178: G.f. A(x) satisfies A(x) = 1/(1 - x) + x*A(x)^3/(1 - x)^3.

The programs for A366178, there is no canonical definition to state claims against.
-/

/-! ## A366178.P18099014655447306771

`A296610(A052911(n))`
-/

namespace A366178.P18099014655447306771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296610 (A052911 n).toNat

end

end A366178.P18099014655447306771

/-!
# A366179: G.f. A(x) satisfies A(x) = 1/(1 - x)^2 + x*A(x)^3/(1 - x).

The programs for A366179, there is no canonical definition to state claims against.
-/

/-! ## A366179.P13935937310971815168

`∑[A366178(n)]`
-/

namespace A366179.P13935937310971815168
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366178 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A366179.P13935937310971815168

/-!
# A366180: G.f. A(x) satisfies A(x) = 1/(1 - x)^2 + x*A(x)^3/(1 - x)^3.

The programs for A366180, there is no canonical definition to state claims against.
-/

/-! ## A366180.P9817716061380991553

`A234016(A005810(n)+2)`
-/

namespace A366180.P9817716061380991553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234016 (A005810 n + 2).toNat

end

end A366180.P9817716061380991553

/-!
# A366182: G.f. A(x) satisfies A(x) = 1/(1 - x)^3 + x*A(x)^3/(1 - x).

The programs for A366182, there is no canonical definition to state claims against.
-/

/-! ## A366182.P6047406898275894112

`∑[A366180(n)]`
-/

namespace A366182.P6047406898275894112
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366180 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A366182.P6047406898275894112

/-!
# A366183: G.f. A(x) satisfies A(x) = 1/(1 - x)^3 + x*A(x)^3/(1 - x)^2.

The programs for A366183, there is no canonical definition to state claims against.
-/

/-! ## A366183.P7628475865902750721

`A284560(A005258(n)+1+n)`
-/

namespace A366183.P7628475865902750721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284560 (A005258 n + 1 + (n : ℤ)).toNat

end

end A366183.P7628475865902750721

/-!
# A366184: G.f. A(x) satisfies A(x) = (1 + x*A(x)^3)/(1 - x)^3.

The programs for A366184, there is no canonical definition to state claims against.
-/

/-! ## A366184.P11944530655855465135

`A265357(A292187(n))+n+n`
-/

namespace A366184.P11944530655855465135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265357 (A292187 n).toNat + (n : ℤ) + (n : ℤ)

end

end A366184.P11944530655855465135

/-!
# A366186: Positive integers k such that the third derivative of the k-th Bernoulli polynomial B(k, x) contains only integer coefficients.

The programs for A366186, there is no canonical definition to state claims against.
-/

/-! ## A366186.P16855585370879960946

`lt[A000079(A366189(n+1)), 10]+1`
-/

namespace A366186.P16855585370879960946
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (A366189 (n + 1)).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A366186.P16855585370879960946

/-! ## A366186.P3021069988178558058

`lt[A331873(n+1), A004222(A154727(n+1))]`
-/

namespace A366186.P3021069988178558058
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331873 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004222 (A154727 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A366186.P3021069988178558058

/-! ## A366186.P10516150238522152450

`lt[A091203(A341481(n+4)), A056000(n)]`
-/

namespace A366186.P10516150238522152450
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091203 (A341481 (n + 4)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056000 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A366186.P10516150238522152450

/-! ## A366186.P13363870848043392171

`lt[A091203(A341481(n+4)), A056115(n)]`
-/

namespace A366186.P13363870848043392171
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091203 (A341481 (n + 4)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056115 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A366186.P13363870848043392171

/-!
# A366187: Positive integers k such that the fourth derivative of the k-th Bernoulli polynomial B(k, x) contains only integer coefficients.

The programs for A366187, there is no canonical definition to state claims against.
-/

/-! ## A366187.P11291516079495930226

`lt[A366189(n+1), 5]+1`
-/

namespace A366187.P11291516079495930226
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366189 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A366187.P11291516079495930226

/-! ## A366187.P6762152175293973576

`∑[A365685(∑[A007318(3*n)])]`
-/

namespace A366187.P6762152175293973576
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (3 * n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365685 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A366187.P6762152175293973576

/-! ## A366187.P15527487006813847590

`∑[ceil(A335820(n+1)/13)]`
-/

namespace A366187.P15527487006813847590
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A335820 (n + 1) : ℚ) / 13⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A366187.P15527487006813847590

/-! ## A366187.P2362206353560995960

`comp[Δ[A214912(A162753(2*(n+2)))]]`
-/

namespace A366187.P2362206353560995960
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214912 (A162753 (2 * (n + 2))).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A366187.P2362206353560995960

/-! ## A366187.P16557637255191802366

`lt[A151843(A139253(n+1)), A034936(n+1)]`
-/

namespace A366187.P16557637255191802366
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151843 (A139253 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034936 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A366187.P16557637255191802366

/-!
# A366188: Positive integers k such that the fifth derivative of the k-th Bernoulli polynomial B(k, x) contains only integer coefficients.

The programs for A366188, there is no canonical definition to state claims against.
-/

/-! ## A366188.P12516927433639632221

`lt[A157153(A275714(n+3)), A276625(n+1)]`
-/

namespace A366188.P12516927433639632221
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157153 (A275714 (n + 3)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276625 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A366188.P12516927433639632221

/-! ## A366188.P16041614523594402415

`lt[A368798(A050053(n+1)), n+1]`
-/

namespace A366188.P16041614523594402415
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368798 (A050053 (n + 1)).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A366188.P16041614523594402415

/-! ## A366188.P11567736715768713688

`lt[exp(A152140(2*n)), A353847(n+3)]`
-/

namespace A366188.P11567736715768713688
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.exp (A152140 (2 * n) : ℝ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353847 (n + 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℝ)) n

end

end A366188.P11567736715768713688

/-! ## A366188.P4544212561244183453

`lt[A023891(A050029(n+1)), A051682(n)]`
-/

namespace A366188.P4544212561244183453
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023891 (A050029 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051682 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A366188.P4544212561244183453

/-! ## A366188.P4667640772200068821

`lt[A000217(A168561(2*(n+1))), A246325(n)]`
-/

namespace A366188.P4667640772200068821
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (A168561 (2 * (n + 1))).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246325 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A366188.P4667640772200068821

/-! ## A366188.P455635993565204330

`lt[A137276(2*n)², A255649(n)]`
-/

namespace A366188.P455635993565204330
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137276 (2 * n) ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255649 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A366188.P455635993565204330

/-! ## A366188.P14721654817331900993

`lt[abs(A049310(2*(n+1))), A330104(n+1)]`
-/

namespace A366188.P14721654817331900993
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A049310 (2 * (n + 1))|

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330104 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A366188.P14721654817331900993

/-! ## A366188.P355274104958832773

`lt[A307365(A173527(n+1)), A302505(n+1)]`
-/

namespace A366188.P355274104958832773
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307365 (A173527 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302505 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A366188.P355274104958832773

/-!
# A366189: a(n) is the positive integer k such that the k-th derivative of the n-th Bernoulli polynomial B(n, x) contains only integer coefficients but no lower derivative of B(n, x) has this property.

The programs for A366189, there is no canonical definition to state claims against.
-/

/-! ## A366189.P16864498122899193617

`A020639(A185284(2*(n+1))+A072883(n+1))`
-/

namespace A366189.P16864498122899193617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A185284 (2 * (n + 1)) + A072883 (n + 1)).toNat

end

end A366189.P16864498122899193617

/-! ## A366189.P3350527081371045177

`C(A087039(2*(n+2)), A000034(A059966(n+1)))`
-/

namespace A366189.P3350527081371045177
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A087039 (2 * (n + 2))).toNat (A000034 (A059966 (n + 1)).toNat).toNat

end

end A366189.P3350527081371045177

/-! ## A366189.P8004491093583591609

`A379300(A183322(3*(n+1)))+1`
-/

namespace A366189.P8004491093583591609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379300 (A183322 (3 * (n + 1))).toNat + 1

end

end A366189.P8004491093583591609

/-! ## A366189.P12583957158038979

`A001221(A000051(n+1)-A279614(n+1))`
-/

namespace A366189.P12583957158038979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A000051 (n + 1) - A279614 (n + 1)).toNat

end

end A366189.P12583957158038979

/-! ## A366189.P6080886706526624956

`A286561(A133529(n+1))+A107286(n+2)`
-/

namespace A366189.P6080886706526624956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286561 (A133529 (n + 1)).toNat + A107286 (n + 2)

end

end A366189.P6080886706526624956

/-!
# A366190: Minimal lengths of prime knots formed by orthogonal unit line segments of the cubic lattice.

The programs for A366190, there is no canonical definition to state claims against.
-/

/-! ## A366190.P11796014424631995356

`A076770(n+1)%A308834(n+2)`
-/

namespace A366190.P11796014424631995356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A076770 (n + 1)) (A308834 (n + 2))

end

end A366190.P11796014424631995356

/-! ## A366190.P2852518224025907545

`∪[A139827(n+1)², A076770(n+2)]`
-/

namespace A366190.P2852518224025907545
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139827 (n + 1) ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076770 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A366190.P2852518224025907545

/-! ## A366190.P7324052052483666254

`∪[A235266(2*n+1)², A076770(n+2)]`
-/

namespace A366190.P7324052052483666254
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235266 (2 * n + 1) ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076770 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A366190.P7324052052483666254

/-! ## A366190.P12997905695763933810

`A076770(n+1)%A000330(A080557(n))`
-/

namespace A366190.P12997905695763933810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A076770 (n + 1)) (A000330 (A080557 n).toNat)

end

end A366190.P12997905695763933810

/-! ## A366190.P12937885031038786302

`lt[A000120(A180560(n+1)), A061358(n)]`
-/

namespace A366190.P12937885031038786302
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A180560 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061358 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A366190.P12937885031038786302

/-!
# A366191: Enumeration of the rational numbers in the closed real interval [0, 1] after Cantor.

The programs for A366191, there is no canonical definition to state claims against.
-/

/-! ## A366191.P5803625880221946898

`A000120(A109375(n)^A171872(n))`
-/

namespace A366191.P5803625880221946898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (SequenceMachineLib.roundAway ((A109375 n : ℚ) ^ (A171872 n : ℤ))).toNat

end

end A366191.P5803625880221946898

/-! ## A366191.P10856490761555968551

`A346702(A030101(n))%A273803(n+1)`
-/

namespace A366191.P10856490761555968551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A346702 (A030101 n).toNat) (A273803 (n + 1))

end

end A366191.P10856490761555968551

/-! ## A366191.P12433190930598713381

`A346702(A030101(n)%A346710(2*n+3))`
-/

namespace A366191.P12433190930598713381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346702 (Int.tmod (A030101 n) (A346710 (2 * n + 3))).toNat

end

end A366191.P12433190930598713381

/-! ## A366191.P6056157183648787683

`A001221(A125683(n+2)+A007814(3*n+5))`
-/

namespace A366191.P6056157183648787683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A125683 (n + 2) + A007814 (3 * n + 5)).toNat

end

end A366191.P6056157183648787683

/-! ## A366191.P382033636387997951

`A176725(A326579(n))`
-/

namespace A366191.P382033636387997951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176725 (A326579 n).toNat

end

end A366191.P382033636387997951

/-!
# A366193: For n >= 0, a(n) is the least x >= 0 such that x^2 + (x + 2*n)^2 + 1 is prime.

The programs for A366193, there is no canonical definition to state claims against.
-/

/-! ## A366193.P7516643756343063213

`A375707(A270339(2*(n+2)))*A375707(n+5)`
-/

namespace A366193.P7516643756343063213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375707 (A270339 (2 * (n + 2))).toNat * A375707 (n + 5)

end

end A366193.P7516643756343063213

/-!
# A366194: Number of limit dominating binary relations on [n].

The programs for A366194, there is no canonical definition to state claims against.
-/

/-! ## A366194.P11256146514073934409

`A280917(n*(n+3)/2)-A025581(3*n+2)`
-/

namespace A366194.P11256146514073934409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280917 (SequenceMachineLib.roundAway ((n : ℚ) * ((n + 3 : ℚ) / 2))).toNat - A025581 (3 * n + 2)

end

end A366194.P11256146514073934409

/-!
# A366195: Integers whose binary expansion has the property that there exists a length-k substring of bits in the expansion that is strictly lexicographically later than the first k bits.

The programs for A366195, there is no canonical definition to state claims against.
-/

/-! ## A366195.P7516985937935195505

`lt[record[A089868(n)], A333693(n)]`
-/

namespace A366195.P7516985937935195505
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089868 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333693 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f3 j) n

end

end A366195.P7516985937935195505

/-! ## A366195.P17769734457793164591

`lt[A007865(n), A007865(A333693(n))]`
-/

namespace A366195.P17769734457793164591
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007865 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007865 (A333693 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A366195.P17769734457793164591

/-! ## A366195.P7041460678218197615

`lt[A087077(n), A087077(A333693(n))]`
-/

namespace A366195.P7041460678218197615
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087077 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087077 (A333693 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A366195.P7041460678218197615

/-! ## A366195.P17760592765929593312

`lt[A363994(n), A363994(A057889(n))]`
-/

namespace A366195.P17760592765929593312
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363994 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363994 (A057889 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A366195.P17760592765929593312

/-! ## A366195.P8879741661269117073

`lt[A364349(n), A364349(A057889(n))]`
-/

namespace A366195.P8879741661269117073
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364349 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364349 (A057889 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A366195.P8879741661269117073

/-!
# A366196: The number of ways to express n^n in the form a^b for positive integers a and b.

The programs for A366196, there is no canonical definition to state claims against.
-/

/-! ## A366196.P8727514553378093099

`A000005((n+2)*A052409(n+2))`
-/

namespace A366196.P8727514553378093099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 ((n + 2 : ℤ) * A052409 (n + 2)).toNat

end

end A366196.P8727514553378093099

/-! ## A366196.P6402149524247240606

`A000005((n+2)*A253641(n+2))`
-/

namespace A366196.P6402149524247240606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 ((n + 2 : ℤ) * A253641 (n + 2)).toNat

end

end A366196.P6402149524247240606

/-! ## A366196.P10023814606331371663

`A216197(A346103(n+2))`
-/

namespace A366196.P10023814606331371663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216197 (A346103 (n + 2)).toNat

end

end A366196.P10023814606331371663

/-!
# A366197: Lexicographically earliest permutation of the nonnegative integers such that the absolute difference between the digitsum of a(n) and the digitsum of a(n+2) = 1.

The programs for A366197, there is no canonical definition to state claims against.
-/

/-! ## A366197.P6757045675753309092

`A000005(A000079(a(n-2)))` with `a(0)=0, a(1)=1, a(2)=10`
-/

namespace A366197.P6757045675753309092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 10] fun n a =>
  A000005 (A000079 (a (n - 2)).toNat).toNat

end

end A366197.P6757045675753309092

/-! ## A366197.P2117723448299373210

`(a(n-2)+1)*A040001(A341234(n+1))` with `a(0)=0, a(1)=1, a(2)=10`
-/

namespace A366197.P2117723448299373210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 10] fun n a =>
  (a (n - 2) + 1) * A040001 (A341234 (n + 1)).toNat

end

end A366197.P2117723448299373210

/-! ## A366197.P17703956716838045113

`A073731(A335043(n+1))-A040001(n)`
-/

namespace A366197.P17703956716838045113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073731 ((A335043 (n + 1)).toNat + 10) - A040001 n

end

end A366197.P17703956716838045113

/-! ## A366197.P5687480325041125013

`A073731(A335043(n+1))-A000120(A072946(n))`
-/

namespace A366197.P5687480325041125013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073731 ((A335043 (n + 1)).toNat + 10) - A000120 (A072946 n).toNat

end

end A366197.P5687480325041125013

/-!
# A366199: Expansion of e.g.f. exp(4*(exp(x) - 1) + 2*x).

The programs for A366199, there is no canonical definition to state claims against.
-/

/-! ## A366199.P5347606125673045165

`Δ[A078945(n)/4]`
-/

namespace A366199.P5347606125673045165
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A078945 n : ℚ) / 4

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A366199.P5347606125673045165

