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
import Seq.B000.C009
import Seq.B000.C010
import Seq.B000.C011
import Seq.B000.C012
import Seq.B000.C013
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C026
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
import Seq.B001.C010
import Seq.B001.C011
import Seq.B002.C000
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
import Seq.B004.C001
import Seq.B004.C002
import Seq.B004.C003
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
import Seq.B013.C000
import Seq.Opaque.C000
import Seq.Opaque.C001
import Seq.Opaque.C002
import Seq.Opaque.C003
import Seq.Opaque.C005
import Seq.Opaque.C006
import Seq.Opaque.C007
import Seq.Opaque.C008
import Seq.Opaque.C009
import Seq.Opaque.C010
import Seq.Opaque.C011
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
import Seq.Opaque.C024

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A295000: Prime time primes (of the form HMMSS with primes H < 24 and MM, SS < 60) such that the corresponding number of seconds after midnight is also prime.

The programs for A295000, there is no canonical definition to state claims against.
-/

/-! ## A295000.P16199915815630180533

`p?[A001222(A295003(n+1))*A295013(n+1)]`
-/

namespace A295000.P16199915815630180533
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A295003 (n + 1)).toNat * A295013 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A295000.P16199915815630180533

/-!
# A295002: Primes in A295003, the number of seconds after midnight corresponding to prime time primes A295013 (primes of the form HMMSS with primes H < 24 and MM, SS < 60).

The programs for A295002, there is no canonical definition to state claims against.
-/

/-! ## A295002.P1839910551495830433

`p?[A295003(n+1)]`
-/

namespace A295002.P1839910551495830433
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295003 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A295002.P1839910551495830433

/-! ## A295002.P2185557739738223925

`filter[A295003(n+1), A010051(#)]`
-/

namespace A295002.P2185557739738223925
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295003 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A295002.P2185557739738223925

/-! ## A295002.P7551393332210446871

`filter[A295003(n+1), A069513(#)]`
-/

namespace A295002.P7551393332210446871
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295003 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A069513 (f1 j).toNat = 1) n)

end

end A295002.P7551393332210446871

/-! ## A295002.P294611828121951891

`filter[A295003(n+1), A211487(#)]`
-/

namespace A295002.P294611828121951891
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295003 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A211487 (f1 j).toNat = 1) n)

end

end A295002.P294611828121951891

/-! ## A295002.P14073800317738761662

`filter[A295003(n+1), A302777(#)]`
-/

namespace A295002.P14073800317738761662
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295003 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A302777 (f1 j).toNat = 1) n)

end

end A295002.P14073800317738761662

/-! ## A295002.P6067681954237732287

`filter[A295003(n+1), A323152(#)]`
-/

namespace A295002.P6067681954237732287
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295003 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323152 (f1 j).toNat = 1) n)

end

end A295002.P6067681954237732287

/-! ## A295002.P12423483648461309375

`filter[A295003(n+1), A323153(#)]`
-/

namespace A295002.P12423483648461309375
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295003 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323153 (f1 j).toNat = 1) n)

end

end A295002.P12423483648461309375

/-! ## A295002.P7694922439333129276

`filter[A295003(n+1), A327861(#)]`
-/

namespace A295002.P7694922439333129276
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295003 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A327861 (f1 j).toNat = 1) n)

end

end A295002.P7694922439333129276

/-! ## A295002.P17192852172653518594

`filter[A295003(n+1), A340363(#)]`
-/

namespace A295002.P17192852172653518594
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295003 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A340363 (f1 j).toNat = 1) n)

end

end A295002.P17192852172653518594

/-! ## A295002.P1908473492282535399

`filter[A295003(n+1), A174275(#)]`
-/

namespace A295002.P1908473492282535399
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295003 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A174275 (f1 j).toNat = 1) n)

end

end A295002.P1908473492282535399

/-!
# A295005: Numbers n such that the largest digit of n^2 is 5.

The programs for A295005, there is no canonical definition to state claims against.
-/

/-! ## A295005.P9486169994242452558

`sqrt(A295015(n+1))`
-/

namespace A295005.P9486169994242452558
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A295015 (n + 1) : ℝ)

end

end A295005.P9486169994242452558

/-! ## A295005.P1701871168498414679

`root(A295015(n+1), A001316(A001316(n)))`
-/

namespace A295005.P1701871168498414679
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A295015 (n + 1) : ℝ) ^ (1 / (A001316 (A001316 n).toNat : ℝ))

end

end A295005.P1701871168498414679

/-! ## A295005.P3195210101853058498

`root(A295015(n+1), dr(A052216(n+1)))`
-/

namespace A295005.P3195210101853058498
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A295015 (n + 1) : ℝ) ^ (1 / (SequenceMachineLib.digitalRoot (A052216 (n + 1)) : ℝ))

end

end A295005.P3195210101853058498

/-! ## A295005.P13494565574528007221

`root(A295015(n+1), dr(A038444(n+1)))`
-/

namespace A295005.P13494565574528007221
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A295015 (n + 1) : ℝ) ^ (1 / (SequenceMachineLib.digitalRoot (A038444 (n + 1)) : ℝ))

end

end A295005.P13494565574528007221

/-! ## A295005.P1225288494355300350

`A000027(root(A295015(n+1), 2))`
-/

namespace A295005.P1225288494355300350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (SequenceMachineLib.roundAway ((A295015 (n + 1) : ℝ) ^ (1 / (2 : ℝ)))).toNat

end

end A295005.P1225288494355300350

/-! ## A295005.P4521585829787147565

`eq[5, A028907(n)%10]`
-/

namespace A295005.P4521585829787147565
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A028907 n) 10

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A295005.P4521585829787147565

/-!
# A295006: Numbers n such that the largest digit of n^2 is 6.

The programs for A295006, there is no canonical definition to state claims against.
-/

/-! ## A295006.P137944323013409273

`sqrt(A295016(n+1))`
-/

namespace A295006.P137944323013409273
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A295016 (n + 1) : ℝ)

end

end A295006.P137944323013409273

/-! ## A295006.P4450905581198528042

`root(A295016(n+1), dr(A017185(n)))`
-/

namespace A295006.P4450905581198528042
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A295016 (n + 1) : ℝ) ^ (1 / (SequenceMachineLib.digitalRoot (A017185 n) : ℝ))

end

end A295006.P4450905581198528042

/-! ## A295006.P14560930934461566923

`root(A295016(n+1), dr(A038444(n+1)))`
-/

namespace A295006.P14560930934461566923
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A295016 (n + 1) : ℝ) ^ (1 / (SequenceMachineLib.digitalRoot (A038444 (n + 1)) : ℝ))

end

end A295006.P14560930934461566923

/-! ## A295006.P16351452531330878089

`eq[6, A028907(n)%10]`
-/

namespace A295006.P16351452531330878089
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A028907 n) 10

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A295006.P16351452531330878089

/-!
# A295007: Numbers k such that the largest digit of k^2 is 7.

The programs for A295007, there is no canonical definition to state claims against.
-/

/-! ## A295007.P7751728537687051809

`sqrt(A295017(n+1))`
-/

namespace A295007.P7751728537687051809
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A295017 (n + 1) : ℝ)

end

end A295007.P7751728537687051809

/-! ## A295007.P16161190964592703779

`root(A295017(n+1), A020639(2*(n+1)))`
-/

namespace A295007.P16161190964592703779
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A295017 (n + 1) : ℝ) ^ (1 / (A020639 (2 * (n + 1)) : ℝ))

end

end A295007.P16161190964592703779

/-! ## A295007.P337021447152376142

`eq[7, A028907(n)%10]`
-/

namespace A295007.P337021447152376142
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A028907 n) 10

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A295007.P337021447152376142

/-! ## A295007.P6966367796443835885

`root(A295017(n+1), 2)/A007318(C(n, 2))`
-/

namespace A295007.P6966367796443835885
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A295017 (n + 1) : ℝ) ^ (1 / (2 : ℝ)) / (A007318 (Nat.choose n 2) : ℝ)

end

end A295007.P6966367796443835885

/-! ## A295007.P371896536139690072

`root(A295017(n+1), 2)*A007318(∑[n])`
-/

namespace A295007.P371896536139690072
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A295017 (n + 1) : ℝ) ^ (1 / (2 : ℝ)) * (A007318 (∑ j ∈ Finset.range (n + 1), f1 j) : ℝ)

end

end A295007.P371896536139690072

/-!
# A295008: Numbers whose square has largest digit 8.

The programs for A295008, there is no canonical definition to state claims against.
-/

/-! ## A295008.P1597628404228591810

`sqrt(A295018(n+1))`
-/

namespace A295008.P1597628404228591810
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A295018 (n + 1) : ℝ)

end

end A295008.P1597628404228591810

/-! ## A295008.P11081469459945165611

`root(A295018(or(n, char[1])+1), 4)²`
-/

namespace A295008.P11081469459945165611
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((A295018 (Nat.lor n (if ∃ j, f1 j = n then 1 else 0) + 1) : ℝ) ^ (1 / (4 : ℝ))) ^ 2

end

end A295008.P11081469459945165611

/-! ## A295008.P7133040423969860659

`root(A295018(n-C(n, n+2)+1), 4)²`
-/

namespace A295008.P7133040423969860659
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((A295018 ((n : ℤ) - (Nat.choose n (n + 2) : ℤ) + 1).toNat : ℝ) ^ (1 / (4 : ℝ))) ^ 2

end

end A295008.P7133040423969860659

/-! ## A295008.P13721880007614549916

`A000027(root(A295018(n+1), 4)²)`
-/

namespace A295008.P13721880007614549916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (SequenceMachineLib.roundAway (((A295018 (n + 1) : ℝ) ^ (1 / (4 : ℝ))) ^ 2)).toNat

end

end A295008.P13721880007614549916

/-! ## A295008.P3669654081101126088

`root(A295018(n+1), gcd(2, A002378(n)))`
-/

namespace A295008.P3669654081101126088
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A295018 (n + 1) : ℝ) ^ (1 / (Int.gcd 2 (A002378 n) : ℝ))

end

end A295008.P3669654081101126088

/-! ## A295008.P4333140298032888775

`root(A295018(n+1), A001316(A001316(n)))`
-/

namespace A295008.P4333140298032888775
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A295018 (n + 1) : ℝ) ^ (1 / (A001316 (A001316 n).toNat : ℝ))

end

end A295008.P4333140298032888775

/-! ## A295008.P17451559092558235045

`eq[0, A086017(n)^A086016(n)]`
-/

namespace A295008.P17451559092558235045
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A086017 n : ℚ) ^ (A086016 n : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℚ) = f2 j) n

end

end A295008.P17451559092558235045

/-! ## A295008.P8275506122466632051

`root(A295018(n+1), 2%A277959(n+1))`
-/

namespace A295008.P8275506122466632051
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A295018 (n + 1) : ℝ) ^ (1 / (Int.tmod 2 (A277959 (n + 1)) : ℝ))

end

end A295008.P8275506122466632051

/-!
# A295009: Numbers k such that the largest digit of k^2 is 9.

The programs for A295009, the canonical program `A295009.P8188260097870525443` is in `Seq.B001.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A295009 has offset 1).

The definition of A295009 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5541 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A295009.P13363432195716816565

`sqrt(A295019(n+1))`
-/

namespace A295009.P13363432195716816565
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A295019 (n + 1) : ℝ)

end

end A295009.P13363432195716816565

namespace A295009

/-- `sqrt(A295019(n+1))` -/
def P13363432195716816565.Spec : Prop :=
  ∀ n, P13363432195716816565.a n = (A295009 (n + 1) : ℝ)

end A295009

/-! ## A295009.P8188260097870525443

`lt[0, A086017(n)]`

The canonical program, it is in `Seq.B001.C010`.
-/

namespace A295009

/-- `lt[0, A086017(n)]` -/
def P8188260097870525443.Spec : Prop :=
  ∀ n, (P8188260097870525443.a n : ℤ) = A295009 (n + 1)

theorem P8188260097870525443.correct : P8188260097870525443.Spec := by
  intro n
  simp only [A295009, Nat.add_sub_cancel]

end A295009

/-! ## A295009.P10466796305841965626

`lt[8, A028907(n)%10]`
-/

namespace A295009.P10466796305841965626
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A028907 n) 10

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A295009.P10466796305841965626

namespace A295009

/-- `lt[8, A028907(n)%10]` -/
def P10466796305841965626.Spec : Prop :=
  ∀ n, (P10466796305841965626.a n : ℤ) = A295009 (n + 1)

end A295009

/-! ## A295009.P5914830646494712583

`eq[0, A002262(a(A086017(n)))]` with `a(0)=2`
-/

namespace A295009.P5914830646494712583
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.rec [2] fun n f2 =>
  A002262 (f2 (A086017 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A295009.P5914830646494712583

namespace A295009

/-- `eq[0, A002262(a(A086017(n)))]` -/
def P5914830646494712583.Spec : Prop :=
  ∀ n, (P5914830646494712583.a n : ℤ) = A295009 (n + 1)

end A295009

/-! ## A295009.P2783052403238980734

`eq[0, A071399(a(A086017(n)))]` with `a(0)=2`
-/

namespace A295009.P2783052403238980734
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.rec [2] fun n f2 =>
  A071399 (f2 (A086017 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A295009.P2783052403238980734

namespace A295009

/-- `eq[0, A071399(a(A086017(n)))]` -/
def P2783052403238980734.Spec : Prop :=
  ∀ n, (P2783052403238980734.a n : ℤ) = A295009 (n + 1)

end A295009

/-! ## A295009.P796316515375046938

`eq[1, A000010(a(A086017(n)))]` with `a(0)=3`
-/

namespace A295009.P796316515375046938
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.rec [3] fun n f2 =>
  A000010 (f2 (A086017 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A295009.P796316515375046938

namespace A295009

/-- `eq[1, A000010(a(A086017(n)))]` -/
def P796316515375046938.Spec : Prop :=
  ∀ n, (P796316515375046938.a n : ℤ) = A295009 (n + 1)

end A295009

/-!
# A295011: Numbers of the form HMMSS with primes H < 24 and MM, SS < 60, for which the number of seconds after midnight, 3600*H+60*MM+SS, is also prime.

The programs for A295011, there is no canonical definition to state claims against.
-/

/-! ## A295011.P6776108637284014291

`A055643(p?[A295004(n+1)])`
-/

namespace A295011.P6776108637284014291
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295004 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055643 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A295011.P6776108637284014291

/-! ## A295011.P13843476577149804477

`A055643(record[A006530(A295004(n+5))])`
-/

namespace A295011.P13843476577149804477
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A295004 (n + 5)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055643 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A295011.P13843476577149804477

/-! ## A295011.P17312583816994518994

`A055643(record[A014963(A295004(n+5))])`
-/

namespace A295011.P17312583816994518994
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A295004 (n + 5)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055643 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A295011.P17312583816994518994

/-! ## A295011.P6543125731368408812

`A055643(record[A020639(A295004(n+5))])`
-/

namespace A295011.P6543125731368408812
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A295004 (n + 5)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055643 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A295011.P6543125731368408812

/-!
# A295012: a(n) = sigma(12n - 1)/12, where sigma = sum of divisors (A000203).

The programs for A295012, the canonical program `A295012.P9478907012943100562` is in `Seq.B001.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A295012 has offset 1).

The definition of A295012 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A295012.P9478907012943100562

`A000203(12*(n+1)-1)/12`

The canonical program, it is in `Seq.B001.C010`.
-/

namespace A295012

/-- `A000203(12*(n+1)-1)/12` -/
def P9478907012943100562.Spec : Prop :=
  ∀ n, P9478907012943100562.a n = (A295012 (n + 1) : ℚ)

end A295012

/-! ## A295012.P17737159229001297240

`A294614(n+1)+1+n`
-/

namespace A295012.P17737159229001297240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294614 (n + 1) + 1 + (n : ℤ)

end

end A295012.P17737159229001297240

namespace A295012

/-- `A294614(n+1)+1+n` -/
def P17737159229001297240.Spec : Prop :=
  ∀ n, P17737159229001297240.a n = A295012 (n + 1)

end A295012

/-! ## A295012.P3339238254560847840

`A098098(Δ[n²])/2`
-/

namespace A295012.P3339238254560847840
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A098098 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat : ℚ) / 2

end

end A295012.P3339238254560847840

namespace A295012

/-- `A098098(Δ[n²])/2` -/
def P3339238254560847840.Spec : Prop :=
  ∀ n, P3339238254560847840.a n = (A295012 (n + 1) : ℚ)

end A295012

/-! ## A295012.P5709879070213798821

`∑{d}[A016969(Δ[n²]), #]/12`
-/

namespace A295012.P5709879070213798821
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016969 ((f2 (n + 1) : ℤ) - (f2 n : ℤ)).toNat

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ d ∈ Nat.divisors (f1 n).natAbs, d : ℕ) : ℚ) / 12

end

end A295012.P5709879070213798821

namespace A295012

/-- `∑{d}[A016969(Δ[n²]), #]/12` -/
def P5709879070213798821.Spec : Prop :=
  ∀ n, P5709879070213798821.a n = (A295012 (n + 1) : ℚ)

end A295012

/-! ## A295012.P4220181771077969490

`abs(A258831(2*n+1)/2)`
-/

namespace A295012.P4220181771077969490
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  |(A258831 (2 * n + 1) : ℚ) / 2|

end

end A295012.P4220181771077969490

namespace A295012

/-- `abs(A258831(2*n+1)/2)` -/
def P4220181771077969490.Spec : Prop :=
  ∀ n, P4220181771077969490.a n = (A295012 (n + 1) : ℚ)

end A295012

/-! ## A295012.P12494416397249347597

`1/2*A098098(A005408(n))`
-/

namespace A295012.P12494416397249347597
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 : ℚ) / 2 * (A098098 (A005408 n).toNat : ℚ)

end

end A295012.P12494416397249347597

namespace A295012

/-- `1/2*A098098(A005408(n))` -/
def P12494416397249347597.Spec : Prop :=
  ∀ n, P12494416397249347597.a n = (A295012 (n + 1) : ℚ)

end A295012

/-! ## A295012.P9361581786384986476

