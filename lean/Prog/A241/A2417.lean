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
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C038
import Seq.B000.C040
import Seq.B000.C041
import Seq.B000.C043
import Seq.B000.C045
import Seq.B000.C047
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C007
import Seq.B001.C008
import Seq.B001.C009
import Seq.B001.C010
import Seq.B001.C011
import Seq.B001.C013
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
import Seq.Opaque.C015
import Seq.Opaque.C016
import Seq.Opaque.C017
import Seq.Opaque.C018
import Seq.Opaque.C019
import Seq.Opaque.C020
import Seq.Opaque.C021
import Seq.Opaque.C022
import Seq.Opaque.C023

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A241702: Number of connected graphs on n nodes with chromatic number 7.

The programs for A241702, there is no canonical definition to state claims against.
-/

/-! ## A241702.P6712259578564496497

`A084269(A025727(n+1))`
-/

namespace A241702.P6712259578564496497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084269 (A025727 (n + 1)).toNat

end

end A241702.P6712259578564496497

/-! ## A241702.P10832554419602793892

`A076326(n+1)-A076325(n+1)`
-/

namespace A241702.P10832554419602793892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076326 (n + 1) - A076325 (n + 1)

end

end A241702.P10832554419602793892

/-! ## A241702.P13106397626207199224

`A058591(A321099(n))`
-/

namespace A241702.P13106397626207199224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058591 (A321099 n).toNat

end

end A241702.P13106397626207199224

/-! ## A241702.P7577394136868606655

`A350898(A030041(n))`
-/

namespace A241702.P7577394136868606655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350898 (A030041 n).toNat

end

end A241702.P7577394136868606655

/-! ## A241702.P14139695015328037928

`A228708(A342136(n))`
-/

namespace A241702.P14139695015328037928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228708 (A342136 n).toNat

end

end A241702.P14139695015328037928

/-!
# A241703: Number of simple unlabeled n-node graphs of edge-connectivity 4.

The programs for A241703, there is no canonical definition to state claims against.
-/

/-! ## A241703.P5174430988133723099

`A324227(n+1)-A324228(n+1)`
-/

namespace A241703.P5174430988133723099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324227 (n + 1) - A324228 (n + 1)

end

end A241703.P5174430988133723099

/-! ## A241703.P9617553115996888717

`A324226(n+1)-(A324228(n+1)+A052448(n+1))`
-/

namespace A241703.P9617553115996888717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324226 (n + 1) - (A324228 (n + 1) + A052448 (n + 1))

end

end A241703.P9617553115996888717

/-! ## A241703.P7077437378147171314

`A033483(2*A081407(n))`
-/

namespace A241703.P7077437378147171314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033483 (2 * A081407 n).toNat

end

end A241703.P7077437378147171314

/-!
# A241704: Number of simple unlabeled n-node graphs of edge-connectivity 5.

The programs for A241704, there is no canonical definition to state claims against.
-/

/-! ## A241704.P862305109340401726

`A324228(n+1)-A324229(n+1)`
-/

namespace A241704.P862305109340401726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324228 (n + 1) - A324229 (n + 1)

end

end A241704.P862305109340401726

/-!
# A241705: Number of simple unlabeled n-node graphs of edge-connectivity 6.

The programs for A241705, there is no canonical definition to state claims against.
-/

/-! ## A241705.P11864336985193736750

`A324229(n+1)-A324230(n+1)`
-/

namespace A241705.P11864336985193736750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324229 (n + 1) - A324230 (n + 1)

end

end A241705.P11864336985193736750

/-! ## A241705.P15709200992158869063

`floor(A081419(n+1)/8)`
-/

namespace A241705.P15709200992158869063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A081419 (n + 1) : ℚ) / 8⌋

end

end A241705.P15709200992158869063

/-! ## A241705.P6867832273663741591

`A178334(C(comp[∑[n]], 11)²)`
-/

namespace A241705.P6867832273663741591
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178334 (Nat.choose (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n) 11 ^ 2)

end

end A241705.P6867832273663741591

/-! ## A241705.P15286815112748773056

`∑[A008679(∑[floor(n/4)]!)]`
-/

namespace A241705.P15286815112748773056
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℚ) / 4⌋

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008679 (Nat.factorial (∑ j ∈ Finset.range (n + 1), f2 j).toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A241705.P15286815112748773056

/-! ## A241705.P6168256610778312346

`A328666(A010750(n))`
-/

namespace A241705.P6168256610778312346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328666 (A010750 n).toNat

end

end A241705.P6168256610778312346

/-!
# A241706: Number of simple connected graphs on n nodes with diameter 2.

The programs for A241706, there is no canonical definition to state claims against.
-/

/-! ## A241706.P7506457307933978737

`A294522(∑[round(acot(n)+n)])`
-/

namespace A241706.P7506457307933978737
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (SequenceMachineLib.acot (n : ℝ) + (n : ℝ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294522 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A241706.P7506457307933978737

/-! ## A241706.P8925511721991582423

`A294522(A133263(n)+1)`
-/

namespace A241706.P8925511721991582423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294522 (A133263 n + 1).toNat

end

end A241706.P8925511721991582423

/-! ## A241706.P12658513603174335879

`A294522(A114830(n+2))`
-/

namespace A241706.P12658513603174335879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294522 (A114830 (n + 2)).toNat

end

end A241706.P12658513603174335879

/-! ## A241706.P18203853755541340811

`A294522(∑[A233583(n+1)])`
-/

namespace A241706.P18203853755541340811
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233583 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294522 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A241706.P18203853755541340811

/-! ## A241706.P13135316961107188584

`A294522(A238531(n+1)+1)`
-/

namespace A241706.P13135316961107188584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294522 (A238531 (n + 1) + 1).toNat

end

end A241706.P13135316961107188584

/-!
# A241707: Number of simple connected graphs on n nodes with diameter 3.

The programs for A241707, there is no canonical definition to state claims against.
-/

/-! ## A241707.P3987604726799258475

`A294522(A114830(n+1)+1+n)`
-/

namespace A241707.P3987604726799258475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294522 (A114830 (n + 1) + 1 + (n : ℤ)).toNat

end

end A241707.P3987604726799258475

/-! ## A241707.P10815466575218701545

`A339708(∏[∏[2-char[n²]]])`
-/

namespace A241707.P10815466575218701545
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - ((if ∃ j, f3 j = n then 1 else 0 : ℕ) : ℤ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339708 (∏ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A241707.P10815466575218701545

/-! ## A241707.P6533017228583112972

`A054896(A032109(n))`
-/

namespace A241707.P6533017228583112972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054896 (A032109 n).toNat

end

end A241707.P6533017228583112972

/-!
# A241708: Number of simple connected graphs on n nodes with diameter 4.

The programs for A241708, there is no canonical definition to state claims against.
-/

/-! ## A241708.P6463366431718227863

`A294522(A077169(n+1))`
-/

namespace A241708.P6463366431718227863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294522 (A077169 (n + 1)).toNat

end

end A241708.P6463366431718227863

/-! ## A241708.P2212545165430123390

`A294522(Δ[Δ[A239987(n+1)]])`
-/

namespace A241708.P2212545165430123390
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239987 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294522 (f1 (n + 1) - f1 n).toNat

end

end A241708.P2212545165430123390

/-! ## A241708.P15958538654584778411

`A294522(A088575(n)+(n+1)²-n²)`
-/

namespace A241708.P15958538654584778411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294522 (A088575 n + (((n + 1) ^ 2 : ℤ) - (n ^ 2 : ℤ))).toNat

end

end A241708.P15958538654584778411

/-! ## A241708.P35225286873163736

`A294522(∑[A023193(∑[C(∑[char[∑[n]]], n-C(∑[char[∑[n]]], 2))]+comp[∑[n]]-n)])`
-/

namespace A241708.P35225286873163736
noncomputable section

def f5 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f5 j

open Classical in
def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f4 j = n then 1 else 0

def f8 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f7 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f8 j

open Classical in
def f6 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f7 j = n then 1 else 0

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (∑ j ∈ Finset.range (n + 1), f3 j) ((n : ℤ) - (Nat.choose (∑ j ∈ Finset.range (n + 1), f6 j) 2 : ℤ)).toNat

def f10 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f9 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f10 j

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023193 (((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ) + ((SequenceMachineLib.nth (fun x => ∀ j, f9 j ≠ x) n : ℤ) - (n : ℤ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294522 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A241708.P35225286873163736

/-!
# A241709: Number of simple connected graphs on n nodes with diameter 5.

The programs for A241709, there is no canonical definition to state claims against.
-/

/-! ## A241709.P2997479582317615319

`A294522(A025708(n+1))`
-/

namespace A241709.P2997479582317615319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294522 (A025708 (n + 1)).toNat

end

end A241709.P2997479582317615319

/-! ## A241709.P6396496237943400819

`A294522(A025718(n+1))`
-/

namespace A241709.P6396496237943400819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294522 (A025718 (n + 1)).toNat

end

end A241709.P6396496237943400819

/-! ## A241709.P9015242850010040408

`A294522(A022783(n+2))`
-/

namespace A241709.P9015242850010040408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294522 (A022783 (n + 2)).toNat

end

end A241709.P9015242850010040408

/-! ## A241709.P8318669736531506847

`A191888(floor((3^(n-5)+1)^(n/5)))`
-/

namespace A241709.P8318669736531506847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191888 ⌊((3 : ℚ) ^ ((n : ℤ) - 5 : ℤ) + 1 : ℝ) ^ ((n : ℚ) / 5 : ℝ)⌋.toNat

end

end A241709.P8318669736531506847

/-!
# A241710: Number of simple connected graphs on n nodes with diameter 6.

The programs for A241710, there is no canonical definition to state claims against.
-/

/-! ## A241710.P7437184753267855230

`A294522(A025727(n+1))`
-/

namespace A241710.P7437184753267855230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294522 (A025727 (n + 1)).toNat

end

end A241710.P7437184753267855230

/-! ## A241710.P17411357550894490293

`A294522(A194082(n+2)+1)`
-/

namespace A241710.P17411357550894490293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294522 (A194082 (n + 2) + 1).toNat

end

end A241710.P17411357550894490293

/-! ## A241710.P11346122716734916338

`A350633(C(n+2, 8))`
-/

namespace A241710.P11346122716734916338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350633 (Nat.choose (n + 2) 8)

end

end A241710.P11346122716734916338

/-! ## A241710.P14082039572107667418

`A054907(A117115(n))`
-/

namespace A241710.P14082039572107667418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054907 (A117115 n).toNat

end

end A241710.P14082039572107667418

/-! ## A241710.P13245451821041120604

`A054907(A325879(n))`
-/

namespace A241710.P13245451821041120604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054907 (A325879 n).toNat

end

end A241710.P13245451821041120604

/-!
# A241716: Primes p such that p^3 - 2 is semiprime.

The programs for A241716, there is no canonical definition to state claims against.
-/

/-! ## A241716.P10538895377347905137

`∩[A357758(n+1), A383779(n+1)]`
-/

namespace A241716.P10538895377347905137
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357758 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383779 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A241716.P10538895377347905137

/-! ## A241716.P4972339142700669394

`eq[A010054(A356266(n+3)), A032741(n)]`
-/

namespace A241716.P4972339142700669394
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 (A356266 (n + 3)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A241716.P4972339142700669394

/-! ## A241716.P468345548014429480

`A000040(∑[A243752(n)!])`
-/

namespace A241716.P468345548014429480
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A243752 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A241716.P468345548014429480

/-! ## A241716.P11188258752155797036

`filter[A069090(n+1), A092079(#)]`
-/

namespace A241716.P11188258752155797036
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069090 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A092079 (f1 j).toNat = 1) n)

end

end A241716.P11188258752155797036

/-! ## A241716.P9355893439902046093

`filter[A321150(n+1), A092079(#)]`
-/

namespace A241716.P9355893439902046093
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321150 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A092079 (f1 j).toNat = 1) n)

end

end A241716.P9355893439902046093

/-!
# A241717: The number of P-positions in the game of Nim with up to 3 piles, allowing for piles of zero, such that the number of objects in the largest pile is n.

The programs for A241717, there is no canonical definition to state claims against.
-/

/-! ## A241717.P13108327481862383676

`(a(n-1)+4)%(3*n)+2` with `a(0)=1, a(1)=3`
-/

namespace A241717.P13108327481862383676
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 3] fun n a =>
  (a (n - 1) + 4) % (3 * n) + 2

end

end A241717.P13108327481862383676

/-! ## A241717.P16993660787409448220

`or(1, 3*(Δ[n²]-2^ceil(log2(n+1))))`
-/

namespace A241717.P16993660787409448220
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (SequenceMachineLib.roundAway (3 * (((f1 (n + 1) : ℤ) - (f1 n : ℤ) : ℚ) - (2 : ℚ) ^ (⌈Real.logb 2 (n + 1 : ℝ)⌉ : ℤ))))

end

end A241717.P16993660787409448220

/-! ## A241717.P3468382497531503166

`Δ[A256534(n)/4]`
-/

namespace A241717.P3468382497531503166
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A256534 n : ℚ) / 4

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A241717.P3468382497531503166

/-! ## A241717.P16731674311753405732

`A261695(n+1)/4`
-/

namespace A241717.P16731674311753405732
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A261695 (n + 1) : ℚ) / 4

end

end A241717.P16731674311753405732

/-! ## A241717.P17294352520840020757

`∑[Δ[A261695(n)]/4]`
-/

namespace A241717.P17294352520840020757
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261695 n

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) - f2 n : ℚ) / 4

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A241717.P17294352520840020757

/-! ## A241717.P1843282326873384432

`floor(3/acot(A006257(n)))`
-/

namespace A241717.P1843282326873384432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊3 / SequenceMachineLib.acot (A006257 n : ℝ)⌋

end

end A241717.P1843282326873384432

/-! ## A241717.P6351807400751295508

`ceil(A256258(2*n+1)/2)`
-/

namespace A241717.P6351807400751295508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A256258 (2 * n + 1) : ℚ) / 2⌉

end

end A241717.P6351807400751295508

/-! ## A241717.P8553811292460324220

`4*n+1-A092569(2*n)`
-/

namespace A241717.P8553811292460324220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (4 * n + 1 : ℤ) - A092569 (2 * n)

end

end A241717.P8553811292460324220

/-! ## A241717.P3696377210758134301

`A008486(A006257(n))`
-/

namespace A241717.P3696377210758134301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008486 (A006257 n).toNat

end

end A241717.P3696377210758134301

/-! ## A241717.P10592976876925831102

`A098046(A256251(n))`
-/

namespace A241717.P10592976876925831102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098046 (A256251 n).toNat

end

end A241717.P10592976876925831102

/-!
# A241718: The number of P-positions in the game of Nim with up to 4 piles, allowing for piles of zero, such that the number of objects in the largest pile is n.

The programs for A241718, there is no canonical definition to state claims against.
-/

/-! ## A241718.P9444021402734575282

`∑[12*n]+1-2*(2*∑[and(n, -n)²]+n)`
-/

namespace A241718.P9444021402734575282
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  12 * n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n : ℤ) (-(n : ℤ)) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j + 1 : ℕ) : ℤ) - 2 * (2 * (∑ j ∈ Finset.range (n + 1), f2 j) + (n : ℤ))

end

end A241718.P9444021402734575282

/-! ## A241718.P2741987645003411591

`6*A213673(Δ[n²])+1`
-/

namespace A241718.P2741987645003411591
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * A213673 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat + 1

end

end A241718.P2741987645003411591

/-! ## A241718.P3179376898039014289

`8*A222423(n)-n-(n-1)`
-/

namespace A241718.P3179376898039014289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  8 * A222423 n - (n : ℤ) - ((n : ℤ) - 1)

end

