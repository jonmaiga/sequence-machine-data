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
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C032
import Seq.B000.C034
import Seq.B000.C036
import Seq.B000.C038
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C008
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B003.C004
import Seq.B004.C000
import Seq.B005.C000
import Seq.B005.C001
import Seq.B005.C002
import Seq.B006.C000
import Seq.B007.C000
import Seq.B007.C001
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
import Seq.Opaque.C021
import Seq.Opaque.C022
import Seq.Opaque.C023
import Seq.Opaque.C024

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A112000: One half of third column (k=2) of triangle A111999.

The programs for A112000, there is no canonical definition to state claims against.
-/

/-! ## A112000.P4559752882145162279

`A111999(A167614(n+1))/2`
-/

namespace A112000.P4559752882145162279
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A111999 (A167614 (n + 1)).toNat : ℚ) / 2

end

end A112000.P4559752882145162279

/-! ## A112000.P17821450811530117236

`A111999(A055998(n)+6)/2`
-/

namespace A112000.P17821450811530117236
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A111999 (A055998 n + 6).toNat : ℚ) / 2

end

end A112000.P17821450811530117236

/-! ## A112000.P3242071954857988958

`A000907(n+1)/A280560(n+1)`
-/

namespace A112000.P3242071954857988958
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000907 (n + 1) : ℚ) / (A280560 (n + 1) : ℚ)

end

end A112000.P3242071954857988958

/-! ## A112000.P14148180920505018773

`A000907(n+1)/A176742(A016933(n))`
-/

namespace A112000.P14148180920505018773
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000907 (n + 1) : ℚ) / (A176742 (A016933 n).toNat : ℚ)

end

end A112000.P14148180920505018773

/-! ## A112000.P15501547736556883150

`2^A008683(A020483(n))*A111999(A167614(n+1))`
-/

namespace A112000.P15501547736556883150
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A008683 (A020483 n).toNat : ℤ) * (A111999 (A167614 (n + 1)).toNat : ℚ)

end

end A112000.P15501547736556883150

/-!
# A112001: One fourth of fourth column (k=3) of triangle A111999.

The programs for A112001, there is no canonical definition to state claims against.
-/

/-! ## A112001.P15864277333715041434

`A111999(A167614(n+2)+1)/4`
-/

namespace A112001.P15864277333715041434
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A111999 (A167614 (n + 2) + 1).toNat : ℚ) / 4

end

end A112001.P15864277333715041434

/-!
# A112002: Seventh diagonal of triangle A008275 (Stirling1) and seventh column of |A008276|.

The programs for A112002, there is no canonical definition to state claims against.
-/

/-! ## A112002.P15651202006346500016

`A008276(A056119(n)+28)`
-/

namespace A112002.P15651202006346500016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008276 (A056119 n + 28).toNat

end

end A112002.P15651202006346500016

/-! ## A112002.P13961241858562629052

`A094638(A052905(n+3)+12)`
-/

namespace A112002.P13961241858562629052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094638 (A052905 (n + 3) + 12).toNat

end

end A112002.P13961241858562629052

/-! ## A112002.P4088883927424872656

`A008276(Δ[A023551(n+1)]+13)`
-/

namespace A112002.P4088883927424872656
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023551 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008276 (f1 (n + 1) - f1 n + 13).toNat

end

end A112002.P4088883927424872656

/-! ## A112002.P3277952847928382390

`A008275(A055999(n+4))`
-/

namespace A112002.P3277952847928382390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008275 (A055999 (n + 4)).toNat

end

end A112002.P3277952847928382390

/-! ## A112002.P3181744501269895535

`A130534(eq[6, A025581(n)])`
-/

namespace A112002.P3181744501269895535
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130534 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A112002.P3181744501269895535

/-! ## A112002.P6573186370931232566

`A008275(Δ[A023551(n+2)])`
-/

namespace A112002.P6573186370931232566
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023551 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008275 (f1 (n + 1) - f1 n).toNat

end

end A112002.P6573186370931232566

/-! ## A112002.P8186329080239354152

`A130534(eq[7, A004736(n+1)])`
-/

namespace A112002.P8186329080239354152
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130534 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A112002.P8186329080239354152

/-!
# A112006: A logarithmic transform of the Fibonacci numbers A000045.

The programs for A112006, there is no canonical definition to state claims against.
-/

/-! ## A112006.P17517852089108495055

`ceil(∑[A121894(n+1)/7])`
-/

namespace A112006.P17517852089108495055
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A121894 (n + 1) : ℚ) / 7

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈∑ j ∈ Finset.range (n + 1), f1 j⌉

end

end A112006.P17517852089108495055

/-! ## A112006.P17002487694521814435

`eq[A076198(n+3), A341156(n+6)]`
-/

namespace A112006.P17002487694521814435
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076198 (n + 3)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341156 (n + 6)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A112006.P17002487694521814435

/-!
# A112007: Coefficient triangle for polynomials used for o.g.f.s for unsigned Stirling1 diagonals.

The programs for A112007, there is no canonical definition to state claims against.
-/

/-! ## A112007.P17016236180612938819

`A163936(comp[∑[n]])`
-/

namespace A112007.P17016236180612938819
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163936 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A112007.P17016236180612938819

/-! ## A112007.P1066108410039353981

`A288874(comp[∑[n]])`
-/

namespace A112007.P1066108410039353981
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288874 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A112007.P1066108410039353981

/-! ## A112007.P14757898867516736406

`A008517(A038722(n+1))`
-/

namespace A112007.P14757898867516736406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008517 (A038722 (n + 1)).toNat

end

end A112007.P14757898867516736406

/-! ## A112007.P12940278791353644048

`A008517(A061579(n)+1)`
-/

namespace A112007.P12940278791353644048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008517 (A061579 n + 1).toNat

end

end A112007.P12940278791353644048

/-! ## A112007.P12267932668104861386

`A156529(n)/A008517(n+1)`
-/

namespace A112007.P12267932668104861386
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A156529 n : ℚ) / (A008517 (n + 1) : ℚ)

end

end A112007.P12267932668104861386

/-! ## A112007.P5177732592500466045

`A288874(comp[A000217(n)])%A132407(n+1)`
-/

namespace A112007.P5177732592500466045
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A288874 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)) (A132407 (n + 1))

end

end A112007.P5177732592500466045

/-! ## A112007.P1374734942380412951

`A201637(A380649(n+1))`
-/

namespace A112007.P1374734942380412951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201637 (A380649 (n + 1)).toNat

end

end A112007.P1374734942380412951

/-!
# A112008: Fourth diagonal of second-order Eulerian triangle A008517. Fourth column (m=3) of triangle A112007.

The programs for A112008, the canonical program `A112008.P10946631168994066137` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A112008 has offset 0).

The definition of A112008 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A112008.P10946631168994066137

`(n+7)*a(n-1)+(n+1)*A002539(n)` with `a(0)=1`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A112008

/-- `(n+7)*a(n-1)+(n+1)*A002539(n)` -/
def P10946631168994066137.Spec : Prop :=
  ∀ n, P10946631168994066137.a n = A112008 n

theorem P10946631168994066137.correct : P10946631168994066137.Spec := by
  intro n
  simp only [A112008]

end A112008

/-! ## A112008.P18334566259346206282

`record[A008517(A019304(n))]`
-/

namespace A112008.P18334566259346206282
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008517 (A019304 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A112008.P18334566259346206282

namespace A112008

/-- `record[A008517(A019304(n))]` -/
def P18334566259346206282.Spec : Prop :=
  ∀ n, P18334566259346206282.a n = A112008 n

end A112008

/-! ## A112008.P14255643599124392814

`record[A201637(A052905(n))]`
-/

namespace A112008.P14255643599124392814
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201637 (A052905 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A112008.P14255643599124392814

namespace A112008

/-- `record[A201637(A052905(n))]` -/
def P14255643599124392814.Spec : Prop :=
  ∀ n, P14255643599124392814.a n = A112008 n

end A112008

/-! ## A112008.P15091050753179885079

`A008517(A141214(n+1))`
-/

namespace A112008.P15091050753179885079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008517 (A141214 (n + 1)).toNat

end

end A112008.P15091050753179885079

namespace A112008

/-- `A008517(A141214(n+1))` -/
def P15091050753179885079.Spec : Prop :=
  ∀ n, P15091050753179885079.a n = A112008 n

end A112008

/-! ## A112008.P8054502984198032224

`A008517(A055998(n+2))`
-/

namespace A112008.P8054502984198032224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008517 (A055998 (n + 2)).toNat

end

end A112008.P8054502984198032224

namespace A112008

/-- `A008517(A055998(n+2))` -/
def P8054502984198032224.Spec : Prop :=
  ∀ n, P8054502984198032224.a n = A112008 n

end A112008

/-!
# A112011: Numbers m with even length such that phi(m)=phi(d_1^d_2)*phi(d_3^d_4) *...*phi(d_(k-1)^d_k) where d_1 d_2 ... d_k is the decimal expansion of m.

The programs for A112011, there is no canonical definition to state claims against.
-/

/-! ## A112011.P12267995369263598057

`A112010(n+1)%A190471(A135896(3*n+2))`
-/

namespace A112011.P12267995369263598057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A112010 (n + 1)) (A190471 (A135896 (3 * n + 2)).toNat)

end

end A112011.P12267995369263598057

/-!
# A112012: Numbers n such that there exists at least one number j and pi(m) = d_1 d_2 ... d_j*d_(j+1) d_(j+2) ... d_k where d_1 d_2 ...d_k is the decimal expansion of n.

The programs for A112012, there is no canonical definition to state claims against.
-/

/-! ## A112012.P764584511689117037

`A097221(ceil(log(A080456(3^n))))`
-/

namespace A112012.P764584511689117037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097221 ⌈Real.log (A080456 (3 ^ n) : ℝ)⌉.toNat

end

end A112012.P764584511689117037

/-! ## A112012.P7352378434859285162

`A097221(A299150(n+1)!+n)`
-/

namespace A112012.P7352378434859285162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097221 (Nat.factorial (A299150 (n + 1)).toNat + n)

end

end A112012.P7352378434859285162

/-!
# A112013: Primes p such that there exists at least one number j and pi(p)= d_1 d_2 ... d_j*d_(j+1) d_(j+2) ... d_k where d_1 d_2 ...d_k is the decimal expansion of p.

The programs for A112013, there is no canonical definition to state claims against.
-/

/-! ## A112013.P14348310095118690333

`p?[A112012(n+1)]`
-/

namespace A112013.P14348310095118690333
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112012 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A112013.P14348310095118690333

/-! ## A112013.P13079868748140203084

`p?[record[A112012(A028920(n))]]`
-/

namespace A112013.P13079868748140203084
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112012 (A028920 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A112013.P13079868748140203084

/-! ## A112013.P7680966954803904952

`record[A020639(A112012(n+2))]`
-/

namespace A112013.P7680966954803904952
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A112012 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A112013.P7680966954803904952

/-!
# A112014: Numbers m with odd length such that m = d_1+(d_2^d_3)+ ...+(d_(k-1)^d_k) where d_1 d_2 ... d_k is the decimal expansion of m.

The programs for A112014, there is no canonical definition to state claims against.
-/

/-! ## A112014.P6569877406178997147

`A046469(A250409(n+1))`
-/

namespace A112014.P6569877406178997147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046469 (A250409 (n + 1)).toNat

end

end A112014.P6569877406178997147

/-! ## A112014.P5077533461532067813

`A046469(A250410(n+1))`
-/

namespace A112014.P5077533461532067813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046469 (A250410 (n + 1)).toNat

end

end A112014.P5077533461532067813

/-! ## A112014.P7847174963725391010

`A046469(A250411(n+1))`
-/

namespace A112014.P7847174963725391010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046469 (A250411 (n + 1)).toNat

end

end A112014.P7847174963725391010

/-! ## A112014.P4162035432289404085

`A046469(A185293(n)+A057889(n))`
-/

namespace A112014.P4162035432289404085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046469 (A185293 n + A057889 n).toNat

end

end A112014.P4162035432289404085

/-! ## A112014.P6996093320581608014

`A046469(lt[A082216(n), A176541(2*n+3)])`
-/

namespace A112014.P6996093320581608014
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082216 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176541 (2 * n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046469 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A112014.P6996093320581608014

/-!
# A112017: Composite solutions of the form 4k+3 of the equation (*): sigma(phi(sigma(x)))=phi(sigma(phi(x))).

The programs for A112017, there is no canonical definition to state claims against.
-/

/-! ## A112017.P6287032015225307692

`∩[or(3, A067160(n+1)), A067160(n+1)]`
-/

namespace A112017.P6287032015225307692
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 3 (A067160 (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067160 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A112017.P6287032015225307692

/-! ## A112017.P2833274013857161522

`filter[A067160(n+1), A359162(#)]`
-/

namespace A112017.P2833274013857161522
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067160 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359162 (f1 j).toNat = 1) n)

end

end A112017.P2833274013857161522

/-!
# A112019: a(n) = Sum_{k=0..n} binomial(n,k) * binomial(n+k,k)^2.

The programs for A112019, there is no canonical definition to state claims against.
-/

/-! ## A112019.P14988958018868501545

`A005408(A001003(n)*A010763(n))`
-/

namespace A112019.P14988958018868501545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 (A001003 n * A010763 n).toNat

end

end A112019.P14988958018868501545

/-!
# A112020: Number of partitions of n into distinct semiprimes.

The programs for A112020, there is no canonical definition to state claims against.
-/

/-! ## A112020.P12306996074040829295

`A334566(4^A357236(n))`
-/

namespace A112020.P12306996074040829295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334566 (SequenceMachineLib.roundAway ((4 : ℚ) ^ (A357236 n : ℤ))).toNat

end

end A112020.P12306996074040829295

/-! ## A112020.P8673005213021805677

`A344447(5^A357236(n))`
-/

namespace A112020.P8673005213021805677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344447 (SequenceMachineLib.roundAway ((5 : ℚ) ^ (A357236 n : ℤ))).toNat

end

end A112020.P8673005213021805677

/-! ## A112020.P2684549670828285516

`A357180(12*A357236(n))`
-/

namespace A112020.P2684549670828285516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357180 (12 * A357236 n).toNat

end

end A112020.P2684549670828285516

/-! ## A112020.P9272754033493953301

`A352517(16*A357236(n))`
-/

namespace A112020.P9272754033493953301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352517 (16 * A357236 n).toNat

end

end A112020.P9272754033493953301

/-! ## A112020.P10370777374418287892

`A352517(A357236(n)²²)`
-/

namespace A112020.P10370777374418287892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352517 ((A357236 n ^ 2) ^ 2).toNat

end

end A112020.P10370777374418287892

/-!
# A112021: Number of partitions of n into Chen primes.

The programs for A112021, there is no canonical definition to state claims against.
-/

/-! ## A112021.P11951827379144352152

`Δ[A034891(n)%A090788(n+1)]`
-/

namespace A112021.P11951827379144352152
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A034891 n) (A090788 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A112021.P11951827379144352152

/-! ## A112021.P16169311030641484599

`Δ[A034891(n)]%A179913(n+1)`
-/

namespace A112021.P16169311030641484599
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034891 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (n + 1) - f1 n) (A179913 (n + 1))

end

end A112021.P16169311030641484599

/-! ## A112021.P14050281100924840571

`A000607(A373403(2*(n+2))+n)`
-/

namespace A112021.P14050281100924840571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000607 (A373403 (2 * (n + 2)) + (n : ℤ)).toNat

end

end A112021.P14050281100924840571

/-! ## A112021.P15039183459710734072

`A000607(A333768(2*n+3)+n)`
-/

namespace A112021.P15039183459710734072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000607 (A333768 (2 * n + 3) + (n : ℤ)).toNat

end

end A112021.P15039183459710734072

/-! ## A112021.P9764249606242498307

`A000607(A356224(2*n+5)+n)`
-/

namespace A112021.P9764249606242498307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000607 (A356224 (2 * n + 5) + (n : ℤ)).toNat

end

end A112021.P9764249606242498307

/-!
# A112022: Number of partitions of n into distinct Chen primes.

The programs for A112022, there is no canonical definition to state claims against.
-/

/-! ## A112022.P10169558121828014186

`A358011(n)-A185274(A192541(n+4))`
-/

namespace A112022.P10169558121828014186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358011 n - A185274 (A192541 (n + 4)).toNat

end

end A112022.P10169558121828014186

/-! ## A112022.P1018441084137769115

`A046675(n)+2*A184172(n)-A185274(A192541(n+4))`
-/

namespace A112022.P1018441084137769115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046675 n + 2 * A184172 n - A185274 (A192541 (n + 4)).toNat

end

end A112022.P1018441084137769115

/-! ## A112022.P17991022162249324445

`A000586(n)-A056594(A209837(n+1))`
-/

namespace A112022.P17991022162249324445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000586 n - A056594 (A209837 (n + 1)).toNat

end

end A112022.P17991022162249324445

/-! ## A112022.P11023913543972482242

`A056594(A209837(n+1)+2)+A000586(n)`
-/

namespace A112022.P11023913543972482242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056594 (A209837 (n + 1) + 2).toNat + A000586 n

end

end A112022.P11023913543972482242

/-!
# A112024: Number of cents in U.S. currency in 2005.

The programs for A112024, there is no canonical definition to state claims against.
-/

/-! ## A112024.P17127965063487121242

`record[A166635(record[A318509(n+1)])]`
-/

namespace A112024.P17127965063487121242
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318509 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166635 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A112024.P17127965063487121242

/-! ## A112024.P9665406041463083328

`A133020(Δ[n²]+round(sqrt(n)))`
-/

namespace A112024.P9665406041463083328
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133020 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) + SequenceMachineLib.roundAway (Real.sqrt (n : ℝ))).toNat

end

end A112024.P9665406041463083328

/-! ## A112024.P11466634665832620979

`A018767(A080036(comp[∑[n-1]])-2)`
-/

namespace A112024.P11466634665832620979
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018767 (A080036 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n) - 2).toNat

end

end A112024.P11466634665832620979

/-! ## A112024.P9735028978941271671

`A018767(A061358(n)+A018252(n+1))`
-/

namespace A112024.P9735028978941271671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018767 (A061358 n + A018252 (n + 1)).toNat

end

end A112024.P9735028978941271671

/-!
# A112028: a(n) = Sum_{k=0..n} binomial(n+k,k)^3.

The programs for A112028, there is no canonical definition to state claims against.
-/

/-! ## A112028.P12070608590476256988

`A375178(n+1)`
-/

namespace A112028.P12070608590476256988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375178 (n + 1)

end

end A112028.P12070608590476256988

/-! ## A112028.P13308224895820966076

`∑[abs(Δ[A375178(n)])]`
-/

namespace A112028.P13308224895820966076
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375178 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f2 (n + 1) - f2 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A112028.P13308224895820966076

/-! ## A112028.P12901246881950695263

`record[A375178(A176298(n))]`
-/

