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
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C031
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C037
import Seq.B000.C038
import Seq.B000.C039
import Seq.B000.C040
import Seq.B000.C042
import Seq.B000.C045
import Seq.B000.C046
import Seq.B000.C048
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C008
import Seq.B001.C009
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
import Seq.B003.C005
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C001
import Seq.B006.C000
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
# A226005: Lexicographically earliest sequence such that (a(n), a(n+1)) runs through all the pairs of nonnegative integers exactly once, with the constraint that a(n)=0 iff n is a square.

The programs for A226005, there is no canonical definition to state claims against.
-/

/-! ## A226005.P3613096736997009026

`A349520(A028392(n+1))-1`
-/

namespace A226005.P3613096736997009026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349520 (A028392 (n + 1)).toNat - 1

end

end A226005.P3613096736997009026

/-! ## A226005.P8602720578037671369

`A349520(A078358(n+1))-1`
-/

namespace A226005.P8602720578037671369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349520 (A078358 (n + 1)).toNat - 1

end

end A226005.P8602720578037671369

/-! ## A226005.P3542793097943478671

`A349520(A183570(n)+1)-1`
-/

namespace A226005.P3542793097943478671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349520 (A183570 n + 1).toNat - 1

end

end A226005.P3542793097943478671

/-! ## A226005.P9411542091126202770

`A349520(A127366(n+1))-1`
-/

namespace A226005.P9411542091126202770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349520 (A127366 (n + 1)).toNat - 1

end

end A226005.P9411542091126202770

/-! ## A226005.P10612303147957993650

`A349520(A183570(n+1))-1`
-/

namespace A226005.P10612303147957993650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349520 (A183570 (n + 1)).toNat - 1

end

end A226005.P10612303147957993650

/-! ## A226005.P7136082075385776071

`A097285(A127366(n)+1)-1`
-/

namespace A226005.P7136082075385776071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097285 (A127366 n + 1).toNat - 1

end

end A226005.P7136082075385776071

/-! ## A226005.P1042814017421067611

`A330709(comp[∑[2*n]])`
-/

namespace A226005.P1042814017421067611
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330709 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A226005.P1042814017421067611

/-! ## A226005.P4029120336348432324

`A329949(A028310(n))-1`
-/

namespace A226005.P4029120336348432324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329949 (A028310 n).toNat - 1

end

end A226005.P4029120336348432324

/-! ## A226005.P17286365374653232282

`A329949(A143182(∑[n]-n))-1`
-/

namespace A226005.P17286365374653232282
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329949 (A143182 (∑ j ∈ Finset.range (n + 1), f1 j - n)).toNat - 1

end

end A226005.P17286365374653232282

/-! ## A226005.P16243177254643622378

`A329949(char[A133499(n)]+n)-1`
-/

namespace A226005.P16243177254643622378
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133499 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329949 ((if ∃ j, f1 j = (n : ℤ) then 1 else 0) + n) - 1

end

end A226005.P16243177254643622378

/-! ## A226005.P11389174283714309416

`A329949(A143051(n+1))-1`
-/

namespace A226005.P11389174283714309416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329949 (A143051 (n + 1)).toNat - 1

end

end A226005.P11389174283714309416

/-! ## A226005.P7532276499866683490

`A305615(A020703(n+1))`
-/

namespace A226005.P7532276499866683490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305615 (A020703 (n + 1)).toNat

end

end A226005.P7532276499866683490

/-!
# A226008: a(0) = 0; for n>0, a(n) = denominator(1/4 - 4/n^2).

The programs for A226008, the canonical program `A226008.P11268386641324381222` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A226008 has offset 0).

The definition of A226008 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A226008.P17996797066128904447

`(2*n/gcd(8, n+4))²`
-/

namespace A226008.P17996797066128904447
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 * ((n : ℚ) / (Nat.gcd 8 (n + 4) : ℚ))) ^ 2

end

end A226008.P17996797066128904447

namespace A226008

/-- `(2*n/gcd(8, n+4))²` -/
def P17996797066128904447.Spec : Prop :=
  ∀ n, P17996797066128904447.a n = (A226008 n : ℚ)

end A226008

/-! ## A226008.P12722868474490191564

`(lcm(2, n)/gcd(n, ∑[n+2]))²`
-/

namespace A226008.P12722868474490191564
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((Nat.lcm 2 n : ℚ) / (Nat.gcd n (∑ j ∈ Finset.range (n + 1), f1 j) : ℚ)) ^ 2

end

end A226008.P12722868474490191564

namespace A226008

/-- `(lcm(2, n)/gcd(n, ∑[n+2]))²` -/
def P12722868474490191564.Spec : Prop :=
  ∀ n, P12722868474490191564.a n = (A226008 n : ℚ)

end A226008

/-! ## A226008.P4300119738105805334

`(2*n/gcd(4-n, 2*n))²`
-/

namespace A226008.P4300119738105805334
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((2 * n : ℚ) / (Int.gcd (4 - (n : ℤ)) (2 * n : ℤ) : ℚ)) ^ 2

end

end A226008.P4300119738105805334

namespace A226008

/-- `(2*n/gcd(4-n, 2*n))²` -/
def P4300119738105805334.Spec : Prop :=
  ∀ n, P4300119738105805334.a n = (A226008 n : ℚ)

end A226008

/-! ## A226008.P11268386641324381222

`A225975(n)²`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A226008

/-- `A225975(n)²` -/
def P11268386641324381222.Spec : Prop :=
  ∀ n, P11268386641324381222.a n = A226008 n

theorem P11268386641324381222.correct : P11268386641324381222.Spec := by
  intro n
  simp only [A226008]

end A226008

/-! ## A226008.P14375688726217919611

`A225975(n)^A020639(2*(n+1))`
-/

namespace A226008.P14375688726217919611
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A225975 n : ℚ) ^ (A020639 (2 * (n + 1)) : ℤ)

end

end A226008.P14375688726217919611

namespace A226008

/-- `A225975(n)^A020639(2*(n+1))` -/
def P14375688726217919611.Spec : Prop :=
  ∀ n, P14375688726217919611.a n = (A226008 n : ℚ)

end A226008

/-! ## A226008.P13307744233648237782

`(A005843(n)/A109011(A004453(n)))²`
-/

namespace A226008.P13307744233648237782
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A005843 n : ℚ) / (A109011 (A004453 n).toNat : ℚ)) ^ 2

end

end A226008.P13307744233648237782

namespace A226008

/-- `(A005843(n)/A109011(A004453(n)))²` -/
def P13307744233648237782.Spec : Prop :=
  ∀ n, P13307744233648237782.a n = (A226008 n : ℚ)

end A226008

/-! ## A226008.P13367442989656266200

`gcd(A109043(n), A227316(A026741(n)))²`
-/

namespace A226008.P13367442989656266200
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A109043 n) (A227316 (A026741 n).toNat) ^ 2

end

end A226008.P13367442989656266200

namespace A226008

/-- `gcd(A109043(n), A227316(A026741(n)))²` -/
def P13367442989656266200.Spec : Prop :=
  ∀ n, (P13367442989656266200.a n : ℤ) = A226008 n

theorem P13367442989656266200.correct : P13367442989656266200.Spec := by
  intro n
  simp only [A226008, Nat.add_sub_cancel, A226008.P13367442989656266200.a, A226008.P11268386641324381222.a, A026741, A026741.P7397200255647832146.a, A109043, A109043.P13676580040803735715.a, A225975, A225975.P14240903064831222647.a, A227316, A227316.P17659401522069435075.a, A000217, A000217.P10269402890581615239.a, A130658, A130658.P17554939015796868672.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A226008

/-! ## A226008.P16695173558027656771

`A225975(n)^A000005(A008578(n+2))`
-/

namespace A226008.P16695173558027656771
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A225975 n : ℚ) ^ (A000005 (A008578 (n + 2)).toNat : ℤ)

end

end A226008.P16695173558027656771

namespace A226008

/-- `A225975(n)^A000005(A008578(n+2))` -/
def P16695173558027656771.Spec : Prop :=
  ∀ n, P16695173558027656771.a n = (A226008 n : ℚ)

end A226008

/-! ## A226008.P10887451417174194258

`(A038608(n)-A022998(A255347(n)))²`
-/

namespace A226008.P10887451417174194258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A038608 n - A022998 (A255347 n).toNat) ^ 2

end

end A226008.P10887451417174194258

namespace A226008

/-- `(A038608(n)-A022998(A255347(n)))²` -/
def P10887451417174194258.Spec : Prop :=
  ∀ n, P10887451417174194258.a n = A226008 n

end A226008

/-! ## A226008.P5978668830621788823

`A000290(gcd(2*n, A225975(n)))`
-/

namespace A226008.P5978668830621788823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000290 (Int.gcd (2 * n : ℤ) (A225975 n))

end

end A226008.P5978668830621788823

namespace A226008

/-- `A000290(gcd(2*n, A225975(n)))` -/
def P5978668830621788823.Spec : Prop :=
  ∀ n, P5978668830621788823.a n = A226008 n

end A226008

/-! ## A226008.P6136446018379379530

`A000290(A225975(n)%(2*(n+1)))`
-/

namespace A226008.P6136446018379379530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000290 (Int.tmod (A225975 n) (2 * (n + 1) : ℤ)).toNat

end

end A226008.P6136446018379379530

namespace A226008

/-- `A000290(A225975(n)%(2*(n+1)))` -/
def P6136446018379379530.Spec : Prop :=
  ∀ n, P6136446018379379530.a n = A226008 n

end A226008

/-! ## A226008.P9195496986270901049

`A225975(A026741(2*n))*A225975(n)`
-/

namespace A226008.P9195496986270901049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225975 (A026741 (2 * n)).toNat * A225975 n

end

end A226008.P9195496986270901049

namespace A226008

/-- `A225975(A026741(2*n))*A225975(n)` -/
def P9195496986270901049.Spec : Prop :=
  ∀ n, P9195496986270901049.a n = A226008 n

end A226008

/-! ## A226008.P7340492183003884451

`A022998(A225975(n))*A106609(A022998(n))`
-/

namespace A226008.P7340492183003884451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022998 (A225975 n).toNat * A106609 (A022998 n).toNat

end

end A226008.P7340492183003884451

namespace A226008

/-- `A022998(A225975(n))*A106609(A022998(n))` -/
def P7340492183003884451.Spec : Prop :=
  ∀ n, P7340492183003884451.a n = A226008 n

end A226008

/-! ## A226008.P14674920081582929390

`A225975(n)^A000034(2*n+1)`
-/

namespace A226008.P14674920081582929390
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A225975 n : ℚ) ^ (A000034 (2 * n + 1) : ℤ)

end

end A226008.P14674920081582929390

namespace A226008

/-- `A225975(n)^A000034(2*n+1)` -/
def P14674920081582929390.Spec : Prop :=
  ∀ n, P14674920081582929390.a n = (A226008 n : ℚ)

end A226008

/-! ## A226008.P6162246090580687109

`A225975(A064680(2*n))*A225975(n)`
-/

namespace A226008.P6162246090580687109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225975 (A064680 (2 * n)).toNat * A225975 n

end

end A226008.P6162246090580687109

namespace A226008

/-- `A225975(A064680(2*n))*A225975(n)` -/
def P6162246090580687109.Spec : Prop :=
  ∀ n, P6162246090580687109.a n = A226008 n

end A226008

/-! ## A226008.P13282491972671978

`A225975(A225975(2*n))*A225975(n)`
-/

namespace A226008.P13282491972671978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225975 (A225975 (2 * n)).toNat * A225975 n

end

end A226008.P13282491972671978

namespace A226008

/-- `A225975(A225975(2*n))*A225975(n)` -/
def P13282491972671978.Spec : Prop :=
  ∀ n, P13282491972671978.a n = A226008 n

end A226008

/-! ## A226008.P507413747144059704

`A181318(A227107(n))`
-/

namespace A226008.P507413747144059704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181318 (A227107 n).toNat

end

end A226008.P507413747144059704

namespace A226008

/-- `A181318(A227107(n))` -/
def P507413747144059704.Spec : Prop :=
  ∀ n, P507413747144059704.a n = A226008 n

end A226008

/-! ## A226008.P43991223387790118

`A225975(n)^A001227(A000040(n+1))`
-/

namespace A226008.P43991223387790118
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A225975 n : ℚ) ^ (A001227 (A000040 (n + 1)).toNat : ℤ)

end

end A226008.P43991223387790118

namespace A226008

/-- `A225975(n)^A001227(A000040(n+1))` -/
def P43991223387790118.Spec : Prop :=
  ∀ n, P43991223387790118.a n = (A226008 n : ℚ)

end A226008

/-! ## A226008.P15550794190481902229

`A106609(2*A227107(n))²`
-/

namespace A226008.P15550794190481902229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106609 (2 * A227107 n).toNat ^ 2

end

end A226008.P15550794190481902229

namespace A226008

/-- `A106609(2*A227107(n))²` -/
def P15550794190481902229.Spec : Prop :=
  ∀ n, P15550794190481902229.a n = A226008 n

end A226008

/-!
# A226011: Numbers k such that nonprime(k) divides k^2.

The programs for A226011, there is no canonical definition to state claims against.
-/

/-! ## A226011.P16817375834329926464

`lt[(n+1)²%A018252(n+1), 1]+1`
-/

namespace A226011.P16817375834329926464
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((n + 1) ^ 2 : ℤ) (A018252 (n + 1))

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A226011.P16817375834329926464

/-! ## A226011.P12132065890421850463

`2*n*A354803(a(n-1))` with `a(0)=1`
-/

namespace A226011.P12132065890421850463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (2 * n : ℤ) * A354803 (a (n - 1)).toNat

end

end A226011.P12132065890421850463

/-!
# A226012: Number of unimodal functions f:[n]->[2n].

The programs for A226012, there is no canonical definition to state claims against.
-/

/-! ## A226012.P14018383915811120712

`A226031(∑[n+3])`
-/

namespace A226012.P14018383915811120712
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226031 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A226012.P14018383915811120712

/-! ## A226012.P5011822291722145073

`A071922(A022266(n))`
-/

namespace A226012.P5011822291722145073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071922 (A022266 n).toNat

end

end A226012.P5011822291722145073

/-! ## A226012.P4035290121324807681

`A210219(A117625(n))`
-/

namespace A226012.P4035290121324807681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210219 (A117625 n).toNat

end

end A226012.P4035290121324807681

/-! ## A226012.P1458187646445592623

`A071921(A062725(n))`
-/

namespace A226012.P1458187646445592623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071921 (A062725 n).toNat

end

end A226012.P1458187646445592623

/-! ## A226012.P3374696962266830572

`A071921(A064225(n)-1)`
-/

namespace A226012.P3374696962266830572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071921 (A064225 n - 1).toNat

end

end A226012.P3374696962266830572

/-!
# A226013: Number of unimodal functions f:[n]->[2n] with f(1)<>1 and f(i)<>f(i+1).

The programs for A226013, there is no canonical definition to state claims against.
-/

/-! ## A226013.P15647315290135544272

`A035317(A125201(n))`
-/

namespace A226013.P15647315290135544272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035317 (A125201 n).toNat

end

end A226013.P15647315290135544272

/-! ## A226013.P9155177796032114250

`A128176(A360416(n))`
-/

namespace A226013.P9155177796032114250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128176 (A360416 n).toNat

end

end A226013.P9155177796032114250

/-! ## A226013.P13081097664958421290

`A135228(A383464(n))`
-/

namespace A226013.P13081097664958421290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135228 (A383464 n).toNat

end

end A226013.P13081097664958421290

/-! ## A226013.P1850385296241888589

`A035317(A051870(n)+1)`
-/

namespace A226013.P1850385296241888589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035317 (A051870 n + 1).toNat

end

end A226013.P1850385296241888589

/-! ## A226013.P14484633823322546014

`A112465(A008527(n)-(n+1))`
-/

namespace A226013.P14484633823322546014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112465 (A008527 n - (n + 1 : ℤ)).toNat

end

end A226013.P14484633823322546014

/-!
# A226014: Primes p such that A179382((p+1)/2) = (p-1)/(2^x) for some x>0.

The programs for A226014, there is no canonical definition to state claims against.
-/

/-! ## A226014.P1507348715019071737

`p?[A256827(A296870(n+1))]`
-/