end A241718.P3179376898039014289

/-! ## A241718.P11102654230718349243

`2*A222423(2*n)+2*n+1`
-/

namespace A241718.P11102654230718349243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A222423 (2 * n) + (2 * n + 1 : ℤ)

end

end A241718.P11102654230718349243

/-! ## A241718.P4082308948709506371

`A016921(∑[2*n]-(2*∑[and(n, -n)²]+n)/3)`
-/

namespace A241718.P4082308948709506371
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n : ℤ) (-(n : ℤ)) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016921 (SequenceMachineLib.roundAway (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) - ((2 * (∑ j ∈ Finset.range (n + 1), f2 j) + (n : ℤ) : ℤ) : ℚ) / 3)).toNat

end

end A241718.P4082308948709506371

/-!
# A241719: Number T(n,k) of compositions of n into distinct parts with exactly k descents; triangle T(n,k), n>=0, 0<=k<=max(floor((sqrt(1+8*n)-3)/2),0), read by rows.

The programs for A241719, there is no canonical definition to state claims against.
-/

/-! ## A241719.P9311446610905279850

`A180466(∑[∑[A180379(n+1)]])`
-/

namespace A241719.P9311446610905279850
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180379 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180466 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A241719.P9311446610905279850

/-! ## A241719.P2888537222141187998

`A001222(A001227(3*n+2)+A000105(n))`
-/

namespace A241719.P2888537222141187998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A001227 (3 * n + 2) + A000105 n).toNat

end

end A241719.P2888537222141187998

/-! ## A241719.P5838170276719646820

`A023416(A186408(n+1)%A008292(3*(n+1)))`
-/

namespace A241719.P5838170276719646820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023416 (Int.tmod (A186408 (n + 1)) (A008292 (3 * (n + 1)))).toNat

end

end A241719.P5838170276719646820

/-!
# A241724: Number of compositions of n into distinct parts with exactly five descents.

The programs for A241724, there is no canonical definition to state claims against.
-/

/-! ## A241724.P5602380514249137147

`A318816(A071521(n!))`
-/

namespace A241724.P5602380514249137147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318816 (A071521 (Nat.factorial n)).toNat

end

end A241724.P5602380514249137147

/-! ## A241724.P8724849316945033250

`A318816(A139748(n+1)+1)`
-/

namespace A241724.P8724849316945033250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318816 (A139748 (n + 1) + 1).toNat

end

end A241724.P8724849316945033250

/-! ## A241724.P15426530033007031838

`A002487(A334443(n+1)+n)`
-/

namespace A241724.P15426530033007031838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002487 (A334443 (n + 1) + (n : ℤ)).toNat

end

end A241724.P15426530033007031838

/-! ## A241724.P12138381312108211350

`a(n-2)+A001222(A006925(n)!)²+n-1` with `a(0)=1, a(1)=1`
-/

namespace A241724.P12138381312108211350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  a (n - 2) + (A001222 (Nat.factorial (A006925 n).toNat) ^ 2 + ((n : ℤ) - 1))

end

end A241724.P12138381312108211350

/-!
# A241725: Number of compositions of n into distinct parts with exactly six descents.

The programs for A241725, there is no canonical definition to state claims against.
-/

/-! ## A241725.P7199754805040366724

`A238867(C(A261762(n)-1, n)+n)`
-/

namespace A241725.P7199754805040366724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238867 (Nat.choose (A261762 n - 1).toNat n + n)

end

end A241725.P7199754805040366724

/-! ## A241725.P2391976873873695145

`A294889(A007853(n+1))+A000041(n)`
-/

namespace A241725.P2391976873873695145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294889 (A007853 (n + 1)).toNat + A000041 n

end

end A241725.P2391976873873695145

/-! ## A241725.P14154932186881155025

`A326459(A111288(n+1))+A000041(n)`
-/

namespace A241725.P14154932186881155025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326459 (A111288 (n + 1)).toNat + A000041 n

end

end A241725.P14154932186881155025

/-! ## A241725.P9693822588852788436

`A326459(A111288(n+1))+A238867(n)`
-/

namespace A241725.P9693822588852788436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326459 (A111288 (n + 1)).toNat + A238867 n

end

end A241725.P9693822588852788436

/-! ## A241725.P1306234510535830528

`A220699(A184964(2*n))+A000041(n)`
-/

namespace A241725.P1306234510535830528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220699 (A184964 (2 * n)).toNat + A000041 n

end

end A241725.P1306234510535830528

/-!
# A241726: Number of compositions of n into distinct parts with exactly seven descents.

The programs for A241726, there is no canonical definition to state claims against.
-/

/-! ## A241726.P15378424580454096234

`A027356(A121654(n)+1)+A000041(n)`
-/

namespace A241726.P15378424580454096234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027356 (A121654 n + 1).toNat + A000041 n

end

end A241726.P15378424580454096234

/-!
# A241730: Number of digits in the decimal expansion of n! minus the number of digits in the decimal expansion of n.

The programs for A241730, there is no canonical definition to state claims against.
-/

/-! ## A241730.P17902992492342041631

`A034886(n)-A055642(n)`
-/

namespace A241730.P17902992492342041631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034886 n - A055642 n

end

end A241730.P17902992492342041631

/-! ## A241730.P812483397286564639

`A034886(n)-dr(A348783(n))`
-/

namespace A241730.P812483397286564639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034886 n - (SequenceMachineLib.digitalRoot (A348783 n) : ℤ)

end

end A241730.P812483397286564639

/-! ## A241730.P13272772626995621447

`A034886(n)-A055640(A065031(n))`
-/

namespace A241730.P13272772626995621447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034886 n - A055640 (A065031 n).toNat

end

end A241730.P13272772626995621447

/-! ## A241730.P12578584451485638611

`A034886(n)-A055640(A139337(n))`
-/

namespace A241730.P12578584451485638611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034886 n - A055640 (A139337 n).toNat

end

end A241730.P12578584451485638611

/-! ## A241730.P9373221921169230233

`A008906(n)+A027868(n)-A055642(n)`
-/

namespace A241730.P9373221921169230233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008906 n + (A027868 n - A055642 n)

end

end A241730.P9373221921169230233

/-! ## A241730.P8032282330646583880

`A034886(n)+A008683(A067367(n+1))*A055642(n)`
-/

namespace A241730.P8032282330646583880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034886 n + A008683 (A067367 (n + 1)).toNat * A055642 n

end

end A241730.P8032282330646583880

/-! ## A241730.P1154345914601236444

`A034886(n)-A262190(A118759(n))`
-/

namespace A241730.P1154345914601236444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034886 n - A262190 (A118759 n).toNat

end

end A241730.P1154345914601236444

/-! ## A241730.P2786697141635557430

`A034886(n)-A004216(A109981(n+1))`
-/

namespace A241730.P2786697141635557430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034886 n - A004216 (A109981 (n + 1)).toNat

end

end A241730.P2786697141635557430

/-!
# A241732: Primes p such that p^3 + 2 and p^3 - 2 are semiprime.

The programs for A241732, there is no canonical definition to state claims against.
-/

/-! ## A241732.P11606148624538857035

`∩[A241659(n+1), A241716(n+1)]`
-/

namespace A241732.P11606148624538857035
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241659 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241716 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A241732.P11606148624538857035

/-! ## A241732.P8345728112643372702

`record[A020639(root(A275023(n+1), 3))]`
-/

namespace A241732.P8345728112643372702
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (SequenceMachineLib.roundAway ((A275023 (n + 1) : ℝ) ^ (1 / (3 : ℝ)))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A241732.P8345728112643372702

/-! ## A241732.P13061091451264886133

`record[A014963(root(A275023(n+1), 3))]`
-/

namespace A241732.P13061091451264886133
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (SequenceMachineLib.roundAway ((A275023 (n + 1) : ℝ) ^ (1 / (3 : ℝ)))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A241732.P13061091451264886133

/-! ## A241732.P2828005020920453838

`record[A214606(root(A275023(n+1), 3))]`
-/

namespace A241732.P2828005020920453838
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214606 (SequenceMachineLib.roundAway ((A275023 (n + 1) : ℝ) ^ (1 / (3 : ℝ)))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A241732.P2828005020920453838

/-!
# A241733: Number of partitions p of n such that round(mean(p)) is a part of p; here, round(x) means floor(x + 1/2).

The programs for A241733, there is no canonical definition to state claims against.
-/

/-! ## A241733.P15818768372860002743

`A000041(n)-A241734(n)`
-/

namespace A241733.P15818768372860002743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n - A241734 n

end

end A241733.P15818768372860002743

/-! ## A241733.P11334996695822418421

`A241335(n)+A241334(n)-A241734(n)`
-/

namespace A241733.P11334996695822418421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241335 n + A241334 n - A241734 n

end

end A241733.P11334996695822418421

/-! ## A241733.P18250961646680023558

`A241337(n)+A241336(n)-A241734(n)`
-/

namespace A241733.P18250961646680023558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241337 n + A241336 n - A241734 n

end

end A241733.P18250961646680023558

/-! ## A241733.P5798163930260584035

`A241339(n)+A241338(n)-A241734(n)`
-/

namespace A241733.P5798163930260584035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241339 n + A241338 n - A241734 n

end

end A241733.P5798163930260584035

/-! ## A241733.P9727903495600131358

`A178798(A327084(n+3))+A213598(n)-A241339(n)`
-/

namespace A241733.P9727903495600131358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178798 (A327084 (n + 3)).toNat + (A213598 n - A241339 n)

end

end A241733.P9727903495600131358

/-!
# A241734: Number of partitions p of n such that round(mean(p)) is not a part of p; here, round(x) means floor(x + 1/2).

The programs for A241734, there is no canonical definition to state claims against.
-/

/-! ## A241734.P7481853914297687690

`A000041(n)-A241733(n)`
-/

namespace A241734.P7481853914297687690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n - A241733 n

end

end A241734.P7481853914297687690

/-! ## A241734.P16258351053777678674

`A241735(n)+A241736(n)-A241733(n)`
-/

namespace A241734.P16258351053777678674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241735 n + (A241736 n - A241733 n)

end

end A241734.P16258351053777678674

/-! ## A241734.P18157090641153044904

`A241760(n)+A241761(n)-A241733(n)`
-/

namespace A241734.P18157090641153044904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241760 n + (A241761 n - A241733 n)

end

end A241734.P18157090641153044904

/-! ## A241734.P18392128653577528153

`A241828(n)+A241831(n)-A241733(n)`
-/

namespace A241734.P18392128653577528153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241828 n + (A241831 n - A241733 n)

end

end A241734.P18392128653577528153

/-! ## A241734.P7230973108376973706

`A241339(n)+A241338(n)-A241733(n)`
-/

namespace A241734.P7230973108376973706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241339 n + A241338 n - A241733 n

end

end A241734.P7230973108376973706

/-!
# A241735: Number of partitions p = [x(1), ..., x(k)], where x(1) >= x(2) >= ... >= x(k), of n such that max(x(i) - x(i-1)) is a part of p.

The programs for A241735, there is no canonical definition to state claims against.
-/

/-! ## A241735.P6525372284563584856

`A000041(n)-A241736(n)`
-/

namespace A241735.P6525372284563584856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n - A241736 n

end

end A241735.P6525372284563584856

/-! ## A241735.P12323507264883882057

`sqrt(A001255(n))-A241736(n)`
-/

namespace A241735.P12323507264883882057
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A001255 n : ℝ) - (A241736 n : ℝ)

end

end A241735.P12323507264883882057

/-! ## A241735.P278495217913626592

`∑[A002865(n)]-A241736(n)`
-/

namespace A241735.P278495217913626592
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002865 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A241736 n

end

end A241735.P278495217913626592

/-! ## A241735.P16301233156891997480

`A035363(2*n)-A241736(n)`
-/

namespace A241735.P16301233156891997480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035363 (2 * n) - A241736 n

end

end A241735.P16301233156891997480

/-! ## A241735.P13537325581721291578

`A241761(n)+A241760(n)-A241736(n)`
-/

namespace A241735.P13537325581721291578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241761 n + A241760 n - A241736 n

end

end A241735.P13537325581721291578

/-!
# A241736: Number of partitions p = [x(1), ..., x(k)], where x(1) >= x(2) >= ... >= x(k), of n such that max(x(i) - x(i-1)) is not a part of p.

The programs for A241736, there is no canonical definition to state claims against.
-/

/-! ## A241736.P2702290416011472287

`A000041(n)-A241735(n)`
-/

namespace A241736.P2702290416011472287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n - A241735 n

end

end A241736.P2702290416011472287

/-! ## A241736.P16019171802673475569

`sqrt(A001255(n))-A241735(n)`
-/

namespace A241736.P16019171802673475569
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A001255 n : ℝ) - (A241735 n : ℝ)

end

end A241736.P16019171802673475569

/-! ## A241736.P2396869906442129712

`∑[A002865(n)]-A241735(n)`
-/

namespace A241736.P2396869906442129712
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002865 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A241735 n

end

end A241736.P2396869906442129712

/-! ## A241736.P10345835736439430857

`A054225(∑[n])-A241735(n)`
-/

namespace A241736.P10345835736439430857
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054225 (∑ j ∈ Finset.range (n + 1), f1 j) - A241735 n

end

end A241736.P10345835736439430857

/-! ## A241736.P6092089204576333346

`A241761(n)+A241760(n)-A241735(n)`
-/

namespace A241736.P6092089204576333346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241761 n + A241760 n - A241735 n

end

end A241736.P6092089204576333346

/-!
# A241737: Number of partitions p of n such that (number of numbers in p of form 3k+1) < (number of numbers in p of form 3k+2).

The programs for A241737, there is no canonical definition to state claims against.
-/

/-! ## A241737.P3813962622084727982

`A000041(n)-(A241739(n)+A241738(n))`
-/

namespace A241737.P3813962622084727982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n - (A241739 n + A241738 n)

end

end A241737.P3813962622084727982

/-!
# A241738: Number of partitions p of n such that (number of numbers in p of form 3k+1) = (number of numbers in p of form 3k+2).

The programs for A241738, there is no canonical definition to state claims against.
-/

/-! ## A241738.P7656091869474953673

`A000041(n)-(A241739(n)+A241737(n))`
-/

namespace A241738.P7656091869474953673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n - (A241739 n + A241737 n)

end

end A241738.P7656091869474953673

/-! ## A241738.P14066027514306303943

`A119620(2*n)-(A241739(n)+A241737(n))`
-/

namespace A241738.P14066027514306303943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119620 (2 * n) - (A241739 n + A241737 n)

end

end A241738.P14066027514306303943

/-! ## A241738.P16511174893525173161

`A324325(A008578(n+1))-(A241739(n)+A241737(n))`
-/

namespace A241738.P16511174893525173161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324325 (A008578 (n + 1)).toNat - (A241739 n + A241737 n)

end

end A241738.P16511174893525173161

/-!
# A241739: Number of partitions p of n such that (number of numbers in p of form 3k+1) > (number of numbers in p of form 3k+2).

The programs for A241739, there is no canonical definition to state claims against.
-/

/-! ## A241739.P5038298153602855074

`A000041(n)-(A241738(n)+A241737(n))`
-/

namespace A241739.P5038298153602855074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n - (A241738 n + A241737 n)

end

end A241739.P5038298153602855074

/-!
# A241740: Number of partitions p of n such that (number of numbers in p of form 3k+2) < (number of numbers in p of form 3k).

The programs for A241740, there is no canonical definition to state claims against.
-/

/-! ## A241740.P10980261636084808849

`A000041(n)-(A241742(n)+A241741(n))`
-/

namespace A241740.P10980261636084808849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n - (A241742 n + A241741 n)

end

end A241740.P10980261636084808849

/-! ## A241740.P2025686782558900425

`∑[A002865(n)]-(A241742(n)+A241741(n))`
-/

namespace A241740.P2025686782558900425
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002865 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (A241742 n + A241741 n)

end

end A241740.P2025686782558900425

/-! ## A241740.P372880353182586735

`A000065(n)+1-(A241742(n)+A241741(n))`
-/

namespace A241740.P372880353182586735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000065 n + 1 - (A241742 n + A241741 n)

end

end A241740.P372880353182586735

/-!
# A241741: Number of partitions p of n such that (number of numbers in p of form 3k+2) = (number of numbers in p of form 3k).

The programs for A241741, there is no canonical definition to state claims against.
-/

/-! ## A241741.P2234601937314346296

`A000041(n)-(A241742(n)+A241740(n))`
-/

namespace A241741.P2234601937314346296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n - (A241742 n + A241740 n)

end

end A241741.P2234601937314346296

/-! ## A241741.P9819028273757937286

`sqrt(A001255(n))-(A241742(n)+A241740(n))`
-/

namespace A241741.P9819028273757937286
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A001255 n : ℝ) - (A241742 n + A241740 n : ℝ)