namespace A112028.P12901246881950695263
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375178 (A176298 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A112028.P12901246881950695263

/-! ## A112028.P5861285975213318306

`record[A375178(A286626(n))]`
-/

namespace A112028.P5861285975213318306
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375178 (A286626 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A112028.P5861285975213318306

/-! ## A112028.P354105841198511627

`record[Δ[A375178(A218254(n))]]`
-/

namespace A112028.P354105841198511627
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375178 (A218254 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A112028.P354105841198511627

/-!
# A112029: a(n) = Sum_{k=0..n} binomial(n+k, k)^2.

The programs for A112029, there is no canonical definition to state claims against.
-/

/-! ## A112029.P7101294659868912078

`A333592(n+1)-A001700(n)²`
-/

namespace A112029.P7101294659868912078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333592 (n + 1) - A001700 n ^ 2

end

end A112029.P7101294659868912078

/-! ## A112029.P9716202446007003831

`A333592(n+1)-A126930(2*n+1)²`
-/

namespace A112029.P9716202446007003831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333592 (n + 1) - A126930 (2 * n + 1) ^ 2

end

end A112029.P9716202446007003831

/-! ## A112029.P12679066685940319300

`A110197(∑[4*n])`
-/

namespace A112029.P12679066685940319300
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110197 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A112029.P12679066685940319300

/-! ## A112029.P5969778523906592783

`A119307(∑[4*n])`
-/

namespace A112029.P5969778523906592783
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119307 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A112029.P5969778523906592783

/-! ## A112029.P8559213401642609680

`record[A119307(A007590(A141310(n)))]`
-/

namespace A112029.P8559213401642609680
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119307 (A007590 (A141310 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A112029.P8559213401642609680

/-! ## A112029.P3573170791997597491

`record[A119307(A286147(A286147(n)))]`
-/

namespace A112029.P3573170791997597491
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119307 (A286147 (A286147 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A112029.P3573170791997597491

/-! ## A112029.P13991090402400173267

`A173774(n+1)/A240530(n+1)`
-/

namespace A112029.P13991090402400173267
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A173774 (n + 1) : ℚ) / (A240530 (n + 1) : ℚ)

end

end A112029.P13991090402400173267

/-! ## A112029.P9192906557569381029

`record[A119307(A249738(A002522(n)))]`
-/

namespace A112029.P9192906557569381029
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119307 (A249738 (A002522 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A112029.P9192906557569381029

/-!
# A112030: a(n) = (2 + (-1)^n) * (-1)^floor(n/2).

The programs for A112030, the canonical program `A112030.P11219923946407832318` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A112030 has offset 0).

The definition of A112030 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A112030.P11219923946407832318

`(2+(-1)^n)*(-1)^floor(n/2)`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A112030

/-- `(2+(-1)^n)*(-1)^floor(n/2)` -/
def P11219923946407832318.Spec : Prop :=
  ∀ n, P11219923946407832318.a n = (A112030 n : ℚ)

end A112030

/-!
# A112031: Numerator of 3/4 + 1/4 - 3/8 - 1/8 + 3/16 + 1/16 - 3/32 - 1/32 + 3/64 + ....

The programs for A112031, the canonical program `A112031.P6496589879404675534` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A112031 has offset 0).

The definition of A112031 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A112031.P6496589879404675534

`a(n-2)+2*a(n-4)` with `a(0)=3, a(1)=1, a(2)=5, a(3)=1`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A112031

/-- `a(n-2)+2*a(n-4)` -/
def P6496589879404675534.Spec : Prop :=
  ∀ n, (P6496589879404675534.a n : ℤ) = A112031 n

theorem P6496589879404675534.correct : P6496589879404675534.Spec := by
  intro n
  simp only [A112031]

end A112031

/-! ## A112031.P6374769860635149581

`(2^(floor(n/2)+2+(-1)^n)+(-1)^floor(n/2))/3`
-/

namespace A112031.P6374769860635149581
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((2 : ℚ) ^ (⌊(n : ℚ) / 2⌋ + 2 + (-1) ^ n : ℤ) + (-1 : ℚ) ^ (⌊(n : ℚ) / 2⌋ : ℤ)) / 3

end

end A112031.P6374769860635149581

namespace A112031

/-- `(2^(floor(n/2)+2+(-1)^n)+(-1)^floor(n/2))/3` -/
def P6374769860635149581.Spec : Prop :=
  ∀ n, P6374769860635149581.a n = (A112031 n : ℚ)

end A112031

/-! ## A112031.P3644879996561536947

`ogf((3+x+2x^2)/(1-x^2-2x^4))`
-/

namespace A112031.P3644879996561536947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [3, 1, 2] [1, 0, -1, 0, -2] n

end

end A112031.P3644879996561536947

namespace A112031

/-- `ogf((3+x+2x^2)/(1-x^2-2x^4))` -/
def P3644879996561536947.Spec : Prop :=
  ∀ n, P3644879996561536947.a n = A112031 n

end A112031

/-! ## A112031.P11502258634018003384

`abs(∏[2/a(n-1)]-a(n-1))` with `a(0)=3`
-/

namespace A112031.P11502258634018003384
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [3] fun n f1 =>
  2 / f1 (n - 1)

def a : ℕ → ℚ := SequenceMachineLib.rec [3] fun n a =>
  |∏ j ∈ Finset.range (n + 1), f1 j - a (n - 1)|

end

end A112031.P11502258634018003384

namespace A112031

/-- `abs(∏[2/a(n-1)]-a(n-1))` -/
def P11502258634018003384.Spec : Prop :=
  ∀ n, P11502258634018003384.a n = (A112031 n : ℚ)

end A112031

/-! ## A112031.P10485013915451540314

`a(n-4)+a(n-2)+a(n-4)` with `a(0)=3, a(1)=1, a(2)=5, a(3)=1`
-/

namespace A112031.P10485013915451540314
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [3, 1, 5, 1] fun n a =>
  a (n - 4) + (a (n - 2) + a (n - 4))

end

end A112031.P10485013915451540314

namespace A112031

/-- `a(n-4)+a(n-2)+a(n-4)` -/
def P10485013915451540314.Spec : Prop :=
  ∀ n, (P10485013915451540314.a n : ℤ) = A112031 n

end A112031

/-! ## A112031.P11575264871583574664

`A112447(xor(1, n)+1)`
-/

namespace A112031.P11575264871583574664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112447 (Nat.xor 1 n + 1)

end

end A112031.P11575264871583574664

namespace A112031

/-- `A112447(xor(1, n)+1)` -/
def P11575264871583574664.Spec : Prop :=
  ∀ n, P11575264871583574664.a n = A112031 n

end A112031

/-! ## A112031.P3319561410177782129

`A001045(∑[1-a(n-1)])` with `a(0)=3`
-/

namespace A112031.P3319561410177782129
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [3] fun n f1 =>
  1 - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001045 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A112031.P3319561410177782129

namespace A112031

/-- `A001045(∑[1-a(n-1)])` -/
def P3319561410177782129.Spec : Prop :=
  ∀ n, P3319561410177782129.a n = A112031 n

end A112031

/-! ## A112031.P16843234730824506110

`A001045(A084964(n)+1)`
-/

namespace A112031.P16843234730824506110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001045 (A084964 n + 1).toNat

end

end A112031.P16843234730824506110

namespace A112031

/-- `A001045(A084964(n)+1)` -/
def P16843234730824506110.Spec : Prop :=
  ∀ n, P16843234730824506110.a n = A112031 n

end A112031

/-! ## A112031.P7644136288518354429

`A112447(A014681(n+1))`
-/

namespace A112031.P7644136288518354429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112447 (A014681 (n + 1)).toNat

end

end A112031.P7644136288518354429

namespace A112031

/-- `A112447(A014681(n+1))` -/
def P7644136288518354429.Spec : Prop :=
  ∀ n, P7644136288518354429.a n = A112031 n

end A112031

/-! ## A112031.P8380852398721286803

`A112447(A103889(n+1))`
-/

namespace A112031.P8380852398721286803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112447 (A103889 (n + 1)).toNat

end

end A112031.P8380852398721286803

namespace A112031

/-- `A112447(A103889(n+1))` -/
def P8380852398721286803.Spec : Prop :=
  ∀ n, P8380852398721286803.a n = A112031 n

end A112031

/-! ## A112031.P3412709072711204249

`A001045(A097065(n)+2)`
-/

namespace A112031.P3412709072711204249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001045 (A097065 n + 2).toNat

end

end A112031.P3412709072711204249

namespace A112031

/-- `A001045(A097065(n)+2)` -/
def P3412709072711204249.Spec : Prop :=
  ∀ n, P3412709072711204249.a n = A112031 n

end A112031

/-! ## A112031.P17333883109726293535

`A001045(A166517(n)+1-n)`
-/

namespace A112031.P17333883109726293535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001045 (A166517 n + (1 - (n : ℤ))).toNat

end

end A112031.P17333883109726293535

namespace A112031

/-- `A001045(A166517(n)+1-n)` -/
def P17333883109726293535.Spec : Prop :=
  ∀ n, P17333883109726293535.a n = A112031 n

end A112031

/-! ## A112031.P473601109260529813

`A001045(1-(n-A166517(n)))`
-/

namespace A112031.P473601109260529813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001045 (1 - ((n : ℤ) - A166517 n)).toNat

end

end A112031.P473601109260529813

namespace A112031

/-- `A001045(1-(n-A166517(n)))` -/
def P473601109260529813.Spec : Prop :=
  ∀ n, P473601109260529813.a n = A112031 n

end A112031

/-! ## A112031.P13471217632504760408

`A001045(A084964(A084964(2*n)))`
-/

namespace A112031.P13471217632504760408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001045 (A084964 (A084964 (2 * n)).toNat).toNat

end

end A112031.P13471217632504760408

namespace A112031

/-- `A001045(A084964(A084964(2*n)))` -/
def P13471217632504760408.Spec : Prop :=
  ∀ n, P13471217632504760408.a n = A112031 n

end A112031

/-! ## A112031.P12811495037851306089

`A112447(A065169(n+1))`
-/

namespace A112031.P12811495037851306089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112447 (A065169 (n + 1)).toNat

end

end A112031.P12811495037851306089

namespace A112031

/-- `A112447(A065169(n+1))` -/
def P12811495037851306089.Spec : Prop :=
  ∀ n, P12811495037851306089.a n = A112031 n

end A112031

/-! ## A112031.P13585531485959365800

`A073370(A111074(n))`
-/

namespace A112031.P13585531485959365800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073370 (A111074 n).toNat

end

end A112031.P13585531485959365800

namespace A112031

/-- `A073370(A111074(n))` -/
def P13585531485959365800.Spec : Prop :=
  ∀ n, P13585531485959365800.a n = A112031 n

end A112031

/-!
# A112032: Denominator of 3/4 + 1/4 - 3/8 - 1/8 + 3/16 + 1/16 - 3/32 - 1/32 + 3/64 ...

The programs for A112032, the canonical program `A112032.P18209959968358149438` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A112032 has offset 0).

The definition of A112032 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A112032.P18209959968358149438

`2^(floor(n/2)+1+(-1)^n)`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A112032

/-- `2^(floor(n/2)+1+(-1)^n)` -/
def P18209959968358149438.Spec : Prop :=
  ∀ n, P18209959968358149438.a n = (A112032 n : ℚ)

end A112032

/-! ## A112032.P761029709172314801

`ogf((4+x)/(1-2x^2))`
-/

namespace A112032.P761029709172314801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [4, 1] [1, 0, -2] n

end

end A112032.P761029709172314801

namespace A112032

/-- `ogf((4+x)/(1-2x^2))` -/
def P761029709172314801.Spec : Prop :=
  ∀ n, P761029709172314801.a n = A112032 n

end A112032

/-! ## A112032.P4085742671468511444

`2*a(n-2)` with `a(0)=4, a(1)=1`
-/

namespace A112032.P4085742671468511444
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [4, 1] fun n a =>
  2 * a (n - 2)

end

end A112032.P4085742671468511444

namespace A112032

/-- `2*a(n-2)` -/
def P4085742671468511444.Spec : Prop :=
  ∀ n, (P4085742671468511444.a n : ℤ) = A112032 n

end A112032

/-! ## A112032.P10258945773556314586

`a(n-2)/sqrt(1/4)` with `a(0)=4, a(1)=1`
-/

namespace A112032.P10258945773556314586
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.rec [4, 1] fun n a =>
  a (n - 2) / Real.sqrt ((1 : ℚ) / 4 : ℝ)

end

end A112032.P10258945773556314586

namespace A112032

/-- `a(n-2)/sqrt(1/4)` -/
def P10258945773556314586.Spec : Prop :=
  ∀ n, P10258945773556314586.a n = (A112032 n : ℝ)

end A112032

/-! ## A112032.P10251384987988654231

`a(n-2)+a(n-2)` with `a(0)=4, a(1)=1`
-/

namespace A112032.P10251384987988654231
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [4, 1] fun n a =>
  a (n - 2) + a (n - 2)

end

end A112032.P10251384987988654231

namespace A112032

/-- `a(n-2)+a(n-2)` -/
def P10251384987988654231.Spec : Prop :=
  ∀ n, (P10251384987988654231.a n : ℤ) = A112032 n

end A112032

/-! ## A112032.P14643132922426083867

`1-floor(1-a(n-2)-a(n-2))` with `a(0)=4, a(1)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A112032.P14643132922426083867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [4, 1] fun n a =>
  1 - (1 - a (n - 2) - a (n - 2))

end

end A112032.P14643132922426083867

namespace A112032

/-- `1-floor(1-a(n-2)-a(n-2))` -/
def P14643132922426083867.Spec : Prop :=
  ∀ n, P14643132922426083867.a n = A112032 n

end A112032

/-! ## A112032.P4362582585325744127

`1-((1-a(n-2))%a(n-2)-a(n-2))` with `a(0)=4, a(1)=1`
-/

namespace A112032.P4362582585325744127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [4, 1] fun n a =>
  1 - (Int.tmod (1 - a (n - 2)) (a (n - 2)) - a (n - 2))

end

end A112032.P4362582585325744127

namespace A112032

/-- `1-((1-a(n-2))%a(n-2)-a(n-2))` -/
def P4362582585325744127.Spec : Prop :=
  ∀ n, P4362582585325744127.a n = A112032 n

end A112032

/-! ## A112032.P2638026319066221355

`1-(gcd(3, a(n-1))-a(n-2)-a(n-2))` with `a(0)=4, a(1)=1`
-/

namespace A112032.P2638026319066221355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [4, 1] fun n a =>
  1 - ((Int.gcd 3 (a (n - 1)) : ℤ) - a (n - 2) - a (n - 2))

end

end A112032.P2638026319066221355

namespace A112032

/-- `1-(gcd(3, a(n-1))-a(n-2)-a(n-2))` -/
def P2638026319066221355.Spec : Prop :=
  ∀ n, P2638026319066221355.a n = A112032 n

end A112032

/-! ## A112032.P12096358817759724061

`A143095(xor(1, n))`
-/

namespace A112032.P12096358817759724061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143095 (Nat.xor 1 n)

end

end A112032.P12096358817759724061

namespace A112032

/-- `A143095(xor(1, n))` -/
def P12096358817759724061.Spec : Prop :=
  ∀ n, P12096358817759724061.a n = A112032 n

end A112032

/-! ## A112032.P13077124544845808928

`A135530(xor(1, n)+1)`
-/

namespace A112032.P13077124544845808928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135530 (Nat.xor 1 n + 1)

end

end A112032.P13077124544845808928

namespace A112032

/-- `A135530(xor(1, n)+1)` -/
def P13077124544845808928.Spec : Prop :=
  ∀ n, P13077124544845808928.a n = A112032 n

end A112032

/-! ## A112032.P1202223236857530193

`gcd(2, n)*A135530(n)`
-/

namespace A112032.P1202223236857530193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.gcd 2 n : ℤ) * A135530 n

end

end A112032.P1202223236857530193

namespace A112032

/-- `gcd(2, n)*A135530(n)` -/
def P1202223236857530193.Spec : Prop :=
  ∀ n, P1202223236857530193.a n = A112032 n

end A112032

/-! ## A112032.P15812095649790542845

`A000079(A084964(n))`
-/

namespace A112032.P15812095649790542845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (A084964 n).toNat

end

end A112032.P15812095649790542845

namespace A112032

/-- `A000079(A084964(n))` -/
def P15812095649790542845.Spec : Prop :=
  ∀ n, P15812095649790542845.a n = A112032 n

end A112032

/-! ## A112032.P8023969812048686829

`A143095(A004442(n))`
-/

namespace A112032.P8023969812048686829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143095 (A004442 n).toNat

end

end A112032.P8023969812048686829

namespace A112032

/-- `A143095(A004442(n))` -/
def P8023969812048686829.Spec : Prop :=
  ∀ n, P8023969812048686829.a n = A112032 n

end A112032

/-! ## A112032.P8075539506269548427

`A060546(A165754(n))`
-/

namespace A112032.P8075539506269548427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060546 (A165754 n).toNat

end

end A112032.P8075539506269548427

namespace A112032

/-- `A060546(A165754(n))` -/
def P8075539506269548427.Spec : Prop :=
  ∀ n, P8075539506269548427.a n = A112032 n

end A112032

/-! ## A112032.P2962511540334767785

`A135530(A004442(n)+1)`
-/

namespace A112032.P2962511540334767785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135530 (A004442 n + 1).toNat

end

end A112032.P2962511540334767785

namespace A112032

/-- `A135530(A004442(n)+1)` -/
def P2962511540334767785.Spec : Prop :=
  ∀ n, P2962511540334767785.a n = A112032 n

end A112032

/-! ## A112032.P16356700067150674795

`A135530(A014681(n+1))`
-/

namespace A112032.P16356700067150674795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135530 (A014681 (n + 1)).toNat

end

end A112032.P16356700067150674795

namespace A112032

/-- `A135530(A014681(n+1))` -/
def P16356700067150674795.Spec : Prop :=
  ∀ n, P16356700067150674795.a n = A112032 n

end A112032

/-! ## A112032.P11731423971076574722

`A016116(A168195(n+1))`
-/

namespace A112032.P11731423971076574722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016116 (A168195 (n + 1)).toNat

end

end A112032.P11731423971076574722

namespace A112032

/-- `A016116(A168195(n+1))` -/
def P11731423971076574722.Spec : Prop :=
  ∀ n, P11731423971076574722.a n = A112032 n

end A112032

/-! ## A112032.P7413230893594526502

`A135530(A103889(n+1))`
-/

namespace A112032.P7413230893594526502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135530 (A103889 (n + 1)).toNat

end

end A112032.P7413230893594526502

namespace A112032

/-- `A135530(A103889(n+1))` -/
def P7413230893594526502.Spec : Prop :=
  ∀ n, P7413230893594526502.a n = A112032 n

end A112032

/-! ## A112032.P17730624889097515442

`A000079(A267182(n+1))`
-/

namespace A112032.P17730624889097515442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (A267182 (n + 1)).toNat

end

end A112032.P17730624889097515442

namespace A112032

/-- `A000079(A267182(n+1))` -/
def P17730624889097515442.Spec : Prop :=
  ∀ n, P17730624889097515442.a n = A112032 n

end A112032

/-! ## A112032.P5155154012516491568

`A173862(A147677(n+1))`
-/

namespace A112032.P5155154012516491568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173862 (A147677 (n + 1)).toNat

end

end A112032.P5155154012516491568

namespace A112032

/-- `A173862(A147677(n+1))` -/
def P5155154012516491568.Spec : Prop :=
  ∀ n, P5155154012516491568.a n = A112032 n

end A112032

/-!
# A112033: a(n) = 3 * 2^(floor(n/2) + 1 + (-1)^n).

The programs for A112033, the canonical program `A112033.P18173082752187273025` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A112033 has offset 0).

The definition of A112033 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A112033.P18173082752187273025

`2*a(n-2)` with `a(0)=12, a(1)=3`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A112033

/-- `2*a(n-2)` -/
def P18173082752187273025.Spec : Prop :=
  ∀ n, (P18173082752187273025.a n : ℤ) = A112033 n

theorem P18173082752187273025.correct : P18173082752187273025.Spec := by
  intro n
  simp only [A112033]

end A112033

/-! ## A112033.P5909609262058582749

`3*2^(floor(n/2)+1+(-1)^n)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A112033.P5909609262058582749
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  3 * (2 : ℚ) ^ (⌊(n : ℚ) / 2⌋ + 1 + (-1) ^ n : ℤ)

end

end A112033.P5909609262058582749

namespace A112033

/-- `3*2^(floor(n/2)+1+(-1)^n)` -/
def P5909609262058582749.Spec : Prop :=
  ∀ n, P5909609262058582749.a n = (A112033 n : ℚ)

end A112033

/-! ## A112033.P14153804719192415413

`ogf((12+3x)/(1-2x^2))`
-/

namespace A112033.P14153804719192415413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [12, 3] [1, 0, -2] n

end

end A112033.P14153804719192415413

namespace A112033

/-- `ogf((12+3x)/(1-2x^2))` -/
def P14153804719192415413.Spec : Prop :=
  ∀ n, P14153804719192415413.a n = A112033 n

end A112033

/-! ## A112033.P14761298456824042222

`a(n-2)+a(n-2)` with `a(0)=12, a(1)=3`
-/

namespace A112033.P14761298456824042222
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [12, 3] fun n a =>
  a (n - 2) + a (n - 2)

end

end A112033.P14761298456824042222

namespace A112033

/-- `a(n-2)+a(n-2)` -/
def P14761298456824042222.Spec : Prop :=
  ∀ n, (P14761298456824042222.a n : ℤ) = A112033 n

theorem P14761298456824042222.correct : P14761298456824042222.Spec := by
  intro n
  simp only [A112033, Nat.add_sub_cancel, A112033.P14761298456824042222.a, A112033.P18173082752187273025.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A112033

/-! ## A112033.P12007519975259786866

`A007283(A084964(n))`
-/

namespace A112033.P12007519975259786866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007283 (A084964 n).toNat

end

end A112033.P12007519975259786866

namespace A112033

/-- `A007283(A084964(n))` -/
def P12007519975259786866.Spec : Prop :=
  ∀ n, P12007519975259786866.a n = A112033 n

end A112033

/-! ## A112033.P924003861299053337

`A007283(A267182(n+1))`
-/

namespace A112033.P924003861299053337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007283 (A267182 (n + 1)).toNat

end

end A112033.P924003861299053337

namespace A112033

/-- `A007283(A267182(n+1))` -/
def P924003861299053337.Spec : Prop :=
  ∀ n, P924003861299053337.a n = A112033 n

end A112033

/-! ## A112033.P9959312014888267559

`A164090(A176355(n)+n)`
-/

namespace A112033.P9959312014888267559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164090 (A176355 n + (n : ℤ)).toNat

end

end A112033.P9959312014888267559

namespace A112033

/-- `A164090(A176355(n)+n)` -/
def P9959312014888267559.Spec : Prop :=
  ∀ n, P9959312014888267559.a n = A112033 n

end A112033

/-! ## A112033.P16683843841145068749

`A007283(A166517(n)-n)`
-/

namespace A112033.P16683843841145068749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007283 (A166517 n - (n : ℤ)).toNat

end

end A112033.P16683843841145068749

namespace A112033

/-- `A007283(A166517(n)-n)` -/
def P16683843841145068749.Spec : Prop :=
  ∀ n, P16683843841145068749.a n = A112033 n

end A112033

/-! ## A112033.P16470850785029507124

`lcm(A040007(n), A112032(n))`
-/

namespace A112033.P16470850785029507124
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A040007 n) (A112032 n)

end

end A112033.P16470850785029507124

namespace A112033

/-- `lcm(A040007(n), A112032(n))` -/
def P16470850785029507124.Spec : Prop :=
  ∀ n, (P16470850785029507124.a n : ℤ) = A112033 n

end A112033

/-! ## A112033.P17836160887882010131

`A042950(∑[A168330(n+1)])`
-/

namespace A112033.P17836160887882010131
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168330 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042950 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A112033.P17836160887882010131

namespace A112033

/-- `A042950(∑[A168330(n+1)])` -/
def P17836160887882010131.Spec : Prop :=
  ∀ n, P17836160887882010131.a n = A112033 n

end A112033

/-! ## A112033.P9812797414452066511

`A112032(n+2)+A112032(n)`
-/

namespace A112033.P9812797414452066511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112032 (n + 2) + A112032 n

end

end A112033.P9812797414452066511

namespace A112033

/-- `A112032(n+2)+A112032(n)` -/
def P9812797414452066511.Spec : Prop :=
  ∀ n, P9812797414452066511.a n = A112033 n

end A112033

/-! ## A112033.P7052613250916095692

`A042950(A028242(A168330(n+1)+n+1))`
-/

namespace A112033.P7052613250916095692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042950 (A028242 (A168330 (n + 1) + (n + 1 : ℤ)).toNat).toNat

end

end A112033.P7052613250916095692

namespace A112033

/-- `A042950(A028242(A168330(n+1)+n+1))` -/
def P7052613250916095692.Spec : Prop :=
  ∀ n, P7052613250916095692.a n = A112033 n

end A112033

/-! ## A112033.P6461463310384846807

`A081808(n+1)/A164587(n+1)`
-/

namespace A112033.P6461463310384846807
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A081808 (n + 1) : ℚ) / (A164587 (n + 1) : ℚ)

end

end A112033.P6461463310384846807

namespace A112033

/-- `A081808(n+1)/A164587(n+1)` -/
def P6461463310384846807.Spec : Prop :=
  ∀ n, P6461463310384846807.a n = (A112033 n : ℚ)

end A112033

/-!
# A112034: 1 / (A010684(n)/A016116(n+5) - 1/A112033(n)).

The programs for A112034, there is no canonical definition to state claims against.
-/

/-! ## A112034.P12210244140275926956

`A007283(A052938(n)%A273947(n+5))`
-/

namespace A112034.P12210244140275926956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007283 (Int.tmod (A052938 n) (A273947 (n + 5))).toNat

end

end A112034.P12210244140275926956

/-! ## A112034.P13030234305894870975

`A007947(A090989(n+1))*A163978(n+1)`
-/

namespace A112034.P13030234305894870975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (A090989 (n + 1)).toNat * A163978 (n + 1)

end

end A112034.P13030234305894870975

/-! ## A112034.P14409404224767502890

`A000265(A090989(n+1))*A090989(n+2)`
-/

namespace A112034.P14409404224767502890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A090989 (n + 1)).toNat * A090989 (n + 2)

end

end A112034.P14409404224767502890

/-! ## A112034.P1156463440695367651

`A007947(A163978(n+2))*A163978(n+1)`
-/

namespace A112034.P1156463440695367651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (A163978 (n + 2)).toNat * A163978 (n + 1)

end

end A112034.P1156463440695367651

/-! ## A112034.P8940121473261598198

`6*A139251(A143095(n))`
-/

namespace A112034.P8940121473261598198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * A139251 (A143095 n).toNat

end

end A112034.P8940121473261598198

/-!
# A112037: Go through all of the primes p and for each one, factor p-1 into primes. List the primes in order of their first appearance in the p-1 factorizations.

The programs for A112037, there is no canonical definition to state claims against.
-/

/-! ## A112037.P6526768871601008086

`p?[A132948(n+1)]`
-/

namespace A112037.P6526768871601008086
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132948 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A112037.P6526768871601008086

/-! ## A112037.P8619067119316732291

`A023503(A071349(n+2))`
-/

namespace A112037.P8619067119316732291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023503 (A071349 (n + 2)).toNat

end

end A112037.P8619067119316732291

/-! ## A112037.P12467007285867636072

`filter[A132948(n+1), A010051(#)]`
-/

namespace A112037.P12467007285867636072
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132948 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A112037.P12467007285867636072

/-! ## A112037.P10453510604958673148

`A132948(A071349(n+1)+Δ[A071349(n+1)])`
-/

namespace A112037.P10453510604958673148
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071349 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132948 (A071349 (n + 1) + (f1 (n + 1) - f1 n)).toNat

end

end A112037.P10453510604958673148

/-! ## A112037.P8123502740105650297

`A006530(∏{p}[A006093(A071349(n+2)), #])`
-/

namespace A112037.P8123502740105650297
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006093 (A071349 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, p)

end

end A112037.P8123502740105650297

/-! ## A112037.P17581976850718093394

`A006530(2*A006093(A071349(n+2)))`
-/

namespace A112037.P17581976850718093394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (2 * A006093 (A071349 (n + 2)).toNat).toNat

end

end A112037.P17581976850718093394

/-! ## A112037.P13905605322646200198

`filter[A132948(n+2), A080339(#)]`
-/

namespace A112037.P13905605322646200198
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132948 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A080339 (f1 j).toNat = 1) n)

end

end A112037.P13905605322646200198

/-! ## A112037.P1902779590797520767

`A006530(record[A061026(A023503(n+2))-1])`
-/

namespace A112037.P1902779590797520767
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061026 (A023503 (n + 2)).toNat - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A112037.P1902779590797520767

/-! ## A112037.P1969673753625684207

`p?[A342038(n+2)]`
-/

namespace A112037.P1969673753625684207
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342038 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A112037.P1969673753625684207

/-! ## A112037.P1009968510867595190

`filter[A342038(n+2), A010051(#)]`
-/

namespace A112037.P1009968510867595190
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342038 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A112037.P1009968510867595190

/-! ## A112037.P4053806527964380035

`filter[A342038(n+3), A080339(#)]`
-/

namespace A112037.P4053806527964380035
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342038 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A080339 (f1 j).toNat = 1) n)

