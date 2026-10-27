import SequenceMachineLib
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C004
import Seq.B000.C005
import Seq.B000.C006
import Seq.B000.C007
import Seq.B000.C008
import Seq.B000.C009
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
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C036
import Seq.B000.C039
import Seq.B000.C040
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C004
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C008
import Seq.B001.C010
import Seq.B001.C011
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C006
import Seq.B002.C007
import Seq.B003.C000
import Seq.B003.C002
import Seq.B004.C000
import Seq.B004.C002
import Seq.B005.C000
import Seq.B005.C001
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

/-!
# A297700: Number of 7Xn 0..1 arrays with every 1 horizontally, diagonally or antidiagonally adjacent to 0, 2 or 4 neighboring 1s.

The programs for A297700, there is no canonical definition to state claims against.
-/

/-! ## A297700.P7378473143839122210

`A297694(eq[11, A066657(n)])`
-/

namespace A297700.P7378473143839122210
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297694 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A297700.P7378473143839122210

/-! ## A297700.P5676977835818884622

`A297694(A167499(n+5)+2)`
-/

namespace A297700.P5676977835818884622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297694 (A167499 (n + 5) + 2).toNat

end

end A297700.P5676977835818884622

/-! ## A297700.P3027432951542562070

`A297694(A167614(n+5)+4)`
-/

namespace A297700.P3027432951542562070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297694 (A167614 (n + 5) + 4).toNat

end

end A297700.P3027432951542562070

/-! ## A297700.P18390268728270822997

`A297694(A055999(n+3)+13)`
-/

namespace A297700.P18390268728270822997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297694 (A055999 (n + 3) + 13).toNat

end

end A297700.P18390268728270822997

/-! ## A297700.P12724756753255412967

`A297694(eq[8, A131818(n+1)])`
-/

namespace A297700.P12724756753255412967
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297694 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A297700.P12724756753255412967

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

/-! ## A297701.P16443300345320952999

`A135611(n-(ceil(a(n-1))-a(n-1)))` with `a(0)=4`

`ceil` is left out, it is the identity on integers.
-/

namespace A297701.P16443300345320952999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [4] fun n a =>
  A135611 (((n : ℤ) - (a (n - 1) - a (n - 1))).toNat + 1)

end

end A297701.P16443300345320952999

/-! ## A297701.P9475285597829538127

`A135611(n-(round(a(n-1))-a(n-1)))` with `a(0)=4`

`round` is left out, it is the identity on integers.
-/

namespace A297701.P9475285597829538127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [4] fun n a =>
  A135611 (((n : ℤ) - (a (n - 1) - a (n - 1))).toNat + 1)

end

end A297701.P9475285597829538127

/-! ## A297701.P8245742913020673236

`A135611(n)+a(n-1)-A004917(a(n-1)+1)` with `a(0)=4`
-/

namespace A297701.P8245742913020673236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [4] fun n a =>
  A135611 (n + 1) + a (n - 1) - A004917 (a (n - 1) + 1).toNat

end

end A297701.P8245742913020673236

/-! ## A297701.P3096504211810823399

`A135611(A020821(2*n+1)+n)`
-/

namespace A297701.P3096504211810823399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135611 ((A020821 (2 * n + 1) + (n : ℤ)).toNat + 1)

end

end A297701.P3096504211810823399

/-!
# A297703: The Genocchi triangle read by rows, T(n,k) for n>=0 and 0<=k<=n.

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

/-! ## A297703.P2318658839602170821

`A099959(A061885(n))`
-/

namespace A297703.P2318658839602170821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099959 (A061885 n).toNat

end

end A297703.P2318658839602170821

/-! ## A297703.P4671271805827966425

`A014781(A004201(n+1))`
-/

namespace A297703.P4671271805827966425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014781 (A004201 (n + 1)).toNat

end

end A297703.P4671271805827966425

/-! ## A297703.P9557946552040554970

`A014781(A061885(n+1))`
-/

namespace A297703.P9557946552040554970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014781 (A061885 (n + 1)).toNat

end

end A297703.P9557946552040554970

/-! ## A297703.P13878569237372580650

`A099959(A057944(n)+n)`
-/

namespace A297703.P13878569237372580650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099959 (A057944 n + (n : ℤ)).toNat

end

end A297703.P13878569237372580650

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

/-! ## A297707.P10951348485818650037

`A152684(n+1)*A355270(A133686(n))`
-/

namespace A297707.P10951348485818650037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152684 (n + 1) * A355270 (A133686 n).toNat

end

end A297707.P10951348485818650037

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

/-! ## A297710.P4807533576408822084

`filter[A213598(n+1), A228710(#)]`
-/

namespace A297710.P4807533576408822084
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213598 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A228710 (f1 j).toNat = 1) n)

end

end A297710.P4807533576408822084

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

/-! ## A297714.P5643670746128104593

`or(A124761(n), A297720(A001844(n)))`
-/

namespace A297714.P5643670746128104593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A124761 n) (A297720 (A001844 n).toNat)

end

end A297714.P5643670746128104593

/-! ## A297714.P6627423020015741922

`or(A069845(n+1), A297720(A001844(n)))`
-/

namespace A297714.P6627423020015741922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A069845 (n + 1)) (A297720 (A001844 n).toNat)

end

end A297714.P6627423020015741922

/-! ## A297714.P2782592246950257715

`or(A069847(n+1), A297720(A001844(n)))`
-/

namespace A297714.P2782592246950257715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A069847 (n + 1)) (A297720 (A001844 n).toNat)

end

end A297714.P2782592246950257715

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

/-! ## A297716.P13885221258827351280

`A297720(A055998(n+2))`
-/

namespace A297716.P13885221258827351280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297720 (A055998 (n + 2)).toNat

end

end A297716.P13885221258827351280

/-! ## A297716.P10002270128175763947

`A297720(A155212(n)+5)`
-/

namespace A297716.P10002270128175763947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297720 (A155212 n + 5).toNat

end

end A297716.P10002270128175763947

/-! ## A297716.P678114487064442935

`A297720(A056000(n)+7)`
-/

namespace A297716.P678114487064442935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297720 (A056000 n + 7).toNat

end

end A297716.P678114487064442935

/-! ## A297716.P8440597464207272721

`A297720(eq[2, A152157(n)])`
-/

namespace A297716.P8440597464207272721
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152157 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297720 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A297716.P8440597464207272721

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

/-! ## A297717.P1296777982886668693

`A297720(A056115(n)+11)`
-/

namespace A297717.P1296777982886668693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297720 (A056115 n + 11).toNat

end

end A297717.P1296777982886668693

/-! ## A297717.P6131002110092119500

`A297720(eq[2, A092921(n)])`
-/

namespace A297717.P6131002110092119500
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092921 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297720 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A297717.P6131002110092119500

/-! ## A297717.P10222486631674879003

`A297720(eq[3, A152157(n)])`
-/

namespace A297717.P10222486631674879003
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152157 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297720 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A297717.P10222486631674879003

/-! ## A297717.P9427667800662848031

`A297720(eq[4, A193592(n)])`
-/

namespace A297717.P9427667800662848031
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297720 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A297717.P9427667800662848031

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

/-! ## A297718.P11444895458781448243

`A297720(eq[5, A193592(n)])`
-/

namespace A297718.P11444895458781448243
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297720 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A297718.P11444895458781448243

/-! ## A297718.P13011334339961177104

`A297720(eq[7, A049286(n+1)])`
-/

namespace A297718.P13011334339961177104
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049286 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297720 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A297718.P13011334339961177104

/-! ## A297718.P9210605459412956089

`A297720(eq[8, A185782(n+1)])`
-/

namespace A297718.P9210605459412956089
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185782 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297720 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A297718.P9210605459412956089

/-! ## A297718.P11340609988144241734

`A297720(Δ[Δ[A006504(n+1)]])`
-/

namespace A297718.P11340609988144241734
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006504 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297720 (f1 (n + 1) - f1 n).toNat

end

end A297718.P11340609988144241734

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

/-! ## A297719.P8935010058072526802

`A297720(eq[4, A219347(n)])`
-/

namespace A297719.P8935010058072526802
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297720 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A297719.P8935010058072526802

/-! ## A297719.P1932230895860979624

`A297720(eq[6, A193592(n)])`
-/

namespace A297719.P1932230895860979624
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297720 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A297719.P1932230895860979624

/-! ## A297719.P13713000191729070026

`A297720(A052905(n+4)-1)`
-/

namespace A297719.P13713000191729070026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297720 (A052905 (n + 4) - 1).toNat

end

end A297719.P13713000191729070026

/-! ## A297719.P17018676772852526087

`A297720(eq[7, A200370(n+1)])`
-/

namespace A297719.P17018676772852526087
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200370 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297720 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A297719.P17018676772852526087

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

/-! ## A297721.P4169930970623990667

`or(A000007(n), A297720(A167487(n)-5))`
-/

namespace A297721.P4169930970623990667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A297720 (A167487 n - 5).toNat)

end

end A297721.P4169930970623990667

/-! ## A297721.P7133006389248793617

`abs(A033999(n)*A297720(A167487(n)-5))`
-/

namespace A297721.P7133006389248793617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A033999 n * A297720 (A167487 n - 5).toNat|

end

end A297721.P7133006389248793617

/-! ## A297721.P2336266747235498527

`gcd(2, A000040(n+2))*A297720(A167487(n)-5)`
-/

namespace A297721.P2336266747235498527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.gcd 2 (A000040 (n + 2)) : ℤ) * A297720 (A167487 n - 5).toNat

end

end A297721.P2336266747235498527

/-! ## A297721.P13314331940008923858

`A014963(A008458(n))*A297720(A167487(n)-5)`
-/

namespace A297721.P13314331940008923858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A008458 n).toNat * A297720 (A167487 n - 5).toNat

end

end A297721.P13314331940008923858

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

/-! ## A297722.P12045031276147699857

`gcd(A015161(n), A297720(A167614(n+1)))`
-/

namespace A297722.P12045031276147699857
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A015161 n) (A297720 (A167614 (n + 1)).toNat)

end

end A297722.P12045031276147699857

/-! ## A297722.P4547498002906640561

`lcm(A033999(n), A297720(A167614(n+1)))`
-/

namespace A297722.P4547498002906640561
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 n) (A297720 (A167614 (n + 1)).toNat)

end

end A297722.P4547498002906640561

/-! ## A297722.P12990852999476536795

`or(A000007(n), A297720(A167614(n+1)))`
-/

namespace A297722.P12990852999476536795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A297720 (A167614 (n + 1)).toNat)

end

end A297722.P12990852999476536795

/-! ## A297722.P1136173845177060050

`or(A003982(n), A297720(A167614(n+1)))`
-/

namespace A297722.P1136173845177060050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A003982 n) (A297720 (A167614 (n + 1)).toNat)

end

end A297722.P1136173845177060050

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

/-! ## A297723.P9704507086037729367

`A297720(A052905(n)+9)`
-/

namespace A297723.P9704507086037729367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297720 (A052905 n + 9).toNat

end

end A297723.P9704507086037729367

/-! ## A297723.P6558135231073576461

`A297720(A055999(n)+10)`
-/

namespace A297723.P6558135231073576461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297720 (A055999 n + 10).toNat

end

end A297723.P6558135231073576461

/-! ## A297723.P2356773332673326921

`A297720(A167614(n+2)+1)`
-/

namespace A297723.P2356773332673326921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297720 (A167614 (n + 2) + 1).toNat

