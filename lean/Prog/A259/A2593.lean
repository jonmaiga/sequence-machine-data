import SequenceMachineLib
import Mathlib.Tactic
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C003
import Seq.B000.C004
import Seq.B000.C006
import Seq.B000.C007
import Seq.B000.C009
import Seq.B000.C010
import Seq.B000.C011
import Seq.B000.C012
import Seq.B000.C013
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C037
import Seq.B000.C038
import Seq.B000.C039
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C008
import Seq.B001.C009
import Seq.B001.C012
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C004
import Seq.B002.C005
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B005.C001
import Seq.B006.C000
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
# A259300: Near-repunits (ordered lexicographically).

The programs for A259300, there is no canonical definition to state claims against.
-/

/-! ## A259300.P14133496472912647484

`∩[A078453(n+1), A210666(n+1)]`
-/

namespace A259300.P14133496472912647484
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078453 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210666 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A259300.P14133496472912647484

/-! ## A259300.P523109432300555143

`∩[A210666(n+1), A292731(n+1)]`
-/

namespace A259300.P523109432300555143
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210666 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292731 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A259300.P523109432300555143

/-! ## A259300.P11918645694229461935

`∩[A210666(n+1), A292451(n+1)]`
-/

namespace A259300.P11918645694229461935
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210666 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292451 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A259300.P11918645694229461935

/-! ## A259300.P14986887906363068189

`eq[A059841(A073053(n))+2, A268643(n)]`
-/

namespace A259300.P14986887906363068189
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059841 (A073053 n).toNat + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268643 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A259300.P14986887906363068189

/-! ## A259300.P3949929592962405495

`A076313(10*A043494(n+2))`
-/

namespace A259300.P3949929592962405495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076313 (10 * A043494 (n + 2)).toNat

end

end A259300.P3949929592962405495

/-!
# A259301: Taken over all those prime-partitionable numbers m for which there exists a 2-partition of the set of primes < m that has one subset containing two primes only, a(n) is the frequency with which the smaller prime occurs, where n is the prime index.

The programs for A259301, there is no canonical definition to state claims against.
-/

/-! ## A259301.P6945634562492229727

`A221490(record[A037225(n)])`
-/

namespace A259301.P6945634562492229727
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037225 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221490 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A259301.P6945634562492229727

/-! ## A259301.P9607175714608092113

`A221490(A006093(n+1))`
-/

namespace A259301.P9607175714608092113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221490 (A006093 (n + 1)).toNat

end

end A259301.P9607175714608092113

/-! ## A259301.P16847880953591048410

`A221490(A156037(n+1))`
-/

namespace A259301.P16847880953591048410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221490 (A156037 (n + 1)).toNat

end

end A259301.P16847880953591048410

/-! ## A259301.P422224247650017167

`A221490(eq[1, A013632(n)])`
-/

namespace A259301.P422224247650017167
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013632 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221490 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A259301.P422224247650017167

/-! ## A259301.P7793700684193688970

`A221490(Δ[A007504(n)]-1)`
-/

namespace A259301.P7793700684193688970
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221490 (f1 (n + 1) - f1 n - 1).toNat

end

end A259301.P7793700684193688970

/-! ## A259301.P8243147755567847580

`A221490(record[A000010(n+1)])`
-/

namespace A259301.P8243147755567847580
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221490 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A259301.P8243147755567847580

/-! ## A259301.P6016786189448813016

`A221490(record[A002322(n+1)])`
-/

namespace A259301.P6016786189448813016
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002322 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221490 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A259301.P6016786189448813016

/-! ## A259301.P1926953008932280410

`A221490(record[A051698(n)-1])`
-/

namespace A259301.P1926953008932280410
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051698 n - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221490 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A259301.P1926953008932280410

/-! ## A259301.P7882927153613019738

`A221490(record[A220096(n+2)])`
-/

namespace A259301.P7882927153613019738
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220096 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221490 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A259301.P7882927153613019738

/-! ## A259301.P16221493127115077685

`A221490(A000040(n+1)-1)`
-/

namespace A259301.P16221493127115077685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221490 (A000040 (n + 1) - 1).toNat

end

end A259301.P16221493127115077685

/-! ## A259301.P11171646755672903308

`A221490(eq[1, A001065(n+1)])`
-/

namespace A259301.P11171646755672903308
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001065 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221490 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A259301.P11171646755672903308

/-! ## A259301.P7078577547509858001

`A221490(eq[1, A001222(n+1)])`
-/

namespace A259301.P7078577547509858001
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221490 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A259301.P7078577547509858001

/-! ## A259301.P2170165962437100403

`A221490(eq[2, A000005(n+1)])`
-/

namespace A259301.P2170165962437100403
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221490 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A259301.P2170165962437100403

/-! ## A259301.P2597169562816784740

`A221490(eq[n, A000010(n+1)])`
-/

namespace A259301.P2597169562816784740
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221490 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A259301.P2597169562816784740

/-! ## A259301.P7767406158218720251

`A221490(record[A006530(n+2)-1])`
-/

namespace A259301.P7767406158218720251
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221490 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A259301.P7767406158218720251

/-! ## A259301.P9800670476940215981

`A221490(record[A020639(n+2)-1])`
-/

namespace A259301.P9800670476940215981
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221490 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A259301.P9800670476940215981

/-! ## A259301.P7682338120393293019

`A221490(eq[2, A007426(n+1)-2])`
-/

namespace A259301.P7682338120393293019
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007426 (n + 1) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221490 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A259301.P7682338120393293019

/-! ## A259301.P7984244274490435139

`A221490(eq[2, A007426(n+1)/2])`
-/

namespace A259301.P7984244274490435139
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007426 (n + 1) : ℚ) / 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221490 (SequenceMachineLib.nth (fun j => (f1 j : ℚ) = f2 j) n)

end

end A259301.P7984244274490435139

/-! ## A259301.P10898701208717266871

`A221490(A000010(Δ[A007504(n)]))`
-/

namespace A259301.P10898701208717266871
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221490 (A000010 (f1 (n + 1) - f1 n).toNat).toNat

end

end A259301.P10898701208717266871

/-!
# A259302: Numbers n such that there exists an x!=n that makes {n,n,x} an amicable multiset.

The programs for A259302, there is no canonical definition to state claims against.
-/

/-! ## A259302.P15015109567172166444

`A000027(A292365(n+3))`
-/

namespace A259302.P15015109567172166444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A292365 (n + 3)).toNat

end

end A259302.P15015109567172166444

/-! ## A259302.P1292825306823567904

`A292365(n+3)%A333049(n+2)`
-/

namespace A259302.P1292825306823567904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A292365 (n + 3)) (A333049 (n + 2))

end

end A259302.P1292825306823567904

/-! ## A259302.P14570363589337830086

`C(A292365(n+3), A033999((2-n)*(n-n²)))`
-/

namespace A259302.P14570363589337830086
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A292365 (n + 3)).toNat (A033999 ((2 - (n : ℤ)) * ((n : ℤ) - (n ^ 2 : ℤ))).toNat).toNat

end

end A259302.P14570363589337830086

/-! ## A259302.P6317204749275203044

`A292365(n+3)+A036987(A017438(n))`
-/

namespace A259302.P6317204749275203044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292365 (n + 3) + A036987 (A017438 n).toNat

end

end A259302.P6317204749275203044

/-!
# A259306: Numbers n such that there exists an x!=n that makes {n,n,x,x} an amicable multiset.

The programs for A259306, there is no canonical definition to state claims against.
-/

/-! ## A259306.P13754841156824528770

`A114529(char[A193973(n)]+n+7)`
-/

namespace A259306.P13754841156824528770
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193973 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114529 ((if ∃ j, f1 j = (n : ℤ) then 1 else 0) + (n + 7))

end

end A259306.P13754841156824528770

/-! ## A259306.P2331283896672482328

`A114529(n+8-A019590(n+1))`
-/

namespace A259306.P2331283896672482328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114529 ((n + 8 : ℤ) - A019590 (n + 1)).toNat

end

end A259306.P2331283896672482328

/-! ## A259306.P8598392800146537710

`A114529(lt[A114546(n+6), A114537(n+1)])`
-/

namespace A259306.P8598392800146537710
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114546 (n + 6)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114537 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114529 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A259306.P8598392800146537710

/-!
# A259307: Numbers that belong to at least one amicable multiset.

The programs for A259307, there is no canonical definition to state claims against.
-/

/-! ## A259307.P13346775282045337736

`A183019(n*a(floor(1/A287611(n))))` with `a(0)=1`
-/

namespace A259307.P13346775282045337736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A183019 ((n : ℤ) * a ⌊1 / (A287611 n : ℚ)⌋.toNat).toNat

end

end A259307.P13346775282045337736

/-! ## A259307.P3833735093438032196

`∏{e}[A000351(n), A183019(#)]`
-/

namespace A259307.P3833735093438032196
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000351 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A183019 (Nat.factorization (f1 n).natAbs p)

end

end A259307.P3833735093438032196

/-! ## A259307.P18440879142093403047

`A183019(n*a(floor(n/A284253(n+1))))` with `a(0)=1`
-/

namespace A259307.P18440879142093403047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A183019 ((n : ℤ) * a ⌊(n : ℚ) / (A284253 (n + 1) : ℚ)⌋.toNat).toNat

end

end A259307.P18440879142093403047

/-! ## A259307.P13349162922733478935

`∪[A078898(A194771(n+1)), A206708(n+1)]`
-/

namespace A259307.P13349162922733478935
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078898 (A194771 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206708 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A259307.P13349162922733478935

/-!
# A259308: a(n) = 1 + sigma(n)^4.

The programs for A259308, the canonical program `A259308.P10719289397753992737` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A259308 has offset 1).

The definition of A259308 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `1+A000203(n+1)^4` (program `A259308.P10719289397753992737`, by `A259308.P10719289397753992737.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A259308.P10719289397753992737

`1+A000203(n+1)^4`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A259308

/-- `1+A000203(n+1)^4` -/
def P10719289397753992737.Spec : Prop :=
  ∀ n, P10719289397753992737.a n = A259308 (n + 1)

theorem P10719289397753992737.correct : P10719289397753992737.Spec := by
  intro n
  simp only [A259308, Nat.add_sub_cancel]

end A259308

/-! ## A259308.P13567294863944744833

`∑{d}[n+1, #]^4+1`
-/

namespace A259308.P13567294863944744833
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ d ∈ Nat.divisors (f1 n), d) ^ 4 + 1

end

end A259308.P13567294863944744833

namespace A259308

/-- `∑{d}[n+1, #]^4+1` -/
def P13567294863944744833.Spec : Prop :=
  ∀ n, (P13567294863944744833.a n : ℤ) = A259308 (n + 1)

theorem P13567294863944744833.correct : P13567294863944744833.Spec := by
  intro n
  simp only [A259308, Nat.add_sub_cancel, A259308.P13567294863944744833.f1, A259308.P13567294863944744833.a, A259308.P10719289397753992737.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A259308

/-! ## A259308.P5223251050549257388

`∑{d}[n+1, #]²²+1`
-/

namespace A259308.P5223251050549257388
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((∑ d ∈ Nat.divisors (f1 n), d) ^ 2) ^ 2 + 1

end

end A259308.P5223251050549257388

namespace A259308

/-- `∑{d}[n+1, #]²²+1` -/
def P5223251050549257388.Spec : Prop :=
  ∀ n, (P5223251050549257388.a n : ℤ) = A259308 (n + 1)

theorem P5223251050549257388.correct : P5223251050549257388.Spec := by
  intro n
  simp only [A259308, Nat.add_sub_cancel, A259308.P5223251050549257388.f1, A259308.P5223251050549257388.a, A259308.P10719289397753992737.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A259308

/-! ## A259308.P8840252254592373836

`A361179(n+1)+1`
-/

namespace A259308.P8840252254592373836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361179 (n + 1) + 1

end

end A259308.P8840252254592373836

namespace A259308

/-- `A361179(n+1)+1` -/
def P8840252254592373836.Spec : Prop :=
  ∀ n, P8840252254592373836.a n = A259308 (n + 1)

theorem P8840252254592373836.correct : P8840252254592373836.Spec := by
  intro n
  simp only [A259308, Nat.add_sub_cancel, A259308.P8840252254592373836.a, A259308.P10719289397753992737.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A361179, A361179.P6830048198093353337.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A259308

/-! ## A259308.P12706379265867980560

`A072861(n+1)²+1`
-/

namespace A259308.P12706379265867980560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072861 (n + 1) ^ 2 + 1

end

end A259308.P12706379265867980560

namespace A259308

/-- `A072861(n+1)²+1` -/
def P12706379265867980560.Spec : Prop :=
  ∀ n, P12706379265867980560.a n = A259308 (n + 1)

theorem P12706379265867980560.correct : P12706379265867980560.Spec := by
  intro n
  simp only [A259308, Nat.add_sub_cancel, A259308.P12706379265867980560.a, A259308.P10719289397753992737.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A072861, A072861.P7379814568350881994.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A259308

/-! ## A259308.P16954943023037586843

`Δ[A160664(n)]²²+1`
-/

namespace A259308.P16954943023037586843
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160664 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((f1 (n + 1) - f1 n) ^ 2) ^ 2 + 1

end

end A259308.P16954943023037586843

namespace A259308

/-- `Δ[A160664(n)]²²+1` -/
def P16954943023037586843.Spec : Prop :=
  ∀ n, P16954943023037586843.a n = A259308 (n + 1)

end A259308

/-! ## A259308.P11102608899222731134

`Δ[A330725(n)]²²+1`
-/

namespace A259308.P11102608899222731134
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330725 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((f1 (n + 1) - f1 n) ^ 2) ^ 2 + 1

end

end A259308.P11102608899222731134

namespace A259308

/-- `Δ[A330725(n)]²²+1` -/
def P11102608899222731134.Spec : Prop :=
  ∀ n, P11102608899222731134.a n = A259308 (n + 1)

end A259308

/-! ## A259308.P6234491697376288357

`A143348(n+1)²²+1`
-/

namespace A259308.P6234491697376288357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A143348 (n + 1) ^ 2) ^ 2 + 1

end

end A259308.P6234491697376288357

namespace A259308

/-- `A143348(n+1)²²+1` -/
def P6234491697376288357.Spec : Prop :=
  ∀ n, P6234491697376288357.a n = A259308 (n + 1)

end A259308

/-! ## A259308.P18097845843857971631

`(1-A258974(n+1))²+1`
-/

namespace A259308.P18097845843857971631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - A258974 (n + 1)) ^ 2 + 1

end

end A259308.P18097845843857971631

namespace A259308

/-- `(1-A258974(n+1))²+1` -/
def P18097845843857971631.Spec : Prop :=
  ∀ n, P18097845843857971631.a n = A259308 (n + 1)

theorem P18097845843857971631.correct : P18097845843857971631.Spec := by
  intro n
  simp only [A259308, Nat.add_sub_cancel, A259308.P18097845843857971631.a, A259308.P10719289397753992737.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A258974, A258974.P4466533170833626338.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A259308

/-! ## A259308.P9905396267518554169

`∑[A340793(n+1)]²²+1`
-/

namespace A259308.P9905396267518554169
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340793 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2) ^ 2 + 1

end

end A259308.P9905396267518554169

namespace A259308

/-- `∑[A340793(n+1)]²²+1` -/
def P9905396267518554169.Spec : Prop :=
  ∀ n, P9905396267518554169.a n = A259308 (n + 1)

end A259308

/-! ## A259308.P12552087639844699657

`A245092(2*n+1)²²+1`
-/

namespace A259308.P12552087639844699657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A245092 (2 * n + 1) ^ 2) ^ 2 + 1

end

end A259308.P12552087639844699657

namespace A259308

/-- `A245092(2*n+1)²²+1` -/
def P12552087639844699657.Spec : Prop :=
  ∀ n, P12552087639844699657.a n = A259308 (n + 1)

end A259308

/-! ## A259308.P12940112788715986712

`A000203(C(n+1, n))²²+1`
-/

namespace A259308.P12940112788715986712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000203 (Nat.choose (n + 1) n) ^ 2) ^ 2 + 1

end

end A259308.P12940112788715986712

namespace A259308

/-- `A000203(C(n+1, n))²²+1` -/
def P12940112788715986712.Spec : Prop :=
  ∀ n, P12940112788715986712.a n = A259308 (n + 1)

theorem P12940112788715986712.correct : P12940112788715986712.Spec := by
  intro n
  simp only [A259308, Nat.add_sub_cancel, A259308.P12940112788715986712.a, A259308.P10719289397753992737.a, SequenceMachineLib.memo_apply]
  try norm_num [Nat.choose_two_right, Nat.factorial]
  try ring_nf

end A259308

/-! ## A259308.P17149261697193035052

`A000203(2*n+1-n)²²+1`
-/

namespace A259308.P17149261697193035052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000203 (2 * n + 1 - n) ^ 2) ^ 2 + 1

end

end A259308.P17149261697193035052

namespace A259308

/-- `A000203(2*n+1-n)²²+1` -/
def P17149261697193035052.Spec : Prop :=
  ∀ n, P17149261697193035052.a n = A259308 (n + 1)

end A259308

/-! ## A259308.P11134219761796975986

`A000203(n+1)*A361147(n+1)+1`
-/

namespace A259308.P11134219761796975986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1) * A361147 (n + 1) + 1

end

end A259308.P11134219761796975986

namespace A259308

/-- `A000203(n+1)*A361147(n+1)+1` -/
def P11134219761796975986.Spec : Prop :=
  ∀ n, P11134219761796975986.a n = A259308 (n + 1)

theorem P11134219761796975986.correct : P11134219761796975986.Spec := by
  intro n
  simp only [A259308, Nat.add_sub_cancel, A259308.P11134219761796975986.a, A259308.P10719289397753992737.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A361147, A361147.P6076056491520147052.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A259308

/-! ## A259308.P3248382553964617374

`A000045(gcd(n, n+1))+A000203(n+1)²²`
-/

namespace A259308.P3248382553964617374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (Nat.gcd n (n + 1)) + (A000203 (n + 1) ^ 2) ^ 2

end

end A259308.P3248382553964617374

namespace A259308

/-- `A000045(gcd(n, n+1))+A000203(n+1)²²` -/
def P3248382553964617374.Spec : Prop :=
  ∀ n, P3248382553964617374.a n = A259308 (n + 1)

end A259308

/-! ## A259308.P18018707721749624033

`and(1, A006530(2*n+1))+A000203(n+1)²²`
-/

namespace A259308.P18018707721749624033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A006530 (2 * n + 1)) + (A000203 (n + 1) ^ 2) ^ 2

end

end A259308.P18018707721749624033

namespace A259308

/-- `and(1, A006530(2*n+1))+A000203(n+1)²²` -/
def P18018707721749624033.Spec : Prop :=
  ∀ n, P18018707721749624033.a n = A259308 (n + 1)

end A259308

/-! ## A259308.P5729703535261427028

`A000032(gcd(n+2, n+3))+A000203(n+1)²²`
-/

namespace A259308.P5729703535261427028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 (Nat.gcd (n + 2) (n + 3)) + (A000203 (n + 1) ^ 2) ^ 2

end

end A259308.P5729703535261427028

namespace A259308

/-- `A000032(gcd(n+2, n+3))+A000203(n+1)²²` -/
def P5729703535261427028.Spec : Prop :=
  ∀ n, P5729703535261427028.a n = A259308 (n + 1)

end A259308

/-! ## A259308.P10481959841124102634

`A000005(gcd(2*n+1, 2*n))+A000203(n+1)²²`
-/

namespace A259308.P10481959841124102634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (Nat.gcd (2 * n + 1) (2 * n)) + (A000203 (n + 1) ^ 2) ^ 2

end

end A259308.P10481959841124102634

namespace A259308

/-- `A000005(gcd(2*n+1, 2*n))+A000203(n+1)²²` -/
def P10481959841124102634.Spec : Prop :=
  ∀ n, P10481959841124102634.a n = A259308 (n + 1)

end A259308

/-! ## A259308.P13349989584954712322

`A008683(A005117(n+1))²+A000203(n+1)²²`
-/

namespace A259308.P13349989584954712322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A005117 (n + 1)).toNat ^ 2 + (A000203 (n + 1) ^ 2) ^ 2

end

end A259308.P13349989584954712322

namespace A259308

/-- `A008683(A005117(n+1))²+A000203(n+1)²²` -/
def P13349989584954712322.Spec : Prop :=
  ∀ n, P13349989584954712322.a n = A259308 (n + 1)

end A259308

/-! ## A259308.P3798432698985214789

`A259410(n+1)+A000203(n+1)*A259184(n+1)`
-/

namespace A259308.P3798432698985214789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259410 (n + 1) + A000203 (n + 1) * A259184 (n + 1)

end

end A259308.P3798432698985214789

namespace A259308

/-- `A259410(n+1)+A000203(n+1)*A259184(n+1)` -/
def P3798432698985214789.Spec : Prop :=
  ∀ n, P3798432698985214789.a n = A259308 (n + 1)

theorem P3798432698985214789.correct : P3798432698985214789.Spec := by
  intro n
  simp only [A259308, Nat.add_sub_cancel, A259308.P3798432698985214789.a, A259308.P10719289397753992737.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A259184, A259184.P15193479453645985553.a, A259410, A259410.P9183798347773047213.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A259308

/-!
# A259309: Numbers k such that 1 + sigma(k)^4 is prime.

The programs for A259309, the canonical program `A259309.P893002542035354465` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A259309 has offset 1).

