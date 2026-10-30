import SequenceMachineLib
import Mathlib.Tactic
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C003
import Seq.B000.C005
import Seq.B000.C006
import Seq.B000.C007
import Seq.B000.C008
import Seq.B000.C009
import Seq.B000.C010
import Seq.B000.C011
import Seq.B000.C012
import Seq.B000.C013
import Seq.B000.C015
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C037
import Seq.B000.C038
import Seq.B000.C040
import Seq.B000.C043
import Seq.B000.C044
import Seq.B000.C045
import Seq.B000.C046
import Seq.B000.C050
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C008
import Seq.B001.C009
import Seq.B001.C010
import Seq.B001.C011
import Seq.B001.C012
import Seq.B001.C013
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
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
import Seq.Opaque.C024
import SequenceMachineLib.Triangle

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A261600: Number of primitive (aperiodic, or Lyndon) necklaces with n beads such that beads of a largest subset have label 0, beads of a largest remaining subset have label 1, and so on.

The programs for A261600, there is no canonical definition to state claims against.
-/

/-! ## A261600.P14674926494554855769

`A138302(A331156(n))`
-/

namespace A261600.P14674926494554855769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138302 (A331156 n).toNat

end

end A261600.P14674926494554855769

/-! ## A261600.P13059392985672679751

`A008612(A009023(n!))`
-/

namespace A261600.P13059392985672679751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008612 (A009023 (Nat.factorial n)).toNat

end

end A261600.P13059392985672679751

/-! ## A261600.P17499664780111256691

`A110656(2*A000248(n))`
-/

namespace A261600.P17499664780111256691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110656 (2 * A000248 n).toNat

end

end A261600.P17499664780111256691

/-!
# A261601: The number of K-Knuth classes of initial tableaux on n letters.

The programs for A261601, there is no canonical definition to state claims against.
-/

/-! ## A261601.P553938928660956954

`A248607(n*a(n-1)+2)-n` with `a(0)=1, a(1)=1`
-/

namespace A261601.P553938928660956954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A248607 ((n : ℤ) * a (n - 1) + 2).toNat - (n : ℤ)

end

end A261601.P553938928660956954

/-! ## A261601.P15410852865494513126

`A248103(A321481(n²))`
-/

namespace A261601.P15410852865494513126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248103 (A321481 (n ^ 2)).toNat

end

end A261601.P15410852865494513126

/-!
# A261604: a(1)=0. For n>1, a(n) = smallest number > a(n-1) such that, for all m,r<n, a(n) != a(m)^2 + a(r)^2.

The programs for A261604, there is no canonical definition to state claims against.
-/

/-! ## A261604.P6317368368900704564

`lt[A076536(n+1), A123288(A027113(n+1))]`
-/

namespace A261604.P6317368368900704564
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076536 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123288 ((A027113 (n + 1)).toNat + 62)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A261604.P6317368368900704564

/-! ## A261604.P15403772597933636250

`lt[A162296(A034856(n+1)), A344291(2*n+3)]`
-/

namespace A261604.P15403772597933636250
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162296 (A034856 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344291 (2 * n + 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A261604.P15403772597933636250

/-!
# A261606: a(n) = Fibonacci(n) mod 60.

The programs for A261606, the canonical program `A261606.P9097528924869123229` is in `Seq.B001.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A261606 has offset 0).

The definition of A261606 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000045(n)%60` (program `A261606.P9097528924869123229`, by `A261606.P9097528924869123229.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A261606.P11556251905539109259

`(a(n-1)+a(n-2))%60` with `a(0)=0, a(1)=1`
-/

namespace A261606.P11556251905539109259
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 1] fun n a =>
  (a (n - 1) + a (n - 2)) % 60

end

end A261606.P11556251905539109259

namespace A261606

/-- `(a(n-1)+a(n-2))%60` -/
def P11556251905539109259.Spec : Prop :=
  ∀ n, (P11556251905539109259.a n : ℤ) = A261606 n

end A261606

/-! ## A261606.P9097528924869123229

`A000045(n)%60`

The canonical program, it is in `Seq.B001.C010`.
-/

namespace A261606

/-- `A000045(n)%60` -/
def P9097528924869123229.Spec : Prop :=
  ∀ n, P9097528924869123229.a n = A261606 n

theorem P9097528924869123229.correct : P9097528924869123229.Spec := by
  intro n
  simp only [A261606]

end A261606

/-!
# A261607: Initial digit of Fibonacci number F(n) in base 60.

The programs for A261607, there is no canonical definition to state claims against.
-/

/-! ## A261607.P11355949095998925997

`A261575(∑[A261585(n)]-1)`
-/

namespace A261607.P11355949095998925997
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261585 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261575 (∑ j ∈ Finset.range (n + 1), f1 j - 1).toNat

end

end A261607.P11355949095998925997

/-! ## A261607.P9819734452909479183

`A261575(∑[A261585(n)%(n+1)])`
-/

namespace A261607.P9819734452909479183
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A261585 n) (n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261575 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A261607.P9819734452909479183

/-! ## A261607.P11717099039094078564

`A261575(A032518(n))%∑[A144243(n+1)]`
-/

namespace A261607.P11717099039094078564
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144243 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A261575 (A032518 n).toNat) (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A261607.P11717099039094078564

/-! ## A261607.P4785142273128940227

`or(A185284(2*n+1), A261575(A032518(n)))`
-/

namespace A261607.P4785142273128940227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A185284 (2 * n + 1)) (A261575 (A032518 n).toNat)

end

end A261607.P4785142273128940227

/-! ## A261607.P4012571017097586435

`A261575(lt[A000700(3*n+4), A317318(3*n+2)])`
-/

namespace A261607.P4012571017097586435
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000700 (3 * n + 4)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317318 (3 * n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261575 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A261607.P4012571017097586435

/-!
# A261609: Number of composite divisors of n^2+1.

The programs for A261609, the canonical program `A261609.P15255296728293898829` is in `Seq.B006.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A261609 has offset 1).

The definition of A261609 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A261609.P15255296728293898829

`A055212(A002522(n+1))`

The canonical program, it is in `Seq.B006.C001`.
-/

namespace A261609

/-- `A055212(A002522(n+1))` -/
def P15255296728293898829.Spec : Prop :=
  ∀ n, P15255296728293898829.a n = A261609 (n + 1)

theorem P15255296728293898829.correct : P15255296728293898829.Spec := by
  intro n
  simp only [A261609, Nat.add_sub_cancel]

end A261609

/-! ## A261609.P3223094587155842322

`A055212(A278162(n+1))`
-/

namespace A261609.P3223094587155842322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055212 (A278162 (n + 1)).toNat

end

end A261609.P3223094587155842322

namespace A261609

/-- `A055212(A278162(n+1))` -/
def P3223094587155842322.Spec : Prop :=
  ∀ n, P3223094587155842322.a n = A261609 (n + 1)

end A261609

/-! ## A261609.P9467540819145322480

`A033273((n+1)²+1)-1`
-/

namespace A261609.P9467540819145322480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033273 ((n + 1) ^ 2 + 1) - 1

end

end A261609.P9467540819145322480

namespace A261609

/-- `A033273((n+1)²+1)-1` -/
def P9467540819145322480.Spec : Prop :=
  ∀ n, P9467540819145322480.a n = A261609 (n + 1)

end A261609

/-! ## A261609.P12251735107176503041

`A319685((n+1)²+1)-1`
-/

namespace A261609.P12251735107176503041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319685 ((n + 1) ^ 2 + 1) - 1

end

end A261609.P12251735107176503041

namespace A261609

/-- `A319685((n+1)²+1)-1` -/
def P12251735107176503041.Spec : Prop :=
  ∀ n, P12251735107176503041.a n = A261609 (n + 1)

end A261609

/-! ## A261609.P13437970405658747270

`A319686((n+1)²+1)-2`
-/

namespace A261609.P13437970405658747270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319686 ((n + 1) ^ 2 + 1) - 2

end

end A261609.P13437970405658747270

namespace A261609

/-- `A319686((n+1)²+1)-2` -/
def P13437970405658747270.Spec : Prop :=
  ∀ n, P13437970405658747270.a n = A261609 (n + 1)

end A261609

/-! ## A261609.P16791146416345311981

`∑{d}[A261327(A103517(n)), A066247(#)]`
-/

namespace A261609.P16791146416345311981
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261327 (A103517 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A066247 d

end

end A261609.P16791146416345311981

namespace A261609

/-- `∑{d}[A261327(A103517(n)), A066247(#)]` -/
def P16791146416345311981.Spec : Prop :=
  ∀ n, P16791146416345311981.a n = A261609 (n + 1)

end A261609

/-! ## A261609.P7547756963858669095

`A055212((n+1)²+1)`
-/

namespace A261609.P7547756963858669095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055212 ((n + 1) ^ 2 + 1)

end

end A261609.P7547756963858669095

namespace A261609

/-- `A055212((n+1)²+1)` -/
def P7547756963858669095.Spec : Prop :=
  ∀ n, P7547756963858669095.a n = A261609 (n + 1)

end A261609

/-!
# A261611: Expansion of Product_{k>=0} (1 + x^(4*k+1))/(1 - x^(4*k+1)).

The programs for A261611, there is no canonical definition to state claims against.
-/

/-! ## A261611.P16084225570482039611

`A261610(A215090(n)%A161328(3*(n+1)))`
-/

namespace A261611.P16084225570482039611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261610 (Int.tmod (A215090 n) (A161328 (3 * (n + 1)))).toNat

end

end A261611.P16084225570482039611

/-!
# A261612: Expansion of Product_{k>=0} (1 + x^(3*k+1)).

The programs for A261612, there is no canonical definition to state claims against.
-/

/-! ## A261612.P2180493451417184121

`A092130(n+1)+A092130(A000038(n)+n)`
-/

namespace A261612.P2180493451417184121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092130 (n + 1) + A092130 (A000038 n + (n : ℤ)).toNat

end

end A261612.P2180493451417184121

/-! ## A261612.P13189948579937294052

`gcd(A167688(A154336(n)), A284312(n))`
-/

namespace A261612.P13189948579937294052
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A167688 (A154336 n).toNat) (A284312 n)

end

end A261612.P13189948579937294052

/-! ## A261612.P7021737869708861511

`abs(A284312(n%A272384(n+1)))`
-/

namespace A261612.P7021737869708861511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A284312 (Int.tmod (n : ℤ) (A272384 (n + 1))).toNat|

end

end A261612.P7021737869708861511

/-! ## A261612.P15196753795284875539

`lcm(A008836(A007368(n)), A284312(n))`
-/

namespace A261612.P15196753795284875539
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A008836 (A007368 n).toNat) (A284312 n)

end

end A261612.P15196753795284875539

/-! ## A261612.P6915698517743394944

`A000038(A272384(n+1))+abs(A284312(n))`
-/

namespace A261612.P6915698517743394944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 (A272384 (n + 1)).toNat + |A284312 n|

end

end A261612.P6915698517743394944

/-!
# A261614: Numbers that are neither prime (A000040) nor practical (A005153).

The programs for A261614, there is no canonical definition to state claims against.
-/

/-! ## A261614.P2489326525087053045

`filter[A237287(n+1), A005171(#)]`
-/

namespace A261614.P2489326525087053045
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237287 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A005171 (f1 j).toNat = 1) n)

end

end A261614.P2489326525087053045

/-! ## A261614.P1572417429066645938

`filter[A237287(1+n), A066247(#)]`
-/

namespace A261614.P1572417429066645938
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237287 (1 + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A066247 (f1 j).toNat = 1) n)

end

end A261614.P1572417429066645938

/-! ## A261614.P10636551295164085561

`filter[A237287(n+1), A202238(#)]`
-/

namespace A261614.P10636551295164085561
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237287 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A202238 (f1 j).toNat = 1) n)

end

end A261614.P10636551295164085561

/-! ## A261614.P3305494358851082836

`∩[A002808(n+1), A237287(n+1)]`
-/

namespace A261614.P3305494358851082836
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002808 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237287 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A261614.P3305494358851082836

/-! ## A261614.P11323036868049610509

`∩[A018252(n+1), A237287(n+1)]`
-/

namespace A261614.P11323036868049610509
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237287 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A261614.P11323036868049610509

/-! ## A261614.P7860346044667210181

`∩[A056653(n+1), A237287(n+1)]`
-/

namespace A261614.P7860346044667210181
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056653 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237287 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A261614.P7860346044667210181

/-! ## A261614.P1253726970463758989

`∩[A065090(n+1), A237287(n+1)]`
-/

namespace A261614.P1253726970463758989
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065090 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237287 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A261614.P1253726970463758989

/-! ## A261614.P14506974735206319701

`∩[A111774(n+1), A237287(n+1)]`
-/

namespace A261614.P14506974735206319701
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111774 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237287 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A261614.P14506974735206319701

/-! ## A261614.P4689738157593302597

`∩[A141468(n+1), A237287(n+1)]`
-/

namespace A261614.P4689738157593302597
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141468 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237287 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A261614.P4689738157593302597

/-! ## A261614.P17240679146153254266

`∩[A237287(n+1), A391939(n+1)]`
-/

namespace A261614.P17240679146153254266
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237287 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391939 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A261614.P17240679146153254266

/-!
# A261615: Expansion of Product_{k>=0} (1 + x^(3*k+1))^2.

The programs for A261615, there is no canonical definition to state claims against.
-/

/-! ## A261615.P9180323440621530539

`∑{#}[n, A261612(#)*A261612(n-#)]`
-/

namespace A261615.P9180323440621530539
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), A261612 k * A261612 (n - k)

end

end A261615.P9180323440621530539

/-!
# A261616: Expansion of Product_{k>=0} 1/(1 - x^(3*k+1))^2.

The programs for A261616, there is no canonical definition to state claims against.
-/

/-! ## A261616.P3755466951588060770

`∑{#}[n, A035382(#)*A035382(n-#)]`
-/

namespace A261616.P3755466951588060770
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), A035382 k * A035382 (n - k)

end

end A261616.P3755466951588060770

/-! ## A261616.P17504441401547173612

`A003003(record[A255213(n)])`
-/

namespace A261616.P17504441401547173612
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255213 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003003 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A261616.P17504441401547173612

/-! ## A261616.P9457270277046743711

`A003003(A255213(n+1))`
-/

namespace A261616.P9457270277046743711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003003 (A255213 (n + 1)).toNat

end

end A261616.P9457270277046743711

/-! ## A261616.P4009319194454666483

`A035451(A332365(∑[n]+2))`
-/

namespace A261616.P4009319194454666483
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035451 (A332365 (∑ j ∈ Finset.range (n + 1), f1 j + 2)).toNat

end

end A261616.P4009319194454666483

/-! ## A261616.P14622294383728390967

`A035451(3*(n+1))%A241440(n+1)`
-/

namespace A261616.P14622294383728390967
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A035451 (3 * (n + 1))) (A241440 (n + 1))

end

end A261616.P14622294383728390967

/-!
# A261618: Concatenation of n, n+1 and n.

The programs for A261618, the canonical program `A261618.P10123286181822269614` is in `Seq.B003.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A261618 has offset 1).

The definition of A261618 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A261618.P10123286181822269614

`n+1+10^(1+A004216(n+1))*(n+2)+10^(2+A004216(n+1)+A004216(n+2))*(n+1)`

The canonical program, it is in `Seq.B003.C004`.
-/

namespace A261618

/-- `n+1+10^(1+A004216(n+1))*(n+2)+10^(2+A004216(n+1)+A004216(n+2))*(n+1)` -/
def P10123286181822269614.Spec : Prop :=
  ∀ n, P10123286181822269614.a n = (A261618 (n + 1) : ℚ)

end A261618

/-! ## A261618.P6484640959117174772

`A065438(A112131(n+1))`
-/

namespace A261618.P6484640959117174772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065438 (A112131 (n + 1)).toNat

end

end A261618.P6484640959117174772

namespace A261618

/-- `A065438(A112131(n+1))` -/
def P6484640959117174772.Spec : Prop :=
  ∀ n, P6484640959117174772.a n = A261618 (n + 1)

end A261618

/-! ## A261618.P7427267876695970788

`A182324(10*A001704(n+1))`
-/

namespace A261618.P7427267876695970788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182324 (10 * A001704 (n + 1)).toNat

end

end A261618.P7427267876695970788

namespace A261618

/-- `A182324(10*A001704(n+1))` -/
def P7427267876695970788.Spec : Prop :=
  ∀ n, P7427267876695970788.a n = A261618 (n + 1)

end A261618

/-! ## A261618.P6649839870476233370

`A182324(10*A112131(n+1))`
-/

namespace A261618.P6649839870476233370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182324 (10 * A112131 (n + 1)).toNat

end

end A261618.P6649839870476233370

namespace A261618

/-- `A182324(10*A112131(n+1))` -/
def P6649839870476233370.Spec : Prop :=
  ∀ n, P6649839870476233370.a n = A261618 (n + 1)

end A261618

/-! ## A261618.P13902924372240955443

`A028310(n+1)+A008592(A112131(n+1))`
-/

namespace A261618.P13902924372240955443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (n + 1) + A008592 (A112131 (n + 1)).toNat

end

end A261618.P13902924372240955443

namespace A261618

/-- `A028310(n+1)+A008592(A112131(n+1))` -/
def P13902924372240955443.Spec : Prop :=
  ∀ n, P13902924372240955443.a n = A261618 (n + 1)

end A261618

/-!
# A261619: a(n) = floor(prime(n^2) / prime(n)).

The programs for A261619, the canonical program `A261619.P12648590983798145911` is in `Seq.B001.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A261619 has offset 1).