end

end A297723.P2356773332673326921

/-! ## A297723.P17158375279604252616

`A297720(A034856(n+2)+6)`
-/

namespace A297723.P17158375279604252616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297720 (A034856 (n + 2) + 6).toNat

end

end A297723.P17158375279604252616

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

/-! ## A297724.P2676379039529101544

`A297720(A056000(n)+15)`
-/

namespace A297724.P2676379039529101544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297720 (A056000 n + 15).toNat

end

end A297724.P2676379039529101544

/-! ## A297724.P12114597975001668721

`A297720(eq[7, A066657(n)])`
-/

namespace A297724.P12114597975001668721
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297720 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A297724.P12114597975001668721

/-! ## A297724.P5266237805381486598

`A297720(A134869(n+4)+4)`
-/

namespace A297724.P5266237805381486598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297720 (A134869 (n + 4) + 4).toNat

end

end A297724.P5266237805381486598

/-! ## A297724.P2031787725328824311

`A297720(eq[6, A131818(n+1)])`
-/

namespace A297724.P2031787725328824311
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297720 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A297724.P2031787725328824311

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

/-! ## A297725.P13901268306163445739

`A297720(eq[6, A256910(n)])`
-/

namespace A297725.P13901268306163445739
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256910 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297720 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A297725.P13901268306163445739

/-! ## A297725.P5690838857696399428

`A297720(A000217(n+5)+6)`
-/

namespace A297725.P5690838857696399428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297720 (A000217 (n + 5) + 6).toNat

end

end A297725.P5690838857696399428

/-! ## A297725.P12781926408810346286

`A297720(eq[7, A131818(n+1)])`
-/

namespace A297725.P12781926408810346286
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297720 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A297725.P12781926408810346286

/-! ## A297725.P5019678093883972424

`A297720(eq[4, A193592(n)]+10)`
-/

namespace A297725.P5019678093883972424
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297720 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 10)

end

end A297725.P5019678093883972424

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

/-! ## A297726.P3951790072341277060

`A297720(A056119(n)+28)`
-/

namespace A297726.P3951790072341277060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297720 (A056119 n + 28).toNat

end

end A297726.P3951790072341277060

/-! ## A297726.P2003362909421796509

`A297720(eq[11, A066657(n)])`
-/

namespace A297726.P2003362909421796509
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297720 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A297726.P2003362909421796509

/-! ## A297726.P18071688647037461414

`A297720(A167614(n+5)+4)`
-/

namespace A297726.P18071688647037461414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297720 (A167614 (n + 5) + 4).toNat

end

end A297726.P18071688647037461414

/-! ## A297726.P12290832051850960855

`A297720(eq[8, A131818(n+1)])`
-/

namespace A297726.P12290832051850960855
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297720 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A297726.P12290832051850960855

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

/-! ## A297728.P9335061963678841955

`A297733(A034856(n+2))+char[18]`
-/

namespace A297728.P9335061963678841955
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  18

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297733 (A034856 (n + 2)).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A297728.P9335061963678841955

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

/-! ## A297728.P16212144248141685507

`A007318(C(2, n))*A297733(A034856(n+2))`
-/

namespace A297728.P16212144248141685507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * A297733 (A034856 (n + 2)).toNat

end

end A297728.P16212144248141685507

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

/-! ## A297729.P9509840501159203016

`A297733(A056000(n)+7)+char[47]`
-/

namespace A297729.P9509840501159203016
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  47

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297733 (A056000 n + 7).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A297729.P9509840501159203016

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

/-! ## A297730.P6375830013580926735

`A297733(Δ[A023545(n+1)])+char[29]`
-/

namespace A297730.P6375830013580926735
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  29

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297733 (f1 (n + 1) - f1 n).toNat + ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ)

end

end A297730.P6375830013580926735

/-! ## A297730.P12136827183065323384

`A297733(A000124(n+5)-5)+char[32]`
-/

namespace A297730.P12136827183065323384
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  32

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297733 (A000124 (n + 5) - 5).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A297730.P12136827183065323384

/-! ## A297730.P1187458907035699449

`lcm(A033999(n), A297733(A000124(n+5)-5))`
-/

namespace A297730.P1187458907035699449
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 n) (A297733 (A000124 (n + 5) - 5).toNat)

end

end A297730.P1187458907035699449

/-! ## A297730.P1357764768080287029

`A000041(C(2, n+2))*A297733(A000124(n+5)-5)`
-/

namespace A297730.P1357764768080287029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (Nat.choose 2 (n + 2)) * A297733 (A000124 (n + 5) - 5).toNat

end

end A297730.P1357764768080287029

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

/-! ## A297731.P7220429074756188894

`A297733(Δ[C(n+3, 3)+(n-1)*2*n]+13)`
-/

namespace A297731.P7220429074756188894
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose (n + 3) 3 : ℤ) + ((n : ℤ) - 1) * (2 * n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297733 (f1 (n + 1) - f1 n + 13).toNat

end

end A297731.P7220429074756188894

/-! ## A297731.P17592503432784899192

`A297733(A056119(n)+16)`
-/

namespace A297731.P17592503432784899192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297733 (A056119 n + 16).toNat

end

end A297731.P17592503432784899192

/-! ## A297731.P4704589632577215529

`A297733(eq[3, A219347(n)])`
-/

namespace A297731.P4704589632577215529
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297733 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A297731.P4704589632577215529

/-! ## A297731.P9175856088099646318

`A297733(eq[5, A152157(n)])`
-/

namespace A297731.P9175856088099646318
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152157 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297733 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A297731.P9175856088099646318

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

/-! ## A297732.P4945089234853345188

`A297733(eq[4, A219347(n)])`
-/

namespace A297732.P4945089234853345188
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297733 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A297732.P4945089234853345188

/-! ## A297732.P3115424769718221982

`A297733(eq[6, A193592(n)])`
-/

namespace A297732.P3115424769718221982
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297733 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A297732.P3115424769718221982

/-! ## A297732.P16381174754768041338

`A297733(eq[7, A152157(n)])`
-/

namespace A297732.P16381174754768041338
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152157 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297733 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A297732.P16381174754768041338

/-! ## A297732.P4696852916360013851

`A297733(A155212(n+3)+2)`
-/

namespace A297732.P4696852916360013851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297733 (A155212 (n + 3) + 2).toNat

end

end A297732.P4696852916360013851

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

/-! ## A297733.P10729195572762294128

`A346131(A332403(n+1))`
-/

namespace A297733.P10729195572762294128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346131 (A332403 (n + 1)).toNat

end

end A297733.P10729195572762294128

/-! ## A297733.P600363222805235048

`A346131(A332405(n+1))`
-/

namespace A297733.P600363222805235048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346131 (A332405 (n + 1)).toNat

end

end A297733.P600363222805235048

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

The programs for A297734, the canonical program `A297734.P1452109387055537136` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A297734 has offset 1).

The definition of A297734 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 303 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A297734.P1452109387055537136

`2*a(n-1)+a(n-2)-3*a(n-3)+6*a(n-4)-6*a(n-5)` with `a(0)=1, a(1)=2, a(2)=8, a(3)=15, a(4)=32`

The canonical program, it is in `Seq.B000.C036`.
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

/-! ## A297735.P10309846797244947420

`A297733(A167614(n+1))+char[21]`
-/

namespace A297735.P10309846797244947420
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  21

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297733 (A167614 (n + 1)).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A297735.P10309846797244947420

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

/-! ## A297738.P17369537238866768616

`A297733(eq[6, A256910(n)])`
-/

namespace A297738.P17369537238866768616
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256910 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297733 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A297738.P17369537238866768616

/-! ## A297738.P3735986190897053648

`A297733(A167499(n+4)+1)`
-/

namespace A297738.P3735986190897053648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297733 (A167499 (n + 4) + 1).toNat

end

end A297738.P3735986190897053648

/-! ## A297738.P2971328333863530565

`A297733(A077169(n+6)+1)`
-/

namespace A297738.P2971328333863530565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297733 (A077169 (n + 6) + 1).toNat

end

end A297738.P2971328333863530565

/-! ## A297738.P15942129720144105027

`A297733(A167614(n+4)+3)`
-/

namespace A297738.P15942129720144105027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297733 (A167614 (n + 4) + 3).toNat

end

end A297738.P15942129720144105027

/-! ## A297738.P10158265052301613374

`A297733(A000124(n+5)+5)`
-/

namespace A297738.P10158265052301613374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297733 (A000124 (n + 5) + 5).toNat

end

end A297738.P10158265052301613374

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

/-! ## A297739.P277313945243215787

`A297733(A056119(n)+28)`
-/

namespace A297739.P277313945243215787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297733 (A056119 n + 28).toNat

end

end A297739.P277313945243215787

/-! ## A297739.P14763763728732511454

`A297733(eq[11, A066657(n)])`
-/

namespace A297739.P14763763728732511454
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297733 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A297739.P14763763728732511454

/-! ## A297739.P13284377042469495242

`A297733(A167614(n+5)+4)`
-/

namespace A297739.P13284377042469495242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297733 (A167614 (n + 5) + 4).toNat

end

end A297739.P13284377042469495242

/-! ## A297739.P10097088815383931027

`A297733(A000124(n+6)+6)`
-/

namespace A297739.P10097088815383931027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297733 (A000124 (n + 6) + 6).toNat

end

end A297739.P10097088815383931027

/-!
# A297740: The number of distinct positions on an infinite chessboard reachable by the (2,3)-leaper (or zebra) in at most n moves.

The programs for A297740, there is no canonical definition to state claims against.
-/

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

/-! ## A297740.P8947316621279529463

`A018839(n)+a(A023443(n))` with `a(0)=1`
-/

namespace A297740.P8947316621279529463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A018839 n + a (A023443 n).toNat

end

end A297740.P8947316621279529463

/-! ## A297740.P9378330032253002205

`A018839(n)+a(A028310(n)-1)` with `a(0)=1`
-/

namespace A297740.P9378330032253002205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A018839 n + a (A028310 n - 1).toNat

end

end A297740.P9378330032253002205

/-! ## A297740.P4201334430142673744

`A018839(n)+a(n-A057427(n))` with `a(0)=1`
-/

namespace A297740.P4201334430142673744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A018839 n + a ((n : ℤ) - A057427 n).toNat

end

end A297740.P4201334430142673744

/-! ## A297740.P951791787923279219

`A018839(n)+a(n-A000034(2*n))` with `a(0)=1`
-/

namespace A297740.P951791787923279219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A018839 n + a ((n : ℤ) - A000034 (2 * n)).toNat

end

end A297740.P951791787923279219

/-!
# A297741: The number of distinct positions on an infinite chessboard reachable by the (3,4)-leaper in <= n moves.

The programs for A297741, there is no canonical definition to state claims against.
-/

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

/-! ## A297743.P8870901383684604707

`A297749(A001844(n))+char[9]`
-/

namespace A297743.P8870901383684604707
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297749 (A001844 n).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A297743.P8870901383684604707

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

/-! ## A297744.P11250196119409422365

`A297749(A034856(n+2))%A075467(n)`
-/

namespace A297744.P11250196119409422365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A297749 (A034856 (n + 2)).toNat) (A075467 n)

end

end A297744.P11250196119409422365

/-! ## A297744.P6688047310550044492

`A297749(A034856(n+2))+A209229(3*(n+1))`
-/