The definition of A259309 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 544 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A259309.P893002542035354465

`eq[1, A193929(∑{d}[n, #])]`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A259309

/-- `eq[1, A193929(∑{d}[n, #])]` -/
def P893002542035354465.Spec : Prop :=
  ∀ n, (P893002542035354465.a n : ℤ) = A259309 (n + 1)

theorem P893002542035354465.correct : P893002542035354465.Spec := by
  intro n
  simp only [A259309, Nat.add_sub_cancel]

end A259309

/-! ## A259309.P11029597849108169775

`eq[2, A193562(∑{d}[n, #])]`
-/

namespace A259309.P11029597849108169775
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193562 (∑ d ∈ Nat.divisors (f3 n), d)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A259309.P11029597849108169775

namespace A259309

/-- `eq[2, A193562(∑{d}[n, #])]` -/
def P11029597849108169775.Spec : Prop :=
  ∀ n, (P11029597849108169775.a n : ℤ) = A259309 (n + 1)

end A259309

/-! ## A259309.P18396055159307158542

`lt[A193562(∑{d}[n+1, #]), 4]+1`
-/

namespace A259309.P18396055159307158542
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193562 (∑ d ∈ Nat.divisors (f2 n), d)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f3 j : ℤ)) n + 1

end

end A259309.P18396055159307158542

namespace A259309

/-- `lt[A193562(∑{d}[n+1, #]), 4]+1` -/
def P18396055159307158542.Spec : Prop :=
  ∀ n, (P18396055159307158542.a n : ℤ) = A259309 (n + 1)

end A259309

/-! ## A259309.P3598724180598058819

`eq[1, A193929(A000203(n+1))]+1`
-/

namespace A259309.P3598724180598058819
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193929 (A000203 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A259309.P3598724180598058819

namespace A259309

/-- `eq[1, A193929(A000203(n+1))]+1` -/
def P3598724180598058819.Spec : Prop :=
  ∀ n, (P3598724180598058819.a n : ℤ) = A259309 (n + 1)

end A259309

/-! ## A259309.P11157762331419925969

`eq[2, A278162(∑{d}[n+1, #]²)]+1`
-/

namespace A259309.P11157762331419925969
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278162 ((∑ d ∈ Nat.divisors (f3 n), d) ^ 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A259309.P11157762331419925969

namespace A259309

/-- `eq[2, A278162(∑{d}[n+1, #]²)]+1` -/
def P11157762331419925969.Spec : Prop :=
  ∀ n, (P11157762331419925969.a n : ℤ) = A259309 (n + 1)

end A259309

/-!
# A259310: Primes of the form: 1 + sigma(n)^4.

The programs for A259310, the canonical program `A259310.P3784086918977029367` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A259310 has offset 1).

The definition of A259310 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A259309, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A259310.P3784086918977029367

`A259308(A259309(n+1))`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A259310

/-- `A259308(A259309(n+1))` -/
def P3784086918977029367.Spec : Prop :=
  ∀ n, P3784086918977029367.a n = A259310 (n + 1)

theorem P3784086918977029367.correct : P3784086918977029367.Spec := by
  intro n
  simp only [A259310, Nat.add_sub_cancel]

end A259310

/-! ## A259310.P12430343186477163799

`A002523(∑{d}[A259309(n+1), #])`
-/

namespace A259310.P12430343186477163799
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259309 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002523 (∑ d ∈ Nat.divisors (f1 n).natAbs, d)

end

end A259310.P12430343186477163799

namespace A259310

/-- `A002523(∑{d}[A259309(n+1), #])` -/
def P12430343186477163799.Spec : Prop :=
  ∀ n, P12430343186477163799.a n = A259310 (n + 1)

end A259310

/-! ## A259310.P11785125989277988628

`A259308(eq[1, A193929(∑{d}[n, #])])`
-/

namespace A259310.P11785125989277988628
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193929 (∑ d ∈ Nat.divisors (f3 n), d)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259308 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A259310.P11785125989277988628

namespace A259310

/-- `A259308(eq[1, A193929(∑{d}[n, #])])` -/
def P11785125989277988628.Spec : Prop :=
  ∀ n, P11785125989277988628.a n = A259310 (n + 1)

end A259310

/-! ## A259310.P1421237257659327942

`A259308(eq[2, A193562(∑{d}[n, #])])`
-/

namespace A259310.P1421237257659327942
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193562 (∑ d ∈ Nat.divisors (f3 n), d)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259308 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A259310.P1421237257659327942

namespace A259310

/-- `A259308(eq[2, A193562(∑{d}[n, #])])` -/
def P1421237257659327942.Spec : Prop :=
  ∀ n, P1421237257659327942.a n = A259310 (n + 1)

end A259310

/-! ## A259310.P12853906395975523627

`A259308(lt[A193562(∑{d}[n+1, #]), 4]+1)`
-/

namespace A259310.P12853906395975523627
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193562 (∑ d ∈ Nat.divisors (f2 n), d)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259308 (SequenceMachineLib.nth (fun j => f1 j < (f3 j : ℤ)) n + 1)

end

end A259310.P12853906395975523627

namespace A259310

/-- `A259308(lt[A193562(∑{d}[n+1, #]), 4]+1)` -/
def P12853906395975523627.Spec : Prop :=
  ∀ n, P12853906395975523627.a n = A259310 (n + 1)

end A259310

/-!
# A259311: First differences of A098058.

The programs for A259311, the canonical program `A259311.P10737788261636901505` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A259311 has offset 1).

The definition of A259311 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A098058, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A259311.P10737788261636901505

`A098058(n+2)-A098058(n+1)`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A259311

/-- `A098058(n+2)-A098058(n+1)` -/
def P10737788261636901505.Spec : Prop :=
  ∀ n, P10737788261636901505.a n = A259311 (n + 1)

theorem P10737788261636901505.correct : P10737788261636901505.Spec := by
  intro n
  simp only [A259311, Nat.add_sub_cancel]

end A259311

/-! ## A259311.P2787245437795909539

`Δ[A098058(n+1)]`
-/

namespace A259311.P2787245437795909539
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098058 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A259311.P2787245437795909539

namespace A259311

/-- `Δ[A098058(n+1)]` -/
def P2787245437795909539.Spec : Prop :=
  ∀ n, P2787245437795909539.a n = A259311 (n + 1)

theorem P2787245437795909539.correct : P2787245437795909539.Spec := by
  intro n
  simp only [A259311, Nat.add_sub_cancel, A259311.P2787245437795909539.f1, A259311.P2787245437795909539.a, A259311.P10737788261636901505.a, SequenceMachineLib.memo_apply]

end A259311

/-! ## A259311.P1052721058438193704

`Δ[record[A098058(A133310(n))]]`
-/

namespace A259311.P1052721058438193704
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098058 (A133310 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A259311.P1052721058438193704

namespace A259311

/-- `Δ[record[A098058(A133310(n))]]` -/
def P1052721058438193704.Spec : Prop :=
  ∀ n, P1052721058438193704.a n = A259311 (n + 1)

end A259311

/-! ## A259311.P10680007481869187413

`Δ[A060308(A215523(n+1))]`
-/

namespace A259311.P10680007481869187413
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060308 (A215523 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A259311.P10680007481869187413

namespace A259311

/-- `Δ[A060308(A215523(n+1))]` -/
def P10680007481869187413.Spec : Prop :=
  ∀ n, P10680007481869187413.a n = A259311 (n + 1)

end A259311

/-! ## A259311.P11528137118645255247

`abs(Δ[A098058(A027656(2*n))])`
-/

namespace A259311.P11528137118645255247
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098058 (A027656 (2 * n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A259311.P11528137118645255247

namespace A259311

/-- `abs(Δ[A098058(A027656(2*n))])` -/
def P11528137118645255247.Spec : Prop :=
  ∀ n, P11528137118645255247.a n = A259311 (n + 1)

end A259311

/-! ## A259311.P15762222589021737730

`Δ[A000040(∑[A091237(n+1)])]`
-/

namespace A259311.P15762222589021737730
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091237 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A259311.P15762222589021737730

namespace A259311

/-- `Δ[A000040(∑[A091237(n+1)])]` -/
def P15762222589021737730.Spec : Prop :=
  ∀ n, P15762222589021737730.a n = A259311 (n + 1)

theorem P15762222589021737730.correct : P15762222589021737730.Spec := by
  intro n
  simp only [A259311, Nat.add_sub_cancel, A259311.P15762222589021737730.f2, A259311.P15762222589021737730.f1, A259311.P15762222589021737730.a, A259311.P10737788261636901505.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A091237, A091237.P6770545350464896014.f2, A091237.P6770545350464896014.f3, A091237.P6770545350464896014.f1, A091237.P6770545350464896014.a, A098058, A098058.P16596621847938489443.f1, A098058.P16596621847938489443.a, A088705, A088705.P12224062743589857877.f1, A088705.P12224062743589857877.a, A181346, A181346.P5815690762823342949.f1, A181346.P5815690762823342949.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A259311

/-!
# A259315: Nonprimes containing no zeros in decimal representation.

The programs for A259315, the canonical program `A259315.P8137311913003913152` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A259315 has offset 1).

The definition of A259315 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A259315.P8137311913003913152

`comp[∪[A000040(n+1), A011540(n+1)]]`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A259315

/-- `comp[∪[A000040(n+1), A011540(n+1)]]` -/
def P8137311913003913152.Spec : Prop :=
  ∀ n, (P8137311913003913152.a n : ℤ) = A259315 (n + 1)

theorem P8137311913003913152.correct : P8137311913003913152.Spec := by
  intro n
  simp only [A259315, Nat.add_sub_cancel]

end A259315

/-! ## A259315.P6846936480449728007

`filter[A052382(n+1), A005171(#)]`
-/

namespace A259315.P6846936480449728007
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052382 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A005171 (f1 j).toNat = 1) n)

end

end A259315.P6846936480449728007

namespace A259315

/-- `filter[A052382(n+1), A005171(#)]` -/
def P6846936480449728007.Spec : Prop :=
  ∀ n, P6846936480449728007.a n = A259315 (n + 1)

end A259315

/-! ## A259315.P9879266384403849683

`∩[A018252(n+1), A052382(n+1)]`
-/

namespace A259315.P9879266384403849683
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052382 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A259315.P9879266384403849683

namespace A259315

/-- `∩[A018252(n+1), A052382(n+1)]` -/
def P9879266384403849683.Spec : Prop :=
  ∀ n, (P9879266384403849683.a n : ℤ) = A259315 (n + 1)

end A259315

/-! ## A259315.P17269632491273863305

`∩[A052382(n+1), A141468(n+1)]`
-/

namespace A259315.P17269632491273863305
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052382 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141468 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A259315.P17269632491273863305

namespace A259315

/-- `∩[A052382(n+1), A141468(n+1)]` -/
def P17269632491273863305.Spec : Prop :=
  ∀ n, (P17269632491273863305.a n : ℤ) = A259315 (n + 1)

end A259315

/-! ## A259315.P4658093253521090051

`eq[A055641(n), A055671(n)]`
-/

namespace A259315.P4658093253521090051
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055641 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055671 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A259315.P4658093253521090051

namespace A259315

/-- `eq[A055641(n), A055671(n)]` -/
def P4658093253521090051.Spec : Prop :=
  ∀ n, (P4658093253521090051.a n : ℤ) = A259315 (n + 1)

end A259315

/-! ## A259315.P1788029973147034530

`eq[A055641(n), A055672(n)]`
-/

namespace A259315.P1788029973147034530
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055641 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055672 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A259315.P1788029973147034530

namespace A259315

/-- `eq[A055641(n), A055672(n)]` -/
def P1788029973147034530.Spec : Prop :=
  ∀ n, (P1788029973147034530.a n : ℤ) = A259315 (n + 1)

end A259315

/-! ## A259315.P5051818072867370803

`eq[A055671(n), A067898(n)]`
-/

namespace A259315.P5051818072867370803
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055671 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067898 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A259315.P5051818072867370803

namespace A259315

/-- `eq[A055671(n), A067898(n)]` -/
def P5051818072867370803.Spec : Prop :=
  ∀ n, (P5051818072867370803.a n : ℤ) = A259315 (n + 1)

end A259315

/-! ## A259315.P3055827182088170224

`eq[A055672(n), A067898(n)]`
-/

namespace A259315.P3055827182088170224
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055672 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067898 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A259315.P3055827182088170224

namespace A259315

/-- `eq[A055672(n), A067898(n)]` -/
def P3055827182088170224.Spec : Prop :=
  ∀ n, (P3055827182088170224.a n : ℤ) = A259315 (n + 1)

end A259315

/-! ## A259315.P14741332009663277931

`eq[A055671(n), A217096(n)]`
-/

namespace A259315.P14741332009663277931
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055671 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217096 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A259315.P14741332009663277931

namespace A259315

/-- `eq[A055671(n), A217096(n)]` -/
def P14741332009663277931.Spec : Prop :=
  ∀ n, (P14741332009663277931.a n : ℤ) = A259315 (n + 1)

end A259315

/-! ## A259315.P11670186976819992977

`eq[A055672(n), A217096(n)]`
-/

namespace A259315.P11670186976819992977
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055672 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217096 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A259315.P11670186976819992977

namespace A259315

/-- `eq[A055672(n), A217096(n)]` -/
def P11670186976819992977.Spec : Prop :=
  ∀ n, (P11670186976819992977.a n : ℤ) = A259315 (n + 1)

end A259315

/-! ## A259315.P18070679945123387583

`filter[A018252(n+1), A168046(#)]`
-/

namespace A259315.P18070679945123387583
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A168046 (f1 j).toNat = 1) n)

end

end A259315.P18070679945123387583

namespace A259315

/-- `filter[A018252(n+1), A168046(#)]` -/
def P18070679945123387583.Spec : Prop :=
  ∀ n, P18070679945123387583.a n = A259315 (n + 1)

end A259315

/-! ## A259315.P12202614843890505348

`filter[A141468(n+1), A168046(#)]`
-/

namespace A259315.P12202614843890505348
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141468 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A168046 (f1 j).toNat = 1) n)

end

end A259315.P12202614843890505348

namespace A259315

/-- `filter[A141468(n+1), A168046(#)]` -/
def P12202614843890505348.Spec : Prop :=
  ∀ n, P12202614843890505348.a n = A259315 (n + 1)

end A259315

/-! ## A259315.P18319460937582309782

`filter[A191558(n+1), A168046(#)]`
-/

namespace A259315.P18319460937582309782
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191558 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A168046 (f1 j).toNat = 1) n)

end

end A259315.P18319460937582309782

namespace A259315

/-- `filter[A191558(n+1), A168046(#)]` -/
def P18319460937582309782.Spec : Prop :=
  ∀ n, P18319460937582309782.a n = A259315 (n + 1)

end A259315

/-! ## A259315.P13470815652884621273

`eq[1, A168046(n)+A055671(n)]`
-/

namespace A259315.P13470815652884621273
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168046 n + A055671 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A259315.P13470815652884621273

namespace A259315

/-- `eq[1, A168046(n)+A055671(n)]` -/
def P13470815652884621273.Spec : Prop :=
  ∀ n, (P13470815652884621273.a n : ℤ) = A259315 (n + 1)

end A259315

/-! ## A259315.P5608781577321756439

`lt[char[A038618(n+1)], A168046(n)]`
-/

namespace A259315.P5608781577321756439
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038618 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168046 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f3 j) n

end

end A259315.P5608781577321756439

namespace A259315

/-- `lt[char[A038618(n+1)], A168046(n)]` -/
def P5608781577321756439.Spec : Prop :=
  ∀ n, (P5608781577321756439.a n : ℤ) = A259315 (n + 1)

end A259315

/-! ## A259315.P13106012795890900945

`filter[A222307(2*n+1), A168046(#)]`
-/

namespace A259315.P13106012795890900945
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222307 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A168046 (f1 j).toNat = 1) n)

end

end A259315.P13106012795890900945

namespace A259315

/-- `filter[A222307(2*n+1), A168046(#)]` -/
def P13106012795890900945.Spec : Prop :=
  ∀ n, P13106012795890900945.a n = A259315 (n + 1)

end A259315

/-! ## A259315.P10385937268784589775

`record[A004719(n%(A325142(n+1)+n)+1)]`
-/

namespace A259315.P10385937268784589775
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004719 (Int.tmod (n : ℤ) (A325142 (n + 1) + (n : ℤ)) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A259315.P10385937268784589775

namespace A259315

/-- `record[A004719(n%(A325142(n+1)+n)+1)]` -/
def P10385937268784589775.Spec : Prop :=
  ∀ n, P10385937268784589775.a n = A259315 (n + 1)

end A259315

/-! ## A259315.P11558707286036469450

`filter[A073846(2*n+1), A168046(#)]`
-/

namespace A259315.P11558707286036469450
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073846 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A168046 (f1 j).toNat = 1) n)

end

end A259315.P11558707286036469450

namespace A259315

/-- `filter[A073846(2*n+1), A168046(#)]` -/
def P11558707286036469450.Spec : Prop :=
  ∀ n, P11558707286036469450.a n = A259315 (n + 1)

end A259315

/-!
# A259317: a(n) = 2*(2*n+1)*A000538(n) - 4*A000330(n)^2.

The programs for A259317, the canonical program `A259317.P9477404971575699287` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A259317 has offset 0).

The definition of A259317 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A259317.P4416977798338579204

`(2*n+1)*A259108(n)-A006331(n)²`
-/

namespace A259317.P4416977798338579204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n + 1 : ℤ) * A259108 n - A006331 n ^ 2

end

end A259317.P4416977798338579204

namespace A259317

/-- `(2*n+1)*A259108(n)-A006331(n)²` -/
def P4416977798338579204.Spec : Prop :=
  ∀ n, P4416977798338579204.a n = A259317 n

end A259317

/-! ## A259317.P9477404971575699287

`2*(2*n+1)*A000538(n)-4*A000330(n)²`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A259317

/-- `2*(2*n+1)*A000538(n)-4*A000330(n)²` -/
def P9477404971575699287.Spec : Prop :=
  ∀ n, P9477404971575699287.a n = A259317 n

theorem P9477404971575699287.correct : P9477404971575699287.Spec := by
  intro n
  simp only [A259317]

end A259317

/-! ## A259317.P2652214049187225171

`Δ[2*C(2*n+3, 7)]`
-/

namespace A259317.P2652214049187225171
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * Nat.choose (2 * n + 3) 7

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A259317.P2652214049187225171

namespace A259317

/-- `Δ[2*C(2*n+3, 7)]` -/
def P2652214049187225171.Spec : Prop :=
  ∀ n, P2652214049187225171.a n = A259317 n

end A259317

/-! ## A259317.P8153260591484465508

`2*(∑[A081219(n+1)]-A081219(n+1))`
-/

namespace A259317.P8153260591484465508
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081219 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (∑ j ∈ Finset.range (n + 1), f1 j - A081219 (n + 1))

end

end A259317.P8153260591484465508

namespace A259317

/-- `2*(∑[A081219(n+1)]-A081219(n+1))` -/
def P8153260591484465508.Spec : Prop :=
  ∀ n, P8153260591484465508.a n = A259317 n

end A259317

/-! ## A259317.P5918899404623075534

`A000447(n+1)/5*A000447(n)`
-/

namespace A259317.P5918899404623075534
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000447 (n + 1) : ℚ) / 5 * (A000447 n : ℚ)

end

end A259317.P5918899404623075534

namespace A259317

/-- `A000447(n+1)/5*A000447(n)` -/
def P5918899404623075534.Spec : Prop :=
  ∀ n, P5918899404623075534.a n = (A259317 n : ℚ)

end A259317

/-! ## A259317.P2512709249244442372

`∑[∑[A035598(A004273(n))]]`
-/

namespace A259317.P2512709249244442372
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035598 (A004273 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A259317.P2512709249244442372

namespace A259317

/-- `∑[∑[A035598(A004273(n))]]` -/
def P2512709249244442372.Spec : Prop :=
  ∀ n, P2512709249244442372.a n = A259317 n

end A259317

/-! ## A259317.P10065005757550601877

`∑[A061167(2*n)/15]`
-/

namespace A259317.P10065005757550601877
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A061167 (2 * n) : ℚ) / 15

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A259317.P10065005757550601877

namespace A259317

/-- `∑[A061167(2*n)/15]` -/
def P10065005757550601877.Spec : Prop :=
  ∀ n, P10065005757550601877.a n = (A259317 n : ℚ)

end A259317

/-! ## A259317.P10844563253773991398

`∑[A208536(2*n+1)/3]`
-/

namespace A259317.P10844563253773991398
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A208536 (2 * n + 1) : ℚ) / 3

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A259317.P10844563253773991398

namespace A259317

/-- `∑[A208536(2*n+1)/3]` -/
def P10844563253773991398.Spec : Prop :=
  ∀ n, P10844563253773991398.a n = (A259317 n : ℚ)

end A259317

/-! ## A259317.P15655611496144115021

`∑[A061927(2*n)-A006325(2*n+1)]`
-/

namespace A259317.P15655611496144115021
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061927 (2 * n) - A006325 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A259317.P15655611496144115021