end

end A112037.P4053806527964380035

/-!
# A112038: The p values which produce new terms in A112037.

The programs for A112038, there is no canonical definition to state claims against.
-/

/-! ## A112038.P10214925868645418163

`A000040(A071349(n+2))`
-/

namespace A112038.P10214925868645418163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A071349 (n + 2)).toNat

end

end A112038.P10214925868645418163

/-! ## A112038.P5319982169916817716

`A034694(A112037(n+2))`
-/

namespace A112038.P5319982169916817716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034694 (A112037 (n + 2)).toNat

end

end A112038.P5319982169916817716

/-! ## A112038.P8039584971281641173

`record[A034694(A058256(n+1))]`
-/

namespace A112038.P8039584971281641173
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034694 (A058256 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A112038.P8039584971281641173

/-! ## A112038.P3005103062794629907

`record[A034694(A023503(n+2))]`
-/

namespace A112038.P3005103062794629907
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034694 (A023503 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A112038.P3005103062794629907

/-! ## A112038.P7898495500585889259

`p?[A006005(A071349(n+1))]`
-/

namespace A112038.P7898495500585889259
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006005 (A071349 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A112038.P7898495500585889259

/-! ## A112038.P5158887767409698481

`A034694(p?[A132948(n+1)])`
-/

namespace A112038.P5158887767409698481
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132948 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034694 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A112038.P5158887767409698481

/-! ## A112038.P2659602363848678965

`A061026(p?[A132948(n+1)])`
-/

namespace A112038.P2659602363848678965
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132948 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061026 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A112038.P2659602363848678965

/-! ## A112038.P127203456421490359

`A139317(p?[A132948(n+1)])`
-/

namespace A112038.P127203456421490359
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132948 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139317 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A112038.P127203456421490359

/-! ## A112038.P16018008742926219593

`record[A061026(A023503(n+3))]`
-/

namespace A112038.P16018008742926219593
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061026 (A023503 (n + 3)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A112038.P16018008742926219593

/-! ## A112038.P15275325216601940109

`A139317(p?[A112037(n+2)])`
-/

namespace A112038.P15275325216601940109
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112037 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139317 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A112038.P15275325216601940109

/-!
# A112039: Let b(0)=1/2, b(n) = b(n-1) + Prime[n]/2; a(n)=b(2*n).

The programs for A112039, the canonical program `A112039.P8022561423127945551` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A112039 has offset 1).

The definition of A112039 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007504, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A112039.P8022561423127945551

`(1+A007504(2*(n+1)))/2`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A112039

/-- `(1+A007504(2*(n+1)))/2` -/
def P8022561423127945551.Spec : Prop :=
  ∀ n, P8022561423127945551.a n = (A112039 (n + 1) : ℚ)

end A112039

/-! ## A112039.P5135534388170583239

`ceil(A109722(n+1)/2)`
-/

namespace A112039.P5135534388170583239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A109722 (n + 1) : ℚ) / 2⌉

end

end A112039.P5135534388170583239

namespace A112039

/-- `ceil(A109722(n+1)/2)` -/
def P5135534388170583239.Spec : Prop :=
  ∀ n, P5135534388170583239.a n = A112039 (n + 1)

end A112039

/-! ## A112039.P17429583933668886766

`∑[A162802(n+1)]+1`
-/

namespace A112039.P17429583933668886766
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162802 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A112039.P17429583933668886766

namespace A112039

/-- `∑[A162802(n+1)]+1` -/
def P17429583933668886766.Spec : Prop :=
  ∀ n, P17429583933668886766.a n = A112039 (n + 1)

end A112039

/-! ## A112039.P6244032865210987750

`∑[ceil(sqrt(A089581(n+1)))]`
-/

namespace A112039.P6244032865210987750
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (A089581 (n + 1) : ℝ)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A112039.P6244032865210987750

namespace A112039

/-- `∑[ceil(sqrt(A089581(n+1)))]` -/
def P6244032865210987750.Spec : Prop :=
  ∀ n, P6244032865210987750.a n = A112039 (n + 1)

end A112039

/-! ## A112039.P709801217841340606

`∑[ceil(sqrt(A116570(4*n)))]`
-/

namespace A112039.P709801217841340606
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (A116570 (4 * n) : ℝ)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A112039.P709801217841340606

namespace A112039

/-- `∑[ceil(sqrt(A116570(4*n)))]` -/
def P709801217841340606.Spec : Prop :=
  ∀ n, P709801217841340606.a n = A112039 (n + 1)

end A112039

/-!
# A112040: Terms in A112039 that are divisible by 3, divided by 3.

The programs for A112040, there is no canonical definition to state claims against.
-/

/-! ## A112040.P17620446094100350180

`eq[4, A037125(A016945(n))]`
-/

namespace A112040.P17620446094100350180
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037125 (A016945 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A112040.P17620446094100350180

/-! ## A112040.P7142296381885370169

`record[A260437(A109722(n+1))]`
-/

namespace A112040.P7142296381885370169
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260437 (A109722 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A112040.P7142296381885370169

/-! ## A112040.P18135655300501144899

`record[A260437(A007504(2*(n+1)))]`
-/

namespace A112040.P18135655300501144899
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260437 (A007504 (2 * (n + 1))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A112040.P18135655300501144899

/-! ## A112040.P9310525837249352302

`eq[A037125(A008458(n)), A054977(n)]`
-/

namespace A112040.P9310525837249352302
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037125 (A008458 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054977 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A112040.P9310525837249352302

/-! ## A112040.P7989655785043769833

`eq[A000007(n), A226520(A008458(n))]`
-/

namespace A112040.P7989655785043769833
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226520 (A008458 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A112040.P7989655785043769833

/-!
# A112042: Numbers k such that 1*k + 1, 3*k + 1, 9*k + 1, 27*k + 1, 81*k + 1 are all primes.

The programs for A112042, there is no canonical definition to state claims against.
-/

/-! ## A112042.P4155600287698947048

`filter[A112041(2*(n+1)), A188189(#)]`
-/

namespace A112042.P4155600287698947048
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112041 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A188189 (f1 j).toNat = 1) n)

end

end A112042.P4155600287698947048

/-!
# A112044: Let b(0)=1/2, b(n) = (b(n-1)+Prime[n])/2; sequence gives 2^(n+1)*b(n).

The programs for A112044, there is no canonical definition to state claims against.
-/

/-! ## A112044.P1535236842721677077

`A265127(n)+a(n-1)` with `a(0)=1`
-/

namespace A112044.P1535236842721677077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A265127 n + a (n - 1)

end

end A112044.P1535236842721677077

/-! ## A112044.P10900707115674833392

`∑[2^n*A008578(n+1)]`
-/

namespace A112044.P10900707115674833392
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) * A008578 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A112044.P10900707115674833392

/-! ## A112044.P18150413070460983411

`∑[2^n*A015919(n+1)]`
-/

namespace A112044.P18150413070460983411
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) * A015919 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A112044.P18150413070460983411

/-! ## A112044.P8923570354626136659

`∑[2^n*A064555(n+1)]`
-/

namespace A112044.P8923570354626136659
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) * A064555 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A112044.P8923570354626136659

/-! ## A112044.P14705297204920950529

`∑[2^n*A324050(n+1)]`
-/

namespace A112044.P14705297204920950529
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) * A324050 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A112044.P14705297204920950529

/-!
# A112045: Positions of primes (A000040) among nonsquares A000037.

The programs for A112045, the canonical program `A112045.P4691997246529510817` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A112045 has offset 1).

The definition of A112045 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A112045.P4691997246529510817

`A028391(A000040(n+1))`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A112045

/-- `A028391(A000040(n+1))` -/
def P4691997246529510817.Spec : Prop :=
  ∀ n, P4691997246529510817.a n = A112045 (n + 1)

theorem P4691997246529510817.correct : P4691997246529510817.Spec := by
  intro n
  simp only [A112045, Nat.add_sub_cancel]

end A112045

/-! ## A112045.P18132781510143003943

`A165994(n+1)+1`
-/

namespace A112045.P18132781510143003943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165994 (n + 1) + 1

end

end A112045.P18132781510143003943

namespace A112045

/-- `A165994(n+1)+1` -/
def P18132781510143003943.Spec : Prop :=
  ∀ n, P18132781510143003943.a n = A112045 (n + 1)

end A112045

/-! ## A112045.P582516793332921454

`A103416(n)+A014692(n+1)`
-/

namespace A112045.P582516793332921454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103416 n + A014692 (n + 1)

end

end A112045.P582516793332921454

namespace A112045

/-- `A103416(n)+A014692(n+1)` -/
def P582516793332921454.Spec : Prop :=
  ∀ n, P582516793332921454.a n = A112045 (n + 1)

end A112045

/-! ## A112045.P3907444009890299887

`A103355(n+1)+A014689(n+1)`
-/

namespace A112045.P3907444009890299887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103355 (n + 1) + A014689 (n + 1)

end

end A112045.P3907444009890299887

namespace A112045

/-- `A103355(n+1)+A014689(n+1)` -/
def P3907444009890299887.Spec : Prop :=
  ∀ n, P3907444009890299887.a n = A112045 (n + 1)

end A112045

/-! ## A112045.P2704263002307618177

`A014689(n+1)+A103416(n)+1`
-/

namespace A112045.P2704263002307618177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014689 (n + 1) + (A103416 n + 1)

end

end A112045.P2704263002307618177

namespace A112045

/-- `A014689(n+1)+A103416(n)+1` -/
def P2704263002307618177.Spec : Prop :=
  ∀ n, P2704263002307618177.a n = A112045 (n + 1)

end A112045

/-! ## A112045.P15728705862094658399

`A000040(n+1)-A000006(n+1)`
-/

namespace A112045.P15728705862094658399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) - A000006 (n + 1)

end

end A112045.P15728705862094658399

namespace A112045

/-- `A000040(n+1)-A000006(n+1)` -/
def P15728705862094658399.Spec : Prop :=
  ∀ n, P15728705862094658399.a n = A112045 (n + 1)

end A112045

/-! ## A112045.P7786231942049862819

`A008864(n+1)-A104103(n+1)`
-/

namespace A112045.P7786231942049862819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008864 (n + 1) - A104103 (n + 1)

end

end A112045.P7786231942049862819

namespace A112045

/-- `A008864(n+1)-A104103(n+1)` -/
def P7786231942049862819.Spec : Prop :=
  ∀ n, P7786231942049862819.a n = A112045 (n + 1)

end A112045

/-! ## A112045.P11741950206579658071

`A014688(n+1)-A161188(n+1)`
-/

namespace A112045.P11741950206579658071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014688 (n + 1) - A161188 (n + 1)

end

end A112045.P11741950206579658071

namespace A112045

/-- `A014688(n+1)-A161188(n+1)` -/
def P11741950206579658071.Spec : Prop :=
  ∀ n, P11741950206579658071.a n = A112045 (n + 1)

end A112045

/-! ## A112045.P12694332666614768980

`A000040(n+1)-∑[char[A038107(n)]]`
-/

namespace A112045.P12694332666614768980
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038107 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A112045.P12694332666614768980

namespace A112045

/-- `A000040(n+1)-∑[char[A038107(n)]]` -/
def P12694332666614768980.Spec : Prop :=
  ∀ n, P12694332666614768980.a n = A112045 (n + 1)

end A112045

/-! ## A112045.P9083348887800719260

`A065890(n+1)+A103355(n+1)+1`
-/

namespace A112045.P9083348887800719260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065890 (n + 1) + (A103355 (n + 1) + 1)

end

end A112045.P9083348887800719260

namespace A112045

/-- `A065890(n+1)+A103355(n+1)+1` -/
def P9083348887800719260.Spec : Prop :=
  ∀ n, P9083348887800719260.a n = A112045 (n + 1)

end A112045

/-! ## A112045.P4831690237133423567

`A006093(n+1)+1-A000006(n+1)`
-/

namespace A112045.P4831690237133423567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006093 (n + 1) + (1 - A000006 (n + 1))

end

end A112045.P4831690237133423567

namespace A112045

/-- `A006093(n+1)+1-A000006(n+1)` -/
def P4831690237133423567.Spec : Prop :=
  ∀ n, P4831690237133423567.a n = A112045 (n + 1)

end A112045

/-! ## A112045.P11184309763151732420

`A008864(n+1)-(A000006(n+1)+1)`
-/

namespace A112045.P11184309763151732420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008864 (n + 1) - (A000006 (n + 1) + 1)

end

end A112045.P11184309763151732420

namespace A112045

/-- `A008864(n+1)-(A000006(n+1)+1)` -/
def P11184309763151732420.Spec : Prop :=
  ∀ n, P11184309763151732420.a n = A112045 (n + 1)

end A112045

/-! ## A112045.P6000933348544533392

`A000040(n+1)+1-A104103(n+1)`
-/

namespace A112045.P6000933348544533392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) + (1 - A104103 (n + 1))

end

end A112045.P6000933348544533392

namespace A112045

/-- `A000040(n+1)+1-A104103(n+1)` -/
def P6000933348544533392.Spec : Prop :=
  ∀ n, P6000933348544533392.a n = A112045 (n + 1)

end A112045

/-! ## A112045.P12702010699980390416

`A095116(n+1)+1-A161188(n+1)`
-/

namespace A112045.P12702010699980390416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095116 (n + 1) + (1 - A161188 (n + 1))

end

end A112045.P12702010699980390416

namespace A112045

/-- `A095116(n+1)+1-A161188(n+1)` -/
def P12702010699980390416.Spec : Prop :=
  ∀ n, P12702010699980390416.a n = A112045 (n + 1)

end A112045

/-! ## A112045.P707721855740472341

`A040976(n+1)+2-A000006(n+1)`
-/

namespace A112045.P707721855740472341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040976 (n + 1) + (2 - A000006 (n + 1))

end

end A112045.P707721855740472341

namespace A112045

/-- `A040976(n+1)+2-A000006(n+1)` -/
def P707721855740472341.Spec : Prop :=
  ∀ n, P707721855740472341.a n = A112045 (n + 1)

end A112045

/-! ## A112045.P15614691421931935216

`A000040(n+1)-A096494(n+1)/2`
-/

namespace A112045.P15614691421931935216
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000040 (n + 1) : ℚ) - (A096494 (n + 1) : ℚ) / 2

end

end A112045.P15614691421931935216

namespace A112045

/-- `A000040(n+1)-A096494(n+1)/2` -/
def P15614691421931935216.Spec : Prop :=
  ∀ n, P15614691421931935216.a n = (A112045 (n + 1) : ℚ)

end A112045

/-! ## A112045.P15096889779106729422

`A100484(n+1)/2-A000006(n+1)`
-/

namespace A112045.P15096889779106729422
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A100484 (n + 1) : ℚ) / 2 - (A000006 (n + 1) : ℚ)

end

end A112045.P15096889779106729422

namespace A112045

/-- `A100484(n+1)/2-A000006(n+1)` -/
def P15096889779106729422.Spec : Prop :=
  ∀ n, P15096889779106729422.a n = (A112045 (n + 1) : ℚ)

end A112045

/-! ## A112045.P7293214856191534213

`A014692(n+1)-A000006(n+1)+n`
-/

namespace A112045.P7293214856191534213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014692 (n + 1) - A000006 (n + 1) + (n : ℤ)

end

end A112045.P7293214856191534213

namespace A112045

/-- `A014692(n+1)-A000006(n+1)+n` -/
def P7293214856191534213.Spec : Prop :=
  ∀ n, P7293214856191534213.a n = A112045 (n + 1)

end A112045

/-! ## A112045.P9550157338153585976

`A007504(n+1)-(A007504(n)+A000006(n+1))`
-/

namespace A112045.P9550157338153585976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 (n + 1) - (A007504 n + A000006 (n + 1))

end

end A112045.P9550157338153585976

namespace A112045

/-- `A007504(n+1)-(A007504(n)+A000006(n+1))` -/
def P9550157338153585976.Spec : Prop :=
  ∀ n, P9550157338153585976.a n = A112045 (n + 1)

end A112045

/-! ## A112045.P3108507175268092446

`A001749(n+1)-(A001748(n+1)+A000006(n+1))`
-/

namespace A112045.P3108507175268092446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001749 (n + 1) - (A001748 (n + 1) + A000006 (n + 1))

end

end A112045.P3108507175268092446

namespace A112045

/-- `A001749(n+1)-(A001748(n+1)+A000006(n+1))` -/
def P3108507175268092446.Spec : Prop :=
  ∀ n, P3108507175268092446.a n = A112045 (n + 1)

end A112045

/-!
# A112046: a(n) = the least k >= 1 for which the Jacobi symbol J(k,2n+1) is not +1 (thus is either 0 or -1).

The programs for A112046, there is no canonical definition to state claims against.
-/

/-! ## A112046.P11754704091036170642

`A000040(A112049(n+1))`
-/

namespace A112046.P11754704091036170642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A112049 (n + 1)).toNat

end

end A112046.P11754704091036170642

/-! ## A112046.P11720732229510877105

`A112050(n+1)+1`
-/

namespace A112046.P11720732229510877105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112050 (n + 1) + 1

end

end A112046.P11720732229510877105

/-! ## A112046.P12659541388586375491

`A227196(2*n+3)`
-/

namespace A112046.P12659541388586375491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227196 (2 * n + 3)

end

end A112046.P12659541388586375491

/-! ## A112046.P16086537928991879862

`p?[A227196(n+1)-and(1, n)]`
-/

