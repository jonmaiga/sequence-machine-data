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
import Seq.B000.C030
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C036
import Seq.B000.C037
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
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
import Seq.B003.C003
import Seq.B003.C004
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
import Seq.B008.C001
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

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A076700: Number of prime powers of prime numbers less than 10^n.

The programs for A076700, there is no canonical definition to state claims against.
-/

/-! ## A076700.P8034298084643156986

`A002378(n)+Δ[A234949(3*n+2)]`
-/

namespace A076700.P8034298084643156986
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234949 (3 * n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002378 n + (f1 (n + 1) - f1 n)

end

end A076700.P8034298084643156986

/-! ## A076700.P6021892686275513299

`A379518(n+1)+A162340(A293066(n))`
-/

namespace A076700.P6021892686275513299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379518 (n + 1) + A162340 (A293066 n).toNat

end

end A076700.P6021892686275513299

/-!
# A076701: Values of n not reached in the Hofstadter sequence (A005185).

The programs for A076701, there is no canonical definition to state claims against.
-/

/-! ## A076701.P15320111682354418806

`lt[char[A005185(n+1)], n/A081828(n+1)]`
-/

namespace A076701.P15320111682354418806
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005185 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / (A081828 (n + 1) : ℚ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℚ) < f3 j) n

end

end A076701.P15320111682354418806

/-! ## A076701.P17042095659254467199

`eq[char[A005185(n+1)], A151810(n)]`
-/

namespace A076701.P17042095659254467199
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005185 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151810 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A076701.P17042095659254467199

/-! ## A076701.P18279639041381154523

`eq[char[A005185(n+1)], A151933(n)]`
-/

namespace A076701.P18279639041381154523
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005185 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151933 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A076701.P18279639041381154523

/-! ## A076701.P13941194917135664881

`eq[0, A087753(n+1)]+1`
-/

namespace A076701.P13941194917135664881
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087753 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A076701.P13941194917135664881

/-! ## A076701.P12481019427045575772

`eq[0, A087753(A028310(n))]`
-/

namespace A076701.P12481019427045575772
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087753 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A076701.P12481019427045575772

/-!
# A076702: Distinct-digit prime powers of prime numbers.

The programs for A076702, there is no canonical definition to state claims against.
-/

/-! ## A076702.P17073243919308234414

`∩[A053810(n+1), A075309(n+1)]`
-/

namespace A076702.P17073243919308234414
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053810 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075309 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A076702.P17073243919308234414

/-! ## A076702.P17644443115941664794

`∩[A075309(n+1), A114129(n+1)]`
-/

namespace A076702.P17644443115941664794
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075309 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114129 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A076702.P17644443115941664794

/-! ## A076702.P10805961560568849927

`∩[A075309(n+1), A385288(n+1)]`
-/

namespace A076702.P10805961560568849927
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075309 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385288 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A076702.P10805961560568849927

/-! ## A076702.P13185902479420114114

`∩[A010784(n+1), A053810(n+1)]`
-/

namespace A076702.P13185902479420114114
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010784 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053810 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A076702.P13185902479420114114

/-!
# A076703: Palindromic prime powers of prime numbers.

The programs for A076703, there is no canonical definition to state claims against.
-/

/-! ## A076703.P7276688802556163715

`A084093(comp[∑[A195161(n)]])`
-/

namespace A076703.P7276688802556163715
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195161 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084093 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A076703.P7276688802556163715

/-! ## A076703.P11034409698275110426

`A072037(lt[A082626(n+1), A246488(2*(n+1))])`
-/

namespace A076703.P11034409698275110426
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082626 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246488 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072037 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A076703.P11034409698275110426

/-! ## A076703.P10545427820452579419

`∩[A002113(n+1), A051676(n+1)]`
-/

namespace A076703.P10545427820452579419
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002113 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051676 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A076703.P10545427820452579419

/-! ## A076703.P11830280376169644296

`∩[A002113(n+1), A053810(n+1)]`
-/

namespace A076703.P11830280376169644296
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002113 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053810 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A076703.P11830280376169644296

/-! ## A076703.P546559786873437339

`∩[A032350(n+1), A051676(n+1)]`
-/

namespace A076703.P546559786873437339
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032350 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051676 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A076703.P546559786873437339

/-!
# A076705: Prime powers of prime numbers such that the sum of its digits is also prime power of prime number.

The programs for A076705, there is no canonical definition to state claims against.
-/

/-! ## A076705.P10549344084975365825

`A053810(eq[A066657(n), A248736(n+1)]+1)`
-/

namespace A076705.P10549344084975365825
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053810 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1)

end

end A076705.P10549344084975365825

/-! ## A076705.P2546477211205198976

`A175839(A327009(n+1))`
-/

namespace A076705.P2546477211205198976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175839 (A327009 (n + 1)).toNat

end

end A076705.P2546477211205198976

/-!
# A076706: Primes which are the difference between two successive prime powers of prime numbers.

The programs for A076706, there is no canonical definition to state claims against.
-/

/-! ## A076706.P12889445838222332023

`p?[A076707(n+1)]`
-/

namespace A076706.P12889445838222332023
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076707 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A076706.P12889445838222332023

/-! ## A076706.P9511703685317648486

`record[p?[A076707(A007306(n))]]`
-/

namespace A076706.P9511703685317648486
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076707 (A007306 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A076706.P9511703685317648486

/-! ## A076706.P3039720081681040200

`p?[record[A076707(A020986(n))]]`
-/

namespace A076706.P3039720081681040200
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076707 (A020986 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A076706.P3039720081681040200

/-! ## A076706.P16975290355761203578

`record[A020639(A076707(n+2))]`
-/

namespace A076706.P16975290355761203578
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A076707 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A076706.P16975290355761203578

/-!
# A076707: Ordered differences without repetitions between two successive prime powers of prime numbers.

The programs for A076707, there is no canonical definition to state claims against.
-/

/-! ## A076707.P11698141105744687863

`eq[1, char[A062780(n+1)]]`
-/

namespace A076707.P11698141105744687863
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062780 (n + 1)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A076707.P11698141105744687863

/-! ## A076707.P8426497108765770140

`eq[1, char[Δ[A053810(n+1)]]]`
-/

namespace A076707.P8426497108765770140
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053810 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f4 (n + 1) - f4 n

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A076707.P8426497108765770140

/-!
# A076708: Numbers k such that triangular numbers T(k) and T(k+1) sum to another triangular number (that is also a perfect square).

The programs for A076708, the canonical program `A076708.P6373087202894760227` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A076708 has offset 1).

The definition of A076708 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A076708.P6373087202894760227

`((3+2*sqrt(2))^(n+1)-(3-2*sqrt(2))^(n+1))/(4*sqrt(2))-1`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A076708

/-- `((3+2*sqrt(2))^(n+1)-(3-2*sqrt(2))^(n+1))/(4*sqrt(2))-1` -/
def P6373087202894760227.Spec : Prop :=
  ∀ n, P6373087202894760227.a n = (A076708 (n + 1) : ℝ)

end A076708

/-! ## A076708.P7162880006939503717

`∑[ogf((5x-x^2)/(1-6x+x^2))]`
-/

namespace A076708.P7162880006939503717
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 5, -1] [1, -6, 1] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A076708.P7162880006939503717

namespace A076708

/-- `∑[ogf((5x-x^2)/(1-6x+x^2))]` -/
def P7162880006939503717.Spec : Prop :=
  ∀ n, P7162880006939503717.a n = A076708 (n + 1)

end A076708

/-! ## A076708.P4751633066601107786

`ogf((5x-x^2)/(1-7x+7x^2-x^3))`
-/

namespace A076708.P4751633066601107786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 5, -1] [1, -7, 7, -1] n

end

end A076708.P4751633066601107786

namespace A076708

/-- `ogf((5x-x^2)/(1-7x+7x^2-x^3))` -/
def P4751633066601107786.Spec : Prop :=
  ∀ n, P4751633066601107786.a n = A076708 (n + 1)

end A076708

/-! ## A076708.P14540140070056179691

`∑[floor(a(n-1)/(3-sqrt(8)))]` with `a(0)=0, a(1)=5`
-/

namespace A076708.P14540140070056179691
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 5] fun n f1 =>
  ⌊(f1 (n - 1) : ℝ) / (3 - Real.sqrt (8 : ℝ))⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A076708.P14540140070056179691

namespace A076708

/-- `∑[floor(a(n-1)/(3-sqrt(8)))]` -/
def P14540140070056179691.Spec : Prop :=
  ∀ n, P14540140070056179691.a n = A076708 (n + 1)

end A076708

/-! ## A076708.P17536444820793412547

`∑[round(a(n-1)/(3-sqrt(8)))]` with `a(0)=0, a(1)=5`
-/

namespace A076708.P17536444820793412547
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 5] fun n f1 =>
  SequenceMachineLib.roundAway ((f1 (n - 1) : ℝ) / (3 - Real.sqrt (8 : ℝ)))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A076708.P17536444820793412547

namespace A076708

/-- `∑[round(a(n-1)/(3-sqrt(8)))]` -/
def P17536444820793412547.Spec : Prop :=
  ∀ n, P17536444820793412547.a n = A076708 (n + 1)

end A076708

/-!
# A076711: Highly composite triangular numbers: triangular numbers where the number of divisors increases to a record.

The programs for A076711, there is no canonical definition to state claims against.
-/

/-! ## A076711.P3310528789314737660

`C(A101755(n+1)+1, 2)`
-/

namespace A076711.P3310528789314737660
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A101755 (n + 1) + 1).toNat 2

end

end A076711.P3310528789314737660

/-! ## A076711.P11469651835510169247

`A000217(A101755(n+1))`
-/

namespace A076711.P11469651835510169247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (A101755 (n + 1)).toNat

end

end A076711.P11469651835510169247

/-! ## A076711.P16320870817510887833

`A161680(A101755(n+1)+1)`
-/

namespace A076711.P16320870817510887833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161680 (A101755 (n + 1) + 1).toNat

end

end A076711.P16320870817510887833

/-! ## A076711.P2029148148346619582

`A179865(A101755(n+1)+1)`
-/

namespace A076711.P2029148148346619582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179865 (A101755 (n + 1) + 1).toNat

end

end A076711.P2029148148346619582

/-! ## A076711.P13643745857897956304

`A000096(A101755(n+1)-1)+1`
-/

namespace A076711.P13643745857897956304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000096 (A101755 (n + 1) - 1).toNat + 1

end

end A076711.P13643745857897956304

/-!
# A076712: Triangular numbers which are also happy numbers (cf. A007770).

The programs for A076712, there is no canonical definition to state claims against.
-/

/-! ## A076712.P11577415430193140641

`∩[A007770(n+1), A000217(n)]`
-/

namespace A076712.P11577415430193140641
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007770 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A076712.P11577415430193140641

/-! ## A076712.P15522150326505916422

`∩[A007770(n+1), A186783(n+1)]`
-/

namespace A076712.P15522150326505916422
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007770 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186783 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A076712.P15522150326505916422

/-! ## A076712.P1541634604928201413

`∩[A007770(n+1), A034856(n+1)-n]`
-/

namespace A076712.P1541634604928201413
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007770 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034856 (n + 1) - (n : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A076712.P1541634604928201413

/-! ## A076712.P2906939255071061798

`eq[A031176(n), A073424(n)]`
-/

namespace A076712.P2906939255071061798
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031176 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073424 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A076712.P2906939255071061798

/-!
# A076713: Harshad (Niven) triangular numbers: triangular numbers which are divisible by the sum of their digits.

The programs for A076713, there is no canonical definition to state claims against.
-/

/-! ## A076713.P11410219534705338046

`∩[A005349(n+1), A000217(n)]`
-/

namespace A076713.P11410219534705338046
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005349 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A076713.P11410219534705338046

/-! ## A076713.P11847141554586627906

`filter[A005349(n+1), A073424(#)]`
-/

namespace A076713.P11847141554586627906
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005349 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A073424 (f1 j).toNat = 1) n)

end

end A076713.P11847141554586627906

/-! ## A076713.P5942466198928473656

`A000217(record[A127093(A005349(n+1))])`
-/

namespace A076713.P5942466198928473656
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127093 (A005349 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A076713.P5942466198928473656

/-! ## A076713.P13981521777620752519

`A000217(record[A162319(A005349(n+1))])`
-/

namespace A076713.P13981521777620752519
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162319 (A005349 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A076713.P13981521777620752519

/-! ## A076713.P14288071941259571343

`record[A360074(∑[n+1])]`
-/

namespace A076713.P14288071941259571343
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360074 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A076713.P14288071941259571343

/-! ## A076713.P13301491796802360255

`filter[A005349(n+1), A010054(#)]`
-/

namespace A076713.P13301491796802360255
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005349 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010054 (f1 j).toNat = 1) n)

end

end A076713.P13301491796802360255

/-! ## A076713.P1629399545571927219

`filter[A000217(n+1), A188641(#)]`
-/

namespace A076713.P1629399545571927219
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A188641 (f1 j).toNat = 1) n)

end

end A076713.P1629399545571927219

/-! ## A076713.P12731563672610853691

`filter[A161680(n+2), A188641(#)]`
-/

namespace A076713.P12731563672610853691
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161680 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A188641 (f1 j).toNat = 1) n)

end

end A076713.P12731563672610853691

/-! ## A076713.P15905890222502521004

`filter[A179865(n+2), A188641(#)]`
-/

namespace A076713.P15905890222502521004
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179865 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A188641 (f1 j).toNat = 1) n)

end

end A076713.P15905890222502521004

/-!
# A076716: Number of distinct factorizations of n! with all factors > 1.

The programs for A076716, there is no canonical definition to state claims against.
-/

/-! ## A076716.P13738905254649669640

`A001055((n+1)!)`
-/

namespace A076716.P13738905254649669640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001055 (Nat.factorial (n + 1))

end

end A076716.P13738905254649669640

/-! ## A076716.P7048914120744208865

`A050322(A098718(n+1))`
-/

namespace A076716.P7048914120744208865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050322 (A098718 (n + 1)).toNat

end

end A076716.P7048914120744208865

/-! ## A076716.P7444199508588685124

`A318284(A325508(n+1))`
-/

namespace A076716.P7444199508588685124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318284 (A325508 (n + 1)).toNat

end

end A076716.P7444199508588685124

/-! ## A076716.P4863212937775562758

`A303386((round(sqrt(n²+1))+1)!)`
-/

namespace A076716.P4863212937775562758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303386 (Nat.factorial (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ)) + 1).toNat)

end

end A076716.P4863212937775562758

/-!
# A076717: a(n) = -Sum_{d|n} (-n/d)^d.

The programs for A076717, the canonical program `A076717.P15212604921476404834` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A076717 has offset 1).

The definition of A076717 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 629 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A076717.P15212604921476404834

`∑{d}[n+1, -(-((n+1)/#))^#]`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A076717

/-- `∑{d}[n+1, -(-((n+1)/#))^#]` -/
def P15212604921476404834.Spec : Prop :=
  ∀ n, P15212604921476404834.a n = (A076717 (n + 1) : ℚ)

end A076717

/-! ## A076717.P5901252120524175240

`A333823(n+1)+A333823(n+1)-A055225(n+1)`
-/

namespace A076717.P5901252120524175240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333823 (n + 1) + (A333823 (n + 1) - A055225 (n + 1))

end

end A076717.P5901252120524175240

namespace A076717

/-- `A333823(n+1)+A333823(n+1)-A055225(n+1)` -/
def P5901252120524175240.Spec : Prop :=
  ∀ n, P5901252120524175240.a n = A076717 (n + 1)

end A076717

/-! ## A076717.P12717396246195275328

`A333823(n+1)-(A326121(n+1)+1+n-A333823(n+1))`
-/

namespace A076717.P12717396246195275328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333823 (n + 1) - (A326121 (n + 1) + 1 + (n : ℤ) - A333823 (n + 1))

end

end A076717.P12717396246195275328

namespace A076717

/-- `A333823(n+1)-(A326121(n+1)+1+n-A333823(n+1))` -/
def P12717396246195275328.Spec : Prop :=
  ∀ n, P12717396246195275328.a n = A076717 (n + 1)

end A076717

/-! ## A076717.P845016410711336557

`2*A333823(n+1)-A055225(n+1)`
-/

namespace A076717.P845016410711336557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A333823 (n + 1) - A055225 (n + 1)

end

end A076717.P845016410711336557

namespace A076717

/-- `2*A333823(n+1)-A055225(n+1)` -/
def P845016410711336557.Spec : Prop :=
  ∀ n, P845016410711336557.a n = A076717 (n + 1)

end A076717

/-! ## A076717.P15312910826826638890

`A004277(A333823(n+1))-A055225(n+1)`
-/

namespace A076717.P15312910826826638890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A333823 (n + 1)).toNat - A055225 (n + 1)

end

end A076717.P15312910826826638890

namespace A076717

/-- `A004277(A333823(n+1))-A055225(n+1)` -/
def P15312910826826638890.Spec : Prop :=
  ∀ n, P15312910826826638890.a n = A076717 (n + 1)

end A076717

/-!
# A076720: Sum of product of divisors of n and sum of divisors of n.

The programs for A076720, the canonical program `A076720.P15743672648153073098` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A076720 has offset 1).

The definition of A076720 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5039 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A076720.P15743672648153073098

`∏{d}[n+1, #]+∑{d}[n+1, #]`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A076720

/-- `∏{d}[n+1, #]+∑{d}[n+1, #]` -/
def P15743672648153073098.Spec : Prop :=
  ∀ n, (P15743672648153073098.a n : ℤ) = A076720 (n + 1)

theorem P15743672648153073098.correct : P15743672648153073098.Spec := by
  intro n
  simp only [A076720, Nat.add_sub_cancel]

end A076720

/-! ## A076720.P7984018919721995484

`∑{d}[n+1, #]+exp(∑{d}[n+1, log(#)])`
-/

namespace A076720.P7984018919721995484
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((∑ d ∈ Nat.divisors (f1 n), d : ℕ) : ℝ) + Real.exp (∑ d ∈ Nat.divisors (f2 n), Real.log (d : ℝ))

end

end A076720.P7984018919721995484

namespace A076720

/-- `∑{d}[n+1, #]+exp(∑{d}[n+1, log(#)])` -/
def P7984018919721995484.Spec : Prop :=
  ∀ n, P7984018919721995484.a n = (A076720 (n + 1) : ℝ)

end A076720

/-! ## A076720.P5979540567877912920

`∑{d}[n+1, #]+2^∑{d}[n+1, log2(#)]`
-/

namespace A076720.P5979540567877912920
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((∑ d ∈ Nat.divisors (f1 n), d : ℕ) : ℝ) + (2 : ℝ) ^ (∑ d ∈ Nat.divisors (f2 n), Real.logb 2 (d : ℝ))

end

end A076720.P5979540567877912920

namespace A076720

/-- `∑{d}[n+1, #]+2^∑{d}[n+1, log2(#)]` -/
def P5979540567877912920.Spec : Prop :=
  ∀ n, P5979540567877912920.a n = (A076720 (n + 1) : ℝ)

end A076720

/-! ## A076720.P4884544790915909624

`∑{d}[n+1, #]+sqrt(n+1)^∏{e}[n+1, #+1]`
-/

namespace A076720.P4884544790915909624
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((∑ d ∈ Nat.divisors (f1 n), d : ℕ) : ℝ) + Real.sqrt (n + 1 : ℝ) ^ (∏ p ∈ Nat.primeFactors (f2 n), (Nat.factorization (f2 n) p + 1))

end

end A076720.P4884544790915909624

namespace A076720

/-- `∑{d}[n+1, #]+sqrt(n+1)^∏{e}[n+1, #+1]` -/
def P4884544790915909624.Spec : Prop :=
  ∀ n, P4884544790915909624.a n = (A076720 (n + 1) : ℝ)

end A076720

/-! ## A076720.P17802467560465372980

`∏{d}[n+1, #]+Δ[A160664(n)]`
-/

namespace A076720.P17802467560465372980
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160664 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∏ d ∈ Nat.divisors (f1 n), d : ℕ) : ℤ) + (f2 (n + 1) - f2 n)

end

end A076720.P17802467560465372980

namespace A076720

/-- `∏{d}[n+1, #]+Δ[A160664(n)]` -/
def P17802467560465372980.Spec : Prop :=
  ∀ n, P17802467560465372980.a n = A076720 (n + 1)

end A076720

/-! ## A076720.P1916505574124961377

`A007955(n+1)+Δ[A160664(n)]`
-/

namespace A076720.P1916505574124961377
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160664 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007955 (n + 1) + (f1 (n + 1) - f1 n)

end

end A076720.P1916505574124961377

namespace A076720

/-- `A007955(n+1)+Δ[A160664(n)]` -/
def P1916505574124961377.Spec : Prop :=
  ∀ n, P1916505574124961377.a n = A076720 (n + 1)

end A076720

/-! ## A076720.P18022455475619424193

`A007955(n+1)+A000203(n+1)`
-/

namespace A076720.P18022455475619424193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007955 (n + 1) + A000203 (n + 1)

end

end A076720.P18022455475619424193

namespace A076720

/-- `A007955(n+1)+A000203(n+1)` -/
def P18022455475619424193.Spec : Prop :=
  ∀ n, P18022455475619424193.a n = A076720 (n + 1)

end A076720

/-! ## A076720.P4470163957861308564

`A076721(n+1)+A074400(n+1)`
-/

namespace A076720.P4470163957861308564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076721 (n + 1) + A074400 (n + 1)

end

end A076720.P4470163957861308564

namespace A076720

/-- `A076721(n+1)+A074400(n+1)` -/
def P4470163957861308564.Spec : Prop :=
  ∀ n, P4470163957861308564.a n = A076720 (n + 1)

end A076720

/-! ## A076720.P12767840614718894445

`A007955(n+1)+A088580(n+1)-1`
-/

namespace A076720.P12767840614718894445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007955 (n + 1) + (A088580 (n + 1) - 1)

end

end A076720.P12767840614718894445

namespace A076720

/-- `A007955(n+1)+A088580(n+1)-1` -/
def P12767840614718894445.Spec : Prop :=
  ∀ n, P12767840614718894445.a n = A076720 (n + 1)

end A076720

/-! ## A076720.P17114046646007895296

`A076721(n+1)+2*A000203(n+1)`
-/

namespace A076720.P17114046646007895296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076721 (n + 1) + 2 * A000203 (n + 1)

end

end A076720.P17114046646007895296

namespace A076720

/-- `A076721(n+1)+2*A000203(n+1)` -/
def P17114046646007895296.Spec : Prop :=
  ∀ n, P17114046646007895296.a n = A076720 (n + 1)

end A076720

/-! ## A076720.P2421856505618022821

`A007955(n+1)+A074400(n+1)/2`
-/

namespace A076720.P2421856505618022821
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007955 (n + 1) : ℚ) + (A074400 (n + 1) : ℚ) / 2

end

end A076720.P2421856505618022821

namespace A076720

/-- `A007955(n+1)+A074400(n+1)/2` -/
def P2421856505618022821.Spec : Prop :=
  ∀ n, P2421856505618022821.a n = (A076720 (n + 1) : ℚ)

end A076720

/-! ## A076720.P13771232339990590555

`2*A007955(n+1)-A076721(n+1)`
-/

namespace A076720.P13771232339990590555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A007955 (n + 1) - A076721 (n + 1)

end

end A076720.P13771232339990590555

namespace A076720

/-- `2*A007955(n+1)-A076721(n+1)` -/
def P13771232339990590555.Spec : Prop :=
  ∀ n, P13771232339990590555.a n = A076720 (n + 1)

end A076720

/-! ## A076720.P11429424316024315367

`A007955(n+1)+A070039(n+1)+A070038(n+1)`
-/

namespace A076720.P11429424316024315367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007955 (n + 1) + (A070039 (n + 1) + A070038 (n + 1))

end

end A076720.P11429424316024315367

namespace A076720

/-- `A007955(n+1)+A070039(n+1)+A070038(n+1)` -/
def P11429424316024315367.Spec : Prop :=
  ∀ n, P11429424316024315367.a n = A076720 (n + 1)

end A076720

/-! ## A076720.P7531191793084531993

`A007955(n+1)+A088001(n+1)+A088000(n+1)`
-/

namespace A076720.P7531191793084531993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007955 (n + 1) + (A088001 (n + 1) + A088000 (n + 1))

end

end A076720.P7531191793084531993

namespace A076720

/-- `A007955(n+1)+A088001(n+1)+A088000(n+1)` -/
def P7531191793084531993.Spec : Prop :=
  ∀ n, P7531191793084531993.a n = A076720 (n + 1)

end A076720

/-! ## A076720.P1991520461016873646

`A007955(n+1)+A183101(n+1)+A091051(n+1)`
-/

namespace A076720.P1991520461016873646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007955 (n + 1) + (A183101 (n + 1) + A091051 (n + 1))

end

end A076720.P1991520461016873646

namespace A076720

/-- `A007955(n+1)+A183101(n+1)+A091051(n+1)` -/
def P1991520461016873646.Spec : Prop :=
  ∀ n, P1991520461016873646.a n = A076720 (n + 1)

end A076720

/-! ## A076720.P11696810925837195400

`A007955(n+1)+A009194(n+1)*A017665(n+1)`
-/