namespace A297744.P6688047310550044492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297749 (A034856 (n + 2)).toNat + A209229 (3 * (n + 1))

end

end A297744.P6688047310550044492

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

/-! ## A297745.P7900471636233973164

`A297749(A027379(n+2))`
-/

namespace A297745.P7900471636233973164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297749 (A027379 (n + 2)).toNat

end

end A297745.P7900471636233973164

/-! ## A297745.P8849472421597056775

`A297749(A155212(n)+5)`
-/

namespace A297745.P8849472421597056775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297749 (A155212 n + 5).toNat

end

end A297745.P8849472421597056775

/-! ## A297745.P13356632124527839543

`A297749(eq[2, A152157(n)])`
-/

namespace A297745.P13356632124527839543
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152157 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297749 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A297745.P13356632124527839543

/-! ## A297745.P7202239779696482128

`A297749(eq[3, A193592(n)])`
-/

namespace A297745.P7202239779696482128
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297749 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A297745.P7202239779696482128

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

/-! ## A297746.P1593549387479608381

`A297749(A056115(n)+11)`
-/

namespace A297746.P1593549387479608381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297749 (A056115 n + 11).toNat

end

end A297746.P1593549387479608381

/-! ## A297746.P10809767919104319618

`A297749(eq[3, A152157(n)])`
-/

namespace A297746.P10809767919104319618
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152157 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297749 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A297746.P10809767919104319618

/-! ## A297746.P18255068823625019821

`A297749(eq[4, A193592(n)])`
-/

namespace A297746.P18255068823625019821
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297749 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A297746.P18255068823625019821

/-! ## A297746.P14692560368963859782

`A297749(eq[5, A239144(n)])`
-/

namespace A297746.P14692560368963859782
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239144 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297749 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A297746.P14692560368963859782

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

/-! ## A297747.P3703542811289871958

`A297749(eq[3, A219347(n)])`
-/

namespace A297747.P3703542811289871958
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297749 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A297747.P3703542811289871958

/-! ## A297747.P14591996706379405376

`A297749(eq[5, A193592(n)])`
-/

namespace A297747.P14591996706379405376
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297749 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A297747.P14591996706379405376

/-! ## A297747.P5077725567871482496

`A297749(eq[8, A258709(n)])`
-/

namespace A297747.P5077725567871482496
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258709 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297749 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A297747.P5077725567871482496

/-! ## A297747.P13292443413172385862

`A297749(eq[6, A200370(n+1)])`
-/

namespace A297747.P13292443413172385862
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200370 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297749 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A297747.P13292443413172385862

/-!
# A297748: Number of nX7 0..1 arrays with every 1 horizontally, diagonally or antidiagonally adjacent to 1, 3 or 4 neighboring 1s.

The programs for A297748, there is no canonical definition to state claims against.
-/

/-! ## A297748.P9650707575172855525

`A297749(eq[4, A219347(n)])`
-/

namespace A297748.P9650707575172855525
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297749 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A297748.P9650707575172855525

/-! ## A297748.P7329977486798497519

`A297749(eq[6, A193592(n)])`
-/

namespace A297748.P7329977486798497519
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297749 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A297748.P7329977486798497519

/-! ## A297748.P7393240370808500809

`A297749(eq[7, A200370(n+1)])`
-/

namespace A297748.P7393240370808500809
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200370 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297749 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A297748.P7393240370808500809

/-! ## A297748.P8381579532211155347

`A297749(eq[10, A185782(n+1)])`
-/

namespace A297748.P8381579532211155347
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185782 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297749 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A297748.P8381579532211155347

/-! ## A297748.P8483949098234623052

`A297749(eq[32, A057728(n+1)])`
-/

namespace A297748.P8483949098234623052
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  32

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057728 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297749 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A297748.P8483949098234623052

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

/-! ## A297750.P2400979825884296321

`A014963(A006094(n+1))*A297749(C(n+2, 2)+2)`
-/

namespace A297750.P2400979825884296321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A006094 (n + 1)).toNat * A297749 (Nat.choose (n + 2) 2 + 2)

end

end A297750.P2400979825884296321

/-! ## A297750.P18189771081779993011

`A001222(A199983(n+1))*A297749(C(n+2, 2)+2)`
-/

namespace A297750.P18189771081779993011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A199983 (n + 1)).toNat * A297749 (Nat.choose (n + 2) 2 + 2)

end

end A297750.P18189771081779993011

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

/-! ## A297751.P17690782943164371270

`A297749(A167614(n+1))+A185237(n)`
-/

namespace A297751.P17690782943164371270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297749 (A167614 (n + 1)).toNat + A185237 n

end

end A297751.P17690782943164371270

/-! ## A297751.P2848646413973456210

`A297749(A167614(n+1))^A178489(n)`
-/

namespace A297751.P2848646413973456210
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A297749 (A167614 (n + 1)).toNat : ℚ) ^ (A178489 n : ℤ)

end

end A297751.P2848646413973456210

/-! ## A297751.P8784892574877625723

`lcm(A020985(n), A297749(A167614(n+1)))`
-/

namespace A297751.P8784892574877625723
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A020985 n) (A297749 (A167614 (n + 1)).toNat)

end

end A297751.P8784892574877625723

/-! ## A297751.P16454029093932136846

`A297749(A167614(n+1))%A303531(n+1)`
-/

namespace A297751.P16454029093932136846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A297749 (A167614 (n + 1)).toNat) (A303531 (n + 1))

end

end A297751.P16454029093932136846

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

/-! ## A297752.P754166198481631179

`A297749(A167614(n+2)+1)%A000142(n+4)`
-/

namespace A297752.P754166198481631179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A297749 (A167614 (n + 2) + 1).toNat) (A000142 (n + 4))

end

end A297752.P754166198481631179

/-! ## A297752.P4280054658631793053

`A109720(A047304(n+1))*A297749(A167614(n+2)+1)`
-/

namespace A297752.P4280054658631793053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109720 (A047304 (n + 1)).toNat * A297749 (A167614 (n + 2) + 1).toNat

end

end A297752.P4280054658631793053

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

/-! ## A297754.P15784810814326619580

`A297749(A056115(n)+21)`
-/

namespace A297754.P15784810814326619580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297749 (A056115 n + 21).toNat

end

end A297754.P15784810814326619580

/-! ## A297754.P13067850360743777077

`A297749(A000217(n+5)+6)`
-/

namespace A297754.P13067850360743777077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297749 (A000217 (n + 5) + 6).toNat

end

end A297754.P13067850360743777077

/-! ## A297754.P17140140705500043792

`A297749(eq[6, A130270(n+1)])`
-/

namespace A297754.P17140140705500043792
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130270 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297749 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A297754.P17140140705500043792

/-! ## A297754.P16551399207890809214

`A297749(eq[7, A131818(n+1)])`
-/

namespace A297754.P16551399207890809214
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297749 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A297754.P16551399207890809214

/-! ## A297754.P6523634756399563551

`A297749(eq[8, A166065(n)]+10)`
-/

namespace A297754.P6523634756399563551
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166065 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297749 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 10)

end

end A297754.P6523634756399563551

/-!
# A297755: Number of 7Xn 0..1 arrays with every 1 horizontally, diagonally or antidiagonally adjacent to 1, 3 or 4 neighboring 1s.

The programs for A297755, there is no canonical definition to state claims against.
-/

/-! ## A297755.P12833142031884612851

`A297749(A056119(n)+28)`
-/

namespace A297755.P12833142031884612851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297749 (A056119 n + 28).toNat

end

end A297755.P12833142031884612851

/-! ## A297755.P5655932296558753726

`A297749(eq[11, A066657(n)])`
-/

namespace A297755.P5655932296558753726
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297749 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A297755.P5655932296558753726

/-! ## A297755.P8579461245230934247

`A297749(A167499(n+5)+2)`
-/

namespace A297755.P8579461245230934247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297749 (A167499 (n + 5) + 2).toNat

end

end A297755.P8579461245230934247

/-! ## A297755.P9688641553279341562

`A297749(A000096(n+5)+8)`
-/

namespace A297755.P9688641553279341562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297749 (A000096 (n + 5) + 8).toNat

end

end A297755.P9688641553279341562

/-! ## A297755.P17976147541845760969

`A297749(eq[8, A131818(n+1)])`
-/

namespace A297755.P17976147541845760969
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297749 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A297755.P17976147541845760969

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

/-! ## A297756.P7589166827424934626

`A297762(A001844(n))+A160145(n)`
-/

namespace A297756.P7589166827424934626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297762 (A001844 n).toNat + A160145 n

end

end A297756.P7589166827424934626

/-! ## A297756.P2749193948379494477

`gcd(A151878(n), A297762(A001844(n)))`
-/

namespace A297756.P2749193948379494477
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A151878 n) (A297762 (A001844 n).toNat)

end

end A297756.P2749193948379494477

/-! ## A297756.P16126587864460629080

`or(A000007(n), A297762(A001844(n)))`
-/

namespace A297756.P16126587864460629080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A297762 (A001844 n).toNat)

end

end A297756.P16126587864460629080

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

/-! ## A297758.P15028925494974405395

`A297762(A055998(n+2))`
-/

namespace A297758.P15028925494974405395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297762 (A055998 (n + 2)).toNat

end

end A297758.P15028925494974405395

/-! ## A297758.P11392054929881916414

`A297762(A056000(n)+7)`
-/

namespace A297758.P11392054929881916414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297762 (A056000 n + 7).toNat

end

end A297758.P11392054929881916414

/-! ## A297758.P8809086918419320899

`A297762(eq[5, A001404(n)])`
-/

namespace A297758.P8809086918419320899
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001404 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297762 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A297758.P8809086918419320899

/-! ## A297758.P10625754686408823109

`A297762(Δ[A034857(n+1)])`
-/

namespace A297758.P10625754686408823109
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034857 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297762 (f1 (n + 1) - f1 n).toNat

end

end A297758.P10625754686408823109

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

/-! ## A297759.P15777632689185794011

`A297762(A046691(n+3))`
-/

namespace A297759.P15777632689185794011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297762 (A046691 (n + 3)).toNat

end

end A297759.P15777632689185794011

/-! ## A297759.P11656158162934202612

`A297762(eq[4, A193592(n)])`
-/

namespace A297759.P11656158162934202612
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297762 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A297759.P11656158162934202612

/-! ## A297759.P5951641019445236112

`A297762(eq[8, A209434(n)])`
-/

namespace A297759.P5951641019445236112
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209434 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297762 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A297759.P5951641019445236112

/-! ## A297759.P15847817104308938616

`A297762(Δ[A034857(n+2)]-1)`
-/

namespace A297759.P15847817104308938616
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034857 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297762 (f1 (n + 1) - f1 n - 1).toNat

end

end A297759.P15847817104308938616

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

/-! ## A297760.P17255975512499441784

`A297762(eq[3, A219347(n)])`
-/

namespace A297760.P17255975512499441784
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297762 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A297760.P17255975512499441784

/-! ## A297760.P2596498659284252101

`A297762(eq[5, A193592(n)])`
-/

namespace A297760.P2596498659284252101
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297762 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A297760.P2596498659284252101

/-! ## A297760.P5383966705767161825

`A297762(eq[8, A185782(n+1)])`
-/

namespace A297760.P5383966705767161825
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185782 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297762 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A297760.P5383966705767161825

/-! ## A297760.P5214327326887370049

`A297762(eq[8, A243070(n+1)])`
-/

namespace A297760.P5214327326887370049
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243070 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297762 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A297760.P5214327326887370049

