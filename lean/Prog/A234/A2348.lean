import SequenceMachineLib
import Mathlib.Tactic
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C004
import Seq.B000.C005
import Seq.B000.C006
import Seq.B000.C007
import Seq.B000.C009
import Seq.B000.C010
import Seq.B000.C011
import Seq.B000.C012
import Seq.B000.C015
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C031
import Seq.B000.C033
import Seq.B000.C037
import Seq.B000.C039
import Seq.B000.C040
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C008
import Seq.B001.C009
import Seq.B001.C010
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B004.C000
import Seq.B004.C002
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C001
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C000
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

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A234801: Start of a record-breaking run of consecutive arithmetic numbers.

The programs for A234801, there is no canonical definition to state claims against.
-/

/-! ## A234801.P18419829217483058676

`or(1, A001616(10^n))`
-/

namespace A234801.P18419829217483058676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A001616 (10 ^ n))

end

end A234801.P18419829217483058676

/-!
# A234802: Positions of 1's in A234323.

The programs for A234802, there is no canonical definition to state claims against.
-/

/-! ## A234802.P5395454234302870493

`eq[1, A234323(n+1)]+1`
-/

namespace A234802.P5395454234302870493
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234323 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A234802.P5395454234302870493

/-! ## A234802.P13321926984812600484

`eq[n, n-a(A234323(n))]` with `a(0)=1`
-/

namespace A234802.P13321926984812600484
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f2 =>
  (n : ℤ) - f2 (A234323 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A234802.P13321926984812600484

/-! ## A234802.P18428013332198548346

`eq[1, A234323(A028310(n))]`
-/

namespace A234802.P18428013332198548346
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234323 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A234802.P18428013332198548346

/-! ## A234802.P5465292628052668920

`A011760(eq[1, A234323(n+1)])`
-/

namespace A234802.P5465292628052668920
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234323 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011760 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A234802.P5465292628052668920

/-! ## A234802.P10715603667427620020

`A020725(eq[1, A234323(n+1)])`
-/

namespace A234802.P10715603667427620020
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234323 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A234802.P10715603667427620020

/-! ## A234802.P5303948732133545794

`A065475(eq[1, A234323(n+1)])`
-/

namespace A234802.P5303948732133545794
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234323 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065475 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A234802.P5303948732133545794

/-! ## A234802.P3522721135220204736

`eq[1, A234323(A065033(2*n))]`
-/

namespace A234802.P3522721135220204736
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234323 (A065033 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A234802.P3522721135220204736

/-! ## A234802.P14279862047893928805

`lt[3, A000005(a(A234323(n))+3)]` with `a(0)=0, a(1)=3`
-/

namespace A234802.P14279862047893928805
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.rec [0, 3] fun n f2 =>
  A000005 (f2 (A234323 n).toNat + 3).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A234802.P14279862047893928805

/-! ## A234802.P10071274308645479666

`lt[4, A000010(a(A234323(n))+3)]` with `a(0)=0, a(1)=4`
-/

namespace A234802.P10071274308645479666
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.rec [0, 4] fun n f2 =>
  A000010 (f2 (A234323 n).toNat + 3).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A234802.P10071274308645479666

/-! ## A234802.P17317639031104031068

`lt[5, A006530(4*(a(A234323(n))+3)+1)]` with `a(0)=3, a(1)=0, a(2)=3`
-/

namespace A234802.P17317639031104031068
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.rec [3, 0, 3] fun n f2 =>
  A006530 (4 * (f2 (A234323 n).toNat + 3) + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A234802.P17317639031104031068

/-!
# A234803: Positions of 2's in A234323.

The programs for A234803, there is no canonical definition to state claims against.
-/

/-! ## A234803.P11700719935109777417

`lt[1, A234323(n+1)]+1`
-/

namespace A234803.P11700719935109777417
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234323 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A234803.P11700719935109777417

/-! ## A234803.P11842955041784281526

`eq[2, A234323(A028310(n))]`
-/

namespace A234803.P11842955041784281526
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234323 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A234803.P11842955041784281526

/-! ## A234803.P5911569287704105676

`eq[2, A234323(A065033(2*n))]`
-/

namespace A234803.P5911569287704105676
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234323 (A065033 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A234803.P5911569287704105676

/-! ## A234803.P8102668138152368473

`eq[2, A234323(A000038(n)+n)]`
-/

namespace A234803.P8102668138152368473
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234323 (A000038 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A234803.P8102668138152368473

/-! ## A234803.P12682569024857617228

`eq[2, A234323(or(n, A000038(n)))]`
-/

namespace A234803.P12682569024857617228
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234323 (Int.lor (n : ℤ) (A000038 n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A234803.P12682569024857617228

/-!
# A234808: a(n) = |{0 < k < n: p = k + phi(n-k) and 2*n - p are both prime}|, where phi(.) is Euler's totient function.

The programs for A234808, there is no canonical definition to state claims against.
-/

/-! ## A234808.P10965663249218522939

`A110654(A029962(n+1))%6`
-/

namespace A234808.P10965663249218522939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A110654 (A029962 (n + 1)).toNat) 6

end

end A234808.P10965663249218522939

/-! ## A234808.P2148945540362706978

`A086294(n+4)%A000120(A086322(n+1))`
-/

namespace A234808.P2148945540362706978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A086294 (n + 4)) (A000120 (A086322 (n + 1)).toNat)

end

end A234808.P2148945540362706978

/-! ## A234808.P6542394732044723541

`A051010(A357640(2*n+1)-A051010(n+1))`
-/

namespace A234808.P6542394732044723541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051010 (A357640 (2 * n + 1) - A051010 (n + 1)).toNat

end

end A234808.P6542394732044723541

/-!
# A234809: a(n) = |{0 < k < n: p = k + phi(n-k) and 2*(n-p) + 1 are both prime}|, where phi(.) is Euler's totient function.

The programs for A234809, there is no canonical definition to state claims against.
-/

/-! ## A234809.P13464253598724893035

`A181894(8*(n+1))%A037445(2^n)`
-/

namespace A234809.P13464253598724893035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A181894 (8 * (n + 1))) (A037445 (2 ^ n))

end

end A234809.P13464253598724893035

/-! ## A234809.P1733344578424583908

`A261361(A001198(n+3))%A005185(n+1)`
-/

namespace A234809.P1733344578424583908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A261361 (A001198 (n + 3)).toNat) (A005185 (n + 1))

end

end A234809.P1733344578424583908

/-! ## A234809.P16368589614995550491

`A342718(A288807(n))`
-/

namespace A234809.P16368589614995550491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342718 (A288807 n).toNat

end

end A234809.P16368589614995550491

/-! ## A234809.P7407754129378467565

`A001221(or(A003418(n), A008647(n)))`
-/

namespace A234809.P7407754129378467565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (Int.lor (A003418 n) (A008647 n)).toNat

end

end A234809.P7407754129378467565

/-! ## A234809.P15738657331645577086

`A001221(or(A003418(n), A025865(n)))`
-/

namespace A234809.P15738657331645577086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (Int.lor (A003418 n) (A025865 n)).toNat

end

end A234809.P15738657331645577086

/-!
# A234811: a(n) = (6^n - 1)^n.

The programs for A234811, the canonical program `A234811.P13421116712170954021` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A234811 has offset 0).

The definition of A234811 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(6^n-1)^n` (program `A234811.P13421116712170954021`, by `A234811.P13421116712170954021.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A234811.P13421116712170954021

`(6^n-1)^n`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A234811

/-- `(6^n-1)^n` -/
def P13421116712170954021.Spec : Prop :=
  ∀ n, P13421116712170954021.a n = A234811 n

theorem P13421116712170954021.correct : P13421116712170954021.Spec := by
  intro n
  simp only [A234811]

end A234811

/-! ## A234811.P3962335500201200131

`A003464(n)^n*A000351(n)`
-/

namespace A234811.P3962335500201200131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003464 n ^ n * A000351 n

end

end A234811.P3962335500201200131

namespace A234811

/-- `A003464(n)^n*A000351(n)` -/
def P3962335500201200131.Spec : Prop :=
  ∀ n, P3962335500201200131.a n = A234811 n

end A234811

/-!
# A234813: Number of distinct integers of the form i+(i+1)+(i+2)+...+j, for 1 <= i <= j <= n.

The programs for A234813, there is no canonical definition to state claims against.
-/

/-! ## A234813.P8821036603792368216

`∑[abs(Δ[A334821(n)])]`
-/

namespace A234813.P8821036603792368216
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334821 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f2 (n + 1) - f2 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A234813.P8821036603792368216

/-! ## A234813.P4592990626536118006

`A334821(n+1)-1`
-/

namespace A234813.P4592990626536118006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334821 (n + 1) - 1

end

end A234813.P4592990626536118006

/-! ## A234813.P12886849786798329057

`∑[n+1]-A333601(n+1)`
-/

namespace A234813.P12886849786798329057
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - A333601 (n + 1)

end

end A234813.P12886849786798329057

/-! ## A234813.P15679820195316651811

`A023443(A334821(n+1))`
-/

namespace A234813.P15679820195316651811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A334821 (n + 1)).toNat

end

end A234813.P15679820195316651811

/-! ## A234813.P18332270559551073358

`∑[A000027(Δ[A334821(n)])]`
-/

namespace A234813.P18332270559551073358
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334821 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A234813.P18332270559551073358

/-! ## A234813.P11253029018580009012

`A338639(A139643(n+1))+A334821(n+1)`
-/

namespace A234813.P11253029018580009012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338639 (A139643 (n + 1)).toNat + A334821 (n + 1)

end

end A234813.P11253029018580009012

/-! ## A234813.P15289500824132359658

`A338639(A333199(n+1))+A334821(n+1)`
-/

namespace A234813.P15289500824132359658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338639 (A333199 (n + 1)).toNat + A334821 (n + 1)

end

end A234813.P15289500824132359658

/-! ## A234813.P11332505037339310313

`A338639(A006530(n+2))+A334821(n+1)`
-/

namespace A234813.P11332505037339310313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338639 (A006530 (n + 2)).toNat + A334821 (n + 1)

end

end A234813.P11332505037339310313

/-!
# A234814: Numbers that are divisible by their digital sum but not by their digital root.

The programs for A234814, there is no canonical definition to state claims against.
-/

/-! ## A234814.P11734105796880148601

`∩[A005349(n+1), A393966(n+1)]`
-/

namespace A234814.P11734105796880148601
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005349 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A393966 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A234814.P11734105796880148601

/-!
# A234815: Number of (n+1) X (n+1) 0..6 arrays with every 2 X 2 subblock having its diagonal sum differing from its antidiagonal sum by 6 (constant-stress 1 X 1 tilings).

The programs for A234815, there is no canonical definition to state claims against.
-/

/-! ## A234815.P8302144771125312743

`A234823(∑[4*n]+1)`
-/

namespace A234815.P8302144771125312743
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234823 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A234815.P8302144771125312743

/-! ## A234815.P14460433698791550530

`lcm(2, A234823(A001844(n)))`
-/

namespace A234815.P14460433698791550530
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A234823 (A001844 n).toNat)

end

end A234815.P14460433698791550530

/-! ## A234815.P15542292004924072319

`record[A234823(A152271(n²))]`
-/

namespace A234815.P15542292004924072319
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234823 (A152271 (n ^ 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A234815.P15542292004924072319

/-! ## A234815.P7024418917524826530

`record[A234823(A330613(n+1))]`
-/

namespace A234815.P7024418917524826530
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234823 (A330613 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A234815.P7024418917524826530

/-! ## A234815.P15695472707307784084

`record[A003982(n)*A234823(n+1)]`
-/

namespace A234815.P15695472707307784084
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A234823 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A234815.P15695472707307784084

/-!
# A234816: Number of (n+1) X (1+1) 0..6 arrays with every 2 X 2 subblock having its diagonal sum differing from its antidiagonal sum by 6 (constant-stress 1 X 1 tilings).

The programs for A234816, there is no canonical definition to state claims against.
-/

/-! ## A234816.P16495726234771694972

`A234823(∑[n]+1)`
-/

namespace A234816.P16495726234771694972
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234823 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A234816.P16495726234771694972

/-! ## A234816.P15504941964865966789

`record[A234823(n+1)]`
-/

namespace A234816.P15504941964865966789
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234823 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A234816.P15504941964865966789

/-! ## A234816.P15163877105589360452

`lcm(2, A234823(A000124(n)))`
-/

namespace A234816.P15163877105589360452
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A234823 (A000124 n).toNat)

end

end A234816.P15163877105589360452

/-! ## A234816.P1556582476458539183

`record[2*A234823(A028310(n))]/2`
-/

namespace A234816.P1556582476458539183
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A234823 (A028310 n).toNat

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℚ) / 2

end

end A234816.P1556582476458539183

/-! ## A234816.P16766697555062288490

`A326678(n)+A234823(A000124(n))`
-/

namespace A234816.P16766697555062288490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326678 n + A234823 (A000124 n).toNat

end

end A234816.P16766697555062288490

/-!
# A234817: Number of (n+1) X (2+1) 0..6 arrays with every 2 X 2 subblock having its diagonal sum differing from its antidiagonal sum by 6 (constant-stress 1 X 1 tilings).

The programs for A234817, there is no canonical definition to state claims against.
-/

/-! ## A234817.P293670237654747732

`A234823(∑[n+1]+2)`
-/

namespace A234817.P293670237654747732
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234823 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A234817.P293670237654747732

/-! ## A234817.P11298863951240383151

`lcm(2, A234823(A000096(n)+3))`
-/

namespace A234817.P11298863951240383151
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A234823 (A000096 n + 3).toNat)

end

end A234817.P11298863951240383151

/-! ## A234817.P15843454473953735949

`record[A010054(n)*A234823(n+2)]`
-/

namespace A234817.P15843454473953735949
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A234823 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A234817.P15843454473953735949

/-! ## A234817.P6609975795881627734

`A007318(C(2, n))*A234823(A000096(n)+3)`
-/

namespace A234817.P6609975795881627734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * A234823 (A000096 n + 3).toNat

end

end A234817.P6609975795881627734

/-! ## A234817.P2446249971395082216

`A014963(4*n+6)*A234823(A000096(n)+3)`
-/

namespace A234817.P2446249971395082216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (4 * n + 6) * A234823 (A000096 n + 3).toNat

end

end A234817.P2446249971395082216

/-!
# A234818: Number of (n+1) X (3+1) 0..6 arrays with every 2 X 2 subblock having its diagonal sum differing from its antidiagonal sum by 6 (constant-stress 1 X 1 tilings).

The programs for A234818, there is no canonical definition to state claims against.
-/

/-! ## A234818.P6689800287759257948

`A234823(∑[n+2]+4)`
-/

namespace A234818.P6689800287759257948
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234823 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A234818.P6689800287759257948

/-! ## A234818.P5664566429766376768

`lcm(2, A234823(A167614(n+1)))`
-/

namespace A234818.P5664566429766376768
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A234823 (A167614 (n + 1)).toNat)

end

end A234818.P5664566429766376768

/-! ## A234818.P10227450405080760695

`and(-2, A234823(A046691(n)+7))`
-/

namespace A234818.P10227450405080760695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-2) (A234823 (A046691 n + 7).toNat)

end

end A234818.P10227450405080760695