The definition of A261619 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor(A000040((n+1)²)/A000040(n+1))` (program `A261619.P12648590983798145911`, by `A261619.P12648590983798145911.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A261619.P18287792765946674938

`floor(A011757(n+1)/A000040(n+1))`
-/

namespace A261619.P18287792765946674938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A011757 (n + 1) : ℚ) / (A000040 (n + 1) : ℚ)⌋

end

end A261619.P18287792765946674938

namespace A261619

/-- `floor(A011757(n+1)/A000040(n+1))` -/
def P18287792765946674938.Spec : Prop :=
  ∀ n, P18287792765946674938.a n = A261619 (n + 1)

end A261619

/-! ## A261619.P12648590983798145911

`floor(A000040((n+1)²)/A000040(n+1))`

The canonical program, it is in `Seq.B001.C010`.
-/

namespace A261619

/-- `floor(A000040((n+1)²)/A000040(n+1))` -/
def P12648590983798145911.Spec : Prop :=
  ∀ n, P12648590983798145911.a n = A261619 (n + 1)

theorem P12648590983798145911.correct : P12648590983798145911.Spec := by
  intro n
  simp only [A261619, Nat.add_sub_cancel]

end A261619

/-! ## A261619.P5651985696319991723

`floor(A011757(n+1)/Δ[A007504(n)])`
-/

namespace A261619.P5651985696319991723
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A011757 (n + 1) : ℚ) / (f1 (n + 1) - f1 n : ℚ)⌋

end

end A261619.P5651985696319991723

namespace A261619

/-- `floor(A011757(n+1)/Δ[A007504(n)])` -/
def P5651985696319991723.Spec : Prop :=
  ∀ n, P5651985696319991723.a n = A261619 (n + 1)

end A261619

/-! ## A261619.P15868857951949131324

`floor(A011757(n+1)/sqrt(A001248(n+1)))`
-/

namespace A261619.P15868857951949131324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A011757 (n + 1) : ℝ) / Real.sqrt (A001248 (n + 1) : ℝ)⌋

end

end A261619.P15868857951949131324

namespace A261619

/-- `floor(A011757(n+1)/sqrt(A001248(n+1)))` -/
def P15868857951949131324.Spec : Prop :=
  ∀ n, P15868857951949131324.a n = A261619 (n + 1)

end A261619

/-! ## A261619.P15405508692270691351

`floor(A011757(n+1)/∑[A054541(n+1)])`
-/

namespace A261619.P15405508692270691351
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054541 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A011757 (n + 1) : ℚ) / ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ)⌋

end

end A261619.P15405508692270691351

namespace A261619

/-- `floor(A011757(n+1)/∑[A054541(n+1)])` -/
def P15405508692270691351.Spec : Prop :=
  ∀ n, P15405508692270691351.a n = A261619 (n + 1)

end A261619

/-! ## A261619.P8836378572891175487

`floor(A011757(n+1)/record[A259153(n+2)])`
-/

namespace A261619.P8836378572891175487
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259153 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A011757 (n + 1) : ℚ) / (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℚ)⌋

end

end A261619.P8836378572891175487

namespace A261619

/-- `floor(A011757(n+1)/record[A259153(n+2)])` -/
def P8836378572891175487.Spec : Prop :=
  ∀ n, P8836378572891175487.a n = A261619 (n + 1)

end A261619

/-! ## A261619.P16319633085167478219

`floor(A011757(n+1)/(A040976(n+1)+2))`
-/

namespace A261619.P16319633085167478219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A011757 (n + 1) : ℚ) / (A040976 (n + 1) + 2 : ℚ)⌋

end

end A261619.P16319633085167478219

namespace A261619

/-- `floor(A011757(n+1)/(A040976(n+1)+2))` -/
def P16319633085167478219.Spec : Prop :=
  ∀ n, P16319633085167478219.a n = A261619 (n + 1)

theorem P16319633085167478219.correct : P16319633085167478219.Spec := by
  intro n
  simp only [A261619, Nat.add_sub_cancel, A261619.P16319633085167478219.a, A261619.P12648590983798145911.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A011757, A011757.P9513370563335708444.a, A040976, A040976.P11599754272797435513.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A261619

/-! ## A261619.P2331977058642867712

`floor(A011757(n+1)/(A052147(n+1)-2))`
-/

namespace A261619.P2331977058642867712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A011757 (n + 1) : ℚ) / (A052147 (n + 1) - 2 : ℚ)⌋

end

end A261619.P2331977058642867712

namespace A261619

/-- `floor(A011757(n+1)/(A052147(n+1)-2))` -/
def P2331977058642867712.Spec : Prop :=
  ∀ n, P2331977058642867712.a n = A261619 (n + 1)

theorem P2331977058642867712.correct : P2331977058642867712.Spec := by
  intro n
  simp only [A261619, Nat.add_sub_cancel, A261619.P2331977058642867712.a, A261619.P12648590983798145911.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A011757, A011757.P9513370563335708444.a, A052147, A052147.P15217781913070555828.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A261619

/-! ## A261619.P9698651276850067089

`floor(A011757(n+1)/(A086801(n+1)+3))`
-/

namespace A261619.P9698651276850067089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A011757 (n + 1) : ℚ) / (A086801 (n + 1) + 3 : ℚ)⌋

end

end A261619.P9698651276850067089

namespace A261619

/-- `floor(A011757(n+1)/(A086801(n+1)+3))` -/
def P9698651276850067089.Spec : Prop :=
  ∀ n, P9698651276850067089.a n = A261619 (n + 1)

theorem P9698651276850067089.correct : P9698651276850067089.Spec := by
  intro n
  simp only [A261619, Nat.add_sub_cancel, A261619.P9698651276850067089.a, A261619.P12648590983798145911.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A011757, A011757.P9513370563335708444.a, A086801, A086801.P17699144881820784956.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A261619

/-! ## A261619.P4413035365445409681

`floor(A011757(n+1)/(A113935(n+1)-3))`
-/

namespace A261619.P4413035365445409681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A011757 (n + 1) : ℚ) / (A113935 (n + 1) - 3 : ℚ)⌋

end

end A261619.P4413035365445409681

namespace A261619

/-- `floor(A011757(n+1)/(A113935(n+1)-3))` -/
def P4413035365445409681.Spec : Prop :=
  ∀ n, P4413035365445409681.a n = A261619 (n + 1)

theorem P4413035365445409681.correct : P4413035365445409681.Spec := by
  intro n
  simp only [A261619, Nat.add_sub_cancel, A261619.P4413035365445409681.a, A261619.P12648590983798145911.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A011757, A011757.P9513370563335708444.a, A113935, A113935.P8490065931569907193.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A261619

/-! ## A261619.P11523748148078732231

`(A011757(n+1)-A022463(n+1))/A000040(n+1)`
-/

namespace A261619.P11523748148078732231
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A011757 (n + 1) - A022463 (n + 1) : ℚ) / (A000040 (n + 1) : ℚ)

end

end A261619.P11523748148078732231

namespace A261619

/-- `(A011757(n+1)-A022463(n+1))/A000040(n+1)` -/
def P11523748148078732231.Spec : Prop :=
  ∀ n, P11523748148078732231.a n = (A261619 (n + 1) : ℚ)

end A261619

/-! ## A261619.P10757310632383939494

`floor(A011757(n+1)/record[A006530(n+2)])`
-/

namespace A261619.P10757310632383939494
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A011757 (n + 1) : ℚ) / (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℚ)⌋

end

end A261619.P10757310632383939494

namespace A261619

/-- `floor(A011757(n+1)/record[A006530(n+2)])` -/
def P10757310632383939494.Spec : Prop :=
  ∀ n, P10757310632383939494.a n = A261619 (n + 1)

end A261619

/-! ## A261619.P6312945287773888087

`floor(A011757(n+1)/p?[A014681(n)])`
-/

namespace A261619.P6312945287773888087
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014681 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A011757 (n + 1) : ℚ) / (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) : ℚ)⌋

end

end A261619.P6312945287773888087

namespace A261619

/-- `floor(A011757(n+1)/p?[A014681(n)])` -/
def P6312945287773888087.Spec : Prop :=
  ∀ n, P6312945287773888087.a n = A261619 (n + 1)

end A261619

/-! ## A261619.P8996923624601866182

`floor(A011757(n+1)/record[A014963(n+2)])`
-/

namespace A261619.P8996923624601866182
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A011757 (n + 1) : ℚ) / (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℚ)⌋

end

end A261619.P8996923624601866182

namespace A261619

/-- `floor(A011757(n+1)/record[A014963(n+2)])` -/
def P8996923624601866182.Spec : Prop :=
  ∀ n, P8996923624601866182.a n = A261619 (n + 1)

end A261619

/-!
# A261621: Rocket Sequence 42: a(0) = 42, a(n) = A073846(a(n-1)).

The programs for A261621, the canonical program `A261621.P1768049004719597412` is in `Seq.B003.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A261621 has offset 0).

The definition of A261621 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A073846, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A261621.P1768049004719597412

`A073846(a(n-1))` with `a(0)=42`

The canonical program, it is in `Seq.B003.C004`.
-/

namespace A261621

/-- `A073846(a(n-1))` -/
def P1768049004719597412.Spec : Prop :=
  ∀ n, P1768049004719597412.a n = A261621 n

theorem P1768049004719597412.correct : P1768049004719597412.Spec := by
  intro n
  simp only [A261621]

end A261621

/-! ## A261621.P18074268943380402650

`A067747(A233583(a(n-1)))` with `a(0)=42`
-/

namespace A261621.P18074268943380402650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [42] fun n a =>
  A067747 (A233583 (a (n - 1)).toNat).toNat

end

end A261621.P18074268943380402650

namespace A261621

/-- `A067747(A233583(a(n-1)))` -/
def P18074268943380402650.Spec : Prop :=
  ∀ n, P18074268943380402650.a n = A261621 n

end A261621

/-!
# A261625: Number of primes p <= n such that (p-1)*n+1 is prime.

The programs for A261625, there is no canonical definition to state claims against.
-/

/-! ## A261625.P14729821311061261471

`A001221(A244153(n+1)+A174704(n))`
-/

namespace A261625.P14729821311061261471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A244153 (n + 1) + A174704 n).toNat

end

end A261625.P14729821311061261471

/-! ## A261625.P2379756344943914019

`A001221(or(A129988(n), A167934(n)))`
-/

namespace A261625.P2379756344943914019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (Int.lor (A129988 n) (A167934 n)).toNat

end

end A261625.P2379756344943914019

/-! ## A261625.P2054040819871945964

`A056239(n+1)-A001221(A041669(n))`
-/

namespace A261625.P2054040819871945964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056239 (n + 1) - A001221 (A041669 n).toNat

end

end A261625.P2054040819871945964

/-! ## A261625.P3285193024076073990

`A001221(A051164(n)-A131524(n+1))`
-/

namespace A261625.P3285193024076073990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A051164 n - A131524 (n + 1)).toNat

end

end A261625.P3285193024076073990

/-! ## A261625.P10396810306099501593

`A001222(or(A098219(n+1), A285381(n)))`
-/

namespace A261625.P10396810306099501593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (Int.lor (A098219 (n + 1)) (A285381 n)).toNat

end

end A261625.P10396810306099501593

/-!
# A261626: a(n) = Fibonacci(n!) - Fibonacci(n)!.

The programs for A261626, the canonical program `A261626.P4638036100334491215` is in `Seq.B001.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A261626 has offset 0).

The definition of A261626 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000045(n!)-A000045(n)!` (program `A261626.P4638036100334491215`, by `A261626.P4638036100334491215.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A261626.P4638036100334491215

`A000045(n!)-A000045(n)!`

The canonical program, it is in `Seq.B001.C010`.
-/

namespace A261626

/-- `A000045(n!)-A000045(n)!` -/
def P4638036100334491215.Spec : Prop :=
  ∀ n, P4638036100334491215.a n = A261626 n

theorem P4638036100334491215.correct : P4638036100334491215.Spec := by
  intro n
  simp only [A261626]

end A261626

/-!
# A261629: Expansion of Product_{k>=0} 1/(1-x^(4*k+1))^2.

The programs for A261629, there is no canonical definition to state claims against.
-/

/-! ## A261629.P3670816789320366681

`∑{#}[n, A035451(#)*A035451(n-#)]`
-/

namespace A261629.P3670816789320366681
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), A035451 k * A035451 (n - k)

end

end A261629.P3670816789320366681

/-! ## A261629.P8027346224435306853

`∑[A285189(A285048(n))]`
-/

