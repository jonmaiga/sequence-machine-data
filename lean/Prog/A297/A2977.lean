import SequenceMachineLib
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
import Seq.B000.C014
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C026
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C035
import Seq.B000.C037
import Seq.B000.C038
import Seq.B000.C040
import Seq.B000.C041
import Seq.B000.C042
import Seq.B000.C044
import Seq.B000.C045
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C004
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C008
import Seq.B001.C009
import Seq.B001.C011
import Seq.B001.C012
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C004
import Seq.B002.C006
import Seq.B002.C007
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B004.C000
import Seq.B004.C003
import Seq.B005.C000
import Seq.B006.C000
import Seq.B006.C002
import Seq.B007.C000
import Seq.B008.C000
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

/-!
# A297700: Number of 7Xn 0..1 arrays with every 1 horizontally, diagonally or antidiagonally adjacent to 0, 2 or 4 neighboring 1s.

The programs for A297700, there is no canonical definition to state claims against.
-/

/-! ## A297700.P13706941083018154392

`A297694(A302537(n)+27)`
-/

namespace A297700.P13706941083018154392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297694 (A302537 n + 27).toNat

end

end A297700.P13706941083018154392

/-!
# A297701: Decimal expansion of 1 + sqrt(2) + sqrt(3).

The programs for A297701, there is no canonical definition to state claims against.
-/

/-! ## A297701.P506547273713755276

`ceil(A135611(n)+a(n-1))-a(n-1)` with `a(0)=4`

`ceil` is left out, it is the identity on integers.
-/

namespace A297701.P506547273713755276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [4] fun n a =>
  A135611 (n + 1) + a (n - 1) - a (n - 1)

end

end A297701.P506547273713755276

/-! ## A297701.P17427936050054864335

`A135611(round(a(n-1)+n)-a(n-1))` with `a(0)=4`

`round` is left out, it is the identity on integers.
-/

namespace A297701.P17427936050054864335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [4] fun n a =>
  A135611 ((a (n - 1) + (n : ℤ) - a (n - 1)).toNat + 1)

end

end A297701.P17427936050054864335

/-! ## A297701.P8245742913020673236

`A135611(n)+a(n-1)-A004917(a(n-1)+1)` with `a(0)=4`
-/

namespace A297701.P8245742913020673236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [4] fun n a =>
  A135611 (n + 1) + a (n - 1) - A004917 (a (n - 1) + 1).toNat

end

end A297701.P8245742913020673236

/-!
# A297703: The Genocchi triangle read by rows: T(n, k) = (-1)^n * Sum_{j=0..floor((n-k)/2)} binomial(n-k, 2*j) * (2*(n-j+1)) * Euler(2*(n-j)+1, 1).

The programs for A297703, there is no canonical definition to state claims against.
-/

/-! ## A297703.P8723315248648511417

`A014781(lt[(ceil(sqrt(n))²-n)², n])`
-/

namespace A297703.P8723315248648511417
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (⌈Real.sqrt (n : ℝ)⌉ ^ 2 - (n : ℤ)) ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014781 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A297703.P8723315248648511417

/-! ## A297703.P2439709184789661313

`A099959(C(comp[∑[n-1]]-n, 2)+n)`
-/

namespace A297703.P2439709184789661313
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099959 (Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) - (n : ℤ)).toNat 2 + n)

end

end A297703.P2439709184789661313

/-! ## A297703.P11624557379946140330

`A401503(A061579(n))`
-/

namespace A297703.P11624557379946140330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A401503 (A061579 n).toNat

end

end A297703.P11624557379946140330

/-!
# A297705: a(n) = Sum_{k=0..n} binomial(n, k)*hypergeom([k - n, n + 1], [k + 2], -4).

The programs for A297705, there is no canonical definition to state claims against.
-/

/-! ## A297705.P10319755235885462554

`ceil((A190713(A309186(n+1))+1)/(ϕ+3))`
-/

namespace A297705.P10319755235885462554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A190713 (A309186 (n + 1)).toNat + 1 : ℝ) / (Real.goldenRatio + 3)⌉

end

end A297705.P10319755235885462554

/-!
# A297707: a(n) = Product_{k=1..n-1} n!k, where n!k is k-tuple factorial of n.

The programs for A297707, there is no canonical definition to state claims against.
-/

/-! ## A297707.P9630396660766668099

`A152684(n+1)*A325352(A095816(n))`
-/

namespace A297707.P9630396660766668099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152684 (n + 1) * A325352 (A095816 n).toNat

end

end A297707.P9630396660766668099

/-!
# A297708: Number of permutations p of [n] such that p(p(i)) = i for all i or p(n+1-p(i)) = n+1-i for all i.

The programs for A297708, the canonical program `A297708.P854593747947966794` is in `Seq.B002.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A297708 has offset 0).

The definition of A297708 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A135401, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A297708.P854593747947966794

`2*A000085(n)-A135401(n)`

The canonical program, it is in `Seq.B002.C006`.
-/

namespace A297708

/-- `2*A000085(n)-A135401(n)` -/
def P854593747947966794.Spec : Prop :=
  ∀ n, P854593747947966794.a n = A297708 n

theorem P854593747947966794.correct : P854593747947966794.Spec := by
  intro n
  simp only [A297708]

end A297708

/-! ## A297708.P10946083327831174434

`A000085(n)+2*A000900(n)`
-/

namespace A297708.P10946083327831174434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000085 n + 2 * A000900 n

end

end A297708.P10946083327831174434

namespace A297708

/-- `A000085(n)+2*A000900(n)` -/
def P10946083327831174434.Spec : Prop :=
  ∀ n, P10946083327831174434.a n = A297708 n

end A297708

/-! ## A297708.P3158895717699182684

`A135401(n)+4*A000900(n)`
-/

namespace A297708.P3158895717699182684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135401 n + 4 * A000900 n

end

end A297708.P3158895717699182684

namespace A297708

/-- `A135401(n)+4*A000900(n)` -/
def P3158895717699182684.Spec : Prop :=
  ∀ n, P3158895717699182684.a n = A297708 n

end A297708

/-! ## A297708.P7244584497999086564

`A099020(∑[n])+A000085(n)-A135401(n)`
-/

namespace A297708.P7244584497999086564
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099020 (∑ j ∈ Finset.range (n + 1), f1 j) + (A000085 n - A135401 n)

end

end A297708.P7244584497999086564

namespace A297708

/-- `A099020(∑[n])+A000085(n)-A135401(n)` -/
def P7244584497999086564.Spec : Prop :=
  ∀ n, P7244584497999086564.a n = A297708 n

end A297708

/-! ## A297708.P3313099601529943996

`A000085(n)+A000900(n)+A000900(n)%A005425(n)`
-/

namespace A297708.P3313099601529943996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000085 n + (A000900 n + Int.tmod (A000900 n) (A005425 n))

end

end A297708.P3313099601529943996

namespace A297708

/-- `A000085(n)+A000900(n)+A000900(n)%A005425(n)` -/
def P3313099601529943996.Spec : Prop :=
  ∀ n, P3313099601529943996.a n = A297708 n

end A297708

/-!
# A297710: Partition numbers (A000041) in which parity of digits alternates.

The programs for A297710, there is no canonical definition to state claims against.
-/

/-! ## A297710.P10666777696110373626

`∩[A000041(n+1), A030141(n+1)]`
-/

namespace A297710.P10666777696110373626
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030141 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A297710.P10666777696110373626

/-! ## A297710.P5921977412679350579

`∩[A030141(n+1), A000065(n+1)+1]`
-/

namespace A297710.P5921977412679350579
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030141 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000065 (n + 1) + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A297710.P5921977412679350579

/-! ## A297710.P729233492101986706

`∩[A119620(2*(n+1)), A030141(n+1)]`
-/

namespace A297710.P729233492101986706
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119620 (2 * (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030141 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A297710.P729233492101986706

/-! ## A297710.P1036437690754616783

`filter[A030141(n+1), A167392(#)]`
-/

namespace A297710.P1036437690754616783
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030141 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A167392 (f1 j).toNat = 1) n)

end

end A297710.P1036437690754616783

/-! ## A297710.P10184808799694089292

`filter[A000041(n+1), A228710(#)]`
-/

namespace A297710.P10184808799694089292
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A228710 (f1 j).toNat = 1) n)

end

end A297710.P10184808799694089292

/-!
# A297713: Number of minimal edge covers in the n-dipyramidal graph.

The programs for A297713, there is no canonical definition to state claims against.
-/

/-! ## A297713.P13176433288148511873

`A160656(∑[∑[2*n]]+1)+1`
-/

namespace A297713.P13176433288148511873
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160656 (∑ j ∈ Finset.range (n + 1), f1 j + 1) + 1

end

end A297713.P13176433288148511873

/-!
# A297714: Number of n X n 0..1 arrays with every 1 horizontally, diagonally or antidiagonally adjacent to 1, 2 or 4 neighboring 1's.

The programs for A297714, there is no canonical definition to state claims against.
-/

/-! ## A297714.P508297487469156047

`A297720(∑[4*n]+1)`
-/

namespace A297714.P508297487469156047
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297720 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A297714.P508297487469156047

/-! ## A297714.P1794003746317418111

`record[A003982(n)*A297720(n+1)]`
-/

namespace A297714.P1794003746317418111
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A297720 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A297714.P1794003746317418111

/-!
# A297715: Number of nX3 0..1 arrays with every 1 horizontally, diagonally or antidiagonally adjacent to 1, 2 or 4 neighboring 1s.

The programs for A297715, there is no canonical definition to state claims against.
-/

/-! ## A297715.P4632802683734229622

`A297720(∑[n+3]+1)`
-/

namespace A297715.P4632802683734229622
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297720 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A297715.P4632802683734229622

/-! ## A297715.P5456348635547908991

`record[A297720(A198464(n+1))]`
-/