/-! ## A234818.P2521535077293060646

`record[A054525(n+1)*A234823(n+4)]`
-/

namespace A234818.P2521535077293060646
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054525 (n + 1) * A234823 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A234818.P2521535077293060646

/-! ## A234818.P17758055232079957256

`A172098(n)*A234823(A167614(n+1))`
-/

namespace A234818.P17758055232079957256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172098 n * A234823 (A167614 (n + 1)).toNat

end

end A234818.P17758055232079957256

/-!
# A234819: Number of (n+1) X (4+1) 0..6 arrays with every 2 X 2 subblock having its diagonal sum differing from its antidiagonal sum by 6 (constant-stress 1 X 1 tilings).

The programs for A234819, there is no canonical definition to state claims against.
-/

/-! ## A234819.P6839444096825421554

`A234823(∑[n+3]+7)`
-/

namespace A234819.P6839444096825421554
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234823 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A234819.P6839444096825421554

/-! ## A234819.P4700475068008519142

`lcm(2, A234823(A141214(n)+7))`
-/

namespace A234819.P4700475068008519142
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A234823 (A141214 n + 7).toNat)

end

end A234819.P4700475068008519142

/-! ## A234819.P2463704757499090630

`A234823(A052905(n)+9)+char[24]`
-/

namespace A234819.P2463704757499090630
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  24

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234823 (A052905 n + 9).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A234819.P2463704757499090630

/-! ## A234819.P3729434717257063332

`A234823(A141214(n)+7)%A000108(n+10)`
-/

namespace A234819.P3729434717257063332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A234823 (A141214 n + 7).toNat) (A000108 (n + 10))

end

end A234819.P3729434717257063332

/-! ## A234819.P17994539414694172633

`A000108(C(2, n+2))*A234823(A141214(n)+7)`
-/

namespace A234819.P17994539414694172633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 (Nat.choose 2 (n + 2)) * A234823 (A141214 n + 7).toNat

end

end A234819.P17994539414694172633

/-!
# A234820: Number of (n+1) X (5+1) 0..6 arrays with every 2 X 2 subblock having its diagonal sum differing from its antidiagonal sum by 6 (constant-stress 1 X 1 tilings).

The programs for A234820, there is no canonical definition to state claims against.
-/

/-! ## A234820.P11516809804014918599

`A234823(C(n+4, 2)+n+9)`
-/

namespace A234820.P11516809804014918599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234823 (Nat.choose (n + 4) 2 + (n + 9))

end

end A234820.P11516809804014918599

/-! ## A234820.P11501087830410730325

`A234823(A167499(n+3))`
-/

namespace A234820.P11501087830410730325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234823 (A167499 (n + 3)).toNat

end

end A234820.P11501087830410730325

/-! ## A234820.P4977010742640291043

`A234823(A155212(n)+13)`
-/

namespace A234820.P4977010742640291043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234823 (A155212 n + 13).toNat

end

end A234820.P4977010742640291043

/-! ## A234820.P5090086758835707713

`A234823(A056000(n)+15)`
-/

namespace A234820.P5090086758835707713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234823 (A056000 n + 15).toNat

end

end A234820.P5090086758835707713

/-! ## A234820.P1515361916706860376

`A234823(eq[7, A066657(n)])`
-/

namespace A234820.P1515361916706860376
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234823 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A234820.P1515361916706860376

/-!
# A234821: Number of (n+1) X (6+1) 0..6 arrays with every 2 X 2 subblock having its diagonal sum differing from its antidiagonal sum by 6 (constant-stress 1 X 1 tilings).

The programs for A234821, there is no canonical definition to state claims against.
-/

/-! ## A234821.P12599375930165445867

`A234823(A166136(n+4))`
-/

namespace A234821.P12599375930165445867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234823 (A166136 (n + 4)).toNat

end

end A234821.P12599375930165445867

/-! ## A234821.P14307760410948031991

`A234823(A056115(n)+21)`
-/

namespace A234821.P14307760410948031991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234823 (A056115 n + 21).toNat

end

end A234821.P14307760410948031991

/-! ## A234821.P14959528136311076337

`A234823(Δ[A264443(n)]+10)`
-/

namespace A234821.P14959528136311076337
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234823 (f1 (n + 1) - f1 n + 10).toNat

end

end A234821.P14959528136311076337

/-! ## A234821.P2675182248931172152

`A234823(A167499(n+4)+1)`
-/

namespace A234821.P2675182248931172152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234823 (A167499 (n + 4) + 1).toNat

end

end A234821.P2675182248931172152

/-! ## A234821.P8685014951813442123

`A234823(A000124(n+5)+5)`
-/

namespace A234821.P8685014951813442123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234823 (A000124 (n + 5) + 5).toNat

end

end A234821.P8685014951813442123

/-!
# A234822: Number of (n+1) X (7+1) 0..6 arrays with every 2 X 2 subblock having its diagonal sum differing from its antidiagonal sum by 6 (constant-stress 1 X 1 tilings).

The programs for A234822, there is no canonical definition to state claims against.
-/

/-! ## A234822.P15530087982715741447

`A234823(A167487(n+5))`
-/

namespace A234822.P15530087982715741447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234823 (A167487 (n + 5)).toNat

end

end A234822.P15530087982715741447

/-! ## A234822.P13632210416293063067

`A234823(eq[11, A066657(n)])`
-/

namespace A234822.P13632210416293063067
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234823 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A234822.P13632210416293063067

/-! ## A234822.P7965416010023228414

`A234823(A166136(n+5)+1)`
-/

namespace A234822.P7965416010023228414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234823 (A166136 (n + 5) + 1).toNat

end

end A234822.P7965416010023228414

/-! ## A234822.P13494586968628638606

`A234823(A167499(n+5)+2)`
-/

namespace A234822.P13494586968628638606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234823 (A167499 (n + 5) + 2).toNat

end

end A234822.P13494586968628638606

/-! ## A234822.P9778309342975805022

`A234823(A141214(n+3)+10)`
-/

namespace A234822.P9778309342975805022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234823 (A141214 (n + 3) + 10).toNat

end

end A234822.P9778309342975805022

/-!
# A234824: Number of (n+1)X(n+1) 0..2 arrays with each 2X2 subblock having the number of clockwise edge increases less than or equal to the number of counterclockwise edge increases.

The programs for A234824, there is no canonical definition to state claims against.
-/

/-! ## A234824.P4163833058176663799

`A234832((n+1)²+n²)`
-/

namespace A234824.P4163833058176663799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234832 ((n + 1) ^ 2 + n ^ 2)

end

end A234824.P4163833058176663799

/-!
# A234825: Number of (n+1) X (1+1) 0..2 arrays with each 2 X 2 subblock having the number of clockwise edge increases less than or equal to the number of counterclockwise edge increases.

The programs for A234825, there is no canonical definition to state claims against.
-/

/-! ## A234825.P10178399419923051625

`A234832(∑[n]+1)`
-/

namespace A234825.P10178399419923051625
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234832 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A234825.P10178399419923051625

/-! ## A234825.P8749123831065342678

`lcm(3, A234832(A000124(n)))`
-/

namespace A234825.P8749123831065342678
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 3 (A234832 (A000124 n).toNat)

end

end A234825.P8749123831065342678

/-! ## A234825.P10870311981831727429

`record[root(A234832(n+1), A009766(n))]`
-/

namespace A234825.P10870311981831727429
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A234832 (n + 1) : ℝ) ^ (1 / (A009766 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A234825.P10870311981831727429

/-! ## A234825.P2513164172272660918

`record[root(A234832(n+1), A117401(n))]`
-/

namespace A234825.P2513164172272660918
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A234832 (n + 1) : ℝ) ^ (1 / (A117401 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A234825.P2513164172272660918

/-! ## A234825.P2487914164374802179

`record[gcd(A002262(n), A234832(n+1))]`
-/

namespace A234825.P2487914164374802179
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002262 n) (A234832 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A234825.P2487914164374802179

/-!
# A234826: Number of (n+1) X (2+1) 0..2 arrays with each 2 X 2 subblock having the number of clockwise edge increases less than or equal to the number of counterclockwise edge increases.

The programs for A234826, there is no canonical definition to state claims against.
-/

/-! ## A234826.P14167873723845144720

`A234832(∑[n+1]+2)`
-/

namespace A234826.P14167873723845144720
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234832 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A234826.P14167873723845144720

/-! ## A234826.P14817537024116521027

`lcm(3, A234832(A000096(n)+3))`
-/

namespace A234826.P14817537024116521027
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 3 (A234832 (A000096 n + 3).toNat)

end

end A234826.P14817537024116521027

/-! ## A234826.P7950451956879850278

`record[gcd(A002262(n), A234832(n+2))]`
-/

namespace A234826.P7950451956879850278
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002262 n) (A234832 (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A234826.P7950451956879850278

/-! ## A234826.P12435130293380903446

`A000045(C(2, n)!)*A234832(A000096(n)+3)`
-/

namespace A234826.P12435130293380903446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (Nat.factorial (Nat.choose 2 n)) * A234832 (A000096 n + 3).toNat

end

end A234826.P12435130293380903446

/-! ## A234826.P15787978990944276388

`A000041(C(2, n+2))*A234832(A000096(n)+3)`
-/

namespace A234826.P15787978990944276388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (Nat.choose 2 (n + 2)) * A234832 (A000096 n + 3).toNat

end

end A234826.P15787978990944276388

/-!
# A234827: Number of (n+1)X(3+1) 0..2 arrays with each 2X2 subblock having the number of clockwise edge increases less than or equal to the number of counterclockwise edge increases.

The programs for A234827, there is no canonical definition to state claims against.
-/

/-! ## A234827.P11322540849878880538

`A234832(∑[n+2]+4)`
-/

namespace A234827.P11322540849878880538
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234832 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A234827.P11322540849878880538

/-! ## A234827.P2773373533973918327

`lcm(3, A234832(A167614(n+1)))`
-/

namespace A234827.P2773373533973918327
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 3 (A234832 (A167614 (n + 1)).toNat)

end

end A234827.P2773373533973918327

/-! ## A234827.P4279620599922605041

`or(A000007(n), A234832(A167614(n+1)))`
-/

namespace A234827.P4279620599922605041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A234832 (A167614 (n + 1)).toNat)

end

end A234827.P4279620599922605041

/-! ## A234827.P14028021274943247438

`or(A033683(n), A234832(A167614(n+1)))`
-/

namespace A234827.P14028021274943247438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A033683 n) (A234832 (A167614 (n + 1)).toNat)

end

end A234827.P14028021274943247438

/-! ## A234827.P16885946759252750887

`or(A155585(2*n), A234832(A167614(n+1)))`
-/

namespace A234827.P16885946759252750887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A155585 (2 * n)) (A234832 (A167614 (n + 1)).toNat)

end

end A234827.P16885946759252750887

/-!
# A234828: Number of (n+1)X(4+1) 0..2 arrays with each 2X2 subblock having the number of clockwise edge increases less than or equal to the number of counterclockwise edge increases.

The programs for A234828, there is no canonical definition to state claims against.
-/

/-! ## A234828.P802600775034289295

`A234832(A055999(n)+10)`
-/

namespace A234828.P802600775034289295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234832 (A055999 n + 10).toNat

end

end A234828.P802600775034289295

/-! ## A234828.P1756443943739964124

`A234832(A167614(n+2)+1)`
-/

namespace A234828.P1756443943739964124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234832 (A167614 (n + 2) + 1).toNat

end

end A234828.P1756443943739964124

/-! ## A234828.P11618452647459080206

`A234832(eq[5, A131818(n+1)])`
-/

namespace A234828.P11618452647459080206
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234832 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A234828.P11618452647459080206

/-! ## A234828.P4351851857439497343

`A234832(A027379(n+2)+3-n)`
-/

namespace A234828.P4351851857439497343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234832 (A027379 (n + 2) + 3 - (n : ℤ)).toNat

end

end A234828.P4351851857439497343

/-! ## A234828.P2818493556297943799

`A234832(A027379(n+2))`
-/

namespace A234828.P2818493556297943799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234832 (A027379 (n + 2)).toNat

end

end A234828.P2818493556297943799

/-!
# A234829: Number of (n+1)X(5+1) 0..2 arrays with each 2X2 subblock having the number of clockwise edge increases less than or equal to the number of counterclockwise edge increases.

The programs for A234829, there is no canonical definition to state claims against.
-/

/-! ## A234829.P15947923695318475673

`A234832(A374005(n+1))`
-/

namespace A234829.P15947923695318475673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234832 (A374005 (n + 1)).toNat

end

end A234829.P15947923695318475673

/-! ## A234829.P15210260586182748345

`A234832(eq[4, A193592(n)])`
-/

namespace A234829.P15210260586182748345
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234832 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A234829.P15210260586182748345

/-! ## A234829.P18244294924287463828

`A234832(Δ[A023545(n+1)])`
-/

namespace A234829.P18244294924287463828
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234832 (f1 (n + 1) - f1 n).toNat

end

end A234829.P18244294924287463828

/-! ## A234829.P6895856730741185792

`A234832(eq[4, A025581(n)]+1)`
-/

namespace A234829.P6895856730741185792
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234832 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A234829.P6895856730741185792

/-!
# A234830: 

The programs for A234830, there is no canonical definition to state claims against.
-/

/-! ## A234830.P8701420699725805155

`A234832(eq[7, A131818(n+1)])`
-/

namespace A234830.P8701420699725805155
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234832 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A234830.P8701420699725805155

/-! ## A234830.P7377298240702629132

`A234832(A052905(n+3))`
-/

namespace A234830.P7377298240702629132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234832 (A052905 (n + 3)).toNat

end

end A234830.P7377298240702629132

/-! ## A234830.P17435252936753547388

`A234832(eq[5, A193592(n)])`
-/

namespace A234830.P17435252936753547388
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234832 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A234830.P17435252936753547388

/-! ## A234830.P11129009222188530757

`A234832(eq[5, A025581(n)]+1)`
-/

namespace A234830.P11129009222188530757
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234832 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A234830.P11129009222188530757

/-! ## A234830.P16030641580583679380

`A234832(eq[11, A099375(n)]+1)`
-/

namespace A234830.P16030641580583679380
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099375 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234832 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A234830.P16030641580583679380

/-!
# A234831: 

The programs for A234831, there is no canonical definition to state claims against.
-/

/-! ## A234831.P4789987052000619500

`A234832(eq[8, A131818(n+1)])`
-/

namespace A234831.P4789987052000619500
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234832 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A234831.P4789987052000619500

/-!
# A234833: Number of tilings of a box with sides 2 X 2 X 3n in R^3 by boxes of sides Tricube-V(3-dimensional dominoes).

The programs for A234833, the canonical program `A234833.P11399545428595050873` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A234833 has offset 0).

The definition of A234833 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A234833.P11399545428595050873

`68*a(n-1)-192*a(n-2)` with `a(0)=1, a(1)=44`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A234833

/-- `68*a(n-1)-192*a(n-2)` -/
def P11399545428595050873.Spec : Prop :=
  ∀ n, P11399545428595050873.a n = A234833 n

theorem P11399545428595050873.correct : P11399545428595050873.Spec := by
  intro n
  simp only [A234833]

end A234833

/-!
# A234834: Number of (n+2)X(1+2) 0..2 arrays with each 3X3 subblock having the sum of its 72 absolute element differences equal to 34.

