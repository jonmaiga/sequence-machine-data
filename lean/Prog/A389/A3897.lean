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
import Seq.B000.C013
import Seq.B000.C014
import Seq.B000.C015
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C026
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C031
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C038
import Seq.B000.C039
import Seq.B000.C041
import Seq.B000.C042
import Seq.B000.C043
import Seq.B000.C045
import Seq.B000.C046
import Seq.B000.C047
import Seq.B000.C048
import Seq.B000.C049
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C010
import Seq.B001.C012
import Seq.B001.C013
import Seq.B001.C014
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C005
import Seq.B002.C007
import Seq.B002.C008
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C004
import Seq.B003.C005
import Seq.B003.C006
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
# A389704: a(n) = maximum k such that B(n) > B(n+1) > ... > B(n+k-1), where B = bigomega (A001222).

The programs for A389704, there is no canonical definition to state claims against.
-/

/-! ## A389704.P5925236421446107850

`gcd(A085045(n+1), A244237(n))`
-/

namespace A389704.P5925236421446107850
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A085045 (n + 1)) (A244237 n)

end

end A389704.P5925236421446107850

/-! ## A389704.P11925103938426884692

`gcd(A268303(n+1), A322310(n+1))`
-/

namespace A389704.P11925103938426884692
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A268303 (n + 1)) (A322310 (n + 1))

end

end A389704.P11925103938426884692

/-! ## A389704.P13890336975383215327

`gcd(A000034(n), A245092(A275279(n+1)))`
-/

namespace A389704.P13890336975383215327
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000034 n) (A245092 (A275279 (n + 1)).toNat)

end

end A389704.P13890336975383215327

/-! ## A389704.P4819116124358462663

`A040001(A049820(n+3)^A067742(3*(n+1)))`
-/

namespace A389704.P4819116124358462663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040001 (SequenceMachineLib.roundAway ((A049820 (n + 3) : ℚ) ^ (A067742 (3 * (n + 1)) : ℤ))).toNat

end

end A389704.P4819116124358462663

/-!
# A389706: Triangle read by rows: numerators of the almost-Riordan array ( 3*(7 - 4*x + sqrt(1 - 8*x))/(24 - 48*x + 16*x^2 + (3*x - 3)*(1 - 4*x - sqrt(1 - 8*x))) | 24/(24 - 48*x + 16*x^2 + (3*x - 3)*(1 - 4*x - sqrt(1 - 8*x))), (1 - 4*x - sqrt(1 - 8*x))/(8*x) ).

The programs for A389706, there is no canonical definition to state claims against.
-/

/-! ## A389706.P5333568079895402489

`A072088(A389739(n))`
-/

namespace A389706.P5333568079895402489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072088 (A389739 n).toNat

end

end A389706.P5333568079895402489

/-! ## A389706.P4508019206662717186

`A389739(n)%A136373(n+2)`
-/

namespace A389706.P4508019206662717186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A389739 n) (A136373 (n + 2))

end

end A389706.P4508019206662717186

/-! ## A389706.P14161524074151148055

`A389739(n)+A010051(A389729(n))`
-/

namespace A389706.P14161524074151148055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389739 n + A010051 (A389729 n).toNat

end

end A389706.P14161524074151148055

/-! ## A389706.P9469818409889003271

`A389739(A062399(n))`
-/

namespace A389706.P9469818409889003271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389739 (A062399 n).toNat

end

end A389706.P9469818409889003271

/-! ## A389706.P9116573347702574225

`A389739(A120126(n))`
-/

namespace A389706.P9116573347702574225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389739 (A120126 n).toNat

end

end A389706.P9116573347702574225

/-!
# A389712: a(n) is the least number k such that there is a set of n proper divisors of k whose sum is k, and no set of fewer than n proper divisors of k whose sum is k.

The programs for A389712, there is no canonical definition to state claims against.
-/

/-! ## A389712.P16417782155911951571

`filter[A249299(2*(n+1)), A378529(#)]`
-/

namespace A389712.P16417782155911951571
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249299 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A378529 (f1 j).toNat = 1) n)

end

end A389712.P16417782155911951571

/-! ## A389712.P2100423261215446780

`A337814(A362250(n+1))`
-/

namespace A389712.P2100423261215446780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337814 (A362250 (n + 1)).toNat

end

end A389712.P2100423261215446780

/-!
# A389713: a(1) = 3, a(2) = 5, a(n) is the smallest prime such that a(n) - a(n-1) + 1 is in the sequence.

The programs for A389713, there is no canonical definition to state claims against.
-/

/-! ## A389713.P3681246571117666262

`record[A270753(A331784(n+2))]`
-/

namespace A389713.P3681246571117666262
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270753 (A331784 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A389713.P3681246571117666262

/-!
# A389715: Smallest prime p such that p - 3^n + 1 is also a prime.

The programs for A389715, there is no canonical definition to state claims against.
-/

/-! ## A389715.P6818338984782304243

`A392099(n)+3^n-1`
-/

namespace A389715.P6818338984782304243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392099 n + (3 ^ n : ℤ) - 1

end

end A389715.P6818338984782304243

/-! ## A389715.P13269059794762116723

`A392099(n)+A024023(n)`
-/

namespace A389715.P13269059794762116723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392099 n + A024023 n

end

end A389715.P13269059794762116723

/-! ## A389715.P14867986809316438349

`A000040(A339899(2*n+3)+A055729(n))`
-/

namespace A389715.P14867986809316438349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A339899 (2 * n + 3) + A055729 n).toNat

end

end A389715.P14867986809316438349

/-! ## A389715.P12223216438063511600

`A020484(A003462(n))`
-/

namespace A389715.P12223216438063511600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020484 (A003462 n).toNat

end

end A389715.P12223216438063511600

/-!
# A389717: a(n) = Sum_{k=0..floor(4*n/11)} binomial(k,4*n-11*k).

The programs for A389717, the canonical program `A389717.P9087712425718201422` is in `Seq.B000.C049`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A389717 has offset 0).

The definition of A389717 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `∑{#}[floor(4*n/11), C(#, 4*n-11*#)]` (program `A389717.P9087712425718201422`, by `A389717.P9087712425718201422.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A389717.P8571219015309019389

`ogf((1-3x^3+3x^6-x^9)/(1-4x^3+6x^6-4x^9-x^11+x^12))`
-/

namespace A389717.P8571219015309019389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 0, 0, -3, 0, 0, 3, 0, 0, -1] [1, 0, 0, -4, 0, 0, 6, 0, 0, -4, 0, -1, 1] n

end

end A389717.P8571219015309019389

namespace A389717

/-- `ogf((1-3x^3+3x^6-x^9)/(1-4x^3+6x^6-4x^9-x^11+x^12))` -/
def P8571219015309019389.Spec : Prop :=
  ∀ n, P8571219015309019389.a n = A389717 n

end A389717

/-! ## A389717.P9087712425718201422

`∑{#}[floor(4*n/11), C(#, 4*n-11*#)]`

The canonical program, it is in `Seq.B000.C049`.
-/

namespace A389717

/-- `∑{#}[floor(4*n/11), C(#, 4*n-11*#)]` -/
def P9087712425718201422.Spec : Prop :=
  ∀ n, (P9087712425718201422.a n : ℤ) = A389717 n

theorem P9087712425718201422.correct : P9087712425718201422.Spec := by
  intro n
  simp only [A389717]

end A389717

/-! ## A389717.P13696898264518213577

`A243148(A084183(n))`
-/

namespace A389717.P13696898264518213577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243148 (A084183 n).toNat

end

end A389717.P13696898264518213577

namespace A389717

/-- `A243148(A084183(n))` -/
def P13696898264518213577.Spec : Prop :=
  ∀ n, P13696898264518213577.a n = A389717 n

end A389717

/-! ## A389717.P3139377133401289696

`A038711(n)%A281013(A052213(n+1))`
-/

namespace A389717.P3139377133401289696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A038711 n) (A281013 (A052213 (n + 1)).toNat)

end

end A389717.P3139377133401289696

namespace A389717

/-- `A038711(n)%A281013(A052213(n+1))` -/
def P3139377133401289696.Spec : Prop :=
  ∀ n, P3139377133401289696.a n = A389717 n

end A389717

/-! ## A389717.P14974600497692594225

`A241413(A263136(n))^A329070(3*n+2)`
-/

namespace A389717.P14974600497692594225
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A241413 (A263136 n).toNat : ℚ) ^ (A329070 (3 * n + 2) : ℤ)

end

end A389717.P14974600497692594225

namespace A389717

/-- `A241413(A263136(n))^A329070(3*n+2)` -/
def P14974600497692594225.Spec : Prop :=
  ∀ n, P14974600497692594225.a n = (A389717 n : ℚ)

end A389717

/-!
# A389718: a(n) = Sum_{k=0..floor(5*n/14)} binomial(k,5*n-14*k).

The programs for A389718, the canonical program `A389718.P12638441205400039821` is in `Seq.B000.C049`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A389718 has offset 0).