namespace A076720.P11696810925837195400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007955 (n + 1) + A009194 (n + 1) * A017665 (n + 1)

end

end A076720.P11696810925837195400

namespace A076720

/-- `A007955(n+1)+A009194(n+1)*A017665(n+1)` -/
def P11696810925837195400.Spec : Prop :=
  ∀ n, P11696810925837195400.a n = A076720 (n + 1)

end A076720

/-! ## A076720.P9885199281238865634

`A000203(n+1)+A157488(n+1)*A160199(n+1)`
-/

namespace A076720.P9885199281238865634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1) + A157488 (n + 1) * A160199 (n + 1)

end

end A076720.P9885199281238865634

namespace A076720

/-- `A000203(n+1)+A157488(n+1)*A160199(n+1)` -/
def P9885199281238865634.Spec : Prop :=
  ∀ n, P9885199281238865634.a n = A076720 (n + 1)

end A076720

/-! ## A076720.P7388663729223563124

`A000203(n+1)+A179937(n+1)*A184392(n+1)`
-/

namespace A076720.P7388663729223563124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1) + A179937 (n + 1) * A184392 (n + 1)

end

end A076720.P7388663729223563124

namespace A076720

/-- `A000203(n+1)+A179937(n+1)*A184392(n+1)` -/
def P7388663729223563124.Spec : Prop :=
  ∀ n, P7388663729223563124.a n = A076720 (n + 1)

end A076720

/-! ## A076720.P2608464751055857329

`A000203(n+1)+A183091(n+1)*A183092(n+1)`
-/

namespace A076720.P2608464751055857329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1) + A183091 (n + 1) * A183092 (n + 1)

end

end A076720.P2608464751055857329

namespace A076720

/-- `A000203(n+1)+A183091(n+1)*A183092(n+1)` -/
def P2608464751055857329.Spec : Prop :=
  ∀ n, P2608464751055857329.a n = A076720 (n + 1)

end A076720

/-! ## A076720.P8274665145105727757

`A007955(n+1)+A064840(n+1)/A000005(n+1)`
-/

namespace A076720.P8274665145105727757
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007955 (n + 1) : ℚ) + (A064840 (n + 1) : ℚ) / (A000005 (n + 1) : ℚ)

end

end A076720.P8274665145105727757

namespace A076720

/-- `A007955(n+1)+A064840(n+1)/A000005(n+1)` -/
def P8274665145105727757.Spec : Prop :=
  ∀ n, P8274665145105727757.a n = (A076720 (n + 1) : ℚ)

end A076720

/-!
# A076721: Difference between product of divisors of n and sum of divisors of n.

The programs for A076721, the canonical program `A076721.P9814838791473964183` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A076721 has offset 1).

The definition of A076721 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5039 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A076721.P9814838791473964183

`∏{d}[n+1, #]-∑{d}[n+1, #]`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A076721

/-- `∏{d}[n+1, #]-∑{d}[n+1, #]` -/
def P9814838791473964183.Spec : Prop :=
  ∀ n, P9814838791473964183.a n = A076721 (n + 1)

theorem P9814838791473964183.correct : P9814838791473964183.Spec := by
  intro n
  simp only [A076721, Nat.add_sub_cancel]

end A076721

/-! ## A076721.P16833255085222223801

`A007955(n+1)-∑{d}[n+1, #]`
-/

namespace A076721.P16833255085222223801
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007955 (n + 1) - ((∑ d ∈ Nat.divisors (f1 n), d : ℕ) : ℤ)

end

end A076721.P16833255085222223801

namespace A076721

/-- `A007955(n+1)-∑{d}[n+1, #]` -/
def P16833255085222223801.Spec : Prop :=
  ∀ n, P16833255085222223801.a n = A076721 (n + 1)

end A076721

/-! ## A076721.P6629541000361232735

`∏{d}[n+1, #]-A000203(n+1)`
-/

namespace A076721.P6629541000361232735
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∏ d ∈ Nat.divisors (f1 n), d : ℕ) : ℤ) - A000203 (n + 1)

end

end A076721.P6629541000361232735

namespace A076721

/-- `∏{d}[n+1, #]-A000203(n+1)` -/
def P6629541000361232735.Spec : Prop :=
  ∀ n, P6629541000361232735.a n = A076721 (n + 1)

end A076721

/-! ## A076721.P9754977864322534722

`(n+1)*A007956(n+1)-∑{d}[n+1, #]`
-/

namespace A076721.P9754977864322534722
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A007956 (n + 1) - ((∑ d ∈ Nat.divisors (f1 n), d : ℕ) : ℤ)

end

end A076721.P9754977864322534722

namespace A076721

/-- `(n+1)*A007956(n+1)-∑{d}[n+1, #]` -/
def P9754977864322534722.Spec : Prop :=
  ∀ n, P9754977864322534722.a n = A076721 (n + 1)

end A076721

/-! ## A076721.P14639121477359475362

`A007955(n+1)-Δ[A160664(n)]`
-/

namespace A076721.P14639121477359475362
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160664 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007955 (n + 1) - (f1 (n + 1) - f1 n)

end

end A076721.P14639121477359475362

namespace A076721

/-- `A007955(n+1)-Δ[A160664(n)]` -/
def P14639121477359475362.Spec : Prop :=
  ∀ n, P14639121477359475362.a n = A076721 (n + 1)

end A076721

/-! ## A076721.P8929275851584831554

`A007955(n+1)-A000203(n+1)`
-/

namespace A076721.P8929275851584831554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007955 (n + 1) - A000203 (n + 1)

end

end A076721.P8929275851584831554

namespace A076721

/-- `A007955(n+1)-A000203(n+1)` -/
def P8929275851584831554.Spec : Prop :=
  ∀ n, P8929275851584831554.a n = A076721 (n + 1)

end A076721

/-! ## A076721.P1008560618173508358

`A076720(n+1)-A074400(n+1)`
-/

namespace A076721.P1008560618173508358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076720 (n + 1) - A074400 (n + 1)

end

end A076721.P1008560618173508358

namespace A076721

/-- `A076720(n+1)-A074400(n+1)` -/
def P1008560618173508358.Spec : Prop :=
  ∀ n, P1008560618173508358.a n = A076721 (n + 1)

end A076721

/-! ## A076721.P18156448731941033435

`A007955(n+1)+1-A088580(n+1)`
-/

namespace A076721.P18156448731941033435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007955 (n + 1) + (1 - A088580 (n + 1))

end

end A076721.P18156448731941033435

namespace A076721

/-- `A007955(n+1)+1-A088580(n+1)` -/
def P18156448731941033435.Spec : Prop :=
  ∀ n, P18156448731941033435.a n = A076721 (n + 1)

end A076721

/-! ## A076721.P4327654822376806429

`A076720(n+1)-2*A000203(n+1)`
-/

namespace A076721.P4327654822376806429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076720 (n + 1) - 2 * A000203 (n + 1)

end

end A076721.P4327654822376806429

namespace A076721

/-- `A076720(n+1)-2*A000203(n+1)` -/
def P4327654822376806429.Spec : Prop :=
  ∀ n, P4327654822376806429.a n = A076721 (n + 1)

end A076721

/-! ## A076721.P9900827999422054464

`2*A007955(n+1)-A076720(n+1)`
-/

namespace A076721.P9900827999422054464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A007955 (n + 1) - A076720 (n + 1)

end

end A076721.P9900827999422054464

namespace A076721

/-- `2*A007955(n+1)-A076720(n+1)` -/
def P9900827999422054464.Spec : Prop :=
  ∀ n, P9900827999422054464.a n = A076721 (n + 1)

end A076721

/-! ## A076721.P3789538318894634950

`A007955(n+1)-A074400(n+1)/2`
-/

namespace A076721.P3789538318894634950
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007955 (n + 1) : ℚ) - (A074400 (n + 1) : ℚ) / 2

end

end A076721.P3789538318894634950

namespace A076721

/-- `A007955(n+1)-A074400(n+1)/2` -/
def P3789538318894634950.Spec : Prop :=
  ∀ n, P3789538318894634950.a n = (A076721 (n + 1) : ℚ)

end A076721

/-! ## A076721.P15003315717662119024

`A007955(n+1)-(A070039(n+1)+A070038(n+1))`
-/

namespace A076721.P15003315717662119024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007955 (n + 1) - (A070039 (n + 1) + A070038 (n + 1))

end

end A076721.P15003315717662119024

namespace A076721

/-- `A007955(n+1)-(A070039(n+1)+A070038(n+1))` -/
def P15003315717662119024.Spec : Prop :=
  ∀ n, P15003315717662119024.a n = A076721 (n + 1)

end A076721

/-! ## A076721.P14958377525846398684

`A007955(n+1)-(A088001(n+1)+A088000(n+1))`
-/

namespace A076721.P14958377525846398684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007955 (n + 1) - (A088001 (n + 1) + A088000 (n + 1))

end

end A076721.P14958377525846398684

namespace A076721

/-- `A007955(n+1)-(A088001(n+1)+A088000(n+1))` -/
def P14958377525846398684.Spec : Prop :=
  ∀ n, P14958377525846398684.a n = A076721 (n + 1)

end A076721

/-! ## A076721.P10479370195391237091

`A007955(n+1)-(A183101(n+1)+A091051(n+1))`
-/

namespace A076721.P10479370195391237091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007955 (n + 1) - (A183101 (n + 1) + A091051 (n + 1))

end

end A076721.P10479370195391237091

namespace A076721

/-- `A007955(n+1)-(A183101(n+1)+A091051(n+1))` -/
def P10479370195391237091.Spec : Prop :=
  ∀ n, P10479370195391237091.a n = A076721 (n + 1)

end A076721

/-! ## A076721.P6672006463030353162

`A007955(n+1)-A009194(n+1)*A017665(n+1)`
-/

namespace A076721.P6672006463030353162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007955 (n + 1) - A009194 (n + 1) * A017665 (n + 1)

end

end A076721.P6672006463030353162

namespace A076721

/-- `A007955(n+1)-A009194(n+1)*A017665(n+1)` -/
def P6672006463030353162.Spec : Prop :=
  ∀ n, P6672006463030353162.a n = A076721 (n + 1)

end A076721

/-! ## A076721.P4149194012904620387

`A157488(n+1)*A160199(n+1)-A000203(n+1)`
-/

namespace A076721.P4149194012904620387
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157488 (n + 1) * A160199 (n + 1) - A000203 (n + 1)

end

end A076721.P4149194012904620387

namespace A076721

/-- `A157488(n+1)*A160199(n+1)-A000203(n+1)` -/
def P4149194012904620387.Spec : Prop :=
  ∀ n, P4149194012904620387.a n = A076721 (n + 1)

end A076721

/-! ## A076721.P3665031053513075153

`A179937(n+1)*A184392(n+1)-A000203(n+1)`
-/

namespace A076721.P3665031053513075153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179937 (n + 1) * A184392 (n + 1) - A000203 (n + 1)

end

end A076721.P3665031053513075153

namespace A076721

/-- `A179937(n+1)*A184392(n+1)-A000203(n+1)` -/
def P3665031053513075153.Spec : Prop :=
  ∀ n, P3665031053513075153.a n = A076721 (n + 1)

end A076721

/-! ## A076721.P5444188226804925012

`A183091(n+1)*A183092(n+1)-A000203(n+1)`
-/

namespace A076721.P5444188226804925012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183091 (n + 1) * A183092 (n + 1) - A000203 (n + 1)

end

end A076721.P5444188226804925012

namespace A076721

/-- `A183091(n+1)*A183092(n+1)-A000203(n+1)` -/
def P5444188226804925012.Spec : Prop :=
  ∀ n, P5444188226804925012.a n = A076721 (n + 1)

end A076721

/-! ## A076721.P6188908974658681897

`A007955(n+1)-A064840(n+1)/A000005(n+1)`
-/

namespace A076721.P6188908974658681897
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007955 (n + 1) : ℚ) - (A064840 (n + 1) : ℚ) / (A000005 (n + 1) : ℚ)

end

end A076721.P6188908974658681897

namespace A076721

/-- `A007955(n+1)-A064840(n+1)/A000005(n+1)` -/
def P6188908974658681897.Spec : Prop :=
  ∀ n, P6188908974658681897.a n = (A076721 (n + 1) : ℚ)

end A076721

/-! ## A076721.P16088250098763324914

`A076722(n+1)/A000203(n+1)-A000203(n+1)`
-/

namespace A076721.P16088250098763324914
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A076722 (n + 1) : ℚ) / (A000203 (n + 1) : ℚ) - (A000203 (n + 1) : ℚ)

end

end A076721.P16088250098763324914

namespace A076721

/-- `A076722(n+1)/A000203(n+1)-A000203(n+1)` -/
def P16088250098763324914.Spec : Prop :=
  ∀ n, P16088250098763324914.a n = (A076721 (n + 1) : ℚ)

end A076721

/-!
# A076722: Product of product of divisors of n and sum of divisors of n.

The programs for A076722, the canonical program `A076722.P12891812046435696667` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A076722 has offset 1).

The definition of A076722 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5039 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A076722.P12891812046435696667

`∑{d}[n+1, #]*∏{d}[n+1, #]`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A076722

/-- `∑{d}[n+1, #]*∏{d}[n+1, #]` -/
def P12891812046435696667.Spec : Prop :=
  ∀ n, (P12891812046435696667.a n : ℤ) = A076722 (n + 1)

theorem P12891812046435696667.correct : P12891812046435696667.Spec := by
  intro n
  simp only [A076722, Nat.add_sub_cancel]

end A076722

/-! ## A076722.P11199736549233984823

`A000203(n+1)*∏{d}[n+1, #]`
-/

namespace A076722.P11199736549233984823
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1) * ((∏ d ∈ Nat.divisors (f1 n), d : ℕ) : ℤ)

end

end A076722.P11199736549233984823

namespace A076722

/-- `A000203(n+1)*∏{d}[n+1, #]` -/
def P11199736549233984823.Spec : Prop :=
  ∀ n, P11199736549233984823.a n = A076722 (n + 1)

end A076722

/-! ## A076722.P11955624251777373605

`(A039653(n+1)+1)*∏{d}[n+1, #]`
-/

namespace A076722.P11955624251777373605
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A039653 (n + 1) + 1) * ((∏ d ∈ Nat.divisors (f1 n), d : ℕ) : ℤ)

end

end A076722.P11955624251777373605

namespace A076722

/-- `(A039653(n+1)+1)*∏{d}[n+1, #]` -/
def P11955624251777373605.Spec : Prop :=
  ∀ n, P11955624251777373605.a n = A076722 (n + 1)

end A076722

/-! ## A076722.P10843643860228891372

`(n+1)*∑{d}[n+1, #]*A007956(n+1)`
-/

namespace A076722.P10843643860228891372
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (((∑ d ∈ Nat.divisors (f1 n), d : ℕ) : ℤ) * A007956 (n + 1))

end

end A076722.P10843643860228891372

namespace A076722

/-- `(n+1)*∑{d}[n+1, #]*A007956(n+1)` -/
def P10843643860228891372.Spec : Prop :=
  ∀ n, P10843643860228891372.a n = A076722 (n + 1)

end A076722

/-! ## A076722.P13480997474594686086

`(n+1)^(Δ[A006218(n)]/2)*∑{d}[n+1, #]`
-/

namespace A076722.P13480997474594686086
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006218 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℝ) ^ ((f1 (n + 1) - f1 n : ℚ) / 2 : ℝ) * ((∑ d ∈ Nat.divisors (f2 n), d : ℕ) : ℝ)

end

end A076722.P13480997474594686086

namespace A076722

/-- `(n+1)^(Δ[A006218(n)]/2)*∑{d}[n+1, #]` -/
def P13480997474594686086.Spec : Prop :=
  ∀ n, P13480997474594686086.a n = (A076722 (n + 1) : ℝ)

end A076722

/-! ## A076722.P9786923468823088219

`Δ[A160664(n)]*A007955(n+1)`
-/

namespace A076722.P9786923468823088219
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160664 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A007955 (n + 1)

end

end A076722.P9786923468823088219

namespace A076722

/-- `Δ[A160664(n)]*A007955(n+1)` -/
def P9786923468823088219.Spec : Prop :=
  ∀ n, P9786923468823088219.a n = A076722 (n + 1)

end A076722

/-! ## A076722.P11378754454928297016

`A000203(n+1)*A007955(n+1)`
-/

namespace A076722.P11378754454928297016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1) * A007955 (n + 1)

end

end A076722.P11378754454928297016

namespace A076722

/-- `A000203(n+1)*A007955(n+1)` -/
def P11378754454928297016.Spec : Prop :=
  ∀ n, P11378754454928297016.a n = A076722 (n + 1)

end A076722

/-! ## A076722.P14941991811314596708

`A007956(n+1)*A064987(n+1)`
-/

namespace A076722.P14941991811314596708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007956 (n + 1) * A064987 (n + 1)

end

end A076722.P14941991811314596708

namespace A076722

/-- `A007956(n+1)*A064987(n+1)` -/
def P14941991811314596708.Spec : Prop :=
  ∀ n, P14941991811314596708.a n = A076722 (n + 1)

end A076722

/-! ## A076722.P5294870066589239374

`(A088580(n+1)-1)*A007955(n+1)`
-/

namespace A076722.P5294870066589239374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A088580 (n + 1) - 1) * A007955 (n + 1)

end

end A076722.P5294870066589239374

namespace A076722

/-- `(A088580(n+1)-1)*A007955(n+1)` -/
def P5294870066589239374.Spec : Prop :=
  ∀ n, P5294870066589239374.a n = A076722 (n + 1)

end A076722

/-! ## A076722.P16428747203787455282

`A007955(n+1)/2*A074400(n+1)`
-/

namespace A076722.P16428747203787455282
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007955 (n + 1) : ℚ) / 2 * (A074400 (n + 1) : ℚ)

end

end A076722.P16428747203787455282

namespace A076722

/-- `A007955(n+1)/2*A074400(n+1)` -/
def P16428747203787455282.Spec : Prop :=
  ∀ n, P16428747203787455282.a n = (A076722 (n + 1) : ℚ)

end A076722

/-! ## A076722.P8684266738195883047

`(A048146(n+1)+A034448(n+1))*∏{d}[n+1, #]`
-/

namespace A076722.P8684266738195883047
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A048146 (n + 1) + A034448 (n + 1)) * ((∏ d ∈ Nat.divisors (f1 n), d : ℕ) : ℤ)

end

end A076722.P8684266738195883047

namespace A076722

/-- `(A048146(n+1)+A034448(n+1))*∏{d}[n+1, #]` -/
def P8684266738195883047.Spec : Prop :=
  ∀ n, P8684266738195883047.a n = A076722 (n + 1)

end A076722

/-! ## A076722.P3783193408716620649

`(A146076(n+1)+A000593(n+1))*∏{d}[n+1, #]`
-/

namespace A076722.P3783193408716620649
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A146076 (n + 1) + A000593 (n + 1)) * ((∏ d ∈ Nat.divisors (f1 n), d : ℕ) : ℤ)

end

end A076722.P3783193408716620649

namespace A076722

/-- `(A146076(n+1)+A000593(n+1))*∏{d}[n+1, #]` -/
def P3783193408716620649.Spec : Prop :=
  ∀ n, P3783193408716620649.a n = A076722 (n + 1)

end A076722

/-! ## A076722.P5871022167760758673

`(A285309(n+1)+A035316(n+1))*∏{d}[n+1, #]`
-/

namespace A076722.P5871022167760758673
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A285309 (n + 1) + A035316 (n + 1)) * ((∏ d ∈ Nat.divisors (f1 n), d : ℕ) : ℤ)

end

end A076722.P5871022167760758673

namespace A076722

/-- `(A285309(n+1)+A035316(n+1))*∏{d}[n+1, #]` -/
def P5871022167760758673.Spec : Prop :=
  ∀ n, P5871022167760758673.a n = A076722 (n + 1)

end A076722

/-! ## A076722.P15652188643118913372

`(A039653(n+1)+1)*(n+1)^(Δ[A006218(n)]/2)`
-/

namespace A076722.P15652188643118913372
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006218 n

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A039653 (n + 1) + 1 : ℝ) * (n + 1 : ℝ) ^ ((f1 (n + 1) - f1 n : ℚ) / 2 : ℝ)

end

end A076722.P15652188643118913372

namespace A076722

/-- `(A039653(n+1)+1)*(n+1)^(Δ[A006218(n)]/2)` -/
def P15652188643118913372.Spec : Prop :=
  ∀ n, P15652188643118913372.a n = (A076722 (n + 1) : ℝ)

end A076722

/-! ## A076722.P17978140673384910886

`(n+1)^(Δ[A006218(n)]/2)*A245092(2*n+1)`
-/

namespace A076722.P17978140673384910886
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006218 n

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℝ) ^ ((f1 (n + 1) - f1 n : ℚ) / 2 : ℝ) * (A245092 (2 * n + 1) : ℝ)

end

end A076722.P17978140673384910886

namespace A076722

/-- `(n+1)^(Δ[A006218(n)]/2)*A245092(2*n+1)` -/
def P17978140673384910886.Spec : Prop :=
  ∀ n, P17978140673384910886.a n = (A076722 (n + 1) : ℝ)

end A076722

/-! ## A076722.P1040258657105444544

`(A076721(n+1)+A000203(n+1))*A000203(n+1)`
-/

namespace A076722.P1040258657105444544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A076721 (n + 1) + A000203 (n + 1)) * A000203 (n + 1)

end

end A076722.P1040258657105444544

namespace A076722

/-- `(A076721(n+1)+A000203(n+1))*A000203(n+1)` -/
def P1040258657105444544.Spec : Prop :=
  ∀ n, P1040258657105444544.a n = A076722 (n + 1)

end A076722

/-! ## A076722.P2116530146688046416

`(A070039(n+1)+A070038(n+1))*A007955(n+1)`
-/

namespace A076722.P2116530146688046416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A070039 (n + 1) + A070038 (n + 1)) * A007955 (n + 1)

end

end A076722.P2116530146688046416

namespace A076722

/-- `(A070039(n+1)+A070038(n+1))*A007955(n+1)` -/
def P2116530146688046416.Spec : Prop :=
  ∀ n, P2116530146688046416.a n = A076722 (n + 1)

end A076722

/-! ## A076722.P5899185154646477546

`(A088001(n+1)+A088000(n+1))*A007955(n+1)`
-/

namespace A076722.P5899185154646477546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A088001 (n + 1) + A088000 (n + 1)) * A007955 (n + 1)

end

end A076722.P5899185154646477546

namespace A076722

/-- `(A088001(n+1)+A088000(n+1))*A007955(n+1)` -/
def P5899185154646477546.Spec : Prop :=
  ∀ n, P5899185154646477546.a n = A076722 (n + 1)

end A076722

/-! ## A076722.P7837699288279146166

`(A183101(n+1)+A091051(n+1))*A007955(n+1)`
-/

namespace A076722.P7837699288279146166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A183101 (n + 1) + A091051 (n + 1)) * A007955 (n + 1)

end

end A076722.P7837699288279146166

namespace A076722

/-- `(A183101(n+1)+A091051(n+1))*A007955(n+1)` -/
def P7837699288279146166.Spec : Prop :=
  ∀ n, P7837699288279146166.a n = A076722 (n + 1)

end A076722

/-! ## A076722.P683186430268953241

`(A076720(n+1)-A000203(n+1))*A000203(n+1)`
-/

namespace A076722.P683186430268953241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A076720 (n + 1) - A000203 (n + 1)) * A000203 (n + 1)

end

end A076722.P683186430268953241

namespace A076722

/-- `(A076720(n+1)-A000203(n+1))*A000203(n+1)` -/
def P683186430268953241.Spec : Prop :=
  ∀ n, P683186430268953241.a n = A076722 (n + 1)

end A076722

/-!
# A076723: Sum_{d divides n} (-d)^d.

The programs for A076723, there is no canonical definition to state claims against.
-/

/-! ## A076723.P2066967094399512869

`∑{d}[n+1, (-#)^#]`
-/

namespace A076723.P2066967094399512869
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (-(d : ℤ)) ^ d

end

end A076723.P2066967094399512869

/-!
# A076724: Numbers m such that abs(Sum {k = 1..m} tau(k)) is a prime, where tau is the Ramanujan tau function (A000594).

The programs for A076724, there is no canonical definition to state claims against.
-/

/-! ## A076724.P15290061335479835451

`xor(n, A271518(A024450(3*n+2)))`
-/

namespace A076724.P15290061335479835451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) (A271518 (A024450 (3 * n + 2)).toNat)

end

end A076724.P15290061335479835451

/-!
# A076725: a(n) = a(n-1)^2 + a(n-2)^4, a(0) = a(1) = 1.

The programs for A076725, the canonical program `A076725.P12081722615286617675` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A076725 has offset 0).

The definition of A076725 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-1)²+a(n-2)^4` (program `A076725.P12081722615286617675`, by `A076725.P12081722615286617675.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A076725.P12081722615286617675

`a(n-1)²+a(n-2)^4` with `a(0)=1, a(1)=1`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A076725

/-- `a(n-1)²+a(n-2)^4` -/
def P12081722615286617675.Spec : Prop :=
  ∀ n, (P12081722615286617675.a n : ℤ) = A076725 n