namespace A226014.P1507348715019071737
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256827 (A296870 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A226014.P1507348715019071737

/-! ## A226014.P10344478392644957781

`p?[∑[A339584(A111313(n+1))]]`
-/

namespace A226014.P10344478392644957781
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339584 (A111313 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A226014.P10344478392644957781

/-! ## A226014.P616265346555353176

`p?[eq[1, A285345(A097502(n+1))]]`
-/

namespace A226014.P616265346555353176
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285345 (A097502 (n + 1)).toNat

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A226014.P616265346555353176

/-! ## A226014.P13975300189572248180

`A254764(A266250(n+1))`
-/

namespace A226014.P13975300189572248180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254764 (A266250 (n + 1)).toNat

end

end A226014.P13975300189572248180

/-! ## A226014.P18204691131373208038

`A180346(A348579(n+1))`
-/

namespace A226014.P18204691131373208038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180346 (A348579 (n + 1)).toNat

end

end A226014.P18204691131373208038

/-!
# A226016: Primes with alternate digits even and odd, and most significant digit even.

The programs for A226016, there is no canonical definition to state claims against.
-/

/-! ## A226016.P8957230938243306031

`A068887(A065475(n+1))`
-/

namespace A226016.P8957230938243306031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068887 (A065475 (n + 1)).toNat

end

end A226016.P8957230938243306031

/-! ## A226016.P17694180855928377126

`A068887(A181440(n+2))`
-/

namespace A226016.P17694180855928377126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068887 (A181440 (n + 2)).toNat

end

end A226016.P17694180855928377126

/-! ## A226016.P2371411678827186081

`A068887(A184985(n+2))`
-/

namespace A226016.P2371411678827186081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068887 (A184985 (n + 2)).toNat

end

end A226016.P2371411678827186081

/-! ## A226016.P8521505413645667533

`A068887(n+2)-A010051(2*(n+1))`
-/

namespace A226016.P8521505413645667533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068887 (n + 2) - A010051 (2 * (n + 1))

end

end A226016.P8521505413645667533

/-! ## A226016.P7247340487539517210

`p?[A062285(n+1)]`
-/

namespace A226016.P7247340487539517210
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062285 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A226016.P7247340487539517210

/-! ## A226016.P325034816394581379

`∩[A030144(n+1), A062285(n+1)]`
-/

namespace A226016.P325034816394581379
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030144 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062285 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A226016.P325034816394581379

/-! ## A226016.P6782580736521400530

`∩[A062285(n+1), A068887(n+1)]`
-/

namespace A226016.P6782580736521400530
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062285 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068887 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A226016.P6782580736521400530

/-! ## A226016.P10509950747580403209

`∩[A355430(n+1), A097962(n)]`
-/

namespace A226016.P10509950747580403209
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355430 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097962 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A226016.P10509950747580403209

/-! ## A226016.P7704628617454939184

`∩[A030144(n+1), A355430(n+1)]`
-/

namespace A226016.P7704628617454939184
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030144 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355430 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A226016.P7704628617454939184

/-! ## A226016.P17548499047200486377

`∩[A062285(n+1), A355430(n+1)]`
-/

namespace A226016.P17548499047200486377
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062285 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355430 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A226016.P17548499047200486377

/-! ## A226016.P18088429613070962979

`∩[A068887(n+1), A355430(n+1)]`
-/

namespace A226016.P18088429613070962979
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068887 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355430 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A226016.P18088429613070962979

/-! ## A226016.P18399012751478637849

`∩[A062285(n+1), A091727(n+1)]`
-/

namespace A226016.P18399012751478637849
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062285 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091727 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A226016.P18399012751478637849

/-! ## A226016.P7032454744673815818

`∩[A062285(n+1), A240920(n+1)]`
-/

namespace A226016.P7032454744673815818
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062285 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240920 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A226016.P7032454744673815818

/-! ## A226016.P4387544174660110784

`A064614(A068887(n+2))`
-/

namespace A226016.P4387544174660110784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064614 (A068887 (n + 2)).toNat

end

end A226016.P4387544174660110784

/-! ## A226016.P17620179499917363703

`filter[A068887(n+1), A011655(#)]`
-/

namespace A226016.P17620179499917363703
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068887 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A011655 (f1 j).toNat = 1) n)

end

end A226016.P17620179499917363703

/-! ## A226016.P9665784963907777360

`filter[A068887(n+1), A014578(#)]`
-/

namespace A226016.P9665784963907777360
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068887 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A014578 (f1 j).toNat = 1) n)

end

end A226016.P9665784963907777360

/-! ## A226016.P13001152393616638243

`filter[A068887(n+1), A043545(#)]`
-/

namespace A226016.P13001152393616638243
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068887 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A043545 (f1 j).toNat = 1) n)

end

end A226016.P13001152393616638243

/-! ## A226016.P11368212516782613632

`filter[A068887(n+1), A072165(#)]`
-/

namespace A226016.P11368212516782613632
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068887 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A072165 (f1 j).toNat = 1) n)

end

end A226016.P11368212516782613632

/-! ## A226016.P839645009194659803

`filter[A068887(n+1), A123110(#)]`
-/

namespace A226016.P839645009194659803
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068887 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A123110 (f1 j).toNat = 1) n)

end

end A226016.P839645009194659803

/-! ## A226016.P5457932383239374019

`filter[A068887(n+1), A174282(#)]`
-/

namespace A226016.P5457932383239374019
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068887 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A174282 (f1 j).toNat = 1) n)

end

end A226016.P5457932383239374019

/-!
# A226017: Primes such that sum of odd digits is also prime.

The programs for A226017, there is no canonical definition to state claims against.
-/

/-! ## A226017.P12015915133265780245

`∩[A089392(n+1), A122124(n+1)]`
-/

namespace A226017.P12015915133265780245
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089392 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122124 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A226017.P12015915133265780245

/-! ## A226017.P1919734331236142962

`∩[A089695(n+1), A122124(n+1)]`
-/

namespace A226017.P1919734331236142962
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089695 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122124 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A226017.P1919734331236142962

/-! ## A226017.P11876239376910640482

`∩[A122124(n+1), A386004(n+1)]`
-/

namespace A226017.P11876239376910640482
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122124 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386004 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A226017.P11876239376910640482

/-!
# A226018: Numbers k such that prime(k) divides 2^(k-1) + 1.

The programs for A226018, there is no canonical definition to state claims against.
-/

/-! ## A226018.P17161869649451153053

`eq[n, A240657(n+1)]+1`
-/

namespace A226018.P17161869649451153053
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240657 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A226018.P17161869649451153053

/-! ## A226018.P16300267926294228645

`eq[gcd(n, n%2), A082654(n+1)]+1`
-/

namespace A226018.P16300267926294228645
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd n (n % 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082654 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A226018.P16300267926294228645

/-!
# A226019: Primes whose binary reversal is a square.

The programs for A226019, there is no canonical definition to state claims against.
-/

/-! ## A226019.P7439458526482018048

`lt[A007920(n), A010052(A030101(n))]`
-/

namespace A226019.P7439458526482018048
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007920 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010052 (A030101 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A226019.P7439458526482018048

/-! ## A226019.P1149168756445406349

`p?[A057889(A001281(ceil(n²/2)))]`
-/

namespace A226019.P1149168756445406349
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057889 (A001281 ⌈(n ^ 2 : ℚ) / 2⌉.toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A226019.P1149168756445406349

/-!
# A226022: A modified version of Catalan numbers.

The programs for A226022, the canonical program `A226022.P9680912414619893282` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A226022 has offset 0).

The definition of A226022 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A226022.P9680912414619893282

`∑{#}[floor(n/3), (-1)^#*C(n-3*#+1, #)*A000108(n-3*#)]`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A226022

/-- `∑{#}[floor(n/3), (-1)^#*C(n-3*#+1, #)*A000108(n-3*#)]` -/
def P9680912414619893282.Spec : Prop :=
  ∀ n, P9680912414619893282.a n = A226022 n

theorem P9680912414619893282.correct : P9680912414619893282.Spec := by
  intro n
  simp only [A226022]

end A226022

/-! ## A226022.P6703669460726645101

`A000108(n)-A331951(n)`
-/

namespace A226022.P6703669460726645101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 n - A331951 n

end

end A226022.P6703669460726645101

namespace A226022

/-- `A000108(n)-A331951(n)` -/
def P6703669460726645101.Spec : Prop :=
  ∀ n, P6703669460726645101.a n = A226022 n

theorem P6703669460726645101.correct : P6703669460726645101.Spec := by
  intro n
  simp only [A226022, Nat.add_sub_cancel, A226022.P6703669460726645101.a, A226022.P9680912414619893282.f1, A226022.P9680912414619893282.a, A000108, A000108.P17551949696095299361.a, A331951, A331951.P6477561056923879568.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A226022

/-! ## A226022.P1436383494676935190

`abs(A168491(n))-A331951(n)`
-/

namespace A226022.P1436383494676935190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A168491 n| - A331951 n

end

end A226022.P1436383494676935190

namespace A226022

/-- `abs(A168491(n))-A331951(n)` -/
def P1436383494676935190.Spec : Prop :=
  ∀ n, P1436383494676935190.a n = A226022 n

end A226022

/-! ## A226022.P10013406690115083026

`A120588(n+1)-A331951(n)`
-/

namespace A226022.P10013406690115083026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120588 (n + 1) - A331951 n

end

end A226022.P10013406690115083026

namespace A226022

/-- `A120588(n+1)-A331951(n)` -/
def P10013406690115083026.Spec : Prop :=
  ∀ n, P10013406690115083026.a n = A226022 n

end A226022

/-! ## A226022.P1266851695466229221

`Δ[A155587(n)]-A331951(n)`
-/

namespace A226022.P1266851695466229221
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155587 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A331951 n

end

end A226022.P1266851695466229221

namespace A226022

/-- `Δ[A155587(n)]-A331951(n)` -/
def P1266851695466229221.Spec : Prop :=
  ∀ n, P1266851695466229221.a n = A226022 n

end A226022

/-! ## A226022.P16273161548530889706

`A133336(∑[n])-A331951(n)`
-/

namespace A226022.P16273161548530889706
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133336 (∑ j ∈ Finset.range (n + 1), f1 j) - A331951 n

end

end A226022.P16273161548530889706

namespace A226022

/-- `A133336(∑[n])-A331951(n)` -/
def P16273161548530889706.Spec : Prop :=
  ∀ n, P16273161548530889706.a n = A226022 n

end A226022

/-!
# A226023: A142705 (numerators of 1/4-1/(4n^2)) sorted to natural order.

The programs for A226023, the canonical program `A226023.P4299913703975694040` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A226023 has offset 0).

The definition of A226023 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A226023.P4299913703975694040

`floor((2*n+1)/3)*floor((2*n+5)/3)`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A226023

/-- `floor((2*n+1)/3)*floor((2*n+5)/3)` -/
def P4299913703975694040.Spec : Prop :=
  ∀ n, P4299913703975694040.a n = A226023 n

theorem P4299913703975694040.correct : P4299913703975694040.Spec := by
  intro n
  simp only [A226023]

end A226023

/-! ## A226023.P6207690798320841457

`ogf((2x+x^2+3x^3+2x^4+x^5-x^6)/(1-x-2x^3+2x^4+x^6-x^7))`
-/

namespace A226023.P6207690798320841457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 2, 1, 3, 2, 1, -1] [1, -1, 0, -2, 2, 0, 1, -1] n

end

end A226023.P6207690798320841457

namespace A226023

/-- `ogf((2x+x^2+3x^3+2x^4+x^5-x^6)/(1-x-2x^3+2x^4+x^6-x^7))` -/
def P6207690798320841457.Spec : Prop :=
  ∀ n, P6207690798320841457.a n = A226023 n

end A226023

/-! ## A226023.P5946979632511307631

`3*a(n-3)-3*a(n-6)+a(n-9)` with `a(0)=0, a(1)=2, a(2)=3, a(3)=6, a(4)=12, a(5)=15, a(6)=20, a(7)=30, a(8)=35`
-/

namespace A226023.P5946979632511307631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 2, 3, 6, 12, 15, 20, 30, 35] fun n a =>
  3 * a (n - 3) - 3 * a (n - 6) + a (n - 9)

end

end A226023.P5946979632511307631

namespace A226023

/-- `3*a(n-3)-3*a(n-6)+a(n-9)` -/
def P5946979632511307631.Spec : Prop :=
  ∀ n, P5946979632511307631.a n = A226023 n

end A226023

/-! ## A226023.P2118796030873694693

`record[lcm(ceil(n/2)+1, floor(n/2))]`
-/

namespace A226023.P2118796030873694693
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (⌈(n : ℚ) / 2⌉ + 1) ⌊(n : ℚ) / 2⌋

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A226023.P2118796030873694693

namespace A226023

/-- `record[lcm(ceil(n/2)+1, floor(n/2))]` -/
def P2118796030873694693.Spec : Prop :=
  ∀ n, (P2118796030873694693.a n : ℤ) = A226023 n

end A226023

/-! ## A226023.P16367200109481968860

`∑[xor(1, a(n-3))+3]-1` with `a(0)=1, a(1)=2, a(2)=1`
-/

namespace A226023.P16367200109481968860
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 2, 1] fun n f1 =>
  Nat.xor 1 (f1 (n - 3)) + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 1

end

end A226023.P16367200109481968860

namespace A226023

/-- `∑[xor(1, a(n-3))+3]-1` -/
def P16367200109481968860.Spec : Prop :=
  ∀ n, P16367200109481968860.a n = A226023 n

end A226023

/-! ## A226023.P12658010383273947640

`∪[(2*n+1)*(2*n+3), ∑[2*n]]`
-/

namespace A226023.P12658010383273947640
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (2 * n + 1) * (2 * n + 3)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∨ ∃ j, f2 j = x) n

end

end A226023.P12658010383273947640

namespace A226023

/-- `∪[(2*n+1)*(2*n+3), ∑[2*n]]` -/
def P12658010383273947640.Spec : Prop :=
  ∀ n, (P12658010383273947640.a n : ℤ) = A226023 n

end A226023

/-! ## A226023.P17412340989539179645

`∑[A226122(n)]-1`
-/

namespace A226023.P17412340989539179645
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226122 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A226023.P17412340989539179645

namespace A226023

/-- `∑[A226122(n)]-1` -/
def P17412340989539179645.Spec : Prop :=
  ∀ n, P17412340989539179645.a n = A226023 n

end A226023

/-! ## A226023.P11411144471216050332

`A038715(A047477(n+1))`
-/

namespace A226023.P11411144471216050332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038715 (A047477 (n + 1)).toNat

end

end A226023.P11411144471216050332

namespace A226023

/-- `A038715(A047477(n+1))` -/
def P11411144471216050332.Spec : Prop :=
  ∀ n, P11411144471216050332.a n = A226023 n

end A226023

/-! ## A226023.P13073732618948932378

`A038715(A047536(n+1))`
-/

namespace A226023.P13073732618948932378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038715 (A047536 (n + 1)).toNat

end

end A226023.P13073732618948932378

namespace A226023

/-- `A038715(A047536(n+1))` -/
def P13073732618948932378.Spec : Prop :=
  ∀ n, P13073732618948932378.a n = A226023 n

end A226023

/-! ## A226023.P6323256488807669909

`A038715(A047590(n+1))`
-/

namespace A226023.P6323256488807669909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038715 (A047590 (n + 1)).toNat

end

end A226023.P6323256488807669909

namespace A226023

/-- `A038715(A047590(n+1))` -/
def P6323256488807669909.Spec : Prop :=
  ∀ n, P6323256488807669909.a n = A226023 n

end A226023

/-! ## A226023.P6717970262093341367

`A038715(A047478(n+1))`
-/

namespace A226023.P6717970262093341367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038715 (A047478 (n + 1)).toNat

end

end A226023.P6717970262093341367

namespace A226023

/-- `A038715(A047478(n+1))` -/
def P6717970262093341367.Spec : Prop :=
  ∀ n, P6717970262093341367.a n = A226023 n

end A226023

/-! ## A226023.P3752491959724468746

`A038715(A047480(n+1))`
-/

namespace A226023.P3752491959724468746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038715 (A047480 (n + 1)).toNat

end

end A226023.P3752491959724468746

namespace A226023

/-- `A038715(A047480(n+1))` -/
def P3752491959724468746.Spec : Prop :=
  ∀ n, P3752491959724468746.a n = A226023 n

end A226023

/-! ## A226023.P3887310060827072464

`A038715(A047537(n+1))`
-/

namespace A226023.P3887310060827072464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038715 (A047537 (n + 1)).toNat

end

end A226023.P3887310060827072464

namespace A226023

/-- `A038715(A047537(n+1))` -/
def P3887310060827072464.Spec : Prop :=
  ∀ n, P3887310060827072464.a n = A226023 n

end A226023

/-! ## A226023.P8165140558475553630

`A038715(A047539(n+1))`
-/

namespace A226023.P8165140558475553630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038715 (A047539 (n + 1)).toNat

end

end A226023.P8165140558475553630

namespace A226023

/-- `A038715(A047539(n+1))` -/
def P8165140558475553630.Spec : Prop :=
  ∀ n, P8165140558475553630.a n = A226023 n

end A226023

/-! ## A226023.P16115493186706478891

`A038715(A047552(n+1))`
-/

namespace A226023.P16115493186706478891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038715 (A047552 (n + 1)).toNat

end

end A226023.P16115493186706478891

namespace A226023

/-- `A038715(A047552(n+1))` -/
def P16115493186706478891.Spec : Prop :=
  ∀ n, P16115493186706478891.a n = A226023 n

end A226023

/-! ## A226023.P13537035585424028687

`A038715(A047591(n+1))`
-/

namespace A226023.P13537035585424028687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038715 (A047591 (n + 1)).toNat

end

end A226023.P13537035585424028687

namespace A226023

/-- `A038715(A047591(n+1))` -/
def P13537035585424028687.Spec : Prop :=
  ∀ n, P13537035585424028687.a n = A226023 n