namespace A261629.P8027346224435306853
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285189 (A285048 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A261629.P8027346224435306853

/-! ## A261629.P17703361253652538108

`∑[A285189(abs(A285287(n)))]`
-/

namespace A261629.P17703361253652538108
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285189 |A285287 n|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A261629.P17703361253652538108

/-! ## A261629.P7246904440045935686

`∑[∑[A316827(A296605(n))]]`
-/

namespace A261629.P7246904440045935686
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316827 (A296605 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A261629.P7246904440045935686

/-! ## A261629.P4762650348871952806

`∑[A300219(A259196(n)!)]`
-/

namespace A261629.P4762650348871952806
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300219 (Nat.factorial (A259196 (n + 12)).toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A261629.P4762650348871952806

/-!
# A261630: Expansion of Product_{k>=0} (1+x^(4*k+1))^2.

The programs for A261630, there is no canonical definition to state claims against.
-/

/-! ## A261630.P11034593453392423223

`∑{#}[n, A169975(#)*A169975(n-#)]`
-/

namespace A261630.P11034593453392423223
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), A169975 k * A169975 (n - k)

end

end A261630.P11034593453392423223

/-!
# A261631: Expansion of Product_{k>=0} 1/(1-x^(3*k+1))^3.

The programs for A261631, there is no canonical definition to state claims against.
-/

/-! ## A261631.P16998587487025185290

`∑[∑[A146564(A243333(n+1))]]`
-/

namespace A261631.P16998587487025185290
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146564 (A243333 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A261631.P16998587487025185290

/-! ## A261631.P1776154028999546738

`∑[∑[A327527(A000048(n)^3)]]`
-/

namespace A261631.P1776154028999546738
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327527 (A000048 n ^ 3).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A261631.P1776154028999546738

/-! ## A261631.P10866515965970358973

`A256389(A265065(n))`
-/

namespace A261631.P10866515965970358973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256389 (A265065 n).toNat

end

end A261631.P10866515965970358973

/-! ## A261631.P8354651451618064015

`Δ[A247357(A015128(n))]-1`
-/

namespace A261631.P8354651451618064015
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247357 (A015128 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - 1

end

end A261631.P8354651451618064015

/-! ## A261631.P6968279306500734953

`A320472(A000070(n)-1)-A076489(A295067(n))`
-/

namespace A261631.P6968279306500734953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320472 (A000070 n - 1).toNat - A076489 (A295067 n).toNat

end

end A261631.P6968279306500734953

/-!
# A261632: Expansion of Product_{k>=0} 1/(1-x^(4*k+1))^3.

The programs for A261632, there is no canonical definition to state claims against.
-/

/-! ## A261632.P7184594365963688918

`∑[∑[A027615(A052501(n))]]`
-/

namespace A261632.P7184594365963688918
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027615 (A052501 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A261632.P7184594365963688918

/-! ## A261632.P7527108383209172590

`∑[∑[A240924(A099612(n))]]`
-/

namespace A261632.P7527108383209172590
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240924 (A099612 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A261632.P7527108383209172590

/-! ## A261632.P2266853469341883038

`∑[∑[A282701(A285048(n))]]`
-/

namespace A261632.P2266853469341883038
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282701 (A285048 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A261632.P2266853469341883038

/-! ## A261632.P3320357300694985014

`∑[∑[A280700(A160654(n+2))]]`
-/

namespace A261632.P3320357300694985014
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280700 (A160654 (n + 2)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A261632.P3320357300694985014

/-! ## A261632.P3011741707550453016

`∑[lt[A105361(n+1), A225520(n+4)]+1]`
-/

namespace A261632.P3011741707550453016
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105361 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225520 (n + 4)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < f3 j) n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A261632.P3011741707550453016

/-!
# A261635: Expansion of Product_{k>=0} 1/(1-x^(3*k+1))^4.

The programs for A261635, there is no canonical definition to state claims against.
-/

/-! ## A261635.P15118369896990637562

`∑{#}[n, A261616(#)*A261616(n-#)]`
-/

namespace A261635.P15118369896990637562
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), A261616 k * A261616 (n - k)

end

end A261635.P15118369896990637562

/-! ## A261635.P2366408065170444936

`∑[∑[A008615(A046940(n+1))]]`
-/

namespace A261635.P2366408065170444936
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008615 (A046940 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A261635.P2366408065170444936

/-! ## A261635.P7154208933609141933

`A184419(A256209(n))`
-/

namespace A261635.P7154208933609141933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184419 (A256209 n).toNat

end

end A261635.P7154208933609141933

/-!
# A261636: Expansion of Product_{k>=0} 1/(1-x^(4*k+1))^4.

The programs for A261636, there is no canonical definition to state claims against.
-/

/-! ## A261636.P5081303009773449528

`∑{#}[n, A261629(#)*A261629(n-#)]`
-/

namespace A261636.P5081303009773449528
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), A261629 k * A261629 (n - k)

end

end A261636.P5081303009773449528

/-! ## A261636.P17456887734804424253

`∑[∑[A048266(A140730(n))]]`
-/

namespace A261636.P17456887734804424253
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048266 (A140730 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A261636.P17456887734804424253

/-! ## A261636.P11698965948104810901

`∑[A118759(∑[A140730(n)])]`
-/

namespace A261636.P11698965948104810901
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140730 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118759 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A261636.P11698965948104810901

/-! ## A261636.P17920610593231640268

`∑[∑[A032940(A032555(n+1))]]`
-/

namespace A261636.P17920610593231640268
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032940 (A032555 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A261636.P17920610593231640268

/-!
# A261637: Expansion of Product_{k>=0} (1+x^(3*k+1))^4.

The programs for A261637, there is no canonical definition to state claims against.
-/

/-! ## A261637.P1654333177626947512

`∑{#}[n, A261615(#)*A261615(n-#)]`
-/

namespace A261637.P1654333177626947512
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), A261615 k * A261615 (n - k)

end

end A261637.P1654333177626947512

/-!
# A261638: Expansion of Product_{k>=0} (1+x^(4*k+1))^4.

The programs for A261638, there is no canonical definition to state claims against.
-/

/-! ## A261638.P16516221735780064331

`∑{#}[n, A261630(#)*A261630(n-#)]`
-/

namespace A261638.P16516221735780064331
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), A261630 k * A261630 (n - k)

end

end A261638.P16516221735780064331

/-!
# A261639: Values of n such that prime(n+1)!/prime(n) + 1 is a prime number.

The programs for A261639, there is no canonical definition to state claims against.
-/

/-! ## A261639.P13460270399825274165

`round(sqrt(∑[36*a(n-1)]+1))` with `a(0)=3, a(1)=4, a(2)=8, a(3)=9`
-/

namespace A261639.P13460270399825274165
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [3, 4, 8, 9] fun n f1 =>
  36 * f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt ((∑ j ∈ Finset.range (n + 1), f1 j + 1 : ℕ) : ℝ))

end

end A261639.P13460270399825274165

/-!
# A261640: Numbers n such that the digital sum of n is the same as the digital sum of n^2 in both base 2 and base 10.

The programs for A261640, there is no canonical definition to state claims against.
-/

/-! ## A261640.P5924695895122515166

`∩[A058369(n+1), A077436(n+1)]`
-/

namespace A261640.P5924695895122515166
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058369 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077436 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A261640.P5924695895122515166

/-!
# A261641: Number of practical numbers q such that n+(n mod 2)-q and n-(n mod 2)+q are both practical numbers.

The programs for A261641, there is no canonical definition to state claims against.
-/

/-! ## A261641.P17943533759666455433

`A086342(A282062(n)+A051224(n+1))`
-/

namespace A261641.P17943533759666455433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086342 (A282062 n + A051224 (n + 1)).toNat

end

end A261641.P17943533759666455433

/-! ## A261641.P18046735599254449045

`A124769(lcm(A080079(n+1), A238874(n)))`
-/

namespace A261641.P18046735599254449045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124769 (Int.lcm (A080079 (n + 1)) (A238874 n))

end

end A261641.P18046735599254449045

/-! ## A261641.P11483071512317474600

`A001221(xor(A092570(n+1), A153952(n)))`
-/

namespace A261641.P11483071512317474600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (Int.xor (A092570 (n + 1)) (A153952 n)).toNat

end

end A261641.P11483071512317474600

/-! ## A261641.P3839950241966555886

`A196564(A196748(n+1)+A196529(n+1))`
-/

namespace A261641.P3839950241966555886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196564 (A196748 (n + 1) + A196529 (n + 1)).toNat

end

end A261641.P3839950241966555886

/-! ## A261641.P10596688820225537598

`A294883(A225587(n+1)+A183978(n+1))`
-/

namespace A261641.P10596688820225537598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294883 (A225587 (n + 1) + A183978 (n + 1)).toNat

end

end A261641.P10596688820225537598

/-!
# A261642: Triangle, read by rows, where T(n,k) = (k^2 + k)^(n-k) for k=1..n and n>=1.

The programs for A261642, the canonical program `A261642.P10650183460876633486` is in `Seq.B000.C038`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A261642 has offset 1).

The definition of A261642 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A261642.P10650183460876633486

`((col(n)+1)²+col(n)+1)^(row(n)-col(n))`

The canonical program, it is in `Seq.B000.C038`.
-/

namespace A261642

/-- `((col(n)+1)²+col(n)+1)^(row(n)-col(n))` -/
def P10650183460876633486.Spec : Prop :=
  ∀ n, P10650183460876633486.a n = (A261642 (n + 1) : ℚ)

end A261642

/-! ## A261642.P8785621270651031453

`((col(n)+1)²+col(n)+1)^(row(n)+1-(col(n)+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A261642.P8785621270651031453
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.triCol n + 1) ^ 2 + (SequenceMachineLib.triCol n + 1) : ℚ) ^ ((SequenceMachineLib.triRow n + 1 : ℤ) - (SequenceMachineLib.triCol n + 1 : ℤ) : ℤ)

end

end A261642.P8785621270651031453

namespace A261642

/-- `((col(n)+1)²+col(n)+1)^(row(n)+1-(col(n)+1))` -/
def P8785621270651031453.Spec : Prop :=
  ∀ n, P8785621270651031453.a n = (A261642 (n + 1) : ℚ)

end A261642

/-! ## A261642.P8105846813591962788

`(col(n)+2)^(row(n)-col(n))*(col(n)+1)^(row(n)-col(n))`
-/

namespace A261642.P8105846813591962788
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.triCol n + 2 : ℚ) ^ ((SequenceMachineLib.triRow n : ℤ) - (SequenceMachineLib.triCol n : ℤ) : ℤ) * (SequenceMachineLib.triCol n + 1 : ℚ) ^ ((SequenceMachineLib.triRow n : ℤ) - (SequenceMachineLib.triCol n : ℤ) : ℤ)

end

end A261642.P8105846813591962788

namespace A261642

/-- `(col(n)+2)^(row(n)-col(n))*(col(n)+1)^(row(n)-col(n))` -/
def P8105846813591962788.Spec : Prop :=
  ∀ n, P8105846813591962788.a n = (A261642 (n + 1) : ℚ)

end A261642

/-! ## A261642.P7277809682310944828

`A002378(col(n)+1)^(row(n)-col(n))`
-/

namespace A261642.P7277809682310944828
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002378 (SequenceMachineLib.triCol n + 1) : ℚ) ^ ((SequenceMachineLib.triRow n : ℤ) - (SequenceMachineLib.triCol n : ℤ) : ℤ)

end

end A261642.P7277809682310944828

namespace A261642

/-- `A002378(col(n)+1)^(row(n)-col(n))` -/
def P7277809682310944828.Spec : Prop :=
  ∀ n, P7277809682310944828.a n = (A261642 (n + 1) : ℚ)

end A261642

/-! ## A261642.P1445011013006414723

`A009998(n)*A051129(n+2)`
-/

namespace A261642.P1445011013006414723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009998 n * A051129 (n + 2)

end

end A261642.P1445011013006414723

namespace A261642

/-- `A009998(n)*A051129(n+2)` -/
def P1445011013006414723.Spec : Prop :=
  ∀ n, P1445011013006414723.a n = A261642 (n + 1)

end A261642

/-! ## A261642.P10233228481977171487

`A009998(comp[∑[n]])*A009998(n)`
-/

namespace A261642.P10233228481977171487
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009998 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n) * A009998 n

end

end A261642.P10233228481977171487

namespace A261642

/-- `A009998(comp[∑[n]])*A009998(n)` -/
def P10233228481977171487.Spec : Prop :=
  ∀ n, P10233228481977171487.a n = A261642 (n + 1)

end A261642

/-! ## A261642.P6094700014643492723

`A002378(A128227(n))^A025581(n)`
-/

namespace A261642.P6094700014643492723
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002378 (A128227 n).toNat : ℚ) ^ (A025581 n : ℤ)

end

end A261642.P6094700014643492723

namespace A261642

/-- `A002378(A128227(n))^A025581(n)` -/
def P6094700014643492723.Spec : Prop :=
  ∀ n, P6094700014643492723.a n = (A261642 (n + 1) : ℚ)

end A261642

/-! ## A261642.P116475409462669507

`A002378(A002260(n+1))^A025581(n)`
-/

namespace A261642.P116475409462669507
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002378 (A002260 (n + 1)).toNat : ℚ) ^ (A025581 n : ℤ)

end

end A261642.P116475409462669507

namespace A261642

/-- `A002378(A002260(n+1))^A025581(n)` -/
def P116475409462669507.Spec : Prop :=
  ∀ n, P116475409462669507.a n = (A261642 (n + 1) : ℚ)

end A261642

/-! ## A261642.P5750755730243393070

`A000037(A002260(n+1)²)^A025581(n)`
-/

namespace A261642.P5750755730243393070
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000037 (A002260 (n + 1) ^ 2).toNat : ℚ) ^ (A025581 n : ℤ)

end

end A261642.P5750755730243393070

namespace A261642

/-- `A000037(A002260(n+1)²)^A025581(n)` -/
def P5750755730243393070.Spec : Prop :=
  ∀ n, P5750755730243393070.a n = (A261642 (n + 1) : ℚ)

end A261642

/-! ## A261642.P11792967358911642935

`A051129(n+1)/A002260(n+1)*A051129(n+2)`
-/

namespace A261642.P11792967358911642935
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A051129 (n + 1) : ℚ) / (A002260 (n + 1) : ℚ) * (A051129 (n + 2) : ℚ)

end

end A261642.P11792967358911642935

namespace A261642

/-- `A051129(n+1)/A002260(n+1)*A051129(n+2)` -/
def P11792967358911642935.Spec : Prop :=
  ∀ n, P11792967358911642935.a n = (A261642 (n + 1) : ℚ)

end A261642

/-!
# A261643: a(n) = Sum_{k=1..n} (k^2 + k)^(n-k).

The programs for A261643, the canonical program `A261643.P9236749610697194528` is in `Seq.B000.C038`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A261643 has offset 1).

The definition of A261643 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A261643.P9236749610697194528

`∑{#}[n, ((#+1)²+#+1)^(n+1-(#+1))]`

The canonical program, it is in `Seq.B000.C038`.
-/

namespace A261643

/-- `∑{#}[n, ((#+1)²+#+1)^(n+1-(#+1))]` -/
def P9236749610697194528.Spec : Prop :=
  ∀ n, P9236749610697194528.a n = (A261643 (n + 1) : ℚ)

end A261643

/-!
# A261644: Distance of A260273(n) to next power of 2.

The programs for A261644, there is no canonical definition to state claims against.
-/

/-! ## A261644.P16975539747734157796

`A062383(A260273(n+1))-A260273(n+1)`
-/

namespace A261644.P16975539747734157796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062383 (A260273 (n + 1)).toNat - A260273 (n + 1)

end

end A261644.P16975539747734157796

/-! ## A261644.P10754168270664778728

`A261645(n)+a(n-1)` with `a(0)=1`
-/

namespace A261644.P10754168270664778728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A261645 n + a (n - 1)

end

end A261644.P10754168270664778728

/-! ## A261644.P11099082659356640738

`∑[A261645(A028310(n))]+1`
-/

namespace A261644.P11099082659356640738
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261645 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A261644.P11099082659356640738

/-! ## A261644.P848715180829998135

`∑[A261645(n+1)]+1-A261645(n+1)`
-/

namespace A261644.P848715180829998135
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261645 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (1 - A261645 (n + 1))

end

end A261644.P848715180829998135

/-! ## A261644.P12395182931286790273

`A080079(A260273(n+1))`
-/

namespace A261644.P12395182931286790273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080079 (A260273 (n + 1)).toNat

end

end A261644.P12395182931286790273

/-!
# A261645: First differences of A261644, seen as flattened list.

The programs for A261645, there is no canonical definition to state claims against.
-/

/-! ## A261645.P1346326674413203236

`Δ[A261644(n+1)]`
-/

namespace A261645.P1346326674413203236
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261644 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A261645.P1346326674413203236

/-! ## A261645.P16741066894608811765

`A261644(n+2)-A261644(n+1)`
-/

namespace A261645.P16741066894608811765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261644 (n + 2) - A261644 (n + 1)

end

end A261645.P16741066894608811765

/-! ## A261645.P1359296342492003795

`Δ[A035327(A260273(n+1))]`
-/

namespace A261645.P1359296342492003795
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035327 (A260273 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A261645.P1359296342492003795

/-! ## A261645.P4065982586297663415

`Δ[A062383(A260273(n+1))]-A261018(n+1)`
-/

namespace A261645.P4065982586297663415
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062383 (A260273 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A261018 (n + 1)

end

end A261645.P4065982586297663415

/-! ## A261645.P16544793089908163358

`Δ[A080079(A260273(n+1))%A023205(n+1)]`
-/

namespace A261645.P16544793089908163358
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A080079 (A260273 (n + 1)).toNat) (A023205 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A261645.P16544793089908163358

/-! ## A261645.P16975013298903328192

`A000038(3*n+1)+Δ[A080079(A260273(n+1))]`
-/

namespace A261645.P16975013298903328192
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080079 (A260273 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 (3 * n + 1) + (f1 (n + 1) - f1 n)

end

end A261645.P16975013298903328192

/-!
# A261646: Row lengths in A261644.

The programs for A261646, there is no canonical definition to state claims against.
-/

/-! ## A261646.P3651592322551881514

`A261396(n+1)-A261396(n)`
-/

namespace A261646.P3651592322551881514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261396 (n + 1) - A261396 n

end

end A261646.P3651592322551881514

/-! ## A261646.P12637726013582224509

`Δ[A261396(n)]`
-/

namespace A261646.P12637726013582224509
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261396 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A261646.P12637726013582224509

/-! ## A261646.P9180026337388491795

`record[A261396(A286543(n))]-A261396(n)`
-/

namespace A261646.P9180026337388491795
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261396 (A286543 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A261396 n

end

end A261646.P9180026337388491795

/-! ## A261646.P13223297718333159008

`Δ[lt[A261712(n+1), 5]]`
-/

namespace A261646.P13223297718333159008
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261712 (n + 1)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < (f3 j : ℤ)) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A261646.P13223297718333159008

/-! ## A261646.P569883023526790894

`A028310(A261396(n+1)%A261396(n))`
-/

namespace A261646.P569883023526790894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (Int.tmod (A261396 (n + 1)) (A261396 n)).toNat

end

end A261646.P569883023526790894

/-!
# A261647: Expansion of Product_{k>=0} ((1+x^(2*k+1))/(1-x^(2*k+1)))^3.

The programs for A261647, there is no canonical definition to state claims against.
-/

/-! ## A261647.P16583312345015257954

`A289522(∑[n+3]+n+3)`
-/

namespace A261647.P16583312345015257954
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289522 (∑ j ∈ Finset.range (n + 1), f1 j + (n + 3))

end

end A261647.P16583312345015257954

/-! ## A261647.P11649343808176689710

`record[A289522(abs(A046691(n)))]`
-/

namespace A261647.P11649343808176689710
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289522 |A046691 n|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A261647.P11649343808176689710

/-! ## A261647.P13030249865258895071

`record[A289522(lt[1, A144393(n+2)])]`
-/

namespace A261647.P13030249865258895071
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144393 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289522 (SequenceMachineLib.nth (fun j => (f2 j : ℤ) < f3 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A261647.P13030249865258895071

/-! ## A261647.P14935325644326552301

`record[A289522(n)%A144393(n+2)!]`
-/

namespace A261647.P14935325644326552301
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A289522 n) (Nat.factorial (A144393 (n + 2)).toNat : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A261647.P14935325644326552301

/-!
# A261648: Expansion of Product_{k>=0} ((1+x^(2*k+1))/(1-x^(2*k+1)))^5.

The programs for A261648, there is no canonical definition to state claims against.
-/

/-! ## A261648.P15207693732286938260

`A289522(eq[6, C(comp[∑[n]]-n, 2)-n])`
-/

namespace A261648.P15207693732286938260
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f4 j

open Classical in
def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f3 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 : ℤ) - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289522 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A261648.P15207693732286938260

/-! ## A261648.P13124239883419887813

`A289522(A055999(n+3))`
-/

namespace A261648.P13124239883419887813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289522 (A055999 (n + 3)).toNat

end

end A261648.P13124239883419887813

/-! ## A261648.P14656632704750723952

`A289522(eq[5, A025581(n)])`
-/

namespace A261648.P14656632704750723952
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289522 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A261648.P14656632704750723952

/-!
# A261649: Expansion of Product_{k>=0} ((1+x^(3*k+1))/(1-x^(3*k+1)))^2.

The programs for A261649, there is no canonical definition to state claims against.
-/

/-! ## A261649.P6082322117325098349

`∑{#}[n, A261610(#)*A261610(n-#)]`
-/

namespace A261649.P6082322117325098349
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), A261610 k * A261610 (n - k)

end

end A261649.P6082322117325098349

/-!
# A261650: Expansion of Product_{k>=0} ((1+x^(4*k+1))/(1-x^(4*k+1)))^2.

The programs for A261650, there is no canonical definition to state claims against.
-/

/-! ## A261650.P12847937283241133531

`∑{#}[n, A261611(#)*A261611(n-#)]`
-/

namespace A261650.P12847937283241133531
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), A261611 k * A261611 (n - k)

end

end A261650.P12847937283241133531

/-! ## A261650.P3879008590454912163

`record[A131112(A055570(n))]`
-/

namespace A261650.P3879008590454912163
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131112 (A055570 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A261650.P3879008590454912163

/-! ## A261650.P9107852932655592135

`record[A131112(A131469(n))]`
-/

namespace A261650.P9107852932655592135
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131112 (A131469 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A261650.P9107852932655592135

/-! ## A261650.P6771949629795878412

`record[A131112(A195829(n+1))]`
-/

namespace A261650.P6771949629795878412
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131112 (A195829 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A261650.P6771949629795878412

/-! ## A261650.P13335430845455165560

`record[A131112(A238288(n+1))]`
-/

namespace A261650.P13335430845455165560
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131112 (A238288 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A261650.P13335430845455165560

/-!
# A261651: Expansion of Product_{k>=0} ((1+x^(3*k+1))/(1-x^(3*k+1)))^3.

The programs for A261651, there is no canonical definition to state claims against.
-/

/-! ## A261651.P11850688413520848633

`A234694(A001576(n))+A006003(n+1)`
-/

namespace A261651.P11850688413520848633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234694 (A001576 n).toNat + A006003 (n + 1)

end

end A261651.P11850688413520848633

/-! ## A261651.P8855933381328767275

`A307699(floor(2/acot(n))+2^n)`
-/

namespace A261651.P8855933381328767275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307699 (⌊2 / SequenceMachineLib.acot (n : ℝ)⌋ + (2 ^ n : ℤ)).toNat

end

end A261651.P8855933381328767275

/-!
# A261652: Expansion of Product_{k>=0} ((1+x^(4*k+1))/(1-x^(4*k+1)))^3.

The programs for A261652, there is no canonical definition to state claims against.
-/

/-! ## A261652.P5618984633038046507

`∏{e}[A152297(n), #+1]+(2*n)²`
-/

namespace A261652.P5618984633038046507
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152297 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, (Nat.factorization (f1 n).natAbs p + 1) + (2 * n) ^ 2

end

end A261652.P5618984633038046507

/-! ## A261652.P17911948920203269162

`A087753(A008005(n))`
-/

namespace A261652.P17911948920203269162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087753 (A008005 n).toNat

end

end A261652.P17911948920203269162

/-!
# A261653: Number of primes p < n such that n-p-1 and n+p+1 are both prime or both practical.

The programs for A261653, there is no canonical definition to state claims against.
-/

/-! ## A261653.P16333552252455049537

`A031346(A175182(3*(n+1))+A035082(n))`
-/

namespace A261653.P16333552252455049537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031346 (A175182 (3 * (n + 1)) + A035082 n).toNat

end

end A261653.P16333552252455049537

/-! ## A261653.P6107301284852897560

`A072670(A264078(n)+1)`
-/

namespace A261653.P6107301284852897560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072670 (A264078 n + 1).toNat

end

end A261653.P6107301284852897560

/-! ## A261653.P7356177337610348824

`A005087(A336632(n)+1)`
-/

namespace A261653.P7356177337610348824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005087 (A336632 n + 1).toNat

end

end A261653.P7356177337610348824

/-! ## A261653.P18018500255345289999

`A276007(A261682(n+1))`
-/

namespace A261653.P18018500255345289999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276007 (A261682 (n + 1)).toNat

end

end A261653.P18018500255345289999

/-! ## A261653.P4453031277539251958

`A060130(n)%A060130(A384271(n))`
-/

namespace A261653.P4453031277539251958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A060130 n) (A060130 (A384271 n).toNat)

end

end A261653.P4453031277539251958

/-!
# A261654: Lead almost-Pythagorean triples generated by primitive Pythagorean triples of the form (2i-1, 2i^2-2i, 2i^2-2i+1), i >= 2.

The programs for A261654, there is no canonical definition to state claims against.
-/

/-! ## A261654.P681993809039674912

`A057979((A004396(n)+2)²)+A004396(n+4)`
-/

namespace A261654.P681993809039674912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057979 ((A004396 n + 2) ^ 2).toNat + A004396 (n + 4)

end

end A261654.P681993809039674912

/-! ## A261654.P10286556117783305581

`A057979(A002264(2*n+7)²)+A002264(2*n)+3`
-/

namespace A261654.P10286556117783305581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057979 (A002264 (2 * n + 7) ^ 2).toNat + (A002264 (2 * n) + 3)

end

end A261654.P10286556117783305581

/-!
# A261655: Squares equal to the difference between two successive primes of the form k^2+2 in the order in which they appear in A056899.

The programs for A261655, there is no canonical definition to state claims against.
-/

/-! ## A261655.P9754362512570033232

`record[A046523(A005892(n))²]`
-/

namespace A261655.P9754362512570033232
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046523 (A005892 n).toNat ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A261655.P9754362512570033232

/-!
# A261659: a(n) = sqrt(A261655(n)/144) for n>1.

The programs for A261659, there is no canonical definition to state claims against.
-/

/-! ## A261659.P4625210417184512364

`sqrt(A261655(n+2)/144)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A261659.P4625210417184512364
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt ((A261655 (n + 2) : ℚ) / 144 : ℝ)

end

end A261659.P4625210417184512364

/-! ## A261659.P5869651668425397166

`A051724(sqrt(A261655(n+2)))`
-/

namespace A261659.P5869651668425397166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051724 (SequenceMachineLib.roundAway (Real.sqrt (A261655 (n + 2) : ℝ))).toNat

end

end A261659.P5869651668425397166

/-!
# A261660: In base 3, 0, together with numbers of the form i00j00k00m00... where i = 1 or 2 and j,k,m,... are 0, 1, or 2.

The programs for A261660, there is no canonical definition to state claims against.
-/

/-! ## A261660.P4515075429212449595

`A007089(A261661(n))`
-/

namespace A261660.P4515075429212449595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007089 (A261661 n).toNat

end

end A261660.P4515075429212449595

/-! ## A261660.P7336759170493299197

`A007090(eq[A000120(n), A304118(n+1)])`
-/

namespace A261660.P7336759170493299197
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304118 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007090 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A261660.P7336759170493299197

/-! ## A261660.P6684610632072282481

`eq[A062028(n)-n, A105700(A340479(n))]`
-/

namespace A261660.P6684610632072282481
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062028 n - (n : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105700 (A340479 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A261660.P6684610632072282481

/-! ## A261660.P8914939478088038460

`lt[A113581(n), 4]`
-/

namespace A261660.P8914939478088038460
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113581 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A261660.P8914939478088038460

/-!
# A261661: Numbers in A261660 converted to base 10.

The programs for A261661, there is no canonical definition to state claims against.
-/

/-! ## A261661.P6409909758152072736

`A028898(A261660(n+1))`
-/

namespace A261661.P6409909758152072736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028898 (A261660 (n + 1)).toNat

end

end A261661.P6409909758152072736

/-!
# A261663: Number of equivalence classes of permutations avoiding the pattern {123}.

The programs for A261663, there is no canonical definition to state claims against.
-/

/-! ## A261663.P13395502205569977760

`round(A002992(n+3)-log(A326114(n+1)))`
-/

namespace A261663.P13395502205569977760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A002992 (n + 3) : ℝ) - Real.log (A326114 (n + 1) : ℝ))

end

end A261663.P13395502205569977760

/-!
# A261664: Number of equivalence classes of permutations avoiding the pattern {231}.

The programs for A261664, there is no canonical definition to state claims against.
-/

/-! ## A261664.P1017163648982379405

`A355043(n)-char[9]`
-/

namespace A261664.P1017163648982379405
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355043 n - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A261664.P1017163648982379405

/-! ## A261664.P4231133741924346977

`A228722(A238438(n))`
-/

namespace A261664.P4231133741924346977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228722 (A238438 n).toNat

end

end A261664.P4231133741924346977

/-! ## A261664.P5414607679221982843

`A228722(A257104(n))`
-/

namespace A261664.P5414607679221982843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228722 (A257104 n).toNat

end

end A261664.P5414607679221982843

/-! ## A261664.P1173644126701451284

`A228722(A355043(n))`
-/

namespace A261664.P1173644126701451284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228722 (A355043 n).toNat

end

end A261664.P1173644126701451284

/-! ## A261664.P10779080033158432480

`A199410(n)-A137747(n)`
-/

namespace A261664.P10779080033158432480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199410 n - A137747 n

end

end A261664.P10779080033158432480

/-!
# A261666: Expansion of 1/(1-x-x^2+x^6+x^8-x^15) - 1/(1-x).

The programs for A261666, there is no canonical definition to state claims against.
-/

/-! ## A261666.P17604941445471027694

`A323048(A393207(n))`
-/

namespace A261666.P17604941445471027694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323048 (A393207 n).toNat

end

end A261666.P17604941445471027694

/-! ## A261666.P9130370157669899859

`A003056(∑[∑[A006054(n)]])`
-/

namespace A261666.P9130370157669899859
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006054 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A261666.P9130370157669899859

/-! ## A261666.P14193216020300385705

`A225687(A062941(n+1))-2`
-/

namespace A261666.P14193216020300385705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225687 (A062941 (n + 1)).toNat - 2

end

end A261666.P14193216020300385705

/-! ## A261666.P10473916475839576976

`A225687(A181354(n+1))-2`
-/

namespace A261666.P10473916475839576976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225687 (A181354 (n + 1)).toNat - 2

end

end A261666.P10473916475839576976

/-! ## A261666.P4710546858514569866

`A003056(∑[∑[A187069(2*n)]])`
-/

namespace A261666.P4710546858514569866
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187069 (2 * n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A261666.P4710546858514569866

/-!
# A261667: Dimension of a certain space of duality relations arising in study of q-analogs of multiple zeta values.

The programs for A261667, there is no canonical definition to state claims against.
-/

/-! ## A261667.P17958912108042111397

`A000071(n+3)-A261666(n+2)`
-/

namespace A261667.P17958912108042111397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000071 (n + 3) - A261666 (n + 2)

end

end A261667.P17958912108042111397

/-! ## A261667.P6945580958866531000

`A338430(A148105(n))`
-/

namespace A261667.P6945580958866531000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338430 (A148105 n).toNat

end

end A261667.P6945580958866531000

/-! ## A261667.P13389722355287618701

`A248333(A141002(n+1))`
-/

namespace A261667.P13389722355287618701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248333 (A141002 (n + 1)).toNat

end

end A261667.P13389722355287618701

/-! ## A261667.P11970362996120046712

`A192804(n)-A034178(A133494(n))`
-/

namespace A261667.P11970362996120046712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192804 n - A034178 (A133494 n).toNat

end

end A261667.P11970362996120046712

/-! ## A261667.P13113025239332227612

`A320847(A374686(n)-A000045(n))`
-/

namespace A261667.P13113025239332227612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320847 (A374686 n - A000045 n).toNat

end

end A261667.P13113025239332227612

/-!
# A261668: Number of admissible words of Type G arising in study of q-analogs of multiple zeta values.

The programs for A261668, the canonical program `A261668.P6004121824566571352` is in `Seq.B001.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A261668 has offset 1).

The definition of A261668 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A261668.P6004121824566571352

`A225006(n+1)-1`

The canonical program, it is in `Seq.B001.C010`.
-/

namespace A261668

/-- `A225006(n+1)-1` -/
def P6004121824566571352.Spec : Prop :=
  ∀ n, P6004121824566571352.a n = A261668 (n + 1)

theorem P6004121824566571352.correct : P6004121824566571352.Spec := by
  intro n
  simp only [A261668, Nat.add_sub_cancel]

end A261668

/-! ## A261668.P6297877273523373876

`∑{#}[n, C(2*(#+1)+n+1-1, n)]`
-/

namespace A261668.P6297877273523373876
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), Nat.choose ((2 * (k + 1) + (n + 1) : ℤ) - 1).toNat n

end

end A261668.P6297877273523373876

namespace A261668

/-- `∑{#}[n, C(2*(#+1)+n+1-1, n)]` -/
def P6297877273523373876.Spec : Prop :=
  ∀ n, (P6297877273523373876.a n : ℤ) = A261668 (n + 1)

end A261668

/-! ## A261668.P3286240454580525693

`∑[abs(Δ[A225006(n)])]`
-/

namespace A261668.P3286240454580525693
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225006 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f2 (n + 1) - f2 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A261668.P3286240454580525693

namespace A261668

/-- `∑[abs(Δ[A225006(n)])]` -/
def P3286240454580525693.Spec : Prop :=
  ∀ n, P3286240454580525693.a n = A261668 (n + 1)

end A261668

/-! ## A261668.P9734544362901255498

`A225010((n+1)²+n²)-1`
-/

namespace A261668.P9734544362901255498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225010 ((n + 1) ^ 2 + n ^ 2) - 1

end

end A261668.P9734544362901255498

namespace A261668

/-- `A225010((n+1)²+n²)-1` -/
def P9734544362901255498.Spec : Prop :=
  ∀ n, P9734544362901255498.a n = A261668 (n + 1)

end A261668

/-! ## A261668.P7959257743468695892

`∑[A209567(2*(n+1)²)]`
-/

namespace A261668.P7959257743468695892
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209567 (2 * (n + 1) ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A261668.P7959257743468695892

namespace A261668

/-- `∑[A209567(2*(n+1)²)]` -/
def P7959257743468695892.Spec : Prop :=
  ∀ n, P7959257743468695892.a n = A261668 (n + 1)

end A261668

/-! ## A261668.P8419992907199765082

`A071921(A056220(n+2))-1`
-/

namespace A261668.P8419992907199765082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071921 (A056220 (n + 2)).toNat - 1

end

end A261668.P8419992907199765082

namespace A261668

/-- `A071921(A056220(n+2))-1` -/
def P8419992907199765082.Spec : Prop :=
  ∀ n, P8419992907199765082.a n = A261668 (n + 1)

end A261668

/-!
# A261669: Dimension of a certain space of duality relations arising in study of q-analogs of multiple zeta values.

The programs for A261669, there is no canonical definition to state claims against.
-/

/-! ## A261669.P15047746624046847884

`∑[7^(n-∑[val(n+1, 2)])*A129815(n+1)]`
-/

namespace A261669.P15047746624046847884
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (n + 1) 2

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (7 : ℚ) ^ ((n : ℤ) - ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ) : ℤ) * (A129815 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A261669.P15047746624046847884

/-!
# A261670: Dimension of a certain space of duality relations arising in study of q-analogs of multiple zeta values.

The programs for A261670, there is no canonical definition to state claims against.
-/

/-! ## A261670.P8565887491858511945

`ogf((x+6x^3-x^4)/(1-5x+3x^2))`
-/

namespace A261670.P8565887491858511945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1, 0, 6, -1] [1, -5, 3] n

end

end A261670.P8565887491858511945

/-!
# A261671: If n even, a(n) = 6n+3, otherwise a(n) = n.

The programs for A261671, the canonical program `A261671.P28863086749332113` is in `Seq.B000.C038`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A261671 has offset 0).

The definition of A261671 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A261671.P16186630697910358254

`ogf((3+x+9x^2+x^3)/(1-2x^2+x^4))`
-/

namespace A261671.P16186630697910358254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [3, 1, 9, 1] [1, 0, -2, 0, 1] n

end

end A261671.P16186630697910358254

namespace A261671

/-- `ogf((3+x+9x^2+x^3)/(1-2x^2+x^4))` -/
def P16186630697910358254.Spec : Prop :=
  ∀ n, P16186630697910358254.a n = A261671 n

end A261671

/-! ## A261671.P28863086749332113

`2*a(n-2)-a(n-4)` with `a(0)=3, a(1)=1, a(2)=15, a(3)=3`

The canonical program, it is in `Seq.B000.C038`.
-/

namespace A261671

/-- `2*a(n-2)-a(n-4)` -/
def P28863086749332113.Spec : Prop :=
  ∀ n, P28863086749332113.a n = A261671 n

theorem P28863086749332113.correct : P28863086749332113.Spec := by
  intro n
  simp only [A261671]

end A261671

/-! ## A261671.P4599484562753085973

`(3+3*(-1)^n+7*n+5*(-1)^n*n)/2`
-/

namespace A261671.P4599484562753085973
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 + 3 * (-1) ^ n + (7 * n : ℤ) + 5 * (-1) ^ n * (n : ℤ) : ℚ) / 2

end

end A261671.P4599484562753085973

namespace A261671

/-- `(3+3*(-1)^n+7*n+5*(-1)^n*n)/2` -/
def P4599484562753085973.Spec : Prop :=
  ∀ n, P4599484562753085973.a n = (A261671 n : ℚ)

theorem P4599484562753085973.correct : P4599484562753085973.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 | 3 =>
      simp [A261671, Nat.add_sub_cancel, A261671.P4599484562753085973.a, A261671.P28863086749332113.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 4 =>
      have h2 := ih (m + 2) (by omega)
      have h4 := ih m (by omega)
      simp only [A261671, Nat.add_sub_cancel, A261671.P4599484562753085973.a, A261671.P28863086749332113.a, SequenceMachineLib.memo_apply] at h2 h4 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 4 - 2 = m + 2 by omega, show m + 4 - 4 = m by omega, show m + 2 < m + 4 by omega, show m < m + 4 by omega, ↓reduceIte]
      push_cast at h2 h4 ⊢
      rw [← h2, ← h4]
      first | ring1 | ring_nf | (field_simp; (first | ring1 | ring_nf)) | omega | (push_cast; ring_nf) | nlinarith

end A261671

/-! ## A261671.P8902385763622750594

`(lcm(2, n+1)-1)*gcd(3, n%2)`
-/

namespace A261671.P8902385763622750594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((Nat.lcm 2 (n + 1) : ℤ) - 1) * (Nat.gcd 3 (n % 2) : ℤ)

end

end A261671.P8902385763622750594

namespace A261671

/-- `(lcm(2, n+1)-1)*gcd(3, n%2)` -/
def P8902385763622750594.Spec : Prop :=
  ∀ n, P8902385763622750594.a n = A261671 n

end A261671

/-! ## A261671.P1021210299572241258

`A133090(n+1)*A176040(n)`
-/

namespace A261671.P1021210299572241258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133090 (n + 1) * A176040 n

end

end A261671.P1021210299572241258

namespace A261671

/-- `A133090(n+1)*A176040(n)` -/
def P1021210299572241258.Spec : Prop :=
  ∀ n, P1021210299572241258.a n = A261671 n

end A261671

/-! ## A261671.P333202583005909925

`2*A001281(n+1)-1`
-/

namespace A261671.P333202583005909925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A001281 (n + 1) - 1

end

end A261671.P333202583005909925

namespace A261671

/-- `2*A001281(n+1)-1` -/
def P333202583005909925.Spec : Prop :=
  ∀ n, P333202583005909925.a n = A261671 n

end A261671

/-! ## A261671.P9179110698033931123

`A010684(n+1)/A040001(n+1)*A042963(n+1)`
-/

namespace A261671.P9179110698033931123
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A010684 (n + 1) : ℚ) / (A040001 (n + 1) : ℚ) * (A042963 (n + 1) : ℚ)

end

end A261671.P9179110698033931123

namespace A261671

/-- `A010684(n+1)/A040001(n+1)*A042963(n+1)` -/
def P9179110698033931123.Spec : Prop :=
  ∀ n, P9179110698033931123.a n = (A261671 n : ℚ)

end A261671

/-! ## A261671.P12513501925157346031

`A004273(A001281(n+1))`
-/

namespace A261671.P12513501925157346031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (A001281 (n + 1)).toNat

end

end A261671.P12513501925157346031

namespace A261671

/-- `A004273(A001281(n+1))` -/
def P12513501925157346031.Spec : Prop :=
  ∀ n, P12513501925157346031.a n = A261671 n

end A261671

/-! ## A261671.P5561639465744621728

`A398157(A047243(n+1))`
-/

namespace A261671.P5561639465744621728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A398157 (A047243 (n + 1)).toNat

end

end A261671.P5561639465744621728

namespace A261671

/-- `A398157(A047243(n+1))` -/
def P5561639465744621728.Spec : Prop :=
  ∀ n, P5561639465744621728.a n = A261671 n

end A261671

/-! ## A261671.P9397140746834292273

`A005408(A001281(n+1)-1)`
-/

namespace A261671.P9397140746834292273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 (A001281 (n + 1) - 1).toNat

end

end A261671.P9397140746834292273

namespace A261671

/-- `A005408(A001281(n+1)-1)` -/
def P9397140746834292273.Spec : Prop :=
  ∀ n, P9397140746834292273.a n = A261671 n

end A261671

/-! ## A261671.P10553207550102258806

`A235800(A193356(n+1)+2*n)`
-/

namespace A261671.P10553207550102258806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235800 (A193356 (n + 1) + (2 * n : ℤ)).toNat

end

end A261671.P10553207550102258806

namespace A261671

/-- `A235800(A193356(n+1)+2*n)` -/
def P10553207550102258806.Spec : Prop :=
  ∀ n, P10553207550102258806.a n = A261671 n

end A261671

/-! ## A261671.P1330852961732111295

`A235800(A193356(n+1)+n+n)`
-/

namespace A261671.P1330852961732111295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235800 (A193356 (n + 1) + (n : ℤ) + (n : ℤ)).toNat

end

end A261671.P1330852961732111295

namespace A261671

/-- `A235800(A193356(n+1)+n+n)` -/
def P1330852961732111295.Spec : Prop :=
  ∀ n, P1330852961732111295.a n = A261671 n

end A261671

/-! ## A261671.P14188298441440312457

`A114753(A065423(A114753(n+2)+n))`
-/

namespace A261671.P14188298441440312457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114753 (A065423 (A114753 (n + 2) + (n : ℤ)).toNat).toNat

end

end A261671.P14188298441440312457

namespace A261671

/-- `A114753(A065423(A114753(n+2)+n))` -/
def P14188298441440312457.Spec : Prop :=
  ∀ n, P14188298441440312457.a n = A261671 n

end A261671

/-! ## A261671.P17175396533686490594

`A114753(A114753(A109043(n+1))-(n+1))`
-/

namespace A261671.P17175396533686490594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114753 (A114753 (A109043 (n + 1)).toNat - (n + 1 : ℤ)).toNat

end

end A261671.P17175396533686490594

namespace A261671

/-- `A114753(A114753(A109043(n+1))-(n+1))` -/
def P17175396533686490594.Spec : Prop :=
  ∀ n, P17175396533686490594.a n = A261671 n

end A261671

/-! ## A261671.P12912323352423528917

`A114753(A114752(A114753(n+2))-(n+3))`
-/

namespace A261671.P12912323352423528917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114753 (A114752 (A114753 (n + 2)).toNat - (n + 3 : ℤ)).toNat

end

end A261671.P12912323352423528917

namespace A261671

/-- `A114753(A114752(A114753(n+2))-(n+3))` -/
def P12912323352423528917.Spec : Prop :=
  ∀ n, P12912323352423528917.a n = A261671 n

end A261671

/-! ## A261671.P17107340366390683217

`A071045(A123167(n+1))`
-/

namespace A261671.P17107340366390683217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071045 (A123167 (n + 1)).toNat

end

end A261671.P17107340366390683217

namespace A261671

/-- `A071045(A123167(n+1))` -/
def P17107340366390683217.Spec : Prop :=
  ∀ n, P17107340366390683217.a n = A261671 n

end A261671

/-! ## A261671.P5703586118868518031

`A324245(A123169(n+2))`
-/

namespace A261671.P5703586118868518031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324245 (A123169 (n + 2)).toNat

end

end A261671.P5703586118868518031

namespace A261671

/-- `A324245(A123169(n+2))` -/
def P5703586118868518031.Spec : Prop :=
  ∀ n, P5703586118868518031.a n = A261671 n

end A261671

/-! ## A261671.P987782039519108323

`A014681(2*A001281(n+1))`
-/

namespace A261671.P987782039519108323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014681 (2 * A001281 (n + 1)).toNat

end

end A261671.P987782039519108323

namespace A261671

/-- `A014681(2*A001281(n+1))` -/
def P987782039519108323.Spec : Prop :=
  ∀ n, P987782039519108323.a n = A261671 n

end A261671

/-! ## A261671.P12310141183887027872

`A023443(2*A001281(n+1))`
-/

namespace A261671.P12310141183887027872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (2 * A001281 (n + 1)).toNat

end

end A261671.P12310141183887027872

namespace A261671

/-- `A023443(2*A001281(n+1))` -/
def P12310141183887027872.Spec : Prop :=
  ∀ n, P12310141183887027872.a n = A261671 n

end A261671

/-! ## A261671.P8067433339788779289

`A349407(A350515(A006370(A017221(n))))`
-/

namespace A261671.P8067433339788779289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349407 (A350515 (A006370 (A017221 n).toNat).toNat).toNat

end

end A261671.P8067433339788779289

namespace A261671

/-- `A349407(A350515(A006370(A017221(n))))` -/
def P8067433339788779289.Spec : Prop :=
  ∀ n, P8067433339788779289.a n = A261671 n

end A261671

/-!
# A261672: Numbers k such that A037610(k) is prime.

The programs for A261672, there is no canonical definition to state claims against.
-/

/-! ## A261672.P5393408504465459115

`A272766(A127596(n+1)+1)`
-/

namespace A261672.P5393408504465459115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272766 (A127596 (n + 1) + 1).toNat

end

end A261672.P5393408504465459115

/-!
# A261673: Records in A135730.

The programs for A261673, there is no canonical definition to state claims against.
-/

/-! ## A261673.P12309754799029834224

`record[A135730(n+1)]`
-/

namespace A261673.P12309754799029834224
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135730 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A261673.P12309754799029834224

/-! ## A261673.P5897047501415829679

`A135730(ceil(A261674(n+1)/2))`
-/

namespace A261673.P5897047501415829679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135730 ⌈(A261674 (n + 1) : ℚ) / 2⌉.toNat

end

end A261673.P5897047501415829679

/-! ## A261673.P1180517965027144367

`A135730(round(A261674(n+1)/2))`
-/

namespace A261673.P1180517965027144367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135730 (SequenceMachineLib.roundAway ((A261674 (n + 1) : ℚ) / 2)).toNat

end

end A261673.P1180517965027144367

/-! ## A261673.P8203810081291662947

`A135730((A261674(n+1)+1)/2)`
-/

namespace A261673.P8203810081291662947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135730 (SequenceMachineLib.roundAway ((A261674 (n + 1) + 1 : ℚ) / 2)).toNat

end

end A261673.P8203810081291662947

/-! ## A261673.P2263504487927030143

`A135730(A261674(n+1)+1)-1`
-/

namespace A261673.P2263504487927030143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135730 (A261674 (n + 1) + 1).toNat - 1

end

end A261673.P2263504487927030143

/-!
# A261675: Minimal number of palindromes in base 10 that add to n.

The programs for A261675, there is no canonical definition to state claims against.
-/

/-! ## A261675.P9557631650208910038

`A353832(A261913(n)+A007814(2*n+1))`
-/

namespace A261675.P9557631650208910038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353832 (A261913 n + A007814 (2 * n + 1)).toNat

end

end A261675.P9557631650208910038

/-!
# A261676: Numbers which when represented as a sum of palindromes using the greedy algorithm require more than 3 palindromes.

The programs for A261676, there is no canonical definition to state claims against.
-/

/-! ## A261676.P10905005523781530073

`eq[0, A260254(A261424(n))]`
-/

namespace A261676.P10905005523781530073
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260254 (A261424 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A261676.P10905005523781530073

/-! ## A261676.P5183634104872363049

`eq[A136522(n), A262087(A261424(n))]`
-/

namespace A261676.P5183634104872363049
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136522 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262087 (A261424 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A261676.P5183634104872363049

/-! ## A261676.P338393480686764250

`lt[A040000(n), A261913(A261424(n))]`
-/

namespace A261676.P338393480686764250
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040000 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261913 (A261424 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A261676.P338393480686764250

/-! ## A261676.P11726514437366163670

`lt[A260254(A261424(n)), A057427(n)]`
-/

namespace A261676.P11726514437366163670
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260254 (A261424 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A261676.P11726514437366163670

/-! ## A261676.P3646570923011263762

`lt[A178334(n), A261424(A261424(n))]`
-/

namespace A261676.P3646570923011263762
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178334 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261424 (A261424 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A261676.P3646570923011263762

/-!
# A261678: Even numbers that are not the sum of two binary palindromes.

The programs for A261678, there is no canonical definition to state claims against.
-/

/-! ## A261678.P17785230048951989076

`2*A241491(n+1)`
-/

namespace A261678.P17785230048951989076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A241491 (n + 1)

end

end A261678.P17785230048951989076

/-! ## A261678.P7449502045210784748

`A241491(A000027(n+1))+A241491(n+1)`
-/

namespace A261678.P7449502045210784748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241491 (A000027 (n + 1)).toNat + A241491 (n + 1)

end

end A261678.P7449502045210784748

/-! ## A261678.P15382995590848778809

`A241491(or(n+1, A000007(n)))+A241491(n+1)`
-/

namespace A261678.P15382995590848778809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241491 (Int.lor (n + 1 : ℤ) (A000007 n)).toNat + A241491 (n + 1)

end

end A261678.P15382995590848778809

/-! ## A261678.P10231840409393601293

`A241491(A000007(n+1)+n+1)+A241491(n+1)`
-/

namespace A261678.P10231840409393601293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241491 (A000007 (n + 1) + (n + 1 : ℤ)).toNat + A241491 (n + 1)

end

end A261678.P10231840409393601293

/-! ## A261678.P1564374087615756839

`A241491(n+1)+A241491(n+1)%A241491(n+2)`
-/

namespace A261678.P1564374087615756839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241491 (n + 1) + Int.tmod (A241491 (n + 1)) (A241491 (n + 2))

end

end A261678.P1564374087615756839

/-! ## A261678.P5658542384820802522

`A004277(A241491(n+1))`
-/

namespace A261678.P5658542384820802522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A241491 (n + 1)).toNat

end

end A261678.P5658542384820802522

/-! ## A261678.P3610502791331133362

`A241491(n+1)+A241491((n+1)%A296292(n))`
-/

namespace A261678.P3610502791331133362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241491 (n + 1) + A241491 (Int.tmod (n + 1 : ℤ) (A296292 n)).toNat

end

end A261678.P3610502791331133362

/-! ## A261678.P16178791839902101416

`∑{d}[A000040(n+1), A241491(n+1)+A088432(#)]`
-/

namespace A261678.P16178791839902101416
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, (A241491 (n + 1) + A088432 d)

end

end A261678.P16178791839902101416

/-! ## A261678.P2896710754597995760

`eq[0, A319439(n)]`
-/

namespace A261678.P2896710754597995760
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319439 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A261678.P2896710754597995760

/-! ## A261678.P9007385840835219768

`eq[A000035(n), A261679(n)]`
-/

namespace A261678.P9007385840835219768
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261679 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A261678.P9007385840835219768

/-! ## A261678.P17285755497006719985

`A004151(A241491(n+1)+A241491(n+1)+1)-1`
-/

namespace A261678.P17285755497006719985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004151 (A241491 (n + 1) + A241491 (n + 1) + 1).toNat - 1

end

end A261678.P17285755497006719985

/-!
# A261679: Number of ordered pairs (u,v) of binary palindromes (see A006995) with u+v=n.

The programs for A261679, the canonical program `A261679.P4682499844854445585` is in `Seq.B006.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A261679 has offset 0).

The definition of A261679 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1024 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A261679.P4682499844854445585

`∑{#}[n, A178225(#)*A178225(n-#)]`

The canonical program, it is in `Seq.B006.C001`.
-/

namespace A261679

/-- `∑{#}[n, A178225(#)*A178225(n-#)]` -/
def P4682499844854445585.Spec : Prop :=
  ∀ n, P4682499844854445585.a n = A261679 n

theorem P4682499844854445585.correct : P4682499844854445585.Spec := by
  intro n
  simp only [A261679]

end A261679

/-! ## A261679.P3287427549685103720

`A336500(A163533(n)+A127535(n+1))`
-/

namespace A261679.P3287427549685103720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336500 (A163533 n + A127535 (n + 1)).toNat

end

end A261679.P3287427549685103720

namespace A261679

/-- `A336500(A163533(n)+A127535(n+1))` -/
def P3287427549685103720.Spec : Prop :=
  ∀ n, P3287427549685103720.a n = A261679 n

end A261679

/-! ## A261679.P10959954344448028990

`gcd(A078461(A060777(n+1)), A142150(n))`
-/

namespace A261679.P10959954344448028990
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A078461 (A060777 (n + 1)).toNat) (A142150 n)

end

end A261679.P10959954344448028990

namespace A261679

/-- `gcd(A078461(A060777(n+1)), A142150(n))` -/
def P10959954344448028990.Spec : Prop :=
  ∀ n, (P10959954344448028990.a n : ℤ) = A261679 n

end A261679

/-! ## A261679.P12805300034842493022

`A139351(A087940(n+1)/A093998(n)!)`
-/

namespace A261679.P12805300034842493022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139351 (SequenceMachineLib.roundAway ((A087940 (n + 1) : ℚ) / (Nat.factorial (A093998 n).toNat : ℚ))).toNat

end

end A261679.P12805300034842493022

namespace A261679

/-- `A139351(A087940(n+1)/A093998(n)!)` -/
def P12805300034842493022.Spec : Prop :=
  ∀ n, P12805300034842493022.a n = A261679 n

end A261679

/-! ## A261679.P1584199549301874215

`A279907(A286413(n+1))+A032742(n+2)`
-/

namespace A261679.P1584199549301874215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279907 (A286413 (n + 1)).toNat + A032742 (n + 2)

end

end A261679.P1584199549301874215

namespace A261679

/-- `A279907(A286413(n+1))+A032742(n+2)` -/
def P1584199549301874215.Spec : Prop :=
  ∀ n, P1584199549301874215.a n = A261679 n

end A261679

/-!
# A261680: Number of ordered quadruples (u,v,w,x) of binary palindromes (see A006995) with u+v+w+x=n.

The programs for A261680, the canonical program `A261680.P766785804339948299` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A261680 has offset 0).

The definition of A261680 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1024 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A261680.P766785804339948299

`∑{#}[n, A261679(#)*A261679(n-#)]`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A261680

/-- `∑{#}[n, A261679(#)*A261679(n-#)]` -/
def P766785804339948299.Spec : Prop :=
  ∀ n, P766785804339948299.a n = A261680 n

theorem P766785804339948299.correct : P766785804339948299.Spec := by
  intro n
  simp only [A261680]

end A261680

/-! ## A261680.P14379315315564674352

`eq[A078424(A345918(n+5)), A108602(n+1)]`
-/

namespace A261680.P14379315315564674352
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078424 (A345918 (n + 5)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108602 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A261680.P14379315315564674352

namespace A261680

/-- `eq[A078424(A345918(n+5)), A108602(n+1)]` -/
def P14379315315564674352.Spec : Prop :=
  ∀ n, (P14379315315564674352.a n : ℤ) = A261680 n

end A261680

/-! ## A261680.P7638990110435392730

`∑[A088936(A046933(n+1)+A000204(n+1))]`
-/

namespace A261680.P7638990110435392730
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088936 (A046933 (n + 1) + A000204 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A261680.P7638990110435392730

namespace A261680

/-- `∑[A088936(A046933(n+1)+A000204(n+1))]` -/
def P7638990110435392730.Spec : Prop :=
  ∀ n, P7638990110435392730.a n = A261680 n

end A261680

/-!
# A261681: a(n) = 2^n + binomial(n, floor(n/2)) - 1.

The programs for A261681, the canonical program `A261681.P9750562906251385611` is in `Seq.B000.C038`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A261681 has offset 0).

The definition of A261681 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2^n+C(n, floor(n/2))-1` (program `A261681.P9750562906251385611`, by `A261681.P9750562906251385611.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A261681.P2987774467775382357

`A000079(n)+A014495(n)`
-/

namespace A261681.P2987774467775382357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n + A014495 n

end

end A261681.P2987774467775382357

namespace A261681

/-- `A000079(n)+A014495(n)` -/
def P2987774467775382357.Spec : Prop :=
  ∀ n, P2987774467775382357.a n = A261681 n

theorem P2987774467775382357.correct : P2987774467775382357.Spec := by
  intro n
  simp only [A261681, Nat.add_sub_cancel, A261681.P2987774467775382357.a, A261681.P9750562906251385611.a, A000079, A000079.P10855139691139572931.a, A014495, A014495.P8648755420632744383.a, A001405, A001405.P5205018418992951678.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A261681

/-! ## A261681.P9750562906251385611

`2^n+C(n, floor(n/2))-1`

The canonical program, it is in `Seq.B000.C038`.
-/

namespace A261681

/-- `2^n+C(n, floor(n/2))-1` -/
def P9750562906251385611.Spec : Prop :=
  ∀ n, P9750562906251385611.a n = A261681 n

theorem P9750562906251385611.correct : P9750562906251385611.Spec := by
  intro n
  simp only [A261681]

end A261681

/-! ## A261681.P15528708670895674922

`2^n+A014495(n)`
-/

namespace A261681.P15528708670895674922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) + A014495 n

end

end A261681.P15528708670895674922

namespace A261681

/-- `2^n+A014495(n)` -/
def P15528708670895674922.Spec : Prop :=
  ∀ n, P15528708670895674922.a n = A261681 n

theorem P15528708670895674922.correct : P15528708670895674922.Spec := by
  intro n
  simp only [A261681, Nat.add_sub_cancel, A261681.P15528708670895674922.a, A261681.P9750562906251385611.a, A014495, A014495.P8648755420632744383.a, A001405, A001405.P5205018418992951678.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A261681

/-! ## A261681.P5209840582584879464

`2^n+A001405(n)-1`
-/

namespace A261681.P5209840582584879464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) + (A001405 n - 1)

end

end A261681.P5209840582584879464

namespace A261681

/-- `2^n+A001405(n)-1` -/
def P5209840582584879464.Spec : Prop :=
  ∀ n, P5209840582584879464.a n = A261681 n

theorem P5209840582584879464.correct : P5209840582584879464.Spec := by
  intro n
  simp only [A261681, Nat.add_sub_cancel, A261681.P5209840582584879464.a, A261681.P9750562906251385611.a, A001405, A001405.P5205018418992951678.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A261681

/-! ## A261681.P6419054102732062230

`a(n-1)+A210628(n)+a(n-1)+1` with `a(0)=1`
-/

namespace A261681.P6419054102732062230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (A210628 n + a (n - 1)) + 1

end

end A261681.P6419054102732062230

namespace A261681

/-- `a(n-1)+A210628(n)+a(n-1)+1` -/
def P6419054102732062230.Spec : Prop :=
  ∀ n, P6419054102732062230.a n = A261681 n

end A261681

/-! ## A261681.P7744360247908333913

`a(n-1)+a(n-1)-A097331(n)+1` with `a(0)=1`
-/

namespace A261681.P7744360247908333913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (a (n - 1) - A097331 n) + 1

end

end A261681.P7744360247908333913

namespace A261681

/-- `a(n-1)+a(n-1)-A097331(n)+1` -/
def P7744360247908333913.Spec : Prop :=
  ∀ n, P7744360247908333913.a n = A261681 n

end A261681

/-! ## A261681.P6067008445475428743

`2^(n-1)+A037952(n-1)+a(n-1)` with `a(0)=1`
-/

namespace A261681.P6067008445475428743
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (2 : ℚ) ^ ((n : ℤ) - 1 : ℤ) + ((A037952 (n - 1) : ℚ) + a (n - 1))

end

end A261681.P6067008445475428743

namespace A261681

/-- `2^(n-1)+A037952(n-1)+a(n-1)` -/
def P6067008445475428743.Spec : Prop :=
  ∀ n, P6067008445475428743.a n = (A261681 n : ℚ)

end A261681

/-! ## A261681.P847397890821627505

`A001405(n)+A000225(n)`
-/

namespace A261681.P847397890821627505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001405 n + A000225 n

end

end A261681.P847397890821627505

namespace A261681

/-- `A001405(n)+A000225(n)` -/
def P847397890821627505.Spec : Prop :=
  ∀ n, P847397890821627505.a n = A261681 n

theorem P847397890821627505.correct : P847397890821627505.Spec := by
  intro n
  simp only [A261681, Nat.add_sub_cancel, A261681.P847397890821627505.a, A261681.P9750562906251385611.a, A000225, A000225.P6535533121115206393.a, A001405, A001405.P5205018418992951678.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A261681

/-! ## A261681.P17986134582113924401

`A051920(n)+A000918(n)`
-/

namespace A261681.P17986134582113924401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051920 n + A000918 n

end

end A261681.P17986134582113924401

namespace A261681

/-- `A051920(n)+A000918(n)` -/
def P17986134582113924401.Spec : Prop :=
  ∀ n, P17986134582113924401.a n = A261681 n

theorem P17986134582113924401.correct : P17986134582113924401.Spec := by
  intro n
  simp only [A261681, Nat.add_sub_cancel, A261681.P17986134582113924401.a, A261681.P9750562906251385611.a, A000918, A000918.P14329454465793069288.a, A051920, A051920.P2707849764288868979.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A261681

/-! ## A261681.P13860257003909170864

`A201686(n)+A000051(n)`
-/

namespace A261681.P13860257003909170864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201686 n + A000051 n

end

end A261681.P13860257003909170864

namespace A261681

/-- `A201686(n)+A000051(n)` -/
def P13860257003909170864.Spec : Prop :=
  ∀ n, P13860257003909170864.a n = A261681 n

theorem P13860257003909170864.correct : P13860257003909170864.Spec := by
  intro n
  simp only [A261681, Nat.add_sub_cancel, A261681.P13860257003909170864.a, A261681.P9750562906251385611.a, A000051, A000051.P14067217022188782580.a, A201686, A201686.P5560453005708353295.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A261681

/-! ## A261681.P16938750388170426262

`A395396(n)+A052531(n)`
-/

namespace A261681.P16938750388170426262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A395396 n + A052531 n

end

end A261681.P16938750388170426262

namespace A261681

/-- `A395396(n)+A052531(n)` -/
def P16938750388170426262.Spec : Prop :=
  ∀ n, P16938750388170426262.a n = A261681 n

end A261681

/-! ## A261681.P7955564895912874349

`A001405(n)+∑[A131577(n)]`
-/

namespace A261681.P7955564895912874349
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131577 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001405 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A261681.P7955564895912874349

namespace A261681

/-- `A001405(n)+∑[A131577(n)]` -/
def P7955564895912874349.Spec : Prop :=
  ∀ n, P7955564895912874349.a n = A261681 n

end A261681

/-! ## A261681.P9422783905503734642

`A000225(n)+A014495(n)+1`
-/

namespace A261681.P9422783905503734642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 n + (A014495 n + 1)

end

end A261681.P9422783905503734642

namespace A261681

/-- `A000225(n)+A014495(n)+1` -/
def P9422783905503734642.Spec : Prop :=
  ∀ n, P9422783905503734642.a n = A261681 n

theorem P9422783905503734642.correct : P9422783905503734642.Spec := by
  intro n
  simp only [A261681, Nat.add_sub_cancel, A261681.P9422783905503734642.a, A261681.P9750562906251385611.a, A000225, A000225.P6535533121115206393.a, A014495, A014495.P8648755420632744383.a, A001405, A001405.P5205018418992951678.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A261681

/-! ## A261681.P5809244646053443799

`A210736(n+1)+A000225(n)`
-/

namespace A261681.P5809244646053443799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210736 (n + 1) + A000225 n

end

end A261681.P5809244646053443799

namespace A261681

/-- `A210736(n+1)+A000225(n)` -/
def P5809244646053443799.Spec : Prop :=
  ∀ n, P5809244646053443799.a n = A261681 n

end A261681

/-! ## A261681.P11389302403981992067

`A208976(n)+A093387(n+1)`
-/

namespace A261681.P11389302403981992067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208976 n + A093387 (n + 1)

end

end A261681.P11389302403981992067

namespace A261681

/-- `A208976(n)+A093387(n+1)` -/
def P11389302403981992067.Spec : Prop :=
  ∀ n, P11389302403981992067.a n = A261681 n

theorem P11389302403981992067.correct : P11389302403981992067.Spec := by
  intro n
  simp only [A261681, Nat.add_sub_cancel, A261681.P11389302403981992067.a, A261681.P9750562906251385611.a, A093387, A093387.P11464323104930007808.a, A208976, A208976.P11107744502091880902.a, A001405, A001405.P5205018418992951678.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A261681

/-! ## A261681.P10905499978050079348

`A001405(n)+∑[A011782(n)]-1`
-/

namespace A261681.P10905499978050079348
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001405 n + (∑ j ∈ Finset.range (n + 1), f1 j - 1)

end

end A261681.P10905499978050079348

namespace A261681

/-- `A001405(n)+∑[A011782(n)]-1` -/
def P10905499978050079348.Spec : Prop :=
  ∀ n, P10905499978050079348.a n = A261681 n

end A261681

/-! ## A261681.P17758519866685166405

`A001405(n+1)+A191391(n+1)-1`
-/

namespace A261681.P17758519866685166405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001405 (n + 1) + (A191391 (n + 1) - 1)

end

end A261681.P17758519866685166405

namespace A261681

/-- `A001405(n+1)+A191391(n+1)-1` -/
def P17758519866685166405.Spec : Prop :=
  ∀ n, P17758519866685166405.a n = A261681 n

end A261681

/-! ## A261681.P2528156452017156511

`A011782(n+1)+A210736(n+1)-1`
-/

namespace A261681.P2528156452017156511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 (n + 1) + (A210736 (n + 1) - 1)

end

end A261681.P2528156452017156511

namespace A261681

/-- `A011782(n+1)+A210736(n+1)-1` -/
def P2528156452017156511.Spec : Prop :=
  ∀ n, P2528156452017156511.a n = A261681 n

end A261681

/-! ## A261681.P3506570620755057687

`A131577(n+1)+A210736(n+1)-1`
-/

namespace A261681.P3506570620755057687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131577 (n + 1) + (A210736 (n + 1) - 1)

end

end A261681.P3506570620755057687

namespace A261681

/-- `A131577(n+1)+A210736(n+1)-1` -/
def P3506570620755057687.Spec : Prop :=
  ∀ n, P3506570620755057687.a n = A261681 n

end A261681

/-! ## A261681.P5309216058713717830

`A230137(n+1)/(n+1)-1`
-/

namespace A261681.P5309216058713717830
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A230137 (n + 1) : ℚ) / (n + 1 : ℚ) - 1

end

end A261681.P5309216058713717830

namespace A261681

/-- `A230137(n+1)/(n+1)-1` -/
def P5309216058713717830.Spec : Prop :=
  ∀ n, P5309216058713717830.a n = (A261681 n : ℚ)

end A261681

/-!
# A261682: a(n) = 2^n+(1+(n mod 2)/2)*C(n+1,floor((n+(n mod 2))/2))-1.

The programs for A261682, the canonical program `A261682.P7129278550072871158` is in `Seq.B000.C038`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A261682 has offset 0).

The definition of A261682 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A261682.P7129278550072871158

`2^n+(1+n%2/2)*C(n+1, floor((n+n%2)/2))-1`

The canonical program, it is in `Seq.B000.C038`.
-/

namespace A261682

/-- `2^n+(1+n%2/2)*C(n+1, floor((n+n%2)/2))-1` -/
def P7129278550072871158.Spec : Prop :=
  ∀ n, P7129278550072871158.a n = (A261682 n : ℚ)

end A261682

/-! ## A261682.P4801041320580061416

`A079280(3+n)-1`
-/

namespace A261682.P4801041320580061416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079280 (3 + n) - 1

end

end A261682.P4801041320580061416

namespace A261682

/-- `A079280(3+n)-1` -/
def P4801041320580061416.Spec : Prop :=
  ∀ n, P4801041320580061416.a n = A261682 n

end A261682

/-! ## A261682.P2615648034852906024

`A027306(n+1)+A014495(n+1)`
-/

namespace A261682.P2615648034852906024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027306 (n + 1) + A014495 (n + 1)

end

end A261682.P2615648034852906024

namespace A261682

/-- `A027306(n+1)+A014495(n+1)` -/
def P2615648034852906024.Spec : Prop :=
  ∀ n, P2615648034852906024.a n = A261682 n

end A261682

/-! ## A261682.P4125491628196326714

`A226881(n+1)+A001405(n+1)`
-/

namespace A261682.P4125491628196326714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226881 (n + 1) + A001405 (n + 1)

end

end A261682.P4125491628196326714

namespace A261682

/-- `A226881(n+1)+A001405(n+1)` -/
def P4125491628196326714.Spec : Prop :=
  ∀ n, P4125491628196326714.a n = A261682 n

end A261682

/-! ## A261682.P4065622725136587840

`A014495(n+1)+A226881(n+1)+1`
-/

namespace A261682.P4065622725136587840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014495 (n + 1) + (A226881 (n + 1) + 1)

end

end A261682.P4065622725136587840

namespace A261682

/-- `A014495(n+1)+A226881(n+1)+1` -/
def P4065622725136587840.Spec : Prop :=
  ∀ n, P4065622725136587840.a n = A261682 n

end A261682

/-! ## A261682.P8335815945940196579

`A001405(n+1)+A027306(n+1)-1`
-/

namespace A261682.P8335815945940196579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001405 (n + 1) + (A027306 (n + 1) - 1)

end

end A261682.P8335815945940196579

namespace A261682

/-- `A001405(n+1)+A027306(n+1)-1` -/
def P8335815945940196579.Spec : Prop :=
  ∀ n, P8335815945940196579.a n = A261682 n

end A261682

/-! ## A261682.P1090234745712428896

`A027306(n+1)+A051920(n+1)-2`
-/

namespace A261682.P1090234745712428896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027306 (n + 1) + (A051920 (n + 1) - 2)

end

end A261682.P1090234745712428896

namespace A261682

/-- `A027306(n+1)+A051920(n+1)-2` -/
def P1090234745712428896.Spec : Prop :=
  ∀ n, P1090234745712428896.a n = A261682 n

end A261682

/-! ## A261682.P16222969704915976443

`A001405(n+1)+Δ[A191313(n)]`
-/

namespace A261682.P16222969704915976443
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191313 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001405 (n + 1) + (f1 (n + 1) - f1 n)

end

end A261682.P16222969704915976443

namespace A261682

/-- `A001405(n+1)+Δ[A191313(n)]` -/
def P16222969704915976443.Spec : Prop :=
  ∀ n, P16222969704915976443.a n = A261682 n

end A261682

/-! ## A261682.P12018521172715217146

`A261681(n+1)-A058622(n+1)`
-/

namespace A261682.P12018521172715217146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261681 (n + 1) - A058622 (n + 1)

end

end A261682.P12018521172715217146

namespace A261682

/-- `A261681(n+1)-A058622(n+1)` -/
def P12018521172715217146.Spec : Prop :=
  ∀ n, P12018521172715217146.a n = A261682 n

end A261682

/-! ## A261682.P9561765747707559747

`A001405(n+1)+A191313(n+1)-A191313(n)`
-/

namespace A261682.P9561765747707559747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001405 (n + 1) + (A191313 (n + 1) - A191313 n)

end

end A261682.P9561765747707559747

namespace A261682

/-- `A001405(n+1)+A191313(n+1)-A191313(n)` -/
def P9561765747707559747.Spec : Prop :=
  ∀ n, P9561765747707559747.a n = A261682 n

end A261682

/-! ## A261682.P11919506405904611475

`2^n+(1+n%2/2)*C(n+1, (n%2+n)/2)-1`
-/

namespace A261682.P11919506405904611475
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℚ) + (1 + ((n % 2 : ℕ) : ℚ) / 2) * (Nat.choose (n + 1) (SequenceMachineLib.roundAway (((n % 2 + n : ℕ) : ℚ) / 2)).toNat : ℚ) - 1

end

end A261682.P11919506405904611475

namespace A261682

/-- `2^n+(1+n%2/2)*C(n+1, (n%2+n)/2)-1` -/
def P11919506405904611475.Spec : Prop :=
  ∀ n, P11919506405904611475.a n = (A261682 n : ℚ)

end A261682

/-!
# A261683: Number of permutations p of {1..2n} such that p[2k-1]<p[2k] <=> p[2k]<p[2k+1].

The programs for A261683, there is no canonical definition to state claims against.
-/

/-! ## A261683.P2996325222593054197

`2*(n+1)*A122647(n+1)`
-/

namespace A261683.P2996325222593054197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * ((n + 1 : ℤ) * A122647 (n + 1))

end

end A261683.P2996325222593054197

/-! ## A261683.P12055293652223776602

`Δ[A002378(n)]*A122647(n+1)`
-/

namespace A261683.P12055293652223776602
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002378 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A122647 (n + 1)

end

end A261683.P12055293652223776602

/-! ## A261683.P7130343053642346289

`Δ[A027688(n)]*A122647(n+1)`
-/

namespace A261683.P7130343053642346289
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027688 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A122647 (n + 1)

end

end A261683.P7130343053642346289

/-! ## A261683.P8058311062564523975

`A122647(n+1)*A317440(n+1)`
-/

namespace A261683.P8058311062564523975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122647 (n + 1) * A317440 (n + 1)

end

end A261683.P8058311062564523975

/-! ## A261683.P6503852801401087963

`A008619(A004767(n))*A122647(n+1)`
-/

namespace A261683.P6503852801401087963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A004767 n).toNat * A122647 (n + 1)

end

end A261683.P6503852801401087963

/-!
# A261685: Triangle read by rows: T(n,m) = number of beta-labeled graphs of size n and order m (n>=1, 2<=m<=n+1).

The programs for A261685, there is no canonical definition to state claims against.
-/

/-! ## A261685.P12498451536333787021

`A329790(A329780(n+2)%A329815(3*(n+1)))`
-/

namespace A261685.P12498451536333787021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329790 (Int.tmod (A329780 (n + 2)) (A329815 (3 * (n + 1)))).toNat

end

end A261685.P12498451536333787021

/-! ## A261685.P8024811727822544446

`A047996(n)*A213623(A099040(n))`
-/

namespace A261685.P8024811727822544446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047996 n * A213623 (A099040 n).toNat

end

end A261685.P8024811727822544446

/-! ## A261685.P13660060276860585695

`A213623(C(A099040(n), A047996(n)))`
-/

namespace A261685.P13660060276860585695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213623 (Nat.choose (A099040 n).toNat (A047996 n).toNat)

end

end A261685.P13660060276860585695

/-! ## A261685.P1787808184977138796

`A000005(A264228(n+1))*A098158(n)`
-/

namespace A261685.P1787808184977138796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A264228 (n + 1)).toNat * A098158 n

end

end A261685.P1787808184977138796

/-! ## A261685.P16483107034404934600

`A329790(A329780(n+2)%A329777(n+3))`
-/

namespace A261685.P16483107034404934600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329790 (Int.tmod (A329780 (n + 2)) (A329777 (n + 3))).toNat

end

end A261685.P16483107034404934600

/-!
# A261686: Values of |F-hat_4(n)|, a sum involving Stirling numbers of the second kind.

The programs for A261686, there is no canonical definition to state claims against.
-/

/-! ## A261686.P1984608465687119028

`A358623(eq[A007318(n+4), A007318(n)])`
-/

namespace A261686.P1984608465687119028
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (n + 4)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358623 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A261686.P1984608465687119028

/-! ## A261686.P15901797423350739850

`A255062(C(n+3, 8))`
-/

namespace A261686.P15901797423350739850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255062 (Nat.choose (n + 3) 8)

end

end A261686.P15901797423350739850

/-! ## A261686.P10154258740469702028

`A221372(a(n-1))` with `a(0)=0, a(1)=0, a(2)=0, a(3)=0, a(4)=0, a(5)=1`
-/

namespace A261686.P10154258740469702028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0, 0, 0, 0, 1] fun n a =>
  A221372 (a (n - 1)).toNat

end

end A261686.P10154258740469702028

/-!
# A261687: Values of g-hat_2(n), a sum involving Stirling numbers of the first kind.

The programs for A261687, there is no canonical definition to state claims against.
-/

/-! ## A261687.P13603531796681567167

`∑[A284254(C(∑[n+1]+2, n))]-n`
-/

namespace A261687.P13603531796681567167
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284254 (Nat.choose (∑ j ∈ Finset.range (n + 1), f2 j + 2) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (n : ℤ)

end

end A261687.P13603531796681567167

/-!
# A261688: Values of g-hat_3(n), a sum involving Stirling numbers of the first kind.

The programs for A261688, there is no canonical definition to state claims against.
-/

/-! ## A261688.P7093167682739229023

`A025076((n+3)^n)`
-/

namespace A261688.P7093167682739229023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025076 ((n + 3) ^ n)

end

end A261688.P7093167682739229023

/-!
# A261689: Values of g-hat_4(n), a sum involving Stirling numbers of the first kind.

The programs for A261689, there is no canonical definition to state claims against.
-/

/-! ## A261689.P10582397307284181251

`A236836(A075509(n))`
-/

namespace A261689.P10582397307284181251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236836 (A075509 n).toNat

end

end A261689.P10582397307284181251

/-!
# A261691: Change of base from fractional base 3/2 to base 3.

The programs for A261691, the canonical program `A261691.P10247400380290130395` is in `Seq.B000.C038`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A261691 has offset 0).

The definition of A261691 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A261691.P10247400380290130395

`3*a(2*floor(n/3))+n%3` with `a(0)=0`

The canonical program, it is in `Seq.B000.C038`.
-/

namespace A261691

/-- `3*a(2*floor(n/3))+n%3` -/
def P10247400380290130395.Spec : Prop :=
  ∀ n, (P10247400380290130395.a n : ℤ) = A261691 n

theorem P10247400380290130395.correct : P10247400380290130395.Spec := by
  intro n
  simp only [A261691]

end A261691

/-! ## A261691.P15034495221062212599

`A028898(A024629(n))`
-/

namespace A261691.P15034495221062212599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028898 (A024629 n).toNat

end

end A261691.P15034495221062212599

namespace A261691

/-- `A028898(A024629(n))` -/
def P15034495221062212599.Spec : Prop :=
  ∀ n, P15034495221062212599.a n = A261691 n

end A261691

/-! ## A261691.P11824548027310459430

`A028898(A024637(2*n)/2)`
-/

namespace A261691.P11824548027310459430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028898 (SequenceMachineLib.roundAway ((A024637 (2 * n) : ℚ) / 2)).toNat

end

end A261691.P11824548027310459430

namespace A261691

/-- `A028898(A024637(2*n)/2)` -/
def P11824548027310459430.Spec : Prop :=
  ∀ n, P11824548027310459430.a n = A261691 n

end A261691

/-! ## A261691.P9647407132578770457

`A028898(A024654(3*n)/3)`
-/

namespace A261691.P9647407132578770457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028898 (SequenceMachineLib.roundAway ((A024654 (3 * n) : ℚ) / 3)).toNat

end

end A261691.P9647407132578770457

namespace A261691

/-- `A028898(A024654(3*n)/3)` -/
def P9647407132578770457.Spec : Prop :=
  ∀ n, P9647407132578770457.a n = A261691 n

end A261691

/-! ## A261691.P1393707658631719390

`eq[A097508(A059128(n)), A342696(n)]`
-/

namespace A261691.P1393707658631719390
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097508 (A059128 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342696 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A261691.P1393707658631719390

namespace A261691

/-- `eq[A097508(A059128(n)), A342696(n)]` -/
def P1393707658631719390.Spec : Prop :=
  ∀ n, (P1393707658631719390.a n : ℤ) = A261691 n

end A261691

/-!
# A261692: Number of "ON" cells after n-th stage in a cellular automaton in a 90-degree wedge on the square grid. (See Comments lines for definition.)

The programs for A261692, there is no canonical definition to state claims against.
-/

/-! ## A261692.P2143951310289058092

`(A262620(n)-1)/4`
-/

namespace A261692.P2143951310289058092
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A262620 n - 1 : ℚ) / 4

end

end A261692.P2143951310289058092

/-! ## A261692.P8354151297214896332

`∑[or(2*n, a(n-1))]-n²` with `a(0)=0`
-/

namespace A261692.P8354151297214896332
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0] fun n f1 =>
  Nat.lor (2 * n) (f1 (n - 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - (n ^ 2 : ℤ)

end

end A261692.P8354151297214896332

/-! ## A261692.P3474733386919892726

`∑[2^ceil(log2(2*n+1))-Δ[n²]]`
-/

namespace A261692.P3474733386919892726
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (⌈Real.logb 2 (2 * n + 1 : ℝ)⌉ : ℤ) - ((f2 (n + 1) : ℤ) - (f2 n : ℤ) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A261692.P3474733386919892726

/-! ## A261692.P2331571448358707865

`∑[abs((-1)^n+2*a(floor(n/2)))]-1` with `a(0)=1`
-/

namespace A261692.P2331571448358707865
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  |(-1) ^ n + 2 * f1 ⌊(n : ℚ) / 2⌋.toNat|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A261692.P2331571448358707865

/-! ## A261692.P13175348666341865428

`xor(∑[2*a(floor(n/2))-(-1)^n], -1)` with `a(0)=-1`
-/

namespace A261692.P13175348666341865428
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [-1] fun n f1 =>
  2 * f1 ⌊(n : ℚ) / 2⌋.toNat - (-1) ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (∑ j ∈ Finset.range (n + 1), f1 j) (-1)

end

end A261692.P13175348666341865428

/-! ## A261692.P10478576161187642153

`1-((n+1)²-∑[2*a(floor(n/2))])` with `a(0)=0, a(1)=4`
-/

namespace A261692.P10478576161187642153
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 4] fun n f1 =>
  2 * f1 ⌊(n : ℚ) / 2⌋.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (((n + 1) ^ 2 : ℤ) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ))

end

end A261692.P10478576161187642153

/-! ## A261692.P9606102541388683318

`∑[∑[∏{p}[2*n, n*val(#², 2)]]-n-n]-1`
-/

namespace A261692.P9606102541388683318
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f3 n), n * SequenceMachineLib.valuation (p ^ 2) 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ) - (n : ℤ) - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A261692.P9606102541388683318

/-! ## A261692.P5061323383399190185

`a(n-1)+2^ceil(log2(2*n+1))-Δ[n²]` with `a(0)=0`
-/

namespace A261692.P5061323383399190185
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℚ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) + ((2 : ℚ) ^ (⌈Real.logb 2 (2 * n + 1 : ℝ)⌉ : ℤ) - ((f1 (n + 1) : ℤ) - (f1 n : ℤ) : ℚ))

end

end A261692.P5061323383399190185

/-! ## A261692.P12267233140668901641

`∑[-or(2*n+1, xor(-(2*n), a(n-1)))]-1` with `a(0)=1`
-/

namespace A261692.P12267233140668901641
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  -Int.lor (2 * n + 1 : ℤ) (Int.xor (-(2 * n : ℤ)) (f1 (n - 1)))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A261692.P12267233140668901641

/-! ## A261692.P11327921309855603997

`A256266(n)/3-n`
-/

namespace A261692.P11327921309855603997
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A256266 n : ℚ) / 3 - (n : ℚ)

end

end A261692.P11327921309855603997

/-!
# A261693: Irregular triangle read by rows in which row n lists the positive odd numbers in decreasing order starting with 2^n - 1. T(0, 1) = 0 and T(n, k) for n >= 1, 1 <= k <= 2^(n-1).

The programs for A261693, the canonical program `A261693.P14273630952033533185` is in `Seq.B000.C038`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A261693 has offset 0).

The definition of A261693 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A261693.P6364189275079566353

`2^ceil(log2(Δ[n²]))-Δ[n²]`
-/

namespace A261693.P6364189275079566353
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (⌈Real.logb 2 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) : ℝ)⌉ : ℤ) - ((f2 (n + 1) : ℤ) - (f2 n : ℤ) : ℚ)

end

end A261693.P6364189275079566353

namespace A261693

/-- `2^ceil(log2(Δ[n²]))-Δ[n²]` -/
def P6364189275079566353.Spec : Prop :=
  ∀ n, P6364189275079566353.a n = (A261693 n : ℚ)

end A261693

/-! ## A261693.P3822610633373973640

`(2^ceil(log2(Δ[n²])))%Δ[n²]`
-/

namespace A261693.P3822610633373973640
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway ((2 : ℚ) ^ (⌈Real.logb 2 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) : ℝ)⌉ : ℤ))) ((f2 (n + 1) : ℤ) - (f2 n : ℤ))