namespace A259317

/-- `∑[A061927(2*n)-A006325(2*n+1)]` -/
def P15655611496144115021.Spec : Prop :=
  ∀ n, P15655611496144115021.a n = A259317 n

end A259317

/-! ## A259317.P4855645387253460340

`2*(A040977(2*n)-A033455(2*n+1))`
-/

namespace A259317.P4855645387253460340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A040977 (2 * n) - A033455 (2 * n + 1))

end

end A259317.P4855645387253460340

namespace A259317

/-- `2*(A040977(2*n)-A033455(2*n+1))` -/
def P4855645387253460340.Spec : Prop :=
  ∀ n, P4855645387253460340.a n = A259317 n

end A259317

/-! ## A259317.P14933180875748162728

`∑[∑[A035598(2*n+1)]-A035598(2*n+1)]`
-/

namespace A259317.P14933180875748162728
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035598 (2 * n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - A035598 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A259317.P14933180875748162728

namespace A259317

/-- `∑[∑[A035598(2*n+1)]-A035598(2*n+1)]` -/
def P14933180875748162728.Spec : Prop :=
  ∀ n, P14933180875748162728.a n = A259317 n

end A259317

/-!
# A259318: a(n) = A259109(n)*A006331(n) - A259108(n)^2.

The programs for A259318, the canonical program `A259318.P4014428591920832291` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A259318 has offset 0).

The definition of A259318 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A259318.P4014428591920832291

`A259109(n)*A006331(n)-A259108(n)²`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A259318

/-- `A259109(n)*A006331(n)-A259108(n)²` -/
def P4014428591920832291.Spec : Prop :=
  ∀ n, P4014428591920832291.a n = A259318 n

theorem P4014428591920832291.correct : P4014428591920832291.Spec := by
  intro n
  simp only [A259318]

end A259318

/-! ## A259318.P16819074734522568974

`9*A133111(2*n+1)`
-/

namespace A259318.P16819074734522568974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  9 * A133111 (2 * n + 1)

end

end A259318.P16819074734522568974

namespace A259318

/-- `9*A133111(2*n+1)` -/
def P16819074734522568974.Spec : Prop :=
  ∀ n, P16819074734522568974.a n = A259318 n

end A259318

/-! ## A259318.P12709790726432576203

`3*3*A133111(Δ[n²])`
-/

namespace A259318.P12709790726432576203
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * (3 * A133111 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat)

end

end A259318.P12709790726432576203

namespace A259318

/-- `3*3*A133111(Δ[n²])` -/
def P12709790726432576203.Spec : Prop :=
  ∀ n, P12709790726432576203.a n = A259318 n

end A259318

/-!
# A259319: a(n) = 2*A002309(n).

The programs for A259319, the canonical program `A259319.P1682613436391244870` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A259319 has offset 1).

The definition of A259319 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A259319.P1119773149948132293

`2*(n+1)*(7-40*(n+1)²+48*(n+1)^4)/15`
-/

namespace A259319.P1119773149948132293
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((2 * (n + 1) : ℤ) * (7 - (40 * (n + 1) ^ 2 : ℤ) + (48 * (n + 1) ^ 4 : ℤ)) : ℚ) / 15

end

end A259319.P1119773149948132293

namespace A259319

/-- `2*(n+1)*(7-40*(n+1)²+48*(n+1)^4)/15` -/
def P1119773149948132293.Spec : Prop :=
  ∀ n, P1119773149948132293.a n = (A259319 (n + 1) : ℚ)

end A259319

/-! ## A259319.P1682613436391244870

`2*A002309(n+1)`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A259319

/-- `2*A002309(n+1)` -/
def P1682613436391244870.Spec : Prop :=
  ∀ n, P1682613436391244870.a n = A259319 (n + 1)

theorem P1682613436391244870.correct : P1682613436391244870.Spec := by
  intro n
  simp only [A259319, Nat.add_sub_cancel]

end A259319

/-! ## A259319.P5760447033906851499

`2*∑[or(1, 2*n)^4]`
-/

namespace A259319.P5760447033906851499
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (2 * n) ^ 4

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A259319.P5760447033906851499

namespace A259319

/-- `2*∑[or(1, 2*n)^4]` -/
def P5760447033906851499.Spec : Prop :=
  ∀ n, (P5760447033906851499.a n : ℤ) = A259319 (n + 1)

end A259319

/-! ## A259319.P6459458508272526350

`2*∑[xor(1, 2*n)^4]`
-/

namespace A259319.P6459458508272526350
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 (2 * n) ^ 4

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A259319.P6459458508272526350

namespace A259319

/-- `2*∑[xor(1, 2*n)^4]` -/
def P6459458508272526350.Spec : Prop :=
  ∀ n, (P6459458508272526350.a n : ℤ) = A259319 (n + 1)

end A259319

/-! ## A259319.P4236516120386928975

`2*∑[or(1, 2*n)²²]`
-/

namespace A259319.P4236516120386928975
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (Nat.lor 1 (2 * n) ^ 2) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A259319.P4236516120386928975

namespace A259319

/-- `2*∑[or(1, 2*n)²²]` -/
def P4236516120386928975.Spec : Prop :=
  ∀ n, (P4236516120386928975.a n : ℤ) = A259319 (n + 1)

end A259319

/-! ## A259319.P4423902872196905395

`2*∑[xor(1, 2*n)²²]`
-/

namespace A259319.P4423902872196905395
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (Nat.xor 1 (2 * n) ^ 2) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A259319.P4423902872196905395

namespace A259319

/-- `2*∑[xor(1, 2*n)²²]` -/
def P4423902872196905395.Spec : Prop :=
  ∀ n, (P4423902872196905395.a n : ℤ) = A259319 (n + 1)

end A259319

/-! ## A259319.P17443356811978662915

`lcm(2, ∑[2*(2*n+1)²²])`
-/

namespace A259319.P17443356811978662915
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * ((2 * n + 1) ^ 2) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm 2 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A259319.P17443356811978662915

namespace A259319

/-- `lcm(2, ∑[2*(2*n+1)²²])` -/
def P17443356811978662915.Spec : Prop :=
  ∀ n, (P17443356811978662915.a n : ℤ) = A259319 (n + 1)

end A259319

/-! ## A259319.P6611767652640943853

`gcd(2, 2*n)*∑[(2*n+1)^4]`
-/

namespace A259319.P6611767652640943853
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (2 * n + 1) ^ 4

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd 2 (2 * n) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A259319.P6611767652640943853

namespace A259319

/-- `gcd(2, 2*n)*∑[(2*n+1)^4]` -/
def P6611767652640943853.Spec : Prop :=
  ∀ n, (P6611767652640943853.a n : ℤ) = A259319 (n + 1)

end A259319

/-! ## A259319.P3467965096549930882

`2*∑[C(2*n+1, 2*n)^4]`
-/

namespace A259319.P3467965096549930882
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (2 * n + 1) (2 * n) ^ 4

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A259319.P3467965096549930882

namespace A259319

/-- `2*∑[C(2*n+1, 2*n)^4]` -/
def P3467965096549930882.Spec : Prop :=
  ∀ n, (P3467965096549930882.a n : ℤ) = A259319 (n + 1)

end A259319

/-! ## A259319.P6115314132332400226

`2*∑[C(2*n+1, 2*n)²²]`
-/

namespace A259319.P6115314132332400226
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (Nat.choose (2 * n + 1) (2 * n) ^ 2) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A259319.P6115314132332400226

namespace A259319

/-- `2*∑[C(2*n+1, 2*n)²²]` -/
def P6115314132332400226.Spec : Prop :=
  ∀ n, (P6115314132332400226.a n : ℤ) = A259319 (n + 1)

end A259319

/-! ## A259319.P9992927959014087298

`a(n-1)+2*(2*n+1)^4` with `a(0)=2`
-/

namespace A259319.P9992927959014087298
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [2] fun n a =>
  a (n - 1) + 2 * (2 * n + 1) ^ 4

end

end A259319.P9992927959014087298

namespace A259319

/-- `a(n-1)+2*(2*n+1)^4` -/
def P9992927959014087298.Spec : Prop :=
  ∀ n, (P9992927959014087298.a n : ℤ) = A259319 (n + 1)

end A259319

/-! ## A259319.P14963034554034454895

`floor(a(n-1)+2*(2*n+1)²²)` with `a(0)=2`

`floor` is left out, it is the identity on integers.
-/

namespace A259319.P14963034554034454895
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [2] fun n a =>
  a (n - 1) + 2 * ((2 * n + 1) ^ 2) ^ 2

end

end A259319.P14963034554034454895

namespace A259319

/-- `floor(a(n-1)+2*(2*n+1)²²)` -/
def P14963034554034454895.Spec : Prop :=
  ∀ n, (P14963034554034454895.a n : ℤ) = A259319 (n + 1)

end A259319

/-! ## A259319.P8598412827872920243

`∑[2*A016756(n)]`
-/

namespace A259319.P8598412827872920243
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A016756 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A259319.P8598412827872920243

namespace A259319

/-- `∑[2*A016756(n)]` -/
def P8598412827872920243.Spec : Prop :=
  ∀ n, P8598412827872920243.a n = A259319 (n + 1)

end A259319

/-! ## A259319.P5795494702690195970

`∑[2*A016754(n)²]`
-/

namespace A259319.P5795494702690195970
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A016754 n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A259319.P5795494702690195970

namespace A259319

/-- `∑[2*A016754(n)²]` -/
def P5795494702690195970.Spec : Prop :=
  ∀ n, P5795494702690195970.a n = A259319 (n + 1)

end A259319

/-! ## A259319.P14020846709661091713

`∑[A077591(n+1)²/2]`
-/

namespace A259319.P14020846709661091713
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A077591 (n + 1) ^ 2 : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A259319.P14020846709661091713

namespace A259319

/-- `∑[A077591(n+1)²/2]` -/
def P14020846709661091713.Spec : Prop :=
  ∀ n, P14020846709661091713.a n = (A259319 (n + 1) : ℚ)

end A259319

/-! ## A259319.P16349769066194384314

`A000040(gcd(n, n+1))*∑[(2*n+1)²²]`
-/

namespace A259319.P16349769066194384314
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((2 * n + 1) ^ 2) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (Nat.gcd n (n + 1)) * ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A259319.P16349769066194384314

namespace A259319

/-- `A000040(gcd(n, n+1))*∑[(2*n+1)²²]` -/
def P16349769066194384314.Spec : Prop :=
  ∀ n, P16349769066194384314.a n = A259319 (n + 1)

end A259319

/-! ## A259319.P11374341383597087117

`A002309(n+1)+∑[comp[A004277(n)]^4]+1`
-/

namespace A259319.P11374341383597087117
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n ^ 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002309 (n + 1) + ((∑ j ∈ Finset.range (n + 1), f1 j + 1 : ℕ) : ℤ)

end

end A259319.P11374341383597087117

namespace A259319

/-- `A002309(n+1)+∑[comp[A004277(n)]^4]+1` -/
def P11374341383597087117.Spec : Prop :=
  ∀ n, P11374341383597087117.a n = A259319 (n + 1)

end A259319

/-! ## A259319.P480144408935585961

`A002309(n+1)+A002309(n+2)-A016756(n+1)`
-/

namespace A259319.P480144408935585961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002309 (n + 1) + (A002309 (n + 2) - A016756 (n + 1))

end

end A259319.P480144408935585961

namespace A259319

/-- `A002309(n+1)+A002309(n+2)-A016756(n+1)` -/
def P480144408935585961.Spec : Prop :=
  ∀ n, P480144408935585961.a n = A259319 (n + 1)

end A259319

/-! ## A259319.P14550842730395410222

`2*A231303(Δ[n²])`
-/

namespace A259319.P14550842730395410222
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A231303 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A259319.P14550842730395410222

namespace A259319

/-- `2*A231303(Δ[n²])` -/
def P14550842730395410222.Spec : Prop :=
  ∀ n, P14550842730395410222.a n = A259319 (n + 1)

end A259319

/-! ## A259319.P163193957783372815

`∑[A244730(2*n+1)]`
-/

namespace A259319.P163193957783372815
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244730 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A259319.P163193957783372815

namespace A259319

/-- `∑[A244730(2*n+1)]` -/
def P163193957783372815.Spec : Prop :=
  ∀ n, P163193957783372815.a n = A259319 (n + 1)

end A259319

/-!
# A259320: a(n) = 2*n*A259319(n) - A259110(n)^2.

The programs for A259320, the canonical program `A259320.P7124907213139693720` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A259320 has offset 1).

The definition of A259320 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A259320.P13345794060322847268

`64*((n+1)²-5*(n+1)^4+4*(n+1)^6)/45`
-/

namespace A259320.P13345794060322847268
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (64 * (((n + 1) ^ 2 : ℤ) - (5 * (n + 1) ^ 4 : ℤ) + (4 * (n + 1) ^ 6 : ℤ)) : ℚ) / 45

end

end A259320.P13345794060322847268

namespace A259320

/-- `64*((n+1)²-5*(n+1)^4+4*(n+1)^6)/45` -/
def P13345794060322847268.Spec : Prop :=
  ∀ n, P13345794060322847268.a n = (A259320 (n + 1) : ℚ)

end A259320

/-! ## A259320.P7124907213139693720

`2*(n+1)*A259319(n+1)-A259110(n+1)²`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A259320

/-- `2*(n+1)*A259319(n+1)-A259110(n+1)²` -/
def P7124907213139693720.Spec : Prop :=
  ∀ n, P7124907213139693720.a n = A259320 (n + 1)

theorem P7124907213139693720.correct : P7124907213139693720.Spec := by
  intro n
  simp only [A259320, Nat.add_sub_cancel]

end A259320

/-! ## A259320.P6688723723294012655

`16*16*A006858(n)`
-/

namespace A259320.P6688723723294012655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  16 * (16 * A006858 n)

end

end A259320.P6688723723294012655

namespace A259320

/-- `16*16*A006858(n)` -/
def P6688723723294012655.Spec : Prop :=
  ∀ n, P6688723723294012655.a n = A259320 (n + 1)

end A259320

/-! ## A259320.P14603073326021021884

`∑[∑[8*n*A019560(n)]]`
-/

