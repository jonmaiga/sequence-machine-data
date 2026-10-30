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
import Seq.B000.C015
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
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C038
import Seq.B000.C039
import Seq.B000.C041
import Seq.B000.C043
import Seq.B000.C044
import Seq.B000.C046
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
import Seq.B001.C011
import Seq.B002.C000
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C005
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B004.C000
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
import Seq.Opaque.C016
import Seq.Opaque.C017
import Seq.Opaque.C018
import Seq.Opaque.C019
import Seq.Opaque.C020
import Seq.Opaque.C022
import Seq.Opaque.C023
import SequenceMachineLib.Triangle

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A154600: a(n) = 2*n^2 + 22*n + 9.

The programs for A154600, the canonical program `A154600.P13500036315389612627` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A154600 has offset 1).

The definition of A154600 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2*(n+1)²+22*(n+1)+9` (program `A154600.P13500036315389612627`, by `A154600.P13500036315389612627.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A154600.P11781244857664316268

`ogf((33-38x+9x^2)/(1-3x+3x^2-x^3))`
-/

namespace A154600.P11781244857664316268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [33, -38, 9] [1, -3, 3, -1] n

end

end A154600.P11781244857664316268

namespace A154600

/-- `ogf((33-38x+9x^2)/(1-3x+3x^2-x^3))` -/
def P11781244857664316268.Spec : Prop :=
  ∀ n, P11781244857664316268.a n = A154600 (n + 1)

end A154600

/-! ## A154600.P13500036315389612627

`2*(n+1)²+22*(n+1)+9`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A154600

/-- `2*(n+1)²+22*(n+1)+9` -/
def P13500036315389612627.Spec : Prop :=
  ∀ n, (P13500036315389612627.a n : ℤ) = A154600 (n + 1)

theorem P13500036315389612627.correct : P13500036315389612627.Spec := by
  intro n
  simp only [A154600, Nat.add_sub_cancel]

end A154600

/-! ## A154600.P11525328286926250757

`∑[a(n-1)+4]` with `a(0)=33, a(1)=28`
-/

namespace A154600.P11525328286926250757
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [33, 28] fun n f1 =>
  f1 (n - 1) + 4

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A154600.P11525328286926250757

namespace A154600

/-- `∑[a(n-1)+4]` -/
def P11525328286926250757.Spec : Prop :=
  ∀ n, (P11525328286926250757.a n : ℤ) = A154600 (n + 1)

end A154600

/-! ## A154600.P11987428919527881097

`or(1, A154599(n+1)+2*(n+1))`
-/

namespace A154600.P11987428919527881097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A154599 (n + 1) + (2 * (n + 1) : ℤ))

end

end A154600.P11987428919527881097

namespace A154600

/-- `or(1, A154599(n+1)+2*(n+1))` -/
def P11987428919527881097.Spec : Prop :=
  ∀ n, P11987428919527881097.a n = A154600 (n + 1)

end A154600

/-! ## A154600.P6779139312954970382

`A026066(n+7)%(A026060(n+5)+27)`
-/

namespace A154600.P6779139312954970382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A026066 (n + 7)) (A026060 (n + 5) + 27)

end

end A154600.P6779139312954970382

namespace A154600

/-- `A026066(n+7)%(A026060(n+5)+27)` -/
def P6779139312954970382.Spec : Prop :=
  ∀ n, P6779139312954970382.a n = A154600 (n + 1)

end A154600

/-! ## A154600.P1919977634945723972

`(A154599(n+1)+2*n+3)%A154601(n+1)`
-/

namespace A154600.P1919977634945723972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A154599 (n + 1) + (2 * n + 3 : ℤ)) (A154601 (n + 1))

end

end A154600.P1919977634945723972

namespace A154600

/-- `(A154599(n+1)+2*n+3)%A154601(n+1)` -/
def P1919977634945723972.Spec : Prop :=
  ∀ n, P1919977634945723972.a n = A154600 (n + 1)

end A154600

/-! ## A154600.P16031969068477656228

`(A202018(2*n)+A008607(2*n+1))/2`
-/

namespace A154600.P16031969068477656228
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A202018 (2 * n) + A008607 (2 * n + 1) : ℚ) / 2

end

end A154600.P16031969068477656228

namespace A154600

/-- `(A202018(2*n)+A008607(2*n+1))/2` -/
def P16031969068477656228.Spec : Prop :=
  ∀ n, P16031969068477656228.a n = (A154600 (n + 1) : ℚ)

theorem P16031969068477656228.correct : P16031969068477656228.Spec := by
  intro n
  simp only [A154600, Nat.add_sub_cancel, A154600.P16031969068477656228.a, A154600.P13500036315389612627.a, A008607, A008607.P4608234580437606002.a, A202018, A202018.P5130107977223247330.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A154600

/-! ## A154600.P13430806012333434225

`record[A132356(n+4)-A142463(n+2)]`
-/

namespace A154600.P13430806012333434225
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132356 (n + 4) - A142463 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A154600.P13430806012333434225

namespace A154600

/-- `record[A132356(n+4)-A142463(n+2)]` -/
def P13430806012333434225.Spec : Prop :=
  ∀ n, P13430806012333434225.a n = A154600 (n + 1)

end A154600

/-! ## A154600.P14079424959831502756

`A004766(∑[n+6]+2)`
-/

namespace A154600.P14079424959831502756
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 6

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004766 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A154600.P14079424959831502756

namespace A154600

/-- `A004766(∑[n+6]+2)` -/
def P14079424959831502756.Spec : Prop :=
  ∀ n, P14079424959831502756.a n = A154600 (n + 1)

end A154600

/-! ## A154600.P3959219242795331474

`A016813(∑[n+6]+2)`
-/

namespace A154600.P3959219242795331474
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 6

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016813 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A154600.P3959219242795331474

namespace A154600

/-- `A016813(∑[n+6]+2)` -/
def P3959219242795331474.Spec : Prop :=
  ∀ n, P3959219242795331474.a n = A154600 (n + 1)

end A154600

/-!
# A154601: Primes of the form 2*n^2 + 22*n + 9.

The programs for A154601, there is no canonical definition to state claims against.
-/

/-! ## A154601.P15567988182847919844

`∩[A142108(n+1), A154600(n+1)]`
-/

namespace A154601.P15567988182847919844
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142108 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154600 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A154601.P15567988182847919844

/-! ## A154601.P9298528816192890358

`p?[∑[4*n]-51]`
-/

namespace A154601.P9298528816192890358
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ) - 51

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A154601.P9298528816192890358

/-! ## A154601.P2608046250647676033

`xor(2, p?[(n-1)*2*n-51])-2`
-/

namespace A154601.P2608046250647676033
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - 1) * (2 * n : ℤ) - 51

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 2 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)) - 2

end

end A154601.P2608046250647676033

/-! ## A154601.P11266311596779880404

`round(sqrt(p?[2*(n²-n)-51]²+1))`
-/

namespace A154601.P11266311596779880404
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * ((n ^ 2 : ℤ) - (n : ℤ)) - 51

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) ^ 2 + 1 : ℝ))

end

end A154601.P11266311596779880404

/-! ## A154601.P13247200060146688474

`or(1, p?[A154600(n+1)])`
-/

namespace A154601.P13247200060146688474
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154600 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A154601.P13247200060146688474

/-! ## A154601.P17140736265349218111

`A000007(n+1)+p?[A154600(n+1)]`
-/

namespace A154601.P17140736265349218111
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154600 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (n + 1) + f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A154601.P17140736265349218111

/-! ## A154601.P6124413771716136237

`A007318(C(2, n))*p?[A154600(n+1)]`
-/

namespace A154601.P6124413771716136237
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154600 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A154601.P6124413771716136237

/-! ## A154601.P13590850055504111072

`∩[A061241(n+1), A154600(n+1)]`
-/

namespace A154601.P13590850055504111072
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061241 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154600 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A154601.P13590850055504111072

/-! ## A154601.P7120245643589755153

`∩[A049232(n+1), A154600(n+1)]`
-/

namespace A154601.P7120245643589755153
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049232 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154600 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A154601.P7120245643589755153

/-! ## A154601.P13114378359356335417

`∩[A068228(n+1), A154600(n+1)]`
-/

namespace A154601.P13114378359356335417
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068228 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154600 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A154601.P13114378359356335417

/-!
# A154602: Exponential Riordan array [exp(sinh(x)*exp(x)), sinh(x)*exp(x)].

The programs for A154602, the canonical program `A154602.P1873273957178192652` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A154602 has offset 0).

The definition of A154602 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A154602.P1873273957178192652

`2*(col(n)+1)*T(n-1,k+1)+(2*col(n)+1)*T(n-1,k)+T(n-1,k-1)` with `a(0)=1`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A154602

/-- `2*(col(n)+1)*T(n-1,k+1)+(2*col(n)+1)*T(n-1,k)+T(n-1,k-1)` -/
def P1873273957178192652.Spec : Prop :=
  ∀ n, (P1873273957178192652.a n : ℤ) = A154602 n

theorem P1873273957178192652.correct : P1873273957178192652.Spec := by
  intro n
  simp only [A154602]

end A154602

/-! ## A154602.P3286026620133467550

`A167662(A114608(n))`
-/

namespace A154602.P3286026620133467550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167662 (A114608 n).toNat

end

end A154602.P3286026620133467550

namespace A154602

/-- `A167662(A114608(n))` -/
def P3286026620133467550.Spec : Prop :=
  ∀ n, P3286026620133467550.a n = A154602 n

end A154602

/-! ## A154602.P12703856220394953135

`A175427(A114608(n)+1)`
-/

namespace A154602.P12703856220394953135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175427 (A114608 n + 1).toNat

end

end A154602.P12703856220394953135

namespace A154602

/-- `A175427(A114608(n)+1)` -/
def P12703856220394953135.Spec : Prop :=
  ∀ n, P12703856220394953135.a n = A154602 n

end A154602

/-!
# A154603: Binomial transform of reduced tangent numbers (A002105).

The programs for A154603, there is no canonical definition to state claims against.
-/

/-! ## A154603.P7289329507220147145

`A108602(∏[xor(1, n)+1])`
-/

namespace A154603.P7289329507220147145
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108602 (∏ j ∈ Finset.range (n + 1), f1 j)

end

end A154603.P7289329507220147145

/-! ## A154603.P14757712387856142400

`A023193(A149049(n))`
-/

namespace A154603.P14757712387856142400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023193 (A149049 n).toNat

end

end A154603.P14757712387856142400

/-! ## A154603.P8223879085866280588

`A034704(A148167(n))`
-/

namespace A154603.P8223879085866280588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034704 (A148167 n).toNat

end

end A154603.P8223879085866280588

/-!
# A154604: Hankel transform of reduced tangent numbers.

The programs for A154604, the canonical program `A154604.P5746987120745164795` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A154604 has offset 0).

The definition of A154604 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A154604.P5059780792121961821

`1/2^n*n!*(n+1)!*a(n-1)` with `a(0)=1`
-/

namespace A154604.P5059780792121961821
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  1 / (2 ^ n : ℚ) * (Nat.factorial n : ℚ) * (Nat.factorial (n + 1) : ℚ) * a (n - 1)

end

end A154604.P5059780792121961821

namespace A154604

/-- `1/2^n*n!*(n+1)!*a(n-1)` -/
def P5059780792121961821.Spec : Prop :=
  ∀ n, P5059780792121961821.a n = (A154604 n : ℚ)

end A154604

/-! ## A154604.P5746987120745164795

`A006472(n+1)*a(n-1)` with `a(0)=1`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A154604

/-- `A006472(n+1)*a(n-1)` -/
def P5746987120745164795.Spec : Prop :=
  ∀ n, P5746987120745164795.a n = A154604 n

theorem P5746987120745164795.correct : P5746987120745164795.Spec := by
  intro n
  simp only [A154604]

end A154604

/-! ## A154604.P15165425323269151759

`∏[a(n-1)*∑[n]]` with `a(0)=1`
-/

namespace A154604.P15165425323269151759
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f1 =>
  f1 (n - 1) * (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A154604.P15165425323269151759

namespace A154604

/-- `∏[a(n-1)*∑[n]]` -/
def P15165425323269151759.Spec : Prop :=
  ∀ n, (P15165425323269151759.a n : ℤ) = A154604 n

end A154604

/-! ## A154604.P11898835025581669164

`∏[∏[gcd(∑[n], ∏[n+1])]]`
-/

namespace A154604.P11898835025581669164
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd (∑ j ∈ Finset.range (n + 1), f3 j) (∏ j ∈ Finset.range (n + 1), f4 j)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A154604.P11898835025581669164

namespace A154604

/-- `∏[∏[gcd(∑[n], ∏[n+1])]]` -/
def P11898835025581669164.Spec : Prop :=
  ∀ n, (P11898835025581669164.a n : ℤ) = A154604 n

end A154604

/-! ## A154604.P4124929477818171037

`∏[∏[a(n-1)+n]]` with `a(0)=1, a(1)=1`
-/

namespace A154604.P4124929477818171037
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [1, 1] fun n f2 =>
  f2 (n - 1) + n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A154604.P4124929477818171037

namespace A154604

/-- `∏[∏[a(n-1)+n]]` -/
def P4124929477818171037.Spec : Prop :=
  ∀ n, (P4124929477818171037.a n : ℤ) = A154604 n

end A154604

/-!
# A154606: Numbers n with the property of the enumerated trees without the convex hull.

The programs for A154606, there is no canonical definition to state claims against.
-/

/-! ## A154606.P17885951268739398135

`∑[ogf((-1+4x+6x^2+2x^3+8x^4)/(-1+6x))]`
-/

namespace A154606.P17885951268739398135
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -4, -6, -2, -8] [1, -6] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A154606.P17885951268739398135

/-!
# A154607: Numbers n such that 11*n + 4 is prime.

The programs for A154607, the canonical program `A154607.P7973489224117933479` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A154607 has offset 1).

The definition of A154607 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A154607.P7973489224117933479

`A108232(n+1)-1`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A154607

/-- `A108232(n+1)-1` -/
def P7973489224117933479.Spec : Prop :=
  ∀ n, P7973489224117933479.a n = A154607 (n + 1)

theorem P7973489224117933479.correct : P7973489224117933479.Spec := by
  intro n
  simp only [A154607, Nat.add_sub_cancel]

end A154607

/-! ## A154607.P6105312749331535694

`ceil(A141851(n+1)/11)-1`
-/

namespace A154607.P6105312749331535694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A141851 (n + 1) : ℚ) / 11⌉ - 1

end

end A154607.P6105312749331535694

namespace A154607

/-- `ceil(A141851(n+1)/11)-1` -/
def P6105312749331535694.Spec : Prop :=
  ∀ n, P6105312749331535694.a n = A154607 (n + 1)

end A154607

/-! ## A154607.P9663779749349263387

`floor(p?[a(n-1)+11]/11)` with `a(0)=4`
-/

namespace A154607.P9663779749349263387
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [4] fun n f1 =>
  f1 (n - 1) + 11

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) : ℚ) / 11⌋

end

end A154607.P9663779749349263387

namespace A154607

/-- `floor(p?[a(n-1)+11]/11)` -/
def P9663779749349263387.Spec : Prop :=
  ∀ n, P9663779749349263387.a n = A154607 (n + 1)

end A154607

/-! ## A154607.P6720756057589693181

`A014681(A108232(n+1))`
-/

namespace A154607.P6720756057589693181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014681 (A108232 (n + 1)).toNat

end

end A154607.P6720756057589693181

namespace A154607

/-- `A014681(A108232(n+1))` -/
def P6720756057589693181.Spec : Prop :=
  ∀ n, P6720756057589693181.a n = A154607 (n + 1)

end A154607

/-! ## A154607.P7867875880488235832

`eq[1, A001222(11*n+4)]`
-/

namespace A154607.P7867875880488235832
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (11 * n + 4)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A154607.P7867875880488235832

namespace A154607

/-- `eq[1, A001222(11*n+4)]` -/
def P7867875880488235832.Spec : Prop :=
  ∀ n, (P7867875880488235832.a n : ℤ) = A154607 (n + 1)

end A154607

/-! ## A154607.P5850289126823534487

`eq[2, A000005(11*n+4)]`
-/

namespace A154607.P5850289126823534487
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (11 * n + 4)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A154607.P5850289126823534487

namespace A154607

/-- `eq[2, A000005(11*n+4)]` -/
def P5850289126823534487.Spec : Prop :=
  ∀ n, (P5850289126823534487.a n : ℤ) = A154607 (n + 1)

end A154607

/-! ## A154607.P9413647305335454312

`lt[A001222(10*n+4+n), 2]`
-/

namespace A154607.P9413647305335454312
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (10 * n + 4 + n)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A154607.P9413647305335454312

namespace A154607

/-- `lt[A001222(10*n+4+n), 2]` -/
def P9413647305335454312.Spec : Prop :=
  ∀ n, (P9413647305335454312.a n : ℤ) = A154607 (n + 1)

end A154607

/-! ## A154607.P15195531579410100771

`lt[n+2, A020639(5*(2*n+1)+n-1)]`
-/

