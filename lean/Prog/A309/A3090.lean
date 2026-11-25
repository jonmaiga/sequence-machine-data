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
import Seq.B000.C026
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C036
import Seq.B000.C038
import Seq.B000.C039
import Seq.B000.C042
import Seq.B000.C043
import Seq.B000.C044
import Seq.B000.C048
import Seq.B000.C049
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C010
import Seq.B001.C012
import Seq.B001.C013
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C003
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
import Seq.B007.C001
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
# A309000: Number of strings of length n from a 3-symbol alphabet (A,B,C, say) containing at least one "A" and at least two "B"s.

The programs for A309000, the canonical program `A309000.P3437161131219164254` is in `Seq.B000.C044`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A309000 has offset 3).

The definition of A309000 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A309000.P3437161131219164254

`3^(n+3)-2^(n+4)-(n+3)*2^(n+2)+n+3+1`

The canonical program, it is in `Seq.B000.C044`.
-/

namespace A309000

/-- `3^(n+3)-2^(n+4)-(n+3)*2^(n+2)+n+3+1` -/
def P3437161131219164254.Spec : Prop :=
  ∀ n, P3437161131219164254.a n = A309000 (n + 3)

theorem P3437161131219164254.correct : P3437161131219164254.Spec := by
  intro n
  simp only [A309000, Nat.add_sub_cancel]

end A309000

/-! ## A309000.P3080979809339759220

`ogf((3-5x)/(1-9x+31x^2-51x^3+40x^4-12x^5))`
-/

namespace A309000.P3080979809339759220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [3, -5] [1, -9, 31, -51, 40, -12] n

end

end A309000.P3080979809339759220

namespace A309000

/-- `ogf((3-5x)/(1-9x+31x^2-51x^3+40x^4-12x^5))` -/
def P3080979809339759220.Spec : Prop :=
  ∀ n, P3080979809339759220.a n = A309000 (n + 3)

end A309000

/-! ## A309000.P18301701667400043210

`A046803(∑[n+2]+4)`
-/

namespace A309000.P18301701667400043210
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046803 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A309000.P18301701667400043210

namespace A309000

/-- `A046803(∑[n+2]+4)` -/
def P18301701667400043210.Spec : Prop :=
  ∀ n, P18301701667400043210.a n = A309000 (n + 3)

end A309000

/-!
# A309001: a(n) is the denominator of the rational part of Sum_{k>=n} binomial(2*k,k-n)^(-1).

The programs for A309001, there is no canonical definition to state claims against.
-/

/-! ## A309001.P9319020452022384228

`A271410(A065163(n+1)+4)`
-/

namespace A309001.P9319020452022384228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271410 (A065163 (n + 1) + 4).toNat

end

end A309001.P9319020452022384228

/-! ## A309001.P7422515961032950928

`A008480(A000142(n+1))*A026789(A335452(n+1))`
-/

namespace A309001.P7422515961032950928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008480 (A000142 (n + 1)).toNat * A026789 (A335452 (n + 1)).toNat

end

end A309001.P7422515961032950928

/-!
# A309002: Multiplicative with a(p) = p^2 and a(p^e) = p^a(e) for any e > 1 and prime number p.

The programs for A309002, the canonical program `A309002.P3766737663258813332` is in `Seq.B001.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A309002 has offset 1).

The definition of A309002 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 255 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A309002.P450134758812092609

`lcm(∏{p}[n+1, #²], ∏{p}[n+1, #^val(n+1, #)²])`
-/

namespace A309002.P450134758812092609
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm (∏ p ∈ Nat.primeFactors (f1 n), p ^ 2) (∏ p ∈ Nat.primeFactors (f2 n), p ^ SequenceMachineLib.valuation (n + 1) p ^ 2)

end

end A309002.P450134758812092609

namespace A309002

/-- `lcm(∏{p}[n+1, #²], ∏{p}[n+1, #^val(n+1, #)²])` -/
def P450134758812092609.Spec : Prop :=
  ∀ n, (P450134758812092609.a n : ℤ) = A309002 (n + 1)

end A309002

/-! ## A309002.P3766737663258813332

`lcm((n+1)², A054496(n+1))`

The canonical program, it is in `Seq.B001.C012`.
-/

namespace A309002

/-- `lcm((n+1)², A054496(n+1))` -/
def P3766737663258813332.Spec : Prop :=
  ∀ n, (P3766737663258813332.a n : ℤ) = A309002 (n + 1)

theorem P3766737663258813332.correct : P3766737663258813332.Spec := by
  intro n
  simp only [A309002, Nat.add_sub_cancel]

end A309002

/-! ## A309002.P1938689833151034516

`A054496(n+1)*A055231(n+1)`
-/

namespace A309002.P1938689833151034516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054496 (n + 1) * A055231 (n + 1)

end

end A309002.P1938689833151034516

namespace A309002

/-- `A054496(n+1)*A055231(n+1)` -/
def P1938689833151034516.Spec : Prop :=
  ∀ n, P1938689833151034516.a n = A309002 (n + 1)

end A309002

/-! ## A309002.P14956484457943798890

`A183091(n+1)²/A057521(n+1)`
-/

namespace A309002.P14956484457943798890
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A183091 (n + 1) ^ 2 : ℚ) / (A057521 (n + 1) : ℚ)

end

end A309002.P14956484457943798890

namespace A309002

/-- `A183091(n+1)²/A057521(n+1)` -/
def P14956484457943798890.Spec : Prop :=
  ∀ n, P14956484457943798890.a n = (A309002 (n + 1) : ℚ)

end A309002

/-! ## A309002.P1343111535642238061

`A007913(A007948(n+1))*A054496(n+1)`
-/

namespace A309002.P1343111535642238061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (A007948 (n + 1)).toNat * A054496 (n + 1)

end

end A309002.P1343111535642238061

namespace A309002

/-- `A007913(A007948(n+1))*A054496(n+1)` -/
def P1343111535642238061.Spec : Prop :=
  ∀ n, P1343111535642238061.a n = A309002 (n + 1)

end A309002

/-!
# A309004: The number of numbers with the same prime signature and set of distinct prime factors as n (including n).

The programs for A309004, the canonical program `A309004.P12825694522914242724` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A309004 has offset 1).

The definition of A309004 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A008480, A181819, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A309004.P12825694522914242724

`A008480(A181819(n+1))`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A309004

/-- `A008480(A181819(n+1))` -/
def P12825694522914242724.Spec : Prop :=
  ∀ n, P12825694522914242724.a n = A309004 (n + 1)

theorem P12825694522914242724.correct : P12825694522914242724.Spec := by
  intro n
  simp only [A309004, Nat.add_sub_cancel]

end A309004

/-! ## A309004.P1586694100638326012

`A321648(A238745(1+n))`
-/

namespace A309004.P1586694100638326012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321648 (A238745 (1 + n)).toNat

end

end A309004.P1586694100638326012

namespace A309004

/-- `A321648(A238745(1+n))` -/
def P1586694100638326012.Spec : Prop :=
  ∀ n, P1586694100638326012.a n = A309004 (n + 1)

end A309004

/-! ## A309004.P11387584535843222737

`A318762(A328830(n+1))`
-/

namespace A309004.P11387584535843222737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318762 (A328830 (n + 1)).toNat

end

end A309004.P11387584535843222737

namespace A309004

/-- `A318762(A328830(n+1))` -/
def P11387584535843222737.Spec : Prop :=
  ∀ n, P11387584535843222737.a n = A309004 (n + 1)

end A309004

/-! ## A309004.P8778816911328239226

`A006530(A066882(A181819(n+1))!)`
-/

namespace A309004.P8778816911328239226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (Nat.factorial (A066882 (A181819 (n + 1)).toNat).toNat)

end

end A309004.P8778816911328239226

namespace A309004

/-- `A006530(A066882(A181819(n+1))!)` -/
def P8778816911328239226.Spec : Prop :=
  ∀ n, P8778816911328239226.a n = A309004 (n + 1)

end A309004

/-! ## A309004.P9466372234677540057

`A081707(A295879((n+1)²))`
-/

namespace A309004.P9466372234677540057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081707 (A295879 ((n + 1) ^ 2)).toNat

end

end A309004.P9466372234677540057

namespace A309004

/-- `A081707(A295879((n+1)²))` -/
def P9466372234677540057.Spec : Prop :=
  ∀ n, P9466372234677540057.a n = A309004 (n + 1)

end A309004

/-! ## A309004.P9489663630053549652

`A008284(A133263(n)-A182850(n+1))`
-/

namespace A309004.P9489663630053549652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008284 (A133263 n - A182850 (n + 1)).toNat

end

end A309004.P9489663630053549652

namespace A309004

/-- `A008284(A133263(n)-A182850(n+1))` -/
def P9489663630053549652.Spec : Prop :=
  ∀ n, P9489663630053549652.a n = A309004 (n + 1)

end A309004

/-! ## A309004.P2405788406011605394

`A064372(A181819(n+1)^A064372(n+1))`
-/

namespace A309004.P2405788406011605394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064372 (SequenceMachineLib.roundAway ((A181819 (n + 1) : ℚ) ^ (A064372 (n + 1) : ℤ))).toNat

end

end A309004.P2405788406011605394

namespace A309004

/-- `A064372(A181819(n+1)^A064372(n+1))` -/
def P2405788406011605394.Spec : Prop :=
  ∀ n, P2405788406011605394.a n = A309004 (n + 1)

end A309004

/-! ## A309004.P1840191902609419245

`A066882(A181819(n+1)%A002054(n+1))`
-/

namespace A309004.P1840191902609419245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066882 (Int.tmod (A181819 (n + 1)) (A002054 (n + 1))).toNat

end

end A309004.P1840191902609419245

namespace A309004

/-- `A066882(A181819(n+1)%A002054(n+1))` -/
def P1840191902609419245.Spec : Prop :=
  ∀ n, P1840191902609419245.a n = A309004 (n + 1)

end A309004

/-! ## A309004.P14944140698805313930

`gcd(A007318(2^A000005(n+1)), A001221(n+1))`
-/

namespace A309004.P14944140698805313930
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A007318 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A000005 (n + 1) : ℤ))).toNat) (A001221 (n + 1))

end

end A309004.P14944140698805313930

namespace A309004

/-- `gcd(A007318(2^A000005(n+1)), A001221(n+1))` -/
def P14944140698805313930.Spec : Prop :=
  ∀ n, (P14944140698805313930.a n : ℤ) = A309004 (n + 1)

end A309004

/-! ## A309004.P2446869168937623846

`A285572(A181819((n+1)²))`
-/

namespace A309004.P2446869168937623846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285572 (A181819 ((n + 1) ^ 2)).toNat

end

end A309004.P2446869168937623846

namespace A309004

/-- `A285572(A181819((n+1)²))` -/
def P2446869168937623846.Spec : Prop :=
  ∀ n, P2446869168937623846.a n = A309004 (n + 1)

end A309004

/-!
# A309005: Odd squarefree composite numbers m such that m+2 is prime.

The programs for A309005, the canonical program `A309005.P3778487510630834579` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A309005 has offset 1).

The definition of A309005 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5950 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A309005.P3909321353517416731

`filter[A040976(2+n), A380469(#)]`
-/

namespace A309005.P3909321353517416731
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040976 (2 + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A380469 (f1 j).toNat = 1) n)

end

end A309005.P3909321353517416731

namespace A309005

/-- `filter[A040976(2+n), A380469(#)]` -/
def P3909321353517416731.Spec : Prop :=
  ∀ n, P3909321353517416731.a n = A309005 (n + 1)

end A309005

/-! ## A309005.P17048596817714365281

`filter[A179384(2+n), A380469(#)]`
-/

namespace A309005.P17048596817714365281
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179384 (2 + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A380469 (f1 j).toNat = 1) n)

end

end A309005.P17048596817714365281

namespace A309005

/-- `filter[A179384(2+n), A380469(#)]` -/
def P17048596817714365281.Spec : Prop :=
  ∀ n, P17048596817714365281.a n = A309005 (n + 1)

end A309005

/-! ## A309005.P9092292554980977985

`filter[A238526(2+n), A380469(#)]`
-/

namespace A309005.P9092292554980977985
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238526 (2 + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A380469 (f1 j).toNat = 1) n)

end

end A309005.P9092292554980977985

namespace A309005

/-- `filter[A238526(2+n), A380469(#)]` -/
def P9092292554980977985.Spec : Prop :=
  ∀ n, P9092292554980977985.a n = A309005 (n + 1)

end A309005

/-! ## A309005.P15308204492627074609

`filter[A179384(n+3), A008966(#)]`
-/

namespace A309005.P15308204492627074609
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179384 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A008966 (f1 j).toNat = 1) n)

end

end A309005.P15308204492627074609

namespace A309005

/-- `filter[A179384(n+3), A008966(#)]` -/
def P15308204492627074609.Spec : Prop :=
  ∀ n, P15308204492627074609.a n = A309005 (n + 1)

end A309005

/-! ## A309005.P11445549285107625082

`filter[A040976(n+3), A354819(#)]`
-/

namespace A309005.P11445549285107625082
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040976 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354819 (f1 j).toNat = 1) n)

end

end A309005.P11445549285107625082

namespace A309005

/-- `filter[A040976(n+3), A354819(#)]` -/
def P11445549285107625082.Spec : Prop :=
  ∀ n, P11445549285107625082.a n = A309005 (n + 1)

end A309005

/-! ## A309005.P10630797570452956918

`filter[A179384(n+3), A354819(#)]`
-/

namespace A309005.P10630797570452956918
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179384 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354819 (f1 j).toNat = 1) n)

end

end A309005.P10630797570452956918

namespace A309005

/-- `filter[A179384(n+3), A354819(#)]` -/
def P10630797570452956918.Spec : Prop :=
  ∀ n, P10630797570452956918.a n = A309005 (n + 1)

end A309005

/-! ## A309005.P3778487510630834579

`filter[A179384(n+3), A359590(#)]`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A309005

/-- `filter[A179384(n+3), A359590(#)]` -/
def P3778487510630834579.Spec : Prop :=
  ∀ n, P3778487510630834579.a n = A309005 (n + 1)

theorem P3778487510630834579.correct : P3778487510630834579.Spec := by
  intro n
  simp only [A309005, Nat.add_sub_cancel]

end A309005

/-! ## A309005.P5732082491023971990

`filter[A179384(n+3), A359592(#)]`
-/

namespace A309005.P5732082491023971990
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179384 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359592 (f1 j).toNat = 1) n)

end

end A309005.P5732082491023971990

namespace A309005

/-- `filter[A179384(n+3), A359592(#)]` -/
def P5732082491023971990.Spec : Prop :=
  ∀ n, P5732082491023971990.a n = A309005 (n + 1)

end A309005

/-! ## A309005.P9417110343950921662

`filter[A179384(n+3), A359834(#)]`
-/

namespace A309005.P9417110343950921662
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179384 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359834 (f1 j).toNat = 1) n)

end

end A309005.P9417110343950921662

namespace A309005

/-- `filter[A179384(n+3), A359834(#)]` -/
def P9417110343950921662.Spec : Prop :=
  ∀ n, P9417110343950921662.a n = A309005 (n + 1)

end A309005

/-! ## A309005.P7030099966949985336

`filter[A238526(n+3), A354819(#)]`
-/

namespace A309005.P7030099966949985336
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238526 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354819 (f1 j).toNat = 1) n)

end

end A309005.P7030099966949985336

namespace A309005

/-- `filter[A238526(n+3), A354819(#)]` -/
def P7030099966949985336.Spec : Prop :=
  ∀ n, P7030099966949985336.a n = A309005 (n + 1)

end A309005

/-! ## A309005.P4341978637951053570

`filter[A179384(n+3), A323154(#)]`
-/

namespace A309005.P4341978637951053570
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179384 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323154 (f1 j).toNat = 1) n)

end

end A309005.P4341978637951053570

namespace A309005

/-- `filter[A179384(n+3), A323154(#)]` -/
def P4341978637951053570.Spec : Prop :=
  ∀ n, P4341978637951053570.a n = A309005 (n + 1)

end A309005

/-! ## A309005.P9781692357263318666

`filter[A179384(n+3), A323239(#)]`
-/

namespace A309005.P9781692357263318666
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179384 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323239 (f1 j).toNat = 1) n)

end

end A309005.P9781692357263318666

namespace A309005

/-- `filter[A179384(n+3), A323239(#)]` -/
def P9781692357263318666.Spec : Prop :=
  ∀ n, P9781692357263318666.a n = A309005 (n + 1)

end A309005

/-! ## A309005.P17056746949577167194

`filter[A179384(n+3), A353559(#)]`
-/

namespace A309005.P17056746949577167194
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179384 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353559 (f1 j).toNat = 1) n)

end

end A309005.P17056746949577167194

namespace A309005

/-- `filter[A179384(n+3), A353559(#)]` -/
def P17056746949577167194.Spec : Prop :=
  ∀ n, P17056746949577167194.a n = A309005 (n + 1)

end A309005

/-! ## A309005.P13618385862975338671

`filter[A179384(n+3), A353627(#)]`
-/

namespace A309005.P13618385862975338671
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179384 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353627 (f1 j).toNat = 1) n)

end

end A309005.P13618385862975338671

namespace A309005

/-- `filter[A179384(n+3), A353627(#)]` -/
def P13618385862975338671.Spec : Prop :=
  ∀ n, P13618385862975338671.a n = A309005 (n + 1)

end A309005

/-! ## A309005.P2825705689127026355

`filter[A179384(n+3), A401714(#)]`
-/

namespace A309005.P2825705689127026355
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179384 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A401714 (f1 j).toNat = 1) n)

end

end A309005.P2825705689127026355

namespace A309005