The programs for A234834, there is no canonical definition to state claims against.
-/

/-! ## A234834.P6813959684327188768

`A234838(∑[n]+1)`
-/

namespace A234834.P6813959684327188768
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234838 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A234834.P6813959684327188768

/-! ## A234834.P16788854250712644855

`lcm(2, A234838(A000124(n)))`
-/

namespace A234834.P16788854250712644855
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A234838 (A000124 n).toNat)

end

end A234834.P16788854250712644855

/-! ## A234834.P16571329030877351462

`∑{digits}[n, A234838(A000124(#))]`
-/

namespace A234834.P16571329030877351462
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => A234838 (A000124 x).toNat).sum

end

end A234834.P16571329030877351462

/-! ## A234834.P18071195916818251861

`record[A234838(A112367(n)+1)]`
-/

namespace A234834.P18071195916818251861
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234838 (A112367 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A234834.P18071195916818251861

/-! ## A234834.P10412105490908237547

`record[gcd(A234838(n+1), A352361(n))]`
-/

namespace A234834.P10412105490908237547
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A234838 (n + 1)) (A352361 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A234834.P10412105490908237547

/-!
# A234835: Number of (n+2)X(2+2) 0..2 arrays with each 3X3 subblock having the sum of its 72 absolute element differences equal to 34.

The programs for A234835, there is no canonical definition to state claims against.
-/

/-! ## A234835.P11585438395616749089

`A234838(∑[n+1]+2)`
-/

namespace A234835.P11585438395616749089
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234838 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A234835.P11585438395616749089

/-! ## A234835.P12205565818965160565

`record[A234838(A112367(n)+2)]`
-/

namespace A234835.P12205565818965160565
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234838 (A112367 n + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A234835.P12205565818965160565

/-! ## A234835.P2238430346990607036

`lcm(2, A234838(A133263(n+1)))`
-/

namespace A234835.P2238430346990607036
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A234838 (A133263 (n + 1)).toNat)

end

end A234835.P2238430346990607036

/-! ## A234835.P499060508992834814

`record[A234838(A144330(n+1)+1)]`
-/

namespace A234835.P499060508992834814
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234838 (A144330 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A234835.P499060508992834814

/-!
# A234836: Number of (n+2) X (3+2) 0..2 arrays with each 3 X 3 subblock having the sum of its 72 absolute element differences equal to 34.

The programs for A234836, there is no canonical definition to state claims against.
-/

/-! ## A234836.P17817513562722182053

`A234838(∑[n+2]+4)`
-/

namespace A234836.P17817513562722182053
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234838 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A234836.P17817513562722182053

/-! ## A234836.P5248127971319846194

`lcm(2, A234838(A167614(n+1)))`
-/

namespace A234836.P5248127971319846194
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A234838 (A167614 (n + 1)).toNat)

end

end A234836.P5248127971319846194

/-! ## A234836.P3517075408273833743

`record[gcd(A122201(n), A234838(n+4))]`
-/

namespace A234836.P3517075408273833743
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A122201 n) (A234838 (n + 4))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A234836.P3517075408273833743

/-!
# A234837: Number of (n+2)X(4+2) 0..2 arrays with each 3X3 subblock having the sum of its 72 absolute element differences equal to 34.

The programs for A234837, there is no canonical definition to state claims against.
-/

/-! ## A234837.P7222674434507720629

`A234838(A020752(n+1))`
-/

namespace A234837.P7222674434507720629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234838 (A020752 (n + 1)).toNat

end

end A234837.P7222674434507720629

/-! ## A234837.P8003683966225027368

`A234838(A141214(n)+7)`
-/

namespace A234837.P8003683966225027368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234838 (A141214 n + 7).toNat

end

end A234837.P8003683966225027368

/-!
# A234839: a(n) = Sum_{k = 0..n} (-1)^k * binomial(n,k) * binomial(2*n,k).

The programs for A234839, there is no canonical definition to state claims against.
-/

/-! ## A234839.P16120010421946825477

`A124341(∑[4*n])`
-/

namespace A234839.P16120010421946825477
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124341 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A234839.P16120010421946825477

/-! ## A234839.P14338274079766882236

`A202480(∑[4*n])`
-/

namespace A234839.P14338274079766882236
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202480 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A234839.P14338274079766882236

/-! ## A234839.P2433727347367244812

`A098593(A062725(n))`
-/

namespace A234839.P2433727347367244812
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098593 (A062725 n).toNat

end

end A234839.P2433727347367244812

/-! ## A234839.P1177581824054283095

`A098593(A062728(n))`
-/

namespace A234839.P1177581824054283095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098593 (A062728 n).toNat

end

end A234839.P1177581824054283095

/-! ## A234839.P16375217717255965371

`A117352(A062708(n+1))`
-/

namespace A234839.P16375217717255965371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117352 (A062708 (n + 1)).toNat

end

end A234839.P16375217717255965371

/-!
# A234840: Self-inverse and multiplicative permutation of integers: a(0) = 0, a(1) = 1, a(2) = 3, a(3) = 2, a(p_i) = p_{a(i+1)-1} for primes with index i > 2, and a(u * v) = a(u) * a(v) for u, v > 0.

The programs for A234840, there is no canonical definition to state claims against.
-/

/-! ## A234840.P13237482319500082063

`A234744(A235199(n))`
-/

namespace A234840.P13237482319500082063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234744 (A235199 n).toNat

end

end A234840.P13237482319500082063

/-! ## A234840.P10005524174925182072

`A235199(A234743(n))`
-/

namespace A234840.P10005524174925182072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235199 (A234743 n).toNat

end

end A234840.P10005524174925182072

/-! ## A234840.P1989989906573914704

`A234744(A234744(A234744(n)))`
-/

namespace A234840.P1989989906573914704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234744 (A234744 (A234744 n).toNat).toNat

end

end A234840.P1989989906573914704

/-! ## A234840.P10144758353193570776

`A234743(n)-A335453(A268448(n+1))`
-/

namespace A234840.P10144758353193570776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234743 n - A335453 (A268448 (n + 1)).toNat

end

end A234840.P10144758353193570776

/-! ## A234840.P10962814338418350309

`A234743(n*∑[(lcm(n, ∑{digits}[n, #])-n)^n])`
-/

namespace A234840.P10962814338418350309
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((Nat.lcm n ((SequenceMachineLib.digits10 (f2 n)).map fun (x : ℕ) => x).sum : ℤ) - (n : ℤ)) ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234743 ((n : ℤ) * (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A234840.P10962814338418350309

/-!
# A234841: Integers n such that digits in n and n^2 are in nondecreasing order.

The programs for A234841, there is no canonical definition to state claims against.
-/

/-! ## A234841.P3140023289168622623

`∩[A009994(n+1), A028819(n+1)]`
-/

namespace A234841.P3140023289168622623
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009994 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028819 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A234841.P3140023289168622623

/-! ## A234841.P12293991678566809236

`∩[A028819(n+1), A247756(n+1)]`
-/

namespace A234841.P12293991678566809236
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028819 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247756 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A234841.P12293991678566809236

/-! ## A234841.P14415912578990117109

`∩[A028819(n+1), A381509(n+1)]`
-/

namespace A234841.P14415912578990117109
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028819 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381509 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A234841.P14415912578990117109

/-! ## A234841.P6655776140787929461

`eq[n², A028907(A004185(n))]`
-/

namespace A234841.P6655776140787929461
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028907 (A004185 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A234841.P6655776140787929461

/-! ## A234841.P16835129273138990437

`eq[(A070196(n)/2)², A028907(n)]`
-/

namespace A234841.P16835129273138990437
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A070196 n : ℚ) / 2) ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028907 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = (f2 j : ℚ)) n

end

end A234841.P16835129273138990437

/-!
# A234843: Number of commutative inverse semigroups of order n.

The programs for A234843, there is no canonical definition to state claims against.
-/

/-! ## A234843.P5001244357805217892

`A302492(A029889(n)+A002848(n))`
-/

namespace A234843.P5001244357805217892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302492 (A029889 n + A002848 n).toNat

end

end A234843.P5001244357805217892

/-! ## A234843.P15920255860599106661

`A302492(A140106(n+1)+∑[A339843(n)])`
-/

