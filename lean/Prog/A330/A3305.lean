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
import Seq.B000.C011
import Seq.B000.C012
import Seq.B000.C013
import Seq.B000.C014
import Seq.B000.C015
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C026
import Seq.B000.C029
import Seq.B000.C032
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C037
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
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C005
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C001
import Seq.B005.C002
import Seq.B006.C000
import Seq.B006.C001
import Seq.B006.C002
import Seq.B007.C000
import Seq.B007.C001
import Seq.B008.C000
import Seq.B008.C001
import Seq.B009.C000
import Seq.B009.C001
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
# A330500: a(n) = a(n-1) + a(floor(n/3)), a(1) = a(2) = 1.

The programs for A330500, the canonical program `A330500.P18168887510955585316` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A330500 has offset 1).

The definition of A330500 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-1)+a(floor((n+1)/3)-1)` (program `A330500.P18168887510955585316`, by `A330500.P18168887510955585316.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A330500.P18168887510955585316

`a(n-1)+a(floor((n+1)/3)-1)` with `a(0)=1, a(1)=1`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A330500

/-- `a(n-1)+a(floor((n+1)/3)-1)` -/
def P18168887510955585316.Spec : Prop :=
  ∀ n, (P18168887510955585316.a n : ℤ) = A330500 (n + 1)

theorem P18168887510955585316.correct : P18168887510955585316.Spec := by
  intro n
  simp only [A330500, Nat.add_sub_cancel]

end A330500

/-! ## A330500.P12949478406326089003

`a(ceil((n-1)/3)-1)-floor(-a(n-1))` with `a(0)=1, a(1)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A330500.P12949478406326089003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  a (⌈((n : ℤ) - 1 : ℚ) / 3⌉ - 1).toNat - (-a (n - 1))

end

end A330500.P12949478406326089003

namespace A330500

/-- `a(ceil((n-1)/3)-1)-floor(-a(n-1))` -/
def P12949478406326089003.Spec : Prop :=
  ∀ n, P12949478406326089003.a n = A330500 (n + 1)

end A330500

/-! ## A330500.P16809101041840584241

`a(n-1)-ceil(-a(A002264(n-2)))` with `a(0)=1, a(1)=1`

`ceil` is left out, it is the identity on integers.
-/

namespace A330500.P16809101041840584241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  a (n - 1) - (-a (A002264 (n - 2)).toNat)

end

end A330500.P16809101041840584241

namespace A330500

/-- `a(n-1)-ceil(-a(A002264(n-2)))` -/
def P16809101041840584241.Spec : Prop :=
  ∀ n, P16809101041840584241.a n = A330500 (n + 1)

end A330500

/-! ## A330500.P4312417364271140050

`∑[∑[A008683(A288603(n))²]]-n`
-/

namespace A330500.P4312417364271140050
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A288603 n).toNat ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (n : ℤ)

end

end A330500.P4312417364271140050

namespace A330500

/-- `∑[∑[A008683(A288603(n))²]]-n` -/
def P4312417364271140050.Spec : Prop :=
  ∀ n, P4312417364271140050.a n = A330500 (n + 1)

end A330500

/-! ## A330500.P9566695372234482857

`∑[∑[A323239(A001611(n+1))]]+1`
-/

namespace A330500.P9566695372234482857
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323239 (A001611 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A330500.P9566695372234482857

namespace A330500

/-- `∑[∑[A323239(A001611(n+1))]]+1` -/
def P9566695372234482857.Spec : Prop :=
  ∀ n, P9566695372234482857.a n = A330500 (n + 1)

end A330500

/-!
# A330503: Number of Sós permutations of {0,1,...,n}.

The programs for A330503, the canonical program `A330503.P8991438941767947125` is in `Seq.B006.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A330503 has offset 1).

The definition of A330503 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A002088, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A330503.P8991438941767947125

`(n+2)*A002088(n+1)`

The canonical program, it is in `Seq.B006.C002`.
-/

namespace A330503

/-- `(n+2)*A002088(n+1)` -/
def P8991438941767947125.Spec : Prop :=
  ∀ n, P8991438941767947125.a n = A330503 (n + 1)

theorem P8991438941767947125.correct : P8991438941767947125.Spec := by
  intro n
  simp only [A330503, Nat.add_sub_cancel]

end A330503

/-! ## A330503.P11941553545722667003

`(n+2)*∑[(n+1)/∏{p}[n+1, #]*∏{p}[n+1, #-1]]`
-/

namespace A330503.P11941553545722667003
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f2 n), p : ℕ) : ℚ) * ((∏ p ∈ Nat.primeFactors (f3 n), ((p : ℤ) - 1) : ℤ) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℚ) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A330503.P11941553545722667003

namespace A330503

/-- `(n+2)*∑[(n+1)/∏{p}[n+1, #]*∏{p}[n+1, #-1]]` -/
def P11941553545722667003.Spec : Prop :=
  ∀ n, P11941553545722667003.a n = (A330503 (n + 1) : ℚ)

end A330503

/-! ## A330503.P2044215656531493757

`(n+2)*Δ[A103116(n)]`
-/

namespace A330503.P2044215656531493757
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103116 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℤ) * (f1 (n + 1) - f1 n)

end

end A330503.P2044215656531493757

namespace A330503

/-- `(n+2)*Δ[A103116(n)]` -/
def P2044215656531493757.Spec : Prop :=
  ∀ n, P2044215656531493757.a n = A330503 (n + 1)

end A330503

/-! ## A330503.P13920411221590897860

`(n+2)*A092249(n+1)`
-/

namespace A330503.P13920411221590897860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℤ) * A092249 (n + 1)

end

end A330503.P13920411221590897860

namespace A330503

/-- `(n+2)*A092249(n+1)` -/
def P13920411221590897860.Spec : Prop :=
  ∀ n, P13920411221590897860.a n = A330503 (n + 1)

end A330503

/-! ## A330503.P13392350031098407037

`A103116(n+1)+A011755(n+1)`
-/

namespace A330503.P13392350031098407037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103116 (n + 1) + A011755 (n + 1)

end

end A330503.P13392350031098407037

namespace A330503

/-- `A103116(n+1)+A011755(n+1)` -/
def P13392350031098407037.Spec : Prop :=
  ∀ n, P13392350031098407037.a n = A330503 (n + 1)

end A330503

/-! ## A330503.P11004189979315006913

`A143270(n+1)+A002088(n+1)`
-/

namespace A330503.P11004189979315006913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143270 (n + 1) + A002088 (n + 1)

end

end A330503.P11004189979315006913

namespace A330503

/-- `A143270(n+1)+A002088(n+1)` -/
def P11004189979315006913.Spec : Prop :=
  ∀ n, P11004189979315006913.a n = A330503 (n + 1)

end A330503

/-! ## A330503.P1261452786557214096

`A143270(n+1)+A092249(n+1)`
-/

namespace A330503.P1261452786557214096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143270 (n + 1) + A092249 (n + 1)

end

end A330503.P1261452786557214096

namespace A330503

/-- `A143270(n+1)+A092249(n+1)` -/
def P1261452786557214096.Spec : Prop :=
  ∀ n, P1261452786557214096.a n = A330503 (n + 1)

end A330503

/-! ## A330503.P7684416231466122440

`∑[A002618(n+1)+∑[A000010(n+1)]]`
-/

namespace A330503.P7684416231466122440
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002618 (n + 1) + ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A330503.P7684416231466122440

namespace A330503

/-- `∑[A002618(n+1)+∑[A000010(n+1)]]` -/
def P7684416231466122440.Spec : Prop :=
  ∀ n, P7684416231466122440.a n = A330503 (n + 1)

end A330503

/-! ## A330503.P1753978108889758058

`(n+2)*Δ[A005598(n)]`
-/

namespace A330503.P1753978108889758058
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005598 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℤ) * (f1 (n + 1) - f1 n)

end

end A330503.P1753978108889758058

namespace A330503

/-- `(n+2)*Δ[A005598(n)]` -/
def P1753978108889758058.Spec : Prop :=
  ∀ n, P1753978108889758058.a n = A330503 (n + 1)

end A330503

/-! ## A330503.P10858245939777868138

`A011755(n+1)+A274008(n+1)-A005598(n+1)`
-/

namespace A330503.P10858245939777868138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011755 (n + 1) + (A274008 (n + 1) - A005598 (n + 1))

end

end A330503.P10858245939777868138

namespace A330503

/-- `A011755(n+1)+A274008(n+1)-A005598(n+1)` -/
def P10858245939777868138.Spec : Prop :=
  ∀ n, P10858245939777868138.a n = A330503 (n + 1)

end A330503

/-! ## A330503.P8541715648198812443

`(n+2)*A388853(A000217(n+1))`
-/

namespace A330503.P8541715648198812443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℤ) * A388853 (A000217 (n + 1)).toNat

end

end A330503.P8541715648198812443

namespace A330503

/-- `(n+2)*A388853(A000217(n+1))` -/
def P8541715648198812443.Spec : Prop :=
  ∀ n, P8541715648198812443.a n = A330503 (n + 1)

end A330503

/-! ## A330503.P12700286724716887065

`(n+2)*A008619(A018805(n+1))`
-/

namespace A330503.P12700286724716887065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℤ) * A008619 (A018805 (n + 1)).toNat

end

end A330503.P12700286724716887065

namespace A330503

/-- `(n+2)*A008619(A018805(n+1))` -/
def P12700286724716887065.Spec : Prop :=
  ∀ n, P12700286724716887065.a n = A330503 (n + 1)

end A330503

/-!
# A330504: Expansion of e.g.f. Sum_{k>=1} tanh(x^k).

The programs for A330504, there is no canonical definition to state claims against.
-/

/-! ## A330504.P15479999580930654359

`(n+1)!*∑{d}[n+1, A155585(#)/#!]`
-/

namespace A330504.P15479999580930654359
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (n + 1) : ℚ) * (∑ d ∈ Nat.divisors (f1 n), (A155585 d : ℚ) / (Nat.factorial d : ℚ))

end

end A330504.P15479999580930654359

/-! ## A330504.P11551524356695800474

`and(A205182(n), A205608(n+1))`
-/

namespace A330504.P11551524356695800474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A205182 n) (A205608 (n + 1))

end

end A330504.P11551524356695800474

/-!
# A330505: Expansion of e.g.f. Sum_{k>=1} arctanh(x^k).

The programs for A330505, there is no canonical definition to state claims against.
-/

/-! ## A330505.P9514237884168007235

`n!*∑{d}[n+1, lcm(2, #)/2]`
-/

namespace A330505.P9514237884168007235
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℚ) * (∑ d ∈ Nat.divisors (f1 n), (Nat.lcm 2 d : ℚ) / 2)

end

end A330505.P9514237884168007235

/-! ## A330505.P7743190836493687896

`(∑{d}[n+1, #]+∑{d}[n+1, #]/xor(n, n+1))/2*n!`
-/

namespace A330505.P7743190836493687896
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (((∑ d ∈ Nat.divisors (f1 n), d : ℕ) : ℚ) + ((∑ d ∈ Nat.divisors (f2 n), d : ℕ) : ℚ) / (Nat.xor n (n + 1) : ℚ)) / 2 * (Nat.factorial n : ℚ)

end

end A330505.P7743190836493687896

/-! ## A330505.P17153081138069137208

`and(n+1, -(n+1))*∑{d}[(n+1)/and(n+1, -(n+1)), #]*n!`
-/

namespace A330505.P17153081138069137208
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (Int.land (n + 1 : ℤ) (-(n + 1 : ℤ)) : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n + 1 : ℤ) (-(n + 1 : ℤ)) * ((∑ d ∈ Nat.divisors (SequenceMachineLib.roundAway (f1 n)).natAbs, d : ℕ) : ℤ) * (Nat.factorial n : ℤ)

end

end A330505.P17153081138069137208

/-! ## A330505.P16879463614619437804

`n!*A002131(n+1)`
-/

namespace A330505.P16879463614619437804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) * A002131 (n + 1)

end

end A330505.P16879463614619437804

/-! ## A330505.P4657158907434291822

`abs(A186690(n+1))*n!`
-/

namespace A330505.P4657158907434291822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A186690 (n + 1)| * (Nat.factorial n : ℤ)

end

end A330505.P4657158907434291822

/-!
# A330506: Expansion of e.g.f. Sum_{k>=1} arcsin(x^k).

The programs for A330506, there is no canonical definition to state claims against.
-/

/-! ## A330506.P9576807707765213193

`A033462(n)+A001221(A032033(n))`
-/

namespace A330506.P9576807707765213193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033462 n + A001221 (A032033 n).toNat

end

end A330506.P9576807707765213193

/-! ## A330506.P10421671996228706401

`A033462(n)+A001221(A124102(n))`
-/

namespace A330506.P10421671996228706401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033462 n + A001221 (A124102 n).toNat

end

end A330506.P10421671996228706401

/-!
# A330510: Triangle read by rows: T(n,k) is the number of ternary strings of length n+1 with k+1 indispensable digits and a nonzero leading digit, with 0 <= k <= n.

The programs for A330510, there is no canonical definition to state claims against.
-/

/-! ## A330510.P17288013040820157122

`A025564(comp[∑[n]]+n)`
-/

namespace A330510.P17288013040820157122
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025564 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + n)

end

end A330510.P17288013040820157122

/-! ## A330510.P16296509412568120341

`A123934(n+1)+A056241(n+1)`
-/

namespace A330510.P16296509412568120341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123934 (n + 1) + A056241 (n + 1)

end

end A330510.P16296509412568120341

/-! ## A330510.P18258120412168618765

`A330381(A061579(n))+A330381(n)`
-/

namespace A330510.P18258120412168618765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330381 (A061579 n).toNat + A330381 n

end

end A330510.P18258120412168618765

/-! ## A330510.P849178764764695154

`A056241(n+1)+A027907(A195437(n))`
-/

namespace A330510.P849178764764695154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056241 (n + 1) + A027907 (A195437 n).toNat

end

end A330510.P849178764764695154

/-! ## A330510.P1920728597120186471

`A330381(n)+A169623(A185869(n+1))`
-/

namespace A330510.P1920728597120186471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330381 n + A169623 (A185869 (n + 1)).toNat

end

end A330510.P1920728597120186471

/-! ## A330510.P4501742587305934878

`A056241(n+1)+A027907(Δ[n²]+A003056(n)+1)`
-/

namespace A330510.P4501742587305934878
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056241 (n + 1) + A027907 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) + (A003056 n + 1)).toNat

end

end A330510.P4501742587305934878

/-! ## A330510.P14470823639430893445

`A169623(A185869(n+1))+A038622(A064789(n+1)-1)`
-/

namespace A330510.P14470823639430893445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169623 (A185869 (n + 1)).toNat + A038622 (A064789 (n + 1) - 1).toNat

end

end A330510.P14470823639430893445

/-! ## A330510.P15099661291099980640

`A330381(n)+A104029(n)`
-/

namespace A330510.P15099661291099980640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330381 n + A104029 n

end

end A330510.P15099661291099980640

/-! ## A330510.P17426665518013107419

`A104029(n)+A038622(A064789(n+1)-1)`
-/

namespace A330510.P17426665518013107419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104029 n + A038622 (A064789 (n + 1) - 1).toNat

end

end A330510.P17426665518013107419

/-! ## A330510.P3938895456840593663

`A104029(A061579(n))+A104029(n)`
-/

namespace A330510.P3938895456840593663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104029 (A061579 n).toNat + A104029 n

end

end A330510.P3938895456840593663

/-!
# A330511: Expansion of e.g.f. Sum_{k>=1} arctan(x^k).

The programs for A330511, there is no canonical definition to state claims against.
-/

/-! ## A330511.P7896877845552462796

`n!*A050469(n+1)`
-/

namespace A330511.P7896877845552462796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) * A050469 (n + 1)

end

end A330511.P7896877845552462796

/-! ## A330511.P4279645310133824120

`A000142(n)*A050469(n+1)`
-/

namespace A330511.P4279645310133824120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 n * A050469 (n + 1)

end

end A330511.P4279645310133824120

/-! ## A330511.P13314701005904596353

`A050469(n+1)*A094587(∑[n])`
-/

namespace A330511.P13314701005904596353
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050469 (n + 1) * A094587 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A330511.P13314701005904596353

/-! ## A330511.P6409360179814921092

`∏[A028310(n)]*A050469(n+1)`
-/

namespace A330511.P6409360179814921092
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∏ j ∈ Finset.range (n + 1), f1 j) * A050469 (n + 1)

end

end A330511.P6409360179814921092

/-!
# A330512: Expansion of e.g.f. Sum_{k>=1} arcsinh(x^k).

The programs for A330512, there is no canonical definition to state claims against.
-/

/-! ## A330512.P1407146680399499794

`A227413(A005038(n+1))+2^n-1`
-/

namespace A330512.P1407146680399499794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227413 (A005038 (n + 1)).toNat + ((2 ^ n : ℤ) - 1)

end

end A330512.P1407146680399499794

/-! ## A330512.P5698381105580422511

`A022290(A243667(n)+A000720(n+1))`
-/

namespace A330512.P5698381105580422511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022290 (A243667 n + A000720 (n + 1)).toNat

end

end A330512.P5698381105580422511

/-!
# A330513: a(n) = a(n-1) + a(floor(n/4)), a(1)=a(2)=a(3) = 1.

The programs for A330513, the canonical program `A330513.P10337632635487461949` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A330513 has offset 1).

The definition of A330513 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-1)+a(floor((n+1)/4)-1)` (program `A330513.P10337632635487461949`, by `A330513.P10337632635487461949.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A330513.P10337632635487461949

`a(n-1)+a(floor((n+1)/4)-1)` with `a(0)=1, a(1)=1, a(2)=1`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A330513

/-- `a(n-1)+a(floor((n+1)/4)-1)` -/
def P10337632635487461949.Spec : Prop :=
  ∀ n, (P10337632635487461949.a n : ℤ) = A330513 (n + 1)

theorem P10337632635487461949.correct : P10337632635487461949.Spec := by
  intro n
  simp only [A330513, Nat.add_sub_cancel]

end A330513

/-! ## A330513.P9395098826761540118

`∑[A007599(A220658(n))]%A258694(n)`
-/

namespace A330513.P9395098826761540118
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007599 (A220658 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) (A258694 n)

end

end A330513.P9395098826761540118

namespace A330513

/-- `∑[A007599(A220658(n))]%A258694(n)` -/
def P9395098826761540118.Spec : Prop :=
  ∀ n, P9395098826761540118.a n = A330513 (n + 1)

end A330513

/-! ## A330513.P4937748413673553291

`∑[A028950(A029346(3*n))]`
-/