end A226023

/-! ## A226023.P9780004604172892696

`A142705(A006369(n+1))`
-/

namespace A226023.P9780004604172892696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142705 (A006369 (n + 1)).toNat

end

end A226023.P9780004604172892696

namespace A226023

/-- `A142705(A006369(n+1))` -/
def P9780004604172892696.Spec : Prop :=
  ∀ n, P9780004604172892696.a n = A226023 n

end A226023

/-! ## A226023.P9603654333585551234

`A302488(A004772(n+1))`
-/

namespace A226023.P9603654333585551234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302488 (A004772 (n + 1)).toNat

end

end A226023.P9603654333585551234

namespace A226023

/-- `A302488(A004772(n+1))` -/
def P9603654333585551234.Spec : Prop :=
  ∀ n, P9603654333585551234.a n = A226023 n

end A226023

/-! ## A226023.P7087074816165755309

`A129647(A042965(n+2))`
-/

namespace A226023.P7087074816165755309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129647 (A042965 (n + 2)).toNat

end

end A226023.P7087074816165755309

namespace A226023

/-- `A129647(A042965(n+2))` -/
def P7087074816165755309.Spec : Prop :=
  ∀ n, P7087074816165755309.a n = A226023 n

end A226023

/-! ## A226023.P5906622734621557804

`A198442(A042968(n+3)-2)`
-/

namespace A226023.P5906622734621557804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198442 (A042968 (n + 3) - 2).toNat

end

end A226023.P5906622734621557804

namespace A226023

/-- `A198442(A042968(n+3)-2)` -/
def P5906622734621557804.Spec : Prop :=
  ∀ n, P5906622734621557804.a n = A226023 n

end A226023

/-!
# A226025: Odd composite numbers that are not squares of primes.

The programs for A226025, the canonical program `A226025.P10601113510136016391` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A226025 has offset 1).

The definition of A226025 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A226025.P10601113510136016391

`lt[2, A325937(n+1)]+1`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A226025

/-- `lt[2, A325937(n+1)]+1` -/
def P10601113510136016391.Spec : Prop :=
  ∀ n, (P10601113510136016391.a n : ℤ) = A226025 (n + 1)

theorem P10601113510136016391.correct : P10601113510136016391.Spec := by
  intro n
  simp only [A226025, Nat.add_sub_cancel]

end A226025

/-! ## A226025.P2904723518532208309

`lt[3, A000005(n^(n%2))]`
-/

namespace A226025.P2904723518532208309
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n ^ (n % 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A226025.P2904723518532208309

namespace A226025

/-- `lt[3, A000005(n^(n%2))]` -/
def P2904723518532208309.Spec : Prop :=
  ∀ n, (P2904723518532208309.a n : ℤ) = A226025 (n + 1)

end A226025

/-! ## A226025.P16169316600569743078

`lt[3, A000005(n^and(1, n))]`
-/

namespace A226025.P16169316600569743078
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n ^ Nat.land 1 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A226025.P16169316600569743078

namespace A226025

/-- `lt[3, A000005(n^and(1, n))]` -/
def P16169316600569743078.Spec : Prop :=
  ∀ n, (P16169316600569743078.a n : ℤ) = A226025 (n + 1)

end A226025

/-! ## A226025.P167662465241506845

`lt[3, A000005(C(n, and(1, n)))]`
-/

namespace A226025.P167662465241506845
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (Nat.choose n (Nat.land 1 n))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A226025.P167662465241506845

namespace A226025

/-- `lt[3, A000005(C(n, and(1, n)))]` -/
def P167662465241506845.Spec : Prop :=
  ∀ n, (P167662465241506845.a n : ℤ) = A226025 (n + 1)

end A226025

/-! ## A226025.P1380654625458464305

`lt[7, A000005(C(2*n, n²%2))]`
-/

namespace A226025.P1380654625458464305
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (Nat.choose (2 * n) (n ^ 2 % 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A226025.P1380654625458464305

namespace A226025

/-- `lt[7, A000005(C(2*n, n²%2))]` -/
def P1380654625458464305.Spec : Prop :=
  ∀ n, (P1380654625458464305.a n : ℤ) = A226025 (n + 1)

end A226025

/-! ## A226025.P13733866786600574487

`2*lt[3, A000005(2*n+1)]+1`
-/

namespace A226025.P13733866786600574487
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A226025.P13733866786600574487

namespace A226025

/-- `2*lt[3, A000005(2*n+1)]+1` -/
def P13733866786600574487.Spec : Prop :=
  ∀ n, (P13733866786600574487.a n : ℤ) = A226025 (n + 1)

end A226025

/-! ## A226025.P2211980905444924962

`A005408(lt[2, A278223(n+1)-2])`
-/

namespace A226025.P2211980905444924962
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278223 (n + 1) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A226025.P2211980905444924962

namespace A226025

/-- `A005408(lt[2, A278223(n+1)-2])` -/
def P2211980905444924962.Spec : Prop :=
  ∀ n, P2211980905444924962.a n = A226025 (n + 1)

end A226025

/-! ## A226025.P3655736991409263175

`A005408(lt[2, A278223(n+1)/2])`
-/

namespace A226025.P3655736991409263175
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A278223 (n + 1) : ℚ) / 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 (SequenceMachineLib.nth (fun j => (f1 j : ℚ) < f2 j) n)

end

end A226025.P3655736991409263175

namespace A226025

/-- `A005408(lt[2, A278223(n+1)/2])` -/
def P3655736991409263175.Spec : Prop :=
  ∀ n, P3655736991409263175.a n = A226025 (n + 1)

end A226025

/-! ## A226025.P13574222207847933996

`lt[1, A318505(A093178(n))]`
-/

namespace A226025.P13574222207847933996
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318505 (A093178 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A226025.P13574222207847933996

namespace A226025

/-- `lt[1, A318505(A093178(n))]` -/
def P13574222207847933996.Spec : Prop :=
  ∀ n, (P13574222207847933996.a n : ℤ) = A226025 (n + 1)

end A226025

/-! ## A226025.P18226577829196821012

`A005408(lt[1, A099774(n+1)-2])`
-/

namespace A226025.P18226577829196821012
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099774 (n + 1) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A226025.P18226577829196821012

namespace A226025

/-- `A005408(lt[1, A099774(n+1)-2])` -/
def P18226577829196821012.Spec : Prop :=
  ∀ n, P18226577829196821012.a n = A226025 (n + 1)

end A226025

/-! ## A226025.P2477206309199393192

`A267872(lt[2, A278223(n+1)-2])`
-/

namespace A226025.P2477206309199393192
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278223 (n + 1) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267872 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A226025.P2477206309199393192

namespace A226025

/-- `A267872(lt[2, A278223(n+1)-2])` -/
def P2477206309199393192.Spec : Prop :=
  ∀ n, P2477206309199393192.a n = A226025 (n + 1)

end A226025

/-! ## A226025.P9315839372158745700

`A267872(lt[2, A278223(n+1)/2])`
-/

namespace A226025.P9315839372158745700
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A278223 (n + 1) : ℚ) / 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267872 (SequenceMachineLib.nth (fun j => (f1 j : ℚ) < f2 j) n)

end

end A226025.P9315839372158745700

namespace A226025

/-- `A267872(lt[2, A278223(n+1)/2])` -/
def P9315839372158745700.Spec : Prop :=
  ∀ n, P9315839372158745700.a n = A226025 (n + 1)

end A226025

/-! ## A226025.P15033830507443048334

`eq[A302048(n), A341945(n+2)]`
-/

namespace A226025.P15033830507443048334
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302048 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341945 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A226025.P15033830507443048334

namespace A226025

/-- `eq[A302048(n), A341945(n+2)]` -/
def P15033830507443048334.Spec : Prop :=
  ∀ n, (P15033830507443048334.a n : ℤ) = A226025 (n + 1)

end A226025

/-! ## A226025.P746194375161047605

`lt[A020639(n+1)², A141310(n)]+1`
-/

namespace A226025.P746194375161047605
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 1) ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141310 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A226025.P746194375161047605

namespace A226025

/-- `lt[A020639(n+1)², A141310(n)]+1` -/
def P746194375161047605.Spec : Prop :=
  ∀ n, (P746194375161047605.a n : ℤ) = A226025 (n + 1)

end A226025

/-! ## A226025.P15321614873312960472

`A141310(lt[A020639(n+1)², A141310(n)])`
-/

namespace A226025.P15321614873312960472
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 1) ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141310 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141310 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A226025.P15321614873312960472

namespace A226025

/-- `A141310(lt[A020639(n+1)², A141310(n)])` -/
def P15321614873312960472.Spec : Prop :=
  ∀ n, P15321614873312960472.a n = A226025 (n + 1)

end A226025

/-! ## A226025.P14198339152119657144

`∩[2*n+1, A363863(n+1)]`
-/

namespace A226025.P14198339152119657144
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363863 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A226025.P14198339152119657144

namespace A226025

/-- `∩[2*n+1, A363863(n+1)]` -/
def P14198339152119657144.Spec : Prop :=
  ∀ n, (P14198339152119657144.a n : ℤ) = A226025 (n + 1)

end A226025

/-! ## A226025.P13760148806620316437

`filter[A363863(n+1), A039982(#)]`
-/

namespace A226025.P13760148806620316437
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363863 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A039982 (f1 j).toNat = 1) n)

end

end A226025.P13760148806620316437

namespace A226025

/-- `filter[A363863(n+1), A039982(#)]` -/
def P13760148806620316437.Spec : Prop :=
  ∀ n, P13760148806620316437.a n = A226025 (n + 1)

end A226025

/-! ## A226025.P16461781036958059076

`filter[A363863(n+1), A098725(#)]`
-/

namespace A226025.P16461781036958059076
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363863 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A098725 (f1 j).toNat = 1) n)

end

end A226025.P16461781036958059076

namespace A226025

/-- `filter[A363863(n+1), A098725(#)]` -/
def P16461781036958059076.Spec : Prop :=
  ∀ n, P16461781036958059076.a n = A226025 (n + 1)

end A226025

/-! ## A226025.P10264008756819459107

`filter[A363863(n+1), A166486(#)]`
-/

namespace A226025.P10264008756819459107
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363863 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A166486 (f1 j).toNat = 1) n)

end

end A226025.P10264008756819459107

namespace A226025

/-- `filter[A363863(n+1), A166486(#)]` -/
def P10264008756819459107.Spec : Prop :=
  ∀ n, P10264008756819459107.a n = A226025 (n + 1)

end A226025

/-! ## A226025.P10792116352966342900

`∩[A363863(n+1), A004273(n)]`
-/

namespace A226025.P10792116352966342900
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363863 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A226025.P10792116352966342900

namespace A226025

/-- `∩[A363863(n+1), A004273(n)]` -/
def P10792116352966342900.Spec : Prop :=
  ∀ n, (P10792116352966342900.a n : ℤ) = A226025 (n + 1)

end A226025

/-!
# A226026: Maximum fixed points under iteration of sum of cubes of digits in base n.

The programs for A226026, there is no canonical definition to state claims against.
-/

/-! ## A226026.P419200487253075613

`xor(A109638(A109784(n)), A109748(n+1))`
-/

namespace A226026.P419200487253075613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A109638 (A109784 n).toNat) (A109748 (n + 1))

end

end A226026.P419200487253075613

/-!
# A226027: a(n) is the largest prime that is a sum of some 3 distinct previous terms.

The programs for A226027, there is no canonical definition to state claims against.
-/

/-! ## A226027.P8966998783844585688

`record[A006530(Δ[A163866(3*n+5)])]`
-/

namespace A226027.P8966998783844585688
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163866 (3 * n + 5)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A226027.P8966998783844585688

/-!
# A226028: Array T(j,k) of counts of internal lattice points within all Pythagorean triangles (see comments for array order).

The programs for A226028, there is no canonical definition to state claims against.
-/

/-! ## A226028.P1574558892336291835

`A002260(A167915(3*n+5)*A271999(n+1))`
-/

namespace A226028.P1574558892336291835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (A167915 (3 * n + 5) * A271999 (n + 1)).toNat

end

end A226028.P1574558892336291835

/-!
# A226029: First differences of A182402.

The programs for A226029, there is no canonical definition to state claims against.
-/

/-! ## A226029.P14852341978343034681

`A182402(n+2)-A182402(n+1)`
-/

namespace A226029.P14852341978343034681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182402 (n + 2) - A182402 (n + 1)

end

end A226029.P14852341978343034681

/-! ## A226029.P11058102844222721217

`Δ[A182402(n+1)]`
-/

namespace A226029.P11058102844222721217
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182402 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A226029.P11058102844222721217

/-! ## A226029.P10543031204446025559

`Δ[record[A182402(A324347(n))]]`
-/

namespace A226029.P10543031204446025559
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182402 (A324347 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A226029.P10543031204446025559

/-! ## A226029.P3001790415941672131

`abs(Δ[A182402(A008619(2*n))])`
-/

namespace A226029.P3001790415941672131
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182402 (A008619 (2 * n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A226029.P3001790415941672131

/-! ## A226029.P3762288984909376982

`Δ[A182402(A008619(2*n))]%A016897(n)`
-/

namespace A226029.P3762288984909376982
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182402 (A008619 (2 * n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (n + 1) - f1 n) (A016897 n)

end

end A226029.P3762288984909376982

/-! ## A226029.P6578838875674517848

`Δ[A182402(A008619(2*n))-A000034(2*n)]`
-/

namespace A226029.P6578838875674517848
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182402 (A008619 (2 * n)).toNat - A000034 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A226029.P6578838875674517848

/-! ## A226029.P6138303586502825158

`Δ[record[A182402(A286589(n))]]`
-/

namespace A226029.P6138303586502825158
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182402 (A286589 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A226029.P6138303586502825158

/-! ## A226029.P8218699232696051127

`Δ[Δ[A117804(∑[n]+1)]]`
-/

namespace A226029.P8218699232696051127
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117804 (∑ j ∈ Finset.range (n + 1), f3 j + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A226029.P8218699232696051127

/-! ## A226029.P7289071922996301471

`Δ[record[A182402(A284549(n))]]`
-/

namespace A226029.P7289071922996301471
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182402 (A284549 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A226029.P7289071922996301471

/-! ## A226029.P4122525087048464158

`Δ[Δ[A117804(A000124(n))]]%(n+4)`
-/

namespace A226029.P4122525087048464158
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117804 (A000124 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (n + 1) - f1 n) (n + 4 : ℤ)

end

end A226029.P4122525087048464158

/-!
# A226031: Number A(n,k) of unimodal functions f:[n]->[k*n]; square array A(n,k), n>=0, k>=0, read by antidiagonals.

The programs for A226031, there is no canonical definition to state claims against.
-/

/-! ## A226031.P14488051802162126893

`A003056(A320253(n)*A351790(n))`
-/

namespace A226031.P14488051802162126893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (A320253 n * A351790 n).toNat

end

end A226031.P14488051802162126893

/-! ## A226031.P12198269617899873203

`A000009(A187829(A263714(n+1)))*A003992(n)`
-/

namespace A226031.P12198269617899873203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000009 (A187829 (A263714 (n + 1)).toNat).toNat * A003992 n

end

end A226031.P12198269617899873203

/-! ## A226031.P15560507884153816689

`A117597(A394901(n))`
-/

namespace A226031.P15560507884153816689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117597 (A394901 n).toNat

end

end A226031.P15560507884153816689

/-! ## A226031.P16819188684312538708

`A353853(A395148(n))`
-/

namespace A226031.P16819188684312538708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353853 (A395148 n).toNat

end

end A226031.P16819188684312538708

/-! ## A226031.P1914853652112588343

`A353853(A396502(n))`
-/

namespace A226031.P1914853652112588343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353853 (A396502 n).toNat

end

end A226031.P1914853652112588343

/-!
# A226032: Numbers of the form xyz, where x and z have the same number of digits and x*z = y.

The programs for A226032, there is no canonical definition to state claims against.
-/

/-! ## A226032.P16459897663155114021

`A233583(A067042(n+10)+1)`
-/

namespace A226032.P16459897663155114021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233583 (A067042 (n + 10) + 1).toNat

end

end A226032.P16459897663155114021

/-! ## A226032.P185915476696442341

`A067042(n+10)*A126860(n²)`
-/

namespace A226032.P185915476696442341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067042 (n + 10) * A126860 (n ^ 2)

end

end A226032.P185915476696442341

/-! ## A226032.P9012836867130293669

`A067042(n+10)%A111032(n+2)`
-/

namespace A226032.P9012836867130293669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A067042 (n + 10)) (A111032 (n + 2))

end

end A226032.P9012836867130293669

/-! ## A226032.P9481449159416375667

`A067042(n+10)+A048298(p?[A002061(n)])`
-/

namespace A226032.P9481449159416375667
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002061 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067042 (n + 10) + A048298 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A226032.P9481449159416375667

/-! ## A226032.P11286183892687580485

`A074038(A074053(n+1))+A067042(n+10)`
-/

namespace A226032.P11286183892687580485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074038 (A074053 (n + 1)).toNat + A067042 (n + 10)

end

end A226032.P11286183892687580485

/-!
# A226034: Expansion of f(-x)^6 / (chi(x) * phi(-x)^6) in powers of x where phi(), chi(), f() are Ramanujan theta functions.

The programs for A226034, there is no canonical definition to state claims against.
-/

/-! ## A226034.P4110494360714213510

`1/12*A001935(9*n+7)`
-/

namespace A226034.P4110494360714213510
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 : ℚ) / 12 * (A001935 (9 * n + 7) : ℚ)

end

end A226034.P4110494360714213510

/-! ## A226034.P10548072222626278895

`A001937(3*n+2)/9`
-/

namespace A226034.P10548072222626278895
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001937 (3 * n + 2) : ℚ) / 9

end

end A226034.P10548072222626278895

/-! ## A226034.P15513726782073530439

`A340508(n)/12`
-/

namespace A226034.P15513726782073530439
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A340508 n : ℚ) / 12

end

end A226034.P15513726782073530439

/-! ## A226034.P5509218414807358040

`A260546(A166517(2*n))/12`
-/

namespace A226034.P5509218414807358040
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A260546 (A166517 (2 * n)).toNat : ℚ) / 12

end

end A226034.P5509218414807358040

/-! ## A226034.P8452653793199431647

`A001935(A017245(n))/12`
-/

namespace A226034.P8452653793199431647
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001935 (A017245 n).toNat : ℚ) / 12

end

end A226034.P8452653793199431647

/-! ## A226034.P17823981788252137459

`A001935(Δ[A062725(n)])/12`
-/

namespace A226034.P17823981788252137459
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062725 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001935 (f1 (n + 1) - f1 n).toNat : ℚ) / 12