namespace A297715.P5456348635547908991
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297720 (A198464 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A297715.P5456348635547908991

/-!
# A297716: Number of nX4 0..1 arrays with every 1 horizontally, diagonally or antidiagonally adjacent to 1, 2 or 4 neighboring 1s.

The programs for A297716, there is no canonical definition to state claims against.
-/

/-! ## A297716.P16822476296954955280

`A297720(A141214(n+1))`
-/

namespace A297716.P16822476296954955280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297720 (A141214 (n + 1)).toNat

end

end A297716.P16822476296954955280

/-!
# A297717: Number of nX5 0..1 arrays with every 1 horizontally, diagonally or antidiagonally adjacent to 1, 2 or 4 neighboring 1s.

The programs for A297717, there is no canonical definition to state claims against.
-/

/-! ## A297717.P11921923661712623858

`A297720(Δ[A264443(n)])`
-/

namespace A297717.P11921923661712623858
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297720 (f1 (n + 1) - f1 n).toNat

end

end A297717.P11921923661712623858

/-!
# A297718: Number of nX6 0..1 arrays with every 1 horizontally, diagonally or antidiagonally adjacent to 1, 2 or 4 neighboring 1s.

The programs for A297718, there is no canonical definition to state claims against.
-/

/-! ## A297718.P17989954857201905678

`A297720(eq[3, A219347(n)])`
-/

namespace A297718.P17989954857201905678
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297720 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A297718.P17989954857201905678

/-!
# A297719: Number of nX7 0..1 arrays with every 1 horizontally, diagonally or antidiagonally adjacent to 1, 2 or 4 neighboring 1s.

The programs for A297719, there is no canonical definition to state claims against.
-/

/-! ## A297719.P4252559203245139050

`A297720(A056121(n)+22)`
-/

namespace A297719.P4252559203245139050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297720 (A056121 n + 22).toNat

end

end A297719.P4252559203245139050

/-!
# A297721: Number of 2Xn 0..1 arrays with every 1 horizontally, diagonally or antidiagonally adjacent to 1, 2 or 4 neighboring 1s.

The programs for A297721, there is no canonical definition to state claims against.
-/

/-! ## A297721.P15869007576481725825

`A297720(∑[n+1]+2)`
-/

namespace A297721.P15869007576481725825
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297720 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A297721.P15869007576481725825

/-!
# A297722: Number of 3Xn 0..1 arrays with every 1 horizontally, diagonally or antidiagonally adjacent to 1, 2 or 4 neighboring 1s.

The programs for A297722, there is no canonical definition to state claims against.
-/

/-! ## A297722.P17066802310529758159

`A297720(∑[n+2]+4)`
-/

namespace A297722.P17066802310529758159
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297720 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A297722.P17066802310529758159

/-!
# A297723: Number of 4Xn 0..1 arrays with every 1 horizontally, diagonally or antidiagonally adjacent to 1, 2 or 4 neighboring 1s.

The programs for A297723, there is no canonical definition to state claims against.
-/

/-! ## A297723.P11787595965680241408

`A297720(A141214(n)+7)`
-/

namespace A297723.P11787595965680241408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297720 (A141214 n + 7).toNat

end

end A297723.P11787595965680241408

/-!
# A297724: Number of 5Xn 0..1 arrays with every 1 horizontally, diagonally or antidiagonally adjacent to 1, 2 or 4 neighboring 1s.

The programs for A297724, there is no canonical definition to state claims against.
-/

/-! ## A297724.P14939925614420342465

`A297720(A167499(n+3))`
-/

namespace A297724.P14939925614420342465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297720 (A167499 (n + 3)).toNat

end

end A297724.P14939925614420342465

/-!
# A297725: Number of 6Xn 0..1 arrays with every 1 horizontally, diagonally or antidiagonally adjacent to 1, 2 or 4 neighboring 1s.

The programs for A297725, there is no canonical definition to state claims against.
-/

/-! ## A297725.P8244920674939645749

`A297720(A056115(n)+21)`
-/

namespace A297725.P8244920674939645749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297720 (A056115 n + 21).toNat

end

end A297725.P8244920674939645749

/-!
# A297726: Number of 7Xn 0..1 arrays with every 1 horizontally, diagonally or antidiagonally adjacent to 1, 2 or 4 neighboring 1s.

The programs for A297726, there is no canonical definition to state claims against.
-/

/-! ## A297726.P13463224188008207649

`A297720(A302537(n)+27)`
-/

namespace A297726.P13463224188008207649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297720 (A302537 n + 27).toNat

end

end A297726.P13463224188008207649

/-!
# A297727: Number of n X n 0..1 arrays with every 1 horizontally, diagonally or antidiagonally adjacent to 2 or 4 neighboring 1's.

The programs for A297727, there is no canonical definition to state claims against.
-/

/-! ## A297727.P6314550949772020148

`A297733(∑[4*n]+1)`
-/

namespace A297727.P6314550949772020148
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297733 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A297727.P6314550949772020148

/-! ## A297727.P13973954232714418431

`record[A297733(lcm(n, xor(n, -2))+1)]`
-/

namespace A297727.P13973954232714418431
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297733 (Int.lcm (n : ℤ) (Int.xor (n : ℤ) (-2)) + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A297727.P13973954232714418431

/-! ## A297727.P1105737109035576689

`record[A297733(∑[A266981(n)])]`
-/

namespace A297727.P1105737109035576689
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266981 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297733 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A297727.P1105737109035576689

/-! ## A297727.P14393204986429598806

`record[A297733(A240134(n+1)+1)]`
-/

namespace A297727.P14393204986429598806
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297733 (A240134 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A297727.P14393204986429598806

/-! ## A297727.P10070002344713407203

`record[A003982(n)*A297733(n+1)]`
-/

namespace A297727.P10070002344713407203
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A297733 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A297727.P10070002344713407203

/-!
# A297728: Number of nX3 0..1 arrays with every 1 horizontally, diagonally or antidiagonally adjacent to 2 or 4 neighboring 1s.

The programs for A297728, there is no canonical definition to state claims against.
-/

/-! ## A297728.P5922014753673087105

`A297733(∑[n+3]+1)`
-/

namespace A297728.P5922014753673087105
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297733 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A297728.P5922014753673087105

/-! ## A297728.P11582193000282700764

`record[and(A167374(n+1), A297733(n+1))]`
-/

namespace A297728.P11582193000282700764
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A167374 (n + 1)) (A297733 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A297728.P11582193000282700764

/-! ## A297728.P13655758459655580984

`record[and(A297733(n+1), A326925(n+2))]`
-/

namespace A297728.P13655758459655580984
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A297733 (n + 1)) (A326925 (n + 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A297728.P13655758459655580984

/-!
# A297729: Number of n X 4 0..1 arrays with every 1 horizontally, diagonally or antidiagonally adjacent to 2 or 4 neighboring 1s.

The programs for A297729, there is no canonical definition to state claims against.
-/

/-! ## A297729.P15528356536373608155

`A297733(∑[n+4]+3)`
-/

namespace A297729.P15528356536373608155
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297733 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A297729.P15528356536373608155

/-! ## A297729.P3203598020599443437

`record[A297733(A019304(n))]`
-/

namespace A297729.P3203598020599443437
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297733 (A019304 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A297729.P3203598020599443437

/-! ## A297729.P1993708060243170299

`record[A297733(A008795(n)+2+n)]`
-/

namespace A297729.P1993708060243170299
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297733 (A008795 n + 2 + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A297729.P1993708060243170299

/-! ## A297729.P6814541534542261462

`record[gcd(A297733(n+1), A326925(n+1))]`
-/

namespace A297729.P6814541534542261462
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A297733 (n + 1)) (A326925 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A297729.P6814541534542261462

/-!
# A297730: Number of nX5 0..1 arrays with every 1 horizontally, diagonally or antidiagonally adjacent to 2 or 4 neighboring 1s.

The programs for A297730, there is no canonical definition to state claims against.
-/

/-! ## A297730.P8839930156468194970

`A297733(∑[n+5]+6)`
-/

namespace A297730.P8839930156468194970
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297733 (∑ j ∈ Finset.range (n + 1), f1 j + 6)

end

end A297730.P8839930156468194970

/-!
# A297731: Number of n X 6 0..1 arrays with every 1 horizontally, diagonally or antidiagonally adjacent to 2 or 4 neighboring 1's.

The programs for A297731, there is no canonical definition to state claims against.
-/

/-! ## A297731.P12092532757783075283

`A297733(∑[7-(6-a(n-1))%n])` with `a(0)=10, a(1)=13`
-/

namespace A297731.P12092532757783075283
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [10, 13] fun n f1 =>
  7 - Int.tmod (6 - f1 (n - 1)) (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297733 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A297731.P12092532757783075283

/-!
# A297732: Number of nX7 0..1 arrays with every 1 horizontally, diagonally or antidiagonally adjacent to 2 or 4 neighboring 1s.

The programs for A297732, there is no canonical definition to state claims against.
-/

/-! ## A297732.P7533905578549057352

`A297733(A055999(n+4))`
-/

namespace A297732.P7533905578549057352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297733 (A055999 (n + 4)).toNat

end

end A297732.P7533905578549057352

/-!
# A297733: T(n,k)=Number of nXk 0..1 arrays with every 1 horizontally, diagonally or antidiagonally adjacent to 2 or 4 neighboring 1s.

The programs for A297733, there is no canonical definition to state claims against.
-/

/-! ## A297733.P7588040654891040181

`A346131(A263341(n+1))`
-/

namespace A297733.P7588040654891040181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346131 (A263341 (n + 1)).toNat

end

end A297733.P7588040654891040181

/-! ## A297733.P9756583673767714299

`A262869(A265569(2*A308292(n)))`
-/

namespace A297733.P9756583673767714299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262869 (A265569 (2 * A308292 n).toNat).toNat

end

end A297733.P9756583673767714299

/-! ## A297733.P2413381802952513941

`A240872(A084268(n+1))+A108346(A327483(n))`
-/

namespace A297733.P2413381802952513941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240872 (A084268 (n + 1)).toNat + A108346 (A327483 n).toNat

end

end A297733.P2413381802952513941

/-!
# A297734: Number of 2Xn 0..1 arrays with every 1 horizontally, diagonally or antidiagonally adjacent to 2 or 4 neighboring 1s.

The programs for A297734, the canonical program `A297734.P1452109387055537136` is in `Seq.B000.C044`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A297734 has offset 1).

The definition of A297734 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 303 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A297734.P1452109387055537136

`2*a(n-1)+a(n-2)-3*a(n-3)+6*a(n-4)-6*a(n-5)` with `a(0)=1, a(1)=2, a(2)=8, a(3)=15, a(4)=32`

The canonical program, it is in `Seq.B000.C044`.
-/

namespace A297734

/-- `2*a(n-1)+a(n-2)-3*a(n-3)+6*a(n-4)-6*a(n-5)` -/
def P1452109387055537136.Spec : Prop :=
  ∀ n, P1452109387055537136.a n = A297734 (n + 1)

theorem P1452109387055537136.correct : P1452109387055537136.Spec := by
  intro n
  simp only [A297734, Nat.add_sub_cancel]

end A297734

/-! ## A297734.P4796002206766048968

`record[ratio[A297733(n+1)]]`
-/

namespace A297734.P4796002206766048968
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297733 (n + 1)

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℚ) / (f2 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A297734.P4796002206766048968

namespace A297734

/-- `record[ratio[A297733(n+1)]]` -/
def P4796002206766048968.Spec : Prop :=
  ∀ n, P4796002206766048968.a n = (A297734 (n + 1) : ℚ)

end A297734

/-! ## A297734.P15038413422695823038

`A297733(∑[n+1]+2)`
-/

namespace A297734.P15038413422695823038
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297733 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A297734.P15038413422695823038

namespace A297734

/-- `A297733(∑[n+1]+2)` -/
def P15038413422695823038.Spec : Prop :=
  ∀ n, P15038413422695823038.a n = A297734 (n + 1)

end A297734

/-! ## A297734.P14189435249622269352

`record[A297733(A252460(n+1))]`
-/

namespace A297734.P14189435249622269352
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297733 (A252460 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A297734.P14189435249622269352

namespace A297734

/-- `record[A297733(A252460(n+1))]` -/
def P14189435249622269352.Spec : Prop :=
  ∀ n, P14189435249622269352.a n = A297734 (n + 1)

end A297734

/-! ## A297734.P12960553958824174337

`record[A297733(A255128(n+1))]`
-/

namespace A297734.P12960553958824174337
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297733 (A255128 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A297734.P12960553958824174337

namespace A297734

/-- `record[A297733(A255128(n+1))]` -/
def P12960553958824174337.Spec : Prop :=
  ∀ n, P12960553958824174337.a n = A297734 (n + 1)

end A297734

/-!
# A297735: Number of 3Xn 0..1 arrays with every 1 horizontally, diagonally or antidiagonally adjacent to 2 or 4 neighboring 1s.

The programs for A297735, there is no canonical definition to state claims against.
-/

/-! ## A297735.P17048300785500824544

`A297733(∑[n+2]+4)`
-/

namespace A297735.P17048300785500824544
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297733 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A297735.P17048300785500824544

/-! ## A297735.P5384943568021502381

`record[A010054(n)*A297733(n+3)]`
-/

namespace A297735.P5384943568021502381
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A297733 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A297735.P5384943568021502381

/-! ## A297735.P16357969073347863944

`record[gcd(A297733(n+1), A303913(n))]`
-/

namespace A297735.P16357969073347863944
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A297733 (n + 1)) (A303913 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A297735.P16357969073347863944

/-! ## A297735.P5656776136975951046

`record[gcd(A264428(n), A297733(n+3))]`
-/

namespace A297735.P5656776136975951046
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A264428 n) (A297733 (n + 3))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A297735.P5656776136975951046

/-!
# A297736: Number of 4Xn 0..1 arrays with every 1 horizontally, diagonally or antidiagonally adjacent to 2 or 4 neighboring 1s.

The programs for A297736, there is no canonical definition to state claims against.
-/

/-! ## A297736.P8237869016666043218

`A297733(∑[n+3]+7)`
-/

namespace A297736.P8237869016666043218
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297733 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A297736.P8237869016666043218

/-! ## A297736.P5032376520039004959

`record[gcd(A297733(n+2), A303913(n))]`
-/

namespace A297736.P5032376520039004959
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A297733 (n + 2)) (A303913 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A297736.P5032376520039004959

/-!
# A297737: Number of 5Xn 0..1 arrays with every 1 horizontally, diagonally or antidiagonally adjacent to 2 or 4 neighboring 1s.

The programs for A297737, there is no canonical definition to state claims against.
-/

/-! ## A297737.P635274454377108134

`A297733(n*(n+9)/2+15)`
-/

namespace A297737.P635274454377108134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297733 (SequenceMachineLib.roundAway ((n : ℚ) * ((n + 9 : ℚ) / 2) + 15)).toNat

end

end A297737.P635274454377108134

/-!
# A297738: Number of 6Xn 0..1 arrays with every 1 horizontally, diagonally or antidiagonally adjacent to 2 or 4 neighboring 1s.

The programs for A297738, there is no canonical definition to state claims against.
-/

/-! ## A297738.P12737285248532411107

`A297733(A166136(n+4))`
-/

namespace A297738.P12737285248532411107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297733 (A166136 (n + 4)).toNat

end

end A297738.P12737285248532411107

/-!
# A297739: Number of 7 X n 0..1 arrays with every 1 horizontally, diagonally or antidiagonally adjacent to 2 or 4 neighboring 1's.

The programs for A297739, there is no canonical definition to state claims against.
-/

/-! ## A297739.P9995880899557746781

`A297733(∑[7-(6-a(n-1))%n])` with `a(0)=28`
-/

namespace A297739.P9995880899557746781
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [28] fun n f1 =>
  7 - Int.tmod (6 - f1 (n - 1)) (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297733 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A297739.P9995880899557746781

/-!
# A297740: The number of distinct positions on an infinite chessboard reachable by the (2,3)-leaper (or zebra) in at most n moves.

The programs for A297740, the canonical program `A297740.P328050101051718146` is in `Seq.B000.C044`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A297740 has offset 0).

The definition of A297740 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A297740.P328050101051718146

`ogf((1+6x+17x^2+32x^3+48x^4+8x^5-44x^6-24x^7+12x^8+12x^9)/(1-3x+3x^2-x^3))`

The canonical program, it is in `Seq.B000.C044`.
-/

namespace A297740

/-- `ogf((1+6x+17x^2+32x^3+48x^4+8x^5-44x^6-24x^7+12x^8+12x^9)/(1-3x+3x^2-x^3))` -/
def P328050101051718146.Spec : Prop :=
  ∀ n, P328050101051718146.a n = A297740 n

theorem P328050101051718146.correct : P328050101051718146.Spec := by
  intro n
  simp only [A297740]

end A297740

/-! ## A297740.P13805160038108870101

`∑[A018839(n)]`
-/

namespace A297740.P13805160038108870101
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018839 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A297740.P13805160038108870101

namespace A297740

/-- `∑[A018839(n)]` -/
def P13805160038108870101.Spec : Prop :=
  ∀ n, P13805160038108870101.a n = A297740 n

end A297740

/-! ## A297740.P8947316621279529463

`A018839(n)+a(A023443(n))` with `a(0)=1`
-/

namespace A297740.P8947316621279529463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A018839 n + a (A023443 n).toNat

end

end A297740.P8947316621279529463

namespace A297740

/-- `A018839(n)+a(A023443(n))` -/
def P8947316621279529463.Spec : Prop :=
  ∀ n, P8947316621279529463.a n = A297740 n

end A297740

/-! ## A297740.P9378330032253002205

`A018839(n)+a(A028310(n)-1)` with `a(0)=1`
-/

namespace A297740.P9378330032253002205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A018839 n + a (A028310 n - 1).toNat

end

end A297740.P9378330032253002205

namespace A297740

/-- `A018839(n)+a(A028310(n)-1)` -/
def P9378330032253002205.Spec : Prop :=
  ∀ n, P9378330032253002205.a n = A297740 n

end A297740

/-! ## A297740.P4201334430142673744

`A018839(n)+a(n-A057427(n))` with `a(0)=1`
-/

namespace A297740.P4201334430142673744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A018839 n + a ((n : ℤ) - A057427 n).toNat

end

end A297740.P4201334430142673744

namespace A297740

/-- `A018839(n)+a(n-A057427(n))` -/
def P4201334430142673744.Spec : Prop :=
  ∀ n, P4201334430142673744.a n = A297740 n

end A297740

/-!
# A297741: The number of distinct positions on an infinite chessboard reachable by the (3,4)-leaper in <= n moves.

The programs for A297741, the canonical program `A297741.P6985422057971012728` is in `Seq.B000.C044`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A297741 has offset 0).

The definition of A297741 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A297741.P6985422057971012728

`ogf((1+6x+17x^2+32x^3+48x^4+64x^5+80x^6-24x^7-96x^8-48x^9-8x^10+28x^11+20x^12+4x^13)/(1-3x+3x^2-x^3))`

The canonical program, it is in `Seq.B000.C044`.
-/

namespace A297741

/-- `ogf((1+6x+17x^2+32x^3+48x^4+64x^5+80x^6-24x^7-96x^8-48x^9-8x^10+28x^11+20x^12+4x^13)/(1-3x+3x^2-x^3))` -/
def P6985422057971012728.Spec : Prop :=
  ∀ n, P6985422057971012728.a n = A297741 n

theorem P6985422057971012728.correct : P6985422057971012728.Spec := by
  intro n
  simp only [A297741]

end A297741

/-! ## A297741.P5740288839856588140

`∑[A394197(n)]`
-/

namespace A297741.P5740288839856588140
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A394197 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A297741.P5740288839856588140

namespace A297741

/-- `∑[A394197(n)]` -/
def P5740288839856588140.Spec : Prop :=
  ∀ n, P5740288839856588140.a n = A297741 n

end A297741

/-! ## A297741.P13191179903245021259

`∑{#}[n, A394197(n-#)]`
-/

namespace A297741.P13191179903245021259
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), A394197 (n - k)

end

end A297741.P13191179903245021259

namespace A297741

/-- `∑{#}[n, A394197(n-#)]` -/
def P13191179903245021259.Spec : Prop :=
  ∀ n, P13191179903245021259.a n = A297741 n

end A297741

/-!
# A297742: Coefficients of polynomial whose zeros are the Möbius function.

The programs for A297742, there is no canonical definition to state claims against.
-/

/-! ## A297742.P8313558296355934257

`A244895(or(A001924(n), A019431(n)))`
-/

namespace A297742.P8313558296355934257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244895 (Int.lor (A001924 n) (A019431 n)).toNat

end

end A297742.P8313558296355934257

/-! ## A297742.P3830045477752548293

`A260237(n+1)%A260342(A260355(n+1))`
-/

namespace A297742.P3830045477752548293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A260237 (n + 1)) (A260342 (A260355 (n + 1)).toNat)

end

end A297742.P3830045477752548293

/-! ## A297742.P16830031254887462990

`A008683(A350332(3*(n+1))%A352081(n+2))`
-/

namespace A297742.P16830031254887462990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (Int.tmod (A350332 (3 * (n + 1))) (A352081 (n + 2))).toNat

end

end A297742.P16830031254887462990

/-!
# A297743: Number of n X n 0..1 arrays with every 1 horizontally, diagonally or antidiagonally adjacent to 1, 3 or 4 neighboring 1's.

The programs for A297743, there is no canonical definition to state claims against.
-/

/-! ## A297743.P11527596349286636414

`A297749(∑[4*n]+1)`
-/

namespace A297743.P11527596349286636414
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297749 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A297743.P11527596349286636414

/-! ## A297743.P9840891581858613545

`∑{digits}[n, A297749(A001844(#))]`
-/

namespace A297743.P9840891581858613545
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => A297749 (A001844 x).toNat).sum

end

end A297743.P9840891581858613545

/-! ## A297743.P10724386186367692634

`record[A297749(∑[A266981(n)])]`
-/

namespace A297743.P10724386186367692634
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266981 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297749 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A297743.P10724386186367692634

/-! ## A297743.P12463083228966615786

`record[A297749(Δ[A235355(n)])]`
-/

namespace A297743.P12463083228966615786
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235355 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297749 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A297743.P12463083228966615786

/-!
# A297744: Number of n X 3 0..1 arrays with every 1 horizontally, diagonally or antidiagonally adjacent to 1, 3 or 4 neighboring 1's.

The programs for A297744, there is no canonical definition to state claims against.
-/

/-! ## A297744.P9911614462476963304

`A297749(∑[n+3]+1)`
-/

namespace A297744.P9911614462476963304
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297749 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A297744.P9911614462476963304

/-! ## A297744.P6872422883103949139

`record[A297749(A198464(n+1))]`
-/

namespace A297744.P6872422883103949139
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297749 (A198464 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A297744.P6872422883103949139

/-!
# A297745: Number of nX4 0..1 arrays with every 1 horizontally, diagonally or antidiagonally adjacent to 1, 3 or 4 neighboring 1s.

The programs for A297745, there is no canonical definition to state claims against.
-/

/-! ## A297745.P7118434745012692051

`A297749(A141214(n+1))`
-/

namespace A297745.P7118434745012692051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297749 (A141214 (n + 1)).toNat

end

end A297745.P7118434745012692051

/-!
# A297746: Number of nX5 0..1 arrays with every 1 horizontally, diagonally or antidiagonally adjacent to 1, 3 or 4 neighboring 1s.

The programs for A297746, there is no canonical definition to state claims against.
-/

/-! ## A297746.P7156899904950810016

`A297749(Δ[A264443(n)])`
-/

namespace A297746.P7156899904950810016
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297749 (f1 (n + 1) - f1 n).toNat

end

end A297746.P7156899904950810016

/-!
# A297747: Number of nX6 0..1 arrays with every 1 horizontally, diagonally or antidiagonally adjacent to 1, 3 or 4 neighboring 1s.

The programs for A297747, there is no canonical definition to state claims against.
-/

/-! ## A297747.P15838295582575464160

`A297749(A052905(n+3))`
-/

namespace A297747.P15838295582575464160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297749 (A052905 (n + 3)).toNat

end

end A297747.P15838295582575464160

/-!
# A297748: Number of nX7 0..1 arrays with every 1 horizontally, diagonally or antidiagonally adjacent to 1, 3 or 4 neighboring 1s.

The programs for A297748, there is no canonical definition to state claims against.
-/

/-! ## A297748.P1173323671763652284

`A297749(A055999(n+4))`
-/

namespace A297748.P1173323671763652284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297749 (A055999 (n + 4)).toNat

end

end A297748.P1173323671763652284

/-!
# A297750: Number of 2Xn 0..1 arrays with every 1 horizontally, diagonally or antidiagonally adjacent to 1, 3 or 4 neighboring 1s.

The programs for A297750, there is no canonical definition to state claims against.
-/

/-! ## A297750.P11151623966067801147

`A297749(∑[n+1]+2)`
-/

namespace A297750.P11151623966067801147
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297749 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A297750.P11151623966067801147

/-! ## A297750.P4062551648971240476

`record[gcd(A098825(n), A297749(n+1))]`
-/

namespace A297750.P4062551648971240476
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A098825 n) (A297749 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A297750.P4062551648971240476

/-! ## A297750.P12014810645211859373

`record[A297749(A133263(A025581(n)))]`
-/

namespace A297750.P12014810645211859373
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297749 (A133263 (A025581 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A297750.P12014810645211859373

/-!
# A297751: Number of 3Xn 0..1 arrays with every 1 horizontally, diagonally or antidiagonally adjacent to 1, 3 or 4 neighboring 1s.

The programs for A297751, there is no canonical definition to state claims against.
-/

/-! ## A297751.P6985458791304181449

`A297749(∑[n+2]+4)`
-/

namespace A297751.P6985458791304181449
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297749 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A297751.P6985458791304181449

/-!
# A297752: Number of 4Xn 0..1 arrays with every 1 horizontally, diagonally or antidiagonally adjacent to 1, 3 or 4 neighboring 1s.

The programs for A297752, there is no canonical definition to state claims against.
-/

/-! ## A297752.P7399728084391574333

`A297749(∑[n+3]+7)`
-/

namespace A297752.P7399728084391574333
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297749 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A297752.P7399728084391574333

/-!
# A297753: Number of 5Xn 0..1 arrays with every 1 horizontally, diagonally or antidiagonally adjacent to 1, 3 or 4 neighboring 1s.

The programs for A297753, there is no canonical definition to state claims against.
-/

/-! ## A297753.P2208051859426590340

`A297749(∑[n+4]+11)`
-/

namespace A297753.P2208051859426590340
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297749 (∑ j ∈ Finset.range (n + 1), f1 j + 11)

end

end A297753.P2208051859426590340

/-!
# A297754: Number of 6Xn 0..1 arrays with every 1 horizontally, diagonally or antidiagonally adjacent to 1, 3 or 4 neighboring 1s.

The programs for A297754, there is no canonical definition to state claims against.
-/

/-! ## A297754.P7751556846812908860

`A297749(A166136(n+4))`
-/

namespace A297754.P7751556846812908860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297749 (A166136 (n + 4)).toNat

end

end A297754.P7751556846812908860

/-!
# A297755: Number of 7Xn 0..1 arrays with every 1 horizontally, diagonally or antidiagonally adjacent to 1, 3 or 4 neighboring 1s.

The programs for A297755, there is no canonical definition to state claims against.
-/

/-! ## A297755.P17523621316690268800

`A297749(A302537(n)+27)`
-/

namespace A297755.P17523621316690268800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297749 (A302537 n + 27).toNat

end

end A297755.P17523621316690268800

/-!
# A297756: Number of n X n 0..1 arrays with every 1 horizontally, diagonally or antidiagonally adjacent to 2, 3 or 4 neighboring 1's.

The programs for A297756, there is no canonical definition to state claims against.
-/

/-! ## A297756.P4989598484237918241

`A297762(∑[4*n]+1)`
-/

namespace A297756.P4989598484237918241
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297762 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A297756.P4989598484237918241

/-! ## A297756.P15622445797307904031

`record[gcd(A049581(n), A297762(n+1))]`
-/

namespace A297756.P15622445797307904031
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A049581 n) (A297762 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A297756.P15622445797307904031

/-!
# A297757: Number of nX3 0..1 arrays with every 1 horizontally, diagonally or antidiagonally adjacent to 2, 3 or 4 neighboring 1s.

The programs for A297757, there is no canonical definition to state claims against.
-/

/-! ## A297757.P12408113558859331644

`A297762(∑[n+3]+1)`
-/

namespace A297757.P12408113558859331644
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297762 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A297757.P12408113558859331644

/-! ## A297757.P6573748447102236422

`record[A297762(A128373(n+2))]`
-/

namespace A297757.P6573748447102236422
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297762 (A128373 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A297757.P6573748447102236422

/-! ## A297757.P17173787133485547722

`record[gcd(A008290(n+1), A297762(n+1))]`
-/

namespace A297757.P17173787133485547722
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A008290 (n + 1)) (A297762 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A297757.P17173787133485547722

/-! ## A297757.P18319495882110498099

`record[A297762(A034856(A059127(n)))]`
-/

namespace A297757.P18319495882110498099
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297762 (A034856 (A059127 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A297757.P18319495882110498099

/-! ## A297757.P10890776270813441586

`record[A297762(A034856(A065648(n)))]`
-/

namespace A297757.P10890776270813441586
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297762 (A034856 (A065648 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A297757.P10890776270813441586

/-!
# A297758: Number of nX4 0..1 arrays with every 1 horizontally, diagonally or antidiagonally adjacent to 2, 3 or 4 neighboring 1s.

The programs for A297758, there is no canonical definition to state claims against.
-/

/-! ## A297758.P7995468838939477157

`A297762(A141214(n+1))`
-/

namespace A297758.P7995468838939477157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297762 (A141214 (n + 1)).toNat

end

end A297758.P7995468838939477157

/-!
# A297759: Number of nX5 0..1 arrays with every 1 horizontally, diagonally or antidiagonally adjacent to 2, 3 or 4 neighboring 1s.

The programs for A297759, there is no canonical definition to state claims against.
-/

/-! ## A297759.P5197734916983830946

`A297762(Δ[A264443(n)])`
-/

namespace A297759.P5197734916983830946
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297762 (f1 (n + 1) - f1 n).toNat

end

end A297759.P5197734916983830946

/-!
# A297760: Number of n X 6 0..1 arrays with every 1 horizontally, diagonally or antidiagonally adjacent to 2, 3 or 4 neighboring 1's.

The programs for A297760, there is no canonical definition to state claims against.
-/

/-! ## A297760.P13347241176699466234

`A297762(A056119(n)+16)`
-/

namespace A297760.P13347241176699466234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297762 (A056119 n + 16).toNat

end

end A297760.P13347241176699466234

/-!
# A297761: Number of nX7 0..1 arrays with every 1 horizontally, diagonally or antidiagonally adjacent to 2, 3 or 4 neighboring 1s.

The programs for A297761, there is no canonical definition to state claims against.
-/

/-! ## A297761.P9503218464311167366

`A297762(A055999(n+4))`
-/

namespace A297761.P9503218464311167366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297762 (A055999 (n + 4)).toNat

end

end A297761.P9503218464311167366

/-!
# A297762: T(n,k)=Number of nXk 0..1 arrays with every 1 horizontally, diagonally or antidiagonally adjacent to 2, 3 or 4 neighboring 1s.

The programs for A297762, there is no canonical definition to state claims against.
-/

/-! ## A297762.P17041216689379485997

`A257500(A297544(n+1))`
-/

namespace A297762.P17041216689379485997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257500 (A297544 (n + 1)).toNat

end

end A297762.P17041216689379485997

/-! ## A297762.P542704220293528032

`gcd(n%or(1, n)/2, A036372(A174376(n)))`
-/

namespace A297762.P542704220293528032
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (SequenceMachineLib.roundAway (((n % Nat.lor 1 n : ℕ) : ℚ) / 2)) (A036372 (A174376 n).toNat)

end

end A297762.P542704220293528032

/-! ## A297762.P2630593668059754388

`A268197(A160380(n)+A022182(n))`
-/

namespace A297762.P2630593668059754388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268197 (A160380 n + A022182 n).toNat

end

end A297762.P2630593668059754388

/-! ## A297762.P3431708297187461328

`A187199(A124927(n)^A116399(n))`
-/

namespace A297762.P3431708297187461328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187199 (SequenceMachineLib.roundAway ((A124927 n : ℚ) ^ (A116399 n : ℤ))).toNat

end

end A297762.P3431708297187461328

/-!
# A297763: Number of 2Xn 0..1 arrays with every 1 horizontally, diagonally or antidiagonally adjacent to 2, 3 or 4 neighboring 1s.

The programs for A297763, the canonical program `A297763.P6234533170900557292` is in `Seq.B000.C044`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A297763 has offset 1).

The definition of A297763 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 201 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A297763.P6234533170900557292

`4*a(n-1)-3*a(n-2)+a(n-3)+6*a(n-4)-18*a(n-5)` with `a(0)=1, a(1)=2, a(2)=12, a(3)=31, a(4)=78`

The canonical program, it is in `Seq.B000.C044`.
-/

namespace A297763

/-- `4*a(n-1)-3*a(n-2)+a(n-3)+6*a(n-4)-18*a(n-5)` -/
def P6234533170900557292.Spec : Prop :=
  ∀ n, P6234533170900557292.a n = A297763 (n + 1)

theorem P6234533170900557292.correct : P6234533170900557292.Spec := by
  intro n
  simp only [A297763, Nat.add_sub_cancel]

end A297763

/-! ## A297763.P9724274821925190731

`record[ratio[A297762(n+1)]]`
-/

namespace A297763.P9724274821925190731
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297762 (n + 1)

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℚ) / (f2 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A297763.P9724274821925190731

namespace A297763

/-- `record[ratio[A297762(n+1)]]` -/
def P9724274821925190731.Spec : Prop :=
  ∀ n, P9724274821925190731.a n = (A297763 (n + 1) : ℚ)

end A297763

/-! ## A297763.P5786223082220976743

`A297762(∑[n+1]+2)`
-/

namespace A297763.P5786223082220976743
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297762 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A297763.P5786223082220976743

namespace A297763

/-- `A297762(∑[n+1]+2)` -/
def P5786223082220976743.Spec : Prop :=
  ∀ n, P5786223082220976743.a n = A297763 (n + 1)

end A297763

/-! ## A297763.P5302343786349949027

`record[A297762(n+2)/A202979(n+1)]`
-/

namespace A297763.P5302343786349949027
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A297762 (n + 2) : ℚ) / (A202979 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A297763.P5302343786349949027

namespace A297763

/-- `record[A297762(n+2)/A202979(n+1)]` -/
def P5302343786349949027.Spec : Prop :=
  ∀ n, P5302343786349949027.a n = (A297763 (n + 1) : ℚ)

end A297763

/-! ## A297763.P11402188559728159045

`record[A297762(n+2)/A297544(n+1)]`
-/

namespace A297763.P11402188559728159045
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A297762 (n + 2) : ℚ) / (A297544 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A297763.P11402188559728159045

namespace A297763

/-- `record[A297762(n+2)/A297544(n+1)]` -/
def P11402188559728159045.Spec : Prop :=
  ∀ n, P11402188559728159045.a n = (A297763 (n + 1) : ℚ)

end A297763

/-!
# A297764: Number of 3 X n 0..1 arrays with every 1 horizontally, diagonally or antidiagonally adjacent to 2, 3 or 4 neighboring 1's.

The programs for A297764, there is no canonical definition to state claims against.
-/

/-! ## A297764.P3198762892476296027

`A297762(∑[n+2]+4)`
-/

namespace A297764.P3198762892476296027
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297762 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A297764.P3198762892476296027

/-! ## A297764.P14465373849480956466

`record[A297762(A128373(n+2)+2)]`
-/

namespace A297764.P14465373849480956466
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297762 (A128373 (n + 2) + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A297764.P14465373849480956466

/-!
# A297765: Number of 4Xn 0..1 arrays with every 1 horizontally, diagonally or antidiagonally adjacent to 2, 3 or 4 neighboring 1s.

The programs for A297765, there is no canonical definition to state claims against.
-/

/-! ## A297765.P9036218742554307646

`A297762(A141214(n)+7)`
-/

namespace A297765.P9036218742554307646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297762 (A141214 n + 7).toNat

end

end A297765.P9036218742554307646

/-!
# A297766: Number of 5Xn 0..1 arrays with every 1 horizontally, diagonally or antidiagonally adjacent to 2, 3 or 4 neighboring 1s.

The programs for A297766, there is no canonical definition to state claims against.
-/

/-! ## A297766.P1420502756638115522

`A297762(A167499(n+3))`
-/

namespace A297766.P1420502756638115522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297762 (A167499 (n + 3)).toNat

end

end A297766.P1420502756638115522

/-!
# A297767: Number of 6Xn 0..1 arrays with every 1 horizontally, diagonally or antidiagonally adjacent to 2, 3 or 4 neighboring 1s.

The programs for A297767, there is no canonical definition to state claims against.
-/

/-! ## A297767.P17348154005401780733

`A297762(A166136(n+4))`
-/

namespace A297767.P17348154005401780733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297762 (A166136 (n + 4)).toNat

end

end A297767.P17348154005401780733

/-!
# A297768: Number of 7Xn 0..1 arrays with every 1 horizontally, diagonally or antidiagonally adjacent to 2, 3 or 4 neighboring 1s.

The programs for A297768, there is no canonical definition to state claims against.
-/

/-! ## A297768.P12270340873711570264

`A297762(A302537(n)+27)`
-/

namespace A297768.P12270340873711570264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297762 (A302537 n + 27).toNat

end

end A297768.P12270340873711570264

/-!
# A297770: Number of distinct runs in base-2 digits of n.

The programs for A297770, there is no canonical definition to state claims against.
-/

/-! ## A297770.P6200764830737583060

`A297771(A005836(n+2))`
-/

namespace A297770.P6200764830737583060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297771 (A005836 (n + 2)).toNat

end

end A297770.P6200764830737583060

/-! ## A297770.P13733654103226048469

`A297771(A005823(n+2))`
-/

namespace A297770.P13733654103226048469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297771 (A005823 (n + 2)).toNat

end

end A297770.P13733654103226048469

/-! ## A297770.P13937558305625979316

`A297772(A000695(n+1))`
-/

namespace A297770.P13937558305625979316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297772 (A000695 (n + 1)).toNat

end

end A297770.P13937558305625979316

/-! ## A297770.P17630066070202706889

`A297773(A033042(n+1))`
-/

namespace A297770.P17630066070202706889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297773 (A033042 (n + 1)).toNat

end

end A297770.P17630066070202706889

/-! ## A297770.P1086626439995910398

`A297774(A033043(n+1))`
-/

namespace A297770.P1086626439995910398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297774 (A033043 (n + 1)).toNat

end

end A297770.P1086626439995910398

/-!
# A297771: Number of distinct runs in base-3 digits of n.

The programs for A297771, there is no canonical definition to state claims against.
-/

/-! ## A297771.P7943917044789234679

`A297772(A023717(1+n))`
-/

namespace A297771.P7943917044789234679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297772 (A023717 (1 + n)).toNat

end

end A297771.P7943917044789234679

/-! ## A297771.P4890154825104300902

`A297773(A037453(n+1))`
-/

namespace A297771.P4890154825104300902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297773 (A037453 (n + 1)).toNat

end

end A297771.P4890154825104300902

/-! ## A297771.P1462620204995420803

`A297774(A037454(n+1))`
-/

namespace A297771.P1462620204995420803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297774 (A037454 (n + 1)).toNat

end

end A297771.P1462620204995420803

/-! ## A297771.P279695942013089231

`A297775(A037455(n+1))`
-/

namespace A297771.P279695942013089231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297775 (A037455 (n + 1)).toNat

end

end A297771.P279695942013089231

/-! ## A297771.P13751829097792475450

`A297776(A037456(n+1))`
-/

namespace A297771.P13751829097792475450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297776 (A037456 (n + 1)).toNat

end

end A297771.P13751829097792475450

/-! ## A297771.P9724073537298457160

`A297777(A037314(n+1))`
-/

namespace A297771.P9724073537298457160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297777 (A037314 (n + 1)).toNat

end

end A297771.P9724073537298457160

/-! ## A297771.P4220826032675778934

`A297778(A007089(n+1))`
-/

namespace A297771.P4220826032675778934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297778 (A007089 (n + 1)).toNat

end

end A297771.P4220826032675778934

/-!
# A297772: Number of distinct runs in base-4 digits of n.

The programs for A297772, there is no canonical definition to state claims against.
-/

/-! ## A297772.P12153020738912227910

`A297773(A020654(2+n))`
-/

namespace A297772.P12153020738912227910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297773 (A020654 (2 + n)).toNat

end

end A297772.P12153020738912227910

/-! ## A297772.P8783296345939116088

`A297774(A037460(n+1))`
-/

namespace A297772.P8783296345939116088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297774 (A037460 (n + 1)).toNat

end

end A297772.P8783296345939116088

/-! ## A297772.P8933236934201387823

`A297776(A037462(n+1))`
-/

namespace A297772.P8933236934201387823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297776 (A037462 (n + 1)).toNat

end

end A297772.P8933236934201387823

/-! ## A297772.P14557494422208921917

`A297777(A005836(n+2))`
-/

namespace A297772.P14557494422208921917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297777 (A005836 (n + 2)).toNat

end

end A297772.P14557494422208921917

/-! ## A297772.P3834804439450190939

`A297778(A007090(n+1))`
-/

namespace A297772.P3834804439450190939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297778 (A007090 (n + 1)).toNat

end

end A297772.P3834804439450190939

/-! ## A297772.P10277176468933496448

`A297777(A005823(n+2))`
-/

namespace A297772.P10277176468933496448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297777 (A005823 (n + 2)).toNat

end

end A297772.P10277176468933496448

/-! ## A297772.P1499039665885929534

`A297784(A000695(n+1))`
-/

namespace A297772.P1499039665885929534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297784 (A000695 (n + 1)).toNat

end

end A297772.P1499039665885929534

/-!
# A297773: Number of distinct runs in base-5 digits of n.

The programs for A297773, there is no canonical definition to state claims against.
-/

/-! ## A297773.P10496437526587677398

`A297775(A037466(n+1))`
-/

namespace A297773.P10496437526587677398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297775 (A037466 (n + 1)).toNat

end

end A297773.P10496437526587677398

/-! ## A297773.P16302932528239016026

`A297778(A007091(n+1))`
-/

namespace A297773.P16302932528239016026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297778 (A007091 (n + 1)).toNat

end

end A297773.P16302932528239016026

/-! ## A297773.P8362898167511896404

`A076489(A061830(n+1))`
-/

namespace A297773.P8362898167511896404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076489 (A061830 (n + 1)).toNat

end

end A297773.P8362898167511896404

/-! ## A297773.P13655258719654937347

`A043536(A072955(n+1))`
-/

namespace A297773.P13655258719654937347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043536 (A072955 (n + 1)).toNat

end

end A297773.P13655258719654937347

/-!
# A297774: Number of distinct runs in base-6 digits of n.

The programs for A297774, there is no canonical definition to state claims against.
-/

/-! ## A297774.P10159708014144130170

`A297777(A037472(n+1))`
-/

namespace A297774.P10159708014144130170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297777 (A037472 (n + 1)).toNat

end

end A297774.P10159708014144130170

/-! ## A297774.P14787436646973178082

`A297778(A084984(2+n))`
-/

namespace A297774.P14787436646973178082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297778 (A084984 (2 + n)).toNat

end

end A297774.P14787436646973178082

/-! ## A297774.P7549017914369633144

`A043537(A171591(n+1))`
-/

namespace A297774.P7549017914369633144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043537 (A171591 (n + 1)).toNat

end

end A297774.P7549017914369633144

/-! ## A297774.P1261670500378100263

`A043537(A072955(n+1))`
-/

namespace A297774.P1261670500378100263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043537 (A072955 (n + 1)).toNat

end

end A297774.P1261670500378100263

/-!
# A297776: Number of distinct runs in base-8 digits of n.

The programs for A297776, there is no canonical definition to state claims against.
-/

/-! ## A297776.P2768536751309217743

`A043537(eq[A222225(n), A233583(n+1)])`
-/

namespace A297776.P2768536751309217743
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222225 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233583 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043537 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A297776.P2768536751309217743

/-! ## A297776.P3476723805353737973

`A297778(eq[A222225(n), A233583(n+1)])`
-/

namespace A297776.P3476723805353737973
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222225 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233583 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297778 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A297776.P3476723805353737973

/-! ## A297776.P15428511546875529240

`A047726(A072957(n+1))`
-/

namespace A297776.P15428511546875529240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047726 (A072957 (n + 1)).toNat

end

end A297776.P15428511546875529240

/-! ## A297776.P9844921679266701504

`A164886(A165033(A165090(n+1)²))`
-/

namespace A297776.P9844921679266701504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164886 (A165033 (A165090 (n + 1) ^ 2).toNat).toNat

end

end A297776.P9844921679266701504

/-!
# A297777: Number of distinct runs in base-9 digits of n.

The programs for A297777, there is no canonical definition to state claims against.
-/

/-! ## A297777.P10559206632971646718

`A297778(A007095(n+1))`
-/

namespace A297777.P10559206632971646718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297778 (A007095 (n + 1)).toNat

end

end A297777.P10559206632971646718

/-! ## A297777.P12994310190125129770

`A297784(A023717(n+1))`
-/

namespace A297777.P12994310190125129770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297784 (A023717 (n + 1)).toNat

end

end A297777.P12994310190125129770

/-!
# A297779: Number of distinct runs in base-11 digits of n.

The programs for A297779, there is no canonical definition to state claims against.
-/

/-! ## A297779.P8177033895369008893

`A043561(A227394(n+1))`
-/

namespace A297779.P8177033895369008893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043561 (A227394 (n + 1)).toNat

end

end A297779.P8177033895369008893

/-! ## A297779.P5789427851236230120

`A392610(A360146(n+1))`
-/

namespace A297779.P5789427851236230120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392610 (A360146 (n + 1)).toNat

end

end A297779.P5789427851236230120

/-! ## A297779.P11151761541566053905

`gcd(A055642(n), A275463(n+1))`
-/

namespace A297779.P11151761541566053905
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A055642 n) (A275463 (n + 1))

end

end A297779.P11151761541566053905

/-! ## A297779.P11797011540493391462

`A043541(A346131(n+2))`
-/

namespace A297779.P11797011540493391462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043541 (A346131 (n + 2)).toNat

end

end A297779.P11797011540493391462

/-!
# A297780: Number of distinct runs in base-12 digits of n.

The programs for A297780, there is no canonical definition to state claims against.
-/

/-! ## A297780.P10909133136690255163

`A297782(A346151(n))`
-/

namespace A297780.P10909133136690255163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297782 (A346151 n).toNat

end

end A297780.P10909133136690255163

/-! ## A297780.P17588579414697565006

`A043565(A043565(A239455(n+1))+n)`
-/

namespace A297780.P17588579414697565006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043565 (A043565 (A239455 (n + 1)).toNat + (n : ℤ)).toNat

end

end A297780.P17588579414697565006

/-! ## A297780.P7798300334679106958

`A043542(A346131(n+2))`
-/

namespace A297780.P7798300334679106958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043542 (A346131 (n + 2)).toNat

end

end A297780.P7798300334679106958

/-!
# A297781: Number of distinct runs in base-13 digits of n.

The programs for A297781, there is no canonical definition to state claims against.
-/

/-! ## A297781.P10153757784481586059

`A043537(A247973(n+1))`
-/

namespace A297781.P10153757784481586059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043537 (A247973 (n + 1)).toNat

end

end A297781.P10153757784481586059

/-! ## A297781.P15429761556419357599

`A297783(A346151(n))`
-/

namespace A297781.P15429761556419357599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297783 (A346151 n).toNat

end

end A297781.P15429761556419357599

/-! ## A297781.P14349403390358092593

`A043566(A043561(A239455(n))+n)`
-/

namespace A297781.P14349403390358092593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043566 (A043561 (A239455 n).toNat + (n : ℤ)).toNat

end

end A297781.P14349403390358092593

/-! ## A297781.P9911457036227918729

`A297782(A043568(A239455(n+1))+n)`
-/

namespace A297781.P9911457036227918729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297782 (A043568 (A239455 (n + 1)).toNat + (n : ℤ)).toNat

end

end A297781.P9911457036227918729

/-!
# A297782: Number of distinct runs in base-14 digits of n.

The programs for A297782, there is no canonical definition to state claims against.
-/

/-! ## A297782.P6821054264938486771

`A297779(A352241(n+2))`
-/

namespace A297782.P6821054264938486771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297779 (A352241 (n + 2)).toNat

end

end A297782.P6821054264938486771

/-! ## A297782.P10145152444774213959

`A098378(A100881(n+1))`
-/

namespace A297782.P10145152444774213959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098378 (A100881 (n + 1)).toNat

end

end A297782.P10145152444774213959

/-! ## A297782.P14333691185832001475

`A167965(A353240(n))`
-/

namespace A297782.P14333691185832001475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167965 (A353240 n).toNat

end

end A297782.P14333691185832001475

/-! ## A297782.P5039070335153852754

`A129765(A367843(n+1))`
-/

namespace A297782.P5039070335153852754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129765 (A367843 (n + 1)).toNat

end

end A297782.P5039070335153852754

/-!
# A297783: Number of distinct runs in base-15 digits of n.

The programs for A297783, there is no canonical definition to state claims against.
-/

/-! ## A297783.P15981020567578891581

`A043542(A233583(n+2))`
-/

namespace A297783.P15981020567578891581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043542 (A233583 (n + 2)).toNat

end

end A297783.P15981020567578891581

/-! ## A297783.P6539832186248003752

`A043568(A043566(A239455(n))+n)`
-/

namespace A297783.P6539832186248003752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043568 (A043566 (A239455 n).toNat + (n : ℤ)).toNat

end

end A297783.P6539832186248003752

/-! ## A297783.P3215017723943974132

`A261913(A048002(n+1))`
-/

namespace A297783.P3215017723943974132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261913 (A048002 (n + 1)).toNat

end

end A297783.P3215017723943974132

/-! ## A297783.P2906180589978066753

`A195061(A236924(n+1))`
-/

namespace A297783.P2906180589978066753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195061 (A236924 (n + 1)).toNat

end

end A297783.P2906180589978066753

/-!
# A297784: Number of distinct runs in base-16 digits of n.

The programs for A297784, there is no canonical definition to state claims against.
-/

/-! ## A297784.P1657530523449362559

`A043566(A101788(n+2))`
-/

namespace A297784.P1657530523449362559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043566 (A101788 (n + 2)).toNat

end

end A297784.P1657530523449362559

/-! ## A297784.P396989834818927073

`A211666(A097594(n))`
-/

namespace A297784.P396989834818927073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211666 (A097594 n).toNat

end

end A297784.P396989834818927073

/-! ## A297784.P10307722180843901563

`A043568(A055571(n+1))`
-/

namespace A297784.P10307722180843901563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043568 (A055571 (n + 1)).toNat

end

end A297784.P10307722180843901563

/-! ## A297784.P8142366776777074645

`A195061(A124866(n+1))`
-/

namespace A297784.P8142366776777074645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195061 (A124866 (n + 1)).toNat

end

end A297784.P8142366776777074645

/-!
# A297785: Decimal expansion of 4099200041/9999^3.

The programs for A297785, there is no canonical definition to state claims against.
-/

/-! ## A297785.P5400377669536352625

`and(A000289(A038698(n+4)), A234534(n+1))`
-/

namespace A297785.P5400377669536352625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A000289 (A038698 (n + 4)).toNat) (A234534 (n + 1))

end

end A297785.P5400377669536352625

/-!
# A297786: Decimal expansion of 10980011/999^3.

The programs for A297786, there is no canonical definition to state claims against.
-/

/-! ## A297786.P10879673171343137462

`A001222(A220335(n+1)-A152830(2*n+3))`
-/

namespace A297786.P10879673171343137462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A220335 (n + 1) - A152830 (2 * n + 3)).toNat

end

end A297786.P10879673171343137462

/-! ## A297786.P5418687820776258232

`A000040(2*(n+2))%A000030(A156616(n))`
-/

namespace A297786.P5418687820776258232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000040 (2 * (n + 2))) (A000030 (A156616 n).toNat)

end

end A297786.P5418687820776258232

/-!
# A297789: The number of length 2n - 1 strings over the alphabet {0, 1} such that the first half of any initial odd length substring is a permutation of the second half.

The programs for A297789, there is no canonical definition to state claims against.
-/

/-! ## A297789.P14769038656350900522

`∑[A168389(A147143(n+1))]`
-/

namespace A297789.P14769038656350900522
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168389 (A147143 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A297789.P14769038656350900522

/-! ## A297789.P5301411244504162398

`∑[∑{d}[A187829(A028304(n)), #]]`
-/

namespace A297789.P5301411244504162398
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187829 (A028304 n).toNat

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n).natAbs, d

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A297789.P5301411244504162398

/-! ## A297789.P14928767738488960782

`A070319(A060797(n))+ceil(sin(n)²)`
-/

namespace A297789.P14928767738488960782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070319 (A060797 n).toNat + ⌈Real.sin (n : ℝ) ^ 2⌉

end

end A297789.P14928767738488960782

/-! ## A297789.P14839125451107432957

`A070319(A060797(n))+A057427(n)`
-/

namespace A297789.P14839125451107432957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070319 (A060797 n).toNat + A057427 n

end

end A297789.P14839125451107432957

/-! ## A297789.P1876918686717917728

`A353838(A360889(n)+A360414(n))`
-/

namespace A297789.P1876918686717917728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353838 (A360889 n + A360414 n).toNat

end

end A297789.P1876918686717917728

/-!
# A297790: Areas of integer side-length cyclic quadrilaterals, excluding rectangles and kites with two right angles, with integer area.

The programs for A297790, there is no canonical definition to state claims against.
-/

/-! ## A297790.P1346905259034579495

`lt[A105771(n+1), A067538(n+1)]+1`
-/

namespace A297790.P1346905259034579495
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105771 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067538 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A297790.P1346905259034579495

/-! ## A297790.P1082725668090141889

`lt[A067059(A004125(n+1)), A326852(n)]`
-/

namespace A297790.P1082725668090141889
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067059 (A004125 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326852 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A297790.P1082725668090141889

/-! ## A297790.P13972934226189012091

`A178860(A059504(n+1)+1)`
-/

namespace A297790.P13972934226189012091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178860 (A059504 (n + 1) + 1).toNat

end

end A297790.P13972934226189012091

/-! ## A297790.P7749910246539006171

`lt[A038567(A324743(n)), A072480(n)]`
-/

namespace A297790.P7749910246539006171
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038567 (A324743 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072480 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A297790.P7749910246539006171

/-! ## A297790.P9826923644200251418

`lt[A321721(n), A002623(A326852(n))]`
-/

namespace A297790.P9826923644200251418
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321721 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002623 (A326852 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A297790.P9826923644200251418

/-!
# A297791: Number of series-reduced leaf-balanced rooted trees with n nodes. Number of orderless same-trees with n nodes and all leaves equal to 1.

The programs for A297791, there is no canonical definition to state claims against.
-/

/-! ## A297791.P8975749510076084420

`A307598(A118180(n))+A167865(n)`
-/

namespace A297791.P8975749510076084420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307598 (A118180 n).toNat + A167865 n

end

end A297791.P8975749510076084420

/-! ## A297791.P6369378826458902790

`A357849(A146767(n))+A167865(n)`
-/

namespace A297791.P6369378826458902790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357849 (A146767 n).toNat + A167865 n

end

end A297791.P6369378826458902790

/-! ## A297791.P9771041883536884296

`A167865(n)+A008683(A122726(n+1))`
-/

namespace A297791.P9771041883536884296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167865 n + A008683 (A122726 (n + 1)).toNat

end

end A297791.P9771041883536884296

/-! ## A297791.P16067774141849506512

`A341027(A103881(n+1))+A167865(n)`
-/

namespace A297791.P16067774141849506512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341027 ((A103881 (n + 1)).toNat + 220) + A167865 n

end

end A297791.P16067774141849506512

/-! ## A297791.P9591276634652267986

`A381735(A202988(n+1))+A167865(n)`
-/

namespace A297791.P9591276634652267986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381735 (A202988 (n + 1)).toNat + A167865 n

end

end A297791.P9591276634652267986

/-!
# A297792: a(n) = Sum_{d|n} min(d, n/d)^2.

The programs for A297792, the canonical program `A297792.P10698722816538905259` is in `Seq.B000.C044`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A297792 has offset 1).

The definition of A297792 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A297792.P10698722816538905259

`∑{d}[n+1, min(#, (n+1)/#)²]`

The canonical program, it is in `Seq.B000.C044`.
-/

namespace A297792

/-- `∑{d}[n+1, min(#, (n+1)/#)²]` -/
def P10698722816538905259.Spec : Prop :=
  ∀ n, P10698722816538905259.a n = (A297792 (n + 1) : ℚ)

end A297792

/-! ## A297792.P16865252261443119111

`∑{d}[n+1, #²-abs(n+1-#²)]`
-/

namespace A297792.P16865252261443119111
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), ((d ^ 2 : ℤ) - |(n + 1 : ℤ) - (d ^ 2 : ℤ)|)

end

end A297792.P16865252261443119111

namespace A297792

/-- `∑{d}[n+1, #²-abs(n+1-#²)]` -/
def P16865252261443119111.Spec : Prop :=
  ∀ n, P16865252261443119111.a n = A297792 (n + 1)

end A297792

/-! ## A297792.P2414705452151555284

`A339353(n+1)+A095118(n+1)`
-/

namespace A297792.P2414705452151555284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339353 (n + 1) + A095118 (n + 1)

end

end A297792.P2414705452151555284

namespace A297792

/-- `A339353(n+1)+A095118(n+1)` -/
def P2414705452151555284.Spec : Prop :=
  ∀ n, P2414705452151555284.a n = A297792 (n + 1)

end A297792

/-! ## A297792.P17098240409634780521

`2*A001157(n+1)-A297841(n+1)`
-/

namespace A297792.P17098240409634780521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A001157 (n + 1) - A297841 (n + 1)

end

end A297792.P17098240409634780521

namespace A297792

/-- `2*A001157(n+1)-A297841(n+1)` -/
def P17098240409634780521.Spec : Prop :=
  ∀ n, P17098240409634780521.a n = A297792 (n + 1)

end A297792

/-! ## A297792.P16173615585597021059

`A095118(n+1)+A095118(n+1)-A037213(n+1)²`
-/

namespace A297792.P16173615585597021059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095118 (n + 1) + (A095118 (n + 1) - A037213 (n + 1) ^ 2)

end

end A297792.P16173615585597021059

namespace A297792

/-- `A095118(n+1)+A095118(n+1)-A037213(n+1)²` -/
def P16173615585597021059.Spec : Prop :=
  ∀ n, P16173615585597021059.a n = A297792 (n + 1)

end A297792

/-! ## A297792.P4956158090846854822

`A339353(n+1)+A069293((n+1)²)`
-/

namespace A297792.P4956158090846854822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339353 (n + 1) + A069293 ((n + 1) ^ 2)

end

end A297792.P4956158090846854822

namespace A297792

/-- `A339353(n+1)+A069293((n+1)²)` -/
def P4956158090846854822.Spec : Prop :=
  ∀ n, P4956158090846854822.a n = A297792 (n + 1)

end A297792

/-! ## A297792.P7544005586288111203

`A069293((n+1)²)+A095118(n+1)%A053143(n+1)`
-/

namespace A297792.P7544005586288111203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069293 ((n + 1) ^ 2) + Int.tmod (A095118 (n + 1)) (A053143 (n + 1))

end

end A297792.P7544005586288111203

namespace A297792

/-- `A069293((n+1)²)+A095118(n+1)%A053143(n+1)` -/
def P7544005586288111203.Spec : Prop :=
  ∀ n, P7544005586288111203.a n = A297792 (n + 1)

end A297792

/-! ## A297792.P15008855761248639495

`A004277(∑{d}[n+1, #²])-A297841(n+1)`
-/

namespace A297792.P15008855761248639495
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (∑ d ∈ Nat.divisors (f1 n), d ^ 2) - A297841 (n + 1)

end

end A297792.P15008855761248639495

namespace A297792

/-- `A004277(∑{d}[n+1, #²])-A297841(n+1)` -/
def P15008855761248639495.Spec : Prop :=
  ∀ n, P15008855761248639495.a n = A297792 (n + 1)

end A297792

/-! ## A297792.P11493804155573284230

`A004277(ceil(∑{d}[n+1, #^(4/2)]))-A297841(n+1)`
-/

namespace A297792.P11493804155573284230
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 ⌈∑ d ∈ Nat.divisors (f1 n), (d : ℝ) ^ ((4 : ℚ) / 2 : ℝ)⌉.toNat - A297841 (n + 1)

end

end A297792.P11493804155573284230

namespace A297792

/-- `A004277(ceil(∑{d}[n+1, #^(4/2)]))-A297841(n+1)` -/
def P11493804155573284230.Spec : Prop :=
  ∀ n, P11493804155573284230.a n = A297792 (n + 1)

end A297792

/-! ## A297792.P1685446827388115986

`A004277(round(∑{d}[n+1, #^(4/2)]))-A297841(n+1)`
-/

namespace A297792.P1685446827388115986
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (SequenceMachineLib.roundAway (∑ d ∈ Nat.divisors (f1 n), (d : ℝ) ^ ((4 : ℚ) / 2 : ℝ))).toNat - A297841 (n + 1)

end

end A297792.P1685446827388115986

namespace A297792

/-- `A004277(round(∑{d}[n+1, #^(4/2)]))-A297841(n+1)` -/
def P1685446827388115986.Spec : Prop :=
  ∀ n, P1685446827388115986.a n = A297792 (n + 1)

end A297792

/-!
# A297793: a(n) = Sum_{d|n} min(d, n/d)^3.

The programs for A297793, the canonical program `A297793.P18169868127632967305` is in `Seq.B000.C044`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A297793 has offset 1).

The definition of A297793 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A297793.P18169868127632967305

`∑{d}[n+1, min(#, (n+1)/#)^3]`

The canonical program, it is in `Seq.B000.C044`.
-/

namespace A297793

/-- `∑{d}[n+1, min(#, (n+1)/#)^3]` -/
def P18169868127632967305.Spec : Prop :=
  ∀ n, P18169868127632967305.a n = (A297793 (n + 1) : ℚ)

end A297793

/-! ## A297793.P16213789537926303539

`2*A001158(n+1)-A297842(n+1)`
-/

namespace A297793.P16213789537926303539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A001158 (n + 1) - A297842 (n + 1)

end

end A297793.P16213789537926303539

namespace A297793

/-- `2*A001158(n+1)-A297842(n+1)` -/
def P16213789537926303539.Spec : Prop :=
  ∀ n, P16213789537926303539.a n = A297793 (n + 1)

end A297793

/-! ## A297793.P5694301057801765273

`A091259(n+1)-A297842(n+1)%A091259(n+1)`
-/

namespace A297793.P5694301057801765273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091259 (n + 1) - Int.tmod (A297842 (n + 1)) (A091259 (n + 1))

end

end A297793.P5694301057801765273

namespace A297793

/-- `A091259(n+1)-A297842(n+1)%A091259(n+1)` -/
def P5694301057801765273.Spec : Prop :=
  ∀ n, P5694301057801765273.a n = A297793 (n + 1)

end A297793

/-! ## A297793.P3041946745868802401

`∑{d}[n+1, #^3]-(A297842(n+1)-(A279290(n+1)+A005064(n+1)))`
-/

namespace A297793.P3041946745868802401
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ d ∈ Nat.divisors (f1 n), d ^ 3 : ℕ) : ℤ) - (A297842 (n + 1) - (A279290 (n + 1) + A005064 (n + 1)))

end

end A297793.P3041946745868802401

namespace A297793

/-- `∑{d}[n+1, #^3]-(A297842(n+1)-(A279290(n+1)+A005064(n+1)))` -/
def P3041946745868802401.Spec : Prop :=
  ∀ n, P3041946745868802401.a n = A297793 (n + 1)

end A297793

/-! ## A297793.P3527170544490100517

`2*A278403(n+1)-A001157(n+1)-(A297842(n+1)-∑{d}[n+1, #^3])`
-/

namespace A297793.P3527170544490100517
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A278403 (n + 1) - A001157 (n + 1) - (A297842 (n + 1) - ((∑ d ∈ Nat.divisors (f1 n), d ^ 3 : ℕ) : ℤ))

end

end A297793.P3527170544490100517

namespace A297793

/-- `2*A278403(n+1)-A001157(n+1)-(A297842(n+1)-∑{d}[n+1, #^3])` -/
def P3527170544490100517.Spec : Prop :=
  ∀ n, P3527170544490100517.a n = A297793 (n + 1)

end A297793

/-! ## A297793.P2392076487635129893

`A001158(n+1)-(A297842(n+1)-(A279290(n+1)+A005064(n+1)))`
-/

namespace A297793.P2392076487635129893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001158 (n + 1) - (A297842 (n + 1) - (A279290 (n + 1) + A005064 (n + 1)))

end

end A297793.P2392076487635129893

namespace A297793

/-- `A001158(n+1)-(A297842(n+1)-(A279290(n+1)+A005064(n+1)))` -/
def P2392076487635129893.Spec : Prop :=
  ∀ n, P2392076487635129893.a n = A297793 (n + 1)

end A297793

/-! ## A297793.P1228280737683224898

`∑{d}[n+1, #^3]-(A297842(n+1)-A281372(n+1)/(n+1))`
-/

namespace A297793.P1228280737683224898
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ d ∈ Nat.divisors (f1 n), d ^ 3 : ℕ) : ℚ) - ((A297842 (n + 1) : ℚ) - (A281372 (n + 1) : ℚ) / (n + 1 : ℚ))

end

end A297793.P1228280737683224898

namespace A297793

/-- `∑{d}[n+1, #^3]-(A297842(n+1)-A281372(n+1)/(n+1))` -/
def P1228280737683224898.Spec : Prop :=
  ∀ n, P1228280737683224898.a n = (A297793 (n + 1) : ℚ)

end A297793

/-! ## A297793.P13991247058730321532

`A001158(n+1)-(A297842(n+1)-A281372(n+1)/(n+1))`
-/

namespace A297793.P13991247058730321532
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001158 (n + 1) : ℚ) - ((A297842 (n + 1) : ℚ) - (A281372 (n + 1) : ℚ) / (n + 1 : ℚ))

end

end A297793.P13991247058730321532

namespace A297793

/-- `A001158(n+1)-(A297842(n+1)-A281372(n+1)/(n+1))` -/
def P13991247058730321532.Spec : Prop :=
  ∀ n, P13991247058730321532.a n = (A297793 (n + 1) : ℚ)

end A297793

/-! ## A297793.P12225197997222709648

`2*A278403(n+1)-A001157(n+1)-(A297842(n+1)-A281372(n+1)/(n+1))`
-/

namespace A297793.P12225197997222709648
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 * A278403 (n + 1) - A001157 (n + 1) : ℚ) - ((A297842 (n + 1) : ℚ) - (A281372 (n + 1) : ℚ) / (n + 1 : ℚ))

end

end A297793.P12225197997222709648

namespace A297793

/-- `2*A278403(n+1)-A001157(n+1)-(A297842(n+1)-A281372(n+1)/(n+1))` -/
def P12225197997222709648.Spec : Prop :=
  ∀ n, P12225197997222709648.a n = (A297793 (n + 1) : ℚ)

end A297793

/-! ## A297793.P54386456612354584

`A339354(n+1)+A280375(n+1)`
-/

namespace A297793.P54386456612354584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339354 (n + 1) + A280375 (n + 1)

end

end A297793.P54386456612354584

namespace A297793

/-- `A339354(n+1)+A280375(n+1)` -/
def P54386456612354584.Spec : Prop :=
  ∀ n, P54386456612354584.a n = A297793 (n + 1)

end A297793

/-!
# A297794: a(n) = Sum_{d|n} min(d, n/d)^4.

The programs for A297794, the canonical program `A297794.P16231714316912973444` is in `Seq.B000.C044`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A297794 has offset 1).