end

end A241741.P9819028273757937286

/-! ## A241741.P10831965565305923063

`∑[A002865(n)]-(A241742(n)+A241740(n))`
-/

namespace A241741.P10831965565305923063
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002865 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (A241742 n + A241740 n)

end

end A241741.P10831965565305923063

/-!
# A241742: Number of partitions p of n such that (number of numbers in p of form 3k+2) > (number of numbers in p of form 3k).

The programs for A241742, there is no canonical definition to state claims against.
-/

/-! ## A241742.P10538844995438793949

`A000041(n)-(A241741(n)+A241740(n))`
-/

namespace A241742.P10538844995438793949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n - (A241741 n + A241740 n)

end

end A241742.P10538844995438793949

/-! ## A241742.P5005378656855400256

`sqrt(A001255(n))-(A241741(n)+A241740(n))`
-/

namespace A241742.P5005378656855400256
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A001255 n : ℝ) - (A241741 n + A241740 n : ℝ)

end

end A241742.P5005378656855400256

/-! ## A241742.P16224704209909252148

`∑[A002865(n)]-(A241741(n)+A241740(n))`
-/

namespace A241742.P16224704209909252148
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002865 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (A241741 n + A241740 n)

end

end A241742.P16224704209909252148

/-! ## A241742.P10510807423918873572

`A035363(2*n)-(A241741(n)+A241740(n))`
-/

namespace A241742.P10510807423918873572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035363 (2 * n) - (A241741 n + A241740 n)

end

end A241742.P10510807423918873572

/-! ## A241742.P8226917354280054495

`∑[A085811(n+3)]-(A241741(n)+A241740(n))`
-/

namespace A241742.P8226917354280054495
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085811 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (A241741 n + A241740 n)

end

end A241742.P8226917354280054495

/-!
# A241743: Number of partitions p of n such that (number of numbers in p of form 3k) < (number of numbers in p of form 3k+1).

The programs for A241743, there is no canonical definition to state claims against.
-/

/-! ## A241743.P10925690052651766396

`A000041(n)-(A241745(n)+A241744(n))`
-/

namespace A241743.P10925690052651766396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n - (A241745 n + A241744 n)

end

end A241743.P10925690052651766396

/-!
# A241744: Number of partitions p of n such that (number of numbers in p of form 3k) = (number of numbers in p of form 3k+1).

The programs for A241744, there is no canonical definition to state claims against.
-/

/-! ## A241744.P9480974763642970703

`A000041(n)-(A241745(n)+A241743(n))`
-/

namespace A241744.P9480974763642970703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n - (A241745 n + A241743 n)

end

end A241744.P9480974763642970703

/-! ## A241744.P2981664482902948650

`sqrt(A001255(n))-(A241745(n)+A241743(n))`
-/

namespace A241744.P2981664482902948650
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A001255 n : ℝ) - (A241745 n + A241743 n : ℝ)

end

end A241744.P2981664482902948650

/-! ## A241744.P16980646484049693872

`∑[A002865(n)]-(A241745(n)+A241743(n))`
-/

namespace A241744.P16980646484049693872
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002865 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (A241745 n + A241743 n)

end

end A241744.P16980646484049693872

/-! ## A241744.P4088170870350378844

`A000065(n)+1-(A241745(n)+A241743(n))`
-/

namespace A241744.P4088170870350378844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000065 n + 1 - (A241745 n + A241743 n)

end

end A241744.P4088170870350378844

/-! ## A241744.P1509483962122969509

`A035363(2*n)-(A241745(n)+A241743(n))`
-/

namespace A241744.P1509483962122969509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035363 (2 * n) - (A241745 n + A241743 n)

end

end A241744.P1509483962122969509

/-! ## A241744.P17640124422935909382

`A100824(2*n)-(A241745(n)+A241743(n))`
-/

namespace A241744.P17640124422935909382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100824 (2 * n) - (A241745 n + A241743 n)

end

end A241744.P17640124422935909382

/-!
# A241745: Number of partitions p of n such that (number of numbers in p of form 3k) > (number of numbers in p of form 3k+1).

The programs for A241745, there is no canonical definition to state claims against.
-/

/-! ## A241745.P7106143147792508846

`A000041(n)-(A241744(n)+A241743(n))`
-/

namespace A241745.P7106143147792508846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n - (A241744 n + A241743 n)

end

end A241745.P7106143147792508846

/-!
# A241746: Smallest number greater than n that CANNOT be scored using n darts on a standard dartboard.

The programs for A241746, the canonical program `A241746.P17674363808094761550` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A241746 has offset 1).

The definition of A241746 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A241746.P17674363808094761550

`ogf((23+57x-20x^2)/(1-2x+x^2))`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A241746

/-- `ogf((23+57x-20x^2)/(1-2x+x^2))` -/
def P17674363808094761550.Spec : Prop :=
  ∀ n, P17674363808094761550.a n = A241746 (n + 1)

theorem P17674363808094761550.correct : P17674363808094761550.Spec := by
  intro n
  simp only [A241746, Nat.add_sub_cancel]

end A241746

/-!
# A241747: Triangle read by rows: T(n,k) = (4*n+3)*(4*k+3).

The programs for A241747, the canonical program `A241747.P7761266978890049769` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A241747 has offset 0).

The definition of A241747 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(4*row(n)+3)*(4*col(n)+3)` (program `A241747.P7761266978890049769`, by `A241747.P7761266978890049769.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A241747.P7761266978890049769

`(4*row(n)+3)*(4*col(n)+3)`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A241747

/-- `(4*row(n)+3)*(4*col(n)+3)` -/
def P7761266978890049769.Spec : Prop :=
  ∀ n, (P7761266978890049769.a n : ℤ) = A241747 n

theorem P7761266978890049769.correct : P7761266978890049769.Spec := by
  intro n
  simp only [A241747]

end A241747

/-! ## A241747.P2346565615404663618

`4*(A143218(n+1)+A094727(n+1))+1`
-/

namespace A241747.P2346565615404663618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * (A143218 (n + 1) + A094727 (n + 1)) + 1

end

end A241747.P2346565615404663618

namespace A241747

/-- `4*(A143218(n+1)+A094727(n+1))+1` -/
def P2346565615404663618.Spec : Prop :=
  ∀ n, P2346565615404663618.a n = A241747 n

theorem P2346565615404663618.correct : P2346565615404663618.Spec := by
  intro n
  simp only [A241747, Nat.add_sub_cancel, A241747.P2346565615404663618.a, A241747.P7761266978890049769.a, A094727, A094727.P1041695477673985807.a, A143218, A143218.P4477130466891666479.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A241747

/-! ## A241747.P7844881671828491409

`A004767(A002262(n))*A004767(A003056(n))`
-/

namespace A241747.P7844881671828491409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004767 (A002262 n).toNat * A004767 (A003056 n).toNat

end

end A241747.P7844881671828491409

namespace A241747

/-- `A004767(A002262(n))*A004767(A003056(n))` -/
def P7844881671828491409.Spec : Prop :=
  ∀ n, P7844881671828491409.a n = A241747 n

end A241747

/-! ## A241747.P16771352732917848202

`A005408(A158405(n+1))*A005408(A131507(n))`
-/

namespace A241747.P16771352732917848202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 (A158405 (n + 1)).toNat * A005408 (A131507 n).toNat

end

end A241747.P16771352732917848202

namespace A241747

/-- `A005408(A158405(n+1))*A005408(A131507(n))` -/
def P16771352732917848202.Spec : Prop :=
  ∀ n, P16771352732917848202.a n = A241747 n

end A241747

/-! ## A241747.P14085762050413714909

`A004273(A111650(n+1))*A005408(A158405(n+1))`
-/

namespace A241747.P14085762050413714909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (A111650 (n + 1)).toNat * A005408 (A158405 (n + 1)).toNat

end

end A241747.P14085762050413714909

namespace A241747

/-- `A004273(A111650(n+1))*A005408(A158405(n+1))` -/
def P14085762050413714909.Spec : Prop :=
  ∀ n, P14085762050413714909.a n = A241747 n

end A241747

/-! ## A241747.P11661042005856200187

`2*A151890(A185869(n+1))+1`
-/

namespace A241747.P11661042005856200187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A151890 (A185869 (n + 1)).toNat + 1

end

end A241747.P11661042005856200187

namespace A241747

/-- `2*A151890(A185869(n+1))+1` -/
def P11661042005856200187.Spec : Prop :=
  ∀ n, P11661042005856200187.a n = A241747 n

end A241747

/-! ## A241747.P385276137495138328

`A172292(A185868(n+1))`
-/

namespace A241747.P385276137495138328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172292 (A185868 (n + 1)).toNat

end

end A241747.P385276137495138328

namespace A241747

/-- `A172292(A185868(n+1))` -/
def P385276137495138328.Spec : Prop :=
  ∀ n, P385276137495138328.a n = A241747 n

end A241747

/-! ## A241747.P1406843716327225846

`A143218(A185870(n+1))`
-/

namespace A241747.P1406843716327225846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143218 (A185870 (n + 1)).toNat

end

end A241747.P1406843716327225846

namespace A241747

/-- `A143218(A185870(n+1))` -/
def P1406843716327225846.Spec : Prop :=
  ∀ n, P1406843716327225846.a n = A241747 n

end A241747

/-! ## A241747.P17666388826875589753

`A016813(A143218(n+1)+A094727(n+1))`
-/

namespace A241747.P17666388826875589753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016813 (A143218 (n + 1) + A094727 (n + 1)).toNat

end

end A241747.P17666388826875589753

namespace A241747

/-- `A016813(A143218(n+1)+A094727(n+1))` -/
def P17666388826875589753.Spec : Prop :=
  ∀ n, P17666388826875589753.a n = A241747 n

end A241747

/-! ## A241747.P10467238322426237021

`filter[A075362(2*(n+1)), A373978(#)]`
-/

namespace A241747.P10467238322426237021
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075362 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373978 (f1 j).toNat = 1) n)

end

end A241747.P10467238322426237021

namespace A241747

/-- `filter[A075362(2*(n+1)), A373978(#)]` -/
def P10467238322426237021.Spec : Prop :=
  ∀ n, P10467238322426237021.a n = A241747 n

end A241747

/-! ## A241747.P11434452645728877824

`A005408(A151890(A185869(n+1)))`
-/

namespace A241747.P11434452645728877824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 (A151890 (A185869 (n + 1)).toNat).toNat

end

end A241747.P11434452645728877824

namespace A241747

/-- `A005408(A151890(A185869(n+1)))` -/
def P11434452645728877824.Spec : Prop :=
  ∀ n, P11434452645728877824.a n = A241747 n

end A241747

/-! ## A241747.P4634259891927636033

`filter[A127735(2*(n+1)), A373978(#)]`
-/

namespace A241747.P4634259891927636033
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127735 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373978 (f1 j).toNat = 1) n)

end

end A241747.P4634259891927636033

namespace A241747

/-- `filter[A127735(2*(n+1)), A373978(#)]` -/
def P4634259891927636033.Spec : Prop :=
  ∀ n, P4634259891927636033.a n = A241747 n

end A241747

/-! ## A241747.P14121631148478505887

`filter[A218036(2*n+1), A373978(#)]`
-/

namespace A241747.P14121631148478505887
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218036 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373978 (f1 j).toNat = 1) n)

end

end A241747.P14121631148478505887

namespace A241747

/-- `filter[A218036(2*n+1), A373978(#)]` -/
def P14121631148478505887.Spec : Prop :=
  ∀ n, P14121631148478505887.a n = A241747 n

end A241747

/-!
# A241748: a(n) = n^2 + 12.

The programs for A241748, the canonical program `A241748.P16440024712766360971` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A241748 has offset 0).

The definition of A241748 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n²+12` (program `A241748.P16440024712766360971`, by `A241748.P16440024712766360971.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A241748.P16440024712766360971

`n²+12`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A241748

/-- `n²+12` -/
def P16440024712766360971.Spec : Prop :=
  ∀ n, (P16440024712766360971.a n : ℤ) = A241748 n

theorem P16440024712766360971.correct : P16440024712766360971.Spec := by
  intro n
  simp only [A241748]

end A241748

/-!
# A241749: a(n) = n^2 + 13.

The programs for A241749, the canonical program `A241749.P16244220396534045988` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A241749 has offset 0).

The definition of A241749 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n²+13` (program `A241749.P16244220396534045988`, by `A241749.P16244220396534045988.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A241749.P16244220396534045988

`n²+13`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A241749

/-- `n²+13` -/
def P16244220396534045988.Spec : Prop :=
  ∀ n, (P16244220396534045988.a n : ℤ) = A241749 n

theorem P16244220396534045988.correct : P16244220396534045988.Spec := by
  intro n
  simp only [A241749]

end A241749

/-!
# A241750: a(n) = n^2 + 15.

The programs for A241750, the canonical program `A241750.P13027902610625093173` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A241750 has offset 0).

The definition of A241750 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n²+15` (program `A241750.P13027902610625093173`, by `A241750.P13027902610625093173.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A241750.P13027902610625093173

`n²+15`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A241750

/-- `n²+15` -/
def P13027902610625093173.Spec : Prop :=
  ∀ n, (P13027902610625093173.a n : ℤ) = A241750 n

theorem P13027902610625093173.correct : P13027902610625093173.Spec := by
  intro n
  simp only [A241750]

end A241750

/-!
# A241751: a(n) = n^2 + 16.

The programs for A241751, the canonical program `A241751.P7792988430586457364` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A241751 has offset 0).

The definition of A241751 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n²+16` (program `A241751.P7792988430586457364`, by `A241751.P7792988430586457364.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A241751.P7792988430586457364

`n²+16`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A241751

/-- `n²+16` -/
def P7792988430586457364.Spec : Prop :=
  ∀ n, (P7792988430586457364.a n : ℤ) = A241751 n

theorem P7792988430586457364.correct : P7792988430586457364.Spec := by
  intro n
  simp only [A241751]

end A241751

/-!
# A241752: Smallest number m such that A229037(m) = n.

The programs for A241752, there is no canonical definition to state claims against.
-/

/-! ## A241752.P13965097507670293554

`A248627(n)+1`
-/

namespace A241752.P13965097507670293554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248627 n + 1

end

end A241752.P13965097507670293554

/-! ## A241752.P14235986587227695620

`A008619(2*A248627(n))`
-/

namespace A241752.P14235986587227695620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (2 * A248627 n).toNat

end

end A241752.P14235986587227695620

/-! ## A241752.P7937808517241353564

`A027656(2*A248627(n))`
-/

namespace A241752.P7937808517241353564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027656 (2 * A248627 n).toNat

end

end A241752.P7937808517241353564