namespace A330513.P4937748413673553291
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028950 (A029346 (3 * n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A330513.P4937748413673553291

namespace A330513

/-- `∑[A028950(A029346(3*n))]` -/
def P4937748413673553291.Spec : Prop :=
  ∀ n, P4937748413673553291.a n = A330513 (n + 1)

end A330513

/-!
# A330514: Expansion of e.g.f. Product_{k>=1} 1 / (1 - sin(x^k)).

The programs for A330514, there is no canonical definition to state claims against.
-/

/-! ## A330514.P12773963435271619450

`A319272(A149423(n))`
-/

namespace A330514.P12773963435271619450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319272 (A149423 n).toNat

end

end A330514.P12773963435271619450

/-! ## A330514.P16089088448048022925

`A034887(A362088(n)+1)`
-/

namespace A330514.P16089088448048022925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034887 (A362088 n + 1).toNat

end

end A330514.P16089088448048022925

/-!
# A330515: Expansion of e.g.f. Product_{k>=1} 1 / (1 - sinh(x^k)).

The programs for A330515, there is no canonical definition to state claims against.
-/

/-! ## A330515.P5350926148800631392

`A032742(A000825(n+1))`
-/

namespace A330515.P5350926148800631392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032742 (A000825 (n + 1)).toNat

end

end A330515.P5350926148800631392

/-! ## A330515.P12462700551357173696

`A164912(A137970(n)+n)`
-/

namespace A330515.P12462700551357173696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164912 (A137970 n + (n : ℤ)).toNat

end

end A330515.P12462700551357173696

/-!
# A330518: Expansion of e.g.f. Product_{k>=1} (sec(x^k) + tan(x^k)).

The programs for A330518, there is no canonical definition to state claims against.
-/

/-! ## A330518.P14522621290269106816

`A261231(∑[A356439(n)])`
-/

namespace A330518.P14522621290269106816
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356439 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261231 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A330518.P14522621290269106816

/-! ## A330518.P9453913676043953677

`A049093(A038171(n+1))`
-/

namespace A330518.P9453913676043953677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049093 (A038171 (n + 1)).toNat

end

end A330518.P9453913676043953677

/-!
# A330520: Sum of even integers <= n times the sum of odd integers <= n.

The programs for A330520, the canonical program `A330520.P8694839705143417177` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A330520 has offset 0).

The definition of A330520 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A330520.P8694839705143417177

`A002378(floor(n/2))*A000290(ceil(n/2))`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A330520

/-- `A002378(floor(n/2))*A000290(ceil(n/2))` -/
def P8694839705143417177.Spec : Prop :=
  ∀ n, P8694839705143417177.a n = A330520 n

theorem P8694839705143417177.correct : P8694839705143417177.Spec := by
  intro n
  simp only [A330520]

end A330520

/-! ## A330520.P11017072077247730724

`∑[n*floor((n/2)²)]`
-/

namespace A330520.P11017072077247730724
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * ⌊((n : ℚ) / 2) ^ 2⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A330520.P11017072077247730724

namespace A330520

/-- `∑[n*floor((n/2)²)]` -/
def P11017072077247730724.Spec : Prop :=
  ∀ n, P11017072077247730724.a n = A330520 n

end A330520

/-! ## A330520.P6693178501556220112

`∑[n*∑[n-n%2]]/2`
-/

namespace A330520.P6693178501556220112
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - ((n % 2 : ℕ) : ℤ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / 2

end

end A330520.P6693178501556220112

namespace A330520

/-- `∑[n*∑[n-n%2]]/2` -/
def P6693178501556220112.Spec : Prop :=
  ∀ n, P6693178501556220112.a n = (A330520 n : ℚ)

end A330520

/-! ## A330520.P536302229272177610

`2*∑[n/4*∑[and(n, -2)]]`
-/

namespace A330520.P536302229272177610
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n : ℤ) (-2)

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / 4 * ((∑ j ∈ Finset.range (n + 1), f2 j : ℤ) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A330520.P536302229272177610

namespace A330520

/-- `2*∑[n/4*∑[and(n, -2)]]` -/
def P536302229272177610.Spec : Prop :=
  ∀ n, P536302229272177610.a n = (A330520 n : ℚ)

end A330520

/-! ## A330520.P7161811034670904217

`floor(n^4/8-a(n-1))` with `a(0)=0`
-/

namespace A330520.P7161811034670904217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  ⌊(n ^ 4 : ℚ) / 8 - (a (n - 1) : ℚ)⌋

end

end A330520.P7161811034670904217

namespace A330520

/-- `floor(n^4/8-a(n-1))` -/
def P7161811034670904217.Spec : Prop :=
  ∀ n, P7161811034670904217.a n = A330520 n

end A330520

/-! ## A330520.P6098896597867599745

`floor(n²²/8)-a(n-1)` with `a(0)=0`
-/

namespace A330520.P6098896597867599745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  ⌊((n ^ 2) ^ 2 : ℚ) / 8⌋ - a (n - 1)

end

end A330520.P6098896597867599745

namespace A330520

/-- `floor(n²²/8)-a(n-1)` -/
def P6098896597867599745.Spec : Prop :=
  ∀ n, P6098896597867599745.a n = A330520 n

end A330520

/-! ## A330520.P6355147665967318218

`floor(∑[n*∑[a(n-2)+1]])` with `a(0)=0, a(1)=0`

`floor` is left out, it is the identity on integers.
-/

namespace A330520.P6355147665967318218
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [0, 0] fun n f2 =>
  f2 (n - 2) + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A330520.P6355147665967318218

namespace A330520

/-- `floor(∑[n*∑[a(n-2)+1]])` -/
def P6355147665967318218.Spec : Prop :=
  ∀ n, (P6355147665967318218.a n : ℤ) = A330520 n

end A330520

/-! ## A330520.P17541130891324139895

`a(n-1)+n*floor(n*n/4)` with `a(0)=0`
-/

namespace A330520.P17541130891324139895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) + (n : ℤ) * ⌊(n : ℚ) * ((n : ℚ) / 4)⌋

end

end A330520.P17541130891324139895

namespace A330520

/-- `a(n-1)+n*floor(n*n/4)` -/
def P17541130891324139895.Spec : Prop :=
  ∀ n, P17541130891324139895.a n = A330520 n

end A330520

/-! ## A330520.P8330450832923857993

`floor((n/2)²)*A002620(n+1)`
-/

namespace A330520.P8330450832923857993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((n : ℚ) / 2) ^ 2⌋ * A002620 (n + 1)

end

end A330520.P8330450832923857993

namespace A330520

/-- `floor((n/2)²)*A002620(n+1)` -/
def P8330450832923857993.Spec : Prop :=
  ∀ n, P8330450832923857993.a n = A330520 n

end A330520

/-! ## A330520.P5387609257430536712

`∑[3*n*∑[A004526(n)]]/3`
-/

namespace A330520.P5387609257430536712
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 * n : ℤ) * (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / 3

end

end A330520.P5387609257430536712

namespace A330520

/-- `∑[3*n*∑[A004526(n)]]/3` -/
def P5387609257430536712.Spec : Prop :=
  ∀ n, P5387609257430536712.a n = (A330520 n : ℚ)

end A330520

/-! ## A330520.P12565053256702978638

`A034828(n)+A011863(n)`
-/

namespace A330520.P12565053256702978638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034828 n + A011863 n

end

end A330520.P12565053256702978638

namespace A330520

/-- `A034828(n)+A011863(n)` -/
def P12565053256702978638.Spec : Prop :=
  ∀ n, P12565053256702978638.a n = A330520 n

end A330520

/-! ## A330520.P5906888545236815599

`A001057(n)²*A110660(n)`
-/

namespace A330520.P5906888545236815599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001057 n ^ 2 * A110660 n

end

end A330520.P5906888545236815599

namespace A330520

/-- `A001057(n)²*A110660(n)` -/
def P5906888545236815599.Spec : Prop :=
  ∀ n, P5906888545236815599.a n = A330520 n

end A330520

/-! ## A330520.P14654062438569893101

`A065033(n)²*A110660(n)`
-/

namespace A330520.P14654062438569893101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 n ^ 2 * A110660 n

end

end A330520.P14654062438569893101

namespace A330520

/-- `A065033(n)²*A110660(n)` -/
def P14654062438569893101.Spec : Prop :=
  ∀ n, P14654062438569893101.a n = A330520 n

end A330520

/-! ## A330520.P4556009945218083782

`A110654(n)²*A110660(n)`
-/

namespace A330520.P4556009945218083782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 n ^ 2 * A110660 n

end

end A330520.P4556009945218083782

namespace A330520

/-- `A110654(n)²*A110660(n)` -/
def P4556009945218083782.Spec : Prop :=
  ∀ n, P4556009945218083782.a n = A330520 n

end A330520

/-! ## A330520.P8211833619744659730

`A011863(n+1)-A109900(n)`
-/

namespace A330520.P8211833619744659730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011863 (n + 1) - A109900 n

end

end A330520.P8211833619744659730

namespace A330520

/-- `A011863(n+1)-A109900(n)` -/
def P8211833619744659730.Spec : Prop :=
  ∀ n, P8211833619744659730.a n = A330520 n

end A330520

/-! ## A330520.P2896399389358297150

`A307304(n+1)-A001318(n)`
-/

namespace A330520.P2896399389358297150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307304 (n + 1) - A001318 n

end

end A330520.P2896399389358297150

namespace A330520

/-- `A307304(n+1)-A001318(n)` -/
def P2896399389358297150.Spec : Prop :=
  ∀ n, P2896399389358297150.a n = A330520 n

end A330520

/-! ## A330520.P6064806412312674622

`A002817(n)-A307304(n+1)`
-/

namespace A330520.P6064806412312674622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002817 n - A307304 (n + 1)

end

end A330520.P6064806412312674622

namespace A330520

/-- `A002817(n)-A307304(n+1)` -/
def P6064806412312674622.Spec : Prop :=
  ∀ n, P6064806412312674622.a n = A330520 n

end A330520

/-! ## A330520.P183873592947837360

`A002620(n)*A076921(n+1)`
-/

namespace A330520.P183873592947837360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002620 n * A076921 (n + 1)

end

end A330520.P183873592947837360

namespace A330520

/-- `A002620(n)*A076921(n+1)` -/
def P183873592947837360.Spec : Prop :=
  ∀ n, P183873592947837360.a n = A330520 n

end A330520

/-! ## A330520.P326376398306519838

`(A002817(n)-A001318(n))/2`
-/

namespace A330520.P326376398306519838
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002817 n - A001318 n : ℚ) / 2

end

end A330520.P326376398306519838

namespace A330520

/-- `(A002817(n)-A001318(n))/2` -/
def P326376398306519838.Spec : Prop :=
  ∀ n, P326376398306519838.a n = (A330520 n : ℚ)

end A330520

/-! ## A330520.P11621621380861100827

`A002620(n)*A008619(n)*A065033(n)`
-/

namespace A330520.P11621621380861100827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002620 n * A008619 n * A065033 n

end

end A330520.P11621621380861100827

namespace A330520

/-- `A002620(n)*A008619(n)*A065033(n)` -/
def P11621621380861100827.Spec : Prop :=
  ∀ n, P11621621380861100827.a n = A330520 n

end A330520

/-!
# A330521: Lexicographically earliest sequence of distinct positive terms such that the digitsum of a(n) ends a(n+1).

The programs for A330521, there is no canonical definition to state claims against.
-/

/-! ## A330521.P17683561464441630761

`A347520(A107408(n)+1)`
-/

namespace A330521.P17683561464441630761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347520 (A107408 n + 1).toNat

end

end A330521.P17683561464441630761

/-! ## A330521.P5818745100767081786

`(A317330(n+1)+1)%A334015(3*(n+1))`
-/

namespace A330521.P5818745100767081786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A317330 (n + 1) + 1) (A334015 (3 * (n + 1)))

end

end A330521.P5818745100767081786

/-! ## A330521.P17159967746376713218

`A331048(A000040(n+5))+A317330(n+1)`
-/

namespace A330521.P17159967746376713218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331048 (A000040 (n + 5)).toNat + A317330 (n + 1)

end

end A330521.P17159967746376713218

/-! ## A330521.P3378451859453039730

`A318927(A097110(n))`
-/

namespace A330521.P3378451859453039730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318927 (A097110 n).toNat

end

end A330521.P3378451859453039730

/-! ## A330521.P10222902410033858194

`A055572(A303848(n+1))`
-/

namespace A330521.P10222902410033858194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055572 (A303848 (n + 1)).toNat

end

end A330521.P10222902410033858194

/-!
# A330522: First quadrisection of A332843.

The programs for A330522, there is no canonical definition to state claims against.
-/

/-! ## A330522.P2627707749166324500

`record[A332843(n+1)]`
-/

namespace A330522.P2627707749166324500
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332843 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A330522.P2627707749166324500

/-! ## A330522.P8183190562533617315

`A332843(4*n+1)`
-/

namespace A330522.P8183190562533617315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332843 (4 * n + 1)

end

end A330522.P8183190562533617315

/-! ## A330522.P10485201167740561069

`or(char[1], A332843(A016813(n)))`
-/

namespace A330522.P10485201167740561069
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A332843 (A016813 n).toNat)

end

end A330522.P10485201167740561069

/-! ## A330522.P11586945607581126533

`A332843(A016813(n))+A326682(n)`
-/

namespace A330522.P11586945607581126533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332843 (A016813 n).toNat + A326682 n

end

end A330522.P11586945607581126533

/-! ## A330522.P4094767782877162193

`A007318(C(2, n))*A332843(A016813(n))`
-/

namespace A330522.P4094767782877162193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * A332843 (A016813 n).toNat

end

end A330522.P4094767782877162193

/-!
# A330524: Lexicographically earliest sequence of positive terms such that for any distinct i and j, a(i) | a(j+1) <> a(j) | a(j+1) (where "|" corresponds to binary concatenation, A163621).

The programs for A330524, there is no canonical definition to state claims against.
-/

/-! ## A330524.P7328344611403544292

`A336037(n+1)/A336022(A165878(n))`
-/

namespace A330524.P7328344611403544292
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A336037 (n + 1) : ℚ) / (A336022 (A165878 n).toNat : ℚ)

end

end A330524.P7328344611403544292

/-! ## A330524.P5394322898875801377

`A336037(n+1)-A113092(A137795(n+1))`
-/

namespace A330524.P5394322898875801377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336037 (n + 1) - A113092 (A137795 (n + 1)).toNat

end

end A330524.P5394322898875801377

/-! ## A330524.P4006009676660734722

`A336037(n+1)%A336008(3*(n+1))`
-/

namespace A330524.P4006009676660734722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A336037 (n + 1)) (A336008 (3 * (n + 1)))

end

end A330524.P4006009676660734722

/-! ## A330524.P11733604427546049410

`A336037(n+1)+A142150(A158549(n))`
-/

namespace A330524.P11733604427546049410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336037 (n + 1) + A142150 (A158549 n).toNat

end

end A330524.P11733604427546049410

/-! ## A330524.P6307142076733664818

`A336037(n+1)+A165878(A165878(n)²)`
-/

namespace A330524.P6307142076733664818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336037 (n + 1) + A165878 (A165878 n ^ 2).toNat

end

end A330524.P6307142076733664818

/-!
# A330526: a(n) = (p-1)! mod p^3, where p = prime(n).

The programs for A330526, the canonical program `A330526.P16298851748495869609` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A330526 has offset 1).

The definition of A330526 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1229 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A330526.P16298851748495869609

`A301317(A000040(n+1))-1`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A330526

/-- `A301317(A000040(n+1))-1` -/
def P16298851748495869609.Spec : Prop :=
  ∀ n, P16298851748495869609.a n = A330526 (n + 1)

theorem P16298851748495869609.correct : P16298851748495869609.Spec := by
  intro n
  simp only [A330526, Nat.add_sub_cancel]

end A330526

/-! ## A330526.P4033420175992974370

`A301317(eq[1, A013632(n)]+1)-1`
-/

namespace A330526.P4033420175992974370
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013632 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301317 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1) - 1

end

end A330526.P4033420175992974370

namespace A330526

/-- `A301317(eq[1, A013632(n)]+1)-1` -/
def P4033420175992974370.Spec : Prop :=
  ∀ n, P4033420175992974370.a n = A330526 (n + 1)

end A330526

/-! ## A330526.P8562245254869468556

`A301317(eq[2, A000005(n+1)]+1)-1`
-/

namespace A330526.P8562245254869468556
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301317 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1) - 1

end

end A330526.P8562245254869468556

namespace A330526

/-- `A301317(eq[2, A000005(n+1)]+1)-1` -/
def P8562245254869468556.Spec : Prop :=
  ∀ n, P8562245254869468556.a n = A330526 (n + 1)

end A330526

/-! ## A330526.P6363034282299835898

`A301317(eq[n, A000010(n+1)]+1)-1`
-/

namespace A330526.P6363034282299835898
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301317 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1) - 1

end

end A330526.P6363034282299835898

namespace A330526

/-- `A301317(eq[n, A000010(n+1)]+1)-1` -/
def P6363034282299835898.Spec : Prop :=
  ∀ n, P6363034282299835898.a n = A330526 (n + 1)

end A330526

/-!
# A330527: Expansion of e.g.f. Sum_{k>=1} (sec(x^k) + tan(x^k) - 1).

The programs for A330527, there is no canonical definition to state claims against.
-/

/-! ## A330527.P3717890492665841641

`∑[A330664((n+1)²+2)]`
-/

namespace A330527.P3717890492665841641
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330664 ((n + 1) ^ 2 + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A330527.P3717890492665841641

/-!
# A330529: Number of quasi-magic (only long lines are magic) knight's tours on a 4 X 2n board.

The programs for A330529, there is no canonical definition to state claims against.
-/

/-! ## A330529.P15534378763418181949

`A088808(n)*A285573(A110353(2*(n+1)))`
-/

namespace A330529.P15534378763418181949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088808 n * A285573 (A110353 (2 * (n + 1))).toNat

end

end A330529.P15534378763418181949

/-!
# A330532: Triangular multiply-perfect numbers.

The programs for A330532, there is no canonical definition to state claims against.
-/

/-! ## A330532.P7785091108012225471

`∩[A007691(n+1), A122746(n)]`
-/

namespace A330532.P7785091108012225471
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007691 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122746 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A330532.P7785091108012225471

/-! ## A330532.P18238666996727681999

`∩[A007691(n+1), A285543(n)]`
-/

namespace A330532.P18238666996727681999
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007691 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285543 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A330532.P18238666996727681999

/-! ## A330532.P4700053094111248403

`∩[A007691(n+1), A290419(n)]`
-/

namespace A330532.P4700053094111248403
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007691 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290419 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A330532.P4700053094111248403

/-! ## A330532.P8677121640830809018

`∩[A007691(n+1), A290423(n)]`
-/

namespace A330532.P8677121640830809018
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007691 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290423 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A330532.P8677121640830809018

/-! ## A330532.P10503469462202195054

`∩[A007691(n+1), A290674(n)]`
-/

namespace A330532.P10503469462202195054
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007691 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290674 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A330532.P10503469462202195054

/-!
# A330533: Multiply-perfect numbers m whose average divisor is not an integer.

The programs for A330533, there is no canonical definition to state claims against.
-/

/-! ## A330533.P17879326127512366126

`A007691(lt[A106436(n), A165026(n+1)])`
-/

namespace A330533.P17879326127512366126
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106436 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165026 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007691 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A330533.P17879326127512366126

/-! ## A330533.P11651851818218063138

`A089748(∑[A154948(n)]+2)`
-/

namespace A330533.P11651851818218063138
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154948 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089748 (∑ j ∈ Finset.range (n + 1), f1 j + 2).toNat

end

end A330533.P11651851818218063138

/-! ## A330533.P3700606450467979812

`A089748(A240755(n+5)+comp[2*(n+1)])`
-/

namespace A330533.P3700606450467979812
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089748 (A240755 (n + 5) + (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ)).toNat

end

end A330533.P3700606450467979812

/-!
# A330534: Expansion of e.g.f. Product_{k>=1} 1 / (1 - arcsin(x^k)).

The programs for A330534, there is no canonical definition to state claims against.
-/

/-! ## A330534.P16296966773507845525

`A229037(9^n+n^3)`
-/

namespace A330534.P16296966773507845525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229037 (9 ^ n + n ^ 3)

end

end A330534.P16296966773507845525

/-! ## A330534.P17835337169261757758

`A026342(A002110(n))+A000073(n)`
-/

namespace A330534.P17835337169261757758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026342 (A002110 n).toNat + A000073 n

end

end A330534.P17835337169261757758

/-!
# A330535: Expansion of e.g.f. Product_{k>=1} 1 / (1 - arcsinh(x^k)).

The programs for A330535, there is no canonical definition to state claims against.
-/

/-! ## A330535.P10883556815827498909

`A326841(A149454(n))`
-/

namespace A330535.P10883556815827498909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326841 (A149454 n).toNat

end

end A330535.P10883556815827498909

/-! ## A330535.P10304043285893718703

`and(p?[A060920(2*(n+1))], A060907(n))`
-/

namespace A330535.P10304043285893718703
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060920 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)) (A060907 n)

end

end A330535.P10304043285893718703

/-!
# A330537: Expansion of e.g.f. Product_{k>=1} 1 / (1 - arctan(x^k)).

The programs for A330537, there is no canonical definition to state claims against.
-/

/-! ## A330537.P2242527617131242222

`A025032(A148793(n))`
-/

namespace A330537.P2242527617131242222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025032 (A148793 n).toNat

end

end A330537.P2242527617131242222

/-! ## A330537.P18168455574033398939

`A050292(∑[A194559(n)])`
-/

namespace A330537.P18168455574033398939
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194559 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050292 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A330537.P18168455574033398939

/-!
# A330538: Expansion of e.g.f. Product_{k>=1} 1 / (1 - arctanh(x^k)).

The programs for A330538, there is no canonical definition to state claims against.
-/

/-! ## A330538.P16662170808584558313

`A262869(2*A349331(n))`
-/

namespace A330538.P16662170808584558313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262869 (2 * A349331 n).toNat

end

end A330538.P16662170808584558313

/-! ## A330538.P15076346980610341090

`A067100(A379202(n+1)+6)`
-/

namespace A330538.P15076346980610341090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067100 (A379202 (n + 1) + 6).toNat

end

end A330538.P15076346980610341090

/-!
# A330539: Expansion of e.g.f. Product_{k>=1} (1 + arcsin(x^k)).

The programs for A330539, there is no canonical definition to state claims against.
-/

/-! ## A330539.P15082312077012159667

`A270294(n)+A240160(A007611(n))`
-/

namespace A330539.P15082312077012159667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270294 n + A240160 (A007611 n).toNat

end

end A330539.P15082312077012159667

/-! ## A330539.P785161576557188509

`A167865(Δ[A035571(n²+n)])`
-/

namespace A330539.P785161576557188509
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035571 (n ^ 2 + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167865 (f1 (n + 1) - f1 n).toNat

end

end A330539.P785161576557188509

/-!
# A330540: Expansion of e.g.f. Product_{k>=1} (1 + arcsinh(x^k)).

The programs for A330540, there is no canonical definition to state claims against.
-/

/-! ## A330540.P17268079905491201036

`A269356(A270662(n))`
-/

namespace A330540.P17268079905491201036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269356 (A270662 n).toNat

end

end A330540.P17268079905491201036

/-! ## A330540.P6250732919612888413

`A270662(n)+A166301(A058397(n+1))`
-/

namespace A330540.P6250732919612888413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270662 n + A166301 (A058397 (n + 1)).toNat

end

end A330540.P6250732919612888413

/-! ## A330540.P12842497137678786297

`A326686(A059119(3*n))+A270662(n)`
-/

namespace A330540.P12842497137678786297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326686 (A059119 (3 * n)).toNat + A270662 n

end

end A330540.P12842497137678786297

/-!
# A330542: Maximum value in n-th row of A330541.

The programs for A330542, there is no canonical definition to state claims against.
-/

/-! ## A330542.P16261669951197253392

`record[A330541(n+2)-C(n, 64)²]`
-/

namespace A330542.P16261669951197253392
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330541 (n + 2) - (Nat.choose n 64 ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A330542.P16261669951197253392

/-! ## A330542.P12006866446261396264

`A195166(A318612(n+2))`
-/

namespace A330542.P12006866446261396264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195166 (A318612 (n + 2)).toNat

end

end A330542.P12006866446261396264

/-! ## A330542.P923582882837709550

`record[A330541(record[A325352(n+4)])]`
-/

namespace A330542.P923582882837709550
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325352 (n + 4)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330541 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A330542.P923582882837709550

/-!
# A330543: Expansion of e.g.f. Product_{k>=1} (1 + arctan(x^k)).

The programs for A330543, there is no canonical definition to state claims against.
-/

/-! ## A330543.P6948709258260295671

`or(A001442(A270659(n)), A270664(n))`
-/

namespace A330543.P6948709258260295671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A001442 (A270659 n).toNat) (A270664 n)

end

end A330543.P6948709258260295671

/-! ## A330543.P10371898977734066953

`or(A183063(A162649(n)), A270664(n))`
-/

namespace A330543.P10371898977734066953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A183063 (A162649 n).toNat) (A270664 n)

end

end A330543.P10371898977734066953

/-! ## A330543.P9458696541255739028

`or(A270664(n), A344837(A001791(n+1)))`
-/

namespace A330543.P9458696541255739028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A270664 n) (A344837 (A001791 (n + 1)).toNat)

end

end A330543.P9458696541255739028

/-!
# A330544: Expansion of e.g.f. Product_{k>=1} (1 + arctanh(x^k)).

The programs for A330544, there is no canonical definition to state claims against.
-/

/-! ## A330544.P9387612316823664976