The definition of A389718 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `∑{#}[floor(5*n/14), C(#, 5*n-14*#)]` (program `A389718.P12638441205400039821`, by `A389718.P12638441205400039821.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A389718.P11005796327560175325

`ogf((1-4x^3+6x^6-4x^9+x^12)/(1-5x^3+10x^6-10x^9+5x^12-x^14-x^15))`
-/

namespace A389718.P11005796327560175325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 0, 0, -4, 0, 0, 6, 0, 0, -4, 0, 0, 1] [1, 0, 0, -5, 0, 0, 10, 0, 0, -10, 0, 0, 5, 0, -1, -1] n

end

end A389718.P11005796327560175325

namespace A389718

/-- `ogf((1-4x^3+6x^6-4x^9+x^12)/(1-5x^3+10x^6-10x^9+5x^12-x^14-x^15))` -/
def P11005796327560175325.Spec : Prop :=
  ∀ n, P11005796327560175325.a n = A389718 n

end A389718

/-! ## A389718.P12638441205400039821

`∑{#}[floor(5*n/14), C(#, 5*n-14*#)]`

The canonical program, it is in `Seq.B000.C049`.
-/

namespace A389718

/-- `∑{#}[floor(5*n/14), C(#, 5*n-14*#)]` -/
def P12638441205400039821.Spec : Prop :=
  ∀ n, (P12638441205400039821.a n : ℤ) = A389718 n

theorem P12638441205400039821.correct : P12638441205400039821.Spec := by
  intro n
  simp only [A389718]

end A389718

/-! ## A389718.P10180963759132960754

`A373143(char[comp[xor(n, 2*n)]]+2^n)`
-/

namespace A389718.P10180963759132960754
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor n (2 * n)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373143 ((if ∃ j, f1 j = n then 1 else 0) + 2 ^ n)

end

end A389718.P10180963759132960754

namespace A389718

/-- `A373143(char[comp[xor(n, 2*n)]]+2^n)` -/
def P10180963759132960754.Spec : Prop :=
  ∀ n, P10180963759132960754.a n = A389718 n

end A389718

/-! ## A389718.P15501809555883919595

`A079944(A189914(n))`
-/

namespace A389718.P15501809555883919595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079944 (A189914 n).toNat

end

end A389718.P15501809555883919595

namespace A389718

/-- `A079944(A189914(n))` -/
def P15501809555883919595.Spec : Prop :=
  ∀ n, P15501809555883919595.a n = A389718 n

end A389718

/-! ## A389718.P416695095165136876

`A351725(A005822(n))`
-/

namespace A389718.P416695095165136876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351725 (A005822 n).toNat

end

end A389718.P416695095165136876

namespace A389718

/-- `A351725(A005822(n))` -/
def P416695095165136876.Spec : Prop :=
  ∀ n, P416695095165136876.a n = A389718 n

end A389718

/-!
# A389721: a(n) is the greatest prime > a(n-1) obtained by inserting a single digit anywhere in its string of digits (including at the beginning or end), starting with a(1) = 1.

The programs for A389721, there is no canonical definition to state claims against.
-/

/-! ## A389721.P3686698881337859159

`A389720(a(n-1))` with `a(0)=1`
-/

namespace A389721.P3686698881337859159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A389720 (a (n - 1)).toNat

end

end A389721.P3686698881337859159

/-!
# A389722: a(n) is the greatest prime > a(n-1) obtained by inserting a single digit anywhere in its string of digits (including at the beginning or end), starting with a(1) = 2.

The programs for A389722, there is no canonical definition to state claims against.
-/

/-! ## A389722.P14741824356363823493

`A389720(a(n-1))` with `a(0)=2`
-/

namespace A389722.P14741824356363823493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A389720 (a (n - 1)).toNat

end

end A389722.P14741824356363823493

/-!
# A389723: a(n) is the greatest prime > a(n-1) obtained by inserting a single digit anywhere in its string of digits (including at the beginning or end), starting with a(1) = 3.

The programs for A389723, there is no canonical definition to state claims against.
-/

/-! ## A389723.P5502679297197622684

`A389720(a(n-1))` with `a(0)=3`
-/

namespace A389723.P5502679297197622684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  A389720 (a (n - 1)).toNat

end

end A389723.P5502679297197622684

/-!
# A389724: a(n) is the greatest prime > a(n-1) obtained by inserting a single digit anywhere in its string of digits (including at the beginning or end), starting with a(1) = 4.

The programs for A389724, there is no canonical definition to state claims against.
-/

/-! ## A389724.P3037293172996796239

`A389720(a(n-1))` with `a(0)=4`
-/

namespace A389724.P3037293172996796239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [4] fun n a =>
  A389720 (a (n - 1)).toNat

end

end A389724.P3037293172996796239

/-!
# A389725: a(n) is the greatest prime > a(n-1) obtained by inserting a single digit anywhere in its string of digits (including at the beginning or end), starting with a(1) = 5.

The programs for A389725, there is no canonical definition to state claims against.
-/

/-! ## A389725.P4207050356604327581

`A389720(a(n-1))` with `a(0)=5`
-/

namespace A389725.P4207050356604327581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [5] fun n a =>
  A389720 (a (n - 1)).toNat

end

end A389725.P4207050356604327581

/-!
# A389726: a(n) is the greatest prime > a(n-1) obtained by inserting a single digit anywhere in its string of digits (including at the beginning or end), starting with a(1) = 6.

The programs for A389726, there is no canonical definition to state claims against.
-/

/-! ## A389726.P1102147548382035139

`A389720(a(n-1))` with `a(0)=6`
-/

namespace A389726.P1102147548382035139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [6] fun n a =>
  A389720 (a (n - 1)).toNat

end

end A389726.P1102147548382035139

/-!
# A389727: a(n) is the greatest prime > a(n-1) obtained by inserting a single digit anywhere in its string of digits (including at the beginning or end), starting with a(1) = 7.

The programs for A389727, there is no canonical definition to state claims against.
-/

/-! ## A389727.P16215458360150484328

`A389720(a(n-1))` with `a(0)=7`
-/

namespace A389727.P16215458360150484328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [7] fun n a =>
  A389720 (a (n - 1)).toNat

end

end A389727.P16215458360150484328

/-!
# A389728: Number of positions of the 15-puzzle at a distance of n multi-tile moves from an initial state with the empty square in one of the corners.

The programs for A389728, there is no canonical definition to state claims against.
-/

/-! ## A389728.P8137788045700399903

`A154122(3*a(n-1))` with `a(0)=1, a(1)=6`
-/

namespace A389728.P8137788045700399903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 6] fun n a =>
  A154122 (3 * a (n - 1)).toNat

end

end A389728.P8137788045700399903

/-! ## A389728.P11105589712660529602

`A130341(A099856(n))`
-/

namespace A389728.P11105589712660529602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130341 (A099856 n).toNat

end

end A389728.P11105589712660529602

/-! ## A389728.P1165456748135914414

`A154449(A048473(n)+floor(n^(1/5)))`
-/

namespace A389728.P1165456748135914414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154449 (A048473 n + ⌊(n : ℝ) ^ ((1 : ℚ) / 5 : ℝ)⌋).toNat

end

end A389728.P1165456748135914414

/-!
# A389729: Number of positions of the 8 X 2 variant of the 15-puzzle at a distance of n multi-tile moves from an initial state with the empty square in one of the corners.

The programs for A389729, there is no canonical definition to state claims against.
-/

/-! ## A389729.P3645973789442861828

`A340518(A123752(n))`
-/

namespace A389729.P3645973789442861828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340518 (A123752 n).toNat

end

end A389729.P3645973789442861828

/-!
# A389731: Standard composition numbers of finite arithmetic progressions.

The programs for A389731, there is no canonical definition to state claims against.
-/

/-! ## A389731.P13901110224697097766

`comp[A389735(n+1)]`
-/

namespace A389731.P13901110224697097766
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389735 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A389731.P13901110224697097766

/-! ## A389731.P4887817322232212998

`lt[A073993(A335465(n)), A335458(2*n)]`
-/

namespace A389731.P4887817322232212998
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073993 (A335465 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335458 (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A389731.P4887817322232212998

/-! ## A389731.P1083459247219813713

`lt[A001754(A335465(n)), A138125(n+5)]`
-/

namespace A389731.P1083459247219813713
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001754 (A335465 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138125 (n + 5)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A389731.P1083459247219813713

/-! ## A389731.P12531995097930568779

`eq[A335465(n), A335465(A299203(3*n+1))]`
-/

namespace A389731.P12531995097930568779
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335465 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335465 (A299203 (3 * n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A389731.P12531995097930568779

/-!
# A389732: Standard composition numbers of integer compositions whose 0-prepended first differences are all equal.

The programs for A389732, there is no canonical definition to state claims against.
-/

/-! ## A389732.P7531817511985914431

`comp[A389736(n+1)]`
-/

namespace A389732.P7531817511985914431
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389736 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A389732.P7531817511985914431

/-! ## A389732.P10242558444985199299

`∩[A302648(n+1), A006998(n)]`
-/

namespace A389732.P10242558444985199299
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302648 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006998 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A389732.P10242558444985199299

/-! ## A389732.P2899005296201067891

`A265537(A204656(n+1))`
-/

namespace A389732.P2899005296201067891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265537 (A204656 (n + 1)).toNat

end

end A389732.P2899005296201067891

/-! ## A389732.P8981668611155191857

`eq[A227140(n), A277822(n)]`
-/

namespace A389732.P8981668611155191857
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227140 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277822 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A389732.P8981668611155191857

/-! ## A389732.P3590140764265169874

`eq[A074206(n), A238628(n+1)]`
-/

namespace A389732.P3590140764265169874
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074206 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238628 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A389732.P3590140764265169874

/-!
# A389733: Irregular triangle read by rows where row n is the 0-prepended first differences of the n-th composition in standard order.

The programs for A389733, there is no canonical definition to state claims against.
-/

/-! ## A389733.P1753395313159730027

`A005171(A318728(n+4))*A391983(n+1)`
-/

namespace A389733.P1753395313159730027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005171 (A318728 (n + 4)).toNat * A391983 (n + 1)

end

end A389733.P1753395313159730027

/-! ## A389733.P11706070182673741536

`A391983(n+1)%A053632(A391980(n+1))`
-/

namespace A389733.P11706070182673741536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A391983 (n + 1)) (A053632 (A391980 (n + 1)).toNat)

end

end A389733.P11706070182673741536

/-! ## A389733.P7371124914437388153

`A391983(n+1)-A206499(A317533(n+1))`
-/

namespace A389733.P7371124914437388153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391983 (n + 1) - A206499 (A317533 (n + 1)).toNat

end

end A389733.P7371124914437388153

/-!
# A389734: Standard composition numbers of compositions with all distinct 0-prepended first differences.

The programs for A389734, there is no canonical definition to state claims against.
-/

/-! ## A389734.P16190481437428953344

`comp[A389738(n+1)]`
-/

namespace A389734.P16190481437428953344
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389738 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A389734.P16190481437428953344

/-!
# A389735: Standard composition numbers of integer compositions that do not comprise a finite arithmetic progression.

The programs for A389735, there is no canonical definition to state claims against.
-/

/-! ## A389735.P5719496428705290014

`comp[A389731(n+1)]`
-/

namespace A389735.P5719496428705290014
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389731 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A389735.P5719496428705290014

/-! ## A389735.P9582050114915214619

`comp[record[A389731(A366286(n))]]`
-/

namespace A389735.P9582050114915214619
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389731 (A366286 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A389735.P9582050114915214619

/-! ## A389735.P14757005721309222211

`lt[A335450(2*n+1), (2-A335465(n))²]`
-/

namespace A389735.P14757005721309222211
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335450 (2 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - A335465 n) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A389735.P14757005721309222211

/-! ## A389735.P13746241657048143269

`lt[A335550(A005117(n+1)), A335465(n)]`
-/

namespace A389735.P13746241657048143269
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335550 (A005117 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335465 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A389735.P13746241657048143269

/-! ## A389735.P18294501721116660297

`lt[A111349(n+1), A305051(A335465(n))]`
-/

namespace A389735.P18294501721116660297
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111349 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305051 (A335465 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A389735.P18294501721116660297

/-!
# A389736: Standard composition numbers of integer compositions whose 0-prepended first differences are not all equal.

The programs for A389736, there is no canonical definition to state claims against.
-/

/-! ## A389736.P7675295338669315890

`comp[A389732(n+1)]`
-/

namespace A389736.P7675295338669315890
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389732 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A389736.P7675295338669315890

/-!
# A389737: Number of subsets of {1..n} forming a finite arithmetic progression.

The programs for A389737, the canonical program `A389737.P8491295870997957256` is in `Seq.B000.C049`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A389737 has offset 0).

The definition of A389737 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A389737.P8491295870997957256

`∑[∑[∑{d}[n-1, gcd(n, #)]]]`

The canonical program, it is in `Seq.B000.C049`.
-/

namespace A389737

/-- `∑[∑[∑{d}[n-1, gcd(n, #)]]]` -/
def P8491295870997957256.Spec : Prop :=
  ∀ n, (P8491295870997957256.a n : ℤ) = A389737 n

theorem P8491295870997957256.correct : P8491295870997957256.Spec := by
  intro n
  simp only [A389737]

end A389737

/-! ## A389737.P4114297765814621596

`∑[∑[∑{d}[n-1, ceil(1/#)]]]`
-/

namespace A389737.P4114297765814621596
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f3 n).natAbs, ⌈1 / (d : ℚ)⌉

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A389737.P4114297765814621596

namespace A389737

/-- `∑[∑[∑{d}[n-1, ceil(1/#)]]]` -/
def P4114297765814621596.Spec : Prop :=
  ∀ n, P4114297765814621596.a n = A389737 n

end A389737

/-! ## A389737.P5012649849850167222

`∑[∑[∏{e}[1-n, #+1]]]-n`
-/

namespace A389737.P5012649849850167222
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (n : ℤ)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f3 n).natAbs, (Nat.factorization (f3 n).natAbs p + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - (n : ℤ)

end

end A389737.P5012649849850167222

namespace A389737

/-- `∑[∑[∏{e}[1-n, #+1]]]-n` -/
def P5012649849850167222.Spec : Prop :=
  ∀ n, P5012649849850167222.a n = A389737 n

end A389737

/-! ## A389737.P1682954108798207887

`∑[A350102(n)]-n`
-/

namespace A389737.P1682954108798207887
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350102 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (n : ℤ)

end

end A389737.P1682954108798207887

namespace A389737

/-- `∑[A350102(n)]-n` -/
def P1682954108798207887.Spec : Prop :=
  ∀ n, P1682954108798207887.a n = A389737 n

end A389737

/-! ## A389737.P8912992503824073856

`∑[A006218(abs(1-n))]+n`
-/

namespace A389737.P8912992503824073856
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006218 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ)

end

end A389737.P8912992503824073856

namespace A389737

/-- `∑[A006218(abs(1-n))]+n` -/
def P8912992503824073856.Spec : Prop :=
  ∀ n, P8912992503824073856.a n = A389737 n

end A389737

/-! ## A389737.P4152593769253802766

`A051336(n+1)-A006218(n)`
-/

namespace A389737.P4152593769253802766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051336 (n + 1) - A006218 n

end

end A389737.P4152593769253802766

namespace A389737

/-- `A051336(n+1)-A006218(n)` -/
def P4152593769253802766.Spec : Prop :=
  ∀ n, P4152593769253802766.a n = A389737 n

end A389737

/-! ## A389737.P17912112613231846657

`∑[A006590(n+1)-n]-A006218(n)`
-/

namespace A389737.P17912112613231846657
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006590 (n + 1) - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A006218 n

end

end A389737.P17912112613231846657

namespace A389737

/-- `∑[A006590(n+1)-n]-A006218(n)` -/
def P17912112613231846657.Spec : Prop :=
  ∀ n, P17912112613231846657.a n = A389737 n

end A389737

/-! ## A389737.P8224521652688476926

`A350104(n)-n`
-/

namespace A389737.P8224521652688476926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350104 n - (n : ℤ)

end

end A389737.P8224521652688476926

namespace A389737

/-- `A350104(n)-n` -/
def P8224521652688476926.Spec : Prop :=
  ∀ n, P8224521652688476926.a n = A389737 n

end A389737

/-! ## A389737.P9671330336574805632

`∑[A054519(log2(A011782(n)))]`
-/

namespace A389737.P9671330336574805632
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054519 (SequenceMachineLib.roundAway (Real.logb 2 (A011782 n : ℝ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A389737.P9671330336574805632

namespace A389737

/-- `∑[A054519(log2(A011782(n)))]` -/
def P9671330336574805632.Spec : Prop :=
  ∀ n, P9671330336574805632.a n = A389737 n

end A389737

/-!
# A389738: Standard composition numbers of compositions without all distinct 0-prepended first differences.

The programs for A389738, there is no canonical definition to state claims against.
-/

/-! ## A389738.P16462183061145548548

`comp[A389734(n+1)]`
-/

namespace A389738.P16462183061145548548
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389734 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A389738.P16462183061145548548

/-! ## A389738.P13530312696887023466

`lt[A124769(A318677(2*(n+1))), A124769(n)]`
-/

namespace A389738.P13530312696887023466
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124769 (A318677 (2 * (n + 1))).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124769 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A389738.P13530312696887023466

/-!
# A389742: Number of integer compositions of n whose 0-prepended first differences are not all equal.

The programs for A389742, there is no canonical definition to state claims against.
-/

/-! ## A389742.P5696437384096029464

`A389920(n)+A056823(n)`
-/

namespace A389742.P5696437384096029464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389920 n + A056823 n

end

end A389742.P5696437384096029464

/-! ## A389742.P5973181520715057890

`A011782(n)-A007862(A028310(n))`
-/

namespace A389742.P5973181520715057890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 n - A007862 (A028310 n).toNat

end

end A389742.P5973181520715057890

/-! ## A389742.P3336308771620163540

`A011782(n)+A389920(n)-A000041(n)`
-/

namespace A389742.P3336308771620163540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 n + (A389920 n - A000041 n)

end

end A389742.P3336308771620163540

/-! ## A389742.P16507046090022538527

`A011782(n)-A375001(A005940(2*n+5))`
-/

namespace A389742.P16507046090022538527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 n - A375001 (A005940 (2 * n + 5)).toNat

end

end A389742.P16507046090022538527

/-! ## A389742.P4976624505674118507

`A011782(n)-A296977(A007662(n))`
-/

namespace A389742.P4976624505674118507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 n - A296977 (A007662 n).toNat

end

end A389742.P4976624505674118507

/-!
# A389743: Number of integer compositions of n whose first differences are not all distinct.

The programs for A389743, there is no canonical definition to state claims against.
-/

/-! ## A389743.P12897076601922559409

`ceil(2^(n-1))-A325545(n)`
-/

namespace A389743.P12897076601922559409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉ - A325545 n

end

end A389743.P12897076601922559409

/-! ## A389743.P8210320141126509789

`abs(A011782(n)-A325545(n))`
-/

namespace A389743.P8210320141126509789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A011782 n - A325545 n|

end

end A389743.P8210320141126509789

/-! ## A389743.P9932647890810880035

`A172992(A342340(n))`
-/

namespace A389743.P9932647890810880035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172992 (A342340 n).toNat

end

end A389743.P9932647890810880035

/-!
# A389744: Number of integer compositions of n whose 0-prepended first differences are not all distinct.

The programs for A389744, there is no canonical definition to state claims against.
-/

/-! ## A389744.P6207196593314430479

`Δ[floor(2^(n-1))]-A389601(n)`
-/

namespace A389744.P6207196593314430479
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A389601 n

end

end A389744.P6207196593314430479

/-!
# A389750: Triangle read by rows: denominators of the almost-Riordan array ( (3 - 3*x)/(2*x^2 - 6*x + 3) | 3/(2*x^2 - 6*x + 3), (1 - 3*x - sqrt(5*x^2 - 6*x + 1))/(2*x) ).

The programs for A389750, there is no canonical definition to state claims against.
-/

/-! ## A389750.P2813899972467634181

`A389707(A365659(2*n+1)+A144199(n+4))`
-/

namespace A389750.P2813899972467634181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389707 (A365659 (2 * n + 1) + A144199 (n + 4)).toNat

end

end A389750.P2813899972467634181

/-!
# A389751: Numbers k such that k^3 can be represented as the sum of k consecutive nonprimes.

The programs for A389751, there is no canonical definition to state claims against.
-/

/-! ## A389751.P7769707661858365411

`ceil(sqrt(A390586(n+1)))`
-/

namespace A389751.P7769707661858365411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (A390586 (n + 1) : ℝ)⌉

end

end A389751.P7769707661858365411

/-!
# A389752: Numbers in A059404 that exceed the square of their squarefree kernel.

The programs for A389752, there is no canonical definition to state claims against.
-/

/-! ## A389752.P7445012786962112248

`∪[A359280(n+1), A366250(n+1)]`
-/

namespace A389752.P7445012786962112248
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359280 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366250 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A389752.P7445012786962112248

/-! ## A389752.P6291415818564157572

`∪[A359280(n+1), A389753(n+1)]`
-/

namespace A389752.P6291415818564157572
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359280 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389753 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A389752.P6291415818564157572

/-! ## A389752.P13369025369987059527

`∪[A389753(n+1), A389864(n+1)]`
-/

namespace A389752.P13369025369987059527
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389753 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389864 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A389752.P13369025369987059527

/-! ## A389752.P975044433834000461

`filter[A059404(n+1), A380439(#)]`
-/

namespace A389752.P975044433834000461
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059404 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A380439 (f1 j).toNat = 1) n)

end

end A389752.P975044433834000461

/-! ## A389752.P3221334697463394159

`filter[A059404(n+1), A380440(#)]`
-/

namespace A389752.P3221334697463394159
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059404 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A380440 (f1 j).toNat = 1) n)

end

end A389752.P3221334697463394159

/-! ## A389752.P1738517147336458182

`∩[A059172(n+1), A059404(n+1)]`
-/

namespace A389752.P1738517147336458182
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059172 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059404 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A389752.P1738517147336458182

/-! ## A389752.P635140526381312887

`∩[A059404(n+1), A341645(n+1)]`
-/

namespace A389752.P635140526381312887
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059404 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341645 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A389752.P635140526381312887

/-! ## A389752.P1570762515252561251

`∩[A059404(n+1), A370266(n+1)]`
-/

namespace A389752.P1570762515252561251
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059404 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370266 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A389752.P1570762515252561251

/-! ## A389752.P14918548424851871414

`∩[A059404(n+1), A389528(n+1)]`
-/

namespace A389752.P14918548424851871414
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059404 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389528 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A389752.P14918548424851871414

/-!
# A389753: Nonsquarefree numbers that are not perfect powers that exceed the square of their squarefree kernel.

The programs for A389753, there is no canonical definition to state claims against.
-/

/-! ## A389753.P1653497415741747223

`∪[A052486(n+1), A366250(n+1)]`
-/

namespace A389753.P1653497415741747223
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052486 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366250 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A389753.P1653497415741747223

/-! ## A389753.P14724798930765769210

`filter[A391415(n+1), A380439(#)]`
-/

namespace A389753.P14724798930765769210
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391415 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A380439 (f1 j).toNat = 1) n)

end

end A389753.P14724798930765769210

/-! ## A389753.P16268829524038333054

`filter[A391415(n+1), A380440(#)]`
-/

namespace A389753.P16268829524038333054
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391415 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A380440 (f1 j).toNat = 1) n)