namespace A259320.P14603073326021021884
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  8 * ((n : ℤ) * A019560 n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A259320.P14603073326021021884

namespace A259320

/-- `∑[∑[8*n*A019560(n)]]` -/
def P14603073326021021884.Spec : Prop :=
  ∀ n, P14603073326021021884.a n = A259320 (n + 1)

end A259320

/-! ## A259320.P4372186751347661031

`∑[∑[A008412(2*n)*A008590(n)]]`
-/

namespace A259320.P4372186751347661031
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008412 (2 * n) * A008590 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A259320.P4372186751347661031

namespace A259320

/-- `∑[∑[A008412(2*n)*A008590(n)]]` -/
def P4372186751347661031.Spec : Prop :=
  ∀ n, P4372186751347661031.a n = A259320 (n + 1)

end A259320

/-! ## A259320.P8292823685070471425

`∑[A081219(2*n+1)-(2*n+1)]`
-/

namespace A259320.P8292823685070471425
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081219 (2 * n + 1) - (2 * n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A259320.P8292823685070471425

namespace A259320

/-- `∑[A081219(2*n+1)-(2*n+1)]` -/
def P8292823685070471425.Spec : Prop :=
  ∀ n, P8292823685070471425.a n = A259320 (n + 1)

end A259320

/-! ## A259320.P14271880034654533668

`∑[∑[A008590(2*n)*A217873(2*n)]]`
-/

namespace A259320.P14271880034654533668
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008590 (2 * n) * A217873 (2 * n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A259320.P14271880034654533668

namespace A259320

/-- `∑[∑[A008590(2*n)*A217873(2*n)]]` -/
def P14271880034654533668.Spec : Prop :=
  ∀ n, P14271880034654533668.a n = A259320 (n + 1)

end A259320

/-! ## A259320.P9028296941029776650

`∑[∑[A022144(2*n)*A217873(2*n)]]`
-/

namespace A259320.P9028296941029776650
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022144 (2 * n) * A217873 (2 * n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A259320.P9028296941029776650

namespace A259320

/-- `∑[∑[A022144(2*n)*A217873(2*n)]]` -/
def P9028296941029776650.Spec : Prop :=
  ∀ n, P9028296941029776650.a n = A259320 (n + 1)

end A259320

/-! ## A259320.P1099828900625922004

`32*(A000579(2*(n+2))+A000579(2*n+5))`
-/

namespace A259320.P1099828900625922004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  32 * (A000579 (2 * (n + 2)) + A000579 (2 * n + 5))

end

end A259320.P1099828900625922004

namespace A259320

/-- `32*(A000579(2*(n+2))+A000579(2*n+5))` -/
def P1099828900625922004.Spec : Prop :=
  ∀ n, P1099828900625922004.a n = A259320 (n + 1)

end A259320

/-! ## A259320.P17417278434514462620

`∑[A033455(4*n+1)-A005408(n)]`
-/

namespace A259320.P17417278434514462620
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033455 (4 * n + 1) - A005408 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A259320.P17417278434514462620

namespace A259320

/-- `∑[A033455(4*n+1)-A005408(n)]` -/
def P17417278434514462620.Spec : Prop :=
  ∀ n, P17417278434514462620.a n = A259320 (n + 1)

end A259320

/-!
# A259321: a(n) = A259110(n)*A259323(n) - A259319(n)^2.

The programs for A259321, the canonical program `A259321.P6098507823331148853` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A259321 has offset 1).

The definition of A259321 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A259321.P6098507823331148853

`A259110(n+1)*A259323(n+1)-A259319(n+1)²`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A259321

/-- `A259110(n+1)*A259323(n+1)-A259319(n+1)²` -/
def P6098507823331148853.Spec : Prop :=
  ∀ n, P6098507823331148853.a n = A259321 (n + 1)

theorem P6098507823331148853.correct : P6098507823331148853.Spec := by
  intro n
  simp only [A259321, Nat.add_sub_cancel]

end A259321

/-!
# A259322: Sum of sixth powers of odd numbers.

The programs for A259322, the canonical program `A259322.P11218845558750286820` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A259322 has offset 1).

The definition of A259322 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A259322.P11218845558750286820

`(n+1)*(192*(n+1)^6-336*(n+1)^4+196*(n+1)²-31)/21`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A259322

/-- `(n+1)*(192*(n+1)^6-336*(n+1)^4+196*(n+1)²-31)/21` -/
def P11218845558750286820.Spec : Prop :=
  ∀ n, P11218845558750286820.a n = (A259322 (n + 1) : ℚ)

end A259322

/-! ## A259322.P14166531501870155730

`a(n-1)+(2*n+1)^6` with `a(0)=1`
-/

namespace A259322.P14166531501870155730
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (2 * n + 1) ^ 6

end

end A259322.P14166531501870155730

namespace A259322

/-- `a(n-1)+(2*n+1)^6` -/
def P14166531501870155730.Spec : Prop :=
  ∀ n, (P14166531501870155730.a n : ℤ) = A259322 (n + 1)

end A259322

/-! ## A259322.P10467252803095574703

`floor(a(n-1)+((2*n+1)*(2*n+1)²)²)` with `a(0)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A259322.P10467252803095574703
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + ((2 * n + 1) * (2 * n + 1) ^ 2) ^ 2

end

end A259322.P10467252803095574703

namespace A259322

/-- `floor(a(n-1)+((2*n+1)*(2*n+1)²)²)` -/
def P10467252803095574703.Spec : Prop :=
  ∀ n, (P10467252803095574703.a n : ℤ) = A259322 (n + 1)

end A259322

/-! ## A259322.P2207922844300096272

`∑[sqrt(A016764(n))]`
-/

namespace A259322.P2207922844300096272
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A016764 n : ℝ)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A259322.P2207922844300096272

namespace A259322

/-- `∑[sqrt(A016764(n))]` -/
def P2207922844300096272.Spec : Prop :=
  ∀ n, P2207922844300096272.a n = (A259322 (n + 1) : ℝ)

end A259322

/-! ## A259322.P8475596858072334290

`A016758(n)+a(n-1)` with `a(0)=1`
-/

namespace A259322.P8475596858072334290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A016758 n + a (n - 1)

end

end A259322.P8475596858072334290

namespace A259322

/-- `A016758(n)+a(n-1)` -/
def P8475596858072334290.Spec : Prop :=
  ∀ n, P8475596858072334290.a n = A259322 (n + 1)

end A259322

/-! ## A259322.P14176393000962866932

`lcm(∑[A016758(n)], A033999(n))`
-/

namespace A259322.P14176393000962866932
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016758 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (∑ j ∈ Finset.range (n + 1), f1 j) (A033999 n)

end

end A259322.P14176393000962866932

namespace A259322

/-- `lcm(∑[A016758(n)], A033999(n))` -/
def P14176393000962866932.Spec : Prop :=
  ∀ n, (P14176393000962866932.a n : ℤ) = A259322 (n + 1)

end A259322

/-! ## A259322.P12251755772701423209

`∑[A016758(n)]^A000038(n)!`
-/

namespace A259322.P12251755772701423209
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016758 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) ^ Nat.factorial (A000038 n).toNat

end

end A259322.P12251755772701423209

namespace A259322

/-- `∑[A016758(n)]^A000038(n)!` -/
def P12251755772701423209.Spec : Prop :=
  ∀ n, P12251755772701423209.a n = A259322 (n + 1)

end A259322

/-! ## A259322.P17984526763081348533

`A002309(n+1)/A259319(n+1)*A259323(n+1)`
-/

namespace A259322.P17984526763081348533
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002309 (n + 1) : ℚ) / (A259319 (n + 1) : ℚ) * (A259323 (n + 1) : ℚ)

end

end A259322.P17984526763081348533

namespace A259322

/-- `A002309(n+1)/A259319(n+1)*A259323(n+1)` -/
def P17984526763081348533.Spec : Prop :=
  ∀ n, P17984526763081348533.a n = (A259322 (n + 1) : ℚ)

end A259322

/-! ## A259322.P16426995286505676557

`A000447(n+1)/A259110(n+1)*A259323(n+1)`
-/

namespace A259322.P16426995286505676557
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000447 (n + 1) : ℚ) / (A259110 (n + 1) : ℚ) * (A259323 (n + 1) : ℚ)

end

end A259322.P16426995286505676557

namespace A259322

/-- `A000447(n+1)/A259110(n+1)*A259323(n+1)` -/
def P16426995286505676557.Spec : Prop :=
  ∀ n, P16426995286505676557.a n = (A259322 (n + 1) : ℚ)

end A259322

/-! ## A259322.P10556349503298498005

`A231305(Δ[n²])`
-/

namespace A259322.P10556349503298498005
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231305 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A259322.P10556349503298498005

namespace A259322

/-- `A231305(Δ[n²])` -/
def P10556349503298498005.Spec : Prop :=
  ∀ n, P10556349503298498005.a n = A259322 (n + 1)

end A259322

/-! ## A259322.P10720815886283351415

`∑[sqrt(A008456(2*n+1))]`
-/

namespace A259322.P10720815886283351415
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A008456 (2 * n + 1) : ℝ)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A259322.P10720815886283351415

namespace A259322

/-- `∑[sqrt(A008456(2*n+1))]` -/
def P10720815886283351415.Spec : Prop :=
  ∀ n, P10720815886283351415.a n = (A259322 (n + 1) : ℝ)

end A259322

/-! ## A259322.P11660301388715215102

`∑[A123866(2*n+1)]+n+1`
-/

namespace A259322.P11660301388715215102
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123866 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n + 1 : ℤ)

end

end A259322.P11660301388715215102

namespace A259322

/-- `∑[A123866(2*n+1)]+n+1` -/
def P11660301388715215102.Spec : Prop :=
  ∀ n, P11660301388715215102.a n = A259322 (n + 1)

end A259322

/-! ## A259322.P11672043689896041553

`∑[A002604(2*n+1)]-(n+1)`
-/

namespace A259322.P11672043689896041553
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002604 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (n + 1 : ℤ)

end

end A259322.P11672043689896041553

namespace A259322

/-- `∑[A002604(2*n+1)]-(n+1)` -/
def P11672043689896041553.Spec : Prop :=
  ∀ n, P11672043689896041553.a n = A259322 (n + 1)

end A259322

/-! ## A259322.P9425553527963079814

`∑[A001014(comp[A004277(n)])]+1`
-/

namespace A259322.P9425553527963079814
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 n

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001014 (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A259322.P9425553527963079814

namespace A259322

/-- `∑[A001014(comp[A004277(n)])]+1` -/
def P9425553527963079814.Spec : Prop :=
  ∀ n, P9425553527963079814.a n = A259322 (n + 1)

end A259322

/-!
# A259323: a(n) = 2*A259322(n).

The programs for A259323, the canonical program `A259323.P9882511957773447944` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A259323 has offset 1).

The definition of A259323 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A259323.P1652331690594049073

`(n+1)*(384*(n+1)^6-672*(n+1)^4+392*(n+1)²-62)/21`
-/

namespace A259323.P1652331690594049073
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 1 : ℤ) * ((384 * (n + 1) ^ 6 : ℤ) - (672 * (n + 1) ^ 4 : ℤ) + (392 * (n + 1) ^ 2 : ℤ) - 62) : ℚ) / 21

end

end A259323.P1652331690594049073

namespace A259323

/-- `(n+1)*(384*(n+1)^6-672*(n+1)^4+392*(n+1)²-62)/21` -/
def P1652331690594049073.Spec : Prop :=
  ∀ n, P1652331690594049073.a n = (A259323 (n + 1) : ℚ)

end A259323

/-! ## A259323.P9882511957773447944

`2*A259322(n+1)`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A259323

/-- `2*A259322(n+1)` -/
def P9882511957773447944.Spec : Prop :=
  ∀ n, P9882511957773447944.a n = A259323 (n + 1)

theorem P9882511957773447944.correct : P9882511957773447944.Spec := by
  intro n
  simp only [A259323, Nat.add_sub_cancel]

end A259323

/-! ## A259323.P2021847729299760297

`lcm(2, ∑[2*(2*n+1)^6])`
-/

namespace A259323.P2021847729299760297
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (2 * n + 1) ^ 6

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm 2 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A259323.P2021847729299760297

namespace A259323

/-- `lcm(2, ∑[2*(2*n+1)^6])` -/
def P2021847729299760297.Spec : Prop :=
  ∀ n, (P2021847729299760297.a n : ℤ) = A259323 (n + 1)

end A259323

/-! ## A259323.P11022044851675831643

`∑[2*A016758(n)]`
-/

namespace A259323.P11022044851675831643
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A016758 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A259323.P11022044851675831643

namespace A259323

/-- `∑[2*A016758(n)]` -/
def P11022044851675831643.Spec : Prop :=
  ∀ n, P11022044851675831643.a n = A259323 (n + 1)

end A259323

/-! ## A259323.P4721833703572000187

`∑[2*A016755(n)²]`
-/

namespace A259323.P4721833703572000187
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A016755 n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A259323.P4721833703572000187

namespace A259323

/-- `∑[2*A016755(n)²]` -/
def P4721833703572000187.Spec : Prop :=
  ∀ n, P4721833703572000187.a n = A259323 (n + 1)

end A259323

/-! ## A259323.P14930065557431126480

`A259322(n+1)+A259322(n+2)-A016758(n+1)`
-/

namespace A259323.P14930065557431126480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259322 (n + 1) + (A259322 (n + 2) - A016758 (n + 1))

end

end A259323.P14930065557431126480

namespace A259323

/-- `A259322(n+1)+A259322(n+2)-A016758(n+1)` -/
def P14930065557431126480.Spec : Prop :=
  ∀ n, P14930065557431126480.a n = A259323 (n + 1)

end A259323

/-! ## A259323.P10749951087841775548

`2*A231305(Δ[n²])`
-/

namespace A259323.P10749951087841775548
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A231305 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A259323.P10749951087841775548

namespace A259323

/-- `2*A231305(Δ[n²])` -/
def P10749951087841775548.Spec : Prop :=
  ∀ n, P10749951087841775548.a n = A259323 (n + 1)

end A259323

/-! ## A259323.P16942574602578098924

`∑[A106318(2*n+1)]`
-/

namespace A259323.P16942574602578098924
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106318 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A259323.P16942574602578098924

namespace A259323

/-- `∑[A106318(2*n+1)]` -/
def P16942574602578098924.Spec : Prop :=
  ∀ n, P16942574602578098924.a n = A259323 (n + 1)

end A259323

/-! ## A259323.P1611450340299022021

`A231305(2*n+1)+A231305(2*n+1)`
-/

namespace A259323.P1611450340299022021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231305 (2 * n + 1) + A231305 (2 * n + 1)

end

end A259323.P1611450340299022021

namespace A259323

/-- `A231305(2*n+1)+A231305(2*n+1)` -/
def P1611450340299022021.Spec : Prop :=
  ∀ n, P1611450340299022021.a n = A259323 (n + 1)

theorem P1611450340299022021.correct : P1611450340299022021.Spec := by
  intro n
  simp only [A259323, Nat.add_sub_cancel, A259323.P1611450340299022021.a, A259323.P9882511957773447944.a, A231305, A231305.P17830712245743144125.a, A259322, A259322.P11218845558750286820.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A259323

/-! ## A259323.P13077247121367247342

`∑[A033431((2*n+1)²)]`
-/

namespace A259323.P13077247121367247342
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033431 ((2 * n + 1) ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A259323.P13077247121367247342

namespace A259323

/-- `∑[A033431((2*n+1)²)]` -/
def P13077247121367247342.Spec : Prop :=
  ∀ n, P13077247121367247342.a n = A259323 (n + 1)

end A259323

/-!
# A259324: Infinite square array read by antidiagonals: T(n,k) = number of ways of partitioning numbers <= n into k parts (n >= 0, k >= 1).

The programs for A259324, there is no canonical definition to state claims against.
-/

/-! ## A259324.P14916367086339687987

`A137679(A038722(n+1))`
-/

namespace A259324.P14916367086339687987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137679 (A038722 (n + 1)).toNat

end

end A259324.P14916367086339687987

/-! ## A259324.P6150016090885872435

`A137679(A061579(n)+1)`
-/

namespace A259324.P6150016090885872435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137679 (A061579 n + 1).toNat

end

end A259324.P6150016090885872435

/-! ## A259324.P1853579139188234630

`A092905(A099375(n)+1+n)`
-/

namespace A259324.P1853579139188234630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092905 (A099375 n + 1 + (n : ℤ)).toNat

end

end A259324.P1853579139188234630

/-! ## A259324.P7058405607123451495

`A092905(2*A004736(n+1)+n)`
-/

namespace A259324.P7058405607123451495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092905 (2 * A004736 (n + 1) + (n : ℤ)).toNat

end

end A259324.P7058405607123451495

/-! ## A259324.P4743250382160011933

`A092905(2*A127739(n+1)-n)`
-/

namespace A259324.P4743250382160011933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092905 (2 * A127739 (n + 1) - (n : ℤ)).toNat

end

end A259324.P4743250382160011933

/-! ## A259324.P9911696502175829146

`A092905(A114327(n)+A014132(n+1))`
-/

namespace A259324.P9911696502175829146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092905 (A114327 n + A014132 (n + 1)).toNat

end

end A259324.P9911696502175829146

/-! ## A259324.P6045548051061379573

`A092905(A061579(n)+A003057(n+2))`
-/

namespace A259324.P6045548051061379573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092905 (A061579 n + A003057 (n + 2)).toNat

end

end A259324.P6045548051061379573

/-! ## A259324.P15857454537633020864

`A092905(A265129(n+1)-A083920(n))`
-/

namespace A259324.P15857454537633020864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092905 (A265129 (n + 1) - A083920 n).toNat

end

end A259324.P15857454537633020864

/-! ## A259324.P11370218283771793777

`A092905(A038722(n+1)+A002024(n+1))`
-/

namespace A259324.P11370218283771793777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092905 (A038722 (n + 1) + A002024 (n + 1)).toNat

end

end A259324.P11370218283771793777

/-! ## A259324.P15853666705848527912

`A092905(A127739(n+1)+A004736(n+1))`
-/

namespace A259324.P15853666705848527912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092905 (A127739 (n + 1) + A004736 (n + 1)).toNat

end

end A259324.P15853666705848527912

/-!
# A259325: Infinite square array T(n,k) read by antidiagonals, defined by T(n,k) = T(n,k-1)+T(n-k,k), T(0,k)=1 (n >= 0, k >= 1).

The programs for A259325, there is no canonical definition to state claims against.
-/

/-! ## A259325.P5203999515373487866

`A370461(A209760(n+1))+A112367(n)+1`
-/

namespace A259325.P5203999515373487866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370461 (A209760 (n + 1)).toNat + (A112367 n + 1)

end

end A259325.P5203999515373487866

/-! ## A259325.P4693239068754987655

`val(A309263(A203647(n+1)), 2)+A112367(n)+1`
-/

namespace A259325.P4693239068754987655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.valuation (A309263 (A203647 (n + 1)).toNat).toNat 2 : ℤ) + (A112367 n + 1)

end

end A259325.P4693239068754987655

/-! ## A259325.P9635846431334253463

`A370461(A209760(n+1))+A000124(A002262(n))`
-/

namespace A259325.P9635846431334253463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370461 (A209760 (n + 1)).toNat + A000124 (A002262 n).toNat

end

end A259325.P9635846431334253463

/-! ## A259325.P10592539726401836713

`A370461(A209760(n+1))+A199343(A112367(n))`
-/

namespace A259325.P10592539726401836713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370461 (A209760 (n + 1)).toNat + A199343 (A112367 n).toNat

end

end A259325.P10592539726401836713

/-! ## A259325.P17138997283084464050

`A102351(A226441(n+1))+A002262(n)+A112367(n)+1`
-/

namespace A259325.P17138997283084464050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102351 (A226441 (n + 1)).toNat + A002262 n + (A112367 n + 1)

end

end A259325.P17138997283084464050

/-!
# A259332: Triangle read by rows: T(n,k) = number of column-convex polyominoes with perimeter n and k columns (1 <= k <= n).

The programs for A259332, there is no canonical definition to state claims against.
-/

/-! ## A259332.P16353117143309138571

`A274631(A108767(n+1))`
-/

namespace A259332.P16353117143309138571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274631 (A108767 (n + 1)).toNat

end

end A259332.P16353117143309138571

/-! ## A259332.P10068748477317208521

`A108767(n+1)+A016391(A157729(n))`
-/

namespace A259332.P10068748477317208521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108767 (n + 1) + A016391 (A157729 n).toNat

end

end A259332.P10068748477317208521

/-! ## A259332.P12521439740368044059

`A108767(n+1)-A058276(A013609(n))`
-/

namespace A259332.P12521439740368044059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108767 (n + 1) - A058276 (A013609 n).toNat

end

end A259332.P12521439740368044059

/-!
# A259333: Triangle read by rows: T(n,k) = number of column-convex polyominoes with bond-perimeter 2*n+2 and k columns (1 <= k <= n).

The programs for A259333, there is no canonical definition to state claims against.
-/

/-! ## A259333.P2854402058079645233

`A004438(A008459(n))`
-/

namespace A259333.P2854402058079645233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004438 (A008459 n).toNat

end

end A259333.P2854402058079645233

/-! ## A259333.P9063977640600188310

`A000196(A155497(n))`
-/

namespace A259333.P9063977640600188310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A155497 n).toNat

end

end A259333.P9063977640600188310

/-! ## A259333.P395070202173168337

`A040004(A173881(n))`
-/

namespace A259333.P395070202173168337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040004 (A173881 n).toNat

end

end A259333.P395070202173168337

/-! ## A259333.P3684450457288297800

`A378927(A124216(n))`
-/

namespace A259333.P3684450457288297800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378927 (A124216 n).toNat

end

end A259333.P3684450457288297800

/-! ## A259333.P1484536208642699975

`A004438(A007318(n)²)`
-/

namespace A259333.P1484536208642699975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004438 (A007318 n ^ 2).toNat

end

end A259333.P1484536208642699975

/-!
# A259334: Triangle read by rows: T(n, k) = k * (n - 1)! * n^(n - k - 1) / (n - k)!.

The programs for A259334, the canonical program `A259334.P13494176114006813757` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A259334 has offset 1).

The definition of A259334 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1711 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A259334.P13494176114006813757

`A122525(∑[char[∑[n]]]²-n)`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A259334

/-- `A122525(∑[char[∑[n]]]²-n)` -/
def P13494176114006813757.Spec : Prop :=
  ∀ n, P13494176114006813757.a n = A259334 (n + 1)

theorem P13494176114006813757.correct : P13494176114006813757.Spec := by
  intro n
  simp only [A259334, Nat.add_sub_cancel]

end A259334

/-! ## A259334.P15719403062049653300

`(1-C(∑[char[∑[n]]], 2)+n)*∑[char[∑[n+1]]]!/(C(comp[∑[n]]-n, 2)-(n+1))!*∑[char[∑[n]]]^(C(comp[∑[n]]-n, 2)-(n+1))/∑[char[∑[n]]]`
-/

namespace A259334.P15719403062049653300
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def f6 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f5 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f6 j

open Classical in
def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f5 j = n then 1 else 0

def f8 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f7 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f8 j

def f11 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f10 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f11 j

open Classical in
def f9 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f10 j = n then 1 else 0

def f13 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f12 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f13 j

def f16 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f15 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f16 j

open Classical in
def f14 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f15 j = n then 1 else 0

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((1 - (Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j) 2 : ℤ) + (n : ℤ)) * (Nat.factorial (∑ j ∈ Finset.range (n + 1), f4 j) : ℤ) : ℚ) / (Nat.factorial ((Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f7 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 : ℤ) - (n + 1 : ℤ)).toNat : ℚ) * ((∑ j ∈ Finset.range (n + 1), f9 j : ℕ) : ℚ) ^ ((Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f12 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 : ℤ) - (n + 1 : ℤ) : ℤ) / ((∑ j ∈ Finset.range (n + 1), f14 j : ℕ) : ℚ)

end

end A259334.P15719403062049653300

namespace A259334

/-- `(1-C(∑[char[∑[n]]], 2)+n)*∑[char[∑[n+1]]]!/(C(comp[∑[n]]-n, 2)-(n+1))!*∑[char[∑[n]]]^(C(comp[∑[n]]-n, 2)-(n+1))/∑[char[∑[n]]]` -/
def P15719403062049653300.Spec : Prop :=
  ∀ n, P15719403062049653300.a n = (A259334 (n + 1) : ℚ)

end A259334

/-! ## A259334.P2237949428081269298

`A066324(n+1)/∑[char[∑[n]]]`
-/

namespace A259334.P2237949428081269298
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A066324 (n + 1) : ℚ) / ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ)

end

end A259334.P2237949428081269298

namespace A259334

/-- `A066324(n+1)/∑[char[∑[n]]]` -/
def P2237949428081269298.Spec : Prop :=
  ∀ n, P2237949428081269298.a n = (A259334 (n + 1) : ℚ)

end A259334

/-! ## A259334.P10449639875611477028

`A219694(∑[char[∑[n]]]²-n)/∑[char[∑[n]]]`
-/

namespace A259334.P10449639875611477028
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def f6 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f5 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f6 j

open Classical in
def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f5 j = n then 1 else 0

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A219694 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 - n) : ℚ) / ((∑ j ∈ Finset.range (n + 1), f4 j : ℕ) : ℚ)

end

end A259334.P10449639875611477028

namespace A259334

/-- `A219694(∑[char[∑[n]]]²-n)/∑[char[∑[n]]]` -/
def P10449639875611477028.Spec : Prop :=
  ∀ n, P10449639875611477028.a n = (A259334 (n + 1) : ℚ)

end A259334

/-! ## A259334.P17471867816347875095

`A243203(comp[∑[n]])/A002024(n+1)`
-/

namespace A259334.P17471867816347875095
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A243203 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n) : ℚ) / (A002024 (n + 1) : ℚ)

end

end A259334.P17471867816347875095

namespace A259334

/-- `A243203(comp[∑[n]])/A002024(n+1)` -/
def P17471867816347875095.Spec : Prop :=
  ∀ n, P17471867816347875095.a n = (A259334 (n + 1) : ℚ)

end A259334

/-! ## A259334.P13455296414928119959

`A066324(n+1)/A219694(n+1)*A122525(n+1)`
-/

namespace A259334.P13455296414928119959
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A066324 (n + 1) : ℚ) / (A219694 (n + 1) : ℚ) * (A122525 (n + 1) : ℚ)

end

end A259334.P13455296414928119959

namespace A259334

/-- `A066324(n+1)/A219694(n+1)*A122525(n+1)` -/
def P13455296414928119959.Spec : Prop :=
  ∀ n, P13455296414928119959.a n = (A259334 (n + 1) : ℚ)

end A259334

/-!
# A259335: a(n) = ( Sum_{k=0..n} binomial(2*n, k)^2 * (binomial(2*n, k+1) - binomial(2*n, k-1)) )/(n*binomial(2*n, n)).

The programs for A259335, there is no canonical definition to state claims against.
-/

/-! ## A259335.P10757944808161580051

`A374675(n+1)/(n+2)`
-/

namespace A259335.P10757944808161580051
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A374675 (n + 1) : ℚ) / (n + 2 : ℚ)

end

end A259335.P10757944808161580051

/-! ## A259335.P6647499353131023197

`A104711(A058331(n+1))`
-/

namespace A259335.P6647499353131023197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104711 (A058331 (n + 1)).toNat

end

end A259335.P6647499353131023197

/-! ## A259335.P2504613082570962681

`A104711(A001105(n+1)+1)`
-/

namespace A259335.P2504613082570962681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104711 (A001105 (n + 1) + 1).toNat

end

end A259335.P2504613082570962681

/-! ## A259335.P13010643605195687685

`A104711(A000124(2*n+1)+n+1)`
-/

namespace A259335.P13010643605195687685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104711 (A000124 (2 * n + 1) + (n + 1 : ℤ)).toNat

end

end A259335.P13010643605195687685

/-! ## A259335.P12190246639523826517

`A104711(A000217(2*n+1)+n+2)`
-/

namespace A259335.P12190246639523826517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104711 (A000217 (2 * n + 1) + (n + 2 : ℤ)).toNat

end

end A259335.P12190246639523826517

/-!
# A259337: Classes of self-dual precomplete Post functions.

The programs for A259337, there is no canonical definition to state claims against.
-/

/-! ## A259337.P2163694166657159459

`A267019(∑[∑[a(n-1)-(3-n)]])` with `a(0)=3`
-/

namespace A259337.P2163694166657159459
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [3] fun n f2 =>
  f2 (n - 1) - (3 - (n : ℤ))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267019 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A259337.P2163694166657159459

/-!
# A259338: Classes of type U precomplete Post functions.

The programs for A259338, there is no canonical definition to state claims against.
-/

/-! ## A259338.P6084299828891562968

`∑[A008624(A040027(n)*A063539(n+1))]`
-/

namespace A259338.P6084299828891562968
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008624 (A040027 n * A063539 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A259338.P6084299828891562968

/-!
# A259341: Triangle read by rows: number of balanced twills with 2n harnesses and maximum float length k (1 <= k <= n).

The programs for A259341, there is no canonical definition to state claims against.
-/

/-! ## A259341.P4563430598754451265

`or(A189624(A191978(3*(n+1))), A284992(n+1))`
-/

namespace A259341.P4563430598754451265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A189624 (A191978 (3 * (n + 1))).toNat) (A284992 (n + 1))

end

end A259341.P4563430598754451265

/-!
# A259342: Irregular triangle read by rows: T(n,k) = number of equivalence classes of binary sequences of length n containing exactly 2k ones.

The programs for A259342, there is no canonical definition to state claims against.
-/

/-! ## A259342.P1454582771795869912

`A052307(∑[A275437(n)])`
-/

namespace A259342.P1454582771795869912
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275437 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052307 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A259342.P1454582771795869912

/-! ## A259342.P1729425942971775304

`A052307(∑[A267635(n)+1])`
-/

namespace A259342.P1729425942971775304
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267635 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052307 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A259342.P1729425942971775304

/-! ## A259342.P12016743144881224136

`A052307(∑[gcd(2, A000005(n+1))])`
-/

namespace A259342.P12016743144881224136
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 2 (A000005 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052307 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A259342.P12016743144881224136

/-! ## A259342.P3813042486848957593

`A052307(∑[2-and(1, A000005(n+1))])`
-/

namespace A259342.P3813042486848957593
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - Int.land 1 (A000005 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052307 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A259342.P3813042486848957593

/-! ## A259342.P947992329321731114

`A052307(A169864(n+1))`
-/

namespace A259342.P947992329321731114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052307 (A169864 (n + 1)).toNat

end

end A259342.P947992329321731114

/-!
# A259343: A001116(n) + 1.

The programs for A259343, there is no canonical definition to state claims against.
-/

/-! ## A259343.P15040488863477334442

`A001116(n)+1`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A259343.P15040488863477334442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001116 n + 1

end

end A259343.P15040488863477334442

/-! ## A259343.P16818527732847956139

`A002336(n)+1`
-/

namespace A259343.P16818527732847956139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002336 n + 1

end

end A259343.P16818527732847956139

/-! ## A259343.P7750463601624991973

`2*A028924(n)+1`
-/

namespace A259343.P7750463601624991973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A028924 n + 1

end

end A259343.P7750463601624991973

/-! ## A259343.P4367360140723261533

`or(1, A002336(∑{digits}[n, #]))`
-/

namespace A259343.P4367360140723261533
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A002336 ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => x).sum)

end

end A259343.P4367360140723261533

/-! ## A259343.P7219907061739207245

`xor(1, A001116(∏{digits}[n, #]))`
-/

namespace A259343.P7219907061739207245
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (A001116 ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => x).prod)

end

end A259343.P7219907061739207245

/-!
# A259344: Array read by antidiagonals: number of inequivalent m X n (0,1)-matrices under permutation of rows and permutation and/or complementation of columns.

The programs for A259344, there is no canonical definition to state claims against.
-/

/-! ## A259344.P12298382767944125243

`A363349(lt[1, A007318(n)])`
-/

namespace A259344.P12298382767944125243
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363349 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A259344.P12298382767944125243

/-! ## A259344.P17964583515873909949

`A363349(lt[1, A008288(n)])`
-/

namespace A259344.P17964583515873909949
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008288 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363349 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A259344.P17964583515873909949

/-! ## A259344.P414192682613758411

`A363349(lt[1, A026758(n)])`
-/

namespace A259344.P414192682613758411
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026758 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363349 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A259344.P414192682613758411

/-! ## A259344.P4471152612399037428

`A363349(lt[1, A028657(n)])`
-/

namespace A259344.P4471152612399037428
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363349 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A259344.P4471152612399037428

/-! ## A259344.P12409362635446340559

`A363349(lt[1, A039755(n)])`
-/

namespace A259344.P12409362635446340559
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039755 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363349 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A259344.P12409362635446340559

/-!
# A259345: Number of labeled single-linkage dendrograms.

The programs for A259345, there is no canonical definition to state claims against.
-/

/-! ## A259345.P16792725010724481552

`25*a(n-1)` with `a(0)=1, a(1)=1, a(2)=1, a(3)=30`
-/

namespace A259345.P16792725010724481552
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 1, 1, 30] fun n a =>
  25 * a (n - 1)

end

end A259345.P16792725010724481552

/-!
# A259346: If n = 2^k then a(n) = 3^k, otherwise a(n) = 0.

The programs for A259346, the canonical program `A259346.P9858574325233048270` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A259346 has offset 1).