namespace A112046.P16086537928991879862
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227196 (n + 1) - (Nat.land 1 n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A112046.P16086537928991879862

/-! ## A112046.P3814774589307525140

`A008578(A112049(n+1)+1)`
-/

namespace A112046.P3814774589307525140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (A112049 (n + 1) + 1).toNat

end

end A112046.P3814774589307525140

/-! ## A112046.P3568243090951657020

`A158611(A112049(n+1)+2)`
-/

namespace A112046.P3568243090951657020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158611 (A112049 (n + 1) + 2).toNat

end

end A112046.P3568243090951657020

/-! ## A112046.P764614181130881791

`A227195(2*n+3)+1`
-/

namespace A112046.P764614181130881791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227195 (2 * n + 3) + 1

end

end A112046.P764614181130881791

/-! ## A112046.P10405406687761812743

`A112049(A112051(A227196(n+3+n)))`
-/

namespace A112046.P10405406687761812743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112049 (A112051 (A227196 (n + 3 + n)).toNat).toNat

end

end A112046.P10405406687761812743

/-! ## A112046.P5913331062672487034

`A037126(A286465(n+2))`
-/

namespace A112046.P5913331062672487034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037126 (A286465 (n + 2)).toNat

end

end A112046.P5913331062672487034

/-! ## A112046.P14727925491520291976

`A037126(A286466(n+1))`
-/

namespace A112046.P14727925491520291976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037126 (A286466 (n + 1)).toNat

end

end A112046.P14727925491520291976

/-!
# A112047: Bisection of A112046.

The programs for A112047, there is no canonical definition to state claims against.
-/

/-! ## A112047.P9598998555251116069

`A112046(2*n+1)`
-/

namespace A112047.P9598998555251116069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112046 (2 * n + 1)

end

end A112047.P9598998555251116069

/-! ## A112047.P3914246026866702390

`A053761(2*(n+1))`
-/

namespace A112047.P3914246026866702390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053761 (2 * (n + 1))

end

end A112047.P3914246026866702390

/-! ## A112047.P12598334015039486339

`A227196(4*n+3)`
-/

namespace A112047.P12598334015039486339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227196 (4 * n + 3)

end

end A112047.P12598334015039486339

/-! ## A112047.P5471266776016385781

`A000040(A112049(comp[2*n]))`
-/

namespace A112047.P5471266776016385781
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A112049 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)).toNat

end

end A112047.P5471266776016385781

/-! ## A112047.P3298335080140140137

`A251758(A112046(n+1+n))`
-/

namespace A112047.P3298335080140140137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251758 (A112046 (n + 1 + n)).toNat

end

end A112047.P3298335080140140137

/-! ## A112047.P12549318277808646647

`A008578(A112049(2*n+1)+1)`
-/

namespace A112047.P12549318277808646647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (A112049 (2 * n + 1) + 1).toNat

end

end A112047.P12549318277808646647

/-! ## A112047.P804314181847456292

`A158611(A112049(2*n+1)+2)`
-/

namespace A112047.P804314181847456292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158611 (A112049 (2 * n + 1) + 2).toNat

end

end A112047.P804314181847456292

/-! ## A112047.P2243712317389527838

`A112048(n+1)-A112053(n+1)`
-/

namespace A112047.P2243712317389527838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112048 (n + 1) - A112053 (n + 1)

end

end A112047.P2243712317389527838

/-! ## A112047.P3707220703462784393

`A139637(A065380(A112049(2*n+1)))`
-/

namespace A112047.P3707220703462784393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139637 (A065380 (A112049 (2 * n + 1)).toNat).toNat

end

end A112047.P3707220703462784393

/-! ## A112047.P7428516794008615881

`A037126(A286466(2*n+1))`
-/

namespace A112047.P7428516794008615881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037126 (A286466 (2 * n + 1)).toNat

end

end A112047.P7428516794008615881

/-! ## A112047.P2844524767521870032

`A037126(A286465(2*(n+1)))`
-/

namespace A112047.P2844524767521870032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037126 (A286465 (2 * (n + 1))).toNat

end

end A112047.P2844524767521870032

/-!
# A112048: Bisection of A112046.

The programs for A112048, there is no canonical definition to state claims against.
-/

/-! ## A112048.P18072065192540741698

`A112046(2*(n+1))`
-/

namespace A112048.P18072065192540741698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112046 (2 * (n + 1))

end

end A112048.P18072065192540741698

/-! ## A112048.P17555577351395859082

`A227196(4*n+5)`
-/

namespace A112048.P17555577351395859082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227196 (4 * n + 5)

end

end A112048.P17555577351395859082

/-! ## A112048.P2792616876957923637

`p?[A227196(A016813(n))]`
-/

namespace A112048.P2792616876957923637
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227196 (A016813 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A112048.P2792616876957923637

/-! ## A112048.P17326903539011998685

`A227195(A016813(n+1))+1`
-/

namespace A112048.P17326903539011998685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227195 (A016813 (n + 1)).toNat + 1

end

end A112048.P17326903539011998685

/-! ## A112048.P9208219693372273291

`A000040(A112049(2*(n+1)))`
-/

namespace A112048.P9208219693372273291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A112049 (2 * (n + 1))).toNat

end

end A112048.P9208219693372273291

/-! ## A112048.P9693646314953541655

`A014963(A112046(n+2+n))`
-/

namespace A112048.P9693646314953541655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A112046 (n + 2 + n)).toNat

end

end A112048.P9693646314953541655

/-! ## A112048.P17236719159107965758

`A008578(A112049(2*(n+1))+1)`
-/

namespace A112048.P17236719159107965758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (A112049 (2 * (n + 1)) + 1).toNat

end

end A112048.P17236719159107965758

/-! ## A112048.P7161313465521780055

`A158611(A112049(2*(n+1))+2)`
-/

namespace A112048.P7161313465521780055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158611 (A112049 (2 * (n + 1)) + 2).toNat

end

end A112048.P7161313465521780055

/-! ## A112048.P1324781476869360012

`A112053(n+1)+A112047(n+1)`
-/

namespace A112048.P1324781476869360012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112053 (n + 1) + A112047 (n + 1)

end

end A112048.P1324781476869360012

/-! ## A112048.P13352226232608242184

`A112053(n+1)+A112046(Δ[n²])`
-/

namespace A112048.P13352226232608242184
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112053 (n + 1) + A112046 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A112048.P13352226232608242184

/-! ## A112048.P2254769003172144587

`A000027(A112046(n+2+n)+1)-1`
-/

namespace A112048.P2254769003172144587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A112046 (n + 2 + n) + 1).toNat - 1

end

end A112048.P2254769003172144587

/-! ## A112048.P15999027082164397497

`A112053(n+1)+A053761(2*(n+1))`
-/

namespace A112048.P15999027082164397497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112053 (n + 1) + A053761 (2 * (n + 1))

end

end A112048.P15999027082164397497

/-!
# A112049: a(n) = position of A112046(n) in A000040.

The programs for A112049, there is no canonical definition to state claims against.
-/

/-! ## A112049.P7536069782883239602

`A049084(A112046(n+1))`
-/

namespace A112049.P7536069782883239602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049084 (A112046 (n + 1)).toNat

end

end A112049.P7536069782883239602

/-! ## A112049.P6012952381530448149

`A066328(A112046(n+1)²)`
-/

namespace A112049.P6012952381530448149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066328 (A112046 (n + 1) ^ 2).toNat

end

end A112049.P6012952381530448149

/-! ## A112049.P2270086893040904571

`A219109(A112046(n+1)+1)`
-/

namespace A112049.P2270086893040904571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219109 (A112046 (n + 1) + 1).toNat

end

end A112049.P2270086893040904571

/-! ## A112049.P14302481796908540901

`A066328(and(-1, A112046(n+1)))`
-/

namespace A112049.P14302481796908540901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066328 (Int.land (-1) (A112046 (n + 1))).toNat

end

end A112049.P14302481796908540901

/-! ## A112049.P4360360409279557974

`A002260(A286465(n+2))`
-/

namespace A112049.P4360360409279557974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (A286465 (n + 2)).toNat

end

end A112049.P4360360409279557974

/-! ## A112049.P7253915376630969157

`A002260(A286466(n+1))`
-/

namespace A112049.P7253915376630969157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (A286466 (n + 1)).toNat

end

end A112049.P7253915376630969157

/-! ## A112049.P12091106402850845850

`A001462(A112050(n+1))`
-/

namespace A112049.P12091106402850845850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001462 (A112050 (n + 1)).toNat

end

end A112049.P12091106402850845850

/-! ## A112049.P17807154904546778561

`A061395(A112050(n+1)+1)`
-/

namespace A112049.P17807154904546778561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (A112050 (n + 1) + 1).toNat

end

end A112049.P17807154904546778561

/-! ## A112049.P7706856121269773319

`A257993(A316724(n+1))`
-/

namespace A112049.P7706856121269773319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257993 (A316724 (n + 1)).toNat

end

end A112049.P7706856121269773319

/-!
# A112050: Length of the longest prefix of 1's in the Jacobi-vector {J(2n+1,1),J(2n+1,2),...,J(2n+1,2n)}.

The programs for A112050, there is no canonical definition to state claims against.
-/

/-! ## A112050.P12789575187917993484

`A112046(n+1)-1`
-/

namespace A112050.P12789575187917993484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112046 (n + 1) - 1

end

end A112050.P12789575187917993484

/-! ## A112050.P13664088384490949999

`A227195(2*n+3)`
-/

namespace A112050.P13664088384490949999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227195 (2 * n + 3)

end

end A112050.P13664088384490949999

/-! ## A112050.P7786002657034278037

`A227196(2*n+3)-1`
-/

namespace A112050.P7786002657034278037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227196 (2 * n + 3) - 1

end

end A112050.P7786002657034278037

/-! ## A112050.P16960430948474875420

`p?[A227196(n+1)-and(1, n)]-1`
-/

namespace A112050.P16960430948474875420
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227196 (n + 1) - (Nat.land 1 n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - 1

end

end A112050.P16960430948474875420

/-! ## A112050.P16749174517677658724

`A000010(A112046(n+1))`
-/

namespace A112050.P16749174517677658724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A112046 (n + 1)).toNat

end

end A112050.P16749174517677658724

/-! ## A112050.P5225545940674886082

`A002088(A112049(n+1))`
-/

namespace A112050.P5225545940674886082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002088 (A112049 (n + 1)).toNat

end

end A112050.P5225545940674886082

/-! ## A112050.P10605428761990485095

`A251758(A112046(n+1)²)`
-/

namespace A112050.P10605428761990485095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251758 (A112046 (n + 1) ^ 2).toNat

end

end A112050.P10605428761990485095

/-! ## A112050.P6514230300120395173

`A037126(A286466(n+1))-1`
-/

namespace A112050.P6514230300120395173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037126 (A286466 (n + 1)).toNat - 1

end

end A112050.P6514230300120395173

/-! ## A112050.P12984659017426111176

`A037126(A286465(n+2))-1`
-/

namespace A112050.P12984659017426111176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037126 (A286465 (n + 2)).toNat - 1

end

end A112050.P12984659017426111176

/-! ## A112050.P3085791376739091340

`A000010(A227196(2*n+3))`
-/

namespace A112050.P3085791376739091340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A227196 (2 * n + 3)).toNat

end

end A112050.P3085791376739091340

/-! ## A112050.P16659293161918831396

`A033879(p?[A227196(2*n+1)])`
-/

namespace A112050.P16659293161918831396
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227196 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033879 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A112050.P16659293161918831396

/-! ## A112050.P2757825119093350341

`A057237(p?[A227196(2*n+1)])`
-/

namespace A112050.P2757825119093350341
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227196 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057237 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A112050.P2757825119093350341

/-! ## A112050.P4631110478508592262

`A008578(A112049(n+1)+1)-1`
-/

namespace A112050.P4631110478508592262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (A112049 (n + 1) + 1).toNat - 1

end

end A112050.P4631110478508592262

/-! ## A112050.P5117698217924576162

`A158611(A112049(n+1)+2)-1`
-/

namespace A112050.P5117698217924576162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158611 (A112049 (n + 1) + 2).toNat - 1

end

end A112050.P5117698217924576162

/-! ## A112050.P6230778447441490546

`A030494(n+1)%A112046(n+1)`
-/

namespace A112050.P6230778447441490546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A030494 (n + 1)) (A112046 (n + 1))

end

end A112050.P6230778447441490546

/-! ## A112050.P6788535013571447630

`A060232(n+1)%A112046(n+1)`
-/

namespace A112050.P6788535013571447630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A060232 (n + 1)) (A112046 (n + 1))

end

end A112050.P6788535013571447630

/-! ## A112050.P5318219718054513538

`A072828(n+1)%A112046(n+1)`
-/

namespace A112050.P5318219718054513538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A072828 (n + 1)) (A112046 (n + 1))

end

end A112050.P5318219718054513538

/-! ## A112050.P1663061701156615087

`A107023(n+1)%A112046(n+1)`
-/

namespace A112050.P1663061701156615087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A107023 (n + 1)) (A112046 (n + 1))

end

end A112050.P1663061701156615087

/-! ## A112050.P16936974278314797013

`A121934(n+1)%A112046(n+1)`
-/

namespace A112050.P16936974278314797013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A121934 (n + 1)) (A112046 (n + 1))

end

end A112050.P16936974278314797013

/-! ## A112050.P15258401987758989551

`A127229(n+5)%A112046(n+1)`
-/

namespace A112050.P15258401987758989551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A127229 (n + 5)) (A112046 (n + 1))

end

end A112050.P15258401987758989551

/-!
# A112051: a(1)=1, a(n) = first index i (> a(n-1)), where A112046(i) gets a value distinct from any values A112046(1)..A112046(a(n-1)).

The programs for A112051, there is no canonical definition to state claims against.
-/

/-! ## A112051.P7814129785682977866

`(p?[round(8*n/7)]²-C(2, ceil((n/2)²))-1)/2`
-/

namespace A112051.P7814129785682977866
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (8 * ((n : ℚ) / 7))

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) ^ 2 - (Nat.choose 2 ⌈((n : ℚ) / 2) ^ 2⌉.toNat : ℤ) - 1 : ℚ) / 2

end

end A112051.P7814129785682977866

/-! ## A112051.P10892603952602353639

`eq[1, A286579(n+1)]+1`
-/

namespace A112051.P10892603952602353639
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286579 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A112051.P10892603952602353639

/-! ## A112051.P7148456463596014237

`floor(sqrt(A297492(n+1)/20))`
-/

namespace A112051.P7148456463596014237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.sqrt ((A297492 (n + 1) : ℚ) / 20 : ℝ)⌋

end

end A112051.P7148456463596014237

/-! ## A112051.P6087967317806523973

`A110494(n+1)-round(ratio[(n+2)²])`
-/

namespace A112051.P6087967317806523973
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 2) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110494 (n + 1) - SequenceMachineLib.roundAway ((f1 (n + 1) : ℚ) / (f1 n : ℚ))

end

end A112051.P6087967317806523973

/-! ## A112051.P1523402517521823893

`ceil((A001248(n+1)-(C(2, n)+2))/2)`
-/

namespace A112051.P1523402517521823893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A001248 (n + 1) - (Nat.choose 2 n + 2 : ℤ) : ℚ) / 2⌉

end

end A112051.P1523402517521823893

/-!
# A112052: a(n) = 2*A112051(n)+1.

The programs for A112052, there is no canonical definition to state claims against.
-/

/-! ## A112052.P14510762579783123601

`2*A112051(n+1)+1`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A112052.P14510762579783123601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A112051 (n + 1) + 1

end

end A112052.P14510762579783123601

/-! ## A112052.P5817511062018010429

`A005408(A112051(n+1))`
-/

namespace A112052.P5817511062018010429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 (A112051 (n + 1)).toNat

end

end A112052.P5817511062018010429

/-! ## A112052.P18358710363849408000

`p?[round(8*n/7)]²-C(2, ceil((n/2)²))`
-/

namespace A112052.P18358710363849408000
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (8 * ((n : ℚ) / 7))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) ^ 2 - (Nat.choose 2 ⌈((n : ℚ) / 2) ^ 2⌉.toNat : ℤ)

end

end A112052.P18358710363849408000

/-! ## A112052.P5522330082863149844

`p?[round(8*n/7)]²-(2^ceil(n/2))%4`
-/

namespace A112052.P5522330082863149844
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (8 * ((n : ℚ) / 7))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) ^ 2 - Int.tmod (SequenceMachineLib.roundAway ((2 : ℚ) ^ (⌈(n : ℚ) / 2⌉ : ℤ))) 4

end

end A112052.P5522330082863149844

/-! ## A112052.P18390577220914100979

`A305897(4*A112051(n+1))`
-/

namespace A112052.P18390577220914100979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305897 (4 * A112051 (n + 1)).toNat

end

end A112052.P18390577220914100979

/-!
# A112053: a(n) = A112046(2n) - A112046(2n-1) = A112048(n) - A112047(n).

The programs for A112053, there is no canonical definition to state claims against.
-/

/-! ## A112053.P1042180702187132256

`A112046(2*(n+1))-A112046(2*(n+1)-1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A112053.P1042180702187132256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112046 (2 * (n + 1)) - A112046 (2 * (n + 1) - 1)

end

end A112053.P1042180702187132256

/-! ## A112053.P9096206661642931911

`A112048(n+1)-A112047(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A112053.P9096206661642931911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112048 (n + 1) - A112047 (n + 1)

end

end A112053.P9096206661642931911

/-! ## A112053.P16685099670386377830

`A000040(A112049(2*(n+1)))-A000040(A112049(2*n+1))`
-/

namespace A112053.P16685099670386377830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A112049 (2 * (n + 1))).toNat - A000040 (A112049 (2 * n + 1)).toNat

end

end A112053.P16685099670386377830

/-! ## A112053.P5086752936083669295

`A014963(A112046(n+2+n))-A014963(A112046(n+1+n))`
-/

namespace A112053.P5086752936083669295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A112046 (n + 2 + n)).toNat - A014963 (A112046 (n + 1 + n)).toNat

end

end A112053.P5086752936083669295

/-! ## A112053.P12941059675885068586

`A112046(2*(n+1))+A033999(2*n+1)*A112046(2*n+1)`
-/

namespace A112053.P12941059675885068586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112046 (2 * (n + 1)) + A033999 (2 * n + 1) * A112046 (2 * n + 1)

end

end A112053.P12941059675885068586

/-! ## A112053.P2182806420425921766

`∑{d}[n+1, A112080(#)*A185015((n+1)/#-1)]`
-/

namespace A112053.P2182806420425921766
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A112080 d * A185015 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ) - 1)).toNat

end

end A112053.P2182806420425921766

/-! ## A112053.P2909553694703390639

`A112048(n+1)-A053761(2*(n+1))`
-/

namespace A112053.P2909553694703390639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112048 (n + 1) - A053761 (2 * (n + 1))

end

end A112053.P2909553694703390639

/-! ## A112053.P17627482587872702070

`A112046(2*(n+1))-A112047(n+1)`
-/

namespace A112053.P17627482587872702070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112046 (2 * (n + 1)) - A112047 (n + 1)

end

end A112053.P17627482587872702070

/-! ## A112053.P2193542818127146169

`A112048(n+1)-A112046(2*n+1)`
-/

namespace A112053.P2193542818127146169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112048 (n + 1) - A112046 (2 * n + 1)

end

end A112053.P2193542818127146169

/-! ## A112053.P17226628471191956608

`A112048(A059029(n+1))-A014963(A112046(n+1+n))`
-/

namespace A112053.P17226628471191956608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112048 (A059029 (n + 1)).toNat - A014963 (A112046 (n + 1 + n)).toNat

end

end A112053.P17226628471191956608

/-!
# A112054: Indices where A112053 is not zero.

The programs for A112054, there is no canonical definition to state claims against.
-/

/-! ## A112054.P12998740532784302885

`6*A112055(n+1)`
-/

namespace A112054.P12998740532784302885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * A112055 (n + 1)

end

end A112054.P12998740532784302885

/-! ## A112054.P18054847515110730798

`lt[1, A112053(n+1)²]+1`
-/

namespace A112054.P18054847515110730798
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112053 (n + 1) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A112054.P18054847515110730798

/-! ## A112054.P10094219075515641689

`2*3*A112055(-xor(n, -1))`
-/

namespace A112054.P10094219075515641689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (3 * A112055 (-Int.xor (n : ℤ) (-1)).toNat)

end

end A112054.P10094219075515641689

/-! ## A112054.P10988124466160146832

`∑[6*A112085(abs(1-n)+1)]`
-/

namespace A112054.P10988124466160146832
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * A112085 (|1 - (n : ℤ)| + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A112054.P10988124466160146832

/-! ## A112054.P14331689903119187714

`6*(comp[A112082(n+1)-1]+1)`
-/

namespace A112054.P14331689903119187714
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112082 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6 * (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1)

end

end A112054.P14331689903119187714

/-! ## A112054.P1326581361044985942

`6*(comp[eq[0, A112080(n+1)]]+1)`
-/

namespace A112054.P1326581361044985942
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112080 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6 * (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + 1)

end

end A112054.P1326581361044985942

/-! ## A112054.P4424605914622624408

`A008458(A112055(n+1))`
-/

namespace A112054.P4424605914622624408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 (A112055 (n + 1)).toNat

end

end A112054.P4424605914622624408

/-! ## A112054.P17693997393107383983

`6*(∑[A112085(A028310(n))]+1)`
-/

namespace A112054.P17693997393107383983
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112085 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A112054.P17693997393107383983

/-! ## A112054.P13797916024174634199

`6*∑[A112085(A000038(n)+n)]`
-/

namespace A112054.P13797916024174634199
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112085 (A000038 n + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A112054.P13797916024174634199

/-! ## A112054.P7333077785464939773

`A230628(A112055(n+1)²)/A112055(n+1)`
-/

namespace A112054.P7333077785464939773
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A230628 (A112055 (n + 1) ^ 2).toNat : ℚ) / (A112055 (n + 1) : ℚ)

end

end A112054.P7333077785464939773

/-!
# A112055: a(n) = A112054(n)/6.

The programs for A112055, there is no canonical definition to state claims against.
-/

/-! ## A112055.P16764137593541336714

`A112054(n+1)/6`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A112055.P16764137593541336714
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A112054 (n + 1) : ℚ) / 6

end

end A112055.P16764137593541336714

/-! ## A112055.P16142196819693413249

`A112085(n)+a(n-1)` with `a(0)=2`
-/

namespace A112055.P16142196819693413249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A112085 n + a (n - 1)

end

end A112055.P16142196819693413249

/-! ## A112055.P7571474989352324913

`∑[A112085(abs(1-n)+1)]`
-/