end

end A389753.P16268829524038333054

/-! ## A389753.P18370056005630863826

`∩[A059172(n+1), A391415(n+1)]`
-/

namespace A389753.P18370056005630863826
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059172 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391415 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A389753.P18370056005630863826

/-! ## A389753.P8337014523565580923

`∩[A341645(n+1), A391415(n+1)]`
-/

namespace A389753.P8337014523565580923
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341645 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391415 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A389753.P8337014523565580923

/-! ## A389753.P12213425174737782061

`∩[A370266(n+1), A391415(n+1)]`
-/

namespace A389753.P12213425174737782061
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370266 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391415 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A389753.P12213425174737782061

/-! ## A389753.P17582104721062489447

`∩[A389528(n+1), A391415(n+1)]`
-/

namespace A389753.P17582104721062489447
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389528 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391415 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A389753.P17582104721062489447

/-! ## A389753.P5546960561357828784

`∩[A389752(n+1), A391415(n+1)]`
-/

namespace A389753.P5546960561357828784
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389752 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391415 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A389753.P5546960561357828784

/-! ## A389753.P7122728952217253961

`filter[A303946(n+1), A380439(#)]`
-/

namespace A389753.P7122728952217253961
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303946 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A380439 (f1 j).toNat = 1) n)

end

end A389753.P7122728952217253961

/-! ## A389753.P3370765570127495150

`filter[A303946(n+1), A380440(#)]`
-/

namespace A389753.P3370765570127495150
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303946 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A380440 (f1 j).toNat = 1) n)

end

end A389753.P3370765570127495150

/-! ## A389753.P8977667190876522531

`∩[A059172(n+1), A303946(n+1)]`
-/

namespace A389753.P8977667190876522531
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059172 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303946 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A389753.P8977667190876522531

/-! ## A389753.P13084633900634973696

`∩[A303946(n+1), A341645(n+1)]`
-/

namespace A389753.P13084633900634973696
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303946 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341645 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A389753.P13084633900634973696

/-! ## A389753.P1813852540359758156

`∩[A303946(n+1), A370266(n+1)]`
-/

namespace A389753.P1813852540359758156
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303946 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370266 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A389753.P1813852540359758156

/-! ## A389753.P2044038854198614596

`∩[A303946(n+1), A389528(n+1)]`
-/

namespace A389753.P2044038854198614596
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303946 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389528 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A389753.P2044038854198614596

/-! ## A389753.P727290439996459292

`∩[A303946(n+1), A389752(n+1)]`
-/

namespace A389753.P727290439996459292
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303946 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389752 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A389753.P727290439996459292

/-! ## A389753.P15853122134481286058

`filter[A106543(n+1), A380439(#)]`
-/

namespace A389753.P15853122134481286058
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106543 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A380439 (f1 j).toNat = 1) n)

end

end A389753.P15853122134481286058

/-! ## A389753.P17546907605952961730

`filter[A106543(n+1), A380440(#)]`
-/

namespace A389753.P17546907605952961730
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106543 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A380440 (f1 j).toNat = 1) n)

end

end A389753.P17546907605952961730

/-! ## A389753.P9172576198481337617

`∩[A059172(n+1), A106543(n+1)]`
-/

namespace A389753.P9172576198481337617
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059172 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106543 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A389753.P9172576198481337617

/-! ## A389753.P12478703316867305811

`∩[A106543(n+1), A341645(n+1)]`
-/

namespace A389753.P12478703316867305811
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106543 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341645 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A389753.P12478703316867305811

/-! ## A389753.P3892823926260379538

`∩[A106543(n+1), A370266(n+1)]`
-/

namespace A389753.P3892823926260379538
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106543 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370266 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A389753.P3892823926260379538

/-!
# A389756: Number of (undirected) Hamiltonian paths on the first n cells of the 6 X ceiling(n/6) knight graph.

The programs for A389756, there is no canonical definition to state claims against.
-/

/-! ## A389756.P4581096391795177433

`A010816(A330099(3*n+1)+n)`
-/