/-! ## A241752.P18033082655217546604

`A028242(2*A248627(n))`
-/

namespace A241752.P18033082655217546604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028242 (2 * A248627 n).toNat

end

end A241752.P18033082655217546604

/-! ## A241752.P570812979089190845

`A029579(2*A248627(n))`
-/

namespace A241752.P570812979089190845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029579 (2 * A248627 n).toNat

end

end A241752.P570812979089190845

/-! ## A241752.P470618093851991213

`A052938(2*A248627(n))`
-/

namespace A241752.P470618093851991213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052938 (2 * A248627 n).toNat

end

end A241752.P470618093851991213

/-! ## A241752.P2917921311520352335

`A008611(3*A248627(n))`
-/

namespace A241752.P2917921311520352335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008611 (3 * A248627 n).toNat

end

end A241752.P2917921311520352335

/-! ## A241752.P8593906672832792180

`A008620(3*A248627(n))`
-/

namespace A241752.P8593906672832792180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008620 (3 * A248627 n).toNat

end

end A241752.P8593906672832792180

/-! ## A241752.P14843482539654419394

`A008621(4*A248627(n))`
-/

namespace A241752.P14843482539654419394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008621 (4 * A248627 n).toNat

end

end A241752.P14843482539654419394

/-! ## A241752.P3652783708286587156

`A008612(6*A248627(n))`
-/

namespace A241752.P3652783708286587156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008612 (6 * A248627 n).toNat

end

end A241752.P3652783708286587156

/-!
# A241755: A finite sum of products of binomial coefficients: Sum_(m=0..n) binomial(-1/4, m)^2*binomial(-1/4, n-m)^2 (C. C. Grosjean's problem, numerators).

The programs for A241755, there is no canonical definition to state claims against.
-/

/-! ## A241755.P15002836859912998954

`gcd(C(2*n, n), ∏[1-2*n])^3`
-/

namespace A241755.P15002836859912998954
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (2 * n : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (Nat.choose (2 * n) n : ℤ) (∏ j ∈ Finset.range (n + 1), f1 j) ^ 3

end

end A241755.P15002836859912998954

/-! ## A241755.P18098815463938970990

`A001790(n)^3`
-/

namespace A241755.P18098815463938970990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001790 n ^ 3

end

end A241755.P18098815463938970990

/-! ## A241755.P6668197339146767501

`A180955(∑[n])^3`
-/

namespace A241755.P6668197339146767501
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180955 (∑ j ∈ Finset.range (n + 1), f1 j) ^ 3

end

end A241755.P6668197339146767501

/-! ## A241755.P10936465791075334696

`A273167(∑[n])^3`
-/

namespace A241755.P10936465791075334696
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273167 (∑ j ∈ Finset.range (n + 1), f1 j) ^ 3

end

end A241755.P10936465791075334696

/-! ## A241755.P15358302049558006924

`A273169(∑[n])^3`
-/

namespace A241755.P15358302049558006924
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273169 (∑ j ∈ Finset.range (n + 1), f1 j) ^ 3

end

end A241755.P15358302049558006924

/-! ## A241755.P2738067461489346959

`A036069(2*n)^3`
-/

namespace A241755.P2738067461489346959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036069 (2 * n) ^ 3

end

end A241755.P2738067461489346959

/-! ## A241755.P8288363224049899829

`A163590(2*n)^3`
-/

namespace A241755.P8288363224049899829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163590 (2 * n) ^ 3

end

end A241755.P8288363224049899829

/-! ## A241755.P6298574650954922790

`A380910(2*n)^3`
-/

namespace A241755.P6298574650954922790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380910 (2 * n) ^ 3

end

end A241755.P6298574650954922790

/-! ## A241755.P18313009215620070770

`A001790(n)*A038534(n)`
-/

namespace A241755.P18313009215620070770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001790 n * A038534 n

end

end A241755.P18313009215620070770

/-! ## A241755.P11734072590259252105

`A038534(n)*A380910(2*n)`
-/

namespace A241755.P11734072590259252105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038534 n * A380910 (2 * n)

end

end A241755.P11734072590259252105

/-!
# A241756: A finite sum of products of binomial coefficients: Sum_(m=0..n) binomial(-1/4, m)^2*binomial(-1/4, n-m)^2 (C. C. Grosjean's problem, denominators).

The programs for A241756, there is no canonical definition to state claims against.
-/

/-! ## A241756.P13264837696666175705

`8^(val(n!, 2)+n)`
-/

namespace A241756.P13264837696666175705
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8 ^ (SequenceMachineLib.valuation (Nat.factorial n) 2 + n)

end

end A241756.P13264837696666175705

/-! ## A241756.P4462716772157570160

`8^∑[∑{e}[xor(n, -n), #]]`
-/

namespace A241756.P4462716772157570160
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) (-(n : ℤ))

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f2 n).natAbs, Nat.factorization (f2 n).natAbs p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8 ^ (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A241756.P4462716772157570160

/-! ## A241756.P7607267951109859101

`8^n*a(floor(n/2))` with `a(0)=1`
-/

namespace A241756.P7607267951109859101
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  8 ^ n * a ⌊(n : ℚ) / 2⌋.toNat

end

end A241756.P7607267951109859101

/-! ## A241756.P927693563386197169

`∏[gcd(2*n, 2^n)^3]`
-/

namespace A241756.P927693563386197169
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd (2 * n) (2 ^ n) ^ 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A241756.P927693563386197169

/-! ## A241756.P11685754956560623682

`A046161(n)^3`
-/

namespace A241756.P11685754956560623682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046161 n ^ 3

end

end A241756.P11685754956560623682

/-! ## A241756.P681693053230726805

`8^A005187(n)`
-/

namespace A241756.P681693053230726805
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (8 : ℚ) ^ (A005187 n : ℤ)

end

end A241756.P681693053230726805

/-! ## A241756.P14179154665492003248

`A144816(∑[n])^3`
-/

namespace A241756.P14179154665492003248
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144816 (∑ j ∈ Finset.range (n + 1), f1 j) ^ 3

end

end A241756.P14179154665492003248

/-! ## A241756.P17520652673180847064

`A180956(∑[n])^3`
-/

namespace A241756.P17520652673180847064
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180956 (∑ j ∈ Finset.range (n + 1), f1 j) ^ 3

end

end A241756.P17520652673180847064

/-! ## A241756.P1017681879616862626

`A273168(∑[n])^3`
-/

namespace A241756.P1017681879616862626
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273168 (∑ j ∈ Finset.range (n + 1), f1 j) ^ 3

end

end A241756.P1017681879616862626

/-! ## A241756.P16361674902430061012

`A273170(∑[n])^3`
-/

namespace A241756.P16361674902430061012
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273170 (∑ j ∈ Finset.range (n + 1), f1 j) ^ 3

end

end A241756.P16361674902430061012

/-!
# A241757: Numbers n such that 2n is a sum of two primes, the adding of which requires only one carry in binary.

The programs for A241757, there is no canonical definition to state claims against.
-/

/-! ## A241757.P8209161972666041160

`eq[1, A241856(n+2)]+2`
-/

namespace A241757.P8209161972666041160
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241856 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2

end

end A241757.P8209161972666041160

/-! ## A241757.P1700640604905841688

`lt[A241856(n+2), A000005(A045436(n+1))]+2`
-/

namespace A241757.P1700640604905841688
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241856 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A045436 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 2

end

end A241757.P1700640604905841688

/-!
# A241759: Number of partitions of n into distinct parts of the form 3^k - 2^k, cf. A001047.

The programs for A241759, the canonical program `A241759.P1551437819905614216` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A241759 has offset 0).

The definition of A241759 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A241759.P1578002256423384095

`char[3*a(floor(n/2))+n]` with `a(0)=0`
-/

namespace A241759.P1578002256423384095
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0] fun n f1 =>
  3 * f1 ⌊(n : ℚ) / 2⌋.toNat + n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A241759.P1578002256423384095

namespace A241759

/-- `char[3*a(floor(n/2))+n]` -/
def P1578002256423384095.Spec : Prop :=
  ∀ n, (P1578002256423384095.a n : ℤ) = A241759 n

end A241759

/-! ## A241759.P11463764476711067098

`char[A240400(n+1)]`
-/

namespace A241759.P11463764476711067098
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240400 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A241759.P11463764476711067098

namespace A241759

/-- `char[A240400(n+1)]` -/
def P11463764476711067098.Spec : Prop :=
  ∀ n, (P11463764476711067098.a n : ℤ) = A241759 n

end A241759

/-! ## A241759.P11182301324985549638

`char[record[A117966(n)]-n]`
-/