`A270666(n)+A004198(A330518(n))`
-/

namespace A330544.P9387612316823664976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270666 n + A004198 (A330518 n).toNat

end

end A330544.P9387612316823664976

/-! ## A330544.P7437864075695156911

`or(A031347(A212914(n)), A270666(n))`
-/

namespace A330544.P7437864075695156911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A031347 (A212914 n).toNat) (A270666 n)

end

end A330544.P7437864075695156911

/-! ## A330544.P17564762094689613072

`A233569(A339896(n+1)+A270664(n))`
-/

namespace A330544.P17564762094689613072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233569 (A339896 (n + 1) + A270664 n).toNat

end

end A330544.P17564762094689613072

/-!
# A330545: a(1) = 2; thereafter a(n) = a(n-1) + (-1)^(n + 1)*(prime(n) - prime(n - 1) - 1) (where prime(k) denotes the k-th prime).

The programs for A330545, the canonical program `A330545.P6344628933996575445` is in `Seq.B006.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A330545 has offset 1).

The definition of A330545 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A330545.P6344628933996575445

`A330547(n+1)+n%2`

The canonical program, it is in `Seq.B006.C002`.
-/

namespace A330545

/-- `A330547(n+1)+n%2` -/
def P6344628933996575445.Spec : Prop :=
  ∀ n, P6344628933996575445.a n = A330545 (n + 1)

theorem P6344628933996575445.correct : P6344628933996575445.Spec := by
  intro n
  simp only [A330545, Nat.add_sub_cancel]

end A330545

/-! ## A330545.P7485171538696775369

`A330547(n+1)+A000035(n)`
-/

namespace A330545.P7485171538696775369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330547 (n + 1) + A000035 n

end

end A330545.P7485171538696775369

namespace A330545

/-- `A330547(n+1)+A000035(n)` -/
def P7485171538696775369.Spec : Prop :=
  ∀ n, P7485171538696775369.a n = A330545 (n + 1)

end A330545

/-! ## A330545.P15149636914488261676

`A330547(n+1)+and(1, A000583(n))`
-/

namespace A330545.P15149636914488261676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330547 (n + 1) + Int.land 1 (A000583 n)

end

end A330545.P15149636914488261676

namespace A330545

/-- `A330547(n+1)+and(1, A000583(n))` -/
def P15149636914488261676.Spec : Prop :=
  ∀ n, P15149636914488261676.a n = A330545 (n + 1)

end A330545

/-! ## A330545.P4799331110706615377

`A065358(A000040(n+1))+gcd(2, n)`
-/

namespace A330545.P4799331110706615377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065358 (A000040 (n + 1)).toNat + (Nat.gcd 2 n : ℤ)

end

end A330545.P4799331110706615377

namespace A330545

/-- `A065358(A000040(n+1))+gcd(2, n)` -/
def P4799331110706615377.Spec : Prop :=
  ∀ n, P4799331110706615377.a n = A330545 (n + 1)

end A330545

/-! ## A330545.P10378805454219265715

`A278603(A000040(n+1)+n²%2)`
-/

namespace A330545.P10378805454219265715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278603 (A000040 (n + 1) + ((n ^ 2 % 2 : ℕ) : ℤ)).toNat

end

end A330545.P10378805454219265715

namespace A330545

/-- `A278603(A000040(n+1)+n²%2)` -/
def P10378805454219265715.Spec : Prop :=
  ∀ n, P10378805454219265715.a n = A330545 (n + 1)

end A330545

/-!
# A330546: List of k such that prime(k) is an element of A330339.

The programs for A330546, there is no canonical definition to state claims against.
-/

/-! ## A330546.P11096374329004104652

`A000720(A330339(n+1))`
-/

namespace A330546.P11096374329004104652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A330339 (n + 1)).toNat

end

end A330546.P11096374329004104652

/-! ## A330546.P12152573137291901233

`A061395(p?[A330339(n+1)])`
-/

namespace A330546.P12152573137291901233
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330339 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A330546.P12152573137291901233

/-! ## A330546.P3826082258791752899

`A066328(p?[A330339(n+1)])`
-/

namespace A330546.P3826082258791752899
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330339 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066328 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A330546.P3826082258791752899

/-! ## A330546.P3391430201695156633

`A061395(or(1, A330339(n+1)))`
-/

namespace A330546.P3391430201695156633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (Int.lor 1 (A330339 (n + 1))).toNat

end

end A330546.P3391430201695156633

/-! ## A330546.P12090564204093517183

`A066328(or(1, A330339(n+1)))`
-/

namespace A330546.P12090564204093517183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066328 (Int.lor 1 (A330339 (n + 1))).toNat

end

end A330546.P12090564204093517183

/-!
# A330547: a(1)=2; thereafter a(n) = a(n-1) + (-1)^(n+1)*(prime(n)-prime(n-1)) (where prime(k) denotes the k-th prime).

The programs for A330547, the canonical program `A330547.P14620749538624071463` is in `Seq.B005.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A330547 has offset 1).

The definition of A330547 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A330547.P12174814360627942157

`A330545(n+1)-and(1, n)`
-/

namespace A330547.P12174814360627942157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330545 (n + 1) - (Nat.land 1 n : ℤ)

end

end A330547.P12174814360627942157

namespace A330547

/-- `A330545(n+1)-and(1, n)` -/
def P12174814360627942157.Spec : Prop :=
  ∀ n, P12174814360627942157.a n = A330547 (n + 1)

end A330547

/-! ## A330547.P2258481270738784403

`A330545(n+1)-A000035(n)`
-/

namespace A330547.P2258481270738784403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330545 (n + 1) - A000035 n

end

end A330547.P2258481270738784403

namespace A330547

/-- `A330545(n+1)-A000035(n)` -/
def P2258481270738784403.Spec : Prop :=
  ∀ n, P2258481270738784403.a n = A330547 (n + 1)

end A330547

/-! ## A330547.P14620749538624071463

`∑[A033999(n)*A054541(n+1)]`

The canonical program, it is in `Seq.B005.C002`.
-/

namespace A330547

/-- `∑[A033999(n)*A054541(n+1)]` -/
def P14620749538624071463.Spec : Prop :=
  ∀ n, P14620749538624071463.a n = A330547 (n + 1)

theorem P14620749538624071463.correct : P14620749538624071463.Spec := by
  intro n
  simp only [A330547, Nat.add_sub_cancel]

end A330547

/-! ## A330547.P13831725177793246659

`A273960(n+1)-∑[2*A273960(n+1)]`
-/

namespace A330547.P13831725177793246659
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A273960 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273960 (n + 1) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A330547.P13831725177793246659

namespace A330547

/-- `A273960(n+1)-∑[2*A273960(n+1)]` -/
def P13831725177793246659.Spec : Prop :=
  ∀ n, P13831725177793246659.a n = A330547 (n + 1)

end A330547

/-! ## A330547.P14827220973214967463

`A330545(n+1)-char[A003961(n+1)]`
-/

namespace A330547.P14827220973214967463
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003961 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330545 (n + 1) - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A330547.P14827220973214967463

namespace A330547

/-- `A330545(n+1)-char[A003961(n+1)]` -/
def P14827220973214967463.Spec : Prop :=
  ∀ n, P14827220973214967463.a n = A330547 (n + 1)

end A330547

/-! ## A330547.P7346415084964472438

`A278603(A000040(n+1))`
-/

namespace A330547.P7346415084964472438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278603 (A000040 (n + 1)).toNat

end

end A330547.P7346415084964472438

namespace A330547

/-- `A278603(A000040(n+1))` -/
def P7346415084964472438.Spec : Prop :=
  ∀ n, P7346415084964472438.a n = A330547 (n + 1)

end A330547

/-! ## A330547.P11313214517004093895

`A278603(A008578(n+2))`
-/

namespace A330547.P11313214517004093895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278603 (A008578 (n + 2)).toNat

end

end A330547.P11313214517004093895

namespace A330547

/-- `A278603(A008578(n+2))` -/
def P11313214517004093895.Spec : Prop :=
  ∀ n, P11313214517004093895.a n = A330547 (n + 1)

end A330547

/-! ## A330547.P967689532588829523

`A278603(A182986(n+2))`
-/

namespace A330547.P967689532588829523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278603 (A182986 (n + 2)).toNat

end

end A330547.P967689532588829523

namespace A330547

/-- `A278603(A182986(n+2))` -/
def P967689532588829523.Spec : Prop :=
  ∀ n, P967689532588829523.a n = A330547 (n + 1)

end A330547

/-! ## A330547.P11010429662919601185

`A278603(record[A006530(n+2)])`
-/

namespace A330547.P11010429662919601185
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278603 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A330547.P11010429662919601185

namespace A330547

/-- `A278603(record[A006530(n+2)])` -/
def P11010429662919601185.Spec : Prop :=
  ∀ n, P11010429662919601185.a n = A330547 (n + 1)

end A330547

/-! ## A330547.P7144877602462741692

`A278603(record[A014963(n+2)])`
-/

namespace A330547.P7144877602462741692
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278603 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A330547.P7144877602462741692

namespace A330547

/-- `A278603(record[A014963(n+2)])` -/
def P7144877602462741692.Spec : Prop :=
  ∀ n, P7144877602462741692.a n = A330547 (n + 1)

end A330547

/-! ## A330547.P17967430818091201699

`A278603(record[A020639(n+2)])`
-/

namespace A330547.P17967430818091201699
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278603 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A330547.P17967430818091201699

namespace A330547

/-- `A278603(record[A020639(n+2)])` -/
def P17967430818091201699.Spec : Prop :=
  ∀ n, P17967430818091201699.a n = A330547 (n + 1)

end A330547

/-! ## A330547.P12675892890192043959

`A278603(A134735(2*n+1))`
-/

namespace A330547.P12675892890192043959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278603 (A134735 (2 * n + 1)).toNat

end

end A330547.P12675892890192043959

namespace A330547

/-- `A278603(A134735(2*n+1))` -/
def P12675892890192043959.Spec : Prop :=
  ∀ n, P12675892890192043959.a n = A330547 (n + 1)

end A330547

/-! ## A330547.P5037685502901060743

`A065358(A000040(n+1)-1)+1`
-/

namespace A330547.P5037685502901060743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065358 (A000040 (n + 1) - 1).toNat + 1

end

end A330547.P5037685502901060743

namespace A330547

/-- `A065358(A000040(n+1)-1)+1` -/
def P5037685502901060743.Spec : Prop :=
  ∀ n, P5037685502901060743.a n = A330547 (n + 1)

end A330547

/-! ## A330547.P13097268833169980610

`A278603(A008347(n+1)+A008347(n))`
-/

namespace A330547.P13097268833169980610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278603 (A008347 (n + 1) + A008347 n).toNat

end

end A330547.P13097268833169980610

namespace A330547

/-- `A278603(A008347(n+1)+A008347(n))` -/
def P13097268833169980610.Spec : Prop :=
  ∀ n, P13097268833169980610.a n = A330547 (n + 1)

end A330547

/-!
# A330548: Gasket based on primes: take array read by diagonals from Gilbreath conjecture (A036262) and replace all nonzero entries with 1's.

The programs for A330548, there is no canonical definition to state claims against.
-/

/-! ## A330548.P12196919494255628716

`1-A330549(n)`
-/

namespace A330548.P12196919494255628716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A330549 n

end

end A330548.P12196919494255628716

/-! ## A330548.P7280205420007008258

`A057427(A036262(n))`
-/

namespace A330548.P7280205420007008258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (A036262 n).toNat

end

end A330548.P7280205420007008258

/-! ## A330548.P3085572530991581590

`A157928(A036262(n)+1)`
-/

namespace A330548.P3085572530991581590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157928 (A036262 n + 1).toNat

end

end A330548.P3085572530991581590

/-! ## A330548.P8353446052113301044

`A157928(2*A036262(n))`
-/

namespace A330548.P8353446052113301044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157928 (2 * A036262 n).toNat

end

end A330548.P8353446052113301044

/-! ## A330548.P7551581156032948568

`A023532(6*A036262(n))`
-/

namespace A330548.P7551581156032948568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023532 (6 * A036262 n).toNat

end

end A330548.P7551581156032948568

/-! ## A330548.P13424904829314083857

`A023532(lcm(3, A036262(n)))`
-/

namespace A330548.P13424904829314083857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023532 (Int.lcm 3 (A036262 n))

end

end A330548.P13424904829314083857

/-! ## A330548.P2390877038090522248

`A036262(n)/(A330549(n)+A036262(n))`
-/

namespace A330548.P2390877038090522248
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A036262 n : ℚ) / (A330549 n + A036262 n : ℚ)

end

end A330548.P2390877038090522248

/-! ## A330548.P14788550612573471448

`1-A080116(A036262(n)²)`
-/

namespace A330548.P14788550612573471448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A080116 (A036262 n ^ 2).toNat

end

end A330548.P14788550612573471448

/-! ## A330548.P1629077100275412508

`A002828(A036262(n)²)`
-/

namespace A330548.P1629077100275412508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002828 (A036262 n ^ 2).toNat

end

end A330548.P1629077100275412508

/-! ## A330548.P2703837885909282574

`A089309(A036262(n)²)`
-/

namespace A330548.P2703837885909282574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089309 (A036262 n ^ 2).toNat

end

end A330548.P2703837885909282574

/-! ## A330548.P3101744330391153842

`A011626(A036262(n)²)`
-/

namespace A330548.P3101744330391153842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011626 (A036262 n ^ 2).toNat

end

end A330548.P3101744330391153842

/-! ## A330548.P3326054541619897973

`A011628(A036262(n)²)`
-/

namespace A330548.P3326054541619897973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011628 (A036262 n ^ 2).toNat

end

end A330548.P3326054541619897973

/-! ## A330548.P4028565826531908725

`1-A000007(A036262(n)²)`
-/

namespace A330548.P4028565826531908725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A000007 (A036262 n ^ 2).toNat

end

end A330548.P4028565826531908725

/-! ## A330548.P6231236880144556678

`1-A214264(A036262(n)²)`
-/

namespace A330548.P6231236880144556678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A214264 (A036262 n ^ 2).toNat

end

end A330548.P6231236880144556678

/-! ## A330548.P4090682929352922838

`2-A054977(A036262(n)²)`
-/

namespace A330548.P4090682929352922838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A054977 (A036262 n ^ 2).toNat

end

end A330548.P4090682929352922838

/-! ## A330548.P15856885640334022684

`A330550(n+1-∑[char[∑[n+1]]])`
-/

namespace A330548.P15856885640334022684
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330550 (n + 1 - ∑ j ∈ Finset.range (n + 1), f1 j)

end

end A330548.P15856885640334022684

/-! ## A330548.P9041530888445723581

`1-A330551(A122797(n+1))`
-/

namespace A330548.P9041530888445723581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A330551 (A122797 (n + 1)).toNat

end

end A330548.P9041530888445723581

/-! ## A330548.P2760339619010736119

`A027052(A330549(n)+n²)`
-/

namespace A330548.P2760339619010736119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027052 (A330549 n + (n ^ 2 : ℤ)).toNat

end

end A330548.P2760339619010736119

/-!
# A330549: Gasket based on primes: take array read by diagonals from Gilbreath conjecture (A036262) and replace all nonzero entries with 0's and all 0's with 1's.

The programs for A330549, there is no canonical definition to state claims against.
-/

/-! ## A330549.P9176208916870053645

`1-A330548(n)`
-/

namespace A330549.P9176208916870053645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A330548 n

end

end A330549.P9176208916870053645

/-! ## A330549.P7099741587613968474

`floor(acot(A036262(n)))`
-/

namespace A330549.P7099741587613968474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊SequenceMachineLib.acot (A036262 n : ℝ)⌋

end

end A330549.P7099741587613968474

/-! ## A330549.P16443282900795630391

`A000007(A036262(n))`
-/

namespace A330549.P16443282900795630391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (A036262 n).toNat

end

end A330549.P16443282900795630391

/-! ## A330549.P2368101873333301934

`A089810(A036262(n)+49)`
-/

namespace A330549.P2368101873333301934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089810 (A036262 n + 49).toNat

end

end A330549.P2368101873333301934

/-! ## A330549.P3726639774956810368

`∏{d}[A036262(n), A000038(#)]`
-/

namespace A330549.P3726639774956810368
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n).natAbs, A000038 d

end

end A330549.P3726639774956810368

/-! ## A330549.P994075518497660506

`∏{d}[A036262(n), A001221(#)]`
-/

namespace A330549.P994075518497660506
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n).natAbs, A001221 d

end

end A330549.P994075518497660506

/-! ## A330549.P4110205959075007207

`char[lt[A036262(n+1), 1]+1]`
-/

namespace A330549.P4110205959075007207
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036262 (n + 1)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < (f3 j : ℤ)) n + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A330549.P4110205959075007207

/-! ## A330549.P9203235809215199644

`A080116(A036262(n)²)`
-/

namespace A330549.P9203235809215199644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080116 (A036262 n ^ 2).toNat

end

end A330549.P9203235809215199644

/-! ## A330549.P11888912660796318833

`A089810(62*A036262(n))`
-/

namespace A330549.P11888912660796318833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089810 (62 * A036262 n).toNat

end

end A330549.P11888912660796318833

/-! ## A330549.P6605380800725948928

`A014029(A036262(n)²)`
-/

namespace A330549.P6605380800725948928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014029 (A036262 n ^ 2).toNat

end

end A330549.P6605380800725948928

/-! ## A330549.P3545263778285335450

`A214264(A036262(n)²)`
-/

namespace A330549.P3545263778285335450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214264 (A036262 n ^ 2).toNat

end

end A330549.P3545263778285335450

/-! ## A330549.P9583650288751661927

`A016213(49*A036262(n))`
-/

namespace A330549.P9583650288751661927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016213 (49 * A036262 n).toNat

end

end A330549.P9583650288751661927

/-! ## A330549.P6311177959526732304

`A330551(A083920(n)+1)`
-/

namespace A330549.P6311177959526732304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330551 (A083920 n + 1).toNat

end

end A330549.P6311177959526732304

/-! ## A330549.P4261585678358279519

`A330551(A122797(n+1))`
-/

namespace A330549.P4261585678358279519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330551 (A122797 (n + 1)).toNat

end

end A330549.P4261585678358279519

/-! ## A330549.P12683571416327333411

`A330551(A271439(n)+1)`
-/

namespace A330549.P12683571416327333411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330551 (A271439 n + 1).toNat

end

end A330549.P12683571416327333411

/-!
# A330550: Gasket based on primes: take array read by diagonals from Gilbreath conjecture, omitting the initial row of primes (A036261) and replace all nonzero entries with 1's.

The programs for A330550, there is no canonical definition to state claims against.
-/

/-! ## A330550.P7505593285235473875

`1-A330551(n+1)`
-/

namespace A330550.P7505593285235473875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A330551 (n + 1)

end

end A330550.P7505593285235473875

/-! ## A330550.P17470458977053760002

`round(atan(A036261(n+1)))`
-/

namespace A330550.P17470458977053760002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.arctan (A036261 (n + 1) : ℝ))

end

end A330550.P17470458977053760002

/-! ## A330550.P2323988102813942599

`xor(1, A330551(C(2, C(3, n²))+n))`
-/

namespace A330550.P2323988102813942599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (A330551 (Nat.choose 2 (Nat.choose 3 (n ^ 2)) + n))

end

end A330550.P2323988102813942599

/-! ## A330550.P18167792734797052122

`A002852(A036261(n+1))`
-/

namespace A330550.P18167792734797052122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002852 (A036261 (n + 1)).toNat

end

end A330550.P18167792734797052122

/-! ## A330550.P14614055134133346873

`A330548(A007401(n+1))`
-/

namespace A330550.P14614055134133346873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330548 (A007401 (n + 1)).toNat

end

end A330550.P14614055134133346873

/-! ## A330550.P10416201114778106112

`A330548(A181133(n+1))`
-/

namespace A330550.P10416201114778106112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330548 (A181133 (n + 1)).toNat

end

end A330550.P10416201114778106112

/-! ## A330550.P12649435280797410001

`A002828(A036261(n+1)²)`
-/

namespace A330550.P12649435280797410001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002828 (A036261 (n + 1) ^ 2).toNat

end

end A330550.P12649435280797410001

/-! ## A330550.P13146802335808258688

`A011583(A036261(n+1)²)`
-/

namespace A330550.P13146802335808258688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011583 (A036261 (n + 1) ^ 2).toNat

end

end A330550.P13146802335808258688

/-! ## A330550.P3880291028087241692

`A019425(A036261(n+1)²)`
-/

namespace A330550.P3880291028087241692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019425 (A036261 (n + 1) ^ 2).toNat

end

end A330550.P3880291028087241692

/-! ## A330550.P2339807816924347481

`A057427(A036261(n+1)²)`
-/

namespace A330550.P2339807816924347481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (A036261 (n + 1) ^ 2).toNat

end

end A330550.P2339807816924347481

/-! ## A330550.P6215570550295684776

`A139351(A036261(n+1)²)`
-/

namespace A330550.P6215570550295684776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139351 (A036261 (n + 1) ^ 2).toNat

end

end A330550.P6215570550295684776

/-! ## A330550.P3176725340342720367

`A178334(A036261(n+1)²)`
-/

namespace A330550.P3176725340342720367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178334 (A036261 (n + 1) ^ 2).toNat

end

end A330550.P3176725340342720367

/-! ## A330550.P1726245447388598276

`A001065(A036261(n+1)+1)`
-/

namespace A330550.P1726245447388598276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001065 (A036261 (n + 1) + 1).toNat

end

end A330550.P1726245447388598276

/-! ## A330550.P17376582174702550632

`A001221(A036261(n+1)+1)`
-/

namespace A330550.P17376582174702550632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A036261 (n + 1) + 1).toNat

end

end A330550.P17376582174702550632

/-! ## A330550.P8403927702347210283

`A001222(A036261(n+1)+1)`
-/

namespace A330550.P8403927702347210283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A036261 (n + 1) + 1).toNat

end

end A330550.P8403927702347210283

/-! ## A330550.P17279546553596504070

`A362452(A036261(n+1)+1)`
-/

namespace A330550.P17279546553596504070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362452 (A036261 (n + 1) + 1).toNat