namespace A389756.P4581096391795177433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010816 (A330099 (3 * n + 1) + (n : ℤ)).toNat

end

end A389756.P4581096391795177433

/-! ## A389756.P1835548676090706634

`A129609(C(A035468(3*n+4), 2*n))`
-/

namespace A389756.P1835548676090706634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129609 (Nat.choose (A035468 (3 * n + 4)).toNat (2 * n))

end

end A389756.P1835548676090706634

/-! ## A389756.P4612519572954413781

`A007092(C(floor((n²+6)/12), A007092(n)))`
-/

namespace A389756.P4612519572954413781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007092 (Nat.choose ⌊(n ^ 2 + 6 : ℚ) / 12⌋.toNat (A007092 n).toNat)

end

end A389756.P4612519572954413781

/-! ## A389756.P3053810531026032282

`A154725(A357706(2*n+3)-a(n-1))` with `a(0)=1`
-/

namespace A389756.P3053810531026032282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A154725 (A357706 (2 * n + 3) - a (n - 1)).toNat

end

end A389756.P3053810531026032282

/-! ## A389756.P1910708488375041170

`A089851(C(A345163(n), A265509(n)))`
-/

namespace A389756.P1910708488375041170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089851 (Nat.choose (A345163 n).toNat (A265509 n).toNat)

end

end A389756.P1910708488375041170

/-!
# A389760: Number of (undirected) Hamiltonian paths on the 8 X n knight graph.

The programs for A389760, there is no canonical definition to state claims against.
-/

/-! ## A389760.P71253686736410585

`A389758(8*(n+1))`
-/

namespace A389760.P71253686736410585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389758 (8 * (n + 1))

end

end A389760.P71253686736410585

/-! ## A389760.P11285963000545060802

`A390833(A374009(n+1))`
-/

namespace A389760.P11285963000545060802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390833 (A374009 (n + 1)).toNat

end

end A389760.P11285963000545060802

/-!
# A389761: Irregular triangle read by rows: T(n,k) is the number of noncomposite numbers in the k-th 2-dense sublist of divisors of n, with n >= 1, k >= 1.

The programs for A389761, there is no canonical definition to state claims against.
-/

/-! ## A389761.P935361012069750033

`A384222(n+1)-A389762(n+1)`
-/

namespace A389761.P935361012069750033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A384222 (n + 1) - A389762 (n + 1)

end

end A389761.P935361012069750033

/-! ## A389761.P8997688798819627879

`A367771(xor(A010059(n+2), A194354(n+4)))`
-/

namespace A389761.P8997688798819627879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367771 (Int.xor (A010059 (n + 2)) (A194354 (n + 4))).toNat

end

end A389761.P8997688798819627879

/-! ## A389761.P2203754035469418379

`and(A051064(2*(n+2)), A127250(A000069(3*(n+1))))`
-/

namespace A389761.P2203754035469418379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A051064 (2 * (n + 2))) (A127250 (A000069 (3 * (n + 1))).toNat)

end

end A389761.P2203754035469418379

/-!
# A389762: Irregular triangle read by rows: T(n,k) is the number of composite numbers in the k-th 2-dense sublist of divisors of n, with n >= 1, k >= 1.

The programs for A389762, there is no canonical definition to state claims against.
-/

/-! ## A389762.P12176139700208629490

`A384222(n+1)-A389761(n+1)`
-/

namespace A389762.P12176139700208629490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A384222 (n + 1) - A389761 (n + 1)

end

end A389762.P12176139700208629490

/-! ## A389762.P7850758467868611708

`A351439(A075377(n+1))`
-/

namespace A389762.P7850758467868611708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351439 (A075377 (n + 1)).toNat

end

end A389762.P7850758467868611708

/-! ## A389762.P13938979896271995310

`A354099(A324521(n+1))^A354130(n)`
-/

namespace A389762.P13938979896271995310
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A354099 (A324521 (n + 1)).toNat : ℚ) ^ (A354130 n : ℤ)

end

end A389762.P13938979896271995310

/-! ## A389762.P5523172756709471689

`A295857(n)%A337243(A322605(n+1))`
-/

namespace A389762.P5523172756709471689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A295857 n) (A337243 (A322605 (n + 1)).toNat)

end

end A389762.P5523172756709471689

/-! ## A389762.P8429083361513083489

`A024362(A058952(n+1)-A207827(n+3))`
-/

namespace A389762.P8429083361513083489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024362 (A058952 (n + 1) - A207827 (n + 3)).toNat

end

end A389762.P8429083361513083489

/-!
# A389763: First differences of 2-dense numbers.

The programs for A389763, there is no canonical definition to state claims against.
-/

/-! ## A389763.P11493135341794431541

`A174973(n+2)-A174973(n+1)`
-/

namespace A389763.P11493135341794431541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174973 (n + 2) - A174973 (n + 1)

end

end A389763.P11493135341794431541

/-! ## A389763.P3900213059477023829

`Δ[A174973(n+1)]`
-/

namespace A389763.P3900213059477023829
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174973 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A389763.P3900213059477023829

/-! ## A389763.P5632313138640697152

`Δ[A047836(n+1)/2]`
-/

namespace A389763.P5632313138640697152
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A047836 (n + 1) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A389763.P5632313138640697152

/-! ## A389763.P8548983947546137289

`A026741(Δ[A047836(n+1)])`
-/

namespace A389763.P8548983947546137289
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047836 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (f1 (n + 1) - f1 n).toNat

end

end A389763.P8548983947546137289

/-! ## A389763.P1894406788038893747

`A026741(A047836(n+2)-A047836(n+1))`
-/

namespace A389763.P1894406788038893747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (A047836 (n + 2) - A047836 (n + 1)).toNat

end

end A389763.P1894406788038893747

/-! ## A389763.P8585204165518570644

`Δ[A279106(n+1)/2]`
-/

namespace A389763.P8585204165518570644
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A279106 (n + 1) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A389763.P8585204165518570644

/-!
# A389764: Even sub-perfect powers: odd perfect powers (not including 1) minus 1.

The programs for A389764, there is no canonical definition to state claims against.
-/

/-! ## A389764.P7940119497950388339

`A075109(n+2)-1`
-/

namespace A389764.P7940119497950388339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075109 (n + 2) - 1

end

end A389764.P7940119497950388339

/-! ## A389764.P17235668969393918274

`A389958(n+1)-2`
-/

namespace A389764.P17235668969393918274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389958 (n + 1) - 2

end

end A389764.P17235668969393918274

/-! ## A389764.P11695406397910554288

`floor(sqrt(A389955(n+1)))`
-/

namespace A389764.P11695406397910554288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A389955 (n + 1))

end

end A389764.P11695406397910554288

/-! ## A389764.P13485180992104598665

`A389955(n+1)/A389958(n+1)`
-/

namespace A389764.P13485180992104598665
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A389955 (n + 1) : ℚ) / (A389958 (n + 1) : ℚ)

end

end A389764.P13485180992104598665

/-! ## A389764.P7602601733716188017

`∑[abs(Δ[A075109(n+1)])]`
-/

namespace A389764.P7602601733716188017
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075109 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f2 (n + 1) - f2 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A389764.P7602601733716188017

/-! ## A389764.P7121455843820473024

`∑[A000027(Δ[A075109(n+1)])]`
-/

namespace A389764.P7121455843820473024
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075109 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A389764.P7121455843820473024

/-! ## A389764.P16820805043033360972

`∩[2*n, A045542(n+1)]`
-/

namespace A389764.P16820805043033360972
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045542 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A389764.P16820805043033360972

/-! ## A389764.P16149874047522585221

`filter[A045542(n+1), A354034(#)]`
-/

namespace A389764.P16149874047522585221
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045542 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354034 (f1 j).toNat = 1) n)

end

end A389764.P16149874047522585221

/-! ## A389764.P4396389231451936722

`∩[A045542(n+1), A088034(n+1)]`
-/

namespace A389764.P4396389231451936722
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045542 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088034 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A389764.P4396389231451936722

/-! ## A389764.P9655340967484114257

`∩[A045542(n+1), A309355(n+1)]`
-/

namespace A389764.P9655340967484114257
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045542 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309355 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A389764.P9655340967484114257

/-!
# A389765: Odd sub-perfect powers: even perfect powers minus 1.

The programs for A389765, there is no canonical definition to state claims against.
-/

/-! ## A389765.P2423998224766812581

`A075090(n+1)-1`
-/

namespace A389765.P2423998224766812581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075090 (n + 1) - 1

end

end A389765.P2423998224766812581

/-! ## A389765.P10956154925342110778

`A389957(n+1)-2`
-/

namespace A389765.P10956154925342110778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389957 (n + 1) - 2

end

end A389765.P10956154925342110778

/-! ## A389765.P13153043465770240580

`floor(sqrt(A389956(n+1)))`
-/

namespace A389765.P13153043465770240580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A389956 (n + 1))

end

end A389765.P13153043465770240580

/-! ## A389765.P2216727855227431027

`A389956(n+1)/A389957(n+1)`
-/

namespace A389765.P2216727855227431027
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A389956 (n + 1) : ℚ) / (A389957 (n + 1) : ℚ)

end

end A389765.P2216727855227431027

/-! ## A389765.P8340111400623988239

`A389956(n+1)%A075090(n+1)`
-/

namespace A389765.P8340111400623988239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A389956 (n + 1)) (A075090 (n + 1))

end

end A389765.P8340111400623988239

/-! ## A389765.P3169998702993171857

`∩[2*n+1, A045542(n+1)]`
-/

namespace A389765.P3169998702993171857
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045542 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A389765.P3169998702993171857

/-! ## A389765.P4067323079611270276

`filter[A045542(n+1), A379952(#)]`
-/

namespace A389765.P4067323079611270276
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045542 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A379952 (f1 j).toNat = 1) n)

end

end A389765.P4067323079611270276

/-! ## A389765.P4408790240099478269

`filter[A045542(n+1), A323158(#)]`
-/

namespace A389765.P4408790240099478269
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045542 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323158 (f1 j).toNat = 1) n)

end

end A389765.P4408790240099478269

/-! ## A389765.P10153113186156106888

`filter[A045542(n+1), A324908(#)]`
-/

namespace A389765.P10153113186156106888
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045542 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A324908 (f1 j).toNat = 1) n)

end

end A389765.P10153113186156106888

/-! ## A389765.P6969996207729849867

`∩[A045542(n+1), A004767(n)]`
-/

namespace A389765.P6969996207729849867
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045542 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004767 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A389765.P6969996207729849867

/-! ## A389765.P15400772256442340385

`∩[A080262(n+1), A004767(n)]`
-/

namespace A389765.P15400772256442340385
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080262 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004767 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A389765.P15400772256442340385

/-! ## A389765.P15156988698238381078

`∩[A045542(n+1), A131098(n+1)]`
-/

namespace A389765.P15156988698238381078
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045542 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131098 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A389765.P15156988698238381078

/-! ## A389765.P10870871219937961137

`∩[A080262(n+1), A131098(n+1)]`
-/

namespace A389765.P10870871219937961137
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080262 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131098 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A389765.P10870871219937961137

/-! ## A389765.P11503852034525188941

`∩[A045542(n+1), A372293(n+1)]`
-/

namespace A389765.P11503852034525188941
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045542 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372293 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A389765.P11503852034525188941

/-! ## A389765.P7928657615769731256

`∩[A045542(n+1), A276283(n)]`
-/

namespace A389765.P7928657615769731256
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045542 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276283 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A389765.P7928657615769731256

/-! ## A389765.P4073660155610540127

`∩[A045542(n+1), A072939(n+1)]`
-/

namespace A389765.P4073660155610540127
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045542 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072939 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A389765.P4073660155610540127

/-! ## A389765.P637689177121649167

`∩[A045542(n+1), A171947(n+1)]`
-/

namespace A389765.P637689177121649167
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045542 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171947 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A389765.P637689177121649167

/-! ## A389765.P17336361035590528914

`∩[A045542(n+1), A400894(n+1)]`
-/

namespace A389765.P17336361035590528914
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045542 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A400894 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A389765.P17336361035590528914

/-! ## A389765.P14136017056483187763

`∩[A080262(n+1), A400894(n+1)]`
-/