The definition of A259346 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A259346.P9818240185266820063

`A099894(n)^log2(3)`
-/

namespace A259346.P9818240185266820063
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A099894 n : ℝ) ^ (Real.logb 2 (3 : ℝ))

end

end A259346.P9818240185266820063

namespace A259346

/-- `A099894(n)^log2(3)` -/
def P9818240185266820063.Spec : Prop :=
  ∀ n, P9818240185266820063.a n = (A259346 (n + 1) : ℝ)

end A259346

/-! ## A259346.P9858574325233048270

`Δ[A003462(floor(log2(2*n+1)))]`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A259346

/-- `Δ[A003462(floor(log2(2*n+1)))]` -/
def P9858574325233048270.Spec : Prop :=
  ∀ n, P9858574325233048270.a n = A259346 (n + 1)

theorem P9858574325233048270.correct : P9858574325233048270.Spec := by
  intro n
  simp only [A259346, Nat.add_sub_cancel]

end A259346

/-! ## A259346.P18392308067231150196

`Δ[ceil(log2(n+1))]*A048883(n)`
-/

namespace A259346.P18392308067231150196
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.logb 2 (n + 1 : ℝ)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A048883 n

end

end A259346.P18392308067231150196

namespace A259346

/-- `Δ[ceil(log2(n+1))]*A048883(n)` -/
def P18392308067231150196.Spec : Prop :=
  ∀ n, P18392308067231150196.a n = A259346 (n + 1)

end A259346

/-! ## A259346.P17648063983547444013

`A234840(C(2^val(n+1, 2), n))`
-/

namespace A259346.P17648063983547444013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234840 (Nat.choose (2 ^ SequenceMachineLib.valuation (n + 1) 2) n)

end

end A259346.P17648063983547444013

namespace A259346

/-- `A234840(C(2^val(n+1, 2), n))` -/
def P17648063983547444013.Spec : Prop :=
  ∀ n, P17648063983547444013.a n = A259346 (n + 1)

end A259346

/-! ## A259346.P16730731785508017359

`(4-A043529(n)²)^log2(n+1)`
-/

namespace A259346.P16730731785508017359
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (4 - A043529 n ^ 2 : ℝ) ^ (Real.logb 2 (n + 1 : ℝ))

end

end A259346.P16730731785508017359

namespace A259346

/-- `(4-A043529(n)²)^log2(n+1)` -/
def P16730731785508017359.Spec : Prop :=
  ∀ n, P16730731785508017359.a n = (A259346 (n + 1) : ℝ)

end A259346

/-! ## A259346.P10983775420375560868

`∑[A001316(n)]*char[2^n-1]`
-/

namespace A259346.P10983775420375560868
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001316 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) - 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * ((if ∃ j, f2 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A259346.P10983775420375560868

namespace A259346

/-- `∑[A001316(n)]*char[2^n-1]` -/
def P10983775420375560868.Spec : Prop :=
  ∀ n, P10983775420375560868.a n = A259346 (n + 1)

end A259346

/-! ## A259346.P9520497272300475878

`∑[A071585(n)]*char[2^n-1]`
-/

namespace A259346.P9520497272300475878
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071585 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) - 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * ((if ∃ j, f2 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A259346.P9520497272300475878

namespace A259346

/-- `∑[A071585(n)]*char[2^n-1]` -/
def P9520497272300475878.Spec : Prop :=
  ∀ n, P9520497272300475878.a n = A259346 (n + 1)

end A259346

/-! ## A259346.P17970677523596260597

`char[2^n-1]*A003961(n+1)`
-/

namespace A259346.P17970677523596260597
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) - 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A003961 (n + 1)

end

end A259346.P17970677523596260597

namespace A259346

/-- `char[2^n-1]*A003961(n+1)` -/
def P17970677523596260597.Spec : Prop :=
  ∀ n, P17970677523596260597.a n = A259346 (n + 1)

end A259346

/-! ## A259346.P7888077617269552884

`char[2^n-1]*A081761(n+1)`
-/

namespace A259346.P7888077617269552884
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) - 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A081761 (n + 1)

end

end A259346.P7888077617269552884

namespace A259346

/-- `char[2^n-1]*A081761(n+1)` -/
def P7888077617269552884.Spec : Prop :=
  ∀ n, P7888077617269552884.a n = A259346 (n + 1)

end A259346

/-! ## A259346.P6271327253469712568

`A006046(A099894(n))`
-/

namespace A259346.P6271327253469712568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006046 (A099894 n).toNat

end

end A259346.P6271327253469712568

namespace A259346

/-- `A006046(A099894(n))` -/
def P6271327253469712568.Spec : Prop :=
  ∀ n, P6271327253469712568.a n = A259346 (n + 1)

end A259346

/-! ## A259346.P5560818013794541643

`A006046(A048298(n+1))`
-/

namespace A259346.P5560818013794541643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006046 (A048298 (n + 1)).toNat

end

end A259346.P5560818013794541643

namespace A259346

/-- `A006046(A048298(n+1))` -/
def P5560818013794541643.Spec : Prop :=
  ∀ n, P5560818013794541643.a n = A259346 (n + 1)

end A259346

/-! ## A259346.P431303772169288024

`A140429(A104117(n+1))`
-/

namespace A259346.P431303772169288024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140429 (A104117 (n + 1)).toNat

end

end A259346.P431303772169288024

namespace A259346

/-- `A140429(A104117(n+1))` -/
def P431303772169288024.Spec : Prop :=
  ∀ n, P431303772169288024.a n = A259346 (n + 1)

end A259346

/-! ## A259346.P10599174715484244403

`A036987(n)*A116552(n)`
-/

namespace A259346.P10599174715484244403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036987 n * A116552 n

end

end A259346.P10599174715484244403

namespace A259346

/-- `A036987(n)*A116552(n)` -/
def P10599174715484244403.Spec : Prop :=
  ∀ n, P10599174715484244403.a n = A259346 (n + 1)

end A259346

/-! ## A259346.P105105369967273574

`A036987(n)*A176205(n)`
-/

namespace A259346.P105105369967273574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036987 n * A176205 n

end

end A259346.P105105369967273574

namespace A259346

/-- `A036987(n)*A176205(n)` -/
def P105105369967273574.Spec : Prop :=
  ∀ n, P105105369967273574.a n = A259346 (n + 1)

end A259346

/-! ## A259346.P8453389141607716637

`A036987(n)*A275667(n)`
-/

namespace A259346.P8453389141607716637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036987 n * A275667 n

end

end A259346.P8453389141607716637

namespace A259346

/-- `A036987(n)*A275667(n)` -/
def P8453389141607716637.Spec : Prop :=
  ∀ n, P8453389141607716637.a n = A259346 (n + 1)

end A259346

/-! ## A259346.P16032394284334493689

`lcm(A048883(n), A127802(n))`
-/

namespace A259346.P16032394284334493689
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A048883 n) (A127802 n)

end

end A259346.P16032394284334493689

namespace A259346

/-- `lcm(A048883(n), A127802(n))` -/
def P16032394284334493689.Spec : Prop :=
  ∀ n, (P16032394284334493689.a n : ℤ) = A259346 (n + 1)

end A259346

/-! ## A259346.P9988541536333791412

`A006046(A135416(2*n+1))`
-/

namespace A259346.P9988541536333791412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006046 (A135416 (2 * n + 1)).toNat

end

end A259346.P9988541536333791412

namespace A259346

/-- `A006046(A135416(2*n+1))` -/
def P9988541536333791412.Spec : Prop :=
  ∀ n, P9988541536333791412.a n = A259346 (n + 1)

end A259346

/-! ## A259346.P13979504732485093358

`A003959(n+1)*A036987(n)`
-/

namespace A259346.P13979504732485093358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003959 (n + 1) * A036987 n

end

end A259346.P13979504732485093358

namespace A259346

/-- `A003959(n+1)*A036987(n)` -/
def P13979504732485093358.Spec : Prop :=
  ∀ n, P13979504732485093358.a n = A259346 (n + 1)

end A259346

/-! ## A259346.P14097302237786321589

`A003961(n+1)*A036987(n)`
-/

namespace A259346.P14097302237786321589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003961 (n + 1) * A036987 n

end

end A259346.P14097302237786321589

namespace A259346

/-- `A003961(n+1)*A036987(n)` -/
def P14097302237786321589.Spec : Prop :=
  ∀ n, P14097302237786321589.a n = A259346 (n + 1)

end A259346

/-! ## A259346.P17163250293598427110

`A006046((n+1)*A036987(n))`
-/

namespace A259346.P17163250293598427110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006046 ((n + 1 : ℤ) * A036987 n).toNat

end

end A259346.P17163250293598427110

namespace A259346

/-- `A006046((n+1)*A036987(n))` -/
def P17163250293598427110.Spec : Prop :=
  ∀ n, P17163250293598427110.a n = A259346 (n + 1)

end A259346

/-!
# A259348: a(n) = n^3 - 8.

The programs for A259348, the canonical program `A259348.P8746163765212420495` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A259348 has offset 0).

The definition of A259348 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n^3-8` (program `A259348.P8746163765212420495`, by `A259348.P8746163765212420495.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A259348.P8746163765212420495

`n^3-8`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A259348

/-- `n^3-8` -/
def P8746163765212420495.Spec : Prop :=
  ∀ n, P8746163765212420495.a n = A259348 n

theorem P8746163765212420495.correct : P8746163765212420495.Spec := by
  intro n
  simp only [A259348]

end A259348

/-!
# A259352: Number of generalized fusenes with n heptagons.

The programs for A259352, there is no canonical definition to state claims against.
-/

/-! ## A259352.P16899886724240324228

`A333018(∑[floor(n/∏{p}[n+1, #])!])`
-/

namespace A259352.P16899886724240324228
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial ⌊(n : ℚ) / ((∏ p ∈ Nat.primeFactors (f2 n), p : ℕ) : ℚ)⌋.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333018 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A259352.P16899886724240324228

/-! ## A259352.P2452205228864676770

`A333018(∏{e}[∑[or(1, n)]+n, (n+1)/#])`
-/

namespace A259352.P2452205228864676770
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333018 (SequenceMachineLib.roundAway (∏ p ∈ Nat.primeFactors (f1 n), (n + 1 : ℚ) / (Nat.factorization (f1 n) p : ℚ))).toNat

end

end A259352.P2452205228864676770

/-!
# A259354: Number of generalized fusenes with n nonagons.

The programs for A259354, there is no canonical definition to state claims against.
-/

/-! ## A259354.P11500830155656527757

`A393745(A055557(n+1)-1)`
-/

namespace A259354.P11500830155656527757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A393745 (A055557 (n + 1) - 1).toNat

end

end A259354.P11500830155656527757

/-! ## A259354.P4732944301637019606

`A040001(A354789(3*n+2))*A393745(n+1)`
-/

namespace A259354.P4732944301637019606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040001 (A354789 (3 * n + 2)).toNat * A393745 (n + 1)

end

end A259354.P4732944301637019606

/-!
# A259355: Number of generalized fusenes with n decagons.

The programs for A259355, there is no canonical definition to state claims against.
-/

/-! ## A259355.P11503880145771561232

`A358025(A124697(n))`
-/

namespace A259355.P11503880145771561232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358025 (A124697 n).toNat

end

end A259355.P11503880145771561232

/-!
# A259356: Triangle T(n,k) read by rows: T(n,k) is the number of closed lambda-terms of size n with size 0 for the variables and k abstractions.

The programs for A259356, there is no canonical definition to state claims against.
-/

/-! ## A259356.P641896753379038996

`A055572(A242379(n)*A264428(n))`
-/

namespace A259356.P641896753379038996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055572 (A242379 n * A264428 n).toNat

end

end A259356.P641896753379038996

/-! ## A259356.P4125776008502194074

`A209281(C(A181854(n), A302997(n)))`
-/

namespace A259356.P4125776008502194074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209281 (Nat.choose (A181854 n).toNat (A302997 n).toNat)

end

end A259356.P4125776008502194074

/-! ## A259356.P9427747506298065312

`A293606(A144287(n+1))-A277537(n)`
-/

namespace A259356.P9427747506298065312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293606 (A144287 (n + 1)).toNat - A277537 n

end

end A259356.P9427747506298065312

/-! ## A259356.P11225202149917339215

`A382430(A000720(n+2)*A097805(n))`
-/

namespace A259356.P11225202149917339215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382430 (A000720 (n + 2) * A097805 n).toNat

end

end A259356.P11225202149917339215

/-! ## A259356.P3337465640175738460

`A002262(A269303(n+1)^A097805(n))`
-/

namespace A259356.P3337465640175738460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 (SequenceMachineLib.roundAway ((A269303 (n + 1) : ℚ) ^ (A097805 n : ℤ))).toNat

end

end A259356.P3337465640175738460

/-!
# A259358: Expansion of f(-x^5)^2 / f(-x^2, -x^3) in powers of x where f(,) is the Ramanujan general theta function.

The programs for A259358, there is no canonical definition to state claims against.
-/

/-! ## A259358.P3885672593870516619

`A297038(A076736(2*n+1))+A005171(n+6)`
-/

namespace A259358.P3885672593870516619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297038 (A076736 (2 * n + 1)).toNat + A005171 (n + 6)

end

end A259358.P3885672593870516619

/-! ## A259358.P6479149711939675803

`A037800(xor(49, A192955(n)))`
-/

namespace A259358.P6479149711939675803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037800 (Int.xor 49 (A192955 n)).toNat

end

end A259358.P6479149711939675803

/-! ## A259358.P11970261585932234756

`A191907(A002445(n))+A185326(n)`
-/

namespace A259358.P11970261585932234756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191907 (A002445 n).toNat + A185326 n

end

end A259358.P11970261585932234756

/-! ## A259358.P13228810148169346345

`A244479(n)-A010059(A164196(n))`
-/

namespace A259358.P13228810148169346345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244479 n - A010059 (A164196 n).toNat

end

end A259358.P13228810148169346345

/-! ## A259358.P15871944389220608570

`A161511(A275820(n)^A385048(n+1))`
-/

namespace A259358.P15871944389220608570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161511 (SequenceMachineLib.roundAway ((A275820 n : ℚ) ^ (A385048 (n + 1) : ℤ))).toNat

end

end A259358.P15871944389220608570

/-!
# A259360: Initial prime in the least set of exactly n+1 consecutive primes with n gaps all multiples of 4.

The programs for A259360, there is no canonical definition to state claims against.
-/

/-! ## A259360.P9960664610386705173

`A359272(A167499(n+1)-1)`
-/

namespace A259360.P9960664610386705173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359272 (A167499 (n + 1) - 1).toNat

end

end A259360.P9960664610386705173

/-! ## A259360.P8249559561479417360

`A359272(A000217(n+3)+1-n)`
-/

namespace A259360.P8249559561479417360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359272 (A000217 (n + 3) + 1 - (n : ℤ)).toNat

end

end A259360.P8249559561479417360

/-! ## A259360.P8410999117112338236

`A359272(A178859(n+1)+A167499(n))`
-/

namespace A259360.P8410999117112338236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359272 (A178859 (n + 1) + A167499 n).toNat

end

end A259360.P8410999117112338236

/-! ## A259360.P2758728398973235

`A000040(A080380(n+1))`
-/

namespace A259360.P2758728398973235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A080380 (n + 1)).toNat

end

end A259360.P2758728398973235

/-!
# A259361: n occurs 2n+2 times.

The programs for A259361, the canonical program `A259361.P16495577185531896410` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A259361 has offset 0).

The definition of A259361 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A259361.P16495577185531896410

`A000194(n+1)-1`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A259361

/-- `A000194(n+1)-1` -/
def P16495577185531896410.Spec : Prop :=
  ∀ n, P16495577185531896410.a n = A259361 n

theorem P16495577185531896410.correct : P16495577185531896410.Spec := by
  intro n
  simp only [A259361]

end A259361

/-! ## A259361.P13086226830452523886

`row(floor(n/2))`
-/

namespace A259361.P13086226830452523886
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.triRow ⌊(n : ℚ) / 2⌋.toNat

end

end A259361.P13086226830452523886

namespace A259361

/-- `row(floor(n/2))` -/
def P13086226830452523886.Spec : Prop :=
  ∀ n, (P13086226830452523886.a n : ℤ) = A259361 n