end

end A226034.P17823981788252137459

/-!
# A226035: Prime powers (A025475) whose decimal digit reversal is also a prime power.

The programs for A226035, there is no canonical definition to state claims against.
-/

/-! ## A226035.P12062832867017948571

`∩[A025475(n+1), A085869(n+1)]`
-/

namespace A226035.P12062832867017948571
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025475 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085869 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A226035.P12062832867017948571

/-! ## A226035.P2061793296534187138

`∩[A110811(n+1), A341089(n+1)]`
-/

namespace A226035.P2061793296534187138
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110811 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341089 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A226035.P2061793296534187138

/-! ## A226035.P16503786014448946360

`∩[A115656(n+1), A341089(n+1)]`
-/

namespace A226035.P16503786014448946360
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115656 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341089 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A226035.P16503786014448946360

/-! ## A226035.P14064808097891793755

`record[A034684(A110811(n+1))]`
-/

namespace A226035.P14064808097891793755
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034684 (A110811 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A226035.P14064808097891793755

/-! ## A226035.P12907251040126243847

`record[A034684(A118895(n+1))]`
-/

namespace A226035.P12907251040126243847
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034684 (A118895 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A226035.P12907251040126243847

/-!
# A226037: a(n) = Sum_{c in P(n)} lcm(c) where P(n) is the set of all subsets of {1,2,...,n}.

The programs for A226037, there is no canonical definition to state claims against.
-/

/-! ## A226037.P812941100416193495

`A181854(∑[n]+n)`
-/

namespace A226037.P812941100416193495
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181854 (∑ j ∈ Finset.range (n + 1), f1 j + n)

end

end A226037.P812941100416193495

/-! ## A226037.P15166262551966041584

`record[A181854(n-A325820(n))]`
-/

namespace A226037.P15166262551966041584
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181854 ((n : ℤ) - A325820 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A226037.P15166262551966041584

/-! ## A226037.P1580753471894572415

`record[A181854(n)/A144404(n)]`
-/

namespace A226037.P1580753471894572415
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A181854 n : ℚ) / (A144404 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A226037.P1580753471894572415

/-! ## A226037.P14485293560509242368

`record[root(A181854(n), A007318(n))]`
-/

namespace A226037.P14485293560509242368
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A181854 n : ℝ) ^ (1 / (A007318 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A226037.P14485293560509242368

/-! ## A226037.P10315579045601311423

`record[A181854(gcd(n, A014473(n)))]`
-/

namespace A226037.P10315579045601311423
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181854 (Int.gcd (n : ℤ) (A014473 n))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A226037.P10315579045601311423

/-!
# A226038: Numbers k such that there are no primes p which divide k+1 and p-1 does not divide k.

The programs for A226038, the canonical program `A226038.P4986788089521301595` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A226038 has offset 1).

The definition of A226038 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9787 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A226038.P7406546823475464261

`A087441(n+1)-1`
-/

namespace A226038.P7406546823475464261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087441 (n + 1) - 1

end

end A226038.P7406546823475464261

namespace A226038

/-- `A087441(n+1)-1` -/
def P7406546823475464261.Spec : Prop :=
  ∀ n, P7406546823475464261.a n = A226038 (n + 1)

theorem P7406546823475464261.correct : P7406546823475464261.Spec := by
  intro n
  simp only [A226038, Nat.add_sub_cancel, A226038.P7406546823475464261.a, A226038.P4986788089521301595.f1, A226038.P4986788089521301595.a, A087441, A087441.P11260084284196037132.a, A324290, A324290.P16051344129388341371.a, A004530, A004530.P5757221461617830557.a, A226040, A226040.P7975070697186839917.a, A000122, A000122.P2586650665158271412.f1, A000122.P2586650665158271412.f2, A000122.P2586650665158271412.a, A141056, A141056.P945056089172605289.f1, A141056.P945056089172605289.a, A225481, A225481.P12092037040883699574.f1, A225481.P12092037040883699574.a, A257179, A257179.P15394281340330029019.a, A089026, A089026.P9133057752167928232.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A226038

/-! ## A226038.P4986788089521301595

`record[n*A324290(n+1)]`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A226038

/-- `record[n*A324290(n+1)]` -/
def P4986788089521301595.Spec : Prop :=
  ∀ n, P4986788089521301595.a n = A226038 (n + 1)

theorem P4986788089521301595.correct : P4986788089521301595.Spec := by
  intro n
  simp only [A226038, Nat.add_sub_cancel]

end A226038

/-! ## A226038.P8725509802612104912

`eq[1, A324290(n+1)]`
-/

namespace A226038.P8725509802612104912
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324290 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A226038.P8725509802612104912

namespace A226038

/-- `eq[1, A324290(n+1)]` -/
def P8725509802612104912.Spec : Prop :=
  ∀ n, (P8725509802612104912.a n : ℤ) = A226038 (n + 1)

end A226038

/-! ## A226038.P13412480132006205265

`eq[A166142(A166123(n+1)), A166142(n+1)]`
-/

namespace A226038.P13412480132006205265
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166142 (A166123 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166142 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A226038.P13412480132006205265

namespace A226038

/-- `eq[A166142(A166123(n+1)), A166142(n+1)]` -/
def P13412480132006205265.Spec : Prop :=
  ∀ n, (P13412480132006205265.a n : ℤ) = A226038 (n + 1)

end A226038

/-! ## A226038.P15798696676590558266

`eq[1, A226040(n)]`
-/

namespace A226038.P15798696676590558266
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226040 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A226038.P15798696676590558266

namespace A226038

/-- `eq[1, A226040(n)]` -/
def P15798696676590558266.Spec : Prop :=
  ∀ n, (P15798696676590558266.a n : ℤ) = A226038 (n + 1)

end A226038

/-! ## A226038.P410053149905419081

`A023443(A087441(n+1))`
-/

namespace A226038.P410053149905419081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A087441 (n + 1)).toNat

end

end A226038.P410053149905419081

namespace A226038

/-- `A023443(A087441(n+1))` -/
def P410053149905419081.Spec : Prop :=
  ∀ n, P410053149905419081.a n = A226038 (n + 1)

end A226038

/-! ## A226038.P1471214435285607851

`record[n/A289506(A226040(n)+1)]`
-/

namespace A226038.P1471214435285607851
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / (A289506 (A226040 n + 1).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A226038.P1471214435285607851

namespace A226038

/-- `record[n/A289506(A226040(n)+1)]` -/
def P1471214435285607851.Spec : Prop :=
  ∀ n, P1471214435285607851.a n = (A226038 (n + 1) : ℚ)

end A226038

/-! ## A226038.P5214372100036064048

`record[n/A289506(2*A226040(n))]`
-/

namespace A226038.P5214372100036064048
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / (A289506 (2 * A226040 n).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A226038.P5214372100036064048

namespace A226038

/-- `record[n/A289506(2*A226040(n))]` -/
def P5214372100036064048.Spec : Prop :=
  ∀ n, P5214372100036064048.a n = (A226038 (n + 1) : ℚ)

end A226038

/-! ## A226038.P10815098387024470097

`lt[A226040(n), ratio[A226025(n+1)]]`
-/

namespace A226038.P10815098387024470097
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226040 n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226025 (n + 1)

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f3 (n + 1) : ℚ) / (f3 n : ℚ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℚ) < f2 j) n

end

end A226038.P10815098387024470097

namespace A226038

/-- `lt[A226040(n), ratio[A226025(n+1)]]` -/
def P10815098387024470097.Spec : Prop :=
  ∀ n, (P10815098387024470097.a n : ℤ) = A226038 (n + 1)

end A226038

/-! ## A226038.P1624250107012220512

`eq[A007947(n+1), A182816(n+1)]`
-/

namespace A226038.P1624250107012220512
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182816 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A226038.P1624250107012220512

namespace A226038

/-- `eq[A007947(n+1), A182816(n+1)]` -/
def P1624250107012220512.Spec : Prop :=
  ∀ n, (P1624250107012220512.a n : ℤ) = A226038 (n + 1)

end A226038

/-! ## A226038.P18076391775021298993

`eq[A063994(n+1), A173557(n+1)]`
-/

namespace A226038.P18076391775021298993
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063994 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173557 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A226038.P18076391775021298993

namespace A226038

/-- `eq[A063994(n+1), A173557(n+1)]` -/
def P18076391775021298993.Spec : Prop :=
  ∀ n, (P18076391775021298993.a n : ℤ) = A226038 (n + 1)

end A226038

/-! ## A226038.P14038010406562014309

`eq[A003557(n+1), A247074(n+1)]`
-/

namespace A226038.P14038010406562014309
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003557 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247074 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A226038.P14038010406562014309

namespace A226038

/-- `eq[A003557(n+1), A247074(n+1)]` -/
def P14038010406562014309.Spec : Prop :=
  ∀ n, (P14038010406562014309.a n : ℤ) = A226038 (n + 1)

end A226038

/-! ## A226038.P2445892915447791667

`eq[A109395(n+1), A182816(n+1)]`
-/

namespace A226038.P2445892915447791667
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109395 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182816 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A226038.P2445892915447791667

namespace A226038

/-- `eq[A109395(n+1), A182816(n+1)]` -/
def P2445892915447791667.Spec : Prop :=
  ∀ n, (P2445892915447791667.a n : ℤ) = A226038 (n + 1)

end A226038

/-! ## A226038.P8091978479748440294

`lt[A226040(n), ratio[A226019(n+1)]]`
-/

namespace A226038.P8091978479748440294
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226040 n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226019 (n + 1)

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f3 (n + 1) : ℚ) / (f3 n : ℚ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℚ) < f2 j) n

end

end A226038.P8091978479748440294

namespace A226038

/-- `lt[A226040(n), ratio[A226019(n+1)]]` -/
def P8091978479748440294.Spec : Prop :=
  ∀ n, (P8091978479748440294.a n : ℤ) = A226038 (n + 1)

end A226038

/-! ## A226038.P17470068153268157752

`lt[A226019(A226040(n)), A226044(2*n+3)]`
-/

namespace A226038.P17470068153268157752
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226019 (A226040 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226044 (2 * n + 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A226038.P17470068153268157752

namespace A226038

/-- `lt[A226019(A226040(n)), A226044(2*n+3)]` -/
def P17470068153268157752.Spec : Prop :=
  ∀ n, (P17470068153268157752.a n : ℤ) = A226038 (n + 1)

end A226038

/-! ## A226038.P4623679015749967225

`eq[1, A001221(2*A324291(n+1))]`
-/

namespace A226038.P4623679015749967225
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (2 * A324291 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A226038.P4623679015749967225

namespace A226038

/-- `eq[1, A001221(2*A324291(n+1))]` -/
def P4623679015749967225.Spec : Prop :=
  ∀ n, (P4623679015749967225.a n : ℤ) = A226038 (n + 1)

end A226038

/-! ## A226038.P1002824787370402270

`eq[2, A324291(2*A324291(n+1))]`
-/

namespace A226038.P1002824787370402270
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324291 (2 * A324291 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A226038.P1002824787370402270

namespace A226038

/-- `eq[2, A324291(2*A324291(n+1))]` -/
def P1002824787370402270.Spec : Prop :=
  ∀ n, (P1002824787370402270.a n : ℤ) = A226038 (n + 1)

end A226038

/-! ## A226038.P11225901110535925422

`lt[A226040(n), ratio[A226027(n+1)]]`
-/

namespace A226038.P11225901110535925422
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226040 n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226027 (n + 1)

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f3 (n + 1) : ℚ) / (f3 n : ℚ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℚ) < f2 j) n

end

end A226038.P11225901110535925422

namespace A226038

/-- `lt[A226040(n), ratio[A226027(n+1)]]` -/
def P11225901110535925422.Spec : Prop :=
  ∀ n, (P11225901110535925422.a n : ℤ) = A226038 (n + 1)

end A226038

/-!
# A226039: Numbers k such that there exist primes p which divide k+1 and p-1 does not divide k.

The programs for A226039, there is no canonical definition to state claims against.
-/

/-! ## A226039.P11422450880131521901

`lt[1, A226040(n)]`
-/

namespace A226039.P11422450880131521901
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226040 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A226039.P11422450880131521901

/-! ## A226039.P4479640370974471343

`comp[A226038(n+1)]`
-/

namespace A226039.P4479640370974471343
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226038 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A226039.P4479640370974471343

/-! ## A226039.P16763939490376564727

`eq[0, A324290(n+1)]`
-/

namespace A226039.P16763939490376564727
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324290 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A226039.P16763939490376564727

/-! ## A226039.P3835390178272975155

`lt[4, A324291(n+1)]`
-/

namespace A226039.P3835390178272975155
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324291 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A226039.P3835390178272975155

/-! ## A226039.P8829889521478698556

`comp[A087441(n+1)-1]`
-/

namespace A226039.P8829889521478698556
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087441 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A226039.P8829889521478698556

/-! ## A226039.P6546612696814021702

`lt[n, lcm(n, A070777(n+1))]`
-/

namespace A226039.P6546612696814021702
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (n : ℤ) (A070777 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A226039.P6546612696814021702

/-! ## A226039.P7413003507650884193

`A080765(A004830(n+2))`
-/

namespace A226039.P7413003507650884193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080765 (A004830 (n + 2)).toNat

end

end A226039.P7413003507650884193

/-! ## A226039.P17233728579638637795

`eq[1, A066247(A226040(n)²)]`
-/

namespace A226039.P17233728579638637795
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066247 (A226040 n ^ 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A226039.P17233728579638637795

/-! ## A226039.P18079973362788672891

`eq[0, A008683(A182816(n+1))]`
-/

namespace A226039.P18079973362788672891
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A182816 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A226039.P18079973362788672891

/-! ## A226039.P11545788503871711627

`eq[1, A066247(A226040(n)+1)]`
-/

namespace A226039.P11545788503871711627
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066247 (A226040 n + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A226039.P11545788503871711627

/-!
# A226040: a(n) = product{ p prime such that p divides n + 1 and p - 1 does not divide n }.

The programs for A226040, the canonical program `A226040.P7975070697186839917` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A226040 has offset 0).

The definition of A226040 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A141056, A225481, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A226040.P7975070697186839917

`A225481(n)/A141056(n)`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A226040

/-- `A225481(n)/A141056(n)` -/
def P7975070697186839917.Spec : Prop :=
  ∀ n, P7975070697186839917.a n = (A226040 n : ℚ)

end A226040

/-! ## A226040.P9060380307448356051

`round(A204455(n+1)/A326584(n+1))`
-/

namespace A226040.P9060380307448356051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A204455 (n + 1) : ℚ) / (A326584 (n + 1) : ℚ))

end

end A226040.P9060380307448356051

namespace A226040

/-- `round(A204455(n+1)/A326584(n+1))` -/
def P9060380307448356051.Spec : Prop :=
  ∀ n, P9060380307448356051.a n = A226040 n

end A226040

/-! ## A226040.P3394211871643756935

`A007947(n+1)/gcd(A007947(n+1), A141056(n))`
-/

namespace A226040.P3394211871643756935
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007947 (n + 1) : ℚ) / (Int.gcd (A007947 (n + 1)) (A141056 n) : ℚ)

end

end A226040.P3394211871643756935

namespace A226040

/-- `A007947(n+1)/gcd(A007947(n+1), A141056(n))` -/
def P3394211871643756935.Spec : Prop :=
  ∀ n, P3394211871643756935.a n = (A226040 n : ℚ)

end A226040

/-! ## A226040.P4011849823439483936

`A000265(gcd(n+1, A286515(n)))`
-/

namespace A226040.P4011849823439483936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (Int.gcd (n + 1 : ℤ) (A286515 n))

end

end A226040.P4011849823439483936

namespace A226040

/-- `A000265(gcd(n+1, A286515(n)))` -/
def P4011849823439483936.Spec : Prop :=
  ∀ n, P4011849823439483936.a n = A226040 n

end A226040

/-! ## A226040.P8387382195581621188

`gcd(A005408(A025480(n)), A286515(n))`
-/

namespace A226040.P8387382195581621188
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A005408 (A025480 n).toNat) (A286515 n)

end

end A226040.P8387382195581621188

namespace A226040

/-- `gcd(A005408(A025480(n)), A286515(n))` -/
def P8387382195581621188.Spec : Prop :=
  ∀ n, (P8387382195581621188.a n : ℤ) = A226040 n

end A226040

/-! ## A226040.P838837614412166452

`gcd(A286515(n), A380952(n))`
-/

namespace A226040.P838837614412166452
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A286515 n) (A380952 n)

end

end A226040.P838837614412166452

namespace A226040

/-- `gcd(A286515(n), A380952(n))` -/
def P838837614412166452.Spec : Prop :=
  ∀ n, (P838837614412166452.a n : ℤ) = A226040 n

end A226040

/-! ## A226040.P13843320122332573749

`A227140(A225481(n)/A027642(n))`
-/

namespace A226040.P13843320122332573749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227140 (SequenceMachineLib.roundAway ((A225481 n : ℚ) / (A027642 n : ℚ))).toNat

end

end A226040.P13843320122332573749

namespace A226040

/-- `A227140(A225481(n)/A027642(n))` -/
def P13843320122332573749.Spec : Prop :=
  ∀ n, P13843320122332573749.a n = A226040 n

end A226040

/-! ## A226040.P13876859381609922499

`gcd(n+1, A213621(n))`
-/

namespace A226040.P13876859381609922499
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A213621 n)