namespace A112055.P7571474989352324913
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112085 (|1 - (n : ℤ)| + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A112055.P7571474989352324913

/-! ## A112055.P5837507852073826392

`comp[A112082(n+1)-1]+1`
-/

namespace A112055.P5837507852073826392
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112082 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A112055.P5837507852073826392

/-! ## A112055.P14976202609632574302

`lt[0, abs(A112080(n+1))]+1`
-/

namespace A112055.P14976202609632574302
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A112080 (n + 1)|

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A112055.P14976202609632574302

/-! ## A112055.P8865407128045461293

`∑[A112085(round(sqrt(n²+1)))]+1`
-/

namespace A112055.P8865407128045461293
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112085 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A112055.P8865407128045461293

/-! ## A112055.P18001340771511727637

`lt[0, A112053(A008458(n))²]`
-/

namespace A112055.P18001340771511727637
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112053 (A008458 n).toNat ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A112055.P18001340771511727637

/-! ## A112055.P12078048980687052666

`A020725(lt[1, abs(A112080(n+1))])`
-/

namespace A112055.P12078048980687052666
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A112080 (n + 1)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A112055.P12078048980687052666

/-! ## A112055.P11202780502981377740

`A020725(lt[1, A112080(n+1)²])`
-/

namespace A112055.P11202780502981377740
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112080 (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A112055.P11202780502981377740

/-! ## A112055.P17868302260671579342

`∑[gcd(4, A112085(A000038(n)+n))]`
-/

namespace A112055.P17868302260671579342
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 4 (A112085 (A000038 n + (n : ℤ)).toNat)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A112055.P17868302260671579342

/-!
# A112056: Odd numbers of the form 4n-1 for which Jacobi-first-non-one(4n-1) differs from Jacobi-first-non-one(4n+1).

The programs for A112056, there is no canonical definition to state claims against.
-/

/-! ## A112056.P16846040807766911800

`A112058(n+1)-1`
-/

namespace A112056.P16846040807766911800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112058 (n + 1) - 1

end

end A112056.P16846040807766911800

/-! ## A112056.P12157937372318451755

`A112057(n+1)-2`
-/

namespace A112056.P12157937372318451755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112057 (n + 1) - 2

end

end A112056.P12157937372318451755

/-! ## A112056.P2920277414221003452

`4*A112054(n+1)-1`
-/

namespace A112056.P2920277414221003452
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A112054 (n + 1) - 1

end

end A112056.P2920277414221003452

/-! ## A112056.P13859445742682816350

`24*A112055(n+1)-1`
-/

namespace A112056.P13859445742682816350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  24 * A112055 (n + 1) - 1

end

end A112056.P13859445742682816350

/-! ## A112056.P2138607866375011400

`xor(1, A112058(-xor(n, -1)))-2`
-/

namespace A112056.P2138607866375011400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (A112058 (-Int.xor (n : ℤ) (-1)).toNat) - 2

end

end A112056.P2138607866375011400

/-!
# A112057: Odd numbers of the form 4n+1 for which Jacobi-first-non-one(4n-1) differs from Jacobi-first-non-one(4n+1).

The programs for A112057, there is no canonical definition to state claims against.
-/

/-! ## A112057.P6578248236648667145

`4*A112054(n+1)+1`
-/

namespace A112057.P6578248236648667145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A112054 (n + 1) + 1

end

end A112057.P6578248236648667145

/-! ## A112057.P17103222920511851716

`A112058(n+1)+1`
-/

namespace A112057.P17103222920511851716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112058 (n + 1) + 1

end

end A112057.P17103222920511851716

/-! ## A112057.P11384066031003051864

`A112056(n+1)+2`
-/

namespace A112057.P11384066031003051864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112056 (n + 1) + 2

end

end A112057.P11384066031003051864

/-! ## A112057.P14408177475695450992

`24*A112055(n+1)+1`
-/

namespace A112057.P14408177475695450992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  24 * A112055 (n + 1) + 1

end

end A112057.P14408177475695450992

/-! ## A112057.P7447577240365845533

`xor(1, A112058(-xor(n, -1)))`
-/

namespace A112057.P7447577240365845533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (A112058 (-Int.xor (n : ℤ) (-1)).toNat)

end

end A112057.P7447577240365845533

/-!
# A112058: Mean of A112056 and A112057.

The programs for A112058, there is no canonical definition to state claims against.
-/

/-! ## A112058.P17963769214426145264

`4*A112054(n+1)`
-/

namespace A112058.P17963769214426145264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A112054 (n + 1)

end

end A112058.P17963769214426145264

/-! ## A112058.P10290572685222235125

`A112056(n+1)+1`
-/

namespace A112058.P10290572685222235125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112056 (n + 1) + 1

end

end A112058.P10290572685222235125

/-! ## A112058.P6792819028218166964

`A112057(n+1)-1`
-/

namespace A112058.P6792819028218166964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112057 (n + 1) - 1

end

end A112058.P6792819028218166964

/-! ## A112058.P6797607397336289591

`24*A112055(n+1)`
-/

namespace A112058.P6797607397336289591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  24 * A112055 (n + 1)

end

end A112058.P6797607397336289591

/-! ## A112058.P1625251038214192126

`xor(1, A112057(Δ[n²]-n))`
-/

namespace A112058.P1625251038214192126
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (A112057 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) - (n : ℤ)).toNat)

end

end A112058.P1625251038214192126

/-!
# A112059: Nonzero terms of A112053 and A112080.

The programs for A112059, there is no canonical definition to state claims against.
-/

/-! ## A112059.P2237937336389246050

`A112053(A112054(n+1))`
-/

namespace A112059.P2237937336389246050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112053 (A112054 (n + 1)).toNat

end

end A112059.P2237937336389246050

/-! ## A112059.P15358585473377135584

`A112080(lt[0, abs(A112080(n+1))]+1)`
-/

namespace A112059.P15358585473377135584
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A112080 (n + 1)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112080 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1)

end

end A112059.P15358585473377135584

/-! ## A112059.P16473552506404623910

`A112080(comp[eq[0, A112080(n+1)]]+1)`
-/

namespace A112059.P16473552506404623910
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112080 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112080 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + 1)

end

end A112059.P16473552506404623910

/-! ## A112059.P10519272041734652274

`A112080(∑[A112085(abs(1-n)+1)])`
-/

namespace A112059.P10519272041734652274
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112085 (|1 - (n : ℤ)| + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112080 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A112059.P10519272041734652274

/-! ## A112059.P1613188590485950111

`A112053(∑[6*A112085(abs(1-n)+1)])`
-/

namespace A112059.P1613188590485950111
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * A112085 (|1 - (n : ℤ)| + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112053 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A112059.P1613188590485950111

/-! ## A112059.P4207809235437640339

`A112080(∑[A112085(n+1)]+2-A112085(n+1))`
-/

namespace A112059.P4207809235437640339
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112085 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112080 (∑ j ∈ Finset.range (n + 1), f1 j + (2 - A112085 (n + 1))).toNat

end

end A112059.P4207809235437640339

/-! ## A112059.P7821694010346727266

`A112053(6*(∑[A112085(n+1)]+2-A112085(n+1)))`
-/

namespace A112059.P7821694010346727266
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112085 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112053 (6 * (∑ j ∈ Finset.range (n + 1), f1 j + (2 - A112085 (n + 1)))).toNat

end

end A112059.P7821694010346727266

/-! ## A112059.P12094901998089082352

`A112080(A112055(n+1))`
-/

namespace A112059.P12094901998089082352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112080 (A112055 (n + 1)).toNat

end

end A112059.P12094901998089082352

/-! ## A112059.P13549632111386005365

`A112053(6*A112055(n+1))`
-/

namespace A112059.P13549632111386005365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112053 (6 * A112055 (n + 1)).toNat

end

end A112059.P13549632111386005365

/-! ## A112059.P779375250045455355

`A112080(A112054(n+1)/6)`
-/

namespace A112059.P779375250045455355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112080 (SequenceMachineLib.roundAway ((A112054 (n + 1) : ℚ) / 6)).toNat

end

end A112059.P779375250045455355

/-!
# A112060: Square array A(x,y) = y-th natural number k for which A112049(k)=x and 0 if no such k exists; read by antidiagonals A(1,1), A(2,1), A(1,2), A(3,1), A(2,2), ...

The programs for A112060, there is no canonical definition to state claims against.
-/

/-! ## A112060.P13286155856478447895

`floor(A112070(n+1)/2)`
-/

namespace A112060.P13286155856478447895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A112070 (n + 1) : ℚ) / 2⌋

end

end A112060.P13286155856478447895

/-! ## A112060.P9884851860021968686

`(A112070(2*n+1-n)-1)/2`
-/

namespace A112060.P9884851860021968686
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A112070 ((2 * n : ℤ) + (1 - (n : ℤ))).toNat - 1 : ℚ) / 2

end

end A112060.P9884851860021968686

/-! ## A112060.P4586533004461715337

`A249122(A112070(n+1))`
-/

namespace A112060.P4586533004461715337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249122 (A112070 (n + 1)).toNat

end

end A112060.P4586533004461715337

/-! ## A112060.P7532746032372996681

`A014682(A112070(n+1)-1)`
-/

namespace A112060.P7532746032372996681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A112070 (n + 1) - 1).toNat

end

end A112060.P7532746032372996681

/-! ## A112060.P17143373573410702514

`A175126(A112070(n+1)-1)`
-/

namespace A112060.P17143373573410702514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175126 (A112070 (n + 1) - 1).toNat

end

end A112060.P17143373573410702514

/-! ## A112060.P4558541875458037312

`xor(1, A112070(n+1))/A020639(2*(n+1))`
-/

namespace A112060.P4558541875458037312
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.xor 1 (A112070 (n + 1)) : ℚ) / (A020639 (2 * (n + 1)) : ℚ)

end

end A112060.P4558541875458037312

/-! ## A112060.P1205229640361071154

`(A112070(n+1)-1)%A000040(∑[n]+2)/2`
-/

namespace A112060.P1205229640361071154
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.tmod (A112070 (n + 1) - 1) (A000040 (∑ j ∈ Finset.range (n + 1), f1 j + 2)) : ℚ) / 2

end

end A112060.P1205229640361071154

/-! ## A112060.P10506074060576667232

`xor(1, A112070(n+1))/A001222(A000040(n+1)²)`
-/

namespace A112060.P10506074060576667232
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.xor 1 (A112070 (n + 1)) : ℚ) / (A001222 (A000040 (n + 1) ^ 2).toNat : ℚ)

end

end A112060.P10506074060576667232

/-! ## A112060.P7528358177215708886

`xor(1, A112070(n+1))/A001222(A006530(n+2)²)`
-/

namespace A112060.P7528358177215708886
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.xor 1 (A112070 (n + 1)) : ℚ) / (A001222 (A006530 (n + 2) ^ 2).toNat : ℚ)

end

end A112060.P7528358177215708886

/-! ## A112060.P2146653115681437290

`A112061(A038722(n+1))`
-/

namespace A112060.P2146653115681437290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112061 (A038722 (n + 1)).toNat

end

end A112060.P2146653115681437290

/-!
# A112061: Transpose of A112060.

The programs for A112061, there is no canonical definition to state claims against.
-/

/-! ## A112061.P4845110857803543497

`floor(A112071(n+1)/2)`
-/

namespace A112061.P4845110857803543497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A112071 (n + 1) : ℚ) / 2⌋

end

end A112061.P4845110857803543497

/-! ## A112061.P16116522779642765000

`A112060(∑[char[∑[n]]]²-n)`
-/

namespace A112061.P16116522779642765000
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112060 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 - n)

end

end A112061.P16116522779642765000

/-! ## A112061.P15706404404216994399

`A249122(A112071(n+1))`
-/

namespace A112061.P15706404404216994399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249122 (A112071 (n + 1)).toNat

end

end A112061.P15706404404216994399

/-! ## A112061.P18194284591070995602

`A014682(A112071(n+1)-1)`
-/

namespace A112061.P18194284591070995602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A112071 (n + 1) - 1).toNat

end

end A112061.P18194284591070995602

/-! ## A112061.P9771551360819687811

`A038572(A112071(n+1)-1)`
-/

namespace A112061.P9771551360819687811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038572 (A112071 (n + 1) - 1).toNat

end

end A112061.P9771551360819687811

/-! ## A112061.P7313316548045849157

`(A112070(A038722(n+1))-1)/2`
-/

namespace A112061.P7313316548045849157
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A112070 (A038722 (n + 1)).toNat - 1 : ℚ) / 2

end

end A112061.P7313316548045849157

/-! ## A112061.P6915144565962587159

`(A112071(n+1)-A014963(8*n+6))/2`
-/

namespace A112061.P6915144565962587159
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A112071 (n + 1) - A014963 (8 * n + 6) : ℚ) / 2

end

end A112061.P6915144565962587159

/-! ## A112061.P7175669151386079328

`xor(1, A112071(n+1))/A020639(2*(n+1))`
-/

namespace A112061.P7175669151386079328
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.xor 1 (A112071 (n + 1)) : ℚ) / (A020639 (2 * (n + 1)) : ℚ)

end

end A112061.P7175669151386079328

/-! ## A112061.P6401332266459575972

`(A112071(n+1)-1)/A000040(((-1)^n)²)`
-/

namespace A112061.P6401332266459575972
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A112071 (n + 1) - 1 : ℚ) / (A000040 (((-1) ^ n) ^ 2).toNat : ℚ)

end

end A112061.P6401332266459575972

/-! ## A112061.P7407664622127203099

`(A112071(n+1)-1)/A020639(2*A007318(n))`
-/

namespace A112061.P7407664622127203099
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A112071 (n + 1) - 1 : ℚ) / (A020639 (2 * A007318 n).toNat : ℚ)

end

end A112061.P7407664622127203099

/-!
# A112062: Positive integers i for which A112049(i) == 2.

The programs for A112062, there is no canonical definition to state claims against.
-/

/-! ## A112062.P18248083045640544141

`comp[or(2, n)]+or(3, n)`
-/

namespace A112062.P18248083045640544141
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 2 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + Nat.lor 3 n

end

end A112062.P18248083045640544141

/-! ## A112062.P15111548331556419317

`xor(1, or(2, n)+2*n)`
-/

namespace A112062.P15111548331556419317
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 (Nat.lor 2 n + 2 * n)

end

end A112062.P15111548331556419317

/-! ## A112062.P9819045272705585216

`xor(1, or(2, n)+n+n)`
-/

namespace A112062.P9819045272705585216
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 (Nat.lor 2 n + n + n)

end

end A112062.P9819045272705585216

/-! ## A112062.P5708534999862195489

`lt[n, or(2, n)]+or(3, n)`
-/

namespace A112062.P5708534999862195489
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 2 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + Nat.lor 3 n

end

end A112062.P5708534999862195489

/-! ## A112062.P12780681727434141654

`and(n, -2)+or(3, n)+n`
-/

namespace A112062.P12780681727434141654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n : ℤ) (-2) + (Nat.lor 3 n + n : ℤ)

end

end A112062.P12780681727434141654

/-! ## A112062.P10143445602957269572

`a(n-4)+12` with `a(0)=3, a(1)=4, a(2)=7, a(3)=8`
-/

namespace A112062.P10143445602957269572
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [3, 4, 7, 8] fun n a =>
  a (n - 4) + 12

end

end A112062.P10143445602957269572

/-! ## A112062.P4215281070744562952

`xor(3, and(n, -3))+2*n`
-/

namespace A112062.P4215281070744562952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 3 (Int.land (n : ℤ) (-3)) + (2 * n : ℤ)

end

end A112062.P4215281070744562952

/-! ## A112062.P17696725408829185250

`2*n-xor(3, -or(2, n))`
-/

namespace A112062.P17696725408829185250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) - Int.xor 3 (-(Nat.lor 2 n : ℤ))

end

end A112062.P17696725408829185250

/-! ## A112062.P13199556870022401059

`∑[floor(a(n-4))]` with `a(0)=3, a(1)=1, a(2)=3, a(3)=1, a(4)=7`

`floor` is left out, it is the identity on integers.
-/

namespace A112062.P13199556870022401059
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [3, 1, 3, 1, 7] fun n f1 =>
  f1 (n - 4)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A112062.P13199556870022401059

/-! ## A112062.P11786685908205762711

`2*or(1, n)-(1-or(2, n))`
-/

namespace A112062.P11786685908205762711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * Nat.lor 1 n : ℤ) - (1 - (Nat.lor 2 n : ℤ))

end

end A112062.P11786685908205762711

/-!
# A112063: Positive integers i for which A112049(i) == 3.

The programs for A112063, there is no canonical definition to state claims against.
-/

/-! ## A112063.P7000755161156512157

`∑[abs(a(n-6))]` with `a(0)=11, a(1)=1, a(2)=11, a(3)=13, a(4)=11, a(5)=1, a(6)=23`
-/

namespace A112063.P7000755161156512157
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [11, 1, 11, 13, 11, 1, 23] fun n f1 =>
  f1 (n - 6)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A112063.P7000755161156512157

/-! ## A112063.P3426783200310286851

`∑[floor(a(n-6))]` with `a(0)=11, a(1)=1, a(2)=11, a(3)=13, a(4)=11, a(5)=1, a(6)=23`

`floor` is left out, it is the identity on integers.
-/

namespace A112063.P3426783200310286851
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [11, 1, 11, 13, 11, 1, 23] fun n f1 =>
  f1 (n - 6)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A112063.P3426783200310286851

/-! ## A112063.P13171602154771859029

`∑[ceil(a(n-6))]` with `a(0)=11, a(1)=1, a(2)=11, a(3)=13, a(4)=11, a(5)=1, a(6)=23`

`ceil` is left out, it is the identity on integers.
-/

namespace A112063.P13171602154771859029
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [11, 1, 11, 13, 11, 1, 23] fun n f1 =>
  f1 (n - 6)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A112063.P13171602154771859029

/-! ## A112063.P10686843798322513182

`∑[round(a(n-6))]` with `a(0)=11, a(1)=1, a(2)=11, a(3)=13, a(4)=11, a(5)=1, a(6)=23`

`round` is left out, it is the identity on integers.
-/

namespace A112063.P10686843798322513182
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [11, 1, 11, 13, 11, 1, 23] fun n f1 =>
  f1 (n - 6)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A112063.P10686843798322513182

/-! ## A112063.P5350859347890913520

`∑[A112133(n+6)]-12`
-/

namespace A112063.P5350859347890913520
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112133 (n + 6)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 12

end

end A112063.P5350859347890913520

/-! ## A112063.P4397523830620596755

`eq[3, A112049(n+1)]+1`
-/

namespace A112063.P4397523830620596755
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112049 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A112063.P4397523830620596755

/-! ## A112063.P4525174388932961601

`eq[5, A112046(n+2)]+2`
-/

namespace A112063.P4525174388932961601
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112046 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2

end

end A112063.P4525174388932961601

/-! ## A112063.P1863874432293043918

`eq[5, A227196(2*n+1)]`
-/

namespace A112063.P1863874432293043918
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227196 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A112063.P1863874432293043918

/-! ## A112063.P13617329024607262440

`∑[A006530(a(n-6))]` with `a(0)=11, a(1)=1, a(2)=11, a(3)=13, a(4)=11, a(5)=1, a(6)=23`
-/

namespace A112063.P13617329024607262440
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [11, 1, 11, 13, 11, 1, 23] fun n f1 =>
  A006530 (f1 (n - 6)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A112063.P13617329024607262440

/-! ## A112063.P15593254044046469154

`∑[A020639(a(n-6))]` with `a(0)=11, a(1)=1, a(2)=11, a(3)=13, a(4)=11, a(5)=1, a(6)=23`
-/

namespace A112063.P15593254044046469154
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [11, 1, 11, 13, 11, 1, 23] fun n f1 =>
  A020639 (f1 (n - 6)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A112063.P15593254044046469154

/-!
# A112064: Positive integers n for which A112049(n) == 4.

The programs for A112064, there is no canonical definition to state claims against.
-/

/-! ## A112064.P7068511213714448420

`eq[4, A112049(n+1)]+1`
-/

namespace A112064.P7068511213714448420
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112049 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A112064.P7068511213714448420

/-! ## A112064.P1543434721950651163

`eq[7, A227196(2*n+1)]`
-/

namespace A112064.P1543434721950651163
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227196 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A112064.P1543434721950651163

/-! ## A112064.P9520596889493679521

`A112134(n)+a(n-1)` with `a(0)=24`
-/

namespace A112064.P9520596889493679521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [24] fun n a =>
  A112134 n + a (n - 1)

end

end A112064.P9520596889493679521

/-! ## A112064.P2406023492329150590

`eq[4, A112049(A028310(n))]`
-/

namespace A112064.P2406023492329150590
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112049 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A112064.P2406023492329150590

/-! ## A112064.P2792784118128204727

`A020725(eq[4, A112049(n+1)])`
-/

namespace A112064.P2792784118128204727
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112049 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A112064.P2792784118128204727

/-!
# A112065: Positive integers i for which A112049(i) == 5.

The programs for A112065, there is no canonical definition to state claims against.
-/

/-! ## A112065.P12420234110870556678

`A112135(n)+a(n-1)` with `a(0)=60`
-/

namespace A112065.P12420234110870556678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [60] fun n a =>
  A112135 n + a (n - 1)

end

end A112065.P12420234110870556678

/-! ## A112065.P16941865375180068702

`floor(A112075(n+1)/2)`
-/

namespace A112065.P16941865375180068702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A112075 (n + 1) : ℚ) / 2⌋

end

end A112065.P16941865375180068702

/-! ## A112065.P18167628077932118208

`A004524(A112075(n+1))`
-/

namespace A112065.P18167628077932118208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004524 (A112075 (n + 1)).toNat

end

end A112065.P18167628077932118208

/-! ## A112065.P911480783097604291

`A065423(A112075(n+1)+1)`
-/

namespace A112065.P911480783097604291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065423 (A112075 (n + 1) + 1).toNat

end

end A112065.P911480783097604291

/-! ## A112065.P1377815430968475596

`A004526(A112075(n+1)-1)`
-/

namespace A112065.P1377815430968475596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A112075 (n + 1) - 1).toNat

end

end A112065.P1377815430968475596

/-!
# A112066: Positive integers i for which A112049(i) == 6.

The programs for A112066, there is no canonical definition to state claims against.
-/

/-! ## A112066.P15906079684876360159

`floor(A112076(n+1)/2)`
-/

namespace A112066.P15906079684876360159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A112076 (n + 1) : ℚ) / 2⌋

end

end A112066.P15906079684876360159

/-! ## A112066.P17387616248668710067

`A249122(A112076(n+1))`
-/