end A259361

/-! ## A259361.P5630670120143295742

`round(sqrt(n+1))-1`
-/

namespace A259361.P5630670120143295742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (n + 1 : ℝ)) - 1

end

end A259361.P5630670120143295742

namespace A259361

/-- `round(sqrt(n+1))-1` -/
def P5630670120143295742.Spec : Prop :=
  ∀ n, P5630670120143295742.a n = A259361 n

end A259361

/-! ## A259361.P5730313474703735707

`comp[n²]%(n+2)`
-/

namespace A259361.P5730313474703735707
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n % (n + 2)

end

end A259361.P5730313474703735707

namespace A259361

/-- `comp[n²]%(n+2)` -/
def P5730313474703735707.Spec : Prop :=
  ∀ n, (P5730313474703735707.a n : ℤ) = A259361 n

end A259361

/-! ## A259361.P14336846298329889588

`floor(log(cosh(round(sqrt(n+1)))))`
-/

namespace A259361.P14336846298329889588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.log (Real.cosh (SequenceMachineLib.roundAway (Real.sqrt (n + 1 : ℝ)) : ℝ))⌋

end

end A259361.P14336846298329889588

namespace A259361

/-- `floor(log(cosh(round(sqrt(n+1)))))` -/
def P14336846298329889588.Spec : Prop :=
  ∀ n, P14336846298329889588.a n = A259361 n

end A259361

/-! ## A259361.P14739945497405821316

`floor(log(sinh(round(sqrt(n+1)))))`
-/

namespace A259361.P14739945497405821316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.log (Real.sinh (SequenceMachineLib.roundAway (Real.sqrt (n + 1 : ℝ)) : ℝ))⌋

end

end A259361.P14739945497405821316

namespace A259361

/-- `floor(log(sinh(round(sqrt(n+1)))))` -/
def P14739945497405821316.Spec : Prop :=
  ∀ n, P14739945497405821316.a n = A259361 n

end A259361

/-! ## A259361.P2694517021570543258

`round(log(cosh(round(sqrt(n+1)))))`
-/

namespace A259361.P2694517021570543258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.log (Real.cosh (SequenceMachineLib.roundAway (Real.sqrt (n + 1 : ℝ)) : ℝ)))

end

end A259361.P2694517021570543258

namespace A259361

/-- `round(log(cosh(round(sqrt(n+1)))))` -/
def P2694517021570543258.Spec : Prop :=
  ∀ n, P2694517021570543258.a n = A259361 n

end A259361

/-! ## A259361.P3850400627463093535

`round(log(sinh(round(sqrt(n+1)))))`
-/

namespace A259361.P3850400627463093535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.log (Real.sinh (SequenceMachineLib.roundAway (Real.sqrt (n + 1 : ℝ)) : ℝ)))

end

end A259361.P3850400627463093535

namespace A259361

/-- `round(log(sinh(round(sqrt(n+1)))))` -/
def P3850400627463093535.Spec : Prop :=
  ∀ n, P3850400627463093535.a n = A259361 n

end A259361

/-! ## A259361.P3767028382992242392

`∑[char[lcm(n+1, n+2)]]`
-/

namespace A259361.P3767028382992242392
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm (n + 1) (n + 2)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A259361.P3767028382992242392

namespace A259361

/-- `∑[char[lcm(n+1, n+2)]]` -/
def P3767028382992242392.Spec : Prop :=
  ∀ n, (P3767028382992242392.a n : ℤ) = A259361 n

end A259361

/-! ## A259361.P12148958229934091397

`∑[and(1, char[∑[2*(n+1)]])]`
-/

namespace A259361.P12148958229934091397
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 1 (if ∃ j, f2 j = n then 1 else 0)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A259361.P12148958229934091397

namespace A259361

/-- `∑[and(1, char[∑[2*(n+1)]])]` -/
def P12148958229934091397.Spec : Prop :=
  ∀ n, (P12148958229934091397.a n : ℤ) = A259361 n

end A259361

/-! ## A259361.P13876022801789256027

`∑[char[∑[a(n-1)+2]]]` with `a(0)=2`
-/

namespace A259361.P13876022801789256027
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.rec [2] fun n f3 =>
  f3 (n - 1) + 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A259361.P13876022801789256027

namespace A259361

/-- `∑[char[∑[a(n-1)+2]]]` -/
def P13876022801789256027.Spec : Prop :=
  ∀ n, (P13876022801789256027.a n : ℤ) = A259361 n

end A259361

/-! ## A259361.P4461679204607272722

`∑[char[record[(n-1)*(n-2)]]]`
-/

namespace A259361.P4461679204607272722
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - 1) * ((n : ℤ) - 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (SequenceMachineLib.nth (fun j => ∀ l < j, f3 l < f3 j) n)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A259361.P4461679204607272722

namespace A259361

/-- `∑[char[record[(n-1)*(n-2)]]]` -/
def P4461679204607272722.Spec : Prop :=
  ∀ n, (P4461679204607272722.a n : ℤ) = A259361 n

end A259361

/-! ## A259361.P16881562534462832914

`∑[char[∑[2*C(n+1, n)]]]`
-/

namespace A259361.P16881562534462832914
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * Nat.choose (n + 1) n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A259361.P16881562534462832914

namespace A259361

/-- `∑[char[∑[2*C(n+1, n)]]]` -/
def P16881562534462832914.Spec : Prop :=
  ∀ n, (P16881562534462832914.a n : ℤ) = A259361 n

end A259361

/-! ## A259361.P35933863054628363

`floor(sqrt(n-1-a(n-1)))` with `a(0)=0`
-/

namespace A259361.P35933863054628363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  Int.sqrt ((n : ℤ) - 1 - a (n - 1))

end

end A259361.P35933863054628363

namespace A259361

/-- `floor(sqrt(n-1-a(n-1)))` -/
def P35933863054628363.Spec : Prop :=
  ∀ n, P35933863054628363.a n = A259361 n

end A259361

/-! ## A259361.P13899981427451768118

`∑[char[C(n+1, n)+(n+1)²]]`
-/

namespace A259361.P13899981427451768118
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (n + 1) n + (n + 1) ^ 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A259361.P13899981427451768118

namespace A259361

/-- `∑[char[C(n+1, n)+(n+1)²]]` -/
def P13899981427451768118.Spec : Prop :=
  ∀ n, (P13899981427451768118.a n : ℤ) = A259361 n

end A259361

/-! ## A259361.P5891425667264287955

`∑[char[∑[C(n+1, n)+n+1]]]`
-/

namespace A259361.P5891425667264287955
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (n + 1) n + (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A259361.P5891425667264287955

namespace A259361

/-- `∑[char[∑[C(n+1, n)+n+1]]]` -/
def P5891425667264287955.Spec : Prop :=
  ∀ n, (P5891425667264287955.a n : ℤ) = A259361 n

end A259361

/-! ## A259361.P2037905634828793383

`(or(1, ceil(sqrt(4*(n+1))))-3)/2`
-/

namespace A259361.P2037905634828793383
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lor 1 ⌈Real.sqrt (4 * (n + 1) : ℝ)⌉ - 3 : ℚ) / 2

end

end A259361.P2037905634828793383

namespace A259361

/-- `(or(1, ceil(sqrt(4*(n+1))))-3)/2` -/
def P2037905634828793383.Spec : Prop :=
  ∀ n, P2037905634828793383.a n = (A259361 n : ℚ)

end A259361

/-! ## A259361.P13197637320188025892

`floor(n/(n/(a(n-1)+2)+1))` with `a(0)=0`
-/

namespace A259361.P13197637320188025892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  ⌊(n : ℚ) / ((n : ℚ) / (a (n - 1) + 2 : ℚ) + 1)⌋

end

end A259361.P13197637320188025892

namespace A259361

/-- `floor(n/(n/(a(n-1)+2)+1))` -/
def P13197637320188025892.Spec : Prop :=
  ∀ n, P13197637320188025892.a n = A259361 n

end A259361

/-! ## A259361.P2012257812479375318

`floor(sqrt(A028391(n)))`
-/

namespace A259361.P2012257812479375318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A028391 n)

end

end A259361.P2012257812479375318

namespace A259361

/-- `floor(sqrt(A028391(n)))` -/
def P2012257812479375318.Spec : Prop :=
  ∀ n, P2012257812479375318.a n = A259361 n

end A259361

/-! ## A259361.P5828291318718187892

`floor(sqrt(A056847(n)))`
-/

namespace A259361.P5828291318718187892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A056847 n)

end

end A259361.P5828291318718187892

namespace A259361

/-- `floor(sqrt(A056847(n)))` -/
def P5828291318718187892.Spec : Prop :=
  ∀ n, P5828291318718187892.a n = A259361 n

end A259361

/-!
# A259362: a(1) = 1, for n > 1: a(n) is the number of ways to write n as a nontrivial perfect power.

The programs for A259362, the canonical program `A259362.P4800518536678881889` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A259362 has offset 1).

The definition of A259362 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A259362.P15593320694578145630

`A089723(n+1)-ceil(abs(sin(n)))`
-/

namespace A259362.P15593320694578145630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089723 (n + 1) - ⌈|Real.sin (n : ℝ)|⌉

end

end A259362.P15593320694578145630

namespace A259362

/-- `A089723(n+1)-ceil(abs(sin(n)))` -/
def P15593320694578145630.Spec : Prop :=
  ∀ n, P15593320694578145630.a n = A259362 (n + 1)

end A259362

/-! ## A259362.P4800518536678881889

`A089723(n+1)+A057428(n)`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A259362

/-- `A089723(n+1)+A057428(n)` -/
def P4800518536678881889.Spec : Prop :=
  ∀ n, P4800518536678881889.a n = A259362 (n + 1)

theorem P4800518536678881889.correct : P4800518536678881889.Spec := by
  intro n
  simp only [A259362, Nat.add_sub_cancel]

end A259362

/-! ## A259362.P17061555943219891244

`A089723(n+1)-A057427(n)`
-/

namespace A259362.P17061555943219891244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089723 (n + 1) - A057427 n

end

end A259362.P17061555943219891244

namespace A259362

/-- `A089723(n+1)-A057427(n)` -/
def P17061555943219891244.Spec : Prop :=
  ∀ n, P17061555943219891244.a n = A259362 (n + 1)

theorem P17061555943219891244.correct : P17061555943219891244.Spec := by
  intro n
  simp only [A259362, Nat.add_sub_cancel, A259362.P17061555943219891244.a, A259362.P4800518536678881889.a, A057427, A057427.P3058147525557661423.a, A057428, A057428.P2999489532230392221.a, A089723, A089723.P9953764260173719197.a, A000007, A000007.P6599383543502402472.a, A032741, A032741.P3022166995030670566.f1, A032741.P3022166995030670566.a, A052409, A052409.P7338948793466901153.a, A051903, A051903.P13920478898438787932.f1, A051903.P13920478898438787932.a, A051904, A051904.P9263651810596342710.a, A046523, A046523.P3407874444772092792.a, A071178, A071178.P17375525505785378954.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A259362

/-! ## A259362.P2222399663907369617

`A325765(n)-A178638(n+1)`
-/

namespace A259362.P2222399663907369617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325765 n - A178638 (n + 1)

end

end A259362.P2222399663907369617

namespace A259362

/-- `A325765(n)-A178638(n+1)` -/
def P2222399663907369617.Spec : Prop :=
  ∀ n, P2222399663907369617.a n = A259362 (n + 1)

end A259362

/-! ## A259362.P13875887881580180031

`abs(A089723(n+1)-A054977(n))`
-/

namespace A259362.P13875887881580180031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A089723 (n + 1) - A054977 n|

end

end A259362.P13875887881580180031

namespace A259362

/-- `abs(A089723(n+1)-A054977(n))` -/
def P13875887881580180031.Spec : Prop :=
  ∀ n, P13875887881580180031.a n = A259362 (n + 1)

end A259362

/-! ## A259362.P4831589349537537108

`A089723(n+1)-char[A286378(n)]`
-/

namespace A259362.P4831589349537537108
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286378 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089723 (n + 1) - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A259362.P4831589349537537108

namespace A259362

/-- `A089723(n+1)-char[A286378(n)]` -/
def P4831589349537537108.Spec : Prop :=
  ∀ n, P4831589349537537108.a n = A259362 (n + 1)

end A259362

/-! ## A259362.P17165887964583869366

`A089723(n+1)+A000007(n)-1`
-/

namespace A259362.P17165887964583869366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089723 (n + 1) + (A000007 n - 1)

end

end A259362.P17165887964583869366

namespace A259362

/-- `A089723(n+1)+A000007(n)-1` -/
def P17165887964583869366.Spec : Prop :=
  ∀ n, P17165887964583869366.a n = A259362 (n + 1)

theorem P17165887964583869366.correct : P17165887964583869366.Spec := by
  intro n
  simp only [A259362, Nat.add_sub_cancel, A259362.P17165887964583869366.a, A259362.P4800518536678881889.a, A000007, A000007.P6599383543502402472.a, A057428, A057428.P2999489532230392221.a, A089723, A089723.P9953764260173719197.a, A032741, A032741.P3022166995030670566.f1, A032741.P3022166995030670566.a, A052409, A052409.P7338948793466901153.a, A057427, A057427.P3058147525557661423.a, A051903, A051903.P13920478898438787932.f1, A051903.P13920478898438787932.a, A051904, A051904.P9263651810596342710.a, A046523, A046523.P3407874444772092792.a, A071178, A071178.P17375525505785378954.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A259362

/-! ## A259362.P1699444205286967164

`A089723(n+1)-and(1, A003817(n))`
-/

namespace A259362.P1699444205286967164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089723 (n + 1) - Int.land 1 (A003817 n)

end

end A259362.P1699444205286967164

namespace A259362

/-- `A089723(n+1)-and(1, A003817(n))` -/
def P1699444205286967164.Spec : Prop :=
  ∀ n, P1699444205286967164.a n = A259362 (n + 1)

end A259362

/-! ## A259362.P3227079548326125586

`A089723(n+1)-n/A028310(n)`
-/

namespace A259362.P3227079548326125586
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A089723 (n + 1) : ℚ) - (n : ℚ) / (A028310 n : ℚ)

end

end A259362.P3227079548326125586

namespace A259362

/-- `A089723(n+1)-n/A028310(n)` -/
def P3227079548326125586.Spec : Prop :=
  ∀ n, P3227079548326125586.a n = (A259362 (n + 1) : ℚ)

end A259362

/-! ## A259362.P5962652792199258276

`A032741(A052409(n+1))+floor(acot(n))`
-/

namespace A259362.P5962652792199258276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 (A052409 (n + 1)).toNat + ⌊SequenceMachineLib.acot (n : ℝ)⌋

end

end A259362.P5962652792199258276

namespace A259362

/-- `A032741(A052409(n+1))+floor(acot(n))` -/
def P5962652792199258276.Spec : Prop :=
  ∀ n, P5962652792199258276.a n = A259362 (n + 1)

end A259362

/-! ## A259362.P11617305858248476109

`A089723(n+1)-and(1, A000040(n+1))`
-/

namespace A259362.P11617305858248476109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089723 (n + 1) - Int.land 1 (A000040 (n + 1))

end

end A259362.P11617305858248476109

namespace A259362

/-- `A089723(n+1)-and(1, A000040(n+1))` -/
def P11617305858248476109.Spec : Prop :=
  ∀ n, P11617305858248476109.a n = A259362 (n + 1)

end A259362

/-! ## A259362.P8006649310724091546

`A089723(n+1)-and(1, A023260(n+1))`
-/

namespace A259362.P8006649310724091546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089723 (n + 1) - Int.land 1 (A023260 (n + 1))

end

end A259362.P8006649310724091546

namespace A259362

/-- `A089723(n+1)-and(1, A023260(n+1))` -/
def P8006649310724091546.Spec : Prop :=
  ∀ n, P8006649310724091546.a n = A259362 (n + 1)

end A259362

/-! ## A259362.P18129682353058474835

`A089723(n+1)-and(1, A028871(n+1))`
-/

namespace A259362.P18129682353058474835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089723 (n + 1) - Int.land 1 (A028871 (n + 1))

end

end A259362.P18129682353058474835

namespace A259362

/-- `A089723(n+1)-and(1, A028871(n+1))` -/
def P18129682353058474835.Spec : Prop :=
  ∀ n, P18129682353058474835.a n = A259362 (n + 1)

end A259362

/-! ## A259362.P11575379743979367285

`A089723(n+1)-and(1, A039787(n+1))`
-/

namespace A259362.P11575379743979367285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089723 (n + 1) - Int.land 1 (A039787 (n + 1))

end

end A259362.P11575379743979367285

namespace A259362

/-- `A089723(n+1)-and(1, A039787(n+1))` -/
def P11575379743979367285.Spec : Prop :=
  ∀ n, P11575379743979367285.a n = A259362 (n + 1)

end A259362

/-! ## A259362.P13916070174199548746

`A089723(n+1)-and(1, A045326(n+1))`
-/

namespace A259362.P13916070174199548746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089723 (n + 1) - Int.land 1 (A045326 (n + 1))

end

end A259362.P13916070174199548746

namespace A259362

/-- `A089723(n+1)-and(1, A045326(n+1))` -/
def P13916070174199548746.Spec : Prop :=
  ∀ n, P13916070174199548746.a n = A259362 (n + 1)

end A259362

/-! ## A259362.P15312967259074863694

`A089723(n+1)-and(1, A045339(n+1))`
-/

namespace A259362.P15312967259074863694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089723 (n + 1) - Int.land 1 (A045339 (n + 1))

end

end A259362.P15312967259074863694

namespace A259362

/-- `A089723(n+1)-and(1, A045339(n+1))` -/
def P15312967259074863694.Spec : Prop :=
  ∀ n, P15312967259074863694.a n = A259362 (n + 1)

end A259362

/-! ## A259362.P1843290547897690448

`A089723(n+1)-and(1, A045382(n+1))`
-/

namespace A259362.P1843290547897690448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089723 (n + 1) - Int.land 1 (A045382 (n + 1))

end

end A259362.P1843290547897690448

namespace A259362

/-- `A089723(n+1)-and(1, A045382(n+1))` -/
def P1843290547897690448.Spec : Prop :=
  ∀ n, P1843290547897690448.a n = A259362 (n + 1)

end A259362

/-! ## A259362.P4010475839567730210

`A089723(n+1)-and(1, A049001(n+1))`
-/

namespace A259362.P4010475839567730210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089723 (n + 1) - Int.land 1 (A049001 (n + 1))

end

end A259362.P4010475839567730210

namespace A259362

/-- `A089723(n+1)-and(1, A049001(n+1))` -/
def P4010475839567730210.Spec : Prop :=
  ∀ n, P4010475839567730210.a n = A259362 (n + 1)

end A259362

/-! ## A259362.P7197363079650094545

`A089723(n+1)-and(1, A049002(n+1))`
-/

namespace A259362.P7197363079650094545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089723 (n + 1) - Int.land 1 (A049002 (n + 1))

end

end A259362.P7197363079650094545

namespace A259362

/-- `A089723(n+1)-and(1, A049002(n+1))` -/
def P7197363079650094545.Spec : Prop :=
  ∀ n, P7197363079650094545.a n = A259362 (n + 1)

end A259362

/-! ## A259362.P10350478723029354843

`A089723(n+1)-A070879(a(n-1))` with `a(0)=1`
-/

namespace A259362.P10350478723029354843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A089723 (n + 1) - A070879 (a (n - 1)).toNat

end

end A259362.P10350478723029354843

namespace A259362

/-- `A089723(n+1)-A070879(a(n-1))` -/
def P10350478723029354843.Spec : Prop :=
  ∀ n, P10350478723029354843.a n = A259362 (n + 1)

end A259362

/-!
# A259364: a(n) = 18*n^4*(2*n^3 - 23*n^2 + 38*n - 18)^2.

The programs for A259364, the canonical program `A259364.P15971235036146445427` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A259364 has offset 0).