`gcd(A000038(n), A258831(2*n+1))/2`
-/

namespace A295012.P9361581786384986476
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.gcd (A000038 n) (A258831 (2 * n + 1)) : ℚ) / 2

end

end A295012.P9361581786384986476

namespace A295012

/-- `gcd(A000038(n), A258831(2*n+1))/2` -/
def P9361581786384986476.Spec : Prop :=
  ∀ n, P9361581786384986476.a n = (A295012 (n + 1) : ℚ)

end A295012

/-! ## A295012.P430449016171362398

`A258831(2*n+1)/(A000038(n+1)-2)`
-/

namespace A295012.P430449016171362398
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A258831 (2 * n + 1) : ℚ) / (A000038 (n + 1) - 2 : ℚ)

end

end A295012.P430449016171362398

namespace A295012

/-- `A258831(2*n+1)/(A000038(n+1)-2)` -/
def P430449016171362398.Spec : Prop :=
  ∀ n, P430449016171362398.a n = (A295012 (n + 1) : ℚ)

end A295012

/-! ## A295012.P4335247173783428009

`lcm(A000034(n+1), A258831(2*n+1))/2`
-/

namespace A295012.P4335247173783428009
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm (A000034 (n + 1)) (A258831 (2 * n + 1)) : ℚ) / 2

end

end A295012.P4335247173783428009

namespace A295012

/-- `lcm(A000034(n+1), A258831(2*n+1))/2` -/
def P4335247173783428009.Spec : Prop :=
  ∀ n, P4335247173783428009.a n = (A295012 (n + 1) : ℚ)

end A295012

/-! ## A295012.P7917218420239930848

`A258831(2*n+1)/(A033999(2*n+1)-1)`
-/

namespace A295012.P7917218420239930848
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A258831 (2 * n + 1) : ℚ) / (A033999 (2 * n + 1) - 1 : ℚ)

end

end A295012.P7917218420239930848

namespace A295012

/-- `A258831(2*n+1)/(A033999(2*n+1)-1)` -/
def P7917218420239930848.Spec : Prop :=
  ∀ n, P7917218420239930848.a n = (A295012 (n + 1) : ℚ)

end A295012

/-! ## A295012.P17733577002869998080

`A258831(2*n+1)/A000034(2*n+1)-A258831(2*n+1)`
-/

namespace A295012.P17733577002869998080
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A258831 (2 * n + 1) : ℚ) / (A000034 (2 * n + 1) : ℚ) - (A258831 (2 * n + 1) : ℚ)

end

end A295012.P17733577002869998080

namespace A295012

/-- `A258831(2*n+1)/A000034(2*n+1)-A258831(2*n+1)` -/
def P17733577002869998080.Spec : Prop :=
  ∀ n, P17733577002869998080.a n = (A295012 (n + 1) : ℚ)

end A295012

/-! ## A295012.P10500272323136459528

`A097723(3*n+2)/3`
-/

namespace A295012.P10500272323136459528
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A097723 (3 * n + 2) : ℚ) / 3

end

end A295012.P10500272323136459528

namespace A295012

/-- `A097723(3*n+2)/3` -/
def P10500272323136459528.Spec : Prop :=
  ∀ n, P10500272323136459528.a n = (A295012 (n + 1) : ℚ)

end A295012

/-! ## A295012.P17496252329674050386

`A064680(A098098(2*n+1))`
-/

namespace A295012.P17496252329674050386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064680 (A098098 (2 * n + 1)).toNat

end

end A295012.P17496252329674050386

namespace A295012

/-- `A064680(A098098(2*n+1))` -/
def P17496252329674050386.Spec : Prop :=
  ∀ n, P17496252329674050386.a n = A295012 (n + 1)

end A295012

/-! ## A295012.P7793903120809403434

`A232343(4*n+2)/2`
-/

namespace A295012.P7793903120809403434
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A232343 (4 * n + 2) : ℚ) / 2

end

end A295012.P7793903120809403434

namespace A295012

/-- `A232343(4*n+2)/2` -/
def P7793903120809403434.Spec : Prop :=
  ∀ n, P7793903120809403434.a n = (A295012 (n + 1) : ℚ)

end A295012

/-! ## A295012.P7260084242553617194

`A185717(A016969(n))/12`
-/

namespace A295012.P7260084242553617194
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A185717 (A016969 n).toNat : ℚ) / 12

end

end A295012.P7260084242553617194

namespace A295012

/-- `A185717(A016969(n))/12` -/
def P7260084242553617194.Spec : Prop :=
  ∀ n, P7260084242553617194.a n = (A295012 (n + 1) : ℚ)

end A295012

/-! ## A295012.P16611460064402375694

`A033786(12*n+6)/2`
-/

namespace A295012.P16611460064402375694
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A033786 (12 * n + 6) : ℚ) / 2

end

end A295012.P16611460064402375694

namespace A295012

/-- `A033786(12*n+6)/2` -/
def P16611460064402375694.Spec : Prop :=
  ∀ n, P16611460064402375694.a n = (A295012 (n + 1) : ℚ)

end A295012

/-! ## A295012.P14843031485407954886

`A262114(A000203(12*n+11))`
-/

namespace A295012.P14843031485407954886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262114 (A000203 (12 * n + 11)).toNat

end

end A295012.P14843031485407954886

namespace A295012

/-- `A262114(A000203(12*n+11))` -/
def P14843031485407954886.Spec : Prop :=
  ∀ n, P14843031485407954886.a n = A295012 (n + 1)

end A295012

/-!
# A295014: Prime time numbers on 6-digit clocks: numbers of the form HMMSS where H, MM, SS are primes, H < 24, MM and SS < 60.

The programs for A295014, there is no canonical definition to state claims against.
-/

/-! ## A295014.P9852861990668428914

`A055643(A295004(n+1))`
-/

namespace A295014.P9852861990668428914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055643 (A295004 (n + 1)).toNat

end

end A295014.P9852861990668428914

/-!
# A295015: Squares whose largest digit is 5.

The programs for A295015, there is no canonical definition to state claims against.
-/

/-! ## A295015.P9629974164595005817

`A295005(n+1)²`
-/

namespace A295015.P9629974164595005817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295005 (n + 1) ^ 2

end

end A295015.P9629974164595005817

/-! ## A295015.P11073032552158248587

`A295005(A000027(n+1))*A295005(n+1)`
-/

namespace A295015.P11073032552158248587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295005 (A000027 (n + 1)).toNat * A295005 (n + 1)

end

end A295015.P11073032552158248587

/-! ## A295015.P14328123204557888230

`record[A295005(A152271(n))²]`
-/

namespace A295015.P14328123204557888230
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295005 (A152271 n).toNat ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A295015.P14328123204557888230

/-! ## A295015.P13357192122524574815

`record[A295005(A152271(n))]*A295005(n+1)`
-/

namespace A295015.P13357192122524574815
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295005 (A152271 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) * A295005 (n + 1)

end

end A295015.P13357192122524574815

/-! ## A295015.P12887529769713588105

`A295005(n+1)^A000005(A033243(n+1))`
-/

namespace A295015.P12887529769713588105
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A295005 (n + 1) : ℚ) ^ (A000005 (A033243 (n + 1)).toNat : ℤ)

end

end A295015.P12887529769713588105

/-! ## A295015.P7749660621835537815

`A295005(n+1)^A000005(A007643(n+1))`
-/

namespace A295015.P7749660621835537815
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A295005 (n + 1) : ℚ) ^ (A000005 (A007643 (n + 1)).toNat : ℤ)

end

end A295015.P7749660621835537815

/-! ## A295015.P10812372301889411026

`A295005(n+1)^A001227(A007643(2*(n+2)))`
-/

namespace A295015.P10812372301889411026
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A295005 (n + 1) : ℚ) ^ (A001227 (A007643 (2 * (n + 2))).toNat : ℤ)

end

end A295015.P10812372301889411026

/-! ## A295015.P14583151046011690631

`A000290(xor(1, xor(1, A295005(n+1))))`
-/

namespace A295015.P14583151046011690631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000290 (Int.xor 1 (Int.xor 1 (A295005 (n + 1)))).toNat

end

end A295015.P14583151046011690631

/-! ## A295015.P278494590808151951

`A000290(A295005(∑[n+1]-∑[n]))`
-/

namespace A295015.P278494590808151951
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000290 (A295005 (∑ j ∈ Finset.range (n + 1), f1 j - ∑ j ∈ Finset.range (n + 1), f2 j)).toNat

end

end A295015.P278494590808151951

/-! ## A295015.P12227511337631187016

`A000290(A295005(n+1)%A046314(n+1))`
-/

namespace A295015.P12227511337631187016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000290 (Int.tmod (A295005 (n + 1)) (A046314 (n + 1))).toNat

end

end A295015.P12227511337631187016

/-! ## A295015.P14944281440745081891

`A000290(2*A295005(n+1)-A295005(n+1))`
-/

namespace A295015.P14944281440745081891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000290 (2 * A295005 (n + 1) - A295005 (n + 1)).toNat

end

end A295015.P14944281440745081891

/-! ## A295015.P3048072133931169671

`A000290((A295005(n+1)+A295005(n+1))/2)`
-/

namespace A295015.P3048072133931169671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000290 (SequenceMachineLib.roundAway ((A295005 (n + 1) + A295005 (n + 1) : ℚ) / 2)).toNat

end

end A295015.P3048072133931169671

/-!
# A295016: Squares whose largest digit is 6.

The programs for A295016, there is no canonical definition to state claims against.
-/

/-! ## A295016.P5161636275648787070

`A295006(n+1)²`
-/

namespace A295016.P5161636275648787070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295006 (n + 1) ^ 2

end

end A295016.P5161636275648787070

/-! ## A295016.P7992198753880796662

`record[A295006(A117910(n))²]`
-/

namespace A295016.P7992198753880796662
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295006 (A117910 n).toNat ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A295016.P7992198753880796662

/-! ## A295016.P17994973248662029115

`record[A295006(A117910(n))]*A295006(n+1)`
-/

namespace A295016.P17994973248662029115
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295006 (A117910 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) * A295006 (n + 1)

end

end A295016.P17994973248662029115

/-! ## A295016.P12400264733171985946

`record[A295006(A065648(n))²]`
-/

namespace A295016.P12400264733171985946
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295006 (A065648 n).toNat ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A295016.P12400264733171985946

/-! ## A295016.P15769319094716180207

`record[A295006(A065648(n))]*A295006(n+1)`
-/

namespace A295016.P15769319094716180207
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295006 (A065648 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) * A295006 (n + 1)

end

end A295016.P15769319094716180207

/-! ## A295016.P9309126463011449961

`record[A295006(A022446(n))²]`
-/

namespace A295016.P9309126463011449961
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295006 (A022446 n).toNat ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A295016.P9309126463011449961

/-! ## A295016.P17967841724994473656

`record[A295006(A022446(n))]*A295006(n+1)`
-/

namespace A295016.P17967841724994473656
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295006 (A022446 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) * A295006 (n + 1)

end

end A295016.P17967841724994473656

/-! ## A295016.P10150379108189549040

`eq[6, A028907(n)%10]²`
-/

namespace A295016.P10150379108189549040
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A028907 n) 10

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n ^ 2

end

end A295016.P10150379108189549040

/-! ## A295016.P1762171092111806893

`∩[A283609(n+1), n²]`
-/

namespace A295016.P1762171092111806893
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283609 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = x) n

end

end A295016.P1762171092111806893

/-! ## A295016.P10384556432229125774

`∩[A000290(n), A283609(n+1)]`
-/

namespace A295016.P10384556432229125774
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000290 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283609 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A295016.P10384556432229125774

/-!
# A295017: Squares whose largest digit is 7.

The programs for A295017, there is no canonical definition to state claims against.
-/

/-! ## A295017.P11452139386064440789

`A295007(n+1)²`
-/

namespace A295017.P11452139386064440789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295007 (n + 1) ^ 2

end

end A295017.P11452139386064440789

/-! ## A295017.P2374789788672894332

`record[A295007(A152271(n))²]`
-/

namespace A295017.P2374789788672894332
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295007 (A152271 n).toNat ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A295017.P2374789788672894332

/-! ## A295017.P15632203937698741133

`record[A295007(A152271(n))]*A295007(n+1)`
-/

namespace A295017.P15632203937698741133
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295007 (A152271 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) * A295007 (n + 1)

end

end A295017.P15632203937698741133

/-! ## A295017.P6854965370915979696

`record[A295007(A117910(n))²]`
-/

namespace A295017.P6854965370915979696
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295007 (A117910 n).toNat ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A295017.P6854965370915979696

/-! ## A295017.P11477783585304372416

`record[A295007(A117910(n))]*A295007(n+1)`
-/

namespace A295017.P11477783585304372416
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295007 (A117910 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) * A295007 (n + 1)

end

end A295017.P11477783585304372416

/-! ## A295017.P2453155230810040161

`eq[7, A028907(n)%10]²`
-/

namespace A295017.P2453155230810040161
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A028907 n) 10

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n ^ 2

end

end A295017.P2453155230810040161

/-! ## A295017.P7410392656085303657

`A000290(A295007(abs(xor(n, -1))))`
-/

namespace A295017.P7410392656085303657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000290 (A295007 |Int.xor (n : ℤ) (-1)|.toNat).toNat

end

end A295017.P7410392656085303657

/-!
# A295018: Squares whose largest digit is 8.

The programs for A295018, there is no canonical definition to state claims against.
-/

/-! ## A295018.P2069639541165444180

`A295008(n+1)²`
-/

namespace A295018.P2069639541165444180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295008 (n + 1) ^ 2

end

end A295018.P2069639541165444180

/-! ## A295018.P16468211192895915981

`A295008(or(n+1, (n+1)%2))^2`
-/

namespace A295018.P16468211192895915981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295008 (Nat.lor (n + 1) ((n + 1) % 2)) ^ 2

end

end A295018.P16468211192895915981

/-! ## A295018.P9257832915777281565

`A295008(A000027(n+1))*A295008(n+1)`
-/

namespace A295018.P9257832915777281565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295008 (A000027 (n + 1)).toNat * A295008 (n + 1)

end

end A295018.P9257832915777281565

/-! ## A295018.P14421378860435259956

`A295008(n+1)%A049103(n+1)*A295008(n+1)`
-/

namespace A295018.P14421378860435259956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A295008 (n + 1)) (A049103 (n + 1)) * A295008 (n + 1)

end

end A295018.P14421378860435259956

/-! ## A295018.P13112116185594448162

`A295008(n+1)^(A019426(A141616(n+1))+1)`
-/

namespace A295018.P13112116185594448162
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A295008 (n + 1) : ℚ) ^ (A019426 (A141616 (n + 1)).toNat + 1 : ℤ)

end

end A295018.P13112116185594448162

/-! ## A295018.P2994124121274360193

`A295008(n+1)^A019426(A019426(24*(n+1)))`
-/

namespace A295018.P2994124121274360193
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A295008 (n + 1) : ℚ) ^ (A019426 (A019426 (24 * (n + 1))).toNat : ℤ)

end

end A295018.P2994124121274360193

/-!
# A295019: Squares whose largest digit is 9.

The programs for A295019, the canonical program `A295019.P13344954121747378704` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A295019 has offset 1).

The definition of A295019 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A295009, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A295019.P13344954121747378704

`A295009(n+1)²`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A295019

/-- `A295009(n+1)²` -/
def P13344954121747378704.Spec : Prop :=
  ∀ n, P13344954121747378704.a n = A295019 (n + 1)

theorem P13344954121747378704.correct : P13344954121747378704.Spec := by
  intro n
  simp only [A295019, Nat.add_sub_cancel]

end A295019

/-! ## A295019.P18427391928899590988

`lt[0, A086017(n)]²`
-/

namespace A295019.P18427391928899590988
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086017 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n ^ 2

end

end A295019.P18427391928899590988

namespace A295019

/-- `lt[0, A086017(n)]²` -/
def P18427391928899590988.Spec : Prop :=
  ∀ n, (P18427391928899590988.a n : ℤ) = A295019 (n + 1)

theorem P18427391928899590988.correct : P18427391928899590988.Spec := by
  intro n
  simp only [A295019, Nat.add_sub_cancel, A295019.P18427391928899590988.f1, A295019.P18427391928899590988.f2, A295019.P18427391928899590988.a, A295019.P13344954121747378704.a, A086017, A086017.P3190811218351209493.f1, A086017.P3190811218351209493.a, A295009, A295009.P8188260097870525443.f1, A295009.P8188260097870525443.f2, A295009.P8188260097870525443.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A295019

/-! ## A295019.P11757276097440922065

`lt[8, A028907(n)%10]²`
-/

namespace A295019.P11757276097440922065
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A028907 n) 10

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n ^ 2

end

end A295019.P11757276097440922065

namespace A295019

/-- `lt[8, A028907(n)%10]²` -/
def P11757276097440922065.Spec : Prop :=
  ∀ n, (P11757276097440922065.a n : ℤ) = A295019 (n + 1)

end A295019

/-! ## A295019.P11143663604862640148

`A000290(lt[0, A086017(n)])`
-/

namespace A295019.P11143663604862640148
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086017 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000290 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A295019.P11143663604862640148

namespace A295019

/-- `A000290(lt[0, A086017(n)])` -/
def P11143663604862640148.Spec : Prop :=
  ∀ n, P11143663604862640148.a n = A295019 (n + 1)