namespace A234843.P15920255860599106661
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339843 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302492 (A140106 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A234843.P15920255860599106661

/-!
# A234844: Number of inverse monoids of order n.

The programs for A234844, there is no canonical definition to state claims against.
-/

/-! ## A234844.P8506299733742199038

`A264749(A197958(n+1))+n`
-/

namespace A234844.P8506299733742199038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264749 (A197958 (n + 1)).toNat + (n : ℤ)

end

end A234844.P8506299733742199038

/-! ## A234844.P13146553528776009983

`A192371(n)+A001221(A007289(n))`
-/

namespace A234844.P13146553528776009983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192371 n + A001221 (A007289 n).toNat

end

end A234844.P13146553528776009983

/-! ## A234844.P15663693645234536421

`A156878(A060898(n))+A031067(n+1)`
-/

namespace A234844.P15663693645234536421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156878 (A060898 n).toNat + A031067 (n + 1)

end

end A234844.P15663693645234536421

/-!
# A234845: Number of commutative inverse monoids of order n.

The programs for A234845, there is no canonical definition to state claims against.
-/

/-! ## A234845.P9492780906142762463

`A193832(A000556(n))+A000120(n)`
-/

namespace A234845.P9492780906142762463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193832 (A000556 n).toNat + A000120 n

end

end A234845.P9492780906142762463

/-! ## A234845.P545232331969001259

`A238690(or(A000522(n), A132159(n)))`
-/

namespace A234845.P545232331969001259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238690 (Int.lor (A000522 n) (A132159 n)).toNat

end

end A234845.P545232331969001259

/-! ## A234845.P8649473906427780755

`A307815(n)+A027870(A271744(n+5))`
-/

namespace A234845.P8649473906427780755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307815 n + A027870 (A271744 (n + 5)).toNat

end

end A234845.P8649473906427780755

/-!
# A234847: Primes which are sum of the first k composite numbers and such that the sum of the first k+1 composites is also prime.

The programs for A234847, there is no canonical definition to state claims against.
-/

/-! ## A234847.P2749422619967954270

`p?[A051349(A053782(n+1))-1]`
-/

namespace A234847.P2749422619967954270
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051349 (A053782 (n + 1)).toNat - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A234847.P2749422619967954270

/-! ## A234847.P10563386378123741088

`p?[A053767(A053782(n+1)-1)]`
-/

namespace A234847.P10563386378123741088
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053767 (A053782 (n + 1) - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A234847.P10563386378123741088

/-! ## A234847.P5702302833463768625

`p?[A053767(A260196(n)+A053782(n+1))]`
-/

namespace A234847.P5702302833463768625
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053767 (A260196 n + A053782 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A234847.P5702302833463768625

/-! ## A234847.P17161139614972140878

`p?[A053872(n+1)-A002808(A053782(n+1))]`
-/

namespace A234847.P17161139614972140878
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053872 (n + 1) - A002808 (A053782 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A234847.P17161139614972140878

/-! ## A234847.P12302026046995469321

`p?[A260196(n+2)+A051349(A053782(n+1))]`
-/

namespace A234847.P12302026046995469321
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260196 (n + 2) + A051349 (A053782 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A234847.P12302026046995469321

/-!
# A234848: Triangular numbers with digits in nondecreasing order.

The programs for A234848, there is no canonical definition to state claims against.
-/

/-! ## A234848.P6393327198200992186

`∩[A009994(n+1), A000217(n)]`
-/

namespace A234848.P6393327198200992186
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009994 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A234848.P6393327198200992186

/-! ## A234848.P18212978796313803784

`eq[n, A062690(A004185(n))]`
-/

namespace A234848.P18212978796313803784
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062690 (A004185 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A234848.P18212978796313803784

/-! ## A234848.P2372379821485422862

`eq[A004185(n), A062829(n)]`
-/

namespace A234848.P2372379821485422862
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004185 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062829 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A234848.P2372379821485422862

/-! ## A234848.P5597835355347997137

`eq[A004185(n), A118389(n)]`
-/

namespace A234848.P5597835355347997137
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004185 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118389 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A234848.P5597835355347997137

/-! ## A234848.P6280332752519390151

`eq[A028376(n), A097601(n)]`
-/

namespace A234848.P6280332752519390151
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028376 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097601 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A234848.P6280332752519390151

/-!
# A234850: Primes in A014692, i.e., of the form prime(k)-k+1, for some k.

The programs for A234850, the canonical program `A234850.P3773910976127958889` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A234850 has offset 1).

The definition of A234850 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 974 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A234850.P3773910976127958889

`p?[A014692(n+1)]`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A234850

/-- `p?[A014692(n+1)]` -/
def P3773910976127958889.Spec : Prop :=
  ∀ n, P3773910976127958889.a n = A234850 (n + 1)

theorem P3773910976127958889.correct : P3773910976127958889.Spec := by
  intro n
  simp only [A234850, Nat.add_sub_cancel]

end A234850

/-! ## A234850.P17415500353724596677

`p?[Δ[A007504(n)]-n]`
-/

namespace A234850.P17415500353724596677
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A234850.P17415500353724596677

namespace A234850

/-- `p?[Δ[A007504(n)]-n]` -/
def P17415500353724596677.Spec : Prop :=
  ∀ n, P17415500353724596677.a n = A234850 (n + 1)

end A234850

/-! ## A234850.P14286092464449751719

`p?[A014689(n+1)+1]`
-/

namespace A234850.P14286092464449751719
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014689 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A234850.P14286092464449751719

namespace A234850

/-- `p?[A014689(n+1)+1]` -/
def P14286092464449751719.Spec : Prop :=
  ∀ n, P14286092464449751719.a n = A234850 (n + 1)

theorem P14286092464449751719.correct : P14286092464449751719.Spec := by
  intro n
  simp only [A234850, Nat.add_sub_cancel, A234850.P14286092464449751719.f1, A234850.P14286092464449751719.a, A234850.P3773910976127958889.f1, A234850.P3773910976127958889.a, A014689, A014689.P6286543075765329050.a, A014692, A014692.P2004927767556050134.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A234850

/-! ## A234850.P1363981491603914745

`p?[A065890(n+1)+2]`
-/

namespace A234850.P1363981491603914745
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065890 (n + 1) + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A234850.P1363981491603914745

namespace A234850

/-- `p?[A065890(n+1)+2]` -/
def P1363981491603914745.Spec : Prop :=
  ∀ n, P1363981491603914745.a n = A234850 (n + 1)

theorem P1363981491603914745.correct : P1363981491603914745.Spec := by
  intro n
  simp only [A234850, Nat.add_sub_cancel, A234850.P1363981491603914745.f1, A234850.P1363981491603914745.a, A234850.P3773910976127958889.f1, A234850.P3773910976127958889.a, A014692, A014692.P2004927767556050134.a, A065890, A065890.P15936493256530540462.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A014689, A014689.P6286543075765329050.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A234850

/-! ## A234850.P2177982365867729968

`p?[A162177(n+2)+2]`
-/

namespace A234850.P2177982365867729968
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162177 (n + 2) + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A234850.P2177982365867729968

namespace A234850

/-- `p?[A162177(n+2)+2]` -/
def P2177982365867729968.Spec : Prop :=
  ∀ n, P2177982365867729968.a n = A234850 (n + 1)

end A234850

/-! ## A234850.P12666806742691343130

`p?[A000040(n+1)-n]`
-/

namespace A234850.P12666806742691343130
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A234850.P12666806742691343130

namespace A234850

/-- `p?[A000040(n+1)-n]` -/
def P12666806742691343130.Spec : Prop :=
  ∀ n, P12666806742691343130.a n = A234850 (n + 1)

end A234850

/-! ## A234850.P2413892507155458889

`p?[A299763(n+1)-n]`
-/

namespace A234850.P2413892507155458889
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299763 (n + 1) - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A234850.P2413892507155458889

namespace A234850

/-- `p?[A299763(n+1)-n]` -/
def P2413892507155458889.Spec : Prop :=
  ∀ n, P2413892507155458889.a n = A234850 (n + 1)

end A234850

/-! ## A234850.P9572871687547860905

`p?[A008578(n+2)-n]`
-/

namespace A234850.P9572871687547860905
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 2) - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A234850.P9572871687547860905

namespace A234850

/-- `p?[A008578(n+2)-n]` -/
def P9572871687547860905.Spec : Prop :=
  ∀ n, P9572871687547860905.a n = A234850 (n + 1)

end A234850

/-! ## A234850.P7470810617827847730

`p?[A182986(n+2)-n]`
-/

namespace A234850.P7470810617827847730
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182986 (n + 2) - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A234850.P7470810617827847730

namespace A234850

/-- `p?[A182986(n+2)-n]` -/
def P7470810617827847730.Spec : Prop :=
  ∀ n, P7470810617827847730.a n = A234850 (n + 1)

end A234850

/-! ## A234850.P7033531435951166409

`p?[abs(A273960(n+1))-n]`
-/

namespace A234850.P7033531435951166409
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A273960 (n + 1)| - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A234850.P7033531435951166409

namespace A234850

/-- `p?[abs(A273960(n+1))-n]` -/
def P7033531435951166409.Spec : Prop :=
  ∀ n, P7033531435951166409.a n = A234850 (n + 1)

end A234850

/-! ## A234850.P7445518888067079811

`p?[A006093(n+1)+1-n]`
-/

namespace A234850.P7445518888067079811
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006093 (n + 1) + (1 - (n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A234850.P7445518888067079811

namespace A234850

/-- `p?[A006093(n+1)+1-n]` -/
def P7445518888067079811.Spec : Prop :=
  ∀ n, P7445518888067079811.a n = A234850 (n + 1)

theorem P7445518888067079811.correct : P7445518888067079811.Spec := by
  intro n
  simp only [A234850, Nat.add_sub_cancel, A234850.P7445518888067079811.f1, A234850.P7445518888067079811.a, A234850.P3773910976127958889.f1, A234850.P3773910976127958889.a, A006093, A006093.P2906174024863549003.a, A014692, A014692.P2004927767556050134.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A234850

/-! ## A234850.P3323518993051233962

`p?[A008864(n+1)-(n+1)]`
-/

namespace A234850.P3323518993051233962
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008864 (n + 1) - (n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A234850.P3323518993051233962

namespace A234850

/-- `p?[A008864(n+1)-(n+1)]` -/
def P3323518993051233962.Spec : Prop :=
  ∀ n, P3323518993051233962.a n = A234850 (n + 1)

theorem P3323518993051233962.correct : P3323518993051233962.Spec := by
  intro n
  simp only [A234850, Nat.add_sub_cancel, A234850.P3323518993051233962.f1, A234850.P3323518993051233962.a, A234850.P3773910976127958889.f1, A234850.P3773910976127958889.a, A008864, A008864.P9177617808325052279.a, A014692, A014692.P2004927767556050134.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A234850

/-! ## A234850.P7087279306430074647

`p?[A040976(n+1)+2-n]`
-/

namespace A234850.P7087279306430074647
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040976 (n + 1) + (2 - (n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A234850.P7087279306430074647

namespace A234850

/-- `p?[A040976(n+1)+2-n]` -/
def P7087279306430074647.Spec : Prop :=
  ∀ n, P7087279306430074647.a n = A234850 (n + 1)

theorem P7087279306430074647.correct : P7087279306430074647.Spec := by
  intro n
  simp only [A234850, Nat.add_sub_cancel, A234850.P7087279306430074647.f1, A234850.P7087279306430074647.a, A234850.P3773910976127958889.f1, A234850.P3773910976127958889.a, A014692, A014692.P2004927767556050134.a, A040976, A040976.P11599754272797435513.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A234850

/-! ## A234850.P15307556928545825732

`p?[A052147(n+1)-(n+2)]`
-/

namespace A234850.P15307556928545825732
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052147 (n + 1) - (n + 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A234850.P15307556928545825732

namespace A234850

/-- `p?[A052147(n+1)-(n+2)]` -/
def P15307556928545825732.Spec : Prop :=
  ∀ n, P15307556928545825732.a n = A234850 (n + 1)

theorem P15307556928545825732.correct : P15307556928545825732.Spec := by
  intro n
  simp only [A234850, Nat.add_sub_cancel, A234850.P15307556928545825732.f1, A234850.P15307556928545825732.a, A234850.P3773910976127958889.f1, A234850.P3773910976127958889.a, A014692, A014692.P2004927767556050134.a, A052147, A052147.P15217781913070555828.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A234850

/-! ## A234850.P5163960851746532003

`p?[A095116(n+1)-2*n]`
-/

namespace A234850.P5163960851746532003
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095116 (n + 1) - (2 * n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A234850.P5163960851746532003

namespace A234850

/-- `p?[A095116(n+1)-2*n]` -/
def P5163960851746532003.Spec : Prop :=
  ∀ n, P5163960851746532003.a n = A234850 (n + 1)

theorem P5163960851746532003.correct : P5163960851746532003.Spec := by
  intro n
  simp only [A234850, Nat.add_sub_cancel, A234850.P5163960851746532003.f1, A234850.P5163960851746532003.a, A234850.P3773910976127958889.f1, A234850.P3773910976127958889.a, A014692, A014692.P2004927767556050134.a, A095116, A095116.P2789422422958858773.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A234850

/-! ## A234850.P15354531807893006267

`A014692(A234851(n+1))`
-/

namespace A234850.P15354531807893006267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014692 (A234851 (n + 1)).toNat

end

end A234850.P15354531807893006267

namespace A234850

/-- `A014692(A234851(n+1))` -/
def P15354531807893006267.Spec : Prop :=
  ∀ n, P15354531807893006267.a n = A234850 (n + 1)

end A234850

/-! ## A234850.P8132515218966471796

`filter[A014692(n+1), A010051(#)]`
-/

namespace A234850.P8132515218966471796
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014692 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A234850.P8132515218966471796

namespace A234850

/-- `filter[A014692(n+1), A010051(#)]` -/
def P8132515218966471796.Spec : Prop :=
  ∀ n, P8132515218966471796.a n = A234850 (n + 1)

end A234850

/-!
# A234851: Indices of primes in A014692, i.e., numbers k such that prime(k)-k+1 is prime.

The programs for A234851, the canonical program `A234851.P8996763833196832844` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A234851 has offset 1).

The definition of A234851 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 974 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A234851.P8996763833196832844

`lt[(1-∑{e}[A014692(n+1), #])², 1]+1`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A234851

/-- `lt[(1-∑{e}[A014692(n+1), #])², 1]+1` -/
def P8996763833196832844.Spec : Prop :=
  ∀ n, (P8996763833196832844.a n : ℤ) = A234851 (n + 1)

theorem P8996763833196832844.correct : P8996763833196832844.Spec := by
  intro n
  simp only [A234851, Nat.add_sub_cancel]

end A234851

/-! ## A234851.P8596109253566668409

`eq[1, A001222(A014692(n+1))]+1`
-/

namespace A234851.P8596109253566668409
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A014692 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A234851.P8596109253566668409

namespace A234851

/-- `eq[1, A001222(A014692(n+1))]+1` -/
def P8596109253566668409.Spec : Prop :=
  ∀ n, (P8596109253566668409.a n : ℤ) = A234851 (n + 1)

end A234851

/-! ## A234851.P4692765114801888157

`eq[2, A000005(A000040(n+1)-n)]+1`
-/

namespace A234851.P4692765114801888157
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A000040 (n + 1) - (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A234851.P4692765114801888157

namespace A234851

/-- `eq[2, A000005(A000040(n+1)-n)]+1` -/
def P4692765114801888157.Spec : Prop :=
  ∀ n, (P4692765114801888157.a n : ℤ) = A234851 (n + 1)

end A234851

/-! ## A234851.P11620638944984737531

`lt[A001222(A000040(n+1)-n), 2]+1`
-/

namespace A234851.P11620638944984737531
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A000040 (n + 1) - (n : ℤ)).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A234851.P11620638944984737531

namespace A234851

/-- `lt[A001222(A000040(n+1)-n), 2]+1` -/
def P11620638944984737531.Spec : Prop :=
  ∀ n, (P11620638944984737531.a n : ℤ) = A234851 (n + 1)

end A234851

/-! ## A234851.P7220379440597708295

`eq[2, A326198(A000040(n+1)-n)]+1`
-/

namespace A234851.P7220379440597708295
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326198 (A000040 (n + 1) - (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A234851.P7220379440597708295

namespace A234851

/-- `eq[2, A326198(A000040(n+1)-n)]+1` -/
def P7220379440597708295.Spec : Prop :=
  ∀ n, (P7220379440597708295.a n : ℤ) = A234851 (n + 1)

end A234851

/-! ## A234851.P17769261137668938033

`eq[1-char[1], A001065(A073170(n+1)+1)]`
-/

namespace A234851.P17769261137668938033
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001065 (A073170 (n + 1) + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f3 j) n

end

end A234851.P17769261137668938033

namespace A234851

/-- `eq[1-char[1], A001065(A073170(n+1)+1)]` -/
def P17769261137668938033.Spec : Prop :=
  ∀ n, (P17769261137668938033.a n : ℤ) = A234851 (n + 1)

end A234851

/-!
# A234852: Indices k of primes p=prime(k) such that prime(p)-p+1 is prime.

The programs for A234852, the canonical program `A234852.P16185758610676893289` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A234852 has offset 1).

The definition of A234852 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A234695, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A234852.P16185758610676893289

`A000720(A234695(n+1))`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A234852

/-- `A000720(A234695(n+1))` -/
def P16185758610676893289.Spec : Prop :=
  ∀ n, P16185758610676893289.a n = A234852 (n + 1)

theorem P16185758610676893289.correct : P16185758610676893289.Spec := by
  intro n
  simp only [A234852, Nat.add_sub_cancel]

end A234852

/-! ## A234852.P7148637335875443857

`record[A055396(A234851(n+2))]`
-/

namespace A234852.P7148637335875443857
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055396 (A234851 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A234852.P7148637335875443857

namespace A234852

/-- `record[A055396(A234851(n+2))]` -/
def P7148637335875443857.Spec : Prop :=
  ∀ n, P7148637335875443857.a n = A234852 (n + 1)

end A234852

/-! ## A234852.P16403380676673338783

`A219109(A234695(n+1)+1)`
-/

namespace A234852.P16403380676673338783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219109 (A234695 (n + 1) + 1).toNat

end

end A234852.P16403380676673338783

namespace A234852

/-- `A219109(A234695(n+1)+1)` -/
def P16403380676673338783.Spec : Prop :=
  ∀ n, P16403380676673338783.a n = A234852 (n + 1)

end A234852

/-! ## A234852.P13549812122120455573

`A349191(A234695(n+1)-1)`
-/

namespace A234852.P13549812122120455573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349191 (A234695 (n + 1) - 1).toNat

end

end A234852.P13549812122120455573

namespace A234852

/-- `A349191(A234695(n+1)-1)` -/
def P13549812122120455573.Spec : Prop :=
  ∀ n, P13549812122120455573.a n = A234852 (n + 1)

end A234852

/-! ## A234852.P10837985067871892410

`A003963(2*A234695(n+1))`
-/

namespace A234852.P10837985067871892410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003963 (2 * A234695 (n + 1)).toNat

end

end A234852.P10837985067871892410

namespace A234852

/-- `A003963(2*A234695(n+1))` -/
def P10837985067871892410.Spec : Prop :=
  ∀ n, P10837985067871892410.a n = A234852 (n + 1)

end A234852

/-! ## A234852.P11662678169786315

`A061395(2*A234695(n+1))`
-/

namespace A234852.P11662678169786315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (2 * A234695 (n + 1)).toNat

end

end A234852.P11662678169786315

namespace A234852

/-- `A061395(2*A234695(n+1))` -/
def P11662678169786315.Spec : Prop :=
  ∀ n, P11662678169786315.a n = A234852 (n + 1)

end A234852

/-! ## A234852.P3555230862681788444

`A153452(2*A234695(n+1))`
-/

namespace A234852.P3555230862681788444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153452 (2 * A234695 (n + 1)).toNat

end

end A234852.P3555230862681788444

namespace A234852

/-- `A153452(2*A234695(n+1))` -/
def P3555230862681788444.Spec : Prop :=
  ∀ n, P3555230862681788444.a n = A234852 (n + 1)

end A234852

/-! ## A234852.P7807098723077744853

`A316524(4*A234695(n+1))`
-/

namespace A234852.P7807098723077744853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316524 (4 * A234695 (n + 1)).toNat

end

end A234852.P7807098723077744853

namespace A234852

/-- `A316524(4*A234695(n+1))` -/
def P7807098723077744853.Spec : Prop :=
  ∀ n, P7807098723077744853.a n = A234852 (n + 1)

end A234852

/-! ## A234852.P6374229885706717791

`A344616(9*A234695(n+1))`
-/

namespace A234852.P6374229885706717791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344616 (9 * A234695 (n + 1)).toNat

end

end A234852.P6374229885706717791

namespace A234852

/-- `A344616(9*A234695(n+1))` -/
def P6374229885706717791.Spec : Prop :=
  ∀ n, P6374229885706717791.a n = A234852 (n + 1)

end A234852

/-! ## A234852.P16370015500151313943

`∑{d}[A234695(n+1), A061395(#)]`
-/

namespace A234852.P16370015500151313943
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234695 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A061395 d

end

end A234852.P16370015500151313943

namespace A234852

/-- `∑{d}[A234695(n+1), A061395(#)]` -/
def P16370015500151313943.Spec : Prop :=
  ∀ n, P16370015500151313943.a n = A234852 (n + 1)

end A234852

/-!
# A234853: Indices of primes in A234851.

The programs for A234853, the canonical program `A234853.P5781389149874838194` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A234853 has offset 1).

The definition of A234853 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1731 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A234853.P5781389149874838194

`eq[1, A001222(A234851(n+1))]+1`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A234853

/-- `eq[1, A001222(A234851(n+1))]+1` -/
def P5781389149874838194.Spec : Prop :=
  ∀ n, (P5781389149874838194.a n : ℤ) = A234853 (n + 1)

theorem P5781389149874838194.correct : P5781389149874838194.Spec := by
  intro n
  simp only [A234853, Nat.add_sub_cancel]

end A234853

/-! ## A234853.P8299053613366820479

`eq[A034389(n+1), A161074(A204617(n+1))]`
-/

namespace A234853.P8299053613366820479
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034389 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161074 (A204617 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A234853.P8299053613366820479

namespace A234853

/-- `eq[A034389(n+1), A161074(A204617(n+1))]` -/
def P8299053613366820479.Spec : Prop :=
  ∀ n, (P8299053613366820479.a n : ℤ) = A234853 (n + 1)

end A234853

/-!
# A234854: E.g.f. satisfies: A'(x) = 1 + 4*A(x) + A(x)^2, where A(0)=0.

The programs for A234854, there is no canonical definition to state claims against.
-/

/-! ## A234854.P50904997882434230

`A151281(n)*A338094(A151253(n))`
-/

namespace A234854.P50904997882434230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151281 n * A338094 (A151253 n).toNat

end

end A234854.P50904997882434230

/-!
# A234855: E.g.f. satisfies: A(x) = Sum_{n>=0} ( Integral A(x)^n dx )^n.

The programs for A234855, there is no canonical definition to state claims against.
-/

/-! ## A234855.P7968712519777241531

`A234302(n)+A188344(A290280(n))`
-/

namespace A234855.P7968712519777241531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234302 n + A188344 (A290280 n).toNat

end

end A234855.P7968712519777241531

/-!
# A234856: Number of (n+2)X(1+2) 0..3 arrays with each 3X3 subblock having the sum of its 72 absolute element differences equal to 46.

The programs for A234856, there is no canonical definition to state claims against.
-/

/-! ## A234856.P13188896108537719320

`A234858(∑[n]+1)`
-/

namespace A234856.P13188896108537719320
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234858 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A234856.P13188896108537719320

/-! ## A234856.P4666107348589839735

`lcm(2, A234858(A000124(n)))`
-/

namespace A234856.P4666107348589839735
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A234858 (A000124 n).toNat)

end

end A234856.P4666107348589839735

/-! ## A234856.P10294581822835861810

`∑{digits}[n, A234858(A000124(#))]`
-/

namespace A234856.P10294581822835861810
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => A234858 (A000124 x).toNat).sum

end

end A234856.P10294581822835861810

/-!
# A234857: Number of (n+2)X(2+2) 0..3 arrays with each 3X3 subblock having the sum of its 72 absolute element differences equal to 46.

The programs for A234857, there is no canonical definition to state claims against.
-/

/-! ## A234857.P7946504514529634566

`A234858(∑[n+1]+2)`
-/

namespace A234857.P7946504514529634566
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234858 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A234857.P7946504514529634566

/-! ## A234857.P16158664101450781354

`lcm(2, A234858(A133263(n+1)))`
-/

namespace A234857.P16158664101450781354
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A234858 (A133263 (n + 1)).toNat)

end

end A234857.P16158664101450781354

/-!
# A234859: Number of totally symmetric 5-dimensional partitions of n.

The programs for A234859, there is no canonical definition to state claims against.
-/

/-! ## A234859.P3174292577585949550

`A032548(A032538(n+1))%gcd(5, n)`
-/

namespace A234859.P3174292577585949550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A032548 (A032538 (n + 1)).toNat) (Nat.gcd 5 n : ℤ)

end

end A234859.P3174292577585949550

/-! ## A234859.P16207242133997550016

`A069010(A080000(n))*A079998(n)`
-/

namespace A234859.P16207242133997550016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069010 (A080000 n).toNat * A079998 n

end

end A234859.P16207242133997550016

/-! ## A234859.P14192694662910861108

`A069010(A080000(n))%A010122(n)`
-/

namespace A234859.P14192694662910861108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A069010 (A080000 n).toNat) (A010122 n)

end

end A234859.P14192694662910861108

/-! ## A234859.P3940596836859478184

`A032548(A032538(n+1))*A079998(n)`
-/

namespace A234859.P3940596836859478184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032548 (A032538 (n + 1)).toNat * A079998 n

end

end A234859.P3940596836859478184

/-! ## A234859.P13633384043993644241

`A032548(A032538(n+1))%A010122(n)`
-/

namespace A234859.P13633384043993644241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A032548 (A032538 (n + 1)).toNat) (A010122 n)

end

end A234859.P13633384043993644241

/-!
# A234860: Sum of the divisors of n^3 - 1.

The programs for A234860, the canonical program `A234860.P17289847798054394892` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A234860 has offset 2).

The definition of A234860 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A234860.P17289847798054394892

`A000203((n+2)^3-1)`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A234860

/-- `A000203((n+2)^3-1)` -/
def P17289847798054394892.Spec : Prop :=
  ∀ n, P17289847798054394892.a n = A234860 (n + 2)

theorem P17289847798054394892.correct : P17289847798054394892.Spec := by
  intro n
  simp only [A234860, Nat.add_sub_cancel]

end A234860

/-! ## A234860.P3571043243511025025

`∑{d}[1-(n+2)^3, #]`
-/

namespace A234860.P3571043243511025025
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ((n + 2) ^ 3 : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, d

end

end A234860.P3571043243511025025

namespace A234860

/-- `∑{d}[1-(n+2)^3, #]` -/
def P3571043243511025025.Spec : Prop :=
  ∀ n, (P3571043243511025025.a n : ℤ) = A234860 (n + 2)

end A234860

/-! ## A234860.P14400705269757412053

`lcm(2, ∑{d}[xor(n+1, -1)^3+1, #])`
-/

namespace A234860.P14400705269757412053
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n + 1 : ℤ) (-1) ^ 3 + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm 2 (∑ d ∈ Nat.divisors (f1 n).natAbs, d)

end

end A234860.P14400705269757412053

namespace A234860

/-- `lcm(2, ∑{d}[xor(n+1, -1)^3+1, #])` -/
def P14400705269757412053.Spec : Prop :=
  ∀ n, (P14400705269757412053.a n : ℤ) = A234860 (n + 2)

end A234860

/-! ## A234860.P4220657409552481933

`and(-2, ∑{d}[A135300(n+2), #])`
-/

namespace A234860.P4220657409552481933
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135300 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-2) ((∑ d ∈ Nat.divisors (f1 n).natAbs, d : ℕ) : ℤ)

end

end A234860.P4220657409552481933

namespace A234860

/-- `and(-2, ∑{d}[A135300(n+2), #])` -/
def P4220657409552481933.Spec : Prop :=
  ∀ n, P4220657409552481933.a n = A234860 (n + 2)

end A234860

/-! ## A234860.P6213898034837789250

`A000007(n+1)+∑{d}[A068601(n+2), #]`
-/

namespace A234860.P6213898034837789250
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068601 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (n + 1) + ((∑ d ∈ Nat.divisors (f1 n).natAbs, d : ℕ) : ℤ)

end

end A234860.P6213898034837789250

namespace A234860

/-- `A000007(n+1)+∑{d}[A068601(n+2), #]` -/
def P6213898034837789250.Spec : Prop :=
  ∀ n, P6213898034837789250.a n = A234860 (n + 2)

end A234860

/-! ## A234860.P18259120323561468088

`lcm(A001221(n+2), ∑{d}[A135300(n+2), #])`
-/

namespace A234860.P18259120323561468088
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135300 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A001221 (n + 2)) ((∑ d ∈ Nat.divisors (f1 n).natAbs, d : ℕ) : ℤ)

end

end A234860.P18259120323561468088

namespace A234860

/-- `lcm(A001221(n+2), ∑{d}[A135300(n+2), #])` -/
def P18259120323561468088.Spec : Prop :=
  ∀ n, (P18259120323561468088.a n : ℤ) = A234860 (n + 2)

end A234860

/-! ## A234860.P8662803473686947734

`A007318(C(2, n))*∑{d}[A068601(n+2), #]`
-/

namespace A234860.P8662803473686947734
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068601 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * ((∑ d ∈ Nat.divisors (f1 n).natAbs, d : ℕ) : ℤ)

end

end A234860.P8662803473686947734

namespace A234860

/-- `A007318(C(2, n))*∑{d}[A068601(n+2), #]` -/
def P8662803473686947734.Spec : Prop :=
  ∀ n, P8662803473686947734.a n = A234860 (n + 2)

end A234860

/-! ## A234860.P1238459702038966015

`A007318(C(2, n))*∑{d}[A135300(n+2), #]`
-/

namespace A234860.P1238459702038966015
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135300 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * ((∑ d ∈ Nat.divisors (f1 n).natAbs, d : ℕ) : ℤ)

end

end A234860.P1238459702038966015

namespace A234860

/-- `A007318(C(2, n))*∑{d}[A135300(n+2), #]` -/
def P1238459702038966015.Spec : Prop :=
  ∀ n, P1238459702038966015.a n = A234860 (n + 2)

end A234860

/-! ## A234860.P16357431520064761008

`∑{d}[A068601(n+2), #]+A008683(4*(n+1))`
-/

namespace A234860.P16357431520064761008
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068601 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ d ∈ Nat.divisors (f1 n).natAbs, d : ℕ) : ℤ) + A008683 (4 * (n + 1))

end

end A234860.P16357431520064761008

namespace A234860

/-- `∑{d}[A068601(n+2), #]+A008683(4*(n+1))` -/
def P16357431520064761008.Spec : Prop :=
  ∀ n, P16357431520064761008.a n = A234860 (n + 2)

end A234860

/-! ## A234860.P5503780070416561898

`∑{d}[A135300(n+2), #]+A008683(4*(n+1))`
-/

namespace A234860.P5503780070416561898
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135300 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ d ∈ Nat.divisors (f1 n).natAbs, d : ℕ) : ℤ) + A008683 (4 * (n + 1))

end

end A234860.P5503780070416561898

namespace A234860

/-- `∑{d}[A135300(n+2), #]+A008683(4*(n+1))` -/
def P5503780070416561898.Spec : Prop :=
  ∀ n, P5503780070416561898.a n = A234860 (n + 2)

end A234860

/-!
# A234861: Sum of the distinct prime divisors of n^3 - 1.

The programs for A234861, the canonical program `A234861.P868556346788714259` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A234861 has offset 1).

The definition of A234861 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A234861.P868556346788714259

`∑{p}[1-Δ[∑[n]²], #]`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A234861

/-- `∑{p}[1-Δ[∑[n]²], #]` -/
def P868556346788714259.Spec : Prop :=
  ∀ n, (P868556346788714259.a n : ℤ) = A234861 (n + 1)

theorem P868556346788714259.correct : P868556346788714259.Spec := by
  intro n
  simp only [A234861, Nat.add_sub_cancel]

end A234861

/-! ## A234861.P1871401949781518028

`∑{p}[(n+1)^3-1, #]%Δ[C(n²+1, 2)]`
-/

namespace A234861.P1871401949781518028
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 3 : ℤ) - 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (n ^ 2 + 1) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((∑ p ∈ Nat.primeFactors (f1 n).natAbs, p : ℕ) : ℤ) ((f2 (n + 1) : ℤ) - (f2 n : ℤ))

end

end A234861.P1871401949781518028

namespace A234861

/-- `∑{p}[(n+1)^3-1, #]%Δ[C(n²+1, 2)]` -/
def P1871401949781518028.Spec : Prop :=
  ∀ n, P1871401949781518028.a n = A234861 (n + 1)

end A234861

/-! ## A234861.P9208089471245167889

`gcd(n, n+1)*∑{p}[A068601(n+1), #]`
-/

namespace A234861.P9208089471245167889
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068601 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd n (n + 1) * (∑ p ∈ Nat.primeFactors (f1 n).natAbs, p)

end

end A234861.P9208089471245167889

namespace A234861

/-- `gcd(n, n+1)*∑{p}[A068601(n+1), #]` -/
def P9208089471245167889.Spec : Prop :=
  ∀ n, (P9208089471245167889.a n : ℤ) = A234861 (n + 1)

end A234861

/-! ## A234861.P12581885135173415890

`∑{p}[A068601(n+1), #]%A001504(n)`
-/

namespace A234861.P12581885135173415890
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068601 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((∑ p ∈ Nat.primeFactors (f1 n).natAbs, p : ℕ) : ℤ) (A001504 n)

end

end A234861.P12581885135173415890

namespace A234861

/-- `∑{p}[A068601(n+1), #]%A001504(n)` -/
def P12581885135173415890.Spec : Prop :=
  ∀ n, P12581885135173415890.a n = A234861 (n + 1)

end A234861

/-! ## A234861.P17514840735912869595

`(A000007(n)+1)*∑{p}[A068601(n+1), #]`
-/

namespace A234861.P17514840735912869595
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068601 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000007 n + 1) * ((∑ p ∈ Nat.primeFactors (f1 n).natAbs, p : ℕ) : ℤ)

end

end A234861.P17514840735912869595

namespace A234861

/-- `(A000007(n)+1)*∑{p}[A068601(n+1), #]` -/
def P17514840735912869595.Spec : Prop :=
  ∀ n, P17514840735912869595.a n = A234861 (n + 1)

end A234861

/-! ## A234861.P17249319773605020584

`A007318(C(2, n))*∑{p}[A068601(n+1), #]`
-/

namespace A234861.P17249319773605020584
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068601 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * ((∑ p ∈ Nat.primeFactors (f1 n).natAbs, p : ℕ) : ℤ)

end

end A234861.P17249319773605020584

namespace A234861

/-- `A007318(C(2, n))*∑{p}[A068601(n+1), #]` -/
def P17249319773605020584.Spec : Prop :=
  ∀ n, P17249319773605020584.a n = A234861 (n + 1)

end A234861

/-! ## A234861.P5335186945208315064

`∑{p}[A068601(n+1), #]+A008683(4*(n+1))`
-/

namespace A234861.P5335186945208315064
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068601 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ p ∈ Nat.primeFactors (f1 n).natAbs, p : ℕ) : ℤ) + A008683 (4 * (n + 1))

end

end A234861.P5335186945208315064

namespace A234861

/-- `∑{p}[A068601(n+1), #]+A008683(4*(n+1))` -/
def P5335186945208315064.Spec : Prop :=
  ∀ n, P5335186945208315064.a n = A234861 (n + 1)

end A234861

/-! ## A234861.P4696406493890573801

`A014963(4*n+2)*∑{p}[A068601(n+1), #]`
-/

namespace A234861.P4696406493890573801
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068601 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (4 * n + 2) * ((∑ p ∈ Nat.primeFactors (f1 n).natAbs, p : ℕ) : ℤ)

end

end A234861.P4696406493890573801

namespace A234861

/-- `A014963(4*n+2)*∑{p}[A068601(n+1), #]` -/
def P4696406493890573801.Spec : Prop :=
  ∀ n, P4696406493890573801.a n = A234861 (n + 1)

end A234861

/-! ## A234861.P16950617456251922818

`A000041(C(2, n+2))*∑{p}[A068601(n+1), #]`
-/

namespace A234861.P16950617456251922818
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068601 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (Nat.choose 2 (n + 2)) * ((∑ p ∈ Nat.primeFactors (f1 n).natAbs, p : ℕ) : ℤ)

end

end A234861.P16950617456251922818

namespace A234861

/-- `A000041(C(2, n+2))*∑{p}[A068601(n+1), #]` -/
def P16950617456251922818.Spec : Prop :=
  ∀ n, P16950617456251922818.a n = A234861 (n + 1)

end A234861

/-! ## A234861.P10692801541758153251

`(A008611(3*n)-n)*∑{p}[A068601(n+1), #]`
-/

namespace A234861.P10692801541758153251
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068601 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A008611 (3 * n) - (n : ℤ)) * ((∑ p ∈ Nat.primeFactors (f1 n).natAbs, p : ℕ) : ℤ)