/-!
# A297761: Number of nX7 0..1 arrays with every 1 horizontally, diagonally or antidiagonally adjacent to 2, 3 or 4 neighboring 1s.

The programs for A297761, there is no canonical definition to state claims against.
-/

/-! ## A297761.P10466781973027753000

`A297762(eq[4, A219347(n)])`
-/

namespace A297761.P10466781973027753000
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297762 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A297761.P10466781973027753000

/-! ## A297761.P7029029969525009357

`A297762(eq[6, A193592(n)])`
-/

namespace A297761.P7029029969525009357
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297762 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A297761.P7029029969525009357

/-! ## A297761.P17819226670513031102

`A297762(eq[3, A316074(n+1)])`
-/

namespace A297761.P17819226670513031102
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316074 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297762 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A297761.P17819226670513031102

/-! ## A297761.P14022832485257423526

`A297762(eq[7, A200370(n+1)])`
-/

namespace A297761.P14022832485257423526
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200370 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297762 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A297761.P14022832485257423526

/-! ## A297761.P1566513986633030655

`A297762(eq[10, A185782(n+1)])`
-/

namespace A297761.P1566513986633030655
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185782 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297762 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A297761.P1566513986633030655

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

/-! ## A297762.P13239504880855731120

`A257500(A297802(n+1))`
-/

namespace A297762.P13239504880855731120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257500 (A297802 (n + 1)).toNat

end

end A297762.P13239504880855731120

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

/-!
# A297763: Number of 2Xn 0..1 arrays with every 1 horizontally, diagonally or antidiagonally adjacent to 2, 3 or 4 neighboring 1s.

The programs for A297763, the canonical program `A297763.P6234533170900557292` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A297763 has offset 1).

The definition of A297763 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 201 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A297763.P6234533170900557292

`4*a(n-1)-3*a(n-2)+a(n-3)+6*a(n-4)-18*a(n-5)` with `a(0)=1, a(1)=2, a(2)=12, a(3)=31, a(4)=78`

The canonical program, it is in `Seq.B000.C036`.
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

/-! ## A297764.P15942216714670959701

`A297762(A167614(n+1))+A025469(n)`
-/

namespace A297764.P15942216714670959701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297762 (A167614 (n + 1)).toNat + A025469 n

end

end A297764.P15942216714670959701

/-! ## A297764.P14949387629699961801

`A297762(A167614(n+1))+A184946(n)`
-/

namespace A297764.P14949387629699961801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297762 (A167614 (n + 1)).toNat + A184946 n

end

end A297764.P14949387629699961801

/-! ## A297764.P13214641941485510308

`A015970(n)*A297762(A167614(n+1))`
-/

namespace A297764.P13214641941485510308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015970 n * A297762 (A167614 (n + 1)).toNat

end

end A297764.P13214641941485510308

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

/-! ## A297765.P5341013778215359357

`A297762(A052905(n)+9)`
-/

namespace A297765.P5341013778215359357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297762 (A052905 n + 9).toNat

end

end A297765.P5341013778215359357

/-! ## A297765.P13236761986534480423

`A297762(A055999(n)+10)`
-/

namespace A297765.P13236761986534480423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297762 (A055999 n + 10).toNat

end

end A297765.P13236761986534480423

/-! ## A297765.P13386547296266400556

`A297762(A167614(n+2)+1)`
-/

namespace A297765.P13386547296266400556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297762 (A167614 (n + 2) + 1).toNat

end

end A297765.P13386547296266400556

/-! ## A297765.P9548254921906007890

`A297762(A112355(n+1)+4)`
-/

namespace A297765.P9548254921906007890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297762 (A112355 (n + 1) + 4).toNat

end

end A297765.P9548254921906007890

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

/-! ## A297766.P11689735359025635512

`A297762(A155212(n)+13)`
-/

namespace A297766.P11689735359025635512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297762 (A155212 n + 13).toNat

end

end A297766.P11689735359025635512

/-! ## A297766.P16840202398909216385

`A297762(A056000(n)+15)`
-/

namespace A297766.P16840202398909216385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297762 (A056000 n + 15).toNat

end

end A297766.P16840202398909216385

/-! ## A297766.P13556341843467414598

`A297762(eq[7, A066657(n)])`
-/

namespace A297766.P13556341843467414598
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297762 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A297766.P13556341843467414598

/-! ## A297766.P9024610458514790438

`A297762(eq[6, A131818(n+1)])`
-/

namespace A297766.P9024610458514790438
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297762 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A297766.P9024610458514790438

/-!
# A297767: Number of 6Xn 0..1 arrays with every 1 horizontally, diagonally or antidiagonally adjacent to 2, 3 or 4 neighboring 1s.

The programs for A297767, there is no canonical definition to state claims against.
-/

/-! ## A297767.P17320239796603539005

`A297762(Δ[A264443(n)]+10)`
-/

namespace A297767.P17320239796603539005
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297762 (f1 (n + 1) - f1 n + 10).toNat

end

end A297767.P17320239796603539005

/-! ## A297767.P17945292596417280785

`A297762(A167614(n+4)+3)`
-/

namespace A297767.P17945292596417280785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297762 (A167614 (n + 4) + 3).toNat

end

end A297767.P17945292596417280785

/-! ## A297767.P9037412934741911011

`A297762(A046691(n+3)+10)`
-/

namespace A297767.P9037412934741911011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297762 (A046691 (n + 3) + 10).toNat

end

end A297767.P9037412934741911011

/-! ## A297767.P6756608357684653818

`A297762(eq[7, A131818(n+1)])`
-/

namespace A297767.P6756608357684653818
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297762 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A297767.P6756608357684653818

/-! ## A297767.P15482450434075212610

`A297762(eq[8, A166065(n)]+10)`
-/

namespace A297767.P15482450434075212610
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166065 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297762 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 10)

end

end A297767.P15482450434075212610

/-!
# A297768: Number of 7Xn 0..1 arrays with every 1 horizontally, diagonally or antidiagonally adjacent to 2, 3 or 4 neighboring 1s.

The programs for A297768, there is no canonical definition to state claims against.
-/

/-! ## A297768.P8275176860975083130

`A297762(eq[11, A066657(n)])`
-/

namespace A297768.P8275176860975083130
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297762 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A297768.P8275176860975083130

/-! ## A297768.P922175962597248220

`A297762(A000096(n+5)+8)`
-/

namespace A297768.P922175962597248220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297762 (A000096 (n + 5) + 8).toNat

end

end A297768.P922175962597248220

/-! ## A297768.P12778354709306084309

`A297762(A046691(n+4)+11)`
-/

namespace A297768.P12778354709306084309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297762 (A046691 (n + 4) + 11).toNat

end

end A297768.P12778354709306084309

/-! ## A297768.P10559199425979234979

`A297762(eq[8, A131818(n+1)])`
-/

namespace A297768.P10559199425979234979
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297762 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A297768.P10559199425979234979

/-! ## A297768.P15556457077287355730

`A297762(eq[A144328(n+1), A186684(n+1)])`
-/

namespace A297768.P15556457077287355730
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144328 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186684 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297762 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A297768.P15556457077287355730

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

/-! ## A297770.P8175933117695780500

`A297771(∑[A236313(n+1)])`
-/

namespace A297770.P8175933117695780500
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236313 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297771 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A297770.P8175933117695780500

/-! ## A297770.P9804618324944188530

`A297771(A005823(n+2)/2)`
-/

namespace A297770.P9804618324944188530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297771 (SequenceMachineLib.roundAway ((A005823 (n + 2) : ℚ) / 2)).toNat

end

end A297770.P9804618324944188530

/-! ## A297770.P13733654103226048469

`A297771(A005823(n+2))`
-/

namespace A297770.P13733654103226048469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297771 (A005823 (n + 2)).toNat

end

end A297770.P13733654103226048469

/-! ## A297770.P18101446441927682993

`A297771(record[A300222(n+2)])`
-/

namespace A297770.P18101446441927682993
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300222 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297771 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A297770.P18101446441927682993

/-! ## A297770.P13937558305625979316

`A297772(A000695(n+1))`
-/

namespace A297770.P13937558305625979316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297772 (A000695 (n + 1)).toNat

end

end A297770.P13937558305625979316

/-! ## A297770.P10960405019854360485

`A297772(A374625(n+1))`
-/

namespace A297770.P10960405019854360485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297772 (A374625 (n + 1)).toNat

end

end A297770.P10960405019854360485

/-! ## A297770.P16107197528914935032

`A297772(A062880(n+1)/2)`
-/

namespace A297770.P16107197528914935032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297772 (SequenceMachineLib.roundAway ((A062880 (n + 1) : ℚ) / 2)).toNat

end

end A297770.P16107197528914935032

/-! ## A297770.P15421106454437115089

`A297772(A062880(n+1))`
-/

namespace A297770.P15421106454437115089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297772 (A062880 (n + 1)).toNat

end

end A297770.P15421106454437115089

/-! ## A297770.P8850946486998897554

`A297772(A179888(n+1))`
-/

namespace A297770.P8850946486998897554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297772 (A179888 (n + 1)).toNat

end

end A297770.P8850946486998897554

/-!
# A297771: Number of distinct runs in base-3 digits of n.

The programs for A297771, there is no canonical definition to state claims against.
-/

/-! ## A297771.P9814037627161467637

`A297772(A023717(n+1))`
-/

namespace A297771.P9814037627161467637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297772 (A023717 (n + 1)).toNat

end

end A297771.P9814037627161467637

/-! ## A297771.P5906157220367505187

`A297772(A023713(n+2))`
-/

namespace A297771.P5906157220367505187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297772 (A023713 (n + 2)).toNat

end

end A297771.P5906157220367505187

/-! ## A297771.P6501022213003069555

`A297772(A023709(n+2))`
-/

namespace A297771.P6501022213003069555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297772 (A023709 (n + 2)).toNat

end

end A297771.P6501022213003069555

/-! ## A297771.P2128190398716765283

`A297772(record[A006015(n+1)])`
-/

namespace A297771.P2128190398716765283
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006015 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297772 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A297771.P2128190398716765283

/-! ## A297771.P7603240744068504909

`A297772(record[A057300(n+1)])`
-/

namespace A297771.P7603240744068504909
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057300 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297772 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A297771.P7603240744068504909

/-! ## A297771.P4890154825104300902

`A297773(A037453(n+1))`
-/

namespace A297771.P4890154825104300902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297773 (A037453 (n + 1)).toNat

end

end A297771.P4890154825104300902

/-!
# A297772: Number of distinct runs in base-4 digits of n.

The programs for A297772, there is no canonical definition to state claims against.
-/

/-! ## A297772.P9748781576611596485

`A297773(A020654(n+2))`
-/

namespace A297772.P9748781576611596485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297773 (A020654 (n + 2)).toNat

end

end A297772.P9748781576611596485

/-! ## A297772.P13908715421583531678

`A297773(A023733(n+2))`
-/

namespace A297772.P13908715421583531678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297773 (A023733 (n + 2)).toNat

end

end A297772.P13908715421583531678

/-! ## A297772.P10859931614346864239

`A297773(A023729(n+2))`
-/

namespace A297772.P10859931614346864239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297773 (A023729 (n + 2)).toNat

end

end A297772.P10859931614346864239

/-! ## A297772.P11779963767617792031

`A297773(A023725(n+2))`
-/

namespace A297772.P11779963767617792031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297773 (A023725 (n + 2)).toNat