theorem P11143663604862640148.correct : P11143663604862640148.Spec := by
  intro n
  simp only [A295019, Nat.add_sub_cancel, A295019.P11143663604862640148.f1, A295019.P11143663604862640148.f2, A295019.P11143663604862640148.a, A295019.P13344954121747378704.a, A000290, A000290.P12206242496348924484.a, A086017, A086017.P3190811218351209493.f1, A086017.P3190811218351209493.a, A295009, A295009.P8188260097870525443.f1, A295009.P8188260097870525443.f2, A295009.P8188260097870525443.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A295019

/-! ## A295019.P18166011920730161102

`A295009(n+1)^dr(A033431(3*n+4))`
-/

namespace A295019.P18166011920730161102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295009 (n + 1) ^ SequenceMachineLib.digitalRoot (A033431 (3 * n + 4))

end

end A295019.P18166011920730161102

namespace A295019

/-- `A295009(n+1)^dr(A033431(3*n+4))` -/
def P18166011920730161102.Spec : Prop :=
  ∀ n, P18166011920730161102.a n = A295019 (n + 1)

end A295019

/-! ## A295019.P17955677885906672734

`A182531(2*A295009(n+1))`
-/

namespace A295019.P17955677885906672734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182531 (2 * A295009 (n + 1)).toNat

end

end A295019.P17955677885906672734

namespace A295019

/-- `A182531(2*A295009(n+1))` -/
def P17955677885906672734.Spec : Prop :=
  ∀ n, P17955677885906672734.a n = A295019 (n + 1)

end A295019

/-! ## A295019.P11206626496724098746

`∩[A011539(n+1), n²]`
-/

namespace A295019.P11206626496724098746
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011539 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = x) n

end

end A295019.P11206626496724098746

namespace A295019

/-- `∩[A011539(n+1), n²]` -/
def P11206626496724098746.Spec : Prop :=
  ∀ n, (P11206626496724098746.a n : ℤ) = A295019 (n + 1)

end A295019

/-! ## A295019.P15719836753457978504

`∩[A000290(n), A011539(n+1)]`
-/

namespace A295019.P15719836753457978504
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000290 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011539 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A295019.P15719836753457978504

namespace A295019

/-- `∩[A000290(n), A011539(n+1)]` -/
def P15719836753457978504.Spec : Prop :=
  ∀ n, (P15719836753457978504.a n : ℤ) = A295019 (n + 1)

end A295019

/-!
# A295020: Demlo numbers: concat(L,M,R) where M and L + R are repdigits using the same digit, see comments for details.

The programs for A295020, there is no canonical definition to state claims against.
-/

/-! ## A295020.P6927114710103412054

`lt[A061479(A154781(n)), n]`
-/

namespace A295020.P6927114710103412054
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061479 (A154781 n).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A295020.P6927114710103412054

/-! ## A295020.P15812231331026363630

`eq[C(A154781(n), 10), A000007(n)]`
-/

namespace A295020.P15812231331026363630
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A154781 n).toNat 10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A295020.P15812231331026363630

/-! ## A295020.P1662142283127178959

`eq[0, A154781(A154781(n+1))]+1`
-/

namespace A295020.P1662142283127178959
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154781 (A154781 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A295020.P1662142283127178959

/-! ## A295020.P854833454634508039

`eq[A000007(n), A031286(A154781(n))]`
-/

namespace A295020.P854833454634508039
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031286 (A154781 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A295020.P854833454634508039

/-! ## A295020.P14242082015280140937

`eq[A000038(n), A031286(A154781(n))]`
-/

namespace A295020.P14242082015280140937
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031286 (A154781 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A295020.P14242082015280140937

/-! ## A295020.P10474318023665426423

`eq[A055642(A154781(n)), A057427(n)]`
-/

namespace A295020.P10474318023665426423
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055642 (A154781 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A295020.P10474318023665426423

/-! ## A295020.P1153851485236149706

`eq[A007953(A331472(n)), A033930(n)]`
-/

namespace A295020.P1153851485236149706
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 (A331472 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033930 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A295020.P1153851485236149706

/-! ## A295020.P2025427929216123622

`eq[A033930(A331472(n)), A076314(n)]`
-/

namespace A295020.P2025427929216123622
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033930 (A331472 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076314 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A295020.P2025427929216123622

/-! ## A295020.P7704214415697298679

`lt[A154781(A154781(n)), n/A008486(n)]`
-/

namespace A295020.P7704214415697298679
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154781 (A154781 n).toNat

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / (A008486 n : ℚ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℚ) < f2 j) n

end

end A295020.P7704214415697298679

/-!
# A295021: Cubes whose largest digit is 6.

The programs for A295021, there is no canonical definition to state claims against.
-/

/-! ## A295021.P17717583836527926987

`A294996(n+1)^3`
-/

namespace A295021.P17717583836527926987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294996 (n + 1) ^ 3

end

end A295021.P17717583836527926987

/-! ## A295021.P16705872382694649620

`eq[6, A032553(n)%10]^3`
-/

namespace A295021.P16705872382694649620
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A032553 n) 10

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n ^ 3

end

end A295021.P16705872382694649620

/-! ## A295021.P16206463405340089290

`A000578(A294996(n+1))`
-/

namespace A295021.P16206463405340089290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000578 (A294996 (n + 1)).toNat

end

end A295021.P16206463405340089290

/-! ## A295021.P7276074388879433844

`A034828(2*A294996(n+1))`
-/

namespace A295021.P7276074388879433844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034828 (2 * A294996 (n + 1)).toNat

end

end A295021.P7276074388879433844

/-! ## A295021.P7381673032098334499

`A110650(4*A294996(n+1))`
-/

namespace A295021.P7381673032098334499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110650 (4 * A294996 (n + 1)).toNat

end

end A295021.P7381673032098334499

/-!
# A295022: Cubes whose largest digit is 7.

The programs for A295022, there is no canonical definition to state claims against.
-/

/-! ## A295022.P3913591916891005887

`A294997(n+1)^3`
-/

namespace A295022.P3913591916891005887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294997 (n + 1) ^ 3

end

end A295022.P3913591916891005887

/-! ## A295022.P6243333015034069694

`eq[2, A032553(n)%5]^3`
-/

namespace A295022.P6243333015034069694
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A032553 n) 5

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n ^ 3

end

end A295022.P6243333015034069694

/-! ## A295022.P1702525003215384527

`A000578(A294997(n+1))`
-/

namespace A295022.P1702525003215384527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000578 (A294997 (n + 1)).toNat

end

end A295022.P1702525003215384527

/-! ## A295022.P17933574600019565177

`A034828(2*A294997(n+1))`
-/

namespace A295022.P17933574600019565177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034828 (2 * A294997 (n + 1)).toNat

end

end A295022.P17933574600019565177

/-! ## A295022.P7932448067194933735

`A110650(4*A294997(n+1))`
-/

namespace A295022.P7932448067194933735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110650 (4 * A294997 (n + 1)).toNat

end

end A295022.P7932448067194933735

/-!
# A295023: Cubes whose largest digit is 8.

The programs for A295023, there is no canonical definition to state claims against.
-/

/-! ## A295023.P9681824807412459366

`A294998(n+1)^3`
-/

namespace A295023.P9681824807412459366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294998 (n + 1) ^ 3

end

end A295023.P9681824807412459366

/-! ## A295023.P17958004258877150906

`eq[8, A032553(n)%10]^3`
-/

namespace A295023.P17958004258877150906
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A032553 n) 10

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n ^ 3

end

end A295023.P17958004258877150906

/-! ## A295023.P2909971432351564876

`A000578(A294998(n+1))`
-/

namespace A295023.P2909971432351564876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000578 (A294998 (n + 1)).toNat

end

end A295023.P2909971432351564876

/-! ## A295023.P16903804937803840468

`A034828(2*A294998(n+1))`
-/

namespace A295023.P16903804937803840468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034828 (2 * A294998 (n + 1)).toNat

end

end A295023.P16903804937803840468

/-! ## A295023.P12613217522624502531

`A110650(4*A294998(n+1))`
-/

namespace A295023.P12613217522624502531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110650 (4 * A294998 (n + 1)).toNat

end

end A295023.P12613217522624502531

/-!
# A295024: Cubes whose largest digit is 9.

The programs for A295024, the canonical program `A295024.P12799125946553615279` is in `Seq.B001.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A295024 has offset 1).

The definition of A295024 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A294999, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A295024.P12799125946553615279

`A294999(n+1)^3`

The canonical program, it is in `Seq.B001.C010`.
-/

namespace A295024

/-- `A294999(n+1)^3` -/
def P12799125946553615279.Spec : Prop :=
  ∀ n, P12799125946553615279.a n = A295024 (n + 1)

theorem P12799125946553615279.correct : P12799125946553615279.Spec := by
  intro n
  simp only [A295024, Nat.add_sub_cancel]

end A295024

/-! ## A295024.P2280089894959262501

`lt[0, A269249(n)]^3`
-/

namespace A295024.P2280089894959262501
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269249 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n ^ 3

end

end A295024.P2280089894959262501

namespace A295024

/-- `lt[0, A269249(n)]^3` -/
def P2280089894959262501.Spec : Prop :=
  ∀ n, (P2280089894959262501.a n : ℤ) = A295024 (n + 1)

end A295024

/-! ## A295024.P3497711061088149170

`lt[8, A032553(n)%10]^3`
-/

namespace A295024.P3497711061088149170
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A032553 n) 10

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n ^ 3

end

end A295024.P3497711061088149170

namespace A295024

/-- `lt[8, A032553(n)%10]^3` -/
def P3497711061088149170.Spec : Prop :=
  ∀ n, (P3497711061088149170.a n : ℤ) = A295024 (n + 1)

end A295024

/-! ## A295024.P6905653202968870429

`A000578(A294999(n+1))`
-/

namespace A295024.P6905653202968870429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000578 (A294999 (n + 1)).toNat

end

end A295024.P6905653202968870429

namespace A295024

/-- `A000578(A294999(n+1))` -/
def P6905653202968870429.Spec : Prop :=
  ∀ n, P6905653202968870429.a n = A295024 (n + 1)

end A295024

/-! ## A295024.P7774394376100742031

`A000578(lt[0, A269249(n)])`
-/

namespace A295024.P7774394376100742031
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269249 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000578 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A295024.P7774394376100742031

namespace A295024

/-- `A000578(lt[0, A269249(n)])` -/
def P7774394376100742031.Spec : Prop :=
  ∀ n, P7774394376100742031.a n = A295024 (n + 1)

end A295024

/-!
# A295025: Cubes whose largest digit is 5.

The programs for A295025, there is no canonical definition to state claims against.
-/

/-! ## A295025.P16518706131767037543

`A294665(n+1)^3`
-/

namespace A295025.P16518706131767037543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294665 (n + 1) ^ 3

end

end A295025.P16518706131767037543

/-! ## A295025.P12258364364021669315

`eq[A032553(n)%5, C(2, n+2)]^3`
-/

namespace A295025.P12258364364021669315
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A032553 n) 5

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 2 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = (f2 j : ℤ)) n ^ 3

end

end A295025.P12258364364021669315

/-! ## A295025.P5611242244009425607

`A000578(A294665(n+1))`
-/

namespace A295025.P5611242244009425607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000578 (A294665 (n + 1)).toNat

end

end A295025.P5611242244009425607

/-! ## A295025.P12215836373566791425

`A349201(2*A294665(n+1))`
-/

namespace A295025.P12215836373566791425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349201 (2 * A294665 (n + 1)).toNat

end

end A295025.P12215836373566791425

/-! ## A295025.P563568812037529478

`A034828(2*A294665(n+1))`
-/

namespace A295025.P563568812037529478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034828 (2 * A294665 (n + 1)).toNat

end

end A295025.P563568812037529478

/-!
# A295026: a(n) = floor(Pi*(n + sqrt(2))^2).

The programs for A295026, there is no canonical definition to state claims against.
-/

/-! ## A295026.P14205553507721073190

`floor(π*(n-1+sqrt(2))²)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A295026.P14205553507721073190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.pi * (((n : ℤ) - 1 : ℝ) + Real.sqrt (2 : ℝ)) ^ 2⌋

end

end A295026.P14205553507721073190

/-! ## A295026.P85597942753739385

`∑[A022844(2*n)-A185284(A143619(n))]`
-/

namespace A295026.P85597942753739385
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022844 (2 * n) - A185284 (A143619 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A295026.P85597942753739385

/-! ## A295026.P9911539928977549799

`∑[floor(2*π*n)%A127351(n+1)]`
-/

namespace A295026.P9911539928977549799
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ⌊2 * (Real.pi * (n : ℝ))⌋ (A127351 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A295026.P9911539928977549799

/-! ## A295026.P3077968092824164964

`∑[floor(2*π*n)]%A261791(n+5)`
-/

namespace A295026.P3077968092824164964
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊2 * (Real.pi * (n : ℝ))⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) (A261791 (n + 5))

end

end A295026.P3077968092824164964

/-! ## A295026.P17295671296558309981

`∑[comp[ceil(sin(n+1)+n)]%A276871(2*n+3)]`
-/

namespace A295026.P17295671296558309981
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sin (n + 1 : ℝ) + (n : ℝ)⌉

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n : ℤ) (A276871 (2 * n + 3))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A295026.P17295671296558309981

/-!
# A295027: T(n,k) is (1/n) times the n-th derivative of the difference between the k-th tetration of x (power tower of order k) and its predecessor at x=1; triangle T(n,k), n>=1, 1<=k<=n, read by rows.

The programs for A295027, there is no canonical definition to state claims against.
-/

/-! ## A295027.P4087515162233338046

`A277536(comp[∑[n]])/∑[char[∑[n]]]`
-/

namespace A295027.P4087515162233338046
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def f5 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f5 j

open Classical in
def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f4 j = n then 1 else 0

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A277536 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n) : ℚ) / ((∑ j ∈ Finset.range (n + 1), f3 j : ℕ) : ℚ)

end

end A295027.P4087515162233338046

/-! ## A295027.P5518066628830545034

`A239507(A327673(n)²)`
-/

namespace A295027.P5518066628830545034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239507 (A327673 n ^ 2).toNat

end

end A295027.P5518066628830545034

/-! ## A295027.P5338624064464158778

`A239507(A327673(n)^2)`
-/

namespace A295027.P5338624064464158778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239507 (A327673 n ^ 2).toNat

end

end A295027.P5338624064464158778

/-! ## A295027.P2694647429431964235

`A259652(2^A319498(n))`
-/

namespace A295027.P2694647429431964235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259652 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A319498 n : ℤ))).toNat

end

end A295027.P2694647429431964235

/-!
# A295028: A(n,k) is (1/n) times the n-th derivative of the k-th tetration of x (power tower of order k) x^^k at x=1; square array A(n,k), n>=1, k>=1, read by antidiagonals.

The programs for A295028, there is no canonical definition to state claims against.
-/

/-! ## A295028.P3212952209457281418

`A108611(6*A292795(n))`
-/

namespace A295028.P3212952209457281418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108611 (6 * A292795 n).toNat

end

end A295028.P3212952209457281418

/-! ## A295028.P8565599857339509806

`A108611(A270133(A292795(n)))`
-/

namespace A295028.P8565599857339509806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108611 (A270133 (A292795 n).toNat).toNat

end

end A295028.P8565599857339509806

/-! ## A295028.P14314709977635712828

`A263265(A292795(n)%A059801(n+1))`
-/

namespace A295028.P14314709977635712828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263265 (Int.tmod (A292795 n) (A059801 (n + 1))).toNat

end

end A295028.P14314709977635712828

/-! ## A295028.P6248084136979173124

`A263265(A292795(n))%A089291(n+1)`
-/

namespace A295028.P6248084136979173124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A263265 (A292795 n).toNat) (A089291 (n + 1))

end

end A295028.P6248084136979173124

/-!
# A295033: Numbers k such that (5*10^k + 79)/3 is prime.

The programs for A295033, there is no canonical definition to state claims against.
-/

/-! ## A295033.P2417885800260600588

`A254578(A005470(n))+A004869(n+1)`
-/

namespace A295033.P2417885800260600588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254578 (A005470 n).toNat + A004869 (n + 1)

end

end A295033.P2417885800260600588

/-! ## A295033.P8011589751364528134

`A147112(A117598(n+2))+A039106(n+1)`
-/

namespace A295033.P8011589751364528134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147112 (A117598 (n + 2)).toNat + A039106 (n + 1)

end

end A295033.P8011589751364528134

/-!
# A295034: Number of n X n 0..1 arrays with each 1 horizontally or vertically adjacent to 1 or 2 1's.

The programs for A295034, there is no canonical definition to state claims against.
-/

/-! ## A295034.P1962792261681046810

`A295040(∑[4*n]+1)`
-/

namespace A295034.P1962792261681046810
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295040 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A295034.P1962792261681046810

/-! ## A295034.P11992885685986841425

`A295040(A001844(n))+A055965(n)`
-/

namespace A295034.P11992885685986841425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295040 (A001844 n).toNat + A055965 n

end

end A295034.P11992885685986841425

/-! ## A295034.P12232994990432125013

`A295040(A001844(n))+A064459(n)`
-/

namespace A295034.P12232994990432125013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295040 (A001844 n).toNat + A064459 n

end

end A295034.P12232994990432125013

/-! ## A295034.P15341986293562909247

`A262681(n)*A295040(A001844(n))`
-/

namespace A295034.P15341986293562909247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262681 n * A295040 (A001844 n).toNat

end

end A295034.P15341986293562909247

/-! ## A295034.P10825801898321697927

`A000203(gcd(n, n+1))*A295040(A001844(n))`
-/

namespace A295034.P10825801898321697927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (Nat.gcd n (n + 1)) * A295040 (A001844 n).toNat

end

end A295034.P10825801898321697927

/-!
# A295035: Number of nX3 0..1 arrays with each 1 horizontally or vertically adjacent to 1 or 2 1s.

The programs for A295035, there is no canonical definition to state claims against.
-/

/-! ## A295035.P16833554462908604475

`A295040(∑[n+2]+4)`
-/

namespace A295035.P16833554462908604475
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295040 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A295035.P16833554462908604475

/-! ## A295035.P6803281946220894203

`A295040(A167614(n+1))+A061858(n)`
-/

namespace A295035.P6803281946220894203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295040 (A167614 (n + 1)).toNat + A061858 n

end

end A295035.P6803281946220894203

/-! ## A295035.P5368100156152077909

`A295040(A167614(n+1))+A185245(n)`
-/

namespace A295035.P5368100156152077909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295040 (A167614 (n + 1)).toNat + A185245 n

end

end A295035.P5368100156152077909

/-! ## A295035.P2898766809257774524

`A295040(A167614(n+1))+A185284(n)`
-/

namespace A295035.P2898766809257774524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295040 (A167614 (n + 1)).toNat + A185284 n