namespace A241759.P11182301324985549638
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117966 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n) - (n : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A241759.P11182301324985549638

namespace A241759

/-- `char[record[A117966(n)]-n]` -/
def P11182301324985549638.Spec : Prop :=
  ∀ n, (P11182301324985549638.a n : ℤ) = A241759 n

end A241759

/-! ## A241759.P15563099563477893896

`1-char[A241783(n+1)]`
-/

namespace A241759.P15563099563477893896
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241783 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A241759.P15563099563477893896

namespace A241759

/-- `1-char[A241783(n+1)]` -/
def P15563099563477893896.Spec : Prop :=
  ∀ n, P15563099563477893896.a n = A241759 n

end A241759

/-! ## A241759.P10360441433410620562

`char[A005836(n+1)-n]`
-/

namespace A241759.P10360441433410620562
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005836 (n + 1) - (n : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A241759.P10360441433410620562

namespace A241759

/-- `char[A005836(n+1)-n]` -/
def P10360441433410620562.Spec : Prop :=
  ∀ n, (P10360441433410620562.a n : ℤ) = A241759 n

end A241759

/-! ## A241759.P7547290275259557707

`char[∑[A236313(n+1)-1]]`
-/

namespace A241759.P7547290275259557707
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236313 (n + 1) - 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A241759.P7547290275259557707

namespace A241759

/-- `char[∑[A236313(n+1)-1]]` -/
def P7547290275259557707.Spec : Prop :=
  ∀ n, (P7547290275259557707.a n : ℤ) = A241759 n

end A241759

/-! ## A241759.P9365389285394943498

`char[A003278(n+1)-(n+1)]`
-/

namespace A241759.P9365389285394943498
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003278 (n + 1) - (n + 1 : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A241759.P9365389285394943498

namespace A241759

/-- `char[A003278(n+1)-(n+1)]` -/
def P9365389285394943498.Spec : Prop :=
  ∀ n, (P9365389285394943498.a n : ℤ) = A241759 n

end A241759

/-! ## A241759.P12586583321444073002

`char[A033162(n+1)-(n+3)]`
-/

namespace A241759.P12586583321444073002
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033162 (n + 1) - (n + 3 : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A241759.P12586583321444073002

namespace A241759

/-- `char[A033162(n+1)-(n+3)]` -/
def P12586583321444073002.Spec : Prop :=
  ∀ n, (P12586583321444073002.a n : ℤ) = A241759 n

end A241759

/-! ## A241759.P1551437819905614216

`1-A189820(A074940(n+1))`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A241759

/-- `1-A189820(A074940(n+1))` -/
def P1551437819905614216.Spec : Prop :=
  ∀ n, P1551437819905614216.a n = A241759 n

theorem P1551437819905614216.correct : P1551437819905614216.Spec := by
  intro n
  simp only [A241759]

end A241759

/-! ## A241759.P2840964181732263849

`char[A004488(record[A004488(n)])-n]`
-/

namespace A241759.P2840964181732263849
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004488 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004488 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat - (n : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A241759.P2840964181732263849

namespace A241759

/-- `char[A004488(record[A004488(n)])-n]` -/
def P2840964181732263849.Spec : Prop :=
  ∀ n, (P2840964181732263849.a n : ℤ) = A241759 n

end A241759

/-! ## A241759.P10763793746664901390

`A001221(Δ[comp[A005836(n+2)]])`
-/

namespace A241759.P10763793746664901390
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005836 (n + 2)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A241759.P10763793746664901390

namespace A241759

/-- `A001221(Δ[comp[A005836(n+2)]])` -/
def P10763793746664901390.Spec : Prop :=
  ∀ n, P10763793746664901390.a n = A241759 n

end A241759

/-! ## A241759.P7360523694565925664

`A001222(Δ[comp[A005836(n+2)]])`
-/

namespace A241759.P7360523694565925664
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005836 (n + 2)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A241759.P7360523694565925664

namespace A241759

/-- `A001222(Δ[comp[A005836(n+2)]])` -/
def P7360523694565925664.Spec : Prop :=
  ∀ n, P7360523694565925664.a n = A241759 n

end A241759

/-! ## A241759.P17139278066327780255

`A039966(A107756(n+1))`
-/

namespace A241759.P17139278066327780255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039966 (A107756 (n + 1)).toNat

end

end A241759.P17139278066327780255

namespace A241759

/-- `A039966(A107756(n+1))` -/
def P17139278066327780255.Spec : Prop :=
  ∀ n, P17139278066327780255.a n = A241759 n

end A241759

/-! ## A241759.P5194036188649582611

`A039966(A074940(n+1)-1)`
-/

namespace A241759.P5194036188649582611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039966 (A074940 (n + 1) - 1).toNat

end

end A241759.P5194036188649582611

namespace A241759

/-- `A039966(A074940(n+1)-1)` -/
def P5194036188649582611.Spec : Prop :=
  ∀ n, P5194036188649582611.a n = A241759 n

end A241759

/-! ## A241759.P17975935997470276458

`char[A081610(A005836(n+1))]`
-/

namespace A241759.P17975935997470276458
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081610 (A005836 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A241759.P17975935997470276458

namespace A241759

/-- `char[A081610(A005836(n+1))]` -/
def P17975935997470276458.Spec : Prop :=
  ∀ n, (P17975935997470276458.a n : ℤ) = A241759 n

end A241759

/-! ## A241759.P16279013308737511013

`char[A081610(A191107(n+1))]`
-/

namespace A241759.P16279013308737511013
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081610 (A191107 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A241759.P16279013308737511013

namespace A241759

/-- `char[A081610(A191107(n+1))]` -/
def P16279013308737511013.Spec : Prop :=
  ∀ n, (P16279013308737511013.a n : ℤ) = A241759 n

end A241759

/-!
# A241760: Number of partitions p = [x(1), ..., x(k)], where x(1) >= x(2) >= ... >= x(k), of n such that min(x(i) - x(i-1)) is a part of p.

The programs for A241760, there is no canonical definition to state claims against.
-/

/-! ## A241760.P4976754783432273932

`A000041(n)-A241761(n)`
-/

namespace A241760.P4976754783432273932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n - A241761 n

end

end A241760.P4976754783432273932

/-! ## A241760.P11916444348705458151

`sqrt(A001255(n))-A241761(n)`
-/

namespace A241760.P11916444348705458151
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A001255 n : ℝ) - (A241761 n : ℝ)

end

end A241760.P11916444348705458151

/-! ## A241760.P4501566961791939261

`∑[A002865(n)]-A241761(n)`
-/

namespace A241760.P4501566961791939261
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002865 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A241761 n

end

end A241760.P4501566961791939261

/-! ## A241760.P1300679906696582811

`A000065(n)+1-A241761(n)`
-/

namespace A241760.P1300679906696582811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000065 n + (1 - A241761 n)

end

end A241760.P1300679906696582811

/-! ## A241760.P11368269630397370712

`A241736(n)+A241735(n)-A241761(n)`
-/

namespace A241760.P11368269630397370712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241736 n + A241735 n - A241761 n

end

end A241760.P11368269630397370712

/-!
# A241761: Number of partitions p = [x(1), ..., x(k)], where x(1) >= x(2) >= ... >= x(k), of n such that min(x(i) - x(i-1)) is not a part of p.

The programs for A241761, there is no canonical definition to state claims against.
-/

/-! ## A241761.P15254999820868242869

`A000041(n)-A241760(n)`
-/

namespace A241761.P15254999820868242869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n - A241760 n

end

end A241761.P15254999820868242869

/-! ## A241761.P8922377730154873426

`sqrt(A001255(n))-A241760(n)`
-/

namespace A241761.P8922377730154873426
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A001255 n : ℝ) - (A241760 n : ℝ)

end

end A241761.P8922377730154873426

/-! ## A241761.P8114863852099161904

`∑[A002865(n)]-A241760(n)`
-/

namespace A241761.P8114863852099161904
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002865 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A241760 n

end

end A241761.P8114863852099161904

/-! ## A241761.P3606020122640751394

`A000065(n)+1-A241760(n)`
-/

namespace A241761.P3606020122640751394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000065 n + (1 - A241760 n)

end

end A241761.P3606020122640751394

/-! ## A241761.P18186927454764517128

`A241736(n)+A241735(n)-A241760(n)`
-/

namespace A241761.P18186927454764517128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241736 n + A241735 n - A241760 n

end

end A241761.P18186927454764517128

/-!
# A241762: a(n) is the least number k > 0 such that sigma(k/n) = phi(k).

The programs for A241762, there is no canonical definition to state claims against.
-/

/-! ## A241762.P2255023371971324562

`(n+1)*A256527(n+1)`
-/

namespace A241762.P2255023371971324562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A256527 (n + 1)

end

end A241762.P2255023371971324562

/-! ## A241762.P453202868314107056

`A087979(n+1)%(29-A150076(n))*(n+1)`
-/

namespace A241762.P453202868314107056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A087979 (n + 1)) (29 - A150076 n) * (n + 1 : ℤ)

end

end A241762.P453202868314107056

/-! ## A241762.P12927798405695950355

`(n+1)*A087979(n+1)%A264443(A089408(n))`
-/

namespace A241762.P12927798405695950355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * Int.tmod (A087979 (n + 1)) (A264443 (A089408 n).toNat)

end

end A241762.P12927798405695950355

/-!
# A241763: Months (on the Gregorian Calendar), numbered sequentially starting with January 2000, that begin on a Sunday.

The programs for A241763, there is no canonical definition to state claims against.
-/

/-! ## A241763.P4753658681250218700

`eq[0, A178054(n+1)]+1`
-/

namespace A241763.P4753658681250218700
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178054 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A241763.P4753658681250218700

/-! ## A241763.P16806146305783275109

`lt[A178054(n+2), 1]+2`
-/

namespace A241763.P16806146305783275109
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178054 (n + 2)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 2

end

end A241763.P16806146305783275109

/-! ## A241763.P11694740507574981947

`eq[0, A178054(A060000(n+1))]`
-/

namespace A241763.P11694740507574981947
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178054 (A060000 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A241763.P11694740507574981947

/-! ## A241763.P10464170623673017015

`eq[0, A178054(A065033(2*n))]`
-/

namespace A241763.P10464170623673017015
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178054 (A065033 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A241763.P10464170623673017015

/-! ## A241763.P513311789180185308

`eq[0, A178054(A000038(n)+n)]`
-/

namespace A241763.P513311789180185308
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178054 (A000038 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A241763.P513311789180185308

/-! ## A241763.P1431608492259690569

`eq[0, A178054(or(n, A000038(n)))]`
-/

namespace A241763.P1431608492259690569
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178054 (Int.lor (n : ℤ) (A000038 n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A241763.P1431608492259690569

/-!
# A241764: Semiprimes sp such that sp-3 is also semiprime.

The programs for A241764, the canonical program `A241764.P2246714588797373142` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A241764 has offset 1).

The definition of A241764 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3840 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A241764.P2246714588797373142

`∩[A001358(n+2)+3, A001358(n+2)]`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A241764

/-- `∩[A001358(n+2)+3, A001358(n+2)]` -/
def P2246714588797373142.Spec : Prop :=
  ∀ n, (P2246714588797373142.a n : ℤ) = A241764 (n + 1)

theorem P2246714588797373142.correct : P2246714588797373142.Spec := by
  intro n
  simp only [A241764, Nat.add_sub_cancel]

end A241764

/-! ## A241764.P11108542923443953773

`∩[A088707(n+1)+2, A176540(n+1)]`
-/

namespace A241764.P11108542923443953773
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088707 (n + 1) + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176540 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A241764.P11108542923443953773

namespace A241764

/-- `∩[A088707(n+1)+2, A176540(n+1)]` -/
def P11108542923443953773.Spec : Prop :=
  ∀ n, (P11108542923443953773.a n : ℤ) = A241764 (n + 1)

end A241764

/-! ## A241764.P10735443450445928785

`∩[A186621(n+1)+1, A065516(n)+a(n-1)]` with `a(0)=7`
-/

namespace A241764.P10735443450445928785
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186621 (n + 1) + 1

def f2 : ℕ → ℤ := SequenceMachineLib.rec [7] fun n f2 =>
  A065516 n + f2 (n - 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A241764.P10735443450445928785

namespace A241764

/-- `∩[A186621(n+1)+1, A065516(n)+a(n-1)]` -/
def P10735443450445928785.Spec : Prop :=
  ∀ n, (P10735443450445928785.a n : ℤ) = A241764 (n + 1)

end A241764

/-! ## A241764.P8666028073039002329

`∩[A175708(n+1)+1+n, A065516(n)+a(n-1)]` with `a(0)=7`
-/

namespace A241764.P8666028073039002329
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175708 (n + 1) + 1 + (n : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.rec [7] fun n f2 =>
  A065516 n + f2 (n - 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A241764.P8666028073039002329

namespace A241764

/-- `∩[A175708(n+1)+1+n, A065516(n)+a(n-1)]` -/
def P8666028073039002329.Spec : Prop :=
  ∀ n, (P8666028073039002329.a n : ℤ) = A241764 (n + 1)

end A241764

/-! ## A241764.P17910211512339006964

`A123017(n+1)+3`
-/

namespace A241764.P17910211512339006964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123017 (n + 1) + 3

end

end A241764.P17910211512339006964

namespace A241764

/-- `A123017(n+1)+3` -/
def P17910211512339006964.Spec : Prop :=
  ∀ n, P17910211512339006964.a n = A241764 (n + 1)

end A241764

/-! ## A241764.P12942480934741686912

`A009005(A123017(n+1))`
-/

namespace A241764.P12942480934741686912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009005 (A123017 (n + 1)).toNat

end

end A241764.P12942480934741686912

namespace A241764

/-- `A009005(A123017(n+1))` -/
def P12942480934741686912.Spec : Prop :=
  ∀ n, P12942480934741686912.a n = A241764 (n + 1)

end A241764

/-! ## A241764.P5269016353168964972

`record[A179312(A006881(n+1)+3)]`
-/

namespace A241764.P5269016353168964972
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179312 (A006881 (n + 1) + 3).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A241764.P5269016353168964972

namespace A241764

/-- `record[A179312(A006881(n+1)+3)]` -/
def P5269016353168964972.Spec : Prop :=
  ∀ n, P5269016353168964972.a n = A241764 (n + 1)

end A241764

/-! ## A241764.P6177638741397829358

`∩[A004526(A075818(n+1)), A088707(n+1)+2]`
-/

namespace A241764.P6177638741397829358
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A075818 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088707 (n + 1) + 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A241764.P6177638741397829358

namespace A241764

/-- `∩[A004526(A075818(n+1)), A088707(n+1)+2]` -/
def P6177638741397829358.Spec : Prop :=
  ∀ n, (P6177638741397829358.a n : ℤ) = A241764 (n + 1)

end A241764

/-!
# A241765: a(n) = n*(n + 1)*(n + 2)*(3*n + 17)/24.

The programs for A241765, the canonical program `A241765.P16162693821722970390` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A241765 has offset 0).

The definition of A241765 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n*(n+1)*(n+2)*(3*n+17)/24` (program `A241765.P8387111840442051845`, by `A241765.P8387111840442051845.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A241765.P9685661276497653532

`ogf((5x-2x^2)/(1-5x+10x^2-10x^3+5x^4-x^5))`
-/

namespace A241765.P9685661276497653532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 5, -2] [1, -5, 10, -10, 5, -1] n

end

end A241765.P9685661276497653532

namespace A241765

/-- `ogf((5x-2x^2)/(1-5x+10x^2-10x^3+5x^4-x^5))` -/
def P9685661276497653532.Spec : Prop :=
  ∀ n, P9685661276497653532.a n = A241765 n

end A241765

/-! ## A241765.P8387111840442051845

`n*(n+1)*(n+2)*(3*n+17)/24`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A241765.P8387111840442051845
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n * (n + 1) * (n + 2) * (3 * n + 17) : ℚ) / 24

end

end A241765.P8387111840442051845

namespace A241765

/-- `n*(n+1)*(n+2)*(3*n+17)/24` -/
def P8387111840442051845.Spec : Prop :=
  ∀ n, P8387111840442051845.a n = (A241765 n : ℚ)

theorem P8387111840442051845.correct : P8387111840442051845.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 | 3 | 4 =>
      simp [A241765, Nat.add_sub_cancel, A241765.P8387111840442051845.a, A241765.P16162693821722970390.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 5 =>
      have h1 := ih (m + 4) (by omega)
      have h2 := ih (m + 3) (by omega)
      have h3 := ih (m + 2) (by omega)
      have h4 := ih (m + 1) (by omega)
      have h5 := ih m (by omega)
      simp only [A241765, Nat.add_sub_cancel, A241765.P8387111840442051845.a, A241765.P16162693821722970390.a, SequenceMachineLib.memo_apply] at h1 h2 h3 h4 h5 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 5 - 1 = m + 4 by omega, show m + 5 - 2 = m + 3 by omega, show m + 5 - 3 = m + 2 by omega, show m + 5 - 4 = m + 1 by omega, show m + 5 - 5 = m by omega, show m + 4 < m + 5 by omega, show m + 3 < m + 5 by omega, show m + 2 < m + 5 by omega, show m + 1 < m + 5 by omega, show m < m + 5 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 h4 h5 ⊢
      rw [← h1, ← h2, ← h3, ← h4, ← h5]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A241765

/-! ## A241765.P16162693821722970390

`5*a(n-1)-10*a(n-2)+10*a(n-3)-5*a(n-4)+a(n-5)` with `a(0)=0, a(1)=5, a(2)=23, a(3)=65, a(4)=145`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A241765

/-- `5*a(n-1)-10*a(n-2)+10*a(n-3)-5*a(n-4)+a(n-5)` -/
def P16162693821722970390.Spec : Prop :=
  ∀ n, P16162693821722970390.a n = A241765 n

theorem P16162693821722970390.correct : P16162693821722970390.Spec := by
  intro n
  simp only [A241765]

end A241765

/-! ## A241765.P1613740649122226452

`A227342(A055998(n+1))`
-/

namespace A241765.P1613740649122226452
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227342 (A055998 (n + 1)).toNat

end

end A241765.P1613740649122226452

namespace A241765

/-- `A227342(A055998(n+1))` -/
def P1613740649122226452.Spec : Prop :=
  ∀ n, P1613740649122226452.a n = A241765 n

end A241765

/-! ## A241765.P13675547208658301833

`∑[∑[∑[a(n-1)+3]]]` with `a(0)=0, a(1)=5`
-/

namespace A241765.P13675547208658301833
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.rec [0, 5] fun n f3 =>
  f3 (n - 1) + 3

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A241765.P13675547208658301833

namespace A241765

/-- `∑[∑[∑[a(n-1)+3]]]` -/
def P13675547208658301833.Spec : Prop :=
  ∀ n, (P13675547208658301833.a n : ℤ) = A241765 n

end A241765

/-! ## A241765.P9569781813049709845

`∑[∑[A140090(n)]]`
-/

namespace A241765.P9569781813049709845
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140090 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A241765.P9569781813049709845

namespace A241765

/-- `∑[∑[A140090(n)]]` -/
def P9569781813049709845.Spec : Prop :=
  ∀ n, P9569781813049709845.a n = A241765 n

end A241765

/-! ## A241765.P12568107923529304687

`A215862(n)+∑[∑[n]]`
-/

namespace A241765.P12568107923529304687
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215862 n + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A241765.P12568107923529304687

namespace A241765

/-- `A215862(n)+∑[∑[n]]` -/
def P12568107923529304687.Spec : Prop :=
  ∀ n, P12568107923529304687.a n = A241765 n

end A241765

/-! ## A241765.P9408826731603665932

`A290312(n)-∑[n+1]`
-/

namespace A241765.P9408826731603665932
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290312 n - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A241765.P9408826731603665932

namespace A241765

/-- `A290312(n)-∑[n+1]` -/
def P9408826731603665932.Spec : Prop :=
  ∀ n, P9408826731603665932.a n = A241765 n

end A241765

/-! ## A241765.P12970906871587172044

`∑[n*A000096(n+1)]`
-/

namespace A241765.P12970906871587172044
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A000096 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A241765.P12970906871587172044

namespace A241765

/-- `∑[n*A000096(n+1)]` -/
def P12970906871587172044.Spec : Prop :=
  ∀ n, P12970906871587172044.a n = A241765 n

end A241765

/-! ## A241765.P1712031802746376391

`∑[A127736(n+1)-(n+1)]`
-/

namespace A241765.P1712031802746376391
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127736 (n + 1) - (n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A241765.P1712031802746376391

namespace A241765

/-- `∑[A127736(n+1)-(n+1)]` -/
def P1712031802746376391.Spec : Prop :=
  ∀ n, P1712031802746376391.a n = A241765 n

end A241765

/-! ## A241765.P7119903803838249334

`∑[A292058(n+1)/(n+1)]`
-/

namespace A241765.P7119903803838249334
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A292058 (n + 1) : ℚ) / (n + 1 : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A241765.P7119903803838249334

namespace A241765

/-- `∑[A292058(n+1)/(n+1)]` -/
def P7119903803838249334.Spec : Prop :=
  ∀ n, P7119903803838249334.a n = (A241765 n : ℚ)

end A241765

/-! ## A241765.P11783099630843935715

`∑[A077414(n+1)]+∑[∑[n]]`
-/

namespace A241765.P11783099630843935715
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077414 (n + 1)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)

end

end A241765.P11783099630843935715

namespace A241765

/-- `∑[A077414(n+1)]+∑[∑[n]]` -/
def P11783099630843935715.Spec : Prop :=
  ∀ n, P11783099630843935715.a n = A241765 n

end A241765

/-! ## A241765.P7591568999390105690

`∑[A006002(n)]+C((n+1)², 2)/(n+1)`
-/

namespace A241765.P7591568999390105690
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006002 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) + (Nat.choose ((n + 1) ^ 2) 2 : ℚ) / (n + 1 : ℚ)

end

end A241765.P7591568999390105690

namespace A241765

/-- `∑[A006002(n)]+C((n+1)², 2)/(n+1)` -/
def P7591568999390105690.Spec : Prop :=
  ∀ n, P7591568999390105690.a n = (A241765 n : ℚ)

end A241765

/-! ## A241765.P10992351699030786334

`A162148(n)+A002817(n)`
-/

namespace A241765.P10992351699030786334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162148 n + A002817 n

end

end A241765.P10992351699030786334

namespace A241765

/-- `A162148(n)+A002817(n)` -/
def P10992351699030786334.Spec : Prop :=
  ∀ n, P10992351699030786334.a n = A241765 n

end A241765

/-! ## A241765.P16261136629164478905

`A210440(n)+A001296(n)`
-/

namespace A241765.P16261136629164478905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210440 n + A001296 n

end

end A241765.P16261136629164478905

namespace A241765

/-- `A210440(n)+A001296(n)` -/
def P16261136629164478905.Spec : Prop :=
  ∀ n, P16261136629164478905.a n = A241765 n

end A241765

/-! ## A241765.P16274314500824801119

`A331987(n)+A050534(n)`
-/

namespace A241765.P16274314500824801119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331987 n + A050534 n

end

end A241765.P16274314500824801119

namespace A241765

/-- `A331987(n)+A050534(n)` -/
def P16274314500824801119.Spec : Prop :=
  ∀ n, P16274314500824801119.a n = A241765 n

end A241765

/-! ## A241765.P6762074313259999035

`A033487(n)-A001296(n)`
-/

namespace A241765.P6762074313259999035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033487 n - A001296 n

end

end A241765.P6762074313259999035

namespace A241765

/-- `A033487(n)-A001296(n)` -/
def P6762074313259999035.Spec : Prop :=
  ∀ n, P6762074313259999035.a n = A241765 n

end A241765

/-! ## A241765.P1787100663948753597

`A055268(n)-A108678(n)`
-/

namespace A241765.P1787100663948753597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055268 n - A108678 n

end

end A241765.P1787100663948753597

namespace A241765

/-- `A055268(n)-A108678(n)` -/
def P1787100663948753597.Spec : Prop :=
  ∀ n, P1787100663948753597.a n = A241765 n

end A241765

/-! ## A241765.P88739589947501190

`A027480(n)+∑[A006002(n)]`
-/

namespace A241765.P88739589947501190
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006002 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027480 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A241765.P88739589947501190

namespace A241765

/-- `A027480(n)+∑[A006002(n)]` -/
def P88739589947501190.Spec : Prop :=
  ∀ n, P88739589947501190.a n = A241765 n

end A241765

/-! ## A241765.P3963881509223103618

`A051797(n)-A007715(n+1)`
-/

namespace A241765.P3963881509223103618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051797 n - A007715 (n + 1)

end

end A241765.P3963881509223103618

namespace A241765

/-- `A051797(n)-A007715(n+1)` -/
def P3963881509223103618.Spec : Prop :=
  ∀ n, P3963881509223103618.a n = A241765 n

end A241765

/-!
# A241766: Number of partitions of n into parts of the form 3^k - 2^k, cf. A001047.

The programs for A241766, there is no canonical definition to state claims against.
-/

/-! ## A241766.P11471907065096657229

`∑[∑[A011647(n)]^A121047(n)]`
-/

namespace A241766.P11471907065096657229
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011647 n

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℤ) : ℚ) ^ (A121047 n : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A241766.P11471907065096657229

/-! ## A241766.P10122202772200021389

`∑[∑[A011647(n)]^A101023(n+1)]`
-/

namespace A241766.P10122202772200021389
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011647 n

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℤ) : ℚ) ^ (A101023 (n + 1) : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A241766.P10122202772200021389

/-! ## A241766.P15726221781787446814

`∑[∑[A011647(n)]^A115840(n+1)]`
-/

namespace A241766.P15726221781787446814
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011647 n

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℤ) : ℚ) ^ (A115840 (n + 1) : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A241766.P15726221781787446814

/-! ## A241766.P11766774914656261628

`∑[∑[A011647(n)]^A196004(n+1)]`
-/

namespace A241766.P11766774914656261628
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011647 n

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℤ) : ℚ) ^ (A196004 (n + 1) : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A241766.P11766774914656261628

/-! ## A241766.P16951523664136684483

`∑[∑[A011647(n)]^A118052(n+1)]`
-/

namespace A241766.P16951523664136684483
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011647 n

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℤ) : ℚ) ^ (A118052 (n + 1) : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A241766.P16951523664136684483

/-!
# A241767: Number of simple connected graphs with n nodes and exactly 1 articulation point (cutpoints).

The programs for A241767, there is no canonical definition to state claims against.
-/

/-! ## A241767.P4636732380633447633

`A325111(∑[n+1]+1)`
-/

namespace A241767.P4636732380633447633
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325111 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A241767.P4636732380633447633

/-! ## A241767.P7745480597420896678

`A037203(n)*A325111(A000124(n+1))`
-/

namespace A241767.P7745480597420896678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037203 n * A325111 (A000124 (n + 1)).toNat

end

end A241767.P7745480597420896678

/-! ## A241767.P9807452031215563059

`A055642(n)*A325111(A000124(n+1))`
-/

namespace A241767.P9807452031215563059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055642 n * A325111 (A000124 (n + 1)).toNat

end

end A241767.P9807452031215563059

/-!
# A241768: Number of simple connected graphs with n nodes and exactly 2 articulation points (cutpoints).

The programs for A241768, there is no canonical definition to state claims against.
-/

/-! ## A241768.P15418394713133849784

`A325111(A133263(n)+n+1)`
-/

namespace A241768.P15418394713133849784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325111 (A133263 n + (n + 1 : ℤ)).toNat

end

end A241768.P15418394713133849784

/-! ## A241768.P18356072668070360194

`A325111(A037203(n)+A000124(n+1))`
-/

namespace A241768.P18356072668070360194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325111 (A037203 n + A000124 (n + 1)).toNat

end

end A241768.P18356072668070360194

/-! ## A241768.P6014913194830321866

`A325111(A222210(n)+A152950(n+1))`
-/

namespace A241768.P6014913194830321866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325111 (A222210 n + A152950 (n + 1)).toNat

end

end A241768.P6014913194830321866

/-! ## A241768.P592529227221775966

`A325111(A152950(n+2)-A037203(n+1))`
-/

namespace A241768.P592529227221775966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325111 (A152950 (n + 2) - A037203 (n + 1)).toNat

end

end A241768.P592529227221775966

/-! ## A241768.P253191043899806304

`A325111(A371587(3*n+5)+A000217(n))`
-/

namespace A241768.P253191043899806304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325111 (A371587 (3 * n + 5) + A000217 n).toNat

end

end A241768.P253191043899806304

/-!
# A241769: Number of simple connected graphs with n nodes and exactly 3 articulation points (cutpoints).

The programs for A241769, there is no canonical definition to state claims against.
-/

/-! ## A241769.P15646495159418461544

`A325111(floor(A005581(2*n+3)/(3*(n+1))))`
-/

namespace A241769.P15646495159418461544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325111 ⌊(A005581 (2 * n + 3) : ℚ) / (3 * (n + 1) : ℚ)⌋.toNat

end

end A241769.P15646495159418461544

/-! ## A241769.P11283590934725563719

`A325111(A371587(3*n+1)+A133263(n))`
-/

namespace A241769.P11283590934725563719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325111 (A371587 (3 * n + 1) + A133263 n).toNat

end

end A241769.P11283590934725563719

/-! ## A241769.P11028863343134444130

`A033183(A249474(n))`
-/

namespace A241769.P11028863343134444130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033183 (A249474 n).toNat

end

end A241769.P11028863343134444130

/-! ## A241769.P6853961238749138481

`∑[A336879(A028304(n)!)]`
-/

namespace A241769.P6853961238749138481
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336879 (Nat.factorial (A028304 n).toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A241769.P6853961238749138481

/-!
# A241770: Number of simple connected graphs with n nodes and exactly 4 articulation points (cutpoints).

The programs for A241770, there is no canonical definition to state claims against.
-/

/-! ## A241770.P2274924965573387089

`A079693(A307180(n))`
-/

namespace A241770.P2274924965573387089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079693 (A307180 n).toNat

end

end A241770.P2274924965573387089

/-!
# A241771: Number of simple connected graphs with n nodes and exactly 5 articulation points (cutpoints).

The programs for A241771, there is no canonical definition to state claims against.
-/

/-! ## A241771.P10878649244304648718

`A325111(A160663(n+1))`
-/

namespace A241771.P10878649244304648718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325111 (A160663 (n + 1)).toNat

end

end A241771.P10878649244304648718

/-! ## A241771.P1860804057637355747

`and(A256431(n+2)-(2*n+3), A242523(n+1))`
-/

namespace A241771.P1860804057637355747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A256431 (n + 2) - (2 * n + 3 : ℤ)) (A242523 (n + 1))

end

end A241771.P1860804057637355747

/-! ## A241771.P1030477912660401060

`and(A000351(n), A026813(A000045(n)))`
-/

namespace A241771.P1030477912660401060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A000351 n) (A026813 (A000045 n).toNat)

end

end A241771.P1030477912660401060

/-! ## A241771.P17249096599003074602

`and(A000960(A105754(n+1)), A242523(n+1))`
-/

namespace A241771.P17249096599003074602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A000960 (A105754 (n + 1)).toNat) (A242523 (n + 1))

end

end A241771.P17249096599003074602

/-! ## A241771.P6287284446916253561

`and(A002144(A285790(n+1)), A242523(n+1))`
-/

namespace A241771.P6287284446916253561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A002144 (A285790 (n + 1)).toNat) (A242523 (n + 1))