namespace A112066.P17387616248668710067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249122 (A112076 (n + 1)).toNat

end

end A112066.P17387616248668710067

/-! ## A112066.P10316951684855000352

`A014682(A112076(n+1)-1)`
-/

namespace A112066.P10316951684855000352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A112076 (n + 1) - 1).toNat

end

end A112066.P10316951684855000352

/-! ## A112066.P5411989197871773249

`A014682(xor(1, A112076(n+1)))`
-/

namespace A112066.P5411989197871773249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (Int.xor 1 (A112076 (n + 1))).toNat

end

end A112066.P5411989197871773249

/-! ## A112066.P12442025568158901625

`xor(1, A112076(n+1))/A020639(2*(n+1))`
-/

namespace A112066.P12442025568158901625
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.xor 1 (A112076 (n + 1)) : ℚ) / (A020639 (2 * (n + 1)) : ℚ)

end

end A112066.P12442025568158901625

/-!
# A112067: Positive integers i for which A112049(i) == 7.

The programs for A112067, there is no canonical definition to state claims against.
-/

/-! ## A112067.P12358748448154841629

`floor(A112077(n+1)/2)`
-/

namespace A112067.P12358748448154841629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A112077 (n + 1) : ℚ) / 2⌋

end

end A112067.P12358748448154841629

/-! ## A112067.P13864503911693731383

`A014682(A112077(n+1)-1)`
-/

namespace A112067.P13864503911693731383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A112077 (n + 1) - 1).toNat

end

end A112067.P13864503911693731383

/-! ## A112067.P3046274471901233231

`A302042(A112077(n+1)-1)`
-/

namespace A112067.P3046274471901233231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302042 (A112077 (n + 1) - 1).toNat

end

end A112067.P3046274471901233231

/-! ## A112067.P14656133685722182394

`(A112077(n+1)-A112132(2*n+1))/2`
-/

namespace A112067.P14656133685722182394
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A112077 (n + 1) - A112132 (2 * n + 1) : ℚ) / 2

end

end A112067.P14656133685722182394

/-! ## A112067.P4706802185686116944

`(A112077(n+1)-1)/A000040(gcd(n, n+1))`
-/

namespace A112067.P4706802185686116944
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A112077 (n + 1) - 1 : ℚ) / (A000040 (Nat.gcd n (n + 1)) : ℚ)

end

end A112067.P4706802185686116944

/-!
# A112068: Positive integers i for which A112049(i) == 8.

The programs for A112068, there is no canonical definition to state claims against.
-/

/-! ## A112068.P17414037386321059918

`floor(A112078(n+1)/2)`
-/

namespace A112068.P17414037386321059918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A112078 (n + 1) : ℚ) / 2⌋

end

end A112068.P17414037386321059918

/-! ## A112068.P637858281426950861

`A014682(A112078(n+1)-1)`
-/

namespace A112068.P637858281426950861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A112078 (n + 1) - 1).toNat

end

end A112068.P637858281426950861

/-! ## A112068.P14789660176401112718

`A273943(A112078(n+1)-1)`
-/

namespace A112068.P14789660176401112718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273943 (A112078 (n + 1) - 1).toNat

end

end A112068.P14789660176401112718

/-! ## A112068.P10235975391085068457

`A302042(A112078(n+1)-1)`
-/

namespace A112068.P10235975391085068457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302042 (A112078 (n + 1) - 1).toNat

end

end A112068.P10235975391085068457

/-! ## A112068.P8692662896395496936

`A103391(A112078(n+1)-3)`
-/

namespace A112068.P8692662896395496936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103391 (A112078 (n + 1) - 3).toNat

end

end A112068.P8692662896395496936

/-!
# A112069: Positive integers i for which A112049(i) == 9.

The programs for A112069, there is no canonical definition to state claims against.
-/

/-! ## A112069.P15876748671690308842

`floor(A112079(n+1)/2)`
-/

namespace A112069.P15876748671690308842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A112079 (n + 1) : ℚ) / 2⌋

end

end A112069.P15876748671690308842

/-! ## A112069.P1089232807161420695

`A153881(n+1)²+(A112079(n+1)-3)/2`
-/

namespace A112069.P1089232807161420695
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A153881 (n + 1) ^ 2 : ℚ) + (A112079 (n + 1) - 3 : ℚ) / 2

end

end A112069.P1089232807161420695

/-! ## A112069.P16214650029063505165

`(A112079(n+1)-A212181(A212181(n+1)))/2`
-/

namespace A112069.P16214650029063505165
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A112079 (n + 1) - A212181 (A212181 (n + 1)).toNat : ℚ) / 2

end

end A112069.P16214650029063505165

/-! ## A112069.P10062322667170371078

`A001222(record[A014963(n+2)])+(A112079(n+1)-3)/2`
-/

namespace A112069.P10062322667170371078
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 2)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001222 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat : ℚ) + (A112079 (n + 1) - 3 : ℚ) / 2

end

end A112069.P10062322667170371078

/-! ## A112069.P13256873951422001852

`A000010(A014963(or(n, n+1)-n))+(A112079(n+1)-3)/2`
-/

namespace A112069.P13256873951422001852
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000010 (A014963 (Nat.lor n (n + 1) - n)).toNat : ℚ) + (A112079 (n + 1) - 3 : ℚ) / 2

end

end A112069.P13256873951422001852

/-!
# A112070: Square array A(x,y) = y-th odd number 2i+1 (i>=1) for which A112049(2i+1)=x, or 0 if no such i exists; read by descending antidiagonals.

The programs for A112070, there is no canonical definition to state claims against.
-/

/-! ## A112070.P9026106941262695549

`2*A112060(n+1)+1`
-/

namespace A112070.P9026106941262695549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A112060 (n + 1) + 1

end

end A112070.P9026106941262695549

/-! ## A112070.P13324462521903663194

`A005408(A112060(n+1))`
-/

namespace A112070.P13324462521903663194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 (A112060 (n + 1)).toNat

end

end A112070.P13324462521903663194

/-! ## A112070.P13014705163898702957

`A004273(A112060(n+1)+1)`
-/

namespace A112070.P13014705163898702957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (A112060 (n + 1) + 1).toNat

end

end A112070.P13014705163898702957

/-! ## A112070.P16469082941593978759

`A060747(A112060(n+1)+1)`
-/

namespace A112070.P16469082941593978759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060747 (A112060 (n + 1) + 1).toNat

end

end A112070.P16469082941593978759

/-! ## A112070.P17388335252328817856

`A004274(A112060(n+1)+2)`
-/

namespace A112070.P17388335252328817856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004274 (A112060 (n + 1) + 2).toNat

end

end A112070.P17388335252328817856

/-! ## A112070.P17264752807051949065

`A004280(A112060(n+1)+2)`
-/

namespace A112070.P17264752807051949065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004280 (A112060 (n + 1) + 2).toNat

end

end A112070.P17264752807051949065

/-! ## A112070.P9737292000913156516

`A141310(2*A112060(n+1))`
-/

namespace A112070.P9737292000913156516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141310 (2 * A112060 (n + 1)).toNat

end

end A112070.P9737292000913156516

/-! ## A112070.P16403765352943766314

`A103391(4*A112060(n+1))`
-/

namespace A112070.P16403765352943766314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103391 (4 * A112060 (n + 1)).toNat

end

end A112070.P16403765352943766314

/-! ## A112070.P12626224551275066144

`A005843(A112060(n+1)+1)-1`
-/

namespace A112070.P12626224551275066144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A112060 (n + 1) + 1).toNat - 1

end

end A112070.P12626224551275066144

/-!
# A112071: Transpose of A112070.

The programs for A112071, there is no canonical definition to state claims against.
-/

/-! ## A112071.P17876510714691858689

`2*A112061(n+1)+1`
-/

namespace A112071.P17876510714691858689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A112061 (n + 1) + 1

end

end A112071.P17876510714691858689

/-! ## A112071.P16820710466718955150

`A112070(∑[char[∑[n]]]²-n)`
-/

namespace A112071.P16820710466718955150
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112070 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 - n)

end

end A112071.P16820710466718955150

/-! ## A112071.P10166920945526494370

`A005408(A112061(n+1))`
-/

namespace A112071.P10166920945526494370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 (A112061 (n + 1)).toNat

end

end A112071.P10166920945526494370

/-! ## A112071.P4235142694809616401

`A004273(A112061(n+1)+1)`
-/

namespace A112071.P4235142694809616401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (A112061 (n + 1) + 1).toNat

end

end A112071.P4235142694809616401

/-! ## A112071.P14658866110278596262

`A060747(A112061(n+1)+1)`
-/

namespace A112071.P14658866110278596262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060747 (A112061 (n + 1) + 1).toNat

end

end A112071.P14658866110278596262

/-! ## A112071.P17899463443805750467

`A004274(A112061(n+1)+2)`
-/

namespace A112071.P17899463443805750467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004274 (A112061 (n + 1) + 2).toNat

end

end A112071.P17899463443805750467

/-! ## A112071.P10588824046761468783

`A004277(A112061(n+1)+1)-1`
-/

namespace A112071.P10588824046761468783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A112061 (n + 1) + 1).toNat - 1

end

end A112071.P10588824046761468783

/-! ## A112071.P16925823510005727573

`A144396(A112061(n+1)+1)-2`
-/

namespace A112071.P16925823510005727573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144396 (A112061 (n + 1) + 1).toNat - 2

end

end A112071.P16925823510005727573

/-! ## A112071.P17510537618773202735

`∑{d}[A000040(n+1), A112061(n+1)+A001222(#)]`
-/

namespace A112071.P17510537618773202735
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, (A112061 (n + 1) + A001222 d)

end

end A112071.P17510537618773202735

/-! ## A112071.P18436937611822684317

`∑{d}[A006530(n+2), A112061(n+1)+A001222(#)]`
-/

namespace A112071.P18436937611822684317
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, (A112061 (n + 1) + A001222 d)

end

end A112071.P18436937611822684317

/-!
# A112072: Odd numbers n for which 3 is the smallest i (>= 1) with Jacobi symbol J(i,n) getting either a value 0 or -1.

The programs for A112072, there is no canonical definition to state claims against.
-/

/-! ## A112072.P18151493005036573370

`Δ[or(4, 3*(n²-1))]`
-/

namespace A112072.P18151493005036573370
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 4 (3 * ((n ^ 2 : ℤ) - 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A112072.P18151493005036573370

/-! ## A112072.P17190848530973018711

`a(n-4)+24` with `a(0)=7, a(1)=9, a(2)=15, a(3)=17`
-/

namespace A112072.P17190848530973018711
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [7, 9, 15, 17] fun n a =>
  a (n - 4) + 24

end

end A112072.P17190848530973018711

/-! ## A112072.P5596656519738161672

`or(5, 3*comp[or(2, n)])+2`
-/

namespace A112072.P5596656519738161672
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 2 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 5 (3 * SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n) + 2

end

end A112072.P5596656519738161672

/-! ## A112072.P17380734657081824042

`Δ[and(3*n²-1, -5)]`
-/

namespace A112072.P17380734657081824042
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land ((3 * n ^ 2 : ℤ) - 1) (-5)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A112072.P17380734657081824042

/-! ## A112072.P6808418119393728635

`abs(Δ[or(4, 3*n²+5)])`
-/

namespace A112072.P6808418119393728635
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 4 (3 * n ^ 2 + 5)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(f1 (n + 1) : ℤ) - (f1 n : ℤ)|

end

end A112072.P6808418119393728635

/-! ## A112072.P14897326801238703281

`or(4, xor(2, 6*n)-1)+2`
-/

namespace A112072.P14897326801238703281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 4 ((Nat.xor 2 (6 * n) : ℤ) - 1) + 2

end

end A112072.P14897326801238703281

/-! ## A112072.P18439635662717995479

`xor(3, 2*(or(2, n)+2*n))`
-/

namespace A112072.P18439635662717995479
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 3 (2 * (Nat.lor 2 n + 2 * n))

end

end A112072.P18439635662717995479

/-! ## A112072.P7165036721596842762

`xor(1, n)+xor(3, 5*n)+3`
-/

namespace A112072.P7165036721596842762
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 n + (Nat.xor 3 (5 * n) + 3)

end

end A112072.P7165036721596842762

/-! ## A112072.P14564346400022595963

`record[gcd(16, n)-a(n-2)]` with `a(0)=7, a(1)=1`
-/

namespace A112072.P14564346400022595963
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [7, 1] fun n f1 =>
  (Nat.gcd 16 n : ℤ) - f1 (n - 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A112072.P14564346400022595963

/-! ## A112072.P127819276095421637

`xor(2, ∑[12-a(n-2)])` with `a(0)=5, a(1)=6, a(2)=2`
-/

namespace A112072.P127819276095421637
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [5, 6, 2] fun n f1 =>
  12 - f1 (n - 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 2 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A112072.P127819276095421637

/-!
# A112073: Odd numbers n for which 5 is the smallest i (>= 1) with Jacobi symbol J(i,n) getting either a value 0 or -1.

The programs for A112073, there is no canonical definition to state claims against.
-/

/-! ## A112073.P7070041861115507131

`2*A112063(n+1)+1`
-/

namespace A112073.P7070041861115507131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A112063 (n + 1) + 1

end

end A112073.P7070041861115507131

/-! ## A112073.P6620286092676789244

`eq[5, A227196(n^(n%2))]`
-/

namespace A112073.P6620286092676789244
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227196 (n ^ (n % 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A112073.P6620286092676789244

/-! ## A112073.P8352746618562461801

`eq[5, A227196(round(acot(n)+n))]`
-/

namespace A112073.P8352746618562461801
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227196 (SequenceMachineLib.roundAway (SequenceMachineLib.acot (n : ℝ) + (n : ℝ))).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A112073.P8352746618562461801

/-! ## A112073.P9579507536480719445

`2*eq[3, A112049(n+1)]+3`
-/

namespace A112073.P9579507536480719445
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112049 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 3

end

end A112073.P9579507536480719445

/-! ## A112073.P991383231656939902

`A005408(A112063(n+1))`
-/

namespace A112073.P991383231656939902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 (A112063 (n + 1)).toNat

end

end A112073.P991383231656939902

/-! ## A112073.P11118022312046278571

`eq[5, A227196(A028310(n))]`
-/

namespace A112073.P11118022312046278571
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227196 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A112073.P11118022312046278571

/-! ## A112073.P10175761098578185187

`eq[5, A227196(A093178(n))]`
-/

namespace A112073.P10175761098578185187
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227196 (A093178 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A112073.P10175761098578185187

/-! ## A112073.P12390443114016889006

`A004273(A112063(n+1)+1)`
-/

namespace A112073.P12390443114016889006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (A112063 (n + 1) + 1).toNat

end

end A112073.P12390443114016889006

/-! ## A112073.P11129652284872631651

`A140139(A112063(n+1)+1)`
-/

namespace A112073.P11129652284872631651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140139 (A112063 (n + 1) + 1).toNat

end

end A112073.P11129652284872631651

/-! ## A112073.P7469569709083794529

`A163985(A112063(n+1)+1)`
-/

namespace A112073.P7469569709083794529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163985 (A112063 (n + 1) + 1).toNat

end

end A112073.P7469569709083794529

/-!
# A112074: Odd numbers n for which 7 is the smallest i (>= 1) with Jacobi symbol J(i,n) getting either a value 0 or -1.

The programs for A112074, there is no canonical definition to state claims against.
-/

/-! ## A112074.P8992449782621861799

`2*A112064(n+1)+1`
-/

namespace A112074.P8992449782621861799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A112064 (n + 1) + 1

end

end A112074.P8992449782621861799

/-! ## A112074.P11986326991598464968

`A005408(A112064(n+1))`
-/

namespace A112074.P11986326991598464968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 (A112064 (n + 1)).toNat

end

end A112074.P11986326991598464968

/-! ## A112074.P6000057336754063998

`A004273(A112064(n+1)+1)`
-/

namespace A112074.P6000057336754063998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (A112064 (n + 1) + 1).toNat

end

end A112074.P6000057336754063998

/-! ## A112074.P10133806469935043707

`A060747(A112064(n+1)+1)`
-/

namespace A112074.P10133806469935043707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060747 (A112064 (n + 1) + 1).toNat

end

end A112074.P10133806469935043707

/-! ## A112074.P13372872677135341433

`A140139(A112064(n+1)+1)`
-/

namespace A112074.P13372872677135341433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140139 (A112064 (n + 1) + 1).toNat

end

end A112074.P13372872677135341433

/-!
# A112075: Odd numbers n for which 11 is the smallest i (>= 1) with Jacobi symbol J(i,n) getting either a value 0 or -1.

The programs for A112075, there is no canonical definition to state claims against.
-/

/-! ## A112075.P17718141984015751734

`2*A112065(n+1)+1`
-/

namespace A112075.P17718141984015751734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A112065 (n + 1) + 1

end

end A112075.P17718141984015751734

/-! ## A112075.P659323590791539580

`A005408(A112065(n+1))`
-/

namespace A112075.P659323590791539580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 (A112065 (n + 1)).toNat

end

end A112075.P659323590791539580

/-! ## A112075.P1525505462947526230

`A004273(A112065(n+1)+1)`
-/

namespace A112075.P1525505462947526230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (A112065 (n + 1) + 1).toNat

end

end A112075.P1525505462947526230

/-! ## A112075.P10202425070208686420

`A060747(A112065(n+1)+1)`
-/

namespace A112075.P10202425070208686420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060747 (A112065 (n + 1) + 1).toNat

end

end A112075.P10202425070208686420

/-! ## A112075.P18271313633165446648

`A163985(A112065(n+1)+1)`
-/

namespace A112075.P18271313633165446648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163985 (A112065 (n + 1) + 1).toNat

end

end A112075.P18271313633165446648

/-!
# A112076: Odd numbers n for which 13 is the smallest i (>= 1) with Jacobi symbol J(i,n) getting either a value 0 or -1.

The programs for A112076, there is no canonical definition to state claims against.
-/

/-! ## A112076.P5990695442325151405

`2*A112066(n+1)+1`
-/

namespace A112076.P5990695442325151405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A112066 (n + 1) + 1

end

end A112076.P5990695442325151405

/-! ## A112076.P520906318515021973

`A005408(A112066(n+1))`
-/

namespace A112076.P520906318515021973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 (A112066 (n + 1)).toNat

end

end A112076.P520906318515021973

/-! ## A112076.P7323490211153089462

`A004273(A112066(n+1)+1)`
-/

namespace A112076.P7323490211153089462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (A112066 (n + 1) + 1).toNat

end

end A112076.P7323490211153089462

/-! ## A112076.P16256240084852575716

`A060747(A112066(n+1)+1)`
-/

namespace A112076.P16256240084852575716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060747 (A112066 (n + 1) + 1).toNat

end

end A112076.P16256240084852575716

/-! ## A112076.P13872834206140179522

`A163985(A112066(n+1)+1)`
-/

namespace A112076.P13872834206140179522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163985 (A112066 (n + 1) + 1).toNat

end

end A112076.P13872834206140179522

/-!
# A112077: Odd numbers n for which 17 is the smallest i (>= 1) with Jacobi symbol J(i,n) getting either a value 0 or -1.

The programs for A112077, there is no canonical definition to state claims against.
-/

/-! ## A112077.P9640890035191265277

`2*A112067(n+1)+1`
-/

namespace A112077.P9640890035191265277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A112067 (n + 1) + 1

end

end A112077.P9640890035191265277

/-! ## A112077.P8174886795934051302

`A016825(A112067(n+1))/2`
-/

namespace A112077.P8174886795934051302
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016825 (A112067 (n + 1)).toNat : ℚ) / 2

end

end A112077.P8174886795934051302

/-! ## A112077.P14751184876180719338

`A103391(4*A112067(n+1))`
-/

namespace A112077.P14751184876180719338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103391 (4 * A112067 (n + 1)).toNat

end

end A112077.P14751184876180719338

/-! ## A112077.P3888043246167862902

`A112067(n+1)+A112067(n+1)+A007318(C(n, 2))`
-/

namespace A112077.P3888043246167862902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112067 (n + 1) + (A112067 (n + 1) + A007318 (Nat.choose n 2))

end

end A112077.P3888043246167862902

/-! ## A112077.P9280956417757197394

`A007318(floor(2/(n+1)))+A112067(n+1)+A112067(n+1)`
-/

namespace A112077.P9280956417757197394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 ⌊2 / (n + 1 : ℚ)⌋.toNat + (A112067 (n + 1) + A112067 (n + 1))

end

end A112077.P9280956417757197394

/-!
# A112078: Odd numbers n for which 19 is the smallest i (>= 1) with Jacobi symbol J(i,n) getting either a value 0 or -1.

The programs for A112078, there is no canonical definition to state claims against.
-/

/-! ## A112078.P11838403977031639350

`2*A112068(n+1)+1`
-/

namespace A112078.P11838403977031639350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A112068 (n + 1) + 1

end

end A112078.P11838403977031639350

/-! ## A112078.P16812255415736624428

`A112068(n+1)+A000027(A112068(n+1)+1)`
-/

namespace A112078.P16812255415736624428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112068 (n + 1) + A000027 (A112068 (n + 1) + 1).toNat

end

end A112078.P16812255415736624428

/-! ## A112078.P9067990928265947215

`A000265(A112068(n+1)+A112068(n+1)+1)`
-/

namespace A112078.P9067990928265947215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A112068 (n + 1) + (A112068 (n + 1) + 1)).toNat

end

end A112078.P9067990928265947215

/-! ## A112078.P619834942748117132

`A112068(n+1)+A112068(n+1)+A007318(∑[n])`
-/

namespace A112078.P619834942748117132
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112068 (n + 1) + (A112068 (n + 1) + A007318 (∑ j ∈ Finset.range (n + 1), f1 j))

end

end A112078.P619834942748117132

/-! ## A112078.P3207462740792375366

`A000108(C(2, n+2))+A112068(n+1)+A112068(n+1)`
-/

namespace A112078.P3207462740792375366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 (Nat.choose 2 (n + 2)) + (A112068 (n + 1) + A112068 (n + 1))

end

end A112078.P3207462740792375366

/-!
# A112079: Odd numbers k for which 23 is the smallest positive i with Jacobi symbol J(i,k) != 1.

The programs for A112079, there is no canonical definition to state claims against.
-/

/-! ## A112079.P6397597757342168156

`2*A112069(n+1)+1`
-/

namespace A112079.P6397597757342168156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A112069 (n + 1) + 1

end

end A112079.P6397597757342168156

/-! ## A112079.P12876467136255494160

`or(1, record[2*A112069(A038568(n))])`
-/

namespace A112079.P12876467136255494160
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A112069 (A038568 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))

end

end A112079.P12876467136255494160

/-!
# A112080: a(n) = difference between Jacobi-first-non-one(24n+1) and Jacobi-first-non-one(24n-1).

The programs for A112080, there is no canonical definition to state claims against.
-/

/-! ## A112080.P15228338152887389202

`A112053(6*(n+1))`
-/

namespace A112080.P15228338152887389202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112053 (6 * (n + 1))

end

end A112080.P15228338152887389202

/-! ## A112080.P15256036530986234998

`xor(1, A112053(A008458(n+1))+1)`
-/

namespace A112080.P15256036530986234998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (A112053 (A008458 (n + 1)).toNat + 1)

end

end A112080.P15256036530986234998

/-! ## A112080.P7254012810806514876

`A112053(A008458(n+1))%A000118(n)`
-/

namespace A112080.P7254012810806514876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A112053 (A008458 (n + 1)).toNat) (A000118 n)

end

end A112080.P7254012810806514876

/-! ## A112080.P2658882739110704756

`A112053(A008458(n+1))+A000007(n+1)`
-/

namespace A112080.P2658882739110704756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112053 (A008458 (n + 1)).toNat + A000007 (n + 1)

end

end A112080.P2658882739110704756

/-! ## A112080.P11316376175397051788

`A112053(A008458(n+1))/gcd(5, A001105(n))`
-/

namespace A112080.P11316376175397051788
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A112053 (A008458 (n + 1)).toNat : ℚ) / (Int.gcd 5 (A001105 n) : ℚ)

end

end A112080.P11316376175397051788

/-! ## A112080.P11356854942227054224

`A112053(A008458(n+1))/gcd(2, A225916(n+1))`
-/

namespace A112080.P11356854942227054224
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A112053 (A008458 (n + 1)).toNat : ℚ) / (Int.gcd 2 (A225916 (n + 1)) : ℚ)

end

end A112080.P11356854942227054224

/-! ## A112080.P6462260367127326089

`A112053(A008458(n+1))/gcd(n, A008578(n+1))`
-/

namespace A112080.P6462260367127326089
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A112053 (A008458 (n + 1)).toNat : ℚ) / (Int.gcd (n : ℤ) (A008578 (n + 1)) : ℚ)