end

end A295035.P2898766809257774524

/-! ## A295035.P14816026735409951503

`lcm(A033999(n), A295040(A167614(n+1)))`
-/

namespace A295035.P14816026735409951503
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 n) (A295040 (A167614 (n + 1)).toNat)

end

end A295035.P14816026735409951503

/-!
# A295036: Number of nX4 0..1 arrays with each 1 horizontally or vertically adjacent to 1 or 2 1s.

The programs for A295036, there is no canonical definition to state claims against.
-/

/-! ## A295036.P742693152755718540

`A295040(A052905(n)+9)`
-/

namespace A295036.P742693152755718540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295040 (A052905 n + 9).toNat

end

end A295036.P742693152755718540

/-! ## A295036.P8318915923707889007

`A295040(A055999(n)+10)`
-/

namespace A295036.P8318915923707889007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295040 (A055999 n + 10).toNat

end

end A295036.P8318915923707889007

/-! ## A295036.P15187195402145269160

`A295040(A167614(n+2)+1)`
-/

namespace A295036.P15187195402145269160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295040 (A167614 (n + 2) + 1).toNat

end

end A295036.P15187195402145269160

/-! ## A295036.P8389433985804883611

`A295040(Δ[A264443(n)-n²])`
-/

namespace A295036.P8389433985804883611
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n - (n ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295040 (f1 (n + 1) - f1 n).toNat

end

end A295036.P8389433985804883611

/-! ## A295036.P5620055362811209292

`A295040(Δ[A023545(n+1)-n²])`
-/

namespace A295036.P5620055362811209292
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1) - (n ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295040 (f1 (n + 1) - f1 n).toNat

end

end A295036.P5620055362811209292

/-!
# A295037: Number of nX5 0..1 arrays with each 1 horizontally or vertically adjacent to 1 or 2 1s.

The programs for A295037, there is no canonical definition to state claims against.
-/

/-! ## A295037.P13427879056492651742

`A295040(A167499(n+3))`
-/

namespace A295037.P13427879056492651742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295040 (A167499 (n + 3)).toNat

end

end A295037.P13427879056492651742

/-! ## A295037.P11377122882198293795

`A295040(eq[6, A131818(n+1)])`
-/

namespace A295037.P11377122882198293795
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295040 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A295037.P11377122882198293795

/-! ## A295037.P13593205270537164509

`A295040(Δ[A264443(n)])`
-/

namespace A295037.P13593205270537164509
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295040 (f1 (n + 1) - f1 n).toNat

end

end A295037.P13593205270537164509

/-! ## A295037.P15487831471710824515

`A295040(A374005(n+1))`
-/

namespace A295037.P15487831471710824515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295040 (A374005 (n + 1)).toNat

end

end A295037.P15487831471710824515

/-! ## A295037.P8765378912856190199

`A295040(A046691(n+3))`
-/

namespace A295037.P8765378912856190199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295040 (A046691 (n + 3)).toNat

end

end A295037.P8765378912856190199

/-!
# A295038: Number of nX6 0..1 arrays with each 1 horizontally or vertically adjacent to 1 or 2 1s.

The programs for A295038, there is no canonical definition to state claims against.
-/

/-! ## A295038.P5704511931834152530

`A295040(A000124(n+5)+5)`
-/

namespace A295038.P5704511931834152530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295040 (A000124 (n + 5) + 5).toNat

end

end A295038.P5704511931834152530

/-! ## A295038.P1934532777474181082

`A295040(eq[7, A131818(n+1)])`
-/

namespace A295038.P1934532777474181082
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295040 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A295038.P1934532777474181082

/-! ## A295038.P17113612928151518872

`A295040(A374007(n+1))`
-/

namespace A295038.P17113612928151518872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295040 (A374007 (n + 1)).toNat

end

end A295038.P17113612928151518872

/-! ## A295038.P14078936589514014529

`A295040(eq[3, A219347(n)])`
-/

namespace A295038.P14078936589514014529
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295040 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A295038.P14078936589514014529

/-! ## A295038.P4480130054464681

`A295040(eq[5, A193592(n)])`
-/

namespace A295038.P4480130054464681
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295040 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A295038.P4480130054464681

/-!
# A295039: Number of nX7 0..1 arrays with each 1 horizontally or vertically adjacent to 1 or 2 1s.

The programs for A295039, there is no canonical definition to state claims against.
-/

/-! ## A295039.P800583292046500374

`A295040(eq[8, A131818(n+1)])`
-/

namespace A295039.P800583292046500374
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295040 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A295039.P800583292046500374

/-! ## A295039.P1520211293530320971

`A295040(A374008(n+1))`
-/

namespace A295039.P1520211293530320971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295040 (A374008 (n + 1)).toNat

end

end A295039.P1520211293530320971

/-! ## A295039.P14456777598390867687

`A295040(eq[4, A219347(n)])`
-/

namespace A295039.P14456777598390867687
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295040 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A295039.P14456777598390867687

/-! ## A295039.P525075073095386468

`A295040(eq[6, A193592(n)])`
-/

namespace A295039.P525075073095386468
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295040 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A295039.P525075073095386468

/-! ## A295039.P10774191080094776151

`A295040(A052905(n+4)-1)`
-/

namespace A295039.P10774191080094776151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295040 (A052905 (n + 4) - 1).toNat

end

end A295039.P10774191080094776151

/-!
# A295041: The Grundy number of restricted Nim with a pass move.

The programs for A295041, the canonical program `A295041.P9443561326481652724` is in `Seq.B000.C035`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A295041 has offset 0).

The definition of A295041 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A295041.P9443561326481652724

`xor(1, floor(n/(xor(n, n+1)+1)))%(n+1)`

The canonical program, it is in `Seq.B000.C035`.
-/

namespace A295041

/-- `xor(1, floor(n/(xor(n, n+1)+1)))%(n+1)` -/
def P9443561326481652724.Spec : Prop :=
  ∀ n, P9443561326481652724.a n = A295041 n

theorem P9443561326481652724.correct : P9443561326481652724.Spec := by
  intro n
  simp only [A295041]

end A295041

/-! ## A295041.P6309889382669267002

`xor(floor(atan(n+1)), floor(n/(xor(n, n+1)+1)))`
-/

namespace A295041.P6309889382669267002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor ⌊Real.arctan (n + 1 : ℝ)⌋ ⌊(n : ℚ) / (Nat.xor n (n + 1) + 1 : ℚ)⌋

end

end A295041.P6309889382669267002

namespace A295041

/-- `xor(floor(atan(n+1)), floor(n/(xor(n, n+1)+1)))` -/
def P6309889382669267002.Spec : Prop :=
  ∀ n, P6309889382669267002.a n = A295041 n

end A295041

/-! ## A295041.P1490258074288806153

`xor(1-floor(acot(n)), floor(n/(xor(n, n+1)+1)))`
-/

namespace A295041.P1490258074288806153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (1 - ⌊SequenceMachineLib.acot (n : ℝ)⌋) ⌊(n : ℚ) / (Nat.xor n (n + 1) + 1 : ℚ)⌋

end

end A295041.P1490258074288806153

namespace A295041

/-- `xor(1-floor(acot(n)), floor(n/(xor(n, n+1)+1)))` -/
def P1490258074288806153.Spec : Prop :=
  ∀ n, P1490258074288806153.a n = A295041 n

end A295041

/-! ## A295041.P10324140504080095105

`xor(n^C(2, n²), floor(n/(xor(n, n+1)+1)))`
-/

namespace A295041.P10324140504080095105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n ^ Nat.choose 2 (n ^ 2) : ℤ) ⌊(n : ℚ) / (Nat.xor n (n + 1) + 1 : ℚ)⌋

end

end A295041.P10324140504080095105

namespace A295041

/-- `xor(n^C(2, n²), floor(n/(xor(n, n+1)+1)))` -/
def P10324140504080095105.Spec : Prop :=
  ∀ n, P10324140504080095105.a n = A295041 n

end A295041

/-! ## A295041.P5900571429422656875

`xor(1, floor(n/(xor(n, n+1)+1))+C(2, n+2))`
-/

namespace A295041.P5900571429422656875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (⌊(n : ℚ) / (Nat.xor n (n + 1) + 1 : ℚ)⌋ + (Nat.choose 2 (n + 2) : ℤ))

end

end A295041.P5900571429422656875

namespace A295041

/-- `xor(1, floor(n/(xor(n, n+1)+1))+C(2, n+2))` -/
def P5900571429422656875.Spec : Prop :=
  ∀ n, P5900571429422656875.a n = A295041 n

end A295041

/-! ## A295041.P10936118843602234514

`xor(A025480(n), A057427(n))`
-/

namespace A295041.P10936118843602234514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A025480 n) (A057427 n)

end

end A295041.P10936118843602234514

namespace A295041

/-- `xor(A025480(n), A057427(n))` -/
def P10936118843602234514.Spec : Prop :=
  ∀ n, P10936118843602234514.a n = A295041 n

end A295041

/-! ## A295041.P7557303213794298166

`xor(A101279(n+1), A267442(n))`
-/

namespace A295041.P7557303213794298166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A101279 (n + 1)) (A267442 n)

end

end A295041.P7557303213794298166

namespace A295041

/-- `xor(A101279(n+1), A267442(n))` -/
def P7557303213794298166.Spec : Prop :=
  ∀ n, P7557303213794298166.a n = A295041 n

end A295041

/-! ## A295041.P10862540442879281111

`xor(and(1, 2^n-1), floor(n/(xor(n, n+1)+1)))`
-/

namespace A295041.P10862540442879281111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (Int.land 1 ((2 ^ n : ℤ) - 1)) ⌊(n : ℚ) / (Nat.xor n (n + 1) + 1 : ℚ)⌋

end

end A295041.P10862540442879281111

namespace A295041

/-- `xor(and(1, 2^n-1), floor(n/(xor(n, n+1)+1)))` -/
def P10862540442879281111.Spec : Prop :=
  ∀ n, P10862540442879281111.a n = A295041 n

end A295041

/-!
# A295043: a(n) is the largest number k such that sigma(k) = 2^n or 0 if no such k exists.

The programs for A295043, there is no canonical definition to state claims against.
-/

/-! ## A295043.P11358151678203991998

`A057637(2^n)`
-/

namespace A295043.P11358151678203991998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057637 (2 ^ n)

end

end A295043.P11358151678203991998

/-! ## A295043.P11992658070639303501

`A063973(2^n)`
-/

namespace A295043.P11992658070639303501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063973 (2 ^ n)

end

end A295043.P11992658070639303501

/-! ## A295043.P13304105771383902843

`and(-1, A057637(A000079(n)))`
-/

namespace A295043.P13304105771383902843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A057637 (A000079 n).toNat)

end

end A295043.P13304105771383902843

/-! ## A295043.P9996229452728604927

`A057637(A000079(n))+A025469(n)`
-/

namespace A295043.P9996229452728604927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057637 (A000079 n).toNat + A025469 n

end

end A295043.P9996229452728604927

/-! ## A295043.P17703229797874900371

`A243833(n)+A057637(A000079(n))`
-/

namespace A295043.P17703229797874900371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243833 n + A057637 (A000079 n).toNat

end

end A295043.P17703229797874900371

/-!
# A295044: Number of n X n 0..1 arrays with each 1 horizontally or vertically adjacent to 0 or 2 1's.

The programs for A295044, there is no canonical definition to state claims against.
-/

/-! ## A295044.P16254357276299077366

`A295051(∑[4*n]+1)`
-/

namespace A295044.P16254357276299077366
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295051 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A295044.P16254357276299077366

/-! ## A295044.P4877785000913306918

`record[A003982(n)*A295051(n+1)]`
-/

namespace A295044.P4877785000913306918
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A295051 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A295044.P4877785000913306918

/-! ## A295044.P6860957943044710795

`record[gcd(A003987(n), A295051(n+1))]`
-/

namespace A295044.P6860957943044710795
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A003987 n) (A295051 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A295044.P6860957943044710795

/-! ## A295044.P15574884851367615005

`A007318(∑[n])*A295051(A001844(n))`
-/

namespace A295044.P15574884851367615005
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (∑ j ∈ Finset.range (n + 1), f1 j) * A295051 (A001844 n).toNat

end

end A295044.P15574884851367615005

/-! ## A295044.P4087109337816029416

`A295051(A001844(n))+A001222(((-1)^n)²)`
-/

namespace A295044.P4087109337816029416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295051 (A001844 n).toNat + A001222 (((-1) ^ n) ^ 2).toNat

end

end A295044.P4087109337816029416

/-!
# A295045: Number of n X 2 0..1 arrays with each 1 horizontally or vertically adjacent to 0 or 2 1s.

The programs for A295045, the canonical program `A295045.P711820531208744210` is in `Seq.B000.C035`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A295045 has offset 1).

The definition of A295045 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 251 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A295045.P13017439659545968632

`ogf((3+2x-x^3)/(1-2x-x^2-x^3+x^4))`
-/

namespace A295045.P13017439659545968632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [3, 2, 0, -1] [1, -2, -1, -1, 1] n

end

end A295045.P13017439659545968632

namespace A295045

/-- `ogf((3+2x-x^3)/(1-2x-x^2-x^3+x^4))` -/
def P13017439659545968632.Spec : Prop :=
  ∀ n, P13017439659545968632.a n = A295045 (n + 1)

end A295045

/-! ## A295045.P711820531208744210

`2*a(n-1)+a(n-2)+a(n-3)-a(n-4)` with `a(0)=3, a(1)=8, a(2)=19, a(3)=48`

The canonical program, it is in `Seq.B000.C035`.
-/

namespace A295045

/-- `2*a(n-1)+a(n-2)+a(n-3)-a(n-4)` -/
def P711820531208744210.Spec : Prop :=
  ∀ n, P711820531208744210.a n = A295045 (n + 1)

theorem P711820531208744210.correct : P711820531208744210.Spec := by
  intro n
  simp only [A295045, Nat.add_sub_cancel]

end A295045

/-! ## A295045.P15263566945889066608

`A295051(∑[n+1]+2)`
-/

namespace A295045.P15263566945889066608
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295051 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A295045.P15263566945889066608

namespace A295045

/-- `A295051(∑[n+1]+2)` -/
def P15263566945889066608.Spec : Prop :=
  ∀ n, P15263566945889066608.a n = A295045 (n + 1)

end A295045

/-! ## A295045.P13825698869277364692

`A295379(∑[n+1]+2)`
-/

namespace A295045.P13825698869277364692
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295379 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A295045.P13825698869277364692

namespace A295045

/-- `A295379(∑[n+1]+2)` -/
def P13825698869277364692.Spec : Prop :=
  ∀ n, P13825698869277364692.a n = A295045 (n + 1)

end A295045

/-! ## A295045.P8020058251647097606

`A297457(∑[n+2])`
-/

namespace A295045.P8020058251647097606
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297457 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A295045.P8020058251647097606

namespace A295045

/-- `A297457(∑[n+2])` -/
def P8020058251647097606.Spec : Prop :=
  ∀ n, P8020058251647097606.a n = A295045 (n + 1)

end A295045

/-!
# A295046: Number of n X 3 0..1 arrays with each 1 horizontally or vertically adjacent to 0 or 2 1s.

The programs for A295046, there is no canonical definition to state claims against.
-/

/-! ## A295046.P6691997905508473338

`A295051(∑[n+2]+4)`
-/

namespace A295046.P6691997905508473338
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295051 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A295046.P6691997905508473338

/-! ## A295046.P285786139701626195

`A295051(A167614(n+1))%((12*n+3)^6)`
-/

namespace A295046.P285786139701626195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A295051 (A167614 (n + 1)).toNat) ((12 * n + 3) ^ 6 : ℤ)

end

end A295046.P285786139701626195

/-! ## A295046.P9966754113124999669

`A295051(A167614(n+1))+A061858(n)`
-/

namespace A295046.P9966754113124999669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295051 (A167614 (n + 1)).toNat + A061858 n

end

end A295046.P9966754113124999669

/-! ## A295046.P4091727820347703187

`A295051(A167614(n+1))+A178798(n)`
-/

namespace A295046.P4091727820347703187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295051 (A167614 (n + 1)).toNat + A178798 n

end

end A295046.P4091727820347703187

/-! ## A295046.P6200376865183471165

`A295051(A167614(n+1))+A185284(n)`
-/

namespace A295046.P6200376865183471165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295051 (A167614 (n + 1)).toNat + A185284 n

end

end A295046.P6200376865183471165

/-!
# A295047: Number of n X 4 0..1 arrays with each 1 horizontally or vertically adjacent to 0 or 2 1's.

The programs for A295047, there is no canonical definition to state claims against.
-/

/-! ## A295047.P16342681470282764763

`A295051(A374004(n+1))`
-/

namespace A295047.P16342681470282764763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295051 (A374004 (n + 1)).toNat

end

end A295047.P16342681470282764763

/-! ## A295047.P81245328380158481

`A295051(A052905(n)+9)`
-/

namespace A295047.P81245328380158481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295051 (A052905 n + 9).toNat

end

end A295047.P81245328380158481

/-! ## A295047.P15330639496416938952

`A295051(A055999(n)+10)`
-/

namespace A295047.P15330639496416938952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295051 (A055999 n + 10).toNat

end

end A295047.P15330639496416938952

/-! ## A295047.P12976808955637865189

`A295051(A167614(n+2)+1)`
-/

namespace A295047.P12976808955637865189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295051 (A167614 (n + 2) + 1).toNat

end

end A295047.P12976808955637865189

/-! ## A295047.P6156719153664369818

`A295051(A000096(n+2)+5)`
-/

namespace A295047.P6156719153664369818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295051 (A000096 (n + 2) + 5).toNat

end

end A295047.P6156719153664369818

/-!
# A295048: Number of nX5 0..1 arrays with each 1 horizontally or vertically adjacent to 0 or 2 1s.

The programs for A295048, there is no canonical definition to state claims against.
-/

/-! ## A295048.P7198132853370417356

`A295051(A374005(n+1))`
-/

namespace A295048.P7198132853370417356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295051 (A374005 (n + 1)).toNat

end