theorem P12081722615286617675.correct : P12081722615286617675.Spec := by
  intro n
  simp only [A076725]

end A076725

/-! ## A076725.P15822642227611058352

`a(n-1)²+a(n-2)²²` with `a(0)=1, a(1)=1`
-/

namespace A076725.P15822642227611058352
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 1] fun n a =>
  a (n - 1) ^ 2 + (a (n - 2) ^ 2) ^ 2

end

end A076725.P15822642227611058352

namespace A076725

/-- `a(n-1)²+a(n-2)²²` -/
def P15822642227611058352.Spec : Prop :=
  ∀ n, (P15822642227611058352.a n : ℤ) = A076725 n

theorem P15822642227611058352.correct : P15822642227611058352.Spec := by
  intro n
  simp only [A076725, Nat.add_sub_cancel, A076725.P15822642227611058352.a, A076725.P12081722615286617675.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A076725

/-! ## A076725.P13101886579434113701

`a(n-2)^4+a(n-1)*a(n-1)` with `a(0)=1, a(1)=1`
-/

namespace A076725.P13101886579434113701
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 1] fun n a =>
  a (n - 2) ^ 4 + a (n - 1) * a (n - 1)

end

end A076725.P13101886579434113701

namespace A076725

/-- `a(n-2)^4+a(n-1)*a(n-1)` -/
def P13101886579434113701.Spec : Prop :=
  ∀ n, (P13101886579434113701.a n : ℤ) = A076725 n

end A076725

/-! ## A076725.P3049217927633294598

`sqrt(A144229(n))`
-/

namespace A076725.P3049217927633294598
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A144229 n : ℝ)

end

end A076725.P3049217927633294598

namespace A076725

/-- `sqrt(A144229(n))` -/
def P3049217927633294598.Spec : Prop :=
  ∀ n, P3049217927633294598.a n = (A076725 n : ℝ)

end A076725

/-! ## A076725.P14016663292477959669

`sqrt(A242117(n+1)+1)`
-/

namespace A076725.P14016663292477959669
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A242117 (n + 1) + 1 : ℝ)

end

end A076725.P14016663292477959669

namespace A076725

/-- `sqrt(A242117(n+1)+1)` -/
def P14016663292477959669.Spec : Prop :=
  ∀ n, P14016663292477959669.a n = (A076725 n : ℝ)

end A076725

/-!
# A076726: a(n) = Sum_{k>=0} k^n/2^k.

The programs for A076726, there is no canonical definition to state claims against.
-/

/-! ## A076726.P5480586448839911507

`2*A000670(n)`
-/

namespace A076726.P5480586448839911507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000670 n

end

end A076726.P5480586448839911507

/-! ## A076726.P16652117146608588832

`lcm(2, A000629(n))`
-/

namespace A076726.P16652117146608588832
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A000629 n)

end

end A076726.P16652117146608588832

/-! ## A076726.P7241854289737875179

`A195204(∑[n]+1)`
-/

namespace A076726.P7241854289737875179
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195204 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A076726.P7241854289737875179

/-! ## A076726.P6616598302649878775

`2*A073146(∑[n])`
-/

namespace A076726.P6616598302649878775
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A073146 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A076726.P6616598302649878775

/-! ## A076726.P17430708827158016477

`2*A122101(∑[n])`
-/

namespace A076726.P17430708827158016477
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A122101 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A076726.P17430708827158016477

/-! ## A076726.P12165463506185489366

`2*A154921(∑[n])`
-/

namespace A076726.P12165463506185489366
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A154921 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A076726.P12165463506185489366

/-! ## A076726.P15653078620313662026

`2*(A052875(n)+1)`
-/

namespace A076726.P15653078620313662026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A052875 n + 1)

end

end A076726.P15653078620313662026

/-! ## A076726.P5135732594390741753

`4*A032109(n)-2`
-/

namespace A076726.P5135732594390741753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A032109 n - 2

end

end A076726.P5135732594390741753

/-! ## A076726.P2686239465196272126

`2*round(∑[A162509(n)/2])`
-/

namespace A076726.P2686239465196272126
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A162509 n : ℚ) / 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.roundAway (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A076726.P2686239465196272126

/-! ## A076726.P310012484754499627

`2*round(round(A007047(n)/2)/2)`
-/

namespace A076726.P310012484754499627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.roundAway ((SequenceMachineLib.roundAway ((A007047 n : ℚ) / 2) : ℚ) / 2)

end

end A076726.P310012484754499627

/-!
# A076727: Primes of the form x^2 + (x+3)^2.

The programs for A076727, there is no canonical definition to state claims against.
-/

/-! ## A076727.P17057788368498102377

`A294774(A224870(n+1)+1)`
-/

namespace A076727.P17057788368498102377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294774 (A224870 (n + 1) + 1).toNat

end

end A076727.P17057788368498102377

/-! ## A076727.P4477263465707354539

`A001844(A224870(n+1)+1)+4`
-/

namespace A076727.P4477263465707354539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001844 (A224870 (n + 1) + 1).toNat + 4

end

end A076727.P4477263465707354539

/-! ## A076727.P8233458545794754764

`A294774(eq[3, A281158(n+3)]+1)`
-/

namespace A076727.P8233458545794754764
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281158 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294774 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A076727.P8233458545794754764

/-! ## A076727.P9550247170051323025

`A139570(eq[3, A281158(n+3)])+9`
-/

namespace A076727.P9550247170051323025
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281158 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139570 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n) + 9

end

end A076727.P9550247170051323025

/-! ## A076727.P7607435168320045459

`p?[(n+3)²+n²]`
-/

namespace A076727.P7607435168320045459
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 3) ^ 2 + n ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A076727.P7607435168320045459

/-! ## A076727.P8018983584357927502

`or(1, p?[A294774(n+1)])`
-/

namespace A076727.P8018983584357927502
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294774 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A076727.P8018983584357927502

/-! ## A076727.P3767678647712971155

`or(1, p?[A090288(n)+7])`
-/

namespace A076727.P3767678647712971155
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090288 n + 7

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A076727.P3767678647712971155

/-! ## A076727.P8208274050846915715

`or(1, p?[A139570(n)+9])`
-/

namespace A076727.P8208274050846915715
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139570 n + 9

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A076727.P8208274050846915715

/-! ## A076727.P14974936673197428623

`p?[A294774(n+1)]/A072038(A072048(n+1))`
-/

namespace A076727.P14974936673197428623
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294774 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) : ℚ) / (A072038 (A072048 (n + 1)).toNat : ℚ)

end

end A076727.P14974936673197428623

/-! ## A076727.P11659192224336957228

`∩[A096785(n+1), A294774(n)]`
-/

namespace A076727.P11659192224336957228
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096785 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294774 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A076727.P11659192224336957228

/-!
# A076728: a(n) = (n-1)^2 * n^(n-2).

The programs for A076728, the canonical program `A076728.P16183147114775620766` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A076728 has offset 1).

The definition of A076728 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A076728.P16183147114775620766

`n²*(n+1)^(n-1)`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A076728

/-- `n²*(n+1)^(n-1)` -/
def P16183147114775620766.Spec : Prop :=
  ∀ n, P16183147114775620766.a n = (A076728 (n + 1) : ℚ)

end A076728

/-! ## A076728.P10300458504887256241

`lcm(n², (n+1)^(n-1))`
-/

namespace A076728.P10300458504887256241
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (n ^ 2 : ℤ) (SequenceMachineLib.roundAway ((n + 1 : ℚ) ^ ((n : ℤ) - 1 : ℤ)))

end

end A076728.P10300458504887256241

namespace A076728

/-- `lcm(n², (n+1)^(n-1))` -/
def P10300458504887256241.Spec : Prop :=
  ∀ n, (P10300458504887256241.a n : ℤ) = A076728 (n + 1)

end A076728

/-! ## A076728.P2912384025510098240

`n²/(n+1)^(gcd(n, n+1)-n)`
-/

namespace A076728.P2912384025510098240
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℚ) / (n + 1 : ℚ) ^ ((Nat.gcd n (n + 1) : ℤ) - (n : ℤ) : ℤ)

end

end A076728.P2912384025510098240

namespace A076728

/-- `n²/(n+1)^(gcd(n, n+1)-n)` -/
def P2912384025510098240.Spec : Prop :=
  ∀ n, P2912384025510098240.a n = (A076728 (n + 1) : ℚ)

end A076728

/-! ## A076728.P8999052897865470600

`n²*(n+1)^(n%(n+1))/(n+1)`
-/

namespace A076728.P8999052897865470600
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n ^ 2 * (n + 1) ^ (n % (n + 1)) : ℚ) / (n + 1 : ℚ)

end

end A076728.P8999052897865470600

namespace A076728

/-- `n²*(n+1)^(n%(n+1))/(n+1)` -/
def P8999052897865470600.Spec : Prop :=
  ∀ n, P8999052897865470600.a n = (A076728 (n + 1) : ℚ)

end A076728

/-! ## A076728.P4633512403378936170

`abs(n*round(n*(or(1, 2*n)-n)^(n-1)))`
-/

namespace A076728.P4633512403378936170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(n : ℤ) * SequenceMachineLib.roundAway ((n : ℚ) * ((Nat.lor 1 (2 * n) : ℤ) - (n : ℤ) : ℚ) ^ ((n : ℤ) - 1 : ℤ))|

end

end A076728.P4633512403378936170

namespace A076728

/-- `abs(n*round(n*(or(1, 2*n)-n)^(n-1)))` -/
def P4633512403378936170.Spec : Prop :=
  ∀ n, P4633512403378936170.a n = A076728 (n + 1)

end A076728

/-! ## A076728.P3300741027460135572

`A245692(∑[n+1])`
-/

namespace A076728.P3300741027460135572
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245692 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A076728.P3300741027460135572

namespace A076728

/-- `A245692(∑[n+1])` -/
def P3300741027460135572.Spec : Prop :=
  ∀ n, P3300741027460135572.a n = A076728 (n + 1)

end A076728

/-! ## A076728.P1836630507396175872

`A244118(∑[n+3])`
-/

namespace A076728.P1836630507396175872
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244118 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A076728.P1836630507396175872

namespace A076728

/-- `A244118(∑[n+3])` -/
def P1836630507396175872.Spec : Prop :=
  ∀ n, P1836630507396175872.a n = A076728 (n + 1)

end A076728

/-! ## A076728.P16445731967241367783

`record[A245692(A018252(n+1))]`
-/

namespace A076728.P16445731967241367783
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245692 (A018252 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A076728.P16445731967241367783

namespace A076728

/-- `record[A245692(A018252(n+1))]` -/
def P16445731967241367783.Spec : Prop :=
  ∀ n, P16445731967241367783.a n = A076728 (n + 1)

end A076728

/-! ## A076728.P13914560517083255157

`record[A245348(n)]-A089945(n)`
-/

namespace A076728.P13914560517083255157
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245348 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A089945 n

end

end A076728.P13914560517083255157

namespace A076728

/-- `record[A245348(n)]-A089945(n)` -/
def P13914560517083255157.Spec : Prop :=
  ∀ n, P13914560517083255157.a n = A076728 (n + 1)

end A076728

/-! ## A076728.P698010860414518056

`record[A245692(n)%A245348(n)]`
-/

namespace A076728.P698010860414518056
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A245692 n) (A245348 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A076728.P698010860414518056

namespace A076728

/-- `record[A245692(n)%A245348(n)]` -/
def P698010860414518056.Spec : Prop :=
  ∀ n, P698010860414518056.a n = A076728 (n + 1)

end A076728

/-!
# A076729: a(n) = A001147(n+1) * Integral_{x=0..1} (1 + x^2)^n dx.

The programs for A076729, the canonical program `A076729.P4306103095739859432` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A076729 has offset 0).

The definition of A076729 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A076729.P4306103095739859432

`2^n*A034430(n)`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A076729

/-- `2^n*A034430(n)` -/
def P4306103095739859432.Spec : Prop :=
  ∀ n, P4306103095739859432.a n = A076729 n

theorem P4306103095739859432.correct : P4306103095739859432.Spec := by
  intro n
  simp only [A076729]

end A076729

/-! ## A076729.P15948046174963547431

`2*n*a(n-1)+(2*n)!/n!` with `a(0)=1`
-/

namespace A076729.P15948046174963547431
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (2 * n : ℚ) * a (n - 1) + (Nat.factorial (2 * n) : ℚ) / (Nat.factorial n : ℚ)

end

end A076729.P15948046174963547431

namespace A076729

/-- `2*n*a(n-1)+(2*n)!/n!` -/
def P15948046174963547431.Spec : Prop :=
  ∀ n, P15948046174963547431.a n = (A076729 n : ℚ)

end A076729

/-! ## A076729.P18181283919882481308

`record[abs(A127138(n))]`
-/

namespace A076729.P18181283919882481308
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A127138 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A076729.P18181283919882481308

namespace A076729

/-- `record[abs(A127138(n))]` -/
def P18181283919882481308.Spec : Prop :=
  ∀ n, P18181283919882481308.a n = A076729 n

end A076729

/-! ## A076729.P11482155454481272086

`n!*A082590(n)`
-/

namespace A076729.P11482155454481272086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) * A082590 n

end

end A076729.P11482155454481272086

namespace A076729

/-- `n!*A082590(n)` -/
def P11482155454481272086.Spec : Prop :=
  ∀ n, P11482155454481272086.a n = A076729 n

end A076729

/-! ## A076729.P1953452206894144669

`abs(A127138(comp[2*n]))`
-/

namespace A076729.P1953452206894144669
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A127138 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)|

end

end A076729.P1953452206894144669

namespace A076729

/-- `abs(A127138(comp[2*n]))` -/
def P1953452206894144669.Spec : Prop :=
  ∀ n, P1953452206894144669.a n = A076729 n

end A076729

/-! ## A076729.P883897473431083151

`n!*∑[A188622(n)]`
-/

namespace A076729.P883897473431083151
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188622 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A076729.P883897473431083151

namespace A076729

/-- `n!*∑[A188622(n)]` -/
def P883897473431083151.Spec : Prop :=
  ∀ n, P883897473431083151.a n = A076729 n

end A076729

/-! ## A076729.P7212855962347641232

`A000142(n)*A082590(n)`
-/

namespace A076729.P7212855962347641232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 n * A082590 n

end

end A076729.P7212855962347641232

namespace A076729

/-- `A000142(n)*A082590(n)` -/
def P7212855962347641232.Spec : Prop :=
  ∀ n, P7212855962347641232.a n = A076729 n

end A076729

/-!
# A076730: Maximum number of (distinct) primes that an n-digit number may shelter (i.e., primes contained among all digital substrings' permutations).

The programs for A076730, there is no canonical definition to state claims against.
-/

/-! ## A076730.P15978330438550598787

`A134597(n+1)`
-/

namespace A076730.P15978330438550598787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134597 (n + 1)

end

end A076730.P15978330438550598787

/-! ## A076730.P4402377834200956463

`record[A134597(∏{e}[n, #])]`
-/

namespace A076730.P4402377834200956463
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134597 (∏ p ∈ Nat.primeFactors (f2 n), Nat.factorization (f2 n) p)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A076730.P4402377834200956463

/-! ## A076730.P11700947892743353669

`record[A134597(A028920(n))]`
-/

namespace A076730.P11700947892743353669
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134597 (A028920 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A076730.P11700947892743353669

/-!
# A076731: Table T(n,k) giving number of ways of obtaining exactly 0 correct answers on an (n,k)-matching problem (1 <= k <= n).

The programs for A076731, there is no canonical definition to state claims against.
-/

/-! ## A076731.P8521825755543901738

`A060475(comp[∑[n]])`
-/

namespace A076731.P8521825755543901738
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060475 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A076731.P8521825755543901738

/-! ## A076731.P11286117616386454849

`or(char[1], A060475(A014132(n+1)))`
-/

namespace A076731.P11286117616386454849
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A060475 (A014132 (n + 1)).toNat)

end

end A076731.P11286117616386454849

/-! ## A076731.P12208291164871618089

`A336246(∑[char[∑[n]]]²-n)`
-/

namespace A076731.P12208291164871618089
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336246 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 - n)

end

end A076731.P12208291164871618089

/-! ## A076731.P15543181907049548598

`A086764(∑[char[∑[n]]]+∑[2*n]%comp[∑[n]])`
-/

namespace A076731.P15543181907049548598
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f6 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f5 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f6 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086764 (∑ j ∈ Finset.range (n + 1), f1 j + (∑ j ∈ Finset.range (n + 1), f4 j) % SequenceMachineLib.nth (fun x => ∀ j, f5 j ≠ x) n)

end

end A076731.P15543181907049548598

/-! ## A076731.P118099734520516793

`A086764(∑[char[∑[n+1]]]+∑[char[∑[n]]]²-n)`
-/

namespace A076731.P118099734520516793
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

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

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086764 (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) + ((((∑ j ∈ Finset.range (n + 1), f4 j) ^ 2 : ℕ) : ℤ) - (n : ℤ))).toNat

end

end A076731.P118099734520516793

/-! ## A076731.P1721023134370866223

`A061312(n)/(C(comp[∑[n]]-n, 2)-(n+1))!`
-/

namespace A076731.P1721023134370866223
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A061312 n : ℚ) / (Nat.factorial ((Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 : ℤ) - (n + 1 : ℤ)).toNat : ℚ)

end

end A076731.P1721023134370866223

/-! ## A076731.P18247686183258350185

`A061312(n)/A119502(n)`
-/

namespace A076731.P18247686183258350185
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A061312 n : ℚ) / (A119502 n : ℚ)

end

end A076731.P18247686183258350185

/-! ## A076731.P2006121833960056014

`A061312(n)/A025581(n)!`
-/

namespace A076731.P2006121833960056014
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A061312 n : ℚ) / (Nat.factorial (A025581 n).toNat : ℚ)

end

end A076731.P2006121833960056014

/-! ## A076731.P6579426302794300236

`A061312(n)/gcd(A047920(n), A061312(n))`
-/

namespace A076731.P6579426302794300236
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A061312 n : ℚ) / (Int.gcd (A047920 n) (A061312 n) : ℚ)

end

end A076731.P6579426302794300236

/-! ## A076731.P8865801090231554872

`A060475(A014132(n+1))%∑[A000032(n)]`
-/

namespace A076731.P8865801090231554872
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A060475 (A014132 (n + 1)).toNat) (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A076731.P8865801090231554872

/-!
# A076732: Table T(n,k) giving number of ways of obtaining exactly one correct answer on an (n,k)-matching problem (1 <= k <= n).

The programs for A076732, there is no canonical definition to state claims against.
-/

/-! ## A076732.P16749254033726088661

`(1-C(∑[char[∑[n]]], 2)+n)*A086764(∑[2*n]%comp[∑[n]])`
-/

namespace A076732.P16749254033726088661
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f6 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f5 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f6 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - (Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j) 2 : ℤ) + (n : ℤ)) * A086764 ((∑ j ∈ Finset.range (n + 1), f4 j) % SequenceMachineLib.nth (fun x => ∀ j, f5 j ≠ x) n)

end

end A076732.P16749254033726088661

/-! ## A076732.P16550410793954375042

`A002260(n+1)*A060475(n)`
-/

namespace A076732.P16550410793954375042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1) * A060475 n

end

end A076732.P16550410793954375042

/-! ## A076732.P5946914237593385255

`(A002262(n)+1)*A060475(n)`
-/

namespace A076732.P5946914237593385255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A002262 n + 1) * A060475 n

end

end A076732.P5946914237593385255

/-! ## A076732.P10878517823395928742

`A002262(comp[∑[n]])*A060475(n)`
-/

namespace A076732.P10878517823395928742
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n) * A060475 n

end

end A076732.P10878517823395928742

/-! ## A076732.P6268354986380280899

`abs(A140756(n+1))*A060475(n)`
-/

namespace A076732.P6268354986380280899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A140756 (n + 1)| * A060475 n

end

end A076732.P6268354986380280899

/-! ## A076732.P3259933580950858535

`sqrt(A133819(n+1))*A060475(n)`
-/

namespace A076732.P3259933580950858535
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A133819 (n + 1) : ℝ) * (A060475 n : ℝ)

end

end A076732.P3259933580950858535

/-! ## A076732.P4171808419079379001

`A060475(n)*A097285(2*n+1)`
-/

namespace A076732.P4171808419079379001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060475 n * A097285 (2 * n + 1)

end

end A076732.P4171808419079379001

/-! ## A076732.P13001641607130828628

`(1-A057944(n)+n)*A060475(n)`
-/

namespace A076732.P13001641607130828628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - A057944 n + (n : ℤ)) * A060475 n

end

end A076732.P13001641607130828628

/-! ## A076732.P15457294486783518777

`A000005(A059268(n))*A060475(n)`
-/

namespace A076732.P15457294486783518777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A059268 n).toNat * A060475 n

end

end A076732.P15457294486783518777

/-!
# A076733: Largest k such that k! divides C(2n,n).

The programs for A076733, there is no canonical definition to state claims against.
-/

/-! ## A076733.P9728786215934603025

`A119352(A077168(n))-1`
-/

namespace A076733.P9728786215934603025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119352 (A077168 n).toNat - 1

end

end A076733.P9728786215934603025

/-! ## A076733.P2898907657451178391

`A119352(n+1)-A000120(A000079(n))`
-/

namespace A076733.P2898907657451178391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119352 (n + 1) - A000120 (A000079 n).toNat

end

end A076733.P2898907657451178391

/-! ## A076733.P3139669500573080707

`A119352(n+1)+A064179(A252812(n+1))`
-/

namespace A076733.P3139669500573080707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119352 (n + 1) + A064179 (A252812 (n + 1)).toNat

end

end A076733.P3139669500573080707

/-! ## A076733.P7938906004953264946

`A119353(A119352(n+1)%A282429(n+5))`
-/

namespace A076733.P7938906004953264946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119353 (Int.tmod (A119352 (n + 1)) (A282429 (n + 5))).toNat

end

end A076733.P7938906004953264946

/-!
# A076734: Smallest squarefree number greater than or equal to n having the same number of prime factors as n (counted with multiplicity).

The programs for A076734, there is no canonical definition to state claims against.
-/

/-! ## A076734.P8740695985524863238

`lcm(A097247(n+1), A097247(A318314(n+1)))`
-/

namespace A076734.P8740695985524863238
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A097247 (n + 1)) (A097247 (A318314 (n + 1)).toNat)

end

end A076734.P8740695985524863238

/-! ## A076734.P14858655070821670607

`lcm(A246337(A286515(n)), A325183(n+1))`
-/

namespace A076734.P14858655070821670607
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A246337 (A286515 n).toNat) (A325183 (n + 1))

end

end A076734.P14858655070821670607

/-!
# A076735: Least k >= 2 such that k^n divides Sum_{i=1..k} i! * (k-i)!.

The programs for A076735, there is no canonical definition to state claims against.
-/

/-! ## A076735.P366310537734737963

`A252505(A027434(n+1)!)`
-/

namespace A076735.P366310537734737963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252505 (Nat.factorial (A027434 (n + 1)).toNat)

end

end A076735.P366310537734737963

/-! ## A076735.P4836758867505056073

`A089827(A000267(n)%A272721(n+1))`
-/

namespace A076735.P4836758867505056073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089827 (Int.tmod (A000267 n) (A272721 (n + 1))).toNat

end

end A076735.P4836758867505056073

/-! ## A076735.P7943462414157552307

`A089827(A000267(n))%A167810(n+3)`
-/

namespace A076735.P7943462414157552307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A089827 (A000267 n).toNat) (A167810 (n + 3))

end

end A076735.P7943462414157552307

/-! ## A076735.P2463891258453685495

`A054844(A056835(n))`
-/

namespace A076735.P2463891258453685495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054844 (A056835 n).toNat

end

end A076735.P2463891258453685495

/-! ## A076735.P15268970537533245794

`A194441(or(n, eq[1, A329697(n+1)]))`
-/

namespace A076735.P15268970537533245794
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329697 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194441 (Nat.lor n (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n))

end

end A076735.P15268970537533245794

/-!
# A076736: Let u(1) = u(2) = u(3) = 2, u(n) = (1 + u(n-1)*u(n-2))/u(n-3); then a(n) is the denominator of u(n).

The programs for A076736, the canonical program `A076736.P17828977214609758998` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A076736 has offset 1).

The definition of A076736 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A076736.P17828977214609758998

`2*a(n-2)` with `a(0)=1, a(1)=1, a(2)=1, a(3)=2, a(4)=1`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A076736

/-- `2*a(n-2)` -/
def P17828977214609758998.Spec : Prop :=
  ∀ n, (P17828977214609758998.a n : ℤ) = A076736 (n + 1)

theorem P17828977214609758998.correct : P17828977214609758998.Spec := by
  intro n
  simp only [A076736, Nat.add_sub_cancel]

end A076736

/-! ## A076736.P8398481092657499685

`ogf((1+x-x^2-x^4)/(1-2x^2))`
-/

namespace A076736.P8398481092657499685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 1, -1, 0, -1] [1, 0, -2] n

end

end A076736.P8398481092657499685

namespace A076736

/-- `ogf((1+x-x^2-x^4)/(1-2x^2))` -/
def P8398481092657499685.Spec : Prop :=
  ∀ n, P8398481092657499685.a n = A076736 (n + 1)