end

end A330550.P17279546553596504070

/-! ## A330550.P7920432343038543155

`A063974(A036261(n+1)+2)`
-/

namespace A330550.P7920432343038543155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063974 (A036261 (n + 1) + 2).toNat

end

end A330550.P7920432343038543155

/-! ## A330550.P13640369864962196

`A365938(A036261(n+1)+2)`
-/

namespace A330550.P13640369864962196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365938 (A036261 (n + 1) + 2).toNat

end

end A330550.P13640369864962196

/-! ## A330550.P8115499764888512164

`A057427(2*A036261(n+1))`
-/

namespace A330550.P8115499764888512164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (2 * A036261 (n + 1)).toNat

end

end A330550.P8115499764888512164

/-! ## A330550.P3813310609881950231

`A178334(2*A036261(n+1))`
-/

namespace A330550.P3813310609881950231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178334 (2 * A036261 (n + 1)).toNat

end

end A330550.P3813310609881950231

/-!
# A330551: Gasket based on primes: take array read by diagonals from Gilbreath conjecture, omitting the initial row of primes (A036261) and replace all nonzero entries with 0's and all 0's with 1's.

The programs for A330551, there is no canonical definition to state claims against.
-/

/-! ## A330551.P12911261310703610151

`1-A330550(n+1)`
-/

namespace A330551.P12911261310703610151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A330550 (n + 1)

end

end A330551.P12911261310703610151

/-! ## A330551.P14148866997415864310

`floor(acot(A036261(n+1)))`
-/

namespace A330551.P14148866997415864310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊SequenceMachineLib.acot (A036261 (n + 1) : ℝ)⌋

end

end A330551.P14148866997415864310

/-! ## A330551.P9254805339152617778

`xor(1, A330550(C(2, C(3, n²))+n))`
-/

namespace A330551.P9254805339152617778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (A330550 (Nat.choose 2 (Nat.choose 3 (n ^ 2)) + n))

end

end A330551.P9254805339152617778

/-! ## A330551.P17338773400369755184

`C(n+1, A036262(comp[∑[n-1]])%7+1+n)`
-/

namespace A330551.P17338773400369755184
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (n + 1) (Int.tmod (A036262 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)) 7 + 1 + (n : ℤ)).toNat

end

end A330551.P17338773400369755184

/-! ## A330551.P848093765048814009

`A000007(A036261(n+1))`
-/

namespace A330551.P848093765048814009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (A036261 (n + 1)).toNat

end

end A330551.P848093765048814009

/-! ## A330551.P15904976707967125943

`A330549(A007401(n+1))`
-/

namespace A330551.P15904976707967125943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330549 (A007401 (n + 1)).toNat

end

end A330551.P15904976707967125943

/-! ## A330551.P14384299032163363346

`A330549(A181133(n+1))`
-/

namespace A330551.P14384299032163363346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330549 (A181133 (n + 1)).toNat

end

end A330551.P14384299032163363346

/-! ## A330551.P7431513757888351939

`A001343(A036261(n+1)²)`
-/

namespace A330551.P7431513757888351939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001343 (A036261 (n + 1) ^ 2).toNat

end

end A330551.P7431513757888351939

/-! ## A330551.P18120674636706248502

`A014072(A036261(n+1)²)`
-/

namespace A330551.P18120674636706248502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014072 (A036261 (n + 1) ^ 2).toNat

end

end A330551.P18120674636706248502

/-! ## A330551.P6213185622994475726

`A055641(A036261(n+1)²)`
-/

namespace A330551.P6213185622994475726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055641 (A036261 (n + 1) ^ 2).toNat

end

end A330551.P6213185622994475726

/-! ## A330551.P5426511747032678044

`A089798(A036261(n+1)²)`
-/

namespace A330551.P5426511747032678044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089798 (A036261 (n + 1) ^ 2).toNat

end

end A330551.P5426511747032678044

/-! ## A330551.P12466090331174995961

`A136572(A036261(n+1)²)`
-/

namespace A330551.P12466090331174995961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136572 (A036261 (n + 1) ^ 2).toNat

end

end A330551.P12466090331174995961

/-! ## A330551.P11584422761679571686

`A196251(A036261(n+1)²)`
-/

namespace A330551.P11584422761679571686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196251 (A036261 (n + 1) ^ 2).toNat

end

end A330551.P11584422761679571686

/-! ## A330551.P13012339431197509945

`A136572(A036261(n+1)+2)`
-/

namespace A330551.P13012339431197509945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136572 (A036261 (n + 1) + 2).toNat

end

end A330551.P13012339431197509945

/-! ## A330551.P9483922350407009042

`A213014(A036261(n+1)+2)`
-/

namespace A330551.P9483922350407009042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213014 (A036261 (n + 1) + 2).toNat

end

end A330551.P9483922350407009042

/-! ## A330551.P13612705472539856784

`A010054(A036261(n+1)+3)`
-/

namespace A330551.P13612705472539856784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 (A036261 (n + 1) + 3).toNat

end

end A330551.P13612705472539856784

/-! ## A330551.P3055731246951507640

`A001343(2*A036261(n+1))`
-/

namespace A330551.P3055731246951507640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001343 (2 * A036261 (n + 1)).toNat

end

end A330551.P3055731246951507640

/-! ## A330551.P1804815128945940890

`A036272(2*A036261(n+1))`
-/

namespace A330551.P1804815128945940890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036272 (2 * A036261 (n + 1)).toNat

end

end A330551.P1804815128945940890

/-! ## A330551.P4650506511332573215

`A036274(2*A036261(n+1))`
-/

namespace A330551.P4650506511332573215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036274 (2 * A036261 (n + 1)).toNat

end

end A330551.P4650506511332573215

/-! ## A330551.P3453587511680440886

`A055641(2*A036261(n+1))`
-/

namespace A330551.P3453587511680440886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055641 (2 * A036261 (n + 1)).toNat

end

end A330551.P3453587511680440886

/-!
# A330556: a(n) = (number of primes p <= 2*n+1 with Delta(p) == 2 mod 4) - (number of primes p <= 2*n+1 with Delta(p) == 0 mod 4), where Delta(p) = nextprime(p) - p.

The programs for A330556, the canonical program `A330556.P13468609858281030865` is in `Seq.B008.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A330556 has offset 0).

The definition of A330556 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A330556.P16321857184136430902

`A330559(A099802(n+1))`
-/

namespace A330556.P16321857184136430902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330559 (A099802 (n + 1)).toNat

end

end A330556.P16321857184136430902

namespace A330556

/-- `A330559(A099802(n+1))` -/
def P16321857184136430902.Spec : Prop :=
  ∀ n, P16321857184136430902.a n = A330556 n

end A330556

/-! ## A330556.P4821479282197300666

`A330557(n)-A330558(n)`
-/

namespace A330556.P4821479282197300666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330557 n - A330558 n

end

end A330556.P4821479282197300666

namespace A330556

/-- `A330557(n)-A330558(n)` -/
def P4821479282197300666.Spec : Prop :=
  ∀ n, P4821479282197300666.a n = A330556 n

end A330556

/-! ## A330556.P13468609858281030865

`A330559(∑[A101264(n)]+1)`

The canonical program, it is in `Seq.B008.C001`.
-/

namespace A330556

/-- `A330559(∑[A101264(n)]+1)` -/
def P13468609858281030865.Spec : Prop :=
  ∀ n, P13468609858281030865.a n = A330556 n

theorem P13468609858281030865.correct : P13468609858281030865.Spec := by
  intro n
  simp only [A330556]

end A330556

/-! ## A330556.P9831091093418230845

`A330559(A000720(2*(n+1)))`
-/

namespace A330556.P9831091093418230845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330559 (A000720 (2 * (n + 1))).toNat

end

end A330556.P9831091093418230845

namespace A330556

/-- `A330559(A000720(2*(n+1)))` -/
def P9831091093418230845.Spec : Prop :=
  ∀ n, P9831091093418230845.a n = A330556 n

end A330556

/-! ## A330556.P9784141182095429311

`A330559(∑[char[A102781(n+1)]])`
-/

namespace A330556.P9784141182095429311
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102781 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330559 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A330556.P9784141182095429311

namespace A330556

/-- `A330559(∑[char[A102781(n+1)]])` -/
def P9784141182095429311.Spec : Prop :=
  ∀ n, P9784141182095429311.a n = A330556 n

end A330556

/-! ## A330556.P13760844863104982424

`2*A330557(n)-∑[A101264(n)]`
-/

namespace A330556.P13760844863104982424
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101264 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A330557 n - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A330556.P13760844863104982424

namespace A330556

/-- `2*A330557(n)-∑[A101264(n)]` -/
def P13760844863104982424.Spec : Prop :=
  ∀ n, P13760844863104982424.a n = A330556 n

end A330556

/-! ## A330556.P1922672589297205496

`A330559(A278617(n+2)+1)`
-/

namespace A330556.P1922672589297205496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330559 (A278617 (n + 2) + 1).toNat

end

end A330556.P1922672589297205496

namespace A330556

/-- `A330559(A278617(n+2)+1)` -/
def P1922672589297205496.Spec : Prop :=
  ∀ n, P1922672589297205496.a n = A330556 n

end A330556

/-!
# A330557: a(n) = number of primes p <= 2*n+1 with Delta(p) == 2 mod 4, where Delta(p) = nextprime(p) - p.

The programs for A330557, the canonical program `A330557.P15434734115232232872` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A330557 has offset 0).

The definition of A330557 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A330557.P7594658603281236347

`A330560(A099802(n+1))`
-/

namespace A330557.P7594658603281236347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330560 (A099802 (n + 1)).toNat

end

end A330557.P7594658603281236347

namespace A330557

/-- `A330560(A099802(n+1))` -/
def P7594658603281236347.Spec : Prop :=
  ∀ n, P7594658603281236347.a n = A330557 n

end A330557

/-! ## A330557.P9529096434089419801

`A330558(n)+A330556(n)`
-/

namespace A330557.P9529096434089419801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330558 n + A330556 n

end

end A330557.P9529096434089419801

namespace A330557

/-- `A330558(n)+A330556(n)` -/
def P9529096434089419801.Spec : Prop :=
  ∀ n, P9529096434089419801.a n = A330557 n

end A330557

/-! ## A330557.P10567136872386484666

`A330560(A000720(2*(n+1)))`
-/

namespace A330557.P10567136872386484666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330560 (A000720 (2 * (n + 1))).toNat

end

end A330557.P10567136872386484666

namespace A330557

/-- `A330560(A000720(2*(n+1)))` -/
def P10567136872386484666.Spec : Prop :=
  ∀ n, P10567136872386484666.a n = A330557 n

end A330557

/-! ## A330557.P12080612360415071814

`∑[A014707(Δ[A151800(2*n)])]`
-/

namespace A330557.P12080612360415071814
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 (2 * n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014707 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A330557.P12080612360415071814

namespace A330557

/-- `∑[A014707(Δ[A151800(2*n)])]` -/
def P12080612360415071814.Spec : Prop :=
  ∀ n, P12080612360415071814.a n = A330557 n

end A330557

/-! ## A330557.P12024640531170494140

`(A330556(n)+∑[A101264(n)])/2`
-/

namespace A330557.P12024640531170494140
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101264 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A330556 n + ∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / 2

end

end A330557.P12024640531170494140

namespace A330557

/-- `(A330556(n)+∑[A101264(n)])/2` -/
def P12024640531170494140.Spec : Prop :=
  ∀ n, P12024640531170494140.a n = (A330557 n : ℚ)

end A330557

/-! ## A330557.P15434734115232232872

`A001281(A330556(n)+∑[A101264(n)])`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A330557

/-- `A001281(A330556(n)+∑[A101264(n)])` -/
def P15434734115232232872.Spec : Prop :=
  ∀ n, P15434734115232232872.a n = A330557 n

theorem P15434734115232232872.correct : P15434734115232232872.Spec := by
  intro n
  simp only [A330557]

end A330557

/-! ## A330557.P14402734624491493008

`∑[A014707(A151800(2*n+1)-A151800(2*n))]`
-/

namespace A330557.P14402734624491493008
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014707 (A151800 (2 * n + 1) - A151800 (2 * n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A330557.P14402734624491493008

namespace A330557

/-- `∑[A014707(A151800(2*n+1)-A151800(2*n))]` -/
def P14402734624491493008.Spec : Prop :=
  ∀ n, P14402734624491493008.a n = A330557 n

end A330557

/-! ## A330557.P14962261900727110301

`∑[Δ[A025441(A007918(2*n))]²]`
-/

namespace A330557.P14962261900727110301
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025441 (A007918 (2 * n)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) - f2 n) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A330557.P14962261900727110301

namespace A330557

/-- `∑[Δ[A025441(A007918(2*n))]²]` -/
def P14962261900727110301.Spec : Prop :=
  ∀ n, P14962261900727110301.a n = A330557 n

end A330557

/-!
# A330558: a(n) = number of primes p <= 2*n+1 with Delta(p) == 0 mod 4, where Delta(p) = nextprime(p) - p.

The programs for A330558, the canonical program `A330558.P13107326556388055266` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A330558 has offset 0).

The definition of A330558 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A330558.P3609164017273918581

`A330561(A099802(n+1))`
-/

namespace A330558.P3609164017273918581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330561 (A099802 (n + 1)).toNat

end

end A330558.P3609164017273918581

namespace A330558

/-- `A330561(A099802(n+1))` -/
def P3609164017273918581.Spec : Prop :=
  ∀ n, P3609164017273918581.a n = A330558 n

end A330558

/-! ## A330558.P13107326556388055266

`A330557(n)-A330556(n)`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A330558

/-- `A330557(n)-A330556(n)` -/
def P13107326556388055266.Spec : Prop :=
  ∀ n, P13107326556388055266.a n = A330558 n

theorem P13107326556388055266.correct : P13107326556388055266.Spec := by
  intro n
  simp only [A330558]

end A330558

/-! ## A330558.P6707278260429665134

`∑[A101264(n)]-A330557(n)`
-/

namespace A330558.P6707278260429665134
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101264 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A330557 n

end

end A330558.P6707278260429665134

namespace A330558

/-- `∑[A101264(n)]-A330557(n)` -/
def P6707278260429665134.Spec : Prop :=
  ∀ n, P6707278260429665134.a n = A330558 n

end A330558

/-! ## A330558.P16014577573749876693

`A330561(A000720(2*(n+1)))`
-/

namespace A330558.P16014577573749876693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330561 (A000720 (2 * (n + 1))).toNat

end

end A330558.P16014577573749876693

namespace A330558

/-- `A330561(A000720(2*(n+1)))` -/
def P16014577573749876693.Spec : Prop :=
  ∀ n, P16014577573749876693.a n = A330558 n

end A330558

/-! ## A330558.P17395708064937635354

`(∑[A101264(n)]-A330556(n))/2`
-/

namespace A330558.P17395708064937635354
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101264 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j - A330556 n : ℤ) : ℚ) / 2

end

end A330558.P17395708064937635354

namespace A330558

/-- `(∑[A101264(n)]-A330556(n))/2` -/
def P17395708064937635354.Spec : Prop :=
  ∀ n, P17395708064937635354.a n = (A330558 n : ℚ)

end A330558

/-! ## A330558.P6236552642788360137

`A001281(∑[A101264(n)]-A330556(n))`
-/

namespace A330558.P6236552642788360137
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101264 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (∑ j ∈ Finset.range (n + 1), f1 j - A330556 n).toNat

end

end A330558.P6236552642788360137

namespace A330558

/-- `A001281(∑[A101264(n)]-A330556(n))` -/
def P6236552642788360137.Spec : Prop :=
  ∀ n, P6236552642788360137.a n = A330558 n

end A330558

/-! ## A330558.P12921048799661363734

`A330560(A000720(2*(n+1)))-A330556(n)`
-/

namespace A330558.P12921048799661363734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330560 (A000720 (2 * (n + 1))).toNat - A330556 n

end

end A330558.P12921048799661363734

namespace A330558

/-- `A330560(A000720(2*(n+1)))-A330556(n)` -/
def P12921048799661363734.Spec : Prop :=
  ∀ n, P12921048799661363734.a n = A330558 n

end A330558

/-!
# A330559: a(n) = (number of primes p <= prime(n) with Delta(p) == 2 (mod 4)) - (number of primes p <= prime(n) with Delta(p) == 0 (mod 4)), where Delta(p) = nextprime(p) - p.

The programs for A330559, the canonical program `A330559.P10771393297654737098` is in `Seq.B007.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A330559 has offset 1).

The definition of A330559 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A330559.P10771393297654737098

`∑[A080378(n+1)-1]`

The canonical program, it is in `Seq.B007.C001`.
-/

namespace A330559

/-- `∑[A080378(n+1)-1]` -/
def P10771393297654737098.Spec : Prop :=
  ∀ n, P10771393297654737098.a n = A330559 (n + 1)

theorem P10771393297654737098.correct : P10771393297654737098.Spec := by
  intro n
  simp only [A330559, Nat.add_sub_cancel]

end A330559

/-! ## A330559.P7236180609663745126

`∑[1-A103271(n+1)]`
-/

namespace A330559.P7236180609663745126
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A103271 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A330559.P7236180609663745126

namespace A330559

/-- `∑[1-A103271(n+1)]` -/
def P7236180609663745126.Spec : Prop :=
  ∀ n, P7236180609663745126.a n = A330559 (n + 1)

end A330559

/-! ## A330559.P2241850133014088783

`2*A330560(n+1)-n`
-/

namespace A330559.P2241850133014088783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A330560 (n + 1) - (n : ℤ)

end

end A330559.P2241850133014088783

namespace A330559

/-- `2*A330560(n+1)-n` -/
def P2241850133014088783.Spec : Prop :=
  ∀ n, P2241850133014088783.a n = A330559 (n + 1)

end A330559

/-! ## A330559.P8658562264049876503

`n-2*A330561(n+1)`
-/

namespace A330559.P8658562264049876503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 2 * A330561 (n + 1)

end

end A330559.P8658562264049876503

namespace A330559

/-- `n-2*A330561(n+1)` -/
def P8658562264049876503.Spec : Prop :=
  ∀ n, P8658562264049876503.a n = A330559 (n + 1)

end A330559

/-! ## A330559.P4395802477794436287

`∑[A001223(n+1)%4-1]`
-/

namespace A330559.P4395802477794436287
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001223 (n + 1)) 4 - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A330559.P4395802477794436287

namespace A330559

/-- `∑[A001223(n+1)%4-1]` -/
def P4395802477794436287.Spec : Prop :=
  ∀ n, P4395802477794436287.a n = A330559 (n + 1)

end A330559

/-! ## A330559.P14728596998733650768

`n-∑[and(2, A001043(n+1))]`
-/