/-- `filter[A179384(n+3), A401714(#)]` -/
def P2825705689127026355.Spec : Prop :=
  ∀ n, P2825705689127026355.a n = A309005 (n + 1)

end A309005

/-! ## A309005.P5708929593798001962

`filter[A169606(2*(n+1)), A354819(#)]`
-/

namespace A309005.P5708929593798001962
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169606 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354819 (f1 j).toNat = 1) n)

end

end A309005.P5708929593798001962

namespace A309005

/-- `filter[A169606(2*(n+1)), A354819(#)]` -/
def P5708929593798001962.Spec : Prop :=
  ∀ n, P5708929593798001962.a n = A309005 (n + 1)

end A309005

/-! ## A309005.P9761535994290340141

`filter[A169606(2*(n+1)), A380469(#)]`
-/

namespace A309005.P9761535994290340141
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169606 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A380469 (f1 j).toNat = 1) n)

end

end A309005.P9761535994290340141

namespace A309005

/-- `filter[A169606(2*(n+1)), A380469(#)]` -/
def P9761535994290340141.Spec : Prop :=
  ∀ n, P9761535994290340141.a n = A309005 (n + 1)

end A309005

/-! ## A309005.P18386364079452887807

`∩[A040976(n+1), A380470(n+1)]`
-/

namespace A309005.P18386364079452887807
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040976 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380470 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A309005.P18386364079452887807

namespace A309005

/-- `∩[A040976(n+1), A380470(n+1)]` -/
def P18386364079452887807.Spec : Prop :=
  ∀ n, (P18386364079452887807.a n : ℤ) = A309005 (n + 1)

end A309005

/-! ## A309005.P3527796093568932348

`p?[A024556(n+1)+2]-2`
-/

namespace A309005.P3527796093568932348
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024556 (n + 1) + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - 2

end

end A309005.P3527796093568932348

namespace A309005

/-- `p?[A024556(n+1)+2]-2` -/
def P3527796093568932348.Spec : Prop :=
  ∀ n, P3527796093568932348.a n = A309005 (n + 1)

end A309005

/-! ## A309005.P3494602487099762354

`∩[A024556(n+1), A040976(n+1)]`
-/

namespace A309005.P3494602487099762354
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024556 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040976 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A309005.P3494602487099762354

namespace A309005

/-- `∩[A024556(n+1), A040976(n+1)]` -/
def P3494602487099762354.Spec : Prop :=
  ∀ n, (P3494602487099762354.a n : ℤ) = A309005 (n + 1)

end A309005

/-!
# A309006: Product minus sum of the two previous terms in the sequence, with a(1) = 2 and a(2) = 5.

The programs for A309006, the canonical program `A309006.P16758744338293183012` is in `Seq.B000.C044`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A309006 has offset 1).

The definition of A309006 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A309006.P16758744338293183012

`a(n-1)*a(n-2)-(a(n-1)+a(n-2))` with `a(0)=2, a(1)=5`

The canonical program, it is in `Seq.B000.C044`.
-/

namespace A309006

/-- `a(n-1)*a(n-2)-(a(n-1)+a(n-2))` -/
def P16758744338293183012.Spec : Prop :=
  ∀ n, P16758744338293183012.a n = A309006 (n + 1)

theorem P16758744338293183012.correct : P16758744338293183012.Spec := by
  intro n
  simp only [A309006, Nat.add_sub_cancel]

end A309006

/-! ## A309006.P14126389075366995551

`(1-a(n-1))*(1-a(n-2))-1` with `a(0)=2, a(1)=5`
-/

namespace A309006.P14126389075366995551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 5] fun n a =>
  (1 - a (n - 1)) * (1 - a (n - 2)) - 1

end

end A309006.P14126389075366995551

namespace A309006

/-- `(1-a(n-1))*(1-a(n-2))-1` -/
def P14126389075366995551.Spec : Prop :=
  ∀ n, P14126389075366995551.a n = A309006 (n + 1)

theorem P14126389075366995551.correct : P14126389075366995551.Spec := by
  intro n
  simp only [A309006, Nat.add_sub_cancel, A309006.P14126389075366995551.a, A309006.P16758744338293183012.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A309006

/-! ## A309006.P15646757183122654778

`lcm(1-a(n-2), a(n-1))-a(n-2)` with `a(0)=2, a(1)=5`
-/

namespace A309006.P15646757183122654778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 5] fun n a =>
  (Int.lcm (1 - a (n - 2)) (a (n - 1)) : ℤ) - a (n - 2)

end

end A309006.P15646757183122654778

namespace A309006

/-- `lcm(1-a(n-2), a(n-1))-a(n-2)` -/
def P15646757183122654778.Spec : Prop :=
  ∀ n, P15646757183122654778.a n = A309006 (n + 1)

end A309006

/-!
# A309008: The same array as in A293500, but without the leading row and column of zeros. See that entry for more information.

The programs for A309008, there is no canonical definition to state claims against.
-/

/-! ## A309008.P1424834635426671733

`A293500(A140978(n+1)+1-n)`
-/

namespace A309008.P1424834635426671733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293500 (A140978 (n + 1) + (1 - (n : ℤ))).toNat

end

end A309008.P1424834635426671733

/-!
# A309010: Square array A(n, k) = Sum_{j=0..n} binomial(n,j)^k, n >= 0, k >= 0, read by antidiagonals.

The programs for A309010, there is no canonical definition to state claims against.
-/

/-! ## A309010.P3814800035261011942

`A400928(A061579(n))`
-/

namespace A309010.P3814800035261011942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A400928 (A061579 n).toNat

end

end A309010.P3814800035261011942

/-! ## A309010.P8997976554718370842

`A306641(n)/A089759(n)`
-/

namespace A309010.P8997976554718370842
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A306641 n : ℚ) / (A089759 n : ℚ)

end

end A309010.P8997976554718370842

/-! ## A309010.P1863298640927524728

`A306641(n)/A187783(A061579(n))`
-/

namespace A309010.P1863298640927524728
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A306641 n : ℚ) / (A187783 (A061579 n).toNat : ℚ)

end

end A309010.P1863298640927524728

/-! ## A309010.P3098287259954979557

`A306641(n)/A187783(A038722(n+2))`
-/

namespace A309010.P3098287259954979557
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A306641 n : ℚ) / (A187783 (A038722 (n + 2)).toNat : ℚ)

end

end A309010.P3098287259954979557

/-! ## A309010.P11750466089059629145

`A306641(n)/A187783(A114327(n)+n)`
-/

namespace A309010.P11750466089059629145
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A306641 n : ℚ) / (A187783 (A114327 n + (n : ℤ)).toNat : ℚ)

end

end A309010.P11750466089059629145

/-!
# A309011: Lexicographically earliest sequence of nonnegative integers such that for any n > 0, the palindromic word (a(n), a(n-1), ..., a(1), a(0), a(1), ..., a(n-1), a(n)) is squarefree.

The programs for A309011, there is no canonical definition to state claims against.
-/

/-! ## A309011.P3436196589488995018

`A356678(n+32)`
-/

namespace A309011.P3436196589488995018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356678 (n + 32)

end

end A309011.P3436196589488995018

/-! ## A309011.P4143724539450717209

`A356679(n+74)`
-/

namespace A309011.P4143724539450717209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356679 (n + 74)

end

end A309011.P4143724539450717209

/-! ## A309011.P15837207823081278900

`A356677(n+2)`
-/

namespace A309011.P15837207823081278900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356677 (n + 2)

end

end A309011.P15837207823081278900

/-! ## A309011.P14164014696799880878

`A356682(n+3)`
-/

namespace A309011.P14164014696799880878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356682 (n + 3)

end

end A309011.P14164014696799880878

/-! ## A309011.P18010923039834177846

`A078979(A111103(n+1))`
-/

namespace A309011.P18010923039834177846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078979 (A111103 (n + 1)).toNat

end

end A309011.P18010923039834177846

/-!
# A309012: Number of ordered pairs (i,j) with 0 < i < j < prime(n)/2 such that (i^16 mod prime(n)) > (j^16 mod prime(n)).

The programs for A309012, there is no canonical definition to state claims against.
-/

/-! ## A309012.P7246894636698674816

`A055087(A006840(n)*A302043(n+1))`
-/

namespace A309012.P7246894636698674816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055087 (A006840 n * A302043 (n + 1)).toNat

end

end A309012.P7246894636698674816

/-!
# A309013: Lexicographically earliest squarefree sequence of nonnegative integers whose even and odd bisections are also squarefree.

The programs for A309013, there is no canonical definition to state claims against.
-/

/-! ## A309013.P9419450737196703282

`A005836(A333997(n+1))%4`
-/

namespace A309013.P9419450737196703282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A005836 (A333997 (n + 1)).toNat) 4

end

end A309013.P9419450737196703282

/-! ## A309013.P10340261759925452307

`and(3, A005836(record[A333997(n+1)]))`
-/

namespace A309013.P10340261759925452307
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333997 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 3 (A005836 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat)

end

end A309013.P10340261759925452307

/-! ## A309013.P12215466405220206845

`A087991(A158591(lcm(n, A102283(n))))`
-/

namespace A309013.P12215466405220206845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087991 (A158591 (Int.lcm (n : ℤ) (A102283 n))).toNat

end

end A309013.P12215466405220206845

/-! ## A309013.P7541577247611124229

`A087991(A158591(n))*A102283(n²)`
-/

namespace A309013.P7541577247611124229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087991 (A158591 n).toNat * A102283 (n ^ 2)

end

end A309013.P7541577247611124229

/-! ## A309013.P13035425318535567795

`A007814(A192965(n)+A077800(2*(n+2)))`
-/

namespace A309013.P13035425318535567795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (A192965 n + A077800 (2 * (n + 2))).toNat

end

end A309013.P13035425318535567795

/-!
# A309014: a(n) = Sum_{k=0..n} (-1)^(n-k) * (Stirling2(n,k) mod 2).

The programs for A309014, the canonical program `A309014.P17833545605554751906` is in `Seq.B001.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A309014 has offset 0).

The definition of A309014 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2581 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A309014.P17833545605554751906

`abs(Δ[A002487(abs(1-n))])`

The canonical program, it is in `Seq.B001.C012`.
-/

namespace A309014

/-- `abs(Δ[A002487(abs(1-n))])` -/
def P17833545605554751906.Spec : Prop :=
  ∀ n, P17833545605554751906.a n = A309014 n

theorem P17833545605554751906.correct : P17833545605554751906.Spec := by
  intro n
  simp only [A309014]

end A309014

/-! ## A309014.P8286645635199619136

`A002487(abs(∑[gcd(2, n)²-3]))`
-/

namespace A309014.P8286645635199619136
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.gcd 2 n ^ 2 : ℤ) - 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002487 |∑ j ∈ Finset.range (n + 1), f1 j|.toNat

end

end A309014.P8286645635199619136

namespace A309014

/-- `A002487(abs(∑[gcd(2, n)²-3]))` -/
def P8286645635199619136.Spec : Prop :=
  ∀ n, P8286645635199619136.a n = A309014 n

end A309014

/-! ## A309014.P7371297261103361398

`A277700(A133684(n+1))`
-/

namespace A309014.P7371297261103361398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277700 (A133684 (n + 1)).toNat

end

end A309014.P7371297261103361398

namespace A309014

/-- `A277700(A133684(n+1))` -/
def P7371297261103361398.Spec : Prop :=
  ∀ n, P7371297261103361398.a n = A309014 n

end A309014

/-! ## A309014.P18350576724644954007

`A070878(A097110(n+1))`
-/

namespace A309014.P18350576724644954007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070878 (A097110 (n + 1)).toNat

end

end A309014.P18350576724644954007

namespace A309014

/-- `A070878(A097110(n+1))` -/
def P18350576724644954007.Spec : Prop :=
  ∀ n, P18350576724644954007.a n = A309014 n

end A309014

/-! ## A309014.P13815563126735805852

`A190431(A303609(n+1))`
-/

namespace A309014.P13815563126735805852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190431 (A303609 (n + 1)).toNat

end

end A309014.P13815563126735805852

namespace A309014

/-- `A190431(A303609(n+1))` -/
def P13815563126735805852.Spec : Prop :=
  ∀ n, P13815563126735805852.a n = A309014 n

end A309014

/-!
# A309015: 2-highly composite numbers: 3-smooth numbers (A003586) k with d(k) > d(j) for all 3-smooth numbers j < k, where d(k) is the number of divisors of k (A000005).

The programs for A309015, there is no canonical definition to state claims against.
-/

/-! ## A309015.P9687957672295988314

`A065769(record[A166633(2*n+1)])`
-/

namespace A309015.P9687957672295988314
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166633 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065769 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A309015.P9687957672295988314

/-! ## A309015.P11473507696365114887

`A349388(record[A166633(2*n+1)])`
-/

namespace A309015.P11473507696365114887
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166633 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349388 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A309015.P11473507696365114887

/-! ## A309015.P17505350529115552111

`record[A065769(A166633(n+1))/A093178(n)]`
-/

namespace A309015.P17505350529115552111
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A065769 (A166633 (n + 1)).toNat : ℚ) / (A093178 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A309015.P17505350529115552111

/-! ## A309015.P8217047573292524022

`A000010(record[A166633(2*n+1)]%A249397(n+1))`
-/

namespace A309015.P8217047573292524022
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166633 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (Int.tmod (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)) (A249397 (n + 1))).toNat

end

end A309015.P8217047573292524022

/-! ## A309015.P6645411544556398977

`A051176(record[A166633(2*n+1)])`
-/

namespace A309015.P6645411544556398977
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166633 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051176 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A309015.P6645411544556398977

/-!
# A309016: Superior 2-highly composite numbers: 3-smooth numbers (A003586) k for which there is a real number e > 0 such that d(k)/k^e >= d(j)/j^e for all 3-smooth numbers j, where d(k) is the number of divisors of k (A000005).

The programs for A309016, there is no canonical definition to state claims against.
-/

/-! ## A309016.P2737239493706521057

`∏[A020639(A000792(A103969(n+1)))]`
-/

namespace A309016.P2737239493706521057
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A000792 (A103969 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A309016.P2737239493706521057

/-! ## A309016.P15071382281206935158

`(and(1, -(A013906(n)*A038568(n)+1))+2)*a(n-1)` with `a(0)=1`
-/

namespace A309016.P15071382281206935158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (Int.land 1 (-(A013906 n * A038568 n + 1)) + 2) * a (n - 1)

end

end A309016.P15071382281206935158

/-! ## A309016.P6279295760015404511

`(A223730(n+1)+A006530(3*a(n-1))-1)*a(n-1)` with `a(0)=1`
-/

namespace A309016.P6279295760015404511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (A223730 (n + 1) + (A006530 (3 * a (n - 1)).toNat - 1)) * a (n - 1)

end

end A309016.P6279295760015404511

/-! ## A309016.P9201314267951609988

`A014682(∏[A025426(n)+2])`
-/

namespace A309016.P9201314267951609988
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025426 n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (∏ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A309016.P9201314267951609988

/-! ## A309016.P6268917217468467513

`record[∏[A214664(A343662(2*n+1))]]`
-/

namespace A309016.P6268917217468467513
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214664 (A343662 (2 * n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A309016.P6268917217468467513

/-!
# A309018: Number of perfect matchings in the graph C_{12} X C_n.

The programs for A309018, there is no canonical definition to state claims against.
-/

/-! ## A309018.P3835510841959759015

`A341741(eq[7, A128227(n)])`
-/

namespace A309018.P3835510841959759015
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128227 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341741 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A309018.P3835510841959759015

/-!
# A309019: Expansion of x * Product_{k>=0} (1 + x^(2^k) + x^(2^(k+1)) + x^(2^(k+2))).

The programs for A309019, there is no canonical definition to state claims against.
-/

/-! ## A309019.P12291247023029931693

`A074204(A294442(n))%A036432(n)`
-/

namespace A309019.P12291247023029931693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A074204 (A294442 n).toNat) (A036432 n)

end

end A309019.P12291247023029931693

/-! ## A309019.P10166620799617912276

`A243113(A305989(n)%A036432(n))`
-/

namespace A309019.P10166620799617912276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243113 (Int.tmod (A305989 n) (A036432 n)).toNat

end

end A309019.P10166620799617912276

/-! ## A309019.P2806822302442570801

`∑{e}[A000244(n), A194422(A020651(#))]`
-/

namespace A309019.P2806822302442570801
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000244 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A194422 (A020651 (Nat.factorization (f1 n).natAbs p)).toNat

end

end A309019.P2806822302442570801

/-!
# A309020: Expansion of x * Product_{k>=0} (1 + x^(2^k) + x^(2^(k+1)) - x^(2^(k+2))).

The programs for A309020, there is no canonical definition to state claims against.
-/

/-! ## A309020.P3224941025605438988

`A352825(A071053(15*n))`
-/

namespace A309020.P3224941025605438988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352825 (A071053 (15 * n)).toNat

end

end A309020.P3224941025605438988

/-! ## A309020.P2043737198129980712

`A030386(lcm(9, A305989(n)))`
-/

namespace A309020.P2043737198129980712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030386 (Int.lcm 9 (A305989 n))

end

end A309020.P2043737198129980712

/-! ## A309020.P12623248001209791906

`∑{e}[A071298(A286378(n)), #]`
-/

namespace A309020.P12623248001209791906
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071298 (A286378 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A309020.P12623248001209791906

/-! ## A309020.P12351084338097677646

`A001221(∑[A124736(A069891(n))])`
-/

namespace A309020.P12351084338097677646
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124736 (A069891 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A309020.P12351084338097677646

/-! ## A309020.P1444753147733527239

`A353849(A005843(n)*A351014(2*n+3))`
-/

namespace A309020.P1444753147733527239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353849 (A005843 n * A351014 (2 * n + 3)).toNat

end

end A309020.P1444753147733527239

/-!
# A309021: Expansion of x * Product_{k>=0} (1 + x^(2^k) - x^(2^(k+1)) - x^(2^(k+2))).

The programs for A309021, there is no canonical definition to state claims against.
-/

/-! ## A309021.P15422103655477616125

`A097032(n+1)-A181796(A000051(n))`
-/

namespace A309021.P15422103655477616125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097032 (n + 1) - A181796 (A000051 n).toNat

end

end A309021.P15422103655477616125

/-! ## A309021.P14131150157370960911

`comp[xor(n, 2*n+1)]%2-A287576(A343168(3*n+4))`
-/

namespace A309021.P14131150157370960911
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor n (2 * n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n % 2 : ℕ) : ℤ) - A287576 (A343168 (3 * n + 4)).toNat

end

end A309021.P14131150157370960911

/-! ## A309021.P455741822596131793

`A005590(n)-A004601(A227060(2*n+1))`
-/

namespace A309021.P455741822596131793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005590 n - A004601 (A227060 (2 * n + 1)).toNat

end

end A309021.P455741822596131793

/-! ## A309021.P13418253598353877802

`A001285(n)-1-A287576(A343168(3*n+4))`
-/

namespace A309021.P13418253598353877802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001285 n - 1 - A287576 (A343168 (3 * n + 4)).toNat

end

end A309021.P13418253598353877802

/-! ## A309021.P10118876465296723123

`A000035(A000120(n))-A287576(A343168(3*n+4))`
-/

namespace A309021.P10118876465296723123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A000120 n).toNat - A287576 (A343168 (3 * n + 4)).toNat

end

end A309021.P10118876465296723123

/-!
# A309023: For n >= 1, if there exists an m < n such that a(m) = a(n), take the largest such m and set a(n+1) = (n-m)^a(n); otherwise a(n+1) = 0. Start with a(1)=1, a(2)=2.

The programs for A309023, there is no canonical definition to state claims against.
-/

/-! ## A309023.P16964214559678380959

`A061395(A346864(∑[n+1]))`
-/

namespace A309023.P16964214559678380959
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (A346864 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A309023.P16964214559678380959

/-! ## A309023.P6555569921120462739

`A007955(n+1)%A000030(A005578(n+3))`
-/

namespace A309023.P6555569921120462739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A007955 (n + 1)) (A000030 (A005578 (n + 3)).toNat)

end

end A309023.P6555569921120462739

/-! ## A309023.P8184589996412143678

`A286263(n+3)%A279782(A038609(n+5))`
-/

namespace A309023.P8184589996412143678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A286263 (n + 3)) (A279782 (A038609 (n + 5)).toNat)

end

end A309023.P8184589996412143678

/-! ## A309023.P3329639453788318078

`xor(A124010(A185873(n+1)), A320658(n+1))`
-/

namespace A309023.P3329639453788318078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A124010 (A185873 (n + 1)).toNat) (A320658 (n + 1))

end

end A309023.P3329639453788318078

/-! ## A309023.P12655652341434547548

`A325613(xor(A325570(n+1), A325618(n+2)))`
-/

namespace A309023.P12655652341434547548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325613 (Int.xor (A325570 (n + 1)) (A325618 (n + 2))).toNat

end

end A309023.P12655652341434547548

/-!
# A309025: Expansion of x * Product_{k>=0} (1 + x^(2^k) + x^(2^(k+3))).

The programs for A309025, there is no canonical definition to state claims against.
-/

/-! ## A309025.P12735911864957628757

`A309026(lt[A043775(n+1), A240062(n+5)])`
-/

namespace A309025.P12735911864957628757
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043775 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240062 (n + 5)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309026 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A309025.P12735911864957628757

/-! ## A309025.P13656653126690683925

`A037833(A360793(2*(n+2))+A171864(n+1))`
-/

namespace A309025.P13656653126690683925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037833 (A360793 (2 * (n + 2)) + A171864 (n + 1)).toNat

end

end A309025.P13656653126690683925

/-! ## A309025.P9052972242316430160

`A360617(A011961(n+2))`
-/

namespace A309025.P9052972242316430160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360617 (A011961 (n + 2)).toNat

end

end A309025.P9052972242316430160

/-! ## A309025.P1794691129508043851

`A371091(A371091(n)^A247005(n))`
-/

namespace A309025.P1794691129508043851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371091 (SequenceMachineLib.roundAway ((A371091 n : ℚ) ^ (A247005 n : ℤ))).toNat

end

end A309025.P1794691129508043851

/-! ## A309025.P2747589788944210154

`A384890(A316076(n)%A332461(n+1))`
-/

namespace A309025.P2747589788944210154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A384890 (Int.tmod (A316076 n) (A332461 (n + 1))).toNat

end

end A309025.P2747589788944210154

/-!
# A309026: Expansion of x * Product_{k>=0} (1 + x^(2^k) + x^(2^(k+4))).

The programs for A309026, there is no canonical definition to state claims against.
-/

/-! ## A309026.P4448677417481347706

`A297044(A278243(n)+14)`
-/

namespace A309026.P4448677417481347706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297044 (A278243 n + 14).toNat

end

end A309026.P4448677417481347706

/-! ## A309026.P13923837150791499129

`ceil(n*ratio[gcd(2, n)]/A196098(2*(n+2)))`
-/

namespace A309026.P13923837150791499129
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd 2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n : ℚ) * ((f1 (n + 1) : ℚ) / (f1 n : ℚ)) / (A196098 (2 * (n + 2)) : ℚ)⌉