namespace A389765.P14136017056483187763
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080262 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A400894 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A389765.P14136017056483187763

/-!
# A389767: Numbers k such that (33^k - 4^k)/29 is prime.

The programs for A389767, there is no canonical definition to state claims against.
-/

/-! ## A389767.P16533235760402290644

`(n+1)*A351883(n)+1`
-/

namespace A389767.P16533235760402290644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A351883 n + 1

end

end A389767.P16533235760402290644

/-!
# A389768: Numbers k such that (35^k - 4^k)/31 is prime.

The programs for A389768, there is no canonical definition to state claims against.
-/

/-! ## A389768.P14160612793522372942

`A164958(A078610(n+2))`
-/

namespace A389768.P14160612793522372942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164958 (A078610 (n + 2)).toNat

end

end A389768.P14160612793522372942

/-!
# A389769: Number of decimal digits in the numerator of A003504(n).

The programs for A389769, there is no canonical definition to state claims against.
-/

/-! ## A389769.P16196990855605739465

`A083023(A146222(n+2))`
-/

namespace A389769.P16196990855605739465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083023 (A146222 (n + 2)).toNat

end

end A389769.P16196990855605739465

/-!
# A389771: E.g.f. A(x) satisfies A(x) = 1 + x*exp(x^3)*A(x)^2.

The programs for A389771, the canonical program `A389771.P1766495356091892136` is in `Seq.B001.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A389771 has offset 0).

The definition of A389771 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A389771.P1766495356091892136

`n!*∑{#}[floor(n/3), (n-3*#)^#*A000108(n-3*#)/#!]`

The canonical program, it is in `Seq.B001.C014`.
-/

namespace A389771

/-- `n!*∑{#}[floor(n/3), (n-3*#)^#*A000108(n-3*#)/#!]` -/
def P1766495356091892136.Spec : Prop :=
  ∀ n, P1766495356091892136.a n = (A389771 n : ℚ)

end A389771

/-! ## A389771.P16695715503886084938

`A000142(n)*A113007(A000110(n))`
-/

namespace A389771.P16695715503886084938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 n * A113007 (A000110 n).toNat

end

end A389771.P16695715503886084938

namespace A389771

/-- `A000142(n)*A113007(A000110(n))` -/
def P16695715503886084938.Spec : Prop :=
  ∀ n, P16695715503886084938.a n = A389771 n

end A389771

/-!
# A389772: Number of unique nonempty strings with either 0 or 1 copies of a letter i_1, either 0 or 2 copies of a letter i_2, ..., either 0 or n copies of a letter i_n, where i_1, ..., i_n are all distinct letters.

The programs for A389772, there is no canonical definition to state claims against.
-/

/-! ## A389772.P2667154264611793482

`∑[A262073(n+1)]`
-/

namespace A389772.P2667154264611793482
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262073 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A389772.P2667154264611793482

/-!
# A389775: Absolute value of the inverse Möbius transform of mu(n)*phi(n^2).

The programs for A389775, the canonical program `A389775.P15318510661550789038` is in `Seq.B003.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A389775 has offset 1).

The definition of A389775 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A389775.P15318510661550789038

`(-1)^A001221(n+1)*∑{d}[n+1, A008683(#)*A000010(#²)]`

The canonical program, it is in `Seq.B003.C006`.
-/

namespace A389775

/-- `(-1)^A001221(n+1)*∑{d}[n+1, A008683(#)*A000010(#²)]` -/
def P15318510661550789038.Spec : Prop :=
  ∀ n, P15318510661550789038.a n = (A389775 (n + 1) : ℚ)

end A389775

/-! ## A389775.P6092823824966538876

`∏{p}[n+1, #²-(#+1)]`
-/

namespace A389775.P6092823824966538876
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), ((p ^ 2 : ℤ) - (p + 1 : ℤ))

end

end A389775.P6092823824966538876

namespace A389775

/-- `∏{p}[n+1, #²-(#+1)]` -/
def P6092823824966538876.Spec : Prop :=
  ∀ n, P6092823824966538876.a n = A389775 (n + 1)

end A389775

/-! ## A389775.P8824073561697707611

`A063445(∏{p}[n+1, #])`
-/

namespace A389775.P8824073561697707611
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063445 (∏ p ∈ Nat.primeFactors (f1 n), p)

end

end A389775.P8824073561697707611

namespace A389775

/-- `A063445(∏{p}[n+1, #])` -/
def P8824073561697707611.Spec : Prop :=
  ∀ n, P8824073561697707611.a n = A389775 (n + 1)

end A389775

/-! ## A389775.P5708807535386436583

`A306198(∏{p}[n+1, #])`
-/

namespace A389775.P5708807535386436583
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306198 (∏ p ∈ Nat.primeFactors (f1 n), p)

end

end A389775.P5708807535386436583

namespace A389775

/-- `A306198(∏{p}[n+1, #])` -/
def P5708807535386436583.Spec : Prop :=
  ∀ n, P5708807535386436583.a n = A389775 (n + 1)

end A389775

/-! ## A389775.P351854560831910400

`A063445(A007947(n+1))`
-/

namespace A389775.P351854560831910400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063445 (A007947 (n + 1)).toNat

end

end A389775.P351854560831910400

namespace A389775

/-- `A063445(A007947(n+1))` -/
def P351854560831910400.Spec : Prop :=
  ∀ n, P351854560831910400.a n = A389775 (n + 1)

end A389775

/-! ## A389775.P3272762017944011937

`A063445(A204455(n+1))`
-/

namespace A389775.P3272762017944011937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063445 (A204455 (n + 1)).toNat

end

end A389775.P3272762017944011937

namespace A389775

/-- `A063445(A204455(n+1))` -/
def P3272762017944011937.Spec : Prop :=
  ∀ n, P3272762017944011937.a n = A389775 (n + 1)

end A389775

/-! ## A389775.P2449822743303167072

`A306198(n+1)/A003557(n+1)`
-/

namespace A389775.P2449822743303167072
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A306198 (n + 1) : ℚ) / (A003557 (n + 1) : ℚ)

end

end A389775.P2449822743303167072

namespace A389775

/-- `A306198(n+1)/A003557(n+1)` -/
def P2449822743303167072.Spec : Prop :=
  ∀ n, P2449822743303167072.a n = (A389775 (n + 1) : ℚ)

end A389775

/-! ## A389775.P14424637221405205332

`A063445(A099985(n+1))`
-/

namespace A389775.P14424637221405205332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063445 (A099985 (n + 1)).toNat

end

end A389775.P14424637221405205332

namespace A389775

/-- `A063445(A099985(n+1))` -/
def P14424637221405205332.Spec : Prop :=
  ∀ n, P14424637221405205332.a n = A389775 (n + 1)

end A389775

/-! ## A389775.P13996660615956637082

`A130107(A078615(n+1))`
-/

namespace A389775.P13996660615956637082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130107 (A078615 (n + 1)).toNat

end

end A389775.P13996660615956637082

namespace A389775

/-- `A130107(A078615(n+1))` -/
def P13996660615956637082.Spec : Prop :=
  ∀ n, P13996660615956637082.a n = A389775 (n + 1)

end A389775

/-! ## A389775.P9070731710365709693

`A328181(A007947(n+1)²)`
-/

namespace A389775.P9070731710365709693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328181 (A007947 (n + 1) ^ 2).toNat

end

end A389775.P9070731710365709693

namespace A389775

/-- `A328181(A007947(n+1)²)` -/
def P9070731710365709693.Spec : Prop :=
  ∀ n, P9070731710365709693.a n = A389775 (n + 1)

end A389775

/-! ## A389775.P9689289276866955545

`A328181(A007947(n+1)*A007947(n+1))`
-/

namespace A389775.P9689289276866955545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328181 (A007947 (n + 1) * A007947 (n + 1)).toNat

end

end A389775.P9689289276866955545

namespace A389775

/-- `A328181(A007947(n+1)*A007947(n+1))` -/
def P9689289276866955545.Spec : Prop :=
  ∀ n, P9689289276866955545.a n = A389775 (n + 1)

end A389775

/-!
# A389776: Powers k^m, even m >= 4, where k is composite and squarefree.

The programs for A389776, there is no canonical definition to state claims against.
-/

/-! ## A389776.P8494521899476857229

`A303606(n+1)²`
-/

namespace A389776.P8494521899476857229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303606 (n + 1) ^ 2

end

end A389776.P8494521899476857229

/-! ## A389776.P17391088669661056874

`∩[A340588(n+1), A390127(n+1)]`
-/

namespace A389776.P17391088669661056874
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340588 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390127 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A389776.P17391088669661056874

/-! ## A389776.P18155537956152654588

`∩[A378768(n+1), A390127(n+1)]`
-/

namespace A389776.P18155537956152654588
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378768 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390127 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A389776.P18155537956152654588

/-! ## A389776.P16611428028523954299

`∩[A374291(n+1), A390127(n+1)]`
-/

namespace A389776.P16611428028523954299
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374291 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390127 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A389776.P16611428028523954299

/-! ## A389776.P10354714676503902793

`∩[A340588(n+1), A388304(n+1)]`
-/

namespace A389776.P10354714676503902793
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340588 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A388304 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A389776.P10354714676503902793

/-! ## A389776.P6062387203811642186

`∩[A374291(n+1), A388304(n+1)]`
-/

namespace A389776.P6062387203811642186
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374291 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A388304 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A389776.P6062387203811642186

/-! ## A389776.P8234394639678663294

`∩[A378768(n+1), A388304(n+1)]`
-/

namespace A389776.P8234394639678663294
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378768 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A388304 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A389776.P8234394639678663294

/-! ## A389776.P15001754997907948762

`∩[A378768(n+1), A390540(n+1)]`
-/

namespace A389776.P15001754997907948762
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378768 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390540 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A389776.P15001754997907948762

/-! ## A389776.P14189124239496192089

`∩[A378900(n+1), A388304(n+1)]`
-/

namespace A389776.P14189124239496192089
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378900 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A388304 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A389776.P14189124239496192089

/-! ## A389776.P12162775620847810561

`∩[A378900(n+1), A390127(n+1)]`
-/

namespace A389776.P12162775620847810561
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378900 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390127 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A389776.P12162775620847810561

/-! ## A389776.P14936499988493591274

`∩[A378900(n+1), A390540(n+1)]`
-/

namespace A389776.P14936499988493591274
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378900 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390540 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A389776.P14936499988493591274

/-! ## A389776.P2230755102157283302

`∩[A321070(n+1), A388304(n+1)]`
-/

namespace A389776.P2230755102157283302
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321070 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A388304 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A389776.P2230755102157283302

/-! ## A389776.P16767425910996248885

`∩[A321070(n+1), A390127(n+1)]`
-/

namespace A389776.P16767425910996248885
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321070 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390127 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A389776.P16767425910996248885

/-!
# A389780: Number of divisors d of n such that gcd(d^2 - 1, n) = 1 and gcd((n/d)^2 - 1, n) != 1.

The programs for A389780, there is no canonical definition to state claims against.
-/

/-! ## A389780.P8772418722823014496

`A183059(n+1)%A384834(n+1)`
-/

namespace A389780.P8772418722823014496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A183059 (n + 1)) (A384834 (n + 1))

end

end A389780.P8772418722823014496

/-! ## A389780.P965280919424515758

`A249384(n+1)%A384834(n+1)`
-/

namespace A389780.P965280919424515758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A249384 (n + 1)) (A384834 (n + 1))

end

end A389780.P965280919424515758

/-! ## A389780.P4925572662078071966

`A168466(n+1)%A384834(n+1)`
-/

namespace A389780.P4925572662078071966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A168466 (n + 1)) (A384834 (n + 1))

end

end A389780.P4925572662078071966

/-! ## A389780.P15337532941323916519

`A307476(n+1)%A384834(n+1)`
-/

namespace A389780.P15337532941323916519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A307476 (n + 1)) (A384834 (n + 1))

end

end A389780.P15337532941323916519

/-! ## A389780.P10946427751699816156

`gcd(A019115(n+3), A058061(n+1))`
-/

namespace A389780.P10946427751699816156
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A019115 (n + 3)) (A058061 (n + 1))

end

end A389780.P10946427751699816156

/-!
# A389781: Number of divisors d of n such that d^(n/d) == d (mod n).