namespace A330559.P14728596998733650768
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 2 (A001043 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A330559.P14728596998733650768

namespace A330559

/-- `n-∑[and(2, A001043(n+1))]` -/
def P14728596998733650768.Spec : Prop :=
  ∀ n, P14728596998733650768.a n = A330559 (n + 1)

end A330559

/-! ## A330559.P17471436300171920522

`A330556(A067076(n+1))`
-/

namespace A330559.P17471436300171920522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330556 (A067076 (n + 1)).toNat

end

end A330559.P17471436300171920522

namespace A330559

/-- `A330556(A067076(n+1))` -/
def P17471436300171920522.Spec : Prop :=
  ∀ n, P17471436300171920522.a n = A330559 (n + 1)

end A330559

/-! ## A330559.P13689201679978534011

`A330556(A102781(n+1))`
-/

namespace A330559.P13689201679978534011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330556 (A102781 (n + 1)).toNat

end

end A330559.P13689201679978534011

namespace A330559

/-- `A330556(A102781(n+1))` -/
def P13689201679978534011.Spec : Prop :=
  ∀ n, P13689201679978534011.a n = A330559 (n + 1)

end A330559

/-! ## A330559.P15685122080393868926

`1-∑[A057077(A001223(n+1))]`
-/

namespace A330559.P15685122080393868926
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057077 (A001223 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A330559.P15685122080393868926

namespace A330559

/-- `1-∑[A057077(A001223(n+1))]` -/
def P15685122080393868926.Spec : Prop :=
  ∀ n, P15685122080393868926.a n = A330559 (n + 1)

end A330559

/-! ## A330559.P6388883623823620761

`A330560(n+1)-A330561(n+1)`
-/

namespace A330559.P6388883623823620761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330560 (n + 1) - A330561 (n + 1)

end

end A330559.P6388883623823620761

namespace A330559

/-- `A330560(n+1)-A330561(n+1)` -/
def P6388883623823620761.Spec : Prop :=
  ∀ n, P6388883623823620761.a n = A330559 (n + 1)

end A330559

/-! ## A330559.P4935912320519116388

`∑[Δ[A000040(n+1)]%4-1]`
-/

namespace A330559.P4935912320519116388
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f2 (n + 1) - f2 n) 4 - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A330559.P4935912320519116388

namespace A330559

/-- `∑[Δ[A000040(n+1)]%4-1]` -/
def P4935912320519116388.Spec : Prop :=
  ∀ n, P4935912320519116388.a n = A330559 (n + 1)

end A330559

/-! ## A330559.P14643664792293978070

`1-∑[A057077(Δ[A000040(n+1)])]`
-/

namespace A330559.P14643664792293978070
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057077 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A330559.P14643664792293978070

namespace A330559

/-- `1-∑[A057077(Δ[A000040(n+1)])]` -/
def P14643664792293978070.Spec : Prop :=
  ∀ n, P14643664792293978070.a n = A330559 (n + 1)

end A330559

/-! ## A330559.P11899697473216896243

`∑[A112658(Δ[A000040(n+1)]+1)-1]`
-/

namespace A330559.P11899697473216896243
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112658 (f2 (n + 1) - f2 n + 1).toNat - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A330559.P11899697473216896243

namespace A330559

/-- `∑[A112658(Δ[A000040(n+1)]+1)-1]` -/
def P11899697473216896243.Spec : Prop :=
  ∀ n, P11899697473216896243.a n = A330559 (n + 1)

end A330559

/-! ## A330559.P13663893838630350550

`n-2*A330558(A130290(n+1))`
-/

namespace A330559.P13663893838630350550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 2 * A330558 (A130290 (n + 1)).toNat

end

end A330559.P13663893838630350550

namespace A330559

/-- `n-2*A330558(A130290(n+1))` -/
def P13663893838630350550.Spec : Prop :=
  ∀ n, P13663893838630350550.a n = A330559 (n + 1)

end A330559

/-! ## A330559.P14650802137123494304

`n-2*A330558(A160830(n+1))`
-/

namespace A330559.P14650802137123494304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 2 * A330558 (A160830 (n + 1)).toNat

end

end A330559.P14650802137123494304

namespace A330559

/-- `n-2*A330558(A160830(n+1))` -/
def P14650802137123494304.Spec : Prop :=
  ∀ n, P14650802137123494304.a n = A330559 (n + 1)

end A330559

/-!
# A330560: a(n) = number of primes p <= prime(n) with Delta(p) == 2 (mod 4), where Delta(p) = nextprime(p) - p.

The programs for A330560, the canonical program `A330560.P6917697253061936391` is in `Seq.B004.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A330560 has offset 1).

The definition of A330560 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A330560.P13041983675328927878

`n-A330561(n+1)`
-/

namespace A330560.P13041983675328927878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A330561 (n + 1)

end

end A330560.P13041983675328927878

namespace A330560

/-- `n-A330561(n+1)` -/
def P13041983675328927878.Spec : Prop :=
  ∀ n, P13041983675328927878.a n = A330560 (n + 1)

end A330560

/-! ## A330560.P6917697253061936391

`∑[A078444(n+1)%2]`

The canonical program, it is in `Seq.B004.C003`.
-/

namespace A330560

/-- `∑[A078444(n+1)%2]` -/
def P6917697253061936391.Spec : Prop :=
  ∀ n, P6917697253061936391.a n = A330560 (n + 1)

theorem P6917697253061936391.correct : P6917697253061936391.Spec := by
  intro n
  simp only [A330560, Nat.add_sub_cancel]

end A330560

/-! ## A330560.P2441014090853100446

`∑[C(A080378(n+1), 2)]`
-/

namespace A330560.P2441014090853100446
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A080378 (n + 1)).toNat 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A330560.P2441014090853100446

namespace A330560

/-- `∑[C(A080378(n+1), 2)]` -/
def P2441014090853100446.Spec : Prop :=
  ∀ n, (P2441014090853100446.a n : ℤ) = A330560 (n + 1)

end A330560

/-! ## A330560.P18373255226830456571

`(A330559(n+1)+n)/2`
-/

namespace A330560.P18373255226830456571
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A330559 (n + 1) + (n : ℤ) : ℚ) / 2

end

end A330560.P18373255226830456571

namespace A330560

/-- `(A330559(n+1)+n)/2` -/
def P18373255226830456571.Spec : Prop :=
  ∀ n, P18373255226830456571.a n = (A330560 (n + 1) : ℚ)

end A330560

/-! ## A330560.P5106380255200195766

`∑[and(2, A001223(n+1))/2]`
-/

namespace A330560.P5106380255200195766
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.land 2 (A001223 (n + 1)) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A330560.P5106380255200195766

namespace A330560

/-- `∑[and(2, A001223(n+1))/2]` -/
def P5106380255200195766.Spec : Prop :=
  ∀ n, P5106380255200195766.a n = (A330560 (n + 1) : ℚ)

end A330560

/-! ## A330560.P3200687320179403718

`∑[C(C(2, A023520(n+2)), 2)]`
-/

namespace A330560.P3200687320179403718
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (Nat.choose 2 (A023520 (n + 2)).toNat) 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A330560.P3200687320179403718

namespace A330560

/-- `∑[C(C(2, A023520(n+2)), 2)]` -/
def P3200687320179403718.Spec : Prop :=
  ∀ n, (P3200687320179403718.a n : ℤ) = A330560 (n + 1)

end A330560

/-! ## A330560.P8023180302131210614

`∑[(C(A006094(n+1)-1, 2)+2)%2]`
-/

namespace A330560.P8023180302131210614
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (Nat.choose (A006094 (n + 1) - 1).toNat 2 + 2) % 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A330560.P8023180302131210614

namespace A330560

/-- `∑[(C(A006094(n+1)-1, 2)+2)%2]` -/
def P8023180302131210614.Spec : Prop :=
  ∀ n, (P8023180302131210614.a n : ℤ) = A330560 (n + 1)

end A330560

/-! ## A330560.P17125387206595784848

`∑[A102550(A001223(n+1))]`
-/

namespace A330560.P17125387206595784848
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102550 (A001223 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A330560.P17125387206595784848

namespace A330560

/-- `∑[A102550(A001223(n+1))]` -/
def P17125387206595784848.Spec : Prop :=
  ∀ n, P17125387206595784848.a n = A330560 (n + 1)

end A330560

/-! ## A330560.P7642217065880559924

`∑[A000035(A074927(n+1))]-1`
-/

namespace A330560.P7642217065880559924
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A074927 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A330560.P7642217065880559924

namespace A330560

/-- `∑[A000035(A074927(n+1))]-1` -/
def P7642217065880559924.Spec : Prop :=
  ∀ n, P7642217065880559924.a n = A330560 (n + 1)

end A330560

/-! ## A330560.P9735288239327798762

`A330561(n+1)+A330559(n+1)`
-/

namespace A330560.P9735288239327798762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330561 (n + 1) + A330559 (n + 1)

end

end A330560.P9735288239327798762

namespace A330560

/-- `A330561(n+1)+A330559(n+1)` -/
def P9735288239327798762.Spec : Prop :=
  ∀ n, P9735288239327798762.a n = A330560 (n + 1)

end A330560

/-! ## A330560.P11994990410792920804

`(A330556(A067076(n+1))+n)/2`
-/

namespace A330560.P11994990410792920804
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A330556 (A067076 (n + 1)).toNat + (n : ℤ) : ℚ) / 2

end

end A330560.P11994990410792920804

namespace A330560

/-- `(A330556(A067076(n+1))+n)/2` -/
def P11994990410792920804.Spec : Prop :=
  ∀ n, P11994990410792920804.a n = (A330560 (n + 1) : ℚ)

end A330560

/-! ## A330560.P18177247689825936378

`∑[A002265(2*A001223(n+1))%2]`
-/

namespace A330560.P18177247689825936378
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A002265 (2 * A001223 (n + 1)).toNat) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A330560.P18177247689825936378

namespace A330560

/-- `∑[A002265(2*A001223(n+1))%2]` -/
def P18177247689825936378.Spec : Prop :=
  ∀ n, P18177247689825936378.a n = A330560 (n + 1)

end A330560

/-! ## A330560.P18084551415655470942

`∑[A166486(A001223(n+1)²-A001223(n+1))]`
-/

namespace A330560.P18084551415655470942
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166486 (A001223 (n + 1) ^ 2 - A001223 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A330560.P18084551415655470942

namespace A330560

/-- `∑[A166486(A001223(n+1)²-A001223(n+1))]` -/
def P18084551415655470942.Spec : Prop :=
  ∀ n, P18084551415655470942.a n = A330560 (n + 1)

end A330560

/-! ## A330560.P6067935865841404467

`∑[Δ[A100672(n+1)]²]`
-/

namespace A330560.P6067935865841404467
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100672 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) - f2 n) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A330560.P6067935865841404467

namespace A330560

/-- `∑[Δ[A100672(n+1)]²]` -/
def P6067935865841404467.Spec : Prop :=
  ∀ n, P6067935865841404467.a n = A330560 (n + 1)

end A330560

/-! ## A330560.P4905488105560417153

`∑[and(2, Δ[A000040(n+1)])/2]`
-/

namespace A330560.P4905488105560417153
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.land 2 (f2 (n + 1) - f2 n) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A330560.P4905488105560417153

namespace A330560

/-- `∑[and(2, Δ[A000040(n+1)])/2]` -/
def P4905488105560417153.Spec : Prop :=
  ∀ n, P4905488105560417153.a n = (A330560 (n + 1) : ℚ)

end A330560

/-! ## A330560.P7581766434232094641

`n-∑[A102560(A054541(n+2))]`
-/

namespace A330560.P7581766434232094641
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102560 (A054541 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A330560.P7581766434232094641

namespace A330560

/-- `n-∑[A102560(A054541(n+2))]` -/
def P7581766434232094641.Spec : Prop :=
  ∀ n, P7581766434232094641.a n = A330560 (n + 1)

end A330560

/-! ## A330560.P10056222637621197667

`∑[1-A014577(Δ[A000040(n+1)])]`
-/

namespace A330560.P10056222637621197667
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A014577 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A330560.P10056222637621197667

namespace A330560

/-- `∑[1-A014577(Δ[A000040(n+1)])]` -/
def P10056222637621197667.Spec : Prop :=
  ∀ n, P10056222637621197667.a n = A330560 (n + 1)

end A330560

/-! ## A330560.P14442507713704780749

`∑[A166486(Δ[A000040(n+1)])]-1`
-/

namespace A330560.P14442507713704780749
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166486 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A330560.P14442507713704780749

namespace A330560

/-- `∑[A166486(Δ[A000040(n+1)])]-1` -/
def P14442507713704780749.Spec : Prop :=
  ∀ n, P14442507713704780749.a n = A330560 (n + 1)

end A330560

/-! ## A330560.P14898530747482708818

`A330557(A102781(n+1))`
-/

namespace A330560.P14898530747482708818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330557 (A102781 (n + 1)).toNat

end

end A330560.P14898530747482708818

namespace A330560

/-- `A330557(A102781(n+1))` -/
def P14898530747482708818.Spec : Prop :=
  ∀ n, P14898530747482708818.a n = A330560 (n + 1)

end A330560

/-! ## A330560.P17393854856822567300

`n-A330558(A130290(n+1))`
-/

namespace A330560.P17393854856822567300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A330558 (A130290 (n + 1)).toNat

end

end A330560.P17393854856822567300

namespace A330560

/-- `n-A330558(A130290(n+1))` -/
def P17393854856822567300.Spec : Prop :=
  ∀ n, P17393854856822567300.a n = A330560 (n + 1)

end A330560

/-!
# A330561: a(n) = number of primes p <= prime(n) with Delta(p) == 0 (mod 4), where Delta(p) = nextprime(p) - p.

The programs for A330561, the canonical program `A330561.P8312419357431212609` is in `Seq.B005.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A330561 has offset 1).

The definition of A330561 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A330561.P8312419357431212609

`n-A330560(n+1)`

The canonical program, it is in `Seq.B005.C002`.
-/

namespace A330561

/-- `n-A330560(n+1)` -/
def P8312419357431212609.Spec : Prop :=
  ∀ n, P8312419357431212609.a n = A330561 (n + 1)

theorem P8312419357431212609.correct : P8312419357431212609.Spec := by
  intro n
  simp only [A330561, Nat.add_sub_cancel]

end A330561

/-! ## A330561.P16883566028127484406

`∑[A054265(n+1)%2]`
-/

namespace A330561.P16883566028127484406
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A054265 (n + 1)) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A330561.P16883566028127484406

namespace A330561

/-- `∑[A054265(n+1)%2]` -/
def P16883566028127484406.Spec : Prop :=
  ∀ n, P16883566028127484406.a n = A330561 (n + 1)

end A330561

/-! ## A330561.P10579153758541205056

`∑[and(1, A062047(n+1))]`
-/

namespace A330561.P10579153758541205056
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A062047 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A330561.P10579153758541205056

namespace A330561

/-- `∑[and(1, A062047(n+1))]` -/
def P10579153758541205056.Spec : Prop :=
  ∀ n, P10579153758541205056.a n = A330561 (n + 1)

end A330561

/-! ## A330561.P16201006309695857060

`(n-A330559(n+1))/2`
-/

namespace A330561.P16201006309695857060
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - A330559 (n + 1) : ℚ) / 2

end

end A330561.P16201006309695857060

namespace A330561

/-- `(n-A330559(n+1))/2` -/
def P16201006309695857060.Spec : Prop :=
  ∀ n, P16201006309695857060.a n = (A330561 (n + 1) : ℚ)

end A330561

/-! ## A330561.P10674791121334408296

`(∑[A103271(n+1)]-1)/2`
-/

namespace A330561.P10674791121334408296
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103271 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j - 1 : ℤ) : ℚ) / 2

end

end A330561.P10674791121334408296

namespace A330561

/-- `(∑[A103271(n+1)]-1)/2` -/
def P10674791121334408296.Spec : Prop :=
  ∀ n, P10674791121334408296.a n = (A330561 (n + 1) : ℚ)

end A330561

/-! ## A330561.P2188115207587562847

`∑[(A074927(n+1)+1)%2]`
-/

namespace A330561.P2188115207587562847
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A074927 (n + 1) + 1) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A330561.P2188115207587562847

namespace A330561

/-- `∑[(A074927(n+1)+1)%2]` -/
def P2188115207587562847.Spec : Prop :=
  ∀ n, P2188115207587562847.a n = A330561 (n + 1)

end A330561

/-! ## A330561.P9058301074555868417

`∑[and(2, A001043(n+1))/2]`
-/

namespace A330561.P9058301074555868417
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.land 2 (A001043 (n + 1)) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A330561.P9058301074555868417

namespace A330561

/-- `∑[and(2, A001043(n+1))/2]` -/
def P9058301074555868417.Spec : Prop :=
  ∀ n, P9058301074555868417.a n = (A330561 (n + 1) : ℚ)

end A330561

/-! ## A330561.P2668786815354123691

`n-∑[and(1, A078444(n+1))]`
-/

namespace A330561.P2668786815354123691
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A078444 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A330561.P2668786815354123691

namespace A330561

/-- `n-∑[and(1, A078444(n+1))]` -/
def P2668786815354123691.Spec : Prop :=
  ∀ n, P2668786815354123691.a n = A330561 (n + 1)

end A330561

/-! ## A330561.P17506227852716587397

`(n-∑[A080378(n+1)-1])/2`
-/