end

end A309026.P13923837150791499129

/-! ## A309026.P6197382805852873747

`A282565(n+2)%A377722(n+1)`
-/

namespace A309026.P6197382805852873747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A282565 (n + 2)) (A377722 (n + 1))

end

end A309026.P6197382805852873747

/-! ## A309026.P18170897881654911459

`and(2*n+1, A010882(A276878(2*n+1)))`
-/

namespace A309026.P18170897881654911459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (2 * n + 1 : ℤ) (A010882 (A276878 (2 * n + 1)).toNat)

end

end A309026.P18170897881654911459

/-! ## A309026.P15347050891016879578

`A303837(A336173(n)+A303837(n+1))`
-/

namespace A309026.P15347050891016879578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303837 (A336173 n + A303837 (n + 1)).toNat

end

end A309026.P15347050891016879578

/-!
# A309027: Prime powers of the form 12*c^2 + 4*c + 3, where c is an arbitrary integer.

The programs for A309027, there is no canonical definition to state claims against.
-/

/-! ## A309027.P15938600667279240598

`record[p?[xor(3, floor(n²/3))]]`
-/

namespace A309027.P15938600667279240598
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 3 ⌊(n ^ 2 : ℚ) / 3⌋

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A309027.P15938600667279240598

/-! ## A309027.P17959943336309969662

`p?[floor((n+1)²/3)+3]`
-/

namespace A309027.P17959943336309969662
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((n + 1) ^ 2 : ℚ) / 3⌋ + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A309027.P17959943336309969662

/-! ## A309027.P4610160664624742061

`record[p?[or(2, A257083(n))]]`
-/

namespace A309027.P4610160664624742061
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 2 (A257083 n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A309027.P4610160664624742061

/-! ## A309027.P11122773986934048422

`record[A006530(floor(n²/3)+3)]`
-/

namespace A309027.P11122773986934048422
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (⌊(n ^ 2 : ℚ) / 3⌋ + 3).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A309027.P11122773986934048422

/-! ## A309027.P12931855130823636690

`record[A020639(floor(n²/3)+3)]`
-/

namespace A309027.P12931855130823636690
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (⌊(n ^ 2 : ℚ) / 3⌋ + 3).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A309027.P12931855130823636690

/-!
# A309029: Smallest k>0 such that the elliptic curve y^2 = x^3 - k*x has rank n, if k exists.

The programs for A309029, there is no canonical definition to state claims against.
-/

/-! ## A309029.P16250782568155700552

`A146729(A120803(2*n+1))+A055013(n)`
-/

namespace A309029.P16250782568155700552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146729 (A120803 (2 * n + 1)).toNat + A055013 n

end

end A309029.P16250782568155700552

/-!
# A309030: Numbers k for which rank of the elliptic curve y^2=x^3+k*x is 3.

The programs for A309030, there is no canonical definition to state claims against.
-/

/-! ## A309030.P18424859129086877700

`eq[3, A060953(A028310(n))]`
-/

namespace A309030.P18424859129086877700
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060953 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A309030.P18424859129086877700

/-! ## A309030.P1123337748648231470

`A065475(eq[3, A060953(n+1)])`
-/

namespace A309030.P1123337748648231470
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060953 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065475 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A309030.P1123337748648231470

/-! ## A309030.P1915983113822985134

`A153152(eq[3, A060953(n+1)])`
-/

namespace A309030.P1915983113822985134
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060953 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153152 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A309030.P1915983113822985134

/-! ## A309030.P13447376040950913510

`eq[3, A060953(A233583(n+1))]`
-/

namespace A309030.P13447376040950913510
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060953 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A309030.P13447376040950913510

/-!
# A309032: Numbers k for which rank of the elliptic curve y^2=x^3-k*x is 2.

The programs for A309032, there is no canonical definition to state claims against.
-/

/-! ## A309032.P2459677630756211611

`1+eq[2, A060952(n+1)]`
-/

namespace A309032.P2459677630756211611
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060952 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1 + SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A309032.P2459677630756211611

/-! ## A309032.P11715702620620251410

`eq[n/a(A060952(n)), n]` with `a(0)=2, a(1)=2, a(2)=1`
-/

namespace A309032.P11715702620620251410
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [2, 2, 1] fun n f1 =>
  (n : ℚ) / f1 (A060952 n).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = (f2 j : ℚ)) n

end

end A309032.P11715702620620251410

/-! ## A309032.P1749593027860934379

`eq[2, A060952(A028310(n))]`
-/

namespace A309032.P1749593027860934379
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060952 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A309032.P1749593027860934379

/-! ## A309032.P9177750967440152760

`A020725(eq[2, A060952(n+1)])`
-/

namespace A309032.P9177750967440152760
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060952 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A309032.P9177750967440152760

/-! ## A309032.P2953060543408179036

`A063660(eq[2, A060952(n+1)])`
-/

namespace A309032.P2953060543408179036
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060952 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063660 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A309032.P2953060543408179036

/-! ## A309032.P10034543812877551011

`eq[2, A060952(A233583(n+1))]`
-/

namespace A309032.P10034543812877551011
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060952 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A309032.P10034543812877551011

/-! ## A309032.P10471164917952586792

`A326178(eq[2, A060952(n+1)])`
-/

namespace A309032.P10471164917952586792
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060952 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326178 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A309032.P10471164917952586792

/-! ## A309032.P7114716294029918209

`eq[2, A060952(A065033(2*n))]`
-/