end A295048.P7198132853370417356

/-! ## A295048.P13631973395780937563

`A295051(A155212(n)+13)`
-/

namespace A295048.P13631973395780937563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295051 (A155212 n + 13).toNat

end

end A295048.P13631973395780937563

/-! ## A295048.P15169209031628262519

`A295051(A056000(n)+15)`
-/

namespace A295048.P15169209031628262519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295051 (A056000 n + 15).toNat

end

end A295048.P15169209031628262519

/-! ## A295048.P2990881775781232214

`A295051(A167614(n+3)+2)`
-/

namespace A295048.P2990881775781232214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295051 (A167614 (n + 3) + 2).toNat

end

end A295048.P2990881775781232214

/-! ## A295048.P5848561774229405800

`A295051(A034856(n+3)+7)`
-/

namespace A295048.P5848561774229405800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295051 (A034856 (n + 3) + 7).toNat

end

end A295048.P5848561774229405800

/-!
# A295049: Number of nX6 0..1 arrays with each 1 horizontally or vertically adjacent to 0 or 2 1s.

The programs for A295049, there is no canonical definition to state claims against.
-/

/-! ## A295049.P17505118848747466186

`A295051(A374007(n+1))`
-/

namespace A295049.P17505118848747466186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295051 (A374007 (n + 1)).toNat

end

end A295049.P17505118848747466186

/-! ## A295049.P107404702525656375

`A295051(eq[7, A131818(n+1)])`
-/

namespace A295049.P107404702525656375
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295051 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A295049.P107404702525656375

/-! ## A295049.P15956512865871940747

`A295051(A052905(n+3))`
-/

namespace A295049.P15956512865871940747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295051 (A052905 (n + 3)).toNat

end

end A295049.P15956512865871940747

/-! ## A295049.P11625239558851702415

`A295051(eq[3, A219347(n)])`
-/

namespace A295049.P11625239558851702415
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295051 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A295049.P11625239558851702415

/-! ## A295049.P5915512418953356777

`A295051(eq[8, A258709(n)])`
-/

namespace A295049.P5915512418953356777
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258709 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295051 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A295049.P5915512418953356777

/-!
# A295050: Number of nX7 0..1 arrays with each 1 horizontally or vertically adjacent to 0 or 2 1s.

The programs for A295050, there is no canonical definition to state claims against.
-/

/-! ## A295050.P12212966250087964127

`A295051(A374008(n+1))`
-/

namespace A295050.P12212966250087964127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295051 (A374008 (n + 1)).toNat

end

end A295050.P12212966250087964127

/-! ## A295050.P7796250153547653370

`A295051(eq[8, A131818(n+1)])`
-/

namespace A295050.P7796250153547653370
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295051 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A295050.P7796250153547653370

/-! ## A295050.P13558309771373518783

`A295051(A055999(n+4))`
-/

namespace A295050.P13558309771373518783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295051 (A055999 (n + 4)).toNat

end

end A295050.P13558309771373518783

/-! ## A295050.P18311717803085486504

`A295051(eq[4, A219347(n)])`
-/

namespace A295050.P18311717803085486504
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295051 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A295050.P18311717803085486504

/-! ## A295050.P15701759421785532245

`A295051(eq[6, A193592(n)])`
-/

namespace A295050.P15701759421785532245
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295051 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A295050.P15701759421785532245

/-!
# A295051: T(n,k) = Number of n X k 0..1 arrays with each 1 horizontally or vertically adjacent to 0 or 2 1's.

The programs for A295051, there is no canonical definition to state claims against.
-/

/-! ## A295051.P4061518852532315390

`A295379(n+1)-A028930(A174912(n))`
-/

namespace A295051.P4061518852532315390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295379 (n + 1) - A028930 (A174912 n).toNat

end

end A295051.P4061518852532315390

/-! ## A295051.P2363207361267994839

`A295379(n+1)-A051516(A157630(n))`
-/

namespace A295051.P2363207361267994839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295379 (n + 1) - A051516 (A157630 n).toNat

end

end A295051.P2363207361267994839

/-! ## A295051.P6918303958224956071

`A295379(n+1)-A239705(A005246(n))`
-/

namespace A295051.P6918303958224956071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295379 (n + 1) - A239705 (A005246 n).toNat

end

end A295051.P6918303958224956071

/-! ## A295051.P17724498595704105418

`A295379(n+1)-A185044(A099608(n))`
-/

namespace A295051.P17724498595704105418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295379 (n + 1) - A185044 (A099608 n).toNat

end

end A295051.P17724498595704105418

/-! ## A295051.P14355149488416848119

`A295379(n+1)-A335453(A323861(n+1))`
-/

namespace A295051.P14355149488416848119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295379 (n + 1) - A335453 (A323861 (n + 1)).toNat

end

end A295051.P14355149488416848119

/-!
# A295053: Solution of the complementary equation a(n) = a(n-1) + a(n-2) + b(0) + b(1) + ... + b(n-1), where a(0) = 1, a(1) = 2, b(0) = 3, and (a(n)) and (b(n)) are increasing complementary sequences.

The programs for A295053, there is no canonical definition to state claims against.
-/

/-! ## A295053.P7464136816253131809

`A332744(2*(n+2))-A109129(A349834(n))`
-/

namespace A295053.P7464136816253131809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332744 (2 * (n + 2)) - A109129 (A349834 n).toNat

end

end A295053.P7464136816253131809

/-! ## A295053.P1110782714068488535

`A320787(2*n+3)-A328248(A026560(n+3))`
-/

namespace A295053.P1110782714068488535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320787 (2 * n + 3) - A328248 (A026560 (n + 3)).toNat

end

end A295053.P1110782714068488535

/-!
# A295054: Solution of the complementary equation a(n) = a(n-1) + a(n-2) + b(1) + b(2) + ... + b(n-1), where a(0) = 1, a(1) = 2, b(0) = 3, and (a(n)) and (b(n)) are increasing complementary sequences.

The programs for A295054, there is no canonical definition to state claims against.
-/

/-! ## A295054.P3572820132152006643

`∑[A231149(A179999(2*(n+1))+2*A192760(n)-n)]-n`
-/