The programs for A389781, there is no canonical definition to state claims against.
-/

/-! ## A389781.P59331421767408730

`A083044(A324837(n+1)%A324840(n+2))`
-/

namespace A389781.P59331421767408730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083044 (Int.tmod (A324837 (n + 1)) (A324840 (n + 2))).toNat

end

end A389781.P59331421767408730

/-! ## A389781.P6419913793247553827

`A034444(n+1)-A343660(A283983(2*(n+2)))`
-/

namespace A389781.P6419913793247553827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034444 (n + 1) - A343660 (A283983 (2 * (n + 2))).toNat

end

end A389781.P6419913793247553827

/-! ## A389781.P14482156935679283425

`A034444(n+1)-A127247(A231870(3*n+2))`
-/

namespace A389781.P14482156935679283425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034444 (n + 1) - A127247 (A231870 (3 * n + 2)).toNat

end

end A389781.P14482156935679283425

/-! ## A389781.P9439551098735379697

`dr(A295557((n+1)²))`
-/

namespace A389781.P9439551098735379697
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A295557 ((n + 1) ^ 2))

end

end A389781.P9439551098735379697

/-! ## A389781.P4623964008719397975

`A055874(A284008(n)+A046523(n+1))`
-/

namespace A389781.P4623964008719397975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055874 (A284008 n + A046523 (n + 1)).toNat

end

end A389781.P4623964008719397975

/-!
# A389782: Expansion of e.g.f. exp( -LambertW(-x*(1+x)) ) / (1+x).

The programs for A389782, there is no canonical definition to state claims against.
-/

/-! ## A389782.P485402758038531949

`A137900(A321778(n+8))`
-/

namespace A389782.P485402758038531949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137900 (A321778 (n + 8)).toNat

end

end A389782.P485402758038531949

/-!
# A389783: Expansion of e.g.f. exp( -LambertW(-x*(1+x)^2) ) / (1+x).

The programs for A389783, there is no canonical definition to state claims against.
-/

/-! ## A389783.P2996068534521833415

`A170886(abs(A000005(n+1)-A074442(n+1)))`
-/

namespace A389783.P2996068534521833415
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A170886 |A000005 (n + 1) - A074442 (n + 1)|.toNat

end

end A389783.P2996068534521833415

/-!
# A389786: E.g.f. A(x) satisfies A(x) = exp(x^2 * (1+x)^3 * A(x)).

The programs for A389786, the canonical program `A389786.P6244445298745600197` is in `Seq.B000.C049`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A389786 has offset 0).

The definition of A389786 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A389786.P6244445298745600197

`n!*∑{#}[floor(n/2), (#+1)^(#-1)*C(3*#, n-2*#)/#!]`

The canonical program, it is in `Seq.B000.C049`.
-/

namespace A389786

/-- `n!*∑{#}[floor(n/2), (#+1)^(#-1)*C(3*#, n-2*#)/#!]` -/
def P6244445298745600197.Spec : Prop :=
  ∀ n, P6244445298745600197.a n = (A389786 n : ℚ)

end A389786

/-! ## A389786.P8408369434522041309

`A165007(2*n+1)*A178862(A307128(n))`
-/

namespace A389786.P8408369434522041309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165007 (2 * n + 1) * A178862 (A307128 n).toNat

end

end A389786.P8408369434522041309

namespace A389786

/-- `A165007(2*n+1)*A178862(A307128(n))` -/
def P8408369434522041309.Spec : Prop :=
  ∀ n, P8408369434522041309.a n = A389786 n

end A389786

/-!
# A389787: E.g.f. A(x) satisfies A(x) = exp(x^3 * (1+x)^2 * A(x)).

The programs for A389787, the canonical program `A389787.P17285544784522001911` is in `Seq.B000.C049`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A389787 has offset 0).

The definition of A389787 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A389787.P17285544784522001911

`n!*∑{#}[floor(n/3), (#+1)^(#-1)*C(2*#, n-3*#)/#!]`

The canonical program, it is in `Seq.B000.C049`.
-/

namespace A389787

/-- `n!*∑{#}[floor(n/3), (#+1)^(#-1)*C(2*#, n-3*#)/#!]` -/
def P17285544784522001911.Spec : Prop :=
  ∀ n, P17285544784522001911.a n = (A389787 n : ℚ)

end A389787

/-! ## A389787.P12749858186078143189

`A001200(A256893(n))*A355575(n)`
-/

namespace A389787.P12749858186078143189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001200 (A256893 n).toNat * A355575 n

end

end A389787.P12749858186078143189

namespace A389787

/-- `A001200(A256893(n))*A355575(n)` -/
def P12749858186078143189.Spec : Prop :=
  ∀ n, P12749858186078143189.a n = A389787 n

end A389787

/-!
# A389788: E.g.f. A(x) satisfies A(x) = exp(x^3 * (1+x)^3 * A(x)).

The programs for A389788, the canonical program `A389788.P13481640009941303147` is in `Seq.B000.C049`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A389788 has offset 0).

The definition of A389788 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A389788.P13481640009941303147

`n!*∑{#}[floor(n/3), (#+1)^(#-1)*C(3*#, n-3*#)/#!]`

The canonical program, it is in `Seq.B000.C049`.
-/

namespace A389788

/-- `n!*∑{#}[floor(n/3), (#+1)^(#-1)*C(3*#, n-3*#)/#!]` -/
def P13481640009941303147.Spec : Prop :=
  ∀ n, P13481640009941303147.a n = (A389788 n : ℚ)

end A389788

/-! ## A389788.P4730246874841108249

`A086172(n+1)*A180447(A367863(n))`
-/

namespace A389788.P4730246874841108249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086172 (n + 1) * A180447 (A367863 n).toNat

end

end A389788.P4730246874841108249

namespace A389788

/-- `A086172(n+1)*A180447(A367863(n))` -/
def P4730246874841108249.Spec : Prop :=
  ∀ n, P4730246874841108249.a n = A389788 n

end A389788

/-!
# A389790: Number of ways to write 2*n as p + p' + q + q', where p and q are primes with p <= q, and r' is the first prime greater than r.

The programs for A389790, there is no canonical definition to state claims against.
-/

/-! ## A389790.P8924563974732562208

`A357905(A274911(n+1))`
-/

namespace A389790.P8924563974732562208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357905 (A274911 (n + 1)).toNat

end

end A389790.P8924563974732562208

/-! ## A389790.P13550198737489392065

`A005091(A139454(n+1)-A079584(n))`
-/

namespace A389790.P13550198737489392065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005091 (A139454 (n + 1) - A079584 n).toNat

end

end A389790.P13550198737489392065

/-! ## A389790.P12072221485956130464

`A135414(2*n+3)%A338912(A085158(n+3))`
-/

namespace A389790.P12072221485956130464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A135414 (2 * n + 3)) (A338912 (A085158 (n + 3)).toNat)

end

end A389790.P12072221485956130464

/-! ## A389790.P10492036081193295931

`A083919(or(A191852(3*n+5), A277699(n+1)))`
-/

namespace A389790.P10492036081193295931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083919 (Int.lor (A191852 (3 * n + 5)) (A277699 (n + 1))).toNat

end

end A389790.P10492036081193295931

/-! ## A389790.P5819505277890170208

`A379666(A311200(n+1))`
-/

namespace A389790.P5819505277890170208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379666 (A311200 (n + 1)).toNat

end

end A389790.P5819505277890170208

/-!
# A389792: Total number of ascents in all heapable permutations of length n.

The programs for A389792, there is no canonical definition to state claims against.
-/

/-! ## A389792.P7227525776291496129

`A389232(n+1)-A336282(n+1)`
-/

namespace A389792.P7227525776291496129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389232 (n + 1) - A336282 (n + 1)

end

end A389792.P7227525776291496129

/-! ## A389792.P4867195976396981255

`A262249(A192317(n+1))`
-/

namespace A389792.P4867195976396981255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262249 (A192317 (n + 1)).toNat

end

end A389792.P4867195976396981255

/-!
# A389797: Centered 27-gonal numbers.

The programs for A389797, the canonical program `A389797.P3556850316013249199` is in `Seq.B000.C049`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A389797 has offset 1).

The definition of A389797 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A389797.P10100503497392420147

`ogf((1+25x+x^2)/(1-3x+3x^2-x^3))`
-/

namespace A389797.P10100503497392420147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 25, 1] [1, -3, 3, -1] n

end

end A389797.P10100503497392420147

namespace A389797

/-- `ogf((1+25x+x^2)/(1-3x+3x^2-x^3))` -/
def P10100503497392420147.Spec : Prop :=
  ∀ n, P10100503497392420147.a n = A389797 (n + 1)

end A389797

/-! ## A389797.P13704934404640386068

`(27*(n+1)²-27*(n+1)+2)/2`
-/

namespace A389797.P13704934404640386068
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((27 * (n + 1) ^ 2 : ℤ) - (27 * (n + 1) : ℤ) + 2 : ℚ) / 2

end

end A389797.P13704934404640386068

namespace A389797

/-- `(27*(n+1)²-27*(n+1)+2)/2` -/
def P13704934404640386068.Spec : Prop :=
  ∀ n, P13704934404640386068.a n = (A389797 (n + 1) : ℚ)

theorem P13704934404640386068.correct : P13704934404640386068.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 =>
      simp [A389797, Nat.add_sub_cancel, A389797.P13704934404640386068.a, A389797.P3556850316013249199.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 3 =>
      have h1 := ih (m + 2) (by omega)
      have h2 := ih (m + 1) (by omega)
      have h3 := ih m (by omega)
      simp only [A389797, Nat.add_sub_cancel, A389797.P13704934404640386068.a, A389797.P3556850316013249199.a, SequenceMachineLib.memo_apply] at h1 h2 h3 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 3 - 1 = m + 2 by omega, show m + 3 - 2 = m + 1 by omega, show m + 3 - 3 = m by omega, show m + 2 < m + 3 by omega, show m + 1 < m + 3 by omega, show m < m + 3 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 ⊢
      rw [← h1, ← h2, ← h3]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A389797

/-! ## A389797.P3556850316013249199

`3*a(n-1)-3*a(n-2)+a(n-3)` with `a(0)=1, a(1)=28, a(2)=82`

The canonical program, it is in `Seq.B000.C049`.
-/

namespace A389797

/-- `3*a(n-1)-3*a(n-2)+a(n-3)` -/
def P3556850316013249199.Spec : Prop :=
  ∀ n, P3556850316013249199.a n = A389797 (n + 1)

theorem P3556850316013249199.correct : P3556850316013249199.Spec := by
  intro n
  simp only [A389797, Nat.add_sub_cancel]

end A389797

/-! ## A389797.P1471420350319350727

`27*C(n+1, 2)+1`
-/

namespace A389797.P1471420350319350727
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  27 * Nat.choose (n + 1) 2 + 1

end

end A389797.P1471420350319350727

namespace A389797

/-- `27*C(n+1, 2)+1` -/
def P1471420350319350727.Spec : Prop :=
  ∀ n, (P1471420350319350727.a n : ℤ) = A389797 (n + 1)

end A389797

/-! ## A389797.P1068103564250263779

`∑[a(n-1)+27]` with `a(0)=1, a(1)=27`
-/

namespace A389797.P1068103564250263779
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 27] fun n f1 =>
  f1 (n - 1) + 27

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A389797.P1068103564250263779

namespace A389797

/-- `∑[a(n-1)+27]` -/
def P1068103564250263779.Spec : Prop :=
  ∀ n, (P1068103564250263779.a n : ℤ) = A389797 (n + 1)

end A389797

/-! ## A389797.P8046019633157541009

`a(n-1)+27*n` with `a(0)=1`
-/

namespace A389797.P8046019633157541009
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + 27 * n

end

end A389797.P8046019633157541009

namespace A389797

/-- `a(n-1)+27*n` -/
def P8046019633157541009.Spec : Prop :=
  ∀ n, (P8046019633157541009.a n : ℤ) = A389797 (n + 1)

end A389797

/-! ## A389797.P2855709746533226029

`3*A027468(n)+1`
-/

namespace A389797.P2855709746533226029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A027468 n + 1

end

end A389797.P2855709746533226029

namespace A389797