end

end A297772.P11779963767617792031

/-! ## A297772.P12111846263767377519

`and(A043531(n+1), A335980(n))`
-/

namespace A297772.P12111846263767377519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A043531 (n + 1)) (A335980 n)

end

end A297772.P12111846263767377519

/-!
# A297773: Number of distinct runs in base-5 digits of n.

The programs for A297773, there is no canonical definition to state claims against.
-/

/-! ## A297773.P3491070861960834216

`and(A043532(n+1), A203878(n+1))`
-/

namespace A297773.P3491070861960834216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A043532 (n + 1)) (A203878 (n + 1))

end

end A297773.P3491070861960834216

/-! ## A297773.P8362898167511896404

`A076489(A061830(n+1))`
-/

namespace A297773.P8362898167511896404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076489 (A061830 (n + 1)).toNat

end

end A297773.P8362898167511896404

/-! ## A297773.P977615328687603518

`and(A043532(n+1), A280464(n))`
-/

namespace A297773.P977615328687603518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A043532 (n + 1)) (A280464 n)

end

end A297773.P977615328687603518

/-! ## A297773.P9101615387848639851

`and(A043532(n+1), A381707(n+1))`
-/

namespace A297773.P9101615387848639851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A043532 (n + 1)) (A381707 (n + 1))

end

end A297773.P9101615387848639851

/-! ## A297773.P3569744091545562217

`and(A043532(n+1), A072828(n+1))`
-/

namespace A297773.P3569744091545562217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A043532 (n + 1)) (A072828 (n + 1))

end

end A297773.P3569744091545562217

/-! ## A297773.P3598393979632293649

`gcd(A000932(n), A043532(n+1))`
-/

namespace A297773.P3598393979632293649
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000932 n) (A043532 (n + 1))

end

end A297773.P3598393979632293649

/-! ## A297773.P15611437776634323431

`and(A043532(n+1), A086827(n+1))`
-/

namespace A297773.P15611437776634323431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A043532 (n + 1)) (A086827 (n + 1))

end

end A297773.P15611437776634323431

/-! ## A297773.P6726670202371525181

`and(A043532(n+1), A151142(n))`
-/

namespace A297773.P6726670202371525181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A043532 (n + 1)) (A151142 n)

end

end A297773.P6726670202371525181

/-!
# A297774: 

The programs for A297774, there is no canonical definition to state claims against.
-/

/-! ## A297774.P18360028261199738626

`and(A043533(n+1), A077827(n))`
-/

namespace A297774.P18360028261199738626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A043533 (n + 1)) (A077827 n)

end

end A297774.P18360028261199738626

/-! ## A297774.P4822314535638775716

`and(A043533(n+1), A087432(n))`
-/

namespace A297774.P4822314535638775716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A043533 (n + 1)) (A087432 n)

end

end A297774.P4822314535638775716

/-! ## A297774.P16495540299984759997

`gcd(A001117(n), A043533(n+1))`
-/

namespace A297774.P16495540299984759997
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A001117 n) (A043533 (n + 1))

end

end A297774.P16495540299984759997

/-! ## A297774.P14505017253233501492

`and(A004054(n), A043533(n+1))`
-/

namespace A297774.P14505017253233501492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A004054 n) (A043533 (n + 1))

end

end A297774.P14505017253233501492

/-! ## A297774.P13837824101498725837

`and(A002783(n), A043533(n+1))`
-/

namespace A297774.P13837824101498725837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A002783 n) (A043533 (n + 1))

end

end A297774.P13837824101498725837

/-! ## A297774.P698081794205077901

`and(A043533(n+1), A216616(n))`
-/

namespace A297774.P698081794205077901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A043533 (n + 1)) (A216616 n)

end

end A297774.P698081794205077901

/-! ## A297774.P6806776803544650914

`and(A006458(n), A043533(n+1))`
-/

namespace A297774.P6806776803544650914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A006458 n) (A043533 (n + 1))

end

end A297774.P6806776803544650914

/-! ## A297774.P15963072875672119349

`and(A043533(n+1), A183877(n+1))`
-/

namespace A297774.P15963072875672119349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A043533 (n + 1)) (A183877 (n + 1))

end

end A297774.P15963072875672119349

/-! ## A297774.P17690152679704302156

`and(A043533(n+1), A084643(n))`
-/

namespace A297774.P17690152679704302156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A043533 (n + 1)) (A084643 n)

end

end A297774.P17690152679704302156

/-! ## A297774.P2477438305233854606

`and(A043533(n+1), A183885(n+1))`
-/

namespace A297774.P2477438305233854606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A043533 (n + 1)) (A183885 (n + 1))

end

end A297774.P2477438305233854606

/-! ## A297774.P4185808333915414059

`and(A043533(n+1), A250751(n+1))`
-/

namespace A297774.P4185808333915414059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A043533 (n + 1)) (A250751 (n + 1))

end

end A297774.P4185808333915414059

/-! ## A297774.P12097834700705862712

`and(A043533(n+1), A164291(n+2))`
-/

namespace A297774.P12097834700705862712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A043533 (n + 1)) (A164291 (n + 2))

end

end A297774.P12097834700705862712

/-! ## A297774.P4890266946563469647

`and(A043533(n+1), A060160(n+1))`
-/

namespace A297774.P4890266946563469647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A043533 (n + 1)) (A060160 (n + 1))

end

end A297774.P4890266946563469647

/-! ## A297774.P8062091227771815259

`and(A043533(n+1), A384673(n))`
-/

namespace A297774.P8062091227771815259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A043533 (n + 1)) (A384673 n)

end

end A297774.P8062091227771815259

/-!
# A297776: 

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

/-! ## A297776.P5662401962825688923

`and(A027180(n), A043535(n+1))`
-/

namespace A297776.P5662401962825688923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A027180 n) (A043535 (n + 1))

end

end A297776.P5662401962825688923

/-! ## A297776.P16631362418542487503

`and(A043535(n+1), A063396(n))`
-/

namespace A297776.P16631362418542487503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A043535 (n + 1)) (A063396 n)

end

end A297776.P16631362418542487503

/-! ## A297776.P12313516169646753606

`and(A043535(n+1), A055580(n))`
-/

namespace A297776.P12313516169646753606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A043535 (n + 1)) (A055580 n)

end

end A297776.P12313516169646753606

/-! ## A297776.P11315744308861158204

`and(A043535(n+1), A107392(n))`
-/

namespace A297776.P11315744308861158204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A043535 (n + 1)) (A107392 n)

end

end A297776.P11315744308861158204

/-! ## A297776.P5354218239474670349

`and(A043535(n+1), A063397(n))`
-/

namespace A297776.P5354218239474670349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A043535 (n + 1)) (A063397 n)

end

end A297776.P5354218239474670349

/-! ## A297776.P7458603318149598755

`and(A043535(n+1), A107953(n))`
-/

namespace A297776.P7458603318149598755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A043535 (n + 1)) (A107953 n)

end

end A297776.P7458603318149598755

/-! ## A297776.P16614442861508693681

`and(A043535(n+1), A063398(n))`
-/

namespace A297776.P16614442861508693681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A043535 (n + 1)) (A063398 n)

end

end A297776.P16614442861508693681

/-! ## A297776.P15736862425962513167

`and(A043535(n+1), A075900(n))`
-/

namespace A297776.P15736862425962513167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A043535 (n + 1)) (A075900 n)

end

end A297776.P15736862425962513167

/-! ## A297776.P15356461804677115842

`and(A043535(n+1), A211386(n))`
-/

namespace A297776.P15356461804677115842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A043535 (n + 1)) (A211386 n)

end

end A297776.P15356461804677115842

/-! ## A297776.P9291995177325702957

`and(A043535(n+1), A107954(n))`
-/

namespace A297776.P9291995177325702957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A043535 (n + 1)) (A107954 n)

end

end A297776.P9291995177325702957

/-! ## A297776.P12670309393549261962

`and(A043535(n+1), A107955(n))`
-/

namespace A297776.P12670309393549261962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A043535 (n + 1)) (A107955 n)

end

end A297776.P12670309393549261962

/-! ## A297776.P724879787427985193

`and(A043535(n+1), A077946(n))`
-/

namespace A297776.P724879787427985193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A043535 (n + 1)) (A077946 n)

end

end A297776.P724879787427985193

/-! ## A297776.P8370282680648003930

`and(A043535(n+1), A293464(n))`
-/

namespace A297776.P8370282680648003930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A043535 (n + 1)) (A293464 n)

end

end A297776.P8370282680648003930

/-! ## A297776.P12621040911472845388

`and(A043535(n+1), A259400(n))`
-/

namespace A297776.P12621040911472845388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A043535 (n + 1)) (A259400 n)

end

end A297776.P12621040911472845388

/-! ## A297776.P11591070367516806116

`and(A043535(n+1), A286985(n+1))`
-/

namespace A297776.P11591070367516806116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A043535 (n + 1)) (A286985 (n + 1))

end

end A297776.P11591070367516806116

/-! ## A297776.P1723634443600916985

`and(A043535(n+1), A077847(n))`
-/

namespace A297776.P1723634443600916985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A043535 (n + 1)) (A077847 n)

end

end A297776.P1723634443600916985

/-! ## A297776.P7101501996957723069

`and(A026581(n), A043535(n+1))`
-/

namespace A297776.P7101501996957723069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A026581 n) (A043535 (n + 1))

end

end A297776.P7101501996957723069

/-! ## A297776.P4823770497453581301

`and(A043535(n+1), A290470(n+1))`
-/

namespace A297776.P4823770497453581301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A043535 (n + 1)) (A290470 (n + 1))

end

end A297776.P4823770497453581301

/-! ## A297776.P6319351324838119867

`and(A043535(n+1), A052948(n))`
-/

namespace A297776.P6319351324838119867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A043535 (n + 1)) (A052948 n)

end

end A297776.P6319351324838119867

/-!
# A297779: 

The programs for A297779, there is no canonical definition to state claims against.
-/

/-! ## A297779.P853383984043101957

`and(A027180(n), A043538(n+1))`
-/

namespace A297779.P853383984043101957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A027180 n) (A043538 (n + 1))

end

end A297779.P853383984043101957

/-! ## A297779.P5677172080076161748

`and(A043538(n+1), A267437(n+2))`
-/

namespace A297779.P5677172080076161748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A043538 (n + 1)) (A267437 (n + 2))

end

end A297779.P5677172080076161748

/-! ## A297779.P17476989207898300143

`and(A043538(n+1), A139700(n+1))`
-/

namespace A297779.P17476989207898300143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A043538 (n + 1)) (A139700 (n + 1))

end

end A297779.P17476989207898300143

/-! ## A297779.P3165116627140770336

`and(A043538(n+1), A166118(n+1))`
-/

namespace A297779.P3165116627140770336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A043538 (n + 1)) (A166118 (n + 1))

end

end A297779.P3165116627140770336

/-! ## A297779.P12466963020712034856

`and(A036564(n+5), A043538(n+1))`
-/

namespace A297779.P12466963020712034856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A036564 (n + 5)) (A043538 (n + 1))

end

end A297779.P12466963020712034856

/-! ## A297779.P10916585929931781175

`and(A043538(n+1), A196655(n))`
-/

namespace A297779.P10916585929931781175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A043538 (n + 1)) (A196655 n)

end

end A297779.P10916585929931781175

/-! ## A297779.P12553939675705363424