end A076736

/-! ## A076736.P5722739110751967531

`a(n-2)+a(n-2)` with `a(0)=1, a(1)=1, a(2)=1, a(3)=2, a(4)=1`
-/

namespace A076736.P5722739110751967531
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 1, 1, 2, 1] fun n a =>
  a (n - 2) + a (n - 2)

end

end A076736.P5722739110751967531

namespace A076736

/-- `a(n-2)+a(n-2)` -/
def P5722739110751967531.Spec : Prop :=
  ∀ n, (P5722739110751967531.a n : ℤ) = A076736 (n + 1)

theorem P5722739110751967531.correct : P5722739110751967531.Spec := by
  intro n
  simp only [A076736, Nat.add_sub_cancel, A076736.P5722739110751967531.a, A076736.P17828977214609758998.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A076736

/-! ## A076736.P6322733532981494932

`round(2^(abs(n-A028242(n))-1))`
-/

namespace A076736.P6322733532981494932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((2 : ℚ) ^ (|(n : ℤ) - A028242 n| - 1 : ℤ))

end

end A076736.P6322733532981494932

namespace A076736

/-- `round(2^(abs(n-A028242(n))-1))` -/
def P6322733532981494932.Spec : Prop :=
  ∀ n, P6322733532981494932.a n = A076736 (n + 1)

end A076736

/-! ## A076736.P5155178968664802389

`A011782(abs(∑[A280193(n+1)]))`
-/

namespace A076736.P5155178968664802389
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280193 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 |∑ j ∈ Finset.range (n + 1), f1 j|.toNat

end

end A076736.P5155178968664802389

namespace A076736

/-- `A011782(abs(∑[A280193(n+1)]))` -/
def P5155178968664802389.Spec : Prop :=
  ∀ n, P5155178968664802389.a n = A076736 (n + 1)

end A076736

/-! ## A076736.P2738149682770158170

`A011782(abs(n-∑[A280193(n)]))`
-/

namespace A076736.P2738149682770158170
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280193 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 |(n : ℤ) - ∑ j ∈ Finset.range (n + 1), f1 j|.toNat

end

end A076736.P2738149682770158170

namespace A076736

/-- `A011782(abs(n-∑[A280193(n)]))` -/
def P2738149682770158170.Spec : Prop :=
  ∀ n, P2738149682770158170.a n = A076736 (n + 1)

end A076736

/-! ## A076736.P11964517230599442775

`A011782(∑[A280193(n)]-A280193(n))`
-/

namespace A076736.P11964517230599442775
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280193 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 (∑ j ∈ Finset.range (n + 1), f1 j - A280193 n).toNat

end

end A076736.P11964517230599442775

namespace A076736

/-- `A011782(∑[A280193(n)]-A280193(n))` -/
def P11964517230599442775.Spec : Prop :=
  ∀ n, P11964517230599442775.a n = A076736 (n + 1)

end A076736

/-! ## A076736.P13013944189441286349

`gcd(A101651(n), A121451(n+1))`
-/

namespace A076736.P13013944189441286349
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A101651 n) (A121451 (n + 1))

end

end A076736.P13013944189441286349

namespace A076736

/-- `gcd(A101651(n), A121451(n+1))` -/
def P13013944189441286349.Spec : Prop :=
  ∀ n, (P13013944189441286349.a n : ℤ) = A076736 (n + 1)

end A076736

/-! ## A076736.P13437986513919353729

`and(A052551(n), A160824(n+1))`
-/

namespace A076736.P13437986513919353729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A052551 n) (A160824 (n + 1))

end

end A076736.P13437986513919353729

namespace A076736

/-- `and(A052551(n), A160824(n+1))` -/
def P13437986513919353729.Spec : Prop :=
  ∀ n, P13437986513919353729.a n = A076736 (n + 1)

end A076736

/-! ## A076736.P4659409543361443359

`and(A160824(n+1), A290418(n))`
-/

namespace A076736.P4659409543361443359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A160824 (n + 1)) (A290418 n)

end

end A076736.P4659409543361443359

namespace A076736

/-- `and(A160824(n+1), A290418(n))` -/
def P4659409543361443359.Spec : Prop :=
  ∀ n, P4659409543361443359.a n = A076736 (n + 1)

end A076736

/-! ## A076736.P4060972815639574958

`and(A160824(n+1), A290673(n))`
-/

namespace A076736.P4060972815639574958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A160824 (n + 1)) (A290673 n)

end

end A076736.P4060972815639574958

namespace A076736

/-- `and(A160824(n+1), A290673(n))` -/
def P4060972815639574958.Spec : Prop :=
  ∀ n, P4060972815639574958.a n = A076736 (n + 1)

end A076736

/-! ## A076736.P14401404506739283953

`and(A160824(n+1), A179781(n+1))`
-/

namespace A076736.P14401404506739283953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A160824 (n + 1)) (A179781 (n + 1))

end

end A076736.P14401404506739283953

namespace A076736

/-- `and(A160824(n+1), A179781(n+1))` -/
def P14401404506739283953.Spec : Prop :=
  ∀ n, P14401404506739283953.a n = A076736 (n + 1)

end A076736

/-! ## A076736.P827051885242039963

`and(A160824(n+1), A265386(n+1))`
-/

namespace A076736.P827051885242039963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A160824 (n + 1)) (A265386 (n + 1))

end

end A076736.P827051885242039963

namespace A076736

/-- `and(A160824(n+1), A265386(n+1))` -/
def P827051885242039963.Spec : Prop :=
  ∀ n, P827051885242039963.a n = A076736 (n + 1)

end A076736

/-! ## A076736.P6288529055109975022

`and(A078477(n+3), A160824(n+1))`
-/

namespace A076736.P6288529055109975022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A078477 (n + 3)) (A160824 (n + 1))

end

end A076736.P6288529055109975022

namespace A076736

/-- `and(A078477(n+3), A160824(n+1))` -/
def P6288529055109975022.Spec : Prop :=
  ∀ n, P6288529055109975022.a n = A076736 (n + 1)

end A076736

/-! ## A076736.P14193271865457860612

`gcd(A121451(n+1)+A117575(n), A117575(n))`
-/

namespace A076736.P14193271865457860612
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A121451 (n + 1) + A117575 n) (A117575 n)

end

end A076736.P14193271865457860612

namespace A076736

/-- `gcd(A121451(n+1)+A117575(n), A117575(n))` -/
def P14193271865457860612.Spec : Prop :=
  ∀ n, (P14193271865457860612.a n : ℤ) = A076736 (n + 1)

end A076736

/-! ## A076736.P9498502824591055763

`ceil(A135530(n+1)/4)`
-/

namespace A076736.P9498502824591055763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A135530 (n + 1) : ℚ) / 4⌉

end

end A076736.P9498502824591055763

namespace A076736

/-- `ceil(A135530(n+1)/4)` -/
def P9498502824591055763.Spec : Prop :=
  ∀ n, P9498502824591055763.a n = A076736 (n + 1)

end A076736

/-! ## A076736.P2318117801747174239

`and(A160824(n+1), A289526(n))`
-/

namespace A076736.P2318117801747174239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A160824 (n + 1)) (A289526 n)

end

end A076736.P2318117801747174239

namespace A076736

/-- `and(A160824(n+1), A289526(n))` -/
def P2318117801747174239.Spec : Prop :=
  ∀ n, P2318117801747174239.a n = A076736 (n + 1)

end A076736

/-! ## A076736.P12071793324654431913

`ceil(A011782(n)/A135530(n))`
-/

namespace A076736.P12071793324654431913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A011782 n : ℚ) / (A135530 n : ℚ)⌉

end

end A076736.P12071793324654431913

namespace A076736

/-- `ceil(A011782(n)/A135530(n))` -/
def P12071793324654431913.Spec : Prop :=
  ∀ n, P12071793324654431913.a n = A076736 (n + 1)

end A076736

/-! ## A076736.P13621092651610183144

`gcd(A000079(n), A160824(n+1))`
-/

namespace A076736.P13621092651610183144
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000079 n) (A160824 (n + 1))

end

end A076736.P13621092651610183144

namespace A076736

/-- `gcd(A000079(n), A160824(n+1))` -/
def P13621092651610183144.Spec : Prop :=
  ∀ n, (P13621092651610183144.a n : ℤ) = A076736 (n + 1)

end A076736

/-! ## A076736.P9925464227427707228

`and(A160824(n+1), A288832(n))`
-/

namespace A076736.P9925464227427707228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A160824 (n + 1)) (A288832 n)

end

end A076736.P9925464227427707228

namespace A076736

/-- `and(A160824(n+1), A288832(n))` -/
def P9925464227427707228.Spec : Prop :=
  ∀ n, P9925464227427707228.a n = A076736 (n + 1)

end A076736

/-!
# A076737: Let u(1)=u(2)=u(3)=2, u(n)=(1+u(n-1)u(n-2))/u(n-3); then a(n) is the numerator of u(n).

The programs for A076737, the canonical program `A076737.P4754763807282475927` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A076737 has offset 1).

The definition of A076737 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 169 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A076737.P4754763807282475927

`gcd(A124303(A233583(n+1)), A133140(n))`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A076737

/-- `gcd(A124303(A233583(n+1)), A133140(n))` -/
def P4754763807282475927.Spec : Prop :=
  ∀ n, (P4754763807282475927.a n : ℤ) = A076737 (n + 1)

theorem P4754763807282475927.correct : P4754763807282475927.Spec := by
  intro n
  simp only [A076737, Nat.add_sub_cancel]

end A076737

/-! ## A076737.P6524181463740676972

`A133140(n)/A089128(A029744(n+1))`
-/

namespace A076737.P6524181463740676972
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A133140 n : ℚ) / (A089128 (A029744 (n + 1)).toNat : ℚ)

end

end A076737.P6524181463740676972

namespace A076737

/-- `A133140(n)/A089128(A029744(n+1))` -/
def P6524181463740676972.Spec : Prop :=
  ∀ n, P6524181463740676972.a n = (A076737 (n + 1) : ℚ)

end A076737

/-! ## A076737.P206725134840830557

`A014682(A005578(n))+char[2]`
-/

namespace A076737.P206725134840830557
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A005578 n).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A076737.P206725134840830557

namespace A076737

/-- `A014682(A005578(n))+char[2]` -/
def P206725134840830557.Spec : Prop :=
  ∀ n, P206725134840830557.a n = A076737 (n + 1)

end A076737

/-! ## A076737.P3207885482599299533

`A014682(A005578(n-char[2]))`
-/

namespace A076737.P3207885482599299533
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A005578 (n - (if ∃ j, f1 j = n then 1 else 0))).toNat

end

end A076737.P3207885482599299533

namespace A076737

/-- `A014682(A005578(n-char[2]))` -/
def P3207885482599299533.Spec : Prop :=
  ∀ n, P3207885482599299533.a n = A076737 (n + 1)

end A076737

/-! ## A076737.P11963826452658331541

`A014096(n)+A000265(A080880(n))`
-/

namespace A076737.P11963826452658331541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014096 n + A000265 (A080880 n).toNat

end

end A076737.P11963826452658331541

namespace A076737

/-- `A014096(n)+A000265(A080880(n))` -/
def P11963826452658331541.Spec : Prop :=
  ∀ n, P11963826452658331541.a n = A076737 (n + 1)

end A076737

/-!
# A076738: Expansion of (1+2*x+6*x^2)/(1-9*x^3).

The programs for A076738, the canonical program `A076738.P1369320877424320780` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A076738 has offset 0).

The definition of A076738 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1+2x+6x^2)/(1-9x^3))` (program `A076738.P1369320877424320780`, by `A076738.P1369320877424320780.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A076738.P1369320877424320780

`ogf((1+2x+6x^2)/(1-9x^3))`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A076738

/-- `ogf((1+2x+6x^2)/(1-9x^3))` -/
def P1369320877424320780.Spec : Prop :=
  ∀ n, P1369320877424320780.a n = A076738 n

theorem P1369320877424320780.correct : P1369320877424320780.Spec := by
  intro n
  simp only [A076738]

end A076738

/-! ## A076738.P1549470178445372562

`9*a(n-3)` with `a(0)=1, a(1)=2, a(2)=6`
-/

namespace A076738.P1549470178445372562
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2, 6] fun n a =>
  9 * a (n - 3)

end

end A076738.P1549470178445372562

namespace A076738

/-- `9*a(n-3)` -/
def P1549470178445372562.Spec : Prop :=
  ∀ n, (P1549470178445372562.a n : ℤ) = A076738 n

end A076738

/-! ## A076738.P4865103380881972034

`a(n-3)/(1/3)²` with `a(0)=1, a(1)=2, a(2)=6`
-/

namespace A076738.P4865103380881972034
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 2, 6] fun n a =>
  a (n - 3) / ((1 : ℚ) / 3) ^ 2

end

end A076738.P4865103380881972034

namespace A076738

/-- `a(n-3)/(1/3)²` -/
def P4865103380881972034.Spec : Prop :=
  ∀ n, P4865103380881972034.a n = (A076738 n : ℚ)

end A076738

/-! ## A076738.P2539695614145111118

`A000792(∑[n%3]+n)`
-/

namespace A076738.P2539695614145111118
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n % 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000792 (∑ j ∈ Finset.range (n + 1), f1 j + n)

end

end A076738.P2539695614145111118

namespace A076738

/-- `A000792(∑[n%3]+n)` -/
def P2539695614145111118.Spec : Prop :=
  ∀ n, P2539695614145111118.a n = A076738 n

end A076738

/-! ## A076738.P75392471912533397

`record[3^floor(n*γ²)*A040001(n)]`
-/

namespace A076738.P75392471912533397
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 : ℚ) ^ (⌊(n : ℝ) * Real.eulerMascheroniConstant ^ 2⌋ : ℤ) * (A040001 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A076738.P75392471912533397

namespace A076738

/-- `record[3^floor(n*γ²)*A040001(n)]` -/
def P75392471912533397.Spec : Prop :=
  ∀ n, P75392471912533397.a n = (A076738 n : ℚ)

end A076738

/-! ## A076738.P8382492158215703318

`A000792(A047267(n+1))`
-/

namespace A076738.P8382492158215703318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000792 (A047267 (n + 1)).toNat

end

end A076738.P8382492158215703318

namespace A076738

/-- `A000792(A047267(n+1))` -/
def P8382492158215703318.Spec : Prop :=
  ∀ n, P8382492158215703318.a n = A076738 n

end A076738

/-! ## A076738.P5568758403085186009

`A038754(A042965(n+1))`
-/

namespace A076738.P5568758403085186009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038754 (A042965 (n + 1)).toNat

end

end A076738.P5568758403085186009

namespace A076738

/-- `A038754(A042965(n+1))` -/
def P5568758403085186009.Spec : Prop :=
  ∀ n, P5568758403085186009.a n = A076738 n

end A076738

/-! ## A076738.P3727668673839459099

`A182522(A004773(n+1))`
-/

namespace A076738.P3727668673839459099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182522 (A004773 (n + 1)).toNat

end

end A076738.P3727668673839459099

namespace A076738

/-- `A182522(A004773(n+1))` -/
def P3727668673839459099.Spec : Prop :=
  ∀ n, P3727668673839459099.a n = A076738 n

end A076738

/-! ## A076738.P18002929155056832891

`A038754(A004396(2*n))`
-/

namespace A076738.P18002929155056832891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038754 (A004396 (2 * n)).toNat

end

end A076738.P18002929155056832891

namespace A076738

/-- `A038754(A004396(2*n))` -/
def P18002929155056832891.Spec : Prop :=
  ∀ n, P18002929155056832891.a n = A076738 n

end A076738

/-! ## A076738.P13777108867390476287

`∪[A008776(n), A083423(n)]`
-/

namespace A076738.P13777108867390476287
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008776 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083423 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A076738.P13777108867390476287

namespace A076738

/-- `∪[A008776(n), A083423(n)]` -/
def P13777108867390476287.Spec : Prop :=
  ∀ n, (P13777108867390476287.a n : ℤ) = A076738 n

end A076738

/-! ## A076738.P8780805815339924404

`∪[A025192(n), A083423(n)]`
-/

namespace A076738.P8780805815339924404
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025192 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083423 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A076738.P8780805815339924404

namespace A076738

/-- `∪[A025192(n), A083423(n)]` -/
def P8780805815339924404.Spec : Prop :=
  ∀ n, (P8780805815339924404.a n : ℤ) = A076738 n

end A076738

/-! ## A076738.P5778529059580195428

`∪[A083423(n), A099856(n)]`
-/

namespace A076738.P5778529059580195428
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083423 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099856 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A076738.P5778529059580195428

namespace A076738

/-- `∪[A083423(n), A099856(n)]` -/
def P5778529059580195428.Spec : Prop :=
  ∀ n, (P5778529059580195428.a n : ℤ) = A076738 n

end A076738

/-! ## A076738.P4763565091536677661

`A038754(A004773(n+1)-1)`
-/

namespace A076738.P4763565091536677661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038754 (A004773 (n + 1) - 1).toNat

end

end A076738.P4763565091536677661

namespace A076738

/-- `A038754(A004773(n+1)-1)` -/
def P4763565091536677661.Spec : Prop :=
  ∀ n, P4763565091536677661.a n = A076738 n

end A076738

/-! ## A076738.P1073817243381272500

`A038754(A002264(4*n+1))`
-/

namespace A076738.P1073817243381272500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038754 (A002264 (4 * n + 1)).toNat

end

end A076738.P1073817243381272500

namespace A076738

/-- `A038754(A002264(4*n+1))` -/
def P1073817243381272500.Spec : Prop :=
  ∀ n, P1073817243381272500.a n = A076738 n

end A076738

/-! ## A076738.P16267210004052611548

`A038754(lt[A290102(n+1), 4])`
-/

namespace A076738.P16267210004052611548
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290102 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038754 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A076738.P16267210004052611548

namespace A076738

/-- `A038754(lt[A290102(n+1), 4])` -/
def P16267210004052611548.Spec : Prop :=
  ∀ n, P16267210004052611548.a n = A076738 n

end A076738

/-! ## A076738.P12927778574986018298

`A038754(A002264(n+1)+n)`
-/

namespace A076738.P12927778574986018298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038754 (A002264 (n + 1) + (n : ℤ)).toNat

end

end A076738.P12927778574986018298

namespace A076738

/-- `A038754(A002264(n+1)+n)` -/
def P12927778574986018298.Spec : Prop :=
  ∀ n, P12927778574986018298.a n = A076738 n

end A076738

/-! ## A076738.P17510013507963524694

`A038754(n-A004396(n)+n)`
-/

namespace A076738.P17510013507963524694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038754 ((n : ℤ) - A004396 n + (n : ℤ)).toNat

end

end A076738.P17510013507963524694

namespace A076738

/-- `A038754(n-A004396(n)+n)` -/
def P17510013507963524694.Spec : Prop :=
  ∀ n, P17510013507963524694.a n = A076738 n

end A076738

/-! ## A076738.P16144869162680364976

`A038754(n-(A004396(n)-n))`
-/

namespace A076738.P16144869162680364976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038754 ((n : ℤ) - (A004396 n - (n : ℤ))).toNat

end

end A076738.P16144869162680364976

namespace A076738

/-- `A038754(n-(A004396(n)-n))` -/
def P16144869162680364976.Spec : Prop :=
  ∀ n, P16144869162680364976.a n = A076738 n

end A076738

/-! ## A076738.P23679752505076590

`A038754(A004526(ceil(8*n/3)))`
-/

namespace A076738.P23679752505076590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038754 (A004526 ⌈8 * ((n : ℚ) / 3)⌉.toNat).toNat

end

end A076738.P23679752505076590

namespace A076738

/-- `A038754(A004526(ceil(8*n/3)))` -/
def P23679752505076590.Spec : Prop :=
  ∀ n, P23679752505076590.a n = A076738 n

end A076738

/-! ## A076738.P9638359742535141396

`A038754(A004523(n+1)+A004523(n))`
-/

namespace A076738.P9638359742535141396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038754 (A004523 (n + 1) + A004523 n).toNat

end

end A076738.P9638359742535141396

namespace A076738

/-- `A038754(A004523(n+1)+A004523(n))` -/
def P9638359742535141396.Spec : Prop :=
  ∀ n, P9638359742535141396.a n = A076738 n

end A076738

/-!
# A076739: Number of compositions of n into Fibonacci numbers (1 counted as single Fibonacci number).

The programs for A076739, there is no canonical definition to state claims against.
-/

/-! ## A076739.P8288536533360167280

`A144172(∑[n+1])`
-/

namespace A076739.P8288536533360167280
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144172 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A076739.P8288536533360167280

/-! ## A076739.P9956508503242292582

`and(-1, A144172(A100542(n+1)))`
-/

namespace A076739.P9956508503242292582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A144172 (A100542 (n + 1)).toNat)

end

end A076739.P9956508503242292582

/-! ## A076739.P5537052799664445637

`A178798(n)+A144172(A100542(n+1))`
-/

namespace A076739.P5537052799664445637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178798 n + A144172 (A100542 (n + 1)).toNat

end

end A076739.P5537052799664445637

/-! ## A076739.P16337175363498397991

`A184955(n)+A144172(A100542(n+1))`
-/

namespace A076739.P16337175363498397991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184955 n + A144172 (A100542 (n + 1)).toNat

end

end A076739.P16337175363498397991

/-! ## A076739.P14310167732780144497

`A185284(n)+A144172(A100542(n+1))`
-/

namespace A076739.P14310167732780144497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185284 n + A144172 (A100542 (n + 1)).toNat

end

end A076739.P14310167732780144497

/-!
# A076740: a(n) = 2*a(n-1)^2 - a(n-2)^2 with a(0)=0, a(1)=1.

The programs for A076740, the canonical program `A076740.P2215725602305317485` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A076740 has offset 0).

The definition of A076740 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2*a(n-1)²-a(n-2)²` (program `A076740.P2215725602305317485`, by `A076740.P2215725602305317485.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A076740.P2215725602305317485

`2*a(n-1)²-a(n-2)²` with `a(0)=0, a(1)=1`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A076740

/-- `2*a(n-1)²-a(n-2)²` -/
def P2215725602305317485.Spec : Prop :=
  ∀ n, P2215725602305317485.a n = A076740 n

theorem P2215725602305317485.correct : P2215725602305317485.Spec := by
  intro n
  simp only [A076740]

end A076740

/-! ## A076740.P17106507504243882485

`a(n-1)²+a(n-1)²-a(n-2)²` with `a(0)=0, a(1)=1`
-/

namespace A076740.P17106507504243882485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  a (n - 1) ^ 2 + (a (n - 1) ^ 2 - a (n - 2) ^ 2)

end

end A076740.P17106507504243882485

namespace A076740

/-- `a(n-1)²+a(n-1)²-a(n-2)²` -/
def P17106507504243882485.Spec : Prop :=
  ∀ n, P17106507504243882485.a n = A076740 n