end

end A234861.P10692801541758153251

namespace A234861

/-- `(A008611(3*n)-n)*∑{p}[A068601(n+1), #]` -/
def P10692801541758153251.Spec : Prop :=
  ∀ n, P10692801541758153251.a n = A234861 (n + 1)

end A234861

/-! ## A234861.P15510761665839615861

`abs(A008836(2*(n+1)))*∑{p}[A068601(n+1), #]`
-/

namespace A234861.P15510761665839615861
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068601 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008836 (2 * (n + 1))| * ((∑ p ∈ Nat.primeFactors (f1 n).natAbs, p : ℕ) : ℤ)

end

end A234861.P15510761665839615861

namespace A234861

/-- `abs(A008836(2*(n+1)))*∑{p}[A068601(n+1), #]` -/
def P15510761665839615861.Spec : Prop :=
  ∀ n, P15510761665839615861.a n = A234861 (n + 1)

end A234861

/-!
# A234862: Number of (n+2)X(1+2) 0..3 arrays with each 3X3 subblock having the sum of its 72 absolute element differences equal to 52, and no adjacent elements equal.

The programs for A234862, there is no canonical definition to state claims against.
-/

/-! ## A234862.P14588586016900512343

`A234867(∑[n]+1)`
-/

namespace A234862.P14588586016900512343
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234867 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A234862.P14588586016900512343