namespace A295054.P3572820132152006643
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231149 (A179999 (2 * (n + 1)) + (2 * A192760 n - (n : ℤ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (n : ℤ)

end

end A295054.P3572820132152006643

/-! ## A295054.P4213126583717259378

`∑[A026819(A127982(n+1))]-n`
-/

namespace A295054.P4213126583717259378
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026819 (A127982 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (n : ℤ)

end

end A295054.P4213126583717259378

/-! ## A295054.P8273041544132328999

`∑[A294532(A067029(3^n))]-n`
-/

namespace A295054.P8273041544132328999
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294532 (A067029 (3 ^ n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (n : ℤ)

end

end A295054.P8273041544132328999

/-! ## A295054.P11464858850959349424

`A001489(n)+∑[A026819(A127982(n+1))]`
-/

namespace A295054.P11464858850959349424
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026819 (A127982 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001489 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A295054.P11464858850959349424

/-!
# A295056: Solution of the complementary equation a(n) = 2*a(n-1) + b(n-1), where a(0) = 1, a(1) = 4, b(0) = 2, and (a(n)) and (b(n)) are increasing complementary sequences.

The programs for A295056, there is no canonical definition to state claims against.
-/

/-! ## A295056.P7022757167884347565

`∑[∑[A292601(A072762(n+2))]]`
-/

namespace A295056.P7022757167884347565
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292601 (A072762 (n + 2)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A295056.P7022757167884347565

/-! ## A295056.P12108618788027102652

`∑[A042965(Δ[A282390(n+1)])]`
-/

namespace A295056.P12108618788027102652
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282390 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042965 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A295056.P12108618788027102652

/-! ## A295056.P15618170788691858386

`A005843(a(n-1))+comp[A224215(n)]` with `a(0)=1`
-/

namespace A295056.P15618170788691858386
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224215 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A005843 (a (n - 1)).toNat + (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ)

end

end A295056.P15618170788691858386

/-! ## A295056.P14122227624835271040

`A288315(n+1)-A001489(2*a(n-1))` with `a(0)=1`
-/

namespace A295056.P14122227624835271040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A288315 (n + 1) - A001489 (2 * a (n - 1)).toNat

end

end A295056.P14122227624835271040

/-! ## A295056.P4703442876014129319

`∑[A256502(A053208(n)+2)]`
-/

namespace A295056.P4703442876014129319
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256502 (A053208 n + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A295056.P4703442876014129319

/-!
# A295057: Solution of the complementary equation a(n) = 2*a(n-1) + b(n-1), where a(0) = 2, a(1) = 5, b(0) = 1, and (a(n)) and (b(n)) are increasing complementary sequences.

The programs for A295057, there is no canonical definition to state claims against.
-/

/-! ## A295057.P12725127429290440479

`∑[A276581(∑[4^n])]+1`
-/

namespace A295057.P12725127429290440479
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 ^ n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276581 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A295057.P12725127429290440479

/-! ## A295057.P6436862144132414036

`∑[∑[A123578(A192467(n+1))]]+1`
-/

namespace A295057.P6436862144132414036
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123578 (A192467 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A295057.P6436862144132414036

/-!
# A295058: Solution of the complementary equation a(n) = 2*a(n-1) - b(n-1), where a(0) = 3, a(1) = 5, b(0) = 1, and (a(n)) and (b(n)) are increasing complementary sequences.

The programs for A295058, there is no canonical definition to state claims against.
-/

/-! ## A295058.P2551370832546284994

`∑[A123578(A032259(n+1)+A001318(n))]+1`
-/

namespace A295058.P2551370832546284994
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123578 (A032259 (n + 1) + A001318 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A295058.P2551370832546284994

/-! ## A295058.P3605631055559623058

`∑[A123578(A216888(n+1)+A032259(n+1))]+1`
-/

namespace A295058.P3605631055559623058
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123578 (A216888 (n + 1) + A032259 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A295058.P3605631055559623058

/-! ## A295058.P10845915617737518892

`∑[A123578(A319237(n+1)+A032259(n+1))]+1`
-/

namespace A295058.P10845915617737518892
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123578 (A319237 (n + 1) + A032259 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A295058.P10845915617737518892

/-!
# A295059: Solution of the complementary equation a(n) = 2*a(n-1) + b(n-2), where a(0) = 1, a(1) = 4, b(0) = 2, b(1) = 3, and (a(n)) and (b(n)) are increasing complementary sequences.

The programs for A295059, there is no canonical definition to state claims against.
-/

/-! ## A295059.P10655136372138006891

`∑[∑[A226190(A293315(n))]]`
-/

namespace A295059.P10655136372138006891
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226190 (A293315 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A295059.P10655136372138006891

/-! ## A295059.P3990013395069280960

`∑[∑[A003056(A151038(n))]]`
-/

namespace A295059.P3990013395069280960
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (A151038 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A295059.P3990013395069280960

/-! ## A295059.P1580554916945357415

`A247908(∑[∑[A267539(n)]])`
-/

namespace A295059.P1580554916945357415
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267539 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247908 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A295059.P1580554916945357415

/-!
# A295060: Solution of the complementary equation a(n) = 2*a(n-1) - b(n-2), where a(0) = 3, a(1) = 5, b(0) = 1, b(1) = 2, and (a(n)) and (b(n)) are increasing complementary sequences.

The programs for A295060, there is no canonical definition to state claims against.
-/

/-! ## A295060.P7509259017141284726

`A143961(A032555(n+2))`
-/

namespace A295060.P7509259017141284726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143961 (A032555 (n + 2)).toNat

end

end A295060.P7509259017141284726

/-! ## A295060.P9336517646319647104

`A143961(A032557(n+2))`
-/

namespace A295060.P9336517646319647104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143961 (A032557 (n + 2)).toNat

end

end A295060.P9336517646319647104

/-! ## A295060.P1416755752491168111

`A143961(A032559(n+2))`
-/

namespace A295060.P1416755752491168111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143961 (A032559 (n + 2)).toNat

end

end A295060.P1416755752491168111

/-! ## A295060.P9839859840214098657

`A143961(A032563(n+2))`
-/

namespace A295060.P9839859840214098657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143961 (A032563 (n + 2)).toNat

end

end A295060.P9839859840214098657

/-!
# A295061: Solution of the complementary equation a(n) = 4*a(n-2) + b(n-1), where a(0) = 1, a(1) = 3, b(0) = 2, and (a(n)) and (b(n)) are increasing complementary sequences.

The programs for A295061, there is no canonical definition to state claims against.
-/

/-! ## A295061.P12683539494585734943

`∑[A257639(A182692(n+1)²)]`
-/

namespace A295061.P12683539494585734943
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257639 (A182692 (n + 1) ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A295061.P12683539494585734943

/-! ## A295061.P17835138016951125655

`A091767(A221834(n+2))`
-/

namespace A295061.P17835138016951125655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091767 (A221834 (n + 2)).toNat

end

end A295061.P17835138016951125655

/-! ## A295061.P12096599545455634121

`A261104(∑[A306315(n)]²)`
-/

namespace A295061.P12096599545455634121
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306315 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261104 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2).toNat

end

end A295061.P12096599545455634121

/-!
# A295062: Solution of the complementary equation a(n) = 4*a(n-2) + b(n-2), where a(0) = 1, a(1) = 3, b(0) = 2, b(1) = 4, and (a(n)) and (b(n)) are increasing complementary sequences.

The programs for A295062, there is no canonical definition to state claims against.
-/

/-! ## A295062.P893085980444078826

`A183987(2*a(n-2)+1)` with `a(0)=1, a(1)=3`
-/

namespace A295062.P893085980444078826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3] fun n a =>
  A183987 (2 * a (n - 2) + 1).toNat

end

end A295062.P893085980444078826

/-! ## A295062.P7411430636834548119

`∑[A327192(∑[A003947(n)])]`
-/

namespace A295062.P7411430636834548119
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003947 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327192 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A295062.P7411430636834548119

/-! ## A295062.P13047493660694893046

`∑[A327192(∑[A163878(n)])]`
-/

namespace A295062.P13047493660694893046
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163878 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327192 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A295062.P13047493660694893046

/-!
# A295063: Solution of the complementary equation a(n) = 4*a(n-2) + b(n-1) + b(n-2), where a(0) = 1, a(1) = 3, b(0) = 2, and (a(n)) and (b(n)) are increasing complementary sequences.

The programs for A295063, there is no canonical definition to state claims against.
-/

/-! ## A295063.P16678491520212514542

`∑[∑[A137903(A032153(2*(n+1)))]]`
-/

namespace A295063.P16678491520212514542
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137903 (A032153 (2 * (n + 1))).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A295063.P16678491520212514542

/-!
# A295064: Solution of the complementary equation a(n) = 8*a(n-3) + b(n-1), where a(0) = 1, a(1) = 3, a(2) = 5, b(0) = 2, and (a(n)) and (b(n)) are increasing complementary sequences.

The programs for A295064, there is no canonical definition to state claims against.
-/

/-! ## A295064.P9744306897077992665

`or(A050296(n+1)², A003056(2*A150911(n)))`
-/

namespace A295064.P9744306897077992665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A050296 (n + 1) ^ 2) (A003056 (2 * A150911 n).toNat)

end

end A295064.P9744306897077992665

/-!
# A295065: Solution of the complementary equation a(n) = 8*a(n-3) + b(n-2), where a(0) = 1, a(1) = 3, a(2) = 5, b(0) = 2, and (a(n)) and (b(n)) are increasing complementary sequences.

The programs for A295065, there is no canonical definition to state claims against.
-/

/-! ## A295065.P5177929886363033720

`A341971(A271269(n+1))+A057711(n)`
-/

namespace A295065.P5177929886363033720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341971 (A271269 (n + 1)).toNat + A057711 n

end

end A295065.P5177929886363033720

/-! ## A295065.P4641005506289308760

`A303917(A343386(n)+A065557(n+1))`
-/

namespace A295065.P4641005506289308760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303917 (A343386 n + A065557 (n + 1)).toNat

end

end A295065.P4641005506289308760

/-! ## A295065.P2395549052132603016

`A384363(n)-A384394(A384355(n+4))`
-/

namespace A295065.P2395549052132603016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A384363 n - A384394 (A384355 (n + 4)).toNat

end

end A295065.P2395549052132603016

/-!
# A295066: Solution of the complementary equation a(n) = 2*a(n-2) + b(n-1), where a(0) = 1, a(1) = 3, b(0) = 2, and (a(n)) and (b(n)) are increasing complementary sequences.

The programs for A295066, there is no canonical definition to state claims against.
-/

/-! ## A295066.P17545360463555594152

`∑[∑[A078705(A293606(n))]]`
-/

namespace A295066.P17545360463555594152
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078705 (A293606 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A295066.P17545360463555594152

/-! ## A295066.P5881601366768390396

`∑[∑[A132399(A369843(n+1))]]`
-/

namespace A295066.P5881601366768390396
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132399 (A369843 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A295066.P5881601366768390396

/-! ## A295066.P11998788229499927406

`A320472(A000070(n)-1)`
-/

namespace A295066.P11998788229499927406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320472 (A000070 n - 1).toNat

end

end A295066.P11998788229499927406

/-! ## A295066.P18240146468704997145

`A320472(A288343(n)-1)`
-/

namespace A295066.P18240146468704997145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320472 (A288343 n - 1).toNat

end

end A295066.P18240146468704997145

/-! ## A295066.P9042016819993816068

`A320472(A288344(n)-1)`
-/

namespace A295066.P9042016819993816068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320472 (A288344 n - 1).toNat

end

end A295066.P9042016819993816068

/-!
# A295068: Solution of the complementary equation a(n) = 2*a(n-2) - b(n-1) + n, where a(0) = 4, a(1) = 5, b(0) = 1, and (a(n)) and (b(n)) are increasing complementary sequences.

The programs for A295068, there is no canonical definition to state claims against.
-/

/-! ## A295068.P8853284917755685804

`A295069(n)+1`
-/

namespace A295068.P8853284917755685804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295069 n + 1

end

end A295068.P8853284917755685804

/-! ## A295068.P5574815633322436397

`n-(A023443(n)-A295069(n))`
-/

namespace A295068.P5574815633322436397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - (A023443 n - A295069 n)

end

end A295068.P5574815633322436397

/-! ## A295068.P12362108168005715202

`2-(A000034(4*n)-A295069(n))`
-/

namespace A295068.P12362108168005715202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - (A000034 (4 * n) - A295069 n)

end

end A295068.P12362108168005715202

/-! ## A295068.P9170253798791492642

`abs(A008683(A162753(n))-A295069(n))`
-/

namespace A295068.P9170253798791492642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008683 (A162753 n).toNat - A295069 n|

end

end A295068.P9170253798791492642

/-! ## A295068.P1047475405301684487

`2-(A014963(A008458(n))-A295069(n))`
-/

namespace A295068.P1047475405301684487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - (A014963 (A008458 n).toNat - A295069 n)

end

end A295068.P1047475405301684487

/-!
# A295069: Solution of the complementary equation a(n) = 2*a(n-2) - b(n-2) + n, where a(0) = 3, a(1) = 4, b(0) = 1, and (a(n)) and (b(n)) are increasing complementary sequences.

The programs for A295069, there is no canonical definition to state claims against.
-/

/-! ## A295069.P18273584570188949505

`A295068(n)-1`
-/

namespace A295069.P18273584570188949505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295068 n - 1

end

end A295069.P18273584570188949505

/-! ## A295069.P10274889095534601117

`A321804(A001222(n+1))+A295068(n)`
-/

namespace A295069.P10274889095534601117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321804 (A001222 (n + 1)).toNat + A295068 n

end

end A295069.P10274889095534601117

/-! ## A295069.P137033704863399430

`2*A165326(A247899(n+1))+A295068(n)+1`
-/

namespace A295069.P137033704863399430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A165326 (A247899 (n + 1)).toNat + (A295068 n + 1)

end

end A295069.P137033704863399430

/-! ## A295069.P5029743327558433840

`A328384(A051644(n+1))+A295068(n)`
-/

namespace A295069.P5029743327558433840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328384 (A051644 (n + 1)).toNat + A295068 n

end

end A295069.P5029743327558433840

/-! ## A295069.P6341494526332344056

`A295086(A007318(C(n, 2)))+A295068(n)`
-/

namespace A295069.P6341494526332344056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295086 (A007318 (Nat.choose n 2)).toNat + A295068 n

end

end A295069.P6341494526332344056

/-!
# A295070: Solution of the complementary equation a(n) = a(n-2) + b(n-1) + b(n-2), where a(0) = 1, a(1) = 2, b(0) = 3, and (a(n)) and (b(n)) are increasing complementary sequences.

The programs for A295070, there is no canonical definition to state claims against.
-/

/-! ## A295070.P14273835434926147404

`record[A178464(n+1)-A047208(n+1)]`
-/

namespace A295070.P14273835434926147404
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178464 (n + 1) - A047208 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A295070.P14273835434926147404

/-! ## A295070.P8210447147531315083

`A301291(A004526(n))+A288425(n+1)`
-/

namespace A295070.P8210447147531315083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301291 (A004526 n).toNat + A288425 (n + 1)

end

end A295070.P8210447147531315083

/-! ## A295070.P15496632649503450400

`A301291(A319468(n))+A288425(n+1)`
-/

namespace A295070.P15496632649503450400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301291 (A319468 n).toNat + A288425 (n + 1)

end

end A295070.P15496632649503450400

/-!
# A295071: Number of von Neumann regular elements in the ring of 2 X 2 matrices over Z_n.

The programs for A295071, there is no canonical definition to state claims against.
-/

/-! ## A295071.P5821228940019525035

`∑[A279027(A090658(2*n+1))]²`
-/

namespace A295071.P5821228940019525035
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279027 (A090658 (2 * n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2

end

end A295071.P5821228940019525035

/-!
# A295072: Expansion of 1/(1 - x/(1 - x^4/(1 - x^10/(1 - x^20/(1 - x^35/(1 - ... - x^(k*(k+1)*(k+2)/6)/(1 - ...))))))), a continued fraction.

The programs for A295072, there is no canonical definition to state claims against.
-/

/-! ## A295072.P331091894741041687

`A000196(ceil(A055895(n+1)/(n+10)))`
-/

namespace A295072.P331091894741041687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 ⌈(A055895 (n + 1) : ℚ) / (n + 10 : ℚ)⌉.toNat

end

end A295072.P331091894741041687

/-! ## A295072.P13957315185922556287

`A083277(A000322(n))`
-/

namespace A295072.P13957315185922556287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083277 (A000322 n).toNat

end

end A295072.P13957315185922556287

/-! ## A295072.P4380019698854978700

`A000196(A050253(n))+char[11]`
-/

namespace A295072.P4380019698854978700
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A050253 n).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A295072.P4380019698854978700

/-! ## A295072.P15083571169776728022

`A000196(A014200(A210736(n)))`
-/

namespace A295072.P15083571169776728022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A014200 (A210736 n).toNat).toNat

end

end A295072.P15083571169776728022

/-! ## A295072.P10206752813277844978

`A084904(n)+A000196(A050253(n))`
-/

namespace A295072.P10206752813277844978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084904 n + A000196 (A050253 n).toNat

end

end A295072.P10206752813277844978

/-!
# A295073: Expansion of 1/(1 - x/(1 - x^5/(1 - x^14/(1 - x^30/(1 - x^55/(1 - ... - x^(k*(k+1)*(2*k+1)/6)/(1 - ...))))))), a continued fraction.

The programs for A295073, there is no canonical definition to state claims against.
-/

/-! ## A295073.P12442301901453082259

`A000188((a(n-1)+a(n-5))²)` with `a(0)=1, a(1)=1, a(2)=1, a(3)=1, a(4)=1, a(5)=1`
-/

namespace A295073.P12442301901453082259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 1, 1, 1, 1] fun n a =>
  A000188 ((a (n - 1) + a (n - 5)) ^ 2).toNat

end

end A295073.P12442301901453082259

/-! ## A295073.P1330001652998276846

`A118759(abs(A101915(n)))`
-/

namespace A295073.P1330001652998276846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118759 |A101915 n|.toNat

end

end A295073.P1330001652998276846

/-! ## A295073.P16392793961087788234

`A000188(A101915(n)²)`
-/

namespace A295073.P16392793961087788234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000188 (A101915 n ^ 2).toNat

end

end A295073.P16392793961087788234

/-! ## A295073.P3509088748401493542

`A000194(A101915(n)²)`
-/

namespace A295073.P3509088748401493542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000194 (A101915 n ^ 2).toNat

end

end A295073.P3509088748401493542

/-! ## A295073.P5092584301435719904

`A000196(A101915(n)²)`
-/

namespace A295073.P5092584301435719904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A101915 n ^ 2).toNat

end

end A295073.P5092584301435719904

/-!
# A295074: Numerator of the coefficient of the n-th term of the power expansion near x = 0 of sqrt(1+1/sqrt(1-x))/sqrt(2).

The programs for A295074, there is no canonical definition to state claims against.
-/

/-! ## A295074.P17147466212179418512

`A000265(A303537(2*(n+1)))`
-/

namespace A295074.P17147466212179418512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A303537 (2 * (n + 1))).toNat

end

end A295074.P17147466212179418512

/-!
# A295075: Numbers k such that d + k/d is never prime for any divisor d of k.

The programs for A295075, the canonical program `A295075.P13207258477495882565` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A295075 has offset 1).

The definition of A295075 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6431 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A295075.P4996542906628024860

`lt[A282849(n+1), 1]+1`
-/

namespace A295075.P4996542906628024860
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282849 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A295075.P4996542906628024860

namespace A295075

/-- `lt[A282849(n+1), 1]+1` -/
def P4996542906628024860.Spec : Prop :=
  ∀ n, (P4996542906628024860.a n : ℤ) = A295075 (n + 1)

end A295075

/-! ## A295075.P1497705816731998084

`A020725(eq[0, A282849(n+1)])`
-/

namespace A295075.P1497705816731998084
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282849 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A295075.P1497705816731998084

namespace A295075

/-- `A020725(eq[0, A282849(n+1)])` -/
def P1497705816731998084.Spec : Prop :=
  ∀ n, P1497705816731998084.a n = A295075 (n + 1)

end A295075

/-! ## A295075.P97436141172482640

`eq[1, A282849(A282849(n+1)+1)]+1`
-/

namespace A295075.P97436141172482640
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282849 (A282849 (n + 1) + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A295075.P97436141172482640

namespace A295075

/-- `eq[1, A282849(A282849(n+1)+1)]+1` -/
def P97436141172482640.Spec : Prop :=
  ∀ n, (P97436141172482640.a n : ℤ) = A295075 (n + 1)

end A295075

/-! ## A295075.P2831422838706344905

`eq[A010051(n+1), A282849(A065190(n+1))]`
-/

namespace A295075.P2831422838706344905
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282849 (A065190 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A295075.P2831422838706344905

namespace A295075

/-- `eq[A010051(n+1), A282849(A065190(n+1))]` -/
def P2831422838706344905.Spec : Prop :=
  ∀ n, (P2831422838706344905.a n : ℤ) = A295075 (n + 1)

end A295075

/-! ## A295075.P13207258477495882565

`comp[n+1-A000290((n+1)/A006530(n+1))]`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A295075

/-- `comp[n+1-A000290((n+1)/A006530(n+1))]` -/
def P13207258477495882565.Spec : Prop :=
  ∀ n, (P13207258477495882565.a n : ℤ) = A295075 (n + 1)

theorem P13207258477495882565.correct : P13207258477495882565.Spec := by
  intro n
  simp only [A295075, Nat.add_sub_cancel]

end A295075

/-! ## A295075.P11762889134011524384

`eq[A015314(A241663(n+1)), A259182(n+1)]`
-/

namespace A295075.P11762889134011524384
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015314 (A241663 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259182 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A295075.P11762889134011524384

namespace A295075

/-- `eq[A015314(A241663(n+1)), A259182(n+1)]` -/
def P11762889134011524384.Spec : Prop :=
  ∀ n, (P11762889134011524384.a n : ℤ) = A295075 (n + 1)

end A295075

/-!
# A295076: Numbers n > 1 such that n and sigma(n) have the same smallest prime factor.

The programs for A295076, there is no canonical definition to state claims against.
-/

/-! ## A295076.P8818583690397976814

`(2*comp[∪[2*n², n²]])%210`
-/

namespace A295076.P8818583690397976814
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n ^ 2

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f2 j = x) ∨ ∃ j, f3 j = x) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n % 210

end

end A295076.P8818583690397976814

/-! ## A295076.P13644068921474924207

`∪[2*comp[∪[2*n², n²]], (27*n+18)²]`
-/

namespace A295076.P13644068921474924207
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n ^ 2

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f3 j = x) ∨ ∃ j, f4 j = x) n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n

def f5 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (27 * n + 18) ^ 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∨ ∃ j, f5 j = x) n

end

end A295076.P13644068921474924207

/-! ## A295076.P5064522668356170480

`2*comp[∪[2*n², n²]]*∑{digits}[n, C(#, 9)]!`
-/

namespace A295076.P5064522668356170480
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n ^ 2

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f2 j = x) ∨ ∃ j, f3 j = x) n

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n * Nat.factorial ((SequenceMachineLib.digits10 (f4 n)).map fun (x : ℕ) => Nat.choose x 9).sum

end

end A295076.P5064522668356170480

/-! ## A295076.P17778417717721783429

`eq[2, gcd(10, A353688(n))]`
-/

namespace A295076.P17778417717721783429
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 10 (A353688 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A295076.P17778417717721783429

/-! ## A295076.P9329765468023771944

`A088829(n+1)%152`
-/

namespace A295076.P9329765468023771944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A088829 (n + 1)) 152

end

end A295076.P9329765468023771944

/-! ## A295076.P17622356686875020464

`2*comp[n*A030101(n)]`
-/

namespace A295076.P17622356686875020464
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A030101 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A295076.P17622356686875020464

/-! ## A295076.P8265236350917689240

`2*comp[n*A325401(n)]`
-/

namespace A295076.P8265236350917689240
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A325401 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A295076.P8265236350917689240

/-! ## A295076.P4134014349958913481

`2*comp[n*A327539(n)]`
-/

namespace A295076.P4134014349958913481
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A327539 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A295076.P4134014349958913481

/-! ## A295076.P14778780990502207541

`2*A028983(n+1)%87`
-/

namespace A295076.P14778780990502207541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * Int.tmod (A028983 (n + 1)) 87

end

end A295076.P14778780990502207541

/-! ## A295076.P3046753592329425755

`filter[A053869(n+1), A143731(#)]`
-/

namespace A295076.P3046753592329425755
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053869 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A143731 (f1 j).toNat = 1) n)

end

end A295076.P3046753592329425755

/-!
# A295077: a(n) = 2*n*(n-1) + 2^n - 1.

The programs for A295077, the canonical program `A295077.P2013166956180128000` is in `Seq.B000.C035`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A295077 has offset 0).

The definition of A295077 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2*n*(n-1)+2^n-1` (program `A295077.P2013166956180128000`, by `A295077.P2013166956180128000.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A295077.P2013166956180128000

`2*n*(n-1)+2^n-1`

The canonical program, it is in `Seq.B000.C035`.
-/

namespace A295077

/-- `2*n*(n-1)+2^n-1` -/
def P2013166956180128000.Spec : Prop :=
  ∀ n, P2013166956180128000.a n = A295077 n

theorem P2013166956180128000.correct : P2013166956180128000.Spec := by
  intro n
  simp only [A295077]

end A295077

/-! ## A295077.P14490941716428724001

`∑[∑[2*(a(n-1)-2)]]` with `a(0)=0, a(1)=1, a(2)=5`
-/

namespace A295077.P14490941716428724001
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 5] fun n f2 =>
  2 * (f2 (n - 1) - 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A295077.P14490941716428724001

namespace A295077

/-- `∑[∑[2*(a(n-1)-2)]]` -/
def P14490941716428724001.Spec : Prop :=
  ∀ n, P14490941716428724001.a n = A295077 n

end A295077

/-! ## A295077.P250330576337421875

`∑[∑[a(n-1)+a(n-1)-4]]` with `a(0)=0, a(1)=1, a(2)=5`
-/

namespace A295077.P250330576337421875
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 5] fun n f2 =>
  f2 (n - 1) + (f2 (n - 1) - 4)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A295077.P250330576337421875

namespace A295077

/-- `∑[∑[a(n-1)+a(n-1)-4]]` -/
def P250330576337421875.Spec : Prop :=
  ∀ n, P250330576337421875.a n = A295077 n

end A295077

/-! ## A295077.P1067567667816909199

`∑[∑[a(n-1)-(4-a(n-1))]]` with `a(0)=0, a(1)=1, a(2)=5`
-/

namespace A295077.P1067567667816909199
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 5] fun n f2 =>
  f2 (n - 1) - (4 - f2 (n - 1))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A295077.P1067567667816909199

namespace A295077

/-- `∑[∑[a(n-1)-(4-a(n-1))]]` -/
def P1067567667816909199.Spec : Prop :=
  ∀ n, P1067567667816909199.a n = A295077 n

end A295077

/-! ## A295077.P17670394085599686815

`abs(C(2*n, 2)+A000225(n)-n)`
-/

namespace A295077.P17670394085599686815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(Nat.choose (2 * n) 2 : ℤ) + A000225 n - (n : ℤ)|

end

end A295077.P17670394085599686815

namespace A295077

/-- `abs(C(2*n, 2)+A000225(n)-n)` -/
def P17670394085599686815.Spec : Prop :=
  ∀ n, P17670394085599686815.a n = A295077 n

end A295077

/-! ## A295077.P11273581477501393723

`∑[A111284(n+1)+A011782(n)-2]`
-/

namespace A295077.P11273581477501393723
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111284 (n + 1) + (A011782 n - 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A295077.P11273581477501393723

namespace A295077

/-- `∑[A111284(n+1)+A011782(n)-2]` -/
def P11273581477501393723.Spec : Prop :=
  ∀ n, P11273581477501393723.a n = A295077 n

end A295077

/-! ## A295077.P16561409037349469812

`A297928(n)%A131520(n+1)`
-/

namespace A295077.P16561409037349469812
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A297928 n) (A131520 (n + 1))

end

end A295077.P16561409037349469812

namespace A295077

/-- `A297928(n)%A131520(n+1)` -/
def P16561409037349469812.Spec : Prop :=
  ∀ n, P16561409037349469812.a n = A295077 n

end A295077

/-! ## A295077.P3731757904058976946

`A300184(∑[n+3]-3)`
-/

namespace A295077.P3731757904058976946
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300184 (∑ j ∈ Finset.range (n + 1), f1 j - 3)

end

end A295077.P3731757904058976946

namespace A295077

/-- `A300184(∑[n+3]-3)` -/
def P3731757904058976946.Spec : Prop :=
  ∀ n, P3731757904058976946.a n = A295077 n

end A295077

/-!
# A295078: Numbers n > 1 such that n and sigma(n) have the same smallest and simultaneously largest prime factors.

The programs for A295078, the canonical program `A295078.P5985617204651122140` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A295078 has offset 1).

The definition of A295078 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 202 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A295078.P3468979329181472074

`∩[2*n, A071834(n+1)]`
-/

namespace A295078.P3468979329181472074
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071834 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A295078.P3468979329181472074

namespace A295078

/-- `∩[2*n, A071834(n+1)]` -/
def P3468979329181472074.Spec : Prop :=
  ∀ n, (P3468979329181472074.a n : ℤ) = A295078 (n + 1)

end A295078

/-! ## A295078.P5985617204651122140

`filter[A071834(n+1), A354034(#)]`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A295078

/-- `filter[A071834(n+1), A354034(#)]` -/
def P5985617204651122140.Spec : Prop :=
  ∀ n, P5985617204651122140.a n = A295078 (n + 1)

theorem P5985617204651122140.correct : P5985617204651122140.Spec := by
  intro n
  simp only [A295078, Nat.add_sub_cancel]

end A295078

/-! ## A295078.P18107226280075563745

`∩[A071834(n+1), A177712(n+1)]`
-/

namespace A295078.P18107226280075563745
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071834 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177712 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A295078.P18107226280075563745

namespace A295078

/-- `∩[A071834(n+1), A177712(n+1)]` -/
def P18107226280075563745.Spec : Prop :=
  ∀ n, (P18107226280075563745.a n : ℤ) = A295078 (n + 1)

end A295078

/-! ## A295078.P17206080628508228292

`∩[A071834(n+1), A088829(n+1)]`
-/

namespace A295078.P17206080628508228292
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071834 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088829 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A295078.P17206080628508228292

namespace A295078

/-- `∩[A071834(n+1), A088829(n+1)]` -/
def P17206080628508228292.Spec : Prop :=
  ∀ n, (P17206080628508228292.a n : ℤ) = A295078 (n + 1)

end A295078

/-! ## A295078.P17826111545164147729

`∩[A071834(n+1), A305634(n+1)]`
-/

namespace A295078.P17826111545164147729
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071834 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305634 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A295078.P17826111545164147729

namespace A295078

/-- `∩[A071834(n+1), A305634(n+1)]` -/
def P17826111545164147729.Spec : Prop :=
  ∀ n, (P17826111545164147729.a n : ℤ) = A295078 (n + 1)

end A295078

/-! ## A295078.P13217419977668410800

`∩[A071834(n+1), A004271(n)]`
-/

namespace A295078.P13217419977668410800
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071834 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004271 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A295078.P13217419977668410800

namespace A295078

/-- `∩[A071834(n+1), A004271(n)]` -/
def P13217419977668410800.Spec : Prop :=
  ∀ n, (P13217419977668410800.a n : ℤ) = A295078 (n + 1)

end A295078

/-! ## A295078.P2057054226939527074

`∩[A071834(n+1), A004272(n)]`
-/

namespace A295078.P2057054226939527074
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071834 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004272 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A295078.P2057054226939527074

namespace A295078

/-- `∩[A071834(n+1), A004272(n)]` -/
def P2057054226939527074.Spec : Prop :=
  ∀ n, (P2057054226939527074.a n : ℤ) = A295078 (n + 1)

end A295078

/-! ## A295078.P2768159670173248830

`∩[A071834(n+1), A004275(n)]`
-/

namespace A295078.P2768159670173248830
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071834 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004275 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A295078.P2768159670173248830

namespace A295078

/-- `∩[A071834(n+1), A004275(n)]` -/
def P2768159670173248830.Spec : Prop :=
  ∀ n, (P2768159670173248830.a n : ℤ) = A295078 (n + 1)

end A295078

/-! ## A295078.P4975651251509245083

`∩[A071834(n+1), A004277(n)]`
-/

namespace A295078.P4975651251509245083
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071834 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A295078.P4975651251509245083

namespace A295078

/-- `∩[A071834(n+1), A004277(n)]` -/
def P4975651251509245083.Spec : Prop :=
  ∀ n, (P4975651251509245083.a n : ℤ) = A295078 (n + 1)

end A295078

/-! ## A295078.P13609013743291251850

`∩[A071834(n+1), A004279(n)]`
-/

namespace A295078.P13609013743291251850
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071834 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004279 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A295078.P13609013743291251850

namespace A295078

/-- `∩[A071834(n+1), A004279(n)]` -/
def P13609013743291251850.Spec : Prop :=
  ∀ n, (P13609013743291251850.a n : ℤ) = A295078 (n + 1)

end A295078

/-!
# A295080: Number of maximal matchings in the n-Andrásfai graph.

The programs for A295080, there is no canonical definition to state claims against.
-/

/-! ## A295080.P5408344183072225791

`A324024(n)+A030231(A000364(n))`
-/

namespace A295080.P5408344183072225791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324024 n + A030231 (A000364 n).toNat

end

end A295080.P5408344183072225791

/-!
# A295081: Number of partitions of 1 into exactly 10*n+1 powers of 1/11.

The programs for A295081, there is no canonical definition to state claims against.
-/

/-! ## A295081.P14599645231709925220

`A294775(A000217(n+11)-11)`
-/

namespace A295081.P14599645231709925220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294775 (A000217 (n + 11) - 11).toNat

end

end A295081.P14599645231709925220

/-! ## A295081.P4462415778525743080

`A294775(A161680(n+12)-11)`
-/

namespace A295081.P4462415778525743080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294775 (A161680 (n + 12) - 11).toNat

end

end A295081.P4462415778525743080

/-! ## A295081.P7494962860075883655

`A294775(A052905(n+7)+n+5)`
-/

namespace A295081.P7494962860075883655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294775 (A052905 (n + 7) + (n + 5 : ℤ)).toNat

end

end A295081.P7494962860075883655

/-! ## A295081.P10163655472934707215

`A294775(2*n+9+A000124(n+9))`
-/

namespace A295081.P10163655472934707215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294775 ((2 * n + 9 : ℤ) + A000124 (n + 9)).toNat

end

end A295081.P10163655472934707215

/-! ## A295081.P15699335477087382332

`A294775(A167499(n+6)+A016825(n+5))`
-/

namespace A295081.P15699335477087382332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294775 (A167499 (n + 6) + A016825 (n + 5)).toNat

end

end A295081.P15699335477087382332

/-!
# A295084: Number of sqrt(n)-smooth numbers <= n.

The programs for A295084, there is no canonical definition to state claims against.
-/

/-! ## A295084.P9659203023160252081

`n+1-A241419(n+1)`
-/

namespace A295084.P9659203023160252081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A241419 (n + 1)

end

end A295084.P9659203023160252081

/-! ## A295084.P1041400807051278881

`n-(A241419(-xor(n, -1))-1)`
-/

namespace A295084.P1041400807051278881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - (A241419 (-Int.xor (n : ℤ) (-1)).toNat - 1)

end

end A295084.P1041400807051278881

/-! ## A295084.P1994186634503015185

`n-(A241419(Δ[n²]-n)-1)`
-/

namespace A295084.P1994186634503015185
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - (A241419 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) - (n : ℤ)).toNat - 1)

