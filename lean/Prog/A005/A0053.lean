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
import Seq.B000.C029
import Seq.B000.C031
import Seq.B000.C033
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C037
import Seq.B000.C038
import Seq.B000.C039
import Seq.B000.C040
import Seq.B000.C042
import Seq.B000.C043
import Seq.B000.C044
import Seq.B000.C045
import Seq.B000.C046
import Seq.B000.C049
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
import Seq.B001.C012
import Seq.B001.C013
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C004
import Seq.B002.C005
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B003.C005
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
# A005300: Representation degeneracies for Neveu-Schwarz strings.

The programs for A005300, there is no canonical definition to state claims against.
-/

/-! ## A005300.P1402824059958487145

`A335097(n+1)+A089869(A318731(n+1))`
-/

namespace A005300.P1402824059958487145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335097 (n + 1) + A089869 (A318731 (n + 1)).toNat

end

end A005300.P1402824059958487145

/-!
# A005303: Representation degeneracies for Ramond strings.

The programs for A005303, there is no canonical definition to state claims against.
-/

/-! ## A005303.P7254041663634648030

`A000196(A003229(n)²-n)`
-/

namespace A005303.P7254041663634648030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A003229 n ^ 2 - (n : ℤ)).toNat

end

end A005303.P7254041663634648030

/-! ## A005303.P1989686803173151155

`A105812(A126360(n))+A003229(n)`
-/

namespace A005303.P1989686803173151155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105812 (A126360 n).toNat + A003229 n

end

end A005303.P1989686803173151155

/-! ## A005303.P1713109937680696699

`A003229(n)-A000035(A001047(n))`
-/

namespace A005303.P1713109937680696699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003229 n - A000035 (A001047 n).toNat

end

end A005303.P1713109937680696699

/-! ## A005303.P7666681849128572317

`A003229(n)-A001221(A000302(n))`
-/

namespace A005303.P7666681849128572317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003229 n - A001221 (A000302 n).toNat

end

end A005303.P7666681849128572317

/-! ## A005303.P5006916162056591228

`A003229(n)-A003415(A007097(n))`
-/

namespace A005303.P5006916162056591228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003229 n - A003415 (A007097 n).toNat

end

end A005303.P5006916162056591228

/-!
# A005304: Representation degeneracies for Ramond strings.

The programs for A005304, there is no canonical definition to state claims against.
-/

/-! ## A005304.P5032804585429727395

`A207944(3*(n+1))-A332639(A050932(n))`
-/

namespace A005304.P5032804585429727395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207944 (3 * (n + 1)) - A332639 (A050932 n).toNat

end

end A005304.P5032804585429727395

/-! ## A005304.P3832323036114369215

`A131269(A032557(n+1))-A053735(n)`
-/

namespace A005304.P3832323036114369215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131269 (A032557 (n + 1)).toNat - A053735 n

end

end A005304.P3832323036114369215

/-!
# A005305: Representation degeneracies for Ramond strings.

The programs for A005305, there is no canonical definition to state claims against.
-/

/-! ## A005305.P7298327960712626603

`∑[A349174(A064410(2*n+5))+1]`
-/

namespace A005305.P7298327960712626603
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349174 (A064410 (2 * n + 5)).toNat + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A005305.P7298327960712626603

/-! ## A005305.P3757446063463605772

`A000267(A196723(n)²)`
-/

namespace A005305.P3757446063463605772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000267 (A196723 n ^ 2).toNat

end

end A005305.P3757446063463605772

/-!
# A005306: Representation degeneracies for Ramond strings.

The programs for A005306, there is no canonical definition to state claims against.
-/

/-! ## A005306.P604485399826698864

`∑[A010101(comp[n*comp[3*(n+1)]])]`
-/

namespace A005306.P604485399826698864
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * (n + 1)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * SequenceMachineLib.nth (fun x => ∀ j, f3 j ≠ x) n

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010101 (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A005306.P604485399826698864

/-! ## A005306.P15320257347139620727

`A179146(A077879(n+1))`
-/

namespace A005306.P15320257347139620727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179146 (A077879 (n + 1)).toNat

end

end A005306.P15320257347139620727

/-! ## A005306.P9624513548637776661

`A229489(A328078(n+1))`
-/

namespace A005306.P9624513548637776661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229489 (A328078 (n + 1)).toNat

end

end A005306.P9624513548637776661

/-!
# A005307: Bosonic string states.

The programs for A005307, there is no canonical definition to state claims against.
-/

/-! ## A005307.P8987091379517310772

`Δ[A005308(abs(1-n)+1)]`
-/

namespace A005307.P8987091379517310772
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005308 (|1 - (n : ℤ)| + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A005307.P8987091379517310772

/-! ## A005307.P12505817113170418258

`Δ[A068930(n+1)%A115325(2*(n+1))]`
-/

namespace A005307.P12505817113170418258
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A068930 (n + 1)) (A115325 (2 * (n + 1)))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A005307.P12505817113170418258

/-! ## A005307.P11362357413139812833

`A275811(A352986(n))-A000035(n)`
-/

namespace A005307.P11362357413139812833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275811 (A352986 n).toNat - A000035 n

end

end A005307.P11362357413139812833

/-! ## A005307.P177836750432071214

`A029239(n)-A025469(A205998(n+1))`
-/

namespace A005307.P177836750432071214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029239 n - A025469 (A205998 (n + 1)).toNat

end

end A005307.P177836750432071214

/-!
# A005308: Bosonic string states.

The programs for A005308, there is no canonical definition to state claims against.
-/

/-! ## A005308.P9719099541440919656

`∑[A005307(n)]`
-/

namespace A005308.P9719099541440919656
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005307 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A005308.P9719099541440919656

/-! ## A005308.P702198024899433662

`A005307(n)+a(A023443(n))` with `a(0)=1`
-/

namespace A005308.P702198024899433662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A005307 n + a (A023443 n).toNat

end

end A005308.P702198024899433662

/-! ## A005308.P6329900530364164609

`A005307(n)+a(A028310(n)-1)` with `a(0)=1`
-/

namespace A005308.P6329900530364164609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A005307 n + a (A028310 n - 1).toNat

end

end A005308.P6329900530364164609

/-! ## A005308.P315965895263894215

`a(n-1)+A005307(n)+A000038(n)` with `a(0)=1`
-/

namespace A005308.P315965895263894215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (A005307 n + A000038 n)

end

end A005308.P315965895263894215

/-! ## A005308.P9393423340924575171

`a(n-1)+A005307(n)%A001060(n)` with `a(0)=1`
-/

namespace A005308.P9393423340924575171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + Int.tmod (A005307 n) (A001060 n)

end

end A005308.P9393423340924575171

/-!
# A005309: Fermionic string states.

The programs for A005309, there is no canonical definition to state claims against.
-/

/-! ## A005309.P14598794675166148453

`Δ[A046155(A059502(n))]`
-/

namespace A005309.P14598794675166148453
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046155 (A059502 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A005309.P14598794675166148453

/-! ## A005309.P14754497629479662290

`A235963(A109268(n)-n)`
-/

namespace A005309.P14754497629479662290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235963 (A109268 n - (n : ℤ)).toNat

end

end A005309.P14754497629479662290

/-! ## A005309.P217681189234480728

`A003056(A115140(n)+A099376(n))`
-/

namespace A005309.P217681189234480728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (A115140 n + A099376 n).toNat

end

end A005309.P217681189234480728

/-! ## A005309.P17120379340451176649

`A055086(A071724(n)-A001045(n))`
-/

namespace A005309.P17120379340451176649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055086 (A071724 n - A001045 n).toNat

end

end A005309.P17120379340451176649

/-! ## A005309.P12847998257431798057

`A102726(n)-A322796(A327302(n))`
-/

namespace A005309.P12847998257431798057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102726 n - A322796 (A327302 n).toNat

end

end A005309.P12847998257431798057

/-!
# A005310: Fermionic string states.

The programs for A005310, there is no canonical definition to state claims against.
-/

/-! ## A005310.P2409029548511963456

`A302402(∑[∑[A225196(n)]])`
-/

namespace A005310.P2409029548511963456
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225196 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302402 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A005310.P2409029548511963456

/-! ## A005310.P4181384526404117729

`2*A265370(A121523(n+1))`
-/

namespace A005310.P4181384526404117729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A265370 (A121523 (n + 1)).toNat

end

end A005310.P4181384526404117729

/-! ## A005310.P16194827231313712644

`A096494(A111961(n)+1-n)`
-/

namespace A005310.P16194827231313712644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096494 (A111961 n + (1 - (n : ℤ))).toNat

end

end A005310.P16194827231313712644

/-! ## A005310.P7404605181524600174

`A140486(A079967(n))`
-/

namespace A005310.P7404605181524600174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140486 (A079967 n).toNat

end

end A005310.P7404605181524600174

/-!
# A005311: Solution to Berlekamp's switching game (or lightbulb game) on an n X n board.

The programs for A005311, there is no canonical definition to state claims against.
-/

/-! ## A005311.P11521943829473843307

`A368991(n)+A362040(n+1)`
-/

namespace A005311.P11521943829473843307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368991 n + A362040 (n + 1)

end

end A005311.P11521943829473843307

/-! ## A005311.P11604743130134831430

`A065962(n+1)-A319564(n)`
-/

namespace A005311.P11604743130134831430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065962 (n + 1) - A319564 n

end

end A005311.P11604743130134831430

/-! ## A005311.P6858860220688987046

`∑[A256991(∑[A344593(n+1)])]`
-/

namespace A005311.P6858860220688987046
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344593 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256991 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A005311.P6858860220688987046

/-! ## A005311.P4425329358271580967

`A362040(n+1)+A027195(n+1)`
-/

namespace A005311.P4425329358271580967
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362040 (n + 1) + A027195 (n + 1)

end

end A005311.P4425329358271580967

/-! ## A005311.P132246523746198883

`A362040(n+1)+A160976(n+1)`
-/

namespace A005311.P132246523746198883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362040 (n + 1) + A160976 (n + 1)

end

end A005311.P132246523746198883

/-!
# A005312: Maximal sum of inverse squares of the singular values of symmetric anti-Hadamard matrices of order n.

The programs for A005312, there is no canonical definition to state claims against.
-/

/-! ## A005312.P11899718127772083062

`∑[A265414(∑[A054357(n)])]`
-/

namespace A005312.P11899718127772083062
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054357 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265414 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A005312.P11899718127772083062

/-! ## A005312.P819321329567815389

`∑[A319558(n)+A241454(n+1)]`
-/

namespace A005312.P819321329567815389
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319558 n + A241454 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A005312.P819321329567815389

/-! ## A005312.P2148777195211624753

`A330344(n+1)+∑[A319558(n)]`
-/

namespace A005312.P2148777195211624753
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319558 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330344 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A005312.P2148777195211624753

/-!
# A005313: Maximal sum of inverse squares of the singular values of triangular anti-Hadamard matrices of order n.

The programs for A005313, the canonical program `A005313.P16755224305230439102` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A005313 has offset 1).

The definition of A005313 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A005313.P16755224305230439102

`A064831(n)+n+1`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A005313

/-- `A064831(n)+n+1` -/
def P16755224305230439102.Spec : Prop :=
  ∀ n, P16755224305230439102.a n = A005313 (n + 1)

theorem P16755224305230439102.correct : P16755224305230439102.Spec := by
  intro n
  simp only [A005313, Nat.add_sub_cancel]

end A005313

/-! ## A005313.P7035720643396541729

`∑[∑[round(ϕ^n/sqrt(5))²]+1]`
-/

namespace A005313.P7035720643396541729
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.goldenRatio ^ n / Real.sqrt (5 : ℝ)) ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A005313.P7035720643396541729

namespace A005313

/-- `∑[∑[round(ϕ^n/sqrt(5))²]+1]` -/
def P7035720643396541729.Spec : Prop :=
  ∀ n, P7035720643396541729.a n = A005313 (n + 1)

end A005313

/-! ## A005313.P18438552383613699429

`A166516(n+1)+n`
-/

namespace A005313.P18438552383613699429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166516 (n + 1) + (n : ℤ)

end

end A005313.P18438552383613699429

namespace A005313

/-- `A166516(n+1)+n` -/
def P18438552383613699429.Spec : Prop :=
  ∀ n, P18438552383613699429.a n = A005313 (n + 1)

end A005313

/-! ## A005313.P8086543820236863272

`A059929(n)+or(1, n)`
-/

namespace A005313.P8086543820236863272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059929 n + (Nat.lor 1 n : ℤ)

end

end A005313.P8086543820236863272

namespace A005313

/-- `A059929(n)+or(1, n)` -/
def P8086543820236863272.Spec : Prop :=
  ∀ n, P8086543820236863272.a n = A005313 (n + 1)

end A005313

/-! ## A005313.P8924545102422957943

`∑[A001654(n)]+1+n`
-/

namespace A005313.P8924545102422957943
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001654 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1 + (n : ℤ)

end

end A005313.P8924545102422957943

namespace A005313

/-- `∑[A001654(n)]+1+n` -/
def P8924545102422957943.Spec : Prop :=
  ∀ n, P8924545102422957943.a n = A005313 (n + 1)

end A005313

/-! ## A005313.P9021451297569980966

`A081659(2*n)-a(n-1)` with `a(0)=1`
-/

namespace A005313.P9021451297569980966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A081659 (2 * n) - a (n - 1)

end

end A005313.P9021451297569980966

namespace A005313

/-- `A081659(2*n)-a(n-1)` -/
def P9021451297569980966.Spec : Prop :=
  ∀ n, P9021451297569980966.a n = A005313 (n + 1)

end A005313

/-! ## A005313.P16701019357446354984

`ceil((A000045(n+2)/ϕ)²+n)`
-/

namespace A005313.P16701019357446354984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((A000045 (n + 2) : ℝ) / Real.goldenRatio) ^ 2 + (n : ℝ)⌉

end

end A005313.P16701019357446354984

namespace A005313

/-- `ceil((A000045(n+2)/ϕ)²+n)` -/
def P16701019357446354984.Spec : Prop :=
  ∀ n, P16701019357446354984.a n = A005313 (n + 1)

end A005313

/-! ## A005313.P4024575831328416157

`A000045(2*n)+a(n-2)+2` with `a(0)=1, a(1)=3`
-/

namespace A005313.P4024575831328416157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3] fun n a =>
  A000045 (2 * n) + (a (n - 2) + 2)

end

end A005313.P4024575831328416157

namespace A005313

/-- `A000045(2*n)+a(n-2)+2` -/
def P4024575831328416157.Spec : Prop :=
  ∀ n, P4024575831328416157.a n = A005313 (n + 1)

end A005313

/-! ## A005313.P14365192334021179799

`2*n-(a(n-1)-A000045(Δ[n²]))` with `a(0)=1`
-/

namespace A005313.P14365192334021179799
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (2 * n : ℤ) - (a (n - 1) - A000045 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat)

end

end A005313.P14365192334021179799

namespace A005313

/-- `2*n-(a(n-1)-A000045(Δ[n²]))` -/
def P14365192334021179799.Spec : Prop :=
  ∀ n, P14365192334021179799.a n = A005313 (n + 1)

end A005313

/-! ## A005313.P14108406148994803971

`A109613(n)+A059929(n)`
-/

namespace A005313.P14108406148994803971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109613 n + A059929 n

end

end A005313.P14108406148994803971

namespace A005313

/-- `A109613(n)+A059929(n)` -/
def P14108406148994803971.Spec : Prop :=
  ∀ n, P14108406148994803971.a n = A005313 (n + 1)

end A005313

/-! ## A005313.P14176753337720649161

`A208176(n)+A052928(n)`
-/

namespace A005313.P14176753337720649161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208176 n + A052928 n

end

end A005313.P14176753337720649161

namespace A005313

/-- `A208176(n)+A052928(n)` -/
def P14176753337720649161.Spec : Prop :=
  ∀ n, P14176753337720649161.a n = A005313 (n + 1)

end A005313

/-! ## A005313.P15201320899788840480

`A128534(n)+A192872(n)+n`
-/

namespace A005313.P15201320899788840480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128534 n + (A192872 n + (n : ℤ))

end

end A005313.P15201320899788840480

namespace A005313

/-- `A128534(n)+A192872(n)+n` -/
def P15201320899788840480.Spec : Prop :=
  ∀ n, P15201320899788840480.a n = A005313 (n + 1)

end A005313

/-! ## A005313.P4850540590827138185

`A052928(n+1)+A000045(n+1)²`
-/

namespace A005313.P4850540590827138185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052928 (n + 1) + A000045 (n + 1) ^ 2

end

end A005313.P4850540590827138185

namespace A005313

/-- `A052928(n+1)+A000045(n+1)²` -/
def P4850540590827138185.Spec : Prop :=
  ∀ n, P4850540590827138185.a n = A005313 (n + 1)

end A005313

/-! ## A005313.P15719301632818129342

`A083219(2*n)+A000045(n+1)²`
-/

namespace A005313.P15719301632818129342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083219 (2 * n) + A000045 (n + 1) ^ 2

end

end A005313.P15719301632818129342

namespace A005313

/-- `A083219(2*n)+A000045(n+1)²` -/
def P15719301632818129342.Spec : Prop :=
  ∀ n, P15719301632818129342.a n = A005313 (n + 1)

end A005313

/-! ## A005313.P1381788139979159541

`A106249(2*n+1)+A000045(n+1)²`
-/

namespace A005313.P1381788139979159541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106249 (2 * n + 1) + A000045 (n + 1) ^ 2

end

end A005313.P1381788139979159541

namespace A005313

/-- `A106249(2*n+1)+A000045(n+1)²` -/
def P1381788139979159541.Spec : Prop :=
  ∀ n, P1381788139979159541.a n = A005313 (n + 1)

end A005313

/-! ## A005313.P9012300134968521452

`A240828(2*(n+1))+A000045(n+1)²`
-/

namespace A005313.P9012300134968521452
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240828 (2 * (n + 1)) + A000045 (n + 1) ^ 2

end

end A005313.P9012300134968521452

namespace A005313

/-- `A240828(2*(n+1))+A000045(n+1)²` -/
def P9012300134968521452.Spec : Prop :=
  ∀ n, P9012300134968521452.a n = A005313 (n + 1)

end A005313

/-! ## A005313.P5110791969096857604

`ceil(A000032(n+1)²/5+n)`
-/

namespace A005313.P5110791969096857604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A000032 (n + 1) ^ 2 : ℚ) / 5 + (n : ℚ)⌉

end

end A005313.P5110791969096857604

namespace A005313

/-- `ceil(A000032(n+1)²/5+n)` -/
def P5110791969096857604.Spec : Prop :=
  ∀ n, P5110791969096857604.a n = A005313 (n + 1)

end A005313

/-! ## A005313.P14626804173430226127

`A080239(2*(n+1))+n+1-A080239(2*n+1)`
-/

namespace A005313.P14626804173430226127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080239 (2 * (n + 1)) + ((n + 1 : ℤ) - A080239 (2 * n + 1))

end

end A005313.P14626804173430226127

namespace A005313

/-- `A080239(2*(n+1))+n+1-A080239(2*n+1)` -/
def P14626804173430226127.Spec : Prop :=
  ∀ n, P14626804173430226127.a n = A005313 (n + 1)

end A005313

/-!
# A005314: For n = 0, 1, 2, a(n) = n; thereafter, a(n) = 2*a(n-1) - a(n-2) + a(n-3).

The programs for A005314, the canonical program `A005314.P13927224431633830111` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A005314 has offset 0).

The definition of A005314 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2*a(n-1)-a(n-2)+a(n-3)` (program `A005314.P13927224431633830111`, by `A005314.P13927224431633830111.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A005314.P10730029919350318948

`ogf(x/(1-2x+x^2-x^3))`
-/

namespace A005314.P10730029919350318948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1] [1, -2, 1, -1] n

end

end A005314.P10730029919350318948

namespace A005314

/-- `ogf(x/(1-2x+x^2-x^3))` -/
def P10730029919350318948.Spec : Prop :=
  ∀ n, P10730029919350318948.a n = A005314 n

end A005314

/-! ## A005314.P17202860881034345050

`a(n-1)+a(n-2)+a(n-4)` with `a(0)=0, a(1)=1, a(2)=2, a(3)=3`
-/

namespace A005314.P17202860881034345050
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 2, 3] fun n a =>
  a (n - 1) + a (n - 2) + a (n - 4)

end

end A005314.P17202860881034345050

namespace A005314

/-- `a(n-1)+a(n-2)+a(n-4)` -/
def P17202860881034345050.Spec : Prop :=
  ∀ n, (P17202860881034345050.a n : ℤ) = A005314 n

end A005314

/-! ## A005314.P13927224431633830111

`2*a(n-1)-a(n-2)+a(n-3)` with `a(0)=0, a(1)=1, a(2)=2`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A005314

/-- `2*a(n-1)-a(n-2)+a(n-3)` -/
def P13927224431633830111.Spec : Prop :=
  ∀ n, P13927224431633830111.a n = A005314 n

theorem P13927224431633830111.correct : P13927224431633830111.Spec := by
  intro n
  simp only [A005314]

end A005314

/-! ## A005314.P7548155165058070201

`A000931(2*n+4)`
-/

namespace A005314.P7548155165058070201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000931 (2 * n + 4)

end

end A005314.P7548155165058070201

namespace A005314

/-- `A000931(2*n+4)` -/
def P7548155165058070201.Spec : Prop :=
  ∀ n, P7548155165058070201.a n = A005314 n

end A005314

/-! ## A005314.P5697303387464589363

`a(n-1)+A005251(n)` with `a(0)=0`
-/

namespace A005314.P5697303387464589363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) + A005251 n

end

end A005314.P5697303387464589363

namespace A005314

/-- `a(n-1)+A005251(n)` -/
def P5697303387464589363.Spec : Prop :=
  ∀ n, P5697303387464589363.a n = A005314 n

end A005314

/-! ## A005314.P10502281039242516580

`a(n-2)+A049853(n-1)` with `a(0)=0, a(1)=1`
-/

namespace A005314.P10502281039242516580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  a (n - 2) + A049853 (n - 1)

end

end A005314.P10502281039242516580

namespace A005314

/-- `a(n-2)+A049853(n-1)` -/
def P10502281039242516580.Spec : Prop :=
  ∀ n, P10502281039242516580.a n = A005314 n

end A005314

/-! ## A005314.P11860351358678425297

`∑{#}[n, C(n-#, 2*#+1)]`
-/

namespace A005314.P11860351358678425297
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), Nat.choose ((n : ℤ) - (k : ℤ)).toNat (2 * k + 1)

end

end A005314.P11860351358678425297

namespace A005314

/-- `∑{#}[n, C(n-#, 2*#+1)]` -/
def P11860351358678425297.Spec : Prop :=
  ∀ n, (P11860351358678425297.a n : ℤ) = A005314 n

end A005314

/-! ## A005314.P4309545793400766829

`record[a(n-2)-a(n-3)]` with `a(0)=0, a(1)=1, a(2)=1`
-/

namespace A005314.P4309545793400766829
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 1] fun n f1 =>
  f1 (n - 2) - f1 (n - 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A005314.P4309545793400766829

namespace A005314

/-- `record[a(n-2)-a(n-3)]` -/
def P4309545793400766829.Spec : Prop :=
  ∀ n, P4309545793400766829.a n = A005314 n

end A005314

/-! ## A005314.P2906902397197774542

`2*a(n-1)-(a(n-2)-a(n-3))` with `a(0)=0, a(1)=1, a(2)=2`
-/

namespace A005314.P2906902397197774542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 2] fun n a =>
  2 * a (n - 1) - (a (n - 2) - a (n - 3))

end

end A005314.P2906902397197774542

namespace A005314

/-- `2*a(n-1)-(a(n-2)-a(n-3))` -/
def P2906902397197774542.Spec : Prop :=
  ∀ n, P2906902397197774542.a n = A005314 n

theorem P2906902397197774542.correct : P2906902397197774542.Spec := by
  intro n
  simp only [A005314, Nat.add_sub_cancel, A005314.P2906902397197774542.a, A005314.P13927224431633830111.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A005314

/-! ## A005314.P5597343800592060139

`a(n-1)-(a(n-2)-a(n-1)-a(n-3))` with `a(0)=0, a(1)=1, a(2)=2`
-/

namespace A005314.P5597343800592060139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 2] fun n a =>
  a (n - 1) - (a (n - 2) - a (n - 1) - a (n - 3))

end

end A005314.P5597343800592060139

namespace A005314

/-- `a(n-1)-(a(n-2)-a(n-1)-a(n-3))` -/
def P5597343800592060139.Spec : Prop :=
  ∀ n, P5597343800592060139.a n = A005314 n

theorem P5597343800592060139.correct : P5597343800592060139.Spec := by
  intro n
  simp only [A005314, Nat.add_sub_cancel, A005314.P5597343800592060139.a, A005314.P13927224431633830111.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A005314

/-! ## A005314.P7202186922973123980

`∑[A005251(n)]`
-/

namespace A005314.P7202186922973123980
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005251 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A005314.P7202186922973123980

namespace A005314

/-- `∑[A005251(n)]` -/
def P7202186922973123980.Spec : Prop :=
  ∀ n, P7202186922973123980.a n = A005314 n

end A005314

/-! ## A005314.P15850590372565274068

`A182097(Δ[n²])`
-/

namespace A005314.P15850590372565274068
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182097 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A005314.P15850590372565274068

namespace A005314

/-- `A182097(Δ[n²])` -/
def P15850590372565274068.Spec : Prop :=
  ∀ n, P15850590372565274068.a n = A005314 n

end A005314

/-! ## A005314.P4206227711473667552

`record[Δ[A124745(n)]]`
-/

namespace A005314.P4206227711473667552
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124745 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A005314.P4206227711473667552

namespace A005314

/-- `record[Δ[A124745(n)]]` -/
def P4206227711473667552.Spec : Prop :=
  ∀ n, P4206227711473667552.a n = A005314 n

end A005314

/-! ## A005314.P4522813526071786041

`∑[A114775(4*n)]`
-/

namespace A005314.P4522813526071786041
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114775 (4 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A005314.P4522813526071786041

namespace A005314

/-- `∑[A114775(4*n)]` -/
def P4522813526071786041.Spec : Prop :=
  ∀ n, P4522813526071786041.a n = A005314 n

end A005314

/-! ## A005314.P4471301096090910237

`record[A124745(n+3)]`
-/

namespace A005314.P4471301096090910237
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124745 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A005314.P4471301096090910237

namespace A005314

/-- `record[A124745(n+3)]` -/
def P4471301096090910237.Spec : Prop :=
  ∀ n, P4471301096090910237.a n = A005314 n

end A005314

/-! ## A005314.P10037644228208338366

`∑[A000931(Δ[n²])]`
-/

namespace A005314.P10037644228208338366
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000931 ((f2 (n + 1) : ℤ) - (f2 n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A005314.P10037644228208338366

namespace A005314

/-- `∑[A000931(Δ[n²])]` -/
def P10037644228208338366.Spec : Prop :=
  ∀ n, P10037644228208338366.a n = A005314 n

end A005314

/-! ## A005314.P17758971662428899149

`A078027(2*(n+3))`
-/

namespace A005314.P17758971662428899149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078027 (2 * (n + 3))

end

end A005314.P17758971662428899149

namespace A005314

/-- `A078027(2*(n+3))` -/
def P17758971662428899149.Spec : Prop :=
  ∀ n, P17758971662428899149.a n = A005314 n

end A005314

/-! ## A005314.P4571001176999992946

`A124745(2*(n+3))`
-/

namespace A005314.P4571001176999992946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124745 (2 * (n + 3))

end

end A005314.P4571001176999992946

namespace A005314

/-- `A124745(2*(n+3))` -/
def P4571001176999992946.Spec : Prop :=
  ∀ n, P4571001176999992946.a n = A005314 n

end A005314

/-! ## A005314.P8524952395981963701

`A133034(2*(n+4))`
-/

namespace A005314.P8524952395981963701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133034 (2 * (n + 4))

end

end A005314.P8524952395981963701

namespace A005314

/-- `A133034(2*(n+4))` -/
def P8524952395981963701.Spec : Prop :=
  ∀ n, P8524952395981963701.a n = A005314 n

end A005314

/-! ## A005314.P17949403872031591746

`A114775(4*n+5)`
-/

namespace A005314.P17949403872031591746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114775 (4 * n + 5)

end

end A005314.P17949403872031591746

namespace A005314

/-- `A114775(4*n+5)` -/
def P17949403872031591746.Spec : Prop :=
  ∀ n, P17949403872031591746.a n = A005314 n

end A005314

/-!
# A005315: Closed meandric numbers (or meanders): number of ways a loop can cross a road 2n times.

The programs for A005315, there is no canonical definition to state claims against.
-/

/-! ## A005315.P16412831748637248082

`A005316(comp[2*(n+1)])`
-/

namespace A005315.P16412831748637248082
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005316 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A005315.P16412831748637248082

/-! ## A005315.P7357498519825284495

`lcm((-1)^n, A005316(A004273(n)))`
-/

namespace A005315.P7357498519825284495
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm ((-1) ^ n) (A005316 (A004273 n).toNat)

end

end A005315.P7357498519825284495

/-! ## A005315.P14270360814300121431

`or(A000007(n), A005316(A004273(n)))`
-/

namespace A005315.P14270360814300121431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A005316 (A004273 n).toNat)

end

end A005315.P14270360814300121431

/-! ## A005315.P9031476343551459243

`A005316(A004273(n))%A098739(n+1)`
-/

namespace A005315.P9031476343551459243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A005316 (A004273 n).toNat) (A098739 (n + 1))

end

end A005315.P9031476343551459243

/-! ## A005315.P9068620052627225811

`A400429(A102762(n+1))`
-/

namespace A005315.P9068620052627225811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A400429 (A102762 (n + 1)).toNat

end

end A005315.P9068620052627225811

/-!
# A005316: Meandric numbers: number of ways a river can cross a road n times.

The programs for A005316, there is no canonical definition to state claims against.
-/

/-! ## A005316.P143949321912848324

`A077014(n)/A000034(n+1)`
-/

namespace A005316.P143949321912848324
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A077014 n : ℚ) / (A000034 (n + 1) : ℚ)

end

end A005316.P143949321912848324

/-! ## A005316.P11215661443650657565

`A380367(∑[n]+n)`
-/

namespace A005316.P11215661443650657565
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380367 (∑ j ∈ Finset.range (n + 1), f1 j + n)

end

end A005316.P11215661443650657565

/-! ## A005316.P7638866641245588516

`A259974(A033638(n+1))`
-/

namespace A005316.P7638866641245588516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259974 (A033638 (n + 1)).toNat

end

end A005316.P7638866641245588516

/-! ## A005316.P12718071290722812908

`A259974(A135276(n)+1)`
-/

namespace A005316.P12718071290722812908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259974 (A135276 n + 1).toNat

end

end A005316.P12718071290722812908

/-! ## A005316.P3990842825008708052

`A259974(A363283(n+1))`
-/

namespace A005316.P3990842825008708052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259974 (A363283 (n + 1)).toNat

end

end A005316.P3990842825008708052

/-!
# A005317: a(n) = (2^n + C(2*n,n))/2.

The programs for A005317, the canonical program `A005317.P10289700950252077062` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A005317 has offset 0).

The definition of A005317 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A005317.P10289700950252077062

`(2^n+C(2*n, n))/2`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A005317

/-- `(2^n+C(2*n, n))/2` -/
def P10289700950252077062.Spec : Prop :=
  ∀ n, P10289700950252077062.a n = (A005317 n : ℚ)

end A005317

/-! ## A005317.P7893727213755948134

`∑{#}[floor(n/2), (-1)^#*C(2*n, n-2*#)]`
-/

namespace A005317.P7893727213755948134
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℚ) / 2⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1).toNat, (-1) ^ k * (Nat.choose (2 * n) ((n : ℤ) - (2 * k : ℤ)).toNat : ℤ)

end

end A005317.P7893727213755948134

namespace A005317

/-- `∑{#}[floor(n/2), (-1)^#*C(2*n, n-2*#)]` -/
def P7893727213755948134.Spec : Prop :=
  ∀ n, P7893727213755948134.a n = A005317 n

end A005317

/-! ## A005317.P8097681890097808047

`(A000984(n)+2^n)/2`
-/

namespace A005317.P8097681890097808047
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000984 n + (2 ^ n : ℤ) : ℚ) / 2

end

end A005317.P8097681890097808047

namespace A005317

/-- `(A000984(n)+2^n)/2` -/
def P8097681890097808047.Spec : Prop :=
  ∀ n, P8097681890097808047.a n = (A005317 n : ℚ)

end A005317

/-! ## A005317.P8394446778440315092

`A088218(n)+floor(2^(n-1))`
-/

namespace A005317.P8394446778440315092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088218 n + ⌊(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌋

end

end A005317.P8394446778440315092

namespace A005317

/-- `A088218(n)+floor(2^(n-1))` -/
def P8394446778440315092.Spec : Prop :=
  ∀ n, P8394446778440315092.a n = A005317 n

end A005317

/-! ## A005317.P12711965337548733511

`(A001405(2*n)+2^n)/2`
-/

namespace A005317.P12711965337548733511
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001405 (2 * n) + (2 ^ n : ℤ) : ℚ) / 2

end

end A005317.P12711965337548733511

namespace A005317

/-- `(A001405(2*n)+2^n)/2` -/
def P12711965337548733511.Spec : Prop :=
  ∀ n, P12711965337548733511.a n = (A005317 n : ℚ)

end A005317

/-! ## A005317.P8096514424661465663

`2^n+A045676(2*n+1)/2`
-/

namespace A005317.P8096514424661465663
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℚ) + (A045676 (2 * n + 1) : ℚ) / 2

end

end A005317.P8096514424661465663

namespace A005317

/-- `2^n+A045676(2*n+1)/2` -/
def P8096514424661465663.Spec : Prop :=
  ∀ n, P8096514424661465663.a n = (A005317 n : ℚ)

end A005317

/-! ## A005317.P16814507064755927715

`(2^n+(n+1)*A000108(n))/2`
-/

namespace A005317.P16814507064755927715
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((2 ^ n : ℤ) + (n + 1 : ℤ) * A000108 n : ℚ) / 2

end

end A005317.P16814507064755927715

namespace A005317

/-- `(2^n+(n+1)*A000108(n))/2` -/
def P16814507064755927715.Spec : Prop :=
  ∀ n, P16814507064755927715.a n = (A005317 n : ℚ)

end A005317

/-! ## A005317.P17228690309932265467

`A058622(n)+A032123(n)`
-/

namespace A005317.P17228690309932265467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058622 n + A032123 n

end

end A005317.P17228690309932265467

namespace A005317

/-- `A058622(n)+A032123(n)` -/
def P17228690309932265467.Spec : Prop :=
  ∀ n, P17228690309932265467.a n = A005317 n

end A005317

/-! ## A005317.P11826895295138228896

`A131577(n)+A088218(n)`
-/

namespace A005317.P11826895295138228896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131577 n + A088218 n

end

end A005317.P11826895295138228896

namespace A005317

/-- `A131577(n)+A088218(n)` -/
def P11826895295138228896.Spec : Prop :=
  ∀ n, P11826895295138228896.a n = A005317 n

end A005317

/-! ## A005317.P17132921990435765485

`A189176(n)-A125107(n)`
-/

namespace A005317.P17132921990435765485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189176 n - A125107 n

end

end A005317.P17132921990435765485

namespace A005317

/-- `A189176(n)-A125107(n)` -/
def P17132921990435765485.Spec : Prop :=
  ∀ n, P17132921990435765485.a n = A005317 n

end A005317

/-! ## A005317.P12733716438602567166

`A131577(n)+abs(A110556(n))`
-/

namespace A005317.P12733716438602567166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131577 n + |A110556 n|

end

end A005317.P12733716438602567166

namespace A005317

/-- `A131577(n)+abs(A110556(n))` -/
def P12733716438602567166.Spec : Prop :=
  ∀ n, P12733716438602567166.a n = A005317 n

end A005317

/-! ## A005317.P13401759771474786621

`A011782(n)+record[A138364(n)]`
-/

namespace A005317.P13401759771474786621
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138364 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 n + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A005317.P13401759771474786621

namespace A005317

/-- `A011782(n)+record[A138364(n)]` -/
def P13401759771474786621.Spec : Prop :=
  ∀ n, P13401759771474786621.a n = A005317 n

end A005317

/-! ## A005317.P9214952757407656713

`record[A138364(n)+A016116(n)]`
-/

namespace A005317.P9214952757407656713
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138364 n + A016116 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A005317.P9214952757407656713

namespace A005317

/-- `record[A138364(n)+A016116(n)]` -/
def P9214952757407656713.Spec : Prop :=
  ∀ n, P9214952757407656713.a n = A005317 n

end A005317

/-! ## A005317.P16759345250539650945

`A210736(2*n)+A131577(n)`
-/

namespace A005317.P16759345250539650945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210736 (2 * n) + A131577 n

end

end A005317.P16759345250539650945

namespace A005317

/-- `A210736(2*n)+A131577(n)` -/
def P16759345250539650945.Spec : Prop :=
  ∀ n, P16759345250539650945.a n = A005317 n

end A005317

/-! ## A005317.P11801131898120387505

`floor((A000984(n)+A000079(n))/2)`
-/

namespace A005317.P11801131898120387505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A000984 n + A000079 n : ℚ) / 2⌋

end

end A005317.P11801131898120387505

namespace A005317

/-- `floor((A000984(n)+A000079(n))/2)` -/
def P11801131898120387505.Spec : Prop :=
  ∀ n, P11801131898120387505.a n = A005317 n

end A005317

/-! ## A005317.P7213536595778314305

`floor(A011782(n)+A000984(n)/2)`
-/

namespace A005317.P7213536595778314305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A011782 n : ℚ) + (A000984 n : ℚ) / 2⌋

end

end A005317.P7213536595778314305

namespace A005317

/-- `floor(A011782(n)+A000984(n)/2)` -/
def P7213536595778314305.Spec : Prop :=
  ∀ n, P7213536595778314305.a n = A005317 n

end A005317

/-! ## A005317.P7364865598930340050

`floor(A088218(n)+A000079(n)/2)`
-/

namespace A005317.P7364865598930340050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A088218 n : ℚ) + (A000079 n : ℚ) / 2⌋

end

end A005317.P7364865598930340050

namespace A005317

/-- `floor(A088218(n)+A000079(n)/2)` -/
def P7364865598930340050.Spec : Prop :=
  ∀ n, P7364865598930340050.a n = A005317 n

end A005317

/-! ## A005317.P531467684618686882

`A210736(2*n)+∑[A166444(n)]`
-/

namespace A005317.P531467684618686882
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166444 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210736 (2 * n) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A005317.P531467684618686882

namespace A005317

/-- `A210736(2*n)+∑[A166444(n)]` -/
def P531467684618686882.Spec : Prop :=
  ∀ n, P531467684618686882.a n = A005317 n

end A005317

/-! ## A005317.P164936145338868044

`A210736(2*n)+Δ[A011782(n)]`
-/

namespace A005317.P164936145338868044
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210736 (2 * n) + (f1 (n + 1) - f1 n)

end

end A005317.P164936145338868044

namespace A005317

/-- `A210736(2*n)+Δ[A011782(n)]` -/
def P164936145338868044.Spec : Prop :=
  ∀ n, P164936145338868044.a n = A005317 n

end A005317

/-! ## A005317.P5827783002878992260

`record[(A126930(n)+A016116(n))/2]`
-/

namespace A005317.P5827783002878992260
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A126930 n + A016116 n : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A005317.P5827783002878992260

namespace A005317

/-- `record[(A126930(n)+A016116(n))/2]` -/
def P5827783002878992260.Spec : Prop :=
  ∀ n, P5827783002878992260.a n = (A005317 n : ℚ)

end A005317

/-!
# A005318: Conway-Guy sequence: a(n + 1) = 2a(n) - a(n - floor( 1/2 + sqrt(2n) )).

The programs for A005318, the canonical program `A005318.P4026112082600084822` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A005318 has offset 0).

The definition of A005318 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A005318.P4026112082600084822

`2*a(n-1)-a(n-floor(sqrt(2)*sqrt(n-1)+1/2)-1)` with `a(0)=0, a(1)=1`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A005318

/-- `2*a(n-1)-a(n-floor(sqrt(2)*sqrt(n-1)+1/2)-1)` -/
def P4026112082600084822.Spec : Prop :=
  ∀ n, P4026112082600084822.a n = A005318 n

theorem P4026112082600084822.correct : P4026112082600084822.Spec := by
  intro n
  simp only [A005318]

end A005318

/-! ## A005318.P12736025020679297296

`∑[A005230(A028310(n))]-1`
-/

namespace A005318.P12736025020679297296
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005230 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A005318.P12736025020679297296

namespace A005318

/-- `∑[A005230(A028310(n))]-1` -/
def P12736025020679297296.Spec : Prop :=
  ∀ n, P12736025020679297296.a n = A005318 n

end A005318

/-! ## A005318.P6182610548898215849

`∑[A005230(n+1)]-A005230(n+1)`
-/

namespace A005318.P6182610548898215849
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005230 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A005230 (n + 1)

end

end A005318.P6182610548898215849

namespace A005318

/-- `∑[A005230(n+1)]-A005230(n+1)` -/
def P6182610548898215849.Spec : Prop :=
  ∀ n, P6182610548898215849.a n = A005318 n

end A005318

/-! ## A005318.P15813828737499003573

`∑[A005230(A028310(n))%A000079(n)]`
-/

namespace A005318.P15813828737499003573
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A005230 (A028310 n).toNat) (A000079 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A005318.P15813828737499003573

namespace A005318

/-- `∑[A005230(A028310(n))%A000079(n)]` -/
def P15813828737499003573.Spec : Prop :=
  ∀ n, P15813828737499003573.a n = A005318 n

end A005318

/-! ## A005318.P1838566951368670739

`∑[A096858(∑[n-1]+2)]-1`
-/

namespace A005318.P1838566951368670739
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096858 (∑ j ∈ Finset.range (n + 1), f2 j + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A005318.P1838566951368670739

namespace A005318

/-- `∑[A096858(∑[n-1]+2)]-1` -/
def P1838566951368670739.Spec : Prop :=
  ∀ n, P1838566951368670739.a n = A005318 n

end A005318

/-! ## A005318.P9367330123980620240

`A096858(A179865(n+1))-A000007(n)`
-/

namespace A005318.P9367330123980620240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096858 (A179865 (n + 1)).toNat - A000007 n

end

end A005318.P9367330123980620240

namespace A005318

/-- `A096858(A179865(n+1))-A000007(n)` -/
def P9367330123980620240.Spec : Prop :=
  ∀ n, P9367330123980620240.a n = A005318 n

end A005318

/-! ## A005318.P13349208899199897620

`A057427(n)*A096858(A179865(n+1))`
-/

namespace A005318.P13349208899199897620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n * A096858 (A179865 (n + 1)).toNat

end

end A005318.P13349208899199897620

namespace A005318

/-- `A057427(n)*A096858(A179865(n+1))` -/
def P13349208899199897620.Spec : Prop :=
  ∀ n, P13349208899199897620.a n = A005318 n

end A005318

/-! ## A005318.P10864094479825522834

`A096858(A179865(n+1))%A000079(n)`
-/

namespace A005318.P10864094479825522834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A096858 (A179865 (n + 1)).toNat) (A000079 n)

end

end A005318.P10864094479825522834

namespace A005318

/-- `A096858(A179865(n+1))%A000079(n)` -/
def P10864094479825522834.Spec : Prop :=
  ∀ n, P10864094479825522834.a n = A005318 n

end A005318

/-! ## A005318.P4409139267782482273

`∑[A005230(n+1)]-A096858(A000124(n))`
-/

namespace A005318.P4409139267782482273
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005230 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A096858 (A000124 n).toNat

end

end A005318.P4409139267782482273

namespace A005318

/-- `∑[A005230(n+1)]-A096858(A000124(n))` -/
def P4409139267782482273.Spec : Prop :=
  ∀ n, P4409139267782482273.a n = A005318 n

end A005318

/-! ## A005318.P17984796569713033804

`A096858(A000124(n)+n)-A005230(n+1)`
-/

namespace A005318.P17984796569713033804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096858 (A000124 n + (n : ℤ)).toNat - A005230 (n + 1)

end

end A005318.P17984796569713033804

namespace A005318

/-- `A096858(A000124(n)+n)-A005230(n+1)` -/
def P17984796569713033804.Spec : Prop :=
  ∀ n, P17984796569713033804.a n = A005318 n

end A005318

/-!
# A005319: a(n) = 6*a(n-1) - a(n-2).

The programs for A005319, the canonical program `A005319.P15449255435461724459` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A005319 has offset 0).

The definition of A005319 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `6*a(n-1)-a(n-2)` (program `A005319.P15449255435461724459`, by `A005319.P15449255435461724459.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A005319.P5720113953823891507

`ogf(4x/(1-6x+x^2))`
-/

namespace A005319.P5720113953823891507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 4] [1, -6, 1] n

end

end A005319.P5720113953823891507

namespace A005319

/-- `ogf(4x/(1-6x+x^2))` -/
def P5720113953823891507.Spec : Prop :=
  ∀ n, P5720113953823891507.a n = A005319 n

end A005319

/-! ## A005319.P15449255435461724459

`6*a(n-1)-a(n-2)` with `a(0)=0, a(1)=4`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A005319

/-- `6*a(n-1)-a(n-2)` -/
def P15449255435461724459.Spec : Prop :=
  ∀ n, P15449255435461724459.a n = A005319 n

theorem P15449255435461724459.correct : P15449255435461724459.Spec := by
  intro n
  simp only [A005319]

end A005319

/-! ## A005319.P9497851684863937359

`4*A001109(n)`
-/

namespace A005319.P9497851684863937359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A001109 n

end

end A005319.P9497851684863937359

namespace A005319

/-- `4*A001109(n)` -/
def P9497851684863937359.Spec : Prop :=
  ∀ n, P9497851684863937359.a n = A005319 n

end A005319

/-! ## A005319.P2919795980447610009

`2*A000129(2*n)`
-/

namespace A005319.P2919795980447610009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000129 (2 * n)

end

end A005319.P2919795980447610009

namespace A005319

/-- `2*A000129(2*n)` -/
def P2919795980447610009.Spec : Prop :=
  ∀ n, P2919795980447610009.a n = A005319 n

end A005319

/-! ## A005319.P14213830525540503337

`Δ[floor(a(n-1)/(3-sqrt(8)))]` with `a(0)=1, a(1)=1`
-/

namespace A005319.P14213830525540503337
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n f1 =>
  ⌊(f1 (n - 1) : ℝ) / (3 - Real.sqrt (8 : ℝ))⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A005319.P14213830525540503337

namespace A005319

/-- `Δ[floor(a(n-1)/(3-sqrt(8)))]` -/
def P14213830525540503337.Spec : Prop :=
  ∀ n, P14213830525540503337.a n = A005319 n

end A005319

/-! ## A005319.P14009693963108201448

`Δ[round(a(n-1)/(3-sqrt(8)))]` with `a(0)=1, a(1)=1, a(2)=5`
-/

namespace A005319.P14009693963108201448
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 5] fun n f1 =>
  SequenceMachineLib.roundAway ((f1 (n - 1) : ℝ) / (3 - Real.sqrt (8 : ℝ)))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A005319.P14009693963108201448

namespace A005319

/-- `Δ[round(a(n-1)/(3-sqrt(8)))]` -/
def P14009693963108201448.Spec : Prop :=
  ∀ n, P14009693963108201448.a n = A005319 n

end A005319

/-! ## A005319.P11668996646639216627

`Δ[lcm(6, a(n-1))-a(n-2)]` with `a(0)=1, a(1)=1`
-/

namespace A005319.P11668996646639216627
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n f1 =>
  (Int.lcm 6 (f1 (n - 1)) : ℤ) - f1 (n - 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A005319.P11668996646639216627

namespace A005319

/-- `Δ[lcm(6, a(n-1))-a(n-2)]` -/
def P11668996646639216627.Spec : Prop :=
  ∀ n, P11668996646639216627.a n = A005319 n

end A005319

/-! ## A005319.P13124574448546032717

`2*A001542(n)`
-/

namespace A005319.P13124574448546032717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A001542 n

end

end A005319.P13124574448546032717

namespace A005319

/-- `2*A001542(n)` -/
def P13124574448546032717.Spec : Prop :=
  ∀ n, P13124574448546032717.a n = A005319 n

end A005319

/-! ## A005319.P17827666397369517899

`A089499(2*n)`
-/

namespace A005319.P17827666397369517899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089499 (2 * n)

end

end A005319.P17827666397369517899

namespace A005319

/-- `A089499(2*n)` -/
def P17827666397369517899.Spec : Prop :=
  ∀ n, P17827666397369517899.a n = A005319 n

end A005319

/-! ## A005319.P3247922300914557916

`A143608(2*n)`
-/

namespace A005319.P3247922300914557916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143608 (2 * n)

end

end A005319.P3247922300914557916

namespace A005319

/-- `A143608(2*n)` -/
def P3247922300914557916.Spec : Prop :=
  ∀ n, P3247922300914557916.a n = A005319 n

end A005319

/-! ## A005319.P15105472849087253278

`A081554(n)/2`
-/

namespace A005319.P15105472849087253278
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A081554 n : ℚ) / 2

end

end A005319.P15105472849087253278

namespace A005319

/-- `A081554(n)/2` -/
def P15105472849087253278.Spec : Prop :=
  ∀ n, P15105472849087253278.a n = (A005319 n : ℚ)

end A005319

/-! ## A005319.P11020335504682370274

`A097564(6*n)`
-/

namespace A005319.P11020335504682370274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097564 (6 * n)

end

end A005319.P11020335504682370274

namespace A005319

/-- `A097564(6*n)` -/
def P11020335504682370274.Spec : Prop :=
  ∀ n, P11020335504682370274.a n = A005319 n

end A005319

/-! ## A005319.P11959035952929242762

`A163271(Δ[n²])`
-/

namespace A005319.P11959035952929242762
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163271 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A005319.P11959035952929242762

namespace A005319

/-- `A163271(Δ[n²])` -/
def P11959035952929242762.Spec : Prop :=
  ∀ n, P11959035952929242762.a n = A005319 n

end A005319

/-! ## A005319.P16388355341384938531

`Δ[A350921(n)/2]`
-/

namespace A005319.P16388355341384938531
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A350921 n : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A005319.P16388355341384938531

namespace A005319

/-- `Δ[A350921(n)/2]` -/
def P16388355341384938531.Spec : Prop :=
  ∀ n, P16388355341384938531.a n = (A005319 n : ℚ)

end A005319

/-! ## A005319.P1220198719149461144

`Δ[A215936(Δ[n²])]`
-/

namespace A005319.P1220198719149461144
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215936 ((f2 (n + 1) : ℤ) - (f2 n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A005319.P1220198719149461144

namespace A005319

/-- `Δ[A215936(Δ[n²])]` -/
def P1220198719149461144.Spec : Prop :=
  ∀ n, P1220198719149461144.a n = A005319 n

end A005319

/-! ## A005319.P1591479830773220806

`2*(1-A182188(n))`
-/

namespace A005319.P1591479830773220806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (1 - A182188 n)

end

end A005319.P1591479830773220806

namespace A005319

/-- `2*(1-A182188(n))` -/
def P1591479830773220806.Spec : Prop :=
  ∀ n, P1591479830773220806.a n = A005319 n

end A005319

/-! ## A005319.P2033860688109500412

`2*(A182189(n)-1)`
-/

namespace A005319.P2033860688109500412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A182189 n - 1)

end

end A005319.P2033860688109500412

namespace A005319

/-- `2*(A182189(n)-1)` -/
def P2033860688109500412.Spec : Prop :=
  ∀ n, P2033860688109500412.a n = A005319 n

end A005319

/-! ## A005319.P8264093866324786621

`(A114040(n)-1)/2`
-/

namespace A005319.P8264093866324786621
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A114040 n - 1 : ℚ) / 2

end

end A005319.P8264093866324786621

namespace A005319

/-- `(A114040(n)-1)/2` -/
def P8264093866324786621.Spec : Prop :=
  ∀ n, P8264093866324786621.a n = (A005319 n : ℚ)

end A005319

/-! ## A005319.P6266579639623619167

`2/3*A075848(n)`
-/

namespace A005319.P6266579639623619167
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) / 3 * (A075848 n : ℚ)

end

end A005319.P6266579639623619167

namespace A005319

/-- `2/3*A075848(n)` -/
def P6266579639623619167.Spec : Prop :=
  ∀ n, P6266579639623619167.a n = (A005319 n : ℚ)

end A005319

/-! ## A005319.P16475685281078778496

`A137199(Δ[n²])-1`
-/

namespace A005319.P16475685281078778496
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137199 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat - 1

end

end A005319.P16475685281078778496

namespace A005319

/-- `A137199(Δ[n²])-1` -/
def P16475685281078778496.Spec : Prop :=
  ∀ n, P16475685281078778496.a n = A005319 n

end A005319

/-!
# A005320: a(n) = 4*a(n-1) - a(n-2), with a(0) = 0, a(1) = 3.

The programs for A005320, the canonical program `A005320.P13982231631067851633` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A005320 has offset 0).

The definition of A005320 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `4*a(n-1)-a(n-2)` (program `A005320.P13982231631067851633`, by `A005320.P13982231631067851633.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A005320.P10952073080342140567

`ogf(3x/(1-4x+x^2))`
-/

namespace A005320.P10952073080342140567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 3] [1, -4, 1] n

end

end A005320.P10952073080342140567

namespace A005320

/-- `ogf(3x/(1-4x+x^2))` -/
def P10952073080342140567.Spec : Prop :=
  ∀ n, P10952073080342140567.a n = A005320 n

end A005320

/-! ## A005320.P13982231631067851633

`4*a(n-1)-a(n-2)` with `a(0)=0, a(1)=3`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A005320

/-- `4*a(n-1)-a(n-2)` -/
def P13982231631067851633.Spec : Prop :=
  ∀ n, P13982231631067851633.a n = A005320 n

theorem P13982231631067851633.correct : P13982231631067851633.Spec := by
  intro n
  simp only [A005320]

end A005320

/-! ## A005320.P7809773714748047289

`3*A001353(n)`
-/

namespace A005320.P7809773714748047289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A001353 n

end

end A005320.P7809773714748047289

namespace A005320

/-- `3*A001353(n)` -/
def P7809773714748047289.Spec : Prop :=
  ∀ n, P7809773714748047289.a n = A005320 n

end A005320

/-! ## A005320.P18073663977039315172

`ceil((sqrt(3)+2)*a(n-1))` with `a(0)=0, a(1)=3`
-/

namespace A005320.P18073663977039315172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 3] fun n a =>
  ⌈(Real.sqrt (3 : ℝ) + 2) * (a (n - 1) : ℝ)⌉

end

end A005320.P18073663977039315172

namespace A005320

/-- `ceil((sqrt(3)+2)*a(n-1))` -/
def P18073663977039315172.Spec : Prop :=
  ∀ n, P18073663977039315172.a n = A005320 n

end A005320

/-! ## A005320.P7834716704972370356

`a(n-1)/(1/2)²-a(n-2)` with `a(0)=0, a(1)=3`
-/

namespace A005320.P7834716704972370356
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [0, 3] fun n a =>
  a (n - 1) / ((1 : ℚ) / 2) ^ 2 - a (n - 2)

end

end A005320.P7834716704972370356

namespace A005320

/-- `a(n-1)/(1/2)²-a(n-2)` -/
def P7834716704972370356.Spec : Prop :=
  ∀ n, P7834716704972370356.a n = (A005320 n : ℚ)

end A005320

/-! ## A005320.P10611722786957728127

`a(n-1)+a(n-1)+a(n-1)+a(n-1)-a(n-2)` with `a(0)=0, a(1)=3`
-/

namespace A005320.P10611722786957728127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 3] fun n a =>
  a (n - 1) + (a (n - 1) + (a (n - 1) + (a (n - 1) - a (n - 2))))

end

end A005320.P10611722786957728127

namespace A005320

/-- `a(n-1)+a(n-1)+a(n-1)+a(n-1)-a(n-2)` -/
def P10611722786957728127.Spec : Prop :=
  ∀ n, P10611722786957728127.a n = A005320 n

theorem P10611722786957728127.correct : P10611722786957728127.Spec := by
  intro n
  simp only [A005320, Nat.add_sub_cancel, A005320.P10611722786957728127.a, A005320.P13982231631067851633.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A005320

/-! ## A005320.P16357867324165447674

`a(n-1)-(a(n-2)-a(n-1)-a(n-1)-a(n-1))` with `a(0)=0, a(1)=3`
-/

namespace A005320.P16357867324165447674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 3] fun n a =>
  a (n - 1) - (a (n - 2) - a (n - 1) - a (n - 1) - a (n - 1))

end

end A005320.P16357867324165447674

namespace A005320

/-- `a(n-1)-(a(n-2)-a(n-1)-a(n-1)-a(n-1))` -/
def P16357867324165447674.Spec : Prop :=
  ∀ n, P16357867324165447674.a n = A005320 n

theorem P16357867324165447674.correct : P16357867324165447674.Spec := by
  intro n
  simp only [A005320, Nat.add_sub_cancel, A005320.P16357867324165447674.a, A005320.P13982231631067851633.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A005320

/-! ## A005320.P17005862729919634665

`floor(A001352(n)/2)`
-/

namespace A005320.P17005862729919634665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A001352 n : ℚ) / 2⌋

end

end A005320.P17005862729919634665

namespace A005320

/-- `floor(A001352(n)/2)` -/
def P17005862729919634665.Spec : Prop :=
  ∀ n, P17005862729919634665.a n = A005320 n

end A005320

/-! ## A005320.P6603941692185708296

`Δ[3*A101879(n)]`
-/

namespace A005320.P6603941692185708296
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A101879 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A005320.P6603941692185708296

namespace A005320

/-- `Δ[3*A101879(n)]` -/
def P6603941692185708296.Spec : Prop :=
  ∀ n, P6603941692185708296.a n = A005320 n

end A005320

/-! ## A005320.P13800585444257435700

`Δ[A350920(n)/2]`
-/

namespace A005320.P13800585444257435700
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A350920 n : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A005320.P13800585444257435700

namespace A005320

/-- `Δ[A350920(n)/2]` -/
def P13800585444257435700.Spec : Prop :=
  ∀ n, P13800585444257435700.a n = (A005320 n : ℚ)

end A005320

/-! ## A005320.P9929763805651858651

`3*(A072110(n)-1)`
-/

namespace A005320.P9929763805651858651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * (A072110 n - 1)

end

end A005320.P9929763805651858651

namespace A005320

/-- `3*(A072110(n)-1)` -/
def P9929763805651858651.Spec : Prop :=
  ∀ n, P9929763805651858651.a n = A005320 n

end A005320

/-! ## A005320.P13133723113174209891

`A249578(3*n+2)`
-/

namespace A005320.P13133723113174209891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249578 (3 * n + 2)

end

end A005320.P13133723113174209891

namespace A005320

/-- `A249578(3*n+2)` -/
def P13133723113174209891.Spec : Prop :=
  ∀ n, P13133723113174209891.a n = A005320 n

end A005320

/-! ## A005320.P14936357805750539478

`3*A002530(2*n)`
-/

namespace A005320.P14936357805750539478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A002530 (2 * n)

end

end A005320.P14936357805750539478

namespace A005320

/-- `3*A002530(2*n)` -/
def P14936357805750539478.Spec : Prop :=
  ∀ n, P14936357805750539478.a n = A005320 n

end A005320

/-! ## A005320.P2211087844875627343

`3/2*A052530(n)`
-/

namespace A005320.P2211087844875627343
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 : ℚ) / 2 * (A052530 n : ℚ)

end

end A005320.P2211087844875627343

namespace A005320

/-- `3/2*A052530(n)` -/
def P2211087844875627343.Spec : Prop :=
  ∀ n, P2211087844875627343.a n = (A005320 n : ℚ)

end A005320

/-! ## A005320.P12586410917650955413

`3*A249578(3*n)`
-/

namespace A005320.P12586410917650955413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A249578 (3 * n)

end

end A005320.P12586410917650955413

namespace A005320

/-- `3*A249578(3*n)` -/
def P12586410917650955413.Spec : Prop :=
  ∀ n, P12586410917650955413.a n = A005320 n

end A005320

/-! ## A005320.P4685372393944339554

`3/4*A231896(n)`
-/

namespace A005320.P4685372393944339554
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 : ℚ) / 4 * (A231896 n : ℚ)

end

end A005320.P4685372393944339554

namespace A005320

/-- `3/4*A231896(n)` -/
def P4685372393944339554.Spec : Prop :=
  ∀ n, P4685372393944339554.a n = (A005320 n : ℚ)

end A005320

/-! ## A005320.P15978811014718613627

`A272073(2*(n+1))/2`
-/

namespace A005320.P15978811014718613627
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A272073 (2 * (n + 1)) : ℚ) / 2

end

end A005320.P15978811014718613627

namespace A005320

/-- `A272073(2*(n+1))/2` -/
def P15978811014718613627.Spec : Prop :=
  ∀ n, P15978811014718613627.a n = (A005320 n : ℚ)

end A005320

/-! ## A005320.P10783864442803596160

`abs(Δ[A108413(2*n)/2])`
-/

namespace A005320.P10783864442803596160
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A108413 (2 * n) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A005320.P10783864442803596160

namespace A005320

/-- `abs(Δ[A108413(2*n)/2])` -/
def P10783864442803596160.Spec : Prop :=
  ∀ n, P10783864442803596160.a n = (A005320 n : ℚ)

end A005320

/-! ## A005320.P7268432719858008020

`A052530(n)+A001353(n)`
-/

namespace A005320.P7268432719858008020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052530 n + A001353 n

end

end A005320.P7268432719858008020

namespace A005320

/-- `A052530(n)+A001353(n)` -/
def P7268432719858008020.Spec : Prop :=
  ∀ n, P7268432719858008020.a n = A005320 n

end A005320

/-! ## A005320.P7041793450251983095

`A231896(n)+A106707(n)`
-/

namespace A005320.P7041793450251983095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231896 n + A106707 n

end

end A005320.P7041793450251983095

namespace A005320

/-- `A231896(n)+A106707(n)` -/
def P7041793450251983095.Spec : Prop :=
  ∀ n, P7041793450251983095.a n = A005320 n

end A005320

/-!
# A005321: Upper triangular n X n (0,1)-matrices with no zero rows or columns.

The programs for A005321, the canonical program `A005321.P15189112094571722727` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A005321 has offset 0).

The definition of A005321 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A005321.P15189112094571722727

`∑{#}[n, C(n, #)*A005327(#+1)]`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A005321

/-- `∑{#}[n, C(n, #)*A005327(#+1)]` -/
def P15189112094571722727.Spec : Prop :=
  ∀ n, P15189112094571722727.a n = A005321 n

theorem P15189112094571722727.correct : P15189112094571722727.Spec := by
  intro n
  simp only [A005321]

end A005321

/-! ## A005321.P1103724348703543991

`Δ[A096824(∑[char[1]+n]-n)]`
-/

namespace A005321.P1103724348703543991
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f3 j = n then 1 else 0) + n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096824 (∑ j ∈ Finset.range (n + 1), f2 j - n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A005321.P1103724348703543991

namespace A005321

/-- `Δ[A096824(∑[char[1]+n]-n)]` -/
def P1103724348703543991.Spec : Prop :=
  ∀ n, P1103724348703543991.a n = A005321 n

end A005321

/-! ## A005321.P13028224373311063052

`ceil(A005016(n+1)/A000079(n+1))`
-/

namespace A005321.P13028224373311063052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A005016 (n + 1) : ℚ) / (A000079 (n + 1) : ℚ)⌉

end

end A005321.P13028224373311063052

namespace A005321

/-- `ceil(A005016(n+1)/A000079(n+1))` -/
def P13028224373311063052.Spec : Prop :=
  ∀ n, P13028224373311063052.a n = A005321 n

end A005321

/-! ## A005321.P4544477232349639618

`A369415(∑[n+1]+n)`
-/

namespace A005321.P4544477232349639618
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369415 (∑ j ∈ Finset.range (n + 1), f1 j + n)

end

end A005321.P4544477232349639618

namespace A005321

/-- `A369415(∑[n+1]+n)` -/
def P4544477232349639618.Spec : Prop :=
  ∀ n, P4544477232349639618.a n = A005321 n

end A005321

/-!
# A005322: Column of Motzkin triangle.

The programs for A005322, the canonical program `A005322.P16684099688218700763` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A005322 has offset 2).

The definition of A005322 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 214 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A005322.P16684099688218700763

`∑[A026134(n+1)]`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A005322

/-- `∑[A026134(n+1)]` -/
def P16684099688218700763.Spec : Prop :=
  ∀ n, P16684099688218700763.a n = A005322 (n + 2)

theorem P16684099688218700763.correct : P16684099688218700763.Spec := by
  intro n
  simp only [A005322, Nat.add_sub_cancel]

end A005322

/-! ## A005322.P16269271340807609170

`a(n-1)+A026325(n)+a(n-1)` with `a(0)=1`
-/

namespace A005322.P16269271340807609170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (A026325 n + a (n - 1))

end

end A005322.P16269271340807609170

namespace A005322

/-- `a(n-1)+A026325(n)+a(n-1)` -/
def P16269271340807609170.Spec : Prop :=
  ∀ n, P16269271340807609170.a n = A005322 (n + 2)

end A005322

/-! ## A005322.P17254449537794419216

`A026107(n+3)-A001006(n+2)`
-/

namespace A005322.P17254449537794419216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026107 (n + 3) - A001006 (n + 2)

end

end A005322.P17254449537794419216

namespace A005322

/-- `A026107(n+3)-A001006(n+2)` -/
def P17254449537794419216.Spec : Prop :=
  ∀ n, P17254449537794419216.a n = A005322 (n + 2)

end A005322

/-! ## A005322.P10435402611911107798

`2*A026134(n+1)-A026325(n)`
-/

namespace A005322.P10435402611911107798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A026134 (n + 1) - A026325 n

end

end A005322.P10435402611911107798

namespace A005322

/-- `2*A026134(n+1)-A026325(n)` -/
def P10435402611911107798.Spec : Prop :=
  ∀ n, P10435402611911107798.a n = A005322 (n + 2)

theorem P10435402611911107798.correct : P10435402611911107798.Spec := by
  intro n
  simp only [A005322, Nat.add_sub_cancel, A005322.P10435402611911107798.a, A005322.P16684099688218700763.f1, A005322.P16684099688218700763.a, A026134, A026134.P2296897511124696960.a, A026325, A026325.P12326969144217981572.a, A002026, A002026.P17776616079043433200.a, A026122, A026122.P10047697498519479443.f1, A026122.P10047697498519479443.a, A001006, A001006.P11199602840237397285.a, A026107, A026107.P8700625693626820289.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A005322

/-! ## A005322.P14064162141518158088

`∑[∑[A026122(n+2)-A026107(n+2)]]`
-/

namespace A005322.P14064162141518158088
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026122 (n + 2) - A026107 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A005322.P14064162141518158088

namespace A005322

/-- `∑[∑[A026122(n+2)-A026107(n+2)]]` -/
def P14064162141518158088.Spec : Prop :=
  ∀ n, P14064162141518158088.a n = A005322 (n + 2)

end A005322

/-! ## A005322.P15746679652983810411

`record[A105695(n)-A086246(n)]`
-/

namespace A005322.P15746679652983810411
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105695 n - A086246 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A005322.P15746679652983810411

namespace A005322

/-- `record[A105695(n)-A086246(n)]` -/
def P15746679652983810411.Spec : Prop :=
  ∀ n, P15746679652983810411.a n = A005322 (n + 2)

end A005322

/-! ## A005322.P12367116861120590187

`record[abs(A001006(n)-A002026(n))]`
-/

namespace A005322.P12367116861120590187
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A001006 n - A002026 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A005322.P12367116861120590187

namespace A005322

/-- `record[abs(A001006(n)-A002026(n))]` -/
def P12367116861120590187.Spec : Prop :=
  ∀ n, P12367116861120590187.a n = A005322 (n + 2)

end A005322

/-! ## A005322.P11782797782571555953

`record[abs(A166587(n))-A007971(n)]`
-/

namespace A005322.P11782797782571555953
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A166587 n| - A007971 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A005322.P11782797782571555953

namespace A005322

/-- `record[abs(A166587(n))-A007971(n)]` -/
def P11782797782571555953.Spec : Prop :=
  ∀ n, P11782797782571555953.a n = A005322 (n + 2)

end A005322

/-! ## A005322.P18232316175246851609

`record[abs(A166587(n))-A126068(n)]`
-/

namespace A005322.P18232316175246851609
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A166587 n| - A126068 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A005322.P18232316175246851609

namespace A005322

/-- `record[abs(A166587(n))-A126068(n)]` -/
def P18232316175246851609.Spec : Prop :=
  ∀ n, P18232316175246851609.a n = A005322 (n + 2)

end A005322

/-! ## A005322.P14706953346151814756

`record[A168058(n+1)+A001006(n)]`
-/

namespace A005322.P14706953346151814756
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168058 (n + 1) + A001006 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A005322.P14706953346151814756

namespace A005322

/-- `record[A168058(n+1)+A001006(n)]` -/
def P14706953346151814756.Spec : Prop :=
  ∀ n, P14706953346151814756.a n = A005322 (n + 2)

end A005322

/-! ## A005322.P456706020392982654

`record[A001006(n)-A126068(n+1)]`
-/

namespace A005322.P456706020392982654
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001006 n - A126068 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A005322.P456706020392982654

namespace A005322

/-- `record[A001006(n)-A126068(n+1)]` -/
def P456706020392982654.Spec : Prop :=
  ∀ n, P456706020392982654.a n = A005322 (n + 2)

end A005322

/-! ## A005322.P10391048068267773023

`A026134(n+2)-A026325(n+1)`
-/

namespace A005322.P10391048068267773023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026134 (n + 2) - A026325 (n + 1)

end

end A005322.P10391048068267773023

namespace A005322

/-- `A026134(n+2)-A026325(n+1)` -/
def P10391048068267773023.Spec : Prop :=
  ∀ n, P10391048068267773023.a n = A005322 (n + 2)

end A005322

/-! ## A005322.P15615763211397764239

`A026123(n+3)-A026325(n+2)`
-/

namespace A005322.P15615763211397764239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026123 (n + 3) - A026325 (n + 2)

end

end A005322.P15615763211397764239

namespace A005322

/-- `A026123(n+3)-A026325(n+2)` -/
def P15615763211397764239.Spec : Prop :=
  ∀ n, P15615763211397764239.a n = A005322 (n + 2)

end A005322

/-! ## A005322.P12689377761904922101

`A002026(n+3)-A001006(n+3)`
-/

namespace A005322.P12689377761904922101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002026 (n + 3) - A001006 (n + 3)

end

end A005322.P12689377761904922101

namespace A005322

/-- `A002026(n+3)-A001006(n+3)` -/
def P12689377761904922101.Spec : Prop :=
  ∀ n, P12689377761904922101.a n = A005322 (n + 2)

end A005322

/-! ## A005322.P5156283223974016025

`record[A001006(n+1)%A007971(n+2)]`
-/

namespace A005322.P5156283223974016025
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001006 (n + 1)) (A007971 (n + 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A005322.P5156283223974016025

namespace A005322

/-- `record[A001006(n+1)%A007971(n+2)]` -/
def P5156283223974016025.Spec : Prop :=
  ∀ n, P5156283223974016025.a n = A005322 (n + 2)

end A005322

/-! ## A005322.P15141350155913380565

`record[Δ[A168049(n+1)]-A168049(n+1)]`
-/

namespace A005322.P15141350155913380565
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168049 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n - A168049 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A005322.P15141350155913380565

namespace A005322

/-- `record[Δ[A168049(n+1)]-A168049(n+1)]` -/
def P15141350155913380565.Spec : Prop :=
  ∀ n, P15141350155913380565.a n = A005322 (n + 2)

end A005322

/-! ## A005322.P7665133586520613715

`2*A014531(n+1)-A025181(n+3)`
-/

namespace A005322.P7665133586520613715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A014531 (n + 1) - A025181 (n + 3)

end

end A005322.P7665133586520613715

namespace A005322

/-- `2*A014531(n+1)-A025181(n+3)` -/
def P7665133586520613715.Spec : Prop :=
  ∀ n, P7665133586520613715.a n = A005322 (n + 2)

end A005322

/-! ## A005322.P873649429469842561

`3*A014532(n+1)/(n+3)`
-/

namespace A005322.P873649429469842561
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  3 * ((A014532 (n + 1) : ℚ) / (n + 3 : ℚ))

end

end A005322.P873649429469842561

namespace A005322

/-- `3*A014532(n+1)/(n+3)` -/
def P873649429469842561.Spec : Prop :=
  ∀ n, P873649429469842561.a n = (A005322 (n + 2) : ℚ)

end A005322

/-! ## A005322.P9676647021925162668

`A025567(n+2)-(A014532(n+1)+A005717(n+2))`
-/

namespace A005322.P9676647021925162668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025567 (n + 2) - (A014532 (n + 1) + A005717 (n + 2))

end

end A005322.P9676647021925162668

namespace A005322

/-- `A025567(n+2)-(A014532(n+1)+A005717(n+2))` -/
def P9676647021925162668.Spec : Prop :=
  ∀ n, P9676647021925162668.a n = A005322 (n + 2)

end A005322

/-! ## A005322.P9126999664495637349

`A064189(∑[n+2]+3)`
-/

namespace A005322.P9126999664495637349
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064189 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A005322.P9126999664495637349

namespace A005322

/-- `A064189(∑[n+2]+3)` -/
def P9126999664495637349.Spec : Prop :=
  ∀ n, P9126999664495637349.a n = A005322 (n + 2)

end A005322

/-!
# A005323: Column of Motzkin triangle.

The programs for A005323, the canonical program `A005323.P6582309774716574436` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A005323 has offset 3).

The definition of A005323 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A005323.P6582309774716574436

`(n+3)*(3*(n+2)*a(n-2)+(2*(n+3)+1)*a(n-1))/(n*(n+8))` with `a(0)=1, a(1)=4`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A005323

/-- `(n+3)*(3*(n+2)*a(n-2)+(2*(n+3)+1)*a(n-1))/(n*(n+8))` -/
def P6582309774716574436.Spec : Prop :=
  ∀ n, P6582309774716574436.a n = (A005323 (n + 3) : ℚ)

end A005323

/-! ## A005323.P13066522408816256336

`∑[A026109(n+3)]`
-/

namespace A005323.P13066522408816256336
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026109 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A005323.P13066522408816256336

namespace A005323

/-- `∑[A026109(n+3)]` -/
def P13066522408816256336.Spec : Prop :=
  ∀ n, P13066522408816256336.a n = A005323 (n + 3)

end A005323

/-! ## A005323.P9838457201217300714

`∑[∑[A026124(n+2)]]`
-/

namespace A005323.P9838457201217300714
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026124 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A005323.P9838457201217300714

namespace A005323

/-- `∑[∑[A026124(n+2)]]` -/
def P9838457201217300714.Spec : Prop :=
  ∀ n, P9838457201217300714.a n = A005323 (n + 3)

end A005323

/-! ## A005323.P1808309820858544531

`A026163(n+1)+2*a(n-1)` with `a(0)=1`
-/

namespace A005323.P1808309820858544531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A026163 (n + 1) + 2 * a (n - 1)

end

end A005323.P1808309820858544531

namespace A005323

/-- `A026163(n+1)+2*a(n-1)` -/
def P1808309820858544531.Spec : Prop :=
  ∀ n, P1808309820858544531.a n = A005323 (n + 3)

end A005323

/-! ## A005323.P16533346365293254348

`A026134(n+3)-A002026(n+3)`
-/

namespace A005323.P16533346365293254348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026134 (n + 3) - A002026 (n + 3)

end

end A005323.P16533346365293254348

namespace A005323

/-- `A026134(n+3)-A002026(n+3)` -/
def P16533346365293254348.Spec : Prop :=
  ∀ n, P16533346365293254348.a n = A005323 (n + 3)

end A005323

/-! ## A005323.P13028516012785671998

`2*A014532(n+1)-A025182(n+4)`
-/

namespace A005323.P13028516012785671998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A014532 (n + 1) - A025182 (n + 4)

end

end A005323.P13028516012785671998

namespace A005323

/-- `2*A014532(n+1)-A025182(n+4)` -/
def P13028516012785671998.Spec : Prop :=
  ∀ n, P13028516012785671998.a n = A005323 (n + 3)

end A005323

/-! ## A005323.P18162552632264549661

`A064189(∑[n+3]+6)`
-/

namespace A005323.P18162552632264549661
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064189 (∑ j ∈ Finset.range (n + 1), f1 j + 6)

end

end A005323.P18162552632264549661

namespace A005323

/-- `A064189(∑[n+3]+6)` -/
def P18162552632264549661.Spec : Prop :=
  ∀ n, P18162552632264549661.a n = A005323 (n + 3)

end A005323

/-! ## A005323.P725287464659271889

`A026300(∑[n+4]+2)`
-/

namespace A005323.P725287464659271889
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026300 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A005323.P725287464659271889

namespace A005323

/-- `A026300(∑[n+4]+2)` -/
def P725287464659271889.Spec : Prop :=
  ∀ n, P725287464659271889.a n = A005323 (n + 3)

end A005323

/-! ## A005323.P7171931189877370680

`A020474(A034856(n+6))`
-/

namespace A005323.P7171931189877370680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020474 (A034856 (n + 6)).toNat

end

end A005323.P7171931189877370680

namespace A005323

/-- `A020474(A034856(n+6))` -/
def P7171931189877370680.Spec : Prop :=
  ∀ n, P7171931189877370680.a n = A005323 (n + 3)

end A005323

/-! ## A005323.P11586355808552862508

`record[A020474(Δ[A008778(n)])]`
-/

namespace A005323.P11586355808552862508
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008778 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020474 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A005323.P11586355808552862508

namespace A005323

/-- `record[A020474(Δ[A008778(n)])]` -/
def P11586355808552862508.Spec : Prop :=
  ∀ n, P11586355808552862508.a n = A005323 (n + 3)

end A005323

/-!
# A005324: Column of Motzkin triangle A026300.

The programs for A005324, the canonical program `A005324.P532508933651830549` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A005324 has offset 4).

The definition of A005324 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 212 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A005324.P11355962215958385477

`∑[A026110(n+4)]`
-/

namespace A005324.P11355962215958385477
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026110 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A005324.P11355962215958385477

namespace A005324

/-- `∑[A026110(n+4)]` -/
def P11355962215958385477.Spec : Prop :=
  ∀ n, P11355962215958385477.a n = A005324 (n + 4)

end A005324

/-! ## A005324.P532508933651830549

`∑[∑[A026125(n+3)]]`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A005324

/-- `∑[∑[A026125(n+3)]]` -/
def P532508933651830549.Spec : Prop :=
  ∀ n, P532508933651830549.a n = A005324 (n + 4)

theorem P532508933651830549.correct : P532508933651830549.Spec := by
  intro n
  simp only [A005324, Nat.add_sub_cancel]

end A005324

/-! ## A005324.P13638246463882288867

`A026110(n+4)+a(A028310(n)-1)` with `a(0)=1`
-/

namespace A005324.P13638246463882288867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A026110 (n + 4) + a (A028310 n - 1).toNat

end

end A005324.P13638246463882288867

namespace A005324

/-- `A026110(n+4)+a(A028310(n)-1)` -/
def P13638246463882288867.Spec : Prop :=
  ∀ n, P13638246463882288867.a n = A005324 (n + 4)

end A005324

/-! ## A005324.P18190879815392937263

`A064189(A000124(n+4)+3)`
-/

namespace A005324.P18190879815392937263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064189 (A000124 (n + 4) + 3).toNat

end

end A005324.P18190879815392937263

namespace A005324

/-- `A064189(A000124(n+4)+3)` -/
def P18190879815392937263.Spec : Prop :=
  ∀ n, P18190879815392937263.a n = A005324 (n + 4)

end A005324

/-! ## A005324.P3001599589431600469

`A064189(A000096(n+3)+5)`
-/

namespace A005324.P3001599589431600469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064189 (A000096 (n + 3) + 5).toNat

end

end A005324.P3001599589431600469

namespace A005324

/-- `A064189(A000096(n+3)+5)` -/
def P3001599589431600469.Spec : Prop :=
  ∀ n, P3001599589431600469.a n = A005324 (n + 4)

end A005324

/-! ## A005324.P16220410886344801740

`A064189(A055999(n+1)+10)`
-/

namespace A005324.P16220410886344801740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064189 (A055999 (n + 1) + 10).toNat

end

end A005324.P16220410886344801740

namespace A005324

/-- `A064189(A055999(n+1)+10)` -/
def P16220410886344801740.Spec : Prop :=
  ∀ n, P16220410886344801740.a n = A005324 (n + 4)

end A005324

/-! ## A005324.P14698020512032011536

`A026300(A052905(n+2))`
-/

namespace A005324.P14698020512032011536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026300 (A052905 (n + 2)).toNat

end

end A005324.P14698020512032011536

namespace A005324

/-- `A026300(A052905(n+2))` -/
def P14698020512032011536.Spec : Prop :=
  ∀ n, P14698020512032011536.a n = A005324 (n + 4)

end A005324

/-! ## A005324.P5058220806912640393

`A026300(A027379(n+3)-2)`
-/

namespace A005324.P5058220806912640393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026300 (A027379 (n + 3) - 2).toNat

end

end A005324.P5058220806912640393

namespace A005324

/-- `A026300(A027379(n+3)-2)` -/
def P5058220806912640393.Spec : Prop :=
  ∀ n, P5058220806912640393.a n = A005324 (n + 4)

end A005324

/-! ## A005324.P639953628223842024

`A026300(A000217(n+5)-5)`
-/

namespace A005324.P639953628223842024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026300 (A000217 (n + 5) - 5).toNat

end

end A005324.P639953628223842024

namespace A005324

/-- `A026300(A000217(n+5)-5)` -/
def P639953628223842024.Spec : Prop :=
  ∀ n, P639953628223842024.a n = A005324 (n + 4)

end A005324

/-! ## A005324.P16150419397610634680

`A026300(A000124(n+5)-6)`
-/

namespace A005324.P16150419397610634680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026300 (A000124 (n + 5) - 6).toNat

end

end A005324.P16150419397610634680

namespace A005324

/-- `A026300(A000124(n+5)-6)` -/
def P16150419397610634680.Spec : Prop :=
  ∀ n, P16150419397610634680.a n = A005324 (n + 4)

end A005324

/-! ## A005324.P16880092897542682709

`A026300(A000096(n+3)+n+1)`
-/

namespace A005324.P16880092897542682709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026300 (A000096 (n + 3) + (n + 1 : ℤ)).toNat

end

end A005324.P16880092897542682709

namespace A005324

/-- `A026300(A000096(n+3)+n+1)` -/
def P16880092897542682709.Spec : Prop :=
  ∀ n, P16880092897542682709.a n = A005324 (n + 4)

end A005324

/-!
# A005325: Column of Motzkin triangle.

The programs for A005325, the canonical program `A005325.P14530918733206490296` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A005325 has offset 5).

The definition of A005325 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 211 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A005325.P14530918733206490296

`∑[∑[A026126(n+4)]]`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A005325

/-- `∑[∑[A026126(n+4)]]` -/
def P14530918733206490296.Spec : Prop :=
  ∀ n, P14530918733206490296.a n = A005325 (n + 5)

theorem P14530918733206490296.correct : P14530918733206490296.Spec := by
  intro n
  simp only [A005325, Nat.add_sub_cancel]

end A005325

/-! ## A005325.P9902245382432509446

`A064189(A167499(n+4))`
-/

namespace A005325.P9902245382432509446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064189 (A167499 (n + 4)).toNat

end

end A005325.P9902245382432509446

namespace A005325

/-- `A064189(A167499(n+4))` -/
def P9902245382432509446.Spec : Prop :=
  ∀ n, P9902245382432509446.a n = A005325 (n + 5)

end A005325

/-! ## A005325.P17916492371620161535

`A026300(A055999(n+3))`
-/

namespace A005325.P17916492371620161535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026300 (A055999 (n + 3)).toNat

end

end A005325.P17916492371620161535

namespace A005325

/-- `A026300(A055999(n+3))` -/
def P17916492371620161535.Spec : Prop :=
  ∀ n, P17916492371620161535.a n = A005325 (n + 5)

end A005325

/-! ## A005325.P2607379499834861810

`A026300(A000217(n+6)-6)`
-/

namespace A005325.P2607379499834861810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026300 (A000217 (n + 6) - 6).toNat

end

end A005325.P2607379499834861810

namespace A005325

/-- `A026300(A000217(n+6)-6)` -/
def P2607379499834861810.Spec : Prop :=
  ∀ n, P2607379499834861810.a n = A005325 (n + 5)

end A005325

/-! ## A005325.P6989602389851072472

`A026300(A000096(n+4)+n+1)`
-/

namespace A005325.P6989602389851072472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026300 (A000096 (n + 4) + (n + 1 : ℤ)).toNat

end

end A005325.P6989602389851072472

namespace A005325

/-- `A026300(A000096(n+4)+n+1)` -/
def P6989602389851072472.Spec : Prop :=
  ∀ n, P6989602389851072472.a n = A005325 (n + 5)

end A005325

/-! ## A005325.P12237218404623663826

`A026300(2*n+A000124(n+4)+4)`
-/

namespace A005325.P12237218404623663826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026300 ((2 * n : ℤ) + (A000124 (n + 4) + 4)).toNat

end

end A005325.P12237218404623663826

namespace A005325

/-- `A026300(2*n+A000124(n+4)+4)` -/
def P12237218404623663826.Spec : Prop :=
  ∀ n, P12237218404623663826.a n = A005325 (n + 5)

end A005325

/-!
# A005326: Permanent of "coprime?" matrix.

The programs for A005326, there is no canonical definition to state claims against.
-/

/-! ## A005326.P18355188855014460054

`A271465(eq[2, A239474(n+1)])`
-/

namespace A005326.P18355188855014460054
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239474 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271465 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A005326.P18355188855014460054

/-! ## A005326.P5635983658075400446

`A193903(A002865(n)*A169829(n+1))`
-/

namespace A005326.P5635983658075400446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193903 (A002865 n * A169829 (n + 1)).toNat

end

end A005326.P5635983658075400446

/-!
# A005327: Certain subgraphs of a directed graph (inverse binomial transform of A005321).

The programs for A005327, the canonical program `A005327.P9669157031087633119` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A005327 has offset 1).

The definition of A005327 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A005327.P9669157031087633119

`(2^n-1)*a(n-1)+(-1)^n` with `a(0)=1`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A005327

/-- `(2^n-1)*a(n-1)+(-1)^n` -/
def P9669157031087633119.Spec : Prop :=
  ∀ n, P9669157031087633119.a n = A005327 (n + 1)

theorem P9669157031087633119.correct : P9669157031087633119.Spec := by
  intro n
  simp only [A005327, Nat.add_sub_cancel]

end A005327

/-! ## A005327.P4364870268383566646

`xor(1, (2^n-1)*a(n-1))` with `a(0)=1`
-/

namespace A005327.P4364870268383566646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  Int.xor 1 (((2 ^ n : ℤ) - 1) * a (n - 1))

end

end A005327.P4364870268383566646

namespace A005327

/-- `xor(1, (2^n-1)*a(n-1))` -/
def P4364870268383566646.Spec : Prop :=
  ∀ n, P4364870268383566646.a n = A005327 (n + 1)

end A005327

/-! ## A005327.P6518093284320782895

`A005014(n)-a(n-1)` with `a(0)=1`
-/

namespace A005327.P6518093284320782895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A005014 n - a (n - 1)

end

end A005327.P6518093284320782895

namespace A005327

/-- `A005014(n)-a(n-1)` -/
def P6518093284320782895.Spec : Prop :=
  ∀ n, P6518093284320782895.a n = A005327 (n + 1)

end A005327

/-! ## A005327.P14589486225105697555

`xor(1, a(n-1)*A000225(n))` with `a(0)=1`
-/

namespace A005327.P14589486225105697555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  Int.xor 1 (a (n - 1) * A000225 n)

end

end A005327.P14589486225105697555

namespace A005327

/-- `xor(1, a(n-1)*A000225(n))` -/
def P14589486225105697555.Spec : Prop :=
  ∀ n, P14589486225105697555.a n = A005327 (n + 1)

end A005327

/-! ## A005327.P16573093283837361750

`xor(1, a(n-1)*A255047(n))` with `a(0)=1`
-/

namespace A005327.P16573093283837361750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  Int.xor 1 (a (n - 1) * A255047 n)

end

end A005327.P16573093283837361750

namespace A005327

/-- `xor(1, a(n-1)*A255047(n))` -/
def P16573093283837361750.Spec : Prop :=
  ∀ n, P16573093283837361750.a n = A005327 (n + 1)

end A005327

/-!
# A005328: Certain subgraphs of a directed graph.

The programs for A005328, there is no canonical definition to state claims against.
-/

/-! ## A005328.P8429444321318332867

`A259970(∑[n+1]+2)`
-/

namespace A005328.P8429444321318332867
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259970 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A005328.P8429444321318332867

/-! ## A005328.P8295685630753502368

`record[A259970(∑[A068398(n)])]`
-/

namespace A005328.P8295685630753502368
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068398 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259970 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A005328.P8295685630753502368

/-!
# A005329: a(n) = Product_{i=1..n} (2^i - 1). Also called 2-factorial numbers.

The programs for A005329, the canonical program `A005329.P11063078373449312137` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A005329 has offset 0).

The definition of A005329 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A005329.P11063078373449312137

`(2^n-1)*a(n-1)` with `a(0)=1`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A005329

/-- `(2^n-1)*a(n-1)` -/
def P11063078373449312137.Spec : Prop :=
  ∀ n, P11063078373449312137.a n = A005329 n

theorem P11063078373449312137.correct : P11063078373449312137.Spec := by
  intro n
  simp only [A005329]

end A005329

/-! ## A005329.P7822602283284407128

`∏[or(1, 2^n-1)]`
-/

namespace A005329.P7822602283284407128
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 ((2 ^ n : ℤ) - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A005329.P7822602283284407128

namespace A005329

/-- `∏[or(1, 2^n-1)]` -/
def P7822602283284407128.Spec : Prop :=
  ∀ n, P7822602283284407128.a n = A005329 n

end A005329

/-! ## A005329.P2360493374052711171

`∏[abs(or(1, -2^n))]`
-/

namespace A005329.P2360493374052711171
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.lor 1 (-(2 ^ n : ℤ))|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A005329.P2360493374052711171

namespace A005329

/-- `∏[abs(or(1, -2^n))]` -/
def P2360493374052711171.Spec : Prop :=
  ∀ n, P2360493374052711171.a n = A005329 n

end A005329

/-! ## A005329.P6961946027377650737

`∏[-or(1, -2^n)]`
-/

namespace A005329.P6961946027377650737
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -Int.lor 1 (-(2 ^ n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A005329.P6961946027377650737

namespace A005329

/-- `∏[-or(1, -2^n)]` -/
def P6961946027377650737.Spec : Prop :=
  ∀ n, P6961946027377650737.a n = A005329 n

end A005329

/-! ## A005329.P6654869213413354785

`∏[2^n-ceil(n/63)]`
-/

namespace A005329.P6654869213413354785
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) - ⌈(n : ℚ) / 63⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A005329.P6654869213413354785

namespace A005329

/-- `∏[2^n-ceil(n/63)]` -/
def P6654869213413354785.Spec : Prop :=
  ∀ n, P6654869213413354785.a n = A005329 n

end A005329

/-!
# A005330: Certain subgraphs of a directed graph.

The programs for A005330, there is no canonical definition to state claims against.
-/

/-! ## A005330.P9136181528995901919

`A259971(∑[n+1]+2)`
-/

namespace A005330.P9136181528995901919
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259971 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A005330.P9136181528995901919

/-! ## A005330.P5544506373984914923

`record[A010054(n)*A259971(n+2)]`
-/

namespace A005330.P5544506373984914923
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A259971 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A005330.P5544506373984914923

/-!
# A005331: Certain subgraphs of a directed graph (binomial transform of A005321).

The programs for A005331, the canonical program `A005331.P12126804663840645572` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A005331 has offset 0).

The definition of A005331 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A005331.P12126804663840645572

`∑{#}[n, C(n, #)*A005321(#)]`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A005331

/-- `∑{#}[n, C(n, #)*A005321(#)]` -/
def P12126804663840645572.Spec : Prop :=
  ∀ n, P12126804663840645572.a n = A005331 n

theorem P12126804663840645572.correct : P12126804663840645572.Spec := by
  intro n
  simp only [A005331]

end A005331

/-! ## A005331.P6149644897042151702

`∑[A005016(n)]`
-/

namespace A005331.P6149644897042151702
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005016 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A005331.P6149644897042151702

namespace A005331

/-- `∑[A005016(n)]` -/
def P6149644897042151702.Spec : Prop :=
  ∀ n, P6149644897042151702.a n = A005331 n

end A005331

/-! ## A005331.P7230949600672144877

`A259972(∑[n]+1)`
-/

namespace A005331.P7230949600672144877
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259972 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A005331.P7230949600672144877

namespace A005331

/-- `A259972(∑[n]+1)` -/
def P7230949600672144877.Spec : Prop :=
  ∀ n, P7230949600672144877.a n = A005331 n

end A005331

/-!
# A005332: Certain subgraphs of a directed graph.

The programs for A005332, there is no canonical definition to state claims against.
-/

/-! ## A005332.P4174393152981442320

`A259972(∑[n+1]+2)`
-/

namespace A005332.P4174393152981442320
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259972 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A005332.P4174393152981442320

/-! ## A005332.P15647714836923274709

`record[gcd(A259972(n+1), A357728(n))]`
-/

namespace A005332.P15647714836923274709
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A259972 (n + 1)) (A357728 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A005332.P15647714836923274709

/-!
# A005333: Number of 2-colored connected labeled graphs with n vertices of the first color and n vertices of the second color.

The programs for A005333, there is no canonical definition to state claims against.
-/

/-! ## A005333.P4988099355912488846

`A262307((n+1)²+n²)`
-/

namespace A005333.P4988099355912488846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262307 ((n + 1) ^ 2 + n ^ 2)

end

end A005333.P4988099355912488846

/-! ## A005333.P10688647480552333802

`or(1, A262307(A001844(n)))`
-/

namespace A005333.P10688647480552333802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A262307 (A001844 n).toNat)

end

end A005333.P10688647480552333802

/-! ## A005333.P5715336224531397086

`record[gcd(A114327(n), A262307(n+1))]`
-/

namespace A005333.P5715336224531397086
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A114327 n) (A262307 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A005333.P5715336224531397086

/-! ## A005333.P13172705891394708934

`A262307(A001844(n))+A185284(n)`
-/

namespace A005333.P13172705891394708934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262307 (A001844 n).toNat + A185284 n

end

end A005333.P13172705891394708934

/-! ## A005333.P2148355891652685232

`A262307(A001844(n))+A014021(3*n+1)`
-/

namespace A005333.P2148355891652685232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262307 (A001844 n).toNat + A014021 (3 * n + 1)

end

end A005333.P2148355891652685232

/-!
# A005334: Number of labeled nonseparable (or 2-connected) bicolored graphs with n nodes of the first color and n nodes of the second color.

The programs for A005334, there is no canonical definition to state claims against.
-/

/-! ## A005334.P11692980705224593515

`A123301(∑[4*n]+2)`
-/

namespace A005334.P11692980705224593515
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123301 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A005334.P11692980705224593515

/-! ## A005334.P6341180515874961783

`A033999(2*n)*A123301(A051890(n+1))`
-/

namespace A005334.P6341180515874961783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (2 * n) * A123301 (A051890 (n + 1)).toNat

end

end A005334.P6341180515874961783

/-! ## A005334.P3309081399426623761

`A038712(2*n+1)*A123301(A051890(n+1))`
-/

namespace A005334.P3309081399426623761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038712 (2 * n + 1) * A123301 (A051890 (n + 1)).toNat

end

end A005334.P3309081399426623761

/-! ## A005334.P9264275480384794787

`gcd(A005335(n+1), A123301(A051890(n+1)))`
-/

namespace A005334.P9264275480384794787
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A005335 (n + 1)) (A123301 (A051890 (n + 1)).toNat)

end

end A005334.P9264275480384794787

/-! ## A005334.P10381421202259246254

`A123301(A051890(n+1))%A005335(n+2)`
-/

namespace A005334.P10381421202259246254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A123301 (A051890 (n + 1)).toNat) (A005335 (n + 2))

end

end A005334.P10381421202259246254

/-!
# A005335: Number of labeled nonseparable (or 2-connected) bipartite graphs with 2n nodes and n nodes in each part.

The programs for A005335, there is no canonical definition to state claims against.
-/

/-! ## A005335.P8240011724351360907

`C(2*(n+1), n+1)*A005334(n+1)/2`
-/

namespace A005335.P8240011724351360907
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((Nat.choose (2 * (n + 1)) (n + 1) : ℤ) * A005334 (n + 1) : ℚ) / 2

end

end A005335.P8240011724351360907

/-! ## A005335.P6768336331751973437

`A123474(A001844(n)+1)`
-/

namespace A005335.P6768336331751973437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123474 (A001844 n + 1).toNat

end

end A005335.P6768336331751973437

/-! ## A005335.P4137268675101329005

`A123474(A051890(n+1))`
-/

namespace A005335.P4137268675101329005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123474 (A051890 (n + 1)).toNat

end

end A005335.P4137268675101329005

/-! ## A005335.P5541170113391010987

`A123474(A046092(n)+2)`
-/

namespace A005335.P5541170113391010987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123474 (A046092 n + 2).toNat

end

end A005335.P5541170113391010987

/-! ## A005335.P11950938292055283361

`A123474(or(2, A046092(n)))`
-/

namespace A005335.P11950938292055283361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123474 (Int.lor 2 (A046092 n)).toNat

end

end A005335.P11950938292055283361

/-!
# A005336: Number of labeled nonseparable (or 2-connected) bipartite graphs with 2n nodes.

The programs for A005336, there is no canonical definition to state claims against.
-/

/-! ## A005336.P12868614024148876719

`A004100(2*(n+1))`
-/

namespace A005336.P12868614024148876719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004100 (2 * (n + 1))

end

end A005336.P12868614024148876719

/-!
# A005337: Number of ways in which n identical balls can be distributed among 4 boxes in a row such that each pair of adjacent boxes contains at least 4 balls.

The programs for A005337, the canonical program `A005337.P12255942367582439723` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A005337 has offset 8).

The definition of A005337 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A005337.P10110137762290367268

`ogf((15-20x+6x^2)/(1-4x+6x^2-4x^3+x^4))`
-/

namespace A005337.P10110137762290367268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [15, -20, 6] [1, -4, 6, -4, 1] n

end

end A005337.P10110137762290367268

namespace A005337

/-- `ogf((15-20x+6x^2)/(1-4x+6x^2-4x^3+x^4))` -/
def P10110137762290367268.Spec : Prop :=
  ∀ n, P10110137762290367268.a n = A005337 (n + 8)

end A005337

/-! ## A005337.P12255942367582439723

`(546-169*(n+8)+6*(n+8)²+(n+8)^3)/6`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A005337

/-- `(546-169*(n+8)+6*(n+8)²+(n+8)^3)/6` -/
def P12255942367582439723.Spec : Prop :=
  ∀ n, P12255942367582439723.a n = (A005337 (n + 8) : ℚ)

end A005337

/-! ## A005337.P9404761666656359996

`A059605(n)+n*(n+2)`
-/

namespace A005337.P9404761666656359996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059605 n + (n * (n + 2) : ℤ)

end

end A005337.P9404761666656359996

namespace A005337

/-- `A059605(n)+n*(n+2)` -/
def P9404761666656359996.Spec : Prop :=
  ∀ n, P9404761666656359996.a n = A005337 (n + 8)

end A005337

/-! ## A005337.P12510571173492887925

`A096941(n)+A067728(n+1)`
-/

namespace A005337.P12510571173492887925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096941 n + A067728 (n + 1)

end

end A005337.P12510571173492887925

namespace A005337

/-- `A096941(n)+A067728(n+1)` -/
def P12510571173492887925.Spec : Prop :=
  ∀ n, P12510571173492887925.a n = A005337 (n + 8)

end A005337

/-! ## A005337.P15802951350588974411

`A269457(n)+A055831(n+4)`
-/

namespace A005337.P15802951350588974411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269457 n + A055831 (n + 4)

end

end A005337.P15802951350588974411

namespace A005337

/-- `A269457(n)+A055831(n+4)` -/
def P15802951350588974411.Spec : Prop :=
  ∀ n, P15802951350588974411.a n = A005337 (n + 8)

end A005337

/-! ## A005337.P208049842698974146

`A152811(n+1)+A026054(n+3)`
-/

namespace A005337.P208049842698974146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152811 (n + 1) + A026054 (n + 3)

end

end A005337.P208049842698974146

namespace A005337

/-- `A152811(n+1)+A026054(n+3)` -/
def P208049842698974146.Spec : Prop :=
  ∀ n, P208049842698974146.a n = A005337 (n + 8)

end A005337

/-! ## A005337.P1423636049358479652

`A016754(n+1)+A108195(n+1)+A000125(n)`
-/

namespace A005337.P1423636049358479652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016754 (n + 1) + (A108195 (n + 1) + A000125 n)

end

end A005337.P1423636049358479652

namespace A005337

/-- `A016754(n+1)+A108195(n+1)+A000125(n)` -/
def P1423636049358479652.Spec : Prop :=
  ∀ n, P1423636049358479652.a n = A005337 (n + 8)

end A005337

/-! ## A005337.P14473614175744655832

`abs(6-A051941(n+9))`
-/

namespace A005337.P14473614175744655832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |6 - A051941 (n + 9)|

end

end A005337.P14473614175744655832

namespace A005337

/-- `abs(6-A051941(n+9))` -/
def P14473614175744655832.Spec : Prop :=
  ∀ n, P14473614175744655832.a n = A005337 (n + 8)

end A005337

/-! ## A005337.P14368560501855181463

`Δ[A136105(n+8)]-6`
-/

namespace A005337.P14368560501855181463
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136105 (n + 8)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - 6

end

end A005337.P14368560501855181463

namespace A005337

/-- `Δ[A136105(n+8)]-6` -/
def P14368560501855181463.Spec : Prop :=
  ∀ n, P14368560501855181463.a n = A005337 (n + 8)

end A005337

/-! ## A005337.P11929202126807774001

`n²+A103145(n+1)-4`
-/

namespace A005337.P11929202126807774001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) + (A103145 (n + 1) - 4)

end

end A005337.P11929202126807774001

namespace A005337

/-- `n²+A103145(n+1)-4` -/
def P11929202126807774001.Spec : Prop :=
  ∀ n, P11929202126807774001.a n = A005337 (n + 8)

end A005337

/-! ## A005337.P6425920878946063827

`Δ[A101854(n+1)+A027480(n)]-6`
-/

namespace A005337.P6425920878946063827
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101854 (n + 1) + A027480 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - 6

end

end A005337.P6425920878946063827

namespace A005337

/-- `Δ[A101854(n+1)+A027480(n)]-6` -/
def P6425920878946063827.Spec : Prop :=
  ∀ n, P6425920878946063827.a n = A005337 (n + 8)

end A005337

/-! ## A005337.P12396068387401646414

`A000292(n+1)+2*A033537(n+1)`
-/

namespace A005337.P12396068387401646414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000292 (n + 1) + 2 * A033537 (n + 1)

end

end A005337.P12396068387401646414

namespace A005337

/-- `A000292(n+1)+2*A033537(n+1)` -/
def P12396068387401646414.Spec : Prop :=
  ∀ n, P12396068387401646414.a n = A005337 (n + 8)

end A005337

/-! ## A005337.P8503440079661733039

`A111396(n+1)+A000217(2*(n+1))`
-/

namespace A005337.P8503440079661733039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111396 (n + 1) + A000217 (2 * (n + 1))

end

end A005337.P8503440079661733039

namespace A005337

/-- `A111396(n+1)+A000217(2*(n+1))` -/
def P8503440079661733039.Spec : Prop :=
  ∀ n, P8503440079661733039.a n = A005337 (n + 8)

end A005337

/-! ## A005337.P2253823291168413419

`A060488(n+4)+2*A123968(n+2)`
-/

namespace A005337.P2253823291168413419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060488 (n + 4) + 2 * A123968 (n + 2)

end

end A005337.P2253823291168413419

namespace A005337

/-- `A060488(n+4)+2*A123968(n+2)` -/
def P2253823291168413419.Spec : Prop :=
  ∀ n, P2253823291168413419.a n = A005337 (n + 8)

end A005337

/-! ## A005337.P17412250196184344389

`A394185(n+1)+A052905(n)+A028387(n)`
-/

namespace A005337.P17412250196184344389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A394185 (n + 1) + (A052905 n + A028387 n)

end

end A005337.P17412250196184344389

namespace A005337

/-- `A394185(n+1)+A052905(n)+A028387(n)` -/
def P17412250196184344389.Spec : Prop :=
  ∀ n, P17412250196184344389.a n = A005337 (n + 8)

end A005337

/-! ## A005337.P15740473339372504090

`A104675(2*n+1)+A000292(n+1)`
-/

namespace A005337.P15740473339372504090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104675 (2 * n + 1) + A000292 (n + 1)

end

end A005337.P15740473339372504090

namespace A005337

/-- `A104675(2*n+1)+A000292(n+1)` -/
def P15740473339372504090.Spec : Prop :=
  ∀ n, P15740473339372504090.a n = A005337 (n + 8)

end A005337

/-! ## A005337.P2358330097085326387

`A055831(n+5)+n*A020719(2*n)`
-/

namespace A005337.P2358330097085326387
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055831 (n + 5) + (n : ℤ) * A020719 (2 * n)

end

end A005337.P2358330097085326387

namespace A005337

/-- `A055831(n+5)+n*A020719(2*n)` -/
def P2358330097085326387.Spec : Prop :=
  ∀ n, P2358330097085326387.a n = A005337 (n + 8)

end A005337

/-! ## A005337.P8807929851016865864

`A051936(2*n+5)+A051937(n+5)+2`
-/

namespace A005337.P8807929851016865864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051936 (2 * n + 5) + (A051937 (n + 5) + 2)

end

end A005337.P8807929851016865864

namespace A005337

/-- `A051936(2*n+5)+A051937(n+5)+2` -/
def P8807929851016865864.Spec : Prop :=
  ∀ n, P8807929851016865864.a n = A005337 (n + 8)

end A005337

/-! ## A005337.P16196465540205057521

`A052905(2*n)+A159920(n+3)-A005581(n+1)`
-/

namespace A005337.P16196465540205057521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052905 (2 * n) + (A159920 (n + 3) - A005581 (n + 1))

end

end A005337.P16196465540205057521

namespace A005337

/-- `A052905(2*n)+A159920(n+3)-A005581(n+1)` -/
def P16196465540205057521.Spec : Prop :=
  ∀ n, P16196465540205057521.a n = A005337 (n + 8)

end A005337

/-! ## A005337.P7211280951470542559

`A034856(2*(n+1))+A323221(n+1)+A000096(n+1)`
-/

namespace A005337.P7211280951470542559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034856 (2 * (n + 1)) + (A323221 (n + 1) + A000096 (n + 1))

end

end A005337.P7211280951470542559

namespace A005337

/-- `A034856(2*(n+1))+A323221(n+1)+A000096(n+1)` -/
def P7211280951470542559.Spec : Prop :=
  ∀ n, P7211280951470542559.a n = A005337 (n + 8)

end A005337

/-!
# A005338: Number of ways in which n identical balls can be distributed among 5 boxes in a row such that each pair of adjacent boxes contains at least 4 balls.

The programs for A005338, the canonical program `A005338.P6158199528550376707` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A005338 has offset 8).

The definition of A005338 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A005338.P6158199528550376707

`ogf((1+3x+x^2-11x^5+7x^6)/(1-5x+10x^2-10x^3+5x^4-x^5))`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A005338

/-- `ogf((1+3x+x^2-11x^5+7x^6)/(1-5x+10x^2-10x^3+5x^4-x^5))` -/
def P6158199528550376707.Spec : Prop :=
  ∀ n, P6158199528550376707.a n = A005338 (n + 8)

theorem P6158199528550376707.correct : P6158199528550376707.Spec := by
  intro n
  simp only [A005338, Nat.add_sub_cancel]

end A005338

/-! ## A005338.P8642491713686967985

`A253092(A079588(n)+A027800(n))`
-/

namespace A005338.P8642491713686967985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253092 (A079588 n + A027800 n).toNat

end

end A005338.P8642491713686967985

namespace A005338

/-- `A253092(A079588(n)+A027800(n))` -/
def P8642491713686967985.Spec : Prop :=
  ∀ n, P8642491713686967985.a n = A005338 (n + 8)

end A005338

/-!
# A005339: Number of ways in which n identical balls can be distributed among 6 boxes in a row such that each pair of adjacent boxes contains at least 4 balls.

The programs for A005339, the canonical program `A005339.P17063941102823937563` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A005339 has offset 12).

The definition of A005339 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A005339.P17063941102823937563

`ogf((35-56x+25x^2-4x^3+x^6)/(1-6x+15x^2-20x^3+15x^4-6x^5+x^6))`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A005339

/-- `ogf((35-56x+25x^2-4x^3+x^6)/(1-6x+15x^2-20x^3+15x^4-6x^5+x^6))` -/
def P17063941102823937563.Spec : Prop :=
  ∀ n, P17063941102823937563.a n = A005339 (n + 12)

theorem P17063941102823937563.correct : P17063941102823937563.Spec := by
  intro n
  simp only [A005339, Nat.add_sub_cancel]

end A005339

/-!
# A005340: Number of ways in which n identical balls can be distributed among 7 boxes in a row such that each pair of adjacent boxes contains at least 4 balls.

The programs for A005340, the canonical program `A005340.P12847639759353835375` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A005340 has offset 12).

The definition of A005340 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A005340.P12847639759353835375

`ogf((1+6x+6x^2+x^3-66x^5+74x^6-21x^7)/(1-7x+21x^2-35x^3+35x^4-21x^5+7x^6-x^7))`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A005340

/-- `ogf((1+6x+6x^2+x^3-66x^5+74x^6-21x^7)/(1-7x+21x^2-35x^3+35x^4-21x^5+7x^6-x^7))` -/
def P12847639759353835375.Spec : Prop :=
  ∀ n, P12847639759353835375.a n = A005340 (n + 12)

theorem P12847639759353835375.correct : P12847639759353835375.Spec := by
  intro n
  simp only [A005340, Nat.add_sub_cancel]

end A005340

/-! ## A005340.P4062470972253302183

`A114244(n)-A114246(A099947(n))`
-/

namespace A005340.P4062470972253302183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114244 n - A114246 (A099947 n).toNat

end

end A005340.P4062470972253302183

namespace A005340

/-- `A114244(n)-A114246(A099947(n))` -/
def P4062470972253302183.Spec : Prop :=
  ∀ n, P4062470972253302183.a n = A005340 (n + 12)

end A005340

/-!
# A005341: Length of n-th term in Look and Say sequences A005150 and A007651.

The programs for A005341, there is no canonical definition to state claims against.
-/

/-! ## A005341.P8773006427534454398

`A022466(n+1)+A022468(n+1)+A022467(n+1)`
-/

namespace A005341.P8773006427534454398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022466 (n + 1) + (A022468 (n + 1) + A022467 (n + 1))

end

end A005341.P8773006427534454398

/-! ## A005341.P12084610820251121438

`A022466(n+1)+A056635(n+1)-A022468(n+1)`
-/

namespace A005341.P12084610820251121438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022466 (n + 1) + (A056635 (n + 1) - A022468 (n + 1))

end

end A005341.P12084610820251121438

/-! ## A005341.P17012637552279582404

`A004977(n+1)-A056635(n+1)`
-/

namespace A005341.P17012637552279582404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004977 (n + 1) - A056635 (n + 1)

end

end A005341.P17012637552279582404

/-! ## A005341.P5941843064712532667

`A004977(n+1)+A056635(n+1)*A057428(n)`
-/

namespace A005341.P5941843064712532667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004977 (n + 1) + A056635 (n + 1) * A057428 n

end

end A005341.P5941843064712532667

/-! ## A005341.P18049712742584975093

`A004977(n+1)-(A022467(n+1)+2*A022468(n+1))`
-/

namespace A005341.P18049712742584975093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004977 (n + 1) - (A022467 (n + 1) + 2 * A022468 (n + 1))

end

end A005341.P18049712742584975093

/-!
# A005342: a(n) = solution to the postage stamp problem with n denominations and 7 stamps.

The programs for A005342, there is no canonical definition to state claims against.
-/

/-! ## A005342.P15121655157577636710

`A084192(C(n+7, 2)+6)`
-/

namespace A005342.P15121655157577636710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084192 (Nat.choose (n + 7) 2 + 6)

end

end A005342.P15121655157577636710

/-!
# A005343: a(n) = solution to the postage stamp problem with n denominations and 8 stamps.

The programs for A005343, there is no canonical definition to state claims against.
-/

/-! ## A005343.P2839723157453307696

`A084193(A155212(n+4))`
-/

namespace A005343.P2839723157453307696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084193 (A155212 (n + 4)).toNat

end

end A005343.P2839723157453307696

/-!
# A005345: Number of elements of a free idempotent monoid on n letters.

The programs for A005345, there is no canonical definition to state claims against.
-/

/-! ## A005345.P11977691499726602864

`A048766(n)+A030449(A028310(n))`
-/

namespace A005345.P11977691499726602864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048766 n + A030449 (A028310 n).toNat

end

end A005345.P11977691499726602864

/-! ## A005345.P4512930634803994140

`A030449(A028310(n))-A057428(n)`
-/

namespace A005345.P4512930634803994140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030449 (A028310 n).toNat - A057428 n

end

end A005345.P4512930634803994140

/-!
# A005346: Van der Waerden numbers W(2,n).

The programs for A005346, there is no canonical definition to state claims against.
-/

/-! ## A005346.P12442012839283760757

`A121894(n+1)+1`
-/

namespace A005346.P12442012839283760757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121894 (n + 1) + 1

end

end A005346.P12442012839283760757

/-!
# A005347: First differences of A005579.

The programs for A005347, there is no canonical definition to state claims against.
-/

/-! ## A005347.P6163205162210457254

`A005579(n+1)-A005579(n)`
-/

namespace A005347.P6163205162210457254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005579 (n + 1) - A005579 n

end

end A005347.P6163205162210457254

/-! ## A005347.P10374059077055106825

`Δ[A005579(n)]`
-/

namespace A005347.P10374059077055106825
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005579 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A005347.P10374059077055106825

/-! ## A005347.P17044694258889569799

`A122313(A218032(n))`
-/

namespace A005347.P17044694258889569799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122313 (A218032 n).toNat

end

end A005347.P17044694258889569799

/-! ## A005347.P287451079364333879

`A247973(A060166(n+1))`
-/

namespace A005347.P287451079364333879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247973 (A060166 (n + 1)).toNat

end

end A005347.P287451079364333879

/-! ## A005347.P12835777985828961152

`A261133(A141325(n))`
-/

namespace A005347.P12835777985828961152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261133 (A141325 n).toNat

end

end A005347.P12835777985828961152

/-!
# A005348: Number of ways to add n ordinals.

The programs for A005348, there is no canonical definition to state claims against.
-/

/-! ## A005348.P6621024406177920872

`A239830(A298672(n))+A001787(n)`
-/

namespace A005348.P6621024406177920872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239830 (A298672 n).toNat + A001787 n

end

end A005348.P6621024406177920872

/-! ## A005348.P9139946268597947982

`A008621(A011782(n)*A311153(n))`
-/

namespace A005348.P9139946268597947982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008621 (A011782 n * A311153 n).toNat

end

end A005348.P9139946268597947982

/-! ## A005348.P5134060256604832339

`A008621(A011782(n)*A311156(n))`
-/

namespace A005348.P5134060256604832339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008621 (A011782 n * A311156 n).toNat

end

end A005348.P5134060256604832339

/-! ## A005348.P3073049394860318532

`or(A005183(n), A104245(A049864(n)))`
-/

namespace A005348.P3073049394860318532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A005183 n) (A104245 (A049864 n).toNat)

end

end A005348.P3073049394860318532

/-!
# A005349: Niven (or Harshad, or harshad) numbers: numbers that are divisible by the sum of their digits.

The programs for A005349, there is no canonical definition to state claims against.
-/

/-! ## A005349.P8101266922510473375

`A082516(n)+a(n-1)` with `a(0)=1`
-/

namespace A005349.P8101266922510473375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A082516 n + a (n - 1)

end

end A005349.P8101266922510473375

/-! ## A005349.P12588264855989531280

`∑[A082516(A028310(n))]`
-/

namespace A005349.P12588264855989531280
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082516 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A005349.P12588264855989531280

/-! ## A005349.P17472145648750765007

`A113315(n+1)*A325454(n+1)`
-/

namespace A005349.P17472145648750765007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113315 (n + 1) * A325454 (n + 1)

end

end A005349.P17472145648750765007

/-! ## A005349.P16748267575599782269

`∪[A051004(n+1), A087141(n+1)]`
-/

namespace A005349.P16748267575599782269
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051004 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087141 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A005349.P16748267575599782269

/-! ## A005349.P7413413035106427208

`∪[A100432(n+1), A100433(n+1)]`
-/

namespace A005349.P7413413035106427208
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100432 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100433 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A005349.P7413413035106427208

/-! ## A005349.P18360520849349725187

`∪[A101813(n+1), A101814(n+1)]`
-/

namespace A005349.P18360520849349725187
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101813 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101814 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A005349.P18360520849349725187

/-! ## A005349.P11663717516941881892

`∪[A087141(n+1), A217973(n+1)]`
-/

namespace A005349.P11663717516941881892
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087141 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217973 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A005349.P11663717516941881892

/-! ## A005349.P3540705669824305863

`∪[A087141(n+1), A356349(n+1)]`
-/

namespace A005349.P3540705669824305863
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087141 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356349 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A005349.P3540705669824305863

/-! ## A005349.P4725322940583917506

`∪[A101814(n+1), A356349(n+1)]`
-/

namespace A005349.P4725322940583917506
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101814 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356349 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A005349.P4725322940583917506

/-! ## A005349.P16039147790410417256

`∪[A135186(n+1), A385640(n+1)]`
-/

namespace A005349.P16039147790410417256
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135186 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385640 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A005349.P16039147790410417256

/-! ## A005349.P5060460388653745326

`∪[A235507(n+1), A389220(n+1)]`
-/

namespace A005349.P5060460388653745326
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235507 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389220 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A005349.P5060460388653745326

/-! ## A005349.P2287052003429095666

`∑[A082516(n+1)]+1-A082516(n+1)`
-/

namespace A005349.P2287052003429095666
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082516 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (1 - A082516 (n + 1))

end

end A005349.P2287052003429095666

/-! ## A005349.P13226802591727731970

`∪[A134516(n+1), A356349(n+1)]`
-/

namespace A005349.P13226802591727731970
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134516 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356349 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A005349.P13226802591727731970

/-! ## A005349.P1075814171929410925

`record[A360074(n+1)]`
-/

namespace A005349.P1075814171929410925
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360074 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A005349.P1075814171929410925

/-! ## A005349.P17566849640143600321

`eq[0, A070635(n+1)]+1`
-/

namespace A005349.P17566849640143600321
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070635 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A005349.P17566849640143600321

/-! ## A005349.P6310038496295878422

`eq[1, A065518(n+1)]+1`
-/

namespace A005349.P6310038496295878422
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065518 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A005349.P6310038496295878422

/-! ## A005349.P11776716693594627826

`eq[1, A144261(n+1)]+1`
-/

namespace A005349.P11776716693594627826
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144261 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A005349.P11776716693594627826

/-! ## A005349.P2131559065887227843

`eq[1, A188641(n+1)]+1`
-/

namespace A005349.P2131559065887227843
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188641 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A005349.P2131559065887227843

/-! ## A005349.P9516969121905029607

`lt[A070635(abs(1-n)+2)+1, 2]+1`
-/

namespace A005349.P9516969121905029607
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070635 (|1 - (n : ℤ)| + 2).toNat + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A005349.P9516969121905029607

/-! ## A005349.P9049894253428557141

`eq[n+1, lcm(n+1, A007953(n+1))]+1`
-/

namespace A005349.P9049894253428557141
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (n + 1 : ℤ) (A007953 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A005349.P9049894253428557141

/-!
# A005350: a(1) = a(2) = a(3) = 1, a(n) = a(a(n-1)) + a(n-a(n-1)) for n >= 4.

The programs for A005350, the canonical program `A005350.P6101164978901008924` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A005350 has offset 1).

The definition of A005350 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(a(n-1)-1)+a(n-a(n-1))` (program `A005350.P6101164978901008924`, by `A005350.P6101164978901008924.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A005350.P6101164978901008924

`a(a(n-1)-1)+a(n-a(n-1))` with `a(0)=1, a(1)=1, a(2)=1`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A005350

/-- `a(a(n-1)-1)+a(n-a(n-1))` -/
def P6101164978901008924.Spec : Prop :=
  ∀ n, (P6101164978901008924.a n : ℤ) = A005350 (n + 1)

theorem P6101164978901008924.correct : P6101164978901008924.Spec := by
  intro n
  simp only [A005350, Nat.add_sub_cancel]

end A005350

/-! ## A005350.P9633310774550519538

`A093878(A093878(n+1))`
-/

namespace A005350.P9633310774550519538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093878 (A093878 (n + 1)).toNat

end

end A005350.P9633310774550519538

namespace A005350

/-- `A093878(A093878(n+1))` -/
def P9633310774550519538.Spec : Prop :=
  ∀ n, P9633310774550519538.a n = A005350 (n + 1)

end A005350

/-! ## A005350.P13573989256432368984

`A153112(A328617(n+1))`
-/

namespace A005350.P13573989256432368984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153112 (A328617 (n + 1)).toNat

end

end A005350.P13573989256432368984

namespace A005350

/-- `A153112(A328617(n+1))` -/
def P13573989256432368984.Spec : Prop :=
  ∀ n, P13573989256432368984.a n = A005350 (n + 1)

end A005350

/-!
# A005351: Base -2 representation for n regarded as base 2, then evaluated.

The programs for A005351, the canonical program `A005351.P4664826526780043755` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A005351 has offset 0).

The definition of A005351 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5462 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A005351.P4664826526780043755

`A004514(lt[n, A088442(n)])-n`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A005351

/-- `A004514(lt[n, A088442(n)])-n` -/
def P4664826526780043755.Spec : Prop :=
  ∀ n, P4664826526780043755.a n = A005351 n

theorem P4664826526780043755.correct : P4664826526780043755.Spec := by
  intro n
  simp only [A005351]

end A005351

/-! ## A005351.P12910937937630543509

`A004514(A178729(n)+n)-n`
-/

namespace A005351.P12910937937630543509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004514 (A178729 n + (n : ℤ)).toNat - (n : ℤ)

end

end A005351.P12910937937630543509

namespace A005351

/-- `A004514(A178729(n)+n)-n` -/
def P12910937937630543509.Spec : Prop :=
  ∀ n, P12910937937630543509.a n = A005351 n

end A005351

/-! ## A005351.P16651292228476282950

`A053754(A338249(2*n)+1)/2`
-/

namespace A005351.P16651292228476282950
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A053754 (A338249 (2 * n) + 1).toNat : ℚ) / 2

end

end A005351.P16651292228476282950

namespace A005351

/-- `A053754(A338249(2*n)+1)/2` -/
def P16651292228476282950.Spec : Prop :=
  ∀ n, P16651292228476282950.a n = (A005351 n : ℚ)

end A005351

/-! ## A005351.P10026685953701020658

`A165199(A053754(2*n+1))/2`
-/

namespace A005351.P10026685953701020658
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A165199 (A053754 (2 * n + 1)).toNat : ℚ) / 2

end

end A005351.P10026685953701020658

namespace A005351

/-- `A165199(A053754(2*n+1))/2` -/
def P10026685953701020658.Spec : Prop :=
  ∀ n, P10026685953701020658.a n = (A005351 n : ℚ)

end A005351

/-! ## A005351.P9649640798591401882

`A182182(record[n*A040001(n+1)]-n)`
-/

namespace A005351.P9649640798591401882
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A040001 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182182 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - (n : ℤ)).toNat

end

end A005351.P9649640798591401882

namespace A005351

/-- `A182182(record[n*A040001(n+1)]-n)` -/
def P9649640798591401882.Spec : Prop :=
  ∀ n, P9649640798591401882.a n = A005351 n

end A005351

/-! ## A005351.P18056421185477511992

`xor(A193652(n+1)+n, A193652(n+1))`
-/

namespace A005351.P18056421185477511992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A193652 (n + 1) + (n : ℤ)) (A193652 (n + 1))

end

end A005351.P18056421185477511992

namespace A005351

/-- `xor(A193652(n+1)+n, A193652(n+1))` -/
def P18056421185477511992.Spec : Prop :=
  ∀ n, P18056421185477511992.a n = A005351 n

end A005351

/-! ## A005351.P11320739050079912485

`xor(A077980(2*n+1)-n, A077980(2*n+1))`
-/

namespace A005351.P11320739050079912485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A077980 (2 * n + 1) - (n : ℤ)) (A077980 (2 * n + 1))

end

end A005351.P11320739050079912485

namespace A005351

/-- `xor(A077980(2*n+1)-n, A077980(2*n+1))` -/
def P11320739050079912485.Spec : Prop :=
  ∀ n, P11320739050079912485.a n = A005351 n

end A005351

/-! ## A005351.P1341621974048643256

`xor(A052992(n)-n, A052992(n))`
-/

namespace A005351.P1341621974048643256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A052992 n - (n : ℤ)) (A052992 n)

end

end A005351.P1341621974048643256

namespace A005351

/-- `xor(A052992(n)-n, A052992(n))` -/
def P1341621974048643256.Spec : Prop :=
  ∀ n, P1341621974048643256.a n = A005351 n

end A005351

/-! ## A005351.P1019804115264179708

`xor(A080610(n)-n, A080610(n))`
-/

namespace A005351.P1019804115264179708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A080610 n - (n : ℤ)) (A080610 n)

end

end A005351.P1019804115264179708

namespace A005351

/-- `xor(A080610(n)-n, A080610(n))` -/
def P1019804115264179708.Spec : Prop :=
  ∀ n, P1019804115264179708.a n = A005351 n

end A005351

/-! ## A005351.P6233934520714343013

`xor(A263053(n+1)+n, A263053(n+1))`
-/

namespace A005351.P6233934520714343013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A263053 (n + 1) + (n : ℤ)) (A263053 (n + 1))

end

end A005351.P6233934520714343013

namespace A005351

/-- `xor(A263053(n+1)+n, A263053(n+1))` -/
def P6233934520714343013.Spec : Prop :=
  ∀ n, P6233934520714343013.a n = A005351 n

end A005351

/-! ## A005351.P1316926501581748194

`xor(A284238(n+1)+n, A284238(n+1))`
-/

namespace A005351.P1316926501581748194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A284238 (n + 1) + (n : ℤ)) (A284238 (n + 1))

end

end A005351.P1316926501581748194

namespace A005351

/-- `xor(A284238(n+1)+n, A284238(n+1))` -/
def P1316926501581748194.Spec : Prop :=
  ∀ n, P1316926501581748194.a n = A005351 n

end A005351

/-! ## A005351.P16911059948403633075

`xor(A086893(n+1)-n, A086893(n+1))`
-/

namespace A005351.P16911059948403633075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A086893 (n + 1) - (n : ℤ)) (A086893 (n + 1))

end

end A005351.P16911059948403633075

namespace A005351

/-- `xor(A086893(n+1)-n, A086893(n+1))` -/
def P16911059948403633075.Spec : Prop :=
  ∀ n, P16911059948403633075.a n = A005351 n

end A005351

/-! ## A005351.P11404596756547301937

`xor(A096773(n+2)-n, A096773(n+2))`
-/

namespace A005351.P11404596756547301937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A096773 (n + 2) - (n : ℤ)) (A096773 (n + 2))

end

end A005351.P11404596756547301937

namespace A005351

/-- `xor(A096773(n+2)-n, A096773(n+2))` -/
def P11404596756547301937.Spec : Prop :=
  ∀ n, P11404596756547301937.a n = A005351 n

end A005351

/-! ## A005351.P18280971331141803387

`xor(A078052(2*n+1)+n, A078052(2*n+1))`
-/

namespace A005351.P18280971331141803387
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A078052 (2 * n + 1) + (n : ℤ)) (A078052 (2 * n + 1))

end

end A005351.P18280971331141803387

namespace A005351

/-- `xor(A078052(2*n+1)+n, A078052(2*n+1))` -/
def P18280971331141803387.Spec : Prop :=
  ∀ n, P18280971331141803387.a n = A005351 n

end A005351

/-! ## A005351.P11121073798786559630

`xor(A283323(n+1)-n, A283323(n+1))`
-/

namespace A005351.P11121073798786559630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A283323 (n + 1) - (n : ℤ)) (A283323 (n + 1))

end

end A005351.P11121073798786559630

namespace A005351

/-- `xor(A283323(n+1)-n, A283323(n+1))` -/
def P11121073798786559630.Spec : Prop :=
  ∀ n, P11121073798786559630.a n = A005351 n

end A005351

/-! ## A005351.P17954656069792628978

`xor(A087231(n+2)+n, A087231(n+2))`
-/

namespace A005351.P17954656069792628978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A087231 (n + 2) + (n : ℤ)) (A087231 (n + 2))

end

end A005351.P17954656069792628978

namespace A005351

/-- `xor(A087231(n+2)+n, A087231(n+2))` -/
def P17954656069792628978.Spec : Prop :=
  ∀ n, P17954656069792628978.a n = A005351 n

end A005351

/-! ## A005351.P4748352414805557756

`xor(A176965(n+2)+n, A176965(n+2))`
-/

namespace A005351.P4748352414805557756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A176965 (n + 2) + (n : ℤ)) (A176965 (n + 2))

end

end A005351.P4748352414805557756

namespace A005351

/-- `xor(A176965(n+2)+n, A176965(n+2))` -/
def P4748352414805557756.Spec : Prop :=
  ∀ n, P4748352414805557756.a n = A005351 n

end A005351

/-! ## A005351.P2883912499396641516

`xor(A087964(n+1)-n, A087964(n+1))`
-/

namespace A005351.P2883912499396641516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A087964 (n + 1) - (n : ℤ)) (A087964 (n + 1))

end

end A005351.P2883912499396641516

namespace A005351

/-- `xor(A087964(n+1)-n, A087964(n+1))` -/
def P2883912499396641516.Spec : Prop :=
  ∀ n, P2883912499396641516.a n = A005351 n

end A005351

/-! ## A005351.P7151749191980914969

`xor(A135351(2*n)+n, A135351(2*n))`
-/

namespace A005351.P7151749191980914969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A135351 (2 * n) + (n : ℤ)) (A135351 (2 * n))

end

end A005351.P7151749191980914969

namespace A005351

/-- `xor(A135351(2*n)+n, A135351(2*n))` -/
def P7151749191980914969.Spec : Prop :=
  ∀ n, P7151749191980914969.a n = A005351 n

end A005351

/-! ## A005351.P900012423099318829

`xor(A020988(n)+n, A020988(n))`
-/

namespace A005351.P900012423099318829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A020988 n + (n : ℤ)) (A020988 n)

end

end A005351.P900012423099318829

namespace A005351

/-- `xor(A020988(n)+n, A020988(n))` -/
def P900012423099318829.Spec : Prop :=
  ∀ n, P900012423099318829.a n = A005351 n

end A005351

/-!
# A005352: Base -2 representation of -n reinterpreted as binary.

The programs for A005352, the canonical program `A005352.P7451488854833624902` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A005352 has offset 1).

The definition of A005352 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A005352.P7451488854833624902

`xor(2*n+1, xor(2*n+1, a(n-1))+1)` with `a(0)=3`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A005352

/-- `xor(2*n+1, xor(2*n+1, a(n-1))+1)` -/
def P7451488854833624902.Spec : Prop :=
  ∀ n, (P7451488854833624902.a n : ℤ) = A005352 (n + 1)

theorem P7451488854833624902.correct : P7451488854833624902.Spec := by
  intro n
  simp only [A005352, Nat.add_sub_cancel]

end A005352

/-! ## A005352.P2537852540330992200

`∑[A077925(A087230(n))]`
-/

namespace A005352.P2537852540330992200
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077925 (A087230 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A005352.P2537852540330992200

namespace A005352

/-- `∑[A077925(A087230(n))]` -/
def P2537852540330992200.Spec : Prop :=
  ∀ n, P2537852540330992200.a n = A005352 (n + 1)

end A005352

/-! ## A005352.P2259797054995262823

`xor(A005351(n+1), A178729(n+1))`
-/

namespace A005352.P2259797054995262823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A005351 (n + 1)) (A178729 (n + 1))

end

end A005352.P2259797054995262823

namespace A005352

/-- `xor(A005351(n+1), A178729(n+1))` -/
def P2259797054995262823.Spec : Prop :=
  ∀ n, P2259797054995262823.a n = A005352 (n + 1)

end A005352

/-! ## A005352.P13621858380373329020

`A003188(A053754(A338254(n+1)+1))`
-/

namespace A005352.P13621858380373329020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003188 (A053754 (A338254 (n + 1) + 1).toNat).toNat

end

end A005352.P13621858380373329020

namespace A005352

/-- `A003188(A053754(A338254(n+1)+1))` -/
def P13621858380373329020.Spec : Prop :=
  ∀ n, P13621858380373329020.a n = A005352 (n + 1)

end A005352

/-! ## A005352.P18279305641804165135

`A005351(2*(n+1))/2`
-/

namespace A005352.P18279305641804165135
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A005351 (2 * (n + 1)) : ℚ) / 2

end

end A005352.P18279305641804165135

namespace A005352

/-- `A005351(2*(n+1))/2` -/
def P18279305641804165135.Spec : Prop :=
  ∀ n, P18279305641804165135.a n = (A005352 (n + 1) : ℚ)

end A005352

/-! ## A005352.P16303111716779956599

`Δ[∑[A005351(2*n)]/2]`
-/

namespace A005352.P16303111716779956599
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005351 (2 * n)

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℤ) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A005352.P16303111716779956599

namespace A005352

/-- `Δ[∑[A005351(2*n)]/2]` -/
def P16303111716779956599.Spec : Prop :=
  ∀ n, P16303111716779956599.a n = (A005352 (n + 1) : ℚ)

end A005352

/-! ## A005352.P11091937207956198367

`A178729(2*(n+1))-A005351(n+1)`
-/

namespace A005352.P11091937207956198367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178729 (2 * (n + 1)) - A005351 (n + 1)

end

end A005352.P11091937207956198367

namespace A005352

/-- `A178729(2*(n+1))-A005351(n+1)` -/
def P11091937207956198367.Spec : Prop :=
  ∀ n, P11091937207956198367.a n = A005352 (n + 1)

end A005352

/-! ## A005352.P90233979038799104

`A053754(A338249(n+1)+1)`
-/

namespace A005352.P90233979038799104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053754 (A338249 (n + 1) + 1).toNat

end

end A005352.P90233979038799104

namespace A005352

/-- `A053754(A338249(n+1)+1)` -/
def P90233979038799104.Spec : Prop :=
  ∀ n, P90233979038799104.a n = A005352 (n + 1)

end A005352

/-! ## A005352.P13578753591492347546

`A004526(A005351(2*(n+1)))`
-/

namespace A005352.P13578753591492347546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A005351 (2 * (n + 1))).toNat

end

end A005352.P13578753591492347546

namespace A005352

/-- `A004526(A005351(2*(n+1)))` -/
def P13578753591492347546.Spec : Prop :=
  ∀ n, P13578753591492347546.a n = A005352 (n + 1)

end A005352

/-! ## A005352.P2832612055951414419

`A165199(A053754(n+2))`
-/

namespace A005352.P2832612055951414419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165199 (A053754 (n + 2)).toNat

end

end A005352.P2832612055951414419

namespace A005352

/-- `A165199(A053754(n+2))` -/
def P2832612055951414419.Spec : Prop :=
  ∀ n, P2832612055951414419.a n = A005352 (n + 1)

end A005352

/-! ## A005352.P10957421714741594918

`A182182(3*n+2)`
-/

namespace A005352.P10957421714741594918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182182 (3 * n + 2)

end

end A005352.P10957421714741594918

namespace A005352

/-- `A182182(3*n+2)` -/
def P10957421714741594918.Spec : Prop :=
  ∀ n, P10957421714741594918.a n = A005352 (n + 1)

end A005352

/-! ## A005352.P5221945784777278720

`xor(A000975(2*n+1), A086445(2*n+1))`
-/

namespace A005352.P5221945784777278720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A000975 (2 * n + 1)) (A086445 (2 * n + 1))

end

end A005352.P5221945784777278720

namespace A005352

/-- `xor(A000975(2*n+1), A086445(2*n+1))` -/
def P5221945784777278720.Spec : Prop :=
  ∀ n, P5221945784777278720.a n = A005352 (n + 1)

end A005352

/-! ## A005352.P9196705378352895094

`xor(n+1+A002450(n+1), A002450(n+1))`
-/

namespace A005352.P9196705378352895094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor ((n + 1 : ℤ) + A002450 (n + 1)) (A002450 (n + 1))

end

end A005352.P9196705378352895094

namespace A005352

/-- `xor(n+1+A002450(n+1), A002450(n+1))` -/
def P9196705378352895094.Spec : Prop :=
  ∀ n, P9196705378352895094.a n = A005352 (n + 1)

end A005352

/-! ## A005352.P4276724562642713233

`xor(A014113(2*n+1)+n, A283642(2*n))`
-/

namespace A005352.P4276724562642713233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A014113 (2 * n + 1) + (n : ℤ)) (A283642 (2 * n))

end

end A005352.P4276724562642713233

namespace A005352

/-- `xor(A014113(2*n+1)+n, A283642(2*n))` -/
def P4276724562642713233.Spec : Prop :=
  ∀ n, P4276724562642713233.a n = A005352 (n + 1)

end A005352

/-!
# A005353: Number of 2 X 2 matrices with entries mod n and nonzero determinant.

The programs for A005353, the canonical program `A005353.P13530675845642685918` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A005353 has offset 1).

The definition of A005353 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A005353.P13530675845642685918

`(n+1)^4-A020478(n+1)`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A005353

/-- `(n+1)^4-A020478(n+1)` -/
def P13530675845642685918.Spec : Prop :=
  ∀ n, P13530675845642685918.a n = A005353 (n + 1)

theorem P13530675845642685918.correct : P13530675845642685918.Spec := by
  intro n
  simp only [A005353, Nat.add_sub_cancel]

end A005353

/-! ## A005353.P734818764358506287

`(n+1)*((n+1)^3-A069097(n+1))`
-/

namespace A005353.P734818764358506287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (((n + 1) ^ 3 : ℤ) - A069097 (n + 1))

end

end A005353.P734818764358506287

namespace A005353

/-- `(n+1)*((n+1)^3-A069097(n+1))` -/
def P734818764358506287.Spec : Prop :=
  ∀ n, P734818764358506287.a n = A005353 (n + 1)

theorem P734818764358506287.correct : P734818764358506287.Spec := by
  intro n
  simp only [A005353, Nat.add_sub_cancel, A005353.P734818764358506287.a, A005353.P13530675845642685918.a, A020478, A020478.P13030858516864996585.a, A069097, A069097.P14337265421589170729.f1, A069097.P14337265421589170729.a, A000010, A000010.P4673923239450215316.a, A003557, A003557.P6364735403900941810.a, A173557, A173557.P308518469657070908.f1, A173557.P308518469657070908.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A005353

/-! ## A005353.P2622905990204177788

`A253909(n+1)²-(n+1)*A069097(n+1)`
-/

namespace A005353.P2622905990204177788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253909 (n + 1) ^ 2 - (n + 1 : ℤ) * A069097 (n + 1)

end

end A005353.P2622905990204177788

namespace A005353

/-- `A253909(n+1)²-(n+1)*A069097(n+1)` -/
def P2622905990204177788.Spec : Prop :=
  ∀ n, P2622905990204177788.a n = A005353 (n + 1)

end A005353

/-! ## A005353.P15064395388031441152

`A059306(n)+A062801(n)-A020478(n+1)`
-/

namespace A005353.P15064395388031441152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059306 n + (A062801 n - A020478 (n + 1))

end

end A005353.P15064395388031441152

namespace A005353

/-- `A059306(n)+A062801(n)-A020478(n+1)` -/
def P15064395388031441152.Spec : Prop :=
  ∀ n, P15064395388031441152.a n = A005353 (n + 1)

end A005353

/-! ## A005353.P9660258171558869685

`A000290(A000290(n+1))-(n+1)*A069097(n+1)`
-/

namespace A005353.P9660258171558869685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000290 (A000290 (n + 1)).toNat - (n + 1 : ℤ) * A069097 (n + 1)

end

end A005353.P9660258171558869685

namespace A005353

/-- `A000290(A000290(n+1))-(n+1)*A069097(n+1)` -/
def P9660258171558869685.Spec : Prop :=
  ∀ n, P9660258171558869685.a n = A005353 (n + 1)

end A005353

/-!
# A005354: Number of asymmetric planar trees with n nodes.

The programs for A005354, there is no canonical definition to state claims against.
-/

/-! ## A005354.P3654432378405155878

`A168201(or(6, A294703(n)))`
-/

namespace A005354.P3654432378405155878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168201 (Int.lor 6 (A294703 n)).toNat

end

end A005354.P3654432378405155878

/-! ## A005354.P13879668527662494077

`A333647(n)-A000196(A333107(n))`
-/

namespace A005354.P13879668527662494077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333647 n - A000196 (A333107 n).toNat

end

end A005354.P13879668527662494077

/-! ## A005354.P16084673991993726498

`A168201(A116845(n+1)-A052542(n))`
-/

namespace A005354.P16084673991993726498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168201 (A116845 (n + 1) - A052542 n).toNat

end

end A005354.P16084673991993726498

/-! ## A005354.P12498334567352280387

`A168201(A089822(n+1)*A125189(n))`
-/

namespace A005354.P12498334567352280387
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168201 (A089822 (n + 1) * A125189 n).toNat

end

end A005354.P12498334567352280387

/-!
# A005355: Number of asymmetric permutation rooted trees with n nodes.

The programs for A005355, there is no canonical definition to state claims against.
-/

/-! ## A005355.P13122729843606514374

`A182399(floor(sqrt(n²+1)))%A369811(n+1)`
-/

namespace A005355.P13122729843606514374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A182399 (Nat.sqrt (n ^ 2 + 1))) (A369811 (n + 1))

end

end A005355.P13122729843606514374

/-! ## A005355.P799266168975848447

`or(A008618(A088355(n)), A178489(n))`
-/

namespace A005355.P799266168975848447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A008618 (A088355 n).toNat) (A178489 n)

end

end A005355.P799266168975848447

/-! ## A005355.P3509779732808408631

`A008618(A241266(n+1)+A099098(n))`
-/

namespace A005355.P3509779732808408631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008618 (A241266 (n + 1) + A099098 n).toNat

end

end A005355.P3509779732808408631

/-! ## A005355.P4503887389364716028

`or(A008618(A088355(n)), A071625(n+1))`
-/

namespace A005355.P4503887389364716028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A008618 (A088355 n).toNat) (A071625 (n + 1))

end

end A005355.P4503887389364716028

/-! ## A005355.P263908077607439605

`or(A008618(A088355(n)), A348177(n+1))`
-/

namespace A005355.P263908077607439605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A008618 (A088355 n).toNat) (A348177 (n + 1))

end

end A005355.P263908077607439605

/-!
# A005356: Number of low discrepancy sequences in base 2.

The programs for A005356, the canonical program `A005356.P1340583783643983062` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A005356 has offset 1).

The definition of A005356 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A005356.P1340583783643983062

`∑[∑[char[A062692(n+1)]]]`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A005356

/-- `∑[∑[char[A062692(n+1)]]]` -/
def P1340583783643983062.Spec : Prop :=
  ∀ n, (P1340583783643983062.a n : ℤ) = A005356 (n + 1)

theorem P1340583783643983062.correct : P1340583783643983062.Spec := by
  intro n
  simp only [A005356, Nat.add_sub_cancel]

end A005356

/-! ## A005356.P14329111085780855475

`∑[floor(log2(A014580(n+1)))-1]`
-/

namespace A005356.P14329111085780855475
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.log 2 (A014580 (n + 1)).toNat : ℤ) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A005356.P14329111085780855475

namespace A005356

/-- `∑[floor(log2(A014580(n+1)))-1]` -/
def P14329111085780855475.Spec : Prop :=
  ∀ n, P14329111085780855475.a n = A005356 (n + 1)

end A005356

/-! ## A005356.P13415203702627643417

`∑[∑[char[A001036(n+1)+1]]]`
-/

namespace A005356.P13415203702627643417
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001036 (n + 1) + 1

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = (n : ℤ) then 1 else 0

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A005356.P13415203702627643417

namespace A005356

/-- `∑[∑[char[A001036(n+1)+1]]]` -/
def P13415203702627643417.Spec : Prop :=
  ∀ n, (P13415203702627643417.a n : ℤ) = A005356 (n + 1)

end A005356

/-! ## A005356.P17282800486151202982

`∑[A302291(A275692(n+1))-1]`
-/

namespace A005356.P17282800486151202982
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302291 (A275692 (n + 1)).toNat - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A005356.P17282800486151202982

namespace A005356

/-- `∑[A302291(A275692(n+1))-1]` -/
def P17282800486151202982.Spec : Prop :=
  ∀ n, P17282800486151202982.a n = A005356 (n + 1)

end A005356

/-! ## A005356.P11754618565223269449

`∑[A000523(A339608(n+1))]-n`
-/

namespace A005356.P11754618565223269449
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000523 (A339608 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (n : ℤ)

end

end A005356.P11754618565223269449

namespace A005356

/-- `∑[A000523(A339608(n+1))]-n` -/
def P11754618565223269449.Spec : Prop :=
  ∀ n, P11754618565223269449.a n = A005356 (n + 1)

end A005356

/-! ## A005356.P3316729733931283490

`∑[A070939(A326774(n))-1]`
-/

namespace A005356.P3316729733931283490
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070939 (A326774 n).toNat - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A005356.P3316729733931283490

namespace A005356

/-- `∑[A070939(A326774(n))-1]` -/
def P3316729733931283490.Spec : Prop :=
  ∀ n, P3316729733931283490.a n = A005356 (n + 1)

end A005356

/-! ## A005356.P5254413151306661292

`∑[A000523(or(1, A326774(n)))]`
-/

namespace A005356.P5254413151306661292
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000523 (Int.lor 1 (A326774 n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A005356.P5254413151306661292

namespace A005356

/-- `∑[A000523(or(1, A326774(n)))]` -/
def P5254413151306661292.Spec : Prop :=
  ∀ n, P5254413151306661292.a n = A005356 (n + 1)

end A005356

/-! ## A005356.P2474528697060242592

`∑[A070939(A334265(n+1))-1]`
-/

namespace A005356.P2474528697060242592
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070939 (A334265 (n + 1)).toNat - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A005356.P2474528697060242592

namespace A005356

/-- `∑[A070939(A334265(n+1))-1]` -/
def P2474528697060242592.Spec : Prop :=
  ∀ n, P2474528697060242592.a n = A005356 (n + 1)

end A005356

/-! ## A005356.P15259040235643497578

`∑[A004872(A070939(A326774(n)))]`
-/

namespace A005356.P15259040235643497578
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004872 (A070939 (A326774 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A005356.P15259040235643497578

namespace A005356

/-- `∑[A004872(A070939(A326774(n)))]` -/
def P15259040235643497578.Spec : Prop :=
  ∀ n, P15259040235643497578.a n = A005356 (n + 1)

end A005356

/-!
# A005357: Number of low discrepancy sequences in base 3.

The programs for A005357, the canonical program `A005357.P18288146475630662332` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A005357 has offset 1).

The definition of A005357 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A005357.P18288146475630662332

`∑[∑[char[A114945(n+1)]]]`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A005357

/-- `∑[∑[char[A114945(n+1)]]]` -/
def P18288146475630662332.Spec : Prop :=
  ∀ n, (P18288146475630662332.a n : ℤ) = A005357 (n + 1)

theorem P18288146475630662332.correct : P18288146475630662332.Spec := by
  intro n
  simp only [A005357, Nat.add_sub_cancel]

end A005357

/-! ## A005357.P4411220127734522813

`∑[∑[A249832(A350195(n+1))]]`
-/

namespace A005357.P4411220127734522813
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249832 (A350195 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A005357.P4411220127734522813

namespace A005357

/-- `∑[∑[A249832(A350195(n+1))]]` -/
def P4411220127734522813.Spec : Prop :=
  ∀ n, P4411220127734522813.a n = A005357 (n + 1)

end A005357

/-! ## A005357.P1659549674009726610

`∑[A081604(A213511(n+1))-1]`
-/

namespace A005357.P1659549674009726610
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081604 (A213511 (n + 1)).toNat - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A005357.P1659549674009726610

namespace A005357

/-- `∑[A081604(A213511(n+1))-1]` -/
def P1659549674009726610.Spec : Prop :=
  ∀ n, P1659549674009726610.a n = A005357 (n + 1)

end A005357

/-! ## A005357.P4860142238437664473

`∑[A173875(n+1)%A081604(A213511(n+1))]`
-/

namespace A005357.P4860142238437664473
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A173875 (n + 1)) (A081604 (A213511 (n + 1)).toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A005357.P4860142238437664473

namespace A005357

/-- `∑[A173875(n+1)%A081604(A213511(n+1))]` -/
def P4860142238437664473.Spec : Prop :=
  ∀ n, P4860142238437664473.a n = A005357 (n + 1)

end A005357

/-! ## A005357.P16376826056138615291

`∑[floor(log2(A156078(2*(n+2))))]`
-/

namespace A005357.P16376826056138615291
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.log 2 (A156078 (2 * (n + 2))).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A005357.P16376826056138615291

namespace A005357

/-- `∑[floor(log2(A156078(2*(n+2))))]` -/
def P16376826056138615291.Spec : Prop :=
  ∀ n, (P16376826056138615291.a n : ℤ) = A005357 (n + 1)

end A005357

/-!
# A005358: Number of low discrepancy sequences in base 5.

The programs for A005358, there is no canonical definition to state claims against.
-/

/-! ## A005358.P16919635888281796285

`∑[∑[char[A114947(n+1)]]]`
-/

namespace A005358.P16919635888281796285
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114947 (n + 1)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = (n : ℤ) then 1 else 0

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A005358.P16919635888281796285

/-! ## A005358.P6803745612712830170

`∑[A004216(A001504(A002266(n)))]`
-/

namespace A005358.P6803745612712830170
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004216 (A001504 (A002266 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A005358.P6803745612712830170

/-! ## A005358.P11106737334611144839

`∑[A333525(∑[A327169(n+1)])]`
-/

namespace A005358.P11106737334611144839
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327169 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333525 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A005358.P11106737334611144839

/-! ## A005358.P13411221246299091465

`∑[∑[A015269(A330977(n+1))²]]`
-/

namespace A005358.P13411221246299091465
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015269 (A330977 (n + 1)).toNat ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A005358.P13411221246299091465

/-! ## A005358.P17333884474589082565

`∑[A305831(∑[A001343(n)])]`
-/

namespace A005358.P17333884474589082565
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001343 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305831 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A005358.P17333884474589082565

/-! ## A005358.P12255214852191791466

`∑[A305832(∑[A001343(n)])]`
-/

namespace A005358.P12255214852191791466
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001343 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305832 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A005358.P12255214852191791466

/-! ## A005358.P11834357184104310120

`∑[A056811(A213809(2*n+1))]`
-/

namespace A005358.P11834357184104310120
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056811 (A213809 (2 * n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A005358.P11834357184104310120

/-! ## A005358.P10292722374159606749

`∑[∑[A279485(A350443(n+1))]]`
-/

namespace A005358.P10292722374159606749
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279485 (A350443 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A005358.P10292722374159606749

/-!
# A005359: a(n) = n! if n is even, otherwise 0 (from Taylor series for cos x).

The programs for A005359, the canonical program `A005359.P1833860758899852286` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A005359 has offset 0).

The definition of A005359 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A005359.P7975187971204720648

`n!*((-1)^n+1)/2`
-/

namespace A005359.P7975187971204720648
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((Nat.factorial n : ℤ) * ((-1) ^ n + 1) : ℚ) / 2

end

end A005359.P7975187971204720648

namespace A005359

/-- `n!*((-1)^n+1)/2` -/
def P7975187971204720648.Spec : Prop :=
  ∀ n, P7975187971204720648.a n = (A005359 n : ℚ)

end A005359

/-! ## A005359.P1833860758899852286

`n*(n-1)*a(n-2)` with `a(0)=1, a(1)=0`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A005359

/-- `n*(n-1)*a(n-2)` -/
def P1833860758899852286.Spec : Prop :=
  ∀ n, P1833860758899852286.a n = A005359 n

theorem P1833860758899852286.correct : P1833860758899852286.Spec := by
  intro n
  simp only [A005359]

end A005359

/-! ## A005359.P10916271396740630378

`log2(gcd(2, n))*n!`
-/

namespace A005359.P10916271396740630378
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (Nat.gcd 2 n : ℝ) * (Nat.factorial n : ℝ)

end

end A005359.P10916271396740630378

namespace A005359

/-- `log2(gcd(2, n))*n!` -/
def P10916271396740630378.Spec : Prop :=
  ∀ n, P10916271396740630378.a n = (A005359 n : ℝ)

end A005359

/-! ## A005359.P1557058136471492098

`n!*char[2*n]`
-/

namespace A005359.P1557058136471492098
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial n * (if ∃ j, f1 j = n then 1 else 0)

end

end A005359.P1557058136471492098

namespace A005359

/-- `n!*char[2*n]` -/
def P1557058136471492098.Spec : Prop :=
  ∀ n, (P1557058136471492098.a n : ℤ) = A005359 n

end A005359

/-! ## A005359.P8695608991525120744

`lcm(n!, ∑[(-1)^n])`
-/

namespace A005359.P8695608991525120744
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (Nat.factorial n : ℤ) (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A005359.P8695608991525120744

namespace A005359

/-- `lcm(n!, ∑[(-1)^n])` -/
def P8695608991525120744.Spec : Prop :=
  ∀ n, (P8695608991525120744.a n : ℤ) = A005359 n

end A005359

/-! ## A005359.P4693838523424707468

`(n+1)%2*n!`
-/

namespace A005359.P4693838523424707468
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) % 2 * Nat.factorial n

end

end A005359.P4693838523424707468

namespace A005359

/-- `(n+1)%2*n!` -/
def P4693838523424707468.Spec : Prop :=
  ∀ n, (P4693838523424707468.a n : ℤ) = A005359 n

end A005359

/-! ## A005359.P10944036737513573

`(1-n%2)*n!`
-/

namespace A005359.P10944036737513573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - ((n % 2 : ℕ) : ℤ)) * (Nat.factorial n : ℤ)

end

end A005359.P10944036737513573

namespace A005359

/-- `(1-n%2)*n!` -/
def P10944036737513573.Spec : Prop :=
  ∀ n, P10944036737513573.a n = A005359 n

end A005359

/-! ## A005359.P14308381918374108973

`and(1, n+1)*n!`
-/

namespace A005359.P14308381918374108973
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 1 (n + 1) * Nat.factorial n

end

end A005359.P14308381918374108973

namespace A005359

/-- `and(1, n+1)*n!` -/
def P14308381918374108973.Spec : Prop :=
  ∀ n, (P14308381918374108973.a n : ℤ) = A005359 n

end A005359

/-! ## A005359.P16681594567268430522

`(1-and(1, n))*n!`
-/

namespace A005359.P16681594567268430522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - (Nat.land 1 n : ℤ)) * (Nat.factorial n : ℤ)

end

end A005359.P16681594567268430522

namespace A005359

/-- `(1-and(1, n))*n!` -/
def P16681594567268430522.Spec : Prop :=
  ∀ n, P16681594567268430522.a n = A005359 n

end A005359

/-! ## A005359.P9365267190885288422

`and(and(1, n)-1, n!)`
-/

namespace A005359.P9365267190885288422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land ((Nat.land 1 n : ℤ) - 1) (Nat.factorial n : ℤ)

end

end A005359.P9365267190885288422

namespace A005359

/-- `and(and(1, n)-1, n!)` -/
def P9365267190885288422.Spec : Prop :=
  ∀ n, P9365267190885288422.a n = A005359 n

end A005359

/-!
# A005360: Flimsy numbers.

The programs for A005360, there is no canonical definition to state claims against.
-/

/-! ## A005360.P17129410068641715206

`lt[A086342(n), A000120(n)]`
-/

namespace A005360.P17129410068641715206
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086342 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A005360.P17129410068641715206

/-! ## A005360.P2454577506045610995

`eq[char[A125121(n+1)], A000007(n)]`
-/

namespace A005360.P2454577506045610995
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125121 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A005360.P2454577506045610995

/-! ## A005360.P6442068860725392030

`eq[char[A125121(n+1)], A000038(n)]`
-/

namespace A005360.P6442068860725392030
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125121 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A005360.P6442068860725392030

/-! ## A005360.P11907826794994369105

`eq[1, A143073(n+1)%2]+1`
-/

namespace A005360.P11907826794994369105
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A143073 (n + 1)) 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A005360.P11907826794994369105

/-! ## A005360.P11943521534652471830

`lt[1, A143069(n+1)]+1`
-/

namespace A005360.P11943521534652471830
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143069 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A005360.P11943521534652471830

/-! ## A005360.P5093033259670694327

`eq[2, 2%A143069(n+2)]+2`
-/

namespace A005360.P5093033259670694327
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod 2 (A143069 (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2

end

end A005360.P5093033259670694327

/-!
# A005361: Product of exponents of prime factorization of n.

The programs for A005361, the canonical program `A005361.P7238185687981551187` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A005361 has offset 1).

The definition of A005361 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A005361.P7238185687981551187

`A000005((n+1)/A007947(n+1))`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A005361

/-- `A000005((n+1)/A007947(n+1))` -/
def P7238185687981551187.Spec : Prop :=
  ∀ n, P7238185687981551187.a n = A005361 (n + 1)

theorem P7238185687981551187.correct : P7238185687981551187.Spec := by
  intro n
  simp only [A005361, Nat.add_sub_cancel]

end A005361

/-! ## A005361.P5765882992082850317

`A067029(n+1)*a(A028234(n+1)-1)` with `a(0)=1, a(1)=1`
-/

namespace A005361.P5765882992082850317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A067029 (n + 1) * a (A028234 (n + 1) - 1).toNat

end

end A005361.P5765882992082850317

namespace A005361

/-- `A067029(n+1)*a(A028234(n+1)-1)` -/
def P5765882992082850317.Spec : Prop :=
  ∀ n, P5765882992082850317.a n = A005361 (n + 1)

end A005361

/-! ## A005361.P4811270261471152635

`∏{e}[n+1, #]`
-/

namespace A005361.P4811270261471152635
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p

end

end A005361.P4811270261471152635

namespace A005361

/-- `∏{e}[n+1, #]` -/
def P4811270261471152635.Spec : Prop :=
  ∀ n, (P4811270261471152635.a n : ℤ) = A005361 (n + 1)

end A005361

/-! ## A005361.P12552463625991972504

`exp(∑{e}[n+1, log(#)])`
-/

namespace A005361.P12552463625991972504
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.exp (∑ p ∈ Nat.primeFactors (f1 n), Real.log (Nat.factorization (f1 n) p : ℝ))

end

end A005361.P12552463625991972504

namespace A005361

/-- `exp(∑{e}[n+1, log(#)])` -/
def P12552463625991972504.Spec : Prop :=
  ∀ n, P12552463625991972504.a n = (A005361 (n + 1) : ℝ)

end A005361

/-! ## A005361.P563187255964926559

`2^∑{e}[n+1, log2(#)]`
-/

namespace A005361.P563187255964926559
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (2 : ℝ) ^ (∑ p ∈ Nat.primeFactors (f1 n), Real.logb 2 (Nat.factorization (f1 n) p : ℝ))

end

end A005361.P563187255964926559

namespace A005361

/-- `2^∑{e}[n+1, log2(#)]` -/
def P563187255964926559.Spec : Prop :=
  ∀ n, P563187255964926559.a n = (A005361 (n + 1) : ℝ)

end A005361

/-! ## A005361.P16828178606239205355

`∏{p}[n+1, val(n+1, #)]`
-/

namespace A005361.P16828178606239205355
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), SequenceMachineLib.valuation (n + 1) p

end

end A005361.P16828178606239205355

namespace A005361

/-- `∏{p}[n+1, val(n+1, #)]` -/
def P16828178606239205355.Spec : Prop :=
  ∀ n, (P16828178606239205355.a n : ℤ) = A005361 (n + 1)

end A005361

/-! ## A005361.P10796327228753434822

`abs(∏{e}[2*n-(n-1), -#])`
-/

namespace A005361.P10796327228753434822
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) - ((n : ℤ) - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∏ p ∈ Nat.primeFactors (f1 n).natAbs, (-(Nat.factorization (f1 n).natAbs p : ℤ))|

end

end A005361.P10796327228753434822

namespace A005361

/-- `abs(∏{e}[2*n-(n-1), -#])` -/
def P10796327228753434822.Spec : Prop :=
  ∀ n, P10796327228753434822.a n = A005361 (n + 1)

end A005361

/-! ## A005361.P5978866754089312441

`sqrt(∏{e}[2*n-(n-1), #²])`
-/

namespace A005361.P5978866754089312441
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) - ((n : ℤ) - 1)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt ((∏ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p ^ 2 : ℕ) : ℝ)

end

end A005361.P5978866754089312441

namespace A005361

/-- `sqrt(∏{e}[2*n-(n-1), #²])` -/
def P5978866754089312441.Spec : Prop :=
  ∀ n, P5978866754089312441.a n = (A005361 (n + 1) : ℝ)

end A005361

/-! ## A005361.P11889404074123104908

`abs(A303915(n+1))`
-/

namespace A005361.P11889404074123104908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A303915 (n + 1)|

end

end A005361.P11889404074123104908

namespace A005361

/-- `abs(A303915(n+1))` -/
def P11889404074123104908.Spec : Prop :=
  ∀ n, P11889404074123104908.a n = A005361 (n + 1)

end A005361

/-! ## A005361.P14321673649294394368

`sqrt(A360969(n+1))`
-/

namespace A005361.P14321673649294394368
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A360969 (n + 1) : ℝ)

end

end A005361.P14321673649294394368

namespace A005361

/-- `sqrt(A360969(n+1))` -/
def P14321673649294394368.Spec : Prop :=
  ∀ n, P14321673649294394368.a n = (A005361 (n + 1) : ℝ)

end A005361

/-! ## A005361.P7641311266840701579

`A183094(n+1)+1`
-/

namespace A005361.P7641311266840701579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183094 (n + 1) + 1

end

end A005361.P7641311266840701579

namespace A005361

/-- `A183094(n+1)+1` -/
def P7641311266840701579.Spec : Prop :=
  ∀ n, P7641311266840701579.a n = A005361 (n + 1)

theorem P7641311266840701579.correct : P7641311266840701579.Spec := by
  intro n
  simp only [A005361, Nat.add_sub_cancel, A005361.P7641311266840701579.a, A005361.P7238185687981551187.a, A000005, A000005.P16091521709108585461.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A183094, A183094.P2300528291682876645.a, A032741, A032741.P3022166995030670566.f1, A032741.P3022166995030670566.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A005361

/-! ## A005361.P5097198146522622935

`sqrt(sqrt(A361132(n+1)))`
-/

namespace A005361.P5097198146522622935
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (Real.sqrt (A361132 (n + 1) : ℝ))

end

end A005361.P5097198146522622935

namespace A005361

/-- `sqrt(sqrt(A361132(n+1)))` -/
def P5097198146522622935.Spec : Prop :=
  ∀ n, P5097198146522622935.a n = (A005361 (n + 1) : ℝ)

end A005361

/-! ## A005361.P13751155343828248195

`∑{d}[n+1, A112526(#)]`
-/

namespace A005361.P13751155343828248195
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A112526 d

end

end A005361.P13751155343828248195

namespace A005361

/-- `∑{d}[n+1, A112526(#)]` -/
def P13751155343828248195.Spec : Prop :=
  ∀ n, P13751155343828248195.a n = A005361 (n + 1)

end A005361

/-! ## A005361.P17426087934716770896

`sqrt(A398463(n+1)/(n+1))`
-/

namespace A005361.P17426087934716770896
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt ((A398463 (n + 1) : ℚ) / (n + 1 : ℚ) : ℝ)

end

end A005361.P17426087934716770896

namespace A005361

/-- `sqrt(A398463(n+1)/(n+1))` -/
def P17426087934716770896.Spec : Prop :=
  ∀ n, P17426087934716770896.a n = (A005361 (n + 1) : ℝ)

end A005361

/-! ## A005361.P3630827169910679670

`A000005((n+1)/∏{p}[n+1, #])`
-/

namespace A005361.P3630827169910679670
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℚ))).toNat

end

end A005361.P3630827169910679670

namespace A005361

/-- `A000005((n+1)/∏{p}[n+1, #])` -/
def P3630827169910679670.Spec : Prop :=
  ∀ n, P3630827169910679670.a n = A005361 (n + 1)

theorem P3630827169910679670.correct : P3630827169910679670.Spec := by
  intro n
  simp only [A005361, Nat.add_sub_cancel, A005361.P3630827169910679670.f1, A005361.P3630827169910679670.a, A005361.P7238185687981551187.a, A000005, A000005.P16091521709108585461.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A032741, A032741.P3022166995030670566.f1, A032741.P3022166995030670566.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A005361

/-! ## A005361.P2816915611824803118

`A000005(A003557(n+1))`
-/

namespace A005361.P2816915611824803118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A003557 (n + 1)).toNat

end

end A005361.P2816915611824803118

namespace A005361

/-- `A000005(A003557(n+1))` -/
def P2816915611824803118.Spec : Prop :=
  ∀ n, P2816915611824803118.a n = A005361 (n + 1)

end A005361

/-! ## A005361.P11124702767462527254

`A052306(A101296(n+1))`
-/

namespace A005361.P11124702767462527254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052306 (A101296 (n + 1)).toNat

end

end A005361.P11124702767462527254

namespace A005361

/-- `A052306(A101296(n+1))` -/
def P11124702767462527254.Spec : Prop :=
  ∀ n, P11124702767462527254.a n = A005361 (n + 1)

end A005361

/-! ## A005361.P7807970389941684392

`A003963(A181819(n+1))`
-/

namespace A005361.P7807970389941684392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003963 (A181819 (n + 1)).toNat

end

end A005361.P7807970389941684392

namespace A005361

/-- `A003963(A181819(n+1))` -/
def P7807970389941684392.Spec : Prop :=
  ∀ n, P7807970389941684392.a n = A005361 (n + 1)

end A005361

/-! ## A005361.P6548781582684739067

`A000005(A292589(n+1))`
-/

namespace A005361.P6548781582684739067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A292589 (n + 1)).toNat

end

end A005361.P6548781582684739067

namespace A005361

/-- `A000005(A292589(n+1))` -/
def P6548781582684739067.Spec : Prop :=
  ∀ n, P6548781582684739067.a n = A005361 (n + 1)

end A005361

/-! ## A005361.P6863787174339980060

`A366763(A057521(n+1))`
-/

namespace A005361.P6863787174339980060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366763 (A057521 (n + 1)).toNat

end

end A005361.P6863787174339980060

namespace A005361

/-- `A366763(A057521(n+1))` -/
def P6863787174339980060.Spec : Prop :=
  ∀ n, P6863787174339980060.a n = A005361 (n + 1)

end A005361

/-!
# A005362: Hoggatt sequence with parameter d=4.

The programs for A005362, there is no canonical definition to state claims against.
-/

/-! ## A005362.P2304007205409540134

`A116925(A052905(n+2))`
-/

namespace A005362.P2304007205409540134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116925 (A052905 (n + 2)).toNat

end

end A005362.P2304007205409540134

/-! ## A005362.P3756028856019057546

`A116925(eq[4, A116949(n)])`
-/

namespace A005362.P3756028856019057546
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116949 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116925 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A005362.P3756028856019057546

/-! ## A005362.P12556321542201107969

`A116925(A055998(n+3)-2)`
-/

namespace A005362.P12556321542201107969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116925 (A055998 (n + 3) - 2).toNat

end

end A005362.P12556321542201107969

/-! ## A005362.P17401091097207650923

`A116925(A000217(n+5)-5)`
-/

namespace A005362.P17401091097207650923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116925 (A000217 (n + 5) - 5).toNat

end

end A005362.P17401091097207650923

/-! ## A005362.P4436236309871094068

`A116925(A000124(n+5)-6)`
-/

namespace A005362.P4436236309871094068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116925 (A000124 (n + 5) - 6).toNat

end

end A005362.P4436236309871094068

/-!
# A005363: Hoggatt sequence with parameter d=5.

The programs for A005363, there is no canonical definition to state claims against.
-/

/-! ## A005363.P14223751222292768818

`A116925(A055999(n+3))`
-/

namespace A005363.P14223751222292768818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116925 (A055999 (n + 3)).toNat

end

end A005363.P14223751222292768818

/-! ## A005363.P8265164473581248999

`A116925(eq[2, A116949(n)])`
-/

namespace A005363.P8265164473581248999
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116949 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116925 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A005363.P8265164473581248999

/-! ## A005363.P6369072129880339585

`A116925(A052905(n+3)-1)`
-/

namespace A005363.P6369072129880339585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116925 (A052905 (n + 3) - 1).toNat

end

end A005363.P6369072129880339585

/-! ## A005363.P15163002686099139361

`A116925(A000217(n+6)-6)`
-/

namespace A005363.P15163002686099139361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116925 (A000217 (n + 6) - 6).toNat

end

end A005363.P15163002686099139361

/-! ## A005363.P11236818861502165878

`A116925(A000124(n+6)-7)`
-/

namespace A005363.P11236818861502165878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116925 (A000124 (n + 6) - 7).toNat

end

end A005363.P11236818861502165878

/-!
# A005364: Hoggatt sequence with parameter d=6.

The programs for A005364, there is no canonical definition to state claims against.
-/

/-! ## A005364.P17619780506570992509

`A116925(eq[6, A025581(n)])`
-/

namespace A005364.P17619780506570992509
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116925 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A005364.P17619780506570992509

/-! ## A005364.P6973445983589075488

`A116925(eq[7, A193739(n)])`
-/

namespace A005364.P6973445983589075488
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193739 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116925 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A005364.P6973445983589075488

/-! ## A005364.P4824430259144710708

`A116925(A000217(n+7)-7)`
-/

namespace A005364.P4824430259144710708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116925 (A000217 (n + 7) - 7).toNat

end

end A005364.P4824430259144710708

/-! ## A005364.P14117420231497154719

`A116925(A000124(n+8)-(n+16))`
-/

namespace A005364.P14117420231497154719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116925 (A000124 (n + 8) - (n + 16 : ℤ)).toNat

end

end A005364.P14117420231497154719

/-! ## A005364.P15662029547836458949

`A116925(A005408(n+2)+A000124(n+5))`
-/

namespace A005364.P15662029547836458949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116925 (A005408 (n + 2) + A000124 (n + 5)).toNat

end

end A005364.P15662029547836458949

/-!
# A005365: Hoggatt sequence with parameter d=7.

The programs for A005365, there is no canonical definition to state claims against.
-/

/-! ## A005365.P9343185364436850868

`A116925(eq[7, A025581(n)])`
-/

namespace A005365.P9343185364436850868
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116925 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A005365.P9343185364436850868

/-! ## A005365.P5057865777558022191

`A116925(eq[8, A193739(n)])`
-/

namespace A005365.P5057865777558022191
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193739 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116925 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A005365.P5057865777558022191

/-! ## A005365.P506923166007332165

`A116925(eq[15, A099375(n)])`
-/

namespace A005365.P506923166007332165
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  15

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099375 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116925 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A005365.P506923166007332165

/-! ## A005365.P9491081897072623313

`A116925(eq[8, A004736(n+1)])`
-/

namespace A005365.P9491081897072623313
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116925 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A005365.P9491081897072623313

/-! ## A005365.P6099987947831283402

`A116925(eq[8, A134231(n+1)])`
-/

namespace A005365.P6099987947831283402
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134231 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116925 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A005365.P6099987947831283402

/-!
# A005366: Hoggatt sequence with parameter d=8.

The programs for A005366, there is no canonical definition to state claims against.
-/

/-! ## A005366.P10783950061790374851

`A116925(eq[3, A104975(n)])`
-/

namespace A005366.P10783950061790374851
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104975 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116925 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A005366.P10783950061790374851

/-! ## A005366.P2497687672604795595

`A116925(eq[8, A025581(n)])`
-/

namespace A005366.P2497687672604795595
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116925 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A005366.P2497687672604795595

/-! ## A005366.P9689007081905804567

`A116925(eq[9, A193739(n)])`
-/

namespace A005366.P9689007081905804567
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193739 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116925 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A005366.P9689007081905804567

/-! ## A005366.P5888382661564995860

`A116925(eq[16, A116949(n)])`
-/

namespace A005366.P5888382661564995860
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  16

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116949 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116925 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A005366.P5888382661564995860

/-! ## A005366.P7050576411566041444

`A116925(eq[9, A004736(n+1)])`
-/

namespace A005366.P7050576411566041444
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116925 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A005366.P7050576411566041444

/-!
# A005367: a(n) = 2*(2^n + 1)*(2^(n+1) - 1).

The programs for A005367, the canonical program `A005367.P861425202493179622` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A005367 has offset 0).

The definition of A005367 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2*(2^n+1)*(2^(n+1)-1)` (program `A005367.P861425202493179622`, by `A005367.P861425202493179622.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A005367.P8557430539218158132

`ogf((4-10x)/(1-7x+14x^2-8x^3))`
-/

namespace A005367.P8557430539218158132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [4, -10] [1, -7, 14, -8] n

end

end A005367.P8557430539218158132

namespace A005367

/-- `ogf((4-10x)/(1-7x+14x^2-8x^3))` -/
def P8557430539218158132.Spec : Prop :=
  ∀ n, P8557430539218158132.a n = A005367 n

end A005367

/-! ## A005367.P16125439993069899291

`4^(n+1)+2^(n+1)-2`
-/

namespace A005367.P16125439993069899291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (4 ^ (n + 1) + 2 ^ (n + 1) : ℤ) - 2

end

end A005367.P16125439993069899291

namespace A005367

/-- `4^(n+1)+2^(n+1)-2` -/
def P16125439993069899291.Spec : Prop :=
  ∀ n, P16125439993069899291.a n = A005367 n

end A005367

/-! ## A005367.P861425202493179622

`2*(2^n+1)*(2^(n+1)-1)`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A005367

/-- `2*(2^n+1)*(2^(n+1)-1)` -/
def P861425202493179622.Spec : Prop :=
  ∀ n, P861425202493179622.a n = A005367 n

theorem P861425202493179622.correct : P861425202493179622.Spec := by
  intro n
  simp only [A005367]

end A005367

/-! ## A005367.P8410535247916464291

`∑[ogf((4-10x)/(1-6x+8x^2))]`
-/

namespace A005367.P8410535247916464291
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [4, -10] [1, -6, 8] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A005367.P8410535247916464291

namespace A005367

/-- `∑[ogf((4-10x)/(1-6x+8x^2))]` -/
def P8410535247916464291.Spec : Prop :=
  ∀ n, P8410535247916464291.a n = A005367 n

end A005367

/-! ## A005367.P4881821801202684486

`∑[4*a(n-1)-2^n]` with `a(0)=4`
-/

namespace A005367.P4881821801202684486
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [4] fun n f1 =>
  4 * f1 (n - 1) - (2 ^ n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A005367.P4881821801202684486

namespace A005367

/-- `∑[4*a(n-1)-2^n]` -/
def P4881821801202684486.Spec : Prop :=
  ∀ n, P4881821801202684486.a n = A005367 n

end A005367

/-! ## A005367.P876727494094384770

`A056309(2*n+3)`
-/

namespace A005367.P876727494094384770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056309 (2 * n + 3)

end

end A005367.P876727494094384770

namespace A005367

/-- `A056309(2*n+3)` -/
def P876727494094384770.Spec : Prop :=
  ∀ n, P876727494094384770.a n = A005367 n

end A005367

/-! ## A005367.P7814134515821658060

`xor(A048578(n), A093069(n+1))`
-/

namespace A005367.P7814134515821658060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A048578 n) (A093069 (n + 1))

end

end A005367.P7814134515821658060

namespace A005367

/-- `xor(A048578(n), A093069(n+1))` -/
def P7814134515821658060.Spec : Prop :=
  ∀ n, P7814134515821658060.a n = A005367 n

end A005367

/-! ## A005367.P2624816330768185128

`(A281482(n+1)-3)/2`
-/

namespace A005367.P2624816330768185128
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A281482 (n + 1) - 3 : ℚ) / 2

end

end A005367.P2624816330768185128

namespace A005367

/-- `(A281482(n+1)-3)/2` -/
def P2624816330768185128.Spec : Prop :=
  ∀ n, P2624816330768185128.a n = (A005367 n : ℚ)

theorem P2624816330768185128.correct : P2624816330768185128.Spec := by
  intro n
  simp only [A005367, Nat.add_sub_cancel, A005367.P2624816330768185128.a, A005367.P861425202493179622.a, A281482, A281482.P14924405954727194800.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A005367

/-! ## A005367.P16091234870227597997

`4*A092431(n+1)/2`
-/

namespace A005367.P16091234870227597997
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (4 * A092431 (n + 1) : ℚ) / 2

end

end A005367.P16091234870227597997

namespace A005367

/-- `4*A092431(n+1)/2` -/
def P16091234870227597997.Spec : Prop :=
  ∀ n, P16091234870227597997.a n = (A005367 n : ℚ)

end A005367

/-! ## A005367.P15947568679872070320

`xor(A092440(n), A140529(n))`
-/

namespace A005367.P15947568679872070320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A092440 n) (A140529 n)

end

end A005367.P15947568679872070320

namespace A005367

/-- `xor(A092440(n), A140529(n))` -/
def P15947568679872070320.Spec : Prop :=
  ∀ n, P15947568679872070320.a n = A005367 n

end A005367

/-! ## A005367.P221511236232878610

`xor(A199116(n), A281482(n))`
-/

namespace A005367.P221511236232878610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A199116 n) (A281482 n)

end

end A005367.P221511236232878610

namespace A005367

/-- `xor(A199116(n), A281482(n))` -/
def P221511236232878610.Spec : Prop :=
  ∀ n, P221511236232878610.a n = A005367 n

end A005367

/-! ## A005367.P4651373684531057247

`xor(A002023(n), A143960(n+1))`
-/

namespace A005367.P4651373684531057247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A002023 n) (A143960 (n + 1))

end

end A005367.P4651373684531057247

namespace A005367

/-- `xor(A002023(n), A143960(n+1))` -/
def P4651373684531057247.Spec : Prop :=
  ∀ n, P4651373684531057247.a n = A005367 n

end A005367

/-! ## A005367.P13001198714679060170

`xor(A059153(n), A170940(n+1))`
-/

namespace A005367.P13001198714679060170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A059153 n) (A170940 (n + 1))

end

end A005367.P13001198714679060170

namespace A005367

/-- `xor(A059153(n), A170940(n+1))` -/
def P13001198714679060170.Spec : Prop :=
  ∀ n, P13001198714679060170.a n = A005367 n

end A005367

/-! ## A005367.P13187333640043624095

`xor(A130567(n+1), A199115(n))`
-/

namespace A005367.P13187333640043624095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A130567 (n + 1)) (A199115 n)

end

end A005367.P13187333640043624095

namespace A005367

/-- `xor(A130567(n+1), A199115(n))` -/
def P13187333640043624095.Spec : Prop :=
  ∀ n, P13187333640043624095.a n = A005367 n

end A005367

/-! ## A005367.P2063820719837484780

`A000051(n)*A002446(n+1)/A000051(n+1)`
-/

namespace A005367.P2063820719837484780
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000051 n * A002446 (n + 1) : ℚ) / (A000051 (n + 1) : ℚ)

end

end A005367.P2063820719837484780

namespace A005367

/-- `A000051(n)*A002446(n+1)/A000051(n+1)` -/
def P2063820719837484780.Spec : Prop :=
  ∀ n, P2063820719837484780.a n = (A005367 n : ℚ)

theorem P2063820719837484780.correct : P2063820719837484780.Spec := by
  intro n
  simp only [A005367, Nat.add_sub_cancel, A005367.P2063820719837484780.a, A005367.P861425202493179622.a, A000051, A000051.P14067217022188782580.a, A002446, A002446.P10853448081415230219.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A005367

/-!
# A005368: Occurrences of principal character.

The programs for A005368, there is no canonical definition to state claims against.
-/

/-! ## A005368.P1806389375640141098

`Δ[A000664(abs(1-n))]+C(2, n+2)`
-/

namespace A005368.P1806389375640141098
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000664 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + (Nat.choose 2 (n + 2) : ℤ)

end

end A005368.P1806389375640141098

/-! ## A005368.P4156959734126109618

`A000007(n)+Δ[A000664(abs(1-n))]`
-/

namespace A005368.P4156959734126109618
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000664 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n + (f1 (n + 1) - f1 n)

end

end A005368.P4156959734126109618

/-! ## A005368.P8530869799260767446

`Δ[A178334(n)+A000664(abs(1-n))]`
-/

namespace A005368.P8530869799260767446
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178334 n + A000664 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A005368.P8530869799260767446

/-! ## A005368.P1971309398676295554

`Δ[A000664(abs(1-n))-A057428(n)]`
-/

namespace A005368.P1971309398676295554
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000664 |1 - (n : ℤ)|.toNat - A057428 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A005368.P1971309398676295554

/-! ## A005368.P9535221235224849428

`Δ[A000664(abs(1-n))%A000522(n)]`
-/

namespace A005368.P9535221235224849428
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000664 |1 - (n : ℤ)|.toNat) (A000522 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A005368.P9535221235224849428

/-!
# A005369: a(n) = 1 if n is of the form m(m+1), else 0.

The programs for A005369, the canonical program `A005369.P10796159359873341658` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A005369 has offset 0).

The definition of A005369 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A005369.P10796159359873341658

`floor(sqrt(n+1)+1/2)-floor(sqrt(n)+1/2)`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A005369

/-- `floor(sqrt(n+1)+1/2)-floor(sqrt(n)+1/2)` -/
def P10796159359873341658.Spec : Prop :=
  ∀ n, P10796159359873341658.a n = A005369 n

theorem P10796159359873341658.correct : P10796159359873341658.Spec := by
  intro n
  simp only [A005369]

end A005369

/-! ## A005369.P17562881553278364754

`A010052(1+4*n)`
-/

namespace A005369.P17562881553278364754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010052 (1 + 4 * n)

end

end A005369.P17562881553278364754

namespace A005369

/-- `A010052(1+4*n)` -/
def P17562881553278364754.Spec : Prop :=
  ∀ n, P17562881553278364754.a n = A005369 n

end A005369

/-! ## A005369.P15451360596391195559

`char[2*C(n, 2)]`
-/

namespace A005369.P15451360596391195559
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * Nat.choose n 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A005369.P15451360596391195559

namespace A005369

/-- `char[2*C(n, 2)]` -/
def P15451360596391195559.Spec : Prop :=
  ∀ n, (P15451360596391195559.a n : ℤ) = A005369 n

end A005369

/-! ## A005369.P11539653665281702024

`char[lcm(n, n+1)]`
-/

namespace A005369.P11539653665281702024
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm n (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A005369.P11539653665281702024

namespace A005369

/-- `char[lcm(n, n+1)]` -/
def P11539653665281702024.Spec : Prop :=
  ∀ n, (P11539653665281702024.a n : ℤ) = A005369 n

end A005369

/-! ## A005369.P16696983622053302191

`char[∑[lcm(2, 2*n)]]`
-/

namespace A005369.P16696983622053302191
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm 2 (2 * n)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A005369.P16696983622053302191

namespace A005369

/-- `char[∑[lcm(2, 2*n)]]` -/
def P16696983622053302191.Spec : Prop :=
  ∀ n, (P16696983622053302191.a n : ℤ) = A005369 n

end A005369

/-! ## A005369.P711450162632807593

`and(1, char[∑[2*n]])`
-/

namespace A005369.P711450162632807593
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 1 (if ∃ j, f1 j = n then 1 else 0)

end

end A005369.P711450162632807593

namespace A005369

/-- `and(1, char[∑[2*n]])` -/
def P711450162632807593.Spec : Prop :=
  ∀ n, (P711450162632807593.a n : ℤ) = A005369 n

end A005369

/-! ## A005369.P2481711960911398678

`char[∑[n%or(1, n)]]`
-/

namespace A005369.P2481711960911398678
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n % Nat.lor 1 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A005369.P2481711960911398678

namespace A005369

/-- `char[∑[n%or(1, n)]]` -/
def P2481711960911398678.Spec : Prop :=
  ∀ n, (P2481711960911398678.a n : ℤ) = A005369 n

end A005369

/-! ## A005369.P5832029789181390852

`ceil(sin(char[∑[2*n]]))`
-/

namespace A005369.P5832029789181390852
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sin ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℝ)⌉

end

end A005369.P5832029789181390852

namespace A005369

/-- `ceil(sin(char[∑[2*n]]))` -/
def P5832029789181390852.Spec : Prop :=
  ∀ n, P5832029789181390852.a n = A005369 n

end A005369

/-! ## A005369.P4882794645203313550

`floor(tan(char[∑[2*n]]))`
-/

namespace A005369.P4882794645203313550
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.tan ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℝ)⌋

end

end A005369.P4882794645203313550

namespace A005369

/-- `floor(tan(char[∑[2*n]]))` -/
def P4882794645203313550.Spec : Prop :=
  ∀ n, P4882794645203313550.a n = A005369 n

end A005369

/-! ## A005369.P7528591855893771912

`round(sin(char[∑[2*n]]))`
-/

namespace A005369.P7528591855893771912
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sin ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℝ))

end

end A005369.P7528591855893771912

namespace A005369

/-- `round(sin(char[∑[2*n]]))` -/
def P7528591855893771912.Spec : Prop :=
  ∀ n, P7528591855893771912.a n = A005369 n

end A005369

/-! ## A005369.P1828083109980742145

`floor(asin(char[∑[2*n]]))`
-/

namespace A005369.P1828083109980742145
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.arcsin ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℝ)⌋

end

end A005369.P1828083109980742145

namespace A005369

/-- `floor(asin(char[∑[2*n]]))` -/
def P1828083109980742145.Spec : Prop :=
  ∀ n, P1828083109980742145.a n = A005369 n

end A005369

/-! ## A005369.P7130972952887163601

`ceil(atan(char[∑[2*n]]))`
-/

namespace A005369.P7130972952887163601
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.arctan ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℝ)⌉

end

end A005369.P7130972952887163601

namespace A005369

/-- `ceil(atan(char[∑[2*n]]))` -/
def P7130972952887163601.Spec : Prop :=
  ∀ n, P7130972952887163601.a n = A005369 n

end A005369

/-! ## A005369.P210731635267648263

`round(atan(char[∑[2*n]]))`
-/

namespace A005369.P210731635267648263
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.arctan ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℝ))

end

end A005369.P210731635267648263

namespace A005369

/-- `round(atan(char[∑[2*n]]))` -/
def P210731635267648263.Spec : Prop :=
  ∀ n, P210731635267648263.a n = A005369 n

end A005369

/-! ## A005369.P11972424274130629136

`floor(sinh(char[∑[2*n]]))`
-/

namespace A005369.P11972424274130629136
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.sinh ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℝ)⌋

end

end A005369.P11972424274130629136

namespace A005369

/-- `floor(sinh(char[∑[2*n]]))` -/
def P11972424274130629136.Spec : Prop :=
  ∀ n, P11972424274130629136.a n = A005369 n

end A005369

/-! ## A005369.P14596165857411778180

`round(sinh(char[∑[2*n]]))`
-/

namespace A005369.P14596165857411778180
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sinh ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℝ))

end

end A005369.P14596165857411778180

namespace A005369

/-- `round(sinh(char[∑[2*n]]))` -/
def P14596165857411778180.Spec : Prop :=
  ∀ n, P14596165857411778180.a n = A005369 n

end A005369

/-! ## A005369.P11278831373665558127

`ceil(tanh(char[∑[2*n]]))`
-/

namespace A005369.P11278831373665558127
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.tanh ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℝ)⌉

end

end A005369.P11278831373665558127

namespace A005369

/-- `ceil(tanh(char[∑[2*n]]))` -/
def P11278831373665558127.Spec : Prop :=
  ∀ n, P11278831373665558127.a n = A005369 n

end A005369

/-! ## A005369.P3147598411939320018

`round(tanh(char[∑[2*n]]))`
-/

namespace A005369.P3147598411939320018
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.tanh ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℝ))

end

end A005369.P3147598411939320018

namespace A005369

/-- `round(tanh(char[∑[2*n]]))` -/
def P3147598411939320018.Spec : Prop :=
  ∀ n, P3147598411939320018.a n = A005369 n

end A005369

/-! ## A005369.P11407568612704943851

`char[col(n)+col(n)²]`
-/

namespace A005369.P11407568612704943851
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.triCol n + SequenceMachineLib.triCol n ^ 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A005369.P11407568612704943851

namespace A005369

/-- `char[col(n)+col(n)²]` -/
def P11407568612704943851.Spec : Prop :=
  ∀ n, (P11407568612704943851.a n : ℤ) = A005369 n

end A005369

/-! ## A005369.P4800036749162370371

`char[col(n)²-col(n)]`
-/

namespace A005369.P4800036749162370371
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.triCol n ^ 2 : ℤ) - (SequenceMachineLib.triCol n : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A005369.P4800036749162370371

namespace A005369

/-- `char[col(n)²-col(n)]` -/
def P4800036749162370371.Spec : Prop :=
  ∀ n, (P4800036749162370371.a n : ℤ) = A005369 n

end A005369

/-!
# A005370: a(n) = Fibonacci(Fibonacci(n+1) + 1).

The programs for A005370, the canonical program `A005370.P727247804695828524` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A005370 has offset 0).

The definition of A005370 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000045(A000045(n+1)+1)` (program `A005370.P727247804695828524`, by `A005370.P727247804695828524.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A005370.P727247804695828524

`A000045(A000045(n+1)+1)`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A005370

/-- `A000045(A000045(n+1)+1)` -/
def P727247804695828524.Spec : Prop :=
  ∀ n, P727247804695828524.a n = A005370 n

theorem P727247804695828524.correct : P727247804695828524.Spec := by
  intro n
  simp only [A005370]

end A005370

/-! ## A005370.P13839921134215732378

`A053602(A001595(n))`
-/

namespace A005370.P13839921134215732378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053602 (A001595 n).toNat

end

end A005370.P13839921134215732378

namespace A005370

/-- `A053602(A001595(n))` -/
def P13839921134215732378.Spec : Prop :=
  ∀ n, P13839921134215732378.a n = A005370 n

end A005370

/-! ## A005370.P12149633743231416082

`A097575(A131328(n))`
-/

namespace A005370.P12149633743231416082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097575 (A131328 n).toNat

end

end A005370.P12149633743231416082

namespace A005370

/-- `A097575(A131328(n))` -/
def P12149633743231416082.Spec : Prop :=
  ∀ n, P12149633743231416082.a n = A005370 n

end A005370

/-! ## A005370.P7151074318625140330

`A053602(A288603(n))`
-/

namespace A005370.P7151074318625140330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053602 (A288603 n).toNat

end

end A005370.P7151074318625140330

namespace A005370

/-- `A053602(A288603(n))` -/
def P7151074318625140330.Spec : Prop :=
  ∀ n, P7151074318625140330.a n = A005370 n

end A005370

/-! ## A005370.P4565238768812076083

`A321664(A111314(n))`
-/

namespace A005370.P4565238768812076083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321664 (A111314 n).toNat

end

end A005370.P4565238768812076083

namespace A005370

/-- `A321664(A111314(n))` -/
def P4565238768812076083.Spec : Prop :=
  ∀ n, P4565238768812076083.a n = A005370 n

end A005370

/-!
# A005371: a(n) = L(L(n)), where L(n) are Lucas numbers A000032.

The programs for A005371, the canonical program `A005371.P8747104698048379178` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A005371 has offset 0).

The definition of A005371 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A005371.P8747104698048379178

`A000032(A000032(n))`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A005371

/-- `A000032(A000032(n))` -/
def P8747104698048379178.Spec : Prop :=
  ∀ n, P8747104698048379178.a n = A005371 n

theorem P8747104698048379178.correct : P8747104698048379178.Spec := by
  intro n
  simp only [A005371]

end A005371

/-! ## A005371.P15957377263913874347

`A329723(A000211(n))`
-/

namespace A005371.P15957377263913874347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329723 (A000211 n).toNat

end

end A005371.P15957377263913874347

namespace A005371

/-- `A329723(A000211(n))` -/
def P15957377263913874347.Spec : Prop :=
  ∀ n, P15957377263913874347.a n = A005371 n

end A005371

/-! ## A005371.P6981094278011606956

`A090244(A380821(n))`
-/

namespace A005371.P6981094278011606956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090244 (A380821 n).toNat

end

end A005371.P6981094278011606956

namespace A005371

/-- `A090244(A380821(n))` -/
def P6981094278011606956.Spec : Prop :=
  ∀ n, P6981094278011606956.a n = A005371 n

end A005371

/-! ## A005371.P4113727225017114064

`A000204(Δ[A001610(n)])`
-/

namespace A005371.P4113727225017114064
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001610 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000204 (f1 (n + 1) - f1 n).toNat

end

end A005371.P4113727225017114064

namespace A005371

/-- `A000204(Δ[A001610(n)])` -/
def P4113727225017114064.Spec : Prop :=
  ∀ n, P4113727225017114064.a n = A005371 n

end A005371

/-! ## A005371.P890601613545511872

`A000204(A001612(n)-1)`
-/

namespace A005371.P890601613545511872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000204 (A001612 n - 1).toNat

end

end A005371.P890601613545511872

namespace A005371

/-- `A000204(A001612(n)-1)` -/
def P890601613545511872.Spec : Prop :=
  ∀ n, P890601613545511872.a n = A005371 n

end A005371

/-!
# A005372: a(n) = L(L(n+1)+1), where L(n) are Lucas numbers A000032.

The programs for A005372, the canonical program `A005372.P9673844454253185367` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A005372 has offset 0).

The definition of A005372 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A005372.P9673844454253185367

`A000032(1+A000032(n+1))`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A005372

/-- `A000032(1+A000032(n+1))` -/
def P9673844454253185367.Spec : Prop :=
  ∀ n, P9673844454253185367.a n = A005372 n

theorem P9673844454253185367.correct : P9673844454253185367.Spec := by
  intro n
  simp only [A005372]

end A005372

/-! ## A005372.P14173810783071739234

`A090244(A022112(n))`
-/

namespace A005372.P14173810783071739234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090244 (A022112 n).toNat

end

end A005372.P14173810783071739234

namespace A005372

/-- `A090244(A022112(n))` -/
def P14173810783071739234.Spec : Prop :=
  ∀ n, P14173810783071739234.a n = A005372 n

end A005372

/-! ## A005372.P15717088631975923469

`A082587(A168674(n))`
-/

namespace A005372.P15717088631975923469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082587 (A168674 n).toNat

end

end A005372.P15717088631975923469

namespace A005372

/-- `A082587(A168674(n))` -/
def P15717088631975923469.Spec : Prop :=
  ∀ n, P15717088631975923469.a n = A005372 n

end A005372

/-! ## A005372.P12612822212862594710

`A000032(A001612(n+1))`
-/

namespace A005372.P12612822212862594710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 (A001612 (n + 1)).toNat

end

end A005372.P12612822212862594710

namespace A005372

/-- `A000032(A001612(n+1))` -/
def P12612822212862594710.Spec : Prop :=
  ∀ n, P12612822212862594710.a n = A005372 n

end A005372

/-! ## A005372.P15926168651705328687

`A254729(A000211(n+1))`
-/

namespace A005372.P15926168651705328687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254729 (A000211 (n + 1)).toNat

end

end A005372.P15926168651705328687

namespace A005372

/-- `A254729(A000211(n+1))` -/
def P15926168651705328687.Spec : Prop :=
  ∀ n, P15926168651705328687.a n = A005372 n

end A005372

/-!
# A005373: A class of rooted trees with n nodes.

The programs for A005373, there is no canonical definition to state claims against.
-/

/-! ## A005373.P6615262192110024633

`A222251(∏[abs(1-4*n)])`
-/

namespace A005373.P6615262192110024633
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - (4 * n : ℤ)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222251 (∏ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A005373.P6615262192110024633

/-!
# A005374: Hofstadter H-sequence: a(n) = n - a(a(a(n-1))).

The programs for A005374, the canonical program `A005374.P13862197180797613727` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A005374 has offset 0).

The definition of A005374 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n-a(a(a(n-1)))` (program `A005374.P13862197180797613727`, by `A005374.P13862197180797613727.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A005374.P13862197180797613727

`n-a(a(a(n-1)))` with `a(0)=0`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A005374

/-- `n-a(a(a(n-1)))` -/
def P13862197180797613727.Spec : Prop :=
  ∀ n, P13862197180797613727.a n = A005374 n

theorem P13862197180797613727.correct : P13862197180797613727.Spec := by
  intro n
  simp only [A005374]

end A005374

/-! ## A005374.P7952167818183058782

`A020942(n+1)-2*A064105(n+1)+A064106(n+1)`
-/

namespace A005374.P7952167818183058782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020942 (n + 1) - 2 * A064105 (n + 1) + A064106 (n + 1)

end

end A005374.P7952167818183058782

namespace A005374

/-- `A020942(n+1)-2*A064105(n+1)+A064106(n+1)` -/
def P7952167818183058782.Spec : Prop :=
  ∀ n, P7952167818183058782.a n = A005374 n

end A005374

/-! ## A005374.P8736051971748397488

`∑[char[∑[A202340(n)]]]`
-/

namespace A005374.P8736051971748397488
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202340 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A005374.P8736051971748397488

namespace A005374

/-- `∑[char[∑[A202340(n)]]]` -/
def P8736051971748397488.Spec : Prop :=
  ∀ n, (P8736051971748397488.a n : ℤ) = A005374 n

end A005374

/-! ## A005374.P9773282703357359714

`n-A372759(n+1)`
-/

namespace A005374.P9773282703357359714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A372759 (n + 1)

end

end A005374.P9773282703357359714

namespace A005374

/-- `n-A372759(n+1)` -/
def P9773282703357359714.Spec : Prop :=
  ∀ n, P9773282703357359714.a n = A005374 n

theorem P9773282703357359714.correct : P9773282703357359714.Spec := by
  intro n
  simp only [A005374, Nat.add_sub_cancel, A005374.P9773282703357359714.a, A005374.P13862197180797613727.a, A372759, A372759.P7891414057766909784.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A005374

/-! ## A005374.P16637414143469918834

`∑[char[A136495(n+1)]]`
-/

namespace A005374.P16637414143469918834
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136495 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A005374.P16637414143469918834

namespace A005374

/-- `∑[char[A136495(n+1)]]` -/
def P16637414143469918834.Spec : Prop :=
  ∀ n, (P16637414143469918834.a n : ℤ) = A005374 n

end A005374

/-! ## A005374.P7346125757359539827

`comp[comp[A020942(n+1)]+1+n]-n`
-/

namespace A005374.P7346125757359539827
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020942 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n + 1 + n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)

end

end A005374.P7346125757359539827

namespace A005374

/-- `comp[comp[A020942(n+1)]+1+n]-n` -/
def P7346125757359539827.Spec : Prop :=
  ∀ n, P7346125757359539827.a n = A005374 n

end A005374

/-! ## A005374.P2242949437704806637

`A202342(n+1)-∑[A202340(n)]`
-/

namespace A005374.P2242949437704806637
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202340 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202342 (n + 1) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A005374.P2242949437704806637

namespace A005374

/-- `A202342(n+1)-∑[A202340(n)]` -/
def P2242949437704806637.Spec : Prop :=
  ∀ n, P2242949437704806637.a n = A005374 n

end A005374

/-! ## A005374.P5341481333635034365

`A202342(n+1)-A136495(n+1)`
-/

namespace A005374.P5341481333635034365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202342 (n + 1) - A136495 (n + 1)

end

end A005374.P5341481333635034365

namespace A005374

/-- `A202342(n+1)-A136495(n+1)` -/
def P5341481333635034365.Spec : Prop :=
  ∀ n, P5341481333635034365.a n = A005374 n

end A005374

/-! ## A005374.P15721248386967127988

`A372749(n+1)%A064105(n+1)`
-/

namespace A005374.P15721248386967127988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A372749 (n + 1)) (A064105 (n + 1))

end

end A005374.P15721248386967127988

namespace A005374

/-- `A372749(n+1)%A064105(n+1)` -/
def P15721248386967127988.Spec : Prop :=
  ∀ n, P15721248386967127988.a n = A005374 n

end A005374

/-! ## A005374.P11522448829681703713

`A372750(n+1)%A064105(n+1)`
-/

namespace A005374.P11522448829681703713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A372750 (n + 1)) (A064105 (n + 1))

end

end A005374.P11522448829681703713

namespace A005374

/-- `A372750(n+1)%A064105(n+1)` -/
def P11522448829681703713.Spec : Prop :=
  ∀ n, P11522448829681703713.a n = A005374 n

end A005374

/-! ## A005374.P11513606156350679073

`A020942(n+1)-(A136495(n+1)+n)`
-/

namespace A005374.P11513606156350679073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020942 (n + 1) - (A136495 (n + 1) + (n : ℤ))

end

end A005374.P11513606156350679073

namespace A005374

/-- `A020942(n+1)-(A136495(n+1)+n)` -/
def P11513606156350679073.Spec : Prop :=
  ∀ n, P11513606156350679073.a n = A005374 n

theorem P11513606156350679073.correct : P11513606156350679073.Spec := by
  intro n
  simp only [A005374, Nat.add_sub_cancel, A005374.P11513606156350679073.a, A005374.P13862197180797613727.a, A020942, A020942.P5836413996573018086.a, A136495, A136495.P596664169401550958.a, A136496, A136496.P805941965056846939.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A005374

/-! ## A005374.P8281667693088238106

`A202342(n+1)-(A372758(n+1)+n)`
-/

namespace A005374.P8281667693088238106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202342 (n + 1) - (A372758 (n + 1) + (n : ℤ))

end

end A005374.P8281667693088238106

namespace A005374

/-- `A202342(n+1)-(A372758(n+1)+n)` -/
def P8281667693088238106.Spec : Prop :=
  ∀ n, P8281667693088238106.a n = A005374 n

end A005374

/-! ## A005374.P3636381908348590653

`A064106(n+1)-(A136495(n+1)+A064105(n+1))`
-/

namespace A005374.P3636381908348590653
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064106 (n + 1) - (A136495 (n + 1) + A064105 (n + 1))

end

end A005374.P3636381908348590653

namespace A005374

/-- `A064106(n+1)-(A136495(n+1)+A064105(n+1))` -/
def P3636381908348590653.Spec : Prop :=
  ∀ n, P3636381908348590653.a n = A005374 n

end A005374

/-! ## A005374.P2038660584648760843

`A020942(n+1)+A202342(n+1)-A064105(n+1)`
-/

namespace A005374.P2038660584648760843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020942 (n + 1) + (A202342 (n + 1) - A064105 (n + 1))

end

end A005374.P2038660584648760843

namespace A005374

/-- `A020942(n+1)+A202342(n+1)-A064105(n+1)` -/
def P2038660584648760843.Spec : Prop :=
  ∀ n, P2038660584648760843.a n = A005374 n

end A005374

/-! ## A005374.P12972295405056629269

`A136495(A136495(n+1))-∑[A202340(n)]`
-/

namespace A005374.P12972295405056629269
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202340 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136495 (A136495 (n + 1)).toNat - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A005374.P12972295405056629269

namespace A005374

/-- `A136495(A136495(n+1))-∑[A202340(n)]` -/
def P12972295405056629269.Spec : Prop :=
  ∀ n, P12972295405056629269.a n = A005374 n

end A005374

/-! ## A005374.P3250194971439004387

`A372759(A202342(n+1))`
-/

namespace A005374.P3250194971439004387
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372759 (A202342 (n + 1)).toNat

end

end A005374.P3250194971439004387

namespace A005374

/-- `A372759(A202342(n+1))` -/
def P3250194971439004387.Spec : Prop :=
  ∀ n, P3250194971439004387.a n = A005374 n

end A005374

/-! ## A005374.P7012386563989426250

`A165565(3*n)/3`
-/

namespace A005374.P7012386563989426250
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A165565 (3 * n) : ℚ) / 3

end

end A005374.P7012386563989426250

namespace A005374

/-- `A165565(3*n)/3` -/
def P7012386563989426250.Spec : Prop :=
  ∀ n, P7012386563989426250.a n = (A005374 n : ℚ)

end A005374

/-! ## A005374.P17271750562157333235

`eq[2, p?[A105083(n)]]-n`
-/

namespace A005374.P17271750562157333235
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105083 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (SequenceMachineLib.nth (fun j => (f3 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n : ℤ) - (n : ℤ)

end

end A005374.P17271750562157333235

namespace A005374

/-- `eq[2, p?[A105083(n)]]-n` -/
def P17271750562157333235.Spec : Prop :=
  ∀ n, P17271750562157333235.a n = A005374 n

end A005374

/-! ## A005374.P12163101861929035773

`A372759(A372758(A064105(n+1)))`
-/

namespace A005374.P12163101861929035773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372759 (A372758 (A064105 (n + 1)).toNat).toNat

end

end A005374.P12163101861929035773

namespace A005374

/-- `A372759(A372758(A064105(n+1)))` -/
def P12163101861929035773.Spec : Prop :=
  ∀ n, P12163101861929035773.a n = A005374 n

end A005374

/-! ## A005374.P274618057198493154

`A372759(A372758(A381841(n+1)))`
-/

namespace A005374.P274618057198493154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372759 (A372758 (A381841 (n + 1)).toNat).toNat

end

end A005374.P274618057198493154

namespace A005374

/-- `A372759(A372758(A381841(n+1)))` -/
def P274618057198493154.Spec : Prop :=
  ∀ n, P274618057198493154.a n = A005374 n

end A005374

/-!
# A005375: a(0) = 0; a(n) = n - a(a(a(a(n-1)))) for n > 0.

The programs for A005375, the canonical program `A005375.P2458055361058986470` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A005375 has offset 0).

The definition of A005375 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n-a(a(a(a(n-1))))` (program `A005375.P2458055361058986470`, by `A005375.P2458055361058986470.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A005375.P2458055361058986470

`n-a(a(a(a(n-1))))` with `a(0)=0`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A005375

/-- `n-a(a(a(a(n-1))))` -/
def P2458055361058986470.Spec : Prop :=
  ∀ n, P2458055361058986470.a n = A005375 n

theorem P2458055361058986470.correct : P2458055361058986470.Spec := by
  intro n
  simp only [A005375]

end A005375

/-! ## A005375.P15121857737183544121

`∑[char[A194081(n+1)]]`
-/

namespace A005375.P15121857737183544121
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194081 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A005375.P15121857737183544121

namespace A005375

/-- `∑[char[A194081(n+1)]]` -/
def P15121857737183544121.Spec : Prop :=
  ∀ n, (P15121857737183544121.a n : ℤ) = A005375 n

end A005375

/-! ## A005375.P16220270705915101750

`∑[char[A194081(n)]]-1`
-/

namespace A005375.P16220270705915101750
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194081 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 1

end

end A005375.P16220270705915101750

namespace A005375

/-- `∑[char[A194081(n)]]-1` -/
def P16220270705915101750.Spec : Prop :=
  ∀ n, P16220270705915101750.a n = A005375 n

end A005375

/-! ## A005375.P18340807405078730432

`A023443(∑[char[A194081(n)]])`
-/

namespace A005375.P18340807405078730432
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194081 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A005375.P18340807405078730432

namespace A005375

/-- `A023443(∑[char[A194081(n)]])` -/
def P18340807405078730432.Spec : Prop :=
  ∀ n, P18340807405078730432.a n = A005375 n

end A005375

/-! ## A005375.P10851315732966841384

`∑[A057427(n*char[A194081(n)])]`
-/

namespace A005375.P10851315732966841384
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194081 n

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (n * (if ∃ j, f2 j = (n : ℤ) then 1 else 0))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A005375.P10851315732966841384

namespace A005375

/-- `∑[A057427(n*char[A194081(n)])]` -/
def P10851315732966841384.Spec : Prop :=
  ∀ n, P10851315732966841384.a n = A005375 n

end A005375

/-! ## A005375.P3228125063860336391

`A372397(n+1)-A194081(A194081(n+1))`
-/

namespace A005375.P3228125063860336391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372397 (n + 1) - A194081 (A194081 (n + 1)).toNat

end

end A005375.P3228125063860336391

namespace A005375

/-- `A372397(n+1)-A194081(A194081(n+1))` -/
def P3228125063860336391.Spec : Prop :=
  ∀ n, P3228125063860336391.a n = A005375 n

end A005375

/-!
# A005376: a(n) = n - a(a(a(a(a(n-1))))).

The programs for A005376, the canonical program `A005376.P9897750928874409261` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A005376 has offset 0).

The definition of A005376 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n-a(a(a(a(a(n-1)))))` (program `A005376.P9897750928874409261`, by `A005376.P9897750928874409261.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A005376.P9897750928874409261

`n-a(a(a(a(a(n-1)))))` with `a(0)=0`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A005376

/-- `n-a(a(a(a(a(n-1)))))` -/
def P9897750928874409261.Spec : Prop :=
  ∀ n, P9897750928874409261.a n = A005376 n

theorem P9897750928874409261.correct : P9897750928874409261.Spec := by
  intro n
  simp only [A005376]

end A005376

/-! ## A005376.P14429960726194353167

`A100721(n+1)+A057428(A133732(n+1))`
-/

namespace A005376.P14429960726194353167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100721 (n + 1) + A057428 (A133732 (n + 1)).toNat

end

end A005376.P14429960726194353167

namespace A005376

/-- `A100721(n+1)+A057428(A133732(n+1))` -/
def P14429960726194353167.Spec : Prop :=
  ∀ n, P14429960726194353167.a n = A005376 n

end A005376

/-! ## A005376.P2635370324155879366

`A100721(n+1)-A010051(A001605(n+1))`
-/

namespace A005376.P2635370324155879366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100721 (n + 1) - A010051 (A001605 (n + 1)).toNat

end

end A005376.P2635370324155879366

namespace A005376

/-- `A100721(n+1)-A010051(A001605(n+1))` -/
def P2635370324155879366.Spec : Prop :=
  ∀ n, P2635370324155879366.a n = A005376 n

end A005376

/-! ## A005376.P15102947682206055119

`A100721(n+1)-A368281(A087830(n))`
-/

namespace A005376.P15102947682206055119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100721 (n + 1) - A368281 (A087830 n).toNat

end

end A005376.P15102947682206055119

namespace A005376

/-- `A100721(n+1)-A368281(A087830(n))` -/
def P15102947682206055119.Spec : Prop :=
  ∀ n, P15102947682206055119.a n = A005376 n

end A005376

/-! ## A005376.P3969964408884591245

`A100721(n+1)-A001221(A112032(n))`
-/

namespace A005376.P3969964408884591245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100721 (n + 1) - A001221 (A112032 n).toNat

end

end A005376.P3969964408884591245

namespace A005376

/-- `A100721(n+1)-A001221(A112032(n))` -/
def P3969964408884591245.Spec : Prop :=
  ∀ n, P3969964408884591245.a n = A005376 n

end A005376

/-!
# A005377: Number of low discrepancy sequences in base 4.

The programs for A005377, the canonical program `A005377.P17816589392890582585` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A005377 has offset 1).

The definition of A005377 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A005377.P17816589392890582585

`∑[∑[char[A114946(n+1)]]]`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A005377

/-- `∑[∑[char[A114946(n+1)]]]` -/
def P17816589392890582585.Spec : Prop :=
  ∀ n, (P17816589392890582585.a n : ℤ) = A005377 (n + 1)

theorem P17816589392890582585.correct : P17816589392890582585.Spec := by
  intro n
  simp only [A005377, Nat.add_sub_cancel]

end A005377

/-! ## A005377.P2514758271423151835

`∑[floor(log2(A210584(n+1))/π)]`
-/

namespace A005377.P2514758271423151835
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.logb 2 (A210584 (n + 1) : ℝ) / Real.pi⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A005377.P2514758271423151835

namespace A005377

/-- `∑[floor(log2(A210584(n+1))/π)]` -/
def P2514758271423151835.Spec : Prop :=
  ∀ n, P2514758271423151835.a n = A005377 (n + 1)

end A005377

/-! ## A005377.P12727912474918407670

`∑[A004218(A065033(floor(n/2)²))]`
-/

namespace A005377.P12727912474918407670
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004218 (A065033 (⌊(n : ℚ) / 2⌋ ^ 2).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A005377.P12727912474918407670

namespace A005377

/-- `∑[A004218(A065033(floor(n/2)²))]` -/
def P12727912474918407670.Spec : Prop :=
  ∀ n, P12727912474918407670.a n = A005377 (n + 1)

end A005377

/-! ## A005377.P473480029506457147

`∑[A004216(A210584(n+1))]`
-/

namespace A005377.P473480029506457147
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004216 (A210584 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A005377.P473480029506457147

namespace A005377

/-- `∑[A004216(A210584(n+1))]` -/
def P473480029506457147.Spec : Prop :=
  ∀ n, P473480029506457147.a n = A005377 (n + 1)

end A005377

/-! ## A005377.P15506230140659774507

`∑[∑[A133101(A177769(n+1))]]`
-/

namespace A005377.P15506230140659774507
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133101 (A177769 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A005377.P15506230140659774507

namespace A005377

/-- `∑[∑[A133101(A177769(n+1))]]` -/
def P15506230140659774507.Spec : Prop :=
  ∀ n, P15506230140659774507.a n = A005377 (n + 1)

end A005377

/-! ## A005377.P10903722375903735424

`∑[A004216(A026810(n)+(1-n)²+n)]`
-/

namespace A005377.P10903722375903735424
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004216 (A026810 n + ((1 - (n : ℤ)) ^ 2 + (n : ℤ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A005377.P10903722375903735424

namespace A005377

/-- `∑[A004216(A026810(n)+(1-n)²+n)]` -/
def P10903722375903735424.Spec : Prop :=
  ∀ n, P10903722375903735424.a n = A005377 (n + 1)

end A005377

/-! ## A005377.P14556959222688478092

`∑[A004216(A032913(n+1))]`
-/

namespace A005377.P14556959222688478092
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004216 (A032913 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A005377.P14556959222688478092

namespace A005377

/-- `∑[A004216(A032913(n+1))]` -/
def P14556959222688478092.Spec : Prop :=
  ∀ n, P14556959222688478092.a n = A005377 (n + 1)

end A005377

/-! ## A005377.P9900000526428032747

`∑[A112758(A132090(n+1)!)]`
-/

namespace A005377.P9900000526428032747
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112758 (Nat.factorial (A132090 (n + 1)).toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A005377.P9900000526428032747

namespace A005377

/-- `∑[A112758(A132090(n+1)!)]` -/
def P9900000526428032747.Spec : Prop :=
  ∀ n, P9900000526428032747.a n = A005377 (n + 1)

end A005377

/-! ## A005377.P15845710753635979383

`∑[A178146(A132090(n+1)!)]`
-/

namespace A005377.P15845710753635979383
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178146 (Nat.factorial (A132090 (n + 1)).toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A005377.P15845710753635979383

namespace A005377

/-- `∑[A178146(A132090(n+1)!)]` -/
def P15845710753635979383.Spec : Prop :=
  ∀ n, P15845710753635979383.a n = A005377 (n + 1)

end A005377

/-! ## A005377.P8628139678072753241

`∑[A048766(A172409(n+1))]-n`
-/

namespace A005377.P8628139678072753241
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048766 (A172409 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (n : ℤ)

end

end A005377.P8628139678072753241

namespace A005377

/-- `∑[A048766(A172409(n+1))]-n` -/
def P8628139678072753241.Spec : Prop :=
  ∀ n, P8628139678072753241.a n = A005377 (n + 1)

end A005377

/-!
# A005378: The female of a pair of recurrences.

The programs for A005378, the canonical program `A005378.P1513263180269503184` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A005378 has offset 0).

The definition of A005378 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A005378.P16945504782541166542

`floor(1/tanh(ϕ/(n+1)))`
-/

namespace A005378.P16945504782541166542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊1 / Real.tanh (Real.goldenRatio / (n + 1 : ℝ))⌋

end

end A005378.P16945504782541166542

namespace A005378

/-- `floor(1/tanh(ϕ/(n+1)))` -/
def P16945504782541166542.Spec : Prop :=
  ∀ n, P16945504782541166542.a n = A005378 n

end A005378

/-! ## A005378.P16362040428979950807

`floor((acot(n)+n+1)/ϕ)`
-/

namespace A005378.P16362040428979950807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(SequenceMachineLib.acot (n : ℝ) + (n + 1 : ℝ)) / Real.goldenRatio⌋

end

end A005378.P16362040428979950807

namespace A005378

/-- `floor((acot(n)+n+1)/ϕ)` -/
def P16362040428979950807.Spec : Prop :=
  ∀ n, P16362040428979950807.a n = A005378 n

end A005378

/-! ## A005378.P12534624556949891132

`floor(sqrt(((n+1)/ϕ)²+1))`
-/

namespace A005378.P12534624556949891132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.sqrt (((n + 1 : ℝ) / Real.goldenRatio) ^ 2 + 1)⌋

end

end A005378.P12534624556949891132

namespace A005378

/-- `floor(sqrt(((n+1)/ϕ)²+1))` -/
def P12534624556949891132.Spec : Prop :=
  ∀ n, P12534624556949891132.a n = A005378 n

end A005378

/-! ## A005378.P10214499543466763585

`∑[log2(Δ[ceil(ϕ/acot(n))])]+1`
-/

namespace A005378.P10214499543466763585
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.goldenRatio / SequenceMachineLib.acot (n : ℝ)⌉

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (f2 (n + 1) - f2 n : ℝ)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A005378.P10214499543466763585

namespace A005378

/-- `∑[log2(Δ[ceil(ϕ/acot(n))])]+1` -/
def P10214499543466763585.Spec : Prop :=
  ∀ n, P10214499543466763585.a n = (A005378 n : ℝ)

end A005378

/-! ## A005378.P620871241459863082

`ceil(ϕ/acot(n+1)-(n+2))`
-/

namespace A005378.P620871241459863082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.goldenRatio / SequenceMachineLib.acot (n + 1 : ℝ) - (n + 2 : ℝ)⌉

end

end A005378.P620871241459863082

namespace A005378

/-- `ceil(ϕ/acot(n+1)-(n+2))` -/
def P620871241459863082.Spec : Prop :=
  ∀ n, P620871241459863082.a n = A005378 n

end A005378

/-! ## A005378.P1513263180269503184

`n-a(n-1)+a(n-2-a(n-2))` with `a(0)=1, a(1)=1, a(2)=2`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A005378

/-- `n-a(n-1)+a(n-2-a(n-2))` -/
def P1513263180269503184.Spec : Prop :=
  ∀ n, P1513263180269503184.a n = A005378 n

theorem P1513263180269503184.correct : P1513263180269503184.Spec := by
  intro n
  simp only [A005378]

end A005378

/-! ## A005378.P18400852398875100633

`a(a(n-1)-a(a(a(n-1))))-(a(n-1)-n)` with `a(0)=1, a(1)=1`
-/

namespace A005378.P18400852398875100633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  a (a (n - 1) - a (a (a (n - 1)).toNat).toNat).toNat - (a (n - 1) - (n : ℤ))

end

end A005378.P18400852398875100633

namespace A005378

/-- `a(a(n-1)-a(a(a(n-1))))-(a(n-1)-n)` -/
def P18400852398875100633.Spec : Prop :=
  ∀ n, P18400852398875100633.a n = A005378 n

end A005378

/-! ## A005378.P4704494458445203549

`n-A005379(a(n-1))` with `a(0)=1`
-/

namespace A005378.P4704494458445203549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (n : ℤ) - A005379 (a (n - 1)).toNat

end

end A005378.P4704494458445203549

namespace A005378

/-- `n-A005379(a(n-1))` -/
def P4704494458445203549.Spec : Prop :=
  ∀ n, P4704494458445203549.a n = A005378 n

end A005378

/-! ## A005378.P14085954385282957509

`A005206(A192687(n)+n)`
-/

namespace A005378.P14085954385282957509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005206 (A192687 n + (n : ℤ)).toNat

end

end A005378.P14085954385282957509

namespace A005378

/-- `A005206(A192687(n)+n)` -/
def P14085954385282957509.Spec : Prop :=
  ∀ n, P14085954385282957509.a n = A005378 n

end A005378

/-! ## A005378.P12310242135177561114

`A192687(n)+A005379(n)`
-/

namespace A005378.P12310242135177561114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192687 n + A005379 n

end

end A005378.P12310242135177561114

namespace A005378

/-- `A192687(n)+A005379(n)` -/
def P12310242135177561114.Spec : Prop :=
  ∀ n, P12310242135177561114.a n = A005378 n

theorem P12310242135177561114.correct : P12310242135177561114.Spec := by
  intro n
  simp only [A005378, Nat.add_sub_cancel, A005378.P12310242135177561114.a, A005378.P1513263180269503184.a, A005379, A005379.P9995901259370784340.a, A192687, A192687.P8625485423685987352.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A005378

/-! ## A005378.P12356065286217475412

`A010056(n+1)+A005379(n)`
-/

namespace A005378.P12356065286217475412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010056 (n + 1) + A005379 n

end

end A005378.P12356065286217475412

namespace A005378

/-- `A010056(n+1)+A005379(n)` -/
def P12356065286217475412.Spec : Prop :=
  ∀ n, P12356065286217475412.a n = A005378 n

end A005378

/-! ## A005378.P11085955241265753921

`A005206(1-A095792(n)+n)`
-/

namespace A005378.P11085955241265753921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005206 (1 - A095792 n + (n : ℤ)).toNat

end

end A005378.P11085955241265753921

namespace A005378

/-- `A005206(1-A095792(n)+n)` -/
def P11085955241265753921.Spec : Prop :=
  ∀ n, P11085955241265753921.a n = A005378 n

end A005378

/-! ## A005378.P14075684976921575990

`A005206(1-(A095792(n)-n))`
-/

namespace A005378.P14075684976921575990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005206 (1 - (A095792 n - (n : ℤ))).toNat

end

end A005378.P14075684976921575990

namespace A005378

/-- `A005206(1-(A095792(n)-n))` -/
def P14075684976921575990.Spec : Prop :=
  ∀ n, P14075684976921575990.a n = A005378 n

end A005378

/-! ## A005378.P9568313855689471299

`A005379(A104162(n+1)+n)`
-/

namespace A005378.P9568313855689471299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005379 (A104162 (n + 1) + (n : ℤ)).toNat

end

end A005378.P9568313855689471299

namespace A005378

/-- `A005379(A104162(n+1)+n)` -/
def P9568313855689471299.Spec : Prop :=
  ∀ n, P9568313855689471299.a n = A005378 n

end A005378

/-! ## A005378.P2593334319611701381

`A000201(n+1)-A005379(A000201(n+1))`
-/

namespace A005378.P2593334319611701381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000201 (n + 1) - A005379 (A000201 (n + 1)).toNat

end

end A005378.P2593334319611701381

namespace A005378

/-- `A000201(n+1)-A005379(A000201(n+1))` -/
def P2593334319611701381.Spec : Prop :=
  ∀ n, P2593334319611701381.a n = A005378 n

end A005378

/-! ## A005378.P5084698001626218426

`A003056(A283968(n))`
-/

namespace A005378.P5084698001626218426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (A283968 n).toNat

end

end A005378.P5084698001626218426

namespace A005378

/-- `A003056(A283968(n))` -/
def P5084698001626218426.Spec : Prop :=
  ∀ n, P5084698001626218426.a n = A005378 n

end A005378

/-! ## A005378.P14673503341923860097

`A002024(A283968(n)+1)-1`
-/

namespace A005378.P14673503341923860097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002024 (A283968 n + 1).toNat - 1

end

end A005378.P14673503341923860097

namespace A005378

/-- `A002024(A283968(n)+1)-1` -/
def P14673503341923860097.Spec : Prop :=
  ∀ n, P14673503341923860097.a n = A005378 n

end A005378

/-! ## A005378.P8497876466528069117

`A000196(A005206(A005206((n+1)²)))`
-/

namespace A005378.P8497876466528069117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A005206 (A005206 ((n + 1) ^ 2)).toNat).toNat

end

end A005378.P8497876466528069117

namespace A005378

/-- `A000196(A005206(A005206((n+1)²)))` -/
def P8497876466528069117.Spec : Prop :=
  ∀ n, P8497876466528069117.a n = A005378 n

end A005378

/-! ## A005378.P565728953572716242

`n-A367068(a(n-1))` with `a(0)=1`
-/

namespace A005378.P565728953572716242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (n : ℤ) - A367068 (a (n - 1)).toNat

end

end A005378.P565728953572716242

namespace A005378

/-- `n-A367068(a(n-1))` -/
def P565728953572716242.Spec : Prop :=
  ∀ n, P565728953572716242.a n = A005378 n

end A005378

/-!
# A005379: The male of a pair of recurrences.

The programs for A005379, the canonical program `A005379.P9995901259370784340` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A005379 has offset 0).

The definition of A005379 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A005379.P9995901259370784340

`floor(abs(cot(ϕ/(n+1))))`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A005379

/-- `floor(abs(cot(ϕ/(n+1))))` -/
def P9995901259370784340.Spec : Prop :=
  ∀ n, P9995901259370784340.a n = A005379 n

theorem P9995901259370784340.correct : P9995901259370784340.Spec := by
  intro n
  simp only [A005379]

end A005379

/-! ## A005379.P7318841588502610523

`floor(cot(tan(ϕ/(n+1))))`
-/

namespace A005379.P7318841588502610523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.cot (Real.tan (Real.goldenRatio / (n + 1 : ℝ)))⌋

end

end A005379.P7318841588502610523

namespace A005379

/-- `floor(cot(tan(ϕ/(n+1))))` -/
def P7318841588502610523.Spec : Prop :=
  ∀ n, P7318841588502610523.a n = A005379 n

end A005379

/-! ## A005379.P3362672636139440805

`floor((n/(n+1)+n)/ϕ)`
-/

namespace A005379.P3362672636139440805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((n : ℚ) / (n + 1 : ℚ) + (n : ℚ) : ℝ) / Real.goldenRatio⌋

end

end A005379.P3362672636139440805

namespace A005379

/-- `floor((n/(n+1)+n)/ϕ)` -/
def P3362672636139440805.Spec : Prop :=
  ∀ n, P3362672636139440805.a n = A005379 n

end A005379

/-! ## A005379.P16948681620011360405

`A005378(n)-A192687(n)`
-/

namespace A005379.P16948681620011360405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005378 n - A192687 n

end

end A005379.P16948681620011360405

namespace A005379

/-- `A005378(n)-A192687(n)` -/
def P16948681620011360405.Spec : Prop :=
  ∀ n, P16948681620011360405.a n = A005379 n

theorem P16948681620011360405.correct : P16948681620011360405.Spec := by
  intro n
  simp only [A005379, Nat.add_sub_cancel, A005379.P16948681620011360405.a, A005379.P9995901259370784340.a, A005378, A005378.P1513263180269503184.a, A192687, A192687.P8625485423685987352.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A005379

/-! ## A005379.P13797277203072244650

`A005378(n)-A010056(n+1)`
-/

namespace A005379.P13797277203072244650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005378 n - A010056 (n + 1)

end

end A005379.P13797277203072244650

namespace A005379

/-- `A005378(n)-A010056(n+1)` -/
def P13797277203072244650.Spec : Prop :=
  ∀ n, P13797277203072244650.a n = A005379 n

end A005379

/-! ## A005379.P13660643798933759147

`A340510(n+1)%A057544(n)`
-/

namespace A005379.P13660643798933759147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A340510 (n + 1)) (A057544 n)

end

end A005379.P13660643798933759147

namespace A005379

/-- `A340510(n+1)%A057544(n)` -/
def P13660643798933759147.Spec : Prop :=
  ∀ n, P13660643798933759147.a n = A005379 n

end A005379

/-! ## A005379.P10306588534352440723

`A005206(A192687(n)+n)-A192687(n)`
-/

namespace A005379.P10306588534352440723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005206 (A192687 n + (n : ℤ)).toNat - A192687 n

end

end A005379.P10306588534352440723

namespace A005379

/-- `A005206(A192687(n)+n)-A192687(n)` -/
def P10306588534352440723.Spec : Prop :=
  ∀ n, P10306588534352440723.a n = A005379 n

end A005379

/-! ## A005379.P12412668823759675943

`A000194(∑[2*A060144(n+1)])`
-/

namespace A005379.P12412668823759675943
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A060144 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000194 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A005379.P12412668823759675943

namespace A005379

/-- `A000194(∑[2*A060144(n+1)])` -/
def P12412668823759675943.Spec : Prop :=
  ∀ n, P12412668823759675943.a n = A005379 n

end A005379

/-! ## A005379.P3560787126653015718

`A367068(A028310(n))`
-/

namespace A005379.P3560787126653015718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367068 (A028310 n).toNat

end

end A005379.P3560787126653015718

namespace A005379

/-- `A367068(A028310(n))` -/
def P3560787126653015718.Spec : Prop :=
  ∀ n, P3560787126653015718.a n = A005379 n

end A005379

/-! ## A005379.P6046355111223970053

`A123578(A183137(n+1))`
-/

namespace A005379.P6046355111223970053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123578 (A183137 (n + 1)).toNat

end

end A005379.P6046355111223970053

namespace A005379

/-- `A123578(A183137(n+1))` -/
def P6046355111223970053.Spec : Prop :=
  ∀ n, P6046355111223970053.a n = A005379 n

end A005379

/-!
# A005380: Expansion of 1 / Product_{k>=1} (1-x^k)^(k+1).

The programs for A005380, there is no canonical definition to state claims against.
-/

/-! ## A005380.P7285859772719468006

`∑[∑[A060285(n)]]`
-/

namespace A005380.P7285859772719468006
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060285 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A005380.P7285859772719468006

/-! ## A005380.P11438375098907250010

`A381891(∑[n]+n)`
-/

namespace A005380.P11438375098907250010
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381891 (∑ j ∈ Finset.range (n + 1), f1 j + n)

end

end A005380.P11438375098907250010

/-! ## A005380.P125459097747013942

`A075196(∑[1-char[1]+n])`
-/

namespace A005380.P125459097747013942
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ) + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075196 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A005380.P125459097747013942

/-! ## A005380.P18436830179523358881

`A089353(A001105(n)+A000007(n))`
-/

namespace A005380.P18436830179523358881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089353 (A001105 n + A000007 n).toNat

end

end A005380.P18436830179523358881

/-! ## A005380.P16775281122956230458

`A089353(A065033(2*n)*A065033(4*n))`
-/

namespace A005380.P16775281122956230458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089353 (A065033 (2 * n) * A065033 (4 * n)).toNat

end

end A005380.P16775281122956230458

/-! ## A005380.P17609662637255195935

`A089353(∑[4*n]+1)`
-/

namespace A005380.P17609662637255195935
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089353 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A005380.P17609662637255195935

/-!
# A005381: Numbers k such that k and k-1 are composite.

The programs for A005381, the canonical program `A005381.P16334453365373976889` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A005381 has offset 1).

The definition of A005381 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A005381.P2900640769376943787

`A068780(n+1)+1`
-/

namespace A005381.P2900640769376943787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068780 (n + 1) + 1

end

end A005381.P2900640769376943787

namespace A005381

/-- `A068780(n+1)+1` -/
def P2900640769376943787.Spec : Prop :=
  ∀ n, P2900640769376943787.a n = A005381 (n + 1)

theorem P2900640769376943787.correct : P2900640769376943787.Spec := by
  intro n
  simp only [A005381, Nat.add_sub_cancel, A005381.P2900640769376943787.a, A005381.P16334453365373976889.f1, A005381.P16334453365373976889.f2, A005381.P16334453365373976889.a, A068780, A068780.P12907519640094677805.a, A323162, A323162.P4199434762193306250.a, A066247, A066247.P15227533178821378383.f1, A066247.P15227533178821378383.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A005381

/-! ## A005381.P8929541332806971228

`lt[1, A078772(n+1)]`
-/

namespace A005381.P8929541332806971228
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078772 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A005381.P8929541332806971228

namespace A005381

/-- `lt[1, A078772(n+1)]` -/
def P8929541332806971228.Spec : Prop :=
  ∀ n, (P8929541332806971228.a n : ℤ) = A005381 (n + 1)

end A005381

/-! ## A005381.P14600636797497223024

`lt[1, A175078(n+1)]`
-/

namespace A005381.P14600636797497223024
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175078 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A005381.P14600636797497223024

namespace A005381

/-- `lt[1, A175078(n+1)]` -/
def P14600636797497223024.Spec : Prop :=
  ∀ n, (P14600636797497223024.a n : ℤ) = A005381 (n + 1)

end A005381

/-! ## A005381.P14078802698983420182

`lt[3, A103509(n+1)]`
-/

namespace A005381.P14078802698983420182
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103509 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A005381.P14078802698983420182

namespace A005381

/-- `lt[3, A103509(n+1)]` -/
def P14078802698983420182.Spec : Prop :=
  ∀ n, (P14078802698983420182.a n : ℤ) = A005381 (n + 1)

end A005381

/-! ## A005381.P16334453365373976889

`eq[1, A323162(n+1)]+1`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A005381

/-- `eq[1, A323162(n+1)]+1` -/
def P16334453365373976889.Spec : Prop :=
  ∀ n, (P16334453365373976889.a n : ℤ) = A005381 (n + 1)

theorem P16334453365373976889.correct : P16334453365373976889.Spec := by
  intro n
  simp only [A005381, Nat.add_sub_cancel]

end A005381

/-! ## A005381.P13461788945849968134

`lt[1, A121561(n+1)]+1`
-/

namespace A005381.P13461788945849968134
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121561 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A005381.P13461788945849968134

namespace A005381

/-- `lt[1, A121561(n+1)]+1` -/
def P13461788945849968134.Spec : Prop :=
  ∀ n, (P13461788945849968134.a n : ℤ) = A005381 (n + 1)

end A005381

/-! ## A005381.P5983648383144627430

`lt[1, A056898(n+1)]+2`
-/

namespace A005381.P5983648383144627430
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056898 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 2

end

end A005381.P5983648383144627430

namespace A005381

/-- `lt[1, A056898(n+1)]+2` -/
def P5983648383144627430.Spec : Prop :=
  ∀ n, (P5983648383144627430.a n : ℤ) = A005381 (n + 1)

end A005381

/-! ## A005381.P4348337295590616915

`lt[2, A175851(n+1)]+1`
-/

namespace A005381.P4348337295590616915
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175851 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A005381.P4348337295590616915

namespace A005381

/-- `lt[2, A175851(n+1)]+1` -/
def P4348337295590616915.Spec : Prop :=
  ∀ n, (P4348337295590616915.a n : ℤ) = A005381 (n + 1)

end A005381

/-! ## A005381.P4917273614852682688

`lt[2, A000005(or(1, n))]+1`
-/

namespace A005381.P4917273614852682688
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (Nat.lor 1 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A005381.P4917273614852682688

namespace A005381

/-- `lt[2, A000005(or(1, n))]+1` -/
def P4917273614852682688.Spec : Prop :=
  ∀ n, (P4917273614852682688.a n : ℤ) = A005381 (n + 1)

end A005381

/-! ## A005381.P15118597389897936236

`filter[A344180(n), A323162(#)]`
-/

namespace A005381.P15118597389897936236
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344180 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323162 (f1 j).toNat = 1) n)

end

end A005381.P15118597389897936236

namespace A005381

/-- `filter[A344180(n), A323162(#)]` -/
def P15118597389897936236.Spec : Prop :=
  ∀ n, P15118597389897936236.a n = A005381 (n + 1)

end A005381

/-! ## A005381.P457035086724552503

`filter[A002808(n+1), A323162(#)]`
-/

namespace A005381.P457035086724552503
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002808 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323162 (f1 j).toNat = 1) n)

end

end A005381.P457035086724552503

namespace A005381

/-- `filter[A002808(n+1), A323162(#)]` -/
def P457035086724552503.Spec : Prop :=
  ∀ n, P457035086724552503.a n = A005381 (n + 1)

end A005381

/-! ## A005381.P8119543448881467173

`filter[A018252(n+1), A323162(#)]`
-/

namespace A005381.P8119543448881467173
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323162 (f1 j).toNat = 1) n)

end

end A005381.P8119543448881467173

namespace A005381

/-- `filter[A018252(n+1), A323162(#)]` -/
def P8119543448881467173.Spec : Prop :=
  ∀ n, P8119543448881467173.a n = A005381 (n + 1)

end A005381

/-! ## A005381.P6138652929128892144

`eq[1, A262940(A078772(n+1)+2)]`
-/

namespace A005381.P6138652929128892144
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262940 (A078772 (n + 1) + 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A005381.P6138652929128892144

namespace A005381

/-- `eq[1, A262940(A078772(n+1)+2)]` -/
def P6138652929128892144.Spec : Prop :=
  ∀ n, (P6138652929128892144.a n : ℤ) = A005381 (n + 1)

end A005381

/-! ## A005381.P15717126162015739845

`eq[2, A328579(A078772(n+1)+1)]`
-/

namespace A005381.P15717126162015739845
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328579 (A078772 (n + 1) + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A005381.P15717126162015739845

namespace A005381

/-- `eq[2, A328579(A078772(n+1)+1)]` -/
def P15717126162015739845.Spec : Prop :=
  ∀ n, (P15717126162015739845.a n : ℤ) = A005381 (n + 1)

end A005381

/-! ## A005381.P1974320885124692678

`lt[A020639(n+1), A175126(n)]+1`
-/

namespace A005381.P1974320885124692678
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175126 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A005381.P1974320885124692678

namespace A005381

/-- `lt[A020639(n+1), A175126(n)]+1` -/
def P1974320885124692678.Spec : Prop :=
  ∀ n, (P1974320885124692678.a n : ℤ) = A005381 (n + 1)

end A005381

/-! ## A005381.P2773738581776331665

`∪[A079364(n+1), A136799(n+1)]`
-/

namespace A005381.P2773738581776331665
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079364 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136799 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A005381.P2773738581776331665

namespace A005381

/-- `∪[A079364(n+1), A136799(n+1)]` -/
def P2773738581776331665.Spec : Prop :=
  ∀ n, (P2773738581776331665.a n : ℤ) = A005381 (n + 1)

end A005381

/-! ## A005381.P1718418475470943587

`eq[A029833(n+1), A339579(n+1)]+1`
-/

namespace A005381.P1718418475470943587
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029833 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339579 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A005381.P1718418475470943587

namespace A005381

/-- `eq[A029833(n+1), A339579(n+1)]+1` -/
def P1718418475470943587.Spec : Prop :=
  ∀ n, (P1718418475470943587.a n : ℤ) = A005381 (n + 1)

end A005381

/-! ## A005381.P1493822060854445956

`A018252(comp[comp[A018252(n+1)]-n])+1`
-/

namespace A005381.P1493822060854445956
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (n + 1)

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n : ℤ) - (n : ℤ)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n) + 1

end

end A005381.P1493822060854445956

namespace A005381

/-- `A018252(comp[comp[A018252(n+1)]-n])+1` -/
def P1493822060854445956.Spec : Prop :=
  ∀ n, P1493822060854445956.a n = A005381 (n + 1)

end A005381

/-!
# A005382: Primes p such that 2p-1 is also prime.

The programs for A005382, the canonical program `A005382.P6052769528681184091` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A005382 has offset 1).

The definition of A005382 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A005382.P17200918515431377125

`(A005383(n+1)+1)/2`
-/

namespace A005382.P17200918515431377125
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A005383 (n + 1) + 1 : ℚ) / 2

end

end A005382.P17200918515431377125

namespace A005382

/-- `(A005383(n+1)+1)/2` -/
def P17200918515431377125.Spec : Prop :=
  ∀ n, P17200918515431377125.a n = (A005382 (n + 1) : ℚ)

theorem P17200918515431377125.correct : P17200918515431377125.Spec := by
  intro n
  simp only [A005382, Nat.add_sub_cancel, A005382.P17200918515431377125.a, A005382.P6052769528681184091.f1, A005382.P6052769528681184091.f2, A005382.P6052769528681184091.a, A005383, A005383.P14491179252099632441.a, A232667, A232667.P15325416728092359477.f1, A232667.P15325416728092359477.f2, A232667.P15325416728092359477.a, A234999, A234999.P3604876205550161988.f1, A234999.P3604876205550161988.a, A027697, A027697.P9273385272130382931.a, A027699, A027699.P13565929154440483330.f1, A027699.P13565929154440483330.a, A068080, A068080.P15022809947655922069.f1, A068080.P15022809947655922069.f2, A068080.P15022809947655922069.a, A000010, A000010.P4673923239450215316.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A001222, A001222.P667907507343207792.f1, A001222.P667907507343207792.a, A027698, A027698.P6769785550994187236.f1, A027698.P6769785550994187236.f2, A027698.P6769785550994187236.a, A093688, A093688.P16553081961736122512.f1, A093688.P16553081961736122512.f2, A093688.P16553081961736122512.a, A003557, A003557.P6364735403900941810.a, A173557, A173557.P308518469657070908.f1, A173557.P308518469657070908.a, A200246, A200246.P7159132102986410661.a, A227872, A227872.P9091759505244018972.f1, A227872.P9091759505244018972.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A005382

/-! ## A005382.P8501014160579648668

`A351875(n+1)+1`
-/

namespace A005382.P8501014160579648668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351875 (n + 1) + 1

end

end A005382.P8501014160579648668

namespace A005382

/-- `A351875(n+1)+1` -/
def P8501014160579648668.Spec : Prop :=
  ∀ n, P8501014160579648668.a n = A005382 (n + 1)

theorem P8501014160579648668.correct : P8501014160579648668.Spec := by
  intro n
  simp only [A005382, Nat.add_sub_cancel, A005382.P8501014160579648668.a, A005382.P6052769528681184091.f1, A005382.P6052769528681184091.f2, A005382.P6052769528681184091.a, A232667, A232667.P15325416728092359477.f1, A232667.P15325416728092359477.f2, A232667.P15325416728092359477.a, A234999, A234999.P3604876205550161988.f1, A234999.P3604876205550161988.a, A351875, A351875.P8085341493502060080.a, A027697, A027697.P9273385272130382931.a, A027699, A027699.P13565929154440483330.f1, A027699.P13565929154440483330.a, A068080, A068080.P15022809947655922069.f1, A068080.P15022809947655922069.f2, A068080.P15022809947655922069.a, A000010, A000010.P4673923239450215316.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A001222, A001222.P667907507343207792.f1, A001222.P667907507343207792.a, A027698, A027698.P6769785550994187236.f1, A027698.P6769785550994187236.f2, A027698.P6769785550994187236.a, A093688, A093688.P16553081961736122512.f1, A093688.P16553081961736122512.f2, A093688.P16553081961736122512.a, A003557, A003557.P6364735403900941810.a, A173557, A173557.P308518469657070908.f1, A173557.P308518469657070908.a, A200246, A200246.P7159132102986410661.a, A227872, A227872.P9091759505244018972.f1, A227872.P9091759505244018972.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A005382

/-! ## A005382.P5093683336018897147

`A077068(n+1)/2`
-/

namespace A005382.P5093683336018897147
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A077068 (n + 1) : ℚ) / 2

end

end A005382.P5093683336018897147

namespace A005382

/-- `A077068(n+1)/2` -/
def P5093683336018897147.Spec : Prop :=
  ∀ n, P5093683336018897147.a n = (A005382 (n + 1) : ℚ)

theorem P5093683336018897147.correct : P5093683336018897147.Spec := by
  intro n
  simp only [A005382, Nat.add_sub_cancel, A005382.P5093683336018897147.a, A005382.P6052769528681184091.f1, A005382.P6052769528681184091.f2, A005382.P6052769528681184091.a, A077068, A077068.P14869786235870196485.a, A232667, A232667.P15325416728092359477.f1, A232667.P15325416728092359477.f2, A232667.P15325416728092359477.a, A234999, A234999.P3604876205550161988.f1, A234999.P3604876205550161988.a, A005383, A005383.P14491179252099632441.a, A027697, A027697.P9273385272130382931.a, A027699, A027699.P13565929154440483330.f1, A027699.P13565929154440483330.a, A068080, A068080.P15022809947655922069.f1, A068080.P15022809947655922069.f2, A068080.P15022809947655922069.a, A000010, A000010.P4673923239450215316.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A001222, A001222.P667907507343207792.f1, A001222.P667907507343207792.a, A027698, A027698.P6769785550994187236.f1, A027698.P6769785550994187236.f2, A027698.P6769785550994187236.a, A093688, A093688.P16553081961736122512.f1, A093688.P16553081961736122512.f2, A093688.P16553081961736122512.a, A003557, A003557.P6364735403900941810.a, A173557, A173557.P308518469657070908.f1, A173557.P308518469657070908.a, A200246, A200246.P7159132102986410661.a, A227872, A227872.P9091759505244018972.f1, A227872.P9091759505244018972.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A005382

/-! ## A005382.P16672841726862715934

`ceil(A005383(n+1)/2)`
-/

namespace A005382.P16672841726862715934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A005383 (n + 1) : ℚ) / 2⌉

end

end A005382.P16672841726862715934

namespace A005382

/-- `ceil(A005383(n+1)/2)` -/
def P16672841726862715934.Spec : Prop :=
  ∀ n, P16672841726862715934.a n = A005382 (n + 1)

end A005382

/-! ## A005382.P16975839421532986081

`A089965(n+1)/2+1`
-/

namespace A005382.P16975839421532986081
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A089965 (n + 1) : ℚ) / 2 + 1

end

end A005382.P16975839421532986081

namespace A005382

/-- `A089965(n+1)/2+1` -/
def P16975839421532986081.Spec : Prop :=
  ∀ n, P16975839421532986081.a n = (A005382 (n + 1) : ℚ)

theorem P16975839421532986081.correct : P16975839421532986081.Spec := by
  intro n
  simp only [A005382, Nat.add_sub_cancel, A005382.P16975839421532986081.a, A005382.P6052769528681184091.f1, A005382.P6052769528681184091.f2, A005382.P6052769528681184091.a, A089965, A089965.P14211704364200362511.a, A232667, A232667.P15325416728092359477.f1, A232667.P15325416728092359477.f2, A232667.P15325416728092359477.a, A234999, A234999.P3604876205550161988.f1, A234999.P3604876205550161988.a, A005383, A005383.P14491179252099632441.a, A027697, A027697.P9273385272130382931.a, A027699, A027699.P13565929154440483330.f1, A027699.P13565929154440483330.a, A068080, A068080.P15022809947655922069.f1, A068080.P15022809947655922069.f2, A068080.P15022809947655922069.a, A000010, A000010.P4673923239450215316.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A001222, A001222.P667907507343207792.f1, A001222.P667907507343207792.a, A027698, A027698.P6769785550994187236.f1, A027698.P6769785550994187236.f2, A027698.P6769785550994187236.a, A093688, A093688.P16553081961736122512.f1, A093688.P16553081961736122512.f2, A093688.P16553081961736122512.a, A003557, A003557.P6364735403900941810.a, A173557, A173557.P308518469657070908.f1, A173557.P308518469657070908.a, A200246, A200246.P7159132102986410661.a, A227872, A227872.P9091759505244018972.f1, A227872.P9091759505244018972.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A005382

/-! ## A005382.P16270397474779032354

`(A340509(n+1)+1)/3`
-/

namespace A005382.P16270397474779032354
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A340509 (n + 1) + 1 : ℚ) / 3

end

end A005382.P16270397474779032354

namespace A005382

/-- `(A340509(n+1)+1)/3` -/
def P16270397474779032354.Spec : Prop :=
  ∀ n, P16270397474779032354.a n = (A005382 (n + 1) : ℚ)

theorem P16270397474779032354.correct : P16270397474779032354.Spec := by
  intro n
  simp only [A005382, Nat.add_sub_cancel, A005382.P16270397474779032354.a, A005382.P6052769528681184091.f1, A005382.P6052769528681184091.f2, A005382.P6052769528681184091.a, A232667, A232667.P15325416728092359477.f1, A232667.P15325416728092359477.f2, A232667.P15325416728092359477.a, A234999, A234999.P3604876205550161988.f1, A234999.P3604876205550161988.a, A340509, A340509.P8307359629526885014.a, A027697, A027697.P9273385272130382931.a, A027699, A027699.P13565929154440483330.f1, A027699.P13565929154440483330.a, A068080, A068080.P15022809947655922069.f1, A068080.P15022809947655922069.f2, A068080.P15022809947655922069.a, A000010, A000010.P4673923239450215316.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A001222, A001222.P667907507343207792.f1, A001222.P667907507343207792.a, A027698, A027698.P6769785550994187236.f1, A027698.P6769785550994187236.f2, A027698.P6769785550994187236.a, A093688, A093688.P16553081961736122512.f1, A093688.P16553081961736122512.f2, A093688.P16553081961736122512.a, A003557, A003557.P6364735403900941810.a, A173557, A173557.P308518469657070908.f1, A173557.P308518469657070908.a, A200246, A200246.P7159132102986410661.a, A227872, A227872.P9091759505244018972.f1, A227872.P9091759505244018972.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A005382

/-! ## A005382.P6365362262372652889

`A074258(n)+a(n-1)` with `a(0)=2`
-/

namespace A005382.P6365362262372652889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A074258 n + a (n - 1)

end

end A005382.P6365362262372652889

namespace A005382

/-- `A074258(n)+a(n-1)` -/
def P6365362262372652889.Spec : Prop :=
  ∀ n, P6365362262372652889.a n = A005382 (n + 1)

end A005382

/-! ## A005382.P15956150453671970473

`A340509(n+1)-A005383(n+1)`
-/

namespace A005382.P15956150453671970473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340509 (n + 1) - A005383 (n + 1)

end

end A005382.P15956150453671970473

namespace A005382

/-- `A340509(n+1)-A005383(n+1)` -/
def P15956150453671970473.Spec : Prop :=
  ∀ n, P15956150453671970473.a n = A005382 (n + 1)

theorem P15956150453671970473.correct : P15956150453671970473.Spec := by
  intro n
  simp only [A005382, Nat.add_sub_cancel, A005382.P15956150453671970473.a, A005382.P6052769528681184091.f1, A005382.P6052769528681184091.f2, A005382.P6052769528681184091.a, A005383, A005383.P14491179252099632441.a, A232667, A232667.P15325416728092359477.f1, A232667.P15325416728092359477.f2, A232667.P15325416728092359477.a, A234999, A234999.P3604876205550161988.f1, A234999.P3604876205550161988.a, A340509, A340509.P8307359629526885014.a, A027697, A027697.P9273385272130382931.a, A027699, A027699.P13565929154440483330.f1, A027699.P13565929154440483330.a, A068080, A068080.P15022809947655922069.f1, A068080.P15022809947655922069.f2, A068080.P15022809947655922069.a, A000010, A000010.P4673923239450215316.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A001222, A001222.P667907507343207792.f1, A001222.P667907507343207792.a, A027698, A027698.P6769785550994187236.f1, A027698.P6769785550994187236.f2, A027698.P6769785550994187236.a, A093688, A093688.P16553081961736122512.f1, A093688.P16553081961736122512.f2, A093688.P16553081961736122512.a, A003557, A003557.P6364735403900941810.a, A173557, A173557.P308518469657070908.f1, A173557.P308518469657070908.a, A200246, A200246.P7159132102986410661.a, A227872, A227872.P9091759505244018972.f1, A227872.P9091759505244018972.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A005382

/-! ## A005382.P9835058793948069777

`A129521(n+1)%A077068(n+1)`
-/

namespace A005382.P9835058793948069777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A129521 (n + 1)) (A077068 (n + 1))

end

end A005382.P9835058793948069777

namespace A005382

/-- `A129521(n+1)%A077068(n+1)` -/
def P9835058793948069777.Spec : Prop :=
  ∀ n, P9835058793948069777.a n = A005382 (n + 1)

end A005382

/-! ## A005382.P6052769528681184091

`∪[A232667(n+1), A234999(n+1)]`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A005382

/-- `∪[A232667(n+1), A234999(n+1)]` -/
def P6052769528681184091.Spec : Prop :=
  ∀ n, (P6052769528681184091.a n : ℤ) = A005382 (n + 1)

theorem P6052769528681184091.correct : P6052769528681184091.Spec := by
  intro n
  simp only [A005382, Nat.add_sub_cancel]

end A005382

/-! ## A005382.P13758102584257346209

`A340509(n+1)+1-A077068(n+1)`
-/

namespace A005382.P13758102584257346209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340509 (n + 1) + (1 - A077068 (n + 1))

end

end A005382.P13758102584257346209

namespace A005382

/-- `A340509(n+1)+1-A077068(n+1)` -/
def P13758102584257346209.Spec : Prop :=
  ∀ n, P13758102584257346209.a n = A005382 (n + 1)

theorem P13758102584257346209.correct : P13758102584257346209.Spec := by
  intro n
  simp only [A005382, Nat.add_sub_cancel, A005382.P13758102584257346209.a, A005382.P6052769528681184091.f1, A005382.P6052769528681184091.f2, A005382.P6052769528681184091.a, A077068, A077068.P14869786235870196485.a, A232667, A232667.P15325416728092359477.f1, A232667.P15325416728092359477.f2, A232667.P15325416728092359477.a, A234999, A234999.P3604876205550161988.f1, A234999.P3604876205550161988.a, A340509, A340509.P8307359629526885014.a, A005383, A005383.P14491179252099632441.a, A027697, A027697.P9273385272130382931.a, A027699, A027699.P13565929154440483330.f1, A027699.P13565929154440483330.a, A068080, A068080.P15022809947655922069.f1, A068080.P15022809947655922069.f2, A068080.P15022809947655922069.a, A000010, A000010.P4673923239450215316.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A001222, A001222.P667907507343207792.f1, A001222.P667907507343207792.a, A027698, A027698.P6769785550994187236.f1, A027698.P6769785550994187236.f2, A027698.P6769785550994187236.a, A093688, A093688.P16553081961736122512.f1, A093688.P16553081961736122512.f2, A093688.P16553081961736122512.a, A003557, A003557.P6364735403900941810.a, A173557, A173557.P308518469657070908.f1, A173557.P308518469657070908.a, A200246, A200246.P7159132102986410661.a, A227872, A227872.P9091759505244018972.f1, A227872.P9091759505244018972.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A005382

/-! ## A005382.P9106539921237620362

`(A232342(n+1)+A077065(n+1))/2`
-/

namespace A005382.P9106539921237620362
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A232342 (n + 1) + A077065 (n + 1) : ℚ) / 2

end

end A005382.P9106539921237620362

namespace A005382

/-- `(A232342(n+1)+A077065(n+1))/2` -/
def P9106539921237620362.Spec : Prop :=
  ∀ n, P9106539921237620362.a n = (A005382 (n + 1) : ℚ)

theorem P9106539921237620362.correct : P9106539921237620362.Spec := by
  intro n
  simp only [A005382, Nat.add_sub_cancel, A005382.P9106539921237620362.a, A005382.P6052769528681184091.f1, A005382.P6052769528681184091.f2, A005382.P6052769528681184091.a, A077065, A077065.P3431251406781570749.a, A232342, A232342.P12753495415627519153.a, A232667, A232667.P15325416728092359477.f1, A232667.P15325416728092359477.f2, A232667.P15325416728092359477.a, A234999, A234999.P3604876205550161988.f1, A234999.P3604876205550161988.a, A005385, A005385.P12850744102754472242.a, A027697, A027697.P9273385272130382931.a, A027699, A027699.P13565929154440483330.f1, A027699.P13565929154440483330.a, A068080, A068080.P15022809947655922069.f1, A068080.P15022809947655922069.f2, A068080.P15022809947655922069.a, A077068, A077068.P14869786235870196485.a, A000010, A000010.P4673923239450215316.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A001222, A001222.P667907507343207792.f1, A001222.P667907507343207792.a, A005383, A005383.P14491179252099632441.a, A005384, A005384.P4537023799186511760.f1, A005384.P4537023799186511760.a, A027698, A027698.P6769785550994187236.f1, A027698.P6769785550994187236.f2, A027698.P6769785550994187236.a, A093688, A093688.P16553081961736122512.f1, A093688.P16553081961736122512.f2, A093688.P16553081961736122512.a, A003557, A003557.P6364735403900941810.a, A173557, A173557.P308518469657070908.f1, A173557.P308518469657070908.a, A200246, A200246.P7159132102986410661.a, A227872, A227872.P9091759505244018972.f1, A227872.P9091759505244018972.a, A348511, A348511.P16032306020572469586.f1, A348511.P16032306020572469586.f2, A348511.P16032306020572469586.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A005382

/-! ## A005382.P74990324438716742

`p?[A174568(n+1)]`
-/

namespace A005382.P74990324438716742
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174568 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A005382.P74990324438716742

namespace A005382

/-- `p?[A174568(n+1)]` -/
def P74990324438716742.Spec : Prop :=
  ∀ n, P74990324438716742.a n = A005382 (n + 1)

end A005382

/-! ## A005382.P17328404320702452099

`p?[A265394(n+1)]`
-/

namespace A005382.P17328404320702452099
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265394 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A005382.P17328404320702452099

namespace A005382

/-- `p?[A265394(n+1)]` -/
def P17328404320702452099.Spec : Prop :=
  ∀ n, P17328404320702452099.a n = A005382 (n + 1)

end A005382

/-! ## A005382.P9035209333769208597

`(p?[A048968(n+1)]+1)/2`
-/

namespace A005382.P9035209333769208597
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048968 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) + 1 : ℚ) / 2

end

end A005382.P9035209333769208597

namespace A005382

/-- `(p?[A048968(n+1)]+1)/2` -/
def P9035209333769208597.Spec : Prop :=
  ∀ n, P9035209333769208597.a n = (A005382 (n + 1) : ℚ)

end A005382

/-! ## A005382.P17626909112289518054

`(p?[A057920(n+1)]+1)/2`
-/

namespace A005382.P17626909112289518054
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057920 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) + 1 : ℚ) / 2

end

end A005382.P17626909112289518054

namespace A005382

/-- `(p?[A057920(n+1)]+1)/2` -/
def P17626909112289518054.Spec : Prop :=
  ∀ n, P17626909112289518054.a n = (A005382 (n + 1) : ℚ)

end A005382

/-! ## A005382.P6077915666103459286

`(p?[A164977(n+1)]+1)/2`
-/

namespace A005382.P6077915666103459286
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164977 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) + 1 : ℚ) / 2

end

end A005382.P6077915666103459286

namespace A005382

/-- `(p?[A164977(n+1)]+1)/2` -/
def P6077915666103459286.Spec : Prop :=
  ∀ n, P6077915666103459286.a n = (A005382 (n + 1) : ℚ)

end A005382

/-! ## A005382.P12939477802500543739

`(p?[A192577(n+1)]+1)/2`
-/

namespace A005382.P12939477802500543739
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192577 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) + 1 : ℚ) / 2

end

end A005382.P12939477802500543739

namespace A005382

/-- `(p?[A192577(n+1)]+1)/2` -/
def P12939477802500543739.Spec : Prop :=
  ∀ n, P12939477802500543739.a n = (A005382 (n + 1) : ℚ)

end A005382

/-! ## A005382.P15834569368185696777

`(p?[A348659(n+1)]+1)/2`
-/

namespace A005382.P15834569368185696777
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348659 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) + 1 : ℚ) / 2

end

end A005382.P15834569368185696777

namespace A005382

/-- `(p?[A348659(n+1)]+1)/2` -/
def P15834569368185696777.Spec : Prop :=
  ∀ n, P15834569368185696777.a n = (A005382 (n + 1) : ℚ)

end A005382

/-! ## A005382.P10277787869915352278

`p?[A384020(n+1)]`
-/

namespace A005382.P10277787869915352278
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A384020 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A005382.P10277787869915352278

namespace A005382

/-- `p?[A384020(n+1)]` -/
def P10277787869915352278.Spec : Prop :=
  ∀ n, P10277787869915352278.a n = A005382 (n + 1)

end A005382

/-!
# A005383: Primes p such that (p+1)/2 is prime.

The programs for A005383, the canonical program `A005383.P14491179252099632441` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A005383 has offset 1).

The definition of A005383 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A005382, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A005383.P14491179252099632441

`2*A005382(n+1)-1`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A005383

/-- `2*A005382(n+1)-1` -/
def P14491179252099632441.Spec : Prop :=
  ∀ n, P14491179252099632441.a n = A005383 (n + 1)

theorem P14491179252099632441.correct : P14491179252099632441.Spec := by
  intro n
  simp only [A005383, Nat.add_sub_cancel]

end A005383

/-! ## A005383.P1928230774396026956

`A129521(n+1)/A005382(n+1)`
-/

namespace A005383.P1928230774396026956
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A129521 (n + 1) : ℚ) / (A005382 (n + 1) : ℚ)

end

end A005383.P1928230774396026956

namespace A005383

/-- `A129521(n+1)/A005382(n+1)` -/
def P1928230774396026956.Spec : Prop :=
  ∀ n, P1928230774396026956.a n = (A005383 (n + 1) : ℚ)

end A005383

/-! ## A005383.P4719801799169951852

`A089965(n+1)+1`
-/

namespace A005383.P4719801799169951852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089965 (n + 1) + 1

end

end A005383.P4719801799169951852

namespace A005383

/-- `A089965(n+1)+1` -/
def P4719801799169951852.Spec : Prop :=
  ∀ n, P4719801799169951852.a n = A005383 (n + 1)

theorem P4719801799169951852.correct : P4719801799169951852.Spec := by
  intro n
  simp only [A005383, Nat.add_sub_cancel, A005383.P4719801799169951852.a, A005383.P14491179252099632441.a, A005382, A005382.P6052769528681184091.f1, A005382.P6052769528681184091.f2, A005382.P6052769528681184091.a, A089965, A089965.P14211704364200362511.a, A232667, A232667.P15325416728092359477.f1, A232667.P15325416728092359477.f2, A232667.P15325416728092359477.a, A234999, A234999.P3604876205550161988.f1, A234999.P3604876205550161988.a, A027697, A027697.P9273385272130382931.a, A027699, A027699.P13565929154440483330.f1, A027699.P13565929154440483330.a, A068080, A068080.P15022809947655922069.f1, A068080.P15022809947655922069.f2, A068080.P15022809947655922069.a, A000010, A000010.P4673923239450215316.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A001222, A001222.P667907507343207792.f1, A001222.P667907507343207792.a, A027698, A027698.P6769785550994187236.f1, A027698.P6769785550994187236.f2, A027698.P6769785550994187236.a, A093688, A093688.P16553081961736122512.f1, A093688.P16553081961736122512.f2, A093688.P16553081961736122512.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A005383

/-! ## A005383.P13311046696392770315

`A077068(n+1)-1`
-/

namespace A005383.P13311046696392770315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077068 (n + 1) - 1

end

end A005383.P13311046696392770315

namespace A005383

/-- `A077068(n+1)-1` -/
def P13311046696392770315.Spec : Prop :=
  ∀ n, P13311046696392770315.a n = A005383 (n + 1)

theorem P13311046696392770315.correct : P13311046696392770315.Spec := by
  intro n
  simp only [A005383, Nat.add_sub_cancel, A005383.P13311046696392770315.a, A005383.P14491179252099632441.a, A005382, A005382.P6052769528681184091.f1, A005382.P6052769528681184091.f2, A005382.P6052769528681184091.a, A077068, A077068.P14869786235870196485.a, A232667, A232667.P15325416728092359477.f1, A232667.P15325416728092359477.f2, A232667.P15325416728092359477.a, A234999, A234999.P3604876205550161988.f1, A234999.P3604876205550161988.a, A027697, A027697.P9273385272130382931.a, A027699, A027699.P13565929154440483330.f1, A027699.P13565929154440483330.a, A068080, A068080.P15022809947655922069.f1, A068080.P15022809947655922069.f2, A068080.P15022809947655922069.a, A000010, A000010.P4673923239450215316.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A001222, A001222.P667907507343207792.f1, A001222.P667907507343207792.a, A027698, A027698.P6769785550994187236.f1, A027698.P6769785550994187236.f2, A027698.P6769785550994187236.a, A093688, A093688.P16553081961736122512.f1, A093688.P16553081961736122512.f2, A093688.P16553081961736122512.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A005383

/-! ## A005383.P4963367126189861840

`2*A351875(n+1)+1`
-/

namespace A005383.P4963367126189861840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A351875 (n + 1) + 1

end

end A005383.P4963367126189861840

namespace A005383

/-- `2*A351875(n+1)+1` -/
def P4963367126189861840.Spec : Prop :=
  ∀ n, P4963367126189861840.a n = A005383 (n + 1)

theorem P4963367126189861840.correct : P4963367126189861840.Spec := by
  intro n
  simp only [A005383, Nat.add_sub_cancel, A005383.P4963367126189861840.a, A005383.P14491179252099632441.a, A005382, A005382.P6052769528681184091.f1, A005382.P6052769528681184091.f2, A005382.P6052769528681184091.a, A351875, A351875.P8085341493502060080.a, A232667, A232667.P15325416728092359477.f1, A232667.P15325416728092359477.f2, A232667.P15325416728092359477.a, A234999, A234999.P3604876205550161988.f1, A234999.P3604876205550161988.a, A027697, A027697.P9273385272130382931.a, A027699, A027699.P13565929154440483330.f1, A027699.P13565929154440483330.a, A068080, A068080.P15022809947655922069.f1, A068080.P15022809947655922069.f2, A068080.P15022809947655922069.a, A000010, A000010.P4673923239450215316.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A001222, A001222.P667907507343207792.f1, A001222.P667907507343207792.a, A027698, A027698.P6769785550994187236.f1, A027698.P6769785550994187236.f2, A027698.P6769785550994187236.a, A093688, A093688.P16553081961736122512.f1, A093688.P16553081961736122512.f2, A093688.P16553081961736122512.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A005383

/-! ## A005383.P9555494108285053527

`A351875(n+1)+A005382(n+1)`
-/

namespace A005383.P9555494108285053527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351875 (n + 1) + A005382 (n + 1)

end

end A005383.P9555494108285053527

namespace A005383

/-- `A351875(n+1)+A005382(n+1)` -/
def P9555494108285053527.Spec : Prop :=
  ∀ n, P9555494108285053527.a n = A005383 (n + 1)

theorem P9555494108285053527.correct : P9555494108285053527.Spec := by
  intro n
  simp only [A005383, Nat.add_sub_cancel, A005383.P9555494108285053527.a, A005383.P14491179252099632441.a, A005382, A005382.P6052769528681184091.f1, A005382.P6052769528681184091.f2, A005382.P6052769528681184091.a, A351875, A351875.P8085341493502060080.a, A232667, A232667.P15325416728092359477.f1, A232667.P15325416728092359477.f2, A232667.P15325416728092359477.a, A234999, A234999.P3604876205550161988.f1, A234999.P3604876205550161988.a, A027697, A027697.P9273385272130382931.a, A027699, A027699.P13565929154440483330.f1, A027699.P13565929154440483330.a, A068080, A068080.P15022809947655922069.f1, A068080.P15022809947655922069.f2, A068080.P15022809947655922069.a, A000010, A000010.P4673923239450215316.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A001222, A001222.P667907507343207792.f1, A001222.P667907507343207792.a, A027698, A027698.P6769785550994187236.f1, A027698.P6769785550994187236.f2, A027698.P6769785550994187236.a, A093688, A093688.P16553081961736122512.f1, A093688.P16553081961736122512.f2, A093688.P16553081961736122512.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A005383

/-! ## A005383.P5249644883187458549

`A340509(n+1)-A005382(n+1)`
-/

namespace A005383.P5249644883187458549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340509 (n + 1) - A005382 (n + 1)

end

end A005383.P5249644883187458549

namespace A005383

/-- `A340509(n+1)-A005382(n+1)` -/
def P5249644883187458549.Spec : Prop :=
  ∀ n, P5249644883187458549.a n = A005383 (n + 1)

theorem P5249644883187458549.correct : P5249644883187458549.Spec := by
  intro n
  simp only [A005383, Nat.add_sub_cancel, A005383.P5249644883187458549.a, A005383.P14491179252099632441.a, A005382, A005382.P6052769528681184091.f1, A005382.P6052769528681184091.f2, A005382.P6052769528681184091.a, A340509, A340509.P8307359629526885014.a, A232667, A232667.P15325416728092359477.f1, A232667.P15325416728092359477.f2, A232667.P15325416728092359477.a, A234999, A234999.P3604876205550161988.f1, A234999.P3604876205550161988.a, A027697, A027697.P9273385272130382931.a, A027699, A027699.P13565929154440483330.f1, A027699.P13565929154440483330.a, A068080, A068080.P15022809947655922069.f1, A068080.P15022809947655922069.f2, A068080.P15022809947655922069.a, A000010, A000010.P4673923239450215316.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A001222, A001222.P667907507343207792.f1, A001222.P667907507343207792.a, A027698, A027698.P6769785550994187236.f1, A027698.P6769785550994187236.f2, A027698.P6769785550994187236.a, A093688, A093688.P16553081961736122512.f1, A093688.P16553081961736122512.f2, A093688.P16553081961736122512.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A005383

/-! ## A005383.P4243221930982707934

`A079147(n+2)`
-/

namespace A005383.P4243221930982707934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079147 (n + 2)

end

end A005383.P4243221930982707934

namespace A005383

/-- `A079147(n+2)` -/
def P4243221930982707934.Spec : Prop :=
  ∀ n, P4243221930982707934.a n = A005383 (n + 1)

end A005383

/-! ## A005383.P13652695601270074456

`∩[A048968(n+1), A057920(n+1)]`
-/

namespace A005383.P13652695601270074456
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048968 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057920 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A005383.P13652695601270074456

namespace A005383

/-- `∩[A048968(n+1), A057920(n+1)]` -/
def P13652695601270074456.Spec : Prop :=
  ∀ n, (P13652695601270074456.a n : ℤ) = A005383 (n + 1)

end A005383

/-! ## A005383.P3760520774450729325

`∩[A057920(n+1), A064519(n+1)]`
-/

namespace A005383.P3760520774450729325
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057920 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064519 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A005383.P3760520774450729325

namespace A005383

/-- `∩[A057920(n+1), A064519(n+1)]` -/
def P3760520774450729325.Spec : Prop :=
  ∀ n, (P3760520774450729325.a n : ℤ) = A005383 (n + 1)

end A005383

/-! ## A005383.P7100724578482342258

`∩[A057920(n+1), A192577(n+1)]`
-/

namespace A005383.P7100724578482342258
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057920 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192577 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A005383.P7100724578482342258

namespace A005383

/-- `∩[A057920(n+1), A192577(n+1)]` -/
def P7100724578482342258.Spec : Prop :=
  ∀ n, (P7100724578482342258.a n : ℤ) = A005383 (n + 1)

end A005383

/-! ## A005383.P16966279759251687444

`2*p?[A174568(n+1)]-1`
-/

namespace A005383.P16966279759251687444
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174568 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - 1

end

end A005383.P16966279759251687444

namespace A005383

/-- `2*p?[A174568(n+1)]-1` -/
def P16966279759251687444.Spec : Prop :=
  ∀ n, P16966279759251687444.a n = A005383 (n + 1)

end A005383

/-! ## A005383.P10864303207146874481

`∩[A048968(n+1), A079149(n+1)]`
-/

namespace A005383.P10864303207146874481
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048968 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079149 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A005383.P10864303207146874481

namespace A005383

/-- `∩[A048968(n+1), A079149(n+1)]` -/
def P10864303207146874481.Spec : Prop :=
  ∀ n, (P10864303207146874481.a n : ℤ) = A005383 (n + 1)

end A005383

/-! ## A005383.P17154350421496895112

`∩[A057920(n+1), A079149(n+1)]`
-/

namespace A005383.P17154350421496895112
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057920 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079149 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A005383.P17154350421496895112

namespace A005383

/-- `∩[A057920(n+1), A079149(n+1)]` -/
def P17154350421496895112.Spec : Prop :=
  ∀ n, (P17154350421496895112.a n : ℤ) = A005383 (n + 1)

end A005383

/-! ## A005383.P16320189050578056431

`∩[A057920(n+1), A164977(n+1)]`
-/

namespace A005383.P16320189050578056431
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057920 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164977 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A005383.P16320189050578056431

namespace A005383

/-- `∩[A057920(n+1), A164977(n+1)]` -/
def P16320189050578056431.Spec : Prop :=
  ∀ n, (P16320189050578056431.a n : ℤ) = A005383 (n + 1)

end A005383

/-! ## A005383.P17454299414334386736

`∩[A048968(n+1), A086983(n+1)]`
-/

namespace A005383.P17454299414334386736
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048968 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086983 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A005383.P17454299414334386736

namespace A005383

/-- `∩[A048968(n+1), A086983(n+1)]` -/
def P17454299414334386736.Spec : Prop :=
  ∀ n, (P17454299414334386736.a n : ℤ) = A005383 (n + 1)

end A005383

/-! ## A005383.P8921195167346858335

`∩[A057920(n+1), A086983(n+1)]`
-/

namespace A005383.P8921195167346858335
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057920 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086983 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A005383.P8921195167346858335

namespace A005383

/-- `∩[A057920(n+1), A086983(n+1)]` -/
def P8921195167346858335.Spec : Prop :=
  ∀ n, (P8921195167346858335.a n : ℤ) = A005383 (n + 1)

end A005383

/-! ## A005383.P17926004346627105635

`∩[A064519(n+1), A086983(n+1)]`
-/

namespace A005383.P17926004346627105635
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064519 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086983 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A005383.P17926004346627105635

namespace A005383

/-- `∩[A064519(n+1), A086983(n+1)]` -/
def P17926004346627105635.Spec : Prop :=
  ∀ n, (P17926004346627105635.a n : ℤ) = A005383 (n + 1)

end A005383

/-! ## A005383.P13222838586067960865

`p?[A048968(n+1)]`
-/

namespace A005383.P13222838586067960865
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048968 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A005383.P13222838586067960865

namespace A005383

/-- `p?[A048968(n+1)]` -/
def P13222838586067960865.Spec : Prop :=
  ∀ n, P13222838586067960865.a n = A005383 (n + 1)

end A005383

/-! ## A005383.P14861557638499046131

`p?[A057920(n+1)]`
-/

namespace A005383.P14861557638499046131
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057920 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A005383.P14861557638499046131

namespace A005383

/-- `p?[A057920(n+1)]` -/
def P14861557638499046131.Spec : Prop :=
  ∀ n, P14861557638499046131.a n = A005383 (n + 1)

end A005383

/-!
# A005384: Sophie Germain primes p: 2p+1 is also prime.

The programs for A005384, the canonical program `A005384.P4537023799186511760` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A005384 has offset 1).

The definition of A005384 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7746 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A005384.P5170297595250948725

`A176045(n+1)-1`
-/

namespace A005384.P5170297595250948725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176045 (n + 1) - 1

end

end A005384.P5170297595250948725

namespace A005384

/-- `A176045(n+1)-1` -/
def P5170297595250948725.Spec : Prop :=
  ∀ n, P5170297595250948725.a n = A005384 (n + 1)

theorem P5170297595250948725.correct : P5170297595250948725.Spec := by
  intro n
  simp only [A005384, Nat.add_sub_cancel, A005384.P5170297595250948725.a, A005384.P4537023799186511760.f1, A005384.P4537023799186511760.a, A176045, A176045.P10228396740254184789.a, A348511, A348511.P16032306020572469586.f1, A348511.P16032306020572469586.f2, A348511.P16032306020572469586.a, A246277, A246277.P3450750564944014413.a, A348717, A348717.P703712104273003584.a, A122111, A122111.P18124015185857335041.a, A243074, A243074.P6910029884229255604.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A005384

/-! ## A005384.P8395863851965254388

`A077065(n+1)/2`
-/

namespace A005384.P8395863851965254388
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A077065 (n + 1) : ℚ) / 2

end

end A005384.P8395863851965254388

namespace A005384

/-- `A077065(n+1)/2` -/
def P8395863851965254388.Spec : Prop :=
  ∀ n, P8395863851965254388.a n = (A005384 (n + 1) : ℚ)

theorem P8395863851965254388.correct : P8395863851965254388.Spec := by
  intro n
  simp only [A005384, Nat.add_sub_cancel, A005384.P8395863851965254388.a, A005384.P4537023799186511760.f1, A005384.P4537023799186511760.a, A077065, A077065.P3431251406781570749.a, A348511, A348511.P16032306020572469586.f1, A348511.P16032306020572469586.f2, A348511.P16032306020572469586.a, A005385, A005385.P12850744102754472242.a, A246277, A246277.P3450750564944014413.a, A348717, A348717.P703712104273003584.a, A122111, A122111.P18124015185857335041.a, A243074, A243074.P6910029884229255604.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A005384

/-! ## A005384.P8464886305371409932

`floor(A005385(n+1)/2)`
-/

namespace A005384.P8464886305371409932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A005385 (n + 1) : ℚ) / 2⌋

end

end A005384.P8464886305371409932

namespace A005384

/-- `floor(A005385(n+1)/2)` -/
def P8464886305371409932.Spec : Prop :=
  ∀ n, P8464886305371409932.a n = A005384 (n + 1)

end A005384

/-! ## A005384.P8431267379562086542

`floor(A175666(n+1)/3)`
-/

namespace A005384.P8431267379562086542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A175666 (n + 1) : ℚ) / 3⌋

end

end A005384.P8431267379562086542

namespace A005384

/-- `floor(A175666(n+1)/3)` -/
def P8431267379562086542.Spec : Prop :=
  ∀ n, P8431267379562086542.a n = A005384 (n + 1)

end A005384

/-! ## A005384.P13244485055182759458

`A074259(n)+a(n-1)` with `a(0)=2`
-/

namespace A005384.P13244485055182759458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A074259 n + a (n - 1)

end

end A005384.P13244485055182759458

namespace A005384

/-- `A074259(n)+a(n-1)` -/
def P13244485055182759458.Spec : Prop :=
  ∀ n, P13244485055182759458.a n = A005384 (n + 1)

end A005384

/-! ## A005384.P3543467717910886340

`A175666(n+1)-A005385(n+1)`
-/

namespace A005384.P3543467717910886340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175666 (n + 1) - A005385 (n + 1)

end

end A005384.P3543467717910886340

namespace A005384

/-- `A175666(n+1)-A005385(n+1)` -/
def P3543467717910886340.Spec : Prop :=
  ∀ n, P3543467717910886340.a n = A005384 (n + 1)

theorem P3543467717910886340.correct : P3543467717910886340.Spec := by
  intro n
  simp only [A005384, Nat.add_sub_cancel, A005384.P3543467717910886340.a, A005384.P4537023799186511760.f1, A005384.P4537023799186511760.a, A005385, A005385.P12850744102754472242.a, A175666, A175666.P11802829545752177848.a, A348511, A348511.P16032306020572469586.f1, A348511.P16032306020572469586.f2, A348511.P16032306020572469586.a, A246277, A246277.P3450750564944014413.a, A348717, A348717.P703712104273003584.a, A122111, A122111.P18124015185857335041.a, A243074, A243074.P6910029884229255604.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A005384

/-! ## A005384.P12860403017213873806

`A156592(n+1)/A005385(n+1)`
-/

namespace A005384.P12860403017213873806
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A156592 (n + 1) : ℚ) / (A005385 (n + 1) : ℚ)

end

end A005384.P12860403017213873806

namespace A005384

/-- `A156592(n+1)/A005385(n+1)` -/
def P12860403017213873806.Spec : Prop :=
  ∀ n, P12860403017213873806.a n = (A005384 (n + 1) : ℚ)

end A005384

/-! ## A005384.P1174188438014425779

`A005385(n+1)%A176045(n+1)`
-/

namespace A005384.P1174188438014425779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A005385 (n + 1)) (A176045 (n + 1))

end

end A005384.P1174188438014425779

namespace A005384

/-- `A005385(n+1)%A176045(n+1)` -/
def P1174188438014425779.Spec : Prop :=
  ∀ n, P1174188438014425779.a n = A005384 (n + 1)

end A005384

/-! ## A005384.P1868787152393823706

`A156592(n+1)%A077065(n+1)`
-/

namespace A005384.P1868787152393823706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A156592 (n + 1)) (A077065 (n + 1))

end

end A005384.P1868787152393823706

namespace A005384

/-- `A156592(n+1)%A077065(n+1)` -/
def P1868787152393823706.Spec : Prop :=
  ∀ n, P1868787152393823706.a n = A005384 (n + 1)

end A005384

/-! ## A005384.P17752639384997972559

`p?[A246857(n+1)]`
-/

namespace A005384.P17752639384997972559
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246857 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A005384.P17752639384997972559

namespace A005384

/-- `p?[A246857(n+1)]` -/
def P17752639384997972559.Spec : Prop :=
  ∀ n, P17752639384997972559.a n = A005384 (n + 1)

end A005384

/-! ## A005384.P4537023799186511760

`p?[A348511(n+1)]`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A005384

/-- `p?[A348511(n+1)]` -/
def P4537023799186511760.Spec : Prop :=
  ∀ n, P4537023799186511760.a n = A005384 (n + 1)

theorem P4537023799186511760.correct : P4537023799186511760.Spec := by
  intro n
  simp only [A005384, Nat.add_sub_cancel]

end A005384

/-! ## A005384.P17193677978564179051

`p?[A364926(n+1)]`
-/

namespace A005384.P17193677978564179051
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364926 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A005384.P17193677978564179051

namespace A005384

/-- `p?[A364926(n+1)]` -/
def P17193677978564179051.Spec : Prop :=
  ∀ n, P17193677978564179051.a n = A005384 (n + 1)

end A005384

/-! ## A005384.P14312933155742825087

`record[A112037(n+2)]`
-/

namespace A005384.P14312933155742825087
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112037 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A005384.P14312933155742825087

namespace A005384

/-- `record[A112037(n+2)]` -/
def P14312933155742825087.Spec : Prop :=
  ∀ n, P14312933155742825087.a n = A005384 (n + 1)

end A005384

/-! ## A005384.P9238766052609385319

`p?[A259973(n+1)]`
-/

namespace A005384.P9238766052609385319
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259973 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A005384.P9238766052609385319

namespace A005384

/-- `p?[A259973(n+1)]` -/
def P9238766052609385319.Spec : Prop :=
  ∀ n, P9238766052609385319.a n = A005384 (n + 1)

end A005384

/-! ## A005384.P543150987684276699

`∩[A073485(n+1), A246857(n+1)]`
-/

namespace A005384.P543150987684276699
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073485 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246857 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A005384.P543150987684276699

namespace A005384

/-- `∩[A073485(n+1), A246857(n+1)]` -/
def P543150987684276699.Spec : Prop :=
  ∀ n, (P543150987684276699.a n : ℤ) = A005384 (n + 1)

end A005384

/-! ## A005384.P7418761736089812021

`∩[A073485(n+1), A348511(n+1)]`
-/

namespace A005384.P7418761736089812021
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073485 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348511 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A005384.P7418761736089812021

namespace A005384

/-- `∩[A073485(n+1), A348511(n+1)]` -/
def P7418761736089812021.Spec : Prop :=
  ∀ n, (P7418761736089812021.a n : ℤ) = A005384 (n + 1)

end A005384

/-! ## A005384.P14048865068034610418

`∩[A246857(n+1), A341518(n+1)]`
-/

namespace A005384.P14048865068034610418
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246857 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341518 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A005384.P14048865068034610418

namespace A005384

/-- `∩[A246857(n+1), A341518(n+1)]` -/
def P14048865068034610418.Spec : Prop :=
  ∀ n, (P14048865068034610418.a n : ℤ) = A005384 (n + 1)

end A005384

/-! ## A005384.P14265834680661789921

`∩[A040083(n+1), A259973(n+1)]`
-/

namespace A005384.P14265834680661789921
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040083 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259973 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A005384.P14265834680661789921

namespace A005384

/-- `∩[A040083(n+1), A259973(n+1)]` -/
def P14265834680661789921.Spec : Prop :=
  ∀ n, (P14265834680661789921.a n : ℤ) = A005384 (n + 1)

end A005384

/-! ## A005384.P14900605994401983961

`∩[A040049(n+1), A348511(n+1)]`
-/

namespace A005384.P14900605994401983961
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040049 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348511 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A005384.P14900605994401983961

namespace A005384

/-- `∩[A040049(n+1), A348511(n+1)]` -/
def P14900605994401983961.Spec : Prop :=
  ∀ n, (P14900605994401983961.a n : ℤ) = A005384 (n + 1)

end A005384

/-! ## A005384.P15958405776737103724

`∩[A009087(n+1), A246857(n+1)]`
-/

namespace A005384.P15958405776737103724
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009087 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246857 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A005384.P15958405776737103724

namespace A005384

/-- `∩[A009087(n+1), A246857(n+1)]` -/
def P15958405776737103724.Spec : Prop :=
  ∀ n, (P15958405776737103724.a n : ℤ) = A005384 (n + 1)

end A005384

/-! ## A005384.P11883542045325056517

`p?[floor(p?[2*n+1]/2)]`
-/

namespace A005384.P11883542045325056517
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n) : ℚ) / 2⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A005384.P11883542045325056517

namespace A005384

/-- `p?[floor(p?[2*n+1]/2)]` -/
def P11883542045325056517.Spec : Prop :=
  ∀ n, P11883542045325056517.a n = A005384 (n + 1)

end A005384

/-!
# A005385: Safe primes p: (p-1)/2 is also prime.

The programs for A005385, the canonical program `A005385.P12850744102754472242` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A005385 has offset 1).

The definition of A005385 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A005384, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A005385.P12850744102754472242

`2*A005384(n+1)+1`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A005385

/-- `2*A005384(n+1)+1` -/
def P12850744102754472242.Spec : Prop :=
  ∀ n, P12850744102754472242.a n = A005385 (n + 1)

theorem P12850744102754472242.correct : P12850744102754472242.Spec := by
  intro n
  simp only [A005385, Nat.add_sub_cancel]

end A005385

/-! ## A005385.P10064977618442680496

`A077065(n+1)+1`
-/

namespace A005385.P10064977618442680496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077065 (n + 1) + 1

end

end A005385.P10064977618442680496

namespace A005385

/-- `A077065(n+1)+1` -/
def P10064977618442680496.Spec : Prop :=
  ∀ n, P10064977618442680496.a n = A005385 (n + 1)

theorem P10064977618442680496.correct : P10064977618442680496.Spec := by
  intro n
  simp only [A005385, Nat.add_sub_cancel, A005385.P10064977618442680496.a, A005385.P12850744102754472242.a, A005384, A005384.P4537023799186511760.f1, A005384.P4537023799186511760.a, A077065, A077065.P3431251406781570749.a, A348511, A348511.P16032306020572469586.f1, A348511.P16032306020572469586.f2, A348511.P16032306020572469586.a, A246277, A246277.P3450750564944014413.a, A348717, A348717.P703712104273003584.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A005385

/-! ## A005385.P17176942320782221553

`2*A176045(n+1)-1`
-/

namespace A005385.P17176942320782221553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A176045 (n + 1) - 1

end

end A005385.P17176942320782221553

namespace A005385

/-- `2*A176045(n+1)-1` -/
def P17176942320782221553.Spec : Prop :=
  ∀ n, P17176942320782221553.a n = A005385 (n + 1)

theorem P17176942320782221553.correct : P17176942320782221553.Spec := by
  intro n
  simp only [A005385, Nat.add_sub_cancel, A005385.P17176942320782221553.a, A005385.P12850744102754472242.a, A005384, A005384.P4537023799186511760.f1, A005384.P4537023799186511760.a, A176045, A176045.P10228396740254184789.a, A348511, A348511.P16032306020572469586.f1, A348511.P16032306020572469586.f2, A348511.P16032306020572469586.a, A246277, A246277.P3450750564944014413.a, A348717, A348717.P703712104273003584.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A005385

/-! ## A005385.P3044026098262737127

`A059322(n)+a(n-1)` with `a(0)=5`
-/

namespace A005385.P3044026098262737127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [5] fun n a =>
  A059322 n + a (n - 1)

end

end A005385.P3044026098262737127

namespace A005385

/-- `A059322(n)+a(n-1)` -/
def P3044026098262737127.Spec : Prop :=
  ∀ n, P3044026098262737127.a n = A005385 (n + 1)

end A005385

/-! ## A005385.P1342648794141990076

`A176045(n+1)+A005384(n+1)`
-/

namespace A005385.P1342648794141990076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176045 (n + 1) + A005384 (n + 1)

end

end A005385.P1342648794141990076

namespace A005385

/-- `A176045(n+1)+A005384(n+1)` -/
def P1342648794141990076.Spec : Prop :=
  ∀ n, P1342648794141990076.a n = A005385 (n + 1)

theorem P1342648794141990076.correct : P1342648794141990076.Spec := by
  intro n
  simp only [A005385, Nat.add_sub_cancel, A005385.P1342648794141990076.a, A005385.P12850744102754472242.a, A005384, A005384.P4537023799186511760.f1, A005384.P4537023799186511760.a, A176045, A176045.P10228396740254184789.a, A348511, A348511.P16032306020572469586.f1, A348511.P16032306020572469586.f2, A348511.P16032306020572469586.a, A246277, A246277.P3450750564944014413.a, A348717, A348717.P703712104273003584.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A005385

/-! ## A005385.P8236782341090494040

`A175666(n+1)-A005384(n+1)`
-/

namespace A005385.P8236782341090494040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175666 (n + 1) - A005384 (n + 1)

end

end A005385.P8236782341090494040

namespace A005385

/-- `A175666(n+1)-A005384(n+1)` -/
def P8236782341090494040.Spec : Prop :=
  ∀ n, P8236782341090494040.a n = A005385 (n + 1)

theorem P8236782341090494040.correct : P8236782341090494040.Spec := by
  intro n
  simp only [A005385, Nat.add_sub_cancel, A005385.P8236782341090494040.a, A005385.P12850744102754472242.a, A005384, A005384.P4537023799186511760.f1, A005384.P4537023799186511760.a, A175666, A175666.P11802829545752177848.a, A348511, A348511.P16032306020572469586.f1, A348511.P16032306020572469586.f2, A348511.P16032306020572469586.a, A246277, A246277.P3450750564944014413.a, A348717, A348717.P703712104273003584.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A005385

/-! ## A005385.P2238125018601130557

`A156592(n+1)/A005384(n+1)`
-/

namespace A005385.P2238125018601130557
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A156592 (n + 1) : ℚ) / (A005384 (n + 1) : ℚ)

end

end A005385.P2238125018601130557

namespace A005385

/-- `A156592(n+1)/A005384(n+1)` -/
def P2238125018601130557.Spec : Prop :=
  ∀ n, P2238125018601130557.a n = (A005385 (n + 1) : ℚ)

end A005385

/-! ## A005385.P11780568596259088061

`∪[A059455(n+1), A059452(n+1)]`
-/

namespace A005385.P11780568596259088061
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059455 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059452 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A005385.P11780568596259088061

namespace A005385

/-- `∪[A059455(n+1), A059452(n+1)]` -/
def P11780568596259088061.Spec : Prop :=
  ∀ n, (P11780568596259088061.a n : ℤ) = A005385 (n + 1)

end A005385

/-! ## A005385.P18030445546424035507

`∪[A269454(n+1), A101789(n+1)]`
-/

namespace A005385.P18030445546424035507
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269454 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101789 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A005385.P18030445546424035507

namespace A005385

/-- `∪[A269454(n+1), A101789(n+1)]` -/
def P18030445546424035507.Spec : Prop :=
  ∀ n, (P18030445546424035507.a n : ℤ) = A005385 (n + 1)

end A005385

/-! ## A005385.P13313911039685270639

`A077068(n+1)-A232342(n+1)+1`
-/

namespace A005385.P13313911039685270639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077068 (n + 1) - A232342 (n + 1) + 1

end

end A005385.P13313911039685270639

namespace A005385

/-- `A077068(n+1)-A232342(n+1)+1` -/
def P13313911039685270639.Spec : Prop :=
  ∀ n, P13313911039685270639.a n = A005385 (n + 1)

theorem P13313911039685270639.correct : P13313911039685270639.Spec := by
  intro n
  simp only [A005385, Nat.add_sub_cancel, A005385.P13313911039685270639.a, A005385.P12850744102754472242.a, A005384, A005384.P4537023799186511760.f1, A005384.P4537023799186511760.a, A077068, A077068.P14869786235870196485.a, A232342, A232342.P12753495415627519153.a, A005383, A005383.P14491179252099632441.a, A077065, A077065.P3431251406781570749.a, A348511, A348511.P16032306020572469586.f1, A348511.P16032306020572469586.f2, A348511.P16032306020572469586.a, A005382, A005382.P6052769528681184091.f1, A005382.P6052769528681184091.f2, A005382.P6052769528681184091.a, A246277, A246277.P3450750564944014413.a, A232667, A232667.P15325416728092359477.f1, A232667.P15325416728092359477.f2, A232667.P15325416728092359477.a, A234999, A234999.P3604876205550161988.f1, A234999.P3604876205550161988.a, A348717, A348717.P703712104273003584.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A005385

/-! ## A005385.P14468002601799239779

`A194593(n+2)/2`
-/

namespace A005385.P14468002601799239779
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A194593 (n + 2) : ℚ) / 2

end

end A005385.P14468002601799239779

namespace A005385

/-- `A194593(n+2)/2` -/
def P14468002601799239779.Spec : Prop :=
  ∀ n, P14468002601799239779.a n = (A005385 (n + 1) : ℚ)

end A005385

/-! ## A005385.P9620253872463401615

`A005384(n+1)+A054977(n+1)+A005384(n+1)`
-/

namespace A005385.P9620253872463401615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005384 (n + 1) + (A054977 (n + 1) + A005384 (n + 1))

end

end A005385.P9620253872463401615

namespace A005385

/-- `A005384(n+1)+A054977(n+1)+A005384(n+1)` -/
def P9620253872463401615.Spec : Prop :=
  ∀ n, P9620253872463401615.a n = A005385 (n + 1)

end A005385

/-! ## A005385.P10981268476817982913

`A079148(n+3)`
-/

namespace A005385.P10981268476817982913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079148 (n + 3)

end

end A005385.P10981268476817982913

namespace A005385

/-- `A079148(n+3)` -/
def P10981268476817982913.Spec : Prop :=
  ∀ n, P10981268476817982913.a n = A005385 (n + 1)

end A005385

/-! ## A005385.P5575972517686851447

`∩[A048184(n+1), A065966(n+1)]`
-/

namespace A005385.P5575972517686851447
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048184 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065966 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A005385.P5575972517686851447

namespace A005385

/-- `∩[A048184(n+1), A065966(n+1)]` -/
def P5575972517686851447.Spec : Prop :=
  ∀ n, (P5575972517686851447.a n : ℤ) = A005385 (n + 1)

end A005385

/-! ## A005385.P14584996243987758555

`∩[A065966(n+1), A084441(n+1)]`
-/

namespace A005385.P14584996243987758555
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065966 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084441 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A005385.P14584996243987758555

namespace A005385

/-- `∩[A065966(n+1), A084441(n+1)]` -/
def P14584996243987758555.Spec : Prop :=
  ∀ n, (P14584996243987758555.a n : ℤ) = A005385 (n + 1)

end A005385

/-! ## A005385.P15643294003219470938

`∩[A303705(n+1), A065966(n+1)]`
-/

namespace A005385.P15643294003219470938
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303705 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065966 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A005385.P15643294003219470938

namespace A005385

/-- `∩[A303705(n+1), A065966(n+1)]` -/
def P15643294003219470938.Spec : Prop :=
  ∀ n, (P15643294003219470938.a n : ℤ) = A005385 (n + 1)

end A005385

/-! ## A005385.P10989134446811835451

`∩[A065966(n+1), A079149(n+1)]`
-/

namespace A005385.P10989134446811835451
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065966 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079149 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A005385.P10989134446811835451

namespace A005385

/-- `∩[A065966(n+1), A079149(n+1)]` -/
def P10989134446811835451.Spec : Prop :=
  ∀ n, (P10989134446811835451.a n : ℤ) = A005385 (n + 1)

end A005385

/-! ## A005385.P2208798662097048879

`∩[A065966(n+1), A074781(n+1)]`
-/

namespace A005385.P2208798662097048879
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065966 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074781 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A005385.P2208798662097048879

namespace A005385

/-- `∩[A065966(n+1), A074781(n+1)]` -/
def P2208798662097048879.Spec : Prop :=
  ∀ n, (P2208798662097048879.a n : ℤ) = A005385 (n + 1)

end A005385

/-! ## A005385.P7653466244456571879

`∩[A065966(n+1), A077500(n+1)]`
-/

namespace A005385.P7653466244456571879
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065966 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077500 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A005385.P7653466244456571879

namespace A005385

/-- `∩[A065966(n+1), A077500(n+1)]` -/
def P7653466244456571879.Spec : Prop :=
  ∀ n, (P7653466244456571879.a n : ℤ) = A005385 (n + 1)

end A005385

/-! ## A005385.P9818031986707024777

`p?[A065966(n+1)]`
-/

namespace A005385.P9818031986707024777
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065966 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A005385.P9818031986707024777

namespace A005385

/-- `p?[A065966(n+1)]` -/
def P9818031986707024777.Spec : Prop :=
  ∀ n, P9818031986707024777.a n = A005385 (n + 1)

end A005385

/-!
# A005386: Area of n-th triple of squares around a triangle.

The programs for A005386, the canonical program `A005386.P16618846221246300221` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A005386 has offset 1).

The definition of A005386 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A005386.P18107048308392649490

`ogf((1-x)/(1-4x-4x^2+x^3))`
-/

namespace A005386.P18107048308392649490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -1] [1, -4, -4, 1] n

end

end A005386.P18107048308392649490

namespace A005386

/-- `ogf((1-x)/(1-4x-4x^2+x^3))` -/
def P18107048308392649490.Spec : Prop :=
  ∀ n, P18107048308392649490.a n = A005386 (n + 1)

end A005386

/-! ## A005386.P16618846221246300221

`4*a(n-1)+4*a(n-2)-a(n-3)` with `a(0)=1, a(1)=3, a(2)=16`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A005386

/-- `4*a(n-1)+4*a(n-2)-a(n-3)` -/
def P16618846221246300221.Spec : Prop :=
  ∀ n, P16618846221246300221.a n = A005386 (n + 1)

theorem P16618846221246300221.correct : P16618846221246300221.Spec := by
  intro n
  simp only [A005386, Nat.add_sub_cancel]

end A005386

/-! ## A005386.P13760183555153495646

`4*(a(n-1)+a(n-2))-a(n-3)` with `a(0)=1, a(1)=3, a(2)=16`
-/

namespace A005386.P13760183555153495646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3, 16] fun n a =>
  4 * (a (n - 1) + a (n - 2)) - a (n - 3)

end

end A005386.P13760183555153495646

namespace A005386

/-- `4*(a(n-1)+a(n-2))-a(n-3)` -/
def P13760183555153495646.Spec : Prop :=
  ∀ n, P13760183555153495646.a n = A005386 (n + 1)

theorem P13760183555153495646.correct : P13760183555153495646.Spec := by
  intro n
  simp only [A005386, Nat.add_sub_cancel, A005386.P13760183555153495646.a, A005386.P16618846221246300221.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A005386

/-! ## A005386.P2183640626948003519

`abs(∑[A101463(2*n)])`
-/

namespace A005386.P2183640626948003519
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101463 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∑ j ∈ Finset.range (n + 1), f1 j|

end

end A005386.P2183640626948003519

namespace A005386

/-- `abs(∑[A101463(2*n)])` -/
def P2183640626948003519.Spec : Prop :=
  ∀ n, P2183640626948003519.a n = A005386 (n + 1)

end A005386

/-! ## A005386.P184060449602710596

`A004253(n+1)-a(n-1)` with `a(0)=1`
-/

namespace A005386.P184060449602710596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A004253 (n + 1) - a (n - 1)

end

end A005386.P184060449602710596

namespace A005386

/-- `A004253(n+1)-a(n-1)` -/
def P184060449602710596.Spec : Prop :=
  ∀ n, P184060449602710596.a n = A005386 (n + 1)

end A005386

/-! ## A005386.P5416689351933829725

`A136211(2*n)-a(n-1)` with `a(0)=1`
-/

namespace A005386.P5416689351933829725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A136211 (2 * n) - a (n - 1)

end

end A005386.P5416689351933829725

namespace A005386

/-- `A136211(2*n)-a(n-1)` -/
def P5416689351933829725.Spec : Prop :=
  ∀ n, P5416689351933829725.a n = A005386 (n + 1)

end A005386

/-! ## A005386.P16874960277660325671

`A003769(A028310(n))^ceil(sin(n)²)`
-/

namespace A005386.P16874960277660325671
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003769 (A028310 n).toNat : ℚ) ^ (⌈Real.sin (n : ℝ) ^ 2⌉ : ℤ)

end

end A005386.P16874960277660325671

namespace A005386

/-- `A003769(A028310(n))^ceil(sin(n)²)` -/
def P16874960277660325671.Spec : Prop :=
  ∀ n, P16874960277660325671.a n = (A005386 (n + 1) : ℚ)

end A005386

/-! ## A005386.P7903299989021431694

`A003769(A028310(n%a(n-1)))` with `a(0)=1`
-/

namespace A005386.P7903299989021431694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A003769 (A028310 (Int.tmod (n : ℤ) (a (n - 1))).toNat).toNat

end

end A005386.P7903299989021431694

namespace A005386

/-- `A003769(A028310(n%a(n-1)))` -/
def P7903299989021431694.Spec : Prop :=
  ∀ n, P7903299989021431694.a n = A005386 (n + 1)

end A005386

/-! ## A005386.P8949272645202372335

`A003769(A028310(n))-A000038(n)`
-/

namespace A005386.P8949272645202372335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003769 (A028310 n).toNat - A000038 n

end

end A005386.P8949272645202372335

namespace A005386

/-- `A003769(A028310(n))-A000038(n)` -/
def P8949272645202372335.Spec : Prop :=
  ∀ n, P8949272645202372335.a n = A005386 (n + 1)

end A005386

/-! ## A005386.P4225287516288541663

`A136211(A028310(n))²*A010684(n)`
-/

namespace A005386.P4225287516288541663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136211 (A028310 n).toNat ^ 2 * A010684 n

end

end A005386.P4225287516288541663

namespace A005386

/-- `A136211(A028310(n))²*A010684(n)` -/
def P4225287516288541663.Spec : Prop :=
  ∀ n, P4225287516288541663.a n = A005386 (n + 1)

end A005386

/-! ## A005386.P9918371022245316269

`A030195(n+1)/A000244(n)*A030195(n+1)`
-/

namespace A005386.P9918371022245316269
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A030195 (n + 1) : ℚ) / (A000244 n : ℚ) * (A030195 (n + 1) : ℚ)

end

end A005386.P9918371022245316269

namespace A005386

/-- `A030195(n+1)/A000244(n)*A030195(n+1)` -/
def P9918371022245316269.Spec : Prop :=
  ∀ n, P9918371022245316269.a n = (A005386 (n + 1) : ℚ)

end A005386

/-! ## A005386.P9509847339146040464

`A136210(n+1)/A136211(n+1)*A099025(n)`
-/

namespace A005386.P9509847339146040464
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A136210 (n + 1) : ℚ) / (A136211 (n + 1) : ℚ) * (A099025 n : ℚ)

end

end A005386.P9509847339146040464

namespace A005386

/-- `A136210(n+1)/A136211(n+1)*A099025(n)` -/
def P9509847339146040464.Spec : Prop :=
  ∀ n, P9509847339146040464.a n = (A005386 (n + 1) : ℚ)

end A005386

/-! ## A005386.P4323517343598613603

`(A136211(n+2)-A136210(n+2))*A136210(n+1)`
-/

namespace A005386.P4323517343598613603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A136211 (n + 2) - A136210 (n + 2)) * A136210 (n + 1)

end

end A005386.P4323517343598613603

namespace A005386

/-- `(A136211(n+2)-A136210(n+2))*A136210(n+1)` -/
def P4323517343598613603.Spec : Prop :=
  ∀ n, P4323517343598613603.a n = A005386 (n + 1)

end A005386

/-! ## A005386.P4153036673956596482

`Δ[A004254(n)]-a(n-1)` with `a(0)=1`
-/

namespace A005386.P4153036673956596482
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004254 n

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  f1 (n + 1) - f1 n - a (n - 1)

end

end A005386.P4153036673956596482

namespace A005386

/-- `Δ[A004254(n)]-a(n-1)` -/
def P4153036673956596482.Spec : Prop :=
  ∀ n, P4153036673956596482.a n = A005386 (n + 1)

end A005386

/-! ## A005386.P16251381531778213524

`A136210(n+1)²/A010684(n)`
-/

namespace A005386.P16251381531778213524
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A136210 (n + 1) ^ 2 : ℚ) / (A010684 n : ℚ)

end

end A005386.P16251381531778213524

namespace A005386

/-- `A136210(n+1)²/A010684(n)` -/
def P16251381531778213524.Spec : Prop :=
  ∀ n, P16251381531778213524.a n = (A005386 (n + 1) : ℚ)

end A005386

/-! ## A005386.P6522682779215015213

`A004253(n+2)-A003769(n+1)`
-/

namespace A005386.P6522682779215015213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004253 (n + 2) - A003769 (n + 1)

end

end A005386.P6522682779215015213

namespace A005386

/-- `A004253(n+2)-A003769(n+1)` -/
def P6522682779215015213.Spec : Prop :=
  ∀ n, P6522682779215015213.a n = A005386 (n + 1)

end A005386

/-! ## A005386.P14972281125992661233

`A003769(A028310(n))%A003501(n)`
-/

namespace A005386.P14972281125992661233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A003769 (A028310 n).toNat) (A003501 n)

end

end A005386.P14972281125992661233

namespace A005386

/-- `A003769(A028310(n))%A003501(n)` -/
def P14972281125992661233.Spec : Prop :=
  ∀ n, P14972281125992661233.a n = A005386 (n + 1)

end A005386

/-! ## A005386.P8153666131136325854

`A099025(n)+A099025(n)-A004254(n+1)`
-/

namespace A005386.P8153666131136325854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099025 n + (A099025 n - A004254 (n + 1))

end

end A005386.P8153666131136325854

namespace A005386

/-- `A099025(n)+A099025(n)-A004254(n+1)` -/
def P8153666131136325854.Spec : Prop :=
  ∀ n, P8153666131136325854.a n = A005386 (n + 1)

end A005386

/-! ## A005386.P8401867181656087235

`A004253(n+2)+A099025(n)-A099025(n+1)`
-/

namespace A005386.P8401867181656087235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004253 (n + 2) + (A099025 n - A099025 (n + 1))

end

end A005386.P8401867181656087235

namespace A005386

/-- `A004253(n+2)+A099025(n)-A099025(n+1)` -/
def P8401867181656087235.Spec : Prop :=
  ∀ n, P8401867181656087235.a n = A005386 (n + 1)

end A005386

/-! ## A005386.P4790768918704767542

`A004253(n+2)-A136210(n+2)*A136211(n+1)`
-/

namespace A005386.P4790768918704767542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004253 (n + 2) - A136210 (n + 2) * A136211 (n + 1)

end

end A005386.P4790768918704767542

namespace A005386

/-- `A004253(n+2)-A136210(n+2)*A136211(n+1)` -/
def P4790768918704767542.Spec : Prop :=
  ∀ n, P4790768918704767542.a n = A005386 (n + 1)

end A005386

/-!
# A005387: Number of partitional matroids on n elements.

The programs for A005387, there is no canonical definition to state claims against.
-/

/-! ## A005387.P13100536126094967753

`∑{#}[n, C(n, #)*2^(n-#)*A327006(#+1)]`
-/

namespace A005387.P13100536126094967753
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), (Nat.choose n k : ℚ) * (2 : ℚ) ^ ((n : ℤ) - (k : ℤ) : ℤ) * (A327006 (k + 1) : ℚ)

end

end A005387.P13100536126094967753

/-! ## A005387.P6207595967528097525

`A214701(∑[A059284(n)])`
-/

namespace A005387.P6207595967528097525
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059284 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214701 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A005387.P6207595967528097525

/-!
# A005388: Number of degree-n permutations of order a power of 2.

The programs for A005388, there is no canonical definition to state claims against.
-/

/-! ## A005388.P16380524293236525512

`A053498(n)%A123277(n)²`
-/

namespace A005388.P16380524293236525512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A053498 n) (A123277 (n + 34) ^ 2)

end

end A005388.P16380524293236525512

/-!
# A005389: Number of Hamiltonian circuits on 2n times 4 rectangle.

The programs for A005389, the canonical program `A005389.P15386601127605430269` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A005389 has offset 1).

The definition of A005389 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A005389.P17358971940609034567

`ogf((1-2x-x^2)/(1-8x+10x^2+x^4))`
-/

namespace A005389.P17358971940609034567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -2, -1] [1, -8, 10, 0, 1] n

end

end A005389.P17358971940609034567

namespace A005389

/-- `ogf((1-2x-x^2)/(1-8x+10x^2+x^4))` -/
def P17358971940609034567.Spec : Prop :=
  ∀ n, P17358971940609034567.a n = A005389 (n + 1)

end A005389

/-! ## A005389.P15386601127605430269

`8*a(n-1)-10*a(n-2)-a(n-4)` with `a(0)=1, a(1)=6, a(2)=37, a(3)=236`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A005389

/-- `8*a(n-1)-10*a(n-2)-a(n-4)` -/
def P15386601127605430269.Spec : Prop :=
  ∀ n, P15386601127605430269.a n = A005389 (n + 1)

theorem P15386601127605430269.correct : P15386601127605430269.Spec := by
  intro n
  simp only [A005389, Nat.add_sub_cancel]

end A005389

/-! ## A005389.P7695673498866829019

`A006864(2*(n+1))`
-/

namespace A005389.P7695673498866829019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006864 (2 * (n + 1))

end

end A005389.P7695673498866829019

namespace A005389

/-- `A006864(2*(n+1))` -/
def P7695673498866829019.Spec : Prop :=
  ∀ n, P7695673498866829019.a n = A005389 (n + 1)

end A005389

/-! ## A005389.P18130320513172398859

`record[A006864(n+1)^and(1, n)]`
-/

namespace A005389.P18130320513172398859
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006864 (n + 1) ^ Nat.land 1 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A005389.P18130320513172398859

namespace A005389

/-- `record[A006864(n+1)^and(1, n)]` -/
def P18130320513172398859.Spec : Prop :=
  ∀ n, P18130320513172398859.a n = A005389 (n + 1)

end A005389

/-! ## A005389.P8646667154634927730

`record[A006864(A133265(n))]`
-/

namespace A005389.P8646667154634927730
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006864 (A133265 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A005389.P8646667154634927730

namespace A005389

/-- `record[A006864(A133265(n))]` -/
def P8646667154634927730.Spec : Prop :=
  ∀ n, P8646667154634927730.a n = A005389 (n + 1)

end A005389

/-! ## A005389.P1940848959827576566

`record[A006864(A014681(n+1))]`
-/

namespace A005389.P1940848959827576566
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006864 (A014681 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A005389.P1940848959827576566

namespace A005389

/-- `record[A006864(A014681(n+1))]` -/
def P1940848959827576566.Spec : Prop :=
  ∀ n, P1940848959827576566.a n = A005389 (n + 1)

end A005389

/-! ## A005389.P16397153456486815483

`record[A006864(A110090(n+2))]`
-/

namespace A005389.P16397153456486815483
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006864 (A110090 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A005389.P16397153456486815483

namespace A005389

/-- `record[A006864(A110090(n+2))]` -/
def P16397153456486815483.Spec : Prop :=
  ∀ n, P16397153456486815483.a n = A005389 (n + 1)

end A005389

/-! ## A005389.P1961973064906347311

`record[A006864(2*A028920(n))]`
-/

namespace A005389.P1961973064906347311
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006864 (2 * A028920 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A005389.P1961973064906347311

namespace A005389

/-- `record[A006864(2*A028920(n))]` -/
def P1961973064906347311.Spec : Prop :=
  ∀ n, P1961973064906347311.a n = A005389 (n + 1)

end A005389

/-! ## A005389.P7930909134796618156

`record[A006864(2*A133310(n))]`
-/

namespace A005389.P7930909134796618156
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006864 (2 * A133310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A005389.P7930909134796618156

namespace A005389

/-- `record[A006864(2*A133310(n))]` -/
def P7930909134796618156.Spec : Prop :=
  ∀ n, P7930909134796618156.a n = A005389 (n + 1)

end A005389

/-! ## A005389.P5341602038471829018

`record[A006864(2*A193739(n))]`
-/

namespace A005389.P5341602038471829018
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006864 (2 * A193739 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A005389.P5341602038471829018

namespace A005389

/-- `record[A006864(2*A193739(n))]` -/
def P5341602038471829018.Spec : Prop :=
  ∀ n, P5341602038471829018.a n = A005389 (n + 1)

end A005389

/-! ## A005389.P10499723775621807927

`record[A006864(2*A267806(n))]`
-/

namespace A005389.P10499723775621807927
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006864 (2 * A267806 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A005389.P10499723775621807927

namespace A005389

/-- `record[A006864(2*A267806(n))]` -/
def P10499723775621807927.Spec : Prop :=
  ∀ n, P10499723775621807927.a n = A005389 (n + 1)

end A005389

/-! ## A005389.P6459484127429474435

`record[∑[A181688(n+1)]/A053381(n)]`
-/

namespace A005389.P6459484127429474435
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181688 (n + 1)

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℤ) : ℚ) / (A053381 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A005389.P6459484127429474435

namespace A005389

/-- `record[∑[A181688(n+1)]/A053381(n)]` -/
def P6459484127429474435.Spec : Prop :=
  ∀ n, P6459484127429474435.a n = (A005389 (n + 1) : ℚ)

end A005389

/-! ## A005389.P12890755127809675689

`A180488(2*(n+1))-A180488(2*n+1)`
-/

namespace A005389.P12890755127809675689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180488 (2 * (n + 1)) - A180488 (2 * n + 1)

end

end A005389.P12890755127809675689

namespace A005389

/-- `A180488(2*(n+1))-A180488(2*n+1)` -/
def P12890755127809675689.Spec : Prop :=
  ∀ n, P12890755127809675689.a n = A005389 (n + 1)

end A005389

/-! ## A005389.P466453692874144021

`A006864(A103517(n))+A000007(n)`
-/

namespace A005389.P466453692874144021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006864 (A103517 n).toNat + A000007 n

end

end A005389.P466453692874144021

namespace A005389

/-- `A006864(A103517(n))+A000007(n)` -/
def P466453692874144021.Spec : Prop :=
  ∀ n, P466453692874144021.a n = A005389 (n + 1)

end A005389

/-! ## A005389.P10286964401529579498

`A180488(2*(n+1))+A057428(n+1)*A180488(2*n+1)`
-/

namespace A005389.P10286964401529579498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180488 (2 * (n + 1)) + A057428 (n + 1) * A180488 (2 * n + 1)

end

end A005389.P10286964401529579498

namespace A005389

/-- `A180488(2*(n+1))+A057428(n+1)*A180488(2*n+1)` -/
def P10286964401529579498.Spec : Prop :=
  ∀ n, P10286964401529579498.a n = A005389 (n + 1)

end A005389

/-!
# A005390: Number of Hamiltonian circuits on 2n X 6 rectangle.

The programs for A005390, there is no canonical definition to state claims against.
-/

/-! ## A005390.P2437093582187374111

`A145401(2*(n+1))`
-/

namespace A005390.P2437093582187374111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145401 (2 * (n + 1))

end

end A005390.P2437093582187374111

/-! ## A005390.P3879917145588497508

`record[A145401(A133265(n))]`
-/

namespace A005390.P3879917145588497508
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145401 (A133265 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A005390.P3879917145588497508

/-! ## A005390.P14084519094475726670

`record[A145401(A000265(n+1)+1)]`
-/

namespace A005390.P14084519094475726670
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145401 (A000265 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A005390.P14084519094475726670

/-! ## A005390.P13047918694828619667

`record[A145401(n+1)^A062157(n)]`
-/

namespace A005390.P13047918694828619667
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A145401 (n + 1) : ℚ) ^ (A062157 n : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A005390.P13047918694828619667

/-! ## A005390.P7636573323828634630

`record[gcd(A035363(n), A145401(n+1))]`
-/

namespace A005390.P7636573323828634630
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A035363 n) (A145401 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A005390.P7636573323828634630

/-! ## A005390.P15678694945966564205

`record[A145401(n+2)/A062157(n+1)]`
-/

namespace A005390.P15678694945966564205
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A145401 (n + 2) : ℚ) / (A062157 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A005390.P15678694945966564205

/-!
# A005391: Number of Hamiltonian circuits on 2n X 8 rectangle.

The programs for A005391, there is no canonical definition to state claims against.
-/

/-! ## A005391.P1694790947847345736

`A145418(2*(n+1))`
-/

namespace A005391.P1694790947847345736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145418 (2 * (n + 1))

end

end A005391.P1694790947847345736

/-! ## A005391.P17414422785083661606

`record[A145418(n+1)^A062157(n)]`
-/

namespace A005391.P17414422785083661606
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A145418 (n + 1) : ℚ) ^ (A062157 n : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A005391.P17414422785083661606

/-! ## A005391.P17379722677763636875

`record[A145418(n+2)/A062157(n+1)]`
-/

namespace A005391.P17379722677763636875
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A145418 (n + 2) : ℚ) / (A062157 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A005391.P17379722677763636875

/-! ## A005391.P13879823777885636909

`A145418(A103517(n))+A000007(n)`
-/

namespace A005391.P13879823777885636909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145418 (A103517 n).toNat + A000007 n

end

end A005391.P13879823777885636909

/-! ## A005391.P15231354351679959507

`A145418(A103517(n))^(A000040(n+1)%2)`
-/

namespace A005391.P15231354351679959507
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A145418 (A103517 n).toNat : ℚ) ^ (Int.tmod (A000040 (n + 1)) 2 : ℤ)

end

end A005391.P15231354351679959507

/-!
# A005392: Coefficients of high-temperature series for specific heat of spin-1/2 Ising model on a cristobalite lattice.

The programs for A005392, there is no canonical definition to state claims against.
-/

/-! ## A005392.P1636868701459360613

`A000005(A209897(3*n+2))-A101225(n+1)`
-/

namespace A005392.P1636868701459360613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A209897 (3 * n + 2)).toNat - A101225 (n + 1)

end

end A005392.P1636868701459360613

/-!
# A005393: Leading term of Stirling's approximation to n!, sqrt(2*Pi)*n^(n+(1/2))/e^n, rounded down.

The programs for A005393, the canonical program `A005393.P1815330829347337515` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A005393 has offset 0).

The definition of A005393 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A005393.P1815330829347337515

`floor(sqrt(2*π)*n^(n+1/2)/e^n)`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A005393

/-- `floor(sqrt(2*π)*n^(n+1/2)/e^n)` -/
def P1815330829347337515.Spec : Prop :=
  ∀ n, P1815330829347337515.a n = A005393 n

theorem P1815330829347337515.correct : P1815330829347337515.Spec := by
  intro n
  simp only [A005393]

end A005393

/-! ## A005393.P14425520460118436878

`(A005395(n)-1)%n!`
-/

namespace A005393.P14425520460118436878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A005395 n - 1) (Nat.factorial n : ℤ)

end

end A005393.P14425520460118436878

namespace A005393

/-- `(A005395(n)-1)%n!` -/
def P14425520460118436878.Spec : Prop :=
  ∀ n, P14425520460118436878.a n = A005393 n

end A005393

/-! ## A005393.P6947217394214791445

`A057428(n)+A005395(n)`
-/

namespace A005393.P6947217394214791445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 n + A005395 n

end

end A005393.P6947217394214791445

namespace A005393

/-- `A057428(n)+A005395(n)` -/
def P6947217394214791445.Spec : Prop :=
  ∀ n, P6947217394214791445.a n = A005393 n

end A005393

/-! ## A005393.P8466476877839278891

`A005395(n)-A178334(n)`
-/

namespace A005393.P8466476877839278891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005395 n - A178334 n

end

end A005393.P8466476877839278891

namespace A005393

/-- `A005395(n)-A178334(n)` -/
def P8466476877839278891.Spec : Prop :=
  ∀ n, P8466476877839278891.a n = A005393 n

end A005393

/-! ## A005393.P8389525726489650457

`A005395(n)-char[A037027(n)]`
-/

namespace A005393.P8389525726489650457
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037027 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005395 n - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A005393.P8389525726489650457

namespace A005393

/-- `A005395(n)-char[A037027(n)]` -/
def P8389525726489650457.Spec : Prop :=
  ∀ n, P8389525726489650457.a n = A005393 n

end A005393

/-! ## A005393.P2388117623434794383

`A005395(n)-char[A344180(n)]`
-/

namespace A005393.P2388117623434794383
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344180 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005395 n - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A005393.P2388117623434794383

namespace A005393

/-- `A005395(n)-char[A344180(n)]` -/
def P2388117623434794383.Spec : Prop :=
  ∀ n, P2388117623434794383.a n = A005393 n

end A005393

/-! ## A005393.P7297670820179722253

`A005395(A065033(2*n))-1`
-/

namespace A005393.P7297670820179722253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005395 (A065033 (2 * n)).toNat - 1

end

end A005393.P7297670820179722253

namespace A005393

/-- `A005395(A065033(2*n))-1` -/
def P7297670820179722253.Spec : Prop :=
  ∀ n, P7297670820179722253.a n = A005393 n

end A005393

/-! ## A005393.P8983132729139210723

`A005395(n)-char[A094727(n+1)]`
-/

namespace A005393.P8983132729139210723
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094727 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005395 n - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A005393.P8983132729139210723

namespace A005393

/-- `A005395(n)-char[A094727(n+1)]` -/
def P8983132729139210723.Spec : Prop :=
  ∀ n, P8983132729139210723.a n = A005393 n

end A005393

/-! ## A005393.P9818367207337823643

`A005395(n)-A001221(A084400(n+1))`
-/

namespace A005393.P9818367207337823643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005395 n - A001221 (A084400 (n + 1)).toNat

end

end A005393.P9818367207337823643

namespace A005393

/-- `A005395(n)-A001221(A084400(n+1))` -/
def P9818367207337823643.Spec : Prop :=
  ∀ n, P9818367207337823643.a n = A005393 n

end A005393

/-!
# A005394: Leading term of Stirling's approximation to n!, sqrt(2*Pi)*n^(n+(1/2))/e^n, rounded to nearest integer.

The programs for A005394, the canonical program `A005394.P7108205363105157913` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A005394 has offset 0).

The definition of A005394 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A005394.P7108205363105157913

`round(sqrt(2*π)*exp(-n)*n^(n+1/2))`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A005394

/-- `round(sqrt(2*π)*exp(-n)*n^(n+1/2))` -/
def P7108205363105157913.Spec : Prop :=
  ∀ n, P7108205363105157913.a n = A005394 n

theorem P7108205363105157913.correct : P7108205363105157913.Spec := by
  intro n
  simp only [A005394]

end A005394

/-! ## A005394.P98380100037439627

`n!-A260657(n)`
-/

namespace A005394.P98380100037439627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) - A260657 n

end

end A005394.P98380100037439627

namespace A005394

/-- `n!-A260657(n)` -/
def P98380100037439627.Spec : Prop :=
  ∀ n, P98380100037439627.a n = A005394 n

theorem P98380100037439627.correct : P98380100037439627.Spec := by
  intro n
  simp only [A005394, Nat.add_sub_cancel, A005394.P98380100037439627.a, A005394.P7108205363105157913.a, A260657, A260657.P11255028026321949958.a, A000142, A000142.P3272619076580183195.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A005394

/-! ## A005394.P17633127335994961809

`A000142(n)-A260657(n)`
-/

namespace A005394.P17633127335994961809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 n - A260657 n

end

end A005394.P17633127335994961809

namespace A005394

/-- `A000142(n)-A260657(n)` -/
def P17633127335994961809.Spec : Prop :=
  ∀ n, P17633127335994961809.a n = A005394 n

theorem P17633127335994961809.correct : P17633127335994961809.Spec := by
  intro n
  simp only [A005394, Nat.add_sub_cancel, A005394.P17633127335994961809.a, A005394.P7108205363105157913.a, A000142, A000142.P3272619076580183195.a, A260657, A260657.P11255028026321949958.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A005394

/-! ## A005394.P2466510925595161349

`Δ[A003422(n)]-A260657(n)`
-/

namespace A005394.P2466510925595161349
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003422 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A260657 n

end

end A005394.P2466510925595161349

namespace A005394

/-- `Δ[A003422(n)]-A260657(n)` -/
def P2466510925595161349.Spec : Prop :=
  ∀ n, P2466510925595161349.a n = A005394 n

end A005394

/-! ## A005394.P1888282052937119197

`A047920(A000217(n))-A260657(n)`
-/

namespace A005394.P1888282052937119197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047920 (A000217 n).toNat - A260657 n

end

end A005394.P1888282052937119197

namespace A005394

/-- `A047920(A000217(n))-A260657(n)` -/
def P1888282052937119197.Spec : Prop :=
  ∀ n, P1888282052937119197.a n = A005394 n

end A005394

/-! ## A005394.P1234942921964004519

`A094587(A000124(n))-A260657(n)`
-/

namespace A005394.P1234942921964004519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094587 (A000124 n).toNat - A260657 n

end

end A005394.P1234942921964004519

namespace A005394

/-- `A094587(A000124(n))-A260657(n)` -/
def P1234942921964004519.Spec : Prop :=
  ∀ n, P1234942921964004519.a n = A005394 n

end A005394

/-!
# A005395: Leading term of Stirling's approximation to n!, sqrt(2*Pi)*n^(n+(1/2))/e^n, rounded up.

The programs for A005395, the canonical program `A005395.P2631721986494149008` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A005395 has offset 0).

The definition of A005395 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A005395.P2631721986494149008

`ceil(sqrt(2*π)*n^(n+1/2)/e^n)`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A005395

/-- `ceil(sqrt(2*π)*n^(n+1/2)/e^n)` -/
def P2631721986494149008.Spec : Prop :=
  ∀ n, P2631721986494149008.a n = A005395 n

theorem P2631721986494149008.correct : P2631721986494149008.Spec := by
  intro n
  simp only [A005395]

end A005395

/-! ## A005395.P7882271733886172215

`A178334(n)+A005393(n)`
-/

namespace A005395.P7882271733886172215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178334 n + A005393 n

end

end A005395.P7882271733886172215

namespace A005395

/-- `A178334(n)+A005393(n)` -/
def P7882271733886172215.Spec : Prop :=
  ∀ n, P7882271733886172215.a n = A005395 n

end A005395

/-! ## A005395.P7132703278622436359

`A005393(n)+char[A037027(n)]`
-/

namespace A005395.P7132703278622436359
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037027 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005393 n + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A005395.P7132703278622436359

namespace A005395

/-- `A005393(n)+char[A037027(n)]` -/
def P7132703278622436359.Spec : Prop :=
  ∀ n, P7132703278622436359.a n = A005395 n

end A005395

/-! ## A005395.P10019022741696667553

`A005393(n)+and(1, A078624(n+1))`
-/

namespace A005395.P10019022741696667553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005393 n + Int.land 1 (A078624 (n + 1))

end

end A005395.P10019022741696667553

namespace A005395

/-- `A005393(n)+and(1, A078624(n+1))` -/
def P10019022741696667553.Spec : Prop :=
  ∀ n, P10019022741696667553.a n = A005395 n

end A005395

/-! ## A005395.P6020185147720398664

`A005393(n)+A001221(A000961(n+1))`
-/

namespace A005395.P6020185147720398664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005393 n + A001221 (A000961 (n + 1)).toNat

end

end A005395.P6020185147720398664

namespace A005395

/-- `A005393(n)+A001221(A000961(n+1))` -/
def P6020185147720398664.Spec : Prop :=
  ∀ n, P6020185147720398664.a n = A005395 n

end A005395

/-! ## A005395.P12409096072707764430

`A005393(n)+A001221(A034444(n+1))`
-/

namespace A005395.P12409096072707764430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005393 n + A001221 (A034444 (n + 1)).toNat

end

end A005395.P12409096072707764430

namespace A005395

/-- `A005393(n)+A001221(A034444(n+1))` -/
def P12409096072707764430.Spec : Prop :=
  ∀ n, P12409096072707764430.a n = A005395 n

end A005395

/-! ## A005395.P5606798242406773387

`A005393(n)+A001221(A084400(n+1))`
-/

namespace A005395.P5606798242406773387
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005393 n + A001221 (A084400 (n + 1)).toNat

end

end A005395.P5606798242406773387

namespace A005395

/-- `A005393(n)+A001221(A084400(n+1))` -/
def P5606798242406773387.Spec : Prop :=
  ∀ n, P5606798242406773387.a n = A005395 n

end A005395

/-! ## A005395.P11369969833326326101

`A005393(n)+A001221(A165825(n+1))`
-/

namespace A005395.P11369969833326326101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005393 n + A001221 (A165825 (n + 1)).toNat

end

end A005395.P11369969833326326101

namespace A005395

/-- `A005393(n)+A001221(A165825(n+1))` -/
def P11369969833326326101.Spec : Prop :=
  ∀ n, P11369969833326326101.a n = A005395 n

end A005395

/-!
# A005396: Number of 2n-step polygons on honeycomb.

The programs for A005396, there is no canonical definition to state claims against.
-/

/-! ## A005396.P3907826922866920646

`floor(2/acot(n))*A006774(n)`
-/

namespace A005396.P3907826922866920646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊2 / SequenceMachineLib.acot (n : ℝ)⌋ * A006774 n

end

end A005396.P3907826922866920646

/-! ## A005396.P10228928602187200998

`A004277(n)*A006774(n)`
-/

namespace A005396.P10228928602187200998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 n * A006774 n

end

end A005396.P10228928602187200998

/-! ## A005396.P4065959144051009689

`A000267(n²)*A006774(n)`
-/

namespace A005396.P4065959144051009689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000267 (n ^ 2) * A006774 n

end

end A005396.P4065959144051009689

/-! ## A005396.P12715731018903505845

`record[A005131(n)]*A006774(n)`
-/

namespace A005396.P12715731018903505845
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005131 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) * A006774 n

end

end A005396.P12715731018903505845

/-! ## A005396.P9120909694587922175

`A004275(n+1)*A006774(n)`
-/

namespace A005396.P9120909694587922175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004275 (n + 1) * A006774 n

end

end A005396.P9120909694587922175

/-!
# A005398: Number of n-step polygons on f.c.c. lattice.

The programs for A005398, there is no canonical definition to state claims against.
-/

/-! ## A005398.P8299929918610535788

`A001337(n+3)/(2*(n+3))`
-/

namespace A005398.P8299929918610535788
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001337 (n + 3) : ℚ) / (2 * (n + 3) : ℚ)

end

end A005398.P8299929918610535788

/-!
# A005399: E.g.f.: high-temperature series in J/2kT for ferromagnetic susceptibility for the spin-1/2 Heisenberg model on hexagonal lattice.

The programs for A005399, there is no canonical definition to state claims against.
-/

/-! ## A005399.P7411161433845356644

`A032766(A113329(n))`
-/

namespace A005399.P7411161433845356644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032766 (A113329 n).toNat

end

end A005399.P7411161433845356644