/-! ## A234862.P71096375960008280

`record[A234867(n+1)]`
-/

namespace A234862.P71096375960008280
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234867 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A234862.P71096375960008280

/-! ## A234862.P3156467487192527923

`lcm(2, A234867(A000124(n)))`
-/

namespace A234862.P3156467487192527923
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A234867 (A000124 n).toNat)

end

end A234862.P3156467487192527923

/-! ## A234862.P17143774421380881427

`A234867(A000124(n))+A011731(n)`
-/

namespace A234862.P17143774421380881427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234867 (A000124 n).toNat + A011731 n

end

end A234862.P17143774421380881427

/-! ## A234862.P14174424485321530852

`A234867(A000124(n))+A014083(n)`
-/

namespace A234862.P14174424485321530852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234867 (A000124 n).toNat + A014083 n

end

end A234862.P14174424485321530852

/-!
# A234863: Number of (n+2)X(2+2) 0..3 arrays with each 3X3 subblock having the sum of its 72 absolute element differences equal to 52, and no adjacent elements equal.

The programs for A234863, there is no canonical definition to state claims against.
-/

/-! ## A234863.P16330319042014571593

`A234867(∑[n+1]+2)`
-/

namespace A234863.P16330319042014571593
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234867 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A234863.P16330319042014571593

/-! ## A234863.P592343227916275537

`record[A010054(n)*A234867(n+2)]`
-/

namespace A234863.P592343227916275537
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A234867 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A234863.P592343227916275537

/-! ## A234863.P11616938432230620527

`lcm(2, A234867(A000217(n+1)+2))`
-/

namespace A234863.P11616938432230620527
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A234867 (A000217 (n + 1) + 2).toNat)

end

end A234863.P11616938432230620527

/-! ## A234863.P5740652239747457526

`record[gcd(A121314(n+1), A234867(n+3))]`
-/

namespace A234863.P5740652239747457526
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A121314 (n + 1)) (A234867 (n + 3))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A234863.P5740652239747457526

/-!
# A234864: Number of (n+2) X (3+2) 0..3 arrays with each 3 X 3 subblock having the sum of its 72 absolute element differences equal to 52, and no adjacent elements equal.

The programs for A234864, there is no canonical definition to state claims against.
-/

/-! ## A234864.P13742377263005663428

`A234867(∑[n+2]+4)`
-/

namespace A234864.P13742377263005663428
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234867 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A234864.P13742377263005663428

/-! ## A234864.P18047263968491230573

`lcm(2, A234867(A167614(n+1)))`
-/

namespace A234864.P18047263968491230573
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A234867 (A167614 (n + 1)).toNat)

end

end A234864.P18047263968491230573

/-! ## A234864.P14584861037468420175

`A234867(A167614(n+1))+A011731(n)`
-/

namespace A234864.P14584861037468420175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234867 (A167614 (n + 1)).toNat + A011731 n

end

end A234864.P14584861037468420175

/-! ## A234864.P3872357431948240277

`A234867(A167614(n+1))+A014083(n)`
-/

namespace A234864.P3872357431948240277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234867 (A167614 (n + 1)).toNat + A014083 n

end

end A234864.P3872357431948240277

/-! ## A234864.P990702973820821478

`A234867(A167614(n+1))+A035041(n)`
-/

namespace A234864.P990702973820821478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234867 (A167614 (n + 1)).toNat + A035041 n

end

end A234864.P990702973820821478

/-!
# A234865: Number of (n+2) X (4+2) 0..3 arrays with each 3 X 3 subblock having the sum of its 72 absolute element differences equal to 52, and no adjacent elements equal.

The programs for A234865, there is no canonical definition to state claims against.
-/

/-! ## A234865.P15209595444376990152

`A234867(∑[n+3]+7)`
-/

namespace A234865.P15209595444376990152
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234867 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A234865.P15209595444376990152

/-!
# A234866: Number of (n+2)X(5+2) 0..3 arrays with each 3X3 subblock having the sum of its 72 absolute element differences equal to 52, and no adjacent elements equal.

The programs for A234866, there is no canonical definition to state claims against.
-/

/-! ## A234866.P17920960420071937438

`A234867(A374005(n+1))`
-/

namespace A234866.P17920960420071937438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234867 (A374005 (n + 1)).toNat

end

end A234866.P17920960420071937438

/-! ## A234866.P17264760708861549553

`A234867(A155212(n)+13)`
-/

namespace A234866.P17264760708861549553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234867 (A155212 n + 13).toNat

end

end A234866.P17264760708861549553

/-! ## A234866.P8206900053844614626

`A234867(A056000(n)+15)`
-/

namespace A234866.P8206900053844614626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234867 (A056000 n + 15).toNat

end

end A234866.P8206900053844614626

/-!
# A234868: a(n) = 2*binomial(11*n+2,n)/(11*n+2).

The programs for A234868, the canonical program `A234868.P13267545013045845899` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A234868 has offset 0).

The definition of A234868 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A234868.P18444732626231415827

`A234869(n)*2*(10*n+3)/(3*(11*n+2))`
-/

namespace A234868.P18444732626231415827
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A234869 n * 2 * (10 * n + 3 : ℤ) : ℚ) / (3 * (11 * n + 2) : ℚ)

end

end A234868.P18444732626231415827

namespace A234868

/-- `A234869(n)*2*(10*n+3)/(3*(11*n+2))` -/
def P18444732626231415827.Spec : Prop :=
  ∀ n, P18444732626231415827.a n = (A234868 n : ℚ)

end A234868

/-! ## A234868.P13267545013045845899

`2*C(11*n+2, n)/(11*n+2)`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A234868

/-- `2*C(11*n+2, n)/(11*n+2)` -/
def P13267545013045845899.Spec : Prop :=
  ∀ n, P13267545013045845899.a n = (A234868 n : ℚ)

end A234868

/-!
# A234869: a(n) = 3*binomial(11*n+3,n)/(11*n+3).

The programs for A234869, the canonical program `A234869.P6990886365438771550` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A234869 has offset 0).

The definition of A234869 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A234869.P1807975076438522795

`A234870(n)*3*(5*n+2)/(2*(11*n+3))`
-/

namespace A234869.P1807975076438522795
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A234870 n * 3 * (5 * n + 2 : ℤ) : ℚ) / (2 * (11 * n + 3) : ℚ)

end

end A234869.P1807975076438522795

namespace A234869

/-- `A234870(n)*3*(5*n+2)/(2*(11*n+3))` -/
def P1807975076438522795.Spec : Prop :=
  ∀ n, P1807975076438522795.a n = (A234869 n : ℚ)

end A234869

/-! ## A234869.P6990886365438771550

`3*C(11*n+3, n)/(11*n+3)`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A234869

/-- `3*C(11*n+3, n)/(11*n+3)` -/
def P6990886365438771550.Spec : Prop :=
  ∀ n, P6990886365438771550.a n = (A234869 n : ℚ)

end A234869

/-!
# A234870: a(n) = 4*binomial(11*n+4,n)/(11*n+4).

The programs for A234870, the canonical program `A234870.P2064753317977125337` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A234870 has offset 0).

The definition of A234870 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A234870.P9947264337733662437

`A234871(n)*4*(2*n+1)/(11*n+4)`
-/

namespace A234870.P9947264337733662437
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A234871 n * 4 * (2 * n + 1 : ℤ) : ℚ) / (11 * n + 4 : ℚ)

end

end A234870.P9947264337733662437

namespace A234870

/-- `A234871(n)*4*(2*n+1)/(11*n+4)` -/
def P9947264337733662437.Spec : Prop :=
  ∀ n, P9947264337733662437.a n = (A234870 n : ℚ)

end A234870

/-! ## A234870.P2064753317977125337

`4*C(11*n+4, n)/(11*n+4)`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A234870

/-- `4*C(11*n+4, n)/(11*n+4)` -/
def P2064753317977125337.Spec : Prop :=
  ∀ n, P2064753317977125337.a n = (A234870 n : ℚ)

end A234870

/-!
# A234871: a(n) = 5*binomial(11*n+5,n)/(11*n+5).

The programs for A234871, the canonical program `A234871.P17481549096130243504` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A234871 has offset 0).

The definition of A234871 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A234871.P13410417266023768564

`A234872(n)*5*(5*n+3)/(3*(11*n+5))`
-/

namespace A234871.P13410417266023768564
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A234872 n * 5 * (5 * n + 3 : ℤ) : ℚ) / (3 * (11 * n + 5) : ℚ)

end

end A234871.P13410417266023768564

namespace A234871

/-- `A234872(n)*5*(5*n+3)/(3*(11*n+5))` -/
def P13410417266023768564.Spec : Prop :=
  ∀ n, P13410417266023768564.a n = (A234871 n : ℚ)

end A234871

/-! ## A234871.P17481549096130243504

`5*C(11*n+5, n)/(11*n+5)`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A234871

/-- `5*C(11*n+5, n)/(11*n+5)` -/
def P17481549096130243504.Spec : Prop :=
  ∀ n, P17481549096130243504.a n = (A234871 n : ℚ)

end A234871

/-!
# A234872: a(n) = 6*binomial(11*n+6,n)/(11*n+6).

The programs for A234872, the canonical program `A234872.P13748514664010457004` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A234872 has offset 0).

The definition of A234872 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A234872.P13748514664010457004

`6*C(11*n+6, n)/(11*n+6)`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A234872

/-- `6*C(11*n+6, n)/(11*n+6)` -/
def P13748514664010457004.Spec : Prop :=
  ∀ n, P13748514664010457004.a n = (A234872 n : ℚ)

end A234872

/-! ## A234872.P10456299844057074434

`A192893(Δ[n²])`
-/

namespace A234872.P10456299844057074434
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192893 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A234872.P10456299844057074434

namespace A234872

/-- `A192893(Δ[n²])` -/
def P10456299844057074434.Spec : Prop :=
  ∀ n, P10456299844057074434.a n = A234872 n

end A234872

/-! ## A234872.P40437853933026297

`record[A192893(n^(n%2))]`
-/

namespace A234872.P40437853933026297
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192893 (n ^ (n % 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A234872.P40437853933026297

namespace A234872

/-- `record[A192893(n^(n%2))]` -/
def P40437853933026297.Spec : Prop :=
  ∀ n, P40437853933026297.a n = A234872 n

end A234872

/-! ## A234872.P13715106605380715936

`abs(A192893(2*n+1)-1)+1`
-/

namespace A234872.P13715106605380715936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A192893 (2 * n + 1) - 1| + 1

end

end A234872.P13715106605380715936

namespace A234872

/-- `abs(A192893(2*n+1)-1)+1` -/
def P13715106605380715936.Spec : Prop :=
  ∀ n, P13715106605380715936.a n = A234872 n

end A234872

/-! ## A234872.P18180962951035738613

`record[A192893(A028234(n+1))]`
-/

namespace A234872.P18180962951035738613
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192893 (A028234 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A234872.P18180962951035738613

namespace A234872

/-- `record[A192893(A028234(n+1))]` -/
def P18180962951035738613.Spec : Prop :=
  ∀ n, P18180962951035738613.a n = A234872 n

end A234872

/-! ## A234872.P18050874305998972527

`record[gcd(A058377(2*n+3), A192893(n))]`
-/

namespace A234872.P18050874305998972527
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A058377 (2 * n + 3)) (A192893 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A234872.P18050874305998972527

namespace A234872

/-- `record[gcd(A058377(2*n+3), A192893(n))]` -/
def P18050874305998972527.Spec : Prop :=
  ∀ n, (P18050874305998972527.a n : ℤ) = A234872 n

end A234872

/-! ## A234872.P15209455493596955478

`A192893(2*n+1)+A063524(3*n)`
-/

namespace A234872.P15209455493596955478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192893 (2 * n + 1) + A063524 (3 * n)

end

end A234872.P15209455493596955478

namespace A234872

/-- `A192893(2*n+1)+A063524(3*n)` -/
def P15209455493596955478.Spec : Prop :=
  ∀ n, P15209455493596955478.a n = A234872 n

end A234872

/-! ## A234872.P5653709602736372802

`A192893(2*n+1)+A047753(2*(n+1))`
-/

namespace A234872.P5653709602736372802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192893 (2 * n + 1) + A047753 (2 * (n + 1))

end

end A234872.P5653709602736372802

namespace A234872

/-- `A192893(2*n+1)+A047753(2*(n+1))` -/
def P5653709602736372802.Spec : Prop :=
  ∀ n, P5653709602736372802.a n = A234872 n

end A234872

/-! ## A234872.P234024599653052965

`or(A000007(n), A192893(A026741(2*n+1)))`
-/

namespace A234872.P234024599653052965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A192893 (A026741 (2 * n + 1)).toNat)

end

end A234872.P234024599653052965

namespace A234872

/-- `or(A000007(n), A192893(A026741(2*n+1)))` -/
def P234024599653052965.Spec : Prop :=
  ∀ n, P234024599653052965.a n = A234872 n

end A234872

/-! ## A234872.P13284453127928838519

`A001222(A089755(n+1))*A192893(2*n+1)`
-/

namespace A234872.P13284453127928838519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A089755 (n + 1)).toNat * A192893 (2 * n + 1)

end

end A234872.P13284453127928838519

namespace A234872

/-- `A001222(A089755(n+1))*A192893(2*n+1)` -/
def P13284453127928838519.Spec : Prop :=
  ∀ n, P13284453127928838519.a n = A234872 n

end A234872

/-!
# A234873: a(n) = 7*binomial(11*n+7,n)/(11*n+7).

The programs for A234873, the canonical program `A234873.P9574430598085858005` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A234873 has offset 0).

The definition of A234873 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A234873.P9574430598085858005

`7*C(11*n+7, n)/(11*n+7)`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A234873