namespace A309032.P7114716294029918209
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060952 (A065033 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A309032.P7114716294029918209

/-! ## A309032.P14092191324569117949

`eq[2, A060952(A000007(n)+n)]`
-/

namespace A309032.P14092191324569117949
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060952 (A000007 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A309032.P14092191324569117949

/-!
# A309033: Numbers k for which rank of the elliptic curve y^2=x^3-k*x is 3.

The programs for A309033, there is no canonical definition to state claims against.
-/

/-! ## A309033.P257893045955752285

`eq[3, A060952(A028310(n))]`
-/

namespace A309033.P257893045955752285
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060952 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A309033.P257893045955752285

/-! ## A309033.P18035988048250528638

`A020725(eq[3, A060952(n+1)])`
-/

namespace A309033.P18035988048250528638
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060952 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A309033.P18035988048250528638

/-! ## A309033.P322688798095901557

`A063660(eq[3, A060952(n+1)])`
-/

namespace A309033.P322688798095901557
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060952 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063660 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A309033.P322688798095901557

/-! ## A309033.P13338583825007776230

`eq[3, A060952(A233583(n+1))]`
-/

namespace A309033.P13338583825007776230
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060952 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A309033.P13338583825007776230

/-! ## A309033.P2279135316438077193

`A326178(eq[3, A060952(n+1)])`
-/

namespace A309033.P2279135316438077193
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060952 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326178 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A309033.P2279135316438077193

/-!
# A309035: If a(n) is not a term of a(0),...,a(n-1), then a(n+1) = n - m, where m is the most recent time that some new value a(m) appeared for the first time; otherwise a(n+1) is the number of terms equal to a(n) in a(0),...,a(n-1). Start with a(0)=0, a(1)=0.

The programs for A309035, there is no canonical definition to state claims against.
-/

/-! ## A309035.P3436591933841188988

`A283004(2*n+1)-A051903(A001045(n+4))`
-/

namespace A309035.P3436591933841188988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283004 (2 * n + 1) - A051903 (A001045 (n + 4)).toNat

end

end A309035.P3436591933841188988

/-! ## A309035.P4159590842414819393

`A001222(or(A103780(n), A113225(n)))`
-/

namespace A309035.P4159590842414819393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (Int.lor (A103780 n) (A113225 n)).toNat

end

end A309035.P4159590842414819393

/-!
# A309036: a(n) = gcd(A007504(n), A014285(n)).

The programs for A309036, the canonical program `A309036.P15951794240758812912` is in `Seq.B003.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A309036 has offset 1).

The definition of A309036 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A014285, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A309036.P4146930687662693133

`A007504(n+1)/A307716(n+1)`
-/

namespace A309036.P4146930687662693133
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007504 (n + 1) : ℚ) / (A307716 (n + 1) : ℚ)

end

end A309036.P4146930687662693133

namespace A309036

/-- `A007504(n+1)/A307716(n+1)` -/
def P4146930687662693133.Spec : Prop :=
  ∀ n, P4146930687662693133.a n = (A309036 (n + 1) : ℚ)

end A309036

/-! ## A309036.P9727514450623830631

`A014285(n+1)/A306834(n+1)`
-/

namespace A309036.P9727514450623830631
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A014285 (n + 1) : ℚ) / (A306834 (n + 1) : ℚ)

end

end A309036.P9727514450623830631

namespace A309036

/-- `A014285(n+1)/A306834(n+1)` -/
def P9727514450623830631.Spec : Prop :=
  ∀ n, P9727514450623830631.a n = (A309036 (n + 1) : ℚ)

end A309036

/-! ## A309036.P15951794240758812912

`gcd(A007504(n+1), A014285(n+1))`

The canonical program, it is in `Seq.B003.C004`.
-/

namespace A309036

/-- `gcd(A007504(n+1), A014285(n+1))` -/
def P15951794240758812912.Spec : Prop :=
  ∀ n, (P15951794240758812912.a n : ℤ) = A309036 (n + 1)

theorem P15951794240758812912.correct : P15951794240758812912.Spec := by
  intro n
  simp only [A309036, Nat.add_sub_cancel]

end A309036

/-! ## A309036.P11367955489213475317

`gcd(∑[A007504(n)], A007504(n+1))`
-/

namespace A309036.P11367955489213475317
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (∑ j ∈ Finset.range (n + 1), f1 j) (A007504 (n + 1))

end

end A309036.P11367955489213475317

namespace A309036

/-- `gcd(∑[A007504(n)], A007504(n+1))` -/
def P11367955489213475317.Spec : Prop :=
  ∀ n, (P11367955489213475317.a n : ℤ) = A309036 (n + 1)

end A309036

/-! ## A309036.P2702620909307072514

`gcd(A014148(n+1), A023662(n+1))`
-/

namespace A309036.P2702620909307072514
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A014148 (n + 1)) (A023662 (n + 1))

end

end A309036.P2702620909307072514

namespace A309036

/-- `gcd(A014148(n+1), A023662(n+1))` -/
def P2702620909307072514.Spec : Prop :=
  ∀ n, (P2702620909307072514.a n : ℤ) = A309036 (n + 1)

end A309036

/-! ## A309036.P10007480542334780797

`∑[A033286(n+1)]/A306834(n+1)`
-/

namespace A309036.P10007480542334780797
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033286 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / (A306834 (n + 1) : ℚ)

end

end A309036.P10007480542334780797

namespace A309036

/-- `∑[A033286(n+1)]/A306834(n+1)` -/
def P10007480542334780797.Spec : Prop :=
  ∀ n, P10007480542334780797.a n = (A309036 (n + 1) : ℚ)

end A309036

/-! ## A309036.P9775452245042626570

`gcd(∑[A000040(n+1)], ∑[∑[A000040(n+1)]])`
-/

namespace A309036.P9775452245042626570
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (∑ j ∈ Finset.range (n + 1), f1 j) (∑ j ∈ Finset.range (n + 1), f2 j)

end

end A309036.P9775452245042626570

namespace A309036

/-- `gcd(∑[A000040(n+1)], ∑[∑[A000040(n+1)]])` -/
def P9775452245042626570.Spec : Prop :=
  ∀ n, (P9775452245042626570.a n : ℤ) = A309036 (n + 1)

end A309036

/-! ## A309036.P10357298120648107262

`gcd(∑[A160793(2*(n+1))], A160793(2*(n+1)))`
-/

namespace A309036.P10357298120648107262
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160793 (2 * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (∑ j ∈ Finset.range (n + 1), f1 j) (A160793 (2 * (n + 1)))

end

end A309036.P10357298120648107262

namespace A309036

/-- `gcd(∑[A160793(2*(n+1))], A160793(2*(n+1)))` -/
def P10357298120648107262.Spec : Prop :=
  ∀ n, (P10357298120648107262.a n : ℤ) = A309036 (n + 1)

end A309036

/-!
# A309037: Exponential Demlo sequence, like 12345...54321, but for powers of 2 instead.

The programs for A309037, there is no canonical definition to state claims against.
-/

/-! ## A309037.P14918816349632287623

`2*or(1, (10^n)²+10*a(n-1))` with `a(0)=2`
-/

namespace A309037.P14918816349632287623
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [2] fun n a =>
  2 * Nat.lor 1 ((10 ^ n) ^ 2 + 10 * a (n - 1))

end

end A309037.P14918816349632287623

/-! ## A309037.P2747249526692515123

`2*(A011557(n)²+10*a(n-1)+1)` with `a(0)=2`
-/

namespace A309037.P2747249526692515123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  2 * (A011557 n ^ 2 + (10 * a (n - 1) + 1))

end

end A309037.P2747249526692515123

/-! ## A309037.P12046993514744289653

`2*(A011557(2*n)+10*a(n-1)+1)` with `a(0)=2`
-/

namespace A309037.P12046993514744289653
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  2 * (A011557 (2 * n) + 10 * a (n - 1) + 1)

end

end A309037.P12046993514744289653

/-!
# A309039: Highly composite numbers (A002182) that are not highly Brazilian (A329383).

The programs for A309039, there is no canonical definition to state claims against.
-/

/-! ## A309039.P2517136069433947529

`2*∪[∏[∑[n+1]], ∏[n+1]]`
-/

namespace A309039.P2517136069433947529
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f2 j

def f5 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f5 j

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∨ ∃ j, f4 j = x) n

end

end A309039.P2517136069433947529

/-! ## A309039.P8556171815061556636

`∪[3*n*a(n-1), (n+1)*a(n-1)]` with `a(0)=2`
-/

namespace A309039.P8556171815061556636
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [2] fun n f1 =>
  3 * (n * f1 (n - 1))

def f2 : ℕ → ℕ := SequenceMachineLib.rec [2] fun n f2 =>
  (n + 1) * f2 (n - 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∨ ∃ j, f2 j = x) n

end

end A309039.P8556171815061556636

/-! ## A309039.P5001067473836637437

`∏[A059711(n)]/ceil(sqrt(n))!`
-/

namespace A309039.P5001067473836637437
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059711 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∏ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / (Nat.factorial ⌈Real.sqrt (n : ℝ)⌉.toNat : ℚ)

end

end A309039.P5001067473836637437

/-!
# A309041: Irregular table read by rows: Let P(n,x) be the (monic) minimal polynomial of 2i*cos(Pi/n), where i = sqrt(-1) is the imaginary unit, then a(n,k) = [x^(2k)] P(n,x), n >= 3.

The programs for A309041, there is no canonical definition to state claims against.
-/

/-! ## A309041.P14482914706279106939

`abs(A334429(5+n))`
-/

namespace A309041.P14482914706279106939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A334429 (5 + n)|

end

end A309041.P14482914706279106939

/-! ## A309041.P15247298345788247190

`gcd(A000038(n), A334429(n+5))`
-/

namespace A309041.P15247298345788247190
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A334429 (n + 5))

end

end A309041.P15247298345788247190

/-! ## A309041.P1511106235190100758

`lcm(A033999(n), A334429(n+5))`
-/

namespace A309041.P1511106235190100758
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 n) (A334429 (n + 5))

end

end A309041.P1511106235190100758

/-! ## A309041.P18316703629905315531

`∑{d}[A334429(n+5), A000010(#)]`
-/

namespace A309041.P18316703629905315531
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334429 (n + 5)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 d

end

end A309041.P18316703629905315531

/-! ## A309041.P994406318667329304

`∏{d}[A334429(n+5), A014963(#)]`
-/

namespace A309041.P994406318667329304
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334429 (n + 5)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n).natAbs, A014963 d

end

end A309041.P994406318667329304

/-! ## A309041.P5159394911368115034

`lcm(-A334429(n+5), A009531(2*n+1))`
-/

namespace A309041.P5159394911368115034
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (-A334429 (n + 5)) (A009531 (2 * n + 1))

end

end A309041.P5159394911368115034

/-! ## A309041.P8268431836359043044

`A000196(A334429(n+5)²)`
-/

namespace A309041.P8268431836359043044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A334429 (n + 5) ^ 2).toNat

end

end A309041.P8268431836359043044

/-!
# A309043: Expansion of Product_{k>=0} (1 + x^(2^k) + x^(2^(k+1)))^2.

The programs for A309043, the canonical program `A309043.P4626528180570775145` is in `Seq.B001.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A309043 has offset 0).

The definition of A309043 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A309043.P4626528180570775145

`∑{#}[n, A002487(#+1)*A002487(n-#+1)]`

The canonical program, it is in `Seq.B001.C012`.
-/

namespace A309043

/-- `∑{#}[n, A002487(#+1)*A002487(n-#+1)]` -/
def P4626528180570775145.Spec : Prop :=
  ∀ n, P4626528180570775145.a n = A309043 n

theorem P4626528180570775145.correct : P4626528180570775145.Spec := by
  intro n
  simp only [A309043]

end A309043

/-!
# A309044: Expansion of Product_{k>=0} (1 + x^(2^k) - x^(2^(k+1)))^2.

The programs for A309044, the canonical program `A309044.P6080594280875067351` is in `Seq.B004.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A309044 has offset 0).

The definition of A309044 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A005590, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A309044.P6080594280875067351

`∑{#}[n, A005590(#+1)*A005590(n-#+1)]`

The canonical program, it is in `Seq.B004.C003`.
-/

namespace A309044

/-- `∑{#}[n, A005590(#+1)*A005590(n-#+1)]` -/
def P6080594280875067351.Spec : Prop :=
  ∀ n, P6080594280875067351.a n = A309044 n

theorem P6080594280875067351.correct : P6080594280875067351.Spec := by
  intro n
  simp only [A309044]

end A309044

/-!
# A309047: Expansion of Product_{k>=0} (1 + x^(2^k) - x^(3*2^k)).

The programs for A309047, the canonical program `A309047.P109742724794524477` is in `Seq.B000.C044`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A309047 has offset 0).

The definition of A309047 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A309047.P109742724794524477

`a(floor(n/2))-n%2*a(n-3)` with `a(0)=1, a(1)=1, a(2)=1`

The canonical program, it is in `Seq.B000.C044`.
-/

namespace A309047

/-- `a(floor(n/2))-n%2*a(n-3)` -/
def P109742724794524477.Spec : Prop :=
  ∀ n, P109742724794524477.a n = A309047 n

theorem P109742724794524477.correct : P109742724794524477.Spec := by
  intro n
  simp only [A309047]

end A309047

/-! ## A309047.P14453250537053808710

`A277778(A010078(n+2))`
-/

namespace A309047.P14453250537053808710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277778 (A010078 (n + 2)).toNat

end

end A309047.P14453250537053808710

namespace A309047

/-- `A277778(A010078(n+2))` -/
def P14453250537053808710.Spec : Prop :=
  ∀ n, P14453250537053808710.a n = A309047 n

end A309047

/-! ## A309047.P4393657414447623973

`A168393(A168421(lcm(16, n)/16+1))`
-/

namespace A309047.P4393657414447623973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168393 (A168421 (SequenceMachineLib.roundAway ((Nat.lcm 16 n : ℚ) / 16 + 1)).toNat).toNat

end

end A309047.P4393657414447623973

namespace A309047

/-- `A168393(A168421(lcm(16, n)/16+1))` -/
def P4393657414447623973.Spec : Prop :=
  ∀ n, P4393657414447623973.a n = A309047 n

end A309047

/-! ## A309047.P3882450371984735710

`A103452(A001222(A114848(n)²))`
-/

namespace A309047.P3882450371984735710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103452 (A001222 (A114848 n ^ 2).toNat).toNat

end

end A309047.P3882450371984735710

namespace A309047

/-- `A103452(A001222(A114848(n)²))` -/
def P3882450371984735710.Spec : Prop :=
  ∀ n, P3882450371984735710.a n = A309047 n

end A309047

/-! ## A309047.P17787870165753274127

`A284793(A003108(A131999(n)²))`
-/

namespace A309047.P17787870165753274127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284793 (A003108 (A131999 n ^ 2).toNat).toNat

end

end A309047.P17787870165753274127

namespace A309047

/-- `A284793(A003108(A131999(n)²))` -/
def P17787870165753274127.Spec : Prop :=
  ∀ n, P17787870165753274127.a n = A309047 n

end A309047

/-!
# A309048: Expansion of Product_{k>=0} (1 + x^(3^k) + x^(2*3^k) - x^(3^(k+1))).

The programs for A309048, the canonical program `A309048.P4656978642239997170` is in `Seq.B001.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A309048 has offset 0).

The definition of A309048 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2110 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A309048.P4656978642239997170

`a(A002264(n))+(n²%3-1)*a(n-2)` with `a(0)=1, a(1)=1`

The canonical program, it is in `Seq.B001.C012`.
-/

namespace A309048

/-- `a(A002264(n))+(n²%3-1)*a(n-2)` -/
def P4656978642239997170.Spec : Prop :=
  ∀ n, P4656978642239997170.a n = A309048 n

theorem P4656978642239997170.correct : P4656978642239997170.Spec := by
  intro n
  simp only [A309048]

end A309048

/-! ## A309048.P101588426285163191

`A345008(A023717(n))`
-/

namespace A309048.P101588426285163191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345008 (A023717 n).toNat

end

end A309048.P101588426285163191

namespace A309048

/-- `A345008(A023717(n))` -/
def P101588426285163191.Spec : Prop :=
  ∀ n, P101588426285163191.a n = A309048 n

end A309048

/-! ## A309048.P16043481548798428823

`A345008(A006288(n))`
-/

namespace A309048.P16043481548798428823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345008 (A006288 n).toNat

end

end A309048.P16043481548798428823

namespace A309048

/-- `A345008(A006288(n))` -/
def P16043481548798428823.Spec : Prop :=
  ∀ n, P16043481548798428823.a n = A309048 n

end A309048

/-! ## A309048.P5417475573319010644

`A084091(A098479(n))`
-/

namespace A309048.P5417475573319010644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084091 (A098479 n).toNat

end

end A309048.P5417475573319010644

namespace A309048

/-- `A084091(A098479(n))` -/
def P5417475573319010644.Spec : Prop :=
  ∀ n, P5417475573319010644.a n = A309048 n

end A309048

/-!
# A309049: Number T(n,k) of (binary) max-heaps on n elements from the set {0,1} containing exactly k 0's; triangle T(n,k), n>=0, 0<=k<=n, read by rows.

The programs for A309049, there is no canonical definition to state claims against.
-/

/-! ## A309049.P16427460085233638312

`round(sqrt(A301422(n+1)%(A337441(n)+1)+1))`
-/

namespace A309049.P16427460085233638312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (Int.tmod (A301422 (n + 1)) (A337441 n + 1) + 1 : ℝ))

end

end A309049.P16427460085233638312

/-! ## A309049.P5090616147703243217

`A055641(A058669(n))+A008284(n+1)`
-/

namespace A309049.P5090616147703243217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055641 (A058669 n).toNat + A008284 (n + 1)

end

end A309049.P5090616147703243217

/-! ## A309049.P6199694755934686437

`A215521(n+1)+A055641(A058669(n))`
-/

namespace A309049.P6199694755934686437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215521 (n + 1) + A055641 (A058669 n).toNat

end

end A309049.P6199694755934686437

/-! ## A309049.P3255773625558190484

`A347440(A333901(n))+A008284(n+1)`
-/

namespace A309049.P3255773625558190484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347440 (A333901 n).toNat + A008284 (n + 1)

end

end A309049.P3255773625558190484

/-! ## A309049.P827560473285202185

`A000006(A092905(n)%A316888(n+5))`
-/

namespace A309049.P827560473285202185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000006 (Int.tmod (A092905 n) (A316888 (n + 5))).toNat

end

end A309049.P827560473285202185

/-!
# A309050: Number of (binary) max-heaps on 2n elements from the set {0,1} containing n 0's and n 1's.

The programs for A309050, there is no canonical definition to state claims against.
-/

/-! ## A309050.P991398116786665555

`A309049(C(2*n+1, 2)+n)`
-/

namespace A309050.P991398116786665555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309049 (Nat.choose (2 * n + 1) 2 + n)

end

end A309050.P991398116786665555

/-! ## A309050.P955371227946012157

`A309049(∑[4*n])`
-/

namespace A309050.P955371227946012157
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309049 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A309050.P955371227946012157

/-! ## A309050.P6789129946600242555

`A168255(A149329(n))`
-/

namespace A309050.P6789129946600242555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168255 (A149329 n).toNat

end

end A309050.P6789129946600242555

/-! ## A309050.P10898228819562295761

`A185195(A148399(n))`
-/

namespace A309050.P10898228819562295761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185195 (A148399 n).toNat

end

end A309050.P10898228819562295761

/-! ## A309050.P11036384990325416816

`A194339(A148884(n))`
-/

namespace A309050.P11036384990325416816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194339 (A148884 n).toNat

end

end A309050.P11036384990325416816

/-!
# A309051: Total number of 0's in all (binary) max-heaps on n elements from the set {0,1}.

The programs for A309051, there is no canonical definition to state claims against.
-/

/-! ## A309051.P17417575425068192045

`n*A091980(n+1)-A309052(n)`
-/

namespace A309051.P17417575425068192045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A091980 (n + 1) - A309052 n

end

end A309051.P17417575425068192045

/-! ## A309051.P18161317392173478522

`∑{#}[n, #*A309049(C(n+1, 2)+#)]`
-/

namespace A309051.P18161317392173478522
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), (k : ℤ) * A309049 (Nat.choose (n + 1) 2 + k)

end

end A309051.P18161317392173478522

/-!
# A309052: Total number of 1's in all (binary) max-heaps on n elements from the set {0,1}.

The programs for A309052, there is no canonical definition to state claims against.
-/

/-! ## A309052.P17695829537557102547

`n*A091980(n+1)-A309051(n)`
-/

namespace A309052.P17695829537557102547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A091980 (n + 1) - A309051 n

end

end A309052.P17695829537557102547

/-! ## A309052.P5528579069329050539

`∑{#}[n, (n-#)*A309049(C(n+1, 2)+#)]`
-/

namespace A309052.P5528579069329050539
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), ((n : ℤ) - (k : ℤ)) * A309049 (Nat.choose (n + 1) 2 + k)

end

end A309052.P5528579069329050539

/-! ## A309052.P4590753917290461305

`n*(A355108(n+1)+1)-A309051(n)`
-/

namespace A309052.P4590753917290461305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A355108 (n + 1) + 1) - A309051 n

end

end A309052.P4590753917290461305

/-! ## A309052.P6895679910948457750

`A073750(A125513(n+1))`
-/

namespace A309052.P6895679910948457750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073750 (A125513 (n + 1)).toNat

end

end A309052.P6895679910948457750

/-!
# A309053: Triangular array T read by rows: T(r,c) is the number of double permutations of the integers from 1 to r which have exactly c different values visible when viewed from the left, in the sense that a higher number hides a lower one.

The programs for A309053, there is no canonical definition to state claims against.
-/

/-! ## A309053.P13042484254217456973

`A135549(A337409(n+1))+A094665(n)`
-/

namespace A309053.P13042484254217456973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135549 (A337409 (n + 1)).toNat + A094665 n

end

end A309053.P13042484254217456973

/-! ## A309053.P12207314303366260305

`A094665(n)+A006842(A202511(n+1)!)`
-/

namespace A309053.P12207314303366260305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094665 n + A006842 (Nat.factorial (A202511 (n + 1)).toNat)

end

end A309053.P12207314303366260305

/-!
# A309054: a(1) = 0; for m >= 0, a(3m) = 1; for m >= 1, a(3m-1) = 2*a(m-1), a(3m+1) = 2*a(m+1).

The programs for A309054, there is no canonical definition to state claims against.
-/

/-! ## A309054.P6397518261658514161

`A131577(lcm((-1)^n, A307744(n)))`
-/

namespace A309054.P6397518261658514161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131577 (Int.lcm ((-1) ^ n) (A307744 n))

end

end A309054.P6397518261658514161

/-! ## A309054.P6457597673116187983

`A131577(A307744(n)+0)`
-/

namespace A309054.P6457597673116187983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131577 (A307744 n + 0).toNat

end

end A309054.P6457597673116187983

/-! ## A309054.P5421975296790871417

`A029907(A307744(n)^∑[A091536(n)])`
-/

namespace A309054.P5421975296790871417
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091536 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029907 (SequenceMachineLib.roundAway ((A307744 n : ℚ) ^ (∑ j ∈ Finset.range (n + 1), f1 j : ℤ))).toNat

end

end A309054.P5421975296790871417

/-! ## A309054.P3972388194256103253

`A058541(A307744(n)^∑[A091536(n)])-1`
-/

namespace A309054.P3972388194256103253
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091536 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058541 (SequenceMachineLib.roundAway ((A307744 n : ℚ) ^ (∑ j ∈ Finset.range (n + 1), f1 j : ℤ))).toNat - 1

end

end A309054.P3972388194256103253

/-! ## A309054.P1378691172454569755

`A004526(2^A307744(n)^∑[A091536(n)])`
-/

namespace A309054.P1378691172454569755
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091536 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (SequenceMachineLib.roundAway ((2 : ℝ) ^ ((A307744 n : ℚ) ^ (∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℝ))).toNat

end

end A309054.P1378691172454569755

/-!
# A309055: Record values of A309036.

The programs for A309055, there is no canonical definition to state claims against.
-/

/-! ## A309055.P4971317916532124201

`A309036(A309056(n+1))`
-/

namespace A309055.P4971317916532124201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309036 (A309056 (n + 1)).toNat

end

end A309055.P4971317916532124201

/-! ## A309055.P1474619898840515604

`record[A309036(n+1)]`
-/

namespace A309055.P1474619898840515604
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309036 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A309055.P1474619898840515604

/-! ## A309055.P12611746729712409331

`record[A014285(n+1)/A306834(n+1)]`
-/

namespace A309055.P12611746729712409331
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A014285 (n + 1) : ℚ) / (A306834 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A309055.P12611746729712409331

/-! ## A309055.P6273322428444529856

`record[gcd(A014148(n+1), A023662(n+1))]`
-/

namespace A309055.P6273322428444529856
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A014148 (n + 1)) (A023662 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A309055.P6273322428444529856

/-! ## A309055.P4804903864030373984

`record[∑[A033286(n+1)]/A306834(n+1)]`
-/

namespace A309055.P4804903864030373984
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033286 (n + 1)

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℤ) : ℚ) / (A306834 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A309055.P4804903864030373984

/-!
# A309057: a(0) = 1; a(2*n) = 3*a(n), a(2*n+1) = a(n).

The programs for A309057, the canonical program `A309057.P15821371437043951061` is in `Seq.B000.C044`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A309057 has offset 0).