namespace A154607.P15195531579410100771
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 ((5 * (2 * n + 1) : ℤ) + ((n : ℤ) - 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A154607.P15195531579410100771

namespace A154607

/-- `lt[n+2, A020639(5*(2*n+1)+n-1)]` -/
def P15195531579410100771.Spec : Prop :=
  ∀ n, (P15195531579410100771.a n : ℤ) = A154607 (n + 1)

end A154607

/-! ## A154607.P4199821703573697456

`eq[1, A010051(A017413(n)+2)]`
-/

namespace A154607.P4199821703573697456
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (A017413 n + 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A154607.P4199821703573697456

namespace A154607

/-- `eq[1, A010051(A017413(n)+2)]` -/
def P4199821703573697456.Spec : Prop :=
  ∀ n, (P4199821703573697456.a n : ℤ) = A154607 (n + 1)

end A154607

/-! ## A154607.P18072273957682817340

`eq[A000203(A017437(n)), A017449(n)]`
-/

namespace A154607.P18072273957682817340
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A017437 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017449 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A154607.P18072273957682817340

namespace A154607

/-- `eq[A000203(A017437(n)), A017449(n)]` -/
def P18072273957682817340.Spec : Prop :=
  ∀ n, (P18072273957682817340.a n : ℤ) = A154607 (n + 1)

end A154607

/-! ## A154607.P4012233307454369940

`lt[A000203(A017437(n)), A017461(n)]`
-/

namespace A154607.P4012233307454369940
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A017437 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017461 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A154607.P4012233307454369940

namespace A154607

/-- `lt[A000203(A017437(n)), A017461(n)]` -/
def P4012233307454369940.Spec : Prop :=
  ∀ n, (P4012233307454369940.a n : ℤ) = A154607 (n + 1)

end A154607

/-! ## A154607.P14284109377909098379

`eq[A000203(A017449(n)-1), A017449(n)]`
-/

namespace A154607.P14284109377909098379
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A017449 n - 1).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017449 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A154607.P14284109377909098379

namespace A154607

/-- `eq[A000203(A017449(n)-1), A017449(n)]` -/
def P14284109377909098379.Spec : Prop :=
  ∀ n, (P14284109377909098379.a n : ℤ) = A154607 (n + 1)

end A154607

/-! ## A154607.P18135317329039874333

`lt[A000203(A017461(n)-2), A017461(n)]`
-/

namespace A154607.P18135317329039874333
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A017461 n - 2).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017461 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A154607.P18135317329039874333

namespace A154607

/-- `lt[A000203(A017461(n)-2), A017461(n)]` -/
def P18135317329039874333.Spec : Prop :=
  ∀ n, (P18135317329039874333.a n : ℤ) = A154607 (n + 1)

end A154607

/-! ## A154607.P12313151628884306299

`lt[n+2, A014963(5*(2*n+1)+n-1)]`
-/

namespace A154607.P12313151628884306299
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 ((5 * (2 * n + 1) : ℤ) + ((n : ℤ) - 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A154607.P12313151628884306299

namespace A154607

/-- `lt[n+2, A014963(5*(2*n+1)+n-1)]` -/
def P12313151628884306299.Spec : Prop :=
  ∀ n, (P12313151628884306299.a n : ℤ) = A154607 (n + 1)

end A154607

/-! ## A154607.P5594977181250460918

`A194525(A141851(n+1))`
-/

namespace A154607.P5594977181250460918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194525 (A141851 (n + 1)).toNat

end

end A154607.P5594977181250460918

namespace A154607

/-- `A194525(A141851(n+1))` -/
def P5594977181250460918.Spec : Prop :=
  ∀ n, P5594977181250460918.a n = A154607 (n + 1)

end A154607

/-! ## A154607.P5180158529056333041

`eq[1, A246277(A017437(n))]`
-/

namespace A154607.P5180158529056333041
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246277 (A017437 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A154607.P5180158529056333041

namespace A154607

/-- `eq[1, A246277(A017437(n))]` -/
def P5180158529056333041.Spec : Prop :=
  ∀ n, (P5180158529056333041.a n : ℤ) = A154607 (n + 1)

end A154607

/-! ## A154607.P15194191643974154925

`eq[1, A032742(A017413(n)+2)]`
-/

namespace A154607.P15194191643974154925
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032742 (A017413 n + 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A154607.P15194191643974154925

namespace A154607

/-- `eq[1, A032742(A017413(n)+2)]` -/
def P15194191643974154925.Spec : Prop :=
  ∀ n, (P15194191643974154925.a n : ℤ) = A154607 (n + 1)

end A154607

/-! ## A154607.P10238656016600206440

`eq[1, A053989(A017473(n)-2)]`
-/

namespace A154607.P10238656016600206440
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053989 (A017473 n - 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A154607.P10238656016600206440

namespace A154607

/-- `eq[1, A053989(A017473(n)-2)]` -/
def P10238656016600206440.Spec : Prop :=
  ∀ n, (P10238656016600206440.a n : ℤ) = A154607 (n + 1)

end A154607

/-! ## A154607.P6379036670665704715

`eq[1, A061007(A017569(n)-n)]`
-/

namespace A154607.P6379036670665704715
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061007 (A017569 n - (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A154607.P6379036670665704715

namespace A154607

/-- `eq[1, A061007(A017569(n)-n)]` -/
def P6379036670665704715.Spec : Prop :=
  ∀ n, (P6379036670665704715.a n : ℤ) = A154607 (n + 1)

end A154607

/-! ## A154607.P5625360962788543707

`A194524(A141851(n+1)+2)+2`
-/

namespace A154607.P5625360962788543707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194524 (A141851 (n + 1) + 2).toNat + 2

end

end A154607.P5625360962788543707

namespace A154607

/-- `A194524(A141851(n+1)+2)+2` -/
def P5625360962788543707.Spec : Prop :=
  ∀ n, P5625360962788543707.a n = A154607 (n + 1)

end A154607

/-!
# A154608: Primes p such that 11*p + 4 is also prime.

The programs for A154608, the canonical program `A154608.P12856438361669168051` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A154608 has offset 1).

The definition of A154608 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2387 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A154608.P12856438361669168051

`p?[A108232(n+1)-1]`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A154608

/-- `p?[A108232(n+1)-1]` -/
def P12856438361669168051.Spec : Prop :=
  ∀ n, P12856438361669168051.a n = A154608 (n + 1)

theorem P12856438361669168051.correct : P12856438361669168051.Spec := by
  intro n
  simp only [A154608, Nat.add_sub_cancel]

end A154608

/-! ## A154608.P13230660250419505989

`p?[A154607(n+1)]`
-/

namespace A154608.P13230660250419505989
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154607 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A154608.P13230660250419505989

namespace A154608

/-- `p?[A154607(n+1)]` -/
def P13230660250419505989.Spec : Prop :=
  ∀ n, P13230660250419505989.a n = A154608 (n + 1)

end A154608

/-! ## A154608.P9079108924992725418

`∩[A154607(n+1), A042988(n)]`
-/

namespace A154608.P9079108924992725418
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154607 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042988 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A154608.P9079108924992725418

namespace A154608

/-- `∩[A154607(n+1), A042988(n)]` -/
def P9079108924992725418.Spec : Prop :=
  ∀ n, (P9079108924992725418.a n : ℤ) = A154608 (n + 1)

end A154608

/-! ## A154608.P8860530394606428799

`∩[A040028(n+1), A154607(n+1)]`
-/

namespace A154608.P8860530394606428799
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040028 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154607 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A154608.P8860530394606428799

namespace A154608

/-- `∩[A040028(n+1), A154607(n+1)]` -/
def P8860530394606428799.Spec : Prop :=
  ∀ n, (P8860530394606428799.a n : ℤ) = A154608 (n + 1)

end A154608

/-! ## A154608.P14882568400335667863

`∩[A040036(n+1), A154607(n+1)]`
-/

namespace A154608.P14882568400335667863
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040036 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154607 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A154608.P14882568400335667863

namespace A154608

/-- `∩[A040036(n+1), A154607(n+1)]` -/
def P14882568400335667863.Spec : Prop :=
  ∀ n, (P14882568400335667863.a n : ℤ) = A154608 (n + 1)

end A154608

/-! ## A154608.P1200726724412330911

`∩[A040044(n+1), A154607(n+1)]`
-/

namespace A154608.P1200726724412330911
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040044 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154607 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A154608.P1200726724412330911

namespace A154608

/-- `∩[A040044(n+1), A154607(n+1)]` -/
def P1200726724412330911.Spec : Prop :=
  ∀ n, (P1200726724412330911.a n : ℤ) = A154608 (n + 1)

end A154608

/-! ## A154608.P635625270823751952

`∩[A040046(n+1), A154607(n+1)]`
-/

namespace A154608.P635625270823751952
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040046 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154607 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A154608.P635625270823751952

namespace A154608

/-- `∩[A040046(n+1), A154607(n+1)]` -/
def P635625270823751952.Spec : Prop :=
  ∀ n, (P635625270823751952.a n : ℤ) = A154608 (n + 1)

end A154608

/-! ## A154608.P13089202480232500372

`∩[A040049(n+1), A154607(n+1)]`
-/

namespace A154608.P13089202480232500372
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040049 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154607 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A154608.P13089202480232500372

namespace A154608

/-- `∩[A040049(n+1), A154607(n+1)]` -/
def P13089202480232500372.Spec : Prop :=
  ∀ n, (P13089202480232500372.a n : ℤ) = A154608 (n + 1)

end A154608

/-! ## A154608.P2079473853287051967

`∩[A040054(n+1), A154607(n+1)]`
-/

namespace A154608.P2079473853287051967
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040054 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154607 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A154608.P2079473853287051967

namespace A154608

/-- `∩[A040054(n+1), A154607(n+1)]` -/
def P2079473853287051967.Spec : Prop :=
  ∀ n, (P2079473853287051967.a n : ℤ) = A154608 (n + 1)

end A154608

/-! ## A154608.P11976953476290064071

`∩[A040060(n+1), A154607(n+1)]`
-/

namespace A154608.P11976953476290064071
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040060 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154607 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A154608.P11976953476290064071

namespace A154608

/-- `∩[A040060(n+1), A154607(n+1)]` -/
def P11976953476290064071.Spec : Prop :=
  ∀ n, (P11976953476290064071.a n : ℤ) = A154608 (n + 1)

end A154608

/-! ## A154608.P18445509721826208040

`∩[A040062(n+1), A154607(n+1)]`
-/

namespace A154608.P18445509721826208040
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040062 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154607 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A154608.P18445509721826208040

namespace A154608

/-- `∩[A040062(n+1), A154607(n+1)]` -/
def P18445509721826208040.Spec : Prop :=
  ∀ n, (P18445509721826208040.a n : ℤ) = A154608 (n + 1)

end A154608

/-! ## A154608.P543386679849907904

`∩[A040065(n+1), A154607(n+1)]`
-/

namespace A154608.P543386679849907904
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040065 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154607 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A154608.P543386679849907904

namespace A154608

/-- `∩[A040065(n+1), A154607(n+1)]` -/
def P543386679849907904.Spec : Prop :=
  ∀ n, (P543386679849907904.a n : ℤ) = A154608 (n + 1)

end A154608

/-! ## A154608.P2890644771961785515

`∩[A040078(n+1), A154607(n+1)]`
-/

namespace A154608.P2890644771961785515
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040078 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154607 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A154608.P2890644771961785515

namespace A154608

/-- `∩[A040078(n+1), A154607(n+1)]` -/
def P2890644771961785515.Spec : Prop :=
  ∀ n, (P2890644771961785515.a n : ℤ) = A154608 (n + 1)

end A154608

/-! ## A154608.P15410569099101310718

`∩[A040083(n+1), A154607(n+1)]`
-/

namespace A154608.P15410569099101310718
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040083 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154607 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A154608.P15410569099101310718

namespace A154608

/-- `∩[A040083(n+1), A154607(n+1)]` -/
def P15410569099101310718.Spec : Prop :=
  ∀ n, (P15410569099101310718.a n : ℤ) = A154608 (n + 1)

end A154608

/-! ## A154608.P4299581551566189756

`∩[A040085(n+1), A154607(n+1)]`
-/

namespace A154608.P4299581551566189756
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040085 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154607 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A154608.P4299581551566189756

namespace A154608

/-- `∩[A040085(n+1), A154607(n+1)]` -/
def P4299581551566189756.Spec : Prop :=
  ∀ n, (P4299581551566189756.a n : ℤ) = A154608 (n + 1)

end A154608

/-! ## A154608.P17497639780533160540

`∩[A040087(n+1), A154607(n+1)]`
-/

namespace A154608.P17497639780533160540
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040087 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154607 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A154608.P17497639780533160540

namespace A154608

/-- `∩[A040087(n+1), A154607(n+1)]` -/
def P17497639780533160540.Spec : Prop :=
  ∀ n, (P17497639780533160540.a n : ℤ) = A154608 (n + 1)

end A154608

/-! ## A154608.P6870045808931761518

`∩[A040089(n+1), A154607(n+1)]`
-/

namespace A154608.P6870045808931761518
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040089 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154607 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A154608.P6870045808931761518

namespace A154608

/-- `∩[A040089(n+1), A154607(n+1)]` -/
def P6870045808931761518.Spec : Prop :=
  ∀ n, (P6870045808931761518.a n : ℤ) = A154608 (n + 1)

end A154608

/-! ## A154608.P5540682362409057669

`∩[A040095(n+1), A154607(n+1)]`
-/

namespace A154608.P5540682362409057669
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040095 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154607 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A154608.P5540682362409057669

namespace A154608

/-- `∩[A040095(n+1), A154607(n+1)]` -/
def P5540682362409057669.Spec : Prop :=
  ∀ n, (P5540682362409057669.a n : ℤ) = A154608 (n + 1)

end A154608

/-! ## A154608.P1746067423514242178

`∩[A040159(n+1), A154607(n+1)]`
-/

namespace A154608.P1746067423514242178
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040159 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154607 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A154608.P1746067423514242178

namespace A154608

/-- `∩[A040159(n+1), A154607(n+1)]` -/
def P1746067423514242178.Spec : Prop :=
  ∀ n, (P1746067423514242178.a n : ℤ) = A154608 (n + 1)

end A154608

/-! ## A154608.P15031974549175214212

`∩[A040161(n+1), A154607(n+1)]`
-/

namespace A154608.P15031974549175214212
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040161 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154607 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A154608.P15031974549175214212

namespace A154608

/-- `∩[A040161(n+1), A154607(n+1)]` -/
def P15031974549175214212.Spec : Prop :=
  ∀ n, (P15031974549175214212.a n : ℤ) = A154608 (n + 1)

end A154608

/-!
# A154609: a(n) = 13*n + 5.

The programs for A154609, the canonical program `A154609.P1978391777600562763` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A154609 has offset 0).

The definition of A154609 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `13*n+5` (program `A154609.P1978391777600562763`, by `A154609.P1978391777600562763.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A154609.P1978391777600562763

`13*n+5`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A154609

/-- `13*n+5` -/
def P1978391777600562763.Spec : Prop :=
  ∀ n, (P1978391777600562763.a n : ℤ) = A154609 n

theorem P1978391777600562763.correct : P1978391777600562763.Spec := by
  intro n
  simp only [A154609]

end A154609

/-!
# A154610: Numbers n such that 13n + 5 is prime.

The programs for A154610, the canonical program `A154610.P14677146350815803570` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A154610 has offset 1).

The definition of A154610 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A154610.P14677146350815803570

`floor(A102732(1+n)/13)`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A154610

/-- `floor(A102732(1+n)/13)` -/
def P14677146350815803570.Spec : Prop :=
  ∀ n, P14677146350815803570.a n = A154610 (n + 1)

theorem P14677146350815803570.correct : P14677146350815803570.Spec := by
  intro n
  simp only [A154610, Nat.add_sub_cancel]

end A154610

/-! ## A154610.P5605920340788018718

`floor(p?[a(n-1)+13]/13)` with `a(0)=5`
-/

namespace A154610.P5605920340788018718
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [5] fun n f1 =>
  f1 (n - 1) + 13

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) : ℚ) / 13⌋

end

end A154610.P5605920340788018718

namespace A154610

/-- `floor(p?[a(n-1)+13]/13)` -/
def P5605920340788018718.Spec : Prop :=
  ∀ n, P5605920340788018718.a n = A154610 (n + 1)

end A154610

/-! ## A154610.P251637891172378303

`comp[A155935(n+1)]`
-/

namespace A154610.P251637891172378303
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155935 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A154610.P251637891172378303

namespace A154610

/-- `comp[A155935(n+1)]` -/
def P251637891172378303.Spec : Prop :=
  ∀ n, (P251637891172378303.a n : ℤ) = A154610 (n + 1)

end A154610

/-! ## A154610.P2797926782046408702

`eq[2, A000005(13*n+5)]`
-/

namespace A154610.P2797926782046408702
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (13 * n + 5)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A154610.P2797926782046408702

namespace A154610

/-- `eq[2, A000005(13*n+5)]` -/
def P2797926782046408702.Spec : Prop :=
  ∀ n, (P2797926782046408702.a n : ℤ) = A154610 (n + 1)

end A154610

/-! ## A154610.P5615966201964189436

`lt[n+1, A020639(13*n+5)]`
-/

namespace A154610.P5615966201964189436
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (13 * n + 5)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A154610.P5615966201964189436

namespace A154610

/-- `lt[n+1, A020639(13*n+5)]` -/
def P5615966201964189436.Spec : Prop :=
  ∀ n, (P5615966201964189436.a n : ℤ) = A154610 (n + 1)

end A154610

/-! ## A154610.P7538640725229348622

`lt[A001222(8*n+5*(n+1)), 2]`
-/

namespace A154610.P7538640725229348622
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (8 * n + 5 * (n + 1))

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A154610.P7538640725229348622

namespace A154610

/-- `lt[A001222(8*n+5*(n+1)), 2]` -/
def P7538640725229348622.Spec : Prop :=
  ∀ n, (P7538640725229348622.a n : ℤ) = A154610 (n + 1)

end A154610

/-! ## A154610.P7167065353478413952

`eq[1, A001222(abs(2-(6*Δ[n²]+n))+1)]`
-/

namespace A154610.P7167065353478413952
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (|2 - (6 * ((f3 (n + 1) : ℤ) - (f3 n : ℤ)) + (n : ℤ))| + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A154610.P7167065353478413952

namespace A154610

/-- `eq[1, A001222(abs(2-(6*Δ[n²]+n))+1)]` -/
def P7167065353478413952.Spec : Prop :=
  ∀ n, (P7167065353478413952.a n : ℤ) = A154610 (n + 1)

end A154610

/-! ## A154610.P13488534944873678360

`lt[A306285(n+1), A006530(A306285(n+1)+1)]`
-/

namespace A154610.P13488534944873678360
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306285 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A306285 (n + 1) + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A154610.P13488534944873678360

namespace A154610

/-- `lt[A306285(n+1), A006530(A306285(n+1)+1)]` -/
def P13488534944873678360.Spec : Prop :=
  ∀ n, (P13488534944873678360.a n : ℤ) = A154610 (n + 1)

end A154610

/-! ## A154610.P16795616043415762834

`lt[A054024(11*n+2*n+5), 2]`
-/

namespace A154610.P16795616043415762834
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054024 (11 * n + (2 * n + 5))

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A154610.P16795616043415762834

namespace A154610

/-- `lt[A054024(11*n+2*n+5), 2]` -/
def P16795616043415762834.Spec : Prop :=
  ∀ n, (P16795616043415762834.a n : ℤ) = A154610 (n + 1)

end A154610

/-! ## A154610.P11809850388755627891

`lt[A000005(A016921(2*n)+n+4), 3]`
-/

namespace A154610.P11809850388755627891
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A016921 (2 * n) + (n : ℤ) + 4).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A154610.P11809850388755627891

namespace A154610

/-- `lt[A000005(A016921(2*n)+n+4), 3]` -/
def P11809850388755627891.Spec : Prop :=
  ∀ n, (P11809850388755627891.a n : ℤ) = A154610 (n + 1)

end A154610

/-! ## A154610.P17044191575164897250

`eq[n-A001222(A016969(2*n)+n), n-1]`
-/

namespace A154610.P17044191575164897250
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A001222 (A016969 (2 * n) + (n : ℤ)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A154610.P17044191575164897250

namespace A154610

/-- `eq[n-A001222(A016969(2*n)+n), n-1]` -/
def P17044191575164897250.Spec : Prop :=
  ∀ n, (P17044191575164897250.a n : ℤ) = A154610 (n + 1)

end A154610

/-! ## A154610.P1360167148805914727

`lt[A000005(Δ[A005901(n)]+6*n), 5]`
-/

namespace A154610.P1360167148805914727
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005901 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (f2 (n + 1) - f2 n + (6 * n : ℤ)).toNat

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f3 j : ℤ)) n

end

end A154610.P1360167148805914727

namespace A154610

/-- `lt[A000005(Δ[A005901(n)]+6*n), 5]` -/
def P1360167148805914727.Spec : Prop :=
  ∀ n, (P1360167148805914727.a n : ℤ) = A154610 (n + 1)

end A154610

/-! ## A154610.P11109474160677570206

`lt[n, A014963(13*n+5)]`
-/

namespace A154610.P11109474160677570206
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (13 * n + 5)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A154610.P11109474160677570206

namespace A154610

/-- `lt[n, A014963(13*n+5)]` -/
def P11109474160677570206.Spec : Prop :=
  ∀ n, (P11109474160677570206.a n : ℤ) = A154610 (n + 1)

end A154610

/-! ## A154610.P15798548896082603084

`A194529(A102732(n+1))`
-/

namespace A154610.P15798548896082603084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194529 (A102732 (n + 1)).toNat

end

end A154610.P15798548896082603084

namespace A154610

/-- `A194529(A102732(n+1))` -/
def P15798548896082603084.Spec : Prop :=
  ∀ n, P15798548896082603084.a n = A154610 (n + 1)

end A154610

/-!
# A154611: Numbers n such that 7*n+3 is not prime.

The programs for A154611, the canonical program `A154611.P2357276127298579042` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A154611 has offset 1).

The definition of A154611 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A154611.P741022843411209854

`comp[A089033(n+1)]`
-/

namespace A154611.P741022843411209854
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089033 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A154611.P741022843411209854

namespace A154611

/-- `comp[A089033(n+1)]` -/
def P741022843411209854.Spec : Prop :=
  ∀ n, (P741022843411209854.a n : ℤ) = A154611 (n + 1)

end A154611

/-! ## A154611.P2357276127298579042

`A153347(n+1)-1`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A154611

/-- `A153347(n+1)-1` -/
def P2357276127298579042.Spec : Prop :=
  ∀ n, P2357276127298579042.a n = A154611 (n + 1)

theorem P2357276127298579042.correct : P2357276127298579042.Spec := by
  intro n
  simp only [A154611, Nat.add_sub_cancel]

end A154611

/-! ## A154611.P15963533323035483768

`comp[A111250(n+1)]+1`
-/

namespace A154611.P15963533323035483768
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111250 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A154611.P15963533323035483768

namespace A154611

/-- `comp[A111250(n+1)]+1` -/
def P15963533323035483768.Spec : Prop :=
  ∀ n, (P15963533323035483768.a n : ℤ) = A154611 (n + 1)

end A154611

/-! ## A154611.P1794792527125463408

`comp[A024903(n+1)-1]`
-/

namespace A154611.P1794792527125463408
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024903 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A154611.P1794792527125463408

namespace A154611

/-- `comp[A024903(n+1)-1]` -/
def P1794792527125463408.Spec : Prop :=
  ∀ n, (P1794792527125463408.a n : ℤ) = A154611 (n + 1)

end A154611

/-! ## A154611.P683431353316334640

`comp[A033868(n+1)-2]`
-/

namespace A154611.P683431353316334640
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033868 (n + 1) - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A154611.P683431353316334640

namespace A154611

/-- `comp[A033868(n+1)-2]` -/
def P683431353316334640.Spec : Prop :=
  ∀ n, (P683431353316334640.a n : ℤ) = A154611 (n + 1)

end A154611

/-! ## A154611.P9275304966443944344

`comp[2*A090614(n+1)]`
-/

namespace A154611.P9275304966443944344
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A090614 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A154611.P9275304966443944344

namespace A154611

/-- `comp[2*A090614(n+1)]` -/
def P9275304966443944344.Spec : Prop :=
  ∀ n, (P9275304966443944344.a n : ℤ) = A154611 (n + 1)

end A154611

/-! ## A154611.P2356512656728372621

`lt[1, A001222(7*n+3)]`
-/

namespace A154611.P2356512656728372621
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (7 * n + 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A154611.P2356512656728372621

namespace A154611

/-- `lt[1, A001222(7*n+3)]` -/
def P2356512656728372621.Spec : Prop :=
  ∀ n, (P2356512656728372621.a n : ℤ) = A154611 (n + 1)

end A154611

/-! ## A154611.P8401499127141020002

`lt[2, A000005(7*n+3)]`
-/

namespace A154611.P8401499127141020002
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (7 * n + 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A154611.P8401499127141020002

namespace A154611

/-- `lt[2, A000005(7*n+3)]` -/
def P8401499127141020002.Spec : Prop :=
  ∀ n, (P8401499127141020002.a n : ℤ) = A154611 (n + 1)

end A154611

/-! ## A154611.P1149889781075291652

`comp[2*comp[A153307(n+1)]]`
-/

namespace A154611.P1149889781075291652
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153307 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A154611.P1149889781075291652

namespace A154611

/-- `comp[2*comp[A153307(n+1)]]` -/
def P1149889781075291652.Spec : Prop :=
  ∀ n, (P1149889781075291652.a n : ℤ) = A154611 (n + 1)

end A154611

/-! ## A154611.P4018143865657211228

`lt[A020639(7*n+3), n+2]`
-/

namespace A154611.P4018143865657211228
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (7 * n + 3)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A154611.P4018143865657211228

namespace A154611

/-- `lt[A020639(7*n+3), n+2]` -/
def P4018143865657211228.Spec : Prop :=
  ∀ n, (P4018143865657211228.a n : ℤ) = A154611 (n + 1)

end A154611

/-! ## A154611.P8719719943410180633

`A023443(A153347(n+1))`
-/

namespace A154611.P8719719943410180633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A153347 (n + 1)).toNat

end

end A154611.P8719719943410180633

namespace A154611

/-- `A023443(A153347(n+1))` -/
def P8719719943410180633.Spec : Prop :=
  ∀ n, P8719719943410180633.a n = A154611 (n + 1)

end A154611

/-! ## A154611.P5933510471575752271

`lt[A014963(7*n+3), 2*n]`
-/

namespace A154611.P5933510471575752271
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (7 * n + 3)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A154611.P5933510471575752271

namespace A154611

/-- `lt[A014963(7*n+3), 2*n]` -/
def P5933510471575752271.Spec : Prop :=
  ∀ n, (P5933510471575752271.a n : ℤ) = A154611 (n + 1)

end A154611

/-! ## A154611.P530248132121375776

`eq[1, A061006(A017017(n))+1]`
-/

namespace A154611.P530248132121375776
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061006 (A017017 n).toNat + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A154611.P530248132121375776

namespace A154611

/-- `eq[1, A061006(A017017(n))+1]` -/
def P530248132121375776.Spec : Prop :=
  ∀ n, (P530248132121375776.a n : ℤ) = A154611 (n + 1)

end A154611

/-! ## A154611.P10761258107095434302

`lt[1, A033676(A016945(n)+n)]`
-/

namespace A154611.P10761258107095434302
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033676 (A016945 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A154611.P10761258107095434302

namespace A154611

/-- `lt[1, A033676(A016945(n)+n)]` -/
def P10761258107095434302.Spec : Prop :=
  ∀ n, (P10761258107095434302.a n : ℤ) = A154611 (n + 1)

end A154611

/-!
# A154612: a(n) = 17*n + 7.

The programs for A154612, the canonical program `A154612.P11084786174078413662` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A154612 has offset 0).

The definition of A154612 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `17*n+7` (program `A154612.P11084786174078413662`, by `A154612.P11084786174078413662.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A154612.P11084786174078413662

`17*n+7`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A154612

/-- `17*n+7` -/
def P11084786174078413662.Spec : Prop :=
  ∀ n, (P11084786174078413662.a n : ℤ) = A154612 n

theorem P11084786174078413662.correct : P11084786174078413662.Spec := by
  intro n
  simp only [A154612]

end A154612

/-!
# A154613: Prime p such that 23p + 10 is prime.

The programs for A154613, the canonical program `A154613.P2203050780449046038` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A154613 has offset 1).

The definition of A154613 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1689 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A154613.P2203050780449046038

`p?[floor(A141914(n+1)/23)]`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A154613

/-- `p?[floor(A141914(n+1)/23)]` -/
def P2203050780449046038.Spec : Prop :=
  ∀ n, P2203050780449046038.a n = A154613 (n + 1)

theorem P2203050780449046038.correct : P2203050780449046038.Spec := by
  intro n
  simp only [A154613, Nat.add_sub_cancel]

end A154613

/-! ## A154613.P17159219180419870213

`∩[A040976(n+1)+2, floor(A141914(n+1)/23)]`
-/

namespace A154613.P17159219180419870213
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040976 (n + 1) + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A141914 (n + 1) : ℚ) / 23⌋

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A154613.P17159219180419870213

namespace A154613

/-- `∩[A040976(n+1)+2, floor(A141914(n+1)/23)]` -/
def P17159219180419870213.Spec : Prop :=
  ∀ n, (P17159219180419870213.a n : ℤ) = A154613 (n + 1)

end A154613

/-! ## A154613.P12303698596030288102

`record[A006530(floor(A141914(n+1)/23))]`
-/

namespace A154613.P12303698596030288102
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 ⌊(A141914 (n + 1) : ℚ) / 23⌋.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A154613.P12303698596030288102

namespace A154613

/-- `record[A006530(floor(A141914(n+1)/23))]` -/
def P12303698596030288102.Spec : Prop :=
  ∀ n, P12303698596030288102.a n = A154613 (n + 1)

end A154613

/-! ## A154613.P10454184687511709180

`record[A020639(floor(A141914(n+1)/23))]`
-/

namespace A154613.P10454184687511709180
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 ⌊(A141914 (n + 1) : ℚ) / 23⌋.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A154613.P10454184687511709180

namespace A154613

/-- `record[A020639(floor(A141914(n+1)/23))]` -/
def P10454184687511709180.Spec : Prop :=
  ∀ n, P10454184687511709180.a n = A154613 (n + 1)

end A154613

/-! ## A154613.P4393560141995892707

`record[A006530(round(A141914(n+1)/23))]`
-/

namespace A154613.P4393560141995892707
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (SequenceMachineLib.roundAway ((A141914 (n + 1) : ℚ) / 23)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A154613.P4393560141995892707

namespace A154613

/-- `record[A006530(round(A141914(n+1)/23))]` -/
def P4393560141995892707.Spec : Prop :=
  ∀ n, P4393560141995892707.a n = A154613 (n + 1)

end A154613

/-! ## A154613.P9985871697536631504

`record[A014963(floor(A141914(n+1)/23))]`
-/

namespace A154613.P9985871697536631504
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 ⌊(A141914 (n + 1) : ℚ) / 23⌋.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A154613.P9985871697536631504

namespace A154613

/-- `record[A014963(floor(A141914(n+1)/23))]` -/
def P9985871697536631504.Spec : Prop :=
  ∀ n, P9985871697536631504.a n = A154613 (n + 1)

end A154613

/-! ## A154613.P11472590416237002369

`record[A014963(round(A141914(n+1)/23))]`
-/

namespace A154613.P11472590416237002369
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (SequenceMachineLib.roundAway ((A141914 (n + 1) : ℚ) / 23)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A154613.P11472590416237002369

namespace A154613

/-- `record[A014963(round(A141914(n+1)/23))]` -/
def P11472590416237002369.Spec : Prop :=
  ∀ n, P11472590416237002369.a n = A154613 (n + 1)

end A154613

/-!
# A154614: Triangle read by rows where T(m,n) = m*n + m + n - 1, 1<=n<=m.

The programs for A154614, the canonical program `A154614.P18255365017366743044` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A154614 has offset 1).

The definition of A154614 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(row(n)+1)*(col(n)+1)+row(n)+1+col(n)` (program `A154614.P18255365017366743044`, by `A154614.P18255365017366743044.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A154614.P18255365017366743044

`(row(n)+1)*(col(n)+1)+row(n)+1+col(n)`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A154614

/-- `(row(n)+1)*(col(n)+1)+row(n)+1+col(n)` -/
def P18255365017366743044.Spec : Prop :=
  ∀ n, (P18255365017366743044.a n : ℤ) = A154614 (n + 1)

theorem P18255365017366743044.correct : P18255365017366743044.Spec := by
  intro n
  simp only [A154614, Nat.add_sub_cancel]

end A154614

/-! ## A154614.P16813146600849656081

`(row(n)+1)*(col(n)+1)+row(n)+1+col(n)+1-1`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A154614.P16813146600849656081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.triRow n + 1) * (SequenceMachineLib.triCol n + 1) + (SequenceMachineLib.triRow n + 1) + (SequenceMachineLib.triCol n + 1) : ℤ) - 1

end

end A154614.P16813146600849656081

namespace A154614

/-- `(row(n)+1)*(col(n)+1)+row(n)+1+col(n)+1-1` -/
def P16813146600849656081.Spec : Prop :=
  ∀ n, P16813146600849656081.a n = A154614 (n + 1)

theorem P16813146600849656081.correct : P16813146600849656081.Spec := by
  intro n
  simp only [A154614, Nat.add_sub_cancel, A154614.P16813146600849656081.a, A154614.P18255365017366743044.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A154614

/-! ## A154614.P6113375565328400566

`(col(n)+2)*(row(n)+2)-2`
-/

namespace A154614.P6113375565328400566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.triCol n + 2) * (SequenceMachineLib.triRow n + 2) : ℤ) - 2

end

end A154614.P6113375565328400566

namespace A154614

/-- `(col(n)+2)*(row(n)+2)-2` -/
def P6113375565328400566.Spec : Prop :=
  ∀ n, P6113375565328400566.a n = A154614 (n + 1)

theorem P6113375565328400566.correct : P6113375565328400566.Spec := by
  intro n
  simp only [A154614, Nat.add_sub_cancel, A154614.P6113375565328400566.a, A154614.P18255365017366743044.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A154614

/-! ## A154614.P18397338107118987221

`col(n)+(col(n)+2)*(row(n)+1)`
-/

namespace A154614.P18397338107118987221
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.triCol n + (SequenceMachineLib.triCol n + 2) * (SequenceMachineLib.triRow n + 1)

end

end A154614.P18397338107118987221

namespace A154614

/-- `col(n)+(col(n)+2)*(row(n)+1)` -/
def P18397338107118987221.Spec : Prop :=
  ∀ n, (P18397338107118987221.a n : ℤ) = A154614 (n + 1)

theorem P18397338107118987221.correct : P18397338107118987221.Spec := by
  intro n
  simp only [A154614, Nat.add_sub_cancel, A154614.P18397338107118987221.a, A154614.P18255365017366743044.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A154614

/-! ## A154614.P7720056840829409242

`A218036(n+1)-2`
-/

namespace A154614.P7720056840829409242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218036 (n + 1) - 2

end

end A154614.P7720056840829409242

namespace A154614

/-- `A218036(n+1)-2` -/
def P7720056840829409242.Spec : Prop :=
  ∀ n, P7720056840829409242.a n = A154614 (n + 1)

end A154614

/-! ## A154614.P12508276754961316848

`A204250(n+1)+(n+1-C(round(sqrt(2*n+1)), 2))²`
-/

namespace A154614.P12508276754961316848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204250 (n + 1) + ((n + 1 : ℤ) - (Nat.choose (SequenceMachineLib.roundAway (Real.sqrt (2 * n + 1 : ℝ))).toNat 2 : ℤ)) ^ 2

end

end A154614.P12508276754961316848

namespace A154614

/-- `A204250(n+1)+(n+1-C(round(sqrt(2*n+1)), 2))²` -/
def P12508276754961316848.Spec : Prop :=
  ∀ n, P12508276754961316848.a n = A154614 (n + 1)

end A154614

/-! ## A154614.P14846977641239755938

`A092283(n+1)+A059036(n)`
-/

namespace A154614.P14846977641239755938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092283 (n + 1) + A059036 n

end

end A154614.P14846977641239755938

namespace A154614

/-- `A092283(n+1)+A059036(n)` -/
def P14846977641239755938.Spec : Prop :=
  ∀ n, P14846977641239755938.a n = A154614 (n + 1)

theorem P14846977641239755938.correct : P14846977641239755938.Spec := by
  intro n
  simp only [A154614, Nat.add_sub_cancel, A154614.P14846977641239755938.a, A154614.P18255365017366743044.a, A059036, A059036.P14090632459187506294.a, A092283, A092283.P6504931409094678130.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A154614

/-! ## A154614.P18367855119329051919

`A070216(n+1)-A073254(n)`
-/

namespace A154614.P18367855119329051919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070216 (n + 1) - A073254 n

end

end A154614.P18367855119329051919

namespace A154614

/-- `A070216(n+1)-A073254(n)` -/
def P18367855119329051919.Spec : Prop :=
  ∀ n, P18367855119329051919.a n = A154614 (n + 1)

theorem P18367855119329051919.correct : P18367855119329051919.Spec := by
  intro n
  simp only [A154614, Nat.add_sub_cancel, A154614.P18367855119329051919.a, A154614.P18255365017366743044.a, A070216, A070216.P6220204723387715079.a, A073254, A073254.P5875854829665146571.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A154614

/-! ## A154614.P9604204737187629273

`A108667(n)%A172292(n+1)`
-/

namespace A154614.P9604204737187629273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A108667 n) (A172292 (n + 1))

end

end A154614.P9604204737187629273

namespace A154614

/-- `A108667(n)%A172292(n+1)` -/
def P9604204737187629273.Spec : Prop :=
  ∀ n, P9604204737187629273.a n = A154614 (n + 1)

end A154614

/-! ## A154614.P6248622813657889052

`∑[A035214(n)]+n-A091435(n)`
-/

namespace A154614.P6248622813657889052
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035214 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + ((n : ℤ) - A091435 n)

end

end A154614.P6248622813657889052

namespace A154614

/-- `∑[A035214(n)]+n-A091435(n)` -/
def P6248622813657889052.Spec : Prop :=
  ∀ n, P6248622813657889052.a n = A154614 (n + 1)

end A154614

/-! ## A154614.P11660870611965414891

`A075362(A014132(n+1)+1)-2`
-/

namespace A154614.P11660870611965414891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075362 (A014132 (n + 1) + 1).toNat - 2

end

end A154614.P11660870611965414891

namespace A154614

/-- `A075362(A014132(n+1)+1)-2` -/
def P11660870611965414891.Spec : Prop :=
  ∀ n, P11660870611965414891.a n = A154614 (n + 1)

end A154614

/-! ## A154614.P12705858511179892788

`A075362(A007401(n+1)+2)-2`
-/

namespace A154614.P12705858511179892788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075362 (A007401 (n + 1) + 2).toNat - 2

end

end A154614.P12705858511179892788

namespace A154614

/-- `A075362(A007401(n+1)+2)-2` -/
def P12705858511179892788.Spec : Prop :=
  ∀ n, P12705858511179892788.a n = A154614 (n + 1)

end A154614

/-! ## A154614.P4978915770211497713

`A075362(n+1)+A051162(n)+1`
-/

namespace A154614.P4978915770211497713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075362 (n + 1) + (A051162 n + 1)

end

end A154614.P4978915770211497713

namespace A154614

/-- `A075362(n+1)+A051162(n)+1` -/
def P4978915770211497713.Spec : Prop :=
  ∀ n, P4978915770211497713.a n = A154614 (n + 1)

theorem P4978915770211497713.correct : P4978915770211497713.Spec := by
  intro n
  simp only [A154614, Nat.add_sub_cancel, A154614.P4978915770211497713.a, A154614.P18255365017366743044.a, A051162, A051162.P4484969187050632534.a, A075362, A075362.P14519753816398962141.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A154614

/-! ## A154614.P6039857124997590503

`A094727(n+1)+A075362(n+1)`
-/

namespace A154614.P6039857124997590503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094727 (n + 1) + A075362 (n + 1)

end

end A154614.P6039857124997590503

namespace A154614

/-- `A094727(n+1)+A075362(n+1)` -/
def P6039857124997590503.Spec : Prop :=
  ∀ n, P6039857124997590503.a n = A154614 (n + 1)

theorem P6039857124997590503.correct : P6039857124997590503.Spec := by
  intro n
  simp only [A154614, Nat.add_sub_cancel, A154614.P6039857124997590503.a, A154614.P18255365017366743044.a, A075362, A075362.P14519753816398962141.a, A094727, A094727.P1041695477673985807.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A154614

/-! ## A154614.P1591398858147012189

`A131421(n+1)+A076110(n+1)`
-/

namespace A154614.P1591398858147012189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131421 (n + 1) + A076110 (n + 1)

end

end A154614.P1591398858147012189

namespace A154614

/-- `A131421(n+1)+A076110(n+1)` -/
def P1591398858147012189.Spec : Prop :=
  ∀ n, P1591398858147012189.a n = A154614 (n + 1)

theorem P1591398858147012189.correct : P1591398858147012189.Spec := by
  intro n
  simp only [A154614, Nat.add_sub_cancel, A154614.P1591398858147012189.a, A154614.P18255365017366743044.a, A076110, A076110.P1795246513683719096.a, A131421, A131421.P16745487656165401881.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A154614

/-! ## A154614.P2624582257768847905

`A131421(n+1)+A079904(n)+1`
-/

namespace A154614.P2624582257768847905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131421 (n + 1) + (A079904 n + 1)

end

end A154614.P2624582257768847905

namespace A154614

/-- `A131421(n+1)+A079904(n)+1` -/
def P2624582257768847905.Spec : Prop :=
  ∀ n, P2624582257768847905.a n = A154614 (n + 1)

theorem P2624582257768847905.correct : P2624582257768847905.Spec := by
  intro n
  simp only [A154614, Nat.add_sub_cancel, A154614.P2624582257768847905.a, A154614.P18255365017366743044.a, A079904, A079904.P681072687927778273.a, A131421, A131421.P16745487656165401881.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A154614

/-! ## A154614.P6035415689347804765

`A141419(n+1)+A134464(n+1)`
-/

namespace A154614.P6035415689347804765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141419 (n + 1) + A134464 (n + 1)

end

end A154614.P6035415689347804765

namespace A154614

/-- `A141419(n+1)+A134464(n+1)` -/
def P6035415689347804765.Spec : Prop :=
  ∀ n, P6035415689347804765.a n = A154614 (n + 1)

end A154614

/-! ## A154614.P17472000330307627608

`A162610(n+1)+A158405(n+1)`
-/

namespace A154614.P17472000330307627608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162610 (n + 1) + A158405 (n + 1)

end

end A154614.P17472000330307627608

namespace A154614

/-- `A162610(n+1)+A158405(n+1)` -/
def P17472000330307627608.Spec : Prop :=
  ∀ n, P17472000330307627608.a n = A154614 (n + 1)

theorem P17472000330307627608.correct : P17472000330307627608.Spec := by
  intro n
  simp only [A154614, Nat.add_sub_cancel, A154614.P17472000330307627608.a, A154614.P18255365017366743044.a, A158405, A158405.P5173674940907569791.a, A162610, A162610.P6374762696531714150.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A154614

/-! ## A154614.P7480704126574516885

`A223544(n+1)+A108872(n+1)`
-/

namespace A154614.P7480704126574516885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223544 (n + 1) + A108872 (n + 1)

end

end A154614.P7480704126574516885

namespace A154614

/-- `A223544(n+1)+A108872(n+1)` -/
def P7480704126574516885.Spec : Prop :=
  ∀ n, P7480704126574516885.a n = A154614 (n + 1)

end A154614

/-! ## A154614.P8399331065850055979

`A204250(n+1)+A133819(n+1)`
-/

namespace A154614.P8399331065850055979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204250 (n + 1) + A133819 (n + 1)

end

end A154614.P8399331065850055979

namespace A154614

/-- `A204250(n+1)+A133819(n+1)` -/
def P8399331065850055979.Spec : Prop :=
  ∀ n, P8399331065850055979.a n = A154614 (n + 1)

theorem P8399331065850055979.correct : P8399331065850055979.Spec := by
  intro n
  simp only [A154614, Nat.add_sub_cancel, A154614.P8399331065850055979.a, A154614.P18255365017366743044.a, A133819, A133819.P4652954550055324138.a, A204250, A204250.P2607520245277091701.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A154614

/-!
# A154615: a(n) = A022998(n)^2.

The programs for A154615, the canonical program `A154615.P10632422098970786135` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A154615 has offset 0).

The definition of A154615 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A022998(n)²` (program `A154615.P10632422098970786135`, by `A154615.P10632422098970786135.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A154615.P11965420016400016903

`1/2*(5+3*(-1)^n)*n²`
-/

namespace A154615.P11965420016400016903
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 : ℚ) / 2 * (5 + 3 * (-1) ^ n : ℚ) * (n ^ 2 : ℚ)

end

end A154615.P11965420016400016903

namespace A154615

/-- `1/2*(5+3*(-1)^n)*n²` -/
def P11965420016400016903.Spec : Prop :=
  ∀ n, P11965420016400016903.a n = (A154615 n : ℚ)

end A154615

/-! ## A154615.P3869575390027949555

`ogf((x+16x^2+6x^3+16x^4+x^5)/(1-3x^2+3x^4-x^6))`
-/

namespace A154615.P3869575390027949555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1, 16, 6, 16, 1] [1, 0, -3, 0, 3, 0, -1] n

end

end A154615.P3869575390027949555

namespace A154615

/-- `ogf((x+16x^2+6x^3+16x^4+x^5)/(1-3x^2+3x^4-x^6))` -/
def P3869575390027949555.Spec : Prop :=
  ∀ n, P3869575390027949555.a n = A154615 n

end A154615

/-! ## A154615.P12073021416091645246

`3*a(n-2)-3*a(n-4)+a(n-6)` with `a(0)=0, a(1)=1, a(2)=16, a(3)=9, a(4)=64, a(5)=25`
-/

namespace A154615.P12073021416091645246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 16, 9, 64, 25] fun n a =>
  3 * a (n - 2) - 3 * a (n - 4) + a (n - 6)

end

end A154615.P12073021416091645246

namespace A154615

/-- `3*a(n-2)-3*a(n-4)+a(n-6)` -/
def P12073021416091645246.Spec : Prop :=
  ∀ n, P12073021416091645246.a n = A154615 n

end A154615

/-! ## A154615.P10632422098970786135

`A022998(n)²`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A154615

/-- `A022998(n)²` -/
def P10632422098970786135.Spec : Prop :=
  ∀ n, P10632422098970786135.a n = A154615 n

theorem P10632422098970786135.correct : P10632422098970786135.Spec := by
  intro n
  simp only [A154615]

end A154615

/-! ## A154615.P14611691161639674879

`(gcd(2, n)*n)²`
-/

namespace A154615.P14611691161639674879
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (Nat.gcd 2 n * n) ^ 2

end

end A154615.P14611691161639674879

namespace A154615

/-- `(gcd(2, n)*n)²` -/
def P14611691161639674879.Spec : Prop :=
  ∀ n, (P14611691161639674879.a n : ℤ) = A154615 n

end A154615

/-! ## A154615.P11884041401641180368

`(n*or(n, -2))²`
-/

namespace A154615.P11884041401641180368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) * Int.lor (n : ℤ) (-2)) ^ 2

end

end A154615.P11884041401641180368

namespace A154615

/-- `(n*or(n, -2))²` -/
def P11884041401641180368.Spec : Prop :=
  ∀ n, P11884041401641180368.a n = A154615 n

end A154615

/-! ## A154615.P13772781413542504847

`(n*(2-n%2))²`
-/

namespace A154615.P13772781413542504847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) * (2 - ((n % 2 : ℕ) : ℤ))) ^ 2

end

end A154615.P13772781413542504847

namespace A154615

/-- `(n*(2-n%2))²` -/
def P13772781413542504847.Spec : Prop :=
  ∀ n, P13772781413542504847.a n = A154615 n

end A154615

/-! ## A154615.P8699583661520930411

`(lcm(2, n)-3*n)²`
-/

namespace A154615.P8699583661520930411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((Nat.lcm 2 n : ℤ) - (3 * n : ℤ)) ^ 2

end

end A154615.P8699583661520930411

namespace A154615

/-- `(lcm(2, n)-3*n)²` -/
def P8699583661520930411.Spec : Prop :=
  ∀ n, P8699583661520930411.a n = A154615 n

end A154615

/-! ## A154615.P12775502401117442269

`(n*(and(1, n)-2))²`
-/

namespace A154615.P12775502401117442269
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) * ((Nat.land 1 n : ℤ) - 2)) ^ 2

end

end A154615.P12775502401117442269

namespace A154615

/-- `(n*(and(1, n)-2))²` -/
def P12775502401117442269.Spec : Prop :=
  ∀ n, P12775502401117442269.a n = A154615 n

end A154615

/-! ## A154615.P7510879543820532983

`gcd(1-Δ[n²], n²)²`
-/

namespace A154615.P7510879543820532983
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (1 - ((f1 (n + 1) : ℤ) - (f1 n : ℤ))) (n ^ 2 : ℤ) ^ 2

end

end A154615.P7510879543820532983

namespace A154615

/-- `gcd(1-Δ[n²], n²)²` -/
def P7510879543820532983.Spec : Prop :=
  ∀ n, (P7510879543820532983.a n : ℤ) = A154615 n

end A154615

/-! ## A154615.P9978481340446521049

`(2*n/(and(1, n)+1))²`
-/

namespace A154615.P9978481340446521049
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((2 * n : ℚ) / (Nat.land 1 n + 1 : ℚ)) ^ 2

end

end A154615.P9978481340446521049

namespace A154615

/-- `(2*n/(and(1, n)+1))²` -/
def P9978481340446521049.Spec : Prop :=
  ∀ n, P9978481340446521049.a n = (A154615 n : ℚ)

end A154615

/-! ## A154615.P14768259928992775299

`(n*2^and(1, n+1))²`
-/

namespace A154615.P14768259928992775299
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n * 2 ^ Nat.land 1 (n + 1)) ^ 2

end

end A154615.P14768259928992775299

namespace A154615

/-- `(n*2^and(1, n+1))²` -/
def P14768259928992775299.Spec : Prop :=
  ∀ n, (P14768259928992775299.a n : ℤ) = A154615 n

end A154615

/-! ## A154615.P1749739187617720949

`(2*n/2^and(1, n))²`
-/

namespace A154615.P1749739187617720949
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((2 * n : ℚ) / (2 ^ Nat.land 1 n : ℚ)) ^ 2

end

end A154615.P1749739187617720949

namespace A154615

/-- `(2*n/2^and(1, n))²` -/
def P1749739187617720949.Spec : Prop :=
  ∀ n, P1749739187617720949.a n = (A154615 n : ℚ)

end A154615

/-! ## A154615.P2015722398772813411

`(n*C(2, and(1, n+1)))²`
-/

namespace A154615.P2015722398772813411
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n * Nat.choose 2 (Nat.land 1 (n + 1))) ^ 2

end

end A154615.P2015722398772813411

namespace A154615

/-- `(n*C(2, and(1, n+1)))²` -/
def P2015722398772813411.Spec : Prop :=
  ∀ n, (P2015722398772813411.a n : ℤ) = A154615 n

end A154615

/-! ## A154615.P9621686661301304666

`(n*val(2*or(2, n), 2))²`
-/

namespace A154615.P9621686661301304666
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n * SequenceMachineLib.valuation (2 * Nat.lor 2 n) 2) ^ 2

end

end A154615.P9621686661301304666

namespace A154615

/-- `(n*val(2*or(2, n), 2))²` -/
def P9621686661301304666.Spec : Prop :=
  ∀ n, (P9621686661301304666.a n : ℤ) = A154615 n

end A154615

/-! ## A154615.P8287223907965468254

`(2*n/C(2, and(1, n)))²`
-/

namespace A154615.P8287223907965468254
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((2 * n : ℚ) / (Nat.choose 2 (Nat.land 1 n) : ℚ)) ^ 2

end

end A154615.P8287223907965468254

namespace A154615

/-- `(2*n/C(2, and(1, n)))²` -/
def P8287223907965468254.Spec : Prop :=
  ∀ n, P8287223907965468254.a n = (A154615 n : ℚ)

end A154615

/-! ## A154615.P13362463722206675583

`(n*and(1, n+1)+n)²`
-/

namespace A154615.P13362463722206675583
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n * Nat.land 1 (n + 1) + n) ^ 2

end

end A154615.P13362463722206675583

namespace A154615

/-- `(n*and(1, n+1)+n)²` -/
def P13362463722206675583.Spec : Prop :=
  ∀ n, (P13362463722206675583.a n : ℤ) = A154615 n

end A154615

/-! ## A154615.P15410223567044318560

`(n*(or(1, n)-(n-1)))²`
-/

namespace A154615.P15410223567044318560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) * ((Nat.lor 1 n : ℤ) - ((n : ℤ) - 1))) ^ 2

end

end A154615.P15410223567044318560

namespace A154615

/-- `(n*(or(1, n)-(n-1)))²` -/
def P15410223567044318560.Spec : Prop :=
  ∀ n, P15410223567044318560.a n = A154615 n

end A154615

/-! ## A154615.P10388488913581435779

`(C(or(1, n), n)+n-1)²`
-/

namespace A154615.P10388488913581435779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((Nat.choose (Nat.lor 1 n) n : ℤ) + ((n : ℤ) - 1)) ^ 2

end

end A154615.P10388488913581435779

namespace A154615

/-- `(C(or(1, n), n)+n-1)²` -/
def P10388488913581435779.Spec : Prop :=
  ∀ n, P10388488913581435779.a n = A154615 n

end A154615

/-! ## A154615.P13180434375715815155

`(2*n-C(n, xor(1, n)))²`
-/

namespace A154615.P13180434375715815155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((2 * n : ℤ) - (Nat.choose n (Nat.xor 1 n) : ℤ)) ^ 2

end

end A154615.P13180434375715815155

namespace A154615

/-- `(2*n-C(n, xor(1, n)))²` -/
def P13180434375715815155.Spec : Prop :=
  ∀ n, P13180434375715815155.a n = A154615 n

end A154615

/-!
# A154616: Primes of the form (4*n^2-8*n-9)/3.

The programs for A154616, the canonical program `A154616.P3478016632847234283` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A154616 has offset 1).

The definition of A154616 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 160 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A154616.P3478016632847234283

`p?[floor((2*n)²/3)-4]`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A154616

/-- `p?[floor((2*n)²/3)-4]` -/
def P3478016632847234283.Spec : Prop :=
  ∀ n, P3478016632847234283.a n = A154616 (n + 1)

theorem P3478016632847234283.correct : P3478016632847234283.Spec := by
  intro n
  simp only [A154616, Nat.add_sub_cancel]

end A154616

/-! ## A154616.P5165871705833336695

`or(1, p?[A241199(n+1)-2])`
-/

namespace A154616.P5165871705833336695
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241199 (n + 1) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A154616.P5165871705833336695

namespace A154616

/-- `or(1, p?[A241199(n+1)-2])` -/
def P5165871705833336695.Spec : Prop :=
  ∀ n, P5165871705833336695.a n = A154616 (n + 1)

end A154616

/-! ## A154616.P10592315170071752768

`or(1, p?[A001082(n+1)-4])`
-/

namespace A154616.P10592315170071752768
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001082 (n + 1) - 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A154616.P10592315170071752768

namespace A154616

/-- `or(1, p?[A001082(n+1)-4])` -/
def P10592315170071752768.Spec : Prop :=
  ∀ n, P10592315170071752768.a n = A154616 (n + 1)

end A154616

/-! ## A154616.P18036835674876056358

`abs(1-p?[A001082(n+3)-4])+1`
-/

namespace A154616.P18036835674876056358
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001082 (n + 3) - 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)| + 1

end

end A154616.P18036835674876056358

namespace A154616

/-- `abs(1-p?[A001082(n+3)-4])+1` -/
def P18036835674876056358.Spec : Prop :=
  ∀ n, P18036835674876056358.a n = A154616 (n + 1)

end A154616

/-! ## A154616.P3011852284021300135

`round(sqrt(p?[A241199(n+2)-2]²+1))`
-/

namespace A154616.P3011852284021300135
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241199 (n + 2) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) ^ 2 + 1 : ℝ))

end

end A154616.P3011852284021300135

namespace A154616

/-- `round(sqrt(p?[A241199(n+2)-2]²+1))` -/
def P3011852284021300135.Spec : Prop :=
  ∀ n, P3011852284021300135.a n = A154616 (n + 1)

end A154616

/-! ## A154616.P8996614794571604469

`p?[A001082(n+1)-4]%A017499(n)`
-/

namespace A154616.P8996614794571604469
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001082 (n + 1) - 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)) (A017499 n)

end

end A154616.P8996614794571604469

namespace A154616

/-- `p?[A001082(n+1)-4]%A017499(n)` -/
def P8996614794571604469.Spec : Prop :=
  ∀ n, P8996614794571604469.a n = A154616 (n + 1)

end A154616

/-! ## A154616.P14708774219333624982

`lcm(p?[A001082(n+1)-4], A020985(n))`
-/

namespace A154616.P14708774219333624982
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001082 (n + 1) - 4

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)) (A020985 n)

end

end A154616.P14708774219333624982

namespace A154616

/-- `lcm(p?[A001082(n+1)-4], A020985(n))` -/
def P14708774219333624982.Spec : Prop :=
  ∀ n, (P14708774219333624982.a n : ℤ) = A154616 (n + 1)

end A154616

/-! ## A154616.P9791306761495787834

`A000007(n+1)+p?[A001082(n+1)-4]`
-/

namespace A154616.P9791306761495787834
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001082 (n + 1) - 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (n + 1) + f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A154616.P9791306761495787834

namespace A154616

/-- `A000007(n+1)+p?[A001082(n+1)-4]` -/
def P9791306761495787834.Spec : Prop :=
  ∀ n, P9791306761495787834.a n = A154616 (n + 1)

end A154616

/-! ## A154616.P9572098420797410669

`A000038(n+1)+p?[A001082(n+1)-4]`
-/

namespace A154616.P9572098420797410669
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001082 (n + 1) - 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 (n + 1) + f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A154616.P9572098420797410669

namespace A154616

/-- `A000038(n+1)+p?[A001082(n+1)-4]` -/
def P9572098420797410669.Spec : Prop :=
  ∀ n, P9572098420797410669.a n = A154616 (n + 1)

end A154616

/-! ## A154616.P5814876593731020565

`A000035(2*n)+p?[A001082(n+1)-4]`
-/

namespace A154616.P5814876593731020565
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001082 (n + 1) - 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (2 * n) + f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A154616.P5814876593731020565

namespace A154616

/-- `A000035(2*n)+p?[A001082(n+1)-4]` -/
def P5814876593731020565.Spec : Prop :=
  ∀ n, P5814876593731020565.a n = A154616 (n + 1)

end A154616

/-! ## A154616.P4868200160014278431

`A007318(C(2, n))*p?[A001082(n+1)-4]`
-/

namespace A154616.P4868200160014278431
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001082 (n + 1) - 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A154616.P4868200160014278431

namespace A154616