end

end A226040.P13876859381609922499

namespace A226040

/-- `gcd(n+1, A213621(n))` -/
def P13876859381609922499.Spec : Prop :=
  ∀ n, (P13876859381609922499.a n : ℤ) = A226040 n

end A226040

/-! ## A226040.P7495989531598859172

`gcd(A301279(n), A366570(n))`
-/

namespace A226040.P7495989531598859172
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A301279 n) (A366570 n)

end

end A226040.P7495989531598859172

namespace A226040

/-- `gcd(A301279(n), A366570(n))` -/
def P7495989531598859172.Spec : Prop :=
  ∀ n, (P7495989531598859172.a n : ℤ) = A226040 n

end A226040

/-! ## A226040.P2379881820187903751

`A213621(n)/A144845(n)*A225481(n)`
-/

namespace A226040.P2379881820187903751
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A213621 n : ℚ) / (A144845 n : ℚ) * (A225481 n : ℚ)

end

end A226040.P2379881820187903751

namespace A226040

/-- `A213621(n)/A144845(n)*A225481(n)` -/
def P2379881820187903751.Spec : Prop :=
  ∀ n, P2379881820187903751.a n = (A226040 n : ℚ)

end A226040

/-!
# A226041: Primes generated by concatenation of three consecutive numbers divided by three.

The programs for A226041, there is no canonical definition to state claims against.
-/

/-! ## A226041.P17688895513047918442

`p?[A074991(n)]`
-/

namespace A226041.P17688895513047918442
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074991 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A226041.P17688895513047918442

/-!
# A226044: Period of length 8: 1, 64, 16, 64, 4, 64, 16, 64.

The programs for A226044, the canonical program `A226044.P13205696617847001781` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A226044 has offset 0).

The definition of A226044 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A226044.P13205696617847001781

`ogf((1+64x+16x^2+64x^3+4x^4+64x^5+16x^6+64x^7)/(1-x^8))`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A226044

/-- `ogf((1+64x+16x^2+64x^3+4x^4+64x^5+16x^6+64x^7)/(1-x^8))` -/
def P13205696617847001781.Spec : Prop :=
  ∀ n, P13205696617847001781.a n = A226044 n

theorem P13205696617847001781.correct : P13205696617847001781.Spec := by
  intro n
  simp only [A226044]

end A226044

/-!
# A226045: G.f.: ( Sum_{n>=0} (2*n+x)^n * x^n / (1 + 2*n*x + x^2)^n )^(1/2).

The programs for A226045, there is no canonical definition to state claims against.
-/

/-! ## A226045.P1906046770338826130

`lcm(3^C(a(n-1), 68)+n, ceil(4^n/3))` with `a(0)=1, a(1)=1`
-/

namespace A226045.P1906046770338826130
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 1] fun n a =>
  Int.lcm (3 ^ Nat.choose (a (n - 1)) 68 + n : ℤ) ⌈(4 ^ n : ℚ) / 3⌉

end

end A226045.P1906046770338826130

/-!
# A226046: Number of daughters to wait before picking in sultan's dowry problem with an unknown number of daughters between 1 and n with equal probability.

The programs for A226046, there is no canonical definition to state claims against.
-/

/-! ## A226046.P14998622530346056917

`∑{digits}[A017834(n), A017834(floor(#/(n+1)))]`
-/

namespace A226046.P14998622530346056917
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017834 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A017834 ⌊(x : ℚ) / (n + 1 : ℚ)⌋.toNat).sum

end

end A226046.P14998622530346056917

/-! ## A226046.P2467699847472504221

`floor(A000217(A000096(n))/A260938(n))`
-/

namespace A226046.P2467699847472504221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A000217 (A000096 n).toNat : ℚ) / (A260938 n : ℚ)⌋

end

end A226046.P2467699847472504221

/-! ## A226046.P6436567113123242985

`A287866(A033066(n+1))`
-/

namespace A226046.P6436567113123242985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287866 (A033066 (n + 1)).toNat

end

end A226046.P6436567113123242985

/-! ## A226046.P15474224383647864372

`A025786(A064952(n+1))%A115648(n+1)`
-/

namespace A226046.P15474224383647864372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A025786 (A064952 (n + 1)).toNat) (A115648 (n + 1))

end

end A226046.P15474224383647864372

/-! ## A226046.P13083946044121005758

`A025786(A064952(n+1))-A335379(A207024(n+1))`
-/

namespace A226046.P13083946044121005758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025786 (A064952 (n + 1)).toNat - A335379 (A207024 (n + 1)).toNat

end

end A226046.P13083946044121005758

/-!
# A226047: Largest prime power dividing binomial(2n, n).

The programs for A226047, there is no canonical definition to state claims against.
-/

/-! ## A226047.P14411841485312031741

`A006519(A059496(n+1))*A136623(2*(n+1))`
-/

namespace A226047.P14411841485312031741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006519 (A059496 (n + 1)).toNat * A136623 (2 * (n + 1))

end

end A226047.P14411841485312031741

/-! ## A226047.P5378629653515636499

`A136623(2*n+2)+A000007(A136613(n))`
-/

namespace A226047.P5378629653515636499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136623 (2 * n + 2) + A000007 (A136613 n).toNat

end

end A226047.P5378629653515636499

/-! ## A226047.P16462971851539933359

`A136623((n+1)*A178815(n+1))`
-/

namespace A226047.P16462971851539933359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136623 ((n + 1 : ℤ) * A178815 (n + 1)).toNat

end

end A226047.P16462971851539933359

/-! ## A226047.P11057803589823364692

`A136623(A178815(n+1)+n+n)`
-/

namespace A226047.P11057803589823364692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136623 (A178815 (n + 1) + (n : ℤ) + (n : ℤ)).toNat

end

end A226047.P11057803589823364692

/-! ## A226047.P17846335088116662747

`A136623(A178815(n+1)+A005843(n))`
-/

namespace A226047.P17846335088116662747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136623 (A178815 (n + 1) + A005843 n).toNat

end

end A226047.P17846335088116662747

/-! ## A226047.P18192048097126849760

`A136623(lcm(A103517(n), A178815(n+1)))`
-/

namespace A226047.P18192048097126849760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136623 (Int.lcm (A103517 n) (A178815 (n + 1)))

end

end A226047.P18192048097126849760

/-! ## A226047.P8307322540703778020

`A136623(A000267(n²)+2)`
-/

namespace A226047.P8307322540703778020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136623 (A000267 (n ^ 2) + 2).toNat

end

end A226047.P8307322540703778020

/-! ## A226047.P18357698485040541910

`A136623(2*(n+1))-A008683(A084921(n+1))`
-/

namespace A226047.P18357698485040541910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136623 (2 * (n + 1)) - A008683 (A084921 (n + 1)).toNat

end

end A226047.P18357698485040541910

/-!
# A226055: a(n) is the first common term in column n of tables A225630 and A225640, when scanned from the top to bottom.

The programs for A226055, there is no canonical definition to state claims against.
-/

/-! ## A226055.P10006199316877949107

`A028310(lcm(A000793(n), A087051(n)))`
-/

namespace A226055.P10006199316877949107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (Int.lcm (A000793 n) (A087051 n))

end

end A226055.P10006199316877949107

/-! ## A226055.P15593570196209525037

`lcm(A000793(A087051(n)), A051801(n))`
-/

namespace A226055.P15593570196209525037
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A000793 (A087051 n).toNat) (A051801 n)

end

end A226055.P15593570196209525037

/-! ## A226055.P179326297692944558

`lcm(A028310(n), A074103(A087051(n)))`
-/

namespace A226055.P179326297692944558
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A028310 n) (A074103 (A087051 n).toNat)

end

end A226055.P179326297692944558

/-! ## A226055.P16051770177608401842

`A118541(lcm(n, A074103(A002998(n))))`
-/

namespace A226055.P16051770177608401842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118541 (Int.lcm (n : ℤ) (A074103 (A002998 n).toNat))

end

end A226055.P16051770177608401842

/-! ## A226055.P11782556960259592461

`lcm(A074103(n), A118541(A087051(n)))`
-/

namespace A226055.P11782556960259592461
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A074103 n) (A118541 (A087051 n).toNat)

end

end A226055.P11782556960259592461

/-!
# A226056: a(n) = Number of common trailing terms on the row n of tables A225632 and A225642.

The programs for A226056, there is no canonical definition to state claims against.
-/

/-! ## A226056.P14387954789843518302

`A225644(n)-A225639(n)`
-/

namespace A226056.P14387954789843518302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225644 n - A225639 n

end

end A226056.P14387954789843518302

/-! ## A226056.P7640627738313143170

`A225634(n)-A225638(n)`
-/

namespace A226056.P7640627738313143170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225634 n - A225638 n

end

end A226056.P7640627738313143170

/-! ## A226056.P3163810904059402620

`A225643(n)+1-A225639(n)`
-/

namespace A226056.P3163810904059402620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225643 n + (1 - A225639 n)

end

end A226056.P3163810904059402620

/-! ## A226056.P9060815199305541106

`A005496(A225643(n)-A225639(n))`
-/

namespace A226056.P9060815199305541106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005496 (A225643 n - A225639 n).toNat

end

end A226056.P9060815199305541106

/-! ## A226056.P9186695243794350083

`A005555(A225643(n)-A225639(n))`
-/

namespace A226056.P9186695243794350083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005555 (A225643 n - A225639 n).toNat

end

end A226056.P9186695243794350083

/-! ## A226056.P7158041915285543834

`A008619(2*A225643(n))-A225639(n)`
-/

namespace A226056.P7158041915285543834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (2 * A225643 n).toNat - A225639 n

end

end A226056.P7158041915285543834

/-! ## A226056.P14358337126324510082

`A029579(2*A225643(n))-A225639(n)`
-/

namespace A226056.P14358337126324510082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029579 (2 * A225643 n).toNat - A225639 n

end

end A226056.P14358337126324510082

/-! ## A226056.P10630902873268592226

`A000005(2^(A225643(n)-A225639(n)))`
-/

namespace A226056.P10630902873268592226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A225643 n - A225639 n : ℤ))).toNat

end

end A226056.P10630902873268592226

/-! ## A226056.P1290298804875148527

`A002377(or(16, A225643(n)))-A225639(n)`
-/

namespace A226056.P1290298804875148527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002377 (Int.lor 16 (A225643 n)).toNat - A225639 n

end

end A226056.P1290298804875148527

/-! ## A226056.P16741091746340452606

`A002377(xor(16, A225643(n)))-A225639(n)`
-/

namespace A226056.P16741091746340452606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002377 (Int.xor 16 (A225643 n)).toNat - A225639 n

end

end A226056.P16741091746340452606

/-!
# A226057: E.g.f. A(x) satisfies: A(x)^2 = -x*log(1-A(x)) where A(x) = Sum_{n>=1} a(n)*x^n/n!^2.

The programs for A226057, there is no canonical definition to state claims against.
-/

/-! ## A226057.P6224694228103442062

`(n+1)*A204248(n)`
-/

namespace A226057.P6224694228103442062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A204248 n

end

end A226057.P6224694228103442062

/-! ## A226057.P5291459198890423509

`(n+1)!²*n!/(2*(n+1)-1)!*A129505(n+1)`
-/

namespace A226057.P5291459198890423509
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (n + 1) ^ 2 * Nat.factorial n : ℚ) / (Nat.factorial ((2 * (n + 1) : ℤ) - 1).toNat : ℚ) * (A129505 (n + 1) : ℚ)

end

end A226057.P5291459198890423509

/-! ## A226057.P2555526032901681595

`A204248(n)*A348553(n)`
-/

namespace A226057.P2555526032901681595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204248 n * A348553 n

end

end A226057.P2555526032901681595

/-! ## A226057.P5481974906115768184

`abs(A238685(n+1)/A001700(n))`
-/

namespace A226057.P5481974906115768184
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  |(A238685 (n + 1) : ℚ) / (A001700 n : ℚ)|

end

end A226057.P5481974906115768184

/-! ## A226057.P1515746730687231890

`A204248(n)*A208906(A000124(n))`
-/

namespace A226057.P1515746730687231890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204248 n * A208906 (A000124 n).toNat

end

end A226057.P1515746730687231890

/-!
# A226060: First differences of A213709.

The programs for A226060, the canonical program `A226060.P13014276364689543860` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A226060 has offset 0).

The definition of A226060 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A213709, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A226060.P13014276364689543860

`A213709(n+1)-A213709(n)`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A226060

/-- `A213709(n+1)-A213709(n)` -/
def P13014276364689543860.Spec : Prop :=
  ∀ n, P13014276364689543860.a n = A226060 n

theorem P13014276364689543860.correct : P13014276364689543860.Spec := by
  intro n
  simp only [A226060]

end A226060

/-! ## A226060.P13846837739380184614

`Δ[A213709(n)]`
-/

namespace A226060.P13846837739380184614
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213709 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A226060.P13846837739380184614

namespace A226060

/-- `Δ[A213709(n)]` -/
def P13846837739380184614.Spec : Prop :=
  ∀ n, P13846837739380184614.a n = A226060 n

theorem P13846837739380184614.correct : P13846837739380184614.Spec := by
  intro n
  simp only [A226060, Nat.add_sub_cancel, A226060.P13846837739380184614.f1, A226060.P13846837739380184614.a, A226060.P13014276364689543860.a, SequenceMachineLib.memo_apply]

end A226060

/-! ## A226060.P2120168579615882126

`Δ[A218543(n)+A218542(n)]`
-/

namespace A226060.P2120168579615882126
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218543 n + A218542 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A226060.P2120168579615882126

namespace A226060

/-- `Δ[A218543(n)+A218542(n)]` -/
def P2120168579615882126.Spec : Prop :=
  ∀ n, P2120168579615882126.a n = A226060 n

end A226060

/-! ## A226060.P739998803406499125

`Δ[A257259(n)+2*A218543(n)]`
-/

namespace A226060.P739998803406499125
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257259 n + 2 * A218543 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A226060.P739998803406499125

namespace A226060

/-- `Δ[A257259(n)+2*A218543(n)]` -/
def P739998803406499125.Spec : Prop :=
  ∀ n, P739998803406499125.a n = A226060 n

end A226060

/-! ## A226060.P12001816852584487631

`Δ[2*A218542(n)-A257259(n)]`
-/

namespace A226060.P12001816852584487631
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A218542 n - A257259 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A226060.P12001816852584487631

namespace A226060

/-- `Δ[2*A218542(n)-A257259(n)]` -/
def P12001816852584487631.Spec : Prop :=
  ∀ n, P12001816852584487631.a n = A226060 n

end A226060

/-!
# A226061: Partial sums of A219661.

The programs for A226061, the canonical program `A226061.P362389854874692894` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A226061 has offset 1).

The definition of A226061 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A219665, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A226061.P362389854874692894

`A219665(n+1)-1`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A226061

/-- `A219665(n+1)-1` -/
def P362389854874692894.Spec : Prop :=
  ∀ n, P362389854874692894.a n = A226061 (n + 1)

theorem P362389854874692894.correct : P362389854874692894.Spec := by
  intro n
  simp only [A226061, Nat.add_sub_cancel]

end A226061