The definition of A309057 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A309057.P15821371437043951061

`gcd(3, n%2)*a(floor(n/2))` with `a(0)=1`

The canonical program, it is in `Seq.B000.C044`.
-/

namespace A309057

/-- `gcd(3, n%2)*a(floor(n/2))` -/
def P15821371437043951061.Spec : Prop :=
  ∀ n, (P15821371437043951061.a n : ℤ) = A309057 n

theorem P15821371437043951061.correct : P15821371437043951061.Spec := by
  intro n
  simp only [A309057]

end A309057

/-! ## A309057.P10682857092261879714

`or(1, gcd(2, n))*a(floor(n/2))` with `a(0)=1`
-/

namespace A309057.P10682857092261879714
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  Nat.lor 1 (Nat.gcd 2 n) * a ⌊(n : ℚ) / 2⌋.toNat

end

end A309057.P10682857092261879714

namespace A309057

/-- `or(1, gcd(2, n))*a(floor(n/2))` -/
def P10682857092261879714.Spec : Prop :=
  ∀ n, (P10682857092261879714.a n : ℤ) = A309057 n

end A309057

/-! ## A309057.P5227171884530279839

`((-1)^n+2)*a(floor(n/2))` with `a(0)=1`
-/

namespace A309057.P5227171884530279839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ((-1) ^ n + 2) * a ⌊(n : ℚ) / 2⌋.toNat

end

end A309057.P5227171884530279839

namespace A309057

/-- `((-1)^n+2)*a(floor(n/2))` -/
def P5227171884530279839.Spec : Prop :=
  ∀ n, P5227171884530279839.a n = A309057 n

end A309057

/-! ## A309057.P7016057826104820270

`∏[a(floor(n/2))/a(n-1)]` with `a(0)=1, a(1)=1, a(2)=3`
-/

namespace A309057.P7016057826104820270
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [1, 1, 3] fun n f1 =>
  f1 ⌊(n : ℚ) / 2⌋.toNat / f1 (n - 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A309057.P7016057826104820270

namespace A309057

/-- `∏[a(floor(n/2))/a(n-1)]` -/
def P7016057826104820270.Spec : Prop :=
  ∀ n, P7016057826104820270.a n = (A309057 n : ℚ)

end A309057

/-! ## A309057.P3171719124609579697

`abs(a(floor(n/2)))*(2*n-1)%4` with `a(0)=1`
-/

namespace A309057.P3171719124609579697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  |a ⌊(n : ℚ) / 2⌋.toNat| * Int.tmod ((2 * n : ℤ) - 1) 4

end

end A309057.P3171719124609579697

namespace A309057

/-- `abs(a(floor(n/2)))*(2*n-1)%4` -/
def P3171719124609579697.Spec : Prop :=
  ∀ n, P3171719124609579697.a n = A309057 n

end A309057

/-! ## A309057.P11505560256249089519

`a(floor(n/2))*Δ[and(1, n)+n+n]` with `a(0)=1`
-/

namespace A309057.P11505560256249089519
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 1 n + n + n

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a ⌊(n : ℚ) / 2⌋.toNat * ((f1 (n + 1) : ℤ) - (f1 n : ℤ))

end

end A309057.P11505560256249089519

namespace A309057

/-- `a(floor(n/2))*Δ[and(1, n)+n+n]` -/
def P11505560256249089519.Spec : Prop :=
  ∀ n, P11505560256249089519.a n = A309057 n

end A309057

/-! ## A309057.P11361741039429842848

`3*a(floor(n/2))/and(3, 1-2*n)` with `a(0)=1`
-/

namespace A309057.P11361741039429842848
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  3 * (a ⌊(n : ℚ) / 2⌋.toNat / (Int.land 3 (1 - (2 * n : ℤ)) : ℚ))

end

end A309057.P11361741039429842848

namespace A309057

/-- `3*a(floor(n/2))/and(3, 1-2*n)` -/
def P11361741039429842848.Spec : Prop :=
  ∀ n, P11361741039429842848.a n = (A309057 n : ℚ)

end A309057

/-! ## A309057.P5391431305471615959

`a(floor(n/2))*Δ[or(1, n+1)+n]` with `a(0)=1, a(1)=1`
-/

namespace A309057.P5391431305471615959
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (n + 1) + n

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  a ⌊(n : ℚ) / 2⌋.toNat * ((f1 (n + 1) : ℤ) - (f1 n : ℤ))

end

end A309057.P5391431305471615959

namespace A309057

/-- `a(floor(n/2))*Δ[or(1, n+1)+n]` -/
def P5391431305471615959.Spec : Prop :=
  ∀ n, P5391431305471615959.a n = A309057 n

end A309057

/-! ## A309057.P16742365364056801740

`3^∑[char[2^n]-(1-val(abs(1-n)+1, 2))]`
-/

namespace A309057.P16742365364056801740
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ) - (1 - (SequenceMachineLib.valuation (|1 - (n : ℤ)| + 1).toNat 2 : ℤ))

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 : ℚ) ^ (∑ j ∈ Finset.range (n + 1), f1 j : ℤ)

end

end A309057.P16742365364056801740

namespace A309057

/-- `3^∑[char[2^n]-(1-val(abs(1-n)+1, 2))]` -/
def P16742365364056801740.Spec : Prop :=
  ∀ n, P16742365364056801740.a n = (A309057 n : ℚ)

end A309057

/-! ## A309057.P6101483748134993717

`3^A080791(n)`
-/

namespace A309057.P6101483748134993717
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 : ℚ) ^ (A080791 n : ℤ)

end

end A309057.P6101483748134993717

namespace A309057

/-- `3^A080791(n)` -/
def P6101483748134993717.Spec : Prop :=
  ∀ n, P6101483748134993717.a n = (A309057 n : ℚ)

end A309057

/-! ## A309057.P16201932429022680922

`3^∑[A089263(n)]`
-/

namespace A309057.P16201932429022680922
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089263 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 : ℚ) ^ (∑ j ∈ Finset.range (n + 1), f1 j : ℤ)

end

end A309057.P16201932429022680922

namespace A309057

/-- `3^∑[A089263(n)]` -/
def P16201932429022680922.Spec : Prop :=
  ∀ n, P16201932429022680922.a n = (A309057 n : ℚ)

end A309057

/-! ## A309057.P4160452670369852971

`3^(A008687(n+1)-1)`
-/

namespace A309057.P4160452670369852971
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 : ℚ) ^ (A008687 (n + 1) - 1 : ℤ)

end

end A309057.P4160452670369852971

namespace A309057

/-- `3^(A008687(n+1)-1)` -/
def P4160452670369852971.Spec : Prop :=
  ∀ n, P4160452670369852971.a n = (A309057 n : ℚ)

end A309057

/-! ## A309057.P2150759855599582349

`3^(A233272(n)-(n+1))`
-/

namespace A309057.P2150759855599582349
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 : ℚ) ^ (A233272 n - (n + 1 : ℤ) : ℤ)

end

end A309057.P2150759855599582349

namespace A309057

/-- `3^(A233272(n)-(n+1))` -/
def P2150759855599582349.Spec : Prop :=
  ∀ n, P2150759855599582349.a n = (A309057 n : ℚ)

end A309057

/-! ## A309057.P6012954467113019978

`A000244(A080791(n))`
-/

namespace A309057.P6012954467113019978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000244 (A080791 n).toNat

end

end A309057.P6012954467113019978

namespace A309057

/-- `A000244(A080791(n))` -/
def P6012954467113019978.Spec : Prop :=
  ∀ n, P6012954467113019978.a n = A309057 n

end A309057

/-! ## A309057.P8609063565480754416

`A003959(A080100(n))`
-/

namespace A309057.P8609063565480754416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003959 (A080100 n).toNat

end

end A309057.P8609063565480754416

namespace A309057

/-- `A003959(A080100(n))` -/
def P8609063565480754416.Spec : Prop :=
  ∀ n, P8609063565480754416.a n = A309057 n

end A309057

/-! ## A309057.P7935358745841660251

`A133494(A290251(n))`
-/

namespace A309057.P7935358745841660251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133494 (A290251 n).toNat

end

end A309057.P7935358745841660251

namespace A309057

/-- `A133494(A290251(n))` -/
def P7935358745841660251.Spec : Prop :=
  ∀ n, P7935358745841660251.a n = A309057 n

end A309057

/-! ## A309057.P16496076760855871275

`A005836(A080100(n)+1)`
-/

namespace A309057.P16496076760855871275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005836 (A080100 n + 1).toNat

end

end A309057.P16496076760855871275

namespace A309057

/-- `A005836(A080100(n)+1)` -/
def P16496076760855871275.Spec : Prop :=
  ∀ n, P16496076760855871275.a n = A309057 n

end A309057

/-! ## A309057.P3517494975083995722

`A048883(A080100(n)-1)`
-/

namespace A309057.P3517494975083995722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048883 (A080100 n - 1).toNat

end

end A309057.P3517494975083995722

namespace A309057

/-- `A048883(A080100(n)-1)` -/
def P3517494975083995722.Spec : Prop :=
  ∀ n, P3517494975083995722.a n = A309057 n

end A309057

/-! ## A309057.P3186441470393030084

`A006874(A267584(n))`
-/

namespace A309057.P3186441470393030084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006874 (A267584 n).toNat

end

end A309057.P3186441470393030084

namespace A309057

/-- `A006874(A267584(n))` -/
def P3186441470393030084.Spec : Prop :=
  ∀ n, P3186441470393030084.a n = A309057 n

end A309057

/-! ## A309057.P15882249302020740298

`3^A023416(Δ[n²])`
-/

namespace A309057.P15882249302020740298
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 : ℚ) ^ (A023416 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat : ℤ)

end

end A309057.P15882249302020740298

namespace A309057

/-- `3^A023416(Δ[n²])` -/
def P15882249302020740298.Spec : Prop :=
  ∀ n, P15882249302020740298.a n = (A309057 n : ℚ)

end A309057

/-!
# A309058: Partitions of n with parts having at most 3 distinct magnitudes.

The programs for A309058, there is no canonical definition to state claims against.
-/

/-! ## A309058.P5154462335648608207

`A218510(n)-A050728(A326597(n))`
-/

namespace A309058.P5154462335648608207
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218510 n - A050728 (A326597 n).toNat

end

end A309058.P5154462335648608207

/-! ## A309058.P4501605799719975765

`A008632(n)-A050728(A006927(n))`
-/

namespace A309058.P4501605799719975765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008632 n - A050728 (A006927 n).toNat

end

end A309058.P4501605799719975765

/-! ## A309058.P3738732431819124163

`A008638(n)-A050728(A006927(n))`
-/

namespace A309058.P3738732431819124163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008638 n - A050728 (A006927 n).toNat

end

end A309058.P3738732431819124163

/-! ## A309058.P12341926424936017567

`xor(A143824(A185213(n)), A341913(n))`
-/

namespace A309058.P12341926424936017567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A143824 (A185213 n).toNat) (A341913 (n + 45))

end

end A309058.P12341926424936017567

/-! ## A309058.P2974703512532640702

`A218509(n)`
-/

namespace A309058.P2974703512532640702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218509 n

end

end A309058.P2974703512532640702

/-!
# A309059: a(1) = 1; for n > 1, a(n) = 2 if the concatenation of all the previous terms is prime and a(n) = 1 otherwise.

The programs for A309059, there is no canonical definition to state claims against.
-/

/-! ## A309059.P7209369996577345254

`char[A330160(1+n)-1]+1`
-/

namespace A309059.P7209369996577345254
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330160 (1 + n) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f1 j = (n : ℤ) then 1 else 0) + 1

end

end A309059.P7209369996577345254

/-! ## A309059.P9751920902284047662

`A022929(gcd(A022911(n+1), A239088(n+1)))`
-/

namespace A309059.P9751920902284047662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022929 (Int.gcd (A022911 (n + 1)) (A239088 (n + 1)))

end

end A309059.P9751920902284047662

/-! ## A309059.P8480109396864816038

`A014963(A171503(xor(8, A069771(n)))+1)`
-/

namespace A309059.P8480109396864816038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A171503 (Int.xor 8 (A069771 n)).toNat + 1).toNat

end

end A309059.P8480109396864816038

/-! ## A309059.P4450895595185083420

`A348364(A171019(n+1)+A036561(n))`
-/

namespace A309059.P4450895595185083420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348364 (A171019 (n + 1) + A036561 n).toNat

end

end A309059.P4450895595185083420

/-! ## A309059.P8002654194955677493

`A160094(A029710(n+1)+A008459(n))`
-/

namespace A309059.P8002654194955677493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160094 (A029710 (n + 1) + A008459 n).toNat

end

end A309059.P8002654194955677493

/-!
# A309060: Least k such that the rank of the elliptic curve y^2 = x^3 + k^2*x is n.

The programs for A309060, there is no canonical definition to state claims against.
-/

/-! ## A309060.P14375187267341637391

`ceil(A194687(n)/2)`
-/

namespace A309060.P14375187267341637391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A194687 n : ℚ) / 2⌉

end

end A309060.P14375187267341637391

/-!
# A309061: Rank of elliptic curve y^2 = x^3 + n^2 * x.

The programs for A309061, there is no canonical definition to state claims against.
-/

/-! ## A309061.P5383322026248009403

`A060953((n+1)²)`
-/

namespace A309061.P5383322026248009403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060953 ((n + 1) ^ 2)

end

end A309061.P5383322026248009403

/-! ## A309061.P14580372139542436601

`A319510(2*(n+1))`
-/

namespace A309061.P14580372139542436601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319510 (2 * (n + 1))

end

end A309061.P14580372139542436601

/-!
# A309063: Numbers k such that, when computing A247476(k), all previous terms have been paired.

The programs for A309063, there is no canonical definition to state claims against.
-/

/-! ## A309063.P9025323531367371911

`A309073(n)+a(n-1)` with `a(0)=1`
-/

namespace A309063.P9025323531367371911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A309073 n + a (n - 1)

end

end A309063.P9025323531367371911

/-! ## A309063.P14859971457360721437

`∑[A309073(n+1)]+1-A309073(n+1)`
-/

namespace A309063.P14859971457360721437
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309073 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (1 - A309073 (n + 1))

end

end A309063.P14859971457360721437

/-! ## A309063.P12538894781306954055

`A109613(∑[A309073(n+1)]-A309073(n+1))`
-/

namespace A309063.P12538894781306954055
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309073 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109613 (∑ j ∈ Finset.range (n + 1), f1 j - A309073 (n + 1)).toNat

end

end A309063.P12538894781306954055

/-!
# A309065: Numbers k such that A014574(k) can be represented as a product of two terms in A014574.

The programs for A309065, there is no canonical definition to state claims against.
-/

/-! ## A309065.P18277087878090471562

`A071538(A307758(1+n))`
-/

namespace A309065.P18277087878090471562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071538 (A307758 (1 + n)).toNat

end

end A309065.P18277087878090471562

/-!
# A309066: Integers m such that A053319(m) is a term in A014574.

The programs for A309066, there is no canonical definition to state claims against.
-/

/-! ## A309066.P13561658160805175656

`eq[1, A182481(A160273(1+n))]+2`
-/