end

end A261693.P3822610633373973640

namespace A261693

/-- `(2^ceil(log2(Δ[n²])))%Δ[n²]` -/
def P3822610633373973640.Spec : Prop :=
  ∀ n, P3822610633373973640.a n = A261693 n

end A261693

/-! ## A261693.P5135623324209126635

`and(Δ[-n²], ∑[n*char[2^n]])`
-/

namespace A261693.P5135623324209126635
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(n ^ 2 : ℤ)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * (if ∃ j, f3 j = n then 1 else 0)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (f1 (n + 1) - f1 n) ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)

end

end A261693.P5135623324209126635

namespace A261693

/-- `and(Δ[-n²], ∑[n*char[2^n]])` -/
def P5135623324209126635.Spec : Prop :=
  ∀ n, P5135623324209126635.a n = A261693 n

end A261693

/-! ## A261693.P14273630952033533185

`abs((-1)^n+2*a(floor(n/2)))` with `a(0)=0`

The canonical program, it is in `Seq.B000.C038`.
-/

namespace A261693

/-- `abs((-1)^n+2*a(floor(n/2)))` -/
def P14273630952033533185.Spec : Prop :=
  ∀ n, P14273630952033533185.a n = A261693 n

theorem P14273630952033533185.correct : P14273630952033533185.Spec := by
  intro n
  simp only [A261693]