/-- `A007318(C(2, n))*p?[A001082(n+1)-4]` -/
def P4868200160014278431.Spec : Prop :=
  ∀ n, P4868200160014278431.a n = A154616 (n + 1)

end A154616

/-! ## A154616.P1415035193906574399

`p?[A001082(n+1)-4]/A007318(C(3, n))`
-/

namespace A154616.P1415035193906574399
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001082 (n + 1) - 4

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) : ℚ) / (A007318 (Nat.choose 3 n) : ℚ)

end

end A154616.P1415035193906574399

namespace A154616

/-- `p?[A001082(n+1)-4]/A007318(C(3, n))` -/
def P1415035193906574399.Spec : Prop :=
  ∀ n, P1415035193906574399.a n = (A154616 (n + 1) : ℚ)

end A154616

/-! ## A154616.P3865665881031249840

`p?[A001082(n+1)-4]*A001511(2*n+1)`
-/

namespace A154616.P3865665881031249840
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001082 (n + 1) - 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) * A001511 (2 * n + 1)

end

end A154616.P3865665881031249840

namespace A154616

/-- `p?[A001082(n+1)-4]*A001511(2*n+1)` -/
def P3865665881031249840.Spec : Prop :=
  ∀ n, P3865665881031249840.a n = A154616 (n + 1)

end A154616

/-! ## A154616.P5961922195132441957

`p?[A001082(n+1)-4]+A008683(4*(n+1))`
-/

namespace A154616.P5961922195132441957
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001082 (n + 1) - 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) + A008683 (4 * (n + 1))

end

end A154616.P5961922195132441957

namespace A154616

/-- `p?[A001082(n+1)-4]+A008683(4*(n+1))` -/
def P5961922195132441957.Spec : Prop :=
  ∀ n, P5961922195132441957.a n = A154616 (n + 1)

end A154616

/-! ## A154616.P10886966441414781988

`A014963(12*(n+1))*p?[A001082(n+1)-4]`
-/

namespace A154616.P10886966441414781988
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001082 (n + 1) - 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (12 * (n + 1)) * f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A154616.P10886966441414781988

namespace A154616

/-- `A014963(12*(n+1))*p?[A001082(n+1)-4]` -/
def P10886966441414781988.Spec : Prop :=
  ∀ n, P10886966441414781988.a n = A154616 (n + 1)

end A154616

/-! ## A154616.P5990645428076383567

`A001222(A000705(n+1))*p?[A001082(n+1)-4]`
-/

namespace A154616.P5990645428076383567
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001082 (n + 1) - 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A000705 (n + 1)).toNat * f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A154616.P5990645428076383567

namespace A154616

/-- `A001222(A000705(n+1))*p?[A001082(n+1)-4]` -/
def P5990645428076383567.Spec : Prop :=
  ∀ n, P5990645428076383567.a n = A154616 (n + 1)

end A154616

/-! ## A154616.P10718045786598640082

`p?[A001082(n+1)-4]*A003557(A000040(n+1))`
-/

namespace A154616.P10718045786598640082
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001082 (n + 1) - 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) * A003557 (A000040 (n + 1)).toNat

end

end A154616.P10718045786598640082

namespace A154616

/-- `p?[A001082(n+1)-4]*A003557(A000040(n+1))` -/
def P10718045786598640082.Spec : Prop :=
  ∀ n, P10718045786598640082.a n = A154616 (n + 1)

end A154616

/-! ## A154616.P6690324191021814326

`A001221(A006512(n+1))*p?[A001082(n+1)-4]`
-/

namespace A154616.P6690324191021814326
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001082 (n + 1) - 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A006512 (n + 1)).toNat * f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A154616.P6690324191021814326

namespace A154616

/-- `A001221(A006512(n+1))*p?[A001082(n+1)-4]` -/
def P6690324191021814326.Spec : Prop :=
  ∀ n, P6690324191021814326.a n = A154616 (n + 1)

end A154616

/-! ## A154616.P3819030469819685119

`∩[A008846(n+1), A157417(n+1)]`
-/

namespace A154616.P3819030469819685119
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008846 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157417 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A154616.P3819030469819685119

namespace A154616

/-- `∩[A008846(n+1), A157417(n+1)]` -/
def P3819030469819685119.Spec : Prop :=
  ∀ n, (P3819030469819685119.a n : ℤ) = A154616 (n + 1)

end A154616

/-! ## A154616.P15769598626319831779

`∩[A033210(n+1), A157417(n+1)]`
-/

namespace A154616.P15769598626319831779
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033210 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157417 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A154616.P15769598626319831779

namespace A154616

/-- `∩[A033210(n+1), A157417(n+1)]` -/
def P15769598626319831779.Spec : Prop :=
  ∀ n, (P15769598626319831779.a n : ℤ) = A154616 (n + 1)

end A154616

/-!
# A154617: Eleven times hexagonal numbers: a(n) = 11*n*(2*n-1).

The programs for A154617, the canonical program `A154617.P15010392269036294234` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A154617 has offset 0).

The definition of A154617 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `11*n*(2*n-1)` (program `A154617.P15010392269036294234`, by `A154617.P15010392269036294234.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A154617.P9373564323532068574

`22*n²-11*n`
-/

namespace A154617.P9373564323532068574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (22 * n ^ 2 : ℤ) - (11 * n : ℤ)

end

end A154617.P9373564323532068574

namespace A154617

/-- `22*n²-11*n` -/
def P9373564323532068574.Spec : Prop :=
  ∀ n, P9373564323532068574.a n = A154617 n

theorem P9373564323532068574.correct : P9373564323532068574.Spec := by
  intro n
  simp only [A154617, Nat.add_sub_cancel, A154617.P9373564323532068574.a, A154617.P15010392269036294234.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A154617

/-! ## A154617.P15010392269036294234

`11*n*(2*n-1)`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A154617

/-- `11*n*(2*n-1)` -/
def P15010392269036294234.Spec : Prop :=
  ∀ n, P15010392269036294234.a n = A154617 n

theorem P15010392269036294234.correct : P15010392269036294234.Spec := by
  intro n
  simp only [A154617]

end A154617

/-! ## A154617.P9078956017377942863

`ogf((11x+33x^2)/(1-3x+3x^2-x^3))`
-/

namespace A154617.P9078956017377942863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 11, 33] [1, -3, 3, -1] n

end

end A154617.P9078956017377942863

namespace A154617

/-- `ogf((11x+33x^2)/(1-3x+3x^2-x^3))` -/
def P9078956017377942863.Spec : Prop :=
  ∀ n, P9078956017377942863.a n = A154617 n

end A154617

/-! ## A154617.P6483917376727191654

`11*C(2*n, 2)`
-/

namespace A154617.P6483917376727191654
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11 * Nat.choose (2 * n) 2

end

end A154617.P6483917376727191654

namespace A154617

/-- `11*C(2*n, 2)` -/
def P6483917376727191654.Spec : Prop :=
  ∀ n, (P6483917376727191654.a n : ℤ) = A154617 n

theorem P6483917376727191654.correct : P6483917376727191654.Spec := by
  intro n
  simp only [A154617, Nat.add_sub_cancel, A154617.P6483917376727191654.a, A154617.P15010392269036294234.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A154617

/-! ## A154617.P14456784883160586317

`∑[a(n-1)+44]` with `a(0)=0, a(1)=11`
-/

namespace A154617.P14456784883160586317
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 11] fun n f1 =>
  f1 (n - 1) + 44

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A154617.P14456784883160586317

namespace A154617

/-- `∑[a(n-1)+44]` -/
def P14456784883160586317.Spec : Prop :=
  ∀ n, (P14456784883160586317.a n : ℤ) = A154617 n

end A154617

/-! ## A154617.P2013957478551159483

`A152740(A004273(n))`
-/

namespace A154617.P2013957478551159483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152740 (A004273 n).toNat

end

end A154617.P2013957478551159483

namespace A154617

/-- `A152740(A004273(n))` -/
def P2013957478551159483.Spec : Prop :=
  ∀ n, P2013957478551159483.a n = A154617 n

end A154617

/-! ## A154617.P15514350048135561963

`A008593(C(2*n, 2))`
-/

namespace A154617.P15514350048135561963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008593 (Nat.choose (2 * n) 2)

end

end A154617.P15514350048135561963

namespace A154617

/-- `A008593(C(2*n, 2))` -/
def P15514350048135561963.Spec : Prop :=
  ∀ n, P15514350048135561963.a n = A154617 n

theorem P15514350048135561963.correct : P15514350048135561963.Spec := by
  intro n
  simp only [A154617, Nat.add_sub_cancel, A154617.P15514350048135561963.a, A154617.P15010392269036294234.a, A008593, A008593.P2680892499938115192.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A154617

/-! ## A154617.P4471273786963263245

`A008593(A000384(n))`
-/

namespace A154617.P4471273786963263245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008593 (A000384 n).toNat

end

end A154617.P4471273786963263245

namespace A154617

/-- `A008593(A000384(n))` -/
def P4471273786963263245.Spec : Prop :=
  ∀ n, P4471273786963263245.a n = A154617 n

end A154617

/-! ## A154617.P9462715338250847422

`A008593(A001105(n)-n)`
-/

namespace A154617.P9462715338250847422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008593 (A001105 n - (n : ℤ)).toNat

end

end A154617.P9462715338250847422

namespace A154617

/-- `A008593(A001105(n)-n)` -/
def P9462715338250847422.Spec : Prop :=
  ∀ n, P9462715338250847422.a n = A154617 n

end A154617

/-! ## A154617.P17689622659281324682

`A053715(A002939(n))`
-/

namespace A154617.P17689622659281324682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053715 (A002939 n).toNat

end

end A154617.P17689622659281324682

namespace A154617

/-- `A053715(A002939(n))` -/
def P17689622659281324682.Spec : Prop :=
  ∀ n, P17689622659281324682.a n = A154617 n

end A154617

/-!
# A154619: Primes of the form (4k^2 + 4k - 5)/5.

The programs for A154619, the canonical program `A154619.P4632223168614905001` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A154619 has offset 1).

The definition of A154619 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 111 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A154619.P4632223168614905001

`p?[ceil(4*n*(n-3)/5)]`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A154619

/-- `p?[ceil(4*n*(n-3)/5)]` -/
def P4632223168614905001.Spec : Prop :=
  ∀ n, P4632223168614905001.a n = A154619 (n + 1)

theorem P4632223168614905001.correct : P4632223168614905001.Spec := by
  intro n
  simp only [A154619, Nat.add_sub_cancel]

end A154619

/-! ## A154619.P16703305523197909313

`or(5, p?[lcm(2, n)+a(n-1)+n])` with `a(0)=0, a(1)=0, a(2)=6`
-/

namespace A154619.P16703305523197909313
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 0, 6] fun n f1 =>
  Nat.lcm 2 n + (f1 (n - 1) + n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 5 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A154619.P16703305523197909313

namespace A154619

/-- `or(5, p?[lcm(2, n)+a(n-1)+n])` -/
def P16703305523197909313.Spec : Prop :=
  ∀ n, (P16703305523197909313.a n : ℤ) = A154619 (n + 1)

end A154619

/-! ## A154619.P15057097866962439609

`or(1, p?[2*A132356(n)-1])`
-/

namespace A154619.P15057097866962439609
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A132356 n - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A154619.P15057097866962439609

namespace A154619

/-- `or(1, p?[2*A132356(n)-1])` -/
def P15057097866962439609.Spec : Prop :=
  ∀ n, P15057097866962439609.a n = A154619 (n + 1)

end A154619

/-! ## A154619.P7973974578795483018

`p?[2*A132356(n)-1]%A016900(n)`
-/

namespace A154619.P7973974578795483018
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A132356 n - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)) (A016900 n)

end

end A154619.P7973974578795483018

namespace A154619

/-- `p?[2*A132356(n)-1]%A016900(n)` -/
def P7973974578795483018.Spec : Prop :=
  ∀ n, P7973974578795483018.a n = A154619 (n + 1)

end A154619

/-! ## A154619.P3667107899890480760

`record[p?[2*A132356(A187112(n+1))-1]]`
-/

namespace A154619.P3667107899890480760
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A132356 (A187112 (n + 1)).toNat - 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A154619.P3667107899890480760

namespace A154619

/-- `record[p?[2*A132356(A187112(n+1))-1]]` -/
def P3667107899890480760.Spec : Prop :=
  ∀ n, P3667107899890480760.a n = A154619 (n + 1)

end A154619

/-! ## A154619.P13620328932805081225

`p?[2*A132356(n)-1]^A007318(∑[n])`
-/

namespace A154619.P13620328932805081225
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A132356 n - 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) : ℚ) ^ (A007318 (∑ j ∈ Finset.range (n + 1), f2 j) : ℤ)

end

end A154619.P13620328932805081225

namespace A154619

/-- `p?[2*A132356(n)-1]^A007318(∑[n])` -/
def P13620328932805081225.Spec : Prop :=
  ∀ n, P13620328932805081225.a n = (A154619 (n + 1) : ℚ)

end A154619

/-!
# A154620: Primes p such that 31p+14 is prime.

The programs for A154620, the canonical program `A154620.P17008154751221550007` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A154620 has offset 1).

The definition of A154620 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1501 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A154620.P17008154751221550007

`p?[floor(A142018(n+1)/31)]`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A154620

/-- `p?[floor(A142018(n+1)/31)]` -/
def P17008154751221550007.Spec : Prop :=
  ∀ n, P17008154751221550007.a n = A154620 (n + 1)

theorem P17008154751221550007.correct : P17008154751221550007.Spec := by
  intro n
  simp only [A154620, Nat.add_sub_cancel]

end A154620

/-! ## A154620.P3050800265106052172

`p?[round(A142018(ϕ²-(ϕ-n))/31)]`
-/

namespace A154620.P3050800265106052172
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A142018 (SequenceMachineLib.roundAway (Real.goldenRatio ^ 2 - (Real.goldenRatio - (n : ℝ)))).toNat : ℚ) / 31)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A154620.P3050800265106052172

namespace A154620

/-- `p?[round(A142018(ϕ²-(ϕ-n))/31)]` -/
def P3050800265106052172.Spec : Prop :=
  ∀ n, P3050800265106052172.a n = A154620 (n + 1)

end A154620

/-! ## A154620.P17617001898410135517

`record[A020639(floor(A142018(n+1)/31))]`
-/

namespace A154620.P17617001898410135517
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 ⌊(A142018 (n + 1) : ℚ) / 31⌋.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A154620.P17617001898410135517

namespace A154620

/-- `record[A020639(floor(A142018(n+1)/31))]` -/
def P17617001898410135517.Spec : Prop :=
  ∀ n, P17617001898410135517.a n = A154620 (n + 1)

end A154620

/-! ## A154620.P7096954555240391981

`record[A020639(round(A142018(n+1)/31))]`
-/

namespace A154620.P7096954555240391981
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (SequenceMachineLib.roundAway ((A142018 (n + 1) : ℚ) / 31)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A154620.P7096954555240391981

namespace A154620

/-- `record[A020639(round(A142018(n+1)/31))]` -/
def P7096954555240391981.Spec : Prop :=
  ∀ n, P7096954555240391981.a n = A154620 (n + 1)

end A154620

/-! ## A154620.P18422550908480223923

`record[A014963(floor(A142018(n+1)/31))]`
-/

namespace A154620.P18422550908480223923
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 ⌊(A142018 (n + 1) : ℚ) / 31⌋.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A154620.P18422550908480223923

namespace A154620

/-- `record[A014963(floor(A142018(n+1)/31))]` -/
def P18422550908480223923.Spec : Prop :=
  ∀ n, P18422550908480223923.a n = A154620 (n + 1)

end A154620

/-! ## A154620.P6747432256666202888

`record[A014963(round(A142018(n+1)/31))]`
-/

namespace A154620.P6747432256666202888
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (SequenceMachineLib.roundAway ((A142018 (n + 1) : ℚ) / 31)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A154620.P6747432256666202888

namespace A154620

/-- `record[A014963(round(A142018(n+1)/31))]` -/
def P6747432256666202888.Spec : Prop :=
  ∀ n, P6747432256666202888.a n = A154620 (n + 1)

end A154620

/-!
# A154621: Primes congruent to 32 mod 67.

The programs for A154621, the canonical program `A154621.P14881056831225512097` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A154621 has offset 1).

The definition of A154621 is `verified`: an anchor theorem with a hand-written proof shows that the Lean definition equals an independent definition of the sequence: the theorem `A154621.anchor (n : ℕ) (hn : 1 ≤ n) : A154621 n = (Nat.nth (fun p => p.Prime ∧ p % 67 = 32) (n - 1) : ℤ)` in `Proof.A154.A154621`. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A154621.P14881056831225512097

`p?[67*n+32]`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A154621

/-- `p?[67*n+32]` -/
def P14881056831225512097.Spec : Prop :=
  ∀ n, (P14881056831225512097.a n : ℤ) = A154621 (n + 1)

theorem P14881056831225512097.correct : P14881056831225512097.Spec := by
  intro n
  simp only [A154621, Nat.add_sub_cancel]

end A154621

/-! ## A154621.P54127357112789210

`or(1, p?[A154612(n)+A053742(n)])`
-/

namespace A154621.P54127357112789210
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154612 n + A053742 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A154621.P54127357112789210

namespace A154621

/-- `or(1, p?[A154612(n)+A053742(n)])` -/
def P54127357112789210.Spec : Prop :=
  ∀ n, P54127357112789210.a n = A154621 (n + 1)

end A154621

/-! ## A154621.P4067579655512210804

`p?[A154612(n)+A053742(n)]/A020985(n)²`
-/

namespace A154621.P4067579655512210804
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154612 n + A053742 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) : ℚ) / (A020985 n ^ 2 : ℚ)

end

end A154621.P4067579655512210804

namespace A154621

/-- `p?[A154612(n)+A053742(n)]/A020985(n)²` -/
def P4067579655512210804.Spec : Prop :=
  ∀ n, P4067579655512210804.a n = (A154621 (n + 1) : ℚ)

end A154621

/-! ## A154621.P18166694189132754556

`p?[A154612(n)+A053742(n)]/A065357(n)²`
-/

namespace A154621.P18166694189132754556
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154612 n + A053742 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) : ℚ) / (A065357 n ^ 2 : ℚ)

end

end A154621.P18166694189132754556

namespace A154621

/-- `p?[A154612(n)+A053742(n)]/A065357(n)²` -/
def P18166694189132754556.Spec : Prop :=
  ∀ n, P18166694189132754556.a n = (A154621 (n + 1) : ℚ)

end A154621

/-! ## A154621.P2127410650429544382

`p?[A154612(n)+A053742(n)]%A017330(n)²`
-/

namespace A154621.P2127410650429544382
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154612 n + A053742 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)) (A017330 n ^ 2)

end

end A154621.P2127410650429544382

namespace A154621

/-- `p?[A154612(n)+A053742(n)]%A017330(n)²` -/
def P2127410650429544382.Spec : Prop :=
  ∀ n, P2127410650429544382.a n = A154621 (n + 1)

end A154621

/-! ## A154621.P3552625356242989199

`A000007(n+1)+p?[A154612(n)+A053742(n)]`
-/

namespace A154621.P3552625356242989199
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154612 n + A053742 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (n + 1) + f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A154621.P3552625356242989199

namespace A154621

/-- `A000007(n+1)+p?[A154612(n)+A053742(n)]` -/
def P3552625356242989199.Spec : Prop :=
  ∀ n, P3552625356242989199.a n = A154621 (n + 1)

end A154621

/-! ## A154621.P10465682540969431551

`A000038(n+1)+p?[A154612(n)+A053742(n)]`
-/

namespace A154621.P10465682540969431551
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154612 n + A053742 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 (n + 1) + f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A154621.P10465682540969431551

namespace A154621

/-- `A000038(n+1)+p?[A154612(n)+A053742(n)]` -/
def P10465682540969431551.Spec : Prop :=
  ∀ n, P10465682540969431551.a n = A154621 (n + 1)

end A154621

/-! ## A154621.P2760313518520207216

`A000027(p?[A154612(n)+A053742(n)])`
-/

namespace A154621.P2760313518520207216
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154612 n + A053742 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A154621.P2760313518520207216

namespace A154621

/-- `A000027(p?[A154612(n)+A053742(n)])` -/
def P2760313518520207216.Spec : Prop :=
  ∀ n, P2760313518520207216.a n = A154621 (n + 1)

end A154621

/-! ## A154621.P8598379108272469310

`A000265(p?[A154612(n)+A053742(n)])`
-/

namespace A154621.P8598379108272469310
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154612 n + A053742 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A154621.P8598379108272469310

namespace A154621

/-- `A000265(p?[A154612(n)+A053742(n)])` -/
def P8598379108272469310.Spec : Prop :=
  ∀ n, P8598379108272469310.a n = A154621 (n + 1)

end A154621

/-! ## A154621.P494486060291393943

`A001414(p?[A154612(n)+A053742(n)])`
-/

namespace A154621.P494486060291393943
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154612 n + A053742 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001414 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A154621.P494486060291393943

namespace A154621

/-- `A001414(p?[A154612(n)+A053742(n)])` -/
def P494486060291393943.Spec : Prop :=
  ∀ n, P494486060291393943.a n = A154621 (n + 1)

end A154621

/-! ## A154621.P5325651146029930748

`A008472(p?[A154612(n)+A053742(n)])`
-/

namespace A154621.P5325651146029930748
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154612 n + A053742 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008472 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A154621.P5325651146029930748

namespace A154621

/-- `A008472(p?[A154612(n)+A053742(n)])` -/
def P5325651146029930748.Spec : Prop :=
  ∀ n, P5325651146029930748.a n = A154621 (n + 1)

end A154621

/-! ## A154621.P13689574576192738451

`A003958(p?[A154612(n)+A053742(n)])+1`
-/

namespace A154621.P13689574576192738451
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154612 n + A053742 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003958 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat + 1

end

end A154621.P13689574576192738451

namespace A154621

/-- `A003958(p?[A154612(n)+A053742(n)])+1` -/
def P13689574576192738451.Spec : Prop :=
  ∀ n, P13689574576192738451.a n = A154621 (n + 1)

end A154621

/-!
# A154622: Primes p such that 67*p + 32 is also prime.

The programs for A154622, the canonical program `A154622.P11395790207356592826` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A154622 has offset 1).

The definition of A154622 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1246 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A154622.P11395790207356592826

`p?[floor(A154621(n+1)/67)]`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A154622

/-- `p?[floor(A154621(n+1)/67)]` -/
def P11395790207356592826.Spec : Prop :=
  ∀ n, P11395790207356592826.a n = A154622 (n + 1)

theorem P11395790207356592826.correct : P11395790207356592826.Spec := by
  intro n
  simp only [A154622, Nat.add_sub_cancel]

end A154622

/-! ## A154622.P12303669133334476046

`record[A006530(floor(A154621(n+1)/67))]`
-/

namespace A154622.P12303669133334476046
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 ⌊(A154621 (n + 1) : ℚ) / 67⌋.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A154622.P12303669133334476046

namespace A154622

/-- `record[A006530(floor(A154621(n+1)/67))]` -/
def P12303669133334476046.Spec : Prop :=
  ∀ n, P12303669133334476046.a n = A154622 (n + 1)

end A154622

/-! ## A154622.P10948381498873476093

`record[A020639(floor(A154621(n+1)/67))]`
-/

namespace A154622.P10948381498873476093
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 ⌊(A154621 (n + 1) : ℚ) / 67⌋.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A154622.P10948381498873476093

namespace A154622

/-- `record[A020639(floor(A154621(n+1)/67))]` -/
def P10948381498873476093.Spec : Prop :=
  ∀ n, P10948381498873476093.a n = A154622 (n + 1)

end A154622

/-! ## A154622.P14026080433206338869

`record[A020639(round(A154621(n+1)/67))]`
-/

namespace A154622.P14026080433206338869
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (SequenceMachineLib.roundAway ((A154621 (n + 1) : ℚ) / 67)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A154622.P14026080433206338869

namespace A154622

/-- `record[A020639(round(A154621(n+1)/67))]` -/
def P14026080433206338869.Spec : Prop :=
  ∀ n, P14026080433206338869.a n = A154622 (n + 1)

end A154622

/-! ## A154622.P5071717841222202284

`record[A014963(floor(A154621(n+1)/67))]`
-/

namespace A154622.P5071717841222202284
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 ⌊(A154621 (n + 1) : ℚ) / 67⌋.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A154622.P5071717841222202284

namespace A154622

/-- `record[A014963(floor(A154621(n+1)/67))]` -/
def P5071717841222202284.Spec : Prop :=
  ∀ n, P5071717841222202284.a n = A154622 (n + 1)

end A154622

/-! ## A154622.P13400809125710658610

`record[A014963(round(A154621(n+1)/67))]`
-/

namespace A154622.P13400809125710658610
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (SequenceMachineLib.roundAway ((A154621 (n + 1) : ℚ) / 67)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A154622.P13400809125710658610

namespace A154622

/-- `record[A014963(round(A154621(n+1)/67))]` -/
def P13400809125710658610.Spec : Prop :=
  ∀ n, P13400809125710658610.a n = A154622 (n + 1)

end A154622

/-!
# A154623: Expansion of 1+(x/(1-5*x))*c(x/(1-5*x)) where c(x) is the g.f. of A000108.

The programs for A154623, there is no canonical definition to state claims against.
-/

/-! ## A154623.P8143809438606826225

`A271025(A167499(n+3)%A019562(n))`
-/

namespace A154623.P8143809438606826225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271025 (Int.tmod (A167499 (n + 3)) (A019562 n)).toNat

end

end A154623.P8143809438606826225

/-! ## A154623.P2121615819473685064

`A271025((A000124(n+4)+4)%A103145(n))`
-/

namespace A154623.P2121615819473685064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271025 (Int.tmod (A000124 (n + 4) + 4) (A103145 n)).toNat

end

end A154623.P2121615819473685064

/-! ## A154623.P12876267981092444914

`A271025((A052905(n+1)+10)%A001449(n))`
-/

namespace A154623.P12876267981092444914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271025 (Int.tmod (A052905 (n + 1) + 10) (A001449 n)).toNat

end

end A154623.P12876267981092444914

/-!
# A154624: Primes congruent to 34 mod 71.

The programs for A154624, the canonical program `A154624.P11270463693716303513` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A154624 has offset 1).

The definition of A154624 is `verified`: an anchor theorem with a hand-written proof shows that the Lean definition equals an independent definition of the sequence: the theorem `A154624.anchor (n : ℕ) (hn : 1 ≤ n) : A154624 n = (Nat.nth (fun p => p.Prime ∧ p % 71 ∈ ({34} : Finset ℕ)) (n - 1) : ℤ)` in `Proof.A154.A154624`. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A154624.P11270463693716303513

`p?[a(n-1)+71]` with `a(0)=34`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A154624

/-- `p?[a(n-1)+71]` -/
def P11270463693716303513.Spec : Prop :=
  ∀ n, (P11270463693716303513.a n : ℤ) = A154624 (n + 1)

theorem P11270463693716303513.correct : P11270463693716303513.Spec := by
  intro n
  simp only [A154624, Nat.add_sub_cancel]

end A154624

/-! ## A154624.P5940580396048740249

`p?[72*n+34-n]`
-/

namespace A154624.P5940580396048740249
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (72 * n : ℤ) + (34 - (n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A154624.P5940580396048740249

namespace A154624

/-- `p?[72*n+34-n]` -/
def P5940580396048740249.Spec : Prop :=
  ∀ n, P5940580396048740249.a n = A154624 (n + 1)

end A154624

/-!
# A154626: a(n) = 2^n*A001519(n).

The programs for A154626, the canonical program `A154626.P3282874743034232248` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A154626 has offset 0).

The definition of A154626 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2^n*A001519(n)` (program `A154626.P3282874743034232248`, by `A154626.P3282874743034232248.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A154626.P13858669562833052389

`ogf((1-4x)/(1-6x+4x^2))`
-/

namespace A154626.P13858669562833052389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -4] [1, -6, 4] n

end

end A154626.P13858669562833052389

namespace A154626

/-- `ogf((1-4x)/(1-6x+4x^2))` -/
def P13858669562833052389.Spec : Prop :=
  ∀ n, P13858669562833052389.a n = A154626 n

end A154626

/-! ## A154626.P15506943785445431785

`6*a(n-1)-4*a(n-2)` with `a(0)=1, a(1)=2`
-/

namespace A154626.P15506943785445431785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  6 * a (n - 1) - 4 * a (n - 2)

end

end A154626.P15506943785445431785

namespace A154626

/-- `6*a(n-1)-4*a(n-2)` -/
def P15506943785445431785.Spec : Prop :=
  ∀ n, P15506943785445431785.a n = A154626 n

end A154626

/-! ## A154626.P3282874743034232248

`2^n*A001519(n)`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A154626

/-- `2^n*A001519(n)` -/
def P3282874743034232248.Spec : Prop :=
  ∀ n, P3282874743034232248.a n = A154626 n

theorem P3282874743034232248.correct : P3282874743034232248.Spec := by
  intro n
  simp only [A154626]

end A154626

/-! ## A154626.P10722043878118798387

`A084326(n+1)-4*A084326(n)`
-/

namespace A154626.P10722043878118798387
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084326 (n + 1) - 4 * A084326 n

end

end A154626.P10722043878118798387

namespace A154626

/-- `A084326(n+1)-4*A084326(n)` -/
def P10722043878118798387.Spec : Prop :=
  ∀ n, P10722043878118798387.a n = A154626 n

end A154626

/-! ## A154626.P6174114820879432448

`∑[ceil((sqrt(5)+3)*a(n-1))]` with `a(0)=1, a(1)=1`
-/

namespace A154626.P6174114820879432448
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n f1 =>
  ⌈(Real.sqrt (5 : ℝ) + 3) * (f1 (n - 1) : ℝ)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A154626.P6174114820879432448

namespace A154626

/-- `∑[ceil((sqrt(5)+3)*a(n-1))]` -/
def P6174114820879432448.Spec : Prop :=
  ∀ n, P6174114820879432448.a n = A154626 n

end A154626

/-! ## A154626.P8345432968158011946

`∑[2*ceil(ϕ²*a(n-1))]` with `a(0)=1, a(1)=1`
-/

namespace A154626.P8345432968158011946
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n f1 =>
  2 * ⌈Real.goldenRatio ^ 2 * (f1 (n - 1) : ℝ)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A154626.P8345432968158011946

namespace A154626

/-- `∑[2*ceil(ϕ²*a(n-1))]` -/
def P8345432968158011946.Spec : Prop :=
  ∀ n, P8345432968158011946.a n = A154626 n

end A154626

/-! ## A154626.P7694077945075003021

`A080877(2*n)`
-/

namespace A154626.P7694077945075003021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080877 (2 * n)

end

end A154626.P7694077945075003021

namespace A154626

/-- `A080877(2*n)` -/
def P7694077945075003021.Spec : Prop :=
  ∀ n, P7694077945075003021.a n = A154626 n

end A154626

/-! ## A154626.P16624966721169104023

`∑[A084326(n)]+1`
-/

namespace A154626.P16624966721169104023
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084326 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A154626.P16624966721169104023

namespace A154626

/-- `∑[A084326(n)]+1` -/
def P16624966721169104023.Spec : Prop :=
  ∀ n, P16624966721169104023.a n = A154626 n

end A154626

/-! ## A154626.P5847842802008165404

`∑{#}[n, C(n, #)*A015448(#)]`
-/

namespace A154626.P5847842802008165404
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), (Nat.choose n k : ℤ) * A015448 k

end

end A154626.P5847842802008165404

namespace A154626

/-- `∑{#}[n, C(n, #)*A015448(#)]` -/
def P5847842802008165404.Spec : Prop :=
  ∀ n, P5847842802008165404.a n = A154626 n

end A154626

/-! ## A154626.P15317892644315305203

`2^n*A000045(abs(1-2*n))`
-/

namespace A154626.P15317892644315305203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) * A000045 |1 - (2 * n : ℤ)|.toNat

end

end A154626.P15317892644315305203

namespace A154626

/-- `2^n*A000045(abs(1-2*n))` -/
def P15317892644315305203.Spec : Prop :=
  ∀ n, P15317892644315305203.a n = A154626 n

end A154626

/-! ## A154626.P17764469759784995843

`∑[2^(n-1)*A000045(2*n)]+1`
-/

namespace A154626.P17764469759784995843
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ ((n : ℤ) - 1 : ℤ) * (A000045 (2 * n) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A154626.P17764469759784995843

namespace A154626

/-- `∑[2^(n-1)*A000045(2*n)]+1` -/
def P17764469759784995843.Spec : Prop :=
  ∀ n, P17764469759784995843.a n = (A154626 n : ℚ)

end A154626

/-! ## A154626.P5173024797763385355

`A098648(n)-A084326(n)`
-/

namespace A154626.P5173024797763385355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098648 n - A084326 n

end

end A154626.P5173024797763385355

namespace A154626

/-- `A098648(n)-A084326(n)` -/
def P5173024797763385355.Spec : Prop :=
  ∀ n, P5173024797763385355.a n = A154626 n

end A154626

/-! ## A154626.P7763720932828033444

`A011782(n)*A055819(n)`
-/

namespace A154626.P7763720932828033444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 n * A055819 n

end

end A154626.P7763720932828033444

namespace A154626

/-- `A011782(n)*A055819(n)` -/
def P7763720932828033444.Spec : Prop :=
  ∀ n, P7763720932828033444.a n = A154626 n

end A154626

/-! ## A154626.P13212041327965547535

`lcm(A001519(n), A128018(n))`
-/

namespace A154626.P13212041327965547535
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A001519 n) (A128018 n)

end

end A154626.P13212041327965547535

namespace A154626

/-- `lcm(A001519(n), A128018(n))` -/
def P13212041327965547535.Spec : Prop :=
  ∀ n, (P13212041327965547535.a n : ℤ) = A154626 n

end A154626

/-! ## A154626.P3064960039623104577

`A001519(n)*A011782(n+1)`
-/

namespace A154626.P3064960039623104577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001519 n * A011782 (n + 1)

end

end A154626.P3064960039623104577

namespace A154626

/-- `A001519(n)*A011782(n+1)` -/
def P3064960039623104577.Spec : Prop :=
  ∀ n, P3064960039623104577.a n = A154626 n

end A154626

/-! ## A154626.P15972746909806895738

`(A032908(n)-1)*A000079(n)`
-/

namespace A154626.P15972746909806895738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A032908 n - 1) * A000079 n

end

end A154626.P15972746909806895738

namespace A154626

/-- `(A032908(n)-1)*A000079(n)` -/
def P15972746909806895738.Spec : Prop :=
  ∀ n, P15972746909806895738.a n = A154626 n

end A154626

/-! ## A154626.P10915748683007253283

`A001519(n)*A166444(n+2)`
-/

namespace A154626.P10915748683007253283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001519 n * A166444 (n + 2)

end

end A154626.P10915748683007253283

namespace A154626

/-- `A001519(n)*A166444(n+2)` -/
def P10915748683007253283.Spec : Prop :=
  ∀ n, P10915748683007253283.a n = A154626 n

end A154626

/-! ## A154626.P11531694467090315405

`A080878(2*n)-A084326(n)`
-/

namespace A154626.P11531694467090315405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080878 (2 * n) - A084326 n

end

end A154626.P11531694467090315405

namespace A154626

/-- `A080878(2*n)-A084326(n)` -/
def P11531694467090315405.Spec : Prop :=
  ∀ n, P11531694467090315405.a n = A154626 n

end A154626

/-! ## A154626.P5526410912512017525

`2*A098648(n)-A082761(n)`
-/

namespace A154626.P5526410912512017525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A098648 n - A082761 n

end

end A154626.P5526410912512017525

namespace A154626

/-- `2*A098648(n)-A082761(n)` -/
def P5526410912512017525.Spec : Prop :=
  ∀ n, P5526410912512017525.a n = A154626 n

end A154626

/-! ## A154626.P302112683664433812

`A006355(2*n)*A011782(n)`
-/

namespace A154626.P302112683664433812
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006355 (2 * n) * A011782 n

end

end A154626.P302112683664433812

namespace A154626

/-- `A006355(2*n)*A011782(n)` -/
def P302112683664433812.Spec : Prop :=
  ∀ n, P302112683664433812.a n = A154626 n

end A154626

/-!
# A154627: Expansion of (1-5*x)/(1-8*x+4*x^2).

The programs for A154627, the canonical program `A154627.P4749480871037589702` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A154627 has offset 0).

The definition of A154627 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1-5x)/(1-8x+4x^2))` (program `A154627.P4749480871037589702`, by `A154627.P4749480871037589702.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A154627.P4749480871037589702

`ogf((1-5x)/(1-8x+4x^2))`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A154627

/-- `ogf((1-5x)/(1-8x+4x^2))` -/
def P4749480871037589702.Spec : Prop :=
  ∀ n, P4749480871037589702.a n = A154627 n

theorem P4749480871037589702.correct : P4749480871037589702.Spec := by
  intro n
  simp only [A154627]

end A154627

/-! ## A154627.P5210526607683934828

`8*a(n-1)-4*a(n-2)` with `a(0)=1, a(1)=3`
-/

namespace A154627.P5210526607683934828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3] fun n a =>
  8 * a (n - 1) - 4 * a (n - 2)

end

end A154627.P5210526607683934828

namespace A154627

/-- `8*a(n-1)-4*a(n-2)` -/
def P5210526607683934828.Spec : Prop :=
  ∀ n, P5210526607683934828.a n = A154627 n

end A154627

/-! ## A154627.P7133489984066697149

`4*(2*a(n-1)-a(n-2))` with `a(0)=1, a(1)=3`
-/

namespace A154627.P7133489984066697149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3] fun n a =>
  4 * (2 * a (n - 1) - a (n - 2))

end

end A154627.P7133489984066697149

namespace A154627

/-- `4*(2*a(n-1)-a(n-2))` -/
def P7133489984066697149.Spec : Prop :=
  ∀ n, P7133489984066697149.a n = A154627 n

end A154627

/-! ## A154627.P16646102186788861884

`2^(n-1)*A144720(n)`
-/

namespace A154627.P16646102186788861884
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ ((n : ℤ) - 1 : ℤ) * (A144720 n : ℚ)

end