/-! ## A226061.P15288519445073998140

`a(n-1)+A219661(n)` with `a(0)=0`
-/

namespace A226061.P15288519445073998140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) + A219661 n

end

end A226061.P15288519445073998140

namespace A226061

/-- `a(n-1)+A219661(n)` -/
def P15288519445073998140.Spec : Prop :=
  ∀ n, P15288519445073998140.a n = A226061 (n + 1)

end A226061

/-! ## A226061.P6847292319765814294

`A219652((n+1)!-1)`
-/

namespace A226061.P6847292319765814294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219652 (Nat.factorial (n + 1) - 1)

end

end A226061.P6847292319765814294

namespace A226061

/-- `A219652((n+1)!-1)` -/
def P6847292319765814294.Spec : Prop :=
  ∀ n, P6847292319765814294.a n = A226061 (n + 1)

end A226061

/-! ## A226061.P2704530704711343725

`∑[A219661(A028310(n))]-1`
-/

namespace A226061.P2704530704711343725
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219661 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A226061.P2704530704711343725

namespace A226061

/-- `∑[A219661(A028310(n))]-1` -/
def P2704530704711343725.Spec : Prop :=
  ∀ n, P2704530704711343725.a n = A226061 (n + 1)

end A226061

/-! ## A226061.P786830183316057723

`record[A219665(A262519(n))-1]`
-/

namespace A226061.P786830183316057723
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219665 (A262519 n).toNat - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A226061.P786830183316057723

namespace A226061

/-- `record[A219665(A262519(n))-1]` -/
def P786830183316057723.Spec : Prop :=
  ∀ n, P786830183316057723.a n = A226061 (n + 1)

end A226061

/-!
# A226062: a(n) = Bulgarian solitaire operation applied to the partition encoded in the runlengths of binary expansion of n.

The programs for A226062, the canonical program `A226062.P15645395154310387996` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A226062 has offset 0).

The definition of A226062 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A242424, A243353, A243354, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A226062.P15645395154310387996

`A243354(A242424(A243353(n)))`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A226062

/-- `A243354(A242424(A243353(n)))` -/
def P15645395154310387996.Spec : Prop :=
  ∀ n, P15645395154310387996.a n = A226062 n

theorem P15645395154310387996.correct : P15645395154310387996.Spec := by
  intro n
  simp only [A226062]

end A226062

/-!
# A226065: Sum of all the smaller parts raised to their corresponding larger parts of the partitions of n into exactly two parts.

The programs for A226065, the canonical program `A226065.P1212730463968089765` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A226065 has offset 1).

The definition of A226065 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A226065.P1212730463968089765

`∑{#}[floor((n+1)/2)-1, (#+1)^(n+1-(#+1))]`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A226065

/-- `∑{#}[floor((n+1)/2)-1, (#+1)^(n+1-(#+1))]` -/
def P1212730463968089765.Spec : Prop :=
  ∀ n, P1212730463968089765.a n = (A226065 (n + 1) : ℚ)

end A226065

/-! ## A226065.P9100867847937883684

`A085862(8*A058255(n+1))`
-/

namespace A226065.P9100867847937883684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085862 (8 * A058255 (n + 1)).toNat

end

end A226065.P9100867847937883684

namespace A226065

/-- `A085862(8*A058255(n+1))` -/
def P9100867847937883684.Spec : Prop :=
  ∀ n, P9100867847937883684.a n = A226065 (n + 1)

end A226065

/-! ## A226065.P17929988791117348719

`floor(A360865(2*n+1)/A254709(n+1))`
-/

namespace A226065.P17929988791117348719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A360865 (2 * n + 1) : ℚ) / (A254709 (n + 1) : ℚ)⌋

end

end A226065.P17929988791117348719

namespace A226065

/-- `floor(A360865(2*n+1)/A254709(n+1))` -/
def P17929988791117348719.Spec : Prop :=
  ∀ n, P17929988791117348719.a n = A226065 (n + 1)

end A226065

/-!
# A226066: Smallest k such that n numbers can be picked in {1,...,k} with no six terms in arithmetic progression.

The programs for A226066, there is no canonical definition to state claims against.
-/

/-! ## A226066.P8797819636656058941

`lt[A223735(n+1), A329410(A329564(2*n+1))]`
-/

namespace A226066.P8797819636656058941
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223735 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329410 (A329564 (2 * n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A226066.P8797819636656058941

/-! ## A226066.P7046451968835715110

`lt[1, A209662(A294848(n))]`
-/

namespace A226066.P7046451968835715110
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209662 (A294848 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A226066.P7046451968835715110

/-! ## A226066.P3546642669782856215

`record[ceil(A012265(A193988(n+1))/ϕ)]`
-/

namespace A226066.P3546642669782856215
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A012265 (A193988 (n + 1)).toNat : ℝ) / Real.goldenRatio⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A226066.P3546642669782856215

/-! ## A226066.P3401639718130864655

`∑[A218775(A149730(A053646(n+1)))]`
-/

namespace A226066.P3401639718130864655
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218775 (A149730 (A053646 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A226066.P3401639718130864655

/-! ## A226066.P11983743366825643824

`A026351(2*n)+A102683(A189111(n+1))-2*n`
-/

namespace A226066.P11983743366825643824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026351 (2 * n) + (A102683 (A189111 (n + 1)).toNat - (2 * n : ℤ))

end

end A226066.P11983743366825643824

/-!
# A226067: G.f. satisfies: A(x) = 1 + x*( d/dx x*A(x)^8 )^(1/4).

The programs for A226067, there is no canonical definition to state claims against.
-/

/-! ## A226067.P12123341408158656489

`A003160((∑[n]+1)*n!)`
-/

namespace A226067.P12123341408158656489
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003160 ((∑ j ∈ Finset.range (n + 1), f1 j + 1) * Nat.factorial n)

end

end A226067.P12123341408158656489

/-! ## A226067.P17834888645965010807

`A032742((∑[n]+1)*n!)`
-/

namespace A226067.P17834888645965010807
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032742 ((∑ j ∈ Finset.range (n + 1), f1 j + 1) * Nat.factorial n)

end

end A226067.P17834888645965010807

/-!
# A226068: The sum of the positive integers not exceeding 2n that are representable as the sum of two successive sexy primes.

The programs for A226068, there is no canonical definition to state claims against.
-/

/-! ## A226068.P8925008524502297291

`∑[2*(n+1)*A000035(A022920(n+1))]`
-/

namespace A226068.P8925008524502297291
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * (n + 1) : ℤ) * A000035 (A022920 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A226068.P8925008524502297291

/-! ## A226068.P8832634335896735447

`∑[A000035(A022920(n+1))*A103517(n)]`
-/

namespace A226068.P8832634335896735447
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A022920 (n + 1)).toNat * A103517 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A226068.P8832634335896735447

/-! ## A226068.P12033776933701441048

`∑[A000035(A022920(n+1))*A005843(n+1)]`
-/

namespace A226068.P12033776933701441048
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A022920 (n + 1)).toNat * A005843 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A226068.P12033776933701441048

/-! ## A226068.P3196973151205743025

`∑[A000035(A022920(n+1))*A285109(n+1)]`
-/

namespace A226068.P3196973151205743025
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A022920 (n + 1)).toNat * A285109 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A226068.P3196973151205743025

/-!
# A226069: Primes p such that p-1 is a square and p-2 is a triangular number.

The programs for A226069, there is no canonical definition to state claims against.
-/

/-! ## A226069.P14469120997160620996

`A226070(n+1)²+1`
-/

namespace A226069.P14469120997160620996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226070 (n + 1) ^ 2 + 1

end

end A226069.P14469120997160620996

/-!
# A226070: Numbers k such that k^2-1 is a triangular number and k^2+1 is a prime.

The programs for A226070, there is no canonical definition to state claims against.
-/

/-! ## A226070.P12340163629304246033

`floor(sqrt(A226069(n+1)))`
-/

namespace A226070.P12340163629304246033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A226069 (n + 1))

end

end A226070.P12340163629304246033

/-!
# A226071: Numbers k such that triangular(k)+1 is a square and triangular(k)+2 is a prime.

The programs for A226071, there is no canonical definition to state claims against.
-/

/-! ## A226071.P1860690440689909823

`A006451(∑[n]-round(xor(1, n)/6))`
-/

namespace A226071.P1860690440689909823
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006451 (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - SequenceMachineLib.roundAway ((Nat.xor 1 n : ℚ) / 6)).toNat

end

end A226071.P1860690440689909823

/-!
# A226074: 

The programs for A226074, there is no canonical definition to state claims against.
-/

/-! ## A226074.P17439705702583785781

`A106328(∑[n!])`
-/

namespace A226074.P17439705702583785781
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106328 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A226074.P17439705702583785781

/-!
# A226075: Expansion of (eta(q) * eta(q^11))^2 + 2 * (eta(q^2) * eta(q^22))^2 in powers of q.

The programs for A226075, there is no canonical definition to state claims against.
-/

/-! ## A226075.P4726282465152971016

`A006571(4*(n+1))/2`
-/

namespace A226075.P4726282465152971016
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A006571 (4 * (n + 1)) : ℚ) / 2

end

end A226075.P4726282465152971016

/-! ## A226075.P9578839887052158339

`ceil(A006571(record[xor(3, n)]+1)/2)`
-/

namespace A226075.P9578839887052158339
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 3 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A006571 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + 1) : ℚ) / 2⌉

end

end A226075.P9578839887052158339

/-! ## A226075.P11688973684358115160

`-(A006571(2*(n+1))+A006571(n+1))`
-/

namespace A226075.P11688973684358115160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(A006571 (2 * (n + 1)) + A006571 (n + 1))

end

end A226075.P11688973684358115160

/-! ## A226075.P14634359048567075867

`A006571(2*(n+1))+A006571(4*(n+1))+A006571(n+1)`
-/

namespace A226075.P14634359048567075867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006571 (2 * (n + 1)) + (A006571 (4 * (n + 1)) + A006571 (n + 1))

end

end A226075.P14634359048567075867

/-!
# A226076: Lexicographically least sequence of squares that are sum-free.

The programs for A226076, the canonical program `A226076.P2217710949303536260` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A226076 has offset 1).

The definition of A226076 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 495 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A226076.P2217710949303536260

`4*a(n-3)` with `a(0)=1, a(1)=4, a(2)=9, a(3)=16, a(4)=36, a(5)=64, a(6)=144, a(7)=256, a(8)=289`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A226076

/-- `4*a(n-3)` -/
def P2217710949303536260.Spec : Prop :=
  ∀ n, (P2217710949303536260.a n : ℤ) = A226076 (n + 1)

theorem P2217710949303536260.correct : P2217710949303536260.Spec := by
  intro n
  simp only [A226076, Nat.add_sub_cancel]

end A226076

/-! ## A226076.P16397573066962097240

`ogf((1+4x+9x^2+12x^3+20x^4+28x^5+80x^6+112x^7+33x^8)/(1-4x^3))`
-/

namespace A226076.P16397573066962097240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 4, 9, 12, 20, 28, 80, 112, 33] [1, 0, 0, -4] n

end

end A226076.P16397573066962097240

namespace A226076

/-- `ogf((1+4x+9x^2+12x^3+20x^4+28x^5+80x^6+112x^7+33x^8)/(1-4x^3))` -/
def P16397573066962097240.Spec : Prop :=
  ∀ n, P16397573066962097240.a n = A226076 (n + 1)

end A226076

/-! ## A226076.P3400056750522129112

`A048645(eq[A029635(n), A057145(n+2)])²`
-/

namespace A226076.P3400056750522129112
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029635 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057145 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048645 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n) ^ 2

end

end A226076.P3400056750522129112

namespace A226076

/-- `A048645(eq[A029635(n), A057145(n+2)])²` -/
def P3400056750522129112.Spec : Prop :=
  ∀ n, P3400056750522129112.a n = A226076 (n + 1)

end A226076

/-! ## A226076.P8062699990019047380

`A048645(eq[A002262(n), A204459(n)])²`
-/

namespace A226076.P8062699990019047380
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204459 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048645 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n) ^ 2

end

end A226076.P8062699990019047380

namespace A226076

/-- `A048645(eq[A002262(n), A204459(n)])²` -/
def P8062699990019047380.Spec : Prop :=
  ∀ n, P8062699990019047380.a n = A226076 (n + 1)

end A226076

/-! ## A226076.P13072450249859663638

`A321266(n+1)²`
-/

namespace A226076.P13072450249859663638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321266 (n + 1) ^ 2

end

end A226076.P13072450249859663638

namespace A226076

/-- `A321266(n+1)²` -/
def P13072450249859663638.Spec : Prop :=
  ∀ n, P13072450249859663638.a n = A226076 (n + 1)

end A226076

/-! ## A226076.P6405695394507326242

`record[A321266(ceil(C(or(1, n), n)/2))²]`
-/

namespace A226076.P6405695394507326242
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321266 ⌈(Nat.choose (Nat.lor 1 n) n : ℚ) / 2⌉.toNat ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A226076.P6405695394507326242

namespace A226076

/-- `record[A321266(ceil(C(or(1, n), n)/2))²]` -/
def P6405695394507326242.Spec : Prop :=
  ∀ n, P6405695394507326242.a n = A226076 (n + 1)

end A226076

/-! ## A226076.P4560226122423543135

`A321266(A000027(n+1))^2`
-/

namespace A226076.P4560226122423543135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321266 (A000027 (n + 1)).toNat ^ 2

end

end A226076.P4560226122423543135

namespace A226076

/-- `A321266(A000027(n+1))^2` -/
def P4560226122423543135.Spec : Prop :=
  ∀ n, P4560226122423543135.a n = A226076 (n + 1)

end A226076

/-! ## A226076.P659483619652461693

`A321266(A000027(n+1))*A321266(n+1)`
-/

namespace A226076.P659483619652461693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321266 (A000027 (n + 1)).toNat * A321266 (n + 1)

end

end A226076.P659483619652461693

namespace A226076

/-- `A321266(A000027(n+1))*A321266(n+1)` -/
def P659483619652461693.Spec : Prop :=
  ∀ n, P659483619652461693.a n = A226076 (n + 1)

end A226076

/-!
# A226077: a(1)=1; a(n) = smallest positive integer not yet in the sequence, such that a(n) and a(n-1) have exactly one common 1-bit in their binary representations.

The programs for A226077, there is no canonical definition to state claims against.
-/

/-! ## A226077.P12364596159236174411

`A191655(A252753(n)%A204559(n+1))`
-/

namespace A226077.P12364596159236174411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191655 (Int.tmod (A252753 n) (A204559 (n + 1))).toNat

end

end A226077.P12364596159236174411

/-! ## A226077.P12036552304288813010

`A191655(A332815(n)%A204559(n+1))`
-/

namespace A226077.P12036552304288813010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191655 (Int.tmod (A332815 n) (A204559 (n + 1))).toNat

end

end A226077.P12036552304288813010

/-! ## A226077.P10973011789757001999

`A191655(C(A332815(n), A288739(n+1)²))`
-/

namespace A226077.P10973011789757001999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191655 (Nat.choose (A332815 n).toNat (A288739 (n + 1) ^ 2).toNat)

end

end A226077.P10973011789757001999

/-!
# A226080: Denominators in the Fibonacci (or rabbit) ordering of the positive rational numbers.

The programs for A226080, there is no canonical definition to state claims against.
-/

/-! ## A226080.P9118405147932970072

`A226081(A003622(n+2))`
-/

namespace A226080.P9118405147932970072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226081 (A003622 (n + 2)).toNat

end

end A226080.P9118405147932970072

/-! ## A226080.P7799382645078517192

`A226081(A026274(n+1)+1)`
-/

namespace A226080.P7799382645078517192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226081 (A026274 (n + 1) + 1).toNat

end

end A226080.P7799382645078517192

/-! ## A226080.P1277247383057775923

`A226081(A001950(n+2)-1)`
-/

namespace A226080.P1277247383057775923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226081 (A001950 (n + 2) - 1).toNat

end

end A226080.P1277247383057775923

/-! ## A226080.P17222958630130184232

`A226081(A000201(n+2)+n+1)`
-/

namespace A226080.P17222958630130184232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226081 (A000201 (n + 2) + (n + 1 : ℤ)).toNat

end

end A226080.P17222958630130184232

/-! ## A226080.P249770825582976812

`A226081(A000201(A000201(n+2)))`
-/

namespace A226080.P249770825582976812
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226081 (A000201 (A000201 (n + 2)).toNat).toNat

end

end A226080.P249770825582976812

/-! ## A226080.P17867044835317542822

`A226081(A095098(n+1))`
-/

namespace A226080.P17867044835317542822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226081 (A095098 (n + 1)).toNat

end

end A226080.P17867044835317542822

/-! ## A226080.P15163914994888938372

`A226081(A134859(n+2))`
-/

namespace A226080.P15163914994888938372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226081 (A134859 (n + 2)).toNat

end

end A226080.P15163914994888938372

/-! ## A226080.P16719130886849319316

`A020651(A048679(n+1))`
-/

namespace A226080.P16719130886849319316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020651 (A048679 (n + 1)).toNat

end