namespace A330561.P17506227852716587397
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080378 (n + 1) - 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (((n : ℤ) - ∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / 2

end

end A330561.P17506227852716587397

namespace A330561

/-- `(n-∑[A080378(n+1)-1])/2` -/
def P17506227852716587397.Spec : Prop :=
  ∀ n, P17506227852716587397.a n = (A330561 (n + 1) : ℚ)

end A330561

/-! ## A330561.P15503573269855874456

`∑[(C(A006094(n+1)+2, 2)+2)%2]`
-/

namespace A330561.P15503573269855874456
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (Nat.choose (A006094 (n + 1) + 2).toNat 2 + 2) % 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A330561.P15503573269855874456

namespace A330561

/-- `∑[(C(A006094(n+1)+2, 2)+2)%2]` -/
def P15503573269855874456.Spec : Prop :=
  ∀ n, (P15503573269855874456.a n : ℤ) = A330561 (n + 1)

end A330561

/-! ## A330561.P18266146963047091493

`∑[A059841(A074927(n+1))]`
-/

namespace A330561.P18266146963047091493
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059841 (A074927 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A330561.P18266146963047091493

namespace A330561

/-- `∑[A059841(A074927(n+1))]` -/
def P18266146963047091493.Spec : Prop :=
  ∀ n, P18266146963047091493.a n = A330561 (n + 1)

end A330561

/-! ## A330561.P5073389240127772659

`∑[A000035(A074927(n+1)+1)]`
-/

namespace A330561.P5073389240127772659
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A074927 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A330561.P5073389240127772659

namespace A330561

/-- `∑[A000035(A074927(n+1)+1)]` -/
def P5073389240127772659.Spec : Prop :=
  ∀ n, P5073389240127772659.a n = A330561 (n + 1)

end A330561

/-! ## A330561.P6991480940736682822

`∑[1-A166486(A001223(n+1))]`
-/

namespace A330561.P6991480940736682822
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A166486 (A001223 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A330561.P6991480940736682822

namespace A330561

/-- `∑[1-A166486(A001223(n+1))]` -/
def P6991480940736682822.Spec : Prop :=
  ∀ n, P6991480940736682822.a n = A330561 (n + 1)

end A330561

/-! ## A330561.P14657622195751785952

`(n-A330556(A067076(n+1)))/2`
-/

namespace A330561.P14657622195751785952
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - A330556 (A067076 (n + 1)).toNat : ℚ) / 2

end

end A330561.P14657622195751785952

namespace A330561

/-- `(n-A330556(A067076(n+1)))/2` -/
def P14657622195751785952.Spec : Prop :=
  ∀ n, P14657622195751785952.a n = (A330561 (n + 1) : ℚ)

end A330561

/-! ## A330561.P69969915859624475

`∑[A000045(and(2, A001223(n+1)-1))]`
-/

namespace A330561.P69969915859624475
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (Int.land 2 (A001223 (n + 1) - 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A330561.P69969915859624475

namespace A330561

/-- `∑[A000045(and(2, A001223(n+1)-1))]` -/
def P69969915859624475.Spec : Prop :=
  ∀ n, P69969915859624475.a n = A330561 (n + 1)

end A330561

/-! ## A330561.P7079953754497733993

`n-∑[Δ[A100672(n+1)]²]`
-/

namespace A330561.P7079953754497733993
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100672 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) - f2 n) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A330561.P7079953754497733993

namespace A330561

/-- `n-∑[Δ[A100672(n+1)]²]` -/
def P7079953754497733993.Spec : Prop :=
  ∀ n, P7079953754497733993.a n = A330561 (n + 1)

end A330561

/-! ## A330561.P2304946754728343758

`n-∑[and(2, Δ[A000040(n+1)])/2]`
-/

namespace A330561.P2304946754728343758
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.land 2 (f2 (n + 1) - f2 n) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A330561.P2304946754728343758

namespace A330561

/-- `n-∑[and(2, Δ[A000040(n+1)])/2]` -/
def P2304946754728343758.Spec : Prop :=
  ∀ n, P2304946754728343758.a n = (A330561 (n + 1) : ℚ)

end A330561

/-! ## A330561.P17698937517079383847

`∑[A102560(A054541(n+2))]`
-/

namespace A330561.P17698937517079383847
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102560 (A054541 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A330561.P17698937517079383847

namespace A330561

/-- `∑[A102560(A054541(n+2))]` -/
def P17698937517079383847.Spec : Prop :=
  ∀ n, P17698937517079383847.a n = A330561 (n + 1)

end A330561

/-! ## A330561.P4738660651788307675

`∑[A014577(Δ[A000040(n+1)])]-1`
-/

namespace A330561.P4738660651788307675
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014577 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A330561.P4738660651788307675

namespace A330561

/-- `∑[A014577(Δ[A000040(n+1)])]-1` -/
def P4738660651788307675.Spec : Prop :=
  ∀ n, P4738660651788307675.a n = A330561 (n + 1)

end A330561

/-! ## A330561.P18286369462572800460

`∑[1-A166486(Δ[A000040(n+1)])]`
-/

namespace A330561.P18286369462572800460
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A166486 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A330561.P18286369462572800460

namespace A330561

/-- `∑[1-A166486(Δ[A000040(n+1)])]` -/
def P18286369462572800460.Spec : Prop :=
  ∀ n, P18286369462572800460.a n = A330561 (n + 1)

end A330561

/-!
# A330562: Positive numbers k with property that if d is any nonzero digit of k then k mod d is also a digit of k.

The programs for A330562, there is no canonical definition to state claims against.
-/

/-! ## A330562.P15682439852420961972

`eq[A007954(n), A187844(xor(1, n²))]`
-/

namespace A330562.P15682439852420961972
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007954 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187844 (Nat.xor 1 (n ^ 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A330562.P15682439852420961972

/-! ## A330562.P15524281922201000931

`eq[A098736(n), A187844(xor(1, n²))]`
-/

namespace A330562.P15524281922201000931
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098736 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187844 (Nat.xor 1 (n ^ 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A330562.P15524281922201000931

/-! ## A330562.P15141993579211513677

`eq[A187844(xor(1, n²)), A187844(n)]`
-/

namespace A330562.P15141993579211513677
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187844 (Nat.xor 1 (n ^ 2))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187844 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A330562.P15141993579211513677

/-! ## A330562.P11539005261014118857

`eq[A007954(n), A187844(A189834(n))]`
-/

namespace A330562.P11539005261014118857
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007954 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187844 (A189834 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A330562.P11539005261014118857

/-! ## A330562.P13680716675535226664

`eq[A054054(n), A187844(A189834(n))]`
-/

namespace A330562.P13680716675535226664
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054054 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187844 (A189834 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A330562.P13680716675535226664

/-!
# A330563: Primes in A330562.

The programs for A330563, there is no canonical definition to state claims against.
-/

/-! ## A330563.P4506358172781396212

`p?[A330562(n+1)]`
-/

namespace A330563.P4506358172781396212
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330562 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A330563.P4506358172781396212

/-! ## A330563.P13556615663926330397

`record[p?[A330562(A286378(n))]]`
-/

namespace A330563.P13556615663926330397
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330562 (A286378 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A330563.P13556615663926330397

/-! ## A330563.P17804308360755182900

`∩[A046501(n+1), A330562(n+1)]`
-/

namespace A330563.P17804308360755182900
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046501 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330562 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A330563.P17804308360755182900

/-! ## A330563.P11993789859608786535

`∩[A056709(n+1), A330562(n+1)]`
-/

namespace A330563.P11993789859608786535
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056709 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330562 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A330563.P11993789859608786535

/-! ## A330563.P4798088286929571227

`∩[A117682(n+1), A330562(n+1)]`
-/

namespace A330563.P4798088286929571227
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117682 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330562 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A330563.P4798088286929571227

/-! ## A330563.P12371275336802469307

`∩[A157677(n+1), A330562(n+1)]`
-/

namespace A330563.P12371275336802469307
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157677 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330562 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A330563.P12371275336802469307

/-! ## A330563.P9683258579297960662

`∩[A157676(n+1), A330562(n+1)]`
-/

namespace A330563.P9683258579297960662
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157676 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330562 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A330563.P9683258579297960662

/-! ## A330563.P5316449092046029733

`record[p?[A330562(A328399(n))]]`
-/

namespace A330563.P5316449092046029733
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330562 (A328399 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A330563.P5316449092046029733

/-! ## A330563.P17753846855749310015

`record[p?[A330562(A323889(n))]]`
-/

namespace A330563.P17753846855749310015
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330562 (A323889 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A330563.P17753846855749310015

/-! ## A330563.P365918612169594760

`∩[A059497(n+1), A330562(n+1)]`
-/

namespace A330563.P365918612169594760
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059497 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330562 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A330563.P365918612169594760

/-! ## A330563.P8073243690950100440

`∩[A038672(n+1), A330562(n+1)]`
-/

namespace A330563.P8073243690950100440
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038672 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330562 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A330563.P8073243690950100440

/-! ## A330563.P17830952638584960309

`∩[A000040(n+1), A330562(n+1)]`
-/

namespace A330563.P17830952638584960309
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330562 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A330563.P17830952638584960309

/-! ## A330563.P18108825576181226114

`∩[A004139(n+1), A330562(n+1)]`
-/

namespace A330563.P18108825576181226114
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004139 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330562 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A330563.P18108825576181226114

/-! ## A330563.P6740502683123687037

`∩[A006005(n+1), A330562(n+1)]`
-/

namespace A330563.P6740502683123687037
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006005 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330562 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A330563.P6740502683123687037

/-! ## A330563.P18249222363109477470

`∩[A008578(n+1), A330562(n+1)]`
-/

namespace A330563.P18249222363109477470
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330562 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A330563.P18249222363109477470

/-! ## A330563.P8429444397935522934

`∩[A045319(n+1), A330562(n+1)]`
-/

namespace A330563.P8429444397935522934
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045319 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330562 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A330563.P8429444397935522934

/-! ## A330563.P15208011352065959653

`∩[A045344(n+1), A330562(n+1)]`
-/

namespace A330563.P15208011352065959653
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045344 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330562 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A330563.P15208011352065959653

/-! ## A330563.P11558392518706542124

`∩[A046022(n+1), A330562(n+1)]`
-/

namespace A330563.P11558392518706542124
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046022 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330562 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A330563.P11558392518706542124

/-! ## A330563.P1108518429516927384

`∩[A033946(n+1), A330562(n+1)]`
-/

namespace A330563.P1108518429516927384
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033946 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330562 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A330563.P1108518429516927384

/-! ## A330563.P3045181566881794960

`∩[A053813(n+1), A330562(n+1)]`
-/

namespace A330563.P3045181566881794960
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053813 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330562 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A330563.P3045181566881794960

/-!
# A330569: a(n) = 1 if n is odd, otherwise a(n) = 2^(v-1)+1 where v is the 2-adic valuation of n (A007814(n)).

The programs for A330569, the canonical program `A330569.P12144414397047950456` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A330569 has offset 1).

The definition of A330569 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A330569.P13077190156243311236

`(A006519(n+1)+A040001(n+1))/2`
-/

namespace A330569.P13077190156243311236
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A006519 (n + 1) + A040001 (n + 1) : ℚ) / 2

end

end A330569.P13077190156243311236

namespace A330569

/-- `(A006519(n+1)+A040001(n+1))/2` -/
def P13077190156243311236.Spec : Prop :=
  ∀ n, P13077190156243311236.a n = (A330569 (n + 1) : ℚ)

end A330569

/-! ## A330569.P12144414397047950456

`∑[round(Δ[and(n, -n)]/2)]`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A330569

/-- `∑[round(Δ[and(n, -n)]/2)]` -/
def P12144414397047950456.Spec : Prop :=
  ∀ n, P12144414397047950456.a n = A330569 (n + 1)

theorem P12144414397047950456.correct : P12144414397047950456.Spec := by
  intro n
  simp only [A330569, Nat.add_sub_cancel]

end A330569

/-! ## A330569.P8628945068166957157

`ceil((xor(n, n+1)+2)/4)`
-/

namespace A330569.P8628945068166957157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(Nat.xor n (n + 1) + 2 : ℚ) / 4⌉

end

end A330569.P8628945068166957157

namespace A330569

/-- `ceil((xor(n, n+1)+2)/4)` -/
def P8628945068166957157.Spec : Prop :=
  ∀ n, P8628945068166957157.a n = A330569 (n + 1)

end A330569

/-! ## A330569.P1628017632364155714

`round(xor(n, n+1)/4)+1`
-/

namespace A330569.P1628017632364155714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((Nat.xor n (n + 1) : ℚ) / 4) + 1

end

end A330569.P1628017632364155714

namespace A330569

/-- `round(xor(n, n+1)/4)+1` -/
def P1628017632364155714.Spec : Prop :=
  ∀ n, P1628017632364155714.a n = A330569 (n + 1)

end A330569

/-! ## A330569.P15241207933550516818

`floor((xor(n, n+1)+5)/4)`
-/

namespace A330569.P15241207933550516818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(Nat.xor n (n + 1) + 5 : ℚ) / 4⌋

end

end A330569.P15241207933550516818

namespace A330569

/-- `floor((xor(n, n+1)+5)/4)` -/
def P15241207933550516818.Spec : Prop :=
  ∀ n, P15241207933550516818.a n = A330569 (n + 1)

end A330569

/-! ## A330569.P18118776841404343519

`ceil(cosh(log(2^val(n+1, 2))))`
-/

namespace A330569.P18118776841404343519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.cosh (Real.log (2 ^ SequenceMachineLib.valuation (n + 1) 2 : ℝ))⌉

end

end A330569.P18118776841404343519

namespace A330569

/-- `ceil(cosh(log(2^val(n+1, 2))))` -/
def P18118776841404343519.Spec : Prop :=
  ∀ n, P18118776841404343519.a n = A330569 (n + 1)

end A330569

/-! ## A330569.P10095048418568925302

`-floor(or(n, -(n+2))/2)`
-/

namespace A330569.P10095048418568925302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -⌊(Int.lor (n : ℤ) (-(n + 2 : ℤ)) : ℚ) / 2⌋

end

end A330569.P10095048418568925302

namespace A330569

/-- `-floor(or(n, -(n+2))/2)` -/
def P10095048418568925302.Spec : Prop :=
  ∀ n, P10095048418568925302.a n = A330569 (n + 1)

end A330569

/-! ## A330569.P14685982367103435271

`ceil(-(or(n, -(n+2))/2))`
-/

namespace A330569.P14685982367103435271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈-((Int.lor (n : ℤ) (-(n + 2 : ℤ)) : ℚ) / 2)⌉

end

end A330569.P14685982367103435271

namespace A330569

/-- `ceil(-(or(n, -(n+2))/2))` -/
def P14685982367103435271.Spec : Prop :=
  ∀ n, P14685982367103435271.a n = A330569 (n + 1)

end A330569

/-! ## A330569.P8075542371453999996

`round(-(or(n, -(n+2))/2))`
-/

namespace A330569.P8075542371453999996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (-((Int.lor (n : ℤ) (-(n + 2 : ℤ)) : ℚ) / 2))

end

end A330569.P8075542371453999996

namespace A330569

/-- `round(-(or(n, -(n+2))/2))` -/
def P8075542371453999996.Spec : Prop :=
  ∀ n, P8075542371453999996.a n = A330569 (n + 1)

end A330569

/-! ## A330569.P9683098585686449053

`or(n+1, and(n, ∑[n]))-n`
-/

namespace A330569.P9683098585686449053
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.lor (n + 1) (Nat.land n (∑ j ∈ Finset.range (n + 1), f1 j)) : ℤ) - (n : ℤ)

end

end A330569.P9683098585686449053

namespace A330569

/-- `or(n+1, and(n, ∑[n]))-n` -/
def P9683098585686449053.Spec : Prop :=
  ∀ n, P9683098585686449053.a n = A330569 (n + 1)

end A330569

/-! ## A330569.P17040534978266109844

`ceil((n+2-and(n, n+1))/2)`
-/

namespace A330569.P17040534978266109844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((n + 2 : ℤ) - (Nat.land n (n + 1) : ℤ) : ℚ) / 2⌉

end

end A330569.P17040534978266109844

namespace A330569

/-- `ceil((n+2-and(n, n+1))/2)` -/
def P17040534978266109844.Spec : Prop :=
  ∀ n, P17040534978266109844.a n = A330569 (n + 1)

end A330569

/-! ## A330569.P16574334976995359831

`floor((n+3-and(n, n+1))/2)`
-/

namespace A330569.P16574334976995359831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((n + 3 : ℤ) - (Nat.land n (n + 1) : ℤ) : ℚ) / 2⌋

end

end A330569.P16574334976995359831

namespace A330569

/-- `floor((n+3-and(n, n+1))/2)` -/
def P16574334976995359831.Spec : Prop :=
  ∀ n, P16574334976995359831.a n = A330569 (n + 1)

end A330569

/-! ## A330569.P5903831763257016879

`round((n+2-and(n, n+1))/2)`
-/

namespace A330569.P5903831763257016879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (((n + 2 : ℤ) - (Nat.land n (n + 1) : ℤ) : ℚ) / 2)

end

end A330569.P5903831763257016879

namespace A330569

/-- `round((n+2-and(n, n+1))/2)` -/
def P5903831763257016879.Spec : Prop :=
  ∀ n, P5903831763257016879.a n = A330569 (n + 1)

end A330569

/-! ## A330569.P12932043308129026217

`ceil((or(n, n+1)-(n-1))/2)`
-/

namespace A330569.P12932043308129026217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((Nat.lor n (n + 1) : ℤ) - ((n : ℤ) - 1) : ℚ) / 2⌉

end

end A330569.P12932043308129026217

namespace A330569

/-- `ceil((or(n, n+1)-(n-1))/2)` -/
def P12932043308129026217.Spec : Prop :=
  ∀ n, P12932043308129026217.a n = A330569 (n + 1)

end A330569

/-! ## A330569.P17246407210735430314

`round((or(n, n+1)-(n-1))/2)`
-/

namespace A330569.P17246407210735430314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (((Nat.lor n (n + 1) : ℤ) - ((n : ℤ) - 1) : ℚ) / 2)

end

end A330569.P17246407210735430314

namespace A330569

/-- `round((or(n, n+1)-(n-1))/2)` -/
def P17246407210735430314.Spec : Prop :=
  ∀ n, P17246407210735430314.a n = A330569 (n + 1)

end A330569

/-! ## A330569.P5584253214407056714

`A094373(val(n+1, 2))`
-/

namespace A330569.P5584253214407056714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094373 (SequenceMachineLib.valuation (n + 1) 2)

end

end A330569.P5584253214407056714

namespace A330569

/-- `A094373(val(n+1, 2))` -/
def P5584253214407056714.Spec : Prop :=
  ∀ n, P5584253214407056714.a n = A330569 (n + 1)

end A330569

/-! ## A330569.P2306317921757815617

`A103391(xor(n, n+1))`
-/

namespace A330569.P2306317921757815617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103391 (Nat.xor n (n + 1))

end

end A330569.P2306317921757815617

namespace A330569

/-- `A103391(xor(n, n+1))` -/
def P2306317921757815617.Spec : Prop :=
  ∀ n, P2306317921757815617.a n = A330569 (n + 1)

end A330569

/-! ## A330569.P9433438346510731476

`abs(A118824(n+1)+1)`
-/

namespace A330569.P9433438346510731476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A118824 (n + 1) + 1|

end

end A330569.P9433438346510731476

namespace A330569

/-- `abs(A118824(n+1)+1)` -/
def P9433438346510731476.Spec : Prop :=
  ∀ n, P9433438346510731476.a n = A330569 (n + 1)

end A330569

/-! ## A330569.P4030227090585209719

`(A385047(n+1)+1)/2`
-/

namespace A330569.P4030227090585209719
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A385047 (n + 1) + 1 : ℚ) / 2

end

end A330569.P4030227090585209719

namespace A330569

/-- `(A385047(n+1)+1)/2` -/
def P4030227090585209719.Spec : Prop :=
  ∀ n, P4030227090585209719.a n = (A330569 (n + 1) : ℚ)

end A330569

/-! ## A330569.P16545614810444606576

`A160467(n+1)+and(1, n)`
-/

namespace A330569.P16545614810444606576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160467 (n + 1) + (Nat.land 1 n : ℤ)

end

end A330569.P16545614810444606576

namespace A330569

/-- `A160467(n+1)+and(1, n)` -/
def P16545614810444606576.Spec : Prop :=
  ∀ n, P16545614810444606576.a n = A330569 (n + 1)

end A330569

/-!
# A330570: Partial sums of A097988 (d_3(n)^2).

The programs for A330570, the canonical program `A330570.P7484334848335479580` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A330570 has offset 1).

The definition of A330570 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A330570.P7484334848335479580

`∑[∏{e}[n+1, C(#+2, 2)]²]`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A330570

/-- `∑[∏{e}[n+1, C(#+2, 2)]²]` -/
def P7484334848335479580.Spec : Prop :=
  ∀ n, (P7484334848335479580.a n : ℤ) = A330570 (n + 1)

theorem P7484334848335479580.correct : P7484334848335479580.Spec := by
  intro n
  simp only [A330570, Nat.add_sub_cancel]

end A330570

/-! ## A330570.P4787655315913449441

`∑[A097988(n+1)]`
-/

namespace A330570.P4787655315913449441
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097988 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A330570.P4787655315913449441

namespace A330570

/-- `∑[A097988(n+1)]` -/
def P4787655315913449441.Spec : Prop :=
  ∀ n, P4787655315913449441.a n = A330570 (n + 1)

end A330570

/-! ## A330570.P13425776671874545466

`∑[A007425(n+1)²]`
-/

namespace A330570.P13425776671874545466
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007425 (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A330570.P13425776671874545466

namespace A330570

/-- `∑[A007425(n+1)²]` -/
def P13425776671874545466.Spec : Prop :=
  ∀ n, P13425776671874545466.a n = A330570 (n + 1)

end A330570

/-! ## A330570.P3021753747418518327

`∑[∑{d}[n+1, A000005(#)]²]`
-/

namespace A330570.P3021753747418518327
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ d ∈ Nat.divisors (f2 n), A000005 d) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A330570.P3021753747418518327

namespace A330570

/-- `∑[∑{d}[n+1, A000005(#)]²]` -/
def P3021753747418518327.Spec : Prop :=
  ∀ n, P3021753747418518327.a n = A330570 (n + 1)

end A330570

/-! ## A330570.P6706711424281218889

`∑[(A034718(n+1)/(n+1))²]`
-/

namespace A330570.P6706711424281218889
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A034718 (n + 1) : ℚ) / (n + 1 : ℚ)) ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A330570.P6706711424281218889

namespace A330570

/-- `∑[(A034718(n+1)/(n+1))²]` -/
def P6706711424281218889.Spec : Prop :=
  ∀ n, P6706711424281218889.a n = (A330570 (n + 1) : ℚ)

end A330570

/-! ## A330570.P15343943815637247723

`∑[∏{e}[n+1, A000217(#+1)]²]`
-/

namespace A330570.P15343943815637247723
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∏ p ∈ Nat.primeFactors (f2 n), A000217 (Nat.factorization (f2 n) p + 1)) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A330570.P15343943815637247723

namespace A330570

/-- `∑[∏{e}[n+1, A000217(#+1)]²]` -/
def P15343943815637247723.Spec : Prop :=
  ∀ n, P15343943815637247723.a n = A330570 (n + 1)

end A330570

/-! ## A330570.P802412700103193724

`∑[A000290(∑{d}[n+1, A000005(#)])]`
-/

namespace A330570.P802412700103193724
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000290 (∑ d ∈ Nat.divisors (f2 n), A000005 d).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A330570.P802412700103193724

namespace A330570

/-- `∑[A000290(∑{d}[n+1, A000005(#)])]` -/
def P802412700103193724.Spec : Prop :=
  ∀ n, P802412700103193724.a n = A330570 (n + 1)

end A330570

/-! ## A330570.P12819970887279081033

`∑[∑{d}[n+1, A000005(#)]*A007425(n+1)]`
-/

namespace A330570.P12819970887279081033
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ d ∈ Nat.divisors (f2 n), A000005 d) * A007425 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A330570.P12819970887279081033

namespace A330570

/-- `∑[∑{d}[n+1, A000005(#)]*A007425(n+1)]` -/
def P12819970887279081033.Spec : Prop :=
  ∀ n, P12819970887279081033.a n = A330570 (n + 1)

end A330570

/-! ## A330570.P899559402376153664

`∑[(Δ[A226600(n)]%(2*(n+1)))²]`
-/

namespace A330570.P899559402376153664
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226600 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f2 (n + 1) - f2 n) (2 * (n + 1) : ℤ) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A330570.P899559402376153664

namespace A330570

/-- `∑[(Δ[A226600(n)]%(2*(n+1)))²]` -/
def P899559402376153664.Spec : Prop :=
  ∀ n, P899559402376153664.a n = A330570 (n + 1)

end A330570

/-! ## A330570.P10442837954778812491

`∑[A133700(A003961(n+1))²]`
-/

namespace A330570.P10442837954778812491
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133700 (A003961 (n + 1)).toNat ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A330570.P10442837954778812491

namespace A330570

/-- `∑[A133700(A003961(n+1))²]` -/
def P10442837954778812491.Spec : Prop :=
  ∀ n, P10442837954778812491.a n = A330570 (n + 1)

end A330570

/-! ## A330570.P3540546516175128549

`∑[A145511(A045965(n+1))²]`
-/

namespace A330570.P3540546516175128549
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145511 (A045965 (n + 1)).toNat ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A330570.P3540546516175128549

namespace A330570

/-- `∑[A145511(A045965(n+1))²]` -/
def P3540546516175128549.Spec : Prop :=
  ∀ n, P3540546516175128549.a n = A330570 (n + 1)

end A330570

/-! ## A330570.P11903241350266138821

`∑[A133700(A332818(n+1))²]`
-/

namespace A330570.P11903241350266138821
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133700 (A332818 (n + 1)).toNat ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A330570.P11903241350266138821

namespace A330570

/-- `∑[A133700(A332818(n+1))²]` -/
def P11903241350266138821.Spec : Prop :=
  ∀ n, P11903241350266138821.a n = A330570 (n + 1)

end A330570

/-! ## A330570.P5523874370596066689

`∑[A133700(A064988(n+1))²]`
-/

namespace A330570.P5523874370596066689
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133700 (A064988 (n + 1)).toNat ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A330570.P5523874370596066689

namespace A330570

/-- `∑[A133700(A064988(n+1))²]` -/
def P5523874370596066689.Spec : Prop :=
  ∀ n, P5523874370596066689.a n = A330570 (n + 1)

end A330570

/-! ## A330570.P2974956777172055241

`∑[A133700(A297002(n+1))²]`
-/

namespace A330570.P2974956777172055241
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133700 (A297002 (n + 1)).toNat ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A330570.P2974956777172055241

namespace A330570

/-- `∑[A133700(A297002(n+1))²]` -/
def P2974956777172055241.Spec : Prop :=
  ∀ n, P2974956777172055241.a n = A330570 (n + 1)

end A330570

/-! ## A330570.P8761623286089571364

`∑[A007892(A211437(n+1))]`
-/

namespace A330570.P8761623286089571364
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007892 (A211437 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A330570.P8761623286089571364

namespace A330570

/-- `∑[A007892(A211437(n+1))]` -/
def P8761623286089571364.Spec : Prop :=
  ∀ n, P8761623286089571364.a n = A330570 (n + 1)

end A330570

/-! ## A330570.P10840957415459231342

`∑[A007425(n+1)*A007425(A064614(n+1))]`
-/

namespace A330570.P10840957415459231342
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007425 (n + 1) * A007425 (A064614 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A330570.P10840957415459231342

namespace A330570

/-- `∑[A007425(n+1)*A007425(A064614(n+1))]` -/
def P10840957415459231342.Spec : Prop :=
  ∀ n, P10840957415459231342.a n = A330570 (n + 1)

end A330570

/-! ## A330570.P1126502581998843989

`∑[A145444(A253885(n)+1)²]`
-/

namespace A330570.P1126502581998843989
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145444 (A253885 n + 1).toNat ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A330570.P1126502581998843989

namespace A330570

/-- `∑[A145444(A253885(n)+1)²]` -/
def P1126502581998843989.Spec : Prop :=
  ∀ n, P1126502581998843989.a n = A330570 (n + 1)

end A330570

/-! ## A330570.P17117941654022469370

`∑[A334997(A167614(n+1))²]`
-/

namespace A330570.P17117941654022469370
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334997 (A167614 (n + 1)).toNat ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A330570.P17117941654022469370

namespace A330570

/-- `∑[A334997(A167614(n+1))²]` -/
def P17117941654022469370.Spec : Prop :=
  ∀ n, P17117941654022469370.a n = A330570 (n + 1)

end A330570

/-! ## A330570.P9276158269178853513

`∑[A077592(A034856(n+2))²]`
-/

namespace A330570.P9276158269178853513
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077592 (A034856 (n + 2)).toNat ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A330570.P9276158269178853513

namespace A330570

/-- `∑[A077592(A034856(n+2))²]` -/
def P9276158269178853513.Spec : Prop :=
  ∀ n, P9276158269178853513.a n = A330570 (n + 1)

end A330570

/-! ## A330570.P14587371563368453025

`∑[A388067((n+1)²)²]`
-/

namespace A330570.P14587371563368453025
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A388067 ((n + 1) ^ 2) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A330570.P14587371563368453025

namespace A330570

/-- `∑[A388067((n+1)²)²]` -/
def P14587371563368453025.Spec : Prop :=
  ∀ n, P14587371563368453025.a n = A330570 (n + 1)

end A330570

/-!
# A330571: Square of number of unordered factorizations of n as n = i*j.

The programs for A330571, the canonical program `A330571.P16933197077963525685` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A330571 has offset 1).

The definition of A330571 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A330571.P16933197077963525685

`ceil(∏{e}[n+1, #+1]/2)²`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A330571

/-- `ceil(∏{e}[n+1, #+1]/2)²` -/
def P16933197077963525685.Spec : Prop :=
  ∀ n, P16933197077963525685.a n = A330571 (n + 1)

theorem P16933197077963525685.correct : P16933197077963525685.Spec := by
  intro n
  simp only [A330571, Nat.add_sub_cancel]

end A330571

/-! ## A330571.P6197036296030747349

`round(∏{e}[n+1, #+1]/2)²`
-/

namespace A330571.P6197036296030747349
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (((∏ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p + 1) : ℕ) : ℚ) / 2) ^ 2

end

end A330571.P6197036296030747349

namespace A330571

/-- `round(∏{e}[n+1, #+1]/2)²` -/
def P6197036296030747349.Spec : Prop :=
  ∀ n, P6197036296030747349.a n = A330571 (n + 1)

end A330571

/-! ## A330571.P10880107820532365609

`ceil(∑{d}[n+1, gcd(n, #)]/2)²`
-/

namespace A330571.P10880107820532365609
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((∑ d ∈ Nat.divisors (f1 n), Nat.gcd n d : ℕ) : ℚ) / 2⌉ ^ 2

end

end A330571.P10880107820532365609

namespace A330571

/-- `ceil(∑{d}[n+1, gcd(n, #)]/2)²` -/
def P10880107820532365609.Spec : Prop :=
  ∀ n, P10880107820532365609.a n = A330571 (n + 1)

end A330571

/-! ## A330571.P15186201526635092616

`ceil(∏{e}[n+1, #+1]/2)^2`
-/

namespace A330571.P15186201526635092616
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((∏ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p + 1) : ℕ) : ℚ) / 2⌉ ^ 2

end

end A330571.P15186201526635092616

namespace A330571

/-- `ceil(∏{e}[n+1, #+1]/2)^2` -/
def P15186201526635092616.Spec : Prop :=
  ∀ n, P15186201526635092616.a n = A330571 (n + 1)

theorem P15186201526635092616.correct : P15186201526635092616.Spec := by
  intro n
  simp only [A330571, Nat.add_sub_cancel, A330571.P15186201526635092616.f1, A330571.P15186201526635092616.a, A330571.P16933197077963525685.f1, A330571.P16933197077963525685.a, SequenceMachineLib.memo_apply]

end A330571

/-! ## A330571.P10505880732369387640

`round(∏{e}[n+1, #+1]/2)^2`
-/

namespace A330571.P10505880732369387640
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (((∏ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p + 1) : ℕ) : ℚ) / 2) ^ 2

end

end A330571.P10505880732369387640

namespace A330571

/-- `round(∏{e}[n+1, #+1]/2)^2` -/
def P10505880732369387640.Spec : Prop :=
  ∀ n, P10505880732369387640.a n = A330571 (n + 1)

end A330571

/-! ## A330571.P13798432911746861452

`floor(∑{d}[n+1, ceil(2/#)]/2)²`
-/

namespace A330571.P13798432911746861452
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((∑ d ∈ Nat.divisors (f1 n), ⌈2 / (d : ℚ)⌉ : ℤ) : ℚ) / 2⌋ ^ 2

end

end A330571.P13798432911746861452

namespace A330571

/-- `floor(∑{d}[n+1, ceil(2/#)]/2)²` -/
def P13798432911746861452.Spec : Prop :=
  ∀ n, P13798432911746861452.a n = A330571 (n + 1)

end A330571

/-! ## A330571.P10005503814303695222

`ceil(∑{d}[n+1, ceil(root(2, #))]/4)²`
-/

namespace A330571.P10005503814303695222
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((∑ d ∈ Nat.divisors (f1 n), ⌈(2 : ℝ) ^ (1 / (d : ℝ))⌉ : ℤ) : ℚ) / 4⌉ ^ 2

end

end A330571.P10005503814303695222

namespace A330571

/-- `ceil(∑{d}[n+1, ceil(root(2, #))]/4)²` -/
def P10005503814303695222.Spec : Prop :=
  ∀ n, P10005503814303695222.a n = A330571 (n + 1)

end A330571

/-! ## A330571.P10522790760517073077

`floor((∏{e}[n+1, #+1]+1)/2)²`
-/

namespace A330571.P10522790760517073077
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((∏ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p + 1) + 1 : ℕ) : ℚ) / 2⌋ ^ 2