`and(A043538(n+1), A248877(n+1))`
-/

namespace A297779.P12553939675705363424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A043538 (n + 1)) (A248877 (n + 1))

end

end A297779.P12553939675705363424

/-! ## A297779.P16075479699471591506

`and(A043538(n+1), A250653(n+1))`
-/

namespace A297779.P16075479699471591506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A043538 (n + 1)) (A250653 (n + 1))

end

end A297779.P16075479699471591506

/-! ## A297779.P16364752516512448618

`and(A043538(n+1), A304383(n+1))`
-/

namespace A297779.P16364752516512448618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A043538 (n + 1)) (A304383 (n + 1))

end

end A297779.P16364752516512448618

/-! ## A297779.P14591479036989502974

`and(A043538(n+1), A304514(n+1))`
-/

namespace A297779.P14591479036989502974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A043538 (n + 1)) (A304514 (n + 1))

end

end A297779.P14591479036989502974

/-! ## A297779.P560046919775513040

`and(A026917(n), A043538(n+1))`
-/

namespace A297779.P560046919775513040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A026917 n) (A043538 (n + 1))

end

end A297779.P560046919775513040

/-! ## A297779.P7540521620083873645

`and(A043538(n+1), A267226(n+1))`
-/

namespace A297779.P7540521620083873645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A043538 (n + 1)) (A267226 (n + 1))

end

end A297779.P7540521620083873645

/-! ## A297779.P18395647829241049790

`and(A043538(n+1), A375155(n+1))`
-/

namespace A297779.P18395647829241049790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A043538 (n + 1)) (A375155 (n + 1))

end

end A297779.P18395647829241049790

/-! ## A297779.P7545941579138189327

`and(A043538(n+1), A127978(n+2))`
-/

namespace A297779.P7545941579138189327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A043538 (n + 1)) (A127978 (n + 2))

end

end A297779.P7545941579138189327

/-! ## A297779.P13240948941331095515

`and(A043538(n+1), A176288(n))`
-/

namespace A297779.P13240948941331095515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A043538 (n + 1)) (A176288 n)

end

end A297779.P13240948941331095515

/-! ## A297779.P3171009014883741852

`and(A043538(n+1), A099035(n+1))`
-/

namespace A297779.P3171009014883741852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A043538 (n + 1)) (A099035 (n + 1))

end

end A297779.P3171009014883741852

/-! ## A297779.P1716386048265145714

`and(A043538(n+1), A304516(n+1))`
-/

namespace A297779.P1716386048265145714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A043538 (n + 1)) (A304516 (n + 1))

end

end A297779.P1716386048265145714

/-! ## A297779.P11906291772197346691

`and(A043538(n+1), A334771(n+1))`
-/

namespace A297779.P11906291772197346691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A043538 (n + 1)) (A334771 (n + 1))

end

end A297779.P11906291772197346691

/-! ## A297779.P12702440647578364507

`and(A043538(n+1), A088578(n))`
-/

namespace A297779.P12702440647578364507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A043538 (n + 1)) (A088578 n)

end

end A297779.P12702440647578364507

/-! ## A297779.P12706252912812189326

`and(A043538(n+1), A289842(n))`
-/

namespace A297779.P12706252912812189326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A043538 (n + 1)) (A289842 n)

end

end A297779.P12706252912812189326

/-!
# A297780: 

The programs for A297780, there is no canonical definition to state claims against.
-/

/-! ## A297780.P14277728252290088416

`and(A027180(n), A043539(n+1))`
-/

namespace A297780.P14277728252290088416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A027180 n) (A043539 (n + 1))

end

end A297780.P14277728252290088416

/-! ## A297780.P17099355667932048950

`and(A043539(n+1), A267437(n+2))`
-/

namespace A297780.P17099355667932048950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A043539 (n + 1)) (A267437 (n + 2))

end

end A297780.P17099355667932048950

/-! ## A297780.P31401745012228445

`and(A043539(n+1), A139700(n+1))`
-/

namespace A297780.P31401745012228445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A043539 (n + 1)) (A139700 (n + 1))

end

end A297780.P31401745012228445

/-! ## A297780.P8532447185559694250

`and(A043539(n+1), A166118(n+1))`
-/

namespace A297780.P8532447185559694250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A043539 (n + 1)) (A166118 (n + 1))

end

end A297780.P8532447185559694250

/-! ## A297780.P164216536458160124

`and(A036564(n+5), A043539(n+1))`
-/

namespace A297780.P164216536458160124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A036564 (n + 5)) (A043539 (n + 1))

end

end A297780.P164216536458160124

/-! ## A297780.P16907401368368036407

`and(A043539(n+1), A196655(n))`
-/

namespace A297780.P16907401368368036407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A043539 (n + 1)) (A196655 n)

end

end A297780.P16907401368368036407

/-! ## A297780.P12622146192563149884

`and(A043539(n+1), A248877(n+1))`
-/

namespace A297780.P12622146192563149884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A043539 (n + 1)) (A248877 (n + 1))

end

end A297780.P12622146192563149884

/-! ## A297780.P468823117254379921

`and(A043539(n+1), A250653(n+1))`
-/

namespace A297780.P468823117254379921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A043539 (n + 1)) (A250653 (n + 1))

end

end A297780.P468823117254379921

/-! ## A297780.P4221225441239450197

`and(A043539(n+1), A304383(n+1))`
-/

namespace A297780.P4221225441239450197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A043539 (n + 1)) (A304383 (n + 1))

end

end A297780.P4221225441239450197

/-! ## A297780.P3839713715499676340

`and(A043539(n+1), A304514(n+1))`
-/

namespace A297780.P3839713715499676340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A043539 (n + 1)) (A304514 (n + 1))

end

end A297780.P3839713715499676340

/-! ## A297780.P7940057834724838557

`and(A026917(n), A043539(n+1))`
-/

namespace A297780.P7940057834724838557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A026917 n) (A043539 (n + 1))

end

end A297780.P7940057834724838557

/-! ## A297780.P12267994733983583600

`and(A043539(n+1), A267226(n+1))`
-/

namespace A297780.P12267994733983583600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A043539 (n + 1)) (A267226 (n + 1))

end

end A297780.P12267994733983583600

/-! ## A297780.P6600412593416514807

`and(A043539(n+1), A375155(n+1))`
-/

namespace A297780.P6600412593416514807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A043539 (n + 1)) (A375155 (n + 1))

end

end A297780.P6600412593416514807

/-! ## A297780.P7070184960177179238

`and(A043539(n+1), A127978(n+2))`
-/

namespace A297780.P7070184960177179238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A043539 (n + 1)) (A127978 (n + 2))

end

end A297780.P7070184960177179238

/-! ## A297780.P7074634855059640284

`and(A043539(n+1), A176288(n))`
-/

namespace A297780.P7074634855059640284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A043539 (n + 1)) (A176288 n)

end

end A297780.P7074634855059640284

/-! ## A297780.P16239547304006065093

`and(A043539(n+1), A099035(n+1))`
-/

namespace A297780.P16239547304006065093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A043539 (n + 1)) (A099035 (n + 1))

end

end A297780.P16239547304006065093

/-! ## A297780.P2335534198758474933

`and(A043539(n+1), A304516(n+1))`
-/

namespace A297780.P2335534198758474933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A043539 (n + 1)) (A304516 (n + 1))

end

end A297780.P2335534198758474933

/-! ## A297780.P12206936124207394504

`and(A043539(n+1), A334771(n+1))`
-/

namespace A297780.P12206936124207394504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A043539 (n + 1)) (A334771 (n + 1))

end

end A297780.P12206936124207394504

/-! ## A297780.P6698107452077396701

`and(A043539(n+1), A088578(n))`
-/

namespace A297780.P6698107452077396701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A043539 (n + 1)) (A088578 n)

end

end A297780.P6698107452077396701

/-! ## A297780.P11861426023089096542

`and(A043539(n+1), A289842(n))`
-/

namespace A297780.P11861426023089096542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A043539 (n + 1)) (A289842 n)

end

end A297780.P11861426023089096542

/-!
# A297781: 

The programs for A297781, there is no canonical definition to state claims against.
-/

/-! ## A297781.P13069415096674980209

`and(A027180(n), A043540(n+1))`
-/

namespace A297781.P13069415096674980209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A027180 n) (A043540 (n + 1))

end

end A297781.P13069415096674980209

/-! ## A297781.P6015382852172619268

`and(A043540(n+1), A267437(n+2))`
-/

namespace A297781.P6015382852172619268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A043540 (n + 1)) (A267437 (n + 2))

end

end A297781.P6015382852172619268

/-! ## A297781.P7692422974125599384

`and(A043540(n+1), A139700(n+1))`
-/

namespace A297781.P7692422974125599384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A043540 (n + 1)) (A139700 (n + 1))

end

end A297781.P7692422974125599384

/-! ## A297781.P13963796268951066633

`and(A043540(n+1), A166118(n+1))`
-/

namespace A297781.P13963796268951066633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A043540 (n + 1)) (A166118 (n + 1))

end

end A297781.P13963796268951066633

/-! ## A297781.P15161023186307483825

`and(A036564(n+5), A043540(n+1))`
-/

namespace A297781.P15161023186307483825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A036564 (n + 5)) (A043540 (n + 1))

end

end A297781.P15161023186307483825

/-! ## A297781.P10250746803379750119

`and(A043540(n+1), A196655(n))`
-/

namespace A297781.P10250746803379750119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A043540 (n + 1)) (A196655 n)

end

end A297781.P10250746803379750119

/-! ## A297781.P8516544198260797888

`and(A043540(n+1), A248877(n+1))`
-/

namespace A297781.P8516544198260797888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A043540 (n + 1)) (A248877 (n + 1))

end

end A297781.P8516544198260797888

/-! ## A297781.P17604187043824900970

`and(A043540(n+1), A250653(n+1))`
-/

namespace A297781.P17604187043824900970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A043540 (n + 1)) (A250653 (n + 1))

end

end A297781.P17604187043824900970

/-! ## A297781.P2995268404814483675

`and(A043540(n+1), A304383(n+1))`
-/

namespace A297781.P2995268404814483675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A043540 (n + 1)) (A304383 (n + 1))

end

end A297781.P2995268404814483675

/-! ## A297781.P2079724094062459561

`and(A043540(n+1), A304514(n+1))`
-/

namespace A297781.P2079724094062459561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A043540 (n + 1)) (A304514 (n + 1))

end

end A297781.P2079724094062459561

/-! ## A297781.P17445531015631998904

`and(A026917(n), A043540(n+1))`
-/

namespace A297781.P17445531015631998904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A026917 n) (A043540 (n + 1))

end

end A297781.P17445531015631998904

/-! ## A297781.P541769111516822615

`and(A043540(n+1), A267226(n+1))`
-/

namespace A297781.P541769111516822615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A043540 (n + 1)) (A267226 (n + 1))

end

end A297781.P541769111516822615

/-! ## A297781.P963381587547972441

`and(A043540(n+1), A375155(n+1))`
-/

namespace A297781.P963381587547972441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A043540 (n + 1)) (A375155 (n + 1))

end

end A297781.P963381587547972441

/-! ## A297781.P1689817481671112199

`and(A043540(n+1), A127978(n+2))`
-/

namespace A297781.P1689817481671112199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A043540 (n + 1)) (A127978 (n + 2))

end

end A297781.P1689817481671112199

/-! ## A297781.P6382284260459174866