theorem P17106507504243882485.correct : P17106507504243882485.Spec := by
  intro n
  simp only [A076740, Nat.add_sub_cancel, A076740.P17106507504243882485.a, A076740.P2215725602305317485.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A076740

/-! ## A076740.P2146441372920577377

`2*a(n-1)*a(n-1)-a(n-2)*a(n-2)` with `a(0)=0, a(1)=1`
-/

namespace A076740.P2146441372920577377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  2 * (a (n - 1) * a (n - 1)) - a (n - 2) * a (n - 2)

end

end A076740.P2146441372920577377

namespace A076740

/-- `2*a(n-1)*a(n-1)-a(n-2)*a(n-2)` -/
def P2146441372920577377.Spec : Prop :=
  ∀ n, P2146441372920577377.a n = A076740 n

theorem P2146441372920577377.correct : P2146441372920577377.Spec := by
  intro n
  simp only [A076740, Nat.add_sub_cancel, A076740.P2146441372920577377.a, A076740.P2215725602305317485.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A076740

/-!
# A076741: Nonzero coefficients of the polynomials in the numerator of 1/(1+x^2) and its successive derivatives, starting with the constant term.

The programs for A076741, there is no canonical definition to state claims against.
-/

/-! ## A076741.P2444974684443226460

`A076256(2*n-(round(sqrt(n+1))-1))`
-/

namespace A076741.P2444974684443226460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076256 ((2 * n : ℤ) - (SequenceMachineLib.roundAway (Real.sqrt (n + 1 : ℝ)) - 1)).toNat

end

end A076741.P2444974684443226460

/-! ## A076741.P15496739179298438357

`A076743(C(ceil(2*sqrt(n+1)), 2)-n-1)`
-/

namespace A076741.P15496739179298438357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076743 ((Nat.choose ⌈2 * Real.sqrt (n + 1 : ℝ)⌉.toNat 2 : ℤ) - (n : ℤ) - 1).toNat

end

end A076741.P15496739179298438357

/-!
# A076743: Nonzero coefficients of the polynomials in the numerator of 1/(1+x^2) and its successive derivatives, starting with the highest power of x.

The programs for A076743, there is no canonical definition to state claims against.
-/

/-! ## A076743.P272275861127684007

`A076257(lt[0, A238801(n)])`
-/

namespace A076743.P272275861127684007
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238801 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076257 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A076743.P272275861127684007

/-! ## A076743.P13455123884184147473

`A076257(A028391(n)+n)`
-/

namespace A076743.P13455123884184147473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076257 (A028391 n + (n : ℤ)).toNat

end

end A076743.P13455123884184147473

/-! ## A076743.P17458169726617978631

`A076257(2*n-A000196(n))`
-/

namespace A076743.P17458169726617978631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076257 ((2 * n : ℤ) - A000196 n).toNat

end

end A076743.P17458169726617978631

/-! ## A076743.P7372253310579066866

`A076257(n-A000196(n)+n)`
-/

namespace A076743.P7372253310579066866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076257 ((n : ℤ) - A000196 n + (n : ℤ)).toNat

end

end A076743.P7372253310579066866

/-! ## A076743.P6161642910001519472

`A076257(lt[0, A076257(n)²])`
-/

namespace A076743.P6161642910001519472
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076257 n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076257 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A076743.P6161642910001519472

/-!
# A076745: a(n) = the least positive integer k such that b(k) = n, where b(k) (A076526) is defined by b(k) = r * max{e_1,...,e_r} if k = p_1^e_1 *...* p_r^e_r is the canonical prime factorization of k.

The programs for A076745, there is no canonical definition to state claims against.
-/

/-! ## A076745.P9174674099364864064

`A187941(A062399(n)+A046564(n+1))`
-/

namespace A076745.P9174674099364864064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187941 (A062399 n + A046564 (n + 1)).toNat

end

end A076745.P9174674099364864064

/-! ## A076745.P12220787842514228927

`A187941(A069289(n+1)+A062399(n))`
-/

namespace A076745.P12220787842514228927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187941 (A069289 (n + 1) + A062399 n).toNat

end

end A076745.P12220787842514228927

/-! ## A076745.P13972588453523507132

`A278233(2*A099315(n+1)^A184983(n)!)`
-/

namespace A076745.P13972588453523507132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278233 (2 * A099315 (n + 1) ^ Nat.factorial (A184983 n).toNat).toNat

end

end A076745.P13972588453523507132

/-! ## A076745.P17765131554235942957

`A276270(A305183(n+1))`
-/

namespace A076745.P17765131554235942957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276270 (A305183 (n + 1)).toNat

end

end A076745.P17765131554235942957

/-! ## A076745.P979033977373209420

`A085083(A087051(n)+2)`
-/

namespace A076745.P979033977373209420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085083 (A087051 n + 2).toNat

end

end A076745.P979033977373209420

/-!
# A076746: List giving pairs of primes of the form 10k+3 and 10k+7.

The programs for A076746, the canonical program `A076746.P7131099468425738102` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A076746 has offset 1).

The definition of A076746 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A076746.P7131099468425738102

`∪[A289413(n+1)+4, A289413(n+1)]`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A076746

/-- `∪[A289413(n+1)+4, A289413(n+1)]` -/
def P7131099468425738102.Spec : Prop :=
  ∀ n, (P7131099468425738102.a n : ℤ) = A076746 (n + 1)

theorem P7131099468425738102.correct : P7131099468425738102.Spec := by
  intro n
  simp only [A076746, Nat.add_sub_cancel]

end A076746

/-! ## A076746.P9823938481449477648

`p?[∑[A276865(A027578(n))]]`
-/

namespace A076746.P9823938481449477648
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276865 (A027578 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A076746.P9823938481449477648

namespace A076746

/-- `p?[∑[A276865(A027578(n))]]` -/
def P9823938481449477648.Spec : Prop :=
  ∀ n, P9823938481449477648.a n = A076746 (n + 1)

end A076746

/-! ## A076746.P3478271455418614980

`∩[A180543(n+1), A376342(n+1)]`
-/

namespace A076746.P3478271455418614980
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180543 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376342 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A076746.P3478271455418614980

namespace A076746

/-- `∩[A180543(n+1), A376342(n+1)]` -/
def P3478271455418614980.Spec : Prop :=
  ∀ n, (P3478271455418614980.a n : ℤ) = A076746 (n + 1)

end A076746

/-!
# A076747: List giving pairs of primes of the form 10k+3 and 10k+13.

The programs for A076747, there is no canonical definition to state claims against.
-/

/-! ## A076747.P12805584492288663017

`filter[A140445(n+1), A185706(#)]`
-/

namespace A076747.P12805584492288663017
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140445 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A185706 (f1 j).toNat = 1) n)

end

end A076747.P12805584492288663017

/-! ## A076747.P2509460647855119796

`filter[A140445(n+1), A232990(#)]`
-/

namespace A076747.P2509460647855119796
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140445 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A232990 (f1 j).toNat = 1) n)

end

end A076747.P2509460647855119796

/-! ## A076747.P12977112078042029445

`p?[A195817(n)+A045506(n)]`
-/

namespace A076747.P12977112078042029445
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195817 n + A045506 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A076747.P12977112078042029445

/-! ## A076747.P18013848092842059678

`A030431(C(A000045(n), A007089(n))+n)`
-/

namespace A076747.P18013848092842059678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030431 (Nat.choose (A000045 n).toNat (A007089 n).toNat + n)

end

end A076747.P18013848092842059678

/-! ## A076747.P10581694328023606607

`A030431(C(A276423(n), A000326(n))+n)`
-/

namespace A076747.P10581694328023606607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030431 (Nat.choose (A276423 n).toNat (A000326 n).toNat + n)

end

end A076747.P10581694328023606607

/-!
# A076750: Squares which are the product of a non-palindrome and its reversal, where leading zeros are not allowed.

The programs for A076750, there is no canonical definition to state claims against.
-/

/-! ## A076750.P9341297124012891500

`A207373(n+1)²`
-/

namespace A076750.P9341297124012891500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207373 (n + 1) ^ 2

end

end A076750.P9341297124012891500

/-! ## A076750.P11988500552376202196

`A207373(2*(n+1)-(n+1))*A207373(n+1)`
-/

namespace A076750.P11988500552376202196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207373 (2 * (n + 1) - (n + 1)) * A207373 (n + 1)

end

end A076750.P11988500552376202196

/-! ## A076750.P2274253520644330815

`A207373(n+1)^(A001222(A065091(n+1))+1)`
-/

namespace A076750.P2274253520644330815
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A207373 (n + 1) : ℚ) ^ (A001222 (A065091 (n + 1)).toNat + 1 : ℤ)

end

end A076750.P2274253520644330815

/-! ## A076750.P7844062769749193472

`(A207373(n+1)+char[A252053(n+1)])*A207373(n+1)`
-/

namespace A076750.P7844062769749193472
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252053 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A207373 (n + 1) + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)) * A207373 (n + 1)

end

end A076750.P7844062769749193472

/-! ## A076750.P8774466016954616552

`(A207373(n+1)%A207373(n+2))^2`
-/

namespace A076750.P8774466016954616552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A207373 (n + 1)) (A207373 (n + 2)) ^ 2

end

end A076750.P8774466016954616552

/-!
# A076751: a(n) is the smallest composite k such that Sum_{composites j = 4, ..., k} 1/j exceeds n.

The programs for A076751, there is no canonical definition to state claims against.
-/

/-! ## A076751.P6915097654977199064

`A002808(A074631(n+1))`
-/

namespace A076751.P6915097654977199064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002808 (A074631 (n + 1)).toNat

end

end A076751.P6915097654977199064

/-! ## A076751.P12407754839537749544

`A331930(2*(n+1))`
-/

namespace A076751.P12407754839537749544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331930 (2 * (n + 1))

end

end A076751.P12407754839537749544

/-! ## A076751.P5003123829994479059

`record[A331930(xor(1, n)+1)]`
-/

namespace A076751.P5003123829994479059
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331930 (Nat.xor 1 n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A076751.P5003123829994479059

/-! ## A076751.P5804814594066627047

`record[A331930(A003417(n))]`
-/

namespace A076751.P5804814594066627047
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331930 (A003417 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A076751.P5804814594066627047

/-! ## A076751.P17705518165911344100

`record[A331930(A133265(n))]`
-/

namespace A076751.P17705518165911344100
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331930 (A133265 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A076751.P17705518165911344100

/-!
# A076752: a(n) = Sum_{d is a square divisor of n} n/d.

The programs for A076752, the canonical program `A076752.P4228621196644119807` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A076752 has offset 1).

The definition of A076752 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A076752.P13429521633124521481

`∑{d}[n+1, A206369(#)]`
-/

namespace A076752.P13429521633124521481
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A206369 d

end

end A076752.P13429521633124521481

namespace A076752

/-- `∑{d}[n+1, A206369(#)]` -/
def P13429521633124521481.Spec : Prop :=
  ∀ n, P13429521633124521481.a n = A076752 (n + 1)

end A076752

/-! ## A076752.P7019866174189021986

`A351600(n+1)/(n+1)`
-/

namespace A076752.P7019866174189021986
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A351600 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A076752.P7019866174189021986

namespace A076752

/-- `A351600(n+1)/(n+1)` -/
def P7019866174189021986.Spec : Prop :=
  ∀ n, P7019866174189021986.a n = (A076752 (n + 1) : ℚ)

end A076752

/-! ## A076752.P14824648816507883328

`∑{d}[A000188(n+1), (n+1)/#²]`
-/

namespace A076752.P14824648816507883328
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000188 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, (n + 1 : ℚ) / (d ^ 2 : ℚ)

end

end A076752.P14824648816507883328

namespace A076752

/-- `∑{d}[A000188(n+1), (n+1)/#²]` -/
def P14824648816507883328.Spec : Prop :=
  ∀ n, P14824648816507883328.a n = (A076752 (n + 1) : ℚ)

end A076752

/-! ## A076752.P16471913519840870624

`(n+1)*∑{d}[n+1, A010052(#)/#]`
-/

namespace A076752.P16471913519840870624
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) * (∑ d ∈ Nat.divisors (f1 n), (A010052 d : ℚ) / (d : ℚ))

end

end A076752.P16471913519840870624

namespace A076752

/-- `(n+1)*∑{d}[n+1, A010052(#)/#]` -/
def P16471913519840870624.Spec : Prop :=
  ∀ n, P16471913519840870624.a n = (A076752 (n + 1) : ℚ)

end A076752

/-! ## A076752.P9565831862795503407

`A007913(n+1)*A035316(n+1)`
-/

namespace A076752.P9565831862795503407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (n + 1) * A035316 (n + 1)

end

end A076752.P9565831862795503407

namespace A076752

/-- `A007913(n+1)*A035316(n+1)` -/
def P9565831862795503407.Spec : Prop :=
  ∀ n, P9565831862795503407.a n = A076752 (n + 1)

end A076752

/-! ## A076752.P7581291506164202465

`∑{d}[A000188(n+1), #²]*A007913(n+1)`
-/

namespace A076752.P7581291506164202465
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000188 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ d ∈ Nat.divisors (f1 n).natAbs, d ^ 2 : ℕ) : ℤ) * A007913 (n + 1)

end

end A076752.P7581291506164202465

namespace A076752

/-- `∑{d}[A000188(n+1), #²]*A007913(n+1)` -/
def P7581291506164202465.Spec : Prop :=
  ∀ n, P7581291506164202465.a n = A076752 (n + 1)

end A076752

/-! ## A076752.P15925459496080966150

`(n+1-A326058(n+1))*A007913(n+1)`
-/

namespace A076752.P15925459496080966150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1 : ℤ) - A326058 (n + 1)) * A007913 (n + 1)

end

end A076752.P15925459496080966150

namespace A076752

/-- `(n+1-A326058(n+1))*A007913(n+1)` -/
def P15925459496080966150.Spec : Prop :=
  ∀ n, P15925459496080966150.a n = A076752 (n + 1)

end A076752

/-! ## A076752.P255434076165008413

`∑{d}[n+1, A000203(#)*A008836((n+1)/#)]`
-/

namespace A076752.P255434076165008413
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000203 d * A008836 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A076752.P255434076165008413

namespace A076752

/-- `∑{d}[n+1, A000203(#)*A008836((n+1)/#)]` -/
def P255434076165008413.Spec : Prop :=
  ∀ n, P255434076165008413.a n = A076752 (n + 1)

end A076752

/-! ## A076752.P13571052875199085432

`∑{d}[n+1, A000010(#)*A046951((n+1)/#)]`
-/

namespace A076752.P13571052875199085432
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000010 d * A046951 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A076752.P13571052875199085432

namespace A076752

/-- `∑{d}[n+1, A000010(#)*A046951((n+1)/#)]` -/
def P13571052875199085432.Spec : Prop :=
  ∀ n, P13571052875199085432.a n = A076752 (n + 1)

end A076752

/-! ## A076752.P4228621196644119807

`∑{d}[n+1, A000005(#)*A074722((n+1)/#)]`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A076752

/-- `∑{d}[n+1, A000005(#)*A074722((n+1)/#)]` -/
def P4228621196644119807.Spec : Prop :=
  ∀ n, P4228621196644119807.a n = A076752 (n + 1)

theorem P4228621196644119807.correct : P4228621196644119807.Spec := by
  intro n
  simp only [A076752, Nat.add_sub_cancel]

end A076752

/-! ## A076752.P16634217534097344865

`∑{d}[n+1, A056624(#)*A078429((n+1)/#)]`
-/

namespace A076752.P16634217534097344865
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A056624 d * A078429 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A076752.P16634217534097344865

namespace A076752

/-- `∑{d}[n+1, A056624(#)*A078429((n+1)/#)]` -/
def P16634217534097344865.Spec : Prop :=
  ∀ n, P16634217534097344865.a n = A076752 (n + 1)

end A076752

/-! ## A076752.P12107878280273214449

`∑{d}[n+1, A007429(#)*A158522((n+1)/#)]`
-/

namespace A076752.P12107878280273214449
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A007429 d * A158522 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A076752.P12107878280273214449

namespace A076752

/-- `∑{d}[n+1, A007429(#)*A158522((n+1)/#)]` -/
def P12107878280273214449.Spec : Prop :=
  ∀ n, P12107878280273214449.a n = A076752 (n + 1)

end A076752

/-! ## A076752.P11233832975652795975

`∑{d}[n+1, A001001(#)*A328639((n+1)/#)]`
-/

namespace A076752.P11233832975652795975
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A001001 d * A328639 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A076752.P11233832975652795975

namespace A076752

/-- `∑{d}[n+1, A001001(#)*A328639((n+1)/#)]` -/
def P11233832975652795975.Spec : Prop :=
  ∀ n, P11233832975652795975.a n = A076752 (n + 1)

end A076752

/-! ## A076752.P17442013958068427802

`∑{d}[n+1, A007430(#)*A326415((n+1)/#)]`
-/

namespace A076752.P17442013958068427802
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A007430 d * A326415 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A076752.P17442013958068427802

namespace A076752

/-- `∑{d}[n+1, A007430(#)*A326415((n+1)/#)]` -/
def P17442013958068427802.Spec : Prop :=
  ∀ n, P17442013958068427802.a n = A076752 (n + 1)

end A076752

/-! ## A076752.P14153655888474501036

`∑{d}[n+1, A008683(#)*A332844((n+1)/#)]`
-/

namespace A076752.P14153655888474501036
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008683 d * A332844 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A076752.P14153655888474501036

namespace A076752

/-- `∑{d}[n+1, A008683(#)*A332844((n+1)/#)]` -/
def P14153655888474501036.Spec : Prop :=
  ∀ n, P14153655888474501036.a n = A076752 (n + 1)

end A076752

/-! ## A076752.P3658405038116095290

`∑{d}[n+1, A027847(#)*A328640((n+1)/#)]`
-/

namespace A076752.P3658405038116095290
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A027847 d * A328640 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A076752.P3658405038116095290

namespace A076752

/-- `∑{d}[n+1, A027847(#)*A328640((n+1)/#)]` -/
def P3658405038116095290.Spec : Prop :=
  ∀ n, P3658405038116095290.a n = A076752 (n + 1)

end A076752

/-! ## A076752.P13849632892269313748

`∑{d}[n+1, A162728(#)*A317529((n+1)/#)]`
-/

namespace A076752.P13849632892269313748
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A162728 d * A317529 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A076752.P13849632892269313748

namespace A076752

/-- `∑{d}[n+1, A162728(#)*A317529((n+1)/#)]` -/
def P13849632892269313748.Spec : Prop :=
  ∀ n, P13849632892269313748.a n = A076752 (n + 1)

end A076752

/-! ## A076752.P6622561555932731562

`∑{d}[n+1, A214295(#)*A327625((n+1)/#)]`
-/

namespace A076752.P6622561555932731562
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A214295 d * A327625 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A076752.P6622561555932731562

namespace A076752

/-- `∑{d}[n+1, A214295(#)*A327625((n+1)/#)]` -/
def P6622561555932731562.Spec : Prop :=
  ∀ n, P6622561555932731562.a n = A076752 (n + 1)

end A076752

/-! ## A076752.P3275628109926197280

`(A000203(n+1)-A285309(n+1))*A007913(n+1)`
-/

namespace A076752.P3275628109926197280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000203 (n + 1) - A285309 (n + 1)) * A007913 (n + 1)

end

end A076752.P3275628109926197280

namespace A076752

/-- `(A000203(n+1)-A285309(n+1))*A007913(n+1)` -/
def P3275628109926197280.Spec : Prop :=
  ∀ n, P3275628109926197280.a n = A076752 (n + 1)

end A076752

/-! ## A076752.P198893202311872129

`(A001065(n+1)-A326059(n+1))*A007913(n+1)`
-/

namespace A076752.P198893202311872129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A001065 (n + 1) - A326059 (n + 1)) * A007913 (n + 1)

end

end A076752.P198893202311872129

namespace A076752

/-- `(A001065(n+1)-A326059(n+1))*A007913(n+1)` -/
def P198893202311872129.Spec : Prop :=
  ∀ n, P198893202311872129.a n = A076752 (n + 1)

end A076752

/-!
# A076753: a(n) = nearest integer to the standard deviation of the divisors of n.

The programs for A076753, there is no canonical definition to state claims against.
-/

/-! ## A076753.P4405929050532909580

`A000120(A241387(∑[(2^n)%6]))`
-/

namespace A076753.P4405929050532909580
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n % 6

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A241387 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A076753.P4405929050532909580

/-! ## A076753.P9631283521323570927

`ceil(A347473(n+3)/∑{d}[n+1, #])`
-/

namespace A076753.P9631283521323570927
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A347473 (n + 3) : ℚ) / ((∑ d ∈ Nat.divisors (f1 n), d : ℕ) : ℚ)⌉

end

end A076753.P9631283521323570927

/-! ## A076753.P10193150976348926833

`ceil(A347473(n+3)/A000203(n+1))`
-/

namespace A076753.P10193150976348926833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A347473 (n + 3) : ℚ) / (A000203 (n + 1) : ℚ)⌉

end

end A076753.P10193150976348926833

/-! ## A076753.P5211805659815610054

`A001222(A045583(n+1)*A058058(n+1))`
-/

namespace A076753.P5211805659815610054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A045583 (n + 1) * A058058 (n + 1)).toNat

end

end A076753.P5211805659815610054

/-! ## A076753.P2098115851948451833

`A000193(A005179(n+1)%A367421(n+2))`
-/

namespace A076753.P2098115851948451833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000193 (Int.tmod (A005179 (n + 1)) (A367421 (n + 2))).toNat

end

end A076753.P2098115851948451833

/-!
# A076754: a(n) = nearest integer to the skewness of the divisors of n.

The programs for A076754, there is no canonical definition to state claims against.
-/

/-! ## A076754.P683621190814862253

`round(A000005(A293754(n+1))/6)`
-/

namespace A076754.P683621190814862253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A000005 (A293754 (n + 1)).toNat : ℚ) / 6)

end

end A076754.P683621190814862253

/-! ## A076754.P16981325104699458303

`A062153(A000005(A293754(n+1)))`
-/

namespace A076754.P16981325104699458303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062153 (A000005 (A293754 (n + 1)).toNat).toNat

end

end A076754.P16981325104699458303

/-! ## A076754.P819371455383665911

`A000120(A050370(n+2))%A318284(A146985(n))`
-/

namespace A076754.P819371455383665911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000120 (A050370 (n + 2)).toNat) (A318284 (A146985 n).toNat)

end

end A076754.P819371455383665911

/-! ## A076754.P14460361298292005313

`A097564(A050370(n+2)%A248393(n+1))`
-/

namespace A076754.P14460361298292005313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097564 (Int.tmod (A050370 (n + 2)) (A248393 (n + 1))).toNat

end

end A076754.P14460361298292005313

/-! ## A076754.P9538468027460834302

`A103221(A032741(n+2))-A069513(A285300(n+1))`
-/

namespace A076754.P9538468027460834302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103221 (A032741 (n + 2)).toNat - A069513 (A285300 (n + 1)).toNat

end

end A076754.P9538468027460834302

/-! ## A076754.P16811137497418878700

`A323022(A105800(n+2))`
-/

namespace A076754.P16811137497418878700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323022 (A105800 (n + 2)).toNat

end

end A076754.P16811137497418878700

/-!
# A076755: Nearest integer to the kurtosis excess of the divisors of n.

The programs for A076755, there is no canonical definition to state claims against.
-/

/-! ## A076755.P16517694974251343187

`A334051(A000005(n+2))%A334041(n)`
-/

namespace A076755.P16517694974251343187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A334051 (A000005 (n + 2)).toNat) (A334041 n)

end

end A076755.P16517694974251343187

/-! ## A076755.P10948955373898799214

`A006949(A000005(n+2)%A112804(n+1))`
-/

namespace A076755.P10948955373898799214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006949 (Int.tmod (A000005 (n + 2)) (A112804 (n + 1))).toNat

end

end A076755.P10948955373898799214

/-! ## A076755.P7291144391836827930

`A036468(A032741(n+2)%A254412(n+1))`
-/

namespace A076755.P7291144391836827930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036468 (Int.tmod (A032741 (n + 2)) (A254412 (n + 1))).toNat

end

end A076755.P7291144391836827930

/-! ## A076755.P2770481353288506083

`A112995(A000005(n+2))%A256145(n+1)`
-/

namespace A076755.P2770481353288506083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A112995 (A000005 (n + 2)).toNat) (A256145 (n + 1))

end

end A076755.P2770481353288506083

/-! ## A076755.P9414277656904410518

`A173022(A355745(2*(n+1))+A000005(n+2))`
-/

namespace A076755.P9414277656904410518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173022 (A355745 (2 * (n + 1)) + A000005 (n + 2)).toNat

end

end A076755.P9414277656904410518

/-!
# A076756: Triangle of coefficients of characteristic polynomial of M_n, the n X n matrix M_(i,j) = min(i,j).

The programs for A076756, the canonical program `A076756.P16032784192735833623` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A076756 has offset 0).

The definition of A076756 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A076756.P15324619969017759278

`A054142(n)*A097807(n)`
-/

namespace A076756.P15324619969017759278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054142 n * A097807 n

end

end A076756.P15324619969017759278

namespace A076756

/-- `A054142(n)*A097807(n)` -/
def P15324619969017759278.Spec : Prop :=
  ∀ n, P15324619969017759278.a n = A076756 n

end A076756

/-! ## A076756.P16032784192735833623

`A033999(A025581(n))*A054142(n)`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A076756

/-- `A033999(A025581(n))*A054142(n)` -/
def P16032784192735833623.Spec : Prop :=
  ∀ n, P16032784192735833623.a n = A076756 n

theorem P16032784192735833623.correct : P16032784192735833623.Spec := by
  intro n
  simp only [A076756]

end A076756

/-! ## A076756.P5199682357417057033

`A007318(n)*A054142(n)/A130595(n)`
-/

namespace A076756.P5199682357417057033
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007318 n * A054142 n : ℚ) / (A130595 n : ℚ)

end

end A076756.P5199682357417057033

namespace A076756

/-- `A007318(n)*A054142(n)/A130595(n)` -/
def P5199682357417057033.Spec : Prop :=
  ∀ n, P5199682357417057033.a n = (A076756 n : ℚ)

end A076756

/-! ## A076756.P6720849715567714164

`A123970(A061579(n))`
-/

namespace A076756.P6720849715567714164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123970 (A061579 n).toNat

end

end A076756.P6720849715567714164

namespace A076756

/-- `A123970(A061579(n))` -/
def P6720849715567714164.Spec : Prop :=
  ∀ n, P6720849715567714164.a n = A076756 n

end A076756

/-! ## A076756.P14745823480580160657

`A123970(A114327(n)+n)`
-/

namespace A076756.P14745823480580160657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123970 (A114327 n + (n : ℤ)).toNat

end

end A076756.P14745823480580160657

namespace A076756

/-- `A123970(A114327(n)+n)` -/
def P14745823480580160657.Spec : Prop :=
  ∀ n, P14745823480580160657.a n = A076756 n

end A076756

/-! ## A076756.P9977789428003382964

`A123970(A038722(n+1)-1)`
-/

namespace A076756.P9977789428003382964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123970 (A038722 (n + 1) - 1).toNat

end

end A076756.P9977789428003382964

namespace A076756

/-- `A123970(A038722(n+1)-1)` -/
def P9977789428003382964.Spec : Prop :=
  ∀ n, P9977789428003382964.a n = A076756 n

end A076756