end

end A330571.P10522790760517073077

namespace A330571

/-- `floor((∏{e}[n+1, #+1]+1)/2)²` -/
def P10522790760517073077.Spec : Prop :=
  ∀ n, P10522790760517073077.a n = A330571 (n + 1)

end A330571

/-! ## A330571.P9660010837406083003

`A038548(n+1)²`
-/

namespace A330571.P9660010837406083003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038548 (n + 1) ^ 2

end

end A330571.P9660010837406083003

namespace A330571

/-- `A038548(n+1)²` -/
def P9660010837406083003.Spec : Prop :=
  ∀ n, P9660010837406083003.a n = A330571 (n + 1)

end A330571

/-! ## A330571.P5466938028819926326

`(A072670(n)+1)²`
-/

namespace A330571.P5466938028819926326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A072670 n + 1) ^ 2

end

end A330571.P5466938028819926326

namespace A330571

/-- `(A072670(n)+1)²` -/
def P5466938028819926326.Spec : Prop :=
  ∀ n, P5466938028819926326.a n = A330571 (n + 1)

end A330571

/-! ## A330571.P794856454830792886

`Δ[A132106(n)/2]²`
-/

namespace A330571.P794856454830792886
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A132106 n : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) ^ 2

end

end A330571.P794856454830792886

namespace A330571

/-- `Δ[A132106(n)/2]²` -/
def P794856454830792886.Spec : Prop :=
  ∀ n, P794856454830792886.a n = (A330571 (n + 1) : ℚ)

end A330571

/-! ## A330571.P15077275904606793336

`(A161841(n+1)/2)²`
-/

namespace A330571.P15077275904606793336
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A161841 (n + 1) : ℚ) / 2) ^ 2

end

end A330571.P15077275904606793336

namespace A330571

/-- `(A161841(n+1)/2)²` -/
def P15077275904606793336.Spec : Prop :=
  ∀ n, P15077275904606793336.a n = (A330571 (n + 1) : ℚ)

end A330571

/-! ## A330571.P9133541867524019860

`floor(sqrt(A337174(n+1)))²`
-/

namespace A330571.P9133541867524019860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A337174 (n + 1)) ^ 2

end

end A330571.P9133541867524019860

namespace A330571

/-- `floor(sqrt(A337174(n+1)))²` -/
def P9133541867524019860.Spec : Prop :=
  ∀ n, P9133541867524019860.a n = A330571 (n + 1)

end A330571

/-! ## A330571.P14115224383851228506

`ceil(A000005(n+1)/2)²`
-/

namespace A330571.P14115224383851228506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A000005 (n + 1) : ℚ) / 2⌉ ^ 2

end

end A330571.P14115224383851228506

namespace A330571

/-- `ceil(A000005(n+1)/2)²` -/
def P14115224383851228506.Spec : Prop :=
  ∀ n, P14115224383851228506.a n = A330571 (n + 1)

end A330571

/-! ## A330571.P1257112798437849253

`(A060872(n+1)/(n+1))²`
-/

namespace A330571.P1257112798437849253
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A060872 (n + 1) : ℚ) / (n + 1 : ℚ)) ^ 2

end

end A330571.P1257112798437849253

namespace A330571

/-- `(A060872(n+1)/(n+1))²` -/
def P1257112798437849253.Spec : Prop :=
  ∀ n, P1257112798437849253.a n = (A330571 (n + 1) : ℚ)

end A330571

/-! ## A330571.P836996866386489478

`A000463(A161841(n+1))`
-/

namespace A330571.P836996866386489478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000463 (A161841 (n + 1)).toNat

end

end A330571.P836996866386489478

namespace A330571

/-- `A000463(A161841(n+1))` -/
def P836996866386489478.Spec : Prop :=
  ∀ n, P836996866386489478.a n = A330571 (n + 1)

end A330571

/-! ## A330571.P11178817850341834717

`A051494(A161840(n+1))`
-/

namespace A330571.P11178817850341834717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051494 (A161840 (n + 1)).toNat

end

end A330571.P11178817850341834717

namespace A330571

/-- `A051494(A161840(n+1))` -/
def P11178817850341834717.Spec : Prop :=
  ∀ n, P11178817850341834717.a n = A330571 (n + 1)

end A330571

/-! ## A330571.P7972867856961510136

`A008794(A334954(n+1))`
-/

namespace A330571.P7972867856961510136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008794 (A334954 (n + 1)).toNat

end

end A330571.P7972867856961510136

namespace A330571

/-- `A008794(A334954(n+1))` -/
def P7972867856961510136.Spec : Prop :=
  ∀ n, P7972867856961510136.a n = A330571 (n + 1)

end A330571

/-! ## A330571.P38209883083432734

`A048760(A337174(n+1))`
-/

namespace A330571.P38209883083432734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048760 (A337174 (n + 1)).toNat

end

end A330571.P38209883083432734

namespace A330571

/-- `A048760(A337174(n+1))` -/
def P38209883083432734.Spec : Prop :=
  ∀ n, P38209883083432734.a n = A330571 (n + 1)

end A330571

/-! ## A330571.P14655685813995588335

`A133819(A348161(n+1))`
-/

namespace A330571.P14655685813995588335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133819 (A348161 (n + 1)).toNat

end

end A330571.P14655685813995588335

namespace A330571

/-- `A133819(A348161(n+1))` -/
def P14655685813995588335.Spec : Prop :=
  ∀ n, P14655685813995588335.a n = A330571 (n + 1)

end A330571

/-!
# A330572: a(n) = Sum_{k = 1..n} [u_2(k)*u_2(n+1-k)], where u_2(k) is the number of unordered factorizations k = i*j (A038548).

The programs for A330572, there is no canonical definition to state claims against.
-/

/-! ## A330572.P5463216185216521164

`A338671(n+1)+A212597(n+1)`
-/

namespace A330572.P5463216185216521164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338671 (n + 1) + A212597 (n + 1)

end

end A330572.P5463216185216521164

/-! ## A330572.P16641079898585400206

`A110654(A183063(n+1))+2*A212597(n+1)`
-/

namespace A330572.P16641079898585400206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (A183063 (n + 1)).toNat + 2 * A212597 (n + 1)

end

end A330572.P16641079898585400206

/-! ## A330572.P7696927035388470654

`2*A338671(n+1)-A110654(A183063(n+1))`
-/

namespace A330572.P7696927035388470654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A338671 (n + 1) - A110654 (A183063 (n + 1)).toNat

end

end A330572.P7696927035388470654

/-! ## A330572.P11006735658060405852

`A212597(n+1)+A212597(n+1)+A034178(2*(n+1))`
-/

namespace A330572.P11006735658060405852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212597 (n + 1) + (A212597 (n + 1) + A034178 (2 * (n + 1)))

end

end A330572.P11006735658060405852

/-! ## A330572.P8626398750020627295

`A338671(n+1)+A338671(n+1)-A034178(2*(n+1))`
-/

namespace A330572.P8626398750020627295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338671 (n + 1) + (A338671 (n + 1) - A034178 (2 * (n + 1)))

end

end A330572.P8626398750020627295

/-!
# A330573: a(n) = Sum_{k = 1..ceiling(n/2)} [u_2(k)*u_2(n+1-k)], where u_2(k) is number of unordered factorization k = i*j (A038548).

The programs for A330573, there is no canonical definition to state claims against.
-/

/-! ## A330573.P6648658432318705848

`A212597(n+1)+C(A110654(A183063(n+1))+1, 2)`
-/

namespace A330573.P6648658432318705848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212597 (n + 1) + (Nat.choose (A110654 (A183063 (n + 1)).toNat + 1).toNat 2 : ℤ)

end

end A330573.P6648658432318705848

/-! ## A330573.P9591804228114555542

`A212597(n+1)+A000217(A034178(2*(n+1)))`
-/

namespace A330573.P9591804228114555542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212597 (n + 1) + A000217 (A034178 (2 * (n + 1))).toNat

end

end A330573.P9591804228114555542

/-! ## A330573.P2806839644937356357

`A338671(n+1)+A330551(A265390(n+1))`
-/

namespace A330573.P2806839644937356357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338671 (n + 1) + A330551 (A265390 (n + 1)).toNat

end

end A330573.P2806839644937356357

/-! ## A330573.P583875716062268144

`A330551(A265390(n+1))+A330572(n)-A212597(n+1)`
-/

namespace A330573.P583875716062268144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330551 (A265390 (n + 1)).toNat + (A330572 n - A212597 (n + 1))

end

end A330573.P583875716062268144

/-! ## A330573.P4532457204131966574

`A330551(A265390(n+1))+A212597(n+1)+A034178(2*(n+1))`
-/

namespace A330573.P4532457204131966574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330551 (A265390 (n + 1)).toNat + (A212597 (n + 1) + A034178 (2 * (n + 1)))

end

end A330573.P4532457204131966574

/-!
# A330574: a(n) = r_2(n)^2*d(n+1), where r_2 = A004018, d = A000005.

The programs for A330574, there is no canonical definition to state claims against.
-/

/-! ## A330574.P17282741803937996071

`A004018(n)²*Δ[A054519(n)]`
-/

namespace A330574.P17282741803937996071
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054519 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004018 n ^ 2 * (f1 (n + 1) - f1 n)

end

end A330574.P17282741803937996071

/-! ## A330574.P11494682329627236015

`A004018(n)²*A000005(n+1)`
-/

namespace A330574.P11494682329627236015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004018 n ^ 2 * A000005 (n + 1)

end

end A330574.P11494682329627236015

/-! ## A330574.P7848513824390055807

`A004018(n)²*A069733(n+1)`
-/

namespace A330574.P7848513824390055807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004018 n ^ 2 * A069733 (n + 1)

end

end A330574.P7848513824390055807

/-! ## A330574.P10871041023450881718

`A104794(n)²*A000005(n+1)`
-/

namespace A330574.P10871041023450881718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104794 n ^ 2 * A000005 (n + 1)

end

end A330574.P10871041023450881718

/-! ## A330574.P4567380659857833261

`∑{d}[n+1, (A004018(n)%A118886(#))²]`
-/

namespace A330574.P4567380659857833261
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), Int.tmod (A004018 n) (A118886 d) ^ 2

end

end A330574.P4567380659857833261

/-! ## A330574.P7321829879908168682

`A134014(4*n)²*A000005(n+1)`
-/

namespace A330574.P7321829879908168682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134014 (4 * n) ^ 2 * A000005 (n + 1)

end

end A330574.P7321829879908168682

/-! ## A330574.P10647004354863473906

`∏{e}[A338506(n+1), #*A004018(n)²]`
-/

namespace A330574.P10647004354863473906
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338506 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, (Nat.factorization (f1 n).natAbs p : ℤ) * A004018 n ^ 2

end

end A330574.P10647004354863473906

/-!
# A330575: a(n) = n + Sum_{d|n and d1; a(1) = 1.

The programs for A330575, there is no canonical definition to state claims against.
-/

/-! ## A330575.P14549901691095538820

`n+1+A255242(n+1)`
-/

namespace A330575.P14549901691095538820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) + A255242 (n + 1)

end

end A330575.P14549901691095538820

/-! ## A330575.P7817302034596435433

`ceil((A191161(n+1)+n)/2)`
-/

namespace A330575.P7817302034596435433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A191161 (n + 1) + (n : ℤ) : ℚ) / 2⌉

end

end A330575.P7817302034596435433

/-! ## A330575.P5599625026447689113

`(n+1)*∑{d}[n+1, A074206(#)/#]`
-/

namespace A330575.P5599625026447689113
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) * (∑ d ∈ Nat.divisors (f1 n), (A074206 d : ℚ) / (d : ℚ))

end

end A330575.P5599625026447689113

/-! ## A330575.P1696082685605832453

`∑{d}[n+1, #*A002033((n+1)/#-1)]`
-/

namespace A330575.P1696082685605832453
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * A002033 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ) - 1)).toNat

end

end A330575.P1696082685605832453

/-! ## A330575.P8239947223979220516

`∑{d}[n+1, A000010(#)*A067824((n+1)/#)]`
-/

namespace A330575.P8239947223979220516
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000010 d * A067824 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A330575.P8239947223979220516

/-! ## A330575.P10704638896900108345

`∑{d}[n+1, A000203(#)*A174725((n+1)/#)]`
-/

namespace A330575.P10704638896900108345
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000203 d * A174725 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A330575.P10704638896900108345

/-! ## A330575.P12319427074509018242

`∑{d}[n+1, A008683(#)*A191161((n+1)/#)]`
-/

namespace A330575.P12319427074509018242
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008683 d * A191161 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A330575.P12319427074509018242

/-! ## A330575.P2143916887868915185

`∑{d}[n+1, A007431(#)*A253249((n+1)/#)]`
-/

namespace A330575.P2143916887868915185
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A007431 d * A253249 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A330575.P2143916887868915185

/-! ## A330575.P277854033999736632

`∑{d}[n+1, A018804(#)*A323912((n+1)/#)]`
-/

namespace A330575.P277854033999736632
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A018804 d * A323912 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A330575.P277854033999736632

/-! ## A330575.P1781349785713224581

`∑{d}[n+1, A038040(#)*A323910((n+1)/#)]`
-/

namespace A330575.P1781349785713224581
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A038040 d * A323910 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A330575.P1781349785713224581

/-! ## A330575.P18093563896165653630

`∑{d}[n+1, A060640(#)*A378432((n+1)/#)]`
-/

namespace A330575.P18093563896165653630
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A060640 d * A378432 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A330575.P18093563896165653630

/-! ## A330575.P16980327157502695978

`∑{d}[n+1, A062570(#)*A378223((n+1)/#)]`
-/

namespace A330575.P16980327157502695978
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A062570 d * A378223 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A330575.P16980327157502695978

/-! ## A330575.P15923381098751972513

`∑{d}[n+1, A346246(#)*A347136((n+1)/#)]`
-/

namespace A330575.P15923381098751972513
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A346246 d * A347136 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A330575.P15923381098751972513

/-! ## A330575.P9949079839474403850

`∑{d}[n+1, A378646(#)*A378647((n+1)/#)]`
-/

namespace A330575.P9949079839474403850
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A378646 d * A378647 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A330575.P9949079839474403850

/-! ## A330575.P11173886077133460967

`∑{d}[n+1, A000203(#)*A174726((n+1)/#)]+1+n`
-/

namespace A330575.P11173886077133460967
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000203 d * A174726 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat + 1 + (n : ℤ)

end

end A330575.P11173886077133460967

/-! ## A330575.P11367860804443205795

`A025480(A191161(n+1)+1+n)`
-/

namespace A330575.P11367860804443205795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025480 (A191161 (n + 1) + 1 + (n : ℤ)).toNat

end

end A330575.P11367860804443205795

/-! ## A330575.P13368585273536782358

`A008624(2*(A191161(n+1)+n))`
-/

namespace A330575.P13368585273536782358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008624 (2 * (A191161 (n + 1) + (n : ℤ))).toNat

end

end A330575.P13368585273536782358

/-! ## A330575.P8755089421999922040

`∑{d}[n+1, A317100(#)*A349569((n+1)/#)]`
-/

namespace A330575.P8755089421999922040
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A317100 d * A349569 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A330575.P8755089421999922040

/-!
# A330578: a(n) is the remainder when the sum of the first n composite numbers is divided by the n-th composite number.