end

end A295084.P1994186634503015185

/-! ## A295084.P5446526835758883916

`A024000(A241419(n+1))+n`
-/

namespace A295084.P5446526835758883916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024000 (A241419 (n + 1)).toNat + (n : ℤ)

end

end A295084.P5446526835758883916

/-! ## A295084.P14016691477160283329

`A193592(A241419(n+1)+∑[n])`
-/

namespace A295084.P14016691477160283329
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 (A241419 (n + 1) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)).toNat

end

end A295084.P14016691477160283329

/-! ## A295084.P14032139168502257052

`abs(A241419(n+1)+A001478(n+1))`
-/

namespace A295084.P14032139168502257052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A241419 (n + 1) + A001478 (n + 1)|

end

end A295084.P14032139168502257052

/-! ## A295084.P12607198311426039288

`-(A241419(n+1)+A001489(n+1))`
-/

namespace A295084.P12607198311426039288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(A241419 (n + 1) + A001489 (n + 1))

end

end A295084.P12607198311426039288

/-! ## A295084.P16784495706885107034

`A001489(A241419(n+1))+A000027(n+1)`
-/

namespace A295084.P16784495706885107034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001489 (A241419 (n + 1)).toNat + A000027 (n + 1)

end

end A295084.P16784495706885107034

/-! ## A295084.P6468810375103865901

`A008619(2*n)+A001489(A241419(n+1))`
-/

namespace A295084.P6468810375103865901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (2 * n) + A001489 (A241419 (n + 1)).toNat

end

end A295084.P6468810375103865901

/-! ## A295084.P9698840173123142085

`A333535(n+1)+A333536(n+2)-A333535(n+2)`
-/

namespace A295084.P9698840173123142085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333535 (n + 1) + (A333536 (n + 2) - A333535 (n + 2))

end

end A295084.P9698840173123142085

/-!
# A295085: Numbers k such that {k*phi} < 0.25 or {k*phi} > 0.75, where phi is the golden ratio (1 + sqrt(5))/2 and { } denotes fractional part.

The programs for A295085, there is no canonical definition to state claims against.
-/

/-! ## A295085.P12136851374498804838

`∪[A190249(n+1), A190251(n+1)]`
-/

namespace A295085.P12136851374498804838
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190249 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190251 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A295085.P12136851374498804838

/-! ## A295085.P2608004422854706655

`eq[0, and(2, A195175(n+1))]+1`
-/

namespace A295085.P2608004422854706655
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 2 (A195175 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A295085.P2608004422854706655

/-! ## A295085.P8244132232759544807

`eq[1, (A022848(n)-(n+1))%2]`
-/

namespace A295085.P8244132232759544807
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A022848 n - (n + 1 : ℤ)) 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A295085.P8244132232759544807

/-! ## A295085.P6363449390978806681

`eq[1, A180186(a(A190248(n)))]` with `a(0)=4, a(1)=10`
-/