end A226080.P16719130886849319316

/-! ## A226080.P6710313553174519469

`A226081(A151915(n+2))`
-/

namespace A226080.P6710313553174519469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226081 (A151915 (n + 2)).toNat

end

end A226080.P6710313553174519469

/-! ## A226080.P3397539279504271790

`A020651(A371176(n+1))`
-/

namespace A226080.P3397539279504271790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020651 (A371176 (n + 1)).toNat

end

end A226080.P3397539279504271790

/-!
# A226081: Numerators in the Fibonacci (or rabbit) ordering of the positive rational numbers.

The programs for A226081, there is no canonical definition to state claims against.
-/

/-! ## A226081.P2579175966307500295

`A226080(A003622(n+2))-A226080(n+1)`
-/

namespace A226081.P2579175966307500295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226080 (A003622 (n + 2)).toNat - A226080 (n + 1)

end

end A226081.P2579175966307500295

/-! ## A226081.P428604682373332202

`A226080(A001950(n+2)-1)-A226080(n+1)`
-/

namespace A226081.P428604682373332202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226080 (A001950 (n + 2) - 1).toNat - A226080 (n + 1)

end

end A226081.P428604682373332202

/-! ## A226081.P13807941660032458611

`A226080(A000201(A000201(n+2)))-A226080(n+1)`
-/

namespace A226081.P13807941660032458611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226080 (A000201 (A000201 (n + 2)).toNat).toNat - A226080 (n + 1)

end

end A226081.P13807941660032458611

/-! ## A226081.P8841958880326369085

`A020650(A048679(n+1))`
-/

namespace A226081.P8841958880326369085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020650 (A048679 (n + 1)).toNat

end

end A226081.P8841958880326369085

/-! ## A226081.P16468871878221688351

`A226080(A035337(n+1))-A226080(n+1)`
-/

namespace A226081.P16468871878221688351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226080 (A035337 (n + 1)).toNat - A226080 (n + 1)

end

end A226081.P16468871878221688351

/-!
# A226084: Number of partitions of n with Cookie Monster number 2.

The programs for A226084, the canonical program `A226084.P639156218572003738` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A226084 has offset 1).

The definition of A226084 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A226084.P639156218572003738

`(A189835(n+1)-A346759(n+1))/2`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A226084

/-- `(A189835(n+1)-A346759(n+1))/2` -/
def P639156218572003738.Spec : Prop :=
  ∀ n, P639156218572003738.a n = (A226084 (n + 1) : ℚ)

end A226084

/-! ## A226084.P1264086054402432719

`A014682(A189835(n+1)-A346759(n+1))`
-/

namespace A226084.P1264086054402432719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A189835 (n + 1) - A346759 (n + 1)).toNat

end

end A226084.P1264086054402432719

namespace A226084

/-- `A014682(A189835(n+1)-A346759(n+1))` -/
def P1264086054402432719.Spec : Prop :=
  ∀ n, P1264086054402432719.a n = A226084 (n + 1)

end A226084

/-! ## A226084.P11138011817773397269

`∑{d}[n+1, A110654(A242477(#))-A110654(n)]`
-/

namespace A226084.P11138011817773397269
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (A110654 (A242477 d).toNat - A110654 n)

end

end A226084.P11138011817773397269

namespace A226084

/-- `∑{d}[n+1, A110654(A242477(#))-A110654(n)]` -/
def P11138011817773397269.Spec : Prop :=
  ∀ n, P11138011817773397269.a n = A226084 (n + 1)

end A226084

/-! ## A226084.P130591639375225996

`A004525(A189835(n+1)-A346759(n+1))`
-/

namespace A226084.P130591639375225996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A189835 (n + 1) - A346759 (n + 1)).toNat

end

end A226084.P130591639375225996

namespace A226084

/-- `A004525(A189835(n+1)-A346759(n+1))` -/
def P130591639375225996.Spec : Prop :=
  ∀ n, P130591639375225996.a n = A226084 (n + 1)

end A226084

/-! ## A226084.P637855120505353831

`A004526(A189835(n+1)-A346759(n+1))`
-/

namespace A226084.P637855120505353831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A189835 (n + 1) - A346759 (n + 1)).toNat

end

end A226084.P637855120505353831

namespace A226084

/-- `A004526(A189835(n+1)-A346759(n+1))` -/
def P637855120505353831.Spec : Prop :=
  ∀ n, P637855120505353831.a n = A226084 (n + 1)

end A226084

/-! ## A226084.P16404256194716647124

`A025480(A189835(n+1)-A346759(n+1))`
-/

namespace A226084.P16404256194716647124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025480 (A189835 (n + 1) - A346759 (n + 1)).toNat

end

end A226084.P16404256194716647124

namespace A226084

/-- `A025480(A189835(n+1)-A346759(n+1))` -/
def P16404256194716647124.Spec : Prop :=
  ∀ n, P16404256194716647124.a n = A226084 (n + 1)

end A226084

/-! ## A226084.P15599611972136432514

`A029578(A189835(n+1)-A346759(n+1))`
-/

namespace A226084.P15599611972136432514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029578 (A189835 (n + 1) - A346759 (n + 1)).toNat

end

end A226084.P15599611972136432514

namespace A226084

/-- `A029578(A189835(n+1)-A346759(n+1))` -/
def P15599611972136432514.Spec : Prop :=
  ∀ n, P15599611972136432514.a n = A226084 (n + 1)

end A226084

/-!
# A226085: Irregular triangular array T(n,k) of consecutive composites.

The programs for A226085, there is no canonical definition to state claims against.
-/

/-! ## A226085.P1385799313475845367

`A114035(A175839(n+1))`
-/

namespace A226085.P1385799313475845367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114035 (A175839 (n + 1)).toNat

end

end A226085.P1385799313475845367

/-! ## A226085.P5491473488930133664

`∑[A131749(A005578(n)²)]`
-/

namespace A226085.P5491473488930133664
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131749 (A005578 n ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A226085.P5491473488930133664

/-! ## A226085.P14268968256745224373

`∑[A131844(∑[A131824(n)])]`
-/

namespace A226085.P14268968256745224373
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131824 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131844 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A226085.P14268968256745224373

/-! ## A226085.P1485740059282599636

`∑[A057237(A008989(n)+4)]`
-/

namespace A226085.P1485740059282599636
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057237 (A008989 n + 4).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A226085.P1485740059282599636

/-! ## A226085.P10403279178365804648

`∑[A049563(A000672(2*n)+2)]`
-/

namespace A226085.P10403279178365804648
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049563 (A000672 (2 * n) + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A226085.P10403279178365804648

/-!
# A226088: a(n) is the number of the distinct quadrilaterals in a regular n-gon, which Q3 type are excluded.

The programs for A226088, the canonical program `A226088.P2410395057372989746` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A226088 has offset 3).

The definition of A226088 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A226088.P2410395057372989746

`∑[a(n-2)+a(n-2)%3]` with `a(0)=0, a(1)=1, a(2)=0, a(3)=2, a(4)=1`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A226088

/-- `∑[a(n-2)+a(n-2)%3]` -/
def P2410395057372989746.Spec : Prop :=
  ∀ n, (P2410395057372989746.a n : ℤ) = A226088 (n + 3)

theorem P2410395057372989746.correct : P2410395057372989746.Spec := by
  intro n
  simp only [A226088, Nat.add_sub_cancel]

end A226088

/-! ## A226088.P16181938377688074057

`ogf((x-x^2+2x^3-x^4+2x^5-x^6+x^7)/(1-2x+x^2-x^4+2x^5-x^6))`
-/

namespace A226088.P16181938377688074057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1, -1, 2, -1, 2, -1, 1] [1, -2, 1, 0, -1, 2, -1] n

end

end A226088.P16181938377688074057

namespace A226088

/-- `ogf((x-x^2+2x^3-x^4+2x^5-x^6+x^7)/(1-2x+x^2-x^4+2x^5-x^6))` -/
def P16181938377688074057.Spec : Prop :=
  ∀ n, P16181938377688074057.a n = A226088 (n + 3)

end A226088

/-! ## A226088.P8281044514354411225

`∑[A267528(A030451(n))-1]`
-/

namespace A226088.P8281044514354411225
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267528 (A030451 n).toNat - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A226088.P8281044514354411225

namespace A226088

/-- `∑[A267528(A030451(n))-1]` -/
def P8281044514354411225.Spec : Prop :=
  ∀ n, P8281044514354411225.a n = A226088 (n + 3)

end A226088

/-! ## A226088.P14887388514108327796

`floor(∑[A091361(A052938(n))]/4)`
-/

namespace A226088.P14887388514108327796
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091361 (A052938 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / 4⌋

end

end A226088.P14887388514108327796

namespace A226088

/-- `floor(∑[A091361(A052938(n))]/4)` -/
def P14887388514108327796.Spec : Prop :=
  ∀ n, P14887388514108327796.a n = A226088 (n + 3)

end A226088

/-! ## A226088.P10723805148669362625

`A004526(∑[a(n-2)+3])` with `a(0)=1, a(1)=1, a(2)=1, a(3)=4, a(4)=2`
-/

namespace A226088.P10723805148669362625
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 1, 1, 4, 2] fun n f1 =>
  f1 (n - 2) + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A226088.P10723805148669362625

namespace A226088

/-- `A004526(∑[a(n-2)+3])` -/
def P10723805148669362625.Spec : Prop :=
  ∀ n, P10723805148669362625.a n = A226088 (n + 3)

end A226088

/-!
# A226089: Denominators of the series b(n+1) = (b(n)+k)/(1+b(n)*k); where k = 1/(n+1), b(1) = 0.

The programs for A226089, the canonical program `A226089.P12875362830006727066` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A226089 has offset 1).

The definition of A226089 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A226089.P6047784922149721039

`lcm(2, ∑[n+1]+1)/2`
-/

namespace A226089.P6047784922149721039
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.lcm 2 (∑ j ∈ Finset.range (n + 1), f1 j + 1) : ℚ) / 2

end

end A226089.P6047784922149721039

namespace A226089

/-- `lcm(2, ∑[n+1]+1)/2` -/
def P6047784922149721039.Spec : Prop :=
  ∀ n, P6047784922149721039.a n = (A226089 (n + 1) : ℚ)

end A226089

/-! ## A226089.P12875362830006727066

`A160050(n+1)+A130658(n)`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A226089

/-- `A160050(n+1)+A130658(n)` -/
def P12875362830006727066.Spec : Prop :=
  ∀ n, P12875362830006727066.a n = A226089 (n + 1)

theorem P12875362830006727066.correct : P12875362830006727066.Spec := by
  intro n
  simp only [A226089, Nat.add_sub_cancel]

end A226089

/-! ## A226089.P16137632686090364702

`A257942(n)-A160050(n+1)`
-/

namespace A226089.P16137632686090364702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257942 n - A160050 (n + 1)

end

end A226089.P16137632686090364702

namespace A226089

/-- `A257942(n)-A160050(n+1)` -/
def P16137632686090364702.Spec : Prop :=
  ∀ n, P16137632686090364702.a n = A226089 (n + 1)

end A226089

/-! ## A226089.P4529896710781886703

`gcd(A134869(n+1), A244864(n))`
-/

namespace A226089.P4529896710781886703
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A134869 (n + 1)) (A244864 n)

end

end A226089.P4529896710781886703

namespace A226089

/-- `gcd(A134869(n+1), A244864(n))` -/
def P4529896710781886703.Spec : Prop :=
  ∀ n, (P4529896710781886703.a n : ℤ) = A226089 (n + 1)

end A226089

/-! ## A226089.P10790872328430498740

`gcd(A168566(n+1), A198833(n+1))`
-/

namespace A226089.P10790872328430498740
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A168566 (n + 1)) (A198833 (n + 1))

end

end A226089.P10790872328430498740

namespace A226089

/-- `gcd(A168566(n+1), A198833(n+1))` -/
def P10790872328430498740.Spec : Prop :=
  ∀ n, (P10790872328430498740.a n : ℤ) = A226089 (n + 1)

end A226089

/-! ## A226089.P7903798407745265101

`A000124(n+1)/A014695(n+1)`
-/

namespace A226089.P7903798407745265101
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000124 (n + 1) : ℚ) / (A014695 (n + 1) : ℚ)

end

end A226089.P7903798407745265101

namespace A226089

/-- `A000124(n+1)/A014695(n+1)` -/
def P7903798407745265101.Spec : Prop :=
  ∀ n, P7903798407745265101.a n = (A226089 (n + 1) : ℚ)

end A226089

/-! ## A226089.P12744689283847101261

`A339913(∑[2*(n+1)])`
-/

namespace A226089.P12744689283847101261
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339913 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A226089.P12744689283847101261

namespace A226089

/-- `A339913(∑[2*(n+1)])` -/
def P12744689283847101261.Spec : Prop :=
  ∀ n, P12744689283847101261.a n = A226089 (n + 1)

end A226089

/-! ## A226089.P1711149766517720046

`A000217(A000217(n+1))/A064038(n+2)`
-/

namespace A226089.P1711149766517720046
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000217 (A000217 (n + 1)).toNat : ℚ) / (A064038 (n + 2) : ℚ)

end

end A226089.P1711149766517720046

namespace A226089

/-- `A000217(A000217(n+1))/A064038(n+2)` -/
def P1711149766517720046.Spec : Prop :=
  ∀ n, P1711149766517720046.a n = (A226089 (n + 1) : ℚ)

end A226089

/-! ## A226089.P6094294483788801783

`A145051(∑[n+1])`
-/

namespace A226089.P6094294483788801783
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145051 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A226089.P6094294483788801783

namespace A226089

/-- `A145051(∑[n+1])` -/
def P6094294483788801783.Spec : Prop :=
  ∀ n, P6094294483788801783.a n = A226089 (n + 1)

end A226089

/-! ## A226089.P12837871095866027991

`abs(A030640(∑[n+1]))`
-/

namespace A226089.P12837871095866027991
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A030640 (∑ j ∈ Finset.range (n + 1), f1 j)|

end

end A226089.P12837871095866027991

namespace A226089

/-- `abs(A030640(∑[n+1]))` -/
def P12837871095866027991.Spec : Prop :=
  ∀ n, P12837871095866027991.a n = A226089 (n + 1)

end A226089

/-! ## A226089.P11282869088676114447

`A026741(∑[n+1]+1)`
-/

namespace A226089.P11282869088676114447
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A226089.P11282869088676114447

namespace A226089

/-- `A026741(∑[n+1]+1)` -/
def P11282869088676114447.Spec : Prop :=
  ∀ n, P11282869088676114447.a n = A226089 (n + 1)

end A226089

/-! ## A226089.P6308450705656779431

`A060789(∑[n+1]+1)`
-/

namespace A226089.P6308450705656779431
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060789 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A226089.P6308450705656779431

namespace A226089

/-- `A060789(∑[n+1]+1)` -/
def P6308450705656779431.Spec : Prop :=
  ∀ n, P6308450705656779431.a n = A226089 (n + 1)

end A226089

/-! ## A226089.P14223001213013834029

`A076934(∑[n+1]+1)`
-/

namespace A226089.P14223001213013834029
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076934 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A226089.P14223001213013834029

namespace A226089

/-- `A076934(∑[n+1]+1)` -/
def P14223001213013834029.Spec : Prop :=
  ∀ n, P14223001213013834029.a n = A226089 (n + 1)

end A226089

/-! ## A226089.P6047982293089370180

`A106611(∑[n+1]+1)`
-/

namespace A226089.P6047982293089370180
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106611 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A226089.P6047982293089370180

namespace A226089

/-- `A106611(∑[n+1]+1)` -/
def P6047982293089370180.Spec : Prop :=
  ∀ n, P6047982293089370180.a n = A226089 (n + 1)

end A226089

/-! ## A226089.P17713953939912491361

`A106619(∑[n+1]+1)`
-/

namespace A226089.P17713953939912491361
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106619 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A226089.P17713953939912491361

namespace A226089

/-- `A106619(∑[n+1]+1)` -/
def P17713953939912491361.Spec : Prop :=
  ∀ n, P17713953939912491361.a n = A226089 (n + 1)

end A226089

/-! ## A226089.P2925722928791378264

`A111701(∑[n+1]+1)`
-/

namespace A226089.P2925722928791378264
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111701 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A226089.P2925722928791378264

namespace A226089

/-- `A111701(∑[n+1]+1)` -/
def P2925722928791378264.Spec : Prop :=
  ∀ n, P2925722928791378264.a n = A226089 (n + 1)

end A226089

/-! ## A226089.P5043197765140019250

`A350509(∑[n+1]+1)`
-/

namespace A226089.P5043197765140019250
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350509 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A226089.P5043197765140019250

namespace A226089

/-- `A350509(∑[n+1]+1)` -/
def P5043197765140019250.Spec : Prop :=
  ∀ n, P5043197765140019250.a n = A226089 (n + 1)

end A226089

/-! ## A226089.P10622377739119305971

`A384042(∑[n+1]+1)`
-/

namespace A226089.P10622377739119305971
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A384042 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A226089.P10622377739119305971

namespace A226089