`and(A043540(n+1), A176288(n))`
-/

namespace A297781.P6382284260459174866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A043540 (n + 1)) (A176288 n)

end

end A297781.P6382284260459174866

/-! ## A297781.P16006329148096960526

`and(A043540(n+1), A099035(n+1))`
-/

namespace A297781.P16006329148096960526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A043540 (n + 1)) (A099035 (n + 1))

end

end A297781.P16006329148096960526

/-! ## A297781.P12533167062665765620

`and(A043540(n+1), A304516(n+1))`
-/

namespace A297781.P12533167062665765620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A043540 (n + 1)) (A304516 (n + 1))

end

end A297781.P12533167062665765620

/-! ## A297781.P8231557846002152336

`and(A043540(n+1), A334771(n+1))`
-/

namespace A297781.P8231557846002152336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A043540 (n + 1)) (A334771 (n + 1))

end

end A297781.P8231557846002152336

/-! ## A297781.P13408316322016099979

`and(A043540(n+1), A088578(n))`
-/

namespace A297781.P13408316322016099979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A043540 (n + 1)) (A088578 n)

end

end A297781.P13408316322016099979

/-! ## A297781.P9351783174054675264

`and(A043540(n+1), A289842(n))`
-/

namespace A297781.P9351783174054675264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A043540 (n + 1)) (A289842 n)

end

end A297781.P9351783174054675264

/-!
# A297782: 

The programs for A297782, there is no canonical definition to state claims against.
-/

/-! ## A297782.P2104019092014575497

`and(A027180(n), A043541(n+1))`
-/

namespace A297782.P2104019092014575497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A027180 n) (A043541 (n + 1))

end

end A297782.P2104019092014575497

/-! ## A297782.P9590305558220728665

`and(A043541(n+1), A267437(n+2))`
-/

namespace A297782.P9590305558220728665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A043541 (n + 1)) (A267437 (n + 2))

end

end A297782.P9590305558220728665

/-! ## A297782.P5195477066390102030

`and(A043541(n+1), A139700(n+1))`
-/

namespace A297782.P5195477066390102030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A043541 (n + 1)) (A139700 (n + 1))

end

end A297782.P5195477066390102030

/-! ## A297782.P12132284344968425786

`and(A043541(n+1), A166118(n+1))`
-/

namespace A297782.P12132284344968425786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A043541 (n + 1)) (A166118 (n + 1))

end

end A297782.P12132284344968425786

/-! ## A297782.P11539231666586335342

`and(A036564(n+5), A043541(n+1))`
-/

namespace A297782.P11539231666586335342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A036564 (n + 5)) (A043541 (n + 1))

end

end A297782.P11539231666586335342

/-! ## A297782.P14690159547577602941

`and(A043541(n+1), A196655(n))`
-/

namespace A297782.P14690159547577602941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A043541 (n + 1)) (A196655 n)

end

end A297782.P14690159547577602941

/-! ## A297782.P10836059002974013897

`and(A043541(n+1), A248877(n+1))`
-/

namespace A297782.P10836059002974013897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A043541 (n + 1)) (A248877 (n + 1))

end

end A297782.P10836059002974013897

/-! ## A297782.P11016878520806292589

`and(A043541(n+1), A250653(n+1))`
-/

namespace A297782.P11016878520806292589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A043541 (n + 1)) (A250653 (n + 1))

end

end A297782.P11016878520806292589

/-! ## A297782.P11897264613866385414

`and(A043541(n+1), A304383(n+1))`
-/

namespace A297782.P11897264613866385414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A043541 (n + 1)) (A304383 (n + 1))

end

end A297782.P11897264613866385414

/-! ## A297782.P5388806110098451189

`and(A043541(n+1), A304514(n+1))`
-/

namespace A297782.P5388806110098451189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A043541 (n + 1)) (A304514 (n + 1))

end

end A297782.P5388806110098451189

/-! ## A297782.P9099827397045883960

`and(A026917(n), A043541(n+1))`
-/

namespace A297782.P9099827397045883960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A026917 n) (A043541 (n + 1))

end

end A297782.P9099827397045883960

/-! ## A297782.P15788155560102587502

`and(A043541(n+1), A267226(n+1))`
-/

namespace A297782.P15788155560102587502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A043541 (n + 1)) (A267226 (n + 1))

end

end A297782.P15788155560102587502

/-! ## A297782.P2712069068864791585

`and(A043541(n+1), A375155(n+1))`
-/

namespace A297782.P2712069068864791585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A043541 (n + 1)) (A375155 (n + 1))

end

end A297782.P2712069068864791585

/-! ## A297782.P11683604060843297063

`and(A043541(n+1), A127978(n+2))`
-/

namespace A297782.P11683604060843297063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A043541 (n + 1)) (A127978 (n + 2))

end

end A297782.P11683604060843297063

/-! ## A297782.P10103648781426923060

`and(A043541(n+1), A176288(n))`
-/

namespace A297782.P10103648781426923060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A043541 (n + 1)) (A176288 n)

end

end A297782.P10103648781426923060

/-! ## A297782.P13854051994684655524

`and(A043541(n+1), A099035(n+1))`
-/

namespace A297782.P13854051994684655524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A043541 (n + 1)) (A099035 (n + 1))

end

end A297782.P13854051994684655524

/-! ## A297782.P11911242636592095049

`and(A043541(n+1), A304516(n+1))`
-/

namespace A297782.P11911242636592095049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A043541 (n + 1)) (A304516 (n + 1))

end

end A297782.P11911242636592095049

/-! ## A297782.P10548285195440785360

`and(A043541(n+1), A334771(n+1))`
-/

namespace A297782.P10548285195440785360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A043541 (n + 1)) (A334771 (n + 1))

end

end A297782.P10548285195440785360

/-! ## A297782.P17481259641993517763

`and(A043541(n+1), A088578(n))`
-/

namespace A297782.P17481259641993517763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A043541 (n + 1)) (A088578 n)

end

end A297782.P17481259641993517763

/-! ## A297782.P10217568107893970440

`and(A043541(n+1), A289842(n))`
-/

namespace A297782.P10217568107893970440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A043541 (n + 1)) (A289842 n)

end

end A297782.P10217568107893970440

/-!
# A297783: 

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

/-! ## A297783.P2295780045756122552

`and(A027180(n), A043542(n+1))`
-/

namespace A297783.P2295780045756122552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A027180 n) (A043542 (n + 1))

end

end A297783.P2295780045756122552

/-! ## A297783.P8755797639288652702

`and(A043542(n+1), A267437(n+2))`
-/

namespace A297783.P8755797639288652702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A043542 (n + 1)) (A267437 (n + 2))

end

end A297783.P8755797639288652702

/-! ## A297783.P2620660512055161322

`and(A043542(n+1), A139700(n+1))`
-/

namespace A297783.P2620660512055161322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A043542 (n + 1)) (A139700 (n + 1))

end

end A297783.P2620660512055161322

/-! ## A297783.P7095541438992738822

`and(A043542(n+1), A166118(n+1))`
-/

namespace A297783.P7095541438992738822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A043542 (n + 1)) (A166118 (n + 1))

end

end A297783.P7095541438992738822

/-! ## A297783.P17469065194337821300

`and(A036564(n+5), A043542(n+1))`
-/

namespace A297783.P17469065194337821300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A036564 (n + 5)) (A043542 (n + 1))

end

end A297783.P17469065194337821300

/-! ## A297783.P13104954743623469895

`and(A043542(n+1), A196655(n))`
-/

namespace A297783.P13104954743623469895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A043542 (n + 1)) (A196655 n)

end

end A297783.P13104954743623469895

/-! ## A297783.P3632809266907111257

`and(A043542(n+1), A248877(n+1))`
-/

namespace A297783.P3632809266907111257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A043542 (n + 1)) (A248877 (n + 1))

end

end A297783.P3632809266907111257

/-! ## A297783.P7988584481501445375

`and(A043542(n+1), A250653(n+1))`
-/

namespace A297783.P7988584481501445375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A043542 (n + 1)) (A250653 (n + 1))

end

end A297783.P7988584481501445375

/-! ## A297783.P17896574025035830894

`and(A043542(n+1), A304383(n+1))`
-/

namespace A297783.P17896574025035830894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A043542 (n + 1)) (A304383 (n + 1))

end

end A297783.P17896574025035830894

/-! ## A297783.P665585335374654206

`and(A043542(n+1), A304514(n+1))`
-/

namespace A297783.P665585335374654206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A043542 (n + 1)) (A304514 (n + 1))

end

end A297783.P665585335374654206

/-! ## A297783.P3579422607700565194

`and(A026917(n), A043542(n+1))`
-/

namespace A297783.P3579422607700565194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A026917 n) (A043542 (n + 1))

end

end A297783.P3579422607700565194

/-! ## A297783.P18123453744124161813

`and(A043542(n+1), A267226(n+1))`
-/

namespace A297783.P18123453744124161813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A043542 (n + 1)) (A267226 (n + 1))

end

end A297783.P18123453744124161813

/-! ## A297783.P16647120856342307161

`and(A043542(n+1), A375155(n+1))`
-/

namespace A297783.P16647120856342307161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A043542 (n + 1)) (A375155 (n + 1))

end

end A297783.P16647120856342307161

/-! ## A297783.P11012020971618368630

`and(A043542(n+1), A127978(n+2))`
-/

namespace A297783.P11012020971618368630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A043542 (n + 1)) (A127978 (n + 2))

end

end A297783.P11012020971618368630

/-! ## A297783.P15174290755153330646

`and(A043542(n+1), A176288(n))`
-/

namespace A297783.P15174290755153330646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A043542 (n + 1)) (A176288 n)

end

end A297783.P15174290755153330646

/-! ## A297783.P3944267347256209223

`and(A043542(n+1), A099035(n+1))`
-/

namespace A297783.P3944267347256209223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A043542 (n + 1)) (A099035 (n + 1))

end

end A297783.P3944267347256209223

/-! ## A297783.P17615325440072549529

`and(A043542(n+1), A304516(n+1))`
-/

namespace A297783.P17615325440072549529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A043542 (n + 1)) (A304516 (n + 1))

end

end A297783.P17615325440072549529

/-! ## A297783.P9509633062995550553

`and(A043542(n+1), A334771(n+1))`
-/

namespace A297783.P9509633062995550553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A043542 (n + 1)) (A334771 (n + 1))

end

end A297783.P9509633062995550553

/-! ## A297783.P10550131343135974584

`and(A043542(n+1), A088578(n))`
-/

namespace A297783.P10550131343135974584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A043542 (n + 1)) (A088578 n)

end

end A297783.P10550131343135974584

/-!
# A297784: 

The programs for A297784, there is no canonical definition to state claims against.
-/

/-! ## A297784.P9150265998830355198

`and(A027180(n), A043543(n+1))`
-/

namespace A297784.P9150265998830355198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A027180 n) (A043543 (n + 1))

end

end A297784.P9150265998830355198

/-! ## A297784.P9175379683191464223

`and(A043543(n+1), A267437(n+2))`
-/

namespace A297784.P9175379683191464223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A043543 (n + 1)) (A267437 (n + 2))

end

end A297784.P9175379683191464223

/-! ## A297784.P13089658685791991079

`and(A043543(n+1), A139700(n+1))`
-/

namespace A297784.P13089658685791991079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A043543 (n + 1)) (A139700 (n + 1))

end

end A297784.P13089658685791991079

/-! ## A297784.P8921776907807071443