end

end A112080.P6462260367127326089

/-! ## A112080.P5677196504127403345

`A112053(A016969(n)+1)+A004197(val(n²+12, 4)!)`
-/

namespace A112080.P5677196504127403345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112053 (A016969 n + 1).toNat + A004197 (Nat.factorial (SequenceMachineLib.valuation (n ^ 2 + 12) 4))

end

end A112080.P5677196504127403345

/-! ## A112080.P17836651636171682863

`A112053(A016969(n)+1)/A003602(val(n²+12, 4)!)`
-/

namespace A112080.P17836651636171682863
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A112053 (A016969 n + 1).toNat : ℚ) / (A003602 (Nat.factorial (SequenceMachineLib.valuation (n ^ 2 + 12) 4)) : ℚ)

end

end A112080.P17836651636171682863

/-! ## A112080.P13096189040214681213

`A112053(A016969(n)+1)/A004652(val(n²+12, 4)!)`
-/

namespace A112080.P13096189040214681213
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A112053 (A016969 n + 1).toNat : ℚ) / (A004652 (Nat.factorial (SequenceMachineLib.valuation (n ^ 2 + 12) 4)) : ℚ)

end

end A112080.P13096189040214681213

/-! ## A112080.P17547312029919491506

`A112053(A016969(n)+1)/A007318(val(n²+12, 4)!)`
-/

namespace A112080.P17547312029919491506
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A112053 (A016969 n + 1).toNat : ℚ) / (A007318 (Nat.factorial (SequenceMachineLib.valuation (n ^ 2 + 12) 4)) : ℚ)

end

end A112080.P17547312029919491506

/-! ## A112080.P13478463017384628326

`A112053(A016969(n)+1)/A107463(A000040(n+1))`
-/

namespace A112080.P13478463017384628326
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A112053 (A016969 n + 1).toNat : ℚ) / (A107463 (A000040 (n + 1)).toNat : ℚ)

end

end A112080.P13478463017384628326

/-! ## A112080.P8466804210972671331

`A112053(A008458(n+1))^A001222(A006093(n+1)+1)`
-/

namespace A112080.P8466804210972671331
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A112053 (A008458 (n + 1)).toNat : ℚ) ^ (A001222 (A006093 (n + 1) + 1).toNat : ℤ)

end

end A112080.P8466804210972671331

/-!
# A112081: A112080(n)/2.

The programs for A112081, there is no canonical definition to state claims against.
-/

/-! ## A112081.P10633046857308681712

`A112080(n+1)/2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A112081.P10633046857308681712
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A112080 (n + 1) : ℚ) / 2

end

end A112081.P10633046857308681712

/-! ## A112081.P7995665814109004713

`A112053(6*(n+1))/2`
-/

namespace A112081.P7995665814109004713
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A112053 (6 * (n + 1)) : ℚ) / 2

end

end A112081.P7995665814109004713

/-! ## A112081.P13766264100553581400

`floor(A112053(A008458(n+1))/2)`
-/

namespace A112081.P13766264100553581400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A112053 (A008458 (n + 1)).toNat : ℚ) / 2⌋

end

end A112081.P13766264100553581400

/-! ## A112081.P8649641861161890032

`floor(A112053(A016969(n)+1)/2)`
-/

namespace A112081.P8649641861161890032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A112053 (A016969 n + 1).toNat : ℚ) / 2⌋

end

end A112081.P8649641861161890032

/-! ## A112081.P1594368202173015920

`ceil(A112053(A008458(Δ[n²]-n))/2)`
-/

namespace A112081.P1594368202173015920
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A112053 (A008458 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) - (n : ℤ)).toNat).toNat : ℚ) / 2⌉

end

end A112081.P1594368202173015920

/-! ## A112081.P10715258247354037945

`(A112053(A016969(n)+1)/2)%∑[A000041(n)]`
-/

namespace A112081.P10715258247354037945
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway ((A112053 (A016969 n + 1).toNat : ℚ) / 2)) (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A112081.P10715258247354037945

/-! ## A112081.P3176588660421537131

`(A112053(A008458(n+1))/2)%A000040(n+1)`
-/

namespace A112081.P3176588660421537131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway ((A112053 (A008458 (n + 1)).toNat : ℚ) / 2)) (A000040 (n + 1))

end

end A112081.P3176588660421537131

/-! ## A112081.P5594089389592415924

`ceil(A112053(A008458(n+1))/2)%A002048(n+1)`
-/

namespace A112081.P5594089389592415924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ⌈(A112053 (A008458 (n + 1)).toNat : ℚ) / 2⌉ (A002048 (n + 1))

end

end A112081.P5594089389592415924

/-!
# A112082: Indices where A112080 is zero.

The programs for A112082, there is no canonical definition to state claims against.
-/

/-! ## A112082.P7685123618683634326

`eq[0, A112080(n+1)]+1`
-/

namespace A112082.P7685123618683634326
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112080 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A112082.P7685123618683634326

/-! ## A112082.P4083067086515125927

`eq[0, A112053(6*(n+1))]+1`
-/

namespace A112082.P4083067086515125927
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112053 (6 * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A112082.P4083067086515125927

/-! ## A112082.P14472383967739274910

`record[3-abs(A112080(n+3))+n]`
-/

namespace A112082.P14472383967739274910
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 - |A112080 (n + 3)| + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A112082.P14472383967739274910

/-! ## A112082.P1902941818112776607

`comp[A112085(n)+a(n-1)]+1` with `a(0)=1`
-/

namespace A112082.P1902941818112776607
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  A112085 n + f1 (n - 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A112082.P1902941818112776607

/-! ## A112082.P8517279635366919

`eq[C(2, n+2), A112053(A008458(n))]`
-/

namespace A112082.P8517279635366919
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 2 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112053 (A008458 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A112082.P8517279635366919

/-! ## A112082.P4161212674362929559

`lt[A112053(A008458(n+1))², 3]+1`
-/

namespace A112082.P4161212674362929559
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112053 (A008458 (n + 1)).toNat ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A112082.P4161212674362929559

/-! ## A112082.P12929569290982681896

`record[n+1-abs(A112053(A016969(n)+1))]`
-/

namespace A112082.P12929569290982681896
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - |A112053 (A016969 n + 1).toNat|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A112082.P12929569290982681896

/-! ## A112082.P6668957684087413871

`record[n+1-A112080(n+1)^A031131(n+1)]`
-/

namespace A112082.P6668957684087413871
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) - (A112080 (n + 1) : ℚ) ^ (A031131 (n + 1) : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A112082.P6668957684087413871

/-! ## A112082.P15613244779509420192

`eq[A000007(n), A112053(A008458(n))]`
-/

namespace A112082.P15613244779509420192
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112053 (A008458 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A112082.P15613244779509420192

/-! ## A112082.P6552096602138804766

`eq[A000038(n), A112053(A008458(n))]`
-/

namespace A112082.P6552096602138804766
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112053 (A008458 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A112082.P6552096602138804766

/-!
# A112083: Column 2 of A112060.

The programs for A112083, there is no canonical definition to state claims against.
-/

/-! ## A112083.P17118365394300118839

`floor(A112084(n+1)/2)`
-/

namespace A112083.P17118365394300118839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A112084 (n + 1) : ℚ) / 2⌋

end

end A112083.P17118365394300118839

/-! ## A112083.P825342899314817755

`eq[2, A286579(n+1)]+1`
-/

namespace A112083.P825342899314817755
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286579 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A112083.P825342899314817755

/-! ## A112083.P4246446535679068573

`A014682(A112084(n+1)-1)`
-/

namespace A112083.P4246446535679068573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A112084 (n + 1) - 1).toNat

end

end A112083.P4246446535679068573

/-! ## A112083.P9222722481271078736

`A273943(A112084(n+1)-1)`
-/

namespace A112083.P9222722481271078736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273943 (A112084 (n + 1) - 1).toNat

end

end A112083.P9222722481271078736

/-! ## A112083.P3025699429764714646

`A302042(A112084(n+1)-1)`
-/

namespace A112083.P3025699429764714646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302042 (A112084 (n + 1) - 1).toNat

end

end A112083.P3025699429764714646

/-!
# A112084: Column 2 of A112070.

The programs for A112084, there is no canonical definition to state claims against.
-/

/-! ## A112084.P9397879090287661665

`2*A112083(n+1)+1`
-/

namespace A112084.P9397879090287661665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A112083 (n + 1) + 1

end

end A112084.P9397879090287661665

/-! ## A112084.P8784749087895554204

`A112083(n+1)+A272038(n)+A112083(n+1)`
-/

namespace A112084.P8784749087895554204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112083 (n + 1) + (A272038 n + A112083 (n + 1))

end

end A112084.P8784749087895554204

/-! ## A112084.P5526782587956204947

`A112083(n+1)+A112083(n+1)+A007318(∑[n])`
-/

namespace A112084.P5526782587956204947
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112083 (n + 1) + (A112083 (n + 1) + A007318 (∑ j ∈ Finset.range (n + 1), f1 j))

end

end A112084.P5526782587956204947

/-! ## A112084.P2422720742131089830

`A112083(n+1)+A112083(n+1)+A014963(A004011(n))`
-/

namespace A112084.P2422720742131089830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112083 (n + 1) + (A112083 (n + 1) + A014963 (A004011 n).toNat)

end

end A112084.P2422720742131089830

/-! ## A112084.P5474195432525740615

`A062241(n)+A000122(A059114(2*n))`
-/

namespace A112084.P5474195432525740615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062241 n + A000122 (A059114 (2 * n)).toNat

end

end A112084.P5474195432525740615

/-!
# A112085: First differences of A112055.

The programs for A112085, there is no canonical definition to state claims against.
-/

/-! ## A112085.P6375972155643585419

`A112055(n+2)-A112055(n+1)`
-/

namespace A112085.P6375972155643585419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112055 (n + 2) - A112055 (n + 1)

end

end A112085.P6375972155643585419

/-! ## A112085.P7997298954812777812

`Δ[A112055(n+1)]`
-/

namespace A112085.P7997298954812777812
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112055 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A112085.P7997298954812777812

/-! ## A112085.P10017007825095050194

`abs(Δ[A112055(-xor(n, -1))])`
-/

namespace A112085.P10017007825095050194
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112055 (-Int.xor (n : ℤ) (-1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A112085.P10017007825095050194

/-! ## A112085.P11958106935876217061

`Δ[record[A112055(A038568(n))]]`
-/

namespace A112085.P11958106935876217061
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112055 (A038568 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A112085.P11958106935876217061

/-! ## A112085.P13748236280830648317

`A000027(Δ[A112055(-xor(n, -1))])`
-/

namespace A112085.P13748236280830648317
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112055 (-Int.xor (n : ℤ) (-1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (f1 (n + 1) - f1 n).toNat

end

end A112085.P13748236280830648317

/-! ## A112085.P16988812603391046989

`A005940(Δ[A112055(-xor(n, -1))])`
-/

namespace A112085.P16988812603391046989
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112055 (-Int.xor (n : ℤ) (-1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005940 (f1 (n + 1) - f1 n).toNat

end

end A112085.P16988812603391046989

/-! ## A112085.P17851395467551018452

`A007095(Δ[A112055(-xor(n, -1))])`
-/

namespace A112085.P17851395467551018452
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112055 (-Int.xor (n : ℤ) (-1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007095 (f1 (n + 1) - f1 n).toNat

end

end A112085.P17851395467551018452

/-! ## A112085.P10645855054746507701

`A140827(Δ[A112055(-xor(n, -1))])`
-/

namespace A112085.P10645855054746507701
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112055 (-Int.xor (n : ℤ) (-1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140827 (f1 (n + 1) - f1 n).toNat

end

end A112085.P10645855054746507701

/-! ## A112085.P5529359074616204108

`A000010(2*Δ[A112055(-xor(n, -1))])`
-/

namespace A112085.P5529359074616204108
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112055 (-Int.xor (n : ℤ) (-1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (2 * (f1 (n + 1) - f1 n)).toNat

end

end A112085.P5529359074616204108

/-!
# A112086: a(n) = the period of the first differences of the n-th row of A112060 (or A112070), or 0 if that row does not have a periodic first difference.

The programs for A112086, there is no canonical definition to state claims against.
-/

/-! ## A112086.P11802282915768366560

`ceil(A215718(n)/4)*A010063(n+1)`
-/

namespace A112086.P11802282915768366560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A215718 n : ℚ) / 4⌉ * A010063 (n + 1)

end

end A112086.P11802282915768366560

/-! ## A112086.P12461080822685553364

`∏[A000700(3*n+1)]*A233578(n+1)`
-/

namespace A112086.P12461080822685553364
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000700 (3 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∏ j ∈ Finset.range (n + 1), f1 j) * A233578 (n + 1)

end

end A112086.P12461080822685553364

/-! ## A112086.P7470583214425735391

`A002093(A171856(n)+A033461(n))`
-/

namespace A112086.P7470583214425735391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002093 (A171856 n + A033461 n).toNat

end

end A112086.P7470583214425735391

/-!
# A112087: a(n) = 4*(n^2 - n + 1).

The programs for A112087, the canonical program `A112087.P10058396816132034183` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A112087 has offset 1).

The definition of A112087 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `4*((n+1)²-(n+1)+1)` (program `A112087.P10058396816132034183`, by `A112087.P10058396816132034183.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A112087.P13404598611831538195

`8*n+a(n-1)` with `a(0)=4`
-/

namespace A112087.P13404598611831538195
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [4] fun n a =>
  8 * n + a (n - 1)

end

end A112087.P13404598611831538195

namespace A112087

/-- `8*n+a(n-1)` -/
def P13404598611831538195.Spec : Prop :=
  ∀ n, (P13404598611831538195.a n : ℤ) = A112087 (n + 1)

theorem P13404598611831538195.correct : P13404598611831538195.Spec := by
  intro n
  induction n with
  | zero => simp [A112087, A112087.P13404598611831538195.a, A112087.P10058396816132034183.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
  | succ m ih =>
    simp only [A112087, Nat.add_sub_cancel, A112087.P13404598611831538195.a, A112087.P10058396816132034183.a, SequenceMachineLib.memo_apply] at ih ⊢
    rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
    try simp only [Nat.add_sub_cancel, Nat.lt_add_one, ↓reduceIte]
    try push_cast at ih ⊢
    try linarith

end A112087

/-! ## A112087.P10058396816132034183

`4*((n+1)²-(n+1)+1)`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A112087

/-- `4*((n+1)²-(n+1)+1)` -/
def P10058396816132034183.Spec : Prop :=
  ∀ n, P10058396816132034183.a n = A112087 (n + 1)

theorem P10058396816132034183.correct : P10058396816132034183.Spec := by
  intro n
  simp only [A112087, Nat.add_sub_cancel]

end A112087

/-! ## A112087.P1826972290112848829

`or(4, ∑[8*n])`
-/

namespace A112087.P1826972290112848829
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8 * n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 4 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A112087.P1826972290112848829

namespace A112087

/-- `or(4, ∑[8*n])` -/
def P1826972290112848829.Spec : Prop :=
  ∀ n, (P1826972290112848829.a n : ℤ) = A112087 (n + 1)

end A112087

/-! ## A112087.P2681422642883126286

`xor(4, ∑[8*n])`
-/

namespace A112087.P2681422642883126286
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8 * n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 4 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A112087.P2681422642883126286

namespace A112087

/-- `xor(4, ∑[8*n])` -/
def P2681422642883126286.Spec : Prop :=
  ∀ n, (P2681422642883126286.a n : ℤ) = A112087 (n + 1)

end A112087

/-! ## A112087.P14816873799291529742

`record[xor(1, n)²+3]`
-/

namespace A112087.P14816873799291529742
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 n ^ 2 + 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A112087.P14816873799291529742

namespace A112087

/-- `record[xor(1, n)²+3]` -/
def P14816873799291529742.Spec : Prop :=
  ∀ n, (P14816873799291529742.a n : ℤ) = A112087 (n + 1)

end A112087

/-! ## A112087.P6292991329355079160

`abs(xor(Δ[n²]², -3))`
-/

namespace A112087.P6292991329355079160
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.xor (((f1 (n + 1) : ℤ) - (f1 n : ℤ)) ^ 2) (-3)|

end

end A112087.P6292991329355079160

namespace A112087

/-- `abs(xor(Δ[n²]², -3))` -/
def P6292991329355079160.Spec : Prop :=
  ∀ n, P6292991329355079160.a n = A112087 (n + 1)

end A112087

/-! ## A112087.P10439669692788255512

`lcm(4, n²+1+n)`
-/

namespace A112087.P10439669692788255512
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm 4 (n ^ 2 + 1 + n)

end

end A112087.P10439669692788255512

namespace A112087

/-- `lcm(4, n²+1+n)` -/
def P10439669692788255512.Spec : Prop :=
  ∀ n, (P10439669692788255512.a n : ℤ) = A112087 (n + 1)

end A112087

/-! ## A112087.P3391661293855189467

`-xor(3, -Δ[n²]²)`
-/

namespace A112087.P3391661293855189467
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -Int.xor 3 (-(((f1 (n + 1) : ℤ) - (f1 n : ℤ)) ^ 2))

end

end A112087.P3391661293855189467

namespace A112087

/-- `-xor(3, -Δ[n²]²)` -/
def P3391661293855189467.Spec : Prop :=
  ∀ n, P3391661293855189467.a n = A112087 (n + 1)

end A112087

/-! ## A112087.P12241033759933769728

`∑[a(n-1)+8]` with `a(0)=4, a(1)=8`
-/

namespace A112087.P12241033759933769728
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [4, 8] fun n f1 =>
  f1 (n - 1) + 8

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A112087.P12241033759933769728

namespace A112087

/-- `∑[a(n-1)+8]` -/
def P12241033759933769728.Spec : Prop :=
  ∀ n, (P12241033759933769728.a n : ℤ) = A112087 (n + 1)

end A112087

/-! ## A112087.P1902398802711994524

`∑[ogf((4+4x^2)/(1-2x+x^2))]`
-/

namespace A112087.P1902398802711994524
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [4, 0, 4] [1, -2, 1] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A112087.P1902398802711994524

namespace A112087

/-- `∑[ogf((4+4x^2)/(1-2x+x^2))]` -/
def P1902398802711994524.Spec : Prop :=
  ∀ n, P1902398802711994524.a n = A112087 (n + 1)

end A112087

/-! ## A112087.P6098472183672170512

`ogf((4+4x^2)/(1-3x+3x^2-x^3))`
-/

namespace A112087.P6098472183672170512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [4, 0, 4] [1, -3, 3, -1] n

end

end A112087.P6098472183672170512

namespace A112087

/-- `ogf((4+4x^2)/(1-3x+3x^2-x^3))` -/
def P6098472183672170512.Spec : Prop :=
  ∀ n, P6098472183672170512.a n = A112087 (n + 1)

end A112087

/-! ## A112087.P5972835464478955313

`record[(n+1)*xor(1, n)+3]`
-/

namespace A112087.P5972835464478955313
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) * Nat.xor 1 n + 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A112087.P5972835464478955313

namespace A112087

/-- `record[(n+1)*xor(1, n)+3]` -/
def P5972835464478955313.Spec : Prop :=
  ∀ n, (P5972835464478955313.a n : ℤ) = A112087 (n + 1)

end A112087

/-! ## A112087.P2729585895684932117

`record[n^(2*and(1, n))+3]`
-/

namespace A112087.P2729585895684932117
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ (2 * Nat.land 1 n) + 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A112087.P2729585895684932117

namespace A112087

/-- `record[n^(2*and(1, n))+3]` -/
def P2729585895684932117.Spec : Prop :=
  ∀ n, (P2729585895684932117.a n : ℤ) = A112087 (n + 1)

end A112087

/-! ## A112087.P11920356307254706365