The definition of A297794 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A297794.P16231714316912973444

`∑{d}[n+1, min(#, (n+1)/#)^4]`

The canonical program, it is in `Seq.B000.C044`.
-/

namespace A297794

/-- `∑{d}[n+1, min(#, (n+1)/#)^4]` -/
def P16231714316912973444.Spec : Prop :=
  ∀ n, P16231714316912973444.a n = (A297794 (n + 1) : ℚ)

end A297794

/-! ## A297794.P1536687906870491531

`A347143(1+n)+A347142(n+1)`
-/

namespace A297794.P1536687906870491531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347143 (1 + n) + A347142 (n + 1)

end

end A297794.P1536687906870491531

namespace A297794

/-- `A347143(1+n)+A347142(n+1)` -/
def P1536687906870491531.Spec : Prop :=
  ∀ n, P1536687906870491531.a n = A297794 (n + 1)

end A297794

/-! ## A297794.P6557963608140999855

`2*A001159(n+1)-A297843(n+1)`
-/

namespace A297794.P6557963608140999855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A001159 (n + 1) - A297843 (n + 1)

end

end A297794.P6557963608140999855

namespace A297794

/-- `2*A001159(n+1)-A297843(n+1)` -/
def P6557963608140999855.Spec : Prop :=
  ∀ n, P6557963608140999855.a n = A297794 (n + 1)