The definition of A259364 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `18*n^4*(2*n^3-23*n²+38*n-18)²` (program `A259364.P15971235036146445427`, by `A259364.P15971235036146445427.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A259364.P15971235036146445427

`18*n^4*(2*n^3-23*n²+38*n-18)²`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A259364

/-- `18*n^4*(2*n^3-23*n²+38*n-18)²` -/
def P15971235036146445427.Spec : Prop :=
  ∀ n, P15971235036146445427.a n = A259364 n

theorem P15971235036146445427.correct : P15971235036146445427.Spec := by
  intro n
  simp only [A259364]

end A259364

/-!
# A259366: Numbers for which the differences between consecutive divisors (ordered by size) are not distinct.

The programs for A259366, there is no canonical definition to state claims against.
-/

/-! ## A259366.P10129484642409619684

`eq[char[A060683(n+1)], A000007(n)]`
-/

namespace A259366.P10129484642409619684
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060683 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A259366.P10129484642409619684

/-! ## A259366.P14545114303152374833

`eq[char[A060683(n+1)], A000038(n)]`
-/

namespace A259366.P14545114303152374833
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060683 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A259366.P14545114303152374833

/-! ## A259366.P10593839853461593655

`eq[char[A060683(n+1)], A151933(n)]`
-/

namespace A259366.P10593839853461593655
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060683 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151933 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A259366.P10593839853461593655

/-! ## A259366.P17505227712158029015

`lt[A215366(A210421(3*n+2)), A006955(n)]`
-/

namespace A259366.P17505227712158029015
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215366 (A210421 (3 * n + 2)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006955 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A259366.P17505227712158029015

/-! ## A259366.P2849668878494192591

`record[A107487(A061373(A205406(n+1)))]`
-/

namespace A259366.P2849668878494192591
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107487 (A061373 (A205406 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A259366.P2849668878494192591

/-!
# A259367: E.g.f.: exp(x-(1-x^3)^(1/3)+1).

The programs for A259367, there is no canonical definition to state claims against.
-/

/-! ## A259367.P24035661875173217

`ceil(∏{e}[5^n, A118396(#)]/3)`
-/

namespace A259367.P24035661875173217
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((∏ p ∈ Nat.primeFactors (f1 n), A118396 (Nat.factorization (f1 n) p) : ℤ) : ℚ) / 3⌉

end

end A259367.P24035661875173217

/-! ## A259367.P5289404677888925395

`A126760(A118395(n))`
-/

namespace A259367.P5289404677888925395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126760 (A118395 n).toNat

end

end A259367.P5289404677888925395

/-! ## A259367.P2666790947243086293

`A126760(A118396(n))`
-/

namespace A259367.P2666790947243086293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126760 (A118396 n).toNat

end

end A259367.P2666790947243086293

/-! ## A259367.P701632816115131904

`A255588(A118395(n)+2)`
-/

namespace A259367.P701632816115131904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255588 (A118395 n + 2).toNat

end

end A259367.P701632816115131904

/-! ## A259367.P13756859500263492710

`(A118396(A073790(n))+2)/3`
-/

namespace A259367.P13756859500263492710
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A118396 (A073790 n).toNat + 2 : ℚ) / 3

end

end A259367.P13756859500263492710

/-!
# A259368: Number of digits in n^n when written in binary.

The programs for A259368, the canonical program `A259368.P5241797532161428290` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A259368 has offset 1).

The definition of A259368 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A259368.P5241797532161428290

`floor((n+1)*log(n+1)/log(2))+1`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A259368

/-- `floor((n+1)*log(n+1)/log(2))+1` -/
def P5241797532161428290.Spec : Prop :=
  ∀ n, P5241797532161428290.a n = A259368 (n + 1)

theorem P5241797532161428290.correct : P5241797532161428290.Spec := by
  intro n
  simp only [A259368, Nat.add_sub_cancel]

end A259368

/-! ## A259368.P4628541146714982003

`A000027(A326299(n+1)+1)`
-/

namespace A259368.P4628541146714982003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A326299 (n + 1) + 1).toNat

end

end A259368.P4628541146714982003

namespace A259368

/-- `A000027(A326299(n+1)+1)` -/
def P4628541146714982003.Spec : Prop :=
  ∀ n, P4628541146714982003.a n = A259368 (n + 1)

end A259368

/-! ## A259368.P5780169063487026359

`xor(A036987(n), A061717(n+1))`
-/

namespace A259368.P5780169063487026359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A036987 n) (A061717 (n + 1))

end

end A259368.P5780169063487026359

namespace A259368

/-- `xor(A036987(n), A061717(n+1))` -/
def P5780169063487026359.Spec : Prop :=
  ∀ n, P5780169063487026359.a n = A259368 (n + 1)

end A259368

/-! ## A259368.P18040498772604834549

`(A326299(n+1)+1)%A069099(n+2)`
-/

namespace A259368.P18040498772604834549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A326299 (n + 1) + 1) (A069099 (n + 2))

end

end A259368.P18040498772604834549

namespace A259368

/-- `(A326299(n+1)+1)%A069099(n+2)` -/
def P18040498772604834549.Spec : Prop :=
  ∀ n, P18040498772604834549.a n = A259368 (n + 1)

end A259368

/-! ## A259368.P16240472196922823687

`or(A326299(n+1)+1, A127733(3*n+2))`
-/

namespace A259368.P16240472196922823687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A326299 (n + 1) + 1) (A127733 (3 * n + 2))

end

end A259368.P16240472196922823687

namespace A259368

/-- `or(A326299(n+1)+1, A127733(3*n+2))` -/
def P16240472196922823687.Spec : Prop :=
  ∀ n, P16240472196922823687.a n = A259368 (n + 1)

end A259368

/-! ## A259368.P5988123510049310121

`floor(log2(A013499(n+1)))`
-/

namespace A259368.P5988123510049310121
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.log 2 (A013499 (n + 1)).toNat

end

end A259368.P5988123510049310121

namespace A259368

/-- `floor(log2(A013499(n+1)))` -/
def P5988123510049310121.Spec : Prop :=
  ∀ n, (P5988123510049310121.a n : ℤ) = A259368 (n + 1)

end A259368

/-! ## A259368.P10791703161748126662

`floor(log2(A100262(n+1)))`
-/

namespace A259368.P10791703161748126662
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.log 2 (A100262 (n + 1)).toNat

end

end A259368.P10791703161748126662

namespace A259368

/-- `floor(log2(A100262(n+1)))` -/
def P10791703161748126662.Spec : Prop :=
  ∀ n, (P10791703161748126662.a n : ℤ) = A259368 (n + 1)

end A259368

/-! ## A259368.P5729543312546361393

`floor(log2(A216147(n+1)))`
-/

namespace A259368.P5729543312546361393
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.log 2 (A216147 (n + 1)).toNat

end

end A259368.P5729543312546361393

namespace A259368

/-- `floor(log2(A216147(n+1)))` -/
def P5729543312546361393.Spec : Prop :=
  ∀ n, (P5729543312546361393.a n : ℤ) = A259368 (n + 1)

end A259368

/-! ## A259368.P9490286989788005662

`floor(log2(A363646(n+1)))`
-/

namespace A259368.P9490286989788005662
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.log 2 (A363646 (n + 1)).toNat

end

end A259368.P9490286989788005662

namespace A259368

/-- `floor(log2(A363646(n+1)))` -/
def P9490286989788005662.Spec : Prop :=
  ∀ n, (P9490286989788005662.a n : ℤ) = A259368 (n + 1)

end A259368

/-! ## A259368.P6394201212185399915

`ceil(log2(A014566(n+1)))`
-/

namespace A259368.P6394201212185399915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.logb 2 (A014566 (n + 1) : ℝ)⌉

end

end A259368.P6394201212185399915

namespace A259368

/-- `ceil(log2(A014566(n+1)))` -/
def P6394201212185399915.Spec : Prop :=
  ∀ n, P6394201212185399915.a n = A259368 (n + 1)

end A259368

/-!
# A259369: a(n) = 1 + sigma(n)^3 + sigma(n)^6.

The programs for A259369, the canonical program `A259369.P6801689028783801420` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A259369 has offset 1).