`9*n-(n-a(n-1))` with `a(0)=4`
-/

namespace A112087.P11920356307254706365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [4] fun n a =>
  (9 * n : ℤ) - ((n : ℤ) - a (n - 1))

end

end A112087.P11920356307254706365

namespace A112087

/-- `9*n-(n-a(n-1))` -/
def P11920356307254706365.Spec : Prop :=
  ∀ n, P11920356307254706365.a n = A112087 (n + 1)

theorem P11920356307254706365.correct : P11920356307254706365.Spec := by
  intro n
  induction n with
  | zero => simp [A112087, A112087.P11920356307254706365.a, A112087.P10058396816132034183.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
  | succ m ih =>
    simp only [A112087, Nat.add_sub_cancel, A112087.P11920356307254706365.a, A112087.P10058396816132034183.a, SequenceMachineLib.memo_apply] at ih ⊢
    rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
    try simp only [Nat.add_sub_cancel, Nat.lt_add_one, ↓reduceIte]
    try push_cast at ih ⊢
    try linarith

end A112087

/-! ## A112087.P3525276217279060756

`floor((C(2*n+1, 2)/(n+1)+2)²)`
-/

namespace A112087.P3525276217279060756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((Nat.choose (2 * n + 1) 2 : ℚ) / (n + 1 : ℚ) + 2) ^ 2⌋

end

end A112087.P3525276217279060756

namespace A112087

/-- `floor((C(2*n+1, 2)/(n+1)+2)²)` -/
def P3525276217279060756.Spec : Prop :=
  ∀ n, P3525276217279060756.a n = A112087 (n + 1)

end A112087

/-! ## A112087.P6675612015084004957

`∑[4*A004277(n)]`
-/

namespace A112087.P6675612015084004957
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A004277 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A112087.P6675612015084004957

namespace A112087

/-- `∑[4*A004277(n)]` -/
def P6675612015084004957.Spec : Prop :=
  ∀ n, P6675612015084004957.a n = A112087 (n + 1)

end A112087

/-! ## A112087.P15291663168965077982

`(A108099(n)+4)/2`
-/

namespace A112087.P15291663168965077982
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A108099 n + 4 : ℚ) / 2

end

end A112087.P15291663168965077982

namespace A112087

/-- `(A108099(n)+4)/2` -/
def P15291663168965077982.Spec : Prop :=
  ∀ n, P15291663168965077982.a n = (A112087 (n + 1) : ℚ)

theorem P15291663168965077982.correct : P15291663168965077982.Spec := by
  intro n
  simp only [A112087, Nat.add_sub_cancel, A112087.P15291663168965077982.a, A112087.P10058396816132034183.a, A108099, A108099.P5915517825114269260.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A112087

/-! ## A112087.P10831145305014783128

`A017029(n)+A001107(n)`
-/

namespace A112087.P10831145305014783128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017029 n + A001107 n

end

end A112087.P10831145305014783128

namespace A112087

/-- `A017029(n)+A001107(n)` -/
def P10831145305014783128.Spec : Prop :=
  ∀ n, P10831145305014783128.a n = A112087 (n + 1)

theorem P10831145305014783128.correct : P10831145305014783128.Spec := by
  intro n
  simp only [A112087, Nat.add_sub_cancel, A112087.P10831145305014783128.a, A112087.P10058396816132034183.a, A001107, A001107.P15766833630772781234.a, A017029, A017029.P18040034652068019793.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A112087

/-! ## A112087.P15879163286023093005

`A016957(n)+A002939(n)`
-/

namespace A112087.P15879163286023093005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016957 n + A002939 n

end

end A112087.P15879163286023093005

namespace A112087

/-- `A016957(n)+A002939(n)` -/
def P15879163286023093005.Spec : Prop :=
  ∀ n, P15879163286023093005.a n = A112087 (n + 1)

theorem P15879163286023093005.correct : P15879163286023093005.Spec := by
  intro n
  simp only [A112087, Nat.add_sub_cancel, A112087.P15879163286023093005.a, A112087.P10058396816132034183.a, A002939, A002939.P11095602872349887610.a, A016957, A016957.P9941618694539595759.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A112087

/-! ## A112087.P17113895330332442918

`A027688(n)+A003215(n)`
-/

namespace A112087.P17113895330332442918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027688 n + A003215 n

end

end A112087.P17113895330332442918

namespace A112087

/-- `A027688(n)+A003215(n)` -/
def P17113895330332442918.Spec : Prop :=
  ∀ n, P17113895330332442918.a n = A112087 (n + 1)

theorem P17113895330332442918.correct : P17113895330332442918.Spec := by
  intro n
  simp only [A112087, Nat.add_sub_cancel, A112087.P17113895330332442918.a, A112087.P10058396816132034183.a, A003215, A003215.P5851317289441473820.a, A027688, A027688.P8661981911705810589.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A112087

/-!
# A112088: Number of leaf nodes in a binary tree.

The programs for A112088, the canonical program `A112088.P9277482572190507619` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A112088 has offset 1).

The definition of A112088 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 564 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A112088.P9277482572190507619

`Δ[ceil(3/2*a(n-1))]` with `a(0)=4`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A112088

/-- `Δ[ceil(3/2*a(n-1))]` -/
def P9277482572190507619.Spec : Prop :=
  ∀ n, P9277482572190507619.a n = A112088 (n + 1)

theorem P9277482572190507619.correct : P9277482572190507619.Spec := by
  intro n
  simp only [A112088, Nat.add_sub_cancel]

end A112088

/-! ## A112088.P10290261748570114537

`Δ[floor(3/2*a(n-1))]` with `a(0)=5`
-/

namespace A112088.P10290261748570114537
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [5] fun n f1 =>
  ⌊(3 : ℚ) / 2 * (f1 (n - 1) : ℚ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A112088.P10290261748570114537

namespace A112088

/-- `Δ[floor(3/2*a(n-1))]` -/
def P10290261748570114537.Spec : Prop :=
  ∀ n, P10290261748570114537.a n = A112088 (n + 1)

end A112088

/-! ## A112088.P15763347100545728791

`Δ[round(3/2*a(n-1))]` with `a(0)=4`
-/

namespace A112088.P15763347100545728791
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [4] fun n f1 =>
  SequenceMachineLib.roundAway ((3 : ℚ) / 2 * (f1 (n - 1) : ℚ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A112088.P15763347100545728791

namespace A112088

/-- `Δ[round(3/2*a(n-1))]` -/
def P15763347100545728791.Spec : Prop :=
  ∀ n, P15763347100545728791.a n = A112088 (n + 1)

end A112088

/-! ## A112088.P16748641514800653271

`Δ[ceil(a(n-1)+a(n-1)/2)]` with `a(0)=4`
-/

namespace A112088.P16748641514800653271
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [4] fun n f1 =>
  ⌈(f1 (n - 1) : ℚ) + (f1 (n - 1) : ℚ) / 2⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A112088.P16748641514800653271

namespace A112088

/-- `Δ[ceil(a(n-1)+a(n-1)/2)]` -/
def P16748641514800653271.Spec : Prop :=
  ∀ n, P16748641514800653271.a n = A112088 (n + 1)

theorem P16748641514800653271.correct : P16748641514800653271.Spec := by
  intro n
  simp only [A112088, Nat.add_sub_cancel, A112088.P16748641514800653271.f1, A112088.P16748641514800653271.a, A112088.P9277482572190507619.f1, A112088.P9277482572190507619.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A112088

/-! ## A112088.P3144852708701608023

`Δ[floor(a(n-1)+a(n-1)/2)]` with `a(0)=5`
-/

namespace A112088.P3144852708701608023
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [5] fun n f1 =>
  ⌊(f1 (n - 1) : ℚ) + (f1 (n - 1) : ℚ) / 2⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A112088.P3144852708701608023

namespace A112088

/-- `Δ[floor(a(n-1)+a(n-1)/2)]` -/
def P3144852708701608023.Spec : Prop :=
  ∀ n, P3144852708701608023.a n = A112088 (n + 1)

end A112088

/-! ## A112088.P9165410247560927232

`Δ[A381677(n+1)]`
-/

namespace A112088.P9165410247560927232
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381677 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A112088.P9165410247560927232

namespace A112088

/-- `Δ[A381677(n+1)]` -/
def P9165410247560927232.Spec : Prop :=
  ∀ n, P9165410247560927232.a n = A112088 (n + 1)

end A112088

/-! ## A112088.P6776316716967979250

`A381677(n+2)-A381677(n+1)`
-/

namespace A112088.P6776316716967979250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381677 (n + 2) - A381677 (n + 1)

end

end A112088.P6776316716967979250

namespace A112088

/-- `A381677(n+2)-A381677(n+1)` -/
def P6776316716967979250.Spec : Prop :=
  ∀ n, P6776316716967979250.a n = A112088 (n + 1)

end A112088

/-!
# A112091: Number of idempotent order-preserving partial transformations (of an n-element chain).

The programs for A112091, the canonical program `A112091.P2247542997097083569` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A112091 has offset 0).

The definition of A112091 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A112091.P2247542997097083569

`1+5*(a(n-1)-a(n-2))` with `a(0)=1, a(1)=2`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A112091

/-- `1+5*(a(n-1)-a(n-2))` -/
def P2247542997097083569.Spec : Prop :=
  ∀ n, P2247542997097083569.a n = A112091 n

theorem P2247542997097083569.correct : P2247542997097083569.Spec := by
  intro n
  simp only [A112091]

end A112091

/-! ## A112091.P6413063627251323295

`∑[ogf((1-4x+4x^2)/(1-5x+5x^2))]`
-/

namespace A112091.P6413063627251323295
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -4, 4] [1, -5, 5] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A112091.P6413063627251323295

namespace A112091

/-- `∑[ogf((1-4x+4x^2)/(1-5x+5x^2))]` -/
def P6413063627251323295.Spec : Prop :=
  ∀ n, P6413063627251323295.a n = A112091 n

end A112091

/-! ## A112091.P12426375114618894012

`ogf((1-4x+4x^2)/(1-6x+10x^2-5x^3))`
-/

namespace A112091.P12426375114618894012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -4, 4] [1, -6, 10, -5] n

end

end A112091.P12426375114618894012

namespace A112091

/-- `ogf((1-4x+4x^2)/(1-6x+10x^2-5x^3))` -/
def P12426375114618894012.Spec : Prop :=
  ∀ n, P12426375114618894012.a n = A112091 n

end A112091

/-! ## A112091.P13350130032469125768

`∑[5*(a(n-1)-a(n-2))]` with `a(0)=1, a(1)=1, a(2)=4`
-/

namespace A112091.P13350130032469125768
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 4] fun n f1 =>
  5 * (f1 (n - 1) - f1 (n - 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A112091.P13350130032469125768

namespace A112091

/-- `∑[5*(a(n-1)-a(n-2))]` -/
def P13350130032469125768.Spec : Prop :=
  ∀ n, P13350130032469125768.a n = A112091 n

end A112091

/-! ## A112091.P10125841939118019282

`A093131(n)+1`
-/

namespace A112091.P10125841939118019282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093131 n + 1

end

end A112091.P10125841939118019282

namespace A112091

/-- `A093131(n)+1` -/
def P10125841939118019282.Spec : Prop :=
  ∀ n, P10125841939118019282.a n = A112091 n

end A112091

/-! ## A112091.P782552629149051891

`a(n-1)+A039717(n)` with `a(0)=1`
-/

namespace A112091.P782552629149051891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + A039717 n

end

end A112091.P782552629149051891

namespace A112091

/-- `a(n-1)+A039717(n)` -/
def P782552629149051891.Spec : Prop :=
  ∀ n, P782552629149051891.a n = A112091 n

end A112091

/-! ## A112091.P2827823241623319049

`∑[A039717(A000007(n)+n)]`
-/

namespace A112091.P2827823241623319049
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039717 (A000007 n + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A112091.P2827823241623319049

namespace A112091

/-- `∑[A039717(A000007(n)+n)]` -/
def P2827823241623319049.Spec : Prop :=
  ∀ n, P2827823241623319049.a n = A112091 n

end A112091

/-! ## A112091.P8590855175444580654

`A020876(n)-∑[A147748(n)]`
-/

namespace A112091.P8590855175444580654
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147748 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020876 n - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A112091.P8590855175444580654

namespace A112091

/-- `A020876(n)-∑[A147748(n)]` -/
def P8590855175444580654.Spec : Prop :=
  ∀ n, P8590855175444580654.a n = A112091 n

end A112091

/-! ## A112091.P9315732537580247863

`A081567(n)+1-A093129(n)`
-/

namespace A112091.P9315732537580247863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081567 n + (1 - A093129 n)

end

end A112091.P9315732537580247863

namespace A112091

/-- `A081567(n)+1-A093129(n)` -/
def P9315732537580247863.Spec : Prop :=
  ∀ n, P9315732537580247863.a n = A112091 n

end A112091

/-! ## A112091.P1302254375763578969

`Δ[A283842(n)+Δ[A000295(n)]]`
-/

namespace A112091.P1302254375763578969
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000295 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283842 n + (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A112091.P1302254375763578969

namespace A112091

/-- `Δ[A283842(n)+Δ[A000295(n)]]` -/
def P1302254375763578969.Spec : Prop :=
  ∀ n, P1302254375763578969.a n = A112091 n

end A112091

/-! ## A112091.P5272369907409922625

`∑[A052936(n)]+1-A093129(n)`
-/

namespace A112091.P5272369907409922625
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052936 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (1 - A093129 n)

end

end A112091.P5272369907409922625

namespace A112091

/-- `∑[A052936(n)]+1-A093129(n)` -/
def P5272369907409922625.Spec : Prop :=
  ∀ n, P5272369907409922625.a n = A112091 n

end A112091

/-! ## A112091.P690609036464904646

`A136775(n+1)+1-A147748(n)`
-/

namespace A112091.P690609036464904646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136775 (n + 1) + (1 - A147748 n)

end

end A112091.P690609036464904646

namespace A112091

/-- `A136775(n+1)+1-A147748(n)` -/
def P690609036464904646.Spec : Prop :=
  ∀ n, P690609036464904646.a n = A112091 n

end A112091

/-! ## A112091.P15145374618416712705

`A005013(n)*A074872(n+1)+1`
-/

namespace A112091.P15145374618416712705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005013 n * A074872 (n + 1) + 1

end

end A112091.P15145374618416712705

namespace A112091

/-- `A005013(n)*A074872(n+1)+1` -/
def P15145374618416712705.Spec : Prop :=
  ∀ n, P15145374618416712705.a n = A112091 n

end A112091

/-! ## A112091.P15347547183188856688

`A033193(n+1)-∑[A033190(n+1)]`
-/

namespace A112091.P15347547183188856688
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033190 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033193 (n + 1) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A112091.P15347547183188856688

namespace A112091

/-- `A033193(n+1)-∑[A033190(n+1)]` -/
def P15347547183188856688.Spec : Prop :=
  ∀ n, P15347547183188856688.a n = A112091 n

end A112091

/-! ## A112091.P8448646522793355780

`∑[A039717(A008619(A004273(n)))]`
-/

namespace A112091.P8448646522793355780
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039717 (A008619 (A004273 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A112091.P8448646522793355780

namespace A112091

/-- `∑[A039717(A008619(A004273(n)))]` -/
def P8448646522793355780.Spec : Prop :=
  ∀ n, P8448646522793355780.a n = A112091 n

end A112091

/-! ## A112091.P2210054000928215013

`A030191(n)+1-A039717(n+1)`
-/

namespace A112091.P2210054000928215013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030191 n + (1 - A039717 (n + 1))

end

end A112091.P2210054000928215013

namespace A112091

/-- `A030191(n)+1-A039717(n+1)` -/
def P2210054000928215013.Spec : Prop :=
  ∀ n, P2210054000928215013.a n = A112091 n

end A112091

/-! ## A112091.P12262354419366801462

`A039717(n+1)+1-A081567(n)`
-/

namespace A112091.P12262354419366801462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039717 (n + 1) + (1 - A081567 n)

end

end A112091.P12262354419366801462

namespace A112091

/-- `A039717(n+1)+1-A081567(n)` -/
def P12262354419366801462.Spec : Prop :=
  ∀ n, P12262354419366801462.a n = A112091 n

end A112091

/-! ## A112091.P10215208057904644492

`A217777(2*n)+1-A178381(2*n+1)`
-/

namespace A112091.P10215208057904644492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217777 (2 * n) + (1 - A178381 (2 * n + 1))

end

end A112091.P10215208057904644492

namespace A112091

/-- `A217777(2*n)+1-A178381(2*n+1)` -/
def P10215208057904644492.Spec : Prop :=
  ∀ n, P10215208057904644492.a n = A112091 n

end A112091

/-! ## A112091.P4083987872943672234

`Δ[A039717(n+1)-A020876(n)]+1`
-/

namespace A112091.P4083987872943672234
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039717 (n + 1) - A020876 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + 1

end

end A112091.P4083987872943672234

namespace A112091

/-- `Δ[A039717(n+1)-A020876(n)]+1` -/
def P4083987872943672234.Spec : Prop :=
  ∀ n, P4083987872943672234.a n = A112091 n

end A112091

/-! ## A112091.P17820716589875889129

`A083861(∑[n+2]-1)+1`
-/

namespace A112091.P17820716589875889129
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083861 (∑ j ∈ Finset.range (n + 1), f1 j - 1) + 1

end

end A112091.P17820716589875889129

namespace A112091

/-- `A083861(∑[n+2]-1)+1` -/
def P17820716589875889129.Spec : Prop :=
  ∀ n, P17820716589875889129.a n = A112091 n

end A112091

/-!
# A112092: a(n) is the least prime such that the multiplicative order of 4 mod a(n) equals n.

The programs for A112092, there is no canonical definition to state claims against.
-/

/-! ## A112092.P5320108953124563704

`A219792(8*(∑[2^n]+2))`
-/

namespace A112092.P5320108953124563704
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219792 (8 * (∑ j ∈ Finset.range (n + 1), f1 j + 2))

end

end A112092.P5320108953124563704

/-! ## A112092.P13297575845750772675

`A020639(A064080(n+1))`
-/

namespace A112092.P13297575845750772675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A064080 (n + 1)).toNat

end

end A112092.P13297575845750772675

/-! ## A112092.P2755895569711454163

`A078683(A208450(n+1))`
-/

namespace A112092.P2755895569711454163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078683 (A208450 (n + 1)).toNat

end

end A112092.P2755895569711454163

/-! ## A112092.P18169330918765988164

`A002322(A175161(n+1))+1`
-/

namespace A112092.P18169330918765988164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002322 (A175161 (n + 1)).toNat + 1

end

end A112092.P18169330918765988164

/-! ## A112092.P10013682371732516385

`A002322(A242475(n+4))+1`
-/

namespace A112092.P10013682371732516385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002322 (A242475 (n + 4)).toNat + 1

end

end A112092.P10013682371732516385

/-!
# A112093: Numerator of 3*Sum_{i=1..n} 1/(i^2*C(2*i,i)).

The programs for A112093, there is no canonical definition to state claims against.
-/

/-! ## A112093.P1616514652448471864

`A049084(A168593(n))+A016169(n)`
-/

namespace A112093.P1616514652448471864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049084 (A168593 n).toNat + A016169 n

end

end A112093.P1616514652448471864

/-!
# A112094: Denominator of 3*Sum_{i=1..n} 1/(i^2*C(2*i,i)).

The programs for A112094, there is no canonical definition to state claims against.
-/

/-! ## A112094.P6937718484294206824

`lcm(3, A134805(n))/3`
-/

namespace A112094.P6937718484294206824
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm 3 (A134805 n) : ℚ) / 3

end

end A112094.P6937718484294206824

/-! ## A112094.P16715653512785722320

`A134805(n)/A152714(A000124(n))`
-/

namespace A112094.P16715653512785722320
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A134805 n : ℚ) / (A152714 (A000124 n).toNat : ℚ)

end

end A112094.P16715653512785722320

/-! ## A112094.P9976625994200272858

`A134805(n)/gcd(A001748(n+1), A134805(n))`
-/

namespace A112094.P9976625994200272858
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A134805 n : ℚ) / (Int.gcd (A001748 (n + 1)) (A134805 n) : ℚ)

end

end A112094.P9976625994200272858

/-!
# A112097: Numerator of Sum_{i=1..n} 1/C(2*i,i).

The programs for A112097, there is no canonical definition to state claims against.
-/

/-! ## A112097.P17791568470065465159

`A006530(A025541(n))-A112098(n)`
-/

namespace A112097.P17791568470065465159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A025541 n).toNat - A112098 n

end

end A112097.P17791568470065465159

/-! ## A112097.P11987021637102867080

`(A025541(n)-A025540(n))/A328479(A025541(n))`
-/

namespace A112097.P11987021637102867080
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A025541 n - A025540 n : ℚ) / (A328479 (A025541 n).toNat : ℚ)

end

end A112097.P11987021637102867080

/-!
# A112098: Denominator of Sum_{i=1..n} 1/C(2*i,i).

The programs for A112098, there is no canonical definition to state claims against.
-/

/-! ## A112098.P10982274174201328702

`A006530(A025541(n))-A112097(n)`
-/

namespace A112098.P10982274174201328702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A025541 n).toNat - A112097 n

end

end A112098.P10982274174201328702

/-! ## A112098.P1230899052938007205

`A025540(n)/A040001(A025542(n))`
-/

namespace A112098.P1230899052938007205
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A025540 n : ℚ) / (A040001 (A025542 n).toNat : ℚ)

end

end A112098.P1230899052938007205

/-! ## A112098.P2766282389348445722

`A025540(n)/A328479(A025541(n))`
-/

namespace A112098.P2766282389348445722
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A025540 n : ℚ) / (A328479 (A025541 n).toNat : ℚ)

end

end A112098.P2766282389348445722

/-!
# A112099: Numerator of Sum_{i=1..n} 1/(i*C(2*i,i)).

The programs for A112099, there is no canonical definition to state claims against.
-/

/-! ## A112099.P11719918208274113255

`A275326(∑[n²+3])+n`
-/

namespace A112099.P11719918208274113255
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2 + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275326 (∑ j ∈ Finset.range (n + 1), f1 j) + (n : ℤ)

end

end A112099.P11719918208274113255