/-- `3*A027468(n)+1` -/
def P2855709746533226029.Spec : Prop :=
  ∀ n, P2855709746533226029.a n = A389797 (n + 1)

end A389797

/-! ## A389797.P1828756298304438117

`3*A062123(n)-5`
-/

namespace A389797.P1828756298304438117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A062123 n - 5

end

end A389797.P1828756298304438117

namespace A389797

/-- `3*A062123(n)-5` -/
def P1828756298304438117.Spec : Prop :=
  ∀ n, P1828756298304438117.a n = A389797 (n + 1)

end A389797

/-! ## A389797.P7591886258317255292

`3*A060544(n+1)-2`
-/

namespace A389797.P7591886258317255292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A060544 (n + 1) - 2

end

end A389797.P7591886258317255292

namespace A389797

/-- `3*A060544(n+1)-2` -/
def P7591886258317255292.Spec : Prop :=
  ∀ n, P7591886258317255292.a n = A389797 (n + 1)

end A389797

/-! ## A389797.P378512083372709041

`A389798(n+1)-(n²+n)`
-/

namespace A389797.P378512083372709041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389798 (n + 1) - (n ^ 2 + n : ℤ)

end

end A389797.P378512083372709041

namespace A389797

/-- `A389798(n+1)-(n²+n)` -/
def P378512083372709041.Spec : Prop :=
  ∀ n, P378512083372709041.a n = A389797 (n + 1)

end A389797

/-! ## A389797.P14937007050718947866

`A059845(n)+A014641(n)`
-/

namespace A389797.P14937007050718947866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059845 n + A014641 n

end

end A389797.P14937007050718947866

namespace A389797

/-- `A059845(n)+A014641(n)` -/
def P14937007050718947866.Spec : Prop :=
  ∀ n, P14937007050718947866.a n = A389797 (n + 1)

end A389797

/-! ## A389797.P3966638893298131708

`A093485(n)+A008591(n)`
-/

namespace A389797.P3966638893298131708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093485 n + A008591 n

end

end A389797.P3966638893298131708

namespace A389797

/-- `A093485(n)+A008591(n)` -/
def P3966638893298131708.Spec : Prop :=
  ∀ n, P3966638893298131708.a n = A389797 (n + 1)

end A389797

/-! ## A389797.P7327320113644444850

`A131878(n)+A022270(n)`
-/

namespace A389797.P7327320113644444850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131878 n + A022270 n

end

end A389797.P7327320113644444850

namespace A389797

/-- `A131878(n)+A022270(n)` -/
def P7327320113644444850.Spec : Prop :=
  ∀ n, P7327320113644444850.a n = A389797 (n + 1)

end A389797

/-! ## A389797.P7447459610588278612

`A131877(n)+A022284(n)`
-/

namespace A389797.P7447459610588278612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131877 n + A022284 n

end

end A389797.P7447459610588278612

namespace A389797

/-- `A131877(n)+A022284(n)` -/
def P7447459610588278612.Spec : Prop :=
  ∀ n, P7447459610588278612.a n = A389797 (n + 1)

end A389797

/-! ## A389797.P1925067156830560395

`A164136(n)+A005891(n)`
-/

namespace A389797.P1925067156830560395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164136 n + A005891 n

end

end A389797.P1925067156830560395

namespace A389797

/-- `A164136(n)+A005891(n)` -/
def P1925067156830560395.Spec : Prop :=
  ∀ n, P1925067156830560395.a n = A389797 (n + 1)

end A389797

/-! ## A389797.P2093658296494849552

`A173307(n)+A000124(n)`
-/

namespace A389797.P2093658296494849552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173307 n + A000124 n

end

end A389797.P2093658296494849552

namespace A389797

/-- `A173307(n)+A000124(n)` -/
def P2093658296494849552.Spec : Prop :=
  ∀ n, P2093658296494849552.a n = A389797 (n + 1)

end A389797

/-! ## A389797.P18442727842080183191

`A140672(n)+A033577(n)`
-/

namespace A389797.P18442727842080183191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140672 n + A033577 n

end

end A389797.P18442727842080183191

namespace A389797

/-- `A140672(n)+A033577(n)` -/
def P18442727842080183191.Spec : Prop :=
  ∀ n, P18442727842080183191.a n = A389797 (n + 1)

end A389797

/-! ## A389797.P11762895992510629279

`A098849(n)+A081587(n)`
-/

namespace A389797.P11762895992510629279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098849 n + A081587 n

end

end A389797.P11762895992510629279

namespace A389797

/-- `A098849(n)+A081587(n)` -/
def P11762895992510629279.Spec : Prop :=
  ∀ n, P11762895992510629279.a n = A389797 (n + 1)

end A389797

/-! ## A389797.P11117848107988017991

`A161549(n)+A022280(n)`
-/

namespace A389797.P11117848107988017991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161549 n + A022280 n

end

end A389797.P11117848107988017991

namespace A389797

/-- `A161549(n)+A022280(n)` -/
def P11117848107988017991.Spec : Prop :=
  ∀ n, P11117848107988017991.a n = A389797 (n + 1)

end A389797

/-! ## A389797.P11601434785593366498

`A195039(n)+A001844(n)`
-/

namespace A389797.P11601434785593366498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195039 n + A001844 n

end

end A389797.P11601434785593366498

namespace A389797

/-- `A195039(n)+A001844(n)` -/
def P11601434785593366498.Spec : Prop :=
  ∀ n, P11601434785593366498.a n = A389797 (n + 1)

end A389797

/-!
# A389798: Centered 29-gonal numbers.

The programs for A389798, the canonical program `A389798.P13110267990818327593` is in `Seq.B000.C049`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A389798 has offset 1).

The definition of A389798 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A389798.P12768282209939490848

`ogf((1+27x+x^2)/(1-3x+3x^2-x^3))`
-/

namespace A389798.P12768282209939490848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 27, 1] [1, -3, 3, -1] n

end

end A389798.P12768282209939490848

namespace A389798

/-- `ogf((1+27x+x^2)/(1-3x+3x^2-x^3))` -/
def P12768282209939490848.Spec : Prop :=
  ∀ n, P12768282209939490848.a n = A389798 (n + 1)

end A389798

/-! ## A389798.P17594643101708121078

`(29*(n+1)²-29*(n+1)+2)/2`
-/

namespace A389798.P17594643101708121078
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((29 * (n + 1) ^ 2 : ℤ) - (29 * (n + 1) : ℤ) + 2 : ℚ) / 2

end

end A389798.P17594643101708121078

namespace A389798

/-- `(29*(n+1)²-29*(n+1)+2)/2` -/
def P17594643101708121078.Spec : Prop :=
  ∀ n, P17594643101708121078.a n = (A389798 (n + 1) : ℚ)

theorem P17594643101708121078.correct : P17594643101708121078.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 =>
      simp [A389798, Nat.add_sub_cancel, A389798.P17594643101708121078.a, A389798.P13110267990818327593.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 3 =>
      have h1 := ih (m + 2) (by omega)
      have h2 := ih (m + 1) (by omega)
      have h3 := ih m (by omega)
      simp only [A389798, Nat.add_sub_cancel, A389798.P17594643101708121078.a, A389798.P13110267990818327593.a, SequenceMachineLib.memo_apply] at h1 h2 h3 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 3 - 1 = m + 2 by omega, show m + 3 - 2 = m + 1 by omega, show m + 3 - 3 = m by omega, show m + 2 < m + 3 by omega, show m + 1 < m + 3 by omega, show m < m + 3 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 ⊢
      rw [← h1, ← h2, ← h3]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A389798

/-! ## A389798.P13110267990818327593

`3*a(n-1)-3*a(n-2)+a(n-3)` with `a(0)=1, a(1)=30, a(2)=88`

The canonical program, it is in `Seq.B000.C049`.
-/

namespace A389798

/-- `3*a(n-1)-3*a(n-2)+a(n-3)` -/
def P13110267990818327593.Spec : Prop :=
  ∀ n, P13110267990818327593.a n = A389798 (n + 1)

theorem P13110267990818327593.correct : P13110267990818327593.Spec := by
  intro n
  simp only [A389798, Nat.add_sub_cancel]

end A389798

/-! ## A389798.P15602190485488013488

`∑[a(n-1)+29]` with `a(0)=1, a(1)=29`
-/

namespace A389798.P15602190485488013488
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 29] fun n f1 =>
  f1 (n - 1) + 29

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A389798.P15602190485488013488

namespace A389798

/-- `∑[a(n-1)+29]` -/
def P15602190485488013488.Spec : Prop :=
  ∀ n, (P15602190485488013488.a n : ℤ) = A389798 (n + 1)

end A389798

/-! ## A389798.P3356074593479713567

`a(n-1)+29*n` with `a(0)=1`
-/

namespace A389798.P3356074593479713567
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + 29 * n

end

end A389798.P3356074593479713567

namespace A389798

/-- `a(n-1)+29*n` -/
def P3356074593479713567.Spec : Prop :=
  ∀ n, (P3356074593479713567.a n : ℤ) = A389798 (n + 1)

end A389798

/-! ## A389798.P16256738038391555652

`A389797(n+1)+n²+n`
-/

namespace A389798.P16256738038391555652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389797 (n + 1) + (n ^ 2 + n : ℤ)

end

end A389798.P16256738038391555652

namespace A389798

/-- `A389797(n+1)+n²+n` -/
def P16256738038391555652.Spec : Prop :=
  ∀ n, P16256738038391555652.a n = A389798 (n + 1)

end A389798

/-! ## A389798.P4317816071072011616

`A056115(n)+A033572(n)`
-/

namespace A389798.P4317816071072011616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056115 n + A033572 n

end

end A389798.P4317816071072011616

namespace A389798

/-- `A056115(n)+A033572(n)` -/
def P4317816071072011616.Spec : Prop :=
  ∀ n, P4317816071072011616.a n = A389798 (n + 1)

end A389798

/-! ## A389798.P13199404163465337435

`A123296(n)+A001844(n)`
-/

namespace A389798.P13199404163465337435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123296 n + A001844 n

end

end A389798.P13199404163465337435

namespace A389798

/-- `A123296(n)+A001844(n)` -/
def P13199404163465337435.Spec : Prop :=
  ∀ n, P13199404163465337435.a n = A389798 (n + 1)

end A389798

/-! ## A389798.P14814750023784270651

`A131878(n)+A022273(n)`
-/

namespace A389798.P14814750023784270651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131878 n + A022273 n

end

end A389798.P14814750023784270651

namespace A389798

/-- `A131878(n)+A022273(n)` -/
def P14814750023784270651.Spec : Prop :=
  ∀ n, P14814750023784270651.a n = A389798 (n + 1)

end A389798

/-! ## A389798.P3799843137248167586

`A131877(n)+A022287(n)`
-/

namespace A389798.P3799843137248167586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131877 n + A022287 n

end

end A389798.P3799843137248167586

namespace A389798

/-- `A131877(n)+A022287(n)` -/
def P3799843137248167586.Spec : Prop :=
  ∀ n, P3799843137248167586.a n = A389798 (n + 1)

end A389798

/-! ## A389798.P4567772590793980462

`A161549(n)+A022283(n)`
-/

namespace A389798.P4567772590793980462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161549 n + A022283 n

end

end A389798.P4567772590793980462

namespace A389798

/-- `A161549(n)+A022283(n)` -/
def P4567772590793980462.Spec : Prop :=
  ∀ n, P4567772590793980462.a n = A389798 (n + 1)

end A389798

/-! ## A389798.P3571849367636293268

`A098603(n)+A093485(n)`
-/

namespace A389798.P3571849367636293268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098603 n + A093485 n

end

end A389798.P3571849367636293268

namespace A389798

/-- `A098603(n)+A093485(n)` -/
def P3571849367636293268.Spec : Prop :=
  ∀ n, P3571849367636293268.a n = A389798 (n + 1)

end A389798

/-! ## A389798.P3682061846260176281

`A195039(n)+A003215(n)`
-/

namespace A389798.P3682061846260176281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195039 n + A003215 n

end

end A389798.P3682061846260176281

namespace A389798

/-- `A195039(n)+A003215(n)` -/
def P3682061846260176281.Spec : Prop :=
  ∀ n, P3682061846260176281.a n = A389798 (n + 1)