end A154627.P16646102186788861884

namespace A154627

/-- `2^(n-1)*A144720(n)` -/
def P16646102186788861884.Spec : Prop :=
  ∀ n, P16646102186788861884.a n = (A154627 n : ℚ)

end A154627

/-! ## A154627.P3341631187784230995

`(A001835(n)+A001075(n))*2^(n-1)`
-/

namespace A154627.P3341631187784230995
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001835 n + A001075 n : ℚ) * (2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)

end

end A154627.P3341631187784230995

namespace A154627

/-- `(A001835(n)+A001075(n))*2^(n-1)` -/
def P3341631187784230995.Spec : Prop :=
  ∀ n, P3341631187784230995.a n = (A154627 n : ℚ)

end A154627

/-! ## A154627.P18388965442380657138

`A028860(2*n+1)+A002605(2*n)/2`
-/

namespace A154627.P18388965442380657138
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A028860 (2 * n + 1) : ℚ) + (A002605 (2 * n) : ℚ) / 2

end

end A154627.P18388965442380657138

namespace A154627

/-- `A028860(2*n+1)+A002605(2*n)/2` -/
def P18388965442380657138.Spec : Prop :=
  ∀ n, P18388965442380657138.a n = (A154627 n : ℚ)

end A154627

/-! ## A154627.P3083191156141250683

`A028860(2*n+1)+A002605(n)*A026150(n)`
-/

namespace A154627.P3083191156141250683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028860 (2 * n + 1) + A002605 n * A026150 n

end

end A154627.P3083191156141250683

namespace A154627

/-- `A028860(2*n+1)+A002605(n)*A026150(n)` -/
def P3083191156141250683.Spec : Prop :=
  ∀ n, P3083191156141250683.a n = A154627 n

end A154627

/-! ## A154627.P299862922628293061

`A028860(2*n+1)+A160444(2*n+1)*A160444(2*(n+1))`
-/

namespace A154627.P299862922628293061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028860 (2 * n + 1) + A160444 (2 * n + 1) * A160444 (2 * (n + 1))

end

end A154627.P299862922628293061

namespace A154627

/-- `A028860(2*n+1)+A160444(2*n+1)*A160444(2*(n+1))` -/
def P299862922628293061.Spec : Prop :=
  ∀ n, P299862922628293061.a n = A154627 n

end A154627

/-! ## A154627.P6589293130832310367

`A090965(n)-A099156(n)`
-/

namespace A154627.P6589293130832310367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090965 n - A099156 n

end

end A154627.P6589293130832310367

namespace A154627

/-- `A090965(n)-A099156(n)` -/
def P6589293130832310367.Spec : Prop :=
  ∀ n, P6589293130832310367.a n = A154627 n

end A154627

/-! ## A154627.P10467638328004520159

`A026150(2*n)-A099156(n)`
-/

namespace A154627.P10467638328004520159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026150 (2 * n) - A099156 n

end

end A154627.P10467638328004520159

namespace A154627

/-- `A026150(2*n)-A099156(n)` -/
def P10467638328004520159.Spec : Prop :=
  ∀ n, P10467638328004520159.a n = A154627 n

end A154627

/-! ## A154627.P10258643916492428007

`A026150(2*n)-A002605(2*n)/2`
-/

namespace A154627.P10258643916492428007
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A026150 (2 * n) : ℚ) - (A002605 (2 * n) : ℚ) / 2

end

end A154627.P10258643916492428007

namespace A154627

/-- `A026150(2*n)-A002605(2*n)/2` -/
def P10258643916492428007.Spec : Prop :=
  ∀ n, P10258643916492428007.a n = (A154627 n : ℚ)

end A154627

/-! ## A154627.P12646442979385792946

`(A080040(2*n)-A002605(2*n))/2`
-/

namespace A154627.P12646442979385792946
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A080040 (2 * n) - A002605 (2 * n) : ℚ) / 2

end

end A154627.P12646442979385792946

namespace A154627

/-- `(A080040(2*n)-A002605(2*n))/2` -/
def P12646442979385792946.Spec : Prop :=
  ∀ n, P12646442979385792946.a n = (A154627 n : ℚ)

end A154627

/-! ## A154627.P9449753593700561065

`A083337(2*n)/2-A028860(2*n)`
-/

namespace A154627.P9449753593700561065
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A083337 (2 * n) : ℚ) / 2 - (A028860 (2 * n) : ℚ)

end

end A154627.P9449753593700561065

namespace A154627

/-- `A083337(2*n)/2-A028860(2*n)` -/
def P9449753593700561065.Spec : Prop :=
  ∀ n, P9449753593700561065.a n = (A154627 n : ℚ)

end A154627

/-! ## A154627.P10961401809790355765

`(A028860(2*n+1)+A026150(2*n))/2`
-/

namespace A154627.P10961401809790355765
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A028860 (2 * n + 1) + A026150 (2 * n) : ℚ) / 2

end

end A154627.P10961401809790355765

namespace A154627

/-- `(A028860(2*n+1)+A026150(2*n))/2` -/
def P10961401809790355765.Spec : Prop :=
  ∀ n, P10961401809790355765.a n = (A154627 n : ℚ)

end A154627

/-! ## A154627.P7017221491654715169

`A080879(2*n+1)-2*A002605(2*n)`
-/

namespace A154627.P7017221491654715169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080879 (2 * n + 1) - 2 * A002605 (2 * n)

end

end A154627.P7017221491654715169

namespace A154627

/-- `A080879(2*n+1)-2*A002605(2*n)` -/
def P7017221491654715169.Spec : Prop :=
  ∀ n, P7017221491654715169.a n = A154627 n

end A154627

/-! ## A154627.P6476241842417440041

`2*A080876(2*n+1)-A080876(2*n)`
-/

namespace A154627.P6476241842417440041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A080876 (2 * n + 1) - A080876 (2 * n)

end

end A154627.P6476241842417440041

namespace A154627

/-- `2*A080876(2*n+1)-A080876(2*n)` -/
def P6476241842417440041.Spec : Prop :=
  ∀ n, P6476241842417440041.a n = A154627 n

end A154627

/-! ## A154627.P1469663772662737976

`A002605(2*n+1)-A083337(2*n)/2`
-/

namespace A154627.P1469663772662737976
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002605 (2 * n + 1) : ℚ) - (A083337 (2 * n) : ℚ) / 2

end

end A154627.P1469663772662737976

namespace A154627

/-- `A002605(2*n+1)-A083337(2*n)/2` -/
def P1469663772662737976.Spec : Prop :=
  ∀ n, P1469663772662737976.a n = (A154627 n : ℚ)

end A154627

/-! ## A154627.P18170113089960159377

`(A152035(2*n+1)-A083337(2*n))/2`
-/

namespace A154627.P18170113089960159377
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A152035 (2 * n + 1) - A083337 (2 * n) : ℚ) / 2

end

end A154627.P18170113089960159377

namespace A154627

/-- `(A152035(2*n+1)-A083337(2*n))/2` -/
def P18170113089960159377.Spec : Prop :=
  ∀ n, P18170113089960159377.a n = (A154627 n : ℚ)

end A154627

/-! ## A154627.P6740196923834282481

`A026150(2*n)-A002605(n)*A026150(n)`
-/

namespace A154627.P6740196923834282481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026150 (2 * n) - A002605 n * A026150 n

end

end A154627.P6740196923834282481

namespace A154627

/-- `A026150(2*n)-A002605(n)*A026150(n)` -/
def P6740196923834282481.Spec : Prop :=
  ∀ n, P6740196923834282481.a n = A154627 n

end A154627

/-! ## A154627.P2080833802804592527

`A026150(n)*A083337(n)-A028860(2*n)`
-/

namespace A154627.P2080833802804592527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026150 n * A083337 n - A028860 (2 * n)

end

end A154627.P2080833802804592527

namespace A154627

/-- `A026150(n)*A083337(n)-A028860(2*n)` -/
def P2080833802804592527.Spec : Prop :=
  ∀ n, P2080833802804592527.a n = A154627 n

end A154627

/-!
# A154628: Primes congruent to 35 mod 73.

The programs for A154628, the canonical program `A154628.P5595753871521063951` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A154628 has offset 1).

The definition of A154628 is `verified`: an anchor theorem with a hand-written proof shows that the Lean definition equals an independent definition of the sequence: the theorem `A154628.anchor (n : ℕ) (hn : 1 ≤ n) : A154628 n = (Nat.nth (fun p => p.Prime ∧ p % 73 = 35) (n - 1) : ℤ)` in `Proof.A154.A154628`. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A154628.P5595753871521063951

`p?[73*n-38]`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A154628

/-- `p?[73*n-38]` -/
def P5595753871521063951.Spec : Prop :=
  ∀ n, P5595753871521063951.a n = A154628 (n + 1)

theorem P5595753871521063951.correct : P5595753871521063951.Spec := by
  intro n
  simp only [A154628, Nat.add_sub_cancel]

end A154628

/-! ## A154628.P6878906723334704358

`or(1, p?[A157921(n+1)+A146081(n)])`
-/

namespace A154628.P6878906723334704358
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157921 (n + 1) + A146081 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A154628.P6878906723334704358

namespace A154628

/-- `or(1, p?[A157921(n+1)+A146081(n)])` -/
def P6878906723334704358.Spec : Prop :=
  ∀ n, P6878906723334704358.a n = A154628 (n + 1)

end A154628

/-! ## A154628.P18157956269338912783

`p?[A157921(n+1)+A146081(n)]%A058909(n+1)`
-/

namespace A154628.P18157956269338912783
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157921 (n + 1) + A146081 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)) (A058909 (n + 1))

end

end A154628.P18157956269338912783

namespace A154628

/-- `p?[A157921(n+1)+A146081(n)]%A058909(n+1)` -/
def P18157956269338912783.Spec : Prop :=
  ∀ n, P18157956269338912783.a n = A154628 (n + 1)

end A154628

/-! ## A154628.P6189786385711860293

`A165471(n+1)²*p?[A157921(n+1)+A146081(n)]`
-/

namespace A154628.P6189786385711860293
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157921 (n + 1) + A146081 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165471 (n + 1) ^ 2 * f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A154628.P6189786385711860293

namespace A154628

/-- `A165471(n+1)²*p?[A157921(n+1)+A146081(n)]` -/
def P6189786385711860293.Spec : Prop :=
  ∀ n, P6189786385711860293.a n = A154628 (n + 1)

end A154628

/-! ## A154628.P9272378311476781373

`A004273(n+1)+p?[A146081(n)-(n+2)]-Δ[n²]`
-/

namespace A154628.P9272378311476781373
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146081 n - (n + 2 : ℤ)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (n + 1) + (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - ((f2 (n + 1) : ℤ) - (f2 n : ℤ)))

end

end A154628.P9272378311476781373

namespace A154628

/-- `A004273(n+1)+p?[A146081(n)-(n+2)]-Δ[n²]` -/
def P9272378311476781373.Spec : Prop :=
  ∀ n, P9272378311476781373.a n = A154628 (n + 1)

end A154628

/-! ## A154628.P3078699436195761448

`A007947(p?[A146081(n)-(n+2)])`
-/

namespace A154628.P3078699436195761448
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146081 n - (n + 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A154628.P3078699436195761448

namespace A154628

/-- `A007947(p?[A146081(n)-(n+2)])` -/
def P3078699436195761448.Spec : Prop :=
  ∀ n, P3078699436195761448.a n = A154628 (n + 1)

end A154628

/-! ## A154628.P837268738049673915

`record[A006530(A157921(n+1)+A146081(n))]`
-/

namespace A154628.P837268738049673915
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A157921 (n + 1) + A146081 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A154628.P837268738049673915

namespace A154628

/-- `record[A006530(A157921(n+1)+A146081(n))]` -/
def P837268738049673915.Spec : Prop :=
  ∀ n, P837268738049673915.a n = A154628 (n + 1)

end A154628

/-! ## A154628.P6468992114964618018

`record[A020639(A157921(n+1)+A146081(n))]`
-/

namespace A154628.P6468992114964618018
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A157921 (n + 1) + A146081 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A154628.P6468992114964618018

namespace A154628

/-- `record[A020639(A157921(n+1)+A146081(n))]` -/
def P6468992114964618018.Spec : Prop :=
  ∀ n, P6468992114964618018.a n = A154628 (n + 1)

end A154628

/-!
# A154629: Period 9: repeat [9, 3, 1, 3, 3, 1, 3, 9, 1].

The programs for A154629, the canonical program `A154629.P12964828521243864996` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A154629 has offset 0).

The definition of A154629 is `verified`: an anchor theorem with a hand-written proof shows that the Lean definition equals an independent definition of the sequence: the theorem `A154629.anchor (n : ℕ) : A154629 n = (([9, 3, 1, 3, 3, 1, 3, 9, 1].getD (n % 9) 0 : ℕ) : ℤ)` in `Proof.A154.A154629`. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A154629.P12964828521243864996

`a(n-9)` with `a(0)=9, a(1)=3, a(2)=1, a(3)=3, a(4)=3, a(5)=1, a(6)=3, a(7)=9, a(8)=1`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A154629

/-- `a(n-9)` -/
def P12964828521243864996.Spec : Prop :=
  ∀ n, (P12964828521243864996.a n : ℤ) = A154629 n

theorem P12964828521243864996.correct : P12964828521243864996.Spec := by
  intro n
  simp only [A154629]

end A154629

/-!
# A154631: Triangle read by rows: T(m,n) = 2mn + m + n + 5.

The programs for A154631, the canonical program `A154631.P9638786672000276920` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A154631 has offset 1).

The definition of A154631 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A154631.P9638786672000276920

`A154685(n+1)+1`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A154631

/-- `A154685(n+1)+1` -/
def P9638786672000276920.Spec : Prop :=
  ∀ n, P9638786672000276920.a n = A154631 (n + 1)

theorem P9638786672000276920.correct : P9638786672000276920.Spec := by
  intro n
  simp only [A154631, Nat.add_sub_cancel]

end A154631

/-! ## A154631.P8082450916364440735

`A154681(n+1)+2`
-/

namespace A154631.P8082450916364440735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154681 (n + 1) + 2

end

end A154631.P8082450916364440735

namespace A154631

/-- `A154681(n+1)+2` -/
def P8082450916364440735.Spec : Prop :=
  ∀ n, P8082450916364440735.a n = A154631 (n + 1)

theorem P8082450916364440735.correct : P8082450916364440735.Spec := by
  intro n
  simp only [A154631, Nat.add_sub_cancel, A154631.P8082450916364440735.a, A154631.P9638786672000276920.a, A154681, A154681.P7152750088420565166.a, A154685, A154685.P15243887039204204434.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A154631

/-! ## A154631.P11745171154984726598

`A163652(1+n)-1`
-/

namespace A154631.P11745171154984726598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163652 (1 + n) - 1

end

end A154631.P11745171154984726598

namespace A154631

/-- `A163652(1+n)-1` -/
def P11745171154984726598.Spec : Prop :=
  ∀ n, P11745171154984726598.a n = A154631 (n + 1)

end A154631

/-! ## A154631.P6673263061025273024

`A155705(1+n)+3`
-/

namespace A154631.P6673263061025273024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155705 (1 + n) + 3

end

end A154631.P6673263061025273024

namespace A154631

/-- `A155705(1+n)+3` -/
def P6673263061025273024.Spec : Prop :=
  ∀ n, P6673263061025273024.a n = A154631 (n + 1)

end A154631

/-! ## A154631.P3330396584259931772

`A163672(n+1)-2`
-/

namespace A154631.P3330396584259931772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163672 (n + 1) - 2

end

end A154631.P3330396584259931772

namespace A154631

/-- `A163672(n+1)-2` -/
def P3330396584259931772.Spec : Prop :=
  ∀ n, P3330396584259931772.a n = A154631 (n + 1)

end A154631

/-! ## A154631.P17619648762371522183

`A144650(n+1)+4`
-/

namespace A154631.P17619648762371522183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144650 (n + 1) + 4

end

end A154631.P17619648762371522183

namespace A154631

/-- `A144650(n+1)+4` -/
def P17619648762371522183.Spec : Prop :=
  ∀ n, P17619648762371522183.a n = A154631 (n + 1)

theorem P17619648762371522183.correct : P17619648762371522183.Spec := by
  intro n
  simp only [A154631, Nat.add_sub_cancel, A154631.P17619648762371522183.a, A154631.P9638786672000276920.a, A144650, A144650.P1368958266719371934.a, A154685, A154685.P15243887039204204434.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A154631

/-! ## A154631.P11949007661949909695

`A163657(n+1)-3`
-/

namespace A154631.P11949007661949909695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163657 (n + 1) - 3

end

end A154631.P11949007661949909695

namespace A154631

/-- `A163657(n+1)-3` -/
def P11949007661949909695.Spec : Prop :=
  ∀ n, P11949007661949909695.a n = A154631 (n + 1)

theorem P11949007661949909695.correct : P11949007661949909695.Spec := by
  intro n
  simp only [A154631, Nat.add_sub_cancel, A154631.P11949007661949909695.a, A154631.P9638786672000276920.a, A154685, A154685.P15243887039204204434.a, A163657, A163657.P12720512025270475605.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A154631

/-! ## A154631.P12166942677470605034

`A083487(n+1)+5`
-/

namespace A154631.P12166942677470605034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083487 (n + 1) + 5

end

end A154631.P12166942677470605034

namespace A154631

/-- `A083487(n+1)+5` -/
def P12166942677470605034.Spec : Prop :=
  ∀ n, P12166942677470605034.a n = A154631 (n + 1)

theorem P12166942677470605034.correct : P12166942677470605034.Spec := by
  intro n
  simp only [A154631, Nat.add_sub_cancel, A154631.P12166942677470605034.a, A154631.P9638786672000276920.a, A083487, A083487.P8449240486603242499.a, A154685, A154685.P15243887039204204434.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A154631

/-! ## A154631.P11251255244881656567

`A163674(n+1)-4`
-/

namespace A154631.P11251255244881656567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163674 (n + 1) - 4

end

end A154631.P11251255244881656567

namespace A154631

/-- `A163674(n+1)-4` -/
def P11251255244881656567.Spec : Prop :=
  ∀ n, P11251255244881656567.a n = A154631 (n + 1)

theorem P11251255244881656567.correct : P11251255244881656567.Spec := by
  intro n
  simp only [A154631, Nat.add_sub_cancel, A154631.P11251255244881656567.a, A154631.P9638786672000276920.a, A154685, A154685.P15243887039204204434.a, A163674, A163674.P13425160265099091409.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A154631

/-! ## A154631.P17721018801022568549

`A144562(n+1)+6`
-/

namespace A154631.P17721018801022568549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144562 (n + 1) + 6

end

end A154631.P17721018801022568549

namespace A154631

/-- `A144562(n+1)+6` -/
def P17721018801022568549.Spec : Prop :=
  ∀ n, P17721018801022568549.a n = A154631 (n + 1)

theorem P17721018801022568549.correct : P17721018801022568549.Spec := by
  intro n
  simp only [A154631, Nat.add_sub_cancel, A154631.P17721018801022568549.a, A154631.P9638786672000276920.a, A144562, A144562.P16025350127225318845.a, A154685, A154685.P15243887039204204434.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A154631

/-! ## A154631.P18344747994539270736

`A155704(n+1)-5`
-/

namespace A154631.P18344747994539270736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155704 (n + 1) - 5

end

end A154631.P18344747994539270736

namespace A154631

/-- `A155704(n+1)-5` -/
def P18344747994539270736.Spec : Prop :=
  ∀ n, P18344747994539270736.a n = A154631 (n + 1)

theorem P18344747994539270736.correct : P18344747994539270736.Spec := by
  intro n
  simp only [A154631, Nat.add_sub_cancel, A154631.P18344747994539270736.a, A154631.P9638786672000276920.a, A154685, A154685.P15243887039204204434.a, A155704, A155704.P8650019513373998533.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A154631

/-! ## A154631.P913194275552398078

`A154680(n+1)+7`
-/

namespace A154631.P913194275552398078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154680 (n + 1) + 7

end

end A154631.P913194275552398078

namespace A154631

/-- `A154680(n+1)+7` -/
def P913194275552398078.Spec : Prop :=
  ∀ n, P913194275552398078.a n = A154631 (n + 1)

theorem P913194275552398078.correct : P913194275552398078.Spec := by
  intro n
  simp only [A154631, Nat.add_sub_cancel, A154631.P913194275552398078.a, A154631.P9638786672000276920.a, A154680, A154680.P11179278242672813373.a, A154685, A154685.P15243887039204204434.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A154631

/-! ## A154631.P17890347112232778179

`A154684(n+1)+8`
-/

namespace A154631.P17890347112232778179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154684 (n + 1) + 8

end

end A154631.P17890347112232778179

namespace A154631

/-- `A154684(n+1)+8` -/
def P17890347112232778179.Spec : Prop :=
  ∀ n, P17890347112232778179.a n = A154631 (n + 1)

theorem P17890347112232778179.correct : P17890347112232778179.Spec := by
  intro n
  simp only [A154631, Nat.add_sub_cancel, A154631.P17890347112232778179.a, A154631.P9638786672000276920.a, A154684, A154684.P4294763165931368592.a, A154685, A154685.P15243887039204204434.a, A131421, A131421.P16745487656165401881.a, A151890, A151890.P5860764011676095584.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A154631

/-! ## A154631.P8122478523472972753

`A155724(n+1)+9`
-/

namespace A154631.P8122478523472972753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155724 (n + 1) + 9

end

end A154631.P8122478523472972753

namespace A154631

/-- `A155724(n+1)+9` -/
def P8122478523472972753.Spec : Prop :=
  ∀ n, P8122478523472972753.a n = A154631 (n + 1)

theorem P8122478523472972753.correct : P8122478523472972753.Spec := by
  intro n
  simp only [A154631, Nat.add_sub_cancel, A154631.P8122478523472972753.a, A154631.P9638786672000276920.a, A154685, A154685.P15243887039204204434.a, A155724, A155724.P13035978009969684852.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A154631

/-! ## A154631.P2754860900437704638

`A155546(n+1)+10`
-/

namespace A154631.P2754860900437704638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155546 (n + 1) + 10

end

end A154631.P2754860900437704638

namespace A154631

/-- `A155546(n+1)+10` -/
def P2754860900437704638.Spec : Prop :=
  ∀ n, P2754860900437704638.a n = A154631 (n + 1)

theorem P2754860900437704638.correct : P2754860900437704638.Spec := by
  intro n
  simp only [A154631, Nat.add_sub_cancel, A154631.P2754860900437704638.a, A154631.P9638786672000276920.a, A154685, A154685.P15243887039204204434.a, A155546, A155546.P2386952917106834247.a, A154684, A154684.P4294763165931368592.a, A131421, A131421.P16745487656165401881.a, A151890, A151890.P5860764011676095584.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A154631

/-! ## A154631.P4542219264533312651

`A155550(n+1)+11`
-/

namespace A154631.P4542219264533312651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155550 (n + 1) + 11

end

end A154631.P4542219264533312651

namespace A154631

/-- `A155550(n+1)+11` -/
def P4542219264533312651.Spec : Prop :=
  ∀ n, P4542219264533312651.a n = A154631 (n + 1)

theorem P4542219264533312651.correct : P4542219264533312651.Spec := by
  intro n
  simp only [A154631, Nat.add_sub_cancel, A154631.P4542219264533312651.a, A154631.P9638786672000276920.a, A154685, A154685.P15243887039204204434.a, A155550, A155550.P8821418468961937899.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A154631

/-! ## A154631.P17785077532419984286

`A155151(n+1)/2+4`
-/

namespace A154631.P17785077532419984286
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A155151 (n + 1) : ℚ) / 2 + 4

end

end A154631.P17785077532419984286

namespace A154631

/-- `A155151(n+1)/2+4` -/
def P17785077532419984286.Spec : Prop :=
  ∀ n, P17785077532419984286.a n = (A154631 (n + 1) : ℚ)

theorem P17785077532419984286.correct : P17785077532419984286.Spec := by
  intro n
  simp only [A154631, Nat.add_sub_cancel, A154631.P17785077532419984286.a, A154631.P9638786672000276920.a, A154685, A154685.P15243887039204204434.a, A155151, A155151.P14048722157311829906.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A154631

/-! ## A154631.P7909555971991437517

`A155156(n+1)/2+5`
-/

namespace A154631.P7909555971991437517
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A155156 (n + 1) : ℚ) / 2 + 5

end

end A154631.P7909555971991437517

namespace A154631

/-- `A155156(n+1)/2+5` -/
def P7909555971991437517.Spec : Prop :=
  ∀ n, P7909555971991437517.a n = (A154631 (n + 1) : ℚ)

theorem P7909555971991437517.correct : P7909555971991437517.Spec := by
  intro n
  simp only [A154631, Nat.add_sub_cancel, A154631.P7909555971991437517.a, A154631.P9638786672000276920.a, A154685, A154685.P15243887039204204434.a, A155156, A155156.P11088672852986007837.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A154631

/-! ## A154631.P14281920521565232523

`A163676(n+1)-(A144670(n+1)+1)`
-/

namespace A154631.P14281920521565232523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163676 (n + 1) - (A144670 (n + 1) + 1)

end

end A154631.P14281920521565232523

namespace A154631

/-- `A163676(n+1)-(A144670(n+1)+1)` -/
def P14281920521565232523.Spec : Prop :=
  ∀ n, P14281920521565232523.a n = A154631 (n + 1)

end A154631

/-! ## A154631.P11179956480805372166

`A155156(n+1)-(A144670(n+1)+2)`
-/

namespace A154631.P11179956480805372166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155156 (n + 1) - (A144670 (n + 1) + 2)

end

end A154631.P11179956480805372166

namespace A154631

/-- `A155156(n+1)-(A144670(n+1)+2)` -/
def P11179956480805372166.Spec : Prop :=
  ∀ n, P11179956480805372166.a n = A154631 (n + 1)

end A154631

/-!
# A154633: a(n) = (4*n+1)*(4*n+3)*(4*n+5)*(4*n+7).

The programs for A154633, the canonical program `A154633.P14126936611580261868` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A154633 has offset 0).

The definition of A154633 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(4*n+1)*(4*n+3)*(4*n+5)*(4*n+7)` (program `A154633.P14126936611580261868`, by `A154633.P14126936611580261868.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A154633.P14126936611580261868

`(4*n+1)*(4*n+3)*(4*n+5)*(4*n+7)`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A154633

/-- `(4*n+1)*(4*n+3)*(4*n+5)*(4*n+7)` -/
def P14126936611580261868.Spec : Prop :=
  ∀ n, (P14126936611580261868.a n : ℤ) = A154633 n

theorem P14126936611580261868.correct : P14126936611580261868.Spec := by
  intro n
  simp only [A154633]

end A154633

/-! ## A154633.P9679826931798101833

`A190577(4*n+1)`
-/

namespace A154633.P9679826931798101833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190577 (4 * n + 1)

end

end A154633.P9679826931798101833

namespace A154633

/-- `A190577(4*n+1)` -/
def P9679826931798101833.Spec : Prop :=
  ∀ n, P9679826931798101833.a n = A154633 n

end A154633

/-! ## A154633.P12034362275203762530

`A117465(4*n+5)`
-/

namespace A154633.P12034362275203762530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117465 (4 * n + 5)

end

end A154633.P12034362275203762530

namespace A154633

/-- `A117465(4*n+5)` -/
def P12034362275203762530.Spec : Prop :=
  ∀ n, P12034362275203762530.a n = A154633 n

end A154633

/-! ## A154633.P14742969077426241672

`A101485(n+2)/A101485(n)`
-/

namespace A154633.P14742969077426241672
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A101485 (n + 2) : ℚ) / (A101485 n : ℚ)

end

end A154633.P14742969077426241672

namespace A154633

/-- `A101485(n+2)/A101485(n)` -/
def P14742969077426241672.Spec : Prop :=
  ∀ n, P14742969077426241672.a n = (A154633 n : ℚ)

end A154633

/-! ## A154633.P16627481178259033412

`A028566(A028560(2*n+2*n+1))`
-/

namespace A154633.P16627481178259033412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028566 (A028560 (2 * n + (2 * n + 1))).toNat

end

end A154633.P16627481178259033412

namespace A154633

/-- `A028566(A028560(2*n+2*n+1))` -/
def P16627481178259033412.Spec : Prop :=
  ∀ n, P16627481178259033412.a n = A154633 n

end A154633

/-!
# A154634: Numbers that are the first of two consecutive primes having a sum that is the product of two consecutive numbers.

The programs for A154634, there is no canonical definition to state claims against.
-/

/-! ## A154634.P8905233393522279149

`A065384(A181902(n+2))`
-/

namespace A154634.P8905233393522279149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065384 (A181902 (n + 2)).toNat

end

end A154634.P8905233393522279149

/-! ## A154634.P10819865980461472704

`A065384(floor(sqrt(A298077(n+1))))`
-/

namespace A154634.P10819865980461472704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065384 (Int.sqrt (A298077 (n + 1))).toNat

end

end A154634.P10819865980461472704

/-! ## A154634.P7040467731272950238

`A065384(round(sqrt(A298077(n+1))))`
-/

namespace A154634.P7040467731272950238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065384 (SequenceMachineLib.roundAway (Real.sqrt (A298077 (n + 1) : ℝ))).toNat

end

end A154634.P7040467731272950238

/-! ## A154634.P13056163016090883462

`A151799(A130178(n+1))`
-/

namespace A154634.P13056163016090883462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151799 (A130178 (n + 1)).toNat

end

end A154634.P13056163016090883462

/-! ## A154634.P16014746311057628381

`A151799(A298077(n+1)/2)`
-/

namespace A154634.P16014746311057628381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151799 (SequenceMachineLib.roundAway ((A298077 (n + 1) : ℚ) / 2)).toNat

end

end A154634.P16014746311057628381

/-! ## A154634.P12070059023131666376

`A078587(A130178(n+1))`
-/

namespace A154634.P12070059023131666376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078587 (A130178 (n + 1)).toNat

end

end A154634.P12070059023131666376

/-! ## A154634.P15446588922182564739

`A078587(A298077(n+1)/2)`
-/

namespace A154634.P15446588922182564739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078587 (SequenceMachineLib.roundAway ((A298077 (n + 1) : ℚ) / 2)).toNat

end

end A154634.P15446588922182564739

/-!
# A154635: Ratio of the sum of the bends of the 5-dimensional spheres added in the n-th generation of Apollonian packing to the sum of the bends of the initial configuration of seven mutually tangent spheres.

The programs for A154635, the canonical program `A154635.P6829489512808173004` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A154635 has offset 0).

The definition of A154635 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A154635.P6829489512808173004

`8*a(n-1)-6*a(n-2)` with `a(0)=1, a(1)=2, a(2)=15`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A154635

/-- `8*a(n-1)-6*a(n-2)` -/
def P6829489512808173004.Spec : Prop :=
  ∀ n, P6829489512808173004.a n = A154635 n

theorem P6829489512808173004.correct : P6829489512808173004.Spec := by
  intro n
  simp only [A154635]

end A154635

/-! ## A154635.P7696545107849826160

`ogf((1-6x+5x^2)/(1-8x+6x^2))`
-/

namespace A154635.P7696545107849826160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -6, 5] [1, -8, 6] n

end

end A154635.P7696545107849826160

namespace A154635

/-- `ogf((1-6x+5x^2)/(1-8x+6x^2))` -/
def P7696545107849826160.Spec : Prop :=
  ∀ n, P7696545107849826160.a n = A154635 n

end A154635

/-! ## A154635.P17188938861322436951

`A187395(a(n-1))+1` with `a(0)=1, a(1)=2`
-/

namespace A154635.P17188938861322436951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  A187395 (a (n - 1)).toNat + 1

end

end A154635.P17188938861322436951

namespace A154635

/-- `A187395(a(n-1))+1` -/
def P17188938861322436951.Spec : Prop :=
  ∀ n, P17188938861322436951.a n = A154635 n

end A154635

/-!
# A154636: a(n) is the ratio of the sum of the bends of the circles that are drawn in the n-th generation of Apollonian packing to the sum of the bends of the circles in the initial configuration of 3 circles.

The programs for A154636, the canonical program `A154636.P17438834934374412594` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A154636 has offset 0).

The definition of A154636 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A154636.P865171832068727624

`ogf((1-6x+5x^2)/(1-8x+3x^2))`
-/

namespace A154636.P865171832068727624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -6, 5] [1, -8, 3] n

end

end A154636.P865171832068727624

namespace A154636

/-- `ogf((1-6x+5x^2)/(1-8x+3x^2))` -/
def P865171832068727624.Spec : Prop :=
  ∀ n, P865171832068727624.a n = A154636 n

end A154636

/-! ## A154636.P17438834934374412594

`8*a(n-1)-3*a(n-2)` with `a(0)=1, a(1)=2, a(2)=18`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A154636

/-- `8*a(n-1)-3*a(n-2)` -/
def P17438834934374412594.Spec : Prop :=
  ∀ n, P17438834934374412594.a n = A154636 n

theorem P17438834934374412594.correct : P17438834934374412594.Spec := by
  intro n
  simp only [A154636]

end A154636

/-!
# A154637: a(n) is the ratio of the sum of squares of the bends of the circles that are added in the n-th generation of Apollonian packing, to the sum of squares of the bends of the initial three circles.

The programs for A154637, the canonical program `A154637.P9593291482495204823` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A154637 has offset 0).

The definition of A154637 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A154637.P4217354547002596879

`ogf((1-18x+29x^2)/(1-20x+3x^2))`
-/

namespace A154637.P4217354547002596879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -18, 29] [1, -20, 3] n

end

end A154637.P4217354547002596879

namespace A154637

/-- `ogf((1-18x+29x^2)/(1-20x+3x^2))` -/
def P4217354547002596879.Spec : Prop :=
  ∀ n, P4217354547002596879.a n = A154637 n

end A154637

/-! ## A154637.P9593291482495204823

`20*a(n-1)-3*a(n-2)` with `a(0)=1, a(1)=2, a(2)=66`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A154637

/-- `20*a(n-1)-3*a(n-2)` -/
def P9593291482495204823.Spec : Prop :=
  ∀ n, P9593291482495204823.a n = A154637 n

theorem P9593291482495204823.correct : P9593291482495204823.Spec := by
  intro n
  simp only [A154637]

end A154637

/-!
# A154638: a(n) is the number of distinct reduced words of length n in the Coxeter group of "Apollonian reflections" in three dimensions.

The programs for A154638, the canonical program `A154638.P3528117002093406253` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A154638 has offset 0).

The definition of A154638 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 190 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A154638.P3528117002093406253

`ogf((1+2x+2x^2+x^3)/(1-3x-3x^2+6x^3))`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A154638

/-- `ogf((1+2x+2x^2+x^3)/(1-3x-3x^2+6x^3))` -/
def P3528117002093406253.Spec : Prop :=
  ∀ n, P3528117002093406253.a n = A154638 n

theorem P3528117002093406253.correct : P3528117002093406253.Spec := by
  intro n
  simp only [A154638]

end A154638

/-!
# A154639: a(n) is the number of reduced words of length n (i.e., all possible length-reducing cancellations have been applied) in the generators of the "Apollonian reflection group" in three dimensions. This is a Coxeter group with five generators, satisfying the identities (S_i)^2 = (S_i S_j)^3 = I.

The programs for A154639, there is no canonical definition to state claims against.
-/

/-! ## A154639.P16545602161908895593

`∏{e}[2^n, A214939(#)]`
-/

namespace A154639.P16545602161908895593
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A214939 (Nat.factorization (f1 n) p)

end

end A154639.P16545602161908895593

/-! ## A154639.P638634279109583140

`A214939(and(n, or(n, a(n-1))))` with `a(0)=1`
-/

namespace A154639.P638634279109583140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A214939 (Int.land (n : ℤ) (Int.lor (n : ℤ) (a (n - 1)))).toNat

end

end A154639.P638634279109583140

/-! ## A154639.P946078501090878499

`A214939(n%ceil(sqrt(a(n-1)+4+n)))` with `a(0)=1`
-/

namespace A154639.P946078501090878499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A214939 (Int.tmod (n : ℤ) ⌈Real.sqrt (a (n - 1) + 4 + (n : ℤ) : ℝ)⌉).toNat

end

end A154639.P946078501090878499

/-!
# A154640: a(n) is the number of spheres that are added in the n-th generation of Apollonian packing of three-dimensional spheres, starting with five mutually tangent spheres and using "strategy (a)" to count them (see the reference).

The programs for A154640, there is no canonical definition to state claims against.
-/

/-! ## A154640.P9605734189472803378

`5*A292987(A148831(n))`
-/

namespace A154640.P9605734189472803378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * A292987 (A148831 n).toNat

end

end A154640.P9605734189472803378

/-! ## A154640.P8865102743963430603

`5*A175088(A287275(n))`
-/

namespace A154640.P8865102743963430603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * A175088 (A287275 n).toNat

end

end A154640.P8865102743963430603

/-!
# A154641: a(n) is the ratio of the sum of the bends of the spheres that are added in the n-th generation of Apollonian packing of three-dimensional spheres, using "strategy (a)" to count them (see the reference), to the sum of the bends of the initial five mutually tangent spheres.

The programs for A154641, there is no canonical definition to state claims against.
-/

/-! ## A154641.P17251348509999525886

`A128701((∑[∑{d}[n, #]]+1)^gcd(5, n))`
-/

namespace A154641.P17251348509999525886
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n), d

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128701 ((∑ j ∈ Finset.range (n + 1), f1 j + 1) ^ Nat.gcd 5 n)

end

end A154641.P17251348509999525886

/-!
# A154643: a(n) is the number of spheres that are added in the n-th generation of Apollonian packing of three-dimensional spheres, starting with five mutually tangent spheres and using "strategy (b)" to count them (see the reference).

The programs for A154643, there is no canonical definition to state claims against.
-/

/-! ## A154643.P9709412418250616336

`Δ[5*n*(A000040(A004148(n))-1)]`
-/

namespace A154643.P9709412418250616336
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * ((n : ℤ) * (A000040 (A004148 n).toNat - 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A154643.P9709412418250616336

/-!
# A154644: a(n) is the ratio of the sum of the bends of the spheres that are added in the n-th generation of Apollonian packing of three-dimensional spheres, using "strategy (b)" to count them (see the reference), to the sum of the bends of the initial five mutually tangent spheres.

The programs for A154644, there is no canonical definition to state claims against.
-/

/-! ## A154644.P50038808287029954

`A338246(A093135(n))+A053644(n)`
-/

namespace A154644.P50038808287029954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338246 (A093135 n).toNat + A053644 n

end

end A154644.P50038808287029954

/-!
# A154646: Triangle T(n,k) with the coefficient [x^k] of the series (1-x)^(n+1) * Sum_{m>=0} ((3*m+1)^n + (3*m+2)^n)*x^m in row n, column k.

The programs for A154646, there is no canonical definition to state claims against.
-/

/-! ## A154646.P3780395768083587975

`A174599(n)+∏[char[∑[n+1]]+1]`
-/

namespace A154646.P3780395768083587975
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f2 j = n then 1 else 0) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174599 n + ((∏ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A154646.P3780395768083587975

/-! ## A154646.P15192098027355412570

`A225117(A061579(n))+A225117(n)`
-/

namespace A154646.P15192098027355412570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225117 (A061579 n).toNat + A225117 n

end

end A154646.P15192098027355412570

/-! ## A154646.P9647536478644528131

`A225117(A114327(n)+n)+A225117(n)`
-/

namespace A154646.P9647536478644528131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225117 (A114327 n + (n : ℤ)).toNat + A225117 n

end

end A154646.P9647536478644528131

/-! ## A154646.P6038113680136695856

`A373408(A304321(n+1))+A304347(n+1)`
-/

namespace A154646.P6038113680136695856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373408 (A304321 (n + 1)).toNat + A304347 (n + 1)

end

end A154646.P6038113680136695856

/-!
# A154647: Triangle, T(n, k) = [x^k]( p(x, n) ), where (1/2)*(1-x)^(n+1) * Sum_{j >= 0} ((4*j + 3)^n + (4*j+1)^n )*x^j, read by rows.

The programs for A154647, there is no canonical definition to state claims against.
-/

/-! ## A154647.P1312642470070997931

`A225118(n)-A154854(n)`
-/

namespace A154647.P1312642470070997931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225118 n - A154854 n

end

end A154647.P1312642470070997931

/-! ## A154647.P10781001046543881904

`(A176199(n)+A098355(n))/2`
-/

namespace A154647.P10781001046543881904
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A176199 n + A098355 n : ℚ) / 2

end

end A154647.P10781001046543881904

/-! ## A154647.P4677991443538018432

`floor(A174678(n)+A098355(n)/2)`
-/

namespace A154647.P4677991443538018432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A174678 n : ℚ) + (A098355 n : ℚ) / 2⌋

end

end A154647.P4677991443538018432

/-! ## A154647.P11637901162891291955

`A174678(n)+A004526(A098355(n))`
-/

namespace A154647.P11637901162891291955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174678 n + A004526 (A098355 n).toNat

end

end A154647.P11637901162891291955

/-! ## A154647.P3332216871662677798

`A174678(n)+A154854(A057944(n))`
-/

namespace A154647.P3332216871662677798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174678 n + A154854 (A057944 n).toNat

end

end A154647.P3332216871662677798

/-!
# A154648: Primes of the form n^2 - 13.

The programs for A154648, there is no canonical definition to state claims against.
-/

/-! ## A154648.P3163396943086855595

`A296507(n+1)²-13`
-/

namespace A154648.P3163396943086855595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296507 (n + 1) ^ 2 - 13

end

end A154648.P3163396943086855595

/-! ## A154648.P6967326890289861271

`or(3, A296507(A008621(4*n))²-13)`
-/

namespace A154648.P6967326890289861271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 3 (A296507 (A008621 (4 * n)).toNat ^ 2 - 13)

end

end A154648.P6967326890289861271

/-! ## A154648.P9905296710810308590

`A127146(A296507(n+1)+5)`
-/

namespace A154648.P9905296710810308590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127146 (A296507 (n + 1) + 5).toNat

end

end A154648.P9905296710810308590

/-! ## A154648.P2178440925568430399

`p?[n²-13]`
-/

namespace A154648.P2178440925568430399
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) - 13

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A154648.P2178440925568430399

/-! ## A154648.P11615351388226374439

`or(1, p?[n^2-13])`
-/

namespace A154648.P11615351388226374439
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) - 13

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A154648.P11615351388226374439

/-! ## A154648.P10097215257378239951

`record[p?[A127146((n+1)/4^val(n+1, 4))]]`
-/

namespace A154648.P10097215257378239951
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127146 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (4 ^ SequenceMachineLib.valuation (n + 1) 4 : ℚ))).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A154648.P10097215257378239951