end A297794

/-!
# A297795: a(n) = Sum_{d|n} min(d, n/d)^5.

The programs for A297795, the canonical program `A297795.P11832461090398107035` is in `Seq.B000.C044`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A297795 has offset 1).

The definition of A297795 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A297795.P11832461090398107035

`∑{d}[n+1, min(#, (n+1)/#)^5]`

The canonical program, it is in `Seq.B000.C044`.
-/

namespace A297795

/-- `∑{d}[n+1, min(#, (n+1)/#)^5]` -/
def P11832461090398107035.Spec : Prop :=
  ∀ n, P11832461090398107035.a n = (A297795 (n + 1) : ℚ)

end A297795

/-! ## A297795.P1931400106827538827

`2*A001160(n+1)-A297844(n+1)`
-/

namespace A297795.P1931400106827538827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A001160 (n + 1) - A297844 (n + 1)

end

end A297795.P1931400106827538827

namespace A297795

/-- `2*A001160(n+1)-A297844(n+1)` -/
def P1931400106827538827.Spec : Prop :=
  ∀ n, P1931400106827538827.a n = A297795 (n + 1)

end A297795

/-!
# A297796: Number of n X n 0..1 arrays with every 1 horizontally, diagonally or antidiagonally adjacent to 2, 3 or 5 neighboring 1's.