namespace A309066.P13561658160805175656
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182481 (A160273 (1 + n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2

end

end A309066.P13561658160805175656

/-! ## A309066.P13943770461445854697

`eq[1, A164292(Δ[A001359(n+2)]+1)]+2`
-/

namespace A309066.P13943770461445854697
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001359 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164292 (f3 (n + 1) - f3 n + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2

end

end A309066.P13943770461445854697

/-! ## A309066.P16886920312311790685

`eq[1, A164292(Δ[A006512(n+2)]+1)]+2`
-/

namespace A309066.P16886920312311790685
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006512 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164292 (f3 (n + 1) - f3 n + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2

end

end A309066.P16886920312311790685

/-! ## A309066.P1216679111509354847

`record[A004526(2*(n+2))/A182481(A160273(n+1))]`
-/

namespace A309066.P1216679111509354847
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A004526 (2 * (n + 2)) : ℚ) / (A182481 (A160273 (n + 1)).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A309066.P1216679111509354847

/-! ## A309066.P12373189394631795475

`lt[0, A309067(n+1)]+1`
-/

namespace A309066.P12373189394631795475
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309067 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A309066.P12373189394631795475

/-! ## A309066.P5559443809190077997

`lt[0, A309067(A000007(n)+n)]`
-/

namespace A309066.P5559443809190077997
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309067 (A000007 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A309066.P5559443809190077997

/-!
# A309067: Index of A053319(n) in A014574; -1 if it doesn't exist.

The programs for A309067, there is no canonical definition to state claims against.
-/

/-! ## A309067.P1761362561003038899

`A032741(A167132(n+1))-A098108(A060647(n))`
-/

namespace A309067.P1761362561003038899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 (A167132 (n + 1)).toNat - A098108 (A060647 n).toNat

end

end A309067.P1761362561003038899

/-! ## A309067.P3903810652357798770

`A032741(A167132(n+1))-A036987(A083374(n+1))`
-/

namespace A309067.P3903810652357798770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 (A167132 (n + 1)).toNat - A036987 (A083374 (n + 1)).toNat

end

end A309067.P3903810652357798770

/-! ## A309067.P16125382408043649245

`A032741(A167132(n+1))-A000007(A212995(n))`
-/

namespace A309067.P16125382408043649245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 (A167132 (n + 1)).toNat - A000007 (A212995 n).toNat

end

end A309067.P16125382408043649245

/-! ## A309067.P10788421703329940273

`A057428(A091536(n))+A032741(A167132(n+1))`
-/

namespace A309067.P10788421703329940273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 (A091536 n).toNat + A032741 (A167132 (n + 1)).toNat

end

end A309067.P10788421703329940273

/-! ## A309067.P11612319105752510042

`A032741(A167132(n+1))-A036987(A119114(n+1))`
-/

namespace A309067.P11612319105752510042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 (A167132 (n + 1)).toNat - A036987 (A119114 (n + 1)).toNat

end

end A309067.P11612319105752510042

/-!
# A309068: Least k such that the rank of the elliptic curve y^2 = x^3 - k^2 is n.

The programs for A309068, there is no canonical definition to state claims against.
-/

/-! ## A309068.P4529125768495482863

`A324351(n)+A005246(A002858(2*n+1))`
-/

namespace A309068.P4529125768495482863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324351 n + A005246 (A002858 (2 * n + 1)).toNat

end

end A309068.P4529125768495482863

/-!
# A309073: Split the sequence A247476 into nonempty chunks of minimal length such that for d = 1..9, the number of terms with leading digit d is even; a(n) is the length of the n-th chunk.

The programs for A309073, there is no canonical definition to state claims against.
-/

/-! ## A309073.P3328808188366478979

`A309063(n+2)-A309063(n+1)`
-/

namespace A309073.P3328808188366478979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309063 (n + 2) - A309063 (n + 1)

end

end A309073.P3328808188366478979

/-! ## A309073.P1221717530745219089

`Δ[A309063(n+1)]`
-/

namespace A309073.P1221717530745219089
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309063 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A309073.P1221717530745219089

/-! ## A309073.P11227830477706412163

`Δ[record[A309063(A065648(n))]]`
-/

namespace A309073.P11227830477706412163
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309063 (A065648 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A309073.P11227830477706412163

/-! ## A309073.P4428856596334611784

`Δ[record[A309063(A126759(n))]]`
-/

namespace A309073.P4428856596334611784
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309063 (A126759 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A309073.P4428856596334611784

/-! ## A309073.P2763440802243895063

`Δ[record[A309063(A133310(n))]]`
-/

namespace A309073.P2763440802243895063
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309063 (A133310 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A309073.P2763440802243895063

/-!
# A309074: a(0) = 1; a(2*n) = 4*a(n), a(2*n+1) = a(n).

The programs for A309074, the canonical program `A309074.P13561482286292081399` is in `Seq.B000.C044`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A309074 has offset 0).

The definition of A309074 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A309074.P13561482286292081399

`gcd(2, n)²*a(floor(n/2))` with `a(0)=1`

The canonical program, it is in `Seq.B000.C044`.
-/

namespace A309074

/-- `gcd(2, n)²*a(floor(n/2))` -/
def P13561482286292081399.Spec : Prop :=
  ∀ n, (P13561482286292081399.a n : ℤ) = A309074 n

theorem P13561482286292081399.correct : P13561482286292081399.Spec := by
  intro n
  simp only [A309074]

end A309074

/-! ## A309074.P17060436310624603996

`gcd(4, n^3)*a(floor(n/2))` with `a(0)=1`
-/

namespace A309074.P17060436310624603996
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  Nat.gcd 4 (n ^ 3) * a ⌊(n : ℚ) / 2⌋.toNat

end

end A309074.P17060436310624603996

namespace A309074

/-- `gcd(4, n^3)*a(floor(n/2))` -/
def P17060436310624603996.Spec : Prop :=
  ∀ n, (P17060436310624603996.a n : ℤ) = A309074 n

end A309074

/-! ## A309074.P9324539208296623466

`or(n, -2)²*a(floor(n/2))` with `a(0)=1`
-/

namespace A309074.P9324539208296623466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  Int.lor (n : ℤ) (-2) ^ 2 * a ⌊(n : ℚ) / 2⌋.toNat

end

end A309074.P9324539208296623466

namespace A309074

/-- `or(n, -2)²*a(floor(n/2))` -/
def P9324539208296623466.Spec : Prop :=
  ∀ n, P9324539208296623466.a n = A309074 n

end A309074

/-! ## A309074.P16992116953969457441

`(2-n%2)²*a(floor(n/2))` with `a(0)=1`
-/

namespace A309074.P16992116953969457441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (2 - ((n % 2 : ℕ) : ℤ)) ^ 2 * a ⌊(n : ℚ) / 2⌋.toNat

end

end A309074.P16992116953969457441

namespace A309074

/-- `(2-n%2)²*a(floor(n/2))` -/
def P16992116953969457441.Spec : Prop :=
  ∀ n, P16992116953969457441.a n = A309074 n

end A309074

/-! ## A309074.P4746149556176326104

`4^((n+1)%2)*a(floor(n/2))` with `a(0)=1`
-/

namespace A309074.P4746149556176326104
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  4 ^ ((n + 1) % 2) * a ⌊(n : ℚ) / 2⌋.toNat

end

end A309074.P4746149556176326104

namespace A309074

/-- `4^((n+1)%2)*a(floor(n/2))` -/
def P4746149556176326104.Spec : Prop :=
  ∀ n, (P4746149556176326104.a n : ℤ) = A309074 n

end A309074

/-! ## A309074.P17229900846969402054

`a(floor(n/2))/4^((1-n)%2)` with `a(0)=1`
-/

namespace A309074.P17229900846969402054
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  a ⌊(n : ℚ) / 2⌋.toNat / (4 : ℚ) ^ (Int.tmod (1 - (n : ℤ)) 2 : ℤ)

end

end A309074.P17229900846969402054

namespace A309074

/-- `a(floor(n/2))/4^((1-n)%2)` -/
def P17229900846969402054.Spec : Prop :=
  ∀ n, P17229900846969402054.a n = (A309074 n : ℚ)

end A309074

/-! ## A309074.P14818641426105542321

`(and(1, n+1)+1)²*a(floor(n/2))` with `a(0)=1`
-/

namespace A309074.P14818641426105542321
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  (Nat.land 1 (n + 1) + 1) ^ 2 * a ⌊(n : ℚ) / 2⌋.toNat

end

end A309074.P14818641426105542321

namespace A309074

/-- `(and(1, n+1)+1)²*a(floor(n/2))` -/
def P14818641426105542321.Spec : Prop :=
  ∀ n, (P14818641426105542321.a n : ℤ) = A309074 n

end A309074

/-! ## A309074.P5953825434317894416

`4^∑[char[2^n]-(1-val(abs(1-n)+1, 2))]`
-/

namespace A309074.P5953825434317894416
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ) - (1 - (SequenceMachineLib.valuation (|1 - (n : ℤ)| + 1).toNat 2 : ℤ))

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (4 : ℚ) ^ (∑ j ∈ Finset.range (n + 1), f1 j : ℤ)

end

end A309074.P5953825434317894416

namespace A309074

/-- `4^∑[char[2^n]-(1-val(abs(1-n)+1, 2))]` -/
def P5953825434317894416.Spec : Prop :=
  ∀ n, P5953825434317894416.a n = (A309074 n : ℚ)

end A309074

/-! ## A309074.P12826291462915908215

`A080100(n)²`
-/

namespace A309074.P12826291462915908215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080100 n ^ 2

end

end A309074.P12826291462915908215

namespace A309074

/-- `A080100(n)²` -/
def P12826291462915908215.Spec : Prop :=
  ∀ n, P12826291462915908215.a n = A309074 n

end A309074

/-! ## A309074.P1516853102965492797

`4^A080791(n)`
-/

namespace A309074.P1516853102965492797
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (4 : ℚ) ^ (A080791 n : ℤ)

end

end A309074.P1516853102965492797

namespace A309074

/-- `4^A080791(n)` -/
def P1516853102965492797.Spec : Prop :=
  ∀ n, P1516853102965492797.a n = (A309074 n : ℚ)

end A309074

/-! ## A309074.P16571677230393433159

`4^∑[A089263(n)]`
-/

namespace A309074.P16571677230393433159
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089263 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (4 : ℚ) ^ (∑ j ∈ Finset.range (n + 1), f1 j : ℤ)

end

end A309074.P16571677230393433159

namespace A309074

/-- `4^∑[A089263(n)]` -/
def P16571677230393433159.Spec : Prop :=
  ∀ n, P16571677230393433159.a n = (A309074 n : ℚ)

end A309074

/-! ## A309074.P4389490344151924334

`ceil((A267584(n)/2)²)`
-/

namespace A309074.P4389490344151924334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((A267584 n : ℚ) / 2) ^ 2⌉

end

end A309074.P4389490344151924334

namespace A309074

/-- `ceil((A267584(n)/2)²)` -/
def P4389490344151924334.Spec : Prop :=
  ∀ n, P4389490344151924334.a n = A309074 n

end A309074

/-! ## A309074.P2588447889092444546

`(n+1-A353292(n))²`
-/

namespace A309074.P2588447889092444546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1 : ℤ) - A353292 n) ^ 2

end

end A309074.P2588447889092444546

namespace A309074

/-- `(n+1-A353292(n))²` -/
def P2588447889092444546.Spec : Prop :=
  ∀ n, P2588447889092444546.a n = A309074 n

end A309074

/-! ## A309074.P11714813859681468408

`(A267584(2*n+1)/2)²`
-/

namespace A309074.P11714813859681468408
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A267584 (2 * n + 1) : ℚ) / 2) ^ 2

end

end A309074.P11714813859681468408

namespace A309074

/-- `(A267584(2*n+1)/2)²` -/
def P11714813859681468408.Spec : Prop :=
  ∀ n, P11714813859681468408.a n = (A309074 n : ℚ)

end A309074

/-! ## A309074.P14300746423238950008

`A000302(A080791(n))`
-/

namespace A309074.P14300746423238950008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000302 (A080791 n).toNat

end

end A309074.P14300746423238950008

namespace A309074

/-- `A000302(A080791(n))` -/
def P14300746423238950008.Spec : Prop :=
  ∀ n, P14300746423238950008.a n = A309074 n

end A309074

/-! ## A309074.P5821793198248272328

`A082908(A073137(n))²`
-/

namespace A309074.P5821793198248272328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082908 (A073137 n).toNat ^ 2

end

end A309074.P5821793198248272328

namespace A309074

/-- `A082908(A073137(n))²` -/
def P5821793198248272328.Spec : Prop :=
  ∀ n, P5821793198248272328.a n = A309074 n

end A309074

/-! ## A309074.P12201991833188166374

`A000010(A267584(n))²`
-/

namespace A309074.P12201991833188166374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A267584 n).toNat ^ 2

end

end A309074.P12201991833188166374

namespace A309074

/-- `A000010(A267584(n))²` -/
def P12201991833188166374.Spec : Prop :=
  ∀ n, P12201991833188166374.a n = A309074 n

end A309074

/-! ## A309074.P16653211268749823498

`A267584(A025480(n))²`
-/

namespace A309074.P16653211268749823498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267584 (A025480 n).toNat ^ 2

end

end A309074.P16653211268749823498

namespace A309074

/-- `A267584(A025480(n))²` -/
def P16653211268749823498.Spec : Prop :=
  ∀ n, P16653211268749823498.a n = A309074 n

end A309074

/-! ## A309074.P13414701795113271644

`A011782(A290251(n))²`
-/

namespace A309074.P13414701795113271644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 (A290251 n).toNat ^ 2

end

end A309074.P13414701795113271644

namespace A309074

/-- `A011782(A290251(n))²` -/
def P13414701795113271644.Spec : Prop :=
  ∀ n, P13414701795113271644.a n = A309074 n

end A309074

/-! ## A309074.P17000630193430011285

`A060632(A261693(n))²`
-/

namespace A309074.P17000630193430011285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060632 (A261693 n).toNat ^ 2

end

end A309074.P17000630193430011285

namespace A309074

/-- `A060632(A261693(n))²` -/
def P17000630193430011285.Spec : Prop :=
  ∀ n, P17000630193430011285.a n = A309074 n

end A309074

/-!
# A309075: Total number of black cells after n iterations of Langton's ant with two ants on the grid placed side-by-side on neighboring squares and initially looking in the same direction.

The programs for A309075, the canonical program `A309075.P8414339720038639792` is in `Seq.B000.C044`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A309075 has offset 0).

The definition of A309075 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A309075.P8414339720038639792

`ogf((2x+4x^3+2x^4+4x^5+4x^6+4x^7+4x^8+2x^9+4x^10+2x^12)/(1-x+x^2-x^3+x^4-x^5+x^6-x^7+x^8-x^9+x^10-x^11+x^12-x^13))`

The canonical program, it is in `Seq.B000.C044`.
-/

namespace A309075

/-- `ogf((2x+4x^3+2x^4+4x^5+4x^6+4x^7+4x^8+2x^9+4x^10+2x^12)/(1-x+x^2-x^3+x^4-x^5+x^6-x^7+x^8-x^9+x^10-x^11+x^12-x^13))` -/
def P8414339720038639792.Spec : Prop :=
  ∀ n, P8414339720038639792.a n = A309075 n

theorem P8414339720038639792.correct : P8414339720038639792.Spec := by
  intro n
  simp only [A309075]

end A309075

/-!
# A309076: The Zeckendorf representation of n read as a NegaFibonacci representation.