/-- `7*C(11*n+7, n)/(11*n+7)` -/
def P9574430598085858005.Spec : Prop :=
  ∀ n, P9574430598085858005.a n = (A234873 n : ℚ)

end A234873

/-!
# A234874: Number of (n+1) X (n+1) 0..4 arrays with every 2 X 2 subblock having its diagonal sum differing from its antidiagonal sum by 1, with no adjacent elements equal (constant-stress tilted 1 X 1 tilings).

The programs for A234874, there is no canonical definition to state claims against.
-/

/-! ## A234874.P11025677850793445624

`A234882(∑[4*n]+1)`
-/

namespace A234874.P11025677850793445624
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234882 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A234874.P11025677850793445624

/-! ## A234874.P3159052671876112455

`lcm(2, A234882(A001844(n)))`
-/

namespace A234874.P3159052671876112455
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A234882 (A001844 n).toNat)

end

end A234874.P3159052671876112455

/-! ## A234874.P5780751432122891089

`record[gcd(A003987(n), A234882(n+1))]`
-/

namespace A234874.P5780751432122891089
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A003987 n) (A234882 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A234874.P5780751432122891089

/-! ## A234874.P12621019351476449938

`A234882(A001844(n))+A185284(n)`
-/

namespace A234874.P12621019351476449938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234882 (A001844 n).toNat + A185284 n

end

end A234874.P12621019351476449938

/-! ## A234874.P8971997782912706060

`A234882(A001844(n))%A204873(n+1)`
-/

namespace A234874.P8971997782912706060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A234882 (A001844 n).toNat) (A204873 (n + 1))

end

end A234874.P8971997782912706060

/-!
# A234875: Number of (n+1) X (1+1) 0..4 arrays with every 2 X 2 subblock having its diagonal sum differing from its antidiagonal sum by 1, with no adjacent elements equal (constant-stress tilted 1 X 1 tilings).

The programs for A234875, the canonical program `A234875.P10616451242970156290` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A234875 has offset 1).

The definition of A234875 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 328 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A234875.P10616451242970156290

`xor(2*(a(n-1)+n%2)-1, A153643(n+2))` with `a(0)=32`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A234875

/-- `xor(2*(a(n-1)+n%2)-1, A153643(n+2))` -/
def P10616451242970156290.Spec : Prop :=
  ∀ n, P10616451242970156290.a n = A234875 (n + 1)

theorem P10616451242970156290.correct : P10616451242970156290.Spec := by
  intro n
  simp only [A234875, Nat.add_sub_cancel]

end A234875

/-! ## A234875.P2663585885327187058

`A078008(n+1)+A151575(n+1)+A000079(n+5)`
-/

namespace A234875.P2663585885327187058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078008 (n + 1) + (A151575 (n + 1) + A000079 (n + 5))

end

end A234875.P2663585885327187058

namespace A234875

/-- `A078008(n+1)+A151575(n+1)+A000079(n+5)` -/
def P2663585885327187058.Spec : Prop :=
  ∀ n, P2663585885327187058.a n = A234875 (n + 1)

end A234875

/-! ## A234875.P3891159011681655129

`A001045(n+2)+A137208(n+3)+A001045(n+6)`
-/

namespace A234875.P3891159011681655129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001045 (n + 2) + (A137208 (n + 3) + A001045 (n + 6))

end

end A234875.P3891159011681655129

namespace A234875

/-- `A001045(n+2)+A137208(n+3)+A001045(n+6)` -/
def P3891159011681655129.Spec : Prop :=
  ∀ n, P3891159011681655129.a n = A234875 (n + 1)

end A234875

/-! ## A234875.P14791530757377624907

`5*a(n-2)-4*a(n-4)` with `a(0)=32, a(1)=68, a(2)=128, a(3)=268`
-/

namespace A234875.P14791530757377624907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [32, 68, 128, 268] fun n a =>
  5 * a (n - 2) - 4 * a (n - 4)

end

end A234875.P14791530757377624907

namespace A234875

/-- `5*a(n-2)-4*a(n-4)` -/
def P14791530757377624907.Spec : Prop :=
  ∀ n, P14791530757377624907.a n = A234875 (n + 1)

end A234875

/-! ## A234875.P702423796750897773

`A234882(∑[n]+1)`
-/

namespace A234875.P702423796750897773
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234882 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A234875.P702423796750897773

namespace A234875

/-- `A234882(∑[n]+1)` -/
def P702423796750897773.Spec : Prop :=
  ∀ n, P702423796750897773.a n = A234875 (n + 1)

end A234875

/-!
# A234876: Number of (n+1) X (2+1) 0..4 arrays with every 2 X 2 subblock having its diagonal sum differing from its antidiagonal sum by 1, with no adjacent elements equal (constant-stress tilted 1 X 1 tilings).

The programs for A234876, there is no canonical definition to state claims against.
-/

/-! ## A234876.P16737258433196585328

`A234882(∑[n+1]+2)`
-/

namespace A234876.P16737258433196585328
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234882 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A234876.P16737258433196585328

/-! ## A234876.P17116090969620646986

`record[A234882(A133263(A008611(n)))]`
-/

namespace A234876.P17116090969620646986
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234882 (A133263 (A008611 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A234876.P17116090969620646986

/-! ## A234876.P5403216613493615306

`record[A234882(A133263(A008612(n)))]`
-/

namespace A234876.P5403216613493615306
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234882 (A133263 (A008612 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A234876.P5403216613493615306

/-! ## A234876.P5881815759904194934

`lcm(2, A234882(A000096(n+1)))`
-/

namespace A234876.P5881815759904194934
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A234882 (A000096 (n + 1)).toNat)

end

end A234876.P5881815759904194934

/-! ## A234876.P4422552525102997321

`A007318(C(3, n))*A234882(A000096(n+1))`
-/

namespace A234876.P4422552525102997321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 3 n) * A234882 (A000096 (n + 1)).toNat

end

end A234876.P4422552525102997321

/-!
# A234877: Number of (n+1) X (3+1) 0..4 arrays with every 2 X 2 subblock having its diagonal sum differing from its antidiagonal sum by 1, with no adjacent elements equal (constant-stress tilted 1 X 1 tilings).

The programs for A234877, there is no canonical definition to state claims against.
-/

/-! ## A234877.P15433792050924820813

`A234882(∑[n+2]+4)`
-/

namespace A234877.P15433792050924820813
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234882 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A234877.P15433792050924820813

/-! ## A234877.P14916509316183824316

`lcm(2, A234882(C(n+3, 2)+3))`
-/

namespace A234877.P14916509316183824316
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A234882 (Nat.choose (n + 3) 2 + 3))

end

end A234877.P14916509316183824316

/-! ## A234877.P11832929808868830960

`A234882(C(n+3, 2)+3)+A001489(n)+n`
-/

namespace A234877.P11832929808868830960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234882 (Nat.choose (n + 3) 2 + 3) + (A001489 n + (n : ℤ))

end

end A234877.P11832929808868830960

/-! ## A234877.P7546015496741430395

`lcm(2, A234882(A034856(n+2)))`
-/

namespace A234877.P7546015496741430395
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A234882 (A034856 (n + 2)).toNat)

end

end A234877.P7546015496741430395

/-! ## A234877.P8016641358068422272

`A014963(12*(n+1))*A234882(A034856(n+2))`
-/

namespace A234877.P8016641358068422272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (12 * (n + 1)) * A234882 (A034856 (n + 2)).toNat

end

end A234877.P8016641358068422272

/-!
# A234878: Number of (n+1) X (4+1) 0..4 arrays with every 2 X 2 subblock having its diagonal sum differing from its antidiagonal sum by 1, with no adjacent elements equal (constant-stress tilted 1 X 1 tilings).

The programs for A234878, there is no canonical definition to state claims against.
-/

/-! ## A234878.P1682088355487702996

`A234882(A374004(n+1))`
-/

namespace A234878.P1682088355487702996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234882 (A374004 (n + 1)).toNat

end

end A234878.P1682088355487702996

/-! ## A234878.P14122177856316089532

`A234882(A141214(n)+7)`
-/

namespace A234878.P14122177856316089532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234882 (A141214 n + 7).toNat

end

end A234878.P14122177856316089532

/-! ## A234878.P2976266369936634651

`A234882(A052905(n)+9)`
-/

namespace A234878.P2976266369936634651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234882 (A052905 n + 9).toNat

end

end A234878.P2976266369936634651

/-! ## A234878.P10914606995162724538

`A234882(A055999(n)+10)`
-/

namespace A234878.P10914606995162724538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234882 (A055999 n + 10).toNat

end

end A234878.P10914606995162724538

/-! ## A234878.P13099247327252082978

`A234882(A167614(n+2)+1)`
-/

namespace A234878.P13099247327252082978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234882 (A167614 (n + 2) + 1).toNat

end

end A234878.P13099247327252082978

/-!
# A234879: Number of (n+1) X (5+1) 0..4 arrays with every 2 X 2 subblock having its diagonal sum differing from its antidiagonal sum by 1, with no adjacent elements equal (constant-stress tilted 1 X 1 tilings).

The programs for A234879, there is no canonical definition to state claims against.
-/

/-! ## A234879.P9764854917031550087

`A234882(A374005(n+1))`
-/

namespace A234879.P9764854917031550087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234882 (A374005 (n + 1)).toNat

end

end A234879.P9764854917031550087

/-! ## A234879.P4716014236468463958

`A234882(A167499(n+3))`
-/

namespace A234879.P4716014236468463958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234882 (A167499 (n + 3)).toNat

end

end A234879.P4716014236468463958

/-! ## A234879.P9065790275548610506

`A234882(A167614(n+2)+n+6)`
-/

namespace A234879.P9065790275548610506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234882 (A167614 (n + 2) + (n + 6 : ℤ)).toNat

end

end A234879.P9065790275548610506

/-! ## A234879.P15099932131318001928

`A234882(A038722(Δ[A023545(n+1)]))`
-/

namespace A234879.P15099932131318001928
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234882 (A038722 (f1 (n + 1) - f1 n).toNat).toNat

end

end A234879.P15099932131318001928

/-! ## A234879.P7067864468633395992

`A234882(Δ[A023551(n+1)]-A005843(n))`
-/

namespace A234879.P7067864468633395992
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023551 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234882 (f1 (n + 1) - f1 n - A005843 n).toNat

end

end A234879.P7067864468633395992

/-!
# A234880: Number of (n+1) X (6+1) 0..4 arrays with every 2 X 2 subblock having its diagonal sum differing from its antidiagonal sum by 1, with no adjacent elements equal (constant-stress tilted 1 X 1 tilings).

The programs for A234880, there is no canonical definition to state claims against.
-/

/-! ## A234880.P7815163091488343052

`A234882(A374007(n+1))`
-/

namespace A234880.P7815163091488343052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234882 (A374007 (n + 1)).toNat

end

end A234880.P7815163091488343052

/-! ## A234880.P17153521561145614099

`A234882(A166136(n+4))`
-/

namespace A234880.P17153521561145614099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234882 (A166136 (n + 4)).toNat

end

end A234880.P17153521561145614099

/-! ## A234880.P6455379945397211067

`A234882(A000217(n+5)+6)`
-/

namespace A234880.P6455379945397211067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234882 (A000217 (n + 5) + 6).toNat

end

end A234880.P6455379945397211067

/-! ## A234880.P1508634862115618

`A234882(Δ[A023545(n+1)]+10)`
-/

namespace A234880.P1508634862115618
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234882 (f1 (n + 1) - f1 n + 10).toNat

end

end A234880.P1508634862115618

/-! ## A234880.P193133257581802133

`A234882(Δ[A023551(n+1)]+1)`
-/

namespace A234880.P193133257581802133
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023551 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234882 (f1 (n + 1) - f1 n + 1).toNat

end

end A234880.P193133257581802133

/-!
# A234881: Number of (n+1) X (7+1) 0..4 arrays with every 2 X 2 subblock having its diagonal sum differing from its antidiagonal sum by 1, with no adjacent elements equal (constant-stress tilted 1 X 1 tilings).

The programs for A234881, there is no canonical definition to state claims against.
-/

/-! ## A234881.P15519434563376187260

`A234882(A374008(n+1))`
-/

namespace A234881.P15519434563376187260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234882 (A374008 (n + 1)).toNat

end

end A234881.P15519434563376187260

/-! ## A234881.P6124153056467849935

`A234882(A167499(n+5)+2)`
-/

namespace A234881.P6124153056467849935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234882 (A167499 (n + 5) + 2).toNat

end

end A234881.P6124153056467849935

/-! ## A234881.P2180756701327968115

`A234882(A000096(n+5)+8)`
-/

namespace A234881.P2180756701327968115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234882 (A000096 (n + 5) + 8).toNat

end

end A234881.P2180756701327968115

/-! ## A234881.P17565188284677414379

`A234882(A000217(n+6)+7)`
-/

namespace A234881.P17565188284677414379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234882 (A000217 (n + 6) + 7).toNat

end

end A234881.P17565188284677414379

/-! ## A234881.P10717210504808836109

`A234882(A166136(n+4)+n+7)`
-/

namespace A234881.P10717210504808836109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234882 (A166136 (n + 4) + (n + 7 : ℤ)).toNat

end

end A234881.P10717210504808836109

/-!
# A234882: T(n,k) is the number of (n+1) X (k+1) 0..4 arrays with every 2 X 2 subblock having its diagonal sum differing from its antidiagonal sum by 1, with no adjacent elements equal (constant-stress tilted 1 X 1 tilings).

The programs for A234882, there is no canonical definition to state claims against.
-/

/-! ## A234882.P8703253305380139858

`A098427(n+1)+A033942(A209695(n+4))`
-/

namespace A234882.P8703253305380139858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098427 (n + 1) + A033942 (A209695 (n + 4)).toNat

end

end A234882.P8703253305380139858

/-!
# A234883: Number of (n+1) X (1+1) 0..5 arrays with every 2 X 2 subblock having its diagonal sum differing from its antidiagonal sum by 1, with no adjacent elements equal (constant-stress tilted 1 X 1 tilings).

The programs for A234883, there is no canonical definition to state claims against.
-/

/-! ## A234883.P15430223477593488908

`A234890(∑[n]+1)`
-/

namespace A234883.P15430223477593488908
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234890 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A234883.P15430223477593488908

/-! ## A234883.P8525296828460648618

`lcm(2, A234890(A000124(n)))`
-/

namespace A234883.P8525296828460648618
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A234890 (A000124 n).toNat)

end

end A234883.P8525296828460648618

/-! ## A234883.P2652888709152191760

`record[A234890(A246276(n+1))]`
-/