/-! ## A154648.P4782965985362719928

`p?[A127146(n+4)]%A216004(n+1)`
-/

namespace A154648.P4782965985362719928
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127146 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)) (A216004 (n + 1))

end

end A154648.P4782965985362719928

/-!
# A154650: Primes p such that 4*p^2-8*p-9 is a prime.

The programs for A154650, there is no canonical definition to state claims against.
-/

/-! ## A154650.P6891391203017736210

`p?[A000027(A296507(n+1)/2+1)]`
-/

namespace A154650.P6891391203017736210
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (SequenceMachineLib.roundAway ((A296507 (n + 1) : ℚ) / 2 + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A154650.P6891391203017736210

/-! ## A154650.P893732554836423398

`record[A006530(A296507(n+1)+2)]`
-/

namespace A154650.P893732554836423398
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A296507 (n + 1) + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A154650.P893732554836423398

/-! ## A154650.P14419998558067786121

`p?[A305897(sqrt(A154648(n+1)+13))]`
-/

namespace A154650.P14419998558067786121
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305897 (SequenceMachineLib.roundAway (Real.sqrt (A154648 (n + 1) + 13 : ℝ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A154650.P14419998558067786121

/-! ## A154650.P4767193205274323744

`p?[A103391(A296507(n+1))]`
-/

namespace A154650.P4767193205274323744
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103391 (A296507 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A154650.P4767193205274323744

/-! ## A154650.P1530529257604239878

`p?[A008619(A296507(n+1))]`
-/

namespace A154650.P1530529257604239878
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A296507 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A154650.P1530529257604239878

/-! ## A154650.P11787032343449272260

`p?[A001057(A296507(n+1)+1)]`
-/

namespace A154650.P11787032343449272260
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001057 (A296507 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A154650.P11787032343449272260

/-! ## A154650.P17484035286531273715

`p?[A003602(A296507(n+1)+1)]`
-/

namespace A154650.P17484035286531273715
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003602 (A296507 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A154650.P17484035286531273715

/-! ## A154650.P17336189873608432290

`p?[A026741(A296507(n+1)+2)]`
-/

namespace A154650.P17336189873608432290
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (A296507 (n + 1) + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A154650.P17336189873608432290

/-! ## A154650.P14318404728113808120

`p?[A055032(A296507(n+1)+2)]`
-/

namespace A154650.P14318404728113808120
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055032 (A296507 (n + 1) + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A154650.P14318404728113808120

/-! ## A154650.P5280663339067647785

`A008475(p?[A052938(A296507(n+1))])`
-/

namespace A154650.P5280663339067647785
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052938 (A296507 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008475 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A154650.P5280663339067647785

/-! ## A154650.P6272508901194674187

`A019554(p?[A052938(A296507(n+1))])`
-/

namespace A154650.P6272508901194674187
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052938 (A296507 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019554 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A154650.P6272508901194674187

/-! ## A154650.P14479271257195696502

`A019555(p?[A052938(A296507(n+1))])`
-/

namespace A154650.P14479271257195696502
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052938 (A296507 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019555 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A154650.P14479271257195696502

/-! ## A154650.P5388780058963224095

`A022998(p?[A052938(A296507(n+1))])`
-/

namespace A154650.P5388780058963224095
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052938 (A296507 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022998 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A154650.P5388780058963224095

/-! ## A154650.P3129974025184309546

`A026741(p?[A052938(A296507(n+1))])`
-/

namespace A154650.P3129974025184309546
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052938 (A296507 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A154650.P3129974025184309546

/-!
# A154652: Triangle read by rows, T(n, k) = binomial(3*(prime(n+1) - 1)/2, 3*(prime(k+1) - 1)/2) with T(n,0) = 1.

The programs for A154652, there is no canonical definition to state claims against.
-/

/-! ## A154652.P11467260768164305173

`A278363(A176491(n)+1)`
-/

namespace A154652.P11467260768164305173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278363 (A176491 n + 1).toNat

end

end A154652.P11467260768164305173

/-! ## A154652.P9106741494986579491

`A007426(A306697(n+1)^A380893(n+1))`
-/

namespace A154652.P9106741494986579491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007426 (SequenceMachineLib.roundAway ((A306697 (n + 1) : ℚ) ^ (A380893 (n + 1) : ℤ))).toNat

end

end A154652.P9106741494986579491

/-! ## A154652.P15210725775040100654

`A000292(A316733(n+1))%A083644(2*(n+2))`
-/

namespace A154652.P15210725775040100654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000292 (A316733 (n + 1)).toNat) (A083644 (2 * (n + 2)))

end

end A154652.P15210725775040100654

/-! ## A154652.P14601362088422943002

`A000292(A316733(n+1)%A335874(3*n+2))`
-/

namespace A154652.P14601362088422943002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000292 (Int.tmod (A316733 (n + 1)) (A335874 (3 * n + 2))).toNat

end

end A154652.P14601362088422943002

/-!
# A154653: Triangular T(n,k) = binomial(prime(n+1) - 1, prime(k+1) - 1) with T(n,0) = 1, read by rows.

The programs for A154653, there is no canonical definition to state claims against.
-/

/-! ## A154653.P5798772426170566353

`A390800(A098568(n)%A199766(n+5))`
-/

namespace A154653.P5798772426170566353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390800 (Int.tmod (A098568 n) (A199766 (n + 5))).toNat

end

end A154653.P5798772426170566353

/-! ## A154653.P414982421048063360

`A086645(∑[(A376192(2*(n+1))%A291722(n))²]+n)`
-/

namespace A154653.P414982421048063360
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A376192 (2 * (n + 1))) (A291722 n) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086645 (∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ)).toNat

end

end A154653.P414982421048063360

/-! ## A154653.P12850639076556729614

`A103411(A022167(n))`
-/

namespace A154653.P12850639076556729614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103411 (A022167 n).toNat

end

end A154653.P12850639076556729614

/-! ## A154653.P1578720319110124100

`A103411(A080248(n))`
-/

namespace A154653.P1578720319110124100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103411 (A080248 n).toNat

end

end A154653.P1578720319110124100

/-! ## A154653.P12699854443054646526

`A135986(A099759(n))`
-/

namespace A154653.P12699854443054646526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135986 (A099759 n).toNat

end

end A154653.P12699854443054646526

/-!
# A154654: Number of permutations of length n within distance 5.

The programs for A154654, there is no canonical definition to state claims against.
-/

/-! ## A154654.P2734446651874843159

`A306209(Δ[A026054(n+3)])`
-/

namespace A154654.P2734446651874843159
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026054 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306209 (f1 (n + 1) - f1 n).toNat

end

end A154654.P2734446651874843159

/-! ## A154654.P5902679974096788211

`A306209(A000096(n+5)-5)`
-/

namespace A154654.P5902679974096788211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306209 (A000096 (n + 5) - 5).toNat

end

end A154654.P5902679974096788211

/-! ## A154654.P1356444665174714504

`A306209(A000217(n+6)-6)`
-/

namespace A154654.P1356444665174714504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306209 (A000217 (n + 6) - 6).toNat

end

end A154654.P1356444665174714504

/-! ## A154654.P6778662541460592118

`A306209(A000124(n+6)-7)`
-/

namespace A154654.P6778662541460592118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306209 (A000124 (n + 6) - 7).toNat

end

end A154654.P6778662541460592118

/-! ## A154654.P7423376694100381412

`A306209(A167499(n+5)-11)`
-/

namespace A154654.P7423376694100381412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306209 (A167499 (n + 5) - 11).toNat

end

end A154654.P7423376694100381412

/-!
# A154655: Number of permutations of length n within distance 6.

The programs for A154655, there is no canonical definition to state claims against.
-/

/-! ## A154655.P18161095660985775631

`A306209(A055999(n+4)-1)`
-/

namespace A154655.P18161095660985775631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306209 (A055999 (n + 4) - 1).toNat

end

end A154655.P18161095660985775631

/-! ## A154655.P1418382582762967637

`A306209(A000217(n+7)-7)`
-/

namespace A154655.P1418382582762967637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306209 (A000217 (n + 7) - 7).toNat

end

end A154655.P1418382582762967637

/-! ## A154655.P5242140791136435674

`A306209(eq[7, A004736(n+1)])`
-/

namespace A154655.P5242140791136435674
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306209 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A154655.P5242140791136435674

/-! ## A154655.P10938887593791421346

`A306209(Δ[A026054(n+4)]-1)`
-/

namespace A154655.P10938887593791421346
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026054 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306209 (f1 (n + 1) - f1 n - 1).toNat

end

end A154655.P10938887593791421346

/-! ## A154655.P6184550785482470099

`A306209(A000096(n+5)+n+1)`
-/

namespace A154655.P6184550785482470099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306209 (A000096 (n + 5) + (n + 1 : ℤ)).toNat

end

end A154655.P6184550785482470099

/-!
# A154656: Number of permutations of length n within distance 7.

The programs for A154656, there is no canonical definition to state claims against.
-/

/-! ## A154656.P5511694547237300774

`A306209(A155212(n+4))`
-/

namespace A154656.P5511694547237300774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306209 (A155212 (n + 4)).toNat

end

end A154656.P5511694547237300774

/-! ## A154656.P12080657784414823031

`A306209(eq[7, A025581(n)])`
-/

namespace A154656.P12080657784414823031
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306209 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A154656.P12080657784414823031

/-! ## A154656.P6168679695343074352

`A306209(A000217(n+8)-8)`
-/

namespace A154656.P6168679695343074352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306209 (A000217 (n + 8) - 8).toNat

end

end A154656.P6168679695343074352

/-! ## A154656.P15534491863872530857

`A306209(eq[8, A004736(n+1)])`
-/

namespace A154656.P15534491863872530857
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306209 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A154656.P15534491863872530857

/-! ## A154656.P14806401252172961511

`A306209(2*n+A056119(n)+28)`
-/

namespace A154656.P14806401252172961511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306209 ((2 * n : ℤ) + (A056119 n + 28)).toNat

end

end A154656.P14806401252172961511

/-!
# A154657: Number of permutations of length n within distance 8.

The programs for A154657, there is no canonical definition to state claims against.
-/

/-! ## A154657.P15463357480964451614

`A306209(A155212(n+5)-1)`
-/

namespace A154657.P15463357480964451614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306209 (A155212 (n + 5) - 1).toNat

end

end A154657.P15463357480964451614

/-! ## A154657.P17296487315234563862

`A306209(A046691(n+7)-5)`
-/

namespace A154657.P17296487315234563862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306209 (A046691 (n + 7) - 5).toNat

end

end A154657.P17296487315234563862

/-! ## A154657.P13636403621652028653

`A306209(A027379(n+7)-6)`
-/

namespace A154657.P13636403621652028653
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306209 (A027379 (n + 7) - 6).toNat

end

end A154657.P13636403621652028653

/-! ## A154657.P10545343780002269373

`A306209(A055998(n+7)-6)`
-/

namespace A154657.P10545343780002269373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306209 (A055998 (n + 7) - 6).toNat

end

end A154657.P10545343780002269373

/-! ## A154657.P14886481324905013532

`A306209(A000217(n+9)-9)`
-/

namespace A154657.P14886481324905013532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306209 (A000217 (n + 9) - 9).toNat

end

end A154657.P14886481324905013532

/-!
# A154658: Number of permutations of length n within distance 9.

The programs for A154658, there is no canonical definition to state claims against.
-/

/-! ## A154658.P7463960116826622677

`A306209(A051936(n+10)-1)`
-/

namespace A154658.P7463960116826622677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306209 (A051936 (n + 10) - 1).toNat

end

end A154658.P7463960116826622677

/-! ## A154658.P10277605955755195051

`A306209(A046691(n+8)-6)`
-/

namespace A154658.P10277605955755195051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306209 (A046691 (n + 8) - 6).toNat

end

end A154658.P10277605955755195051

/-! ## A154658.P15040882184789505789

`A306209(A034856(n+9)-8)`
-/

namespace A154658.P15040882184789505789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306209 (A034856 (n + 9) - 8).toNat

end

end A154658.P15040882184789505789

/-! ## A154658.P4273124064625503920

`A306209(A000217(n+10)-10)`
-/

namespace A154658.P4273124064625503920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306209 (A000217 (n + 10) - 10).toNat

end

end A154658.P4273124064625503920

/-! ## A154658.P4672989712187384771

`A306209(A000124(n+9)+n-1)`
-/

namespace A154658.P4672989712187384771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306209 (A000124 (n + 9) + (n : ℤ) - 1).toNat

end

end A154658.P4672989712187384771

/-!
# A154659: Number of permutations of length n within distance 10.

The programs for A154659, there is no canonical definition to state claims against.
-/

/-! ## A154659.P7161011852041523034

`A306209(eq[10, A025581(n)])`
-/

namespace A154659.P7161011852041523034
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306209 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A154659.P7161011852041523034

/-! ## A154659.P2831436702723345938

`A306209(A155212(n+7)-3)`
-/

namespace A154659.P2831436702723345938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306209 (A155212 (n + 7) - 3).toNat

end

end A154659.P2831436702723345938

/-! ## A154659.P17969861501381746704

`A306209(A055999(n+8)-5)`
-/

namespace A154659.P17969861501381746704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306209 (A055999 (n + 8) - 5).toNat

end

end A154659.P17969861501381746704

/-! ## A154659.P732733274256027267

`A306209(A000217(n+11)-11)`
-/

namespace A154659.P732733274256027267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306209 (A000217 (n + 11) - 11).toNat

end

end A154659.P732733274256027267

/-! ## A154659.P1370548059042955268

`A306209(2*n+A167499(n+8)+5)`
-/

namespace A154659.P1370548059042955268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306209 ((2 * n : ℤ) + (A167499 (n + 8) + 5)).toNat

end

end A154659.P1370548059042955268

/-!
# A154666: Numbers k such that k-1, k+1, and k^2-k-1 are primes.

The programs for A154666, there is no canonical definition to state claims against.
-/

/-! ## A154666.P9731170338405871055

`p?[A053184(n+1)+2]-1`
-/

namespace A154666.P9731170338405871055
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053184 (n + 1) + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - 1

end

end A154666.P9731170338405871055

/-! ## A154666.P11843479138563485422

`∩[A014574(n+1), A136243(n+1)]`
-/

namespace A154666.P11843479138563485422
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014574 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136243 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A154666.P11843479138563485422

/-! ## A154666.P14773694846471045494

`∩[A136243(n+1), A217259(n+1)]`
-/

namespace A154666.P14773694846471045494
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136243 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217259 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A154666.P14773694846471045494

/-! ## A154666.P9221478807389047375

`xor(A010892(3*n)², p?[A053184(n+1)+2])`
-/

namespace A154666.P9221478807389047375
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053184 (n + 1) + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A010892 (3 * n) ^ 2) (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A154666.P9221478807389047375

/-! ## A154666.P12235303920493894148

`xor(1, p?[A053184(n+1)+2]%A187104(n+1))`
-/

namespace A154666.P12235303920493894148
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053184 (n + 1) + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (Int.tmod (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)) (A187104 (n + 1)))

end

end A154666.P12235303920493894148

/-! ## A154666.P10522565626495131691

`xor(A029883(n+1)²!, p?[A053184(n+1)+2])`
-/

namespace A154666.P10522565626495131691
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053184 (n + 1) + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (Nat.factorial (A029883 (n + 1) ^ 2).toNat : ℤ) (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A154666.P10522565626495131691

/-! ## A154666.P5556445392912306234

`xor(A055975(2*n+1)², p?[A053184(n+1)+2])`
-/

namespace A154666.P5556445392912306234
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053184 (n + 1) + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A055975 (2 * n + 1) ^ 2) (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A154666.P5556445392912306234

/-! ## A154666.P15448598155293384888

`∩[A056853(n+1), A136243(n+1)]`
-/

namespace A154666.P15448598155293384888
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056853 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136243 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A154666.P15448598155293384888

/-! ## A154666.P14411945035450029462

`∩[A072570(n+1), A136243(n+1)]`
-/

namespace A154666.P14411945035450029462
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072570 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136243 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A154666.P14411945035450029462

/-! ## A154666.P13958960066175799150

`∩[A002328(n+1), A014574(n+1)]`
-/

namespace A154666.P13958960066175799150
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002328 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014574 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A154666.P13958960066175799150

/-! ## A154666.P7716179072290517274

`∩[A002328(n+1), A217259(n+1)]`
-/

namespace A154666.P7716179072290517274
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002328 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217259 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A154666.P7716179072290517274

/-! ## A154666.P18037717137764070306

`∩[A072568(n+1), A136243(n+1)]`
-/

namespace A154666.P18037717137764070306
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072568 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136243 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A154666.P18037717137764070306

/-! ## A154666.P12066181587249058221

`∩[A136243(n+1), A167706(n+1)]`
-/

namespace A154666.P12066181587249058221
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136243 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167706 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A154666.P12066181587249058221

/-! ## A154666.P11561062602244142528

`∩[A136243(n+1), A162800(n)]`
-/

namespace A154666.P11561062602244142528
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136243 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162800 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A154666.P11561062602244142528

/-! ## A154666.P1303036770279582962

`∩[A006093(n+1), A136243(n+1)]`
-/

namespace A154666.P1303036770279582962
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006093 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136243 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A154666.P1303036770279582962

/-! ## A154666.P16598780355092367834

`∩[A024675(n+1), A136243(n+1)]`
-/

namespace A154666.P16598780355092367834
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024675 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136243 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A154666.P16598780355092367834

/-! ## A154666.P13930880088905677302

`∩[A136243(n+1), A162735(n+1)]`
-/

namespace A154666.P13930880088905677302
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136243 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162735 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A154666.P13930880088905677302

/-! ## A154666.P1624538810223572185

`∩[A136243(n+1), A165972(n+1)]`
-/

namespace A154666.P1624538810223572185
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136243 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165972 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A154666.P1624538810223572185

/-! ## A154666.P3753070541821752854

`∩[A136243(n+1), A280469(n+1)]`
-/

namespace A154666.P3753070541821752854
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136243 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280469 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A154666.P3753070541821752854

/-! ## A154666.P9472302484056687585

`∩[A061715(n+1), A136243(n+1)]`
-/

namespace A154666.P9472302484056687585
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061715 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136243 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A154666.P9472302484056687585

/-!
# A154667: Averages of twin prime pairs such that p1 * p2 + AverageTwinPrime is prime.

The programs for A154667, there is no canonical definition to state claims against.
-/

/-! ## A154667.P17954127530716977508

`∩[A001359(n+1), A180931(n+1)]+1`
-/

namespace A154667.P17954127530716977508
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001359 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180931 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n + 1

end

end A154667.P17954127530716977508

/-! ## A154667.P12692745422253880165

`∩[A180931(n+1), A378983(n+1)]+1`
-/

namespace A154667.P12692745422253880165
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180931 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378983 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n + 1

end

end A154667.P12692745422253880165

/-! ## A154667.P3695354391684401076

`∩[A054799(n+1), A180931(n+1)]+1`
-/

namespace A154667.P3695354391684401076
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054799 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180931 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n + 1

end

end A154667.P3695354391684401076

/-! ## A154667.P4693369279626531023

`∩[A063700(n+1), A180931(n+1)]+1`
-/

namespace A154667.P4693369279626531023
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063700 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180931 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n + 1

end

end A154667.P4693369279626531023

/-! ## A154667.P17116780308835728237

`∩[A124588(n+1), A180931(n+1)]+1`
-/

namespace A154667.P17116780308835728237
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124588 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180931 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n + 1

end

end A154667.P17116780308835728237

/-! ## A154667.P9681039478388121740

`∩[A180931(n+1), A181747(n+1)]+1`
-/

namespace A154667.P9681039478388121740
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180931 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181747 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n + 1

end

end A154667.P9681039478388121740

/-! ## A154667.P9123026973793602287

`∩[A180931(n+1), A238528(n+1)]+1`
-/

namespace A154667.P9123026973793602287
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180931 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238528 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n + 1

end

end A154667.P9123026973793602287

/-! ## A154667.P11595848572666468307

`∩[A180931(n+1), A280255(n+1)]+1`
-/

namespace A154667.P11595848572666468307
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180931 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280255 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n + 1

end

end A154667.P11595848572666468307

/-! ## A154667.P722716196691428313

`∩[A063693(n+1), A180931(n+1)]+1`
-/

namespace A154667.P722716196691428313
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063693 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180931 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n + 1

end

end A154667.P722716196691428313

/-! ## A154667.P14928577038761734978

`∩[A073534(n+1), A180931(n+1)]+1`
-/

namespace A154667.P14928577038761734978
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073534 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180931 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n + 1

end

end A154667.P14928577038761734978

/-! ## A154667.P1822767707335136623

`A153414(n+1)-1`
-/

namespace A154667.P1822767707335136623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153414 (n + 1) - 1

end

end A154667.P1822767707335136623

/-! ## A154667.P10069134239448825029

`A253414(2*(2*n+1))+A153414(n+1)`
-/

namespace A154667.P10069134239448825029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253414 (2 * (2 * n + 1)) + A153414 (n + 1)

end

end A154667.P10069134239448825029

/-! ## A154667.P12336479673851038568

`∩[A180931(n+1), A280590(n+1)]+1`
-/

namespace A154667.P12336479673851038568
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180931 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280590 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n + 1

end

end A154667.P12336479673851038568

/-! ## A154667.P12376639024319421829

`p?[A153590(n+1)+2]-1`
-/

namespace A154667.P12376639024319421829
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153590 (n + 1) + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - 1

end

end A154667.P12376639024319421829

/-! ## A154667.P2359155340895570786

`p?[A180931(n+1)+2]-1`
-/

namespace A154667.P2359155340895570786
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180931 (n + 1) + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - 1

end

end A154667.P2359155340895570786

/-! ## A154667.P9397713175942051056

`p?[ceil(sqrt(A180932(n+1)))]-1`
-/

namespace A154667.P9397713175942051056
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (A180932 (n + 1) : ℝ)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - 1

end

end A154667.P9397713175942051056

/-! ## A154667.P10924075487222480946

`∩[A001359(n+1), A153590(n+1)]+1`
-/

namespace A154667.P10924075487222480946
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001359 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153590 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n + 1

end

end A154667.P10924075487222480946

/-! ## A154667.P10108535410517273469

`p?[p?[A002328(n+1)]-2]+1`
-/

namespace A154667.P10108535410517273469
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002328 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) + 1

end

end A154667.P10108535410517273469

/-! ## A154667.P13878100777008161382

`A000010(A153414(n+1))`
-/

namespace A154667.P13878100777008161382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A153414 (n + 1)).toNat

end

end A154667.P13878100777008161382

/-! ## A154667.P3218196618415003285

`∩[A006512(n+1), A125236(n+1)]-1`
-/

namespace A154667.P3218196618415003285
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006512 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125236 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℤ) - 1

end

end A154667.P3218196618415003285

/-!
# A154668: Averages of twin primes such that p1*p2 -+ AverageTwinPrime are primes.

The programs for A154668, there is no canonical definition to state claims against.
-/

/-! ## A154668.P11623854664108532759

`∩[A154666(n+1), A154667(n+1)]`
-/

namespace A154668.P11623854664108532759
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154666 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154667 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A154668.P11623854664108532759

/-! ## A154668.P3229983196944628498

`∩[A014574(n+1), A352604(n+1)+1]`
-/

namespace A154668.P3229983196944628498
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014574 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352604 (n + 1) + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A154668.P3229983196944628498

/-! ## A154668.P10827856427874468187

`∩[A153414(n+1)-1, A154666(n+1)]`
-/

namespace A154668.P10827856427874468187
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153414 (n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154666 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A154668.P10827856427874468187

/-! ## A154668.P3513633105206845946

`∩[A253414(2*(2*n+1))+A153414(n+1), A154666(n+1)]`
-/

namespace A154668.P3513633105206845946
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253414 (2 * (2 * n + 1)) + A153414 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154666 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A154668.P3513633105206845946

/-! ## A154668.P3007872058182504089

`∩[A014574(n+1), A081944(n+1)]`
-/

namespace A154668.P3007872058182504089
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014574 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081944 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A154668.P3007872058182504089

/-!
# A154669: Averages k of twin prime pairs such that 2*k^3 + 12*k^2 is a square.

The programs for A154669, there is no canonical definition to state claims against.
-/

/-! ## A154669.P10248776598302720420

`∩[A014574(n+1), A152811(n+1)]`
-/

namespace A154669.P10248776598302720420
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014574 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152811 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A154669.P10248776598302720420

/-! ## A154669.P4143605209228315978

`p?[p?[A161532(n)]+2]-1`
-/

namespace A154669.P4143605209228315978
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161532 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n) + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - 1

end

end A154669.P4143605209228315978

/-! ## A154669.P104262517066791369

`p?[A201713(n+1)-2]+1`
-/

namespace A154669.P104262517066791369
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201713 (n + 1) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) + 1

end

end A154669.P104262517066791369

/-! ## A154669.P12516573162513057371

`p?[A201714(n+1)+2]-1`
-/

namespace A154669.P12516573162513057371
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201714 (n + 1) + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - 1

end

end A154669.P12516573162513057371

/-! ## A154669.P3999923042537689184

`p?[p?[A004277(n)*A028310(n)-5]-2]+1`
-/

namespace A154669.P3999923042537689184
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 n * A028310 n - 5

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) + 1

end

end A154669.P3999923042537689184

/-!
# A154670: Averages of twin prime pairs k such that k*2 and k/2 are squares.

The programs for A154670, there is no canonical definition to state claims against.
-/

/-! ## A154670.P5226537294803813270

`18*A037073(n+1)²`
-/

namespace A154670.P5226537294803813270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  18 * A037073 (n + 1) ^ 2

end

end A154670.P5226537294803813270

/-! ## A154670.P6131095685726998077

`A069496(1+n)+1`
-/

namespace A154670.P6131095685726998077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069496 (1 + n) + 1

end

end A154670.P6131095685726998077

/-! ## A154670.P1450156774265752645

`A118593(1+n)-1`
-/

namespace A154670.P1450156774265752645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118593 (1 + n) - 1

end

end A154670.P1450156774265752645

/-! ## A154670.P4864272882017830904

`A037072(n+1)/2`
-/

namespace A154670.P4864272882017830904
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A037072 (n + 1) : ℚ) / 2

end

end A154670.P4864272882017830904

/-! ## A154670.P8973780678162390696

`2*A173165(n+1)²`
-/

namespace A154670.P8973780678162390696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A173165 (n + 1) ^ 2

end

end A154670.P8973780678162390696

/-! ## A154670.P14677240576970868336

`A152786(n+1)²/2`
-/

namespace A154670.P14677240576970868336
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A152786 (n + 1) ^ 2 : ℚ) / 2

end

end A154670.P14677240576970868336

/-! ## A154670.P13889521672002573867

`A152786(n+1)*A173165(n+1)`
-/

namespace A154670.P13889521672002573867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152786 (n + 1) * A173165 (n + 1)

end

end A154670.P13889521672002573867

/-! ## A154670.P8501627770958317294

`A232878(Δ[n²])+1`
-/

namespace A154670.P8501627770958317294
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232878 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat + 1

end

end A154670.P8501627770958317294

/-! ## A154670.P17979642758882825540

`∩[A232878(n+1), A270231(n+1)]+1`
-/

namespace A154670.P17979642758882825540
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232878 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270231 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n + 1

end

end A154670.P17979642758882825540

/-! ## A154670.P1569212661033030589

`∩[A062703(n+1), A119767(n+1)]/2`
-/

namespace A154670.P1569212661033030589
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062703 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119767 (n + 1)

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℚ) / 2

end

end A154670.P1569212661033030589

/-! ## A154670.P6397771792303742764

`∩[A232878(n+1), A335410(n+1)]-1`
-/

namespace A154670.P6397771792303742764
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232878 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335410 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℤ) - 1

end

end A154670.P6397771792303742764

/-! ## A154670.P388030228916767865

`∩[A061275(n+1), A119768(n+1)]+1`
-/

namespace A154670.P388030228916767865
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061275 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119768 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n + 1

end

end A154670.P388030228916767865

/-! ## A154670.P14225946191999731010

`∩[A061275(n+1), A232878(n+1)]+1`
-/

namespace A154670.P14225946191999731010
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061275 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232878 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n + 1

end

end A154670.P14225946191999731010

/-! ## A154670.P3331870755918897978

`∩[A061275(n+1), A270231(n+1)]+1`
-/

namespace A154670.P3331870755918897978
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061275 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270231 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n + 1

end

end A154670.P3331870755918897978

/-! ## A154670.P1373254841807632104

`∩[A118591(n+1), A119768(n+1)]-1`
-/

namespace A154670.P1373254841807632104
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118591 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119768 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℤ) - 1

end

end A154670.P1373254841807632104

/-! ## A154670.P11191155552760854423

`∩[A091624(n+1), A232878(n+1)]+1`
-/

namespace A154670.P11191155552760854423
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091624 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232878 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n + 1

end

end A154670.P11191155552760854423

/-! ## A154670.P13656335787196105654

`∩[A090698(n+1), A118591(n+1)]-1`
-/

namespace A154670.P13656335787196105654
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090698 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118591 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℤ) - 1

end

end A154670.P13656335787196105654

/-! ## A154670.P10423846653740118158

`∩[A090698(n+1), A232878(n+1)]-1`
-/

namespace A154670.P10423846653740118158
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090698 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232878 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℤ) - 1

end

end A154670.P10423846653740118158

/-! ## A154670.P6974422082347667231

`ceil(sqrt(A235334(n+2)))`
-/

namespace A154670.P6974422082347667231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (A235334 (n + 2) : ℝ)⌉

end

end A154670.P6974422082347667231

/-! ## A154670.P4835510806525857064

`∩[A118591(n+1), A249410(n+1)]-1`
-/

namespace A154670.P4835510806525857064
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118591 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249410 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℤ) - 1

end

end A154670.P4835510806525857064

/-!
# A154671: Averages of twin prime pairs k such that k*3 and k/3 are squares.

The programs for A154671, there is no canonical definition to state claims against.
-/

/-! ## A154671.P7509136429875438950

`12*A154331(n+1)²`
-/

namespace A154671.P7509136429875438950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  12 * A154331 (n + 1) ^ 2

end

end A154671.P7509136429875438950

/-! ## A154671.P7965103332881474278

`A135453(A154331(1+n))`
-/

namespace A154671.P7965103332881474278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135453 (A154331 (1 + n)).toNat

end

end A154671.P7965103332881474278

/-! ## A154671.P9677345004694207535

`12*A000290(A154331(n+1)%A014574(n+1))`
-/

namespace A154671.P9677345004694207535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  12 * A000290 (Int.tmod (A154331 (n + 1)) (A014574 (n + 1))).toNat

end

end A154671.P9677345004694207535

/-! ## A154671.P13629016082430331224

`12*A000290(A154331(n+1))%A154670(n+1)`
-/

namespace A154671.P13629016082430331224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  12 * Int.tmod (A000290 (A154331 (n + 1)).toNat) (A154670 (n + 1))

end

end A154671.P13629016082430331224

/-! ## A154671.P15169366213319540076

`(12*A000290(A154331(n+1)))%A154672(n+1)`
-/

namespace A154671.P15169366213319540076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (12 * A000290 (A154331 (n + 1)).toNat) (A154672 (n + 1))

end

end A154671.P15169366213319540076

/-! ## A154671.P13009698671667601497

`3*A000290(2*A154331(n+1))`
-/

namespace A154671.P13009698671667601497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A000290 (2 * A154331 (n + 1)).toNat

end

end A154671.P13009698671667601497

/-!
# A154672: Numbers n = 5*k^2 such that n - 1 and n + 1 are (twin) primes (thus k=6*m).

The programs for A154672, there is no canonical definition to state claims against.
-/

/-! ## A154672.P7633323305886633155

`A154772(n+1)²*180`
-/

namespace A154672.P7633323305886633155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154772 (n + 1) ^ 2 * 180

end

end A154672.P7633323305886633155

/-! ## A154672.P17894798496835483545

`p?[p?[5*n²-1]+2]-1`
-/

namespace A154672.P17894798496835483545
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (5 * n ^ 2 : ℤ) - 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n) + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - 1

end

end A154672.P17894798496835483545

/-! ## A154672.P6274132313344539823

`p?[or(1, p?[n*5*n-1])+2]-1`
-/

namespace A154672.P6274132313344539823
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n * (5 * n) : ℤ) - 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)) + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - 1

end

end A154672.P6274132313344539823

/-! ## A154672.P3985813475722503863

`p?[A137530(n+1)-2]+1`
-/

namespace A154672.P3985813475722503863
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137530 (n + 1) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) + 1

end

end A154672.P3985813475722503863

/-!
# A154673: Averages of twin prime pairs k such that k*7 and k/7 are squares.

The programs for A154673, there is no canonical definition to state claims against.
-/

/-! ## A154673.P16879871034923269236

`14*A195321(A154773(n+1))`
-/

namespace A154673.P16879871034923269236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  14 * A195321 (A154773 (n + 1)).toNat

end

end A154673.P16879871034923269236

/-! ## A154673.P17670337918481649630

`28*C(A016766(A154773(n+1)), A033999(n)²)`
-/

namespace A154673.P17670337918481649630
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  28 * Nat.choose (A016766 (A154773 (n + 1)).toNat).toNat (A033999 n ^ 2).toNat

end

end A154673.P17670337918481649630

/-! ## A154673.P10668391666941374389

`(28*A016766(A154773(n+1)))%A154674(n+1)`
-/

namespace A154673.P10668391666941374389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (28 * A016766 (A154773 (n + 1)).toNat) (A154674 (n + 1))

end

end A154673.P10668391666941374389

/-! ## A154673.P16670630891914884346

`char[A154675(n+1)]+28*A016766(A154773(n+1))`
-/