end A261693

/-! ## A261693.P9376408681585966190

`xor(2*a(floor(n/2)), 3^(n%2))` with `a(0)=0, a(1)=1`
-/

namespace A261693.P9376408681585966190
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 1] fun n a =>
  Nat.xor (2 * a ⌊(n : ℚ) / 2⌋.toNat) (3 ^ (n % 2))

end

end A261693.P9376408681585966190

namespace A261693

/-- `xor(2*a(floor(n/2)), 3^(n%2))` -/
def P9376408681585966190.Spec : Prop :=
  ∀ n, (P9376408681585966190.a n : ℤ) = A261693 n

end A261693

/-! ## A261693.P6000128219644487567

`-or(2*n+1, xor(-(2*n), a(n-1)))` with `a(0)=0`
-/

namespace A261693.P6000128219644487567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  -Int.lor (2 * n + 1 : ℤ) (Int.xor (-(2 * n : ℤ)) (a (n - 1)))

end

end A261693.P6000128219644487567

namespace A261693

/-- `-or(2*n+1, xor(-(2*n), a(n-1)))` -/
def P6000128219644487567.Spec : Prop :=
  ∀ n, P6000128219644487567.a n = A261693 n

end A261693

/-! ## A261693.P16432185852220293970

`abs(2*n-A006257(2*n))`
-/