end A389798

/-! ## A389798.P1759337980738926638

`A161617(n)+A051867(n)`
-/

namespace A389798.P1759337980738926638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161617 n + A051867 n

end

end A389798.P1759337980738926638

namespace A389798

/-- `A161617(n)+A051867(n)` -/
def P1759337980738926638.Spec : Prop :=
  ∀ n, P1759337980738926638.a n = A389798 (n + 1)

end A389798

/-! ## A389798.P15567532180556498361

`A139580(n)+A081587(n)`
-/

namespace A389798.P15567532180556498361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139580 n + A081587 n

end

end A389798.P15567532180556498361

namespace A389798

/-- `A139580(n)+A081587(n)` -/
def P15567532180556498361.Spec : Prop :=
  ∀ n, P15567532180556498361.a n = A389798 (n + 1)

end A389798

/-! ## A389798.P4869495551993575399

`A161587(n)+A140091(n)`
-/

namespace A389798.P4869495551993575399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161587 n + A140091 n

end

end A389798.P4869495551993575399

namespace A389798

/-- `A161587(n)+A140091(n)` -/
def P4869495551993575399.Spec : Prop :=
  ∀ n, P4869495551993575399.a n = A389798 (n + 1)

end A389798

/-! ## A389798.P3375206446748669814

`A262221(n)+A046092(n)`
-/

namespace A389798.P3375206446748669814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262221 n + A046092 n

end

end A389798.P3375206446748669814

namespace A389798

/-- `A262221(n)+A046092(n)` -/
def P3375206446748669814.Spec : Prop :=
  ∀ n, P3375206446748669814.a n = A389798 (n + 1)

end A389798

/-! ## A389798.P9648050703084512563

`A302906(n)+A014641(n)`
-/

namespace A389798.P9648050703084512563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302906 n + A014641 n

end

end A389798.P9648050703084512563

namespace A389798

/-- `A302906(n)+A014641(n)` -/
def P9648050703084512563.Spec : Prop :=
  ∀ n, P9648050703084512563.a n = A389798 (n + 1)

end A389798

/-! ## A389798.P8541835013621452091

`A212331(n)+A194454(n)`
-/

namespace A389798.P8541835013621452091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212331 n + A194454 n

end

end A389798.P8541835013621452091

namespace A389798

/-- `A212331(n)+A194454(n)` -/
def P8541835013621452091.Spec : Prop :=
  ∀ n, P8541835013621452091.a n = A389798 (n + 1)

end A389798

/-! ## A389798.P2639148145358285724

`A360488(n)+A161714(n)`
-/

namespace A389798.P2639148145358285724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360488 n + A161714 n

end

end A389798.P2639148145358285724

namespace A389798

/-- `A360488(n)+A161714(n)` -/
def P2639148145358285724.Spec : Prop :=
  ∀ n, P2639148145358285724.a n = A389798 (n + 1)

end A389798

/-!
# A389799: Centered 30-gonal numbers.

The programs for A389799, the canonical program `A389799.P12456178853448985860` is in `Seq.B000.C049`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A389799 has offset 1).

The definition of A389799 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A389799.P12736859526421314488

`ogf((1+28x+x^2)/(1-3x+3x^2-x^3))`
-/

namespace A389799.P12736859526421314488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 28, 1] [1, -3, 3, -1] n

end

end A389799.P12736859526421314488

namespace A389799

/-- `ogf((1+28x+x^2)/(1-3x+3x^2-x^3))` -/
def P12736859526421314488.Spec : Prop :=
  ∀ n, P12736859526421314488.a n = A389799 (n + 1)

end A389799

/-! ## A389799.P12456178853448985860

`15*(n+1)²-15*(n+1)+1`

The canonical program, it is in `Seq.B000.C049`.
-/

namespace A389799

/-- `15*(n+1)²-15*(n+1)+1` -/
def P12456178853448985860.Spec : Prop :=
  ∀ n, P12456178853448985860.a n = A389799 (n + 1)

theorem P12456178853448985860.correct : P12456178853448985860.Spec := by
  intro n
  simp only [A389799, Nat.add_sub_cancel]

end A389799

/-! ## A389799.P7364685759999904131

`or(1, ∑[5*6*n])`
-/

namespace A389799.P7364685759999904131
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5 * (6 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A389799.P7364685759999904131

namespace A389799

/-- `or(1, ∑[5*6*n])` -/
def P7364685759999904131.Spec : Prop :=
  ∀ n, (P7364685759999904131.a n : ℤ) = A389799 (n + 1)

end A389799

/-! ## A389799.P7608295804844479218

`xor(1, ∑[5*6*n])`
-/

namespace A389799.P7608295804844479218
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5 * (6 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A389799.P7608295804844479218

namespace A389799

/-- `xor(1, ∑[5*6*n])` -/
def P7608295804844479218.Spec : Prop :=
  ∀ n, (P7608295804844479218.a n : ℤ) = A389799 (n + 1)

end A389799

/-! ## A389799.P7039791165968022804

`∑[a(n-1)+30]` with `a(0)=1, a(1)=30`
-/

namespace A389799.P7039791165968022804
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 30] fun n f1 =>
  f1 (n - 1) + 30

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A389799.P7039791165968022804

namespace A389799

/-- `∑[a(n-1)+30]` -/
def P7039791165968022804.Spec : Prop :=
  ∀ n, (P7039791165968022804.a n : ℤ) = A389799 (n + 1)

end A389799

/-! ## A389799.P4381626049978789585

`30*n+a(n-1)` with `a(0)=1`
-/

namespace A389799.P4381626049978789585
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  30 * n + a (n - 1)

end

end A389799.P4381626049978789585

namespace A389799

/-- `30*n+a(n-1)` -/
def P4381626049978789585.Spec : Prop :=
  ∀ n, (P4381626049978789585.a n : ℤ) = A389799 (n + 1)

theorem P4381626049978789585.correct : P4381626049978789585.Spec := by
  intro n
  induction n with
  | zero => simp [A389799, A389799.P4381626049978789585.a, A389799.P12456178853448985860.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
  | succ m ih =>
    simp only [A389799, Nat.add_sub_cancel, A389799.P4381626049978789585.a, A389799.P12456178853448985860.a, SequenceMachineLib.memo_apply] at ih ⊢
    rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
    try simp only [Nat.add_sub_cancel, Nat.lt_add_one, ↓reduceIte]
    try push_cast at ih ⊢
    try linarith

end A389799

/-! ## A389799.P6692641431661805748

`A193248(n+1)/(2*n+1)`
-/

namespace A389799.P6692641431661805748
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A193248 (n + 1) : ℚ) / (2 * n + 1 : ℚ)

end

end A389799.P6692641431661805748

namespace A389799

/-- `A193248(n+1)/(2*n+1)` -/
def P6692641431661805748.Spec : Prop :=
  ∀ n, P6692641431661805748.a n = (A389799 (n + 1) : ℚ)

theorem P6692641431661805748.correct : P6692641431661805748.Spec := by
  intro n
  simp only [A389799, Nat.add_sub_cancel, A389799.P6692641431661805748.a, A389799.P12456178853448985860.a, A193248, A193248.P3267529436430552946.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A389799

/-! ## A389799.P10674111519716674068

`A001533(n)%A001526(n)`
-/

namespace A389799.P10674111519716674068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001533 n) (A001526 n)

end

end A389799.P10674111519716674068

namespace A389799

/-- `A001533(n)%A001526(n)` -/
def P10674111519716674068.Spec : Prop :=
  ∀ n, P10674111519716674068.a n = A389799 (n + 1)

end A389799

/-! ## A389799.P14993534991860244795

`A017150(n)%A157923(n+1)`
-/

namespace A389799.P14993534991860244795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A017150 n) (A157923 (n + 1))

end

end A389799.P14993534991860244795

namespace A389799

/-- `A017150(n)%A157923(n+1)` -/
def P14993534991860244795.Spec : Prop :=
  ∀ n, P14993534991860244795.a n = A389799 (n + 1)

end A389799

/-! ## A389799.P4997225018920693548

`A195046(Δ[n²])`
-/

namespace A389799.P4997225018920693548
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195046 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A389799.P4997225018920693548

namespace A389799

/-- `A195046(Δ[n²])` -/
def P4997225018920693548.Spec : Prop :=
  ∀ n, P4997225018920693548.a n = A389799 (n + 1)

end A389799

/-! ## A389799.P7541442419916933719

`∑[A008458(5*n)]`
-/

namespace A389799.P7541442419916933719
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 (5 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A389799.P7541442419916933719

namespace A389799

/-- `∑[A008458(5*n)]` -/
def P7541442419916933719.Spec : Prop :=
  ∀ n, P7541442419916933719.a n = A389799 (n + 1)

end A389799

/-! ## A389799.P5816805679533367605

`∑[A315817(5*n)]`
-/

namespace A389799.P5816805679533367605
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315817 (5 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A389799.P5816805679533367605

namespace A389799

/-- `∑[A315817(5*n)]` -/
def P5816805679533367605.Spec : Prop :=
  ∀ n, P5816805679533367605.a n = A389799 (n + 1)

end A389799

/-! ## A389799.P15060706325360721285

`∑[A316050(5*n)]`
-/

namespace A389799.P15060706325360721285
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316050 (5 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A389799.P15060706325360721285

namespace A389799

/-- `∑[A316050(5*n)]` -/
def P15060706325360721285.Spec : Prop :=
  ∀ n, P15060706325360721285.a n = A389799 (n + 1)

end A389799

/-! ## A389799.P17118695917361323117

`∑[A315301(5*n)]`
-/

namespace A389799.P17118695917361323117
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315301 (5 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A389799.P17118695917361323117

namespace A389799

/-- `∑[A315301(5*n)]` -/
def P17118695917361323117.Spec : Prop :=
  ∀ n, P17118695917361323117.a n = A389799 (n + 1)

end A389799

/-! ## A389799.P3182225382557787140

`∑[A316069(5*n)]`
-/

namespace A389799.P3182225382557787140
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316069 (5 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A389799.P3182225382557787140

namespace A389799

/-- `∑[A316069(5*n)]` -/
def P3182225382557787140.Spec : Prop :=
  ∀ n, P3182225382557787140.a n = A389799 (n + 1)

end A389799

/-! ## A389799.P743377512074702438

`∑[A315559(5*n)]`
-/

namespace A389799.P743377512074702438
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315559 (5 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A389799.P743377512074702438

namespace A389799

/-- `∑[A315559(5*n)]` -/
def P743377512074702438.Spec : Prop :=
  ∀ n, P743377512074702438.a n = A389799 (n + 1)

end A389799

/-! ## A389799.P1917660874328705917

`∑[A315662(5*n)]`
-/

namespace A389799.P1917660874328705917
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315662 (5 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A389799.P1917660874328705917

namespace A389799

/-- `∑[A315662(5*n)]` -/
def P1917660874328705917.Spec : Prop :=
  ∀ n, P1917660874328705917.a n = A389799 (n + 1)

end A389799

/-! ## A389799.P3961556763804448724

`A128470(∑[n])`
-/

namespace A389799.P3961556763804448724
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128470 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A389799.P3961556763804448724

namespace A389799

/-- `A128470(∑[n])` -/
def P3961556763804448724.Spec : Prop :=
  ∀ n, P3961556763804448724.a n = A389799 (n + 1)

end A389799

/-! ## A389799.P16302096494635375555

`∩[A128470(n), A195046(n)]`
-/

namespace A389799.P16302096494635375555
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128470 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195046 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A389799.P16302096494635375555

namespace A389799

/-- `∩[A128470(n), A195046(n)]` -/
def P16302096494635375555.Spec : Prop :=
  ∀ n, (P16302096494635375555.a n : ℤ) = A389799 (n + 1)

end A389799

/-! ## A389799.P18186259174450865571

`A267747(n²+n+2)`
-/

namespace A389799.P18186259174450865571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267747 (n ^ 2 + n + 2)

end

end A389799.P18186259174450865571

namespace A389799

/-- `A267747(n²+n+2)` -/
def P18186259174450865571.Spec : Prop :=
  ∀ n, P18186259174450865571.a n = A389799 (n + 1)

end A389799