namespace A154673.P16670630891914884346
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154675 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) + 28 * A016766 (A154773 (n + 1)).toNat

end

end A154673.P16670630891914884346

/-! ## A154673.P9426042608056347825

`28*A016766(A154773(n+1))%A032832(11*(n+1)+1)`
-/

namespace A154673.P9426042608056347825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  28 * Int.tmod (A016766 (A154773 (n + 1)).toNat) (A032832 (11 * (n + 1) + 1))

end

end A154673.P9426042608056347825

/-! ## A154673.P15877239079043987705

`14/A195321(A154773(n+1))^A008683(A020483(n))`
-/

namespace A154673.P15877239079043987705
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  14 / (A195321 (A154773 (n + 1)).toNat : ℚ) ^ (A008683 (A020483 n).toNat : ℤ)

end

end A154673.P15877239079043987705

/-!
# A154675: Averages of twin prime pairs k such that k*13 and k/13 are squares.

The programs for A154675, there is no canonical definition to state claims against.
-/

/-! ## A154675.P14333071944183141840

`468*A154775(n+1)²`
-/

namespace A154675.P14333071944183141840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  468 * A154775 (n + 1) ^ 2

end

end A154675.P14333071944183141840

/-!
# A154677: G.f. satisfies: A(x/A(x)) = C(x) where C(x) = 1 + x*C(x)^2 is the g.f. of A000108 (Catalan numbers).

The programs for A154677, there is no canonical definition to state claims against.
-/

/-! ## A154677.P18182382310893576632

`A244479(4*A162326(n))`
-/

namespace A154677.P18182382310893576632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244479 (4 * A162326 n).toNat

end

end A154677.P18182382310893576632

/-! ## A154677.P15622822237282895609

`A162326(n)-A000035(A084438(3*(n+1)))`
-/

namespace A154677.P15622822237282895609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162326 n - A000035 (A084438 (3 * (n + 1))).toNat

end

end A154677.P15622822237282895609

/-!
# A154679: Primes p such that the sum of digits of p+2 is a composite number.

The programs for A154679, the canonical program `A154679.P10868027328669372929` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A154679 has offset 1).

The definition of A154679 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1791 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A154679.P10868027328669372929

`p?[A004277(n)-A005171(A004155(n))]`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A154679

/-- `p?[A004277(n)-A005171(A004155(n))]` -/
def P10868027328669372929.Spec : Prop :=
  ∀ n, P10868027328669372929.a n = A154679 (n + 1)

theorem P10868027328669372929.correct : P10868027328669372929.Spec := by
  intro n
  simp only [A154679, Nat.add_sub_cancel]

end A154679

/-! ## A154679.P4494461577188054378

`p?[A005843(n)-A005171(A004155(n))]`
-/

namespace A154679.P4494461577188054378
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 n - A005171 (A004155 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A154679.P4494461577188054378

namespace A154679

/-- `p?[A005843(n)-A005171(A004155(n))]` -/
def P4494461577188054378.Spec : Prop :=
  ∀ n, P4494461577188054378.a n = A154679 (n + 1)

end A154679

/-! ## A154679.P16483670030418806695

`p?[A104211(n+1)-2]`
-/

namespace A154679.P16483670030418806695
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104211 (n + 1) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A154679.P16483670030418806695

namespace A154679

/-- `p?[A104211(n+1)-2]` -/
def P16483670030418806695.Spec : Prop :=
  ∀ n, P16483670030418806695.a n = A154679 (n + 1)

end A154679

/-! ## A154679.P11461134677822757924

`p?[comp[A028834(n+1)-2]]`
-/

namespace A154679.P11461134677822757924
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028834 (n + 1) - 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A154679.P11461134677822757924

namespace A154679

/-- `p?[comp[A028834(n+1)-2]]` -/
def P11461134677822757924.Spec : Prop :=
  ∀ n, (P11461134677822757924.a n : ℤ) = A154679 (n + 1)

end A154679

/-! ## A154679.P3012400347619380389

`∩[A000040(n+1), A104211(n+1)-2]`
-/

namespace A154679.P3012400347619380389
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104211 (n + 1) - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A154679.P3012400347619380389

namespace A154679

/-- `∩[A000040(n+1), A104211(n+1)-2]` -/
def P3012400347619380389.Spec : Prop :=
  ∀ n, (P3012400347619380389.a n : ℤ) = A154679 (n + 1)

end A154679

/-! ## A154679.P10808355236643700036

`∩[A045319(n+1), A104211(n+1)-2]`
-/

namespace A154679.P10808355236643700036
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045319 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104211 (n + 1) - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A154679.P10808355236643700036

namespace A154679

/-- `∩[A045319(n+1), A104211(n+1)-2]` -/
def P10808355236643700036.Spec : Prop :=
  ∀ n, (P10808355236643700036.a n : ℤ) = A154679 (n + 1)

end A154679

/-! ## A154679.P1571569172251538211

`∩[A045344(n+1), A104211(n+1)-2]`
-/

namespace A154679.P1571569172251538211
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045344 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104211 (n + 1) - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A154679.P1571569172251538211

namespace A154679

/-- `∩[A045344(n+1), A104211(n+1)-2]` -/
def P1571569172251538211.Spec : Prop :=
  ∀ n, (P1571569172251538211.a n : ℤ) = A154679 (n + 1)

end A154679

/-! ## A154679.P16185590146918478200

`∩[A104211(n+1)-2, A182986(n+1)]`
-/

namespace A154679.P16185590146918478200
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104211 (n + 1) - 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182986 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A154679.P16185590146918478200

namespace A154679

/-- `∩[A104211(n+1)-2, A182986(n+1)]` -/
def P16185590146918478200.Spec : Prop :=
  ∀ n, (P16185590146918478200.a n : ℤ) = A154679 (n + 1)

end A154679

/-! ## A154679.P12310697204396844131

`p?[lt[2, A306509(n+2)]]`
-/

namespace A154679.P12310697204396844131
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306509 (n + 2)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) < f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A154679.P12310697204396844131

namespace A154679

/-- `p?[lt[2, A306509(n+2)]]` -/
def P12310697204396844131.Spec : Prop :=
  ∀ n, (P12310697204396844131.a n : ℤ) = A154679 (n + 1)

end A154679

/-! ## A154679.P5717772653329293107

`record[A014963(A104211(n+2)-2)]`
-/

namespace A154679.P5717772653329293107
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A104211 (n + 2) - 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A154679.P5717772653329293107

namespace A154679

/-- `record[A014963(A104211(n+2)-2)]` -/
def P5717772653329293107.Spec : Prop :=
  ∀ n, P5717772653329293107.a n = A154679 (n + 1)

end A154679

/-! ## A154679.P12239223293531485223

`p?[n*A066247(A007953(n+2))]`
-/

namespace A154679.P12239223293531485223
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A066247 (A007953 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A154679.P12239223293531485223

namespace A154679

/-- `p?[n*A066247(A007953(n+2))]` -/
def P12239223293531485223.Spec : Prop :=
  ∀ n, P12239223293531485223.a n = A154679 (n + 1)

end A154679

/-! ## A154679.P8303243788113883078

`p?[(n-1)*A005171(A007953(n+1))]`
-/

namespace A154679.P8303243788113883078
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - 1) * A005171 (A007953 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A154679.P8303243788113883078

namespace A154679

/-- `p?[(n-1)*A005171(A007953(n+1))]` -/
def P8303243788113883078.Spec : Prop :=
  ∀ n, P8303243788113883078.a n = A154679 (n + 1)

end A154679

/-!
# A154680: Triangle read by rows where T(m,n)=2*m*n + m + n - 2.

The programs for A154680, the canonical program `A154680.P11179278242672813373` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A154680 has offset 1).

The definition of A154680 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2*(row(n)+1)*(col(n)+1)+row(n)+1+col(n)+1-2` (program `A154680.P11179278242672813373`, by `A154680.P11179278242672813373.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A154680.P11179278242672813373

`2*(row(n)+1)*(col(n)+1)+row(n)+1+col(n)+1-2`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A154680

/-- `2*(row(n)+1)*(col(n)+1)+row(n)+1+col(n)+1-2` -/
def P11179278242672813373.Spec : Prop :=
  ∀ n, P11179278242672813373.a n = A154680 (n + 1)

theorem P11179278242672813373.correct : P11179278242672813373.Spec := by
  intro n
  simp only [A154680, Nat.add_sub_cancel]

end A154680

/-! ## A154680.P927006277095668491

`A154684(n+1)+1`
-/

namespace A154680.P927006277095668491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154684 (n + 1) + 1

end

end A154680.P927006277095668491

namespace A154680

/-- `A154684(n+1)+1` -/
def P927006277095668491.Spec : Prop :=
  ∀ n, P927006277095668491.a n = A154680 (n + 1)