namespace A261693.P16432185852220293970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(2 * n : ℤ) - A006257 (2 * n)|

end

end A261693.P16432185852220293970

namespace A261693

/-- `abs(2*n-A006257(2*n))` -/
def P16432185852220293970.Spec : Prop :=
  ∀ n, P16432185852220293970.a n = A261693 n

end A261693

/-! ## A261693.P16514089913030801255

`xor(A229763(n), A334076(n))`
-/

namespace A261693.P16514089913030801255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A229763 n) (A334076 n)

end

end A261693.P16514089913030801255

namespace A261693

/-- `xor(A229763(n), A334076(n))` -/
def P16514089913030801255.Spec : Prop :=
  ∀ n, P16514089913030801255.a n = A261693 n

end A261693

/-! ## A261693.P14070936089565835017

`A006257(A337909(n+1)-1)`
-/

namespace A261693.P14070936089565835017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006257 (A337909 (n + 1) - 1).toNat

end

end A261693.P14070936089565835017

namespace A261693

/-- `A006257(A337909(n+1)-1)` -/
def P14070936089565835017.Spec : Prop :=
  ∀ n, P14070936089565835017.a n = A261693 n

end A261693

/-! ## A261693.P2536332131089275315

`A119608(A345401(n))`
-/

namespace A261693.P2536332131089275315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119608 (A345401 n).toNat