namespace A234883.P2652888709152191760
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234890 (A246276 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A234883.P2652888709152191760

/-! ## A234883.P12270939213676000072

`record[A234890(A256909(n)+1)]`
-/

namespace A234883.P12270939213676000072
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234890 (A256909 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A234883.P12270939213676000072

/-! ## A234883.P9425154986191406589

`record[A234890(A286245(n+1))]`
-/

namespace A234883.P9425154986191406589
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234890 (A286245 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A234883.P9425154986191406589

/-!
# A234884: Number of (n+1) X (2+1) 0..5 arrays with every 2 X 2 subblock having its diagonal sum differing from its antidiagonal sum by 1, with no adjacent elements equal (constant-stress tilted 1 X 1 tilings).

The programs for A234884, there is no canonical definition to state claims against.
-/

/-! ## A234884.P12726161217235450173

`A234890(∑[n+1]+2)`
-/

namespace A234884.P12726161217235450173
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234890 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A234884.P12726161217235450173

/-! ## A234884.P6271295881048978095

`lcm(2, A234890(A167499(n)-3))`
-/

namespace A234884.P6271295881048978095
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A234890 (A167499 n - 3).toNat)

end

end A234884.P6271295881048978095

/-! ## A234884.P12283476644145033230

`record[A234890(n+2)/A207628(n+1)]`
-/

namespace A234884.P12283476644145033230
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A234890 (n + 2) : ℚ) / (A207628 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A234884.P12283476644145033230

/-! ## A234884.P5364756543391770070

`record[root(A234890(n+2), A038730(n+1))]`
-/

namespace A234884.P5364756543391770070
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A234890 (n + 2) : ℝ) ^ (1 / (A038730 (n + 1) : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A234884.P5364756543391770070

/-! ## A234884.P3532938732106612830

`A234890(A167499(n)-3)%A234885(n+1)`
-/

namespace A234884.P3532938732106612830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A234890 (A167499 n - 3).toNat) (A234885 (n + 1))

end

end A234884.P3532938732106612830

/-!
# A234885: Number of (n+1) X (3+1) 0..5 arrays with every 2 X 2 subblock having its diagonal sum differing from its antidiagonal sum by 1, with no adjacent elements equal (constant-stress tilted 1 X 1 tilings).

The programs for A234885, there is no canonical definition to state claims against.
-/

/-! ## A234885.P2006079359680854831

`A234890(∑[n+2]+4)`
-/

namespace A234885.P2006079359680854831
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234890 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A234885.P2006079359680854831

/-! ## A234885.P6527015735875524852

`lcm(2, A234890(A167614(n+1)))`
-/

namespace A234885.P6527015735875524852
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A234890 (A167614 (n + 1)).toNat)

end

end A234885.P6527015735875524852

/-! ## A234885.P17422953832403978783

`and(-2, A234890(A055998(n)+6))`
-/

namespace A234885.P17422953832403978783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-2) (A234890 (A055998 n + 6).toNat)

end

end A234885.P17422953832403978783

/-! ## A234885.P14023644024519851781

`A234890(A167499(n)+n)+char[15]`
-/

namespace A234885.P14023644024519851781
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  15

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234890 (A167499 n + (n : ℤ)).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A234885.P14023644024519851781

/-! ## A234885.P2774669036568736322

`A234890(A167614(n+1))+A212619(n+1)`
-/

namespace A234885.P2774669036568736322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234890 (A167614 (n + 1)).toNat + A212619 (n + 1)

end

end A234885.P2774669036568736322

/-!
# A234886: Number of (n+1) X (4+1) 0..5 arrays with every 2 X 2 subblock having its diagonal sum differing from its antidiagonal sum by 1, with no adjacent elements equal (constant-stress tilted 1 X 1 tilings).

The programs for A234886, there is no canonical definition to state claims against.
-/

/-! ## A234886.P463946794181089598

`A234890(∑[n+3]+7)`
-/

namespace A234886.P463946794181089598
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234890 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A234886.P463946794181089598

/-! ## A234886.P14354363280099873785

`or(2, A234890(A374004(n+1)))-2`
-/

namespace A234886.P14354363280099873785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 2 (A234890 (A374004 (n + 1)).toNat) - 2

end

end A234886.P14354363280099873785

/-! ## A234886.P2286014917648352620

`lcm(2, A234890(A055998(n+2)))`
-/

namespace A234886.P2286014917648352620
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A234890 (A055998 (n + 2)).toNat)

end

end A234886.P2286014917648352620

/-!
# A234887: Number of (n+1) X (5+1) 0..5 arrays with every 2 X 2 subblock having its diagonal sum differing from its antidiagonal sum by 1, with no adjacent elements equal (constant-stress tilted 1 X 1 tilings).

The programs for A234887, there is no canonical definition to state claims against.
-/

/-! ## A234887.P18335124806656456459

`A234890(∑[n+4]+11)`
-/

namespace A234887.P18335124806656456459
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234890 (∑ j ∈ Finset.range (n + 1), f1 j + 11)

end

end A234887.P18335124806656456459

/-! ## A234887.P12054331033047060141

`lcm(2, A234890(A167499(n+3)))`
-/

namespace A234887.P12054331033047060141
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A234890 (A167499 (n + 3)).toNat)

end

end A234887.P12054331033047060141

/-!
# A234888: Number of (n+1) X (6+1) 0..5 arrays with every 2 X 2 subblock having its diagonal sum differing from its antidiagonal sum by 1, with no adjacent elements equal (constant-stress tilted 1 X 1 tilings).

The programs for A234888, there is no canonical definition to state claims against.
-/

/-! ## A234888.P18291924103279866581

`A234890(A374007(n+1))`
-/

namespace A234888.P18291924103279866581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234890 (A374007 (n + 1)).toNat

end

end A234888.P18291924103279866581

/-! ## A234888.P16726929330457872115

`A234890(A056115(n)+21)`
-/

namespace A234888.P16726929330457872115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234890 (A056115 n + 21).toNat

end

end A234888.P16726929330457872115

/-! ## A234888.P417483426180873792

`A234890(A167499(n+4)+1)`
-/

namespace A234888.P417483426180873792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234890 (A167499 (n + 4) + 1).toNat

end

end A234888.P417483426180873792

/-! ## A234888.P13032250868916268394

`A234890(A167614(n+4)+3)`
-/

namespace A234888.P13032250868916268394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234890 (A167614 (n + 4) + 3).toNat

end

end A234888.P13032250868916268394

/-! ## A234888.P16459030482077225804

`A234890(A000124(n+5)+5)`
-/

namespace A234888.P16459030482077225804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234890 (A000124 (n + 5) + 5).toNat

end

end A234888.P16459030482077225804

/-!
# A234889: Number of (n+1) X (7+1) 0..5 arrays with every 2 X 2 subblock having its diagonal sum differing from its antidiagonal sum by 1, with no adjacent elements equal (constant-stress tilted 1 X 1 tilings).

The programs for A234889, there is no canonical definition to state claims against.
-/

/-! ## A234889.P17930061572227301038

`A234890(A374008(n+1))`
-/

namespace A234889.P17930061572227301038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234890 (A374008 (n + 1)).toNat

end

end A234889.P17930061572227301038

/-! ## A234889.P5853676331682014767

`A234890(A056119(n)+28)`
-/

namespace A234889.P5853676331682014767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234890 (A056119 n + 28).toNat

end

end A234889.P5853676331682014767

/-! ## A234889.P14907910547140542424

`A234890(eq[11, A066657(n)])`
-/

namespace A234889.P14907910547140542424
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234890 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A234889.P14907910547140542424

/-! ## A234889.P14321106541343030639

`A234890(A167499(n+5)+2)`
-/

namespace A234889.P14321106541343030639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234890 (A167499 (n + 5) + 2).toNat

end

end A234889.P14321106541343030639

/-! ## A234889.P5834578658042046577

`A234890(A000124(n+6)+6)`
-/

namespace A234889.P5834578658042046577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234890 (A000124 (n + 6) + 6).toNat

end

end A234889.P5834578658042046577

/-!
# A234891: Number of (n+1) X (1+1) 0..6 arrays with every 2 X 2 subblock having its diagonal sum differing from its antidiagonal sum by 1, with no adjacent elements equal (constant-stress tilted 1 X 1 tilings).

The programs for A234891, there is no canonical definition to state claims against.
-/

/-! ## A234891.P3010970328378839826

`A234898(∑[n]+1)`
-/

namespace A234891.P3010970328378839826
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234898 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A234891.P3010970328378839826

/-! ## A234891.P9229924166279371464

`lcm(2, A234898(A000124(n)))`
-/

namespace A234891.P9229924166279371464
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A234898 (A000124 n).toNat)

end

end A234891.P9229924166279371464

/-! ## A234891.P1264339102226639445

`record[A234898(A056534(n+1))]`
-/

namespace A234891.P1264339102226639445
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234898 (A056534 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A234891.P1264339102226639445

/-! ## A234891.P17828138370071490749

`record[A234898(A286235(n+1))]`
-/

namespace A234891.P17828138370071490749
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234898 (A286235 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A234891.P17828138370071490749

/-! ## A234891.P13967128256873231372

`record[A010054(n)*A234898(n+1)]`
-/

namespace A234891.P13967128256873231372
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A234898 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A234891.P13967128256873231372

/-!
# A234892: Number of (n+1) X (2+1) 0..6 arrays with every 2 X 2 subblock having its diagonal sum differing from its antidiagonal sum by 1, with no adjacent elements equal (constant-stress tilted 1 X 1 tilings).

The programs for A234892, there is no canonical definition to state claims against.
-/

/-! ## A234892.P11096702734279221953

`A234898(∑[n+1]+2)`
-/

namespace A234892.P11096702734279221953
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234898 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A234892.P11096702734279221953

/-! ## A234892.P18207681365981421702

`record[A234898(A286235(n+1)+1)]`
-/

namespace A234892.P18207681365981421702
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234898 (A286235 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A234892.P18207681365981421702

/-! ## A234892.P9437017617435745688

`record[A234898(A135223(n+1)+2)]`
-/

namespace A234892.P9437017617435745688
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234898 (A135223 (n + 1) + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A234892.P9437017617435745688

/-! ## A234892.P11736893034497468107

`record[A010054(n)*A234898(n+2)]`
-/

namespace A234892.P11736893034497468107
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A234898 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A234892.P11736893034497468107

/-! ## A234892.P13714003203780826445

`record[gcd(A002262(n), A234898(n+2))]`
-/

namespace A234892.P13714003203780826445
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002262 n) (A234898 (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A234892.P13714003203780826445

/-!
# A234893: Number of (n+1) X (3+1) 0..6 arrays with every 2 X 2 subblock having its diagonal sum differing from its antidiagonal sum by 1, with no adjacent elements equal (constant-stress tilted 1 X 1 tilings).

The programs for A234893, there is no canonical definition to state claims against.
-/

/-! ## A234893.P1260566799439970820

`A234898(∑[n+2]+4)`
-/

namespace A234893.P1260566799439970820
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234898 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A234893.P1260566799439970820

/-! ## A234893.P11316821666945446434

`lcm(2, A234898(A167614(n+1)))`
-/

namespace A234893.P11316821666945446434
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A234898 (A167614 (n + 1)).toNat)

end

end A234893.P11316821666945446434

/-! ## A234893.P15656882166476852467

`record[A234898(n+4)/A126331(n)]`
-/

namespace A234893.P15656882166476852467
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A234898 (n + 4) : ℚ) / (A126331 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A234893.P15656882166476852467

/-! ## A234893.P8613105597782715990

`A234898(A167614(n+1))+A025466(n)`
-/

namespace A234893.P8613105597782715990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234898 (A167614 (n + 1)).toNat + A025466 n

end

end A234893.P8613105597782715990

/-! ## A234893.P11639849442377289070

`A234898(A167614(n+1))+A181838(n)`
-/

namespace A234893.P11639849442377289070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234898 (A167614 (n + 1)).toNat + A181838 n

end

end A234893.P11639849442377289070

/-!
# A234894: Number of (n+1) X (4+1) 0..6 arrays with every 2 X 2 subblock having its diagonal sum differing from its antidiagonal sum by 1, with no adjacent elements equal (constant-stress tilted 1 X 1 tilings).

The programs for A234894, there is no canonical definition to state claims against.
-/

/-! ## A234894.P1018484935317235974

`A234898(∑[n+3]+7)`
-/

namespace A234894.P1018484935317235974
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234898 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A234894.P1018484935317235974

/-! ## A234894.P1325870224812927765

`A023430(A057555(n+1))*A234898(A046691(n+2)+1)`
-/

namespace A234894.P1325870224812927765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023430 (A057555 (n + 1)).toNat * A234898 (A046691 (n + 2) + 1).toNat

end

end A234894.P1325870224812927765

/-!
# A234895: Number of (n+1) X (5+1) 0..6 arrays with every 2 X 2 subblock having its diagonal sum differing from its antidiagonal sum by 1, with no adjacent elements equal (constant-stress tilted 1 X 1 tilings).

The programs for A234895, there is no canonical definition to state claims against.
-/

/-! ## A234895.P5882568145105698884

`A234898(∑[n+4]+11)`
-/

namespace A234895.P5882568145105698884
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234898 (∑ j ∈ Finset.range (n + 1), f1 j + 11)

end

end A234895.P5882568145105698884

/-!
# A234896: Number of (n+1) X (6+1) 0..6 arrays with every 2 X 2 subblock having its diagonal sum differing from its antidiagonal sum by 1, with no adjacent elements equal (constant-stress tilted 1 X 1 tilings).

The programs for A234896, there is no canonical definition to state claims against.
-/

/-! ## A234896.P17498830829764096685

`A234898(A374007(n+1))`
-/

namespace A234896.P17498830829764096685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234898 (A374007 (n + 1)).toNat

end

end A234896.P17498830829764096685

/-! ## A234896.P2350764684289488112

`A234898(A166136(n+4))`
-/

namespace A234896.P2350764684289488112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234898 (A166136 (n + 4)).toNat

end

end A234896.P2350764684289488112

/-! ## A234896.P6188565431442685998

`A234898(A000124(n+5)+5)`
-/

namespace A234896.P6188565431442685998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234898 (A000124 (n + 5) + 5).toNat

end

end A234896.P6188565431442685998

/-! ## A234896.P11119842828850632444

`A234898(A000217(n+5)+6)`
-/

namespace A234896.P11119842828850632444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234898 (A000217 (n + 5) + 6).toNat

end

end A234896.P11119842828850632444

/-! ## A234896.P2290382878493653313

`A234898(eq[5, A002262(n)]+1)`
-/

namespace A234896.P2290382878493653313
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234898 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A234896.P2290382878493653313

/-!
# A234897: Number of (n+1) X (7+1) 0..6 arrays with every 2 X 2 subblock having its diagonal sum differing from its antidiagonal sum by 1, with no adjacent elements equal (constant-stress tilted 1 X 1 tilings).

The programs for A234897, there is no canonical definition to state claims against.
-/

/-! ## A234897.P11114907010505411257

`A234898(A374008(n+1))`
-/

namespace A234897.P11114907010505411257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234898 (A374008 (n + 1)).toNat

end

end A234897.P11114907010505411257

/-! ## A234897.P11234099596259727273

`A234898(A056119(n)+28)`
-/

namespace A234897.P11234099596259727273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234898 (A056119 n + 28).toNat

end

end A234897.P11234099596259727273

/-! ## A234897.P6607318973224160023

`A234898(eq[11, A066657(n)])`
-/

namespace A234897.P6607318973224160023
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234898 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A234897.P6607318973224160023

/-! ## A234897.P55775276625936441

`A234898(A167499(n+5)+2)`
-/

namespace A234897.P55775276625936441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234898 (A167499 (n + 5) + 2).toNat

end

end A234897.P55775276625936441

/-! ## A234897.P14655871474888357736

`A234898(eq[8, A131818(n+1)])`
-/

namespace A234897.P14655871474888357736
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234898 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A234897.P14655871474888357736