theorem P927006277095668491.correct : P927006277095668491.Spec := by
  intro n
  simp only [A154680, Nat.add_sub_cancel, A154680.P927006277095668491.a, A154680.P11179278242672813373.a, A154684, A154684.P4294763165931368592.a, A131421, A131421.P16745487656165401881.a, A151890, A151890.P5860764011676095584.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A154680

/-! ## A154680.P6109091229807367799

`A144562(n+1)-1`
-/

namespace A154680.P6109091229807367799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144562 (n + 1) - 1

end

end A154680.P6109091229807367799

namespace A154680

/-- `A144562(n+1)-1` -/
def P6109091229807367799.Spec : Prop :=
  ∀ n, P6109091229807367799.a n = A154680 (n + 1)

theorem P6109091229807367799.correct : P6109091229807367799.Spec := by
  intro n
  simp only [A154680, Nat.add_sub_cancel, A154680.P6109091229807367799.a, A154680.P11179278242672813373.a, A144562, A144562.P16025350127225318845.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A154680

/-! ## A154680.P16561693300068238122

`A155724(n+1)+2`
-/

namespace A154680.P16561693300068238122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155724 (n + 1) + 2

end

end A154680.P16561693300068238122

namespace A154680

/-- `A155724(n+1)+2` -/
def P16561693300068238122.Spec : Prop :=
  ∀ n, P16561693300068238122.a n = A154680 (n + 1)

theorem P16561693300068238122.correct : P16561693300068238122.Spec := by
  intro n
  simp only [A154680, Nat.add_sub_cancel, A154680.P16561693300068238122.a, A154680.P11179278242672813373.a, A155724, A155724.P13035978009969684852.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A154680

/-! ## A154680.P3849567971381148997

`A083487(n+1)-2`
-/

namespace A154680.P3849567971381148997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083487 (n + 1) - 2

end

end A154680.P3849567971381148997

namespace A154680

/-- `A083487(n+1)-2` -/
def P3849567971381148997.Spec : Prop :=
  ∀ n, P3849567971381148997.a n = A154680 (n + 1)

theorem P3849567971381148997.correct : P3849567971381148997.Spec := by
  intro n
  simp only [A154680, Nat.add_sub_cancel, A154680.P3849567971381148997.a, A154680.P11179278242672813373.a, A083487, A083487.P8449240486603242499.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A154680

/-! ## A154680.P388329233531189538

`A155546(n+1)+3`
-/

namespace A154680.P388329233531189538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155546 (n + 1) + 3

end

end A154680.P388329233531189538

namespace A154680

/-- `A155546(n+1)+3` -/
def P388329233531189538.Spec : Prop :=
  ∀ n, P388329233531189538.a n = A154680 (n + 1)

theorem P388329233531189538.correct : P388329233531189538.Spec := by
  intro n
  simp only [A154680, Nat.add_sub_cancel, A154680.P388329233531189538.a, A154680.P11179278242672813373.a, A155546, A155546.P2386952917106834247.a, A154684, A154684.P4294763165931368592.a, A131421, A131421.P16745487656165401881.a, A151890, A151890.P5860764011676095584.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A154680

/-! ## A154680.P6074642896798234965

`A144650(n+1)-3`
-/

namespace A154680.P6074642896798234965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144650 (n + 1) - 3

end

end A154680.P6074642896798234965

namespace A154680

/-- `A144650(n+1)-3` -/
def P6074642896798234965.Spec : Prop :=
  ∀ n, P6074642896798234965.a n = A154680 (n + 1)

theorem P6074642896798234965.correct : P6074642896798234965.Spec := by
  intro n
  simp only [A154680, Nat.add_sub_cancel, A154680.P6074642896798234965.a, A154680.P11179278242672813373.a, A144650, A144650.P1368958266719371934.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A154680

/-! ## A154680.P681089496225957617

`A155550(n+1)+4`
-/

namespace A154680.P681089496225957617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155550 (n + 1) + 4

end

end A154680.P681089496225957617

namespace A154680

/-- `A155550(n+1)+4` -/
def P681089496225957617.Spec : Prop :=
  ∀ n, P681089496225957617.a n = A154680 (n + 1)

theorem P681089496225957617.correct : P681089496225957617.Spec := by
  intro n
  simp only [A154680, Nat.add_sub_cancel, A154680.P681089496225957617.a, A154680.P11179278242672813373.a, A155550, A155550.P8821418468961937899.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A154680

/-! ## A154680.P17950559961001356894

`A144670(n+1)+5`
-/

namespace A154680.P17950559961001356894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144670 (n + 1) + 5

end

end A154680.P17950559961001356894

namespace A154680

/-- `A144670(n+1)+5` -/
def P17950559961001356894.Spec : Prop :=
  ∀ n, P17950559961001356894.a n = A154680 (n + 1)

end A154680

/-! ## A154680.P16031221991400188043

`A155705(n+1)-4`
-/

namespace A154680.P16031221991400188043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155705 (n + 1) - 4

end

end A154680.P16031221991400188043

namespace A154680

/-- `A155705(n+1)-4` -/
def P16031221991400188043.Spec : Prop :=
  ∀ n, P16031221991400188043.a n = A154680 (n + 1)

theorem P16031221991400188043.correct : P16031221991400188043.Spec := by
  intro n
  simp only [A154680, Nat.add_sub_cancel, A154680.P16031221991400188043.a, A154680.P11179278242672813373.a, A155705, A155705.P4288212106648644331.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A154680

/-! ## A154680.P9751571195481188829

`A154681(n+1)-5`
-/

namespace A154680.P9751571195481188829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154681 (n + 1) - 5

end

end A154680.P9751571195481188829

namespace A154680

/-- `A154681(n+1)-5` -/
def P9751571195481188829.Spec : Prop :=
  ∀ n, P9751571195481188829.a n = A154680 (n + 1)

theorem P9751571195481188829.correct : P9751571195481188829.Spec := by
  intro n
  simp only [A154680, Nat.add_sub_cancel, A154680.P9751571195481188829.a, A154680.P11179278242672813373.a, A154681, A154681.P7152750088420565166.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A154680

/-! ## A154680.P2212371355485521729

`A324937(n+1)+6`
-/

namespace A154680.P2212371355485521729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324937 (n + 1) + 6

end

end A154680.P2212371355485521729

namespace A154680

/-- `A324937(n+1)+6` -/
def P2212371355485521729.Spec : Prop :=
  ∀ n, P2212371355485521729.a n = A154680 (n + 1)

theorem P2212371355485521729.correct : P2212371355485521729.Spec := by
  intro n
  simp only [A154680, Nat.add_sub_cancel, A154680.P2212371355485521729.a, A154680.P11179278242672813373.a, A324937, A324937.P12117470399023503512.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A154680

/-! ## A154680.P10216287047565152278

`A154685(n+1)-6`
-/

namespace A154680.P10216287047565152278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154685 (n + 1) - 6

end

end A154680.P10216287047565152278

namespace A154680

/-- `A154685(n+1)-6` -/
def P10216287047565152278.Spec : Prop :=
  ∀ n, P10216287047565152278.a n = A154680 (n + 1)

theorem P10216287047565152278.correct : P10216287047565152278.Spec := by
  intro n
  simp only [A154680, Nat.add_sub_cancel, A154680.P10216287047565152278.a, A154680.P11179278242672813373.a, A154685, A154685.P15243887039204204434.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A154680

/-! ## A154680.P9614666340329470280

`A155551(n+1)+7`
-/

namespace A154680.P9614666340329470280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155551 (n + 1) + 7

end

end A154680.P9614666340329470280

namespace A154680

/-- `A155551(n+1)+7` -/
def P9614666340329470280.Spec : Prop :=
  ∀ n, P9614666340329470280.a n = A154680 (n + 1)

theorem P9614666340329470280.correct : P9614666340329470280.Spec := by
  intro n
  simp only [A154680, Nat.add_sub_cancel, A154680.P9614666340329470280.a, A154680.P11179278242672813373.a, A155551, A155551.P15753300162867372955.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A154680

/-! ## A154680.P1563181072376355559

`A154631(n+1)-7`
-/

namespace A154680.P1563181072376355559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154631 (n + 1) - 7

end

end A154680.P1563181072376355559

namespace A154680

/-- `A154631(n+1)-7` -/
def P1563181072376355559.Spec : Prop :=
  ∀ n, P1563181072376355559.a n = A154680 (n + 1)

theorem P1563181072376355559.correct : P1563181072376355559.Spec := by
  intro n
  simp only [A154680, Nat.add_sub_cancel, A154680.P1563181072376355559.a, A154680.P11179278242672813373.a, A154631, A154631.P9638786672000276920.a, A154685, A154685.P15243887039204204434.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A154680

/-! ## A154680.P5529084300715024594

`A163652(n+1)-8`
-/

namespace A154680.P5529084300715024594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163652 (n + 1) - 8

end

end A154680.P5529084300715024594

namespace A154680

/-- `A163652(n+1)-8` -/
def P5529084300715024594.Spec : Prop :=
  ∀ n, P5529084300715024594.a n = A154680 (n + 1)

theorem P5529084300715024594.correct : P5529084300715024594.Spec := by
  intro n
  simp only [A154680, Nat.add_sub_cancel, A154680.P5529084300715024594.a, A154680.P11179278242672813373.a, A163652, A163652.P14560044892926155095.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A154680

/-! ## A154680.P8949890049569126491

`A163672(n+1)-9`
-/

namespace A154680.P8949890049569126491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163672 (n + 1) - 9

end

end A154680.P8949890049569126491

namespace A154680

/-- `A163672(n+1)-9` -/
def P8949890049569126491.Spec : Prop :=
  ∀ n, P8949890049569126491.a n = A154680 (n + 1)

end A154680

/-! ## A154680.P9907771056285052084

`A155156(n+1)/2-2`
-/

namespace A154680.P9907771056285052084
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A155156 (n + 1) : ℚ) / 2 - 2

end

end A154680.P9907771056285052084

namespace A154680

/-- `A155156(n+1)/2-2` -/
def P9907771056285052084.Spec : Prop :=
  ∀ n, P9907771056285052084.a n = (A154680 (n + 1) : ℚ)

theorem P9907771056285052084.correct : P9907771056285052084.Spec := by
  intro n
  simp only [A154680, Nat.add_sub_cancel, A154680.P9907771056285052084.a, A154680.P11179278242672813373.a, A155156, A155156.P11088672852986007837.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A154680

/-! ## A154680.P10564235074281786033

`A155151(n+1)/2-3`
-/

namespace A154680.P10564235074281786033
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A155151 (n + 1) : ℚ) / 2 - 3

end

end A154680.P10564235074281786033

namespace A154680

/-- `A155151(n+1)/2-3` -/
def P10564235074281786033.Spec : Prop :=
  ∀ n, P10564235074281786033.a n = (A154680 (n + 1) : ℚ)

theorem P10564235074281786033.correct : P10564235074281786033.Spec := by
  intro n
  simp only [A154680, Nat.add_sub_cancel, A154680.P10564235074281786033.a, A154680.P11179278242672813373.a, A155151, A155151.P14048722157311829906.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A154680

/-! ## A154680.P16524397125691057674

`(A163676(n+1)-3)/2`
-/

namespace A154680.P16524397125691057674
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A163676 (n + 1) - 3 : ℚ) / 2

end

end A154680.P16524397125691057674

namespace A154680

/-- `(A163676(n+1)-3)/2` -/
def P16524397125691057674.Spec : Prop :=
  ∀ n, P16524397125691057674.a n = (A154680 (n + 1) : ℚ)

end A154680

/-!
# A154681: Triangle read by rows where T(m,n) = 2*m*n + m + n +3.

The programs for A154681, the canonical program `A154681.P7152750088420565166` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A154681 has offset 1).

The definition of A154681 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2*(row(n)+1)*(col(n)+1)+row(n)+1+col(n)+1+3` (program `A154681.P7152750088420565166`, by `A154681.P7152750088420565166.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A154681.P7152750088420565166

`2*(row(n)+1)*(col(n)+1)+row(n)+1+col(n)+1+3`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A154681

/-- `2*(row(n)+1)*(col(n)+1)+row(n)+1+col(n)+1+3` -/
def P7152750088420565166.Spec : Prop :=
  ∀ n, (P7152750088420565166.a n : ℤ) = A154681 (n + 1)

theorem P7152750088420565166.correct : P7152750088420565166.Spec := by
  intro n
  simp only [A154681, Nat.add_sub_cancel]

end A154681

/-! ## A154681.P10558497394377263107

`floor((2*(row(n)+1)+1)*(2*(col(n)+1)+1)/2)+3`
-/

namespace A154681.P10558497394377263107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((2 * (SequenceMachineLib.triRow n + 1) + 1) * (2 * (SequenceMachineLib.triCol n + 1) + 1) : ℚ) / 2⌋ + 3

end

end A154681.P10558497394377263107

namespace A154681

/-- `floor((2*(row(n)+1)+1)*(2*(col(n)+1)+1)/2)+3` -/
def P10558497394377263107.Spec : Prop :=
  ∀ n, P10558497394377263107.a n = A154681 (n + 1)

end A154681

/-! ## A154681.P7188500157470250777

`A155705(n+1)+1`
-/

namespace A154681.P7188500157470250777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155705 (n + 1) + 1

end

end A154681.P7188500157470250777

namespace A154681

/-- `A155705(n+1)+1` -/
def P7188500157470250777.Spec : Prop :=
  ∀ n, P7188500157470250777.a n = A154681 (n + 1)

theorem P7188500157470250777.correct : P7188500157470250777.Spec := by
  intro n
  simp only [A154681, Nat.add_sub_cancel, A154681.P7188500157470250777.a, A154681.P7152750088420565166.a, A155705, A155705.P4288212106648644331.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A154681

/-! ## A154681.P13626886988110405039

`A144650(n+1)+2`
-/

namespace A154681.P13626886988110405039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144650 (n + 1) + 2

end

end A154681.P13626886988110405039

namespace A154681

/-- `A144650(n+1)+2` -/
def P13626886988110405039.Spec : Prop :=
  ∀ n, P13626886988110405039.a n = A154681 (n + 1)

theorem P13626886988110405039.correct : P13626886988110405039.Spec := by
  intro n
  simp only [A154681, Nat.add_sub_cancel, A154681.P13626886988110405039.a, A154681.P7152750088420565166.a, A144650, A144650.P1368958266719371934.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A154681

/-! ## A154681.P607255983678634477

`A154685(n+1)-1`
-/

namespace A154681.P607255983678634477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154685 (n + 1) - 1

end

end A154681.P607255983678634477

namespace A154681

/-- `A154685(n+1)-1` -/
def P607255983678634477.Spec : Prop :=
  ∀ n, P607255983678634477.a n = A154681 (n + 1)

theorem P607255983678634477.correct : P607255983678634477.Spec := by
  intro n
  simp only [A154681, Nat.add_sub_cancel, A154681.P607255983678634477.a, A154681.P7152750088420565166.a, A154685, A154685.P15243887039204204434.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A154681

/-! ## A154681.P17598088065697955071

`A083487(n+1)+3`
-/

namespace A154681.P17598088065697955071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083487 (n + 1) + 3

end

end A154681.P17598088065697955071

namespace A154681

/-- `A083487(n+1)+3` -/
def P17598088065697955071.Spec : Prop :=
  ∀ n, P17598088065697955071.a n = A154681 (n + 1)

theorem P17598088065697955071.correct : P17598088065697955071.Spec := by
  intro n
  simp only [A154681, Nat.add_sub_cancel, A154681.P17598088065697955071.a, A154681.P7152750088420565166.a, A083487, A083487.P8449240486603242499.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A154681

/-! ## A154681.P9862834267968896865

`A154631(n+1)-2`
-/

namespace A154681.P9862834267968896865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154631 (n + 1) - 2

end

end A154681.P9862834267968896865

namespace A154681

/-- `A154631(n+1)-2` -/
def P9862834267968896865.Spec : Prop :=
  ∀ n, P9862834267968896865.a n = A154681 (n + 1)

theorem P9862834267968896865.correct : P9862834267968896865.Spec := by
  intro n
  simp only [A154681, Nat.add_sub_cancel, A154681.P9862834267968896865.a, A154681.P7152750088420565166.a, A154631, A154631.P9638786672000276920.a, A154685, A154685.P15243887039204204434.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A154681

/-! ## A154681.P12454750352645279510

`A144562(n+1)+4`
-/

namespace A154681.P12454750352645279510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144562 (n + 1) + 4

end

end A154681.P12454750352645279510

namespace A154681

/-- `A144562(n+1)+4` -/
def P12454750352645279510.Spec : Prop :=
  ∀ n, P12454750352645279510.a n = A154681 (n + 1)

theorem P12454750352645279510.correct : P12454750352645279510.Spec := by
  intro n
  simp only [A154681, Nat.add_sub_cancel, A154681.P12454750352645279510.a, A154681.P7152750088420565166.a, A144562, A144562.P16025350127225318845.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A154681

/-! ## A154681.P3447192629769937368

`A163652(n+1)-3`
-/

namespace A154681.P3447192629769937368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163652 (n + 1) - 3

end

end A154681.P3447192629769937368

namespace A154681

/-- `A163652(n+1)-3` -/
def P3447192629769937368.Spec : Prop :=
  ∀ n, P3447192629769937368.a n = A154681 (n + 1)

theorem P3447192629769937368.correct : P3447192629769937368.Spec := by
  intro n
  simp only [A154681, Nat.add_sub_cancel, A154681.P3447192629769937368.a, A154681.P7152750088420565166.a, A163652, A163652.P14560044892926155095.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A154681

/-! ## A154681.P8431727576704887524

`A154680(n+1)+5`
-/

namespace A154681.P8431727576704887524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154680 (n + 1) + 5

end

end A154681.P8431727576704887524

namespace A154681

/-- `A154680(n+1)+5` -/
def P8431727576704887524.Spec : Prop :=
  ∀ n, P8431727576704887524.a n = A154681 (n + 1)

theorem P8431727576704887524.correct : P8431727576704887524.Spec := by
  intro n
  simp only [A154681, Nat.add_sub_cancel, A154681.P8431727576704887524.a, A154681.P7152750088420565166.a, A154680, A154680.P11179278242672813373.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A154681

/-! ## A154681.P2662147502375518197

`A163672(n+1)-4`
-/

namespace A154681.P2662147502375518197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163672 (n + 1) - 4

end

end A154681.P2662147502375518197

namespace A154681

/-- `A163672(n+1)-4` -/
def P2662147502375518197.Spec : Prop :=
  ∀ n, P2662147502375518197.a n = A154681 (n + 1)

end A154681

/-! ## A154681.P15992095932214081545

`A154684(n+1)+6`
-/

namespace A154681.P15992095932214081545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154684 (n + 1) + 6

end

end A154681.P15992095932214081545

namespace A154681

/-- `A154684(n+1)+6` -/
def P15992095932214081545.Spec : Prop :=
  ∀ n, P15992095932214081545.a n = A154681 (n + 1)

theorem P15992095932214081545.correct : P15992095932214081545.Spec := by
  intro n
  simp only [A154681, Nat.add_sub_cancel, A154681.P15992095932214081545.a, A154681.P7152750088420565166.a, A154684, A154684.P4294763165931368592.a, A131421, A131421.P16745487656165401881.a, A151890, A151890.P5860764011676095584.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A154681

/-! ## A154681.P6360791480973124977

`A163657(n+1)-5`
-/

namespace A154681.P6360791480973124977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163657 (n + 1) - 5

end

end A154681.P6360791480973124977

namespace A154681

/-- `A163657(n+1)-5` -/
def P6360791480973124977.Spec : Prop :=
  ∀ n, P6360791480973124977.a n = A154681 (n + 1)

theorem P6360791480973124977.correct : P6360791480973124977.Spec := by
  intro n
  simp only [A154681, Nat.add_sub_cancel, A154681.P6360791480973124977.a, A154681.P7152750088420565166.a, A163657, A163657.P12720512025270475605.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A154681

/-! ## A154681.P16577878949389034940

`A155724(n+1)+7`
-/

namespace A154681.P16577878949389034940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155724 (n + 1) + 7

end

end A154681.P16577878949389034940

namespace A154681

/-- `A155724(n+1)+7` -/
def P16577878949389034940.Spec : Prop :=
  ∀ n, P16577878949389034940.a n = A154681 (n + 1)

theorem P16577878949389034940.correct : P16577878949389034940.Spec := by
  intro n
  simp only [A154681, Nat.add_sub_cancel, A154681.P16577878949389034940.a, A154681.P7152750088420565166.a, A155724, A155724.P13035978009969684852.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A154681

/-! ## A154681.P2468371815519645791

`A163674(n+1)-6`
-/

namespace A154681.P2468371815519645791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163674 (n + 1) - 6

end

end A154681.P2468371815519645791

namespace A154681

/-- `A163674(n+1)-6` -/
def P2468371815519645791.Spec : Prop :=
  ∀ n, P2468371815519645791.a n = A154681 (n + 1)

theorem P2468371815519645791.correct : P2468371815519645791.Spec := by
  intro n
  simp only [A154681, Nat.add_sub_cancel, A154681.P2468371815519645791.a, A154681.P7152750088420565166.a, A163674, A163674.P13425160265099091409.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A154681

/-! ## A154681.P3523849903393459954

`A155546(n+1)+8`
-/

namespace A154681.P3523849903393459954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155546 (n + 1) + 8

end

end A154681.P3523849903393459954

namespace A154681

/-- `A155546(n+1)+8` -/
def P3523849903393459954.Spec : Prop :=
  ∀ n, P3523849903393459954.a n = A154681 (n + 1)

theorem P3523849903393459954.correct : P3523849903393459954.Spec := by
  intro n
  simp only [A154681, Nat.add_sub_cancel, A154681.P3523849903393459954.a, A154681.P7152750088420565166.a, A155546, A155546.P2386952917106834247.a, A154684, A154684.P4294763165931368592.a, A131421, A131421.P16745487656165401881.a, A151890, A151890.P5860764011676095584.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A154681

/-! ## A154681.P16160065594225725390

`A155704(n+1)-7`
-/

namespace A154681.P16160065594225725390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155704 (n + 1) - 7

end

end A154681.P16160065594225725390

namespace A154681

/-- `A155704(n+1)-7` -/
def P16160065594225725390.Spec : Prop :=
  ∀ n, P16160065594225725390.a n = A154681 (n + 1)

theorem P16160065594225725390.correct : P16160065594225725390.Spec := by
  intro n
  simp only [A154681, Nat.add_sub_cancel, A154681.P16160065594225725390.a, A154681.P7152750088420565166.a, A155704, A155704.P8650019513373998533.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A154681

/-! ## A154681.P10908400089668045810

`A155550(n+1)+9`
-/

namespace A154681.P10908400089668045810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155550 (n + 1) + 9

end

end A154681.P10908400089668045810

namespace A154681

/-- `A155550(n+1)+9` -/
def P10908400089668045810.Spec : Prop :=
  ∀ n, P10908400089668045810.a n = A154681 (n + 1)

theorem P10908400089668045810.correct : P10908400089668045810.Spec := by
  intro n
  simp only [A154681, Nat.add_sub_cancel, A154681.P10908400089668045810.a, A154681.P7152750088420565166.a, A155550, A155550.P8821418468961937899.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A154681

/-! ## A154681.P16930184594998418861

`A155551(n+1)+12`
-/

namespace A154681.P16930184594998418861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155551 (n + 1) + 12

end

end A154681.P16930184594998418861

namespace A154681

/-- `A155551(n+1)+12` -/
def P16930184594998418861.Spec : Prop :=
  ∀ n, P16930184594998418861.a n = A154681 (n + 1)

theorem P16930184594998418861.correct : P16930184594998418861.Spec := by
  intro n
  simp only [A154681, Nat.add_sub_cancel, A154681.P16930184594998418861.a, A154681.P7152750088420565166.a, A155551, A155551.P15753300162867372955.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A154681

/-! ## A154681.P10991467563229823345

`A155151(n+1)/2+2`
-/

namespace A154681.P10991467563229823345
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A155151 (n + 1) : ℚ) / 2 + 2

end

end A154681.P10991467563229823345

namespace A154681

/-- `A155151(n+1)/2+2` -/
def P10991467563229823345.Spec : Prop :=
  ∀ n, P10991467563229823345.a n = (A154681 (n + 1) : ℚ)

theorem P10991467563229823345.correct : P10991467563229823345.Spec := by
  intro n
  simp only [A154681, Nat.add_sub_cancel, A154681.P10991467563229823345.a, A154681.P7152750088420565166.a, A155151, A155151.P14048722157311829906.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A154681

/-!
# A154682: a(n) = (2n-1)^(2n+1) + (2n+1)^(2n-1).

The programs for A154682, the canonical program `A154682.P13971398578774464545` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A154682 has offset 0).

The definition of A154682 is `verified`: an anchor theorem with a hand-written proof shows that the Lean definition equals an independent definition of the sequence: the theorem `A154682.anchor (n : ℕ) : (A154682 n : ℚ) = (((2 * n : ℤ) - 1) ^ (2 * n + 1) : ℚ) + (2 * n + 1 : ℚ) ^ ((2 * n : ℤ) - 1 : ℤ)` in `Proof.A154.A154682`. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A154682.P13971398578774464545

`(2*n-1)^(2*n+1)+(2*n+1)^(2*n-1)`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A154682

/-- `(2*n-1)^(2*n+1)+(2*n+1)^(2*n-1)` -/
def P13971398578774464545.Spec : Prop :=
  ∀ n, P13971398578774464545.a n = (A154682 n : ℚ)

end A154682

/-! ## A154682.P17392482360785095209

`lcm(n, A051489(A004273(n)))`
-/

namespace A154682.P17392482360785095209
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (n : ℤ) (A051489 (A004273 n).toNat)

end

end A154682.P17392482360785095209

namespace A154682

/-- `lcm(n, A051489(A004273(n)))` -/
def P17392482360785095209.Spec : Prop :=
  ∀ n, (P17392482360785095209.a n : ℤ) = A154682 n

end A154682

/-! ## A154682.P5584784378601751346

`Δ[A154569(A259361(n²))]`
-/

namespace A154682.P5584784378601751346
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154569 (A259361 (n ^ 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A154682.P5584784378601751346

namespace A154682

/-- `Δ[A154569(A259361(n²))]` -/
def P5584784378601751346.Spec : Prop :=
  ∀ n, P5584784378601751346.a n = A154682 n

end A154682

/-! ## A154682.P10753851222100331991

`record[Δ[A154569(A002266(n))]]`
-/

namespace A154682.P10753851222100331991
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154569 (A002266 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A154682.P10753851222100331991

namespace A154682

/-- `record[Δ[A154569(A002266(n))]]` -/
def P10753851222100331991.Spec : Prop :=
  ∀ n, P10753851222100331991.a n = A154682 n

end A154682

/-! ## A154682.P8963191164540725618

`A051489(A004273(n))*A057427(n)`
-/

namespace A154682.P8963191164540725618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051489 (A004273 n).toNat * A057427 n

end

end A154682.P8963191164540725618

namespace A154682

/-- `A051489(A004273(n))*A057427(n)` -/
def P8963191164540725618.Spec : Prop :=
  ∀ n, P8963191164540725618.a n = A154682 n

end A154682

/-!
# A154684: Triangle read by rows where T(m,n)=2mn + m + n - 3, 1<=n<=m.

The programs for A154684, the canonical program `A154684.P4294763165931368592` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A154684 has offset 1).

The definition of A154684 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A154684.P7379994673146169399

`A155724(n+1)+1`
-/

namespace A154684.P7379994673146169399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155724 (n + 1) + 1

end

end A154684.P7379994673146169399

namespace A154684

/-- `A155724(n+1)+1` -/
def P7379994673146169399.Spec : Prop :=
  ∀ n, P7379994673146169399.a n = A154684 (n + 1)

theorem P7379994673146169399.correct : P7379994673146169399.Spec := by
  intro n
  simp only [A154684, Nat.add_sub_cancel, A154684.P7379994673146169399.a, A154684.P4294763165931368592.a, A131421, A131421.P16745487656165401881.a, A151890, A151890.P5860764011676095584.a, A155724, A155724.P13035978009969684852.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A154684

/-! ## A154684.P5900616982831199007

`A154680(n+1)-1`
-/

namespace A154684.P5900616982831199007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154680 (n + 1) - 1

end

end A154684.P5900616982831199007

namespace A154684

/-- `A154680(n+1)-1` -/
def P5900616982831199007.Spec : Prop :=
  ∀ n, P5900616982831199007.a n = A154684 (n + 1)

theorem P5900616982831199007.correct : P5900616982831199007.Spec := by
  intro n
  simp only [A154684, Nat.add_sub_cancel, A154684.P5900616982831199007.a, A154684.P4294763165931368592.a, A131421, A131421.P16745487656165401881.a, A151890, A151890.P5860764011676095584.a, A154680, A154680.P11179278242672813373.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A154684

/-! ## A154684.P6181509454776212198

`A155546(n+1)+2`
-/

namespace A154684.P6181509454776212198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155546 (n + 1) + 2

end

end A154684.P6181509454776212198

namespace A154684

/-- `A155546(n+1)+2` -/
def P6181509454776212198.Spec : Prop :=
  ∀ n, P6181509454776212198.a n = A154684 (n + 1)

theorem P6181509454776212198.correct : P6181509454776212198.Spec := by
  intro n
  simp only [A154684, Nat.add_sub_cancel, A154684.P6181509454776212198.a, A154684.P4294763165931368592.a, A131421, A131421.P16745487656165401881.a, A151890, A151890.P5860764011676095584.a, A155546, A155546.P2386952917106834247.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A154684

/-! ## A154684.P929180162481966769

`A144562(1+n)-2`
-/

namespace A154684.P929180162481966769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144562 (1 + n) - 2

end

end A154684.P929180162481966769

namespace A154684

/-- `A144562(1+n)-2` -/
def P929180162481966769.Spec : Prop :=
  ∀ n, P929180162481966769.a n = A154684 (n + 1)

end A154684

/-! ## A154684.P10708841601588027548

`A155550(n+1)+3`
-/

namespace A154684.P10708841601588027548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155550 (n + 1) + 3

end

end A154684.P10708841601588027548

namespace A154684

/-- `A155550(n+1)+3` -/
def P10708841601588027548.Spec : Prop :=
  ∀ n, P10708841601588027548.a n = A154684 (n + 1)

theorem P10708841601588027548.correct : P10708841601588027548.Spec := by
  intro n
  simp only [A154684, Nat.add_sub_cancel, A154684.P10708841601588027548.a, A154684.P4294763165931368592.a, A131421, A131421.P16745487656165401881.a, A151890, A151890.P5860764011676095584.a, A155550, A155550.P8821418468961937899.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A154684

/-! ## A154684.P11172435335840288781

`A083487(n+1)-3`
-/

namespace A154684.P11172435335840288781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083487 (n + 1) - 3

end

end A154684.P11172435335840288781

namespace A154684

/-- `A083487(n+1)-3` -/
def P11172435335840288781.Spec : Prop :=
  ∀ n, P11172435335840288781.a n = A154684 (n + 1)

theorem P11172435335840288781.correct : P11172435335840288781.Spec := by
  intro n
  simp only [A154684, Nat.add_sub_cancel, A154684.P11172435335840288781.a, A154684.P4294763165931368592.a, A083487, A083487.P8449240486603242499.a, A131421, A131421.P16745487656165401881.a, A151890, A151890.P5860764011676095584.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A154684

/-! ## A154684.P11482073573195934601

`A144670(n+1)+4`
-/

namespace A154684.P11482073573195934601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144670 (n + 1) + 4

end

end A154684.P11482073573195934601

namespace A154684

/-- `A144670(n+1)+4` -/
def P11482073573195934601.Spec : Prop :=
  ∀ n, P11482073573195934601.a n = A154684 (n + 1)

end A154684

/-! ## A154684.P1519688461911932565

`A144650(n+1)-4`
-/

namespace A154684.P1519688461911932565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144650 (n + 1) - 4

end

end A154684.P1519688461911932565

namespace A154684

/-- `A144650(n+1)-4` -/
def P1519688461911932565.Spec : Prop :=
  ∀ n, P1519688461911932565.a n = A154684 (n + 1)

theorem P1519688461911932565.correct : P1519688461911932565.Spec := by
  intro n
  simp only [A154684, Nat.add_sub_cancel, A154684.P1519688461911932565.a, A154684.P4294763165931368592.a, A131421, A131421.P16745487656165401881.a, A144650, A144650.P1368958266719371934.a, A151890, A151890.P5860764011676095584.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A154684

/-! ## A154684.P3644250848661707856

`A324937(n+1)+5`
-/

namespace A154684.P3644250848661707856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324937 (n + 1) + 5

end

end A154684.P3644250848661707856

namespace A154684

/-- `A324937(n+1)+5` -/
def P3644250848661707856.Spec : Prop :=
  ∀ n, P3644250848661707856.a n = A154684 (n + 1)

theorem P3644250848661707856.correct : P3644250848661707856.Spec := by
  intro n
  simp only [A154684, Nat.add_sub_cancel, A154684.P3644250848661707856.a, A154684.P4294763165931368592.a, A131421, A131421.P16745487656165401881.a, A151890, A151890.P5860764011676095584.a, A324937, A324937.P12117470399023503512.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A154684

/-! ## A154684.P14979215585438605868

`A155551(n+1)+6`
-/

namespace A154684.P14979215585438605868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155551 (n + 1) + 6

end

end A154684.P14979215585438605868

namespace A154684

/-- `A155551(n+1)+6` -/
def P14979215585438605868.Spec : Prop :=
  ∀ n, P14979215585438605868.a n = A154684 (n + 1)

theorem P14979215585438605868.correct : P14979215585438605868.Spec := by
  intro n
  simp only [A154684, Nat.add_sub_cancel, A154684.P14979215585438605868.a, A154684.P4294763165931368592.a, A131421, A131421.P16745487656165401881.a, A151890, A151890.P5860764011676095584.a, A155551, A155551.P15753300162867372955.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A154684

/-! ## A154684.P1152125964074557728

`A155705(n+1)-5`
-/

namespace A154684.P1152125964074557728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155705 (n + 1) - 5

end

end A154684.P1152125964074557728

namespace A154684

/-- `A155705(n+1)-5` -/
def P1152125964074557728.Spec : Prop :=
  ∀ n, P1152125964074557728.a n = A154684 (n + 1)

theorem P1152125964074557728.correct : P1152125964074557728.Spec := by
  intro n
  simp only [A154684, Nat.add_sub_cancel, A154684.P1152125964074557728.a, A154684.P4294763165931368592.a, A131421, A131421.P16745487656165401881.a, A151890, A151890.P5860764011676095584.a, A155705, A155705.P4288212106648644331.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A154684

/-! ## A154684.P7431176829098606062

`A154681(n+1)-6`
-/

namespace A154684.P7431176829098606062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154681 (n + 1) - 6

end

end A154684.P7431176829098606062

namespace A154684

/-- `A154681(n+1)-6` -/
def P7431176829098606062.Spec : Prop :=
  ∀ n, P7431176829098606062.a n = A154684 (n + 1)

theorem P7431176829098606062.correct : P7431176829098606062.Spec := by
  intro n
  simp only [A154684, Nat.add_sub_cancel, A154684.P7431176829098606062.a, A154684.P4294763165931368592.a, A131421, A131421.P16745487656165401881.a, A151890, A151890.P5860764011676095584.a, A154681, A154681.P7152750088420565166.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A154684

/-! ## A154684.P2095670619830861772

`A154685(n+1)-7`
-/

namespace A154684.P2095670619830861772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154685 (n + 1) - 7

end

end A154684.P2095670619830861772

namespace A154684

/-- `A154685(n+1)-7` -/
def P2095670619830861772.Spec : Prop :=
  ∀ n, P2095670619830861772.a n = A154684 (n + 1)

theorem P2095670619830861772.correct : P2095670619830861772.Spec := by
  intro n
  simp only [A154684, Nat.add_sub_cancel, A154684.P2095670619830861772.a, A154684.P4294763165931368592.a, A131421, A131421.P16745487656165401881.a, A151890, A151890.P5860764011676095584.a, A154685, A154685.P15243887039204204434.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A154684

/-! ## A154684.P16339288621089174684

`A154631(n+1)-8`
-/

namespace A154684.P16339288621089174684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154631 (n + 1) - 8

end

end A154684.P16339288621089174684

namespace A154684

/-- `A154631(n+1)-8` -/
def P16339288621089174684.Spec : Prop :=
  ∀ n, P16339288621089174684.a n = A154684 (n + 1)

theorem P16339288621089174684.correct : P16339288621089174684.Spec := by
  intro n
  simp only [A154684, Nat.add_sub_cancel, A154684.P16339288621089174684.a, A154684.P4294763165931368592.a, A131421, A131421.P16745487656165401881.a, A151890, A151890.P5860764011676095584.a, A154631, A154631.P9638786672000276920.a, A154685, A154685.P15243887039204204434.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A154684

/-! ## A154684.P10945749843368247785

`A163652(n+1)-9`
-/

namespace A154684.P10945749843368247785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163652 (n + 1) - 9

end

end A154684.P10945749843368247785

namespace A154684

/-- `A163652(n+1)-9` -/
def P10945749843368247785.Spec : Prop :=
  ∀ n, P10945749843368247785.a n = A154684 (n + 1)

theorem P10945749843368247785.correct : P10945749843368247785.Spec := by
  intro n
  simp only [A154684, Nat.add_sub_cancel, A154684.P10945749843368247785.a, A154684.P4294763165931368592.a, A131421, A131421.P16745487656165401881.a, A151890, A151890.P5860764011676095584.a, A163652, A163652.P14560044892926155095.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A154684

/-! ## A154684.P8161605574868753106

`A155156(n+1)/2-3`
-/

namespace A154684.P8161605574868753106
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A155156 (n + 1) : ℚ) / 2 - 3

end

end A154684.P8161605574868753106

namespace A154684

/-- `A155156(n+1)/2-3` -/
def P8161605574868753106.Spec : Prop :=
  ∀ n, P8161605574868753106.a n = (A154684 (n + 1) : ℚ)

theorem P8161605574868753106.correct : P8161605574868753106.Spec := by
  intro n
  simp only [A154684, Nat.add_sub_cancel, A154684.P8161605574868753106.a, A154684.P4294763165931368592.a, A131421, A131421.P16745487656165401881.a, A151890, A151890.P5860764011676095584.a, A155156, A155156.P11088672852986007837.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A154684

/-! ## A154684.P2012515864172681797

`A155151(n+1)/2-4`
-/

namespace A154684.P2012515864172681797
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A155151 (n + 1) : ℚ) / 2 - 4

end

end A154684.P2012515864172681797

namespace A154684

/-- `A155151(n+1)/2-4` -/
def P2012515864172681797.Spec : Prop :=
  ∀ n, P2012515864172681797.a n = (A154684 (n + 1) : ℚ)

theorem P2012515864172681797.correct : P2012515864172681797.Spec := by
  intro n
  simp only [A154684, Nat.add_sub_cancel, A154684.P2012515864172681797.a, A154684.P4294763165931368592.a, A131421, A131421.P16745487656165401881.a, A151890, A151890.P5860764011676095584.a, A155151, A155151.P14048722157311829906.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A154684

/-! ## A154684.P8698426183316834407

`(A163676(n+1)-5)/2`
-/

namespace A154684.P8698426183316834407
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A163676 (n + 1) - 5 : ℚ) / 2

end

end A154684.P8698426183316834407

namespace A154684

/-- `(A163676(n+1)-5)/2` -/
def P8698426183316834407.Spec : Prop :=
  ∀ n, P8698426183316834407.a n = (A154684 (n + 1) : ℚ)

end A154684

/-! ## A154684.P7473947546591077215

`2*(A172292(n+1)-1)/4-3`
-/

namespace A154684.P7473947546591077215
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 * ((A172292 (n + 1) - 1 : ℚ) / 4) - 3

end

end A154684.P7473947546591077215

namespace A154684

/-- `2*(A172292(n+1)-1)/4-3` -/
def P7473947546591077215.Spec : Prop :=
  ∀ n, P7473947546591077215.a n = (A154684 (n + 1) : ℚ)

theorem P7473947546591077215.correct : P7473947546591077215.Spec := by
  intro n
  simp only [A154684, Nat.add_sub_cancel, A154684.P7473947546591077215.a, A154684.P4294763165931368592.a, A131421, A131421.P16745487656165401881.a, A151890, A151890.P5860764011676095584.a, A172292, A172292.P15210621315686720524.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A154684

/-! ## A154684.P4294763165931368592

`A151890(n)+A131421(n+1)`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A154684

/-- `A151890(n)+A131421(n+1)` -/
def P4294763165931368592.Spec : Prop :=
  ∀ n, P4294763165931368592.a n = A154684 (n + 1)

theorem P4294763165931368592.correct : P4294763165931368592.Spec := by
  intro n
  simp only [A154684, Nat.add_sub_cancel]

end A154684

/-!
# A154685: Triangle read by rows: T(n, k) = 2*n*k + n + k + 4.

The programs for A154685, the canonical program `A154685.P15243887039204204434` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A154685 has offset 1).

The definition of A154685 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2*(row(n)+1)*(col(n)+1)+row(n)+1+col(n)+1+4` (program `A154685.P15243887039204204434`, by `A154685.P15243887039204204434.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A154685.P15243887039204204434

`2*(row(n)+1)*(col(n)+1)+row(n)+1+col(n)+1+4`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A154685

/-- `2*(row(n)+1)*(col(n)+1)+row(n)+1+col(n)+1+4` -/
def P15243887039204204434.Spec : Prop :=
  ∀ n, (P15243887039204204434.a n : ℤ) = A154685 (n + 1)

theorem P15243887039204204434.correct : P15243887039204204434.Spec := by
  intro n
  simp only [A154685, Nat.add_sub_cancel]

end A154685

/-! ## A154685.P7636972453143874921

`A155724(C(row(n)+1, 2)+col(n)+1)+8`
-/

namespace A154685.P7636972453143874921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155724 (Nat.choose (SequenceMachineLib.triRow n + 1) 2 + SequenceMachineLib.triCol n + 1) + 8

end

end A154685.P7636972453143874921

namespace A154685

/-- `A155724(C(row(n)+1, 2)+col(n)+1)+8` -/
def P7636972453143874921.Spec : Prop :=
  ∀ n, P7636972453143874921.a n = A154685 (n + 1)

end A154685

/-! ## A154685.P5224814472626199597

`A154681(n+1)+1`
-/

namespace A154685.P5224814472626199597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154681 (n + 1) + 1

end

end A154685.P5224814472626199597

namespace A154685

/-- `A154681(n+1)+1` -/
def P5224814472626199597.Spec : Prop :=
  ∀ n, P5224814472626199597.a n = A154685 (n + 1)

theorem P5224814472626199597.correct : P5224814472626199597.Spec := by
  intro n
  simp only [A154685, Nat.add_sub_cancel, A154685.P5224814472626199597.a, A154685.P15243887039204204434.a, A154681, A154681.P7152750088420565166.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A154685

/-! ## A154685.P15507854937694016120

`A154631(1+n)-1`
-/

namespace A154685.P15507854937694016120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154631 (1 + n) - 1

end

end A154685.P15507854937694016120

namespace A154685

/-- `A154631(1+n)-1` -/
def P15507854937694016120.Spec : Prop :=
  ∀ n, P15507854937694016120.a n = A154685 (n + 1)

end A154685

/-! ## A154685.P3280815942412702047

`A155705(n+1)+2`
-/

namespace A154685.P3280815942412702047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155705 (n + 1) + 2

end

end A154685.P3280815942412702047

namespace A154685

/-- `A155705(n+1)+2` -/
def P3280815942412702047.Spec : Prop :=
  ∀ n, P3280815942412702047.a n = A154685 (n + 1)

theorem P3280815942412702047.correct : P3280815942412702047.Spec := by
  intro n
  simp only [A154685, Nat.add_sub_cancel, A154685.P3280815942412702047.a, A154685.P15243887039204204434.a, A155705, A155705.P4288212106648644331.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A154685

/-! ## A154685.P1419765903872328367

`A144650(n+1)+3`
-/

namespace A154685.P1419765903872328367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144650 (n + 1) + 3

end

end A154685.P1419765903872328367

namespace A154685

/-- `A144650(n+1)+3` -/
def P1419765903872328367.Spec : Prop :=
  ∀ n, P1419765903872328367.a n = A154685 (n + 1)

theorem P1419765903872328367.correct : P1419765903872328367.Spec := by
  intro n
  simp only [A154685, Nat.add_sub_cancel, A154685.P1419765903872328367.a, A154685.P15243887039204204434.a, A144650, A144650.P1368958266719371934.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A154685

/-! ## A154685.P9864136124450205937

`A163652(n+1)-2`
-/

namespace A154685.P9864136124450205937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163652 (n + 1) - 2

end

end A154685.P9864136124450205937

namespace A154685

/-- `A163652(n+1)-2` -/
def P9864136124450205937.Spec : Prop :=
  ∀ n, P9864136124450205937.a n = A154685 (n + 1)

theorem P9864136124450205937.correct : P9864136124450205937.Spec := by
  intro n
  simp only [A154685, Nat.add_sub_cancel, A154685.P9864136124450205937.a, A154685.P15243887039204204434.a, A163652, A163652.P14560044892926155095.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A154685

/-! ## A154685.P9387151104919508286

`A083487(n+1)+4`
-/

namespace A154685.P9387151104919508286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083487 (n + 1) + 4

end

end A154685.P9387151104919508286

namespace A154685

/-- `A083487(n+1)+4` -/
def P9387151104919508286.Spec : Prop :=
  ∀ n, P9387151104919508286.a n = A154685 (n + 1)

theorem P9387151104919508286.correct : P9387151104919508286.Spec := by
  intro n
  simp only [A154685, Nat.add_sub_cancel, A154685.P9387151104919508286.a, A154685.P15243887039204204434.a, A083487, A083487.P8449240486603242499.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A154685

/-! ## A154685.P17780418531480836382

`A163672(n+1)-3`
-/

namespace A154685.P17780418531480836382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163672 (n + 1) - 3

end

end A154685.P17780418531480836382

namespace A154685

/-- `A163672(n+1)-3` -/
def P17780418531480836382.Spec : Prop :=
  ∀ n, P17780418531480836382.a n = A154685 (n + 1)

end A154685

/-! ## A154685.P13313945018669738636

`A144562(n+1)+5`
-/

namespace A154685.P13313945018669738636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144562 (n + 1) + 5

end

end A154685.P13313945018669738636

namespace A154685

/-- `A144562(n+1)+5` -/
def P13313945018669738636.Spec : Prop :=
  ∀ n, P13313945018669738636.a n = A154685 (n + 1)

theorem P13313945018669738636.correct : P13313945018669738636.Spec := by
  intro n
  simp only [A154685, Nat.add_sub_cancel, A154685.P13313945018669738636.a, A154685.P15243887039204204434.a, A144562, A144562.P16025350127225318845.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A154685

/-! ## A154685.P6544041353601827880

`A163657(n+1)-4`
-/

namespace A154685.P6544041353601827880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163657 (n + 1) - 4

end

end A154685.P6544041353601827880

namespace A154685

/-- `A163657(n+1)-4` -/
def P6544041353601827880.Spec : Prop :=
  ∀ n, P6544041353601827880.a n = A154685 (n + 1)

theorem P6544041353601827880.correct : P6544041353601827880.Spec := by
  intro n
  simp only [A154685, Nat.add_sub_cancel, A154685.P6544041353601827880.a, A154685.P15243887039204204434.a, A163657, A163657.P12720512025270475605.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A154685

/-! ## A154685.P6236688658585880744

`A154680(n+1)+6`
-/

namespace A154685.P6236688658585880744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154680 (n + 1) + 6

end

end A154685.P6236688658585880744

namespace A154685

/-- `A154680(n+1)+6` -/
def P6236688658585880744.Spec : Prop :=
  ∀ n, P6236688658585880744.a n = A154685 (n + 1)

theorem P6236688658585880744.correct : P6236688658585880744.Spec := by
  intro n
  simp only [A154685, Nat.add_sub_cancel, A154685.P6236688658585880744.a, A154685.P15243887039204204434.a, A154680, A154680.P11179278242672813373.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A154685

/-! ## A154685.P9693040809394876293

`A163674(n+1)-5`
-/

namespace A154685.P9693040809394876293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163674 (n + 1) - 5

end

end A154685.P9693040809394876293

namespace A154685

/-- `A163674(n+1)-5` -/
def P9693040809394876293.Spec : Prop :=
  ∀ n, P9693040809394876293.a n = A154685 (n + 1)

theorem P9693040809394876293.correct : P9693040809394876293.Spec := by
  intro n
  simp only [A154685, Nat.add_sub_cancel, A154685.P9693040809394876293.a, A154685.P15243887039204204434.a, A163674, A163674.P13425160265099091409.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A154685

/-! ## A154685.P3732548200043120087

`A154684(n+1)+7`
-/

namespace A154685.P3732548200043120087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154684 (n + 1) + 7

end

end A154685.P3732548200043120087

namespace A154685

/-- `A154684(n+1)+7` -/
def P3732548200043120087.Spec : Prop :=
  ∀ n, P3732548200043120087.a n = A154685 (n + 1)

theorem P3732548200043120087.correct : P3732548200043120087.Spec := by
  intro n
  simp only [A154685, Nat.add_sub_cancel, A154685.P3732548200043120087.a, A154685.P15243887039204204434.a, A154684, A154684.P4294763165931368592.a, A131421, A131421.P16745487656165401881.a, A151890, A151890.P5860764011676095584.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A154685

/-! ## A154685.P8005446934156971102

`A155704(n+1)-6`
-/

namespace A154685.P8005446934156971102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155704 (n + 1) - 6

end

end A154685.P8005446934156971102

namespace A154685

/-- `A155704(n+1)-6` -/
def P8005446934156971102.Spec : Prop :=
  ∀ n, P8005446934156971102.a n = A154685 (n + 1)

theorem P8005446934156971102.correct : P8005446934156971102.Spec := by
  intro n
  simp only [A154685, Nat.add_sub_cancel, A154685.P8005446934156971102.a, A154685.P15243887039204204434.a, A155704, A155704.P8650019513373998533.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A154685

/-! ## A154685.P18372371406698788304

`A155724(n+1)+8`
-/

namespace A154685.P18372371406698788304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155724 (n + 1) + 8

end

end A154685.P18372371406698788304

namespace A154685

/-- `A155724(n+1)+8` -/
def P18372371406698788304.Spec : Prop :=
  ∀ n, P18372371406698788304.a n = A154685 (n + 1)

theorem P18372371406698788304.correct : P18372371406698788304.Spec := by
  intro n
  simp only [A154685, Nat.add_sub_cancel, A154685.P18372371406698788304.a, A154685.P15243887039204204434.a, A155724, A155724.P13035978009969684852.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A154685

/-! ## A154685.P16824724958846057529

`A155546(n+1)+9`
-/

namespace A154685.P16824724958846057529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155546 (n + 1) + 9

end

end A154685.P16824724958846057529

namespace A154685

/-- `A155546(n+1)+9` -/
def P16824724958846057529.Spec : Prop :=
  ∀ n, P16824724958846057529.a n = A154685 (n + 1)

theorem P16824724958846057529.correct : P16824724958846057529.Spec := by
  intro n
  simp only [A154685, Nat.add_sub_cancel, A154685.P16824724958846057529.a, A154685.P15243887039204204434.a, A155546, A155546.P2386952917106834247.a, A154684, A154684.P4294763165931368592.a, A131421, A131421.P16745487656165401881.a, A151890, A151890.P5860764011676095584.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A154685

/-! ## A154685.P7777640417573815346

`A155151(n+1)/2+3`
-/

namespace A154685.P7777640417573815346
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A155151 (n + 1) : ℚ) / 2 + 3

end

end A154685.P7777640417573815346

namespace A154685

/-- `A155151(n+1)/2+3` -/
def P7777640417573815346.Spec : Prop :=
  ∀ n, P7777640417573815346.a n = (A154685 (n + 1) : ℚ)

theorem P7777640417573815346.correct : P7777640417573815346.Spec := by
  intro n
  simp only [A154685, Nat.add_sub_cancel, A154685.P7777640417573815346.a, A154685.P15243887039204204434.a, A155151, A155151.P14048722157311829906.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A154685

/-! ## A154685.P12971202665320801327

`A155156(n+1)/2+4`
-/

namespace A154685.P12971202665320801327
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A155156 (n + 1) : ℚ) / 2 + 4

end

end A154685.P12971202665320801327

namespace A154685

/-- `A155156(n+1)/2+4` -/
def P12971202665320801327.Spec : Prop :=
  ∀ n, P12971202665320801327.a n = (A154685 (n + 1) : ℚ)

theorem P12971202665320801327.correct : P12971202665320801327.Spec := by
  intro n
  simp only [A154685, Nat.add_sub_cancel, A154685.P12971202665320801327.a, A154685.P15243887039204204434.a, A155156, A155156.P11088672852986007837.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A154685

/-! ## A154685.P15249266320263299043

`A000027(A155550(n+1)+8)+2`
-/

namespace A154685.P15249266320263299043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A155550 (n + 1) + 8).toNat + 2

end

end A154685.P15249266320263299043

namespace A154685

/-- `A000027(A155550(n+1)+8)+2` -/
def P15249266320263299043.Spec : Prop :=
  ∀ n, P15249266320263299043.a n = A154685 (n + 1)

end A154685

/-!
# A154686: Numbers k such that k^3 + 2*k^2 + k + 1 is prime.

The programs for A154686, there is no canonical definition to state claims against.
-/

/-! ## A154686.P5057494208144933472

`A115018(n+1)+1`
-/

namespace A154686.P5057494208144933472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115018 (n + 1) + 1

end

end A154686.P5057494208144933472

/-! ## A154686.P5353854583791711339

`A111501(n+1)-1`
-/

namespace A154686.P5353854583791711339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111501 (n + 1) - 1

end

end A154686.P5353854583791711339

/-! ## A154686.P17133254395674467956

`floor(root(A162292(1+n), 3))`
-/

namespace A154686.P17133254395674467956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A162292 (1 + n) : ℝ) ^ (1 / (3 : ℝ))⌋

end

end A154686.P17133254395674467956

/-! ## A154686.P12411614809202086779

`A113418(A020639(2*(n+1)))+A111501(n+1)`
-/

namespace A154686.P12411614809202086779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113418 (A020639 (2 * (n + 1))).toNat + A111501 (n + 1)

end

end A154686.P12411614809202086779

/-! ## A154686.P11543706188250544378

`A023443(A111501(n+1))`
-/

namespace A154686.P11543706188250544378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A111501 (n + 1)).toNat

end

end A154686.P11543706188250544378

/-! ## A154686.P8869636286461922530

`A087908(A111501(n+1)+1)%A111501(n+1)`
-/

namespace A154686.P8869636286461922530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A087908 (A111501 (n + 1) + 1).toNat) (A111501 (n + 1))

end

end A154686.P8869636286461922530

/-! ## A154686.P8987965513287428283

`A023444(A111501(n+1)+1)`
-/

namespace A154686.P8987965513287428283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023444 (A111501 (n + 1) + 1).toNat

end

end A154686.P8987965513287428283

/-! ## A154686.P14077080787459335234

`A023445(A111501(n+1)+2)`
-/

namespace A154686.P14077080787459335234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023445 (A111501 (n + 1) + 2).toNat

end

end A154686.P14077080787459335234

/-! ## A154686.P17786867775771360260

`A023446(A111501(n+1)+1)+2`
-/

namespace A154686.P17786867775771360260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023446 (A111501 (n + 1) + 1).toNat + 2

end

end A154686.P17786867775771360260

/-!
# A154687: Period 6: repeat [1, 4, 7, 8, 5, 2].

The programs for A154687, the canonical program `A154687.P862623417888344537` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A154687 has offset 0).

The definition of A154687 is `verified`: an anchor theorem with a hand-written proof shows that the Lean definition equals an independent definition of the sequence: the theorem `A154687.anchor (n : ℕ) : A154687 n = [1, 4, 7, 8, 5, 2].getD (n % 6) 0` in `Proof.A154.A154687`. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A154687.P16621874843048276485

`ogf((1+3x+3x^2+2x^3)/(1-x+x^3-x^4))`
-/

namespace A154687.P16621874843048276485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 3, 3, 2] [1, -1, 0, 1, -1] n

end

end A154687.P16621874843048276485

namespace A154687

/-- `ogf((1+3x+3x^2+2x^3)/(1-x+x^3-x^4))` -/
def P16621874843048276485.Spec : Prop :=
  ∀ n, P16621874843048276485.a n = A154687 n

end A154687

/-! ## A154687.P862623417888344537

`a(n-1)-a(n-3)+a(n-4)` with `a(0)=1, a(1)=4, a(2)=7, a(3)=8`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A154687

/-- `a(n-1)-a(n-3)+a(n-4)` -/
def P862623417888344537.Spec : Prop :=
  ∀ n, P862623417888344537.a n = A154687 n

theorem P862623417888344537.correct : P862623417888344537.Spec := by
  intro n
  simp only [A154687]

end A154687

/-!
# A154689: Numbers n such that sigma_0(n-sigma_0(n))= sigma_0(n).

The programs for A154689, the canonical program `A154689.P8500291516967621561` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A154689 has offset 1).

The definition of A154689 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 957 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A154689.P8500291516967621561

`eq[1, char[A062249(A175304(n+1))]]`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A154689

/-- `eq[1, char[A062249(A175304(n+1))]]` -/
def P8500291516967621561.Spec : Prop :=
  ∀ n, (P8500291516967621561.a n : ℤ) = A154689 (n + 1)

theorem P8500291516967621561.correct : P8500291516967621561.Spec := by
  intro n
  simp only [A154689, Nat.add_sub_cancel]

end A154689

/-! ## A154689.P1028714779758256606

`record[A268335(2*n+5)-A186764(n)]`
-/

namespace A154689.P1028714779758256606
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268335 (2 * n + 5) - A186764 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A154689.P1028714779758256606

namespace A154689

/-- `record[A268335(2*n+5)-A186764(n)]` -/
def P1028714779758256606.Spec : Prop :=
  ∀ n, P1028714779758256606.a n = A154689 (n + 1)

end A154689

/-! ## A154689.P11861112469682934247

`lt[A216694(A320230(n+1)), A008971(n)]`
-/

namespace A154689.P11861112469682934247
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216694 (A320230 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008971 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A154689.P11861112469682934247

namespace A154689

/-- `lt[A216694(A320230(n+1)), A008971(n)]` -/
def P11861112469682934247.Spec : Prop :=
  ∀ n, (P11861112469682934247.a n : ℤ) = A154689 (n + 1)

end A154689

/-!
# A154690: Triangle read by rows: T(n, k) = (2^(n-k) + 2^k)*binomial(n,k), 0 <= k <= n.

The programs for A154690, the canonical program `A154690.P16126623490834673172` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A154690 has offset 0).

The definition of A154690 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A154690.P16126623490834673172

`(2^(row(n)-col(n))+2^col(n))*C(row(n), col(n))`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A154690

/-- `(2^(row(n)-col(n))+2^col(n))*C(row(n), col(n))` -/
def P16126623490834673172.Spec : Prop :=
  ∀ n, P16126623490834673172.a n = (A154690 n : ℚ)

end A154690

/-! ## A154690.P1778133619839495077

`(2^col(n)+2^(row(n)-col(n)))*A007318(n)`
-/

namespace A154690.P1778133619839495077
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((2 ^ SequenceMachineLib.triCol n : ℚ) + (2 : ℚ) ^ ((SequenceMachineLib.triRow n : ℤ) - (SequenceMachineLib.triCol n : ℤ) : ℤ)) * (A007318 n : ℚ)

end

end A154690.P1778133619839495077

namespace A154690

/-- `(2^col(n)+2^(row(n)-col(n)))*A007318(n)` -/
def P1778133619839495077.Spec : Prop :=
  ∀ n, P1778133619839495077.a n = (A154690 n : ℚ)

end A154690

/-! ## A154690.P3021837543352259598

`A038207(n)+A013609(n)`
-/

namespace A154690.P3021837543352259598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038207 n + A013609 n

end

end A154690.P3021837543352259598

namespace A154690

/-- `A038207(n)+A013609(n)` -/
def P3021837543352259598.Spec : Prop :=
  ∀ n, P3021837543352259598.a n = A154690 n

end A154690

/-! ## A154690.P13303763518340648139

`A007318(n)*A271709(n)`
-/

namespace A154690.P13303763518340648139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n * A271709 n

end

end A154690.P13303763518340648139

namespace A154690

/-- `A007318(n)*A271709(n)` -/
def P13303763518340648139.Spec : Prop :=
  ∀ n, P13303763518340648139.a n = A154690 n

end A154690

/-! ## A154690.P11579297256236716115

`A013609(n)+abs(A065109(n))`
-/

namespace A154690.P11579297256236716115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013609 n + |A065109 n|

end

end A154690.P11579297256236716115

namespace A154690

/-- `A013609(n)+abs(A065109(n))` -/
def P11579297256236716115.Spec : Prop :=
  ∀ n, P11579297256236716115.a n = A154690 n

end A154690

/-! ## A154690.P16453480781889566890

`A038207(n)+abs(A303872(n))`
-/

namespace A154690.P16453480781889566890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038207 n + |A303872 n|

end

end A154690.P16453480781889566890

namespace A154690

/-- `A038207(n)+abs(A303872(n))` -/
def P16453480781889566890.Spec : Prop :=
  ∀ n, P16453480781889566890.a n = A154690 n

end A154690

/-! ## A154690.P8374854203397391104

`abs(A108086(n)*A271709(n))`
-/

namespace A154690.P8374854203397391104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A108086 n * A271709 n|

end

end A154690.P8374854203397391104

namespace A154690

/-- `abs(A108086(n)*A271709(n))` -/
def P8374854203397391104.Spec : Prop :=
  ∀ n, P8374854203397391104.a n = A154690 n

end A154690

/-! ## A154690.P6608872552769190824

`abs(A117440(n)*A271709(n))`
-/

namespace A154690.P6608872552769190824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A117440 n * A271709 n|

end

end A154690.P6608872552769190824

namespace A154690

/-- `abs(A117440(n)*A271709(n))` -/
def P6608872552769190824.Spec : Prop :=
  ∀ n, P6608872552769190824.a n = A154690 n

end A154690

/-! ## A154690.P10028486619971080918

`abs(A130595(n)*A271709(n))`
-/

namespace A154690.P10028486619971080918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A130595 n * A271709 n|

end

end A154690.P10028486619971080918

namespace A154690

/-- `abs(A130595(n)*A271709(n))` -/
def P10028486619971080918.Spec : Prop :=
  ∀ n, P10028486619971080918.a n = A154690 n

end A154690

/-! ## A154690.P11071716862732068449

`sqrt(A008459(n))*A271709(n)`
-/

namespace A154690.P11071716862732068449
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A008459 n : ℝ) * (A271709 n : ℝ)

end

end A154690.P11071716862732068449

namespace A154690

/-- `sqrt(A008459(n))*A271709(n)` -/
def P11071716862732068449.Spec : Prop :=
  ∀ n, P11071716862732068449.a n = (A154690 n : ℝ)

end A154690

/-! ## A154690.P13353112264995734791

`(A131816(n)+1)*A007318(n)`
-/

namespace A154690.P13353112264995734791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A131816 n + 1) * A007318 n

end

end A154690.P13353112264995734791

namespace A154690

/-- `(A131816(n)+1)*A007318(n)` -/
def P13353112264995734791.Spec : Prop :=
  ∀ n, P13353112264995734791.a n = A154690 n

end A154690

/-! ## A154690.P17403384522532889544

`A028326(n)/2*A271709(n)`
-/

namespace A154690.P17403384522532889544
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A028326 n : ℚ) / 2 * (A271709 n : ℚ)

end

end A154690.P17403384522532889544

namespace A154690

/-- `A028326(n)/2*A271709(n)` -/
def P17403384522532889544.Spec : Prop :=
  ∀ n, P17403384522532889544.a n = (A154690 n : ℚ)

end A154690

/-! ## A154690.P8578705418842978794

`A038207(n)+A007318(n)*A059268(n)`
-/

namespace A154690.P8578705418842978794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038207 n + A007318 n * A059268 n

end

end A154690.P8578705418842978794

namespace A154690

/-- `A038207(n)+A007318(n)*A059268(n)` -/
def P8578705418842978794.Spec : Prop :=
  ∀ n, P8578705418842978794.a n = A154690 n

end A154690

/-! ## A154690.P14405732266610093565

`(A130321(n)+A059268(n))*A007318(n)`
-/

namespace A154690.P14405732266610093565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A130321 n + A059268 n) * A007318 n

end

end A154690.P14405732266610093565

namespace A154690

/-- `(A130321(n)+A059268(n))*A007318(n)` -/
def P14405732266610093565.Spec : Prop :=
  ∀ n, P14405732266610093565.a n = A154690 n

end A154690

/-! ## A154690.P15837921689755292881

`A013609(n)+A013609(A061579(n))`
-/

namespace A154690.P15837921689755292881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013609 n + A013609 (A061579 n).toNat

end

end A154690.P15837921689755292881

namespace A154690

/-- `A013609(n)+A013609(A061579(n))` -/
def P15837921689755292881.Spec : Prop :=
  ∀ n, P15837921689755292881.a n = A154690 n

end A154690

/-! ## A154690.P5542577819944263786

`A038207(n)+A038207(A061579(n))`
-/

namespace A154690.P5542577819944263786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038207 n + A038207 (A061579 n).toNat

end

end A154690.P5542577819944263786

namespace A154690

/-- `A038207(n)+A038207(A061579(n))` -/
def P5542577819944263786.Spec : Prop :=
  ∀ n, P5542577819944263786.a n = A154690 n

end A154690

/-! ## A154690.P6634573185274111157

`A154692(n)/A154694(n)*A154693(n)`
-/

namespace A154690.P6634573185274111157
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A154692 n : ℚ) / (A154694 n : ℚ) * (A154693 n : ℚ)

end

end A154690.P6634573185274111157

namespace A154690

/-- `A154692(n)/A154694(n)*A154693(n)` -/
def P6634573185274111157.Spec : Prop :=
  ∀ n, P6634573185274111157.a n = (A154690 n : ℚ)

end A154690

/-! ## A154690.P9094591742321454896

`A350771(n+1)+A028326(n)`
-/

namespace A154690.P9094591742321454896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350771 (n + 1) + A028326 n

end

end A154690.P9094591742321454896

namespace A154690

/-- `A350771(n+1)+A028326(n)` -/
def P9094591742321454896.Spec : Prop :=
  ∀ n, P9094591742321454896.a n = A154690 n

end A154690

/-! ## A154690.P10658958429540893060

`(A350770(n+1)+2)*A007318(n)`
-/

namespace A154690.P10658958429540893060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A350770 (n + 1) + 2) * A007318 n

end

end A154690.P10658958429540893060

namespace A154690

/-- `(A350770(n+1)+2)*A007318(n)` -/
def P10658958429540893060.Spec : Prop :=
  ∀ n, P10658958429540893060.a n = A154690 n

end A154690

/-! ## A154690.P164498780495108354

`A350771(n+1)+2*A007318(n)`
-/

namespace A154690.P164498780495108354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350771 (n + 1) + 2 * A007318 n

end

end A154690.P164498780495108354

namespace A154690

/-- `A350771(n+1)+2*A007318(n)` -/
def P164498780495108354.Spec : Prop :=
  ∀ n, P164498780495108354.a n = A154690 n

end A154690

/-!
# A154691: Expansion of (1 + x + x^2) / ((1 - x)*(1 - x - x^2)).

The programs for A154691, the canonical program `A154691.P6142259610213504236` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A154691 has offset 0).

The definition of A154691 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1+x+x^2)/(1-2x+x^3))` (program `A154691.P6142259610213504236`, by `A154691.P6142259610213504236.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A154691.P6142259610213504236

`ogf((1+x+x^2)/(1-2x+x^3))`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A154691

/-- `ogf((1+x+x^2)/(1-2x+x^3))` -/
def P6142259610213504236.Spec : Prop :=
  ∀ n, P6142259610213504236.a n = A154691 n

theorem P6142259610213504236.correct : P6142259610213504236.Spec := by
  intro n
  simp only [A154691]

end A154691

/-! ## A154691.P7396000397150086779

`2*a(n-1)-a(n-3)` with `a(0)=1, a(1)=3, a(2)=7`
-/

namespace A154691.P7396000397150086779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3, 7] fun n a =>
  2 * a (n - 1) - a (n - 3)

end

end A154691.P7396000397150086779

namespace A154691

/-- `2*a(n-1)-a(n-3)` -/
def P7396000397150086779.Spec : Prop :=
  ∀ n, P7396000397150086779.a n = A154691 n

end A154691

/-! ## A154691.P4765132242055554592

`A078642(n+1)-3`
-/

namespace A154691.P4765132242055554592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078642 (n + 1) - 3

end

end A154691.P4765132242055554592

namespace A154691

/-- `A078642(n+1)-3` -/
def P4765132242055554592.Spec : Prop :=
  ∀ n, P4765132242055554592.a n = A154691 n

end A154691

/-! ## A154691.P7218864125486452937

`A006355(n+4)-3`
-/

namespace A154691.P7218864125486452937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006355 (n + 4) - 3

end

end A154691.P7218864125486452937

namespace A154691

/-- `A006355(n+4)-3` -/
def P7218864125486452937.Spec : Prop :=
  ∀ n, P7218864125486452937.a n = A154691 n

end A154691

/-! ## A154691.P14276476568071572656

`2*A000045(n+3)-3`
-/

namespace A154691.P14276476568071572656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000045 (n + 3) - 3

end

end A154691.P14276476568071572656

namespace A154691

/-- `2*A000045(n+3)-3` -/
def P14276476568071572656.Spec : Prop :=
  ∀ n, P14276476568071572656.a n = A154691 n

end A154691

/-! ## A154691.P12874868915433856213

`ceil(ϕ*(a(n-1)+1))` with `a(0)=1, a(1)=3`
-/

namespace A154691.P12874868915433856213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3] fun n a =>
  ⌈Real.goldenRatio * (a (n - 1) + 1 : ℝ)⌉

end

end A154691.P12874868915433856213

namespace A154691

/-- `ceil(ϕ*(a(n-1)+1))` -/
def P12874868915433856213.Spec : Prop :=
  ∀ n, P12874868915433856213.a n = A154691 n

end A154691

/-! ## A154691.P12777087958719350684

`round(ϕ*a(n-1))+2` with `a(0)=1, a(1)=3`
-/

namespace A154691.P12777087958719350684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3] fun n a =>
  SequenceMachineLib.roundAway (Real.goldenRatio * (a (n - 1) : ℝ)) + 2

end

end A154691.P12777087958719350684

namespace A154691

/-- `round(ϕ*a(n-1))+2` -/
def P12777087958719350684.Spec : Prop :=
  ∀ n, P12777087958719350684.a n = A154691 n

end A154691

/-! ## A154691.P10609973018944280087

`∑[round(ϕ*a(n-1))]` with `a(0)=1, a(1)=2, a(2)=4`
-/

namespace A154691.P10609973018944280087
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 4] fun n f1 =>
  SequenceMachineLib.roundAway (Real.goldenRatio * (f1 (n - 1) : ℝ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A154691.P10609973018944280087

namespace A154691

/-- `∑[round(ϕ*a(n-1))]` -/
def P10609973018944280087.Spec : Prop :=
  ∀ n, P10609973018944280087.a n = A154691 n

end A154691

/-! ## A154691.P9542669906772799228

`floor(ϕ*(a(n-1)+ϕ))` with `a(0)=1, a(1)=3`
-/

namespace A154691.P9542669906772799228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3] fun n a =>
  ⌊Real.goldenRatio * ((a (n - 1) : ℝ) + Real.goldenRatio)⌋

end

end A154691.P9542669906772799228

namespace A154691

/-- `floor(ϕ*(a(n-1)+ϕ))` -/
def P9542669906772799228.Spec : Prop :=
  ∀ n, P9542669906772799228.a n = A154691 n

end A154691

/-! ## A154691.P7837853991617270404

`a(n-1)+a(n-2)+3` with `a(0)=1, a(1)=3`
-/

namespace A154691.P7837853991617270404
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 3] fun n a =>
  a (n - 1) + (a (n - 2) + 3)

end

end A154691.P7837853991617270404

namespace A154691

/-- `a(n-1)+a(n-2)+3` -/
def P7837853991617270404.Spec : Prop :=
  ∀ n, (P7837853991617270404.a n : ℤ) = A154691 n

end A154691

/-! ## A154691.P9132224352724532121

`4-floor(1-a(n-1)-a(n-2))` with `a(0)=1, a(1)=3`

`floor` is left out, it is the identity on integers.
-/

namespace A154691.P9132224352724532121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3] fun n a =>
  4 - (1 - a (n - 1) - a (n - 2))

end

end A154691.P9132224352724532121

namespace A154691

/-- `4-floor(1-a(n-1)-a(n-2))` -/
def P9132224352724532121.Spec : Prop :=
  ∀ n, P9132224352724532121.a n = A154691 n

end A154691

/-! ## A154691.P16236867228599466478

`n-∑[a(n-1)-(1-a(n-2))]` with `a(0)=-1, a(1)=-1`
-/

namespace A154691.P16236867228599466478
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [-1, -1] fun n f1 =>
  f1 (n - 1) - (1 - f1 (n - 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A154691.P16236867228599466478

namespace A154691

/-- `n-∑[a(n-1)-(1-a(n-2))]` -/
def P16236867228599466478.Spec : Prop :=
  ∀ n, P16236867228599466478.a n = A154691 n

end A154691

/-! ## A154691.P10599732755353144289

`4-((1-a(n-1))%a(n-1)-a(n-2))` with `a(0)=1, a(1)=3`
-/

namespace A154691.P10599732755353144289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3] fun n a =>
  4 - (Int.tmod (1 - a (n - 1)) (a (n - 1)) - a (n - 2))

end

end A154691.P10599732755353144289

namespace A154691

/-- `4-((1-a(n-1))%a(n-1)-a(n-2))` -/
def P10599732755353144289.Spec : Prop :=
  ∀ n, P10599732755353144289.a n = A154691 n

end A154691

/-! ## A154691.P5638729335468651049

`4-(gcd(2, a(n-1))-a(n-1)-a(n-2))` with `a(0)=1, a(1)=3`
-/

namespace A154691.P5638729335468651049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3] fun n a =>
  4 - ((Int.gcd 2 (a (n - 1)) : ℤ) - a (n - 1) - a (n - 2))

end

end A154691.P5638729335468651049

namespace A154691

/-- `4-(gcd(2, a(n-1))-a(n-1)-a(n-2))` -/
def P5638729335468651049.Spec : Prop :=
  ∀ n, P5638729335468651049.a n = A154691 n

end A154691

/-! ## A154691.P11182598190068853712

`A168193(n)+1`
-/

namespace A154691.P11182598190068853712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168193 n + 1

end

end A154691.P11182598190068853712

namespace A154691

/-- `A168193(n)+1` -/
def P11182598190068853712.Spec : Prop :=
  ∀ n, P11182598190068853712.a n = A154691 n

end A154691

/-! ## A154691.P10724563642333047095

`∑[record[A006355(n)]]`
-/

namespace A154691.P10724563642333047095
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006355 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A154691.P10724563642333047095

namespace A154691

/-- `∑[record[A006355(n)]]` -/
def P10724563642333047095.Spec : Prop :=
  ∀ n, P10724563642333047095.a n = A154691 n

end A154691

/-! ## A154691.P7853469718872374566

`∑[A128588(n+1)]`
-/

namespace A154691.P7853469718872374566
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128588 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A154691.P7853469718872374566

namespace A154691

/-- `∑[A128588(n+1)]` -/
def P7853469718872374566.Spec : Prop :=
  ∀ n, P7853469718872374566.a n = A154691 n

end A154691

/-! ## A154691.P16365178391293290411

`∑[A001595(n)]+n`
-/

namespace A154691.P16365178391293290411
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001595 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ)

end

end A154691.P16365178391293290411

namespace A154691

/-- `∑[A001595(n)]+n` -/
def P16365178391293290411.Spec : Prop :=
  ∀ n, P16365178391293290411.a n = A154691 n

end A154691

/-! ## A154691.P4299792818861820033

`A001595(n+2)-2`
-/

namespace A154691.P4299792818861820033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001595 (n + 2) - 2

end

end A154691.P4299792818861820033

namespace A154691

/-- `A001595(n+2)-2` -/
def P4299792818861820033.Spec : Prop :=
  ∀ n, P4299792818861820033.a n = A154691 n

end A154691

/-! ## A154691.P6971563824007761202

`2*A001911(n)+1`
-/

namespace A154691.P6971563824007761202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A001911 n + 1

end

end A154691.P6971563824007761202

namespace A154691

/-- `2*A001911(n)+1` -/
def P6971563824007761202.Spec : Prop :=
  ∀ n, P6971563824007761202.a n = A154691 n

end A154691

/-!
# A154692: Triangle read by rows: T(n, k) = (2^(n-k)*3^k + 2^k*3^(n-k))*binomial(n, k).

The programs for A154692, the canonical program `A154692.P7177362389510371743` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A154692 has offset 0).

The definition of A154692 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A154692.P7177362389510371743

`(2^(row(n)-col(n))*3^col(n)+2^col(n)*3^(row(n)-col(n)))*C(row(n), col(n))`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A154692

/-- `(2^(row(n)-col(n))*3^col(n)+2^col(n)*3^(row(n)-col(n)))*C(row(n), col(n))` -/
def P7177362389510371743.Spec : Prop :=
  ∀ n, P7177362389510371743.a n = (A154692 n : ℚ)

end A154692

/-! ## A154692.P9801047649925696033

`A038220(n)+A013620(n)`
-/

namespace A154692.P9801047649925696033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038220 n + A013620 n

end

end A154692.P9801047649925696033

namespace A154692

/-- `A038220(n)+A013620(n)` -/
def P9801047649925696033.Spec : Prop :=
  ∀ n, P9801047649925696033.a n = A154692 n

end A154692

/-! ## A154692.P2595903072870329984

`A013620(n)+abs(A303901(n))`
-/

namespace A154692.P2595903072870329984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013620 n + |A303901 n|

end

end A154692.P2595903072870329984

namespace A154692

/-- `A013620(n)+abs(A303901(n))` -/
def P2595903072870329984.Spec : Prop :=
  ∀ n, P2595903072870329984.a n = A154692 n

end A154692

/-! ## A154692.P7827785675695861573

`A038220(n)+abs(A317498(n))`
-/

namespace A154692.P7827785675695861573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038220 n + |A317498 n|

end

end A154692.P7827785675695861573

namespace A154692

/-- `A038220(n)+abs(A317498(n))` -/
def P7827785675695861573.Spec : Prop :=
  ∀ n, P7827785675695861573.a n = A154692 n

end A154692

/-! ## A154692.P7714714038986288615

`A038220(n)+A007318(n)*A036561(n)`
-/

namespace A154692.P7714714038986288615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038220 n + A007318 n * A036561 n

end

end A154692.P7714714038986288615

namespace A154692

/-- `A038220(n)+A007318(n)*A036561(n)` -/
def P7714714038986288615.Spec : Prop :=
  ∀ n, P7714714038986288615.a n = A154692 n

end A154692

/-! ## A154692.P17181705115395302989

`A013620(n)+A027465(n)*A059268(n)`
-/

namespace A154692.P17181705115395302989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013620 n + A027465 n * A059268 n

end

end A154692.P17181705115395302989

namespace A154692

/-- `A013620(n)+A027465(n)*A059268(n)` -/
def P17181705115395302989.Spec : Prop :=
  ∀ n, P17181705115395302989.a n = A154692 n

end A154692

/-! ## A154692.P11247112795224486565

`A013620(n)+A013609(n)*A140303(n)`
-/

namespace A154692.P11247112795224486565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013620 n + A013609 n * A140303 n

end

end A154692.P11247112795224486565

namespace A154692

/-- `A013620(n)+A013609(n)*A140303(n)` -/
def P11247112795224486565.Spec : Prop :=
  ∀ n, P11247112795224486565.a n = A154692 n

end A154692

/-! ## A154692.P2019143177475906603

`A013620(n)+lcm(A013609(n), A027465(n))`
-/

namespace A154692.P2019143177475906603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013620 n + (Int.lcm (A013609 n) (A027465 n) : ℤ)

end

end A154692.P2019143177475906603

namespace A154692

/-- `A013620(n)+lcm(A013609(n), A027465(n))` -/
def P2019143177475906603.Spec : Prop :=
  ∀ n, P2019143177475906603.a n = A154692 n

end A154692

/-! ## A154692.P17917390676814238154

`A013620(n)+A013620(A061579(n))`
-/

namespace A154692.P17917390676814238154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013620 n + A013620 (A061579 n).toNat

end

end A154692.P17917390676814238154

namespace A154692

/-- `A013620(n)+A013620(A061579(n))` -/
def P17917390676814238154.Spec : Prop :=
  ∀ n, P17917390676814238154.a n = A154692 n

end A154692

/-! ## A154692.P6320622703922833773

`A038220(n)+A038220(A061579(n))`
-/

namespace A154692.P6320622703922833773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038220 n + A038220 (A061579 n).toNat

end

end A154692.P6320622703922833773

namespace A154692

/-- `A038220(n)+A038220(A061579(n))` -/
def P6320622703922833773.Spec : Prop :=
  ∀ n, P6320622703922833773.a n = A154692 n

end A154692

/-! ## A154692.P7024381026591144613

`A013620(n)+A038222(n)/A059268(n)`
-/

namespace A154692.P7024381026591144613
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A013620 n : ℚ) + (A038222 n : ℚ) / (A059268 n : ℚ)

end

end A154692.P7024381026591144613

namespace A154692

/-- `A013620(n)+A038222(n)/A059268(n)` -/
def P7024381026591144613.Spec : Prop :=
  ∀ n, P7024381026591144613.a n = (A154692 n : ℚ)

end A154692

/-! ## A154692.P12528301968723485742

`A013620(n)+gcd(A038222(n), A038224(n))`
-/

namespace A154692.P12528301968723485742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013620 n + (Int.gcd (A038222 n) (A038224 n) : ℤ)

end

end A154692.P12528301968723485742

namespace A154692

/-- `A013620(n)+gcd(A038222(n), A038224(n))` -/
def P12528301968723485742.Spec : Prop :=
  ∀ n, P12528301968723485742.a n = A154692 n

end A154692

/-! ## A154692.P3615358673077380379

`A013620(n)+A038260(n)/A036561(n)`
-/

namespace A154692.P3615358673077380379
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A013620 n : ℚ) + (A038260 n : ℚ) / (A036561 n : ℚ)

end

end A154692.P3615358673077380379

namespace A154692

/-- `A013620(n)+A038260(n)/A036561(n)` -/
def P3615358673077380379.Spec : Prop :=
  ∀ n, P3615358673077380379.a n = (A154692 n : ℚ)

end A154692

/-! ## A154692.P9874462982653661860

`A154690(n)/A154693(n)*A154694(n)`
-/

namespace A154692.P9874462982653661860
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A154690 n : ℚ) / (A154693 n : ℚ) * (A154694 n : ℚ)

end

end A154692.P9874462982653661860

namespace A154692

/-- `A154690(n)/A154693(n)*A154694(n)` -/
def P9874462982653661860.Spec : Prop :=
  ∀ n, P9874462982653661860.a n = (A154692 n : ℚ)

end A154692

/-! ## A154692.P15995936087474543449

`A154690(n)/A154695(n)*A154696(n)`
-/

namespace A154692.P15995936087474543449
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A154690 n : ℚ) / (A154695 n : ℚ) * (A154696 n : ℚ)

end

end A154692.P15995936087474543449

namespace A154692

/-- `A154690(n)/A154695(n)*A154696(n)` -/
def P15995936087474543449.Spec : Prop :=
  ∀ n, P15995936087474543449.a n = (A154692 n : ℚ)

end A154692

/-!
# A154693: Triangle read by rows: T(n, k) = (2^(n-k) + 2^k)*A008292(n+1, k+1).

The programs for A154693, the canonical program `A154693.P5976203559583438188` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A154693 has offset 0).

The definition of A154693 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A008292, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A154693.P5976203559583438188

`(2^(row(n)-col(n))+2^col(n))*A008292(C(row(n)+1, 2)+col(n)+1)`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A154693

/-- `(2^(row(n)-col(n))+2^col(n))*A008292(C(row(n)+1, 2)+col(n)+1)` -/
def P5976203559583438188.Spec : Prop :=
  ∀ n, P5976203559583438188.a n = (A154693 n : ℚ)

end A154693

/-! ## A154693.P1849939798678104985

`(2^col(n)+2^(row(n)-col(n)))*A008292(n+1)`
-/

namespace A154693.P1849939798678104985
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((2 ^ SequenceMachineLib.triCol n : ℚ) + (2 : ℚ) ^ ((SequenceMachineLib.triRow n : ℤ) - (SequenceMachineLib.triCol n : ℤ) : ℤ)) * (A008292 (n + 1) : ℚ)

end

end A154693.P1849939798678104985

namespace A154693

/-- `(2^col(n)+2^(row(n)-col(n)))*A008292(n+1)` -/
def P1849939798678104985.Spec : Prop :=
  ∀ n, P1849939798678104985.a n = (A154693 n : ℚ)

end A154693

/-! ## A154693.P15406104823994080431

`A008292(n+1)*A271709(n)`
-/

namespace A154693.P15406104823994080431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008292 (n + 1) * A271709 n

end

end A154693.P15406104823994080431

namespace A154693

/-- `A008292(n+1)*A271709(n)` -/
def P15406104823994080431.Spec : Prop :=
  ∀ n, P15406104823994080431.a n = A154693 n

end A154693

/-! ## A154693.P5046748931855113278

`A123125(comp[∑[n]])*A271709(n)`
-/

namespace A154693.P5046748931855113278
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123125 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n) * A271709 n

end

end A154693.P5046748931855113278

namespace A154693

/-- `A123125(comp[∑[n]])*A271709(n)` -/
def P5046748931855113278.Spec : Prop :=
  ∀ n, P5046748931855113278.a n = A154693 n

end A154693

/-! ## A154693.P8121277619911663190

`ceil(A176200(n)/2)*A271709(n)`
-/

namespace A154693.P8121277619911663190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A176200 n : ℚ) / 2⌉ * A271709 n

end

end A154693.P8121277619911663190

namespace A154693

/-- `ceil(A176200(n)/2)*A271709(n)` -/
def P8121277619911663190.Spec : Prop :=
  ∀ n, P8121277619911663190.a n = A154693 n

end A154693

/-! ## A154693.P12534503155305250196

`(A131816(n)+1)*A008292(n+1)`
-/

namespace A154693.P12534503155305250196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A131816 n + 1) * A008292 (n + 1)

end

end A154693.P12534503155305250196

namespace A154693

/-- `(A131816(n)+1)*A008292(n+1)` -/
def P12534503155305250196.Spec : Prop :=
  ∀ n, P12534503155305250196.a n = A154693 n

end A154693

/-! ## A154693.P5442388424255197220

`(A176204(n)+3)/4*A271709(n)`
-/

namespace A154693.P5442388424255197220
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A176204 n + 3 : ℚ) / 4 * (A271709 n : ℚ)

end

end A154693.P5442388424255197220

namespace A154693

/-- `(A176204(n)+3)/4*A271709(n)` -/
def P5442388424255197220.Spec : Prop :=
  ∀ n, P5442388424255197220.a n = (A154693 n : ℚ)

end A154693

/-! ## A154693.P10808717120579763552

`(A130321(n)+A059268(n))*A008292(n+1)`
-/

namespace A154693.P10808717120579763552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A130321 n + A059268 n) * A008292 (n + 1)

end

end A154693.P10808717120579763552

namespace A154693

/-- `(A130321(n)+A059268(n))*A008292(n+1)` -/
def P10808717120579763552.Spec : Prop :=
  ∀ n, P10808717120579763552.a n = A154693 n

end A154693

/-! ## A154693.P891827974394129285

`A142075(A038722(n+1))+A142075(n+1)`
-/

namespace A154693.P891827974394129285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142075 (A038722 (n + 1)).toNat + A142075 (n + 1)

end

end A154693.P891827974394129285

namespace A154693

/-- `A142075(A038722(n+1))+A142075(n+1)` -/
def P891827974394129285.Spec : Prop :=
  ∀ n, P891827974394129285.a n = A154693 n

end A154693

/-! ## A154693.P2851384499050200031

`A154690(n)/A038221(n)*A257620(n)`
-/

namespace A154693.P2851384499050200031
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A154690 n : ℚ) / (A038221 n : ℚ) * (A257620 n : ℚ)

end

end A154693.P2851384499050200031

namespace A154693

/-- `A154690(n)/A038221(n)*A257620(n)` -/
def P2851384499050200031.Spec : Prop :=
  ∀ n, P2851384499050200031.a n = (A154693 n : ℚ)

end A154693

/-! ## A154693.P17433483767338843105

`A154690(n)/A154692(n)*A154694(n)`
-/

namespace A154693.P17433483767338843105
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A154690 n : ℚ) / (A154692 n : ℚ) * (A154694 n : ℚ)

end

end A154693.P17433483767338843105

namespace A154693

/-- `A154690(n)/A154692(n)*A154694(n)` -/
def P17433483767338843105.Spec : Prop :=
  ∀ n, P17433483767338843105.a n = (A154693 n : ℚ)

end A154693

/-! ## A154693.P6294132368348179925

`A154694(n)/A154696(n)*A154695(n)`
-/

namespace A154693.P6294132368348179925
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A154694 n : ℚ) / (A154696 n : ℚ) * (A154695 n : ℚ)

end

end A154693.P6294132368348179925

namespace A154693

/-- `A154694(n)/A154696(n)*A154695(n)` -/
def P6294132368348179925.Spec : Prop :=
  ∀ n, P6294132368348179925.a n = (A154693 n : ℚ)

end A154693

/-! ## A154693.P6938461477561038866

`A154694(n)*A154695(n)/A154696(n)`
-/

namespace A154693.P6938461477561038866
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A154694 n * A154695 n : ℚ) / (A154696 n : ℚ)

end

end A154693.P6938461477561038866

namespace A154693

/-- `A154694(n)*A154695(n)/A154696(n)` -/
def P6938461477561038866.Spec : Prop :=
  ∀ n, P6938461477561038866.a n = (A154693 n : ℚ)

end A154693

/-!
# A154694: Triangle read by rows: T(n,k) = ((3/2)^k*2^n + (2/3)^k*3^n)*A008292(n+1,k+1).

The programs for A154694, the canonical program `A154694.P16099243653721442215` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A154694 has offset 0).

The definition of A154694 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1326 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A154694.P16099243653721442215

`A154692(n)/A154690(n)*A154693(n)`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A154694

/-- `A154692(n)/A154690(n)*A154693(n)` -/
def P16099243653721442215.Spec : Prop :=
  ∀ n, P16099243653721442215.a n = (A154694 n : ℚ)

end A154694

/-! ## A154694.P2045275743260248331

`A008292(n+1)/A007318(n)*A154692(n)`
-/

namespace A154694.P2045275743260248331
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008292 (n + 1) : ℚ) / (A007318 n : ℚ) * (A154692 n : ℚ)

end

end A154694.P2045275743260248331

namespace A154694

/-- `A008292(n+1)/A007318(n)*A154692(n)` -/
def P2045275743260248331.Spec : Prop :=
  ∀ n, P2045275743260248331.a n = (A154694 n : ℚ)

end A154694

/-! ## A154694.P5565356982667748963

`A154693(n)/A154695(n)*A154696(n)`
-/

namespace A154694.P5565356982667748963
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A154693 n : ℚ) / (A154695 n : ℚ) * (A154696 n : ℚ)

end

end A154694.P5565356982667748963

namespace A154694

/-- `A154693(n)/A154695(n)*A154696(n)` -/
def P5565356982667748963.Spec : Prop :=
  ∀ n, P5565356982667748963.a n = (A154694 n : ℚ)

end A154694

/-! ## A154694.P3163024054327872913

`A154692(n)+A174673(n)-A174667(n)`
-/

namespace A154694.P3163024054327872913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154692 n + (A174673 n - A174667 n)

end

end A154694.P3163024054327872913

namespace A154694

/-- `A154692(n)+A174673(n)-A174667(n)` -/
def P3163024054327872913.Spec : Prop :=
  ∀ n, P3163024054327872913.a n = A154694 n

end A154694

/-! ## A154694.P1272936371172126001

`A154696(n)+A174673(n)-A174675(n)`
-/

namespace A154694.P1272936371172126001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154696 n + (A174673 n - A174675 n)

end

end A154694.P1272936371172126001

namespace A154694

/-- `A154696(n)+A174673(n)-A174675(n)` -/
def P1272936371172126001.Spec : Prop :=
  ∀ n, P1272936371172126001.a n = A154694 n

end A154694

/-!
# A154695: Triangular sequence defined by T(n, m) = (r^(n-m)*q^m + r^m*q^(n-m))*b(n), where b(n) = coefficients of p(x, n) = 2^n*(1-x)^(n+1) * LerchPhi(x, -n, 1/2), and r=2, q=1.

The programs for A154695, the canonical program `A154695.P6136565342369556141` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A154695 has offset 0).

The definition of A154695 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 861 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A154695.P6136565342369556141

`A060187(n+1)*A271709(n)`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A154695

/-- `A060187(n+1)*A271709(n)` -/
def P6136565342369556141.Spec : Prop :=
  ∀ n, P6136565342369556141.a n = A154695 n

theorem P6136565342369556141.correct : P6136565342369556141.Spec := by
  intro n
  simp only [A154695]

end A154695

/-! ## A154695.P5664941834090572735

`(A131816(n)+1)*A060187(n+1)`
-/

namespace A154695.P5664941834090572735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A131816 n + 1) * A060187 (n + 1)

end

end A154695.P5664941834090572735

namespace A154695

/-- `(A131816(n)+1)*A060187(n+1)` -/
def P5664941834090572735.Spec : Prop :=
  ∀ n, P5664941834090572735.a n = A154695 n

end A154695

/-! ## A154695.P4395701285398788511

`A154690(n)/A154692(n)*A154696(n)`
-/

namespace A154695.P4395701285398788511
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A154690 n : ℚ) / (A154692 n : ℚ) * (A154696 n : ℚ)

end

end A154695.P4395701285398788511

namespace A154695

/-- `A154690(n)/A154692(n)*A154696(n)` -/
def P4395701285398788511.Spec : Prop :=
  ∀ n, P4395701285398788511.a n = (A154695 n : ℚ)

end A154695

/-! ## A154695.P3051238477484256726

`A154693(n)/A154694(n)*A154696(n)`
-/

namespace A154695.P3051238477484256726
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A154693 n : ℚ) / (A154694 n : ℚ) * (A154696 n : ℚ)

end

end A154695.P3051238477484256726

namespace A154695

/-- `A154693(n)/A154694(n)*A154696(n)` -/
def P3051238477484256726.Spec : Prop :=
  ∀ n, P3051238477484256726.a n = (A154695 n : ℚ)

end A154695

/-! ## A154695.P15304519981578237679

`A257612(n)/A137688(n)*A271709(n)`
-/

namespace A154695.P15304519981578237679
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A257612 n : ℚ) / (A137688 n : ℚ) * (A271709 n : ℚ)

end

end A154695.P15304519981578237679

namespace A154695

/-- `A257612(n)/A137688(n)*A271709(n)` -/
def P15304519981578237679.Spec : Prop :=
  ∀ n, P15304519981578237679.a n = (A154695 n : ℚ)

end A154695

/-! ## A154695.P2706241248116194498

`(A130321(n)+A059268(n))*A060187(n+1)`
-/

namespace A154695.P2706241248116194498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A130321 n + A059268 n) * A060187 (n + 1)

end

end A154695.P2706241248116194498

namespace A154695

/-- `(A130321(n)+A059268(n))*A060187(n+1)` -/
def P2706241248116194498.Spec : Prop :=
  ∀ n, P2706241248116194498.a n = A154695 n

end A154695

/-! ## A154695.P12049271820782451915

`A048675(A098350(n+1))*A060187(n+1)`
-/

namespace A154695.P12049271820782451915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048675 (A098350 (n + 1)).toNat * A060187 (n + 1)

end

end A154695.P12049271820782451915

namespace A154695

/-- `A048675(A098350(n+1))*A060187(n+1)` -/
def P12049271820782451915.Spec : Prop :=
  ∀ n, P12049271820782451915.a n = A154695 n

end A154695

/-! ## A154695.P9045364566069037756

`A060187(n+1)*A233775(A115216(n))`
-/

namespace A154695.P9045364566069037756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060187 (n + 1) * A233775 (A115216 n).toNat

end

end A154695.P9045364566069037756

namespace A154695

/-- `A060187(n+1)*A233775(A115216(n))` -/
def P9045364566069037756.Spec : Prop :=
  ∀ n, P9045364566069037756.a n = A154695 n

end A154695

/-! ## A154695.P12760366957520296590

`(A262227(n)+A262226(n))*A271709(n)`
-/

namespace A154695.P12760366957520296590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A262227 n + A262226 n) * A271709 n

end

end A154695.P12760366957520296590

namespace A154695

/-- `(A262227(n)+A262226(n))*A271709(n)` -/
def P12760366957520296590.Spec : Prop :=
  ∀ n, P12760366957520296590.a n = A154695 n

end A154695

/-!
# A154696: Triangular sequence defined by T(n, m) = (r^(n-m)*q^m + r^m*q^(n-m))*b(n), where b(n) = coefficients of p(x, n) = 2^n*(1-x)^(n+1) * LerchPhi(x, -n, 1/2), and r=2, q=3.

The programs for A154696, the canonical program `A154696.P2906835643943415634` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A154696 has offset 0).

The definition of A154696 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 861 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A154696.P9303712820854813061

`A154692(n)/A154690(n)*A154695(n)`
-/

namespace A154696.P9303712820854813061
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A154692 n : ℚ) / (A154690 n : ℚ) * (A154695 n : ℚ)

end

end A154696.P9303712820854813061

namespace A154696

/-- `A154692(n)/A154690(n)*A154695(n)` -/
def P9303712820854813061.Spec : Prop :=
  ∀ n, P9303712820854813061.a n = (A154696 n : ℚ)

end A154696

/-! ## A154696.P5793064333360067845

`A154694(n)/A154693(n)*A154695(n)`
-/

namespace A154696.P5793064333360067845
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A154694 n : ℚ) / (A154693 n : ℚ) * (A154695 n : ℚ)

end

end A154696.P5793064333360067845

namespace A154696

/-- `A154694(n)/A154693(n)*A154695(n)` -/
def P5793064333360067845.Spec : Prop :=
  ∀ n, P5793064333360067845.a n = (A154696 n : ℚ)

end A154696

/-! ## A154696.P2906835643943415634

`(A175840(n)+A036561(n))*A060187(n+1)`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A154696

/-- `(A175840(n)+A036561(n))*A060187(n+1)` -/
def P2906835643943415634.Spec : Prop :=
  ∀ n, P2906835643943415634.a n = A154696 n

theorem P2906835643943415634.correct : P2906835643943415634.Spec := by
  intro n
  simp only [A154696]

end A154696

/-! ## A154696.P10028564217951305301

`A154692(n)+A174675(n)-A174667(n)`
-/

namespace A154696.P10028564217951305301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154692 n + (A174675 n - A174667 n)

end

end A154696.P10028564217951305301

namespace A154696

/-- `A154692(n)+A174675(n)-A174667(n)` -/
def P10028564217951305301.Spec : Prop :=
  ∀ n, P10028564217951305301.a n = A154696 n

end A154696

/-! ## A154696.P1301013062013704022

`A154694(n)+A174675(n)-A174673(n)`
-/

namespace A154696.P1301013062013704022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154694 n + (A174675 n - A174673 n)

end

end A154696.P1301013062013704022

namespace A154696

/-- `A154694(n)+A174675(n)-A174673(n)` -/
def P1301013062013704022.Spec : Prop :=
  ∀ n, P1301013062013704022.a n = A154696 n

end A154696

/-!
# A154699: Terms in A014217 pairwise swapped.

The programs for A154699, the canonical program `A154699.P8224092018702358423` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A154699 has offset 0).

The definition of A154699 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A154699.P8224092018702358423

`ogf((1+x-2x^3-x^4+2x^5)/(1-4x^2+4x^4-x^6))`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A154699

/-- `ogf((1+x-2x^3-x^4+2x^5)/(1-4x^2+4x^4-x^6))` -/
def P8224092018702358423.Spec : Prop :=
  ∀ n, P8224092018702358423.a n = A154699 n

theorem P8224092018702358423.correct : P8224092018702358423.Spec := by
  intro n
  simp only [A154699]

end A154699

/-! ## A154699.P12525665278413531406

`A014217(xor(1, n))`
-/

namespace A154699.P12525665278413531406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014217 (Nat.xor 1 n)

end

end A154699.P12525665278413531406

namespace A154699

/-- `A014217(xor(1, n))` -/
def P12525665278413531406.Spec : Prop :=
  ∀ n, P12525665278413531406.a n = A154699 n

end A154699

/-! ## A154699.P1244108626828886401

`A192660(2*xor(1, n))`
-/

namespace A154699.P1244108626828886401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192660 (2 * Nat.xor 1 n)

end

end A154699.P1244108626828886401

namespace A154699

/-- `A192660(2*xor(1, n))` -/
def P1244108626828886401.Spec : Prop :=
  ∀ n, P1244108626828886401.a n = A154699 n

end A154699

/-! ## A154699.P14629563395029366754

`A014217(n+(-1)^n)`
-/

namespace A154699.P14629563395029366754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014217 ((n : ℤ) + (-1) ^ n).toNat

end

end A154699.P14629563395029366754

namespace A154699

/-- `A014217(n+(-1)^n)` -/
def P14629563395029366754.Spec : Prop :=
  ∀ n, P14629563395029366754.a n = A154699 n

end A154699

/-! ## A154699.P2940744228611404772

`A000032(xor(1, n))-n%2`
-/

namespace A154699.P2940744228611404772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 (Nat.xor 1 n) - ((n % 2 : ℕ) : ℤ)

end

end A154699.P2940744228611404772

namespace A154699

/-- `A000032(xor(1, n))-n%2` -/
def P2940744228611404772.Spec : Prop :=
  ∀ n, P2940744228611404772.a n = A154699 n

end A154699

/-! ## A154699.P17663326566502737480

`A000032(n+1)%(A000032(or(1, n))+1)`
-/

namespace A154699.P17663326566502737480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000032 (n + 1)) (A000032 (Nat.lor 1 n) + 1)

end

end A154699.P17663326566502737480

namespace A154699

/-- `A000032(n+1)%(A000032(or(1, n))+1)` -/
def P17663326566502737480.Spec : Prop :=
  ∀ n, P17663326566502737480.a n = A154699 n

end A154699

/-! ## A154699.P12202375102133669479

`A014217(2*A008619(n))-A014217(n)`
-/

namespace A154699.P12202375102133669479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014217 (2 * A008619 n).toNat - A014217 n

end

end A154699.P12202375102133669479

namespace A154699

/-- `A014217(2*A008619(n))-A014217(n)` -/
def P12202375102133669479.Spec : Prop :=
  ∀ n, P12202375102133669479.a n = A154699 n

end A154699

/-! ## A154699.P4042859072867124240

`A000204(n+1)%A001612(A109613(n))`
-/

namespace A154699.P4042859072867124240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000204 (n + 1)) (A001612 (A109613 n).toNat)

end

end A154699.P4042859072867124240

namespace A154699

/-- `A000204(n+1)%A001612(A109613(n))` -/
def P4042859072867124240.Spec : Prop :=
  ∀ n, P4042859072867124240.a n = A154699 n

end A154699

/-! ## A154699.P9621387857022311797

`A014217(n+1)-A000032(n)*A000035(n)`
-/

namespace A154699.P9621387857022311797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014217 (n + 1) - A000032 n * A000035 n

end

end A154699.P9621387857022311797

namespace A154699

/-- `A014217(n+1)-A000032(n)*A000035(n)` -/
def P9621387857022311797.Spec : Prop :=
  ∀ n, P9621387857022311797.a n = A154699 n

end A154699

/-! ## A154699.P12994628444607792037

`A014217(n+1)-A000035(n)*A014217(n)`
-/

namespace A154699.P12994628444607792037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014217 (n + 1) - A000035 n * A014217 n

end

end A154699.P12994628444607792037

namespace A154699

/-- `A014217(n+1)-A000035(n)*A014217(n)` -/
def P12994628444607792037.Spec : Prop :=
  ∀ n, P12994628444607792037.a n = A154699 n

end A154699

/-! ## A154699.P9568961710572898420

`A014217(n+1)-A014217(n)*A059841(n+1)`
-/

namespace A154699.P9568961710572898420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014217 (n + 1) - A014217 n * A059841 (n + 1)

end

end A154699.P9568961710572898420

namespace A154699

/-- `A014217(n+1)-A014217(n)*A059841(n+1)` -/
def P9568961710572898420.Spec : Prop :=
  ∀ n, P9568961710572898420.a n = A154699 n

end A154699

/-! ## A154699.P15506911290220094882

`floor(sqrt(A000032(2*xor(1, n))))`
-/

namespace A154699.P15506911290220094882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A000032 (2 * Nat.xor 1 n))

end

end A154699.P15506911290220094882

namespace A154699

/-- `floor(sqrt(A000032(2*xor(1, n))))` -/
def P15506911290220094882.Spec : Prop :=
  ∀ n, P15506911290220094882.a n = A154699 n

end A154699