/-! ## A076756.P12131294277590753781

`A123970(A038722(n+2))`
-/

namespace A076756.P12131294277590753781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123970 (A038722 (n + 2)).toNat

end

end A076756.P12131294277590753781

namespace A076756

/-- `A123970(A038722(n+2))` -/
def P12131294277590753781.Spec : Prop :=
  ∀ n, P12131294277590753781.a n = A076756 n

end A076756

/-! ## A076756.P17707205971187492939

`A171822(n)/A129818(n)`
-/

namespace A076756.P17707205971187492939
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A171822 n : ℚ) / (A129818 n : ℚ)

end

end A076756.P17707205971187492939

namespace A076756

/-- `A171822(n)/A129818(n)` -/
def P17707205971187492939.Spec : Prop :=
  ∀ n, P17707205971187492939.a n = (A076756 n : ℚ)

end A076756

/-! ## A076756.P17258760358809302666

`A204172(A185871(n+1))`
-/

namespace A076756.P17258760358809302666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204172 (A185871 (n + 1)).toNat

end

end A076756.P17258760358809302666

namespace A076756

/-- `A204172(A185871(n+1))` -/
def P17258760358809302666.Spec : Prop :=
  ∀ n, P17258760358809302666.a n = A076756 n

end A076756

/-! ## A076756.P13500595871082157642

`A117438(n)/A262616(n)`
-/

namespace A076756.P13500595871082157642
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A117438 n : ℚ) / (A262616 n : ℚ)

end

end A076756.P13500595871082157642

namespace A076756

/-- `A117438(n)/A262616(n)` -/
def P13500595871082157642.Spec : Prop :=
  ∀ n, P13500595871082157642.a n = (A076756 n : ℚ)

end A076756

/-! ## A076756.P10579765014220182522

`A117438(n)/A130321(n)²`
-/

namespace A076756.P10579765014220182522
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A117438 n : ℚ) / (A130321 n ^ 2 : ℚ)

end

end A076756.P10579765014220182522

namespace A076756

/-- `A117438(n)/A130321(n)²` -/
def P10579765014220182522.Spec : Prop :=
  ∀ n, P10579765014220182522.a n = (A076756 n : ℚ)

end A076756

/-! ## A076756.P10494165216004853705

`A008836(A130321(n))*A054142(n)`
-/

namespace A076756.P10494165216004853705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008836 (A130321 n).toNat * A054142 n

end

end A076756.P10494165216004853705

namespace A076756

/-- `A008836(A130321(n))*A054142(n)` -/
def P10494165216004853705.Spec : Prop :=
  ∀ n, P10494165216004853705.a n = A076756 n

end A076756

/-!
# A076757: Primes of the form n + pi(n), that is, generated in A077510.

The programs for A076757, the canonical program `A076757.P14961246049753575220` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A076757 has offset 1).

The definition of A076757 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9502 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A076757.P14961246049753575220

`p?[A000720(n+1)+1+n]`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A076757

/-- `p?[A000720(n+1)+1+n]` -/
def P14961246049753575220.Spec : Prop :=
  ∀ n, P14961246049753575220.a n = A076757 (n + 1)

theorem P14961246049753575220.correct : P14961246049753575220.Spec := by
  intro n
  simp only [A076757, Nat.add_sub_cancel]

end A076757

/-! ## A076757.P108324426318838068

`A077510(n+1)+A000720(A077510(n+1))`
-/

namespace A076757.P108324426318838068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077510 (n + 1) + A000720 (A077510 (n + 1)).toNat

end

end A076757.P108324426318838068

namespace A076757

/-- `A077510(n+1)+A000720(A077510(n+1))` -/
def P108324426318838068.Spec : Prop :=
  ∀ n, P108324426318838068.a n = A076757 (n + 1)

end A076757

/-! ## A076757.P11153388262921186763

`p?[A000720(A151800(n+1))+n]`
-/

namespace A076757.P11153388262921186763
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A151800 (n + 1)).toNat + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A076757.P11153388262921186763

namespace A076757

/-- `p?[A000720(A151800(n+1))+n]` -/
def P11153388262921186763.Spec : Prop :=
  ∀ n, P11153388262921186763.a n = A076757 (n + 1)

end A076757

/-! ## A076757.P16284165153407145920

`p?[comp[p?[comp[n²]]+n]]`
-/

namespace A076757.P16284165153407145920
noncomputable section

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f4 j ≠ x) n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f3 (SequenceMachineLib.nth (fun j => (f3 j).Prime) n) + n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A076757.P16284165153407145920

namespace A076757

/-- `p?[comp[p?[comp[n²]]+n]]` -/
def P16284165153407145920.Spec : Prop :=
  ∀ n, (P16284165153407145920.a n : ℤ) = A076757 (n + 1)

end A076757

/-! ## A076757.P17469777136602629715

`p?[A095117(n)]`
-/

namespace A076757.P17469777136602629715
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095117 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A076757.P17469777136602629715

namespace A076757

/-- `p?[A095117(n)]` -/
def P17469777136602629715.Spec : Prop :=
  ∀ n, P17469777136602629715.a n = A076757 (n + 1)

end A076757

/-! ## A076757.P3315950253859384053

`record[A100481(n+2)]`
-/

namespace A076757.P3315950253859384053
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100481 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A076757.P3315950253859384053

namespace A076757

/-- `record[A100481(n+2)]` -/
def P3315950253859384053.Spec : Prop :=
  ∀ n, P3315950253859384053.a n = A076757 (n + 1)

end A076757

/-! ## A076757.P16773468686358513388

`p?[A230980(n)+n]`
-/

namespace A076757.P16773468686358513388
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230980 n + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A076757.P16773468686358513388

namespace A076757

/-- `p?[A230980(n)+n]` -/
def P16773468686358513388.Spec : Prop :=
  ∀ n, P16773468686358513388.a n = A076757 (n + 1)

end A076757

/-! ## A076757.P5674231523072233722

`p?[Δ[A002815(n)]+n]`
-/

namespace A076757.P5674231523072233722
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002815 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A076757.P5674231523072233722

namespace A076757

/-- `p?[Δ[A002815(n)]+n]` -/
def P5674231523072233722.Spec : Prop :=
  ∀ n, P5674231523072233722.a n = A076757 (n + 1)

end A076757

/-! ## A076757.P14783250915490534487

`p?[A064427(n+1)-1]`
-/

namespace A076757.P14783250915490534487
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064427 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A076757.P14783250915490534487

namespace A076757

/-- `p?[A064427(n+1)-1]` -/
def P14783250915490534487.Spec : Prop :=
  ∀ n, P14783250915490534487.a n = A076757 (n + 1)

end A076757

/-! ## A076757.P7544560245757032629

`p?[A036234(n+1)+n]`
-/

namespace A076757.P7544560245757032629
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036234 (n + 1) + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A076757.P7544560245757032629

namespace A076757

/-- `p?[A036234(n+1)+n]` -/
def P7544560245757032629.Spec : Prop :=
  ∀ n, P7544560245757032629.a n = A076757 (n + 1)

end A076757

/-! ## A076757.P692671782111249503

`p?[∑[A010051(n+1)+1]]`
-/

namespace A076757.P692671782111249503
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (n + 1) + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A076757.P692671782111249503

namespace A076757

/-- `p?[∑[A010051(n+1)+1]]` -/
def P692671782111249503.Spec : Prop :=
  ∀ n, P692671782111249503.a n = A076757 (n + 1)

end A076757

/-! ## A076757.P3825653160465119206

`p?[comp[A014688(n+1)-1]]`
-/

namespace A076757.P3825653160465119206
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014688 (n + 1) - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A076757.P3825653160465119206

namespace A076757

/-- `p?[comp[A014688(n+1)-1]]` -/
def P3825653160465119206.Spec : Prop :=
  ∀ n, (P3825653160465119206.a n : ℤ) = A076757 (n + 1)

end A076757

/-! ## A076757.P6590711262938394597

`p?[∑[A080339(n+1)]+n]`
-/

namespace A076757.P6590711262938394597
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080339 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A076757.P6590711262938394597

namespace A076757

/-- `p?[∑[A080339(n+1)]+n]` -/
def P6590711262938394597.Spec : Prop :=
  ∀ n, P6590711262938394597.a n = A076757 (n + 1)

end A076757

/-! ## A076757.P3540668847121319146

`p?[comp[A000040(n+1)+n]]`
-/

namespace A076757.P3540668847121319146
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) + (n : ℤ)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A076757.P3540668847121319146

namespace A076757

/-- `p?[comp[A000040(n+1)+n]]` -/
def P3540668847121319146.Spec : Prop :=
  ∀ n, (P3540668847121319146.a n : ℤ) = A076757 (n + 1)

end A076757

/-! ## A076757.P16358417989128650598

`p?[comp[A008578(n+2)+n]]`
-/

namespace A076757.P16358417989128650598
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 2) + (n : ℤ)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A076757.P16358417989128650598

namespace A076757

/-- `p?[comp[A008578(n+2)+n]]` -/
def P16358417989128650598.Spec : Prop :=
  ∀ n, (P16358417989128650598.a n : ℤ) = A076757 (n + 1)

end A076757

/-! ## A076757.P7557686501460844794

`p?[comp[A182986(n+2)+n]]`
-/

namespace A076757.P7557686501460844794
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182986 (n + 2) + (n : ℤ)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A076757.P7557686501460844794

namespace A076757

/-- `p?[comp[A182986(n+2)+n]]` -/
def P7557686501460844794.Spec : Prop :=
  ∀ n, (P7557686501460844794.a n : ℤ) = A076757 (n + 1)

end A076757

/-! ## A076757.P13083241128421035521

`p?[Δ[n²]-A065855(n+1)]`
-/

namespace A076757.P13083241128421035521
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℤ) - (f2 n : ℤ) - A065855 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A076757.P13083241128421035521

namespace A076757

/-- `p?[Δ[n²]-A065855(n+1)]` -/
def P13083241128421035521.Spec : Prop :=
  ∀ n, P13083241128421035521.a n = A076757 (n + 1)

end A076757

/-! ## A076757.P14232529017824254748

`p?[∑[A064911(2*(n+1))+1]]`
-/

namespace A076757.P14232529017824254748
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064911 (2 * (n + 1)) + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A076757.P14232529017824254748

namespace A076757

/-- `p?[∑[A064911(2*(n+1))+1]]` -/
def P14232529017824254748.Spec : Prop :=
  ∀ n, P14232529017824254748.a n = A076757 (n + 1)

end A076757

/-! ## A076757.P6949825157676083134

`p?[comp[A207790(2*(n+1))+n]]`
-/

namespace A076757.P6949825157676083134
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207790 (2 * (n + 1)) + (n : ℤ)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A076757.P6949825157676083134

namespace A076757

/-- `p?[comp[A207790(2*(n+1))+n]]` -/
def P6949825157676083134.Spec : Prop :=
  ∀ n, (P6949825157676083134.a n : ℤ) = A076757 (n + 1)

end A076757

/-! ## A076757.P1736239747211930396

`A095117(A077510(n+1))`
-/

namespace A076757.P1736239747211930396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095117 (A077510 (n + 1)).toNat

end

end A076757.P1736239747211930396

namespace A076757

/-- `A095117(A077510(n+1))` -/
def P1736239747211930396.Spec : Prop :=
  ∀ n, P1736239747211930396.a n = A076757 (n + 1)

end A076757

/-!
# A076758: a(n) = n*(n+1)^2*(2+n)*(3+2*n)*(19+8*n)/180.

The programs for A076758, the canonical program `A076758.P8747128058039899245` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A076758 has offset 0).

The definition of A076758 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A076758.P8747128058039899245

`n*(n+1)²*(2+n)*(3+2*n)*(19+8*n)/180`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A076758

/-- `n*(n+1)²*(2+n)*(3+2*n)*(19+8*n)/180` -/
def P8747128058039899245.Spec : Prop :=
  ∀ n, P8747128058039899245.a n = (A076758 n : ℚ)

end A076758

/-! ## A076758.P16727098116893204512

`∑[A143945(n+1)+A000538(n)]`
-/

namespace A076758.P16727098116893204512
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143945 (n + 1) + A000538 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A076758.P16727098116893204512

namespace A076758

/-- `∑[A143945(n+1)+A000538(n)]` -/
def P16727098116893204512.Spec : Prop :=
  ∀ n, P16727098116893204512.a n = A076758 n

end A076758

/-! ## A076758.P203124612192227014

`∑[A143945(n+1)+∑[A000583(n)]]`
-/

namespace A076758.P203124612192227014
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000583 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143945 (n + 1) + ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A076758.P203124612192227014

namespace A076758

/-- `∑[A143945(n+1)+∑[A000583(n)]]` -/
def P203124612192227014.Spec : Prop :=
  ∀ n, P203124612192227014.a n = A076758 n

end A076758

/-! ## A076758.P9645818631493085415

`∑[A213546(n+1)-Δ[A000538(n)]]`
-/

namespace A076758.P9645818631493085415
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000538 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213546 (n + 1) - (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A076758.P9645818631493085415

namespace A076758

/-- `∑[A213546(n+1)-Δ[A000538(n)]]` -/
def P9645818631493085415.Spec : Prop :=
  ∀ n, P9645818631493085415.a n = A076758 n

end A076758

/-! ## A076758.P5161668604628933316

`∑[∑[Δ[n²]*A131941(2*n)]]`
-/

namespace A076758.P5161668604628933316
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((f3 (n + 1) : ℤ) - (f3 n : ℤ)) * A131941 (2 * n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A076758.P5161668604628933316

namespace A076758

/-- `∑[∑[Δ[n²]*A131941(2*n)]]` -/
def P5161668604628933316.Spec : Prop :=
  ∀ n, P5161668604628933316.a n = A076758 n

end A076758

/-!
# A076759: 2-apexes of Omega: numbers k such that Omega(k-2)< Omega(k-1) < Omega(k) > Omega(k+1) > Omega(k+2), where Omega(m) = the number of prime factors of m, counting multiplicity.

The programs for A076759, there is no canonical definition to state claims against.
-/

/-! ## A076759.P9429946829436447405

`A103578(record[A104822(n+1)])`
-/

namespace A076759.P9429946829436447405
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104822 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103578 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A076759.P9429946829436447405

/-!
# A076762: 2-apexes of omega: numbers k such that omega(k-2) < omega(k-1) < omega(k) > omega(k+1) > omega(k+2), where omega(m) = the number of distinct prime factors of m.

The programs for A076762, there is no canonical definition to state claims against.
-/

/-! ## A076762.P2231547534482937829

`A278569(lt[A191145(n+1)+1, 2*A283092(n+1)]+1)`
-/

namespace A076762.P2231547534482937829
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191145 (n + 1) + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A283092 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278569 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1)

end

end A076762.P2231547534482937829

/-!
# A076763: 1-apexes of omega: numbers n such that omega(n-1) < omega(n) > omega(n+1), where omega(m) = the number of distinct prime factors of m.

The programs for A076763, the canonical program `A076763.P7586696728486630368` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A076763 has offset 1).

The definition of A076763 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6813 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A076763.P7586696728486630368

`∩[A294277(n+1)+1, A294278(n+1)]`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A076763

/-- `∩[A294277(n+1)+1, A294278(n+1)]` -/
def P7586696728486630368.Spec : Prop :=
  ∀ n, (P7586696728486630368.a n : ℤ) = A076763 (n + 1)

theorem P7586696728486630368.correct : P7586696728486630368.Spec := by
  intro n
  simp only [A076763, Nat.add_sub_cancel]

end A076763

/-! ## A076763.P16394779745244034127

`∩[A065475(A294277(n+1)), A294278(n+1)]`
-/

namespace A076763.P16394779745244034127
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065475 (A294277 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294278 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A076763.P16394779745244034127

namespace A076763

/-- `∩[A065475(A294277(n+1)), A294278(n+1)]` -/
def P16394779745244034127.Spec : Prop :=
  ∀ n, (P16394779745244034127.a n : ℤ) = A076763 (n + 1)

end A076763

/-! ## A076763.P4291218051900073416

`lt[0, A101941(n+1)]+1`
-/

namespace A076763.P4291218051900073416
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101941 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A076763.P4291218051900073416

namespace A076763

/-- `lt[0, A101941(n+1)]+1` -/
def P4291218051900073416.Spec : Prop :=
  ∀ n, (P4291218051900073416.a n : ℤ) = A076763 (n + 1)

end A076763

/-! ## A076763.P5936819004193761680

`A014681(lt[0, A101941(n+1)])`
-/

namespace A076763.P5936819004193761680
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101941 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014681 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A076763.P5936819004193761680

namespace A076763

/-- `A014681(lt[0, A101941(n+1)])` -/
def P5936819004193761680.Spec : Prop :=
  ∀ n, P5936819004193761680.a n = A076763 (n + 1)

end A076763

/-! ## A076763.P3128701036095080942

`A020725(lt[0, A101941(n+1)])`
-/

namespace A076763.P3128701036095080942
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101941 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A076763.P3128701036095080942

namespace A076763

/-- `A020725(lt[0, A101941(n+1)])` -/
def P3128701036095080942.Spec : Prop :=
  ∀ n, P3128701036095080942.a n = A076763 (n + 1)

end A076763

/-!
# A076764: n such that Omega(n-1) < Omega(n) < Omega(n+1), where Omega(m) = the number of prime factors of m, counting multiplicity.

The programs for A076764, the canonical program `A076764.P2673609182765345381` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A076764 has offset 1).

The definition of A076764 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 125 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A076764.P2673609182765345381

`∩[A322840(n+1)+1, A322840(n+1)]`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A076764

/-- `∩[A322840(n+1)+1, A322840(n+1)]` -/
def P2673609182765345381.Spec : Prop :=
  ∀ n, (P2673609182765345381.a n : ℤ) = A076764 (n + 1)

theorem P2673609182765345381.correct : P2673609182765345381.Spec := by
  intro n
  simp only [A076764, Nat.add_sub_cancel]

end A076764

/-!
# A076765: Partial sums of Chebyshev sequence S(n,8) = U(n,4) = A001090(n+1).

The programs for A076765, the canonical program `A076765.P3663594550425032543` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A076765 has offset 0).

The definition of A076765 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A076765.P3663594550425032543

`8*a(n-1)-a(n-2)+1` with `a(0)=1, a(1)=9`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A076765

/-- `8*a(n-1)-a(n-2)+1` -/
def P3663594550425032543.Spec : Prop :=
  ∀ n, P3663594550425032543.a n = A076765 n

theorem P3663594550425032543.correct : P3663594550425032543.Spec := by
  intro n
  simp only [A076765]

end A076765

/-! ## A076765.P11653465282540592854

`∑[ogf(1/(1-8x+x^2))]`
-/

namespace A076765.P11653465282540592854
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1] [1, -8, 1] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A076765.P11653465282540592854

namespace A076765

/-- `∑[ogf(1/(1-8x+x^2))]` -/
def P11653465282540592854.Spec : Prop :=
  ∀ n, P11653465282540592854.a n = A076765 n

end A076765

/-! ## A076765.P15229061696378193760

`ogf(1/(1-9x+9x^2-x^3))`
-/

namespace A076765.P15229061696378193760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1] [1, -9, 9, -1] n

end

end A076765.P15229061696378193760

namespace A076765

/-- `ogf(1/(1-9x+9x^2-x^3))` -/
def P15229061696378193760.Spec : Prop :=
  ∀ n, P15229061696378193760.a n = A076765 n

end A076765

/-! ## A076765.P566012353751828692

`∑[8*a(n-1)-a(n-2)]` with `a(0)=1, a(1)=8`
-/

namespace A076765.P566012353751828692
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 8] fun n f1 =>
  8 * f1 (n - 1) - f1 (n - 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A076765.P566012353751828692

namespace A076765

/-- `∑[8*a(n-1)-a(n-2)]` -/
def P566012353751828692.Spec : Prop :=
  ∀ n, P566012353751828692.a n = A076765 n

end A076765

/-! ## A076765.P15894894385408047765

`∑[∑[A070997(n)]]`
-/

namespace A076765.P15894894385408047765
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070997 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A076765.P15894894385408047765

namespace A076765

/-- `∑[∑[A070997(n)]]` -/
def P15894894385408047765.Spec : Prop :=
  ∀ n, P15894894385408047765.a n = A076765 n

end A076765

/-! ## A076765.P4187484209765558425

`∑[A001090(n+1)]`
-/

namespace A076765.P4187484209765558425
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001090 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A076765.P4187484209765558425

namespace A076765

/-- `∑[A001090(n+1)]` -/
def P4187484209765558425.Spec : Prop :=
  ∀ n, P4187484209765558425.a n = A076765 n

end A076765

/-! ## A076765.P18287445891041010520

`∑[∑[A041023(2*n)]]`
-/

namespace A076765.P18287445891041010520
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A041023 (2 * n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A076765.P18287445891041010520

namespace A076765

/-- `∑[∑[A041023(2*n)]]` -/
def P18287445891041010520.Spec : Prop :=
  ∀ n, P18287445891041010520.a n = A076765 n

end A076765

/-! ## A076765.P1703384055284612407

`floor(A095002(n+2)/2)`
-/

namespace A076765.P1703384055284612407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A095002 (n + 2) : ℚ) / 2⌋

end

end A076765.P1703384055284612407

namespace A076765

/-- `floor(A095002(n+2)/2)` -/
def P1703384055284612407.Spec : Prop :=
  ∀ n, P1703384055284612407.a n = A076765 n

end A076765

/-! ## A076765.P21788615357693592

`∑[A177187(2*(n+1))]`
-/

namespace A076765.P21788615357693592
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177187 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A076765.P21788615357693592

namespace A076765

/-- `∑[A177187(2*(n+1))]` -/
def P21788615357693592.Spec : Prop :=
  ∀ n, P21788615357693592.a n = A076765 n

end A076765

/-! ## A076765.P11835910168768160480

`∑[∑[A080871(2*n+1)]]`
-/

namespace A076765.P11835910168768160480
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080871 (2 * n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A076765.P11835910168768160480

namespace A076765

/-- `∑[∑[A080871(2*n+1)]]` -/
def P11835910168768160480.Spec : Prop :=
  ∀ n, P11835910168768160480.a n = A076765 n

end A076765

/-! ## A076765.P4238727033231708060

`∑[∑[A145542(2*n+1)]]`
-/

namespace A076765.P4238727033231708060
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145542 (2 * n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A076765.P4238727033231708060

namespace A076765

/-- `∑[∑[A145542(2*n+1)]]` -/
def P4238727033231708060.Spec : Prop :=
  ∀ n, P4238727033231708060.a n = A076765 n

end A076765

/-! ## A076765.P11076208520006954685

`A057080(n)+a(n-2)` with `a(0)=1, a(1)=9`
-/

namespace A076765.P11076208520006954685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 9] fun n a =>
  A057080 n + a (n - 2)

end

end A076765.P11076208520006954685

namespace A076765

/-- `A057080(n)+a(n-2)` -/
def P11076208520006954685.Spec : Prop :=
  ∀ n, P11076208520006954685.a n = A076765 n

end A076765

/-! ## A076765.P8131860094175977120

`A095004(n+1)-a(n-1)` with `a(0)=1`
-/

namespace A076765.P8131860094175977120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A095004 (n + 1) - a (n - 1)

end

end A076765.P8131860094175977120

namespace A076765

/-- `A095004(n+1)-a(n-1)` -/
def P8131860094175977120.Spec : Prop :=
  ∀ n, P8131860094175977120.a n = A076765 n

end A076765

/-! ## A076765.P8064869673950305725

`∑[record[A041023(A151842(n))]]`
-/

namespace A076765.P8064869673950305725
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A041023 (A151842 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A076765.P8064869673950305725

namespace A076765

/-- `∑[record[A041023(A151842(n))]]` -/
def P8064869673950305725.Spec : Prop :=
  ∀ n, P8064869673950305725.a n = A076765 n

end A076765

/-! ## A076765.P8544218407787802349

`A145608(n)+A095003(n+1)`
-/

namespace A076765.P8544218407787802349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145608 n + A095003 (n + 1)

end

end A076765.P8544218407787802349

namespace A076765

/-- `A145608(n)+A095003(n+1)` -/
def P8544218407787802349.Spec : Prop :=
  ∀ n, P8544218407787802349.a n = A076765 n

end A076765

/-! ## A076765.P7095489823362277277

`∑[A273053(n+1)+A001091(n)]`
-/

namespace A076765.P7095489823362277277
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273053 (n + 1) + A001091 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A076765.P7095489823362277277

namespace A076765

/-- `∑[A273053(n+1)+A001091(n)]` -/
def P7095489823362277277.Spec : Prop :=
  ∀ n, P7095489823362277277.a n = A076765 n

end A076765

/-! ## A076765.P16635680001703254749

`∑[2*A341927(n)-A001091(n)]`
-/

namespace A076765.P16635680001703254749
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A341927 n - A001091 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A076765.P16635680001703254749

namespace A076765

/-- `∑[2*A341927(n)-A001091(n)]` -/
def P16635680001703254749.Spec : Prop :=
  ∀ n, P16635680001703254749.a n = A076765 n

end A076765

/-! ## A076765.P16715800359170656163

`A177187(n+1)*A177187(n+2)`
-/

namespace A076765.P16715800359170656163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177187 (n + 1) * A177187 (n + 2)

end

end A076765.P16715800359170656163

namespace A076765

/-- `A177187(n+1)*A177187(n+2)` -/
def P16715800359170656163.Spec : Prop :=
  ∀ n, P16715800359170656163.a n = A076765 n

end A076765

/-! ## A076765.P4271968952057475328

`∑[A145607(n+1)+A145608(n)+1]`
-/

namespace A076765.P4271968952057475328
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145607 (n + 1) + (A145608 n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A076765.P4271968952057475328

namespace A076765

/-- `∑[A145607(n+1)+A145608(n)+1]` -/
def P4271968952057475328.Spec : Prop :=
  ∀ n, P4271968952057475328.a n = A076765 n

end A076765

/-! ## A076765.P10063592500714895311

`A103200(2*(n+1))-A095004(n+1)`
-/

namespace A076765.P10063592500714895311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103200 (2 * (n + 1)) - A095004 (n + 1)

end

end A076765.P10063592500714895311

namespace A076765

/-- `A103200(2*(n+1))-A095004(n+1)` -/
def P10063592500714895311.Spec : Prop :=
  ∀ n, P10063592500714895311.a n = A076765 n

end A076765

/-!
# A076766: Number of inequivalent binary linear codes of length n. Also the number of nonisomorphic binary matroids on an n-set.

The programs for A076766, there is no canonical definition to state claims against.
-/

/-! ## A076766.P10590038635930312348

`A250003(n)+2^n`
-/

namespace A076766.P10590038635930312348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250003 n + (2 ^ n : ℤ)

end

end A076766.P10590038635930312348

/-! ## A076766.P7841997790567891522

`A011782(n+1)+A250003(n)`
-/

namespace A076766.P7841997790567891522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 (n + 1) + A250003 n

end

end A076766.P7841997790567891522

/-! ## A076766.P3221840244910782122

`A034343(n)+a(n-1)` with `a(0)=1`
-/

namespace A076766.P3221840244910782122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A034343 n + a (n - 1)

end

end A076766.P3221840244910782122

/-! ## A076766.P5431076947553319195

`∑[A034343(round(sqrt(n²+1)))]`
-/

namespace A076766.P5431076947553319195
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034343 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A076766.P5431076947553319195

/-! ## A076766.P12691468740404450717

`Δ[A174743(n)]-A034343(n+1)`
-/

namespace A076766.P12691468740404450717
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174743 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A034343 (n + 1)

end

end A076766.P12691468740404450717

/-!
# A076767: Triangular numbers with square pyramidal indices.

The programs for A076767, the canonical program `A076767.P16431471222161280833` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A076767 has offset 0).

The definition of A076767 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A076767.P16431471222161280833

`C(∑[n²]+1, 2)`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A076767

/-- `C(∑[n²]+1, 2)` -/
def P16431471222161280833.Spec : Prop :=
  ∀ n, (P16431471222161280833.a n : ℤ) = A076767 n

theorem P16431471222161280833.correct : P16431471222161280833.Spec := by
  intro n
  simp only [A076767]

end A076767

/-! ## A076767.P3883056619874919635

`(∑[n²]+∑[n²]²)/2`
-/

namespace A076767.P3883056619874919635
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j + (∑ j ∈ Finset.range (n + 1), f2 j) ^ 2 : ℕ) : ℚ) / 2

end

end A076767.P3883056619874919635

namespace A076767

/-- `(∑[n²]+∑[n²]²)/2` -/
def P3883056619874919635.Spec : Prop :=
  ∀ n, P3883056619874919635.a n = (A076767 n : ℚ)

end A076767

/-! ## A076767.P15383989160293642291

`∑[n²]²-C(∑[n²], 2)`
-/

namespace A076767.P15383989160293642291
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 : ℕ) : ℤ) - (Nat.choose (∑ j ∈ Finset.range (n + 1), f2 j) 2 : ℤ)