/-- `A384042(∑[n+1]+1)` -/
def P10622377739119305971.Spec : Prop :=
  ∀ n, P10622377739119305971.a n = A226089 (n + 1)

end A226089

/-! ## A226089.P11203305223548599704

`A029578(A152950(n+2))-1`
-/

namespace A226089.P11203305223548599704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029578 (A152950 (n + 2)).toNat - 1

end

end A226089.P11203305223548599704

namespace A226089

/-- `A029578(A152950(n+2))-1` -/
def P11203305223548599704.Spec : Prop :=
  ∀ n, P11203305223548599704.a n = A226089 (n + 1)

end A226089

/-! ## A226089.P6526636591253993750

`A339914(A268810(n+1))`
-/

namespace A226089.P6526636591253993750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339914 (A268810 (n + 1)).toNat

end

end A226089.P6526636591253993750

namespace A226089

/-- `A339914(A268810(n+1))` -/
def P6526636591253993750.Spec : Prop :=
  ∀ n, P6526636591253993750.a n = A226089 (n + 1)

end A226089

/-!
# A226090: Cubes that become prime when their most significant (or leftmost) digit is removed.

The programs for A226090, there is no canonical definition to state claims against.
-/

/-! ## A226090.P4929348490588818274

`lt[A328187(n), A352893(n+1)]^3`
-/

namespace A226090.P4929348490588818274
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328187 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352893 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n ^ 3

end

end A226090.P4929348490588818274

/-! ## A226090.P2797600471462327534

`A016755(lt[A304562(n+1), A178731(2*n)])`
-/

namespace A226090.P2797600471462327534
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304562 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178731 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016755 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A226090.P2797600471462327534

/-!
# A226091: Smallest m such that A225985(m) = A014261(n).

The programs for A226091, there is no canonical definition to state claims against.
-/

/-! ## A226091.P136068943673277314

`lt[n, A225985(n+1)]+1`
-/

namespace A226091.P136068943673277314
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225985 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A226091.P136068943673277314

/-! ## A226091.P15180083863690363768

`eq[0, A045887(A007957(n+1))]+1`
-/

namespace A226091.P15180083863690363768
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045887 (A007957 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A226091.P15180083863690363768

/-! ## A226091.P4386475291940440298

`eq[A007957(n+1), A225985(n+1)]+1`
-/

namespace A226091.P4386475291940440298
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007957 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225985 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A226091.P4386475291940440298

/-! ## A226091.P12265487188452986057

`A028310(lt[n, A225985(A028310(n))])`
-/

namespace A226091.P12265487188452986057
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225985 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A226091.P12265487188452986057

/-! ## A226091.P13185922454787934162

`lt[A058398(A033568(n)), A304660(n+1)]`
-/

namespace A226091.P13185922454787934162
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058398 (A033568 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304660 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A226091.P13185922454787934162

/-!
# A226095: Primes formed by concatenation (exponent then prime) of prime factorizations of the positive integers.

The programs for A226095, there is no canonical definition to state claims against.
-/

/-! ## A226095.P3975141911325633289

`p?[A123132(n+2)%A104699(n+1)]`
-/

namespace A226095.P3975141911325633289
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A123132 (n + 2)) (A104699 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A226095.P3975141911325633289

/-! ## A226095.P3072198213767649330

`p?[A123132(A109425(n+1))%(12*n+10)²]`
-/

namespace A226095.P3072198213767649330
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A123132 (A109425 (n + 1)).toNat) ((12 * n + 10) ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A226095.P3072198213767649330

/-! ## A226095.P16883649774108539013

`p?[A123132(n+2)%A052905(A017473(n))]`
-/

namespace A226095.P16883649774108539013
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A123132 (n + 2)) (A052905 (A017473 n).toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A226095.P16883649774108539013

/-! ## A226095.P6881501146906348237

`p?[A123132(A109425(n+1))]`
-/

namespace A226095.P6881501146906348237
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123132 (A109425 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A226095.P6881501146906348237

/-! ## A226095.P11732355313369261752

`p?[A123132(n+2)%A017174(n)]`
-/

namespace A226095.P11732355313369261752
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A123132 (n + 2)) (A017174 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A226095.P11732355313369261752

/-!
# A226096: Squares with doubled (4*n+2)^2.

The programs for A226096, the canonical program `A226096.P14342107071058862561` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A226096 has offset 0).

The definition of A226096 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A226096.P14342107071058862561

`ogf((1+3x+5x^3+7x^4+7x^5+5x^6+3x^8+x^9)/(1-x-2x^5+2x^6+x^10-x^11))`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A226096

/-- `ogf((1+3x+5x^3+7x^4+7x^5+5x^6+3x^8+x^9)/(1-x-2x^5+2x^6+x^10-x^11))` -/
def P14342107071058862561.Spec : Prop :=
  ∀ n, P14342107071058862561.a n = A226096 n

theorem P14342107071058862561.correct : P14342107071058862561.Spec := by
  intro n
  simp only [A226096]

end A226096

/-! ## A226096.P4560813604800538998

`∑[round(abs(cos(n%5)))]²`
-/

namespace A226096.P4560813604800538998
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway |Real.cos ((n % 5 : ℕ) : ℝ)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2

end

end A226096.P4560813604800538998

namespace A226096

/-- `∑[round(abs(cos(n%5)))]²` -/
def P4560813604800538998.Spec : Prop :=
  ∀ n, P4560813604800538998.a n = A226096 n

end A226096

/-! ## A226096.P17592758789381600683

`round(4*(n+1)/5)²`
-/

namespace A226096.P17592758789381600683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (4 * ((n + 1 : ℚ) / 5)) ^ 2

end

end A226096.P17592758789381600683

namespace A226096

/-- `round(4*(n+1)/5)²` -/
def P17592758789381600683.Spec : Prop :=
  ∀ n, P17592758789381600683.a n = A226096 n

end A226096

/-! ## A226096.P3574680767856153219

`floor(∑[a(n-5)²]²)` with `a(0)=1, a(1)=1, a(2)=0, a(3)=1, a(4)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A226096.P3574680767856153219
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 1, 0, 1, 1] fun n f1 =>
  f1 (n - 5) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2

end

end A226096.P3574680767856153219

namespace A226096

/-- `floor(∑[a(n-5)²]²)` -/
def P3574680767856153219.Spec : Prop :=
  ∀ n, (P3574680767856153219.a n : ℤ) = A226096 n

end A226096

/-! ## A226096.P1933420394488704632

`∑[A011558(n+3)]^2`
-/

namespace A226096.P1933420394488704632
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011558 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2

end

end A226096.P1933420394488704632

namespace A226096

/-- `∑[A011558(n+3)]^2` -/
def P1933420394488704632.Spec : Prop :=
  ∀ n, P1933420394488704632.a n = A226096 n

end A226096

/-! ## A226096.P1137865738527722102

`∑[A096431(n+1)-A194222(n+1)]`
-/

namespace A226096.P1137865738527722102
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096431 (n + 1) - A194222 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A226096.P1137865738527722102

namespace A226096

/-- `∑[A096431(n+1)-A194222(n+1)]` -/
def P1137865738527722102.Spec : Prop :=
  ∀ n, P1137865738527722102.a n = A226096 n

end A226096

/-! ## A226096.P17021630758391372949

`A000290(2*n+1-A047252(n+1))`
-/

namespace A226096.P17021630758391372949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000290 ((2 * n + 1 : ℤ) - A047252 (n + 1)).toNat

end

end A226096.P17021630758391372949

namespace A226096

/-- `A000290(2*n+1-A047252(n+1))` -/
def P17021630758391372949.Spec : Prop :=
  ∀ n, P17021630758391372949.a n = A226096 n

end A226096

/-! ## A226096.P9252056513463333982

`A008794(A047426(n+2))`
-/

namespace A226096.P9252056513463333982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008794 (A047426 (n + 2)).toNat

end

end A226096.P9252056513463333982

namespace A226096

/-- `A008794(A047426(n+2))` -/
def P9252056513463333982.Spec : Prop :=
  ∀ n, P9252056513463333982.a n = A226096 n

end A226096

/-! ## A226096.P2503586774023718751

`A008794(A047434(n+2))`
-/

namespace A226096.P2503586774023718751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008794 (A047434 (n + 2)).toNat

end

end A226096.P2503586774023718751

namespace A226096

/-- `A008794(A047434(n+2))` -/
def P2503586774023718751.Spec : Prop :=
  ∀ n, P2503586774023718751.a n = A226096 n

end A226096

/-! ## A226096.P15769651933061213078

`A008794(A047496(n+2))`
-/

namespace A226096.P15769651933061213078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008794 (A047496 (n + 2)).toNat

end

end A226096.P15769651933061213078

namespace A226096

/-- `A008794(A047496(n+2))` -/
def P15769651933061213078.Spec : Prop :=
  ∀ n, P15769651933061213078.a n = A226096 n

end A226096

/-! ## A226096.P16396836137287199438

`A008794(A047500(n+2))`
-/

namespace A226096.P16396836137287199438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008794 (A047500 (n + 2)).toNat

end

end A226096.P16396836137287199438

namespace A226096

/-- `A008794(A047500(n+2))` -/
def P16396836137287199438.Spec : Prop :=
  ∀ n, P16396836137287199438.a n = A226096 n

end A226096

/-! ## A226096.P302838681203408401

`A008794(A047427(n+2))`
-/

namespace A226096.P302838681203408401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008794 (A047427 (n + 2)).toNat

end

end A226096.P302838681203408401

namespace A226096

/-- `A008794(A047427(n+2))` -/
def P302838681203408401.Spec : Prop :=
  ∀ n, P302838681203408401.a n = A226096 n

end A226096

/-! ## A226096.P4183982349609322360

`A008794(A047435(n+2))`
-/

namespace A226096.P4183982349609322360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008794 (A047435 (n + 2)).toNat

end

end A226096.P4183982349609322360

namespace A226096

/-- `A008794(A047435(n+2))` -/
def P4183982349609322360.Spec : Prop :=
  ∀ n, P4183982349609322360.a n = A226096 n

end A226096

/-! ## A226096.P5146334537189977704

`A008794(A047497(n+2))`
-/

namespace A226096.P5146334537189977704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008794 (A047497 (n + 2)).toNat

end

end A226096.P5146334537189977704

namespace A226096

/-- `A008794(A047497(n+2))` -/
def P5146334537189977704.Spec : Prop :=
  ∀ n, P5146334537189977704.a n = A226096 n

end A226096

/-! ## A226096.P14908091414853749930

`A008794(A047501(n+2))`
-/

namespace A226096.P14908091414853749930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008794 (A047501 (n + 2)).toNat

end

end A226096.P14908091414853749930

namespace A226096

/-- `A008794(A047501(n+2))` -/
def P14908091414853749930.Spec : Prop :=
  ∀ n, P14908091414853749930.a n = A226096 n

end A226096

/-! ## A226096.P1760522727567300733

`A000290(2*n+1-A057355(2*n+1))`
-/

namespace A226096.P1760522727567300733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000290 ((2 * n + 1 : ℤ) - A057355 (2 * n + 1)).toNat

end

end A226096.P1760522727567300733

namespace A226096

/-- `A000290(2*n+1-A057355(2*n+1))` -/
def P1760522727567300733.Spec : Prop :=
  ∀ n, P1760522727567300733.a n = A226096 n

end A226096

/-! ## A226096.P2500155932173181317

`A075561(A060106(n+1))`
-/

namespace A226096.P2500155932173181317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075561 (A060106 (n + 1)).toNat

end

end A226096.P2500155932173181317

namespace A226096

/-- `A075561(A060106(n+1))` -/
def P2500155932173181317.Spec : Prop :=
  ∀ n, P2500155932173181317.a n = A226096 n

end A226096

/-! ## A226096.P5238524035428249160

`A000290(A288156(3*n+2)-A288156(n))`
-/

namespace A226096.P5238524035428249160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000290 (A288156 (3 * n + 2) - A288156 n).toNat

end

end A226096.P5238524035428249160

namespace A226096

/-- `A000290(A288156(3*n+2)-A288156(n))` -/
def P5238524035428249160.Spec : Prop :=
  ∀ n, P5238524035428249160.a n = A226096 n

end A226096

/-! ## A226096.P12683491643251962911

`A007892(A247060(n+1))`
-/

namespace A226096.P12683491643251962911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007892 (A247060 (n + 1)).toNat

end

end A226096.P12683491643251962911

namespace A226096

/-- `A007892(A247060(n+1))` -/
def P12683491643251962911.Spec : Prop :=
  ∀ n, P12683491643251962911.a n = A226096 n

end A226096

/-! ## A226096.P18173614370894214534

`A287392(4*n+2)`
-/

namespace A226096.P18173614370894214534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287392 (4 * n + 2)

end

end A226096.P18173614370894214534

namespace A226096

/-- `A287392(4*n+2)` -/
def P18173614370894214534.Spec : Prop :=
  ∀ n, P18173614370894214534.a n = A226096 n

end A226096

/-!
# A226097: a(n) = ((-1)^n + 2*n - 38)*(2*n - 38) + 41.

The programs for A226097, the canonical program `A226097.P9535807455863977560` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A226097 has offset 0).

The definition of A226097 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `((-1)^n+2*n-38)*(2*n-38)+41` (program `A226097.P9535807455863977560`, by `A226097.P9535807455863977560.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A226097.P9535807455863977560

`((-1)^n+2*n-38)*(2*n-38)+41`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A226097

/-- `((-1)^n+2*n-38)*(2*n-38)+41` -/
def P9535807455863977560.Spec : Prop :=
  ∀ n, P9535807455863977560.a n = A226097 n

theorem P9535807455863977560.correct : P9535807455863977560.Spec := by
  intro n
  simp only [A226097]

end A226097

/-! ## A226097.P5685771071301720845

`A060566(2*(n+1)-and(1, n))`
-/

namespace A226097.P5685771071301720845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060566 (2 * (n + 1) - Nat.land 1 n)

end

end A226097.P5685771071301720845

namespace A226097

/-- `A060566(2*(n+1)-and(1, n))` -/
def P5685771071301720845.Spec : Prop :=
  ∀ n, P5685771071301720845.a n = A226097 n

end A226097

/-! ## A226097.P743879257858601174

`A060566(and(1, n+1)+2*n+1)`
-/

namespace A226097.P743879257858601174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060566 (Nat.land 1 (n + 1) + (2 * n + 1))

end

end A226097.P743879257858601174

namespace A226097

/-- `A060566(and(1, n+1)+2*n+1)` -/
def P743879257858601174.Spec : Prop :=
  ∀ n, P743879257858601174.a n = A226097 n

end A226097

/-! ## A226097.P1617054998859816909

`A060566(A042964(n+1))`
-/

namespace A226097.P1617054998859816909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060566 (A042964 (n + 1)).toNat

end

end A226097.P1617054998859816909

namespace A226097

/-- `A060566(A042964(n+1))` -/
def P1617054998859816909.Spec : Prop :=
  ∀ n, P1617054998859816909.a n = A226097 n

end A226097

/-! ## A226097.P14585298766079108803

`A060566(A053438(n+1))`
-/

namespace A226097.P14585298766079108803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060566 (A053438 (n + 1)).toNat

end

end A226097.P14585298766079108803

namespace A226097

/-- `A060566(A053438(n+1))` -/
def P14585298766079108803.Spec : Prop :=
  ∀ n, P14585298766079108803.a n = A226097 n

end A226097

/-!
# A226098: Fifth powers that become prime when their most significant (leftmost) decimal digit is removed.

The programs for A226098, there is no canonical definition to state claims against.
-/

/-! ## A226098.P14496729777532337920

`A138984(n+2)^A074304(A138999(n+1))`
-/

namespace A226098.P14496729777532337920
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A138984 (n + 2) : ℚ) ^ (A074304 (A138999 (n + 1)).toNat : ℤ)

end

end A226098.P14496729777532337920

/-!
# A226099: Positive integers that yield a prime when their most significant (i.e., leftmost) decimal digit is removed.

The programs for A226099, there is no canonical definition to state claims against.
-/

/-! ## A226099.P3335651433580367346

`lt[A048853(A028310(n)), A209252(n)]`
-/

namespace A226099.P3335651433580367346
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048853 (A028310 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209252 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A226099.P3335651433580367346

/-! ## A226099.P4382476533426382260

`lt[A048853(A065033(2*n)), A209252(n)]`
-/

namespace A226099.P4382476533426382260
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048853 (A065033 (2 * n)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209252 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A226099.P4382476533426382260

/-! ## A226099.P8727258637222017726

`A359983(A028835(n+1))`
-/

namespace A226099.P8727258637222017726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359983 (A028835 (n + 1)).toNat

end

end A226099.P8727258637222017726

/-! ## A226099.P1786895531946397614

`∩[A260181(n+1), A359983(n+1)]`
-/

namespace A226099.P1786895531946397614
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260181 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359983 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A226099.P1786895531946397614

/-! ## A226099.P12581511520283945947

`A260181(n+5)%A003215(A092749(n))`
-/

namespace A226099.P12581511520283945947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A260181 (n + 5)) (A003215 (A092749 n).toNat)

end

end A226099.P12581511520283945947