end

end A241771.P6287284446916253561

/-!
# A241772: First differences of A065094 and also arithmetic means of initial terms of A065094.

The programs for A241772, there is no canonical definition to state claims against.
-/

/-! ## A241772.P12156253195254922270

`Δ[A065094(n+1)]`
-/

namespace A241772.P12156253195254922270
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065094 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A241772.P12156253195254922270

/-! ## A241772.P8857751710185686920

`A065094(n+2)-A065094(n+1)`
-/

namespace A241772.P8857751710185686920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065094 (n + 2) - A065094 (n + 1)

end

end A241772.P8857751710185686920

/-! ## A241772.P1465532130038731749

`Δ[record[A065094(A152271(n))]]`
-/

namespace A241772.P1465532130038731749
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065094 (A152271 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A241772.P1465532130038731749

/-! ## A241772.P17418470614359772427

`Δ[record[A065094(A126759(n))]]`
-/

namespace A241772.P17418470614359772427
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065094 (A126759 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A241772.P17418470614359772427

/-! ## A241772.P11192079261055856482

`Δ[record[A065094(A144968(n))]]`
-/

namespace A241772.P11192079261055856482
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065094 (A144968 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A241772.P11192079261055856482

/-!
# A241773: A sequence constructed by greedily sampling the Gauss-Kuzmin distribution log_2[(i+1)^2/(i^2+2*i)] to minimize discrepancy.

The programs for A241773, there is no canonical definition to state claims against.
-/

/-! ## A241773.P16306444025032870178

`A333768(abs(A064896(n+1)-A357135(n+1)))`
-/

namespace A241773.P16306444025032870178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333768 |A064896 (n + 1) - A357135 (n + 1)|.toNat

end

end A241773.P16306444025032870178

/-! ## A241773.P2870061260881598158

`gcd(record[A261117(n)], A261104(3*n+2))`
-/

namespace A241773.P2870061260881598158
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261117 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)) (A261104 (3 * n + 2))

end

end A241773.P2870061260881598158

/-! ## A241773.P13276854915602572356

`A333768(∪[A186281(2*(n+2)), A317246(n+1)])`
-/

namespace A241773.P13276854915602572356
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186281 (2 * (n + 2))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317246 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333768 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n)

end

end A241773.P13276854915602572356

/-! ## A241773.P7826743804866494831

`A333768(∪[A186281(2*(n+2)), A332276(n+1)])`
-/

namespace A241773.P7826743804866494831
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186281 (2 * (n + 2))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332276 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333768 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n)

end

end A241773.P7826743804866494831

/-!
# A241774: Number of standard Young tableaux with n cells and exactly three successions.

The programs for A241774, there is no canonical definition to state claims against.
-/

/-! ## A241774.P2880387402778781374

`record[A238125(∑[n+1]+3)]`
-/

namespace A241774.P2880387402778781374
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238125 (∑ j ∈ Finset.range (n + 1), f2 j + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A241774.P2880387402778781374

/-! ## A241774.P8796260048526901075

`A238125(A167614(n+3))`
-/

namespace A241774.P8796260048526901075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238125 (A167614 (n + 3)).toNat

end

end A241774.P8796260048526901075

/-! ## A241774.P14023712833589754729

`A238125(A016028(n+7))`
-/

namespace A241774.P14023712833589754729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238125 (A016028 (n + 7)).toNat

end

end A241774.P14023712833589754729

/-! ## A241774.P8566797991585556484

`A238125(A155212(n)+11)`
-/

namespace A241774.P8566797991585556484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238125 (A155212 n + 11).toNat

end

end A241774.P8566797991585556484

/-! ## A241774.P10295035287477331533

`A238125(A056000(n)+13)`
-/

namespace A241774.P10295035287477331533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238125 (A056000 n + 13).toNat

end

end A241774.P10295035287477331533

/-!
# A241775: Number of standard Young tableaux with n cells and exactly four successions.

The programs for A241775, there is no canonical definition to state claims against.
-/

/-! ## A241775.P10549775102920688980

`A238125(A167614(n+4)+1)`
-/

namespace A241775.P10549775102920688980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238125 (A167614 (n + 4) + 1).toNat

end

end A241775.P10549775102920688980

/-! ## A241775.P2359016512690862622

`A238125(A000096(n+4)+5)`
-/

namespace A241775.P2359016512690862622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238125 (A000096 (n + 4) + 5).toNat

end

end A241775.P2359016512690862622

/-! ## A241775.P1668114976524369158

`A238125(A000217(n+5)+4)`
-/

namespace A241775.P1668114976524369158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238125 (A000217 (n + 5) + 4).toNat

end

end A241775.P1668114976524369158

/-! ## A241775.P15422244239720599729

`A238125(Δ[A023545(n+1)]+8)`
-/

namespace A241775.P15422244239720599729
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238125 (f1 (n + 1) - f1 n + 8).toNat

end

end A241775.P15422244239720599729

/-!
# A241776: Number of standard Young tableaux with n cells and exactly five successions.

The programs for A241776, there is no canonical definition to state claims against.
-/

/-! ## A241776.P4690713635109695902

`A238125(A166136(n+5)-1)`
-/

namespace A241776.P4690713635109695902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238125 (A166136 (n + 5) - 1).toNat

end

end A241776.P4690713635109695902

/-! ## A241776.P4883095140617295458

`A238125(A167614(n+5)+2)`
-/

namespace A241776.P4883095140617295458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238125 (A167614 (n + 5) + 2).toNat

end

end A241776.P4883095140617295458

/-! ## A241776.P13901883085944565583

`A238125(A000217(n+6)+5)`
-/

namespace A241776.P13901883085944565583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238125 (A000217 (n + 6) + 5).toNat

end

end A241776.P13901883085944565583

/-! ## A241776.P2400081280124363160

`A238125(A052905(n+3)+10)`
-/

namespace A241776.P2400081280124363160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238125 (A052905 (n + 3) + 10).toNat

end

end A241776.P2400081280124363160

/-! ## A241776.P9987489402857504139

`A238125(A167499(A020710(n)))`
-/

namespace A241776.P9987489402857504139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238125 (A167499 (A020710 n).toNat).toNat

end

end A241776.P9987489402857504139

/-!
# A241777: Number of standard Young tableaux with n cells and exactly six successions.

The programs for A241777, there is no canonical definition to state claims against.
-/

/-! ## A241777.P17036978773781820796

`A238125(A145018(n+8)+2)`
-/

namespace A241777.P17036978773781820796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238125 (A145018 (n + 8) + 2).toNat

end

end A241777.P17036978773781820796

/-! ## A241777.P5161537889396945679

`A238125(A000124(n+7)+5)`
-/

namespace A241777.P5161537889396945679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238125 (A000124 (n + 7) + 5).toNat

end

end A241777.P5161537889396945679

/-! ## A241777.P3654948428145127024

`A238125(A000217(n+7)+6)`
-/

namespace A241777.P3654948428145127024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238125 (A000217 (n + 7) + 6).toNat

end

end A241777.P3654948428145127024

/-! ## A241777.P3333308023555873127

`A238125(A100542(n+7)+6)`
-/

namespace A241777.P3333308023555873127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238125 (A100542 (n + 7) + 6).toNat

end

end A241777.P3333308023555873127

/-! ## A241777.P14526956261406204413

`A238125(A055999(n+4)+12)`
-/

namespace A241777.P14526956261406204413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238125 (A055999 (n + 4) + 12).toNat

end

end A241777.P14526956261406204413

/-!
# A241778: Number of standard Young tableaux with n cells and exactly seven successions.

The programs for A241778, there is no canonical definition to state claims against.
-/

/-! ## A241778.P13003743116372920490

`A238125(eq[8, A128227(n)])`
-/

namespace A241778.P13003743116372920490
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128227 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238125 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A241778.P13003743116372920490

/-! ## A241778.P17604175640535603549

`A238125(A167499(n+7)+2)`
-/

namespace A241778.P17604175640535603549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238125 (A167499 (n + 7) + 2).toNat

end

end A241778.P17604175640535603549

/-! ## A241778.P931550576778805463

`A238125(A000124(n+8)+6)`
-/

namespace A241778.P931550576778805463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238125 (A000124 (n + 8) + 6).toNat

end

end A241778.P931550576778805463

/-! ## A241778.P14294762427499019291

`A238125(A000217(n+8)+7)`
-/

namespace A241778.P14294762427499019291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238125 (A000217 (n + 8) + 7).toNat

end

end A241778.P14294762427499019291

/-! ## A241778.P1091097511811139475

`A238125(eq[9, A002260(n+1)]-1)`
-/

namespace A241778.P1091097511811139475
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238125 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n - 1)