namespace A295085.P6363449390978806681
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.rec [4, 10] fun n f2 =>
  A180186 (f2 (A190248 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A295085.P6363449390978806681

/-! ## A295085.P2903622332452941797

`eq[1, A190248(a(A190248(n)))]` with `a(0)=4, a(1)=10`
-/

namespace A295085.P2903622332452941797
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.rec [4, 10] fun n f2 =>
  A190248 (f2 (A190248 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A295085.P2903622332452941797

/-! ## A295085.P14719313089103016870

`record[n*A008794(a(A190248(n)))]` with `a(0)=2, a(1)=0`
-/

namespace A295085.P14719313089103016870
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [2, 0] fun n f1 =>
  (n : ℤ) * A008794 (f1 (A190248 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A295085.P14719313089103016870

/-! ## A295085.P870281230257729198

`eq[1, A115716(A022848(n+1)+n)]+1`
-/

namespace A295085.P870281230257729198
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115716 (A022848 (n + 1) + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A295085.P870281230257729198

/-! ## A295085.P6583793370263894939

`eq[A089809(2*(n+1)), A089809(n+1)]+1`
-/

namespace A295085.P6583793370263894939
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089809 (2 * (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089809 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A295085.P6583793370263894939

/-! ## A295085.P1217442404055006435

`eq[A078588(A004273(n)+1), A078588(n)]`
-/

namespace A295085.P1217442404055006435
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078588 (A004273 n + 1).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078588 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A295085.P1217442404055006435

/-!
# A295087: Distinct values in A002487 in the order of appearance.

The programs for A295087, there is no canonical definition to state claims against.
-/

/-! ## A295087.P10432646942998457031

`A002487(A091945(n+1))`
-/

namespace A295087.P10432646942998457031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002487 (A091945 (n + 1)).toNat

end

end A295087.P10432646942998457031

/-! ## A295087.P18374058652725559382

`A002487(eq[1, A091948(n)])`
-/

namespace A295087.P18374058652725559382
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091948 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002487 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A295087.P18374058652725559382

/-! ## A295087.P18425621746158146219

`A002487(lt[A091948(n), 2])`
-/

namespace A295087.P18425621746158146219
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091948 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002487 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A295087.P18425621746158146219

/-! ## A295087.P7569280744114979984

`A283977(2*A091945(n+1))`
-/

namespace A295087.P7569280744114979984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283977 (2 * A091945 (n + 1)).toNat

end

end A295087.P7569280744114979984

/-!
# A295088: Inverse to A295087.

The programs for A295088, there is no canonical definition to state claims against.
-/

/-! ## A295088.P2936941548123517562

`A385991(A020946(n))`
-/

namespace A295088.P2936941548123517562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385991 (A020946 n).toNat

end

end A295088.P2936941548123517562

/-!
# A295089: a(n) = 3*n^2 + n + 3.

The programs for A295089, the canonical program `A295089.P4252073232684347397` is in `Seq.B000.C035`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A295089 has offset 0).

The definition of A295089 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `3*n²+n+3` (program `A295089.P4252073232684347397`, by `A295089.P4252073232684347397.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A295089.P4252073232684347397

`3*n²+n+3`

The canonical program, it is in `Seq.B000.C035`.
-/

namespace A295089

/-- `3*n²+n+3` -/
def P4252073232684347397.Spec : Prop :=
  ∀ n, (P4252073232684347397.a n : ℤ) = A295089 n

theorem P4252073232684347397.correct : P4252073232684347397.Spec := by
  intro n
  simp only [A295089]

end A295089

/-! ## A295089.P11896901629642634173

`∑[a(n-1)+6]` with `a(0)=3, a(1)=4`
-/

namespace A295089.P11896901629642634173
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [3, 4] fun n f1 =>
  f1 (n - 1) + 6

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A295089.P11896901629642634173

namespace A295089

/-- `∑[a(n-1)+6]` -/
def P11896901629642634173.Spec : Prop :=
  ∀ n, (P11896901629642634173.a n : ℤ) = A295089 n

end A295089

/-! ## A295089.P2753486965000064468

`or(1, ∑[abs(2-6*n)])`
-/

namespace A295089.P2753486965000064468
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |2 - (6 * n : ℤ)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A295089.P2753486965000064468

namespace A295089

/-- `or(1, ∑[abs(2-6*n)])` -/
def P2753486965000064468.Spec : Prop :=
  ∀ n, P2753486965000064468.a n = A295089 n

end A295089

/-! ## A295089.P15612366823224036157

`xor(1, ∑[abs(2-6*n)])`
-/

namespace A295089.P15612366823224036157
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |2 - (6 * n : ℤ)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A295089.P15612366823224036157

namespace A295089

/-- `xor(1, ∑[abs(2-6*n)])` -/
def P15612366823224036157.Spec : Prop :=
  ∀ n, P15612366823224036157.a n = A295089 n

end A295089

/-! ## A295089.P11711213598403793404

`∑[ogf((3-2x+5x^2)/(1-2x+x^2))]`
-/

namespace A295089.P11711213598403793404
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [3, -2, 5] [1, -2, 1] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A295089.P11711213598403793404

namespace A295089

/-- `∑[ogf((3-2x+5x^2)/(1-2x+x^2))]` -/
def P11711213598403793404.Spec : Prop :=
  ∀ n, P11711213598403793404.a n = A295089 n

end A295089

/-! ## A295089.P7410740635712254204

`ogf((3-2x+5x^2)/(1-3x+3x^2-x^3))`
-/

namespace A295089.P7410740635712254204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [3, -2, 5] [1, -3, 3, -1] n

end

end A295089.P7410740635712254204

namespace A295089

/-- `ogf((3-2x+5x^2)/(1-3x+3x^2-x^3))` -/
def P7410740635712254204.Spec : Prop :=
  ∀ n, P7410740635712254204.a n = A295089 n

end A295089

/-! ## A295089.P2808896390339483822

`Δ[n*(lcm(n, n-1)+3)]`
-/

namespace A295089.P2808896390339483822
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * (Int.lcm (n : ℤ) ((n : ℤ) - 1) + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A295089.P2808896390339483822

namespace A295089

/-- `Δ[n*(lcm(n, n-1)+3)]` -/
def P2808896390339483822.Spec : Prop :=
  ∀ n, P2808896390339483822.a n = A295089 n

end A295089

/-! ## A295089.P16437334402131537913

`ceil(3/acot(n)²+n+1)`
-/

namespace A295089.P16437334402131537913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈3 / SequenceMachineLib.acot (n : ℝ) ^ 2 + (n + 1 : ℝ)⌉

end

end A295089.P16437334402131537913

namespace A295089

/-- `ceil(3/acot(n)²+n+1)` -/
def P16437334402131537913.Spec : Prop :=
  ∀ n, P16437334402131537913.a n = A295089 n

end A295089

/-! ## A295089.P17649434411990630485

`floor(Δ[(C(n, 2)+ϕ)*2*n])`
-/

namespace A295089.P17649434411990630485
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((Nat.choose n 2 : ℝ) + Real.goldenRatio) * (2 * n : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊f1 (n + 1) - f1 n⌋

end

end A295089.P17649434411990630485

namespace A295089

/-- `floor(Δ[(C(n, 2)+ϕ)*2*n])` -/
def P17649434411990630485.Spec : Prop :=
  ∀ n, P17649434411990630485.a n = A295089 n

end A295089

/-! ## A295089.P7894604133895248280

`floor(6*n+a(n-1)-2)` with `a(0)=3`

`floor` is left out, it is the identity on integers.
-/

namespace A295089.P7894604133895248280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  (6 * n : ℤ) + (a (n - 1) - 2)

end

end A295089.P7894604133895248280

namespace A295089

/-- `floor(6*n+a(n-1)-2)` -/
def P7894604133895248280.Spec : Prop :=
  ∀ n, P7894604133895248280.a n = A295089 n

theorem P7894604133895248280.correct : P7894604133895248280.Spec := by
  intro n
  induction n with
  | zero => simp [A295089, A295089.P7894604133895248280.a, A295089.P4252073232684347397.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
  | succ m ih =>
    simp only [A295089, Nat.add_sub_cancel, A295089.P7894604133895248280.a, A295089.P4252073232684347397.a, SequenceMachineLib.memo_apply] at ih ⊢
    rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
    try simp only [Nat.add_sub_cancel, Nat.lt_add_one, ↓reduceIte]
    try push_cast at ih ⊢
    try linarith

end A295089

/-! ## A295089.P11685012949442208143

`floor(6*n-(2-a(n-1)))` with `a(0)=3`

`floor` is left out, it is the identity on integers.
-/

namespace A295089.P11685012949442208143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  (6 * n : ℤ) - (2 - a (n - 1))

end

end A295089.P11685012949442208143

namespace A295089

/-- `floor(6*n-(2-a(n-1)))` -/
def P11685012949442208143.Spec : Prop :=
  ∀ n, P11685012949442208143.a n = A295089 n

theorem P11685012949442208143.correct : P11685012949442208143.Spec := by
  intro n
  induction n with
  | zero => simp [A295089, A295089.P11685012949442208143.a, A295089.P4252073232684347397.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
  | succ m ih =>
    simp only [A295089, Nat.add_sub_cancel, A295089.P11685012949442208143.a, A295089.P4252073232684347397.a, SequenceMachineLib.memo_apply] at ih ⊢
    rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
    try simp only [Nat.add_sub_cancel, Nat.lt_add_one, ↓reduceIte]
    try push_cast at ih ⊢
    try linarith

end A295089

/-! ## A295089.P15878085750493062727

`Δ[n*(A002061(n)+2)]`
-/

namespace A295089.P15878085750493062727
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A002061 n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A295089.P15878085750493062727

namespace A295089

/-- `Δ[n*(A002061(n)+2)]` -/
def P15878085750493062727.Spec : Prop :=
  ∀ n, P15878085750493062727.a n = A295089 n

theorem P15878085750493062727.correct : P15878085750493062727.Spec := by
  intro n
  simp only [A295089, Nat.add_sub_cancel, A295089.P15878085750493062727.f1, A295089.P15878085750493062727.a, A295089.P4252073232684347397.a, A002061, A002061.P13016590216674735232.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A295089

/-! ## A295089.P6480113277193647731

`(A136392(n+1)+5)/2`
-/

namespace A295089.P6480113277193647731
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A136392 (n + 1) + 5 : ℚ) / 2

end

end A295089.P6480113277193647731

namespace A295089

/-- `(A136392(n+1)+5)/2` -/
def P6480113277193647731.Spec : Prop :=
  ∀ n, P6480113277193647731.a n = (A295089 n : ℚ)

theorem P6480113277193647731.correct : P6480113277193647731.Spec := by
  intro n
  simp only [A295089, Nat.add_sub_cancel, A295089.P6480113277193647731.a, A295089.P4252073232684347397.a, A136392, A136392.P9626772396593886433.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A295089

/-! ## A295089.P9497265215627080565

`Δ[A034262(n)-(1-n)²]`
-/

namespace A295089.P9497265215627080565
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034262 n - (1 - (n : ℤ)) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A295089.P9497265215627080565

namespace A295089

/-- `Δ[A034262(n)-(1-n)²]` -/
def P9497265215627080565.Spec : Prop :=
  ∀ n, P9497265215627080565.a n = A295089 n

theorem P9497265215627080565.correct : P9497265215627080565.Spec := by
  intro n
  simp only [A295089, Nat.add_sub_cancel, A295089.P9497265215627080565.f1, A295089.P9497265215627080565.a, A295089.P4252073232684347397.a, A034262, A034262.P1986901683698587680.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A295089

/-! ## A295089.P5872608919844590323

`(A000567(n)/(n+1)+3)*(n+1)`
-/

namespace A295089.P5872608919844590323
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A000567 n : ℚ) / (n + 1 : ℚ) + 3) * (n + 1 : ℚ)

end

end A295089.P5872608919844590323

namespace A295089

/-- `(A000567(n)/(n+1)+3)*(n+1)` -/
def P5872608919844590323.Spec : Prop :=
  ∀ n, P5872608919844590323.a n = (A295089 n : ℚ)

theorem P5872608919844590323.correct : P5872608919844590323.Spec := by
  intro n
  simp only [A295089, Nat.add_sub_cancel, A295089.P5872608919844590323.a, A295089.P4252073232684347397.a, A000567, A000567.P17850767079432249295.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A295089

/-! ## A295089.P12484643548289575352

`A154106(n)%A283394(n)`
-/

namespace A295089.P12484643548289575352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A154106 n) (A283394 n)

end

end A295089.P12484643548289575352

namespace A295089

/-- `A154106(n)%A283394(n)` -/
def P12484643548289575352.Spec : Prop :=
  ∀ n, P12484643548289575352.a n = A295089 n

end A295089

/-! ## A295089.P8749342831862434024

`Δ[(∑[lcm(2, 2*n)]-(n-3))*(n-1)]`
-/

namespace A295089.P8749342831862434024
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm 2 (2 * n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ) - ((n : ℤ) - 3)) * ((n : ℤ) - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A295089.P8749342831862434024

namespace A295089

/-- `Δ[(∑[lcm(2, 2*n)]-(n-3))*(n-1)]` -/
def P8749342831862434024.Spec : Prop :=
  ∀ n, P8749342831862434024.a n = A295089 n

end A295089

/-! ## A295089.P2885003100211892700

`A247018(Δ[n²])`
-/

namespace A295089.P2885003100211892700
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247018 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A295089.P2885003100211892700

namespace A295089

/-- `A247018(Δ[n²])` -/
def P2885003100211892700.Spec : Prop :=
  ∀ n, P2885003100211892700.a n = A295089 n

end A295089

/-! ## A295089.P1085663227540800953

`A027694(3*n)/3`
-/

namespace A295089.P1085663227540800953
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A027694 (3 * n) : ℚ) / 3

end

end A295089.P1085663227540800953

namespace A295089

/-- `A027694(3*n)/3` -/
def P1085663227540800953.Spec : Prop :=
  ∀ n, P1085663227540800953.a n = (A295089 n : ℚ)

theorem P1085663227540800953.correct : P1085663227540800953.Spec := by
  intro n
  simp only [A295089, Nat.add_sub_cancel, A295089.P1085663227540800953.a, A295089.P4252073232684347397.a, A027694, A027694.P2269874103153134715.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A295089

/-! ## A295089.P7073187736254367132

`∑[A065166(a(n-1))]` with `a(0)=3`
-/

namespace A295089.P7073187736254367132
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [3] fun n f1 =>
  A065166 (f1 (n - 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A295089.P7073187736254367132

namespace A295089

/-- `∑[A065166(a(n-1))]` -/
def P7073187736254367132.Spec : Prop :=
  ∀ n, P7073187736254367132.a n = A295089 n

end A295089

/-!
# A295090: Number of n X n 0..1 arrays with each 1 horizontally or vertically adjacent to 1 or 3 1's.

The programs for A295090, there is no canonical definition to state claims against.
-/

/-! ## A295090.P16548386126327647337

`A295097(∑[4*n]+1)`
-/

namespace A295090.P16548386126327647337
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295097 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A295090.P16548386126327647337

/-! ## A295090.P6790176903902410530

`record[A003982(n)*A295097(n+1)]`
-/

namespace A295090.P6790176903902410530
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A295097 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A295090.P6790176903902410530

/-! ## A295090.P7639763577005546961

`record[gcd(A114327(n), A295097(n+1))]`
-/

namespace A295090.P7639763577005546961
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A114327 n) (A295097 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A295090.P7639763577005546961

/-! ## A295090.P12582095841233237106

`gcd(A000038(n), A295097(A001844(n)))`
-/

namespace A295090.P12582095841233237106
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A295097 (A001844 n).toNat)

end

end A295090.P12582095841233237106

/-! ## A295090.P6734806314345044471

`or(A000007(n), A295097(A001844(n)))`
-/

namespace A295090.P6734806314345044471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A295097 (A001844 n).toNat)

end

end A295090.P6734806314345044471

/-!
# A295091: Number of n X 2 0..1 arrays with each 1 horizontally or vertically adjacent to 1 or 3 1s.

The programs for A295091, the canonical program `A295091.P14121316271721902346` is in `Seq.B000.C035`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A295091 has offset 1).

The definition of A295091 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 284 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A295091.P14121316271721902346

`a(n-1)+2*a(n-2)+2*a(n-3)-a(n-5)` with `a(0)=2, a(1)=5, a(2)=11, a(3)=24, a(4)=55`

The canonical program, it is in `Seq.B000.C035`.
-/

namespace A295091

/-- `a(n-1)+2*a(n-2)+2*a(n-3)-a(n-5)` -/
def P14121316271721902346.Spec : Prop :=
  ∀ n, P14121316271721902346.a n = A295091 (n + 1)

theorem P14121316271721902346.correct : P14121316271721902346.Spec := by
  intro n
  simp only [A295091, Nat.add_sub_cancel]

end A295091

/-! ## A295091.P12562306673633673470

`A196316(n+1)+A131713(n)`
-/

namespace A295091.P12562306673633673470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196316 (n + 1) + A131713 n

end

end A295091.P12562306673633673470

namespace A295091

/-- `A196316(n+1)+A131713(n)` -/
def P12562306673633673470.Spec : Prop :=
  ∀ n, P12562306673633673470.a n = A295091 (n + 1)

end A295091

/-! ## A295091.P17733656308159458820

`A196316(n+1)+A117188(2*n)`
-/

namespace A295091.P17733656308159458820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196316 (n + 1) + A117188 (2 * n)

end

end A295091.P17733656308159458820

namespace A295091

/-- `A196316(n+1)+A117188(2*n)` -/
def P17733656308159458820.Spec : Prop :=
  ∀ n, P17733656308159458820.a n = A295091 (n + 1)

end A295091

/-! ## A295091.P6232865482440038812

`A196316(n+1)+A057079(4*n)`
-/

namespace A295091.P6232865482440038812
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196316 (n + 1) + A057079 (4 * n)

end

end A295091.P6232865482440038812

namespace A295091

/-- `A196316(n+1)+A057079(4*n)` -/
def P6232865482440038812.Spec : Prop :=
  ∀ n, P6232865482440038812.a n = A295091 (n + 1)

end A295091

/-! ## A295091.P9047580111540431922

`A196316(n+1)+2-A057079(n)²`
-/

namespace A295091.P9047580111540431922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196316 (n + 1) + (2 - A057079 n ^ 2)

end

end A295091.P9047580111540431922

namespace A295091

/-- `A196316(n+1)+2-A057079(n)²` -/
def P9047580111540431922.Spec : Prop :=
  ∀ n, P9047580111540431922.a n = A295091 (n + 1)

end A295091

/-!
# A295092: Number of nX3 0..1 arrays with each 1 horizontally or vertically adjacent to 1 or 3 1s.

The programs for A295092, there is no canonical definition to state claims against.
-/

/-! ## A295092.P17476999833464404930

`A295097(∑[n+2]+4)`
-/

namespace A295092.P17476999833464404930
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295097 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A295092.P17476999833464404930

/-! ## A295092.P8826879025246328207

`A295097(A167614(n+1))+A178798(n)`
-/

namespace A295092.P8826879025246328207
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295097 (A167614 (n + 1)).toNat + A178798 n

end

end A295092.P8826879025246328207

/-! ## A295092.P9133965189394876214

`A152847(n)*A295097(A167614(n+1))`
-/

namespace A295092.P9133965189394876214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152847 n * A295097 (A167614 (n + 1)).toNat

end

end A295092.P9133965189394876214

/-! ## A295092.P10846018190065504698

`C(A295097(A167614(n+1)), A054977(n))`
-/

namespace A295092.P10846018190065504698
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A295097 (A167614 (n + 1)).toNat).toNat (A054977 n).toNat

end

end A295092.P10846018190065504698

/-! ## A295092.P13315111636842682493

`or(A000007(n), A295097(A167614(n+1)))`
-/

namespace A295092.P13315111636842682493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A295097 (A167614 (n + 1)).toNat)

end

end A295092.P13315111636842682493

/-!
# A295093: Number of nX4 0..1 arrays with each 1 horizontally or vertically adjacent to 1 or 3 1s.

The programs for A295093, there is no canonical definition to state claims against.
-/

/-! ## A295093.P1395047207170111390

`A295097(∑[n+3]+7)`
-/

namespace A295093.P1395047207170111390
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295097 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A295093.P1395047207170111390

/-! ## A295093.P9192346151494537155

`A295097(A167614(n+2)+1)+A035363(2*n+1)`
-/

namespace A295093.P9192346151494537155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295097 (A167614 (n + 2) + 1).toNat + A035363 (2 * n + 1)

end

end A295093.P9192346151494537155

/-! ## A295093.P2116065885422508799

`A295097(A055998(n+2))%A074531(n+1)`
-/

namespace A295093.P2116065885422508799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A295097 (A055998 (n + 2)).toNat) (A074531 (n + 1))

end

end A295093.P2116065885422508799

/-! ## A295093.P3664316296334134503

`A295097(A027379(n+2))%A183470(n+1)`
-/

namespace A295093.P3664316296334134503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A295097 (A027379 (n + 2)).toNat) (A183470 (n + 1))

end

end A295093.P3664316296334134503

/-!
# A295094: Number of nX5 0..1 arrays with each 1 horizontally or vertically adjacent to 1 or 3 1s.

The programs for A295094, there is no canonical definition to state claims against.
-/

/-! ## A295094.P1703628696334148458

`A295097(A167499(n+3))`
-/

namespace A295094.P1703628696334148458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295097 (A167499 (n + 3)).toNat

end

end A295094.P1703628696334148458

/-! ## A295094.P14867228925954553779

`A295097(A000124(n+5)-(n+1))`
-/

namespace A295094.P14867228925954553779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295097 (A000124 (n + 5) - (n + 1 : ℤ)).toNat

end

end A295094.P14867228925954553779

/-! ## A295094.P446805424893751327

`A295097(A055999(n+3)-2*n)`
-/

namespace A295094.P446805424893751327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295097 (A055999 (n + 3) - (2 * n : ℤ)).toNat

end

end A295094.P446805424893751327

/-! ## A295094.P12078352081022869407

`A295097(A001057(Δ[A026046(n+6)]))`
-/

namespace A295094.P12078352081022869407
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026046 (n + 6)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295097 (A001057 (f1 (n + 1) - f1 n).toNat).toNat

end

end A295094.P12078352081022869407

/-! ## A295094.P10400866621077901853

`A295097(A003602(Δ[A026046(n+6)]))`
-/

namespace A295094.P10400866621077901853
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026046 (n + 6)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295097 (A003602 (f1 (n + 1) - f1 n).toNat).toNat

end

end A295094.P10400866621077901853

/-!
# A295095: Number of nX6 0..1 arrays with each 1 horizontally or vertically adjacent to 1 or 3 1s.

The programs for A295095, there is no canonical definition to state claims against.
-/

/-! ## A295095.P10561732931648857777

`A295097(eq[7, A131818(n+1)])`
-/

namespace A295095.P10561732931648857777
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295097 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A295095.P10561732931648857777

/-! ## A295095.P5581801543037150002

`A295097(A374007(n+1))`
-/

namespace A295095.P5581801543037150002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295097 (A374007 (n + 1)).toNat

end

end A295095.P5581801543037150002

/-! ## A295095.P9459797964237912104

`A295097(A052905(n+3))`
-/

namespace A295095.P9459797964237912104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295097 (A052905 (n + 3)).toNat

end

end A295095.P9459797964237912104

/-! ## A295095.P5582782367436041447

`A295097(eq[3, A219347(n)])`
-/

namespace A295095.P5582782367436041447
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295097 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A295095.P5582782367436041447

/-! ## A295095.P14045935990082441523

`A295097(eq[5, A193592(n)])`
-/

namespace A295095.P14045935990082441523
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295097 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A295095.P14045935990082441523

/-!
# A295096: Number of nX7 0..1 arrays with each 1 horizontally or vertically adjacent to 1 or 3 1s.

The programs for A295096, there is no canonical definition to state claims against.
-/

/-! ## A295096.P6834199697958964287

`A295097(A167499(n+5)+2)`
-/

namespace A295096.P6834199697958964287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295097 (A167499 (n + 5) + 2).toNat

end

end A295096.P6834199697958964287

/-! ## A295096.P5146313816304245876

`A295097(eq[8, A131818(n+1)])`
-/

namespace A295096.P5146313816304245876
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295097 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A295096.P5146313816304245876

/-! ## A295096.P12756302496672522621

`A295097(A374008(n+1))`
-/

namespace A295096.P12756302496672522621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295097 (A374008 (n + 1)).toNat

end

end A295096.P12756302496672522621

/-! ## A295096.P9595735134252969547

`A295097(A055999(n+4))`
-/

namespace A295096.P9595735134252969547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295097 (A055999 (n + 4)).toNat

end

end A295096.P9595735134252969547

/-! ## A295096.P12619641668090713816

`A295097(eq[4, A219347(n)])`
-/

namespace A295096.P12619641668090713816
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295097 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A295096.P12619641668090713816

/-!
# A295097: T(n,k)=Number of nXk 0..1 arrays with each 1 horizontally or vertically adjacent to 1 or 3 1s.

The programs for A295097, there is no canonical definition to state claims against.
-/

/-! ## A295097.P1893527295894539083

`A295551(n+1)-A184159(A099594(n))`
-/

namespace A295097.P1893527295894539083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295551 (n + 1) - A184159 (A099594 n).toNat

end

end A295097.P1893527295894539083

/-! ## A295097.P16594051969570777936

`A295551(n+1)-A173920(A173917(n))`
-/

namespace A295097.P16594051969570777936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295551 (n + 1) - A173920 (A173917 n).toNat

end

end A295097.P16594051969570777936

/-! ## A295097.P634433475152514122

`A295551(n+1)-A280737(A301784(n+1))`
-/

namespace A295097.P634433475152514122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295551 (n + 1) - A280737 (A301784 (n + 1)).toNat

end

end A295097.P634433475152514122

/-! ## A295097.P6206069148913175165

`A295551(n+1)-A316717(A316576(n+1))`
-/

namespace A295097.P6206069148913175165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295551 (n + 1) - A316717 (A316576 (n + 1)).toNat

end

end A295097.P6206069148913175165

/-! ## A295097.P13538704615572046529

`A295551(n+1)+A016389(A176561(n))`
-/

namespace A295097.P13538704615572046529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295551 (n + 1) + A016389 (A176561 n).toNat

end

end A295097.P13538704615572046529

/-!
# A295098: a(n) = n! * [x^n] exp(n*x)*(1 + exp(x^2/2)*x*(1 + sqrt(Pi/2)*erf(x/sqrt(2)))).

The programs for A295098, there is no canonical definition to state claims against.
-/

/-! ## A295098.P15033296726695695593

`A241457(A000041(n))+A292629(n)+A186925(n)`
-/

namespace A295098.P15033296726695695593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241457 (A000041 n).toNat + (A292629 n + A186925 n)

end

end A295098.P15033296726695695593

/-!
# A295099: a(n) = n! * [x^n] exp(n*x)/sqrt(1 - 2*x).

The programs for A295099, there is no canonical definition to state claims against.
-/

/-! ## A295099.P1978620728424801006

`A004525(A004148(3*n))+n`
-/

namespace A295099.P1978620728424801006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A004148 (3 * n)).toNat + (n : ℤ)

end

end A295099.P1978620728424801006