end

end A261693.P2536332131089275315

namespace A261693

/-- `A119608(A345401(n))` -/
def P2536332131089275315.Spec : Prop :=
  ∀ n, P2536332131089275315.a n = A261693 n

end A261693

/-! ## A261693.P10796493404871345939

`xor(A163617(n), A265716(n))`
-/

namespace A261693.P10796493404871345939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A163617 n) (A265716 n)

end

end A261693.P10796493404871345939

namespace A261693

/-- `xor(A163617(n), A265716(n))` -/
def P10796493404871345939.Spec : Prop :=
  ∀ n, P10796493404871345939.a n = A261693 n

end A261693

/-! ## A261693.P12304083162514069079

`xor(n, A279645(2*n))`
-/

namespace A261693.P12304083162514069079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) (A279645 (2 * n))

end

end A261693.P12304083162514069079

namespace A261693

/-- `xor(n, A279645(2*n))` -/
def P12304083162514069079.Spec : Prop :=
  ∀ n, P12304083162514069079.a n = A261693 n

end A261693

/-! ## A261693.P9824373485856850917

`abs(A088161(2*n)+n)`
-/

namespace A261693.P9824373485856850917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A088161 (2 * n) + (n : ℤ)|

end

end A261693.P9824373485856850917

namespace A261693