end

end A241778.P1091097511811139475

/-!
# A241779: Number of standard Young tableaux with n cells and exactly eight successions.

The programs for A241779, there is no canonical definition to state claims against.
-/

/-! ## A241779.P13904970932701638186

`A238125(eq[8, A114219(n)])`
-/

namespace A241779.P13904970932701638186
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114219 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238125 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A241779.P13904970932701638186

/-! ## A241779.P8458735644156277088

`A238125(A000124(n+9)+7)`
-/

namespace A241779.P8458735644156277088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238125 (A000124 (n + 9) + 7).toNat

end

end A241779.P8458735644156277088

/-! ## A241779.P8421373138061288338

`A238125(A034856(n+8)+10)`
-/

namespace A241779.P8421373138061288338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238125 (A034856 (n + 8) + 10).toNat

end

end A241779.P8421373138061288338

/-! ## A241779.P16977822379211909895

`A238125(eq[11, A131818(n+3)])`
-/

namespace A241779.P16977822379211909895
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238125 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A241779.P16977822379211909895

/-! ## A241779.P3506349070274893116

`A238125(eq[10, A002260(n+1)]-1)`
-/

namespace A241779.P3506349070274893116
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238125 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n - 1)

end

end A241779.P3506349070274893116

/-!
# A241780: Number of standard Young tableaux with n cells and exactly nine successions.

The programs for A241780, there is no canonical definition to state claims against.
-/

/-! ## A241780.P7539091586028879617

`A238125(eq[10, A128227(n)])`
-/

namespace A241780.P7539091586028879617
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128227 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238125 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A241780.P7539091586028879617

/-! ## A241780.P1505280096536147954

`A238125(A034856(n+9)+11)`
-/

namespace A241780.P1505280096536147954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238125 (A034856 (n + 9) + 11).toNat

end

end A241780.P1505280096536147954

/-! ## A241780.P9874425327284526711

`A238125(eq[12, A131818(n+3)])`
-/

namespace A241780.P9874425327284526711
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  12

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238125 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A241780.P9874425327284526711

/-! ## A241780.P12232532284165229734

`A238125(A161680(n+12)-(n+2))`
-/

namespace A241780.P12232532284165229734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238125 (A161680 (n + 12) - (n + 2 : ℤ)).toNat

end

end A241780.P12232532284165229734

/-!
# A241781: Number of standard Young tableaux with n cells and exactly ten successions.

The programs for A241781, there is no canonical definition to state claims against.
-/

/-! ## A241781.P9792186351859843671

`A238125(eq[11, A128227(n)])`
-/

namespace A241781.P9792186351859843671
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128227 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238125 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A241781.P9792186351859843671

/-! ## A241781.P11384518560404501718

`A238125(eq[13, A131818(n+3)])`
-/

namespace A241781.P11384518560404501718
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  13

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238125 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A241781.P11384518560404501718

/-! ## A241781.P2545450973631640669

`A238125(record[A257506(n+14)]-(n+2))`
-/

namespace A241781.P2545450973631640669
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257506 (n + 14)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238125 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - (n + 2 : ℤ)).toNat

end

end A241781.P2545450973631640669

/-!
# A241782: Number of unlabeled, connected graphs on n vertices with no induced subgraph isomorphic to a K_5, where a K_5 is the complete graph on five vertices.

The programs for A241782, there is no canonical definition to state claims against.
-/

/-! ## A241782.P18035091898878169863

`A126746(n+1)+A079574(n+1)`
-/

namespace A241782.P18035091898878169863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126746 (n + 1) + A079574 (n + 1)

end

end A241782.P18035091898878169863

/-! ## A241782.P7433182209589628584

`A001349(n+1)-A243242(n+1)`
-/

namespace A241782.P7433182209589628584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001349 (n + 1) - A243242 (n + 1)

end

end A241782.P7433182209589628584

/-! ## A241782.P1269432245424115717

`A128528(n+2)-A243242(n+1)`
-/

namespace A241782.P1269432245424115717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128528 (n + 2) - A243242 (n + 1)

end

end A241782.P1269432245424115717

/-! ## A241782.P18132707486012939704

`A201922(A000124(n))-A243242(n+1)`
-/

namespace A241782.P18132707486012939704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201922 (A000124 n).toNat - A243242 (n + 1)

end

end A241782.P18132707486012939704

/-! ## A241782.P8744231085566271341

`A224065(A119663(n+1))-A243242(n+1)`
-/

namespace A241782.P8744231085566271341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224065 (A119663 (n + 1)).toNat - A243242 (n + 1)

end

end A241782.P8744231085566271341

/-!
# A241783: Numbers that cannot be partitioned into distinct parts of the form 3^k - 2^k, cf. A001047.

The programs for A241783, the canonical program `A241783.P11123897406927341978` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A241783 has offset 1).

The definition of A241783 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A241783.P11123897406927341978

`comp[3*a(floor(n/2))+n]` with `a(0)=0`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A241783

/-- `comp[3*a(floor(n/2))+n]` -/
def P11123897406927341978.Spec : Prop :=
  ∀ n, (P11123897406927341978.a n : ℤ) = A241783 (n + 1)

theorem P11123897406927341978.correct : P11123897406927341978.Spec := by
  intro n
  simp only [A241783, Nat.add_sub_cancel]

end A241783

/-! ## A241783.P499852099295517635

`comp[A240400(n+1)]`
-/

namespace A241783.P499852099295517635
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240400 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A241783.P499852099295517635

namespace A241783

/-- `comp[A240400(n+1)]` -/
def P499852099295517635.Spec : Prop :=
  ∀ n, (P499852099295517635.a n : ℤ) = A241783 (n + 1)

end A241783

/-! ## A241783.P16590767175279314324

`comp[A005836(n+1)-n]`
-/

namespace A241783.P16590767175279314324
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005836 (n + 1) - (n : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A241783.P16590767175279314324

namespace A241783

/-- `comp[A005836(n+1)-n]` -/
def P16590767175279314324.Spec : Prop :=
  ∀ n, (P16590767175279314324.a n : ℤ) = A241783 (n + 1)

end A241783

/-! ## A241783.P8676770840925620125

`comp[∑[A003462(val(n+1, 2))]]`
-/

namespace A241783.P8676770840925620125
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003462 (SequenceMachineLib.valuation (n + 1) 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A241783.P8676770840925620125

namespace A241783

/-- `comp[∑[A003462(val(n+1, 2))]]` -/
def P8676770840925620125.Spec : Prop :=
  ∀ n, (P8676770840925620125.a n : ℤ) = A241783 (n + 1)

end A241783

/-! ## A241783.P3832280763311383912

`comp[A003278(n+1)-(n+1)]`
-/

namespace A241783.P3832280763311383912
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003278 (n + 1) - (n + 1 : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A241783.P3832280763311383912

namespace A241783

/-- `comp[A003278(n+1)-(n+1)]` -/
def P3832280763311383912.Spec : Prop :=
  ∀ n, (P3832280763311383912.a n : ℤ) = A241783 (n + 1)

end A241783

/-! ## A241783.P12020028810152075193

`comp[A033162(n+1)-(n+3)]`
-/

namespace A241783.P12020028810152075193
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033162 (n + 1) - (n + 3 : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A241783.P12020028810152075193

namespace A241783

/-- `comp[A033162(n+1)-(n+3)]` -/
def P12020028810152075193.Spec : Prop :=
  ∀ n, (P12020028810152075193.a n : ℤ) = A241783 (n + 1)

end A241783

/-! ## A241783.P10280032600074503848

`comp[∑[A005836(A006519(n+1))]]`
-/

namespace A241783.P10280032600074503848
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005836 (A006519 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A241783.P10280032600074503848

namespace A241783

/-- `comp[∑[A005836(A006519(n+1))]]` -/
def P10280032600074503848.Spec : Prop :=
  ∀ n, (P10280032600074503848.a n : ℤ) = A241783 (n + 1)

end A241783

/-! ## A241783.P317145581457327912

`comp[A004488(record[A004488(n)])-n]`
-/

namespace A241783.P317145581457327912
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004488 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004488 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat - (n : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A241783.P317145581457327912

namespace A241783

/-- `comp[A004488(record[A004488(n)])-n]` -/
def P317145581457327912.Spec : Prop :=
  ∀ n, (P317145581457327912.a n : ℤ) = A241783 (n + 1)

end A241783

/-! ## A241783.P13051544156674057809

`eq[0, A241759(n)]`
-/

namespace A241783.P13051544156674057809
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241759 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A241783.P13051544156674057809

namespace A241783

/-- `eq[0, A241759(n)]` -/
def P13051544156674057809.Spec : Prop :=
  ∀ n, (P13051544156674057809.a n : ℤ) = A241783 (n + 1)

end A241783

/-! ## A241783.P2332031874246287144

`lt[2, A300222(lt[0, A300222(n)])]`
-/

namespace A241783.P2332031874246287144
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300222 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300222 (SequenceMachineLib.nth (fun j => (f3 j : ℤ) < f4 j) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A241783.P2332031874246287144

namespace A241783

/-- `lt[2, A300222(lt[0, A300222(n)])]` -/
def P2332031874246287144.Spec : Prop :=
  ∀ n, (P2332031874246287144.a n : ℤ) = A241783 (n + 1)

end A241783

/-! ## A241783.P2830431839131634421

`lt[1, A309890(lt[1, A309890(n+1)])]`
-/

namespace A241783.P2830431839131634421
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309890 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309890 (SequenceMachineLib.nth (fun j => (f3 j : ℤ) < f4 j) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A241783.P2830431839131634421

namespace A241783

/-- `lt[1, A309890(lt[1, A309890(n+1)])]` -/
def P2830431839131634421.Spec : Prop :=
  ∀ n, (P2830431839131634421.a n : ℤ) = A241783 (n + 1)

end A241783

/-! ## A241783.P5608886260452318303

`A081610(A111018(n+1))`
-/

namespace A241783.P5608886260452318303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081610 (A111018 (n + 1)).toNat

end

end A241783.P5608886260452318303

namespace A241783

/-- `A081610(A111018(n+1))` -/
def P5608886260452318303.Spec : Prop :=
  ∀ n, P5608886260452318303.a n = A241783 (n + 1)

end A241783

/-! ## A241783.P9520552250651770138

`eq[0, A039966(A074940(n+1)-1)]`
-/

namespace A241783.P9520552250651770138
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039966 (A074940 (n + 1) - 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A241783.P9520552250651770138

namespace A241783

/-- `eq[0, A039966(A074940(n+1)-1)]` -/
def P9520552250651770138.Spec : Prop :=
  ∀ n, (P9520552250651770138.a n : ℤ) = A241783 (n + 1)

end A241783

/-! ## A241783.P10757292712227816482

`lt[0, A330267(A074940(n+1))]`
-/

namespace A241783.P10757292712227816482
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330267 (A074940 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A241783.P10757292712227816482

namespace A241783

/-- `lt[0, A330267(A074940(n+1))]` -/
def P10757292712227816482.Spec : Prop :=
  ∀ n, (P10757292712227816482.a n : ℤ) = A241783 (n + 1)

end A241783

/-! ## A241783.P11799323201309070210

`lt[2, A289816(lt[1, A289816(n)])]`
-/

namespace A241783.P11799323201309070210
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289816 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289816 (SequenceMachineLib.nth (fun j => (f3 j : ℤ) < f4 j) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A241783.P11799323201309070210

namespace A241783

/-- `lt[2, A289816(lt[1, A289816(n)])]` -/
def P11799323201309070210.Spec : Prop :=
  ∀ n, (P11799323201309070210.a n : ℤ) = A241783 (n + 1)

end A241783

/-! ## A241783.P7266106304607973250

`comp[record[A167877(n)]-n]`
-/

namespace A241783.P7266106304607973250
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167877 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n) - (n : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A241783.P7266106304607973250

namespace A241783

/-- `comp[record[A167877(n)]-n]` -/
def P7266106304607973250.Spec : Prop :=
  ∀ n, (P7266106304607973250.a n : ℤ) = A241783 (n + 1)

end A241783

/-! ## A241783.P1700365379472112065

`comp[eq[0, A081603(n)]-n]`
-/

namespace A241783.P1700365379472112065
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081603 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n : ℤ) - (n : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A241783.P1700365379472112065

namespace A241783

/-- `comp[eq[0, A081603(n)]-n]` -/
def P1700365379472112065.Spec : Prop :=
  ∀ n, (P1700365379472112065.a n : ℤ) = A241783 (n + 1)

end A241783

/-!
# A241784: Number of simple connected graphs on n nodes with no cycle of length 5.

The programs for A241784, there is no canonical definition to state claims against.
-/

/-! ## A241784.P11000508167364000755

`A001349(n+1)-A243246(n+1)`
-/

namespace A241784.P11000508167364000755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001349 (n + 1) - A243246 (n + 1)

end

end A241784.P11000508167364000755

/-! ## A241784.P6373843553132701733

`A201922(A000124(n))-A243246(n+1)`
-/

namespace A241784.P6373843553132701733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201922 (A000124 n).toNat - A243246 (n + 1)

end

end A241784.P6373843553132701733

/-! ## A241784.P6096997015716933259

`A077269(n+1)+A243243(n+1)-A243246(n+1)`
-/

namespace A241784.P6096997015716933259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077269 (n + 1) + (A243243 (n + 1) - A243246 (n + 1))

end

end A241784.P6096997015716933259

/-! ## A241784.P14988714701345150954

`A243251(n+1)+A243252(n+1)-A243246(n+1)`
-/

namespace A241784.P14988714701345150954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243251 (n + 1) + (A243252 (n + 1) - A243246 (n + 1))

end

end A241784.P14988714701345150954

/-! ## A241784.P2936463658214651224

`A000027(A128528(n+2))-A243246(n+1)`
-/

namespace A241784.P2936463658214651224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A128528 (n + 2)).toNat - A243246 (n + 1)

end

end A241784.P2936463658214651224

/-!
# A241785: Number of standard Young tableaux with 2n cells and exactly n successions.

The programs for A241785, there is no canonical definition to state claims against.
-/

/-! ## A241785.P3785630573768766672

`A238125(∑[4*n])`
-/

namespace A241785.P3785630573768766672
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238125 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A241785.P3785630573768766672

/-! ## A241785.P15887511144811176729

`A119335(n)*A238125(A046092(n))`
-/

namespace A241785.P15887511144811176729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119335 n * A238125 (A046092 n).toNat

end

end A241785.P15887511144811176729

/-! ## A241785.P3294908591829904940

`gcd(A000038(n), A238125(A046092(n)))`
-/

namespace A241785.P3294908591829904940
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A238125 (A046092 n).toNat)

end

end A241785.P3294908591829904940

/-! ## A241785.P12669729181875970076

`lcm(A033999(n), A238125(A046092(n)))`
-/

namespace A241785.P12669729181875970076
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 n) (A238125 (A046092 n).toNat)

end

end A241785.P12669729181875970076

/-! ## A241785.P15086131341487286992

`A238125(A046092(n))+A000035(2*n)`
-/

namespace A241785.P15086131341487286992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238125 (A046092 n).toNat + A000035 (2 * n)

end

end A241785.P15086131341487286992

/-!
# A241787: Triangular numbers which have one or more occurrences of exactly four different digits.

The programs for A241787, the canonical program `A241787.P16146905243210860616` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A241787 has offset 1).

The definition of A241787 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1511 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A241787.P16146905243210860616

`A000217(eq[4, A118668(n)])`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A241787

/-- `A000217(eq[4, A118668(n)])` -/
def P16146905243210860616.Spec : Prop :=
  ∀ n, P16146905243210860616.a n = A241787 (n + 1)

theorem P16146905243210860616.correct : P16146905243210860616.Spec := by
  intro n
  simp only [A241787, Nat.add_sub_cancel]

end A241787

/-! ## A241787.P2345191903975809986

`A000124(eq[4, A118668(n)])-1`
-/

namespace A241787.P2345191903975809986
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118668 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000124 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n) - 1

end

end A241787.P2345191903975809986

namespace A241787

/-- `A000124(eq[4, A118668(n)])-1` -/
def P2345191903975809986.Spec : Prop :=
  ∀ n, P2345191903975809986.a n = A241787 (n + 1)

end A241787

/-! ## A241787.P10106113939559983683

`A133263(eq[4, A118668(n)])-2`
-/

namespace A241787.P10106113939559983683
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118668 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133263 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n) - 2

end

end A241787.P10106113939559983683

namespace A241787

/-- `A133263(eq[4, A118668(n)])-2` -/
def P10106113939559983683.Spec : Prop :=
  ∀ n, P10106113939559983683.a n = A241787 (n + 1)

end A241787

/-! ## A241787.P16156230142224022411

`A002378(eq[4, A118668(n)])/2`
-/

namespace A241787.P16156230142224022411
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118668 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002378 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n) : ℚ) / 2

end

end A241787.P16156230142224022411

namespace A241787

/-- `A002378(eq[4, A118668(n)])/2` -/
def P16156230142224022411.Spec : Prop :=
  ∀ n, P16156230142224022411.a n = (A241787 (n + 1) : ℚ)

theorem P16156230142224022411.correct : P16156230142224022411.Spec := by
  intro n
  simp only [A241787, Nat.add_sub_cancel, A241787.P16156230142224022411.f1, A241787.P16156230142224022411.f2, A241787.P16156230142224022411.a, A241787.P16146905243210860616.f1, A241787.P16146905243210860616.f2, A241787.P16146905243210860616.a, A000217, A000217.P10269402890581615239.a, A002378, A002378.P6342434596694243671.a, A118668, A118668.P12338032722953581586.f1, A118668.P12338032722953581586.a, A043537, A043537.P5563663715344268017.f2, A043537.P5563663715344268017.f1, A043537.P5563663715344268017.a, A318442, A318442.P15306764883021255507.a, A318320, A318320.P3093360369618625706.a, A318326, A318326.P16485873540069210944.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A241787

/-! ## A241787.P8871819516201091610

`A057428(n+1)+A000124(eq[4, A118668(n)])`
-/

namespace A241787.P8871819516201091610
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118668 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 (n + 1) + A000124 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A241787.P8871819516201091610

namespace A241787

/-- `A057428(n+1)+A000124(eq[4, A118668(n)])` -/
def P8871819516201091610.Spec : Prop :=
  ∀ n, P8871819516201091610.a n = A241787 (n + 1)

end A241787

/-! ## A241787.P18352982635213732993

`∩[A031969(n+1), A000217(n)]`
-/

namespace A241787.P18352982635213732993
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031969 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A241787.P18352982635213732993

namespace A241787

/-- `∩[A031969(n+1), A000217(n)]` -/
def P18352982635213732993.Spec : Prop :=
  ∀ n, (P18352982635213732993.a n : ℤ) = A241787 (n + 1)

end A241787

/-! ## A241787.P17659920841878377692

`filter[A031969(n+1), A073424(#)]`
-/

namespace A241787.P17659920841878377692
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031969 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A073424 (f1 j).toNat = 1) n)

end

end A241787.P17659920841878377692

namespace A241787

/-- `filter[A031969(n+1), A073424(#)]` -/
def P17659920841878377692.Spec : Prop :=
  ∀ n, P17659920841878377692.a n = A241787 (n + 1)

end A241787

/-!
# A241788: Triangular numbers which have one or more occurrences of exactly five different digits.

The programs for A241788, the canonical program `A241788.P3599826419977953969` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A241788 has offset 1).

The definition of A241788 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A241788.P3599826419977953969

`A000217(eq[5, A118668(n)])`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A241788

/-- `A000217(eq[5, A118668(n)])` -/
def P3599826419977953969.Spec : Prop :=
  ∀ n, P3599826419977953969.a n = A241788 (n + 1)

theorem P3599826419977953969.correct : P3599826419977953969.Spec := by
  intro n
  simp only [A241788, Nat.add_sub_cancel]

end A241788

/-! ## A241788.P13708546975197139734

`A179865(eq[5, A118668(n)]+1)`
-/

namespace A241788.P13708546975197139734
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118668 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179865 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A241788.P13708546975197139734

namespace A241788

/-- `A179865(eq[5, A118668(n)]+1)` -/
def P13708546975197139734.Spec : Prop :=
  ∀ n, P13708546975197139734.a n = A241788 (n + 1)

end A241788

/-! ## A241788.P16059829599792091880

`A000124(eq[5, A118668(n)])-1`
-/

namespace A241788.P16059829599792091880
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118668 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000124 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n) - 1