The programs for A297796, there is no canonical definition to state claims against.
-/

/-! ## A297796.P2404887372725345641

`A297802(∑[4*n]+1)`
-/

namespace A297796.P2404887372725345641
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297802 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A297796.P2404887372725345641

/-! ## A297796.P7041847769485195265

`record[A003982(n)*A297802(n+1)]`
-/

namespace A297796.P7041847769485195265
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A297802 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A297796.P7041847769485195265

/-! ## A297796.P4043895147183247152

`record[gcd(A214292(n), A297802(n+1))]`
-/

namespace A297796.P4043895147183247152
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A214292 n) (A297802 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A297796.P4043895147183247152

/-! ## A297796.P14737090203323752994

`record[A203994(n+1)*A297802(n+1)]`
-/

namespace A297796.P14737090203323752994
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203994 (n + 1) * A297802 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A297796.P14737090203323752994

/-!
# A297797: Number of nX3 0..1 arrays with every 1 horizontally, diagonally or antidiagonally adjacent to 2, 3 or 5 neighboring 1s.

The programs for A297797, there is no canonical definition to state claims against.
-/

/-! ## A297797.P11604735389588746685

`A297802(∑[n+3]+1)`
-/

namespace A297797.P11604735389588746685
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297802 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A297797.P11604735389588746685

/-! ## A297797.P3227779092337333108

`record[A297802(A128373(n+2))]`
-/

namespace A297797.P3227779092337333108
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297802 (A128373 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A297797.P3227779092337333108

/-! ## A297797.P2641442335043134600

`record[A297802(gcd(n, A185782(n+2)))]`
-/

namespace A297797.P2641442335043134600
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297802 (Int.gcd (n : ℤ) (A185782 (n + 2)))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A297797.P2641442335043134600

/-! ## A297797.P6624665690437611013

`record[A297802(n+1)/A075504(n+3)]`
-/

namespace A297797.P6624665690437611013
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A297802 (n + 1) : ℚ) / (A075504 (n + 3) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A297797.P6624665690437611013

/-!
# A297798: Number of nX4 0..1 arrays with every 1 horizontally, diagonally or antidiagonally adjacent to 2, 3 or 5 neighboring 1s.

The programs for A297798, there is no canonical definition to state claims against.
-/

/-! ## A297798.P1746096037602321473

`A297802(A141214(n+1))`
-/

namespace A297798.P1746096037602321473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297802 (A141214 (n + 1)).toNat

end

end A297798.P1746096037602321473

/-!
# A297799: Number of n X 5 0..1 arrays with every 1 horizontally, diagonally or antidiagonally adjacent to 2, 3 or 5 neighboring 1's.

The programs for A297799, there is no canonical definition to state claims against.
-/

/-! ## A297799.P13012784684371785293

`A297802(Δ[A264443(n)])`
-/

namespace A297799.P13012784684371785293
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297802 (f1 (n + 1) - f1 n).toNat

end

end A297799.P13012784684371785293