/-- `abs(A088161(2*n)+n)` -/
def P9824373485856850917.Spec : Prop :=
  ∀ n, P9824373485856850917.a n = A261693 n

end A261693

/-! ## A261693.P11253622469551745924

`xor(2*n, A003817(2*n))`
-/

namespace A261693.P11253622469551745924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (2 * n : ℤ) (A003817 (2 * n))

end

end A261693.P11253622469551745924

namespace A261693

/-- `xor(2*n, A003817(2*n))` -/
def P11253622469551745924.Spec : Prop :=
  ∀ n, P11253622469551745924.a n = A261693 n

end A261693

/-! ## A261693.P8996089997796987432

`A035327(A004277(n))`
-/

namespace A261693.P8996089997796987432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035327 (A004277 n).toNat

end

end A261693.P8996089997796987432

namespace A261693

/-- `A035327(A004277(n))` -/
def P8996089997796987432.Spec : Prop :=
  ∀ n, P8996089997796987432.a n = A261693 n

end A261693

/-! ## A261693.P10877370834287141247

`A035327(A004273(n)+1)`
-/

namespace A261693.P10877370834287141247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035327 (A004273 n + 1).toNat

end

end A261693.P10877370834287141247

namespace A261693

/-- `A035327(A004273(n)+1)` -/
def P10877370834287141247.Spec : Prop :=
  ∀ n, P10877370834287141247.a n = A261693 n

end A261693

/-! ## A261693.P629422588600867817

`A035327(A004275(n+1))`
-/

namespace A261693.P629422588600867817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035327 (A004275 (n + 1)).toNat

end

end A261693.P629422588600867817

namespace A261693

/-- `A035327(A004275(n+1))` -/
def P629422588600867817.Spec : Prop :=
  ∀ n, P629422588600867817.a n = A261693 n

end A261693

/-! ## A261693.P10507225795802867851

`A035327(A028310(2*n))`
-/

namespace A261693.P10507225795802867851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035327 (A028310 (2 * n)).toNat

end

end A261693.P10507225795802867851

namespace A261693

/-- `A035327(A028310(2*n))` -/
def P10507225795802867851.Spec : Prop :=
  ∀ n, P10507225795802867851.a n = A261693 n

end A261693

/-! ## A261693.P8813322901891474390

`A035327(A028310(n)+n)`
-/

namespace A261693.P8813322901891474390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035327 (A028310 n + (n : ℤ)).toNat

end

end A261693.P8813322901891474390

namespace A261693

/-- `A035327(A028310(n)+n)` -/
def P8813322901891474390.Spec : Prop :=
  ∀ n, P8813322901891474390.a n = A261693 n

end A261693

/-! ## A261693.P6313257625188201669

`A006257(A003817(2*n)-n)`
-/

namespace A261693.P6313257625188201669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006257 (A003817 (2 * n) - (n : ℤ)).toNat

end

end A261693.P6313257625188201669

namespace A261693

/-- `A006257(A003817(2*n)-n)` -/
def P6313257625188201669.Spec : Prop :=
  ∀ n, P6313257625188201669.a n = A261693 n

end A261693

/-!
# A261694: a(n) = Fibonacci(n) mod 21.

The programs for A261694, the canonical program `A261694.P4753749499885916908` is in `Seq.B001.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A261694 has offset 0).

The definition of A261694 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000045(n)%21` (program `A261694.P4753749499885916908`, by `A261694.P4753749499885916908.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A261694.P4753749499885916908

`A000045(n)%21`

The canonical program, it is in `Seq.B001.C010`.
-/

namespace A261694

/-- `A000045(n)%21` -/
def P4753749499885916908.Spec : Prop :=
  ∀ n, P4753749499885916908.a n = A261694 n

theorem P4753749499885916908.correct : P4753749499885916908.Spec := by
  intro n
  simp only [A261694]

end A261694

/-!
# A261695: First differences of A256534.

The programs for A261695, there is no canonical definition to state claims against.
-/

/-! ## A261695.P16661613911910814095

`Δ[A256534(n-round(n/(n+1)))]`
-/

namespace A261695.P16661613911910814095
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256534 ((n : ℤ) - SequenceMachineLib.roundAway ((n : ℚ) / (n + 1 : ℚ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A261695.P16661613911910814095

/-! ## A261695.P9728659615226900281

`A256534(n)-A256534((2*n)%(n+1))`
-/

namespace A261695.P9728659615226900281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256534 n - A256534 (2 * n % (n + 1))

end

end A261695.P9728659615226900281

/-! ## A261695.P312964737786218424

`lcm(A040005(A002444(n)), A151724(n))`
-/

namespace A261695.P312964737786218424
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A040005 (A002444 n).toNat) (A151724 n)

end

end A261695.P312964737786218424

/-! ## A261695.P261465448081136071

`A151724(n)*A379704(A379670(n+1))`
-/

namespace A261695.P261465448081136071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151724 n * A379704 (A379670 (n + 1)).toNat

end

end A261695.P261465448081136071

/-! ## A261695.P16680960155605548808

`A010694(A001792(n))*A151724(n)`
-/

namespace A261695.P16680960155605548808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010694 (A001792 n).toNat * A151724 n

end

end A261695.P16680960155605548808

/-!
# A261697: Irregular triangle read by rows in which row n lists the odd divisors of n in the ordering given by A261699.

The programs for A261697, there is no canonical definition to state claims against.
-/

/-! ## A261697.P15493360326971160793

`filter[A261699(1+n), A000035(#)]`
-/

namespace A261697.P15493360326971160793
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261699 (1 + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A000035 (f1 j).toNat = 1) n)

end

end A261697.P15493360326971160793

/-! ## A261697.P13293471103521950289

`filter[A261699(n+1), A097325(#)]`
-/

namespace A261697.P13293471103521950289
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261699 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A097325 (f1 j).toNat = 1) n)

end

end A261697.P13293471103521950289

/-! ## A261697.P14396536805445237829

`filter[A261699(n+1), A098725(#)]`
-/

namespace A261697.P14396536805445237829
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261699 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A098725 (f1 j).toNat = 1) n)

end

end A261697.P14396536805445237829

/-! ## A261697.P11608184936041231345

`filter[A261699(n+1), A115971(#)]`
-/

namespace A261697.P11608184936041231345
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261699 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A115971 (f1 j).toNat = 1) n)

end

end A261697.P11608184936041231345

/-! ## A261697.P6855378288125140167

`filter[A261699(n+1), A144609(#)]`
-/

namespace A261697.P6855378288125140167
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261699 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A144609 (f1 j).toNat = 1) n)

end

end A261697.P6855378288125140167

/-! ## A261697.P16966656945648556390

`filter[A261699(n+1), A166486(#)]`
-/

namespace A261697.P16966656945648556390
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261699 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A166486 (f1 j).toNat = 1) n)

end

end A261697.P16966656945648556390

/-! ## A261697.P392997992609246620

`filter[A261699(n+1), A168046(#)]`
-/

namespace A261697.P392997992609246620
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261699 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A168046 (f1 j).toNat = 1) n)

end

end A261697.P392997992609246620

/-! ## A261697.P5862893382993580341

`filter[A261699(n+1), A168181(#)]`
-/

namespace A261697.P5862893382993580341
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261699 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A168181 (f1 j).toNat = 1) n)

end

end A261697.P5862893382993580341

/-! ## A261697.P11051218804719406078

`filter[A261699(n+1), A168184(#)]`
-/

namespace A261697.P11051218804719406078
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261699 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A168184 (f1 j).toNat = 1) n)

end

end A261697.P11051218804719406078

/-! ## A261697.P2280085669284885244

`filter[A261699(n+1), A168185(#)]`
-/

namespace A261697.P2280085669284885244
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261699 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A168185 (f1 j).toNat = 1) n)

end

end A261697.P2280085669284885244

/-!
# A261698: Irregular triangle read by rows in which row n lists the odd divisors of n in the order as follows: the smallest, the largest, the second smallest, the second largest, the third smallest, the third largest, and so on.

The programs for A261698, there is no canonical definition to state claims against.
-/

/-! ## A261698.P13891027091693976571

`filter[A228814(n+1), A000035(#)]`
-/

namespace A261698.P13891027091693976571
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228814 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A000035 (f1 j).toNat = 1) n)

end

end A261698.P13891027091693976571

/-! ## A261698.P1356032897809460915

`filter[A228814(n+1), A125122(#)]`
-/

namespace A261698.P1356032897809460915
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228814 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A125122 (f1 j).toNat = 1) n)

end

end A261698.P1356032897809460915

/-! ## A261698.P14619571408971903768

`A228814(eq[1, A228814(n+1)%2]+1)`
-/

namespace A261698.P14619571408971903768
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A228814 (n + 1)) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228814 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A261698.P14619571408971903768

/-! ## A261698.P13885777334705099081

`A261697(n+1)^A003099(A034562(n+1))`
-/

namespace A261698.P13885777334705099081
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A261697 (n + 1) : ℚ) ^ (A003099 (A034562 (n + 1)).toNat : ℤ)

end

end A261698.P13885777334705099081

/-! ## A261698.P16663458804884427307

`A261697(n+1)^A065941(A261699(3*n+5))`
-/

namespace A261698.P16663458804884427307
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A261697 (n + 1) : ℚ) ^ (A065941 (A261699 (3 * n + 5)).toNat : ℤ)

end

end A261698.P16663458804884427307

/-!
# A261699: Triangle read by rows: T(n,k), n >= 1, k >= 1, in which column k lists positive terms interleaved with k-1 zeros, starting in row k(k+1)/2. If k is odd the positive terms of column k are k's, otherwise if k is even the positive terms of column k are the odd numbers greater than k in increasing order.

The programs for A261699, there is no canonical definition to state claims against.
-/

/-! ## A261699.P9789048019112689685

`A237048(n+1)*A261697(∑[A237048(n+1)])`
-/

namespace A261699.P9789048019112689685
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237048 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237048 (n + 1) * A261697 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A261699.P9789048019112689685

/-! ## A261699.P7240767052356858963

`xor(A231345(n+1)+1, A353501(A151672(2*(n+2))))`
-/

namespace A261699.P7240767052356858963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A231345 (n + 1) + 1) (A353501 (A151672 (2 * (n + 2))).toNat)

end

end A261699.P7240767052356858963

/-! ## A261699.P864934469216448575

`A173884(3*(n+1))%A057768(A046013(n+1))`
-/

namespace A261699.P864934469216448575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A173884 (3 * (n + 1))) (A057768 (A046013 (n + 1)).toNat)

end

end A261699.P864934469216448575

/-! ## A261699.P9794593555894039927

`A120569(A284031(n+1)+1)`
-/

namespace A261699.P9794593555894039927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120569 (A284031 (n + 1) + 1).toNat

end

end A261699.P9794593555894039927

/-! ## A261699.P5407058741845440661

`xor(1, A001222(A219727(3*(n+1))))`
-/

namespace A261699.P5407058741845440661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (A001222 (A219727 (3 * (n + 1))).toNat)

end

end A261699.P5407058741845440661