The programs for A309076, the canonical program `A309076.P2241331786193624643` is in `Seq.B002.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A309076 has offset 0).

The definition of A309076 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 610 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A309076.P2241331786193624643

`A356327(A003714(n))`

The canonical program, it is in `Seq.B002.C006`.
-/

namespace A309076

/-- `A356327(A003714(n))` -/
def P2241331786193624643.Spec : Prop :=
  ∀ n, P2241331786193624643.a n = A309076 n

theorem P2241331786193624643.correct : P2241331786193624643.Spec := by
  intro n
  simp only [A309076]

end A309076

/-! ## A309076.P16005186344286675635

`A345290(A003714(n))+A345290(A022340(n))`
-/

namespace A309076.P16005186344286675635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345290 (A003714 n).toNat + A345290 (A022340 n).toNat

end

end A309076.P16005186344286675635

namespace A309076

/-- `A345290(A003714(n))+A345290(A022340(n))` -/
def P16005186344286675635.Spec : Prop :=
  ∀ n, P16005186344286675635.a n = A309076 n

end A309076

/-! ## A309076.P5727217562040971057

`A345290(A277335(n))`
-/

namespace A309076.P5727217562040971057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345290 (A277335 n).toNat

end

end A309076.P5727217562040971057

namespace A309076

/-- `A345290(A277335(n))` -/
def P5727217562040971057.Spec : Prop :=
  ∀ n, P5727217562040971057.a n = A309076 n

end A309076

/-!
# A309077: Maximum sum of base lengths over all minimal factorizations of length-n binary strings.

The programs for A309077, there is no canonical definition to state claims against.
-/

/-! ## A309077.P1892252052848024228

`A000196(∑[A108355(n+1)])`
-/

namespace A309077.P1892252052848024228
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108355 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A309077.P1892252052848024228

/-! ## A309077.P5808719170451890004

`round(∑[A312828(n)/A314786(n)])`
-/

namespace A309077.P5808719170451890004
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A312828 n : ℚ) / (A314786 n : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A309077.P5808719170451890004

/-! ## A309077.P5441014788287538170

`xor(A185709(n+1), A247908(n+1))`
-/

namespace A309077.P5441014788287538170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A185709 (n + 1)) (A247908 (n + 1))

end

end A309077.P5441014788287538170

/-! ## A309077.P7528631782226769865

`A008620(A007401(A005378(n)+n))`
-/

namespace A309077.P7528631782226769865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008620 (A007401 (A005378 n + (n : ℤ)).toNat).toNat

end

end A309077.P7528631782226769865

/-! ## A309077.P5018455622458623029

`A213711(A107586(n))`
-/

namespace A309077.P5018455622458623029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213711 (A107586 n).toNat

end

end A309077.P5018455622458623029

/-!
# A309078: Number of length-n binary strings achieving the maximum length of a minimal factorization (counted by A309077(n)).

The programs for A309078, there is no canonical definition to state claims against.
-/

/-! ## A309078.P8138785734748819935

`A001223(A302266(n+1)+A093996(n))`
-/

namespace A309078.P8138785734748819935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001223 (A302266 (n + 1) + A093996 n).toNat

end

end A309078.P8138785734748819935

/-!
# A309080: Product minus sum of all previous terms in the sequence, starting with a(1) = 2 and a(2) = 5.

The programs for A309080, there is no canonical definition to state claims against.
-/

/-! ## A309080.P6267975475429003807

`5*A194009(a(n-1))` with `a(0)=2, a(1)=5, a(2)=3`
-/

namespace A309080.P6267975475429003807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 5, 3] fun n a =>
  5 * A194009 (a (n - 1)).toNat

end

end A309080.P6267975475429003807

/-!
# A309081: a(n) = n - floor(n/2^2) + floor(n/3^2) - floor(n/4^2) + ...

The programs for A309081, the canonical program `A309081.P13004924516813177963` is in `Seq.B000.C044`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A309081 has offset 1).

The definition of A309081 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A309081.P13004924516813177963

`∑{#}[n, floor(sqrt((n+1)/(#+1)))%2]`

The canonical program, it is in `Seq.B000.C044`.
-/

namespace A309081

/-- `∑{#}[n, floor(sqrt((n+1)/(#+1)))%2]` -/
def P13004924516813177963.Spec : Prop :=
  ∀ n, P13004924516813177963.a n = A309081 (n + 1)

theorem P13004924516813177963.correct : P13004924516813177963.Spec := by
  intro n
  simp only [A309081, Nat.add_sub_cancel]

end A309081

/-! ## A309081.P17574203666175554834

`∑[A344299(1+n)]`
-/

namespace A309081.P17574203666175554834
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344299 (1 + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A309081.P17574203666175554834

namespace A309081

/-- `∑[A344299(1+n)]` -/
def P17574203666175554834.Spec : Prop :=
  ∀ n, P17574203666175554834.a n = A309081 (n + 1)

end A309081

/-! ## A309081.P8119746073903398792

`∑[∑{d}[1+n, A048272(#)%2]]`
-/

namespace A309081.P8119746073903398792
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1 + n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n), Int.tmod (A048272 d) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A309081.P8119746073903398792

namespace A309081

/-- `∑[∑{d}[1+n, A048272(#)%2]]` -/
def P8119746073903398792.Spec : Prop :=
  ∀ n, P8119746073903398792.a n = A309081 (n + 1)

end A309081

/-! ## A309081.P14199581393348866695

`∑[A048272(∏{p}[n+1, #^val(n+1, #²)])]`
-/

namespace A309081.P14199581393348866695
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048272 (∏ p ∈ Nat.primeFactors (f2 n), p ^ SequenceMachineLib.valuation (n + 1) (p ^ 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A309081.P14199581393348866695

namespace A309081

/-- `∑[A048272(∏{p}[n+1, #^val(n+1, #²)])]` -/
def P14199581393348866695.Spec : Prop :=
  ∀ n, P14199581393348866695.a n = A309081 (n + 1)

end A309081

/-! ## A309081.P9734122500949406928

`∑[A048272(A000188(n+1))]`
-/

namespace A309081.P9734122500949406928
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048272 (A000188 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A309081.P9734122500949406928

namespace A309081

/-- `∑[A048272(A000188(n+1))]` -/
def P9734122500949406928.Spec : Prop :=
  ∀ n, P9734122500949406928.a n = A309081 (n + 1)

end A309081

/-! ## A309081.P6133083290454424915

`∑[A317529(A008833(n+1))]`
-/

namespace A309081.P6133083290454424915
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317529 (A008833 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A309081.P6133083290454424915

namespace A309081

/-- `∑[A317529(A008833(n+1))]` -/
def P6133083290454424915.Spec : Prop :=
  ∀ n, P6133083290454424915.a n = A309081 (n + 1)

end A309081

/-! ## A309081.P3650401245247587801

`∑[A317529(A214682(n+1))]`
-/

namespace A309081.P3650401245247587801
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317529 (A214682 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A309081.P3650401245247587801

namespace A309081

/-- `∑[A317529(A214682(n+1))]` -/
def P3650401245247587801.Spec : Prop :=
  ∀ n, P3650401245247587801.a n = A309081 (n + 1)

end A309081

/-! ## A309081.P9430704094698077379

`∑[A048272(A057918(n+1)+1)]`
-/

namespace A309081.P9430704094698077379
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048272 (A057918 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A309081.P9430704094698077379

namespace A309081

/-- `∑[A048272(A057918(n+1)+1)]` -/
def P9430704094698077379.Spec : Prop :=
  ∀ n, P9430704094698077379.a n = A309081 (n + 1)

end A309081

/-! ## A309081.P12915524123676350312

`∑[A048272((n+1)/A019554(n+1))]`
-/

namespace A309081.P12915524123676350312
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048272 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A019554 (n + 1) : ℚ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A309081.P12915524123676350312

namespace A309081

/-- `∑[A048272((n+1)/A019554(n+1))]` -/
def P12915524123676350312.Spec : Prop :=
  ∀ n, P12915524123676350312.a n = A309081 (n + 1)

end A309081

/-! ## A309081.P577032749956628857

`∑[∑{d}[n+1, A258998(#)]]`
-/

namespace A309081.P577032749956628857
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n), A258998 d

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A309081.P577032749956628857

namespace A309081

/-- `∑[∑{d}[n+1, A258998(#)]]` -/
def P577032749956628857.Spec : Prop :=
  ∀ n, P577032749956628857.a n = A309081 (n + 1)

end A309081

/-! ## A309081.P1814721390111371612

`∑[A390260((n+1)²)]`
-/

namespace A309081.P1814721390111371612
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390260 ((n + 1) ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A309081.P1814721390111371612

namespace A309081

/-- `∑[A390260((n+1)²)]` -/
def P1814721390111371612.Spec : Prop :=
  ∀ n, P1814721390111371612.a n = A309081 (n + 1)

end A309081

/-!
# A309082: a(n) = n - floor(n/2^3) + floor(n/3^3) - floor(n/4^3) + ...

The programs for A309082, the canonical program `A309082.P2346780015378476388` is in `Seq.B001.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A309082 has offset 1).

The definition of A309082 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A309082.P2346780015378476388

`A013937(n+1)-2*A013937(floor((n+1)/8))`

The canonical program, it is in `Seq.B001.C012`.
-/

namespace A309082

/-- `A013937(n+1)-2*A013937(floor((n+1)/8))` -/
def P2346780015378476388.Spec : Prop :=
  ∀ n, P2346780015378476388.a n = A309082 (n + 1)

theorem P2346780015378476388.correct : P2346780015378476388.Spec := by
  intro n
  simp only [A309082, Nat.add_sub_cancel]

end A309082

/-! ## A309082.P13440155091147968612

`∑{#}[n, floor(((n+1)/(#+1))^(1/3))%2]`
-/

namespace A309082.P13440155091147968612
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), Int.tmod ⌊((n + 1 : ℚ) / (k + 1 : ℚ) : ℝ) ^ ((1 : ℚ) / 3 : ℝ)⌋ 2

end

end A309082.P13440155091147968612

namespace A309082

/-- `∑{#}[n, floor(((n+1)/(#+1))^(1/3))%2]` -/
def P13440155091147968612.Spec : Prop :=
  ∀ n, P13440155091147968612.a n = A309082 (n + 1)

end A309082

/-! ## A309082.P14668927382268731121

`∑[A390259(n+1)]`
-/

namespace A309082.P14668927382268731121
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390259 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A309082.P14668927382268731121

namespace A309082

/-- `∑[A390259(n+1)]` -/
def P14668927382268731121.Spec : Prop :=
  ∀ n, P14668927382268731121.a n = A309082 (n + 1)

end A309082

/-! ## A309082.P2137232102260517042

`∑[A048272(A053150(n+1))]`
-/

namespace A309082.P2137232102260517042
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048272 (A053150 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A309082.P2137232102260517042

namespace A309082

/-- `∑[A048272(A053150(n+1))]` -/
def P2137232102260517042.Spec : Prop :=
  ∀ n, P2137232102260517042.a n = A309082 (n + 1)

end A309082

/-! ## A309082.P13066646798315340645

`∑[A344299(A000189(n+1))]`
-/

namespace A309082.P13066646798315340645
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344299 (A000189 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A309082.P13066646798315340645

namespace A309082

/-- `∑[A344299(A000189(n+1))]` -/
def P13066646798315340645.Spec : Prop :=
  ∀ n, P13066646798315340645.a n = A309082 (n + 1)

end A309082

/-! ## A309082.P11028243232362332876

`∑[A317529(A053150(n+1)²)]`
-/

namespace A309082.P11028243232362332876
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317529 (A053150 (n + 1) ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A309082.P11028243232362332876

namespace A309082

/-- `∑[A317529(A053150(n+1)²)]` -/
def P11028243232362332876.Spec : Prop :=
  ∀ n, P11028243232362332876.a n = A309082 (n + 1)

end A309082

/-! ## A309082.P7426449552801373846

`∑[A344299(A053150(n+1)²)]`
-/

namespace A309082.P7426449552801373846
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344299 (A053150 (n + 1) ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A309082.P7426449552801373846

namespace A309082

/-- `∑[A344299(A053150(n+1)²)]` -/
def P7426449552801373846.Spec : Prop :=
  ∀ n, P7426449552801373846.a n = A309082 (n + 1)

end A309082

/-! ## A309082.P8448859827789928103

`a(n-1)+A317529(A053150(n+1)²)+A000007(n)` with `a(0)=1, a(1)=2`
-/

namespace A309082.P8448859827789928103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  a (n - 1) + (A317529 (A053150 (n + 1) ^ 2).toNat + A000007 n)

end

end A309082.P8448859827789928103

namespace A309082

/-- `a(n-1)+A317529(A053150(n+1)²)+A000007(n)` -/
def P8448859827789928103.Spec : Prop :=
  ∀ n, P8448859827789928103.a n = A309082 (n + 1)

end A309082

/-! ## A309082.P15100476694448108185

`∑[A037213(A011782(A062378(n+1)))]`
-/

namespace A309082.P15100476694448108185
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037213 (A011782 (A062378 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A309082.P15100476694448108185

namespace A309082

/-- `∑[A037213(A011782(A062378(n+1)))]` -/
def P15100476694448108185.Spec : Prop :=
  ∀ n, P15100476694448108185.a n = A309082 (n + 1)

end A309082

/-! ## A309082.P17344182456037407467

`∑[A035162(A000041(A113061(n+1)))]`
-/

namespace A309082.P17344182456037407467
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035162 (A000041 (A113061 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A309082.P17344182456037407467

namespace A309082

/-- `∑[A035162(A000041(A113061(n+1)))]` -/
def P17344182456037407467.Spec : Prop :=
  ∀ n, P17344182456037407467.a n = A309082 (n + 1)

end A309082

/-!
# A309083: a(n) = n - floor(n/2^4) + floor(n/3^4) - floor(n/4^4) + ...

The programs for A309083, the canonical program `A309083.P8434805462246211605` is in `Seq.B000.C044`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A309083 has offset 1).

The definition of A309083 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A309083.P8434805462246211605

`∑{#}[n, floor(((n+1)/(#+1))^(1/4))%2]`

The canonical program, it is in `Seq.B000.C044`.
-/

namespace A309083

/-- `∑{#}[n, floor(((n+1)/(#+1))^(1/4))%2]` -/
def P8434805462246211605.Spec : Prop :=
  ∀ n, P8434805462246211605.a n = A309083 (n + 1)

theorem P8434805462246211605.correct : P8434805462246211605.Spec := by
  intro n
  simp only [A309083, Nat.add_sub_cancel]

end A309083

/-! ## A309083.P14723414762981821054

`∑[A390260(1+n)]`
-/

namespace A309083.P14723414762981821054
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390260 (1 + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A309083.P14723414762981821054

namespace A309083

/-- `∑[A390260(1+n)]` -/
def P14723414762981821054.Spec : Prop :=
  ∀ n, P14723414762981821054.a n = A309083 (n + 1)

end A309083

/-! ## A309083.P6074922920578766425

`A390260(n+1)+a(n-1)` with `a(0)=1`
-/

namespace A309083.P6074922920578766425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A390260 (n + 1) + a (n - 1)

end

end A309083.P6074922920578766425

namespace A309083

/-- `A390260(n+1)+a(n-1)` -/
def P6074922920578766425.Spec : Prop :=
  ∀ n, P6074922920578766425.a n = A309083 (n + 1)

end A309083

/-! ## A309083.P11751521682493412943

`∑[A344299(A000188(1+n))]`
-/

namespace A309083.P11751521682493412943
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344299 (A000188 (1 + n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A309083.P11751521682493412943

namespace A309083

/-- `∑[A344299(A000188(1+n))]` -/
def P11751521682493412943.Spec : Prop :=
  ∀ n, P11751521682493412943.a n = A309083 (n + 1)

end A309083

/-! ## A309083.P4186422859926366372

`∑[A344299(sqrt(A008833(n+1)))]`
-/

namespace A309083.P4186422859926366372
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344299 (SequenceMachineLib.roundAway (Real.sqrt (A008833 (n + 1) : ℝ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A309083.P4186422859926366372

namespace A309083

/-- `∑[A344299(sqrt(A008833(n+1)))]` -/
def P4186422859926366372.Spec : Prop :=
  ∀ n, P4186422859926366372.a n = A309083 (n + 1)

end A309083

/-! ## A309083.P16741424418552019963

`∑[and(3, A001159(A300909(n+1)²+1))]`
-/

namespace A309083.P16741424418552019963
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 3 (A001159 (A300909 (n + 1) ^ 2 + 1).toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A309083.P16741424418552019963

namespace A309083

/-- `∑[and(3, A001159(A300909(n+1)²+1))]` -/
def P16741424418552019963.Spec : Prop :=
  ∀ n, P16741424418552019963.a n = A309083 (n + 1)

end A309083

/-! ## A309083.P13340896344072767422

`∑[and(3, A046042(A300909(n+1)²+1))]`
-/

namespace A309083.P13340896344072767422
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 3 (A046042 (A300909 (n + 1) ^ 2 + 1).toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A309083.P13340896344072767422

namespace A309083

/-- `∑[and(3, A046042(A300909(n+1)²+1))]` -/
def P13340896344072767422.Spec : Prop :=
  ∀ n, P13340896344072767422.a n = A309083 (n + 1)

end A309083

/-! ## A309083.P3801010257938993440

`∑[A100260((A008835(n+1)+2)^2+1)]`
-/

namespace A309083.P3801010257938993440
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100260 ((A008835 (n + 1) + 2) ^ 2 + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A309083.P3801010257938993440

namespace A309083

/-- `∑[A100260((A008835(n+1)+2)^2+1)]` -/
def P3801010257938993440.Spec : Prop :=
  ∀ n, P3801010257938993440.a n = A309083 (n + 1)

end A309083

/-! ## A309083.P3165853344342246370

`A375245(n+1)`
-/

namespace A309083.P3165853344342246370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375245 (n + 1)

end

end A309083.P3165853344342246370

namespace A309083

/-- `A375245(n+1)` -/
def P3165853344342246370.Spec : Prop :=
  ∀ n, P3165853344342246370.a n = A309083 (n + 1)

end A309083

/-! ## A309083.P6488762838803868541

`n+1-∑[val(A113004(A113001(n+1)), 16)]`
-/

namespace A309083.P6488762838803868541
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A113004 (A113001 (n + 1)).toNat).toNat 16

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A309083.P6488762838803868541

namespace A309083

/-- `n+1-∑[val(A113004(A113001(n+1)), 16)]` -/
def P6488762838803868541.Spec : Prop :=
  ∀ n, P6488762838803868541.a n = A309083 (n + 1)

end A309083

/-!
# A309084: a(n) = exp(3) * Sum_{k>=0} (-3)^k*k^n/k!.

The programs for A309084, there is no canonical definition to state claims against.
-/

/-! ## A309084.P6123989302960456458

`A292861(∑[n+3]+n+3)`
-/

namespace A309084.P6123989302960456458
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292861 (∑ j ∈ Finset.range (n + 1), f1 j + (n + 3))

end

end A309084.P6123989302960456458

/-! ## A309084.P385876425132196707

`∑{#}[n, (-1)^(n-#)*C(n, #)*A320432(#)]`
-/

namespace A309084.P385876425132196707
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), (-1 : ℚ) ^ ((n : ℤ) - (k : ℤ) : ℤ) * (Nat.choose n k : ℚ) * (A320432 k : ℚ)

end

end A309084.P385876425132196707

/-! ## A309084.P11847489504409370613

`A156594(∑[n+1]+1)`
-/

namespace A309084.P11847489504409370613
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156594 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A309084.P11847489504409370613

/-!
# A309085: a(n) = exp(4) * Sum_{k>=0} (-4)^k*k^n/k!.

The programs for A309085, there is no canonical definition to state claims against.
-/

/-! ## A309085.P10334875693240481918

`A292861(A052905(2+n))`
-/

namespace A309085.P10334875693240481918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292861 (A052905 (2 + n)).toNat

end

end A309085.P10334875693240481918

/-! ## A309085.P3760824256012316695

`∑{#}[n, (-1)^(n-#)*C(n, #)*A320433(#)]`
-/

namespace A309085.P3760824256012316695
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), (-1 : ℚ) ^ ((n : ℤ) - (k : ℤ) : ℤ) * (Nat.choose n k : ℚ) * (A320433 k : ℚ)

end

end A309085.P3760824256012316695

/-!
# A309087: a(n) = Sum_{k >= 0} floor(n^k / k!).

The programs for A309087, there is no canonical definition to state claims against.
-/

/-! ## A309087.P15240412108290842218

`A309104(n)+A309105(n)`
-/

namespace A309087.P15240412108290842218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309104 n + A309105 n

end

end A309087.P15240412108290842218

/-! ## A309087.P12471026015349728491

`A309103(n)+2*A309104(n)`
-/

namespace A309087.P12471026015349728491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309103 n + 2 * A309104 n

end

end A309087.P12471026015349728491

/-! ## A309087.P11897762970118385076

`2*A309105(n)-A309103(n)`
-/

namespace A309087.P11897762970118385076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A309105 n - A309103 n

end

end A309087.P11897762970118385076

/-! ## A309087.P7610211879637997378

`A309105(A028310(n))+A309105(n)-A309103(n)`
-/

namespace A309087.P7610211879637997378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309105 (A028310 n).toNat + (A309105 n - A309103 n)

end

end A309087.P7610211879637997378

/-! ## A309087.P8337591171338960766

`A309103(n)+A005843(A309104(n))`
-/

namespace A309087.P8337591171338960766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309103 n + A005843 (A309104 n).toNat

end

end A309087.P8337591171338960766

/-!
# A309089: a(n) is the number of absolute values of determinants that come from a unique isotopy class of order n Latin squares.

The programs for A309089, there is no canonical definition to state claims against.
-/

/-! ## A309089.P1437083800480723562

`A285798(xor(1, n)+ceil(2^or(1, n-1))-1)`
-/

namespace A309089.P1437083800480723562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285798 ((Nat.xor 1 n : ℤ) + (⌈(2 : ℚ) ^ (Int.lor 1 ((n : ℤ) - 1) : ℤ)⌉ - 1)).toNat

end

end A309089.P1437083800480723562

/-! ## A309089.P12318103677197031816

`A198192(A290816(n+3))`
-/

namespace A309089.P12318103677197031816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198192 (A290816 (n + 3)).toNat

end

end A309089.P12318103677197031816

/-! ## A309089.P5243764912357180354

`A263235(A206702(n+1)-n)`
-/

namespace A309089.P5243764912357180354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263235 (A206702 (n + 1) - (n : ℤ)).toNat

end

end A309089.P5243764912357180354

/-!
# A309090: a(n) is the least x such that x^2 mod prime(i), i=1..n, are all distinct.

The programs for A309090, there is no canonical definition to state claims against.
-/

/-! ## A309090.P2787880465024346723

`A349976(A180187(n+1))+A089839(n)`
-/

namespace A309090.P2787880465024346723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349976 (A180187 (n + 1)).toNat + A089839 n

end

end A309090.P2787880465024346723

/-! ## A309090.P12637319114045551657

`A145075(a(n-1))` with `a(0)=1, a(1)=2, a(2)=2, a(3)=3, a(4)=3`
-/

namespace A309090.P12637319114045551657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 2, 3, 3] fun n a =>
  A145075 (a (n - 1)).toNat

end

end A309090.P12637319114045551657

/-!
# A309093: The analog of A309077(n), but allowing fractional powers.

The programs for A309093, there is no canonical definition to state claims against.
-/

/-! ## A309093.P11599021131775340504

`∑[1-T(n-1,k-1)]` with `a(0)=1`
-/

namespace A309093.P11599021131775340504
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  1 - SequenceMachineLib.triUpLeft f1 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A309093.P11599021131775340504

/-! ## A309093.P8986979344288523270

`∑[1-T(n,k-1)]` with `a(0)=1`
-/

namespace A309093.P8986979344288523270
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  1 - SequenceMachineLib.triLeft f1 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A309093.P8986979344288523270

/-! ## A309093.P15179006940411270504

`∑[xor(1, T(n-1,k-1))]` with `a(0)=1`
-/

namespace A309093.P15179006940411270504
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f1 =>
  Nat.xor 1 (SequenceMachineLib.triUpLeft f1 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A309093.P15179006940411270504

/-! ## A309093.P10186808860801098839

`∑[T(n-1,k)^T(n-1,k-1)]` with `a(0)=1`
-/

namespace A309093.P10186808860801098839
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f1 =>
  SequenceMachineLib.triUp f1 n ^ SequenceMachineLib.triUpLeft f1 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A309093.P10186808860801098839

/-! ## A309093.P9867436881391579761

`∑[C(T(n-1,k), T(n-1,k-1))]` with `a(0)=1`
-/

namespace A309093.P9867436881391579761
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f1 =>
  Nat.choose (SequenceMachineLib.triUp f1 n) (SequenceMachineLib.triUpLeft f1 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A309093.P9867436881391579761

/-!
# A309095: a(n) is the largest k such that every number from 1 to k can be covered by n geometric progressions of rational numbers.

The programs for A309095, there is no canonical definition to state claims against.
-/

/-! ## A309095.P5817984551997492233

`A327465(n)+a(n-1)` with `a(0)=2`
-/

namespace A309095.P5817984551997492233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A327465 n + a (n - 1)

end

end A309095.P5817984551997492233

/-! ## A309095.P6591978698801938891

`∑[A327465(1+abs(n-1))]-1`
-/

namespace A309095.P6591978698801938891
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327465 (1 + |(n : ℤ) - 1|).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A309095.P6591978698801938891

/-! ## A309095.P10114867602786381363

`abs(A327465(n)+a(A023443(n)))` with `a(0)=2`
-/

namespace A309095.P10114867602786381363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  |A327465 n + a (A023443 n).toNat|

end

end A309095.P10114867602786381363

/-! ## A309095.P7086025714265990015

`∑[A327465(n-A290995(a(n-1)))]` with `a(0)=2`
-/

namespace A309095.P7086025714265990015
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [2] fun n f1 =>
  A327465 ((n : ℤ) - A290995 (f1 (n - 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A309095.P7086025714265990015

/-! ## A309095.P5323496117403521795

`∑[A327465(n)/A103159(a(n-1))]` with `a(0)=2`
-/

namespace A309095.P5323496117403521795
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [2] fun n f1 =>
  (A327465 n : ℚ) / (A103159 (SequenceMachineLib.roundAway (f1 (n - 1))).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A309095.P5323496117403521795

/-! ## A309095.P108175095885505843

`∑[A327465(n+1)]+2-A327465(n+1)`
-/

namespace A309095.P108175095885505843
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327465 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 2 - A327465 (n + 1)

end

end A309095.P108175095885505843

/-!
# A309096: Increasing positive integers with prime factorization exponents all appearing earlier in the sequence.

The programs for A309096, there is no canonical definition to state claims against.
-/

/-! ## A309096.P5276458206355013524

`record[A395619(n+1)]`
-/

namespace A309096.P5276458206355013524
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A395619 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A309096.P5276458206355013524

/-! ## A309096.P15072887740062391591

`filter[A377020(n+1), A341629(#)]`
-/

namespace A309096.P15072887740062391591
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377020 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A341629 (f1 j).toNat = 1) n)

end

end A309096.P15072887740062391591

/-! ## A309096.P1917708941369209991

`∩[A055932(n+1), A377020(n+1)]`
-/

namespace A309096.P1917708941369209991
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055932 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377020 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A309096.P1917708941369209991

/-! ## A309096.P999064505463316108

`A395619(eq[n+1, A395619(n+1)]+1)`
-/

namespace A309096.P999064505463316108
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A395619 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A395619 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A309096.P999064505463316108

/-! ## A309096.P958122202234099026

`record[gcd(n+1, A284476(A066638(n+1)))]`
-/

namespace A309096.P958122202234099026
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A284476 (A066638 (n + 1)).toNat)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A309096.P958122202234099026

/-!
# A309097: Number of partitions of n avoiding the partition (4,2,1).

The programs for A309097, the canonical program `A309097.P9673110000560192453` is in `Seq.B000.C044`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A309097 has offset 0).

The definition of A309097 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6001 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A309097.P9673110000560192453

`∑[abs(∏{e}[1-n, #+1]-n)]`

The canonical program, it is in `Seq.B000.C044`.
-/

namespace A309097

/-- `∑[abs(∏{e}[1-n, #+1]-n)]` -/
def P9673110000560192453.Spec : Prop :=
  ∀ n, P9673110000560192453.a n = A309097 n

theorem P9673110000560192453.correct : P9673110000560192453.Spec := by
  intro n
  simp only [A309097]

end A309097

/-! ## A309097.P8066333915294180710

`2+∑[n-∏{e}[n-1, #+1]]`
-/

namespace A309097.P8066333915294180710
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - ((∏ p ∈ Nat.primeFactors (f2 n).natAbs, (Nat.factorization (f2 n).natAbs p + 1) : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A309097.P8066333915294180710

namespace A309097

/-- `2+∑[n-∏{e}[n-1, #+1]]` -/
def P8066333915294180710.Spec : Prop :=
  ∀ n, P8066333915294180710.a n = A309097 n

end A309097

/-! ## A309097.P13258429550999205823

`a(n-1)-∏{e}[1-n, #+1]+n` with `a(0)=1`
-/

namespace A309097.P13258429550999205823
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) - ((∏ p ∈ Nat.primeFactors (f1 n).natAbs, (Nat.factorization (f1 n).natAbs p + 1) : ℕ) : ℤ) + (n : ℤ)

end

end A309097.P13258429550999205823

namespace A309097

/-- `a(n-1)-∏{e}[1-n, #+1]+n` -/
def P13258429550999205823.Spec : Prop :=
  ∀ n, P13258429550999205823.a n = A309097 n

end A309097

/-! ## A309097.P4821573029750340886

`∑[n]+2-A350102(n)`
-/

namespace A309097.P4821573029750340886
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) + (2 - A350102 n)

end

end A309097.P4821573029750340886

namespace A309097

/-- `∑[n]+2-A350102(n)` -/
def P4821573029750340886.Spec : Prop :=
  ∀ n, P4821573029750340886.a n = A309097 n

end A309097

/-! ## A309097.P15100649843707734633

`A062968(n-1)+a(n-1)` with `a(0)=1, a(1)=1`
-/

namespace A309097.P15100649843707734633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A062968 (n - 1) + a (n - 1)

end

end A309097.P15100649843707734633

namespace A309097

/-- `A062968(n-1)+a(n-1)` -/
def P15100649843707734633.Spec : Prop :=
  ∀ n, P15100649843707734633.a n = A309097 n

end A309097

/-! ## A309097.P9798045324749122680

`∑[abs(1-n)-A032741(abs(1-n))]`
-/

namespace A309097.P9798045324749122680
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - (n : ℤ)| - A032741 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A309097.P9798045324749122680

namespace A309097

/-- `∑[abs(1-n)-A032741(abs(1-n))]` -/
def P9798045324749122680.Spec : Prop :=
  ∀ n, P9798045324749122680.a n = A309097 n

end A309097

/-! ## A309097.P10884657909599507507

`a(n-1)-A000005(n-1)+n` with `a(0)=1, a(1)=1`
-/

namespace A309097.P10884657909599507507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  a (n - 1) - A000005 (n - 1) + (n : ℤ)

end

end A309097.P10884657909599507507

namespace A309097

/-- `a(n-1)-A000005(n-1)+n` -/
def P10884657909599507507.Spec : Prop :=
  ∀ n, P10884657909599507507.a n = A309097 n

end A309097

/-! ## A309097.P9405392219319933305

`n-(A000005(abs(1-n))-a(n-1))` with `a(0)=1, a(1)=1`
-/

namespace A309097.P9405392219319933305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  (n : ℤ) - (A000005 |1 - (n : ℤ)|.toNat - a (n - 1))

end

end A309097.P9405392219319933305

namespace A309097

/-- `n-(A000005(abs(1-n))-a(n-1))` -/
def P9405392219319933305.Spec : Prop :=
  ∀ n, P9405392219319933305.a n = A309097 n

end A309097

/-! ## A309097.P8575098520287792218

`a(n-1)-(A000005(1-(n-A004275(n)))-n)` with `a(0)=1`
-/

namespace A309097.P8575098520287792218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) - (A000005 (1 - ((n : ℤ) - A004275 n)).toNat - (n : ℤ))

end

end A309097.P8575098520287792218

namespace A309097

/-- `a(n-1)-(A000005(1-(n-A004275(n)))-n)` -/
def P8575098520287792218.Spec : Prop :=
  ∀ n, P8575098520287792218.a n = A309097 n

end A309097

/-! ## A309097.P12300405214581215803

`∑[n]+2-∑[A238353(C(n, 2))]`
-/

namespace A309097.P12300405214581215803
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238353 (Nat.choose n 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) + (2 - ∑ j ∈ Finset.range (n + 1), f2 j)

end

end A309097.P12300405214581215803

namespace A309097

/-- `∑[n]+2-∑[A238353(C(n, 2))]` -/
def P12300405214581215803.Spec : Prop :=
  ∀ n, P12300405214581215803.a n = A309097 n

end A309097

/-!
# A309098: Number of partitions of n avoiding the partition (4,3).

The programs for A309098, there is no canonical definition to state claims against.
-/

/-! ## A309098.P12154312127221532349

`A281376(n+1)+1+n-a(n-1)` with `a(0)=1`
-/

namespace A309098.P12154312127221532349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A281376 (n + 1) + 1 + (n : ℤ) - a (n - 1)

end

end A309098.P12154312127221532349

/-! ## A309098.P3756869154443499234

`a(n-2)+A325459(n)+A110654(n)` with `a(0)=1, a(1)=1`
-/

namespace A309098.P3756869154443499234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  a (n - 2) + (A325459 n + A110654 n)

end

end A309098.P3756869154443499234

/-! ## A309098.P12527132540370393402

`∑[A006218(n)-A032766(n)+1]-a(n-1)` with `a(0)=1`
-/

namespace A309098.P12527132540370393402
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006218 n - A032766 n + 1

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ∑ j ∈ Finset.range (n + 1), f1 j - a (n - 1)

end

end A309098.P12527132540370393402

/-! ## A309098.P387855474783998957

`∑[A341465(n)]`
-/

namespace A309098.P387855474783998957
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341465 (n + 38)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A309098.P387855474783998957

/-!
# A309099: Number of partitions of n avoiding the partition (4,3,1).

The programs for A309099, the canonical program `A309099.P12982382643255885800` is in `Seq.B002.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A309099 has offset 0).

The definition of A309099 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A309099.P16789376184164472056

`∑[A325459(n)+1-char[1]]`
-/

namespace A309099.P16789376184164472056
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325459 n + (1 - ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A309099.P16789376184164472056

namespace A309099

/-- `∑[A325459(n)+1-char[1]]` -/
def P16789376184164472056.Spec : Prop :=
  ∀ n, P16789376184164472056.a n = A309099 n

end A309099

/-! ## A309099.P6228548088548733250

`∑[A054519(n-char[1])]-n²`
-/

namespace A309099.P6228548088548733250
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054519 (n - (if ∃ j, f2 j = n then 1 else 0))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (n ^ 2 : ℤ)

end

end A309099.P6228548088548733250

namespace A309099

/-- `∑[A054519(n-char[1])]-n²` -/
def P6228548088548733250.Spec : Prop :=
  ∀ n, P6228548088548733250.a n = A309099 n

end A309099

/-! ## A309099.P6042022206750918053

`∑[A000005(n)+a(n-1)-2]` with `a(0)=1, a(1)=0, a(2)=1`
-/

namespace A309099.P6042022206750918053
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 1] fun n f1 =>
  A000005 n + (f1 (n - 1) - 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A309099.P6042022206750918053

namespace A309099

/-- `∑[A000005(n)+a(n-1)-2]` -/
def P6042022206750918053.Spec : Prop :=
  ∀ n, P6042022206750918053.a n = A309099 n

end A309099

/-! ## A309099.P12982382643255885800

`A028310(n)+∑[A325459(n)]`

The canonical program, it is in `Seq.B002.C006`.
-/

namespace A309099

/-- `A028310(n)+∑[A325459(n)]` -/
def P12982382643255885800.Spec : Prop :=
  ∀ n, P12982382643255885800.a n = A309099 n

theorem P12982382643255885800.correct : P12982382643255885800.Spec := by
  intro n
  simp only [A309099]

end A309099

/-! ## A309099.P7084256188880382836

`A000007(n)+∑[A325459(n)]+n`
-/

namespace A309099.P7084256188880382836
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325459 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n + (∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ))

end

end A309099.P7084256188880382836

namespace A309099

/-- `A000007(n)+∑[A325459(n)]+n` -/
def P7084256188880382836.Spec : Prop :=
  ∀ n, P7084256188880382836.a n = A309099 n

end A309099

/-! ## A309099.P5179447581093503999

`∑[A325459(n)]+gcd(n, A008486(n))`
-/

namespace A309099.P5179447581093503999
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325459 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (Int.gcd (n : ℤ) (A008486 n) : ℤ)

end

end A309099.P5179447581093503999

namespace A309099

/-- `∑[A325459(n)]+gcd(n, A008486(n))` -/
def P5179447581093503999.Spec : Prop :=
  ∀ n, P5179447581093503999.a n = A309099 n

end A309099

/-! ## A309099.P13122113777292588752

`A000045(C(2, n+2))+∑[A325459(n)]+n`
-/

namespace A309099.P13122113777292588752
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325459 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (Nat.choose 2 (n + 2)) + (∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ))

end

end A309099.P13122113777292588752

namespace A309099

/-- `A000045(C(2, n+2))+∑[A325459(n)]+n` -/
def P13122113777292588752.Spec : Prop :=
  ∀ n, P13122113777292588752.a n = A309099 n

end A309099

/-! ## A309099.P8771290307335717113

`A065033(2*n)+∑[A325459(n)]`
-/

namespace A309099.P8771290307335717113
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325459 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (2 * n) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A309099.P8771290307335717113

namespace A309099

/-- `A065033(2*n)+∑[A325459(n)]` -/
def P8771290307335717113.Spec : Prop :=
  ∀ n, P8771290307335717113.a n = A309099 n

end A309099

/-! ## A309099.P9658561920327618422

`A123108(2*n)+∑[A325459(n)]`
-/

namespace A309099.P9658561920327618422
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325459 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123108 (2 * n) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A309099.P9658561920327618422

namespace A309099

/-- `A123108(2*n)+∑[A325459(n)]` -/
def P9658561920327618422.Spec : Prop :=
  ∀ n, P9658561920327618422.a n = A309099 n

end A309099

/-! ## A309099.P3357501239686020816

`a(n-1)+A320226(n)+1-n` with `a(0)=1, a(1)=1`
-/

namespace A309099.P3357501239686020816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  a (n - 1) + (A320226 n + (1 - (n : ℤ)))

end

end A309099.P3357501239686020816

namespace A309099

/-- `a(n-1)+A320226(n)+1-n` -/
def P3357501239686020816.Spec : Prop :=
  ∀ n, P3357501239686020816.a n = A309099 n

end A309099