end

end A076767.P15383989160293642291

namespace A076767

/-- `∑[n²]²-C(∑[n²], 2)` -/
def P15383989160293642291.Spec : Prop :=
  ∀ n, P15383989160293642291.a n = A076767 n

end A076767

/-! ## A076767.P10897974672406749958

`C(A056520(n), 2)%(n²²²+9)`
-/

namespace A076767.P10897974672406749958
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A056520 n).toNat 2 % (((n ^ 2) ^ 2) ^ 2 + 9)

end

end A076767.P10897974672406749958

namespace A076767

/-- `C(A056520(n), 2)%(n²²²+9)` -/
def P10897974672406749958.Spec : Prop :=
  ∀ n, (P10897974672406749958.a n : ℤ) = A076767 n

end A076767

/-! ## A076767.P3607396461102010414

`∑[A077538(n)]-A077538(n)`
-/

namespace A076767.P3607396461102010414
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077538 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A077538 n

end

end A076767.P3607396461102010414

namespace A076767

/-- `∑[A077538(n)]-A077538(n)` -/
def P3607396461102010414.Spec : Prop :=
  ∀ n, P3607396461102010414.a n = A076767 n

end A076767

/-! ## A076767.P9007866420040345598

`A006331(n)/4*A056520(n)`
-/

namespace A076767.P9007866420040345598
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A006331 n : ℚ) / 4 * (A056520 n : ℚ)

end

end A076767.P9007866420040345598

namespace A076767

/-- `A006331(n)/4*A056520(n)` -/
def P9007866420040345598.Spec : Prop :=
  ∀ n, P9007866420040345598.a n = (A076767 n : ℚ)

end A076767

/-!
# A076768: Positive integers not expressible as the sum of a prime and a triangular number.

The programs for A076768, there is no canonical definition to state claims against.
-/

/-! ## A076768.P13885519677730461875

`∩[A085780(n+1), A111908(n+1)]`
-/

namespace A076768.P13885519677730461875
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085780 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111908 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A076768.P13885519677730461875

/-! ## A076768.P4959200666482652155

`∩[A111908(n+1), A121741(n+1)]`
-/

namespace A076768.P4959200666482652155
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111908 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121741 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A076768.P4959200666482652155

/-! ## A076768.P15309558063615212223

`∩[A111908(n+1), A334130(n+1)]`
-/

namespace A076768.P15309558063615212223
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111908 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334130 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A076768.P15309558063615212223

/-! ## A076768.P1932689833269031151

`∩[A085782(n+1), A111908(n+1)]`
-/

namespace A076768.P1932689833269031151
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085782 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111908 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A076768.P1932689833269031151

/-! ## A076768.P2331586936328285524

`∩[A034706(n+1), A111908(n+1)]`
-/

namespace A076768.P2331586936328285524
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034706 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111908 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A076768.P2331586936328285524

/-! ## A076768.P15000461263088349469

`filter[A111908(n+1), A005171(#)]`
-/

namespace A076768.P15000461263088349469
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111908 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A005171 (f1 j).toNat = 1) n)

end

end A076768.P15000461263088349469

/-! ## A076768.P1183694460167268385

`filter[A111908(n+1), A292438(#)]`
-/

namespace A076768.P1183694460167268385
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111908 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A292438 (f1 j).toNat = 1) n)

end

end A076768.P1183694460167268385

/-! ## A076768.P18052455704172657566

`∩[A111908(n+1), A055264(n)]`
-/

namespace A076768.P18052455704172657566
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111908 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055264 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A076768.P18052455704172657566

/-! ## A076768.P7124027532537288722

`∩[A111908(n+1), A138670(n)]`
-/

namespace A076768.P7124027532537288722
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111908 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138670 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A076768.P7124027532537288722

/-! ## A076768.P1952065593905449548

`∩[A111908(n+1), A265227(n+1)]`
-/

namespace A076768.P1952065593905449548
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111908 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265227 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A076768.P1952065593905449548

/-!
# A076769: Integers not expressible as the sum of a positive triangular number and a square.

The programs for A076769, the canonical program `A076769.P1786112881111150873` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A076769 has offset 1).

The definition of A076769 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4659 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A076769.P1786112881111150873

`eq[0, A082660(n+1)]+1`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A076769

/-- `eq[0, A082660(n+1)]+1` -/
def P1786112881111150873.Spec : Prop :=
  ∀ n, (P1786112881111150873.a n : ℤ) = A076769 (n + 1)

theorem P1786112881111150873.correct : P1786112881111150873.Spec := by
  intro n
  simp only [A076769, Nat.add_sub_cancel]

end A076769

/-! ## A076769.P15414845282992725087

`eq[0, A082660(n^floor(atan(n)))]`
-/

namespace A076769.P15414845282992725087
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082660 (SequenceMachineLib.roundAway ((n : ℚ) ^ (⌊Real.arctan (n : ℝ)⌋ : ℤ))).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A076769.P15414845282992725087

namespace A076769

/-- `eq[0, A082660(n^floor(atan(n)))]` -/
def P15414845282992725087.Spec : Prop :=
  ∀ n, (P15414845282992725087.a n : ℤ) = A076769 (n + 1)

end A076769

/-! ## A076769.P9977831327796269890

`lt[A082660(round(acot(n)+n)), 1]`
-/

namespace A076769.P9977831327796269890
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082660 (SequenceMachineLib.roundAway (SequenceMachineLib.acot (n : ℝ) + (n : ℝ))).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A076769.P9977831327796269890

namespace A076769

/-- `lt[A082660(round(acot(n)+n)), 1]` -/
def P9977831327796269890.Spec : Prop :=
  ∀ n, (P9977831327796269890.a n : ℤ) = A076769 (n + 1)

end A076769

/-! ## A076769.P8122644935574891073

`lt[A082660(abs(1-n)+1), 1]`
-/

namespace A076769.P8122644935574891073
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082660 (|1 - (n : ℤ)| + 1).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A076769.P8122644935574891073

namespace A076769

/-- `lt[A082660(abs(1-n)+1), 1]` -/
def P8122644935574891073.Spec : Prop :=
  ∀ n, (P8122644935574891073.a n : ℤ) = A076769 (n + 1)

end A076769

/-! ## A076769.P7911688843348216503

`eq[0, A082660(A028310(n))]`
-/

namespace A076769.P7911688843348216503
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082660 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A076769.P7911688843348216503

namespace A076769

/-- `eq[0, A082660(A028310(n))]` -/
def P7911688843348216503.Spec : Prop :=
  ∀ n, (P7911688843348216503.a n : ℤ) = A076769 (n + 1)

end A076769

/-! ## A076769.P4779179980967560580

`A020725(eq[0, A082660(n+1)])`
-/

namespace A076769.P4779179980967560580
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082660 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A076769.P4779179980967560580

namespace A076769

/-- `A020725(eq[0, A082660(n+1)])` -/
def P4779179980967560580.Spec : Prop :=
  ∀ n, P4779179980967560580.a n = A076769 (n + 1)

end A076769

/-! ## A076769.P4663889841019324991

`eq[0, A082660(A066182(n+1))]`
-/

namespace A076769.P4663889841019324991
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082660 (A066182 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A076769.P4663889841019324991

namespace A076769

/-- `eq[0, A082660(A066182(n+1))]` -/
def P4663889841019324991.Spec : Prop :=
  ∀ n, (P4663889841019324991.a n : ℤ) = A076769 (n + 1)

end A076769

/-!
# A076770: Even numbers representable as the sum of two odd composites.

The programs for A076770, there is no canonical definition to state claims against.
-/

/-! ## A076770.P12772945007353539600

`∪[A076771(n+1), A076772(n)]`
-/

namespace A076770.P12772945007353539600
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076771 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076772 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A076770.P12772945007353539600

/-!
# A076771: Even numbers n representable as the sum of two non-coprime odd composites.

The programs for A076771, the canonical program `A076771.P7147231924128096533` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A076771 has offset 1).

The definition of A076771 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8101 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A076771.P3345188263987215902

`2*∩[A009188(n+1), A057716(n)]`
-/

namespace A076771.P3345188263987215902
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009188 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057716 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A076771.P3345188263987215902

namespace A076771

/-- `2*∩[A009188(n+1), A057716(n)]` -/
def P3345188263987215902.Spec : Prop :=
  ∀ n, (P3345188263987215902.a n : ℤ) = A076771 (n + 1)

end A076771

/-! ## A076771.P7147231924128096533

`2*∩[A264828(n+1), A057716(n)]`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A076771

/-- `2*∩[A264828(n+1), A057716(n)]` -/
def P7147231924128096533.Spec : Prop :=
  ∀ n, (P7147231924128096533.a n : ℤ) = A076771 (n + 1)

theorem P7147231924128096533.correct : P7147231924128096533.Spec := by
  intro n
  simp only [A076771, Nat.add_sub_cancel]

end A076771

/-! ## A076771.P9215266216748454823

`A005408(lt[A062570(n+2), n])+3`
-/

namespace A076771.P9215266216748454823
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062570 (n + 2)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n) + 3

end

end A076771.P9215266216748454823

namespace A076771

/-- `A005408(lt[A062570(n+2), n])+3` -/
def P9215266216748454823.Spec : Prop :=
  ∀ n, P9215266216748454823.a n = A076771 (n + 1)

end A076771

/-! ## A076771.P2529045738867032062

`A005408(lt[2, A176095(n+1)])+1`
-/

namespace A076771.P2529045738867032062
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176095 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n) + 1

end

end A076771.P2529045738867032062

namespace A076771

/-- `A005408(lt[2, A176095(n+1)])+1` -/
def P2529045738867032062.Spec : Prop :=
  ∀ n, P2529045738867032062.a n = A076771 (n + 1)

end A076771

/-! ## A076771.P10792782958852520830

`A004273(lt[2, A176095(n+1)])+3`
-/

namespace A076771.P10792782958852520830
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176095 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n) + 3

end

end A076771.P10792782958852520830

namespace A076771

/-- `A004273(lt[2, A176095(n+1)])+3` -/
def P10792782958852520830.Spec : Prop :=
  ∀ n, P10792782958852520830.a n = A076771 (n + 1)

end A076771

/-! ## A076771.P14589001387053975385

`A103517(lt[2, A176095(n+1)])`
-/

namespace A076771.P14589001387053975385
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176095 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103517 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A076771.P14589001387053975385

namespace A076771

/-- `A103517(lt[2, A176095(n+1)])` -/
def P14589001387053975385.Spec : Prop :=
  ∀ n, P14589001387053975385.a n = A076771 (n + 1)

end A076771

/-! ## A076771.P3177813066451820652

`∩[2*n, A376384(n+1)]`
-/

namespace A076771.P3177813066451820652
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376384 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A076771.P3177813066451820652

namespace A076771

/-- `∩[2*n, A376384(n+1)]` -/
def P3177813066451820652.Spec : Prop :=
  ∀ n, (P3177813066451820652.a n : ℤ) = A076771 (n + 1)

end A076771

/-! ## A076771.P2767425759109845247

`∩[A376384(n+1), A004271(n)]`
-/

namespace A076771.P2767425759109845247
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376384 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004271 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A076771.P2767425759109845247

namespace A076771

/-- `∩[A376384(n+1), A004271(n)]` -/
def P2767425759109845247.Spec : Prop :=
  ∀ n, (P2767425759109845247.a n : ℤ) = A076771 (n + 1)

end A076771

/-! ## A076771.P8996236584906406566

`∩[A376384(n+1), A004272(n)]`
-/

namespace A076771.P8996236584906406566
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376384 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004272 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A076771.P8996236584906406566

namespace A076771

/-- `∩[A376384(n+1), A004272(n)]` -/
def P8996236584906406566.Spec : Prop :=
  ∀ n, (P8996236584906406566.a n : ℤ) = A076771 (n + 1)

end A076771

/-! ## A076771.P16633895138595324333

`∩[A376384(n+1), A004275(n)]`
-/

namespace A076771.P16633895138595324333
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376384 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004275 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A076771.P16633895138595324333

namespace A076771

/-- `∩[A376384(n+1), A004275(n)]` -/
def P16633895138595324333.Spec : Prop :=
  ∀ n, (P16633895138595324333.a n : ℤ) = A076771 (n + 1)

end A076771

/-! ## A076771.P6728352893249529057

`∩[A376384(n+1), A004277(n)]`
-/

namespace A076771.P6728352893249529057
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376384 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A076771.P6728352893249529057

namespace A076771

/-- `∩[A376384(n+1), A004277(n)]` -/
def P6728352893249529057.Spec : Prop :=
  ∀ n, (P6728352893249529057.a n : ℤ) = A076771 (n + 1)

end A076771

/-! ## A076771.P6530375918042630659

`∩[A376384(n+1), A004279(n)]`
-/

namespace A076771.P6530375918042630659
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376384 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004279 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A076771.P6530375918042630659

namespace A076771

/-- `∩[A376384(n+1), A004279(n)]` -/
def P6530375918042630659.Spec : Prop :=
  ∀ n, (P6530375918042630659.a n : ℤ) = A076771 (n + 1)

end A076771

/-! ## A076771.P9875087146715257863

`∩[A376384(n+1), A005843(n)]`
-/

namespace A076771.P9875087146715257863
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376384 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A076771.P9875087146715257863

namespace A076771

/-- `∩[A376384(n+1), A005843(n)]` -/
def P9875087146715257863.Spec : Prop :=
  ∀ n, (P9875087146715257863.a n : ℤ) = A076771 (n + 1)

end A076771

/-! ## A076771.P13415353010312926920

`∩[A376384(n+1), A020739(n)]`
-/

namespace A076771.P13415353010312926920
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376384 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020739 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A076771.P13415353010312926920

namespace A076771

/-- `∩[A376384(n+1), A020739(n)]` -/
def P13415353010312926920.Spec : Prop :=
  ∀ n, (P13415353010312926920.a n : ℤ) = A076771 (n + 1)

end A076771

/-! ## A076771.P10875122210675595127

`∩[A376384(n+1), A020744(n)]`
-/

namespace A076771.P10875122210675595127
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376384 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020744 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A076771.P10875122210675595127

namespace A076771

/-- `∩[A376384(n+1), A020744(n)]` -/
def P10875122210675595127.Spec : Prop :=
  ∀ n, (P10875122210675595127.a n : ℤ) = A076771 (n + 1)

end A076771

/-! ## A076771.P7076860692309532496

`∩[A376384(n+1), A103517(n)]`
-/

namespace A076771.P7076860692309532496
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376384 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103517 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A076771.P7076860692309532496

namespace A076771

/-- `∩[A376384(n+1), A103517(n)]` -/
def P7076860692309532496.Spec : Prop :=
  ∀ n, (P7076860692309532496.a n : ℤ) = A076771 (n + 1)

end A076771

/-! ## A076771.P17424849043720814338

`∩[A376384(n+1), A076770(n+1)]`
-/

namespace A076771.P17424849043720814338
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376384 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076770 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A076771.P17424849043720814338

namespace A076771

/-- `∩[A376384(n+1), A076770(n+1)]` -/
def P17424849043720814338.Spec : Prop :=
  ∀ n, (P17424849043720814338.a n : ℤ) = A076771 (n + 1)

end A076771

/-! ## A076771.P1777533221550482395

`2*lt[3, A066882(2*n)]`
-/

namespace A076771.P1777533221550482395
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066882 (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A076771.P1777533221550482395

namespace A076771

/-- `2*lt[3, A066882(2*n)]` -/
def P1777533221550482395.Spec : Prop :=
  ∀ n, (P1777533221550482395.a n : ℤ) = A076771 (n + 1)

end A076771

/-! ## A076771.P17138733433117223456

`filter[A376384(n+1), A135528(#)]`
-/

namespace A076771.P17138733433117223456
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376384 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A135528 (f1 j).toNat = 1) n)

end

end A076771.P17138733433117223456

namespace A076771

/-- `filter[A376384(n+1), A135528(#)]` -/
def P17138733433117223456.Spec : Prop :=
  ∀ n, P17138733433117223456.a n = A076771 (n + 1)

end A076771

/-! ## A076771.P250046465313725412

`filter[A376384(n+1), A059841(#)]`
-/

namespace A076771.P250046465313725412
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376384 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A059841 (f1 j).toNat = 1) n)

end

end A076771.P250046465313725412

namespace A076771

/-- `filter[A376384(n+1), A059841(#)]` -/
def P250046465313725412.Spec : Prop :=
  ∀ n, P250046465313725412.a n = A076771 (n + 1)

end A076771

/-!
# A076772: Even numbers n representable as the sum of 2 coprime odd composites.

The programs for A076772, there is no canonical definition to state claims against.
-/

/-! ## A076772.P8008382632135912182

`∩[A076770(n+1), comp[A096076(n)]]`
-/

namespace A076772.P8008382632135912182
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076770 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096076 n

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f3 j ≠ (x : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = x) n

end

end A076772.P8008382632135912182

/-!
# A076773: 2-nadirs of phi: numbers k such that phi(k-2) > phi(k-1) > phi(k) < phi(k+1) < phi(k+2).

The programs for A076773, there is no canonical definition to state claims against.
-/

/-! ## A076773.P1661229591125814152

`∩[A161962(n+1), A161963(n+1)+1]`
-/

namespace A076773.P1661229591125814152
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161962 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161963 (n + 1) + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A076773.P1661229591125814152

/-! ## A076773.P2573956604305129050

`∩[A161962(n+1), A328056(n+1)+2]`
-/

namespace A076773.P2573956604305129050
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161962 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328056 (n + 1) + 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A076773.P2573956604305129050

/-! ## A076773.P3469445685916972534

`∩[A005408(A001837(n+1)), A161962(n+1)]`
-/

namespace A076773.P3469445685916972534
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 (A001837 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161962 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A076773.P3469445685916972534

/-! ## A076773.P18238362566888875383

`A005408(∩[A001836(n+1)-1, A001837(n+1)])`
-/

namespace A076773.P18238362566888875383
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001836 (n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001837 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n)

end

end A076773.P18238362566888875383

/-! ## A076773.P11106369692840609978

`∩[A161962(n+1), A109613(A161963(n+1))]`
-/

namespace A076773.P11106369692840609978
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161962 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109613 (A161963 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A076773.P11106369692840609978

/-!
# A076774: 2-nadirs of sigma: numbers k such that sigma(k-2) > sigma(k-1) > sigma(k) < sigma(k+1) < sigma(k+2).

The programs for A076774, there is no canonical definition to state claims against.
-/

/-! ## A076774.P6274260330462703502

`∩[A074770(n+1)+1, A074771(n+1)]`
-/

namespace A076774.P6274260330462703502
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074770 (n + 1) + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074771 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A076774.P6274260330462703502

/-!
# A076775: Greatest common divisor of n and the binary representation of n interpreted decimally.

The programs for A076775, the canonical program `A076775.P4195404613136305979` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A076775 has offset 1).

The definition of A076775 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007088, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A076775.P4195404613136305979

`gcd(n+1, A007088(n+1))`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A076775

/-- `gcd(n+1, A007088(n+1))` -/
def P4195404613136305979.Spec : Prop :=
  ∀ n, (P4195404613136305979.a n : ℤ) = A076775 (n + 1)

theorem P4195404613136305979.correct : P4195404613136305979.Spec := by
  intro n
  simp only [A076775, Nat.add_sub_cancel]

end A076775

/-! ## A076775.P14196871189431006857

`(n+1)/A357111(n+1)`
-/

namespace A076775.P14196871189431006857
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A357111 (n + 1) : ℚ)

end

end A076775.P14196871189431006857

namespace A076775

/-- `(n+1)/A357111(n+1)` -/
def P14196871189431006857.Spec : Prop :=
  ∀ n, P14196871189431006857.a n = (A076775 (n + 1) : ℚ)

end A076775

/-! ## A076775.P7353878898148056653

`gcd(A007088(n+1), A131738(n))`
-/

namespace A076775.P7353878898148056653
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A007088 (n + 1)) (A131738 n)

end

end A076775.P7353878898148056653

namespace A076775

/-- `gcd(A007088(n+1), A131738(n))` -/
def P7353878898148056653.Spec : Prop :=
  ∀ n, (P7353878898148056653.a n : ℤ) = A076775 (n + 1)

end A076775

/-! ## A076775.P11801123338563487979

`A007088(n+1)/A354838(n+1)`
-/

namespace A076775.P11801123338563487979
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007088 (n + 1) : ℚ) / (A354838 (n + 1) : ℚ)

end

end A076775.P11801123338563487979

namespace A076775

/-- `A007088(n+1)/A354838(n+1)` -/
def P11801123338563487979.Spec : Prop :=
  ∀ n, P11801123338563487979.a n = (A076775 (n + 1) : ℚ)

end A076775

/-! ## A076775.P6289463666385090008

`gcd(A000027(n+1), A355297(n+1))`
-/

namespace A076775.P6289463666385090008
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000027 (n + 1)) (A355297 (n + 1))

end

end A076775.P6289463666385090008

namespace A076775

/-- `gcd(A000027(n+1), A355297(n+1))` -/
def P6289463666385090008.Spec : Prop :=
  ∀ n, (P6289463666385090008.a n : ℤ) = A076775 (n + 1)

end A076775

/-! ## A076775.P6737697672842074906

`(A347111(n+1)+A007089(n+1))/A354838(n+1)`
-/

namespace A076775.P6737697672842074906
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A347111 (n + 1) + A007089 (n + 1) : ℚ) / (A354838 (n + 1) : ℚ)

end