`and(A043543(n+1), A166118(n+1))`
-/

namespace A297784.P8921776907807071443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A043543 (n + 1)) (A166118 (n + 1))

end

end A297784.P8921776907807071443

/-! ## A297784.P16144840555886025681

`and(A036564(n+5), A043543(n+1))`
-/

namespace A297784.P16144840555886025681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A036564 (n + 5)) (A043543 (n + 1))

end

end A297784.P16144840555886025681

/-! ## A297784.P6986797901511321897

`and(A043543(n+1), A196655(n))`
-/

namespace A297784.P6986797901511321897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A043543 (n + 1)) (A196655 n)

end

end A297784.P6986797901511321897

/-! ## A297784.P4761673912085006354

`and(A043543(n+1), A248877(n+1))`
-/

namespace A297784.P4761673912085006354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A043543 (n + 1)) (A248877 (n + 1))

end

end A297784.P4761673912085006354

/-! ## A297784.P9396040844178702596

`and(A043543(n+1), A250653(n+1))`
-/

namespace A297784.P9396040844178702596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A043543 (n + 1)) (A250653 (n + 1))

end

end A297784.P9396040844178702596

/-! ## A297784.P1225772006460531788

`and(A043543(n+1), A304383(n+1))`
-/

namespace A297784.P1225772006460531788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A043543 (n + 1)) (A304383 (n + 1))

end

end A297784.P1225772006460531788

/-! ## A297784.P17465604915850401291

`and(A043543(n+1), A304514(n+1))`
-/

namespace A297784.P17465604915850401291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A043543 (n + 1)) (A304514 (n + 1))

end

end A297784.P17465604915850401291

/-! ## A297784.P2295642678527943748

`and(A026917(n), A043543(n+1))`
-/

namespace A297784.P2295642678527943748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A026917 n) (A043543 (n + 1))

end

end A297784.P2295642678527943748

/-! ## A297784.P17731600439031225115

`and(A043543(n+1), A267226(n+1))`
-/

namespace A297784.P17731600439031225115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A043543 (n + 1)) (A267226 (n + 1))

end

end A297784.P17731600439031225115

/-! ## A297784.P8212273640346561621

`and(A043543(n+1), A375155(n+1))`
-/

namespace A297784.P8212273640346561621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A043543 (n + 1)) (A375155 (n + 1))

end

end A297784.P8212273640346561621

/-! ## A297784.P4637753165422048502

`and(A043543(n+1), A127978(n+2))`
-/

namespace A297784.P4637753165422048502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A043543 (n + 1)) (A127978 (n + 2))

end

end A297784.P4637753165422048502

/-! ## A297784.P2450897372473429766

`and(A043543(n+1), A176288(n))`
-/

namespace A297784.P2450897372473429766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A043543 (n + 1)) (A176288 n)

end

end A297784.P2450897372473429766

/-! ## A297784.P17720579016683511675

`and(A043543(n+1), A099035(n+1))`
-/

namespace A297784.P17720579016683511675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A043543 (n + 1)) (A099035 (n + 1))

end

end A297784.P17720579016683511675

/-! ## A297784.P9499986001220817806

`and(A043543(n+1), A304516(n+1))`
-/

namespace A297784.P9499986001220817806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A043543 (n + 1)) (A304516 (n + 1))

end

end A297784.P9499986001220817806

/-! ## A297784.P10993933731781015604

`and(A043543(n+1), A334771(n+1))`
-/

namespace A297784.P10993933731781015604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A043543 (n + 1)) (A334771 (n + 1))

end

end A297784.P10993933731781015604

/-! ## A297784.P11127126631988896852

`and(A043543(n+1), A088578(n))`
-/

namespace A297784.P11127126631988896852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A043543 (n + 1)) (A088578 n)

end

end A297784.P11127126631988896852

/-! ## A297784.P8366118242416486463

`and(A043543(n+1), A289842(n))`
-/

namespace A297784.P8366118242416486463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A043543 (n + 1)) (A289842 n)

end

end A297784.P8366118242416486463

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

/-! ## A297791.P6944468779310556647

`A241069(A330942(n))+A167865(n)`
-/

namespace A297791.P6944468779310556647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241069 (A330942 n).toNat + A167865 n

end

end A297791.P6944468779310556647

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

/-!
# A297792: a(n) = Sum_{d|n} min(d, n/d)^2.

The programs for A297792, the canonical program `A297792.P16865252261443119111` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A297792 has offset 1).

The definition of A297792 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A297792.P16865252261443119111

`∑{d}[n+1, #²-abs(n+1-#²)]`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A297792

/-- `∑{d}[n+1, #²-abs(n+1-#²)]` -/
def P16865252261443119111.Spec : Prop :=
  ∀ n, P16865252261443119111.a n = A297792 (n + 1)

theorem P16865252261443119111.correct : P16865252261443119111.Spec := by
  intro n
  simp only [A297792, Nat.add_sub_cancel]

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

/-! ## A297792.P9729704483923745778

`A004277(A001157(n+1))-A297841(n+1)`
-/

namespace A297792.P9729704483923745778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A001157 (n + 1)).toNat - A297841 (n + 1)

end

end A297792.P9729704483923745778

namespace A297792

/-- `A004277(A001157(n+1))-A297841(n+1)` -/
def P9729704483923745778.Spec : Prop :=
  ∀ n, P9729704483923745778.a n = A297792 (n + 1)

end A297792

/-!
# A297793: a(n) = Sum_{d|n} min(d, n/d)^3.

The programs for A297793, there is no canonical definition to state claims against.
-/

/-! ## A297793.P16213789537926303539

`2*A001158(n+1)-A297842(n+1)`
-/

namespace A297793.P16213789537926303539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A001158 (n + 1) - A297842 (n + 1)

end

end A297793.P16213789537926303539

/-! ## A297793.P5694301057801765273

`A091259(n+1)-A297842(n+1)%A091259(n+1)`
-/

namespace A297793.P5694301057801765273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091259 (n + 1) - Int.tmod (A297842 (n + 1)) (A091259 (n + 1))

end

end A297793.P5694301057801765273

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

/-! ## A297793.P2392076487635129893

`A001158(n+1)-(A297842(n+1)-(A279290(n+1)+A005064(n+1)))`
-/

namespace A297793.P2392076487635129893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001158 (n + 1) - (A297842 (n + 1) - (A279290 (n + 1) + A005064 (n + 1)))

end

end A297793.P2392076487635129893

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

/-! ## A297793.P13991247058730321532

`A001158(n+1)-(A297842(n+1)-A281372(n+1)/(n+1))`
-/

namespace A297793.P13991247058730321532
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001158 (n + 1) : ℚ) - ((A297842 (n + 1) : ℚ) - (A281372 (n + 1) : ℚ) / (n + 1 : ℚ))

end

end A297793.P13991247058730321532

/-! ## A297793.P12225197997222709648

`2*A278403(n+1)-A001157(n+1)-(A297842(n+1)-A281372(n+1)/(n+1))`
-/

namespace A297793.P12225197997222709648
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 * A278403 (n + 1) - A001157 (n + 1) : ℚ) - ((A297842 (n + 1) : ℚ) - (A281372 (n + 1) : ℚ) / (n + 1 : ℚ))

end

end A297793.P12225197997222709648

/-! ## A297793.P54386456612354584

`A339354(n+1)+A280375(n+1)`
-/

namespace A297793.P54386456612354584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339354 (n + 1) + A280375 (n + 1)

end

end A297793.P54386456612354584

/-! ## A297793.P2778293734223539711

`A280375(n+1)+A280375(n+1)-A000578(A037213(n+1))`
-/

namespace A297793.P2778293734223539711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280375 (n + 1) + (A280375 (n + 1) - A000578 (A037213 (n + 1)).toNat)

end

end A297793.P2778293734223539711

/-!
# A297794: a(n) = Sum_{d|n} min(d, n/d)^4.

The programs for A297794, there is no canonical definition to state claims against.
-/

/-! ## A297794.P7421917345954102975

`A347143(n+1)+A347142(n+1)`
-/

namespace A297794.P7421917345954102975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347143 (n + 1) + A347142 (n + 1)

end

end A297794.P7421917345954102975

/-! ## A297794.P6557963608140999855

`2*A001159(n+1)-A297843(n+1)`
-/

namespace A297794.P6557963608140999855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A001159 (n + 1) - A297843 (n + 1)

end

end A297794.P6557963608140999855

/-!
# A297795: a(n) = Sum_{d|n} min(d, n/d)^5.

The programs for A297795, there is no canonical definition to state claims against.
-/

/-! ## A297795.P1931400106827538827

`2*A001160(n+1)-A297844(n+1)`
-/

namespace A297795.P1931400106827538827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A001160 (n + 1) - A297844 (n + 1)

end

end A297795.P1931400106827538827

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

/-! ## A297796.P271376827900511772

`A297802(A001844(n))+A160145(n)`
-/

namespace A297796.P271376827900511772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297802 (A001844 n).toNat + A160145 n

end

end A297796.P271376827900511772

/-! ## A297796.P18338406921841009371

`gcd(A151878(n), A297802(A001844(n)))`
-/

namespace A297796.P18338406921841009371
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A151878 n) (A297802 (A001844 n).toNat)

end

end A297796.P18338406921841009371

/-! ## A297796.P4210729419712327715

`or(A000007(n), A297802(A001844(n)))`
-/

namespace A297796.P4210729419712327715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A297802 (A001844 n).toNat)

end

end A297796.P4210729419712327715

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

/-! ## A297797.P14009812537947700508

`A297802(A034856(n+2))%A297760(n+2)`
-/

namespace A297797.P14009812537947700508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A297802 (A034856 (n + 2)).toNat) (A297760 (n + 2))

end

end A297797.P14009812537947700508

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

/-! ## A297798.P3107285057710084642

`A297802(A055998(n+2))`
-/

namespace A297798.P3107285057710084642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297802 (A055998 (n + 2)).toNat

end

end A297798.P3107285057710084642

/-! ## A297798.P14895273220354161311

`A297802(A056000(n)+7)`
-/

namespace A297798.P14895273220354161311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297802 (A056000 n + 7).toNat

end

end A297798.P14895273220354161311

/-! ## A297798.P3958164365585892668

`A297802(eq[2, A152157(n)])`
-/

namespace A297798.P3958164365585892668
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152157 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297802 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A297798.P3958164365585892668

/-! ## A297798.P3413211996761887616

`A297802(A052905(n+1)+2)`
-/

namespace A297798.P3413211996761887616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297802 (A052905 (n + 1) + 2).toNat

end

end A297798.P3413211996761887616

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

/-! ## A297799.P2925812250618205637

`A297802(A046691(n+3))`
-/

namespace A297799.P2925812250618205637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297802 (A046691 (n + 3)).toNat

end

end A297799.P2925812250618205637

/-! ## A297799.P1144390664418481036

`A297802(eq[3, A152157(n)])`
-/

namespace A297799.P1144390664418481036
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152157 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297802 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A297799.P1144390664418481036

/-! ## A297799.P2816824713605648583

`A297802(eq[4, A193592(n)])`
-/

namespace A297799.P2816824713605648583
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297802 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A297799.P2816824713605648583

/-! ## A297799.P16721313805506470483

`A297802(Δ[A023545(n+1)])`
-/

namespace A297799.P16721313805506470483
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297802 (f1 (n + 1) - f1 n).toNat

end

end A297799.P16721313805506470483