end

end A241788.P16059829599792091880

namespace A241788

/-- `A000124(eq[5, A118668(n)])-1` -/
def P16059829599792091880.Spec : Prop :=
  ∀ n, P16059829599792091880.a n = A241788 (n + 1)

end A241788

/-! ## A241788.P8536791540705391053

`A133263(eq[5, A118668(n)])-2`
-/

namespace A241788.P8536791540705391053
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118668 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133263 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n) - 2

end

end A241788.P8536791540705391053

namespace A241788

/-- `A133263(eq[5, A118668(n)])-2` -/
def P8536791540705391053.Spec : Prop :=
  ∀ n, P8536791540705391053.a n = A241788 (n + 1)

end A241788

/-!
# A241789: Triangular numbers which have one or more occurrences of exactly six different digits.

The programs for A241789, the canonical program `A241789.P11600652055916222523` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A241789 has offset 1).

The definition of A241789 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2500 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A241789.P11600652055916222523

`A000217(eq[6, A118668(n)])`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A241789

/-- `A000217(eq[6, A118668(n)])` -/
def P11600652055916222523.Spec : Prop :=
  ∀ n, P11600652055916222523.a n = A241789 (n + 1)

theorem P11600652055916222523.correct : P11600652055916222523.Spec := by
  intro n
  simp only [A241789, Nat.add_sub_cancel]

end A241789

/-!
# A241790: Triangular numbers which have one or more occurrences of exactly seven different digits.

The programs for A241790, the canonical program `A241790.P16074744630349264971` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A241790 has offset 1).

The definition of A241790 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1124 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A241790.P16074744630349264971

`A000217(eq[7, A118668(n)])`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A241790

/-- `A000217(eq[7, A118668(n)])` -/
def P16074744630349264971.Spec : Prop :=
  ∀ n, P16074744630349264971.a n = A241790 (n + 1)

theorem P16074744630349264971.correct : P16074744630349264971.Spec := by
  intro n
  simp only [A241790, Nat.add_sub_cancel]

end A241790

/-!
# A241794: Number of ballot sequences of length n having exactly one descent.

The programs for A241794, there is no canonical definition to state claims against.
-/

/-! ## A241794.P13658037285179045016

`record[A238121(∑[n]+1)]`
-/

namespace A241794.P13658037285179045016
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238121 (∑ j ∈ Finset.range (n + 1), f2 j + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A241794.P13658037285179045016

/-! ## A241794.P13947777645208076369

`A238121(∑[n+3]+4)`
-/

namespace A241794.P13947777645208076369
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238121 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A241794.P13947777645208076369

/-! ## A241794.P6804056187466462312

`A324539(2*n+5)+A238121(A000124(n+3))`
-/

namespace A241794.P6804056187466462312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324539 (2 * n + 5) + A238121 (A000124 (n + 3)).toNat

end

end A241794.P6804056187466462312

/-! ## A241794.P3699429188679988907

`A238121(A000124(n+3))+A048050(A050320(n+1))`
-/

namespace A241794.P3699429188679988907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238121 (A000124 (n + 3)).toNat + A048050 (A050320 (n + 1)).toNat

end

end A241794.P3699429188679988907

/-! ## A241794.P1594415265075931797

`A238121(A000124(n+3))-A324539(A324540(n+1))`
-/

namespace A241794.P1594415265075931797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238121 (A000124 (n + 3)).toNat - A324539 (A324540 (n + 1)).toNat

end

end A241794.P1594415265075931797

/-!
# A241795: Number of ballot sequences of length n having exactly two descents.

The programs for A241795, there is no canonical definition to state claims against.
-/

/-! ## A241795.P629457112066390387

`A238121(A000096(n+4)+3)`
-/

namespace A241795.P629457112066390387
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238121 (A000096 (n + 4) + 3).toNat

end

end A241795.P629457112066390387

/-! ## A241795.P18211316377206066499

`A238121(A000217(n+5)+2)`
-/

namespace A241795.P18211316377206066499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238121 (A000217 (n + 5) + 2).toNat

end

end A241795.P18211316377206066499

/-! ## A241795.P1285725181465267189

`A238121(A046691(n+3)+6)`
-/

namespace A241795.P1285725181465267189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238121 (A046691 (n + 3) + 6).toNat

end

end A241795.P1285725181465267189

/-! ## A241795.P15524973235462710774

`A238121(A060577(n+4)+6)`
-/

namespace A241795.P15524973235462710774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238121 (A060577 (n + 4) + 6).toNat

end

end A241795.P15524973235462710774

/-! ## A241795.P940833887556648436

`A238121(3-A080956(n+6))`
-/

namespace A241795.P940833887556648436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238121 (3 - A080956 (n + 6)).toNat

end

end A241795.P940833887556648436

/-!
# A241796: Number of ballot sequences of length n having exactly three descents.

The programs for A241796, there is no canonical definition to state claims against.
-/

/-! ## A241796.P13120359421300329926

`A238121(A000124(n+6)+2)`
-/

namespace A241796.P13120359421300329926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238121 (A000124 (n + 6) + 2).toNat

end

end A241796.P13120359421300329926

/-! ## A241796.P10793619653813094803

`A238121(A167499(n+5)-2)`
-/

namespace A241796.P10793619653813094803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238121 (A167499 (n + 5) - 2).toNat

end

end A241796.P10793619653813094803

/-! ## A241796.P17304590847297662631

`A238121(A000217(n+6)+3)`
-/

namespace A241796.P17304590847297662631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238121 (A000217 (n + 6) + 3).toNat

end

end A241796.P17304590847297662631

/-! ## A241796.P18388649583580840650

`A238121(A034856(n+5)+5)`
-/

namespace A241796.P18388649583580840650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238121 (A034856 (n + 5) + 5).toNat

end

end A241796.P18388649583580840650

/-! ## A241796.P11666511324761979536

`A238121(A046691(n+4)+7)`
-/

namespace A241796.P11666511324761979536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238121 (A046691 (n + 4) + 7).toNat

end

end A241796.P11666511324761979536

/-!
# A241797: Number of ballot sequences of length n having exactly four descents.

The programs for A241797, there is no canonical definition to state claims against.
-/

/-! ## A241797.P1556935584110054986

`A238121(A167614(n+7)+1)`
-/

namespace A241797.P1556935584110054986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238121 (A167614 (n + 7) + 1).toNat

end

end A241797.P1556935584110054986

/-! ## A241797.P14163966207363846659

`A238121(A167499(n+7)-1)`
-/

namespace A241797.P14163966207363846659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238121 (A167499 (n + 7) - 1).toNat

end

end A241797.P14163966207363846659

/-! ## A241797.P9600754934719256237

`A238121(A000096(n+7)+5)`
-/

namespace A241797.P9600754934719256237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238121 (A000096 (n + 7) + 5).toNat

end

end A241797.P9600754934719256237

/-! ## A241797.P14094021870015463246

`A238121(A000217(n+8)+4)`
-/

namespace A241797.P14094021870015463246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238121 (A000217 (n + 8) + 4).toNat

end

end A241797.P14094021870015463246

/-! ## A241797.P6243322255784318655

`A238121(A167487(n+6)+n+5)`
-/

namespace A241797.P6243322255784318655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238121 (A167487 (n + 6) + (n + 5 : ℤ)).toNat

end

end A241797.P6243322255784318655

/-!
# A241798: Number of ballot sequences of length n having exactly five descents.

The programs for A241798, there is no canonical definition to state claims against.
-/

/-! ## A241798.P2489933808487016474

`A238121(A167499(n+8))`
-/

namespace A241798.P2489933808487016474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238121 (A167499 (n + 8)).toNat

end

end A241798.P2489933808487016474

/-! ## A241798.P14984966264002728803

`A238121(A167614(n+8)+2)`
-/

namespace A241798.P14984966264002728803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238121 (A167614 (n + 8) + 2).toNat

end

end A241798.P14984966264002728803

/-! ## A241798.P17966239301067115738

`A238121(A000217(n+9)+5)`
-/

namespace A241798.P17966239301067115738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238121 (A000217 (n + 9) + 5).toNat

end

end A241798.P17966239301067115738

/-! ## A241798.P1591354586526320340

`A238121(A052905(n+6)+10)`
-/

namespace A241798.P1591354586526320340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238121 (A052905 (n + 6) + 10).toNat

end

end A241798.P1591354586526320340

/-! ## A241798.P16644606608949521300

`A238121(A055999(n+6)+11)`
-/

namespace A241798.P16644606608949521300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238121 (A055999 (n + 6) + 11).toNat

end

end A241798.P16644606608949521300

/-!
# A241799: Number of ballot sequences of length n having exactly six descents.

The programs for A241799, there is no canonical definition to state claims against.
-/

/-! ## A241799.P4254109697772295009

`A238121(A167499(n+9)+1)`
-/

namespace A241799.P4254109697772295009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238121 (A167499 (n + 9) + 1).toNat

end

end A241799.P4254109697772295009

/-! ## A241799.P104111224454054061

`A238121(A167614(n+9)+3)`
-/

namespace A241799.P104111224454054061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238121 (A167614 (n + 9) + 3).toNat

end

end A241799.P104111224454054061

/-! ## A241799.P302331189426702626

`A238121(A055999(n+7)+12)`
-/

namespace A241799.P302331189426702626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238121 (A055999 (n + 7) + 12).toNat

end

end A241799.P302331189426702626