end A076775.P6737697672842074906

namespace A076775

/-- `(A347111(n+1)+A007089(n+1))/A354838(n+1)` -/
def P6737697672842074906.Spec : Prop :=
  ∀ n, P6737697672842074906.a n = (A076775 (n + 1) : ℚ)

end A076775

/-! ## A076775.P17747080244613254234

`gcd(n+1, Δ[A067894(n)])`
-/

namespace A076775.P17747080244613254234
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067894 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (f1 (n + 1) - f1 n)

end

end A076775.P17747080244613254234

namespace A076775

/-- `gcd(n+1, Δ[A067894(n)])` -/
def P17747080244613254234.Spec : Prop :=
  ∀ n, (P17747080244613254234.a n : ℤ) = A076775 (n + 1)

end A076775

/-! ## A076775.P16953026091686618600

`Δ[gcd(n, A269130(n))]+a(n-1)` with `a(0)=1`
-/

namespace A076775.P16953026091686618600
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n : ℤ) (A269130 n)

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ) + a (n - 1)

end

end A076775.P16953026091686618600

namespace A076775

/-- `Δ[gcd(n, A269130(n))]+a(n-1)` -/
def P16953026091686618600.Spec : Prop :=
  ∀ n, P16953026091686618600.a n = A076775 (n + 1)

end A076775

/-! ## A076775.P12924353299194450184

`gcd(∑[n+1]-∑[n], A169965(n+2))`
-/

namespace A076775.P12924353299194450184
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)) (A169965 (n + 2))

end

end A076775.P12924353299194450184

namespace A076775

/-- `gcd(∑[n+1]-∑[n], A169965(n+2))` -/
def P12924353299194450184.Spec : Prop :=
  ∀ n, (P12924353299194450184.a n : ℤ) = A076775 (n + 1)

end A076775

/-! ## A076775.P2363124021792174238

`gcd(A005843(n+1), A185544(2*(n+1)))`
-/

namespace A076775.P2363124021792174238
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A005843 (n + 1)) (A185544 (2 * (n + 1)))

end

end A076775.P2363124021792174238

namespace A076775

/-- `gcd(A005843(n+1), A185544(2*(n+1)))` -/
def P2363124021792174238.Spec : Prop :=
  ∀ n, (P2363124021792174238.a n : ℤ) = A076775 (n + 1)

end A076775

/-! ## A076775.P97695381350788058

`gcd(A007088(A080513(2*n)), A080513(2*n))`
-/

namespace A076775.P97695381350788058
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A007088 (A080513 (2 * n)).toNat) (A080513 (2 * n))

end

end A076775.P97695381350788058

namespace A076775

/-- `gcd(A007088(A080513(2*n)), A080513(2*n))` -/
def P97695381350788058.Spec : Prop :=
  ∀ n, (P97695381350788058.a n : ℤ) = A076775 (n + 1)

end A076775

/-! ## A076775.P675912533783116336

`gcd(8*(n+1), A007089(A005836(n+2)))`
-/

namespace A076775.P675912533783116336
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (8 * (n + 1) : ℤ) (A007089 (A005836 (n + 2)).toNat)

end

end A076775.P675912533783116336

namespace A076775

/-- `gcd(8*(n+1), A007089(A005836(n+2)))` -/
def P675912533783116336.Spec : Prop :=
  ∀ n, (P675912533783116336.a n : ℤ) = A076775 (n + 1)

end A076775

/-!
# A076776: a(0) = 1, a(1) = 2, a(2) = 5; for n > 2, a(n) = a(n-1)*a(n-2).

The programs for A076776, the canonical program `A076776.P4235241694330890865` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A076776 has offset 0).

The definition of A076776 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-1)*a(n-2)` (program `A076776.P4235241694330890865`, by `A076776.P4235241694330890865.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A076776.P4235241694330890865

`a(n-1)*a(n-2)` with `a(0)=1, a(1)=2, a(2)=5`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A076776

/-- `a(n-1)*a(n-2)` -/
def P4235241694330890865.Spec : Prop :=
  ∀ n, (P4235241694330890865.a n : ℤ) = A076776 n

theorem P4235241694330890865.correct : P4235241694330890865.Spec := by
  intro n
  simp only [A076776]

end A076776

/-! ## A076776.P14417934491537338261

`a(n-1)²/a(n-3)` with `a(0)=1, a(1)=2, a(2)=5, a(3)=10`
-/

namespace A076776.P14417934491537338261
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 2, 5, 10] fun n a =>
  a (n - 1) ^ 2 / a (n - 3)

end

end A076776.P14417934491537338261

namespace A076776

/-- `a(n-1)²/a(n-3)` -/
def P14417934491537338261.Spec : Prop :=
  ∀ n, P14417934491537338261.a n = (A076776 n : ℚ)

end A076776

/-! ## A076776.P10567920701437238736

`a(n-1)/a(n-2)^(-1)` with `a(0)=1, a(1)=2, a(2)=5`
-/

namespace A076776.P10567920701437238736
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 2, 5] fun n a =>
  a (n - 1) / a (n - 2) ^ (-1 : ℤ)

end

end A076776.P10567920701437238736

namespace A076776

/-- `a(n-1)/a(n-2)^(-1)` -/
def P10567920701437238736.Spec : Prop :=
  ∀ n, P10567920701437238736.a n = (A076776 n : ℚ)

end A076776

/-! ## A076776.P17499858948759159702

`a(n-1)/abs(1/a(n-2))` with `a(0)=1, a(1)=2, a(2)=5`
-/

namespace A076776.P17499858948759159702
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 2, 5] fun n a =>
  a (n - 1) / |1 / a (n - 2)|

end

end A076776.P17499858948759159702

namespace A076776

/-- `a(n-1)/abs(1/a(n-2))` -/
def P17499858948759159702.Spec : Prop :=
  ∀ n, P17499858948759159702.a n = (A076776 n : ℚ)

end A076776

/-! ## A076776.P15894537259781122616

`floor(a(n-2)/acot(a(n-1)))` with `a(0)=1, a(1)=2, a(2)=5, a(3)=10`
-/

namespace A076776.P15894537259781122616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 5, 10] fun n a =>
  ⌊(a (n - 2) : ℝ) / SequenceMachineLib.acot (a (n - 1) : ℝ)⌋

end

end A076776.P15894537259781122616

namespace A076776

/-- `floor(a(n-2)/acot(a(n-1)))` -/
def P15894537259781122616.Spec : Prop :=
  ∀ n, P15894537259781122616.a n = A076776 n

end A076776

/-!
# A076777: Number of primes between successive Fibonacci numbers inclusive.

The programs for A076777, there is no canonical definition to state claims against.
-/

/-! ## A076777.P9542540120333152175

`Δ[A054782(n)]`
-/

namespace A076777.P9542540120333152175
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054782 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A076777.P9542540120333152175

/-! ## A076777.P17106188633198455621

`A054782(n+1)-A054782(n)`
-/

namespace A076777.P17106188633198455621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054782 (n + 1) - A054782 n

end

end A076777.P17106188633198455621

/-! ## A076777.P8887826055623443206

`A054782(n+1)+A054782(n)*A057428(n)`
-/

namespace A076777.P8887826055623443206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054782 (n + 1) + A054782 n * A057428 n

end

end A076777.P8887826055623443206

/-! ## A076777.P8358333787700769990

`Δ[A182564(n)+char[A001605(n+1)]]`
-/

namespace A076777.P8358333787700769990
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001605 (n + 1)

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182564 n + ((if ∃ j, f2 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A076777.P8358333787700769990

/-! ## A076777.P16187087398802173425

`Δ[A182564(n)+char[eq[0, A079677(n)]]]`
-/

namespace A076777.P16187087398802173425
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079677 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f3 j : ℤ) = f4 j) n

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182564 n + ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A076777.P16187087398802173425

/-!
# A076780: Let u(1)=u(2)=1, u(n)=(2^floor(u(n-1)/2)+1)/u(n-2) then a(n) = denominator of u(n).

The programs for A076780, there is no canonical definition to state claims against.
-/

/-! ## A076780.P16871039075410323261

`gcd(A076742(n+1), A076742(n+5))`
-/

namespace A076780.P16871039075410323261
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A076742 (n + 1)) (A076742 (n + 5))

end

end A076780.P16871039075410323261

/-!
# A076781: a(n) = 6^(n^2).

The programs for A076781, the canonical program `A076781.P8471146946292005985` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A076781 has offset 0).

The definition of A076781 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `6^n²` (program `A076781.P8471146946292005985`, by `A076781.P8471146946292005985.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A076781.P8471146946292005985

`6^n²`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A076781

/-- `6^n²` -/
def P8471146946292005985.Spec : Prop :=
  ∀ n, (P8471146946292005985.a n : ℤ) = A076781 n

theorem P8471146946292005985.correct : P8471146946292005985.Spec := by
  intro n
  simp only [A076781]

end A076781

/-!
# A076782: 

The programs for A076782, there is no canonical definition to state claims against.
-/

/-! ## A076782.P4293964966484395954

`10^n²`
-/

namespace A076782.P4293964966484395954
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10 ^ n ^ 2

end

end A076782.P4293964966484395954

/-!
# A076783: 

The programs for A076783, there is no canonical definition to state claims against.
-/

/-! ## A076783.P13482541936285736563

`11^n²`
-/

namespace A076783.P13482541936285736563
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11 ^ n ^ 2

end

end A076783.P13482541936285736563

/-!
# A076786: Squarefree numbers such that in decimal representation all their prefixes are also squarefree.

The programs for A076786, there is no canonical definition to state claims against.
-/

/-! ## A076786.P4344518699843173821

`record[A083346(n+1)%A142351(A175961(n+1))]`
-/

namespace A076786.P4344518699843173821
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A083346 (n + 1)) (A142351 (A175961 (n + 1)).toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A076786.P4344518699843173821

/-! ## A076786.P7287916704941447149

`record[A095269(A204246(n+1))+A007947(n+1)]`
-/

namespace A076786.P7287916704941447149
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095269 (A204246 (n + 1)).toNat + A007947 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A076786.P7287916704941447149

/-! ## A076786.P16837499400537470257

`eq[(2-A153675(n+1))², A285718(n+1)]`
-/

namespace A076786.P16837499400537470257
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - A153675 (n + 1)) ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285718 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A076786.P16837499400537470257

/-! ## A076786.P16975113193840786670

`eq[A034742(A153675(n+1)), A285718(n+1)]`
-/

namespace A076786.P16975113193840786670
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034742 (A153675 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285718 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A076786.P16975113193840786670

/-! ## A076786.P3095582383099851986

`A185255(A332808(n+4))+A005117(n+1)`
-/

namespace A076786.P3095582383099851986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185255 (A332808 (n + 4)).toNat + A005117 (n + 1)

end

end A076786.P3095582383099851986

/-!
# A076787: Pisumprimes: prime(k), where k is the sum of the first n digits of Pi.

The programs for A076787, there is no canonical definition to state claims against.
-/

/-! ## A076787.P6840703908438500290

`A000040(A046974(n))`
-/

namespace A076787.P6840703908438500290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A046974 n).toNat

end

end A076787.P6840703908438500290

/-! ## A076787.P14160904989689701702

`A000040(∑[A000796(n)])`
-/

namespace A076787.P14160904989689701702
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000796 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A076787.P14160904989689701702

/-! ## A076787.P13170490318106520908

`A000040(A059582(n+1)-1)`
-/

namespace A076787.P13170490318106520908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A059582 (n + 1) - 1).toNat

end

end A076787.P13170490318106520908

/-! ## A076787.P17405615679857725489

`A000040(∑[A001355(2*n+1)])`
-/

namespace A076787.P17405615679857725489
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001355 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A076787.P17405615679857725489

/-! ## A076787.P1005641758703264693

`A008578(A059582(n+1))`
-/

namespace A076787.P1005641758703264693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (A059582 (n + 1)).toNat

end

end A076787.P1005641758703264693

/-! ## A076787.P577417352906944885

`A000040(∑{digits}[floor(π*10^n), #])`
-/

namespace A076787.P577417352906944885
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.pi * (10 ^ n : ℝ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum

end

end A076787.P577417352906944885

/-!
# A076789: Phisumprimes: prime(k), where k is the sum of the first n digits of phi-1 and phi is the golden ratio.

The programs for A076789, there is no canonical definition to state claims against.
-/

/-! ## A076789.P17201992449424007981

`A000040(A093083(n+1)-1)`
-/

namespace A076789.P17201992449424007981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A093083 (n + 1) - 1).toNat

end

end A076789.P17201992449424007981

/-! ## A076789.P1298722712396128052

`A000040(∑[A094214(n)])`
-/

namespace A076789.P1298722712396128052
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094214 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A076789.P1298722712396128052

/-! ## A076789.P2240305079021378445

`A008578(A093083(n+1))`
-/

namespace A076789.P2240305079021378445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (A093083 (n + 1)).toNat

end

end A076789.P2240305079021378445

/-! ## A076789.P10071469429396599198

`A000040(∑[A001622(n+1)])`
-/

namespace A076789.P10071469429396599198
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001622 (n + 1 + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A076789.P10071469429396599198

/-! ## A076789.P14268702303479043142

`A000040(∑[A296184(n+1)])`
-/

namespace A076789.P14268702303479043142
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296184 (n + 1 + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A076789.P14268702303479043142

/-! ## A076789.P15592147696281925558

`A000040(∑[A098369(∑[n+1])])`
-/

namespace A076789.P15592147696281925558
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098369 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A076789.P15592147696281925558

/-!
# A076790: Interleave digits of Pi and phi-1 (golden section) starting with 3.

The programs for A076790, there is no canonical definition to state claims against.
-/

/-! ## A076790.P17594583762698327807

`A078424(A168198(n+1))`
-/

namespace A076790.P17594583762698327807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078424 (A168198 (n + 1)).toNat

end

end A076790.P17594583762698327807

/-!
# A076791: Triangle a(n,k) giving number of binary sequences of length n containing k subsequences 00.

The programs for A076791, there is no canonical definition to state claims against.
-/

/-! ## A076791.P10566389704952044944

`A242593(n+1)/2`
-/

namespace A076791.P10566389704952044944
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A242593 (n + 1) : ℚ) / 2

end

end A076791.P10566389704952044944

/-! ## A076791.P6276544853004063621

`∑[ceil(Δ[A242593(n)/2])]`
-/

namespace A076791.P6276544853004063621
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A242593 n : ℚ) / 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈f2 (n + 1) - f2 n⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A076791.P6276544853004063621

/-! ## A076791.P4623847460993889333

`A210221(n+1)/A130321(A056943(n))`
-/

namespace A076791.P4623847460993889333
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A210221 (n + 1) : ℚ) / (A130321 (A056943 n).toNat : ℚ)

end

end A076791.P4623847460993889333

/-! ## A076791.P12265895846052335672

`Δ[∑[A242593(n)]/2]`
-/

namespace A076791.P12265895846052335672
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242593 n

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℤ) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A076791.P12265895846052335672

/-! ## A076791.P4857863309202753314

`A014682(A242593(n+1))`
-/

namespace A076791.P4857863309202753314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A242593 (n + 1)).toNat

end

end A076791.P4857863309202753314

/-! ## A076791.P15296305220751069793

`A273943(A242593(n+1))%A152813(n)`
-/

namespace A076791.P15296305220751069793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A273943 (A242593 (n + 1)).toNat) (A152813 n)

end

end A076791.P15296305220751069793

/-! ## A076791.P9419590075575100140

`A000034(2*n)*A273943(A242593(n+1))`
-/

namespace A076791.P9419590075575100140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 (2 * n) * A273943 (A242593 (n + 1)).toNat

end

end A076791.P9419590075575100140

/-! ## A076791.P9643390003002615358

`A273943(A242593(n+1)%A045785(n+1))`
-/

namespace A076791.P9643390003002615358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273943 (Int.tmod (A242593 (n + 1)) (A045785 (n + 1))).toNat

end

end A076791.P9643390003002615358

/-! ## A076791.P14414415491894262016

`A007318(C(2, n))*A273943(A242593(n+1))`
-/

namespace A076791.P14414415491894262016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * A273943 (A242593 (n + 1)).toNat

end

end A076791.P14414415491894262016

/-! ## A076791.P12716813764348163024

`A273943(A242593(n+1))+A008683(8*n+4)`
-/

namespace A076791.P12716813764348163024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273943 (A242593 (n + 1)).toNat + A008683 (8 * n + 4)

end

end A076791.P12716813764348163024

/-! ## A076791.P13600802388973921434

`A000041(C(2, n+2))*A273943(A242593(n+1))`
-/

namespace A076791.P13600802388973921434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (Nat.choose 2 (n + 2)) * A273943 (A242593 (n + 1)).toNat

end

end A076791.P13600802388973921434

/-! ## A076791.P6510536989013245611

`A117358(4*A242593(n+1))`
-/

namespace A076791.P6510536989013245611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117358 (4 * A242593 (n + 1)).toNat

end

end A076791.P6510536989013245611

/-! ## A076791.P8709733313667132591

`A000463(A242593(n+1)-1)`
-/

namespace A076791.P8709733313667132591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000463 (A242593 (n + 1) - 1).toNat

end

end A076791.P8709733313667132591

/-! ## A076791.P10632151380835690923

`A003602(A242593(n+1)-1)`
-/

namespace A076791.P10632151380835690923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003602 (A242593 (n + 1) - 1).toNat

end

end A076791.P10632151380835690923

/-! ## A076791.P7508721551818864380

`A008619(A242593(n+1)-1)`
-/

namespace A076791.P7508721551818864380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A242593 (n + 1) - 1).toNat

end

end A076791.P7508721551818864380

/-!
# A076792: Sum_{d divides n} d^2*(-1)^bigomega(d), where bigomega(n) = A001222(n).

The programs for A076792, the canonical program `A076792.P18377218725901081931` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A076792 has offset 1).

The definition of A076792 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A076792.P18377218725901081931

`∑{d}[n+1, #*A061019(#)]`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A076792

/-- `∑{d}[n+1, #*A061019(#)]` -/
def P18377218725901081931.Spec : Prop :=
  ∀ n, P18377218725901081931.a n = A076792 (n + 1)

theorem P18377218725901081931.correct : P18377218725901081931.Spec := by
  intro n
  simp only [A076792, Nat.add_sub_cancel]

end A076792

/-! ## A076792.P17896490757102824468

`∑{d}[n+1, A000290(#)/A008836(#)]`
-/

namespace A076792.P17896490757102824468
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (A000290 d : ℚ) / (A008836 d : ℚ)

end

end A076792.P17896490757102824468

namespace A076792

/-- `∑{d}[n+1, A000290(#)/A008836(#)]` -/
def P17896490757102824468.Spec : Prop :=
  ∀ n, P17896490757102824468.a n = (A076792 (n + 1) : ℚ)

end A076792

/-! ## A076792.P79617366593666748

`∑{d}[n+1, A334657(#)*A351307((n+1)/#)]`
-/

namespace A076792.P79617366593666748
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A334657 d * A351307 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A076792.P79617366593666748

namespace A076792

/-- `∑{d}[n+1, A334657(#)*A351307((n+1)/#)]` -/
def P79617366593666748.Spec : Prop :=
  ∀ n, P79617366593666748.a n = A076792 (n + 1)

end A076792

/-!
# A076793: a(n) = Sum_{k=1..n} 2^prime(k).

The programs for A076793, there is no canonical definition to state claims against.
-/

/-! ## A076793.P1078906240584187518

`∑[record[∑{p}[n, 2^#]]]`
-/

namespace A076793.P1078906240584187518
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f3 n), 2 ^ p

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A076793.P1078906240584187518

/-! ## A076793.P8517279046041932800

`A320877(n)-1`
-/

namespace A076793.P8517279046041932800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320877 n - 1

end

end A076793.P8517279046041932800

/-! ## A076793.P16693346575463338871

`4*A135482(n)`
-/

namespace A076793.P16693346575463338871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A135482 n

end

end A076793.P16693346575463338871

/-! ## A076793.P7891858033224169843

`2*(A080355(n+1)-1)`
-/

namespace A076793.P7891858033224169843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A080355 (n + 1) - 1)

end

end A076793.P7891858033224169843

/-! ## A076793.P14956877374848701534

`∑[2^A008578(n+1)]-2`
-/

namespace A076793.P14956877374848701534
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A008578 (n + 1) : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 2

end

end A076793.P14956877374848701534

/-! ## A076793.P6939472911583779691

`a(n-1)+2^A000040(n)` with `a(0)=0`
-/

namespace A076793.P6939472911583779691
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) + (2 : ℚ) ^ (A000040 n : ℤ)

end

end A076793.P6939472911583779691

/-! ## A076793.P13921894348886910250

`∑[record[2^A006530(n+1)]]-2`
-/

namespace A076793.P13921894348886910250
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A006530 (n + 1) : ℤ)

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 2

end

end A076793.P13921894348886910250

/-! ## A076793.P6097322391579089227

`∑[record[2^A014963(n+1)]]-2`
-/

namespace A076793.P6097322391579089227
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A014963 (n + 1) : ℤ)

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 2

end

end A076793.P6097322391579089227

/-! ## A076793.P10724714688081786408

`∑[record[2^A020639(n+1)]]-2`
-/

namespace A076793.P10724714688081786408
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A020639 (n + 1) : ℤ)

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 2

end

end A076793.P10724714688081786408

/-! ## A076793.P15198561076854891890

`∑[2^comp[A018252(n+1)]]-1`
-/

namespace A076793.P15198561076854891890
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 1

end

end A076793.P15198561076854891890

/-!
# A076795: Partial sums of (2n-1)!!.

The programs for A076795, the canonical program `A076795.P8055423186924089064` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A076795 has offset 0).

The definition of A076795 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A076795.P8055423186924089064

`a(n-1)*(2*n-2)-a(n-2)*(2*n-3)` with `a(0)=0, a(1)=1`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A076795

/-- `a(n-1)*(2*n-2)-a(n-2)*(2*n-3)` -/
def P8055423186924089064.Spec : Prop :=
  ∀ n, P8055423186924089064.a n = A076795 n

theorem P8055423186924089064.correct : P8055423186924089064.Spec := by
  intro n
  simp only [A076795]

end A076795

/-! ## A076795.P8206175847795754910

`∑[∏[abs(1-n)+n-2]]+1`
-/

namespace A076795.P8206175847795754910
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - (n : ℤ)| + ((n : ℤ) - 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A076795.P8206175847795754910

namespace A076795

/-- `∑[∏[abs(1-n)+n-2]]+1` -/
def P8206175847795754910.Spec : Prop :=
  ∀ n, P8206175847795754910.a n = A076795 n

end A076795

/-! ## A076795.P6485037463183412414

`∑[(2*n-3)*a(n-1)]` with `a(0)=0, a(1)=1`
-/

namespace A076795.P6485037463183412414
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n f1 =>
  ((2 * n : ℤ) - 3) * f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A076795.P6485037463183412414

namespace A076795

/-- `∑[(2*n-3)*a(n-1)]` -/
def P6485037463183412414.Spec : Prop :=
  ∀ n, P6485037463183412414.a n = A076795 n

end A076795

/-! ## A076795.P14496470262882260268

`∑[A062157(n)*A330797(n)]`
-/

namespace A076795.P14496470262882260268
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062157 n * A330797 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A076795.P14496470262882260268

namespace A076795

/-- `∑[A062157(n)*A330797(n)]` -/
def P14496470262882260268.Spec : Prop :=
  ∀ n, P14496470262882260268.a n = A076795 n

end A076795

/-! ## A076795.P7671966674048680

`∑[lcm(A006257(n), A330797(n))]`
-/

namespace A076795.P7671966674048680
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A006257 n) (A330797 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A076795.P7671966674048680

namespace A076795

/-- `∑[lcm(A006257(n), A330797(n))]` -/
def P7671966674048680.Spec : Prop :=
  ∀ n, (P7671966674048680.a n : ℤ) = A076795 n

end A076795

/-! ## A076795.P16186410551742481674

`abs(A001147(n)-∑[A001147(n)])`
-/

namespace A076795.P16186410551742481674
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001147 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A001147 n - ∑ j ∈ Finset.range (n + 1), f1 j|

end

end A076795.P16186410551742481674

namespace A076795

/-- `abs(A001147(n)-∑[A001147(n)])` -/
def P16186410551742481674.Spec : Prop :=
  ∀ n, P16186410551742481674.a n = A076795 n

end A076795

/-! ## A076795.P888627884779477107

`(∑[A097801(n)]-A097801(n))/2`
-/

namespace A076795.P888627884779477107
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097801 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j - A097801 n : ℤ) : ℚ) / 2

end

end A076795.P888627884779477107

namespace A076795

/-- `(∑[A097801(n)]-A097801(n))/2` -/
def P888627884779477107.Spec : Prop :=
  ∀ n, P888627884779477107.a n = (A076795 n : ℚ)

end A076795

/-! ## A076795.P11944417996010243571

`∑[A085471(∑[n])]`
-/

namespace A076795.P11944417996010243571
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085471 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A076795.P11944417996010243571

namespace A076795

/-- `∑[A085471(∑[n])]` -/
def P11944417996010243571.Spec : Prop :=
  ∀ n, P11944417996010243571.a n = A076795 n

end A076795