The definition of A259369 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `1+A000203(n+1)^3+A000203(n+1)^6` (program `A259369.P6801689028783801420`, by `A259369.P6801689028783801420.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A259369.P6801689028783801420

`1+A000203(n+1)^3+A000203(n+1)^6`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A259369

/-- `1+A000203(n+1)^3+A000203(n+1)^6` -/
def P6801689028783801420.Spec : Prop :=
  ∀ n, P6801689028783801420.a n = A259369 (n + 1)

theorem P6801689028783801420.correct : P6801689028783801420.Spec := by
  intro n
  simp only [A259369, Nat.add_sub_cancel]

end A259369

/-! ## A259369.P4055161217146310776

`A060883(A000203(n+1))`
-/

namespace A259369.P4055161217146310776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060883 (A000203 (n + 1)).toNat

end

end A259369.P4055161217146310776

namespace A259369

/-- `A060883(A000203(n+1))` -/
def P4055161217146310776.Spec : Prop :=
  ∀ n, P4055161217146310776.a n = A259369 (n + 1)

end A259369

/-! ## A259369.P13341705262028516334

`A060883(∑{d}[n+1, #])`
-/

namespace A259369.P13341705262028516334
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060883 (∑ d ∈ Nat.divisors (f1 n), d)

end

end A259369.P13341705262028516334

namespace A259369

/-- `A060883(∑{d}[n+1, #])` -/
def P13341705262028516334.Spec : Prop :=
  ∀ n, P13341705262028516334.a n = A259369 (n + 1)

theorem P13341705262028516334.correct : P13341705262028516334.Spec := by
  intro n
  simp only [A259369, Nat.add_sub_cancel, A259369.P13341705262028516334.f1, A259369.P13341705262028516334.a, A259369.P6801689028783801420.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A060883, A060883.P9775535391316657163.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A259369

/-! ## A259369.P11818197008894217870

`A060883(A074400(n+1)/2)`
-/

namespace A259369.P11818197008894217870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060883 (SequenceMachineLib.roundAway ((A074400 (n + 1) : ℚ) / 2)).toNat

end

end A259369.P11818197008894217870

namespace A259369

/-- `A060883(A074400(n+1)/2)` -/
def P11818197008894217870.Spec : Prop :=
  ∀ n, P11818197008894217870.a n = A259369 (n + 1)

end A259369

/-! ## A259369.P769243112726641650

`A060883(A001065(n+1)+1+n)`
-/

namespace A259369.P769243112726641650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060883 (A001065 (n + 1) + 1 + (n : ℤ)).toNat

end

end A259369.P769243112726641650

namespace A259369

/-- `A060883(A001065(n+1)+1+n)` -/
def P769243112726641650.Spec : Prop :=
  ∀ n, P769243112726641650.a n = A259369 (n + 1)

end A259369

/-! ## A259369.P3488953303720262200

`A002604(∑{d}[n+1, #])+A000578(∑{d}[n+1, #])`
-/

namespace A259369.P3488953303720262200
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002604 (∑ d ∈ Nat.divisors (f1 n), d) + A000578 (∑ d ∈ Nat.divisors (f2 n), d)

end

end A259369.P3488953303720262200

namespace A259369

/-- `A002604(∑{d}[n+1, #])+A000578(∑{d}[n+1, #])` -/
def P3488953303720262200.Spec : Prop :=
  ∀ n, P3488953303720262200.a n = A259369 (n + 1)

theorem P3488953303720262200.correct : P3488953303720262200.Spec := by
  intro n
  simp only [A259369, Nat.add_sub_cancel, A259369.P3488953303720262200.f1, A259369.P3488953303720262200.f2, A259369.P3488953303720262200.a, A259369.P6801689028783801420.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A000578, A000578.P12162961755414704816.a, A002604, A002604.P7413616626921950618.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A259369

/-!
# A259371: Primes of the form 1 + sigma(n)^3 + sigma(n)^6.

The programs for A259371, there is no canonical definition to state claims against.
-/

/-! ## A259371.P15840667379024277926

`A259369(A259370(n+1))`
-/

namespace A259371.P15840667379024277926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259369 (A259370 (n + 1)).toNat

end

end A259371.P15840667379024277926

/-! ## A259371.P12694586664360943409

`A060883(∑{d}[A259370(n+1), #])`
-/

namespace A259371.P12694586664360943409
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259370 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060883 (∑ d ∈ Nat.divisors (f1 n).natAbs, d)

end

end A259371.P12694586664360943409

/-!
# A259373: a(n) = Product_{k=0..n} p(k)^k, where p(k) is the partition function A000041.

The programs for A259373, there is no canonical definition to state claims against.
-/

/-! ## A259373.P2301105368184573004

`∏[A133018(n)]`
-/

namespace A259373.P2301105368184573004
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133018 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A259373.P2301105368184573004

/-! ## A259373.P18384893505504947901

`∏[A000041(n)^n]`
-/

namespace A259373.P18384893505504947901
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A259373.P18384893505504947901

/-! ## A259373.P12184917009850675481

`∏[A008634(n)^n]`
-/

namespace A259373.P12184917009850675481
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008634 n ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A259373.P12184917009850675481

/-! ## A259373.P2943659034589025355

`∏[A328546(n)^n]`
-/

namespace A259373.P2943659034589025355
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328546 n ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A259373.P2943659034589025355

/-! ## A259373.P56260207357634025

`∑[A002865(n)]^n*a(n-1)` with `a(0)=1`
-/

namespace A259373.P56260207357634025
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002865 n

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (∑ j ∈ Finset.range (n + 1), f1 j) ^ n * a (n - 1)

end

end A259373.P56260207357634025

/-!
# A259374: Palindromic numbers in bases 3 and 5 written in base 10.

The programs for A259374, there is no canonical definition to state claims against.
-/

/-! ## A259374.P9982964816747974827

`∩[A014190(n+1), A029952(n+1)]`
-/

namespace A259374.P9982964816747974827
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014190 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029952 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A259374.P9982964816747974827

/-! ## A259374.P551332646948482191

`eq[A055951(n)², A055947(n)]`
-/

namespace A259374.P551332646948482191
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055951 n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055947 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A259374.P551332646948482191

/-!
# A259375: Palindromic numbers in bases 3 and 6 written in base 10.

The programs for A259375, there is no canonical definition to state claims against.
-/

/-! ## A259375.P10229041931746525918

`∩[A014190(n+1), A029953(n+1)]`
-/

namespace A259375.P10229041931746525918
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014190 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029953 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A259375.P10229041931746525918

/-! ## A259375.P4942951378601626422

`eq[n, A030105(A030102(n))]`
-/

namespace A259375.P4942951378601626422
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030105 (A030102 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A259375.P4942951378601626422

/-! ## A259375.P11048691195017184638

`eq[A055953(n), A077402(n)]`
-/

namespace A259375.P11048691195017184638
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055953 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077402 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A259375.P11048691195017184638

/-! ## A259375.P17017419038695422646

`eq[A055947(n)², A055953(n)]`
-/

namespace A259375.P17017419038695422646
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055947 n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055953 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A259375.P17017419038695422646

/-! ## A259375.P2936406886906600650

`eq[A055947(n), A056965(A007092(n))]`
-/

namespace A259375.P2936406886906600650
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055947 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056965 (A007092 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A259375.P2936406886906600650

/-!
# A259376: Palindromic numbers in bases 4 and 6 written in base 10.

The programs for A259376, there is no canonical definition to state claims against.
-/

/-! ## A259376.P11721438971029132785

`∩[A014192(n+1), A029953(n+1)]`
-/

namespace A259376.P11721438971029132785
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014192 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029953 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A259376.P11721438971029132785

/-! ## A259376.P10563911588771697444

`eq[n, A030103(A030105(n))]`
-/

namespace A259376.P10563911588771697444
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030103 (A030105 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A259376.P10563911588771697444

/-! ## A259376.P7057971827587005467

`eq[A030105(n), A265546(n)]`
-/

namespace A259376.P7057971827587005467
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030105 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265546 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A259376.P7057971827587005467

/-! ## A259376.P947970047792740270

`eq[A055949(n)², A055953(n)]`
-/

namespace A259376.P947970047792740270
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055949 n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055953 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A259376.P947970047792740270

/-! ## A259376.P5978089080268037826

`eq[2*A265546(n), A055952(n)]`
-/

namespace A259376.P5978089080268037826
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A265546 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055952 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A259376.P5978089080268037826

/-!
# A259377: Palindromic numbers in bases 3 and 7 written in base 10.

The programs for A259377, there is no canonical definition to state claims against.
-/

/-! ## A259377.P145298032123256069

`∩[A014190(n+1), A029954(n+1)]`
-/

namespace A259377.P145298032123256069
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014190 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029954 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A259377.P145298032123256069

/-! ## A259377.P7688635733033404356

`eq[A055955(n), A077402(n)]`
-/

namespace A259377.P7688635733033404356
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055955 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077402 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A259377.P7688635733033404356

/-! ## A259377.P18431260099592878701

`eq[A055947(n)², A055955(n)]`
-/

namespace A259377.P18431260099592878701
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055947 n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055955 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A259377.P18431260099592878701

/-! ## A259377.P182612729768915833

`eq[lcm(n, A055954(n)), A055946(n)]`
-/

namespace A259377.P182612729768915833
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (n : ℤ) (A055954 n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055946 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A259377.P182612729768915833

/-! ## A259377.P7485892233869083319

`eq[A055934(n)*A055955(n), A055947(n)]`
-/

namespace A259377.P7485892233869083319
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055934 n * A055955 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055947 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A259377.P7485892233869083319

/-!
# A259378: Palindromic numbers in bases 4 and 7 written in base 10.

The programs for A259378, there is no canonical definition to state claims against.
-/

/-! ## A259378.P1197654584348801509

`∩[A014192(n+1), A029954(n+1)]`
-/

namespace A259378.P1197654584348801509
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014192 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029954 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A259378.P1197654584348801509

/-! ## A259378.P6366945719408321523

`eq[A030103(n), A030106(n)]`
-/

namespace A259378.P6366945719408321523
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030103 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030106 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A259378.P6366945719408321523

/-! ## A259378.P13574476865335678341

`eq[A055948(n), A055954(n)]`
-/

namespace A259378.P13574476865335678341
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055948 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055954 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A259378.P13574476865335678341

/-! ## A259378.P9045225987385329563

`eq[A055949(n), A055955(n)]`
-/

namespace A259378.P9045225987385329563
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055949 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055955 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A259378.P9045225987385329563

/-! ## A259378.P16813007791929793662

`eq[A030103(n)+n, A055954(n)]`
-/

namespace A259378.P16813007791929793662
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030103 n + (n : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055954 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A259378.P16813007791929793662

/-!
# A259380: Palindromic numbers in bases 2 and 8 written in base 10.

The programs for A259380, there is no canonical definition to state claims against.
-/

/-! ## A259380.P1143354926597275305

`∩[A006995(n+1), A029803(n+1)]`
-/

namespace A259380.P1143354926597275305
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006995 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029803 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A259380.P1143354926597275305

/-! ## A259380.P5832642907545876505

`eq[A030107(n), A062130(n)]`
-/

namespace A259380.P5832642907545876505
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030107 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062130 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A259380.P5832642907545876505

/-! ## A259380.P340533693913056109

`eq[A055957(n), A066057(n)]`
-/

namespace A259380.P340533693913056109
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055957 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066057 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A259380.P340533693913056109

/-! ## A259380.P18114321955322565395

`eq[n, A030107(A175298(n))]`
-/

namespace A259380.P18114321955322565395
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030107 (A175298 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A259380.P18114321955322565395

/-! ## A259380.P3066151788406797921

`eq[A055957(n), A178226(n)]`
-/

namespace A259380.P3066151788406797921
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055957 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178226 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A259380.P3066151788406797921

/-!
# A259381: Palindromic numbers in bases 3 and 8 written in base 10.

The programs for A259381, there is no canonical definition to state claims against.
-/

/-! ## A259381.P229814643898739439

`∩[A014190(n+1), A029803(n+1)]`
-/

namespace A259381.P229814643898739439
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014190 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029803 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A259381.P229814643898739439

/-! ## A259381.P9674614324160669169

`eq[-A055947(n), A055957(n)]`
-/

namespace A259381.P9674614324160669169
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A055947 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055957 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A259381.P9674614324160669169

/-! ## A259381.P6347303694218967193

`eq[A000217(n)*A055947(n), A055957(n)]`
-/

namespace A259381.P6347303694218967193
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 n * A055947 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055957 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A259381.P6347303694218967193

/-! ## A259381.P5455608826695165146

`eq[A033999(n)*A055947(n), A055957(n)]`
-/

namespace A259381.P5455608826695165146
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A055947 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055957 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A259381.P5455608826695165146

/-! ## A259381.P18177719490591547004

`eq[A055957(n), A077402(n)]`
-/

namespace A259381.P18177719490591547004
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055957 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077402 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A259381.P18177719490591547004

/-!
# A259382: Palindromic numbers in bases 4 and 8 written in base 10.

The programs for A259382, there is no canonical definition to state claims against.
-/

/-! ## A259382.P14609632629766819734

`∩[A014192(n+1), A029803(n+1)]`
-/

namespace A259382.P14609632629766819734
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014192 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029803 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A259382.P14609632629766819734

/-! ## A259382.P8447417712212606419

`eq[A030107(n), A265546(n)]`
-/

namespace A259382.P8447417712212606419
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030107 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265546 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A259382.P8447417712212606419

/-! ## A259382.P8942681182296039812

`eq[A055949(n)², A055957(n)]`
-/

namespace A259382.P8942681182296039812
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055949 n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055957 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A259382.P8942681182296039812

/-! ## A259382.P3343716822747297075

`eq[n, A030107(and(n, A030103(n)))]`
-/

namespace A259382.P3343716822747297075
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030107 (Int.land (n : ℤ) (A030103 n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A259382.P3343716822747297075

/-! ## A259382.P11655051649482295494

`eq[n*A030103(n), A030107(n)²]`
-/

namespace A259382.P11655051649482295494
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A030103 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030107 n ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A259382.P11655051649482295494

/-!
# A259383: Palindromic numbers in bases 5 and 8 written in base 10.

The programs for A259383, there is no canonical definition to state claims against.
-/

/-! ## A259383.P18434850299520828335

`∩[A029803(n+1), A029952(n+1)]`
-/

namespace A259383.P18434850299520828335
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029803 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029952 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A259383.P18434850299520828335

/-! ## A259383.P2823143918516016144

`eq[n, A030107(A030104(n))]`
-/

namespace A259383.P2823143918516016144
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030107 (A030104 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A259383.P2823143918516016144

/-! ## A259383.P8445369078672497302

`eq[A055950(n), A055956(n)]`
-/

namespace A259383.P8445369078672497302
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055950 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055956 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A259383.P8445369078672497302

/-! ## A259383.P16677358214798431149

`eq[A055951(n), A055957(n)]`
-/

namespace A259383.P16677358214798431149
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055951 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055957 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A259383.P16677358214798431149

/-! ## A259383.P727849414037260784

`eq[2*A030104(n), A055956(n)]`
-/

namespace A259383.P727849414037260784
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A030104 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055956 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A259383.P727849414037260784

/-!
# A259384: Palindromic numbers in bases 6 and 8 written in base 10.

The programs for A259384, there is no canonical definition to state claims against.
-/

/-! ## A259384.P4229907226689991938

`∩[A029803(n+1), A029953(n+1)]`
-/

namespace A259384.P4229907226689991938
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029803 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029953 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A259384.P4229907226689991938

/-! ## A259384.P3909442554735552610

`eq[A055953(n)², A055957(n)]`
-/

namespace A259384.P3909442554735552610
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055953 n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055957 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A259384.P3909442554735552610

/-! ## A259384.P12576930665119228661

`A259389(a(n-1)+2)` with `a(0)=0`
-/

namespace A259384.P12576930665119228661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A259389 (a (n - 1) + 2).toNat

end

end A259384.P12576930665119228661

/-! ## A259384.P15153439738375600136

`∑[A046912(floor(n/3)*a(n-1))]` with `a(0)=0`
-/

namespace A259384.P15153439738375600136
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f1 =>
  A046912 (⌊(n : ℚ) / 3⌋ * f1 (n - 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A259384.P15153439738375600136

/-!
# A259385: Palindromic numbers in bases 2 and 9 written in base 10.

The programs for A259385, there is no canonical definition to state claims against.
-/

/-! ## A259385.P14758254607768837928

`∩[A006995(n+1), A029955(n+1)]`
-/

namespace A259385.P14758254607768837928
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006995 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029955 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A259385.P14758254607768837928

/-! ## A259385.P10059094652909113206

`∩[A029955(n+1), A180204(n+1)]`
-/

namespace A259385.P10059094652909113206
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029955 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180204 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A259385.P10059094652909113206

/-! ## A259385.P9740957245970927924

`eq[n, A030108(A030101(n))]`
-/

namespace A259385.P9740957245970927924
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030108 (A030101 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A259385.P9740957245970927924

/-! ## A259385.P12707751087320536654

`eq[A055944(n), A055958(n)]`
-/

namespace A259385.P12707751087320536654
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055944 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055958 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A259385.P12707751087320536654

/-! ## A259385.P14247499271463605781

`eq[A055945(n), A055959(n)]`
-/

namespace A259385.P14247499271463605781
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055945 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055959 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A259385.P14247499271463605781

/-!
# A259386: Palindromic numbers in bases 3 and 9 written in base 10.

The programs for A259386, there is no canonical definition to state claims against.
-/

/-! ## A259386.P16125145602523194035

`∩[A014190(n+1), A029955(n+1)]`
-/

namespace A259386.P16125145602523194035
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014190 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029955 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A259386.P16125145602523194035

/-! ## A259386.P8942607268140971460

`eq[A055959(n), A077402(n)]`
-/

namespace A259386.P8942607268140971460
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055959 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077402 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A259386.P8942607268140971460

/-! ## A259386.P8834890929075758559

`eq[A030102(n), A265523(n)]`
-/

namespace A259386.P8834890929075758559
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030102 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265523 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A259386.P8834890929075758559

/-! ## A259386.P9392643520568137259

`eq[A030108(n), A265511(n)]`
-/

namespace A259386.P9392643520568137259
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030108 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265511 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A259386.P9392643520568137259

/-! ## A259386.P13270365895120215901

`eq[A264979(n), A265511(n)]`
-/

namespace A259386.P13270365895120215901
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264979 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265511 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A259386.P13270365895120215901

/-!
# A259387: Palindromic numbers in bases 4 and 9 written in base 10.

The programs for A259387, there is no canonical definition to state claims against.
-/

/-! ## A259387.P3278905466230493309

`∩[A014192(n+1), A029955(n+1)]`
-/

namespace A259387.P3278905466230493309
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014192 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029955 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A259387.P3278905466230493309

/-! ## A259387.P18023128687339848232

`eq[n, A030108(A030103(n))]`
-/

namespace A259387.P18023128687339848232
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030108 (A030103 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A259387.P18023128687339848232

/-! ## A259387.P9629810886605999835

`eq[A055948(n), A055958(n)]`
-/

namespace A259387.P9629810886605999835
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055948 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055958 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A259387.P9629810886605999835

/-! ## A259387.P12669637336689275198

`eq[A055949(n), A055959(n)]`
-/

namespace A259387.P12669637336689275198
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055949 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055959 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A259387.P12669637336689275198

/-! ## A259387.P12525114350383736172

`eq[A265523(n), A265546(n)]`
-/

namespace A259387.P12525114350383736172
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265523 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265546 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A259387.P12525114350383736172

/-!
# A259388: Palindromic numbers in bases 5 and 9 written in base 10.

The programs for A259388, there is no canonical definition to state claims against.
-/

/-! ## A259388.P12411635870355251262

`∩[A029952(n+1), A029955(n+1)]`
-/

namespace A259388.P12411635870355251262
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029952 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029955 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A259388.P12411635870355251262

/-! ## A259388.P7622352083287348447

`eq[n, A265523(A030104(n))]`
-/

namespace A259388.P7622352083287348447
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265523 (A030104 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A259388.P7622352083287348447

/-! ## A259388.P7650529937602025609

`eq[A055959(n)², A055951(n)]`
-/

namespace A259388.P7650529937602025609
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055959 n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055951 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A259388.P7650529937602025609

/-! ## A259388.P3083072452059461882

`eq[2*A265523(n), A055950(n)]`
-/

namespace A259388.P3083072452059461882
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A265523 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055950 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A259388.P3083072452059461882

/-! ## A259388.P13506999874835428472

`eq[n, A265523(A055950(n)/2)]`
-/

namespace A259388.P13506999874835428472
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265523 (SequenceMachineLib.roundAway ((A055950 n : ℚ) / 2)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A259388.P13506999874835428472

/-!
# A259389: Palindromic numbers in bases 6 and 9 written in base 10.

The programs for A259389, there is no canonical definition to state claims against.
-/

/-! ## A259389.P701345107839990145

`∩[A029953(n+1), A029955(n+1)]`
-/

namespace A259389.P701345107839990145
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029953 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029955 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A259389.P701345107839990145

/-! ## A259389.P14130086604101288141

`eq[A055953(n)², A055959(n)]`
-/

namespace A259389.P14130086604101288141
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055953 n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055959 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A259389.P14130086604101288141

/-! ## A259389.P2113372096259621951

`∩[A029953(n+1), eq[n, A030108(n)]]`
-/

namespace A259389.P2113372096259621951
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029953 (n + 1)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030108 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f3 j : ℤ) = f4 j) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = x) n

end

end A259389.P2113372096259621951

/-!
# A259390: Palindromic numbers in bases 7 and 9 written in base 10.

The programs for A259390, there is no canonical definition to state claims against.
-/

/-! ## A259390.P8343965824685783627

`∩[A029954(n+1), A029955(n+1)]`
-/

namespace A259390.P8343965824685783627
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029954 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029955 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A259390.P8343965824685783627

/-! ## A259390.P2558957284780181413

`eq[A055955(n)², A055959(n)]`
-/

namespace A259390.P2558957284780181413
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055955 n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055959 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A259390.P2558957284780181413

/-! ## A259390.P14394935153631416291

`∩[A029954(n+1), A028904(A118600(n+1))]`
-/

namespace A259390.P14394935153631416291
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029954 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028904 (A118600 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A259390.P14394935153631416291

/-! ## A259390.P6467251590635965609

`eq[n, A030108(A030106(n))]`
-/

namespace A259390.P6467251590635965609
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030108 (A030106 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A259390.P6467251590635965609

/-! ## A259390.P3280253066844422129

`eq[A055959(n), A056965(A007093(n))]`
-/

namespace A259390.P3280253066844422129
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055959 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056965 (A007093 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A259390.P3280253066844422129

/-!
# A259392: Expansion of phi(-x^5) * f(x^2, x^8) / psi(-x)^2 in powers of x where phi, psi, f(,) are Ramanujan theta functions.

The programs for A259392, there is no canonical definition to state claims against.
-/

/-! ## A259392.P15211741771628689581

`A132225(5*n+1)`
-/

namespace A259392.P15211741771628689581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132225 (5 * n + 1)

end

end A259392.P15211741771628689581

/-! ## A259392.P14553035258918274081

`record[A132225(n+1)]`
-/

namespace A259392.P14553035258918274081
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132225 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A259392.P14553035258918274081

/-! ## A259392.P16586391715093195162

`abs(record[A132225(A028310(n))])`
-/

namespace A259392.P16586391715093195162
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132225 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)|

end

end A259392.P16586391715093195162

/-! ## A259392.P10911594168294707278

`abs(A132225(A008706(n)+1))`
-/

namespace A259392.P10911594168294707278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A132225 (A008706 n + 1).toNat|

end

end A259392.P10911594168294707278

/-! ## A259392.P7686713495300914976

`A132225(A008706(n)+1)+A000038(n)`
-/

namespace A259392.P7686713495300914976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132225 (A008706 n + 1).toNat + A000038 n

end

end A259392.P7686713495300914976

/-! ## A259392.P4014065314478198458

`gcd(A132225(A008706(n)+1), A285476(n))`
-/

namespace A259392.P4014065314478198458
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A132225 (A008706 n + 1).toNat) (A285476 n)

end

end A259392.P4014065314478198458

/-! ## A259392.P10014579471693236882

`abs(record[A132225(A133310(n))])`
-/

namespace A259392.P10014579471693236882
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132225 (A133310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)|

end

end A259392.P10014579471693236882

/-! ## A259392.P3590536794619428439

`record[A132225(A133310(n))]-n*A000038(n)`
-/

namespace A259392.P3590536794619428439
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132225 (A133310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - (n : ℤ) * A000038 n

end

end A259392.P3590536794619428439

/-! ## A259392.P4838343690707613991

`abs(record[A132225(A008619(n))])`
-/

namespace A259392.P4838343690707613991
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132225 (A008619 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)|

end

end A259392.P4838343690707613991

/-! ## A259392.P13255328237350182986

`A065357(n)²*record[A132225(A008619(n))]`
-/

namespace A259392.P13255328237350182986
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132225 (A008619 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065357 n ^ 2 * f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A259392.P13255328237350182986

/-! ## A259392.P10254073454315825994

`abs(record[A132225(A123108(2*n))])`
-/

namespace A259392.P10254073454315825994
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132225 (A123108 (2 * n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)|

end

end A259392.P10254073454315825994

/-! ## A259392.P13108558976072269212

`record[A132225(A008619(n))]%A020712(n)`
-/

namespace A259392.P13108558976072269212
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132225 (A008619 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)) (A020712 n)

end

end A259392.P13108558976072269212

/-! ## A259392.P12146351181420821335

`record[A132225(A133310(n))]%A000051(n)`
-/

namespace A259392.P12146351181420821335
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132225 (A133310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)) (A000051 n)

end

end A259392.P12146351181420821335

/-! ## A259392.P1064160927585174210

`A132225(Δ[A000566(n)])%A234208(n+1)`
-/

namespace A259392.P1064160927585174210
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000566 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A132225 (f1 (n + 1) - f1 n).toNat) (A234208 (n + 1))

end

end A259392.P1064160927585174210

/-!
# A259393: Expansion of f(-x^3, -x^7) * f(x^4, x^6) / psi(-x)^2 in powers of x where psi(), f(,) are Ramanujan theta functions.

The programs for A259393, there is no canonical definition to state claims against.
-/

/-! ## A259393.P8943422034895573021

`abs(A132225(A008706(n)))`
-/

namespace A259393.P8943422034895573021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A132225 (A008706 n).toNat|

end

end A259393.P8943422034895573021

/-! ## A259393.P16610072991383284705

`record[gcd(A132225(n+1), A145466(n))]`
-/

namespace A259393.P16610072991383284705
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A132225 (n + 1)) (A145466 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A259393.P16610072991383284705

/-! ## A259393.P15173857692220514910

`A000038(n)-A132225(A008706(n))`
-/

namespace A259393.P15173857692220514910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n - A132225 (A008706 n).toNat

end

end A259393.P15173857692220514910

/-! ## A259393.P12841956688383410132

`gcd(A132225(A008706(n)), A285476(n))`
-/

namespace A259393.P12841956688383410132
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A132225 (A008706 n).toNat) (A285476 n)

end

end A259393.P12841956688383410132

/-! ## A259393.P1448642017648614273

`lcm(A033999(n), A132225(A008706(n)))`
-/

namespace A259393.P1448642017648614273
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 n) (A132225 (A008706 n).toNat)

end

end A259393.P1448642017648614273

/-! ## A259393.P12562976827206249097

`A010673(A008574(n))-A132225(A008706(n))`
-/

namespace A259393.P12562976827206249097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010673 (A008574 n).toNat - A132225 (A008706 n).toNat

end

end A259393.P12562976827206249097

/-!
# A259394: Primes of the form (sum of the digits of k to consecutive powers starting at 1) + k, ordered by k (duplicates allowed).

The programs for A259394, there is no canonical definition to state claims against.
-/

/-! ## A259394.P915504413396928718

`p?[(∑{digits}[n, #²]+n)*((n-∑{digits}[n, #])/9)!]`
-/

namespace A259394.P915504413396928718
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (((SequenceMachineLib.digits10 (f2 n)).map fun (x : ℕ) => x ^ 2).sum + n) * Nat.factorial (SequenceMachineLib.roundAway (((n : ℤ) - ((((SequenceMachineLib.digits10 (f3 n)).map fun (x : ℕ) => x).sum : ℕ) : ℤ) : ℚ) / 9)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A259394.P915504413396928718

/-! ## A259394.P18211244229779360569

`p?[A341936(n)+∑{digits}[n, #²]]`
-/

namespace A259394.P18211244229779360569
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341936 n + ((((SequenceMachineLib.digits10 (f2 n)).map fun (x : ℕ) => x ^ 2).sum : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A259394.P18211244229779360569

/-! ## A259394.P14461188946136803480

`A001414(lcm(2^(n-1), a(n-1)))` with `a(0)=2, a(1)=11`
-/

namespace A259394.P14461188946136803480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 11] fun n a =>
  A001414 (Int.lcm (SequenceMachineLib.roundAway ((2 : ℚ) ^ ((n : ℤ) - 1 : ℤ))) (a (n - 1)))

end

end A259394.P14461188946136803480

/-! ## A259394.P8562996095280691809

`A258881(A318699(n))`
-/

namespace A259394.P8562996095280691809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258881 (A318699 n).toNat

end

end A259394.P8562996095280691809

/-! ## A259394.P12415947090489191309

`A258881(A102236(n+1))`
-/

namespace A259394.P12415947090489191309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258881 (A102236 (n + 1)).toNat

end

end A259394.P12415947090489191309

/-!
# A259395: a(n) = -3*n^2*(n-1)^4*(n+1)*(11*n^3+49*n^2-439*n+171).

The programs for A259395, the canonical program `A259395.P7052601559184092951` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A259395 has offset 0).

The definition of A259395 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `-3*n²*(n-1)^4*(n+1)*(11*n^3+49*n²-439*n+171)` (program `A259395.P7052601559184092951`, by `A259395.P7052601559184092951.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A259395.P7052601559184092951

`-3*n²*(n-1)^4*(n+1)*(11*n^3+49*n²-439*n+171)`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A259395

/-- `-3*n²*(n-1)^4*(n+1)*(11*n^3+49*n²-439*n+171)` -/
def P7052601559184092951.Spec : Prop :=
  ∀ n, P7052601559184092951.a n = A259395 n

theorem P7052601559184092951.correct : P7052601559184092951.Spec := by
  intro n
  simp only [A259395]

end A259395

/-!
# A259397: Numbers n with the property that it is possible to write the base 2 expansion of n as concat(a_2,b_2), with a_2>0 and b_2>0 such that, converting a_2 and b_2 to base 10 as a and b, we have phi(a + b) = phi(n), where phi(n) is the Euler totient function of n.

The programs for A259397, there is no canonical definition to state claims against.
-/

/-! ## A259397.P12232897136047257831

`A118586(A030050(n+1))`
-/

namespace A259397.P12232897136047257831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118586 (A030050 (n + 1)).toNat

end

end A259397.P12232897136047257831

/-! ## A259397.P3790074005201439803

`A118586(∩[A005117(n+1), A103969(n+1)])`
-/

namespace A259397.P3790074005201439803
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005117 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103969 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118586 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n)

end

end A259397.P3790074005201439803

/-!
# A259399: a(n) = Sum_{k=0..n} p(k)^2, where p(k) is the partition function A000041.

The programs for A259399, there is no canonical definition to state claims against.
-/

/-! ## A259399.P13544370336427322768

`∑[A001255(n)]`
-/

namespace A259399.P13544370336427322768
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001255 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A259399.P13544370336427322768

/-! ## A259399.P2438920314973169688

`∑[A000041(n)²]`
-/

namespace A259399.P2438920314973169688
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A259399.P2438920314973169688

/-! ## A259399.P14652238183522419898

`∑[∑[A002865(n)]²]`
-/

namespace A259399.P14652238183522419898
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002865 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f2 j) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A259399.P14652238183522419898

/-! ## A259399.P10129979895263646188

`∑[(A000065(n)+1)²]`
-/

namespace A259399.P10129979895263646188
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000065 n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A259399.P10129979895263646188

/-! ## A259399.P14632154866206327615

`∑[A035363(2*n)²]`
-/

namespace A259399.P14632154866206327615
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035363 (2 * n) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A259399.P14632154866206327615

/-! ## A259399.P16648815635789416685

`∑[A119620(2*n)²]`
-/

namespace A259399.P16648815635789416685
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119620 (2 * n) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A259399.P16648815635789416685

/-! ## A259399.P6733087429492806031

`∑[A035377(3*n)²]`
-/

namespace A259399.P6733087429492806031
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035377 (3 * n) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A259399.P6733087429492806031

/-! ## A259399.P9170895315343224286

`∑[(A139582(n)/2)²]`
-/

namespace A259399.P9170895315343224286
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A139582 n : ℚ) / 2) ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A259399.P9170895315343224286

/-! ## A259399.P9452137175542510139

`∑[A035444(4*n)²]`
-/

namespace A259399.P9452137175542510139
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035444 (4 * n) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A259399.P9452137175542510139

/-! ## A259399.P15558818098025627890

`∑[(A299473(n)/3)²]`
-/

namespace A259399.P15558818098025627890
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A299473 n : ℚ) / 3) ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A259399.P15558818098025627890

/-! ## A259399.P11609274158002150133

`∑[(n-A133041(n))²]`
-/

namespace A259399.P11609274158002150133
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - A133041 n) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A259399.P11609274158002150133

/-! ## A259399.P7289123890611889722

`∑[∑[A085811(n+3)]²]`
-/

namespace A259399.P7289123890611889722
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085811 (n + 3)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f2 j) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A259399.P7289123890611889722

/-! ## A259399.P5872669005329637867

`∑[(n-∑[A232697(n)])²]`
-/

namespace A259399.P5872669005329637867
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232697 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - ∑ j ∈ Finset.range (n + 1), f2 j) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A259399.P5872669005329637867

/-! ## A259399.P7909385078752904594

`∑[record[A035363(n+1)²]]+1`
-/

namespace A259399.P7909385078752904594
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035363 (n + 1) ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A259399.P7909385078752904594

/-! ## A259399.P13267124406105709780

`∑[(A228816(n+1)/(n+1))²]`
-/

namespace A259399.P13267124406105709780
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A228816 (n + 1) : ℚ) / (n + 1 : ℚ)) ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A259399.P13267124406105709780

/-! ## A259399.P15708723702390160281

`a(n-1)+A000041(floor((2*n+1)/2))²` with `a(0)=1`
-/

namespace A259399.P15708723702390160281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + A000041 ⌊(2 * n + 1 : ℚ) / 2⌋.toNat ^ 2

end

end A259399.P15708723702390160281

/-! ## A259399.P5833290165982038949

`∑[(A018783(n)+A000837(n))²]`
-/

namespace A259399.P5833290165982038949
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A018783 n + A000837 n) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A259399.P5833290165982038949

/-! ## A259399.P13600844736571030435

`∑[∑[A002865(n)]*A000041(n)]`
-/

namespace A259399.P13600844736571030435
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002865 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f2 j) * A000041 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A259399.P13600844736571030435

/-! ## A259399.P13293038149385146423

`∑[A000041(n)^A020639(2*(n+1))]`
-/

namespace A259399.P13293038149385146423
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000041 n : ℚ) ^ (A020639 (2 * (n + 1)) : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A259399.P13293038149385146423

/-! ## A259399.P3882843249368799457

`a(n-1)+A000041(n)^A020639(2*n)` with `a(0)=1`
-/

namespace A259399.P3882843249368799457
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (A000041 n : ℚ) ^ (A020639 (2 * n) : ℤ)

end

end A259399.P3882843249368799457