The programs for A330578, the canonical program `A330578.P18419266173771204815` is in `Seq.B004.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A330578 has offset 1).

The definition of A330578 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A330578.P18419266173771204815

`A053767(n)%Δ[A053767(n)]`

The canonical program, it is in `Seq.B004.C003`.
-/

namespace A330578

/-- `A053767(n)%Δ[A053767(n)]` -/
def P18419266173771204815.Spec : Prop :=
  ∀ n, P18419266173771204815.a n = A330578 (n + 1)

theorem P18419266173771204815.correct : P18419266173771204815.Spec := by
  intro n
  simp only [A330578, Nat.add_sub_cancel]

end A330578

/-! ## A330578.P17971817208723466621

`A053767(n+1)%comp[A351078(n)]`
-/

namespace A330578.P17971817208723466621
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351078 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A053767 (n + 1)) (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ)

end

end A330578.P17971817208723466621

namespace A330578

/-- `A053767(n+1)%comp[A351078(n)]` -/
def P17971817208723466621.Spec : Prop :=
  ∀ n, P17971817208723466621.a n = A330578 (n + 1)

end A330578

/-! ## A330578.P17072275177614805197

`∑[A002808(n+1)]%A002808(n+1)`
-/

namespace A330578.P17072275177614805197
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002808 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) (A002808 (n + 1))

end

end A330578.P17072275177614805197

namespace A330578

/-- `∑[A002808(n+1)]%A002808(n+1)` -/
def P17072275177614805197.Spec : Prop :=
  ∀ n, P17072275177614805197.a n = A330578 (n + 1)

end A330578

/-! ## A330578.P15574948240077922466

`∑[A018252(n+2)]%A018252(n+2)`
-/

namespace A330578.P15574948240077922466
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) (A018252 (n + 2))

end

end A330578.P15574948240077922466

namespace A330578

/-- `∑[A018252(n+2)]%A018252(n+2)` -/
def P15574948240077922466.Spec : Prop :=
  ∀ n, P15574948240077922466.a n = A330578 (n + 1)

end A330578

/-! ## A330578.P13030216296272720192

`∑[A141468(n+3)]%A141468(n+3)`
-/

namespace A330578.P13030216296272720192
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141468 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) (A141468 (n + 3))

end

end A330578.P13030216296272720192

namespace A330578

/-- `∑[A141468(n+3)]%A141468(n+3)` -/
def P13030216296272720192.Spec : Prop :=
  ∀ n, P13030216296272720192.a n = A330578 (n + 1)

end A330578

/-! ## A330578.P11470104069334515534

`∑[A072668(n+1)+1]%(A072668(n+1)+1)`
-/

namespace A330578.P11470104069334515534
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072668 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) (A072668 (n + 1) + 1)

end

end A330578.P11470104069334515534

namespace A330578

/-- `∑[A072668(n+1)+1]%(A072668(n+1)+1)` -/
def P11470104069334515534.Spec : Prop :=
  ∀ n, P11470104069334515534.a n = A330578 (n + 1)

end A330578

/-! ## A330578.P2980981929732660614

`∑[A079696(n+1)-1]%(A079696(n+1)-1)`
-/

namespace A330578.P2980981929732660614
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079696 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) (A079696 (n + 1) - 1)

end

end A330578.P2980981929732660614

namespace A330578

/-- `∑[A079696(n+1)-1]%(A079696(n+1)-1)` -/
def P2980981929732660614.Spec : Prop :=
  ∀ n, P2980981929732660614.a n = A330578 (n + 1)

end A330578

/-! ## A330578.P12346117032892140795

`∑[A060462(n+2)+1]%(A060462(n+2)+1)`
-/

namespace A330578.P12346117032892140795
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060462 (n + 2) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) (A060462 (n + 2) + 1)

end

end A330578.P12346117032892140795

namespace A330578

/-- `∑[A060462(n+2)+1]%(A060462(n+2)+1)` -/
def P12346117032892140795.Spec : Prop :=
  ∀ n, P12346117032892140795.a n = A330578 (n + 1)

end A330578

/-! ## A330578.P4311601063805509739

`∑[A065090(n+3)]%A065090(n+3)`
-/

namespace A330578.P4311601063805509739
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065090 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) (A065090 (n + 3))

end

end A330578.P4311601063805509739

namespace A330578

/-- `∑[A065090(n+3)]%A065090(n+3)` -/
def P4311601063805509739.Spec : Prop :=
  ∀ n, P4311601063805509739.a n = A330578 (n + 1)

end A330578

/-!
# A330579: Numbers k such that the k-th composite number divides the sum of the first k composite numbers.

The programs for A330579, there is no canonical definition to state claims against.
-/

/-! ## A330579.P13730702141564414116

`A065855(A330580(n+1))`
-/

namespace A330579.P13730702141564414116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065855 (A330580 (n + 1)).toNat

end

end A330579.P13730702141564414116

/-!
# A330580: Composite numbers n that divide the sum of all composite numbers <= n.

The programs for A330580, there is no canonical definition to state claims against.
-/

/-! ## A330580.P4367003366704350849

`A002808(A330579(n+1))`
-/

namespace A330580.P4367003366704350849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002808 (A330579 (n + 1)).toNat

end

end A330580.P4367003366704350849

/-!
# A330581: a(0) = 2; thereafter a(n) = a(n - 1)^n + 1.

The programs for A330581, the canonical program `A330581.P914950665868457275` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A330581 has offset 0).

The definition of A330581 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-1)^n+1` (program `A330581.P914950665868457275`, by `A330581.P914950665868457275.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A330581.P7458261174920166397

`1+a(n-1)^n` with `a(0)=2`
-/

namespace A330581.P7458261174920166397
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [2] fun n a =>
  1 + a (n - 1) ^ n

end

end A330581.P7458261174920166397

namespace A330581

/-- `1+a(n-1)^n` -/
def P7458261174920166397.Spec : Prop :=
  ∀ n, (P7458261174920166397.a n : ℤ) = A330581 n

theorem P7458261174920166397.correct : P7458261174920166397.Spec := by
  intro n
  simp only [A330581, Nat.add_sub_cancel, A330581.P7458261174920166397.a, A330581.P914950665868457275.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A330581

/-! ## A330581.P914950665868457275

`a(n-1)^n+1` with `a(0)=2`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A330581

/-- `a(n-1)^n+1` -/
def P914950665868457275.Spec : Prop :=
  ∀ n, (P914950665868457275.a n : ℤ) = A330581 n

theorem P914950665868457275.correct : P914950665868457275.Spec := by
  intro n
  simp only [A330581]

end A330581

/-!
# A330583: The orders, with repetition, of the non-cyclic finite simple groups whose orders are 23-smooth.

The programs for A330583, there is no canonical definition to state claims against.
-/

/-! ## A330583.P15874754346837409741

`A109379(or(n+1, ∑[A230915(n+1)!]))`
-/

namespace A330583.P15874754346837409741
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A230915 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109379 (Nat.lor (n + 1) (∑ j ∈ Finset.range (n + 1), f1 j))

end

end A330583.P15874754346837409741

/-!
# A330584: The orders, with repetition, of the non-cyclic finite simple groups that are subquotients of the automorphism groups of sublattices of the Leech lattice.

The programs for A330584, there is no canonical definition to state claims against.
-/

/-! ## A330584.P3188381178696721768

`lcm(A260651(n+2), A330586(n+1))`
-/

namespace A330584.P3188381178696721768
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A260651 (n + 2)) (A330586 (n + 1))

end

end A330584.P3188381178696721768

/-! ## A330584.P6536635226397055721

`A330586(n+1)%A296025(n+1)²`
-/

namespace A330584.P6536635226397055721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A330586 (n + 1)) (A296025 (n + 1) ^ 2)

end

end A330584.P6536635226397055721

/-! ## A330584.P2966021702927023839

`A330586(n+1)+A330598(n+1)%2`
-/

namespace A330584.P2966021702927023839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330586 (n + 1) + Int.tmod (A330598 (n + 1)) 2

end

end A330584.P2966021702927023839

/-! ## A330584.P3619442253670322066

`A330586(n+1)+A185284(A185284(n))`
-/

namespace A330584.P3619442253670322066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330586 (n + 1) + A185284 (A185284 n).toNat

end

end A330584.P3619442253670322066

/-! ## A330584.P3009716807148141727

`A330586(n+1)+A000035(A231108(n+1))`
-/

namespace A330584.P3009716807148141727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330586 (n + 1) + A000035 (A231108 (n + 1)).toNat

end

end A330584.P3009716807148141727

/-!
# A330585: The orders, with repetition, of the non-cyclic finite simple groups that are subquotients of the sporadic finite simple groups.

The programs for A330585, there is no canonical definition to state claims against.
-/

/-! ## A330585.P11976953507038117559

`A001034(∑[A158465(n+1)!])`
-/

namespace A330585.P11976953507038117559
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A158465 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001034 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A330585.P11976953507038117559

/-! ## A330585.P13922181932927145443

`A109379(∑[A158465(n+1)!])`
-/

namespace A330585.P13922181932927145443
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A158465 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109379 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A330585.P13922181932927145443

/-!
# A330588: a(n) is the first index m such that A330439(m) = n.

The programs for A330588, there is no canonical definition to state claims against.
-/

/-! ## A330588.P261840604975360884

`A330587(∑[n]+1)`
-/

namespace A330588.P261840604975360884
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330587 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A330588.P261840604975360884

/-! ## A330588.P9810576093100611292

`record[A330587(A134519(n+1))]`
-/

namespace A330588.P9810576093100611292
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330587 (A134519 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A330588.P9810576093100611292

/-! ## A330588.P3293317621060521429

`A330587(A000124(n))%(n+1)²`
-/

namespace A330588.P3293317621060521429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A330587 (A000124 n).toNat) ((n + 1) ^ 2 : ℤ)

end

end A330588.P3293317621060521429

/-! ## A330588.P9779495643352366147

`and(A057428(n), A330587(A000124(n)))`
-/

namespace A330588.P9779495643352366147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A057428 n) (A330587 (A000124 n).toNat)

end

end A330588.P9779495643352366147

/-! ## A330588.P1570524367030250565

`A263845(2*n)*A330587(A000124(n))`
-/

namespace A330588.P1570524367030250565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263845 (2 * n) * A330587 (A000124 n).toNat

end

end A330588.P1570524367030250565

/-! ## A330588.P2424568301731795573

`A057427(n)*A330587(Δ[A000292(n)]-n)`
-/

namespace A330588.P2424568301731795573
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000292 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n * A330587 (f1 (n + 1) - f1 n - (n : ℤ)).toNat

end

end A330588.P2424568301731795573

/-! ## A330588.P6871716938018485350

`A330587(Δ[A000292(n)]-n)%A330570(n+1)`
-/

namespace A330588.P6871716938018485350
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000292 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A330587 (f1 (n + 1) - f1 n - (n : ℤ)).toNat) (A330570 (n + 1))

end

end A330588.P6871716938018485350

/-!
# A330589: The n-th index m such that A330439(m) = n.

The programs for A330589, there is no canonical definition to state claims against.
-/

/-! ## A330589.P7089459280670565347

`A330587(∑[4*n]+1)`
-/

namespace A330589.P7089459280670565347
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330587 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A330589.P7089459280670565347

/-! ## A330589.P12354123781822378730

`and(-1, A330587(A001844(n)))`
-/

namespace A330589.P12354123781822378730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A330587 (A001844 n).toNat)

end

end A330589.P12354123781822378730

/-! ## A330589.P7365025188622380970

`Δ[A330587(A001844(n-1))+a(n-1)]` with `a(0)=1`
-/

namespace A330589.P7365025188622380970
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  A330587 (A001844 (n - 1)).toNat + f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A330589.P7365025188622380970

/-! ## A330589.P3398265059728313039

`∑{d}[A330587(A001844(n)), A000010(#)]`
-/

namespace A330589.P3398265059728313039
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330587 (A001844 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 d

end

end A330589.P3398265059728313039

/-! ## A330589.P17354842170251937157

`char[A091205(n)]*A330587(A001844(n))`
-/

namespace A330589.P17354842170251937157
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091205 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A330587 (A001844 n).toNat

end

end A330589.P17354842170251937157

/-! ## A330589.P1403515539132433860

`A330587(A001844(n))%∑[A016969(n)]`
-/

namespace A330589.P1403515539132433860
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016969 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A330587 (A001844 n).toNat) (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A330589.P1403515539132433860

/-! ## A330589.P6015608028490165119

`A330587(A001844(n))+A000007(n+1)`
-/

namespace A330589.P6015608028490165119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330587 (A001844 n).toNat + A000007 (n + 1)

end

end A330589.P6015608028490165119

/-! ## A330589.P6760524041346996491

`A330587(A001844(n))+A000035(2*n)`
-/

namespace A330589.P6760524041346996491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330587 (A001844 n).toNat + A000035 (2 * n)

end

end A330589.P6760524041346996491

/-! ## A330589.P3449052481096689532

`A007318(C(2, n))*A330587(A001844(n))`
-/

namespace A330589.P3449052481096689532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * A330587 (A001844 n).toNat

end

end A330589.P3449052481096689532

/-! ## A330589.P4602315208867414528

`abs(A034947(n+1)*A330587(A001844(n)))`
-/

namespace A330589.P4602315208867414528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A034947 (n + 1) * A330587 (A001844 n).toNat|

end

end A330589.P4602315208867414528

/-! ## A330589.P2737743343623263752

`A330587(A001844(n))/(A000041(n)%2)!`
-/

namespace A330589.P2737743343623263752
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A330587 (A001844 n).toNat : ℚ) / (Nat.factorial (Int.tmod (A000041 n) 2).toNat : ℚ)

end

end A330589.P2737743343623263752

/-! ## A330589.P17832226257255829777

`A330587(A001844(n))+A008683(4*(n+1))`
-/

namespace A330589.P17832226257255829777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330587 (A001844 n).toNat + A008683 (4 * (n + 1))

end

end A330589.P17832226257255829777

/-! ## A330589.P716950924244968382

`A000040(n+1)%2*A330587(A001844(n))`
-/

namespace A330589.P716950924244968382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000040 (n + 1)) 2 * A330587 (A001844 n).toNat

end

end A330589.P716950924244968382

/-! ## A330589.P12432894395913093960

`A330601(A218380(n))+A330587(A001844(n))`
-/

namespace A330589.P12432894395913093960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330601 (A218380 n).toNat + A330587 (A001844 n).toNat

end

end A330589.P12432894395913093960

/-! ## A330589.P6019295773471470848

`A014963(A016825(n))*A330587(A001844(n))`
-/

namespace A330589.P6019295773471470848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A016825 n).toNat * A330587 (A001844 n).toNat

end

end A330589.P6019295773471470848

/-! ## A330589.P9369934222127605889

`A007318(A051343(n))*A330587(A001844(n))`
-/

namespace A330589.P9369934222127605889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (A051343 n).toNat * A330587 (A001844 n).toNat

end

end A330589.P9369934222127605889

/-! ## A330589.P15438924435231563874

`A014963(A124388(n))*A330587(A001844(n))`
-/

namespace A330589.P15438924435231563874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A124388 n).toNat * A330587 (A001844 n).toNat

end

end A330589.P15438924435231563874

/-! ## A330589.P5611162671348861036

`A001222(A049591(n+1))*A330587(A001844(n))`
-/

namespace A330589.P5611162671348861036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A049591 (n + 1)).toNat * A330587 (A001844 n).toNat

end

end A330589.P5611162671348861036

/-! ## A330589.P698222626808223619

`A225245(A015919(n+1))*A330587(A001844(n))`
-/

namespace A330589.P698222626808223619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225245 (A015919 (n + 1)).toNat * A330587 (A001844 n).toNat

end

end A330589.P698222626808223619

/-!
# A330590: Triangle read by rows: T(n,k) is the number of positive integers m dividing x^n - x^k for all integers x, 0 < k < n.

The programs for A330590, there is no canonical definition to state claims against.
-/

/-! ## A330590.P11595267128591032332

`A000005(A330541(n+2))`
-/

namespace A330590.P11595267128591032332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A330541 (n + 2)).toNat

end

end A330590.P11595267128591032332

/-! ## A330590.P18244682664224669825

`∑{d}[A330541(n+2), gcd(#, A033999(n))]`
-/

namespace A330590.P18244682664224669825
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330541 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, Int.gcd (d : ℤ) (A033999 n)

end

end A330590.P18244682664224669825

/-! ## A330590.P11281368811155235645

`∑{d}[A330541(n+2), A228710(A001222(#))]`
-/

namespace A330590.P11281368811155235645
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330541 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A228710 (A001222 d).toNat

end

end A330590.P11281368811155235645

/-! ## A330590.P13733384997340188746

`∑{d}[A330541(n+2), A054977(A000010(#))]`
-/

namespace A330590.P13733384997340188746
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330541 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A054977 (A000010 d).toNat

end

end A330590.P13733384997340188746

/-! ## A330590.P18403792562648959915

`∑{d}[A330541(n+2), A054977(#)]`
-/

namespace A330590.P18403792562648959915
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330541 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A054977 d

end

end A330590.P18403792562648959915

/-! ## A330590.P7854614141685375930

`∑{d}[A330541(n+2), A033999(#)²]`
-/

namespace A330590.P7854614141685375930
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330541 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A033999 d ^ 2

end

end A330590.P7854614141685375930

/-! ## A330590.P8461101469482586896

`∑{d}[A330541(n+2), A033999(2*#)]`
-/

namespace A330590.P8461101469482586896
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330541 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A033999 (2 * d)

end

end A330590.P8461101469482586896

/-! ## A330590.P489350353550730601

`∑{d}[A330541(n+2), A014963(A016825(#))]`
-/

namespace A330590.P489350353550730601
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330541 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A014963 (A016825 d).toNat

end

end A330590.P489350353550730601

/-!
# A330591: Number of Collatz steps to reach 1 starting from 6^n + 1.

The programs for A330591, there is no canonical definition to state claims against.
-/

/-! ## A330591.P15219996973529182402

`A179118(3*(n+1))-3*(n+1)`
-/

namespace A330591.P15219996973529182402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179118 (3 * (n + 1)) - (3 * (n + 1) : ℤ)

end

end A330591.P15219996973529182402

/-!
# A330592: a(n) is the number of subsets of {1,2,...,n} that contain exactly two odd numbers.

The programs for A330592, the canonical program `A330592.P16907764777129258567` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A330592 has offset 1).

The definition of A330592 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A330592.P16907764777129258567

`6*a(n-2)-12*a(n-4)+8*a(n-6)` with `a(0)=0, a(1)=0, a(2)=2, a(3)=4, a(4)=12, a(5)=24`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A330592

/-- `6*a(n-2)-12*a(n-4)+8*a(n-6)` -/
def P16907764777129258567.Spec : Prop :=
  ∀ n, P16907764777129258567.a n = A330592 (n + 1)

theorem P16907764777129258567.correct : P16907764777129258567.Spec := by
  intro n
  simp only [A330592, Nat.add_sub_cancel]

end A330592

/-! ## A330592.P6375540238541547449

`∑[A142150(n)]*A060546(n)`
-/

namespace A330592.P6375540238541547449
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142150 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A060546 n

end

end A330592.P6375540238541547449

namespace A330592

/-- `∑[A142150(n)]*A060546(n)` -/
def P6375540238541547449.Spec : Prop :=
  ∀ n, P6375540238541547449.a n = A330592 (n + 1)

end A330592

/-! ## A330592.P7564648523029545423

`A052928(n+1)*A349050(n)`
-/

namespace A330592.P7564648523029545423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052928 (n + 1) * A349050 n

end

end A330592.P7564648523029545423

namespace A330592

/-- `A052928(n+1)*A349050(n)` -/
def P7564648523029545423.Spec : Prop :=
  ∀ n, P7564648523029545423.a n = A330592 (n + 1)

end A330592

/-! ## A330592.P8050749725537034495

`A131055(n+1)*A349050(n)`
-/

namespace A330592.P8050749725537034495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131055 (n + 1) * A349050 n

end

end A330592.P8050749725537034495

namespace A330592

/-- `A131055(n+1)*A349050(n)` -/
def P8050749725537034495.Spec : Prop :=
  ∀ n, P8050749725537034495.a n = A330592 (n + 1)

end A330592

/-! ## A330592.P4302386886646534220

`A171647(n+1)/2*A004526(n)`
-/

namespace A330592.P4302386886646534220
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A171647 (n + 1) : ℚ) / 2 * (A004526 n : ℚ)

end

end A330592.P4302386886646534220

namespace A330592

/-- `A171647(n+1)/2*A004526(n)` -/
def P4302386886646534220.Spec : Prop :=
  ∀ n, P4302386886646534220.a n = (A330592 (n + 1) : ℚ)

end A330592

/-! ## A330592.P14773302939859479740

`∑[n-A026741(n)]*A016116(n+1)`
-/

namespace A330592.P14773302939859479740
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A026741 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A016116 (n + 1)

end

end A330592.P14773302939859479740

namespace A330592

/-- `∑[n-A026741(n)]*A016116(n+1)` -/
def P14773302939859479740.Spec : Prop :=
  ∀ n, P14773302939859479740.a n = A330592 (n + 1)

end A330592

/-! ## A330592.P16009939365801241181

`A000217(A008619(n)-1)*A060546(n)`
-/

namespace A330592.P16009939365801241181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (A008619 n - 1).toNat * A060546 n

end

end A330592.P16009939365801241181

namespace A330592

/-- `A000217(A008619(n)-1)*A060546(n)` -/
def P16009939365801241181.Spec : Prop :=
  ∀ n, P16009939365801241181.a n = A330592 (n + 1)

end A330592

/-! ## A330592.P7096320397110248136

`A000217(val(A016116(n), 2))*A016116(n+1)`
-/

namespace A330592.P7096320397110248136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (SequenceMachineLib.valuation (A016116 n).toNat 2) * A016116 (n + 1)

end

end A330592.P7096320397110248136

namespace A330592

/-- `A000217(val(A016116(n), 2))*A016116(n+1)` -/
def P7096320397110248136.Spec : Prop :=
  ∀ n, P7096320397110248136.a n = A330592 (n + 1)

end A330592

/-! ## A330592.P12212380109148693505

`C(A008619(n), 2)*A011782(A008619(n+1))`
-/

namespace A330592.P12212380109148693505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose (A008619 n).toNat 2 : ℤ) * A011782 (A008619 (n + 1)).toNat

end

end A330592.P12212380109148693505

namespace A330592

/-- `C(A008619(n), 2)*A011782(A008619(n+1))` -/
def P12212380109148693505.Spec : Prop :=
  ∀ n, P12212380109148693505.a n = A330592 (n + 1)

end A330592

/-! ## A330592.P2910672988278542011

`C(A065033(n+1), 2)*A000079(A065033(n))`
-/

namespace A330592.P2910672988278542011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose (A065033 (n + 1)).toNat 2 : ℤ) * A000079 (A065033 n).toNat

end

end A330592.P2910672988278542011

namespace A330592

/-- `C(A065033(n+1), 2)*A000079(A065033(n))` -/
def P2910672988278542011.Spec : Prop :=
  ∀ n, P2910672988278542011.a n = A330592 (n + 1)

end A330592

/-! ## A330592.P38998524657839863

`A000079(A004526(n+1))*A000217(A004526(n))`
-/

namespace A330592.P38998524657839863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (A004526 (n + 1)).toNat * A000217 (A004526 n).toNat

end

end A330592.P38998524657839863

namespace A330592

/-- `A000079(A004526(n+1))*A000217(A004526(n))` -/
def P38998524657839863.Spec : Prop :=
  ∀ n, P38998524657839863.a n = A330592 (n + 1)

end A330592

/-! ## A330592.P11857635639268731995

`A004526(A004526(n)*A008619(n))*A060546(n)`
-/

namespace A330592.P11857635639268731995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A004526 n * A008619 n).toNat * A060546 n

end

end A330592.P11857635639268731995

namespace A330592

/-- `A004526(A004526(n)*A008619(n))*A060546(n)` -/
def P11857635639268731995.Spec : Prop :=
  ∀ n, P11857635639268731995.a n = A330592 (n + 1)

end A330592

/-!
# A330593: Positive integers not occurring in A330614 (subsequence of first differences with indices of primes gives back the original).

The programs for A330593, there is no canonical definition to state claims against.
-/

/-! ## A330593.P4819442732296841328

`eq[char[A330614(n+1)], A000007(n)]`
-/

namespace A330593.P4819442732296841328
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330614 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A330593.P4819442732296841328

/-! ## A330593.P11091771993385777522

`eq[char[A330614(n+1)], A000038(n)]`
-/

namespace A330593.P11091771993385777522
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330614 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A330593.P11091771993385777522

/-! ## A330593.P10450683493693117598

`eq[char[A330614(n+1)], A154955(n+1)]`
-/

namespace A330593.P10450683493693117598
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330614 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154955 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A330593.P10450683493693117598

/-! ## A330593.P1062480621967855289

`eq[char[A330614(n+1)], A299529(n+4)]`
-/

namespace A330593.P1062480621967855289
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330614 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299529 (n + 4)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A330593.P1062480621967855289

/-! ## A330593.P13615442020227502786

`eq[char[A330614(n+1)], A299530(n+4)]`
-/

namespace A330593.P13615442020227502786
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330614 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299530 (n + 4)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A330593.P13615442020227502786

