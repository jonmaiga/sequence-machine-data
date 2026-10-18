import SequenceMachineLib
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
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C030
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C036
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
import Seq.B002.C004
import Seq.B002.C005
import Seq.B002.C006
import Seq.B003.C000
import Seq.B003.C002
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
import Seq.B006.C002
import Seq.B007.C000
import Seq.B007.C001
import Seq.B008.C000
import Seq.B008.C001
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
import Seq.Opaque.C025

/-!
# A324700: Lexicographically earliest sequence containing 0 and all positive integers > 1 whose prime indices minus 1 already belong to the sequence.

The programs for A324700, there is no canonical definition to state claims against.
-/

/-! ## A324700.P6387862703294286694

`A324701(n+1)-1`
-/

namespace A324700.P6387862703294286694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324701 (n + 1) - 1

end

end A324700.P6387862703294286694

/-! ## A324700.P5987224828700736724

`abs(1-A324701(Δ[n²]-n))`
-/

namespace A324700.P5987224828700736724
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - A324701 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) - (n : ℤ)).toNat|

end

end A324700.P5987224828700736724

/-! ## A324700.P745958437670313360

`abs(A324701(n-(1-4/2))-1)`
-/

namespace A324700.P745958437670313360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A324701 (SequenceMachineLib.roundAway ((n : ℚ) - (1 - (4 : ℚ) / 2))).toNat - 1|

end

end A324700.P745958437670313360

/-! ## A324700.P4465468892992945338

`A023443(A324701(n+1))`
-/

namespace A324700.P4465468892992945338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A324701 (n + 1)).toNat

end

end A324700.P4465468892992945338

/-! ## A324700.P709223794699388279

`record[A324701(A100727(n))-1]`
-/

namespace A324700.P709223794699388279
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324701 (A100727 n).toNat - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A324700.P709223794699388279

/-! ## A324700.P10647151845436811990

`record[A324701(A126759(n))-1]`
-/

namespace A324700.P10647151845436811990
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324701 (A126759 n).toNat - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A324700.P10647151845436811990

/-! ## A324700.P13674688131295442668

`record[A324701(A133310(n))-1]`
-/

namespace A324700.P13674688131295442668
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324701 (A133310 n).toNat - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A324700.P13674688131295442668

/-! ## A324700.P13560403353109794440

`A023444(A324701(n+1)+1)`
-/

namespace A324700.P13560403353109794440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023444 (A324701 (n + 1) + 1).toNat

end

end A324700.P13560403353109794440

/-! ## A324700.P14842290990569445537

`∑{d}[A324701(Δ[n²]-n)-1, A000010(#)]`
-/

namespace A324700.P14842290990569445537
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324701 ((f2 (n + 1) : ℤ) - (f2 n : ℤ) - (n : ℤ)).toNat - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 d

end

end A324700.P14842290990569445537

/-! ## A324700.P17621628556077599431

`A007318(and(3, -n))*A324701(Δ[n²]-n)-1`
-/

namespace A324700.P17621628556077599431
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Int.land 3 (-(n : ℤ))).toNat * A324701 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) - (n : ℤ)).toNat - 1

end

end A324700.P17621628556077599431

/-!
# A324701: Lexicographically earliest sequence containing 1 and all positive integers n such that the prime indices of n - 1 already belong to the sequence.

The programs for A324701, there is no canonical definition to state claims against.
-/

/-! ## A324701.P15071698420484912657

`A324700(n+1)+1`
-/

namespace A324701.P15071698420484912657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324700 (n + 1) + 1

end

end A324701.P15071698420484912657

/-! ## A324701.P7308601980871216418

`lt[A104850(A333840(2*n+1)), A104850(n+1)]`
-/

namespace A324701.P7308601980871216418
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104850 (A333840 (2 * n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104850 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A324701.P7308601980871216418

/-! ## A324701.P3859714868117838628

`record[A030545(n)^A054923(A023416(n))]`
-/

namespace A324701.P3859714868117838628
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A030545 n : ℚ) ^ (A054923 (A023416 n).toNat : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A324701.P3859714868117838628

/-! ## A324701.P4459147678184069162

`A285671(A181565(n))+A191987(n+2)`
-/

namespace A324701.P4459147678184069162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285671 (A181565 n).toNat + A191987 (n + 2)

end

end A324701.P4459147678184069162

/-!
# A324702: Lexicographically earliest sequence containing 2 and all positive integers > 1 whose prime indices minus 1 already belong to the sequence.

The programs for A324702, there is no canonical definition to state claims against.
-/

/-! ## A324702.P6913612032575921126

`A324703(n+1)-1`
-/

namespace A324702.P6913612032575921126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324703 (n + 1) - 1

end

end A324702.P6913612032575921126

/-! ## A324702.P2139119848074124298

`abs(A324703(Δ[n²]-n)-1)`
-/

namespace A324702.P2139119848074124298
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A324703 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) - (n : ℤ)).toNat - 1|

end

end A324702.P2139119848074124298

/-! ## A324702.P1848729759901084643

`A023443(A324703(n+1))`
-/

namespace A324702.P1848729759901084643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A324703 (n + 1)).toNat

end

end A324702.P1848729759901084643

/-! ## A324702.P9492397199015044693

`record[A324703(A065648(n))-1]`
-/

namespace A324702.P9492397199015044693
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324703 (A065648 n).toNat - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A324702.P9492397199015044693

/-! ## A324702.P1231703748501802281

`record[A324703(A126759(n))-1]`
-/

namespace A324702.P1231703748501802281
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324703 (A126759 n).toNat - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A324702.P1231703748501802281

/-!
# A324703: Lexicographically earliest sequence containing 3 and all positive integers n such that the prime indices of n - 1 already belong to the sequence.

The programs for A324703, there is no canonical definition to state claims against.
-/

/-! ## A324703.P16380044667568148413

`A324702(n+1)+1`
-/

namespace A324703.P16380044667568148413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324702 (n + 1) + 1

end

end A324703.P16380044667568148413

/-! ## A324703.P11254648395792674065

`A020725(A324702(n+1))`
-/

namespace A324703.P11254648395792674065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (A324702 (n + 1)).toNat

end

end A324703.P11254648395792674065

/-! ## A324703.P15812291072506769802

`A338283(A047663(n+1))`
-/

namespace A324703.P15812291072506769802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338283 (A047663 (n + 1)).toNat

end

end A324703.P15812291072506769802

/-!
# A324704: Lexicographically earliest sequence containing 1 and all numbers > 2 divisible by prime(m) for some m already in the sequence.

The programs for A324704, there is no canonical definition to state claims against.
-/

/-! ## A324704.P6836247250233974548

`comp[A324698(n+1)-1]+1`
-/

namespace A324704.P6836247250233974548
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324698 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A324704.P6836247250233974548

/-! ## A324704.P3602109716401339386

`comp[A023443(A324698(n+1))]+1`
-/

namespace A324704.P3602109716401339386
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A324698 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A324704.P3602109716401339386

/-! ## A324704.P3394601326829180165

`comp[A015600(n)*A324698(n+1)]`
-/

namespace A324704.P3394601326829180165
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015600 n * A324698 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A324704.P3394601326829180165

/-! ## A324704.P16548932362144105883

`eq[char[A324698(n+1)], A151878(n)]`
-/

namespace A324704.P16548932362144105883
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324698 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151878 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A324704.P16548932362144105883

/-! ## A324704.P2124892153871567628

`eq[char[A324698(n+1)], A151933(n)]`
-/

namespace A324704.P2124892153871567628
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324698 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151933 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A324704.P2124892153871567628

/-! ## A324704.P18237054921307806470

`comp[A324698(n+1)%A324705(3*n+1)]`
-/

namespace A324704.P18237054921307806470
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A324698 (n + 1)) (A324705 (3 * n + 1))

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A324704.P18237054921307806470

/-! ## A324704.P7067213231981534132

`comp[A324698(A334081(n+1))%(12*n+1)]`
-/

namespace A324704.P7067213231981534132
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A324698 (A334081 (n + 1)).toNat) (12 * n + 1 : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A324704.P7067213231981534132

/-! ## A324704.P9555244186398694134

`comp[A324698(A331910(n+1))%A000466(n)]`
-/

namespace A324704.P9555244186398694134
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A324698 (A331910 (n + 1)).toNat) (A000466 n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A324704.P9555244186398694134

/-!
# A324705: Lexicographically earliest sequence containing 1 and all composite numbers divisible by prime(m) for some m already in the sequence.

The programs for A324705, there is no canonical definition to state claims against.
-/

/-! ## A324705.P5073005415284097899

`comp[A324697(n+1)-1]+1`
-/

namespace A324705.P5073005415284097899
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324697 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A324705.P5073005415284097899

/-! ## A324705.P15200788866921426593

`comp[A324697(round((n+1)/exp(γ)))%(12*n+1)]`
-/

namespace A324705.P15200788866921426593
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A324697 (SequenceMachineLib.roundAway ((n + 1 : ℝ) / Real.exp Real.eulerMascheroniConstant)).toNat) (12 * n + 1 : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A324705.P15200788866921426593

/-! ## A324705.P6889601378132123494

`comp[A023443(A324697(n+1))]+1`
-/

namespace A324705.P6889601378132123494
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A324697 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A324705.P6889601378132123494

/-! ## A324705.P16585932251513404381

`comp[∪[A129836(n+1), A324697(n+1)]]`
-/

namespace A324705.P16585932251513404381
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129836 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324697 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f2 j = (x : ℤ)) ∨ ∃ j, f3 j = (x : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A324705.P16585932251513404381

/-! ## A324705.P14207309404671467625

`comp[A057427(n)*A324697(A334081(n+1))]`
-/

namespace A324705.P14207309404671467625
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n * A324697 (A334081 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A324705.P14207309404671467625

/-! ## A324705.P563588018621416235

`eq[char[A324697(n+1)], A151933(n)]`
-/

namespace A324705.P563588018621416235
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324697 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151933 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A324705.P563588018621416235

/-!
# A324706: The sum of the tri-unitary divisors of n.

The programs for A324706, there is no canonical definition to state claims against.
-/

/-! ## A324706.P9547685122323988576

`A118759(and(A049417(n+1), A331110(n+1)))`
-/

namespace A324706.P9547685122323988576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118759 (Int.land (A049417 (n + 1)) (A331110 (n + 1))).toNat

end

end A324706.P9547685122323988576

/-! ## A324706.P13486821035469655124

`A216455(and(A049417(n+1), A331110(n+1)))`
-/

namespace A324706.P13486821035469655124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216455 (Int.land (A049417 (n + 1)) (A331110 (n + 1))).toNat

end

end A324706.P13486821035469655124

/-! ## A324706.P3450582980501701141

`A000196(and(A049417(n+1), A331110(n+1))²)`
-/

namespace A324706.P3450582980501701141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (Int.land (A049417 (n + 1)) (A331110 (n + 1)) ^ 2).toNat

end

end A324706.P3450582980501701141

/-! ## A324706.P3000774139403048544

`A120423(and(A049417(n+1), A331110(n+1))²)`
-/

namespace A324706.P3000774139403048544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120423 (Int.land (A049417 (n + 1)) (A331110 (n + 1)) ^ 2).toNat

end

end A324706.P3000774139403048544

/-! ## A324706.P16159164915553236682

`A000267(and(A049417(n+1), A331110(n+1))²)/2`
-/

namespace A324706.P16159164915553236682
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000267 (Int.land (A049417 (n + 1)) (A331110 (n + 1)) ^ 2).toNat : ℚ) / 2

end

end A324706.P16159164915553236682

/-!
# A324708: Lesser of tri-unitary amicable numbers pair: numbers (m, n) such that tsigma(m) = tsigma(n) = m + n, where tsigma(n) is the sum of the tri-unitary divisors of n (A324706).

The programs for A324708, there is no canonical definition to state claims against.
-/

/-! ## A324708.P8991303080563181988

`A126169(lt[A275174(n), A004722(3*n)])`
-/

namespace A324708.P8991303080563181988
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275174 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004722 (3 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126169 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A324708.P8991303080563181988

/-! ## A324708.P17922192004505094003

`filter[A126169(n+1), A131695(#)]`
-/

namespace A324708.P17922192004505094003
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126169 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A131695 (f1 j).toNat = 1) n)

end

end A324708.P17922192004505094003

/-! ## A324708.P13236951076200650948

`A126169(A227549(comp[floor(4^n/3)]))`
-/

namespace A324708.P13236951076200650948
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(4 ^ n : ℚ) / 3⌋

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126169 (A227549 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)).toNat

end

end A324708.P13236951076200650948

/-! ## A324708.P8892128258231887107

`A324706(A324709(n+1))-A324709(n+1)`
-/

namespace A324708.P8892128258231887107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324706 (A324709 (n + 1)).toNat - A324709 (n + 1)

end

end A324708.P8892128258231887107

/-!
# A324709: Larger of tri-unitary amicable numbers pair: numbers (m, n) such that tsigma(m) = tsigma(n) = m + n, where tsigma(n) is the sum of the tri-unitary divisors of n (A324706).

The programs for A324709, there is no canonical definition to state claims against.
-/

/-! ## A324709.P11715697063486263198

`A324706(A324708(n+1))-A324708(n+1)`
-/

namespace A324709.P11715697063486263198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324706 (A324708 (n + 1)).toNat - A324708 (n + 1)

end

end A324709.P11715697063486263198

/-! ## A324709.P17161380161031111364

`A126170(and(A057612(n+1), A242410(n+1)))`
-/

namespace A324709.P17161380161031111364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126170 (Int.land (A057612 (n + 1)) (A242410 (n + 1))).toNat

end

end A324709.P17161380161031111364

/-! ## A324709.P10359654562529661321

`A126170(∩[A032559(n+1), A242410(n+1)])`
-/

namespace A324709.P10359654562529661321
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032559 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242410 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126170 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n)

end

end A324709.P10359654562529661321

/-!
# A324712: Xor-Moebius transform of A323243, where A323243(n) = sigma(A156552(n)).

The programs for A324712, there is no canonical definition to state claims against.
-/

/-! ## A324712.P17093421626182927105

`xor(A324717(n+1), A324821(n+1))`
-/

namespace A324712.P17093421626182927105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A324717 (n + 1)) (A324821 (n + 1))

end

end A324712.P17093421626182927105

/-! ## A324712.P12620124262795058939

`xor(A297106(n+1), A324714(n+1))`
-/

namespace A324712.P12620124262795058939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A297106 (n + 1)) (A324714 (n + 1))

end

end A324712.P12620124262795058939

/-! ## A324712.P10859427592340422022

`xor(2*A297106(n+1), A324715(n+1))`
-/

namespace A324712.P10859427592340422022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (2 * A297106 (n + 1)) (A324715 (n + 1))

end

end A324712.P10859427592340422022

/-! ## A324712.P11898112525458645993

`xor(A297106(A003961(n+1)), A324715(n+1))`
-/

namespace A324712.P11898112525458645993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A297106 (A003961 (n + 1)).toNat) (A324715 (n + 1))

end

end A324712.P11898112525458645993

/-! ## A324712.P15189192825330950907

`xor(A005843(A297106(n+1)), A324715(n+1))`
-/

namespace A324712.P15189192825330950907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A005843 (A297106 (n + 1)).toNat) (A324715 (n + 1))

end

end A324712.P15189192825330950907

/-!
# A324713: a(n) = 2*A156552(n) XOR A323243(n).

The programs for A324713, there is no canonical definition to state claims against.
-/

/-! ## A324713.P6824609405954757165

`A324819(n+1)-A324815(n+1)`
-/

namespace A324713.P6824609405954757165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324819 (n + 1) - A324815 (n + 1)

end

end A324713.P6824609405954757165

/-! ## A324713.P756682309251254744

`xor(2*A156552(n+1), A323243(n+1))`
-/

namespace A324713.P756682309251254744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (2 * A156552 (n + 1)) (A323243 (n + 1))

end

end A324713.P756682309251254744

/-! ## A324713.P16570712765468051097

`A323243(n+1)+A324716(n+1)-A324815(n+1)`
-/

namespace A324713.P16570712765468051097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323243 (n + 1) + (A324716 (n + 1) - A324815 (n + 1))

end

end A324713.P16570712765468051097

/-! ## A324713.P18021951616297240721

`xor(A323244(n+1)+A323243(n+1), A323243(n+1))`
-/

namespace A324713.P18021951616297240721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A323244 (n + 1) + A323243 (n + 1)) (A323243 (n + 1))

end

end A324713.P18021951616297240721

/-! ## A324713.P16229037650102309954

`xor(A324815(n+1)%A000225(n+1), A324819(n+1))`
-/

namespace A324713.P16229037650102309954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (Int.tmod (A324815 (n + 1)) (A000225 (n + 1))) (A324819 (n + 1))

end

end A324713.P16229037650102309954

/-! ## A324713.P1749201152834101241

`xor(A156552(A003961(n+1)), A323243(n+1))`
-/

namespace A324713.P1749201152834101241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A156552 (A003961 (n + 1)).toNat) (A323243 (n + 1))

end

end A324713.P1749201152834101241

/-!
# A324714: a(n) = A297106(n) XOR A324712(n).

The programs for A324714, there is no canonical definition to state claims against.
-/

/-! ## A324714.P12507803101040465101

`xor(A297106(n+1), A324712(n+1))`
-/

namespace A324714.P12507803101040465101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A297106 (n + 1)) (A324712 (n + 1))

end

end A324714.P12507803101040465101

/-!
# A324715: Xor-Moebius transform of A324713.

The programs for A324715, there is no canonical definition to state claims against.
-/

/-! ## A324715.P17690104613040792407

`xor(A324820(n+1), A324821(n+1))`
-/

namespace A324715.P17690104613040792407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A324820 (n + 1)) (A324821 (n + 1))

end

end A324715.P17690104613040792407

/-! ## A324715.P8726282549958828861

`xor(2*A297106(n+1), A324712(n+1))`
-/

namespace A324715.P8726282549958828861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (2 * A297106 (n + 1)) (A324712 (n + 1))

end

end A324715.P8726282549958828861

/-! ## A324715.P8819640026343001002

`xor(A297106(A003961(n+1)), A324712(n+1))`
-/

namespace A324715.P8819640026343001002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A297106 (A003961 (n + 1)).toNat) (A324712 (n + 1))

end

end A324715.P8819640026343001002

/-! ## A324715.P8109142353352576275

`xor(A005843(A297106(n+1)), A324712(n+1))`
-/

namespace A324715.P8109142353352576275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A005843 (A297106 (n + 1)).toNat) (A324712 (n + 1))

end

end A324715.P8109142353352576275

/-! ## A324715.P11776691531229265350

`xor(A297106(A253560(n+1)), A324712(n+1))`
-/

namespace A324715.P11776691531229265350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A297106 (A253560 (n + 1)).toNat) (A324712 (n + 1))

end

end A324715.P11776691531229265350

/-!
# A324716: a(n) = 2*A156552(n) - bitand(2*A156552(n), A323243(n)), where bitand is bitwise-AND, A004198.

The programs for A324716, there is no canonical definition to state claims against.
-/

/-! ## A324716.P9816671761201723641

`2*A156552(n+1)-A324815(n+1)`
-/

namespace A324716.P9816671761201723641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A156552 (n + 1) - A324815 (n + 1)

end

end A324716.P9816671761201723641

/-! ## A324716.P16428629784922205110

`A324819(n+1)-A323243(n+1)`
-/

namespace A324716.P16428629784922205110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324819 (n + 1) - A323243 (n + 1)

end

end A324716.P16428629784922205110

/-! ## A324716.P11043372892460026112

`and(2*A156552(n+1), A324713(n+1))`
-/

namespace A324716.P11043372892460026112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (2 * A156552 (n + 1)) (A324713 (n + 1))

end

end A324716.P11043372892460026112

/-! ## A324716.P8892634965913466014

`A324819(n+1)-(A324865(n+1)+A156552(n+1))`
-/

namespace A324716.P8892634965913466014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324819 (n + 1) - (A324865 (n + 1) + A156552 (n + 1))

end

end A324716.P8892634965913466014

/-! ## A324716.P4799581213035948501

`or(A323243(n+1), A324713(n+1))-A323243(n+1)`
-/

namespace A324716.P4799581213035948501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A323243 (n + 1)) (A324713 (n + 1)) - A323243 (n + 1)

end

end A324716.P4799581213035948501

/-! ## A324716.P9062118263090835428

`xor(A323243(n+1)%A000225(n+1), A324819(n+1))`
-/

namespace A324716.P9062118263090835428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (Int.tmod (A323243 (n + 1)) (A000225 (n + 1))) (A324819 (n + 1))

end

end A324716.P9062118263090835428

/-!
# A324717: Xor-Moebius transform of A324716, where A324716(n) = bitxor(2*A156552(n), bitand(2*A156552(n), A323243(n))).

The programs for A324717, there is no canonical definition to state claims against.
-/

/-! ## A324717.P17709552355449367828

`xor(A324712(n+1), A324821(n+1))`
-/

namespace A324717.P17709552355449367828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A324712 (n + 1)) (A324821 (n + 1))

end

end A324717.P17709552355449367828

/-! ## A324717.P3107878726242301130

`xor(2*A297106(n+1), A324820(n+1))`
-/

namespace A324717.P3107878726242301130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (2 * A297106 (n + 1)) (A324820 (n + 1))

end

end A324717.P3107878726242301130

/-! ## A324717.P4579842110101577592

`xor(A297106(A003961(n+1)), A324820(n+1))`
-/

namespace A324717.P4579842110101577592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A297106 (A003961 (n + 1)).toNat) (A324820 (n + 1))

end

end A324717.P4579842110101577592

/-! ## A324717.P7785769852447633154

`xor(A005843(A297106(n+1)), A324820(n+1))`
-/

namespace A324717.P7785769852447633154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A005843 (A297106 (n + 1)).toNat) (A324820 (n + 1))

end

end A324717.P7785769852447633154

/-! ## A324717.P8735770814299107480

`xor(A297106(A253560(n+1)), A324820(n+1))`
-/

namespace A324717.P8735770814299107480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A297106 (A253560 (n + 1)).toNat) (A324820 (n + 1))

end

end A324717.P8735770814299107480

/-!
# A324718: Odd numbers n for which bitand(2n,sigma(n)) = 2*bitand(n,sigma(n)-n), where bitand is bitwise-AND, A004198.

The programs for A324718, the canonical program `A324718.P17421159723006763235` is in `Seq.B008.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A324718 has offset 1).

The definition of A324718 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5879 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A324718.P17421159723006763235

`A324639(eq[1, A324639(n+1)%2]+1)`

The canonical program, it is in `Seq.B008.C001`.
-/

namespace A324718

/-- `A324639(eq[1, A324639(n+1)%2]+1)` -/
def P17421159723006763235.Spec : Prop :=
  ∀ n, P17421159723006763235.a n = A324718 (n + 1)

theorem P17421159723006763235.correct : P17421159723006763235.Spec := by
  intro n
  simp only [A324718, Nat.add_sub_cancel]

end A324718

/-! ## A324718.P273989095426622486

`record[A000265(A324639(n+1))]`
-/

namespace A324718.P273989095426622486
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A324639 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A324718.P273989095426622486

namespace A324718

/-- `record[A000265(A324639(n+1))]` -/
def P273989095426622486.Spec : Prop :=
  ∀ n, P273989095426622486.a n = A324718 (n + 1)

end A324718

/-! ## A324718.P3504083097014824961

`filter[A324639(n+1), A374134(#)]`
-/

namespace A324718.P3504083097014824961
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324639 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A374134 (f1 j).toNat = 1) n)

end

end A324718.P3504083097014824961

namespace A324718

/-- `filter[A324639(n+1), A374134(#)]` -/
def P3504083097014824961.Spec : Prop :=
  ∀ n, P3504083097014824961.a n = A324718 (n + 1)

end A324718

/-! ## A324718.P10077183659450590434

`∩[A057653(n+1), A324639(n+1)]`
-/

namespace A324718.P10077183659450590434
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057653 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324639 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A324718.P10077183659450590434

namespace A324718

/-- `∩[A057653(n+1), A324639(n+1)]` -/
def P10077183659450590434.Spec : Prop :=
  ∀ n, (P10077183659450590434.a n : ℤ) = A324718 (n + 1)

end A324718

/-! ## A324718.P17418102564206400907

`∩[A324639(n+1), A016813(n)]`
-/

namespace A324718.P17418102564206400907
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324639 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016813 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A324718.P17418102564206400907

namespace A324718

/-- `∩[A324639(n+1), A016813(n)]` -/
def P17418102564206400907.Spec : Prop :=
  ∀ n, (P17418102564206400907.a n : ℤ) = A324718 (n + 1)

end A324718

/-! ## A324718.P7184596589924081991

`∩[A047478(n+1), A324639(n+1)]`
-/

namespace A324718.P7184596589924081991
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047478 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324639 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A324718.P7184596589924081991

namespace A324718

/-- `∩[A047478(n+1), A324639(n+1)]` -/
def P7184596589924081991.Spec : Prop :=
  ∀ n, (P7184596589924081991.a n : ℤ) = A324718 (n + 1)

end A324718

/-! ## A324718.P3821431596996271522

`∩[A047623(n+1), A324639(n+1)]`
-/

namespace A324718.P3821431596996271522
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047623 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324639 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A324718.P3821431596996271522

namespace A324718

/-- `∩[A047623(n+1), A324639(n+1)]` -/
def P3821431596996271522.Spec : Prop :=
  ∀ n, (P3821431596996271522.a n : ℤ) = A324718 (n + 1)

end A324718

/-! ## A324718.P16848859155199640496

`∩[A079523(n+1), A324639(n+1)]`
-/

namespace A324718.P16848859155199640496
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079523 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324639 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A324718.P16848859155199640496

namespace A324718

/-- `∩[A079523(n+1), A324639(n+1)]` -/
def P16848859155199640496.Spec : Prop :=
  ∀ n, (P16848859155199640496.a n : ℤ) = A324718 (n + 1)

end A324718

/-! ## A324718.P17669695186399532043

`∩[A324639(n+1), A326835(n+1)]`
-/

namespace A324718.P17669695186399532043
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324639 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326835 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A324718.P17669695186399532043

namespace A324718

/-- `∩[A324639(n+1), A326835(n+1)]` -/
def P17669695186399532043.Spec : Prop :=
  ∀ n, (P17669695186399532043.a n : ℤ) = A324718 (n + 1)

end A324718

/-! ## A324718.P1793221301261926205

`∩[A089684(n+1), A324639(n+1)]`
-/

namespace A324718.P1793221301261926205
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089684 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324639 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A324718.P1793221301261926205

namespace A324718

/-- `∩[A089684(n+1), A324639(n+1)]` -/
def P1793221301261926205.Spec : Prop :=
  ∀ n, (P1793221301261926205.a n : ℤ) = A324718 (n + 1)

end A324718

/-! ## A324718.P6543655404938394628

`record[A093178(A324639(n+2))]`
-/

namespace A324718.P6543655404938394628
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093178 (A324639 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A324718.P6543655404938394628

namespace A324718

/-- `record[A093178(A324639(n+2))]` -/
def P6543655404938394628.Spec : Prop :=
  ∀ n, P6543655404938394628.a n = A324718 (n + 1)

end A324718

/-! ## A324718.P419174552660406054

`record[A009001(A324639(n+3))]`
-/

namespace A324718.P419174552660406054
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009001 (A324639 (n + 3)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A324718.P419174552660406054

namespace A324718

/-- `record[A009001(A324639(n+3))]` -/
def P419174552660406054.Spec : Prop :=
  ∀ n, P419174552660406054.a n = A324718 (n + 1)

end A324718

/-! ## A324718.P1423954447751686506

`∩[A324639(n+1), A004273(n)]`
-/

namespace A324718.P1423954447751686506
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324639 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A324718.P1423954447751686506

namespace A324718

/-- `∩[A324639(n+1), A004273(n)]` -/
def P1423954447751686506.Spec : Prop :=
  ∀ n, (P1423954447751686506.a n : ℤ) = A324718 (n + 1)

end A324718

/-! ## A324718.P350839639692509252

`∩[A324639(n+1), A005408(n)]`
-/

namespace A324718.P350839639692509252
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324639 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A324718.P350839639692509252

namespace A324718

/-- `∩[A324639(n+1), A005408(n)]` -/
def P350839639692509252.Spec : Prop :=
  ∀ n, (P350839639692509252.a n : ℤ) = A324718 (n + 1)

end A324718

/-! ## A324718.P15465490050426614676

`∩[A324639(n+1), A060747(n)]`
-/

namespace A324718.P15465490050426614676
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324639 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060747 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A324718.P15465490050426614676

namespace A324718

/-- `∩[A324639(n+1), A060747(n)]` -/
def P15465490050426614676.Spec : Prop :=
  ∀ n, (P15465490050426614676.a n : ℤ) = A324718 (n + 1)

end A324718

/-! ## A324718.P17279003997979313131

`A005408(record[A249122(A324639(n+1))])`
-/

namespace A324718.P17279003997979313131
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249122 (A324639 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A324718.P17279003997979313131

namespace A324718

/-- `A005408(record[A249122(A324639(n+1))])` -/
def P17279003997979313131.Spec : Prop :=
  ∀ n, P17279003997979313131.a n = A324718 (n + 1)

end A324718

/-!
# A324719: Odd numbers n for which bitor(2n,sigma(n)) = 2*bitor(n,sigma(n)-n), where bitor is bitwise-OR, A003986.

The programs for A324719, there is no canonical definition to state claims against.
-/

/-! ## A324719.P15164054489580027617

`A158185(A140759(n+1))`
-/

namespace A324719.P15164054489580027617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158185 (A140759 (n + 1)).toNat

end

end A324719.P15164054489580027617

/-! ## A324719.P9268766262938060642

`A353578(lt[A350126(n), 4]+1)`
-/

namespace A324719.P9268766262938060642
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350126 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353578 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1)

end

end A324719.P9268766262938060642

/-! ## A324719.P4954787988224454538

`record[or(A154363(n+1), A313543(n))]`
-/

namespace A324719.P4954787988224454538
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A154363 (n + 1)) (A313543 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A324719.P4954787988224454538

/-! ## A324719.P10184766329070986688

`∩[A295020(n+1), A353578(n+1)]`
-/

namespace A324719.P10184766329070986688
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295020 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353578 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A324719.P10184766329070986688

/-! ## A324719.P1234768180525698930

`record[or(A293646(n+1), A341660(n+1))]`
-/

namespace A324719.P1234768180525698930
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A293646 (n + 1)) (A341660 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A324719.P1234768180525698930

/-!
# A324720: Positions of nonnegative terms in A323244; numbers n for which 2*A156552(n) >= A323243(n).

The programs for A324720, there is no canonical definition to state claims against.
-/

/-! ## A324720.P9113963514179001635

`eq[0, A324731(n+1)]+1`
-/

namespace A324720.P9113963514179001635
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324731 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A324720.P9113963514179001635

/-! ## A324720.P13757711461820386576

`comp[A000027(n+1)*A324731(n+1)]`
-/

namespace A324720.P13757711461820386576
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (n + 1) * A324731 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A324720.P13757711461820386576

/-! ## A324720.P14731008046051916220

`record[gcd(n+1, A000203(n+1)*A324731(n+1))]`
-/

namespace A324720.P14731008046051916220
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A000203 (n + 1) * A324731 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A324720.P14731008046051916220

/-! ## A324720.P7522244906921754472

`eq[A000007(n), A324731(A028310(n))]`
-/

namespace A324720.P7522244906921754472
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324731 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A324720.P7522244906921754472

/-! ## A324720.P18013574477998400172

`A000720(p?[A324731(n+1)+A000040(n+1)])`
-/

namespace A324720.P18013574477998400172
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324731 (n + 1) + A000040 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A324720.P18013574477998400172

/-! ## A324720.P1400627472051601144

`record[A323244(n*A324731(n+1)+1)+n+1]`
-/

namespace A324720.P1400627472051601144
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323244 ((n : ℤ) * A324731 (n + 1) + 1).toNat + (n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A324720.P1400627472051601144

/-! ## A324720.P5765811721913774935

`lt[1, A323244(n+1)+2]+1`
-/

namespace A324720.P5765811721913774935
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323244 (n + 1) + 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A324720.P5765811721913774935

/-! ## A324720.P3957864783213807980

`lt[A324731(n+1), A014963(A324726(n+1))²]+1`
-/

namespace A324720.P3957864783213807980
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324731 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A324726 (n + 1)).toNat ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A324720.P3957864783213807980

/-! ## A324720.P11192037230559622143

`record[A324731(A253146(n+1))+A253146(n+1)]`
-/

namespace A324720.P11192037230559622143
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324731 (A253146 (n + 1)).toNat + A253146 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A324720.P11192037230559622143

/-! ## A324720.P14373369837622458012

`lt[A324731(n+1), A014963(A324723(n+1))²]+1`
-/

namespace A324720.P14373369837622458012
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324731 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A324723 (n + 1)).toNat ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A324720.P14373369837622458012

/-!
# A324721: Positions of positive terms in A323244; numbers n for which 2*A156552(n) > A323243(n).

The programs for A324721, there is no canonical definition to state claims against.
-/

/-! ## A324721.P9841286148450284748

`filter[n+1, A324732(#)]`
-/

namespace A324721.P9841286148450284748
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A324732 (f1 j) = 1) n)

end

end A324721.P9841286148450284748

/-! ## A324721.P11263181994247414774

`eq[1, A324732(n+1)]+1`
-/

namespace A324721.P11263181994247414774
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324732 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A324721.P11263181994247414774

/-! ## A324721.P17617975749866316862

`record[2*A324732(n+2)+n]`
-/

namespace A324721.P17617975749866316862
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A324732 (n + 2) + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A324721.P17617975749866316862

/-! ## A324721.P5175226912678194721

`eq[1, A324732(A028310(n))]`
-/

namespace A324721.P5175226912678194721
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324732 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A324721.P5175226912678194721

/-! ## A324721.P14917840484468333810

`A020725(eq[1, A324732(n+1)])`
-/

namespace A324721.P14917840484468333810
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324732 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A324721.P14917840484468333810

/-! ## A324721.P8233260576918481011

`lt[1, A323244(n+1)+1]+1`
-/

namespace A324721.P8233260576918481011
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323244 (n + 1) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A324721.P8233260576918481011

/-! ## A324721.P13641648259210516908

`lt[A324865(n+1), A156552(n+1)]+1`
-/

namespace A324721.P13641648259210516908
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324865 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156552 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A324721.P13641648259210516908

/-!
# A324722: Numbers k such that A324658(A156552(k)) is zero.

The programs for A324722, there is no canonical definition to state claims against.
-/

/-! ## A324722.P13721899898244036550

`lt[A324716(n+2), 1]+2`
-/

namespace A324722.P13721899898244036550
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324716 (n + 2)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 2

end

end A324722.P13721899898244036550

/-! ## A324722.P7735785097440727149

`eq[A000007(n), A324716(n+1)]+1`
-/

namespace A324722.P7735785097440727149
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324716 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A324722.P7735785097440727149

/-! ## A324722.P9971155829853953898

`eq[A036987(n), A324716(n+1)]+1`
-/

namespace A324722.P9971155829853953898
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036987 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324716 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A324722.P9971155829853953898

/-! ## A324722.P226713374392595344

`A004442(eq[A000007(n), A324716(n+1)])`
-/

namespace A324722.P226713374392595344
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324716 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004442 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A324722.P226713374392595344

/-! ## A324722.P27313689147449356

`A131738(eq[A000007(n), A324716(n+1)])`
-/

namespace A324722.P27313689147449356
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324716 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131738 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A324722.P27313689147449356

/-! ## A324722.P776478069206997392

`A165998(eq[A000007(n), A324716(n+1)])`
-/

namespace A324722.P776478069206997392
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324716 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165998 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A324722.P776478069206997392

/-! ## A324722.P8735852537187002014

`A131738(eq[A036987(n), A324716(n+1)])`
-/

namespace A324722.P8735852537187002014
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036987 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324716 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131738 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A324722.P8735852537187002014

/-! ## A324722.P14816739058670908276

`eq[0, A324716(A233583(n+1))]`
-/

namespace A324722.P14816739058670908276
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324716 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A324722.P14816739058670908276

/-!
# A324724: a(n) = A001511(A324712(n)), with a(n) = 0 if A324712(n) = 0.

The programs for A324724, there is no canonical definition to state claims against.
-/

/-! ## A324724.P17280061731140144040

`∑{d}[A324712(n+1), A209229(#)]`
-/

namespace A324724.P17280061731140144040
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324712 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A209229 d

end

end A324724.P17280061731140144040

/-! ## A324724.P2824096795347576393

`A327491(2*A324712(n+1))`
-/

namespace A324724.P2824096795347576393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327491 (2 * A324712 (n + 1)).toNat

end

end A324724.P2824096795347576393

/-! ## A324724.P14275283639230753779

`A089263(12*A324712(n+1))`
-/

namespace A324724.P14275283639230753779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089263 (12 * A324712 (n + 1)).toNat

end

end A324724.P14275283639230753779

/-! ## A324724.P16304870319981725325

`A089263(12*xor(A297106(n+1), A324714(n+1)))`
-/

namespace A324724.P16304870319981725325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089263 (12 * Int.xor (A297106 (n + 1)) (A324714 (n + 1))).toNat

end

end A324724.P16304870319981725325

/-! ## A324724.P16088200723160351270

`A089263(12*xor(A324717(n+1), A324821(n+1)))`
-/

namespace A324724.P16088200723160351270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089263 (12 * Int.xor (A324717 (n + 1)) (A324821 (n + 1))).toNat

end

end A324724.P16088200723160351270

/-!
# A324725: a(n) = sign(A324543(n)) * A001511(A324543(n)), with a(n) = 0 if A324543(n) = 0.

The programs for A324725, there is no canonical definition to state claims against.
-/

/-! ## A324725.P8147418042729549910

`gcd(A002412(A050410(n)), A003056(n))`
-/

namespace A324725.P8147418042729549910
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002412 (A050410 n).toNat) (A003056 n)

end

end A324725.P8147418042729549910

/-! ## A324725.P3055440159951183646

`gcd(A055120(A001296(n)), A169894(n))`
-/

namespace A324725.P3055440159951183646
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A055120 (A001296 n).toNat) (A169894 n)

end

end A324725.P3055440159951183646

/-! ## A324725.P6071110487438522592

`A051903(A054343(n)-A010051(n+1))`
-/

namespace A324725.P6071110487438522592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051903 (A054343 n - A010051 (n + 1)).toNat

end

end A324725.P6071110487438522592

/-! ## A324725.P8459709950273819622

`A327804(A008458(n)-A026238(n+2))`
-/

namespace A324725.P8459709950273819622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327804 (A008458 n - A026238 (n + 2)).toNat

end

end A324725.P8459709950273819622

/-! ## A324725.P4436604027248216981

`A053032(A020701(n))%A336311(n+1)`
-/

namespace A324725.P4436604027248216981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A053032 (A020701 n).toNat) (A336311 (n + 1))

end

end A324725.P4436604027248216981

/-!
# A324726: Numbers k such that 2*k is equal to 2*k OR sigma(k), where OR is bitwise-or, A003986, and sigma is the sum of divisors function.

The programs for A324726, the canonical program `A324726.P9824168674270206015` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A324726 has offset 1).

The definition of A324726 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1334 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A324726.P9824168674270206015

`eq[2*(n+1), A318466(n+1)]+1`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A324726

/-- `eq[2*(n+1), A318466(n+1)]+1` -/
def P9824168674270206015.Spec : Prop :=
  ∀ n, (P9824168674270206015.a n : ℤ) = A324726 (n + 1)

theorem P9824168674270206015.correct : P9824168674270206015.Spec := by
  intro n
  simp only [A324726, Nat.add_sub_cancel]

end A324726

/-! ## A324726.P6432447761323079166

`eq[A000203(n+1), A318468(n+1)]+1`
-/

namespace A324726.P6432447761323079166
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318468 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A324726.P6432447761323079166

namespace A324726

/-- `eq[A000203(n+1), A318468(n+1)]+1` -/
def P6432447761323079166.Spec : Prop :=
  ∀ n, (P6432447761323079166.a n : ℤ) = A324726 (n + 1)

end A324726

/-! ## A324726.P10578415335486572524

`eq[A033879(n+1), A318467(n+1)]+1`
-/

namespace A324726.P10578415335486572524
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033879 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318467 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A324726.P10578415335486572524

namespace A324726

/-- `eq[A033879(n+1), A318467(n+1)]+1` -/
def P10578415335486572524.Spec : Prop :=
  ∀ n, (P10578415335486572524.a n : ℤ) = A324726 (n + 1)

end A324726

/-! ## A324726.P12681258168851616476

`eq[2*n, A318466(A028310(n))]`
-/

namespace A324726.P12681258168851616476
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318466 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A324726.P12681258168851616476

namespace A324726

/-- `eq[2*n, A318466(A028310(n))]` -/
def P12681258168851616476.Spec : Prop :=
  ∀ n, (P12681258168851616476.a n : ℤ) = A324726 (n + 1)

end A324726

/-! ## A324726.P7177523346013732508

`eq[2*n, A318466(A233583(n+1))]`
-/

namespace A324726.P7177523346013732508
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318466 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A324726.P7177523346013732508

namespace A324726

/-- `eq[2*n, A318466(A233583(n+1))]` -/
def P7177523346013732508.Spec : Prop :=
  ∀ n, (P7177523346013732508.a n : ℤ) = A324726 (n + 1)

end A324726

/-! ## A324726.P11993119831895298590

`eq[1, A005843(n)/A318466(A233583(n+1))]`
-/

namespace A324726.P11993119831895298590
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A005843 n : ℚ) / (A318466 (A233583 (n + 1)).toNat : ℚ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℚ) = f2 j) n

end

end A324726.P11993119831895298590

namespace A324726

/-- `eq[1, A005843(n)/A318466(A233583(n+1))]` -/
def P11993119831895298590.Spec : Prop :=
  ∀ n, (P11993119831895298590.a n : ℤ) = A324726 (n + 1)

end A324726

/-!
# A324727: Odd numbers such that 2n is equal to A318466(n), bitor(2*n,sigma(n)), where bitor is A003986.

The programs for A324727, the canonical program `A324727.P4614541480028550780` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A324727 has offset 1).

The definition of A324727 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A324727.P4614541480028550780

`A324726(eq[1, A324726(n+1)%2]+1)`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A324727

/-- `A324726(eq[1, A324726(n+1)%2]+1)` -/
def P4614541480028550780.Spec : Prop :=
  ∀ n, P4614541480028550780.a n = A324727 (n + 1)

theorem P4614541480028550780.correct : P4614541480028550780.Spec := by
  intro n
  simp only [A324727, Nat.add_sub_cancel]

end A324727

/-! ## A324727.P10286766213256855253

`A324726(eq[1, and(1, A324726(n+1))]+1)`
-/

namespace A324727.P10286766213256855253
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A324726 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324726 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A324727.P10286766213256855253

namespace A324727

/-- `A324726(eq[1, and(1, A324726(n+1))]+1)` -/
def P10286766213256855253.Spec : Prop :=
  ∀ n, P10286766213256855253.a n = A324727 (n + 1)

end A324727

/-! ## A324727.P17651108828157713921

`record[A000265(A324726(n+1))]`
-/

namespace A324727.P17651108828157713921
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A324726 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A324727.P17651108828157713921

namespace A324727

/-- `record[A000265(A324726(n+1))]` -/
def P17651108828157713921.Spec : Prop :=
  ∀ n, P17651108828157713921.a n = A324727 (n + 1)

end A324727

/-! ## A324727.P1290717029336314262

`filter[A324726(n+1), A374474(#)]`
-/

namespace A324727.P1290717029336314262
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324726 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A374474 (f1 j).toNat = 1) n)

end

end A324727.P1290717029336314262

namespace A324727

/-- `filter[A324726(n+1), A374474(#)]` -/
def P1290717029336314262.Spec : Prop :=
  ∀ n, P1290717029336314262.a n = A324727 (n + 1)

end A324727

/-! ## A324727.P9893929915597360550

`filter[A324726(n+1), A379952(#)]`
-/

namespace A324727.P9893929915597360550
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324726 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A379952 (f1 j).toNat = 1) n)

end

end A324727.P9893929915597360550

namespace A324727

/-- `filter[A324726(n+1), A379952(#)]` -/
def P9893929915597360550.Spec : Prop :=
  ∀ n, P9893929915597360550.a n = A324727 (n + 1)

end A324727

/-! ## A324727.P13034754496759057684

`filter[A324726(n+1), A323158(#)]`
-/

namespace A324727.P13034754496759057684
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324726 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323158 (f1 j).toNat = 1) n)

end

end A324727.P13034754496759057684

namespace A324727

/-- `filter[A324726(n+1), A323158(#)]` -/
def P13034754496759057684.Spec : Prop :=
  ∀ n, P13034754496759057684.a n = A324727 (n + 1)

end A324727

/-! ## A324727.P5728677626541383567

`filter[A324726(n+1), A324908(#)]`
-/

namespace A324727.P5728677626541383567
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324726 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A324908 (f1 j).toNat = 1) n)

end

end A324727.P5728677626541383567

namespace A324727

/-- `filter[A324726(n+1), A324908(#)]` -/
def P5728677626541383567.Spec : Prop :=
  ∀ n, P5728677626541383567.a n = A324727 (n + 1)

end A324727

/-! ## A324727.P17307891338860853683

`∩[A324726(n+1), A374475(n+1)]`
-/

namespace A324727.P17307891338860853683
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324726 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374475 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A324727.P17307891338860853683

namespace A324727

/-- `∩[A324726(n+1), A374475(n+1)]` -/
def P17307891338860853683.Spec : Prop :=
  ∀ n, (P17307891338860853683.a n : ℤ) = A324727 (n + 1)

end A324727

/-! ## A324727.P12959487765276690457

`∩[A088828(n+1), A324726(n+1)]`
-/

namespace A324727.P12959487765276690457
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088828 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324726 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A324727.P12959487765276690457

namespace A324727

/-- `∩[A088828(n+1), A324726(n+1)]` -/
def P12959487765276690457.Spec : Prop :=
  ∀ n, (P12959487765276690457.a n : ℤ) = A324727 (n + 1)

end A324727

/-! ## A324727.P17609693061791406761

`∩[A305635(n+1), A324726(n+1)]`
-/

namespace A324727.P17609693061791406761
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305635 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324726 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A324727.P17609693061791406761

namespace A324727

/-- `∩[A305635(n+1), A324726(n+1)]` -/
def P17609693061791406761.Spec : Prop :=
  ∀ n, (P17609693061791406761.a n : ℤ) = A324727 (n + 1)

end A324727

/-! ## A324727.P2369774023419513392

`∩[A324726(n+1), A004273(n)]`
-/

namespace A324727.P2369774023419513392
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324726 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A324727.P2369774023419513392

namespace A324727

/-- `∩[A324726(n+1), A004273(n)]` -/
def P2369774023419513392.Spec : Prop :=
  ∀ n, (P2369774023419513392.a n : ℤ) = A324727 (n + 1)

end A324727

/-! ## A324727.P11613216005709278069

`∩[A324726(n+1), A004274(n)]`
-/

namespace A324727.P11613216005709278069
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324726 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004274 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A324727.P11613216005709278069

namespace A324727

/-- `∩[A324726(n+1), A004274(n)]` -/
def P11613216005709278069.Spec : Prop :=
  ∀ n, (P11613216005709278069.a n : ℤ) = A324727 (n + 1)

end A324727

/-! ## A324727.P10857554052556147902

`∩[A324726(n+1), A004281(n)]`
-/

namespace A324727.P10857554052556147902
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324726 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004281 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A324727.P10857554052556147902

namespace A324727

/-- `∩[A324726(n+1), A004281(n)]` -/
def P10857554052556147902.Spec : Prop :=
  ∀ n, (P10857554052556147902.a n : ℤ) = A324727 (n + 1)

end A324727

/-! ## A324727.P2015251176259342511

`∩[A324726(n+1), A060747(n)]`
-/

namespace A324727.P2015251176259342511
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324726 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060747 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A324727.P2015251176259342511

namespace A324727

/-- `∩[A324726(n+1), A060747(n)]` -/
def P2015251176259342511.Spec : Prop :=
  ∀ n, (P2015251176259342511.a n : ℤ) = A324727 (n + 1)

end A324727

/-! ## A324727.P13186202432871286992

`∩[A004280(n+1), A324726(n+1)]`
-/

namespace A324727.P13186202432871286992
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004280 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324726 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A324727.P13186202432871286992

namespace A324727

/-- `∩[A004280(n+1), A324726(n+1)]` -/
def P13186202432871286992.Spec : Prop :=
  ∀ n, (P13186202432871286992.a n : ℤ) = A324727 (n + 1)

end A324727

/-! ## A324727.P9726439842044831300

`∩[A005818(n+1), A324726(n+1)]`
-/

namespace A324727.P9726439842044831300
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005818 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324726 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A324727.P9726439842044831300

namespace A324727

/-- `∩[A005818(n+1), A324726(n+1)]` -/
def P9726439842044831300.Spec : Prop :=
  ∀ n, (P9726439842044831300.a n : ℤ) = A324727 (n + 1)

end A324727

/-! ## A324727.P3215898554141070102

`∩[A144396(n+1), A324726(n+1)]`
-/

namespace A324727.P3215898554141070102
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144396 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324726 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A324727.P3215898554141070102

namespace A324727

/-- `∩[A144396(n+1), A324726(n+1)]` -/
def P3215898554141070102.Spec : Prop :=
  ∀ n, (P3215898554141070102.a n : ℤ) = A324727 (n + 1)

end A324727

/-! ## A324727.P17722196099695500052

`∩[A324726(n+1), A004276(n)]`
-/

namespace A324727.P17722196099695500052
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324726 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004276 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A324727.P17722196099695500052

namespace A324727

/-- `∩[A324726(n+1), A004276(n)]` -/
def P17722196099695500052.Spec : Prop :=
  ∀ n, (P17722196099695500052.a n : ℤ) = A324727 (n + 1)

end A324727

/-!
# A324728: Binary length of A324712: a(n) = 0 if A324712(n) = 0, otherwise a(n) = 1+A000523(A324712(n)).

The programs for A324728, there is no canonical definition to state claims against.
-/

/-! ## A324728.P4266263879376743558

`A324811(n+1)+A061395(n+1)`
-/

namespace A324728.P4266263879376743558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324811 (n + 1) + A061395 (n + 1)

end

end A324728.P4266263879376743558

/-! ## A324728.P12190409422236176170

`A324829(n+1)+A324735(n+1)`
-/

namespace A324728.P12190409422236176170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324829 (n + 1) + A324735 (n + 1)

end

end A324728.P12190409422236176170

/-! ## A324728.P16564266633644717081

`A324811(n+1)+1-A243291(n+1)+n`
-/

namespace A324728.P16564266633644717081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324811 (n + 1) + (1 - A243291 (n + 1) + (n : ℤ))

end

end A324728.P16564266633644717081

/-! ## A324728.P6000553620908342757

`A324811(n+1)+A065770(A007947(n+1))`
-/

namespace A324728.P6000553620908342757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324811 (n + 1) + A065770 (A007947 (n + 1)).toNat

end

end A324728.P6000553620908342757

/-! ## A324728.P606334439172357272

`A324811(n+1)+A055396(A053585(n+1))`
-/

namespace A324728.P606334439172357272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324811 (n + 1) + A055396 (A053585 (n + 1)).toNat

end

end A324728.P606334439172357272

/-! ## A324728.P18087303912360942312

`A324811(n+1)+A065770(A088835(n+1))`
-/

namespace A324728.P18087303912360942312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324811 (n + 1) + A065770 (A088835 (n + 1)).toNat

end

end A324728.P18087303912360942312

/-! ## A324728.P8094760497442196771

`A324733(n+1)+A324735(n+1)-A324734(n+1)`
-/

namespace A324728.P8094760497442196771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324733 (n + 1) + (A324735 (n + 1) - A324734 (n + 1))

end

end A324728.P8094760497442196771

/-! ## A324728.P3890261612363356982

`ceil(log2(A324712(n+1)+1))`
-/

namespace A324728.P3890261612363356982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.logb 2 (A324712 (n + 1) + 1 : ℝ)⌉

end

end A324728.P3890261612363356982

/-!
# A324729: a(n) = A000120(A323243(n)).

The programs for A324729, there is no canonical definition to state claims against.
-/

/-! ## A324729.P12545294521122979165

`A000120(A323243(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A324729.P12545294521122979165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A323243 (n + 1)).toNat

end

end A324729.P12545294521122979165

/-! ## A324729.P18041074387545219439

`A324829(n+1)-A324730(n+1)`
-/

namespace A324729.P18041074387545219439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324829 (n + 1) - A324730 (n + 1)

end

end A324729.P18041074387545219439

/-! ## A324729.P3384612560469021701

`A324728(n+1)-(A324735(n+1)+A324730(n+1))`
-/

namespace A324729.P3384612560469021701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324728 (n + 1) - (A324735 (n + 1) + A324730 (n + 1))

end

end A324729.P3384612560469021701

/-! ## A324729.P7913662685791949876

`A324733(n+1)-(A324734(n+1)+A324730(n+1))`
-/

namespace A324729.P7913662685791949876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324733 (n + 1) - (A324734 (n + 1) + A324730 (n + 1))

end

end A324729.P7913662685791949876

/-! ## A324729.P7546289283321564723

`A061395(n+1)+A324811(n+1)-A324735(n+1)-A324730(n+1)`
-/

namespace A324729.P7546289283321564723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (n + 1) + (A324811 (n + 1) - A324735 (n + 1)) - A324730 (n + 1)

end

end A324729.P7546289283321564723

/-! ## A324729.P13670055953487941718

`∑{e}[A332223(n+1), #]`
-/

namespace A324729.P13670055953487941718
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332223 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A324729.P13670055953487941718

/-! ## A324729.P7358459470394974487

`∑{e}[∑{d}[n+1, A332463(#)], #]`
-/

namespace A324729.P7358459470394974487
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n), A332463 d

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A324729.P7358459470394974487

/-! ## A324729.P17096494262719321222

`log2(∏{e}[A332223(n+1), A000079(#)])`
-/

namespace A324729.P17096494262719321222
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332223 (n + 1)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 ((∏ p ∈ Nat.primeFactors (f1 n).natAbs, A000079 (Nat.factorization (f1 n).natAbs p) : ℤ) : ℝ)

end

end A324729.P17096494262719321222

/-! ## A324729.P17858953570065911805

`A001222(A332223(n+1))`
-/

namespace A324729.P17858953570065911805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A332223 (n + 1)).toNat

end

end A324729.P17858953570065911805

/-! ## A324729.P14575534507255614633

`A001222(∑{d}[n+1, A332463(#)])`
-/

namespace A324729.P14575534507255614633
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (∑ d ∈ Nat.divisors (f1 n), A332463 d).toNat

end

end A324729.P14575534507255614633

/-!
# A324730: Difference between the binary weight of A323243 and the binary weight of its Xor Moebius transform (negated).

The programs for A324730, there is no canonical definition to state claims against.
-/

/-! ## A324730.P2659177505498734384

`A324829(n+1)-A324729(n+1)`
-/

namespace A324730.P2659177505498734384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324829 (n + 1) - A324729 (n + 1)

end

end A324730.P2659177505498734384

/-! ## A324730.P1824703812979769806

`A324829(n+1)+A057428(n)*A324729(n+1)`
-/

namespace A324730.P1824703812979769806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324829 (n + 1) + A057428 n * A324729 (n + 1)

end

end A324730.P1824703812979769806

/-! ## A324730.P8172720068368487794

`A324728(n+1)-(A324735(n+1)+A324729(n+1))`
-/

namespace A324730.P8172720068368487794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324728 (n + 1) - (A324735 (n + 1) + A324729 (n + 1))

end

end A324730.P8172720068368487794

/-! ## A324730.P1234856399212022409

`A324733(n+1)-(A324734(n+1)+A324729(n+1))`
-/

namespace A324730.P1234856399212022409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324733 (n + 1) - (A324734 (n + 1) + A324729 (n + 1))

end

end A324730.P1234856399212022409

/-! ## A324730.P5374752828406012498

`A324829(n+1)-∑{e}[A332223(n+1), #]`
-/

namespace A324730.P5374752828406012498
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332223 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324829 (n + 1) - ((∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p : ℕ) : ℤ)

end

end A324730.P5374752828406012498

/-! ## A324730.P17689580933303529429

`A324733(n+1)-A324734(n+1)-∑{e}[A332223(n+1), #]`
-/

namespace A324730.P17689580933303529429
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332223 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324733 (n + 1) - A324734 (n + 1) - ((∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p : ℕ) : ℤ)

end

end A324730.P17689580933303529429

/-! ## A324730.P1192766578639533773

`A324829(n+1)-A001222(A332223(n+1))`
-/

namespace A324730.P1192766578639533773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324829 (n + 1) - A001222 (A332223 (n + 1)).toNat

end

end A324730.P1192766578639533773

/-!
# A324731: Characteristic function of A324551: a(n) = 1 if 2*A156552(n) < A323243(n), and 0 otherwise.

The programs for A324731, there is no canonical definition to state claims against.
-/

/-! ## A324731.P16112835905026553873

`dr(floor(A324115(n+1)/(A156552(n+1)+1)))`
-/

namespace A324731.P16112835905026553873
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot ⌊(A324115 (n + 1) : ℚ) / (A156552 (n + 1) + 1 : ℚ)⌋

end

end A324731.P16112835905026553873

/-! ## A324731.P13510480103683663390

`dr(floor(A323244(n+1)/(A323247(n+1)+1)))`
-/

namespace A324731.P13510480103683663390
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot ⌊(A323244 (n + 1) : ℚ) / (A323247 (n + 1) + 1 : ℚ)⌋

end

end A324731.P13510480103683663390

/-! ## A324731.P10420476170861233914

`dr(floor(A324115(n+1)/(A323247(n+1)+1)))`
-/

namespace A324731.P10420476170861233914
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot ⌊(A324115 (n + 1) : ℚ) / (A323247 (n + 1) + 1 : ℚ)⌋

end

end A324731.P10420476170861233914

/-! ## A324731.P5624990461878408881

`floor(A323243(n+1)/A156552(2*(n+1)))`
-/

namespace A324731.P5624990461878408881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A323243 (n + 1) : ℚ) / (A156552 (2 * (n + 1)) : ℚ)⌋

end

end A324731.P5624990461878408881

/-! ## A324731.P4204845071428723014

`round(A324865(n+1)/A156552(2*(n+1)))`
-/

namespace A324731.P4204845071428723014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A324865 (n + 1) : ℚ) / (A156552 (2 * (n + 1)) : ℚ))

end

end A324731.P4204845071428723014

/-! ## A324731.P12270784898725264303

`and(A289769(n), A323244(n+1))/A289769(n)`
-/

namespace A324731.P12270784898725264303
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.land (A289769 n) (A323244 (n + 1)) : ℚ) / (A289769 n : ℚ)

end

end A324731.P12270784898725264303

/-! ## A324731.P4628949202714683357

`A285136(A053213(n+2))`
-/

namespace A324731.P4628949202714683357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285136 (A053213 (n + 2)).toNat

end

end A324731.P4628949202714683357

/-!
# A324732: Characteristic function of A324721: a(n) = 1 if 2*A156552(n) > A323243(n), and 0 otherwise.

The programs for A324732, there is no canonical definition to state claims against.
-/

/-! ## A324732.P6859288878377600181

`char[A324721(n+1)-1]`
-/

namespace A324732.P6859288878377600181
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324721 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A324732.P6859288878377600181

/-! ## A324732.P11007500825746455390

`ceil(A324817(n+1)/(n+1))`
-/

namespace A324732.P11007500825746455390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A324817 (n + 1) : ℚ) / (n + 1 : ℚ)⌉

end

end A324732.P11007500825746455390

/-! ## A324732.P18438020376500372707

`A002487(ceil(A323244(n+1)%(n+1)/(n+1)))`
-/

namespace A324732.P18438020376500372707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002487 ⌈(Int.tmod (A323244 (n + 1)) (n + 1 : ℤ) : ℚ) / (n + 1 : ℚ)⌉.toNat

end

end A324732.P18438020376500372707

/-! ## A324732.P17421656931977958645

`ceil(A323244(n+1)/(A323247(n+1)+1))`
-/

namespace A324732.P17421656931977958645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A323244 (n + 1) : ℚ) / (A323247 (n + 1) + 1 : ℚ)⌉

end

end A324732.P17421656931977958645

/-! ## A324732.P40259338775621532

`round(A156552(n+1)/(A323243(n+1)+1))`
-/

namespace A324732.P40259338775621532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A156552 (n + 1) : ℚ) / (A323243 (n + 1) + 1 : ℚ))

end

end A324732.P40259338775621532

/-! ## A324732.P4669633505080559821

`ceil(A329642(n+1)/(A019274(n+1)+1))`
-/

namespace A324732.P4669633505080559821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A329642 (n + 1) : ℚ) / (A019274 (n + 1) + 1 : ℚ)⌉

end

end A324732.P4669633505080559821

/-! ## A324732.P10254625254615592019

`A329642(ceil(A329642(n+1)/A234530(n+1))+1)`
-/

namespace A324732.P10254625254615592019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329642 (⌈(A329642 (n + 1) : ℚ) / (A234530 (n + 1) : ℚ)⌉ + 1).toNat

end

end A324732.P10254625254615592019

/-!
# A324733: a(n) = 0 if A324712(n) = 0, otherwise a(n) = 1 + A000523(A324712(n)) - A007814(A324712(n)).

The programs for A324733, there is no canonical definition to state claims against.
-/

/-! ## A324733.P7393000708473861819

`A324829(n+1)+A324734(n+1)`
-/

namespace A324733.P7393000708473861819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324829 (n + 1) + A324734 (n + 1)

end

end A324733.P7393000708473861819

/-! ## A324733.P12853504740222908804

`A324729(n+1)+A324734(n+1)+A324730(n+1)`
-/

namespace A324733.P12853504740222908804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324729 (n + 1) + (A324734 (n + 1) + A324730 (n + 1))

end

end A324733.P12853504740222908804

/-! ## A324733.P16235690680981450263

`A324728(n+1)+A324734(n+1)-A324735(n+1)`
-/

namespace A324733.P16235690680981450263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324728 (n + 1) + (A324734 (n + 1) - A324735 (n + 1))

end

end A324733.P16235690680981450263

/-! ## A324733.P10552700037149195631

`A324734(n+1)+A061395(n+1)+A324811(n+1)-A324735(n+1)`
-/

namespace A324733.P10552700037149195631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324734 (n + 1) + (A061395 (n + 1) + (A324811 (n + 1) - A324735 (n + 1)))

end

end A324733.P10552700037149195631

/-! ## A324733.P10523209211825410639

`A324730(n+1)+A324734(n+1)+A001222(A332223(n+1))`
-/

namespace A324733.P10523209211825410639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324730 (n + 1) + (A324734 (n + 1) + A001222 (A332223 (n + 1)).toNat)

end

end A324733.P10523209211825410639

/-!
# A324734: Number of 0-bits present between the most and the least significant 1-bits in A324712(n), and 0 if A324712(n) = 0; a(n) = A324733(n) - A324829(n).

The programs for A324734, there is no canonical definition to state claims against.
-/

/-! ## A324734.P13036840814226990873

`A324733(n+1)-A324829(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A324734.P13036840814226990873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324733 (n + 1) - A324829 (n + 1)

end

end A324734.P13036840814226990873

/-! ## A324734.P1916064476470166841

`A324733(n+1)-(A324730(n+1)+A324729(n+1))`
-/

namespace A324734.P1916064476470166841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324733 (n + 1) - (A324730 (n + 1) + A324729 (n + 1))

end

end A324734.P1916064476470166841

/-! ## A324734.P10617453975873129164

`A324733(n+1)+A324735(n+1)-A324728(n+1)`
-/

namespace A324734.P10617453975873129164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324733 (n + 1) + (A324735 (n + 1) - A324728 (n + 1))

end

end A324734.P10617453975873129164

/-! ## A324734.P14940857951984202180

`A324733(n+1)-(A324730(n+1)+A001222(A332223(n+1)))`
-/

namespace A324734.P14940857951984202180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324733 (n + 1) - (A324730 (n + 1) + A001222 (A332223 (n + 1)).toNat)

end

end A324734.P14940857951984202180

/-! ## A324734.P12092838259405627696

`A086784(A324712(n+1))`
-/

namespace A324734.P12092838259405627696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086784 (A324712 (n + 1)).toNat

end

end A324734.P12092838259405627696

/-!
# A324735: Difference between the binary length and the binary weight of A324712. a(n) = 0 if A324712(n) = 0.

The programs for A324735, there is no canonical definition to state claims against.
-/

/-! ## A324735.P7637636377726056573

`A324728(n+1)-A324829(n+1)`
-/

namespace A324735.P7637636377726056573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324728 (n + 1) - A324829 (n + 1)

end

end A324735.P7637636377726056573

/-! ## A324735.P16713580167834781035

`A324728(n+1)-(A324730(n+1)+A324729(n+1))`
-/

namespace A324735.P16713580167834781035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324728 (n + 1) - (A324730 (n + 1) + A324729 (n + 1))

end

end A324735.P16713580167834781035

/-! ## A324735.P13335429921231984050

`A324728(n+1)+A324734(n+1)-A324733(n+1)`
-/

namespace A324735.P13335429921231984050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324728 (n + 1) + (A324734 (n + 1) - A324733 (n + 1))

end

end A324735.P13335429921231984050

/-! ## A324735.P15934389646009864054

`A065770(A088835(n+1))+A324811(n+1)-A324829(n+1)`
-/

namespace A324735.P15934389646009864054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065770 (A088835 (n + 1)).toNat + (A324811 (n + 1) - A324829 (n + 1))

end

end A324735.P15934389646009864054

/-! ## A324735.P1580875749539020738

`ceil(log2(A324712(n+1)+1))-A324829(n+1)`
-/

namespace A324735.P1580875749539020738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.logb 2 (A324712 (n + 1) + 1 : ℝ)⌉ - A324829 (n + 1)

end

end A324735.P1580875749539020738

/-! ## A324735.P12118132932012885061

`A080791(A066247(n+1)*A324712(n+1))`
-/

namespace A324735.P12118132932012885061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080791 (A066247 (n + 1) * A324712 (n + 1)).toNat

end

end A324735.P12118132932012885061

/-! ## A324735.P11875563227197492030

`A324728(n+1)-(A324730(n+1)+A001222(A332223(n+1)))`
-/

namespace A324735.P11875563227197492030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324728 (n + 1) - (A324730 (n + 1) + A001222 (A332223 (n + 1)).toNat)

end

end A324735.P11875563227197492030

/-!
# A324736: Number of subsets of {1...n} containing all prime indices of the elements.

The programs for A324736, there is no canonical definition to state claims against.
-/

/-! ## A324736.P14475548929615939833

`record[A112632(∑[A089949(n)])]`
-/

namespace A324736.P14475548929615939833
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089949 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112632 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A324736.P14475548929615939833

/-! ## A324736.P8418727794633906134

`A126630(A126683(n+1))+n`
-/

namespace A324736.P8418727794633906134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126630 (A126683 (n + 1)).toNat + (n : ℤ)

end

end A324736.P8418727794633906134

/-! ## A324736.P13305928104421152663

`A367410(A055389(n)+n+1)`
-/

namespace A324736.P13305928104421152663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367410 (A055389 n + (n + 1 : ℤ)).toNat

end

end A324736.P13305928104421152663

/-! ## A324736.P10135302198592279718

`lt[n, A165252(A153210(n+1))]`
-/

namespace A324736.P10135302198592279718
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165252 (A153210 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A324736.P10135302198592279718

/-! ## A324736.P15394511937634813052

`A330878(A097133(n)+A004396(n))`
-/

namespace A324736.P15394511937634813052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330878 (A097133 n + A004396 n).toNat

end

end A324736.P15394511937634813052

/-!
# A324737: Number of subsets of {2...n} containing every element of {2...n} whose prime indices all belong to the subset.

The programs for A324737, there is no canonical definition to state claims against.
-/

/-! ## A324737.P958384475009766197

`A390309(A308546(n))`
-/

namespace A324737.P958384475009766197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390309 (A308546 n).toNat

end

end A324737.P958384475009766197

/-! ## A324737.P8677271791323808020

`A114149(A280303(n+1))`
-/

namespace A324737.P8677271791323808020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114149 (A280303 (n + 1)).toNat

end

end A324737.P8677271791323808020

/-! ## A324737.P13924081720681106433

`eq[A051712(n+1), A327519(n+1)]`
-/

namespace A324737.P13924081720681106433
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051712 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327519 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A324737.P13924081720681106433

/-! ## A324737.P11731165754398530390

`A026741(n)+A000194(A088218(n))`
-/

namespace A324737.P11731165754398530390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 n + A000194 (A088218 n).toNat

end

end A324737.P11731165754398530390

/-! ## A324737.P17402660640412209800

`A000005(A098558(n)/A003114(n))`
-/

namespace A324737.P17402660640412209800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (SequenceMachineLib.roundAway ((A098558 n : ℚ) / (A003114 n : ℚ))).toNat

end

end A324737.P17402660640412209800

/-!
# A324738: Number of subsets of {1...n} containing no element > 1 whose prime indices all belong to the subset.

The programs for A324738, there is no canonical definition to state claims against.
-/

/-! ## A324738.P12552822933933620872

`A328216(A003064(n))`
-/

namespace A324738.P12552822933933620872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328216 (A003064 n).toNat

end

end A324738.P12552822933933620872

/-! ## A324738.P10353133083163807253

`A328216(A115617(n))`
-/

namespace A324738.P10353133083163807253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328216 (A115617 n).toNat

end

end A324738.P10353133083163807253

/-! ## A324738.P5608405793691608113

`A287618(A052529(n)+∑[n])`
-/

namespace A324738.P5608405793691608113
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287618 (A052529 n + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)).toNat

end

end A324738.P5608405793691608113

/-! ## A324738.P9506890690173855853

`A327475(n)-A323014(A350354(n))`
-/

namespace A324738.P9506890690173855853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327475 n - A323014 (A350354 n).toNat

end

end A324738.P9506890690173855853

/-! ## A324738.P10046076163540852859

`A335469(A335471(n))+A136691(n+1)`
-/

namespace A324738.P10046076163540852859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335469 (A335471 n).toNat + A136691 (n + 1)

end

end A324738.P10046076163540852859

/-!
# A324740: Number of simple graphs on n unlabeled nodes with maximum degree exactly 2.

The programs for A324740, there is no canonical definition to state claims against.
-/

/-! ## A324740.P6848177418954768632

`A003292(n+1)-A008619(n+1)`
-/

namespace A324740.P6848177418954768632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003292 (n + 1) - A008619 (n + 1)

end

end A324740.P6848177418954768632

/-! ## A324740.P13394907465553725546

`∑[A186417(n+1)-and(1, n)]`
-/

namespace A324740.P13394907465553725546
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186417 (n + 1) - (Nat.land 1 n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A324740.P13394907465553725546

/-! ## A324740.P15130075436567353336

`A003292(n+1)-A080513(n)`
-/

namespace A324740.P15130075436567353336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003292 (n + 1) - A080513 n

end

end A324740.P15130075436567353336

/-! ## A324740.P17690899093675004542

`A003292(n+1)-A004526(n+3)`
-/

namespace A324740.P17690899093675004542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003292 (n + 1) - A004526 (n + 3)

end

end A324740.P17690899093675004542

/-! ## A324740.P16821717509045726644

`A003292(n+1)+A001057(2*A008619(n+1))`
-/

namespace A324740.P16821717509045726644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003292 (n + 1) + A001057 (2 * A008619 (n + 1)).toNat

end

end A324740.P16821717509045726644

/-!
# A324741: Number of subsets of {1...n} containing no prime indices of the elements.

The programs for A324741, there is no canonical definition to state claims against.
-/

/-! ## A324741.P13930733843034617100

`A324743(A083652(n))+A324731(A324713(3*n+4))`
-/

namespace A324741.P13930733843034617100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324743 (A083652 n).toNat + A324731 (A324713 (3 * n + 4)).toNat

end

end A324741.P13930733843034617100

/-! ## A324741.P3990112203452670799

`A331410(A059738(n))+A224704(n)`
-/

namespace A324741.P3990112203452670799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331410 (A059738 n).toNat + A224704 n

end

end A324741.P3990112203452670799

/-! ## A324741.P13476839708748728678

`A331410(A059738(n))+∑[A316356(n)]`
-/

namespace A324741.P13476839708748728678
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316356 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331410 (A059738 n).toNat + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A324741.P13476839708748728678

/-! ## A324741.P13053476138849688933

`A331410(A059738(n))+A003056(A364594(n))`
-/

namespace A324741.P13053476138849688933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331410 (A059738 n).toNat + A003056 (A364594 n).toNat

end

end A324741.P13053476138849688933

/-! ## A324741.P14415313422738005957

`A172251(a(n-1))+n-1` with `a(0)=1, a(1)=2`
-/

namespace A324741.P14415313422738005957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  A172251 (a (n - 1)).toNat + ((n : ℤ) - 1)

end

end A324741.P14415313422738005957

/-!
# A324742: Number of subsets of {2...n} containing no prime indices of the elements.

The programs for A324742, there is no canonical definition to state claims against.
-/

/-! ## A324742.P12086097134925900183

`record[A324763(or(2, n))]`
-/

namespace A324742.P12086097134925900183
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324763 (Nat.lor 2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A324742.P12086097134925900183

/-! ## A324742.P1306736212860885341

`record[A324763(abs(xor(n, -2)))]`
-/

namespace A324742.P1306736212860885341
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324763 |Int.xor (n : ℤ) (-2)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A324742.P1306736212860885341

/-! ## A324742.P16431783620078574785

`record[A324763(xor(1, n)+1)]`
-/

namespace A324742.P16431783620078574785
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324763 (Nat.xor 1 n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A324742.P16431783620078574785

/-! ## A324742.P17029917337604188635

`record[A324763(lcm(16, n)/16+1)]`
-/

namespace A324742.P17029917337604188635
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324763 (SequenceMachineLib.roundAway ((Nat.lcm 16 n : ℚ) / 16 + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A324742.P17029917337604188635

/-! ## A324742.P12387926989546323051

`record[A324763(n+1)^(n%2)]`
-/

namespace A324742.P12387926989546323051
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324763 (n + 1) ^ (n % 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A324742.P12387926989546323051

/-!
# A324745: Numbers k with exactly two distinct prime factors and such that phi(k) is a square.

The programs for A324745, the canonical program `A324745.P1964975310352198901` is in `Seq.B007.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A324745 has offset 1).

The definition of A324745 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 207 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A324745.P1964975310352198901

`∩[A007774(n+1), A039770(n+1)]`

The canonical program, it is in `Seq.B007.C001`.
-/

namespace A324745

/-- `∩[A007774(n+1), A039770(n+1)]` -/
def P1964975310352198901.Spec : Prop :=
  ∀ n, (P1964975310352198901.a n : ℤ) = A324745 (n + 1)

theorem P1964975310352198901.correct : P1964975310352198901.Spec := by
  intro n
  simp only [A324745, Nat.add_sub_cancel]

end A324745

/-! ## A324745.P55642913875618606

`filter[A039770(n+1), A215480(#)]`
-/

namespace A324745.P55642913875618606
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039770 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A215480 (f1 j).toNat = 1) n)

end

end A324745.P55642913875618606

namespace A324745

/-- `filter[A039770(n+1), A215480(#)]` -/
def P55642913875618606.Spec : Prop :=
  ∀ n, P55642913875618606.a n = A324745 (n + 1)

end A324745

/-! ## A324745.P6965110113764319232

`eq[A001221(n+1), A000122(A000010(n+1))]+1`
-/

namespace A324745.P6965110113764319232
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000122 (A000010 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A324745.P6965110113764319232

namespace A324745

/-- `eq[A001221(n+1), A000122(A000010(n+1))]+1` -/
def P6965110113764319232.Spec : Prop :=
  ∀ n, (P6965110113764319232.a n : ℤ) = A324745 (n + 1)

end A324745

/-! ## A324745.P8086046838495071520

`∩[A039770(n+1), A335080(n+1)]`
-/

namespace A324745.P8086046838495071520
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039770 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335080 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A324745.P8086046838495071520

namespace A324745

/-- `∩[A039770(n+1), A335080(n+1)]` -/
def P8086046838495071520.Spec : Prop :=
  ∀ n, (P8086046838495071520.a n : ℤ) = A324745 (n + 1)

end A324745

/-!
# A324746: Numbers k with exactly two distinct prime factors and such that phi(k) is square, when k = p^(2s+1) * q^(2t+1) with p < q primes, s,t >= 0.

The programs for A324746, there is no canonical definition to state claims against.
-/

/-! ## A324746.P11120739101451947632

`record[A350389(A324745(n+1))]`
-/

namespace A324746.P11120739101451947632
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350389 (A324745 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A324746.P11120739101451947632

/-! ## A324746.P7955999863256917590

`filter[A324745(n+1), A065043(#)]`
-/

namespace A324746.P7955999863256917590
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324745 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A065043 (f1 j).toNat = 1) n)

end

end A324746.P7955999863256917590

/-! ## A324746.P4870159420487272863

`filter[A324745(n+1), A295316(#)]`
-/

namespace A324746.P4870159420487272863
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324745 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A295316 (f1 j).toNat = 1) n)

end

end A324746.P4870159420487272863

/-! ## A324746.P10539011353886922346

`filter[A324745(n+1), A353669(#)]`
-/

namespace A324746.P10539011353886922346
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324745 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353669 (f1 j).toNat = 1) n)

end

end A324746.P10539011353886922346

/-! ## A324746.P4866021601205688539

`∩[A002035(n+1), A324745(n+1)]`
-/

namespace A324746.P4866021601205688539
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002035 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324745 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A324746.P4866021601205688539

/-!
# A324747: Numbers k with exactly two distinct prime factors and such that phi(k) is a square, when: k = p^(2s) * q^(2t+1) with s >= 1, t >= 0, p <> q primes.

The programs for A324747, there is no canonical definition to state claims against.
-/

/-! ## A324747.P10791562001117715078

`filter[A324745(n+1), A066829(#)]`
-/

namespace A324747.P10791562001117715078
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324745 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A066829 (f1 j).toNat = 1) n)

end

end A324747.P10791562001117715078

/-! ## A324747.P4877226033367993130

`filter[A324745(n+1), A358769(#)]`
-/

namespace A324747.P4877226033367993130
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324745 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A358769 (f1 j).toNat = 1) n)

end

end A324747.P4877226033367993130

/-! ## A324747.P14411152196584079043

`filter[A324745(n+1), A358770(#)]`
-/

namespace A324747.P14411152196584079043
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324745 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A358770 (f1 j).toNat = 1) n)

end

end A324747.P14411152196584079043

/-! ## A324747.P5695930881138329308

`∩[A187039(n+1), A324745(n+1)]`
-/

namespace A324747.P5695930881138329308
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187039 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324745 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A324747.P5695930881138329308

/-! ## A324747.P9002396340675710990

`∩[A228056(n+1), A324745(n+1)]`
-/

namespace A324747.P9002396340675710990
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228056 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324745 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A324747.P9002396340675710990

/-! ## A324747.P6595906578607098927

`∩[A324745(n+1), A388983(n+1)]`
-/

namespace A324747.P6595906578607098927
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324745 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A388983 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A324747.P6595906578607098927

/-! ## A324747.P1076894040450970518

`∩[A324745(n+1), A376715(n+1)]`
-/

namespace A324747.P1076894040450970518
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324745 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376715 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A324747.P1076894040450970518

/-!
# A324748: Number of strict integer partitions of n containing all prime indices of the parts.

The programs for A324748, there is no canonical definition to state claims against.
-/

/-! ## A324748.P1996140748087999683

`A093997(eq[4, A235863(n+1)])-char[8]`
-/

namespace A324748.P1996140748087999683
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235863 (n + 1)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093997 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n) - ((if ∃ j, f3 j = n then 1 else 0 : ℕ) : ℤ)

end

end A324748.P1996140748087999683

/-! ## A324748.P3017882724238949478

`A112218(n)-A316864(A151975(n))`
-/

namespace A324748.P3017882724238949478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112218 n - A316864 (A151975 n).toNat

end

end A324748.P3017882724238949478

/-! ## A324748.P18218951407217736514

`A112218(n)-A324824(A324741(n))`
-/

namespace A324748.P18218951407217736514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112218 n - A324824 (A324741 n).toNat

end

end A324748.P18218951407217736514

/-! ## A324748.P6176442392065956859

`A112218(n)%A000188(A227248(n+1))`
-/

namespace A324748.P6176442392065956859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A112218 n) (A000188 (A227248 (n + 1)).toNat)

end

end A324748.P6176442392065956859

/-! ## A324748.P14881354546121467983

`A001221(A147487(n+1)+A134269(n+1))-char[8]`
-/

namespace A324748.P14881354546121467983
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A147487 (n + 1) + A134269 (n + 1)).toNat - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A324748.P14881354546121467983

/-!
# A324756: Number of integer partitions of n containing no prime indices of the parts.

The programs for A324756, there is no canonical definition to state claims against.
-/

/-! ## A324756.P1983605464167503962

`A026810(A077168(n))+A001462(A074919(n+1))`
-/

namespace A324756.P1983605464167503962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026810 (A077168 n).toNat + A001462 (A074919 (n + 1)).toNat

end

end A324756.P1983605464167503962

/-!
# A324757: Number of integer partitions of n not containing 1 or any prime indices of the parts.

The programs for A324757, there is no canonical definition to state claims against.
-/

/-! ## A324757.P14135805109077296221

`A324755(n)-A225099(A263364(2*n+3))`
-/

namespace A324757.P14135805109077296221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324755 n - A225099 (A263364 (2 * n + 3)).toNat

end

end A324757.P14135805109077296221

/-!
# A324758: Heinz numbers of integer partitions containing no prime indices of the parts.

The programs for A324758, the canonical program `A324758.P290710550398794177` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A324758 has offset 1).

The definition of A324758 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4949 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A324758.P7456071716521094018

`record[A324932(n+1)]`
-/

namespace A324758.P7456071716521094018
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324932 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A324758.P7456071716521094018

namespace A324758

/-- `record[A324932(n+1)]` -/
def P7456071716521094018.Spec : Prop :=
  ∀ n, P7456071716521094018.a n = A324758 (n + 1)

end A324758

/-! ## A324758.P3344844296233636358

`eq[n, A324932(abs(1-n)+1)]`
-/

namespace A324758.P3344844296233636358
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324932 (|1 - (n : ℤ)| + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A324758.P3344844296233636358

namespace A324758

/-- `eq[n, A324932(abs(1-n)+1)]` -/
def P3344844296233636358.Spec : Prop :=
  ∀ n, (P3344844296233636358.a n : ℤ) = A324758 (n + 1)

end A324758

/-! ## A324758.P290710550398794177

`eq[1, gcd(n+1, A003963(n+1))]+1`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A324758

/-- `eq[1, gcd(n+1, A003963(n+1))]+1` -/
def P290710550398794177.Spec : Prop :=
  ∀ n, (P290710550398794177.a n : ℤ) = A324758 (n + 1)

theorem P290710550398794177.correct : P290710550398794177.Spec := by
  intro n
  simp only [A324758, Nat.add_sub_cancel]

end A324758

/-! ## A324758.P5490867517782739966

`record[gcd(n, A324932(A028310(n)))]`
-/

namespace A324758.P5490867517782739966
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n : ℤ) (A324932 (A028310 n).toNat)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A324758.P5490867517782739966

namespace A324758

/-- `record[gcd(n, A324932(A028310(n)))]` -/
def P5490867517782739966.Spec : Prop :=
  ∀ n, (P5490867517782739966.a n : ℤ) = A324758 (n + 1)

end A324758

/-! ## A324758.P10023348286499557895

`A324932(record[A324932(-xor(n, -1))])`
-/

namespace A324758.P10023348286499557895
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324932 (-Int.xor (n : ℤ) (-1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324932 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A324758.P10023348286499557895

namespace A324758

/-- `A324932(record[A324932(-xor(n, -1))])` -/
def P10023348286499557895.Spec : Prop :=
  ∀ n, P10023348286499557895.a n = A324758 (n + 1)

end A324758

/-! ## A324758.P14354812076730399244

`eq[A000027(n+1), A324932(n+1)]+1`
-/

namespace A324758.P14354812076730399244
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324932 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A324758.P14354812076730399244

namespace A324758

/-- `eq[A000027(n+1), A324932(n+1)]+1` -/
def P14354812076730399244.Spec : Prop :=
  ∀ n, (P14354812076730399244.a n : ℤ) = A324758 (n + 1)

end A324758

/-! ## A324758.P8930407799703723231

`eq[A003963(n+1), A324933(n+1)]+1`
-/

namespace A324758.P8930407799703723231
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003963 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324933 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A324758.P8930407799703723231

namespace A324758

/-- `eq[A003963(n+1), A324933(n+1)]+1` -/
def P8930407799703723231.Spec : Prop :=
  ∀ n, (P8930407799703723231.a n : ℤ) = A324758 (n + 1)

end A324758

/-! ## A324758.P12079829617334677834

`eq[A000005(n+1), A000005(A324932(n+1))]+1`
-/

namespace A324758.P12079829617334677834
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A324932 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A324758.P12079829617334677834

namespace A324758

/-- `eq[A000005(n+1), A000005(A324932(n+1))]+1` -/
def P12079829617334677834.Spec : Prop :=
  ∀ n, (P12079829617334677834.a n : ℤ) = A324758 (n + 1)

end A324758

/-! ## A324758.P12782271848959315439

`record[A324932(A005378(n))%or(7, n)]`
-/

namespace A324758.P12782271848959315439
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A324932 (A005378 n).toNat) (Nat.lor 7 n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A324758.P12782271848959315439

namespace A324758

/-- `record[A324932(A005378(n))%or(7, n)]` -/
def P12782271848959315439.Spec : Prop :=
  ∀ n, P12782271848959315439.a n = A324758 (n + 1)

end A324758

/-! ## A324758.P12625976991255953696

`record[A324932(A005378(n))-A063524(n)]`
-/

namespace A324758.P12625976991255953696
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324932 (A005378 n).toNat - A063524 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A324758.P12625976991255953696

namespace A324758

/-- `record[A324932(A005378(n))-A063524(n)]` -/
def P12625976991255953696.Spec : Prop :=
  ∀ n, P12625976991255953696.a n = A324758 (n + 1)

end A324758

/-!
# A324759: Heinz numbers of integer partitions containing no part > 1 whose prime indices all belong to the partition.

The programs for A324759, there is no canonical definition to state claims against.
-/

/-! ## A324759.P17673079242940976906

`∪[A324758(n+1), A331912(n+1)]`
-/

namespace A324759.P17673079242940976906
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324758 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331912 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A324759.P17673079242940976906

/-! ## A324759.P1733432907988492739

`∪[A324758(n+1), A331913(n+1)]`
-/

namespace A324759.P1733432907988492739
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324758 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331913 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A324759.P1733432907988492739

/-! ## A324759.P16183691300220403135

`∪[record[A324932(n+1)], A331912(n+1)]`
-/

namespace A324759.P16183691300220403135
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324932 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331912 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f3 j = (x : ℤ)) n

end

end A324759.P16183691300220403135

/-! ## A324759.P16507786496573069980

`A261466(lt[1, A003987(3*n+4)])`
-/

namespace A324759.P16507786496573069980
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003987 (3 * n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261466 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A324759.P16507786496573069980

/-! ## A324759.P9987897407795482228

`∩[A091010(n+1), A261466(n+1)]`
-/

namespace A324759.P9987897407795482228
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091010 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261466 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A324759.P9987897407795482228

/-!
# A324760: Heinz numbers of integer partitions not containing 1 or any part whose prime indices all belong to the partition.

The programs for A324760, there is no canonical definition to state claims against.
-/

/-! ## A324760.P5810714121371193261

`eq[4, a(A324852(n²))²]` with `a(0)=2`
-/

namespace A324760.P5810714121371193261
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℕ := SequenceMachineLib.rec [2] fun n f2 =>
  f2 (A324852 (n ^ 2)).toNat ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A324760.P5810714121371193261

/-! ## A324760.P6804209842840599460

`eq[0, A324852((n+1)²)]+1`
-/

namespace A324760.P6804209842840599460
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324852 ((n + 1) ^ 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A324760.P6804209842840599460

/-! ## A324760.P8143132283136861756

`A324846(comp[(n+1)^5-1+n])`
-/

namespace A324760.P8143132283136861756
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 5 : ℤ) - 1 + (n : ℤ)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324846 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A324760.P8143132283136861756

/-! ## A324760.P2496414700823604119

`lt[A324852(round(acot(2*n)+n)²), 1]`
-/

namespace A324760.P2496414700823604119
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324852 (SequenceMachineLib.roundAway (SequenceMachineLib.acot (2 * n : ℝ) + (n : ℝ)) ^ 2).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A324760.P2496414700823604119

/-! ## A324760.P6092755723910011910

`lt[A324852(n²+(-1)^n+1), 1]`
-/

namespace A324760.P6092755723910011910
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324852 ((n ^ 2 : ℤ) + ((-1) ^ n + 1)).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A324760.P6092755723910011910

/-! ## A324760.P15790579181073018441

`∪[A324761(n+1), A074938(n)]`
-/

namespace A324760.P15790579181073018441
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324761 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074938 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A324760.P15790579181073018441

/-! ## A324760.P5654931478338769150

`∪[A027892(n+1), A324761(n+1)]`
-/

namespace A324760.P5654931478338769150
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027892 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324761 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A324760.P5654931478338769150

/-! ## A324760.P7564521272743895018

`∪[A027897(n+1), A324761(n+1)]`
-/

namespace A324760.P7564521272743895018
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027897 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324761 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A324760.P7564521272743895018

/-! ## A324760.P9471040669487707816

`∪[A032671(n+1), A324761(n+1)]`
-/

namespace A324760.P9471040669487707816
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032671 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324761 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A324760.P9471040669487707816

/-! ## A324760.P17729565504001276062

`∪[A034808(n+1), A324761(n+1)]`
-/

namespace A324760.P17729565504001276062
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034808 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324761 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A324760.P17729565504001276062

/-!
# A324761: Heinz numbers of integer partitions not containing 1 or any prime indices of the parts.

The programs for A324761, there is no canonical definition to state claims against.
-/

/-! ## A324761.P14177034972674281992

`record[A324932(or(1, n))]`
-/

namespace A324761.P14177034972674281992
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324932 (Nat.lor 1 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A324761.P14177034972674281992

/-! ## A324761.P5698557259086613519

`record[A324932(2*n+1)]`
-/

namespace A324761.P5698557259086613519
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324932 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A324761.P5698557259086613519

/-! ## A324761.P10899787046940742136

`eq[n, A324932(xor(1, n)+1)]`
-/

namespace A324761.P10899787046940742136
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324932 (Nat.xor 1 n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A324761.P10899787046940742136

/-! ## A324761.P18203940718237958537

`eq[n, A324932(n^(n%2))]`
-/

namespace A324761.P18203940718237958537
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324932 (n ^ (n % 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A324761.P18203940718237958537

/-! ## A324761.P17760045453054479143

`sqrt(record[A324932(n+1+n)²])`
-/

namespace A324761.P17760045453054479143
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324932 (n + 1 + n) ^ 2

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℝ)

end

end A324761.P17760045453054479143

/-! ## A324761.P13517098376799559631

`eq[or(1, n), A324932(n+1)]+1`
-/

namespace A324761.P13517098376799559631
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324932 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A324761.P13517098376799559631

/-! ## A324761.P13803679015076084676

`∩[2*n+1, A324758(n+1)]`
-/

namespace A324761.P13803679015076084676
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324758 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A324761.P13803679015076084676

/-! ## A324761.P1585712086714232516

`record[A324932(abs(1-n)+1)^and(1, n)]`
-/

namespace A324761.P1585712086714232516
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324932 (|1 - (n : ℤ)| + 1).toNat ^ Nat.land 1 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A324761.P1585712086714232516

/-! ## A324761.P5311961681338646924

`record[A000265(A324932(n+1))]`
-/

namespace A324761.P5311961681338646924
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A324932 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A324761.P5311961681338646924

/-! ## A324761.P17671742705387271156

`filter[A324758(n+1), A000035(#)]`
-/

namespace A324761.P17671742705387271156
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324758 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A000035 (f1 j).toNat = 1) n)

end

end A324761.P17671742705387271156

/-!
# A324764: Number of anti-transitive rooted identity trees with n nodes.

The programs for A324764, there is no canonical definition to state claims against.
-/

/-! ## A324764.P12442268170181570676

`Δ[A257639(A155212(n)+A026898(n))]`
-/

namespace A324764.P12442268170181570676
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257639 (A155212 n + A026898 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A324764.P12442268170181570676

/-! ## A324764.P9650478437052473183

`A122584(n+1)+A102681(A256758(n))`
-/

namespace A324764.P9650478437052473183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122584 (n + 1) + A102681 (A256758 n).toNat

end

end A324764.P9650478437052473183

/-! ## A324764.P407580169396141824

`A102681(A256758(n))+A088725(A004149(n))`
-/

namespace A324764.P407580169396141824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102681 (A256758 n).toNat + A088725 (A004149 n).toNat

end

end A324764.P407580169396141824

/-! ## A324764.P10111121758826405825

`A102681(A256758(n))+A096603(A036653(n))`
-/

namespace A324764.P10111121758826405825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102681 (A256758 n).toNat + A096603 (A036653 n).toNat

end

end A324764.P10111121758826405825

/-! ## A324764.P16975080443278814297

`A107686(A068030(n))+A102681(A256758(n))`
-/

namespace A324764.P16975080443278814297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107686 (A068030 n).toNat + A102681 (A256758 n).toNat

end

end A324764.P16975080443278814297

/-!
# A324765: Number of recursively anti-transitive rooted trees with n nodes.

The programs for A324765, there is no canonical definition to state claims against.
-/

/-! ## A324765.P17366836067139179116

`A179182(A329702(n))`
-/

namespace A324765.P17366836067139179116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179182 (A329702 n).toNat

end

end A324765.P17366836067139179116

/-! ## A324765.P10034014272823488561

`A179182(A345973(n+2))`
-/

namespace A324765.P10034014272823488561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179182 (A345973 (n + 2)).toNat

end

end A324765.P10034014272823488561

/-! ## A324765.P10775233077383856731

`A089851(A115981(n))+A001405(n)`
-/

namespace A324765.P10775233077383856731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089851 (A115981 n).toNat + A001405 n

end

end A324765.P10775233077383856731

/-! ## A324765.P4962782595729809540

`A051889(or(A001333(n), A001350(n)))`
-/

namespace A324765.P4962782595729809540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051889 (Int.lor (A001333 n) (A001350 n)).toNat

end

end A324765.P4962782595729809540

/-! ## A324765.P8596591232561717338

`A051889(or(A051291(n), A096541(n)))`
-/

namespace A324765.P8596591232561717338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051889 (Int.lor (A051291 n) (A096541 n)).toNat

end

end A324765.P8596591232561717338

/-!
# A324766: Matula-Goebel numbers of recursively anti-transitive rooted trees.

The programs for A324766, there is no canonical definition to state claims against.
-/

/-! ## A324766.P5826187611166464611

`∩[A261466(n+1), A324845(n+1)]`
-/

namespace A324766.P5826187611166464611
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261466 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324845 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A324766.P5826187611166464611

/-! ## A324766.P14866795807701501545

`record[A324759(n+1)%A341352(2*n+3)]`
-/

namespace A324766.P14866795807701501545
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A324759 (n + 1)) (A341352 (2 * n + 3))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A324766.P14866795807701501545

/-! ## A324766.P16696935440843617254

`record[A324932(A003056(A181325(n)))]`
-/

namespace A324766.P16696935440843617254
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324932 (A003056 (A181325 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A324766.P16696935440843617254

/-!
# A324767: Number of recursively anti-transitive rooted identity trees with n nodes.

The programs for A324767, there is no canonical definition to state claims against.
-/

/-! ## A324767.P17273686727957794328

`A172471(round(sqrt(A322140(n))))`
-/

namespace A324767.P17273686727957794328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172471 (SequenceMachineLib.roundAway (Real.sqrt (A322140 n : ℝ))).toNat

end

end A324767.P17273686727957794328

/-! ## A324767.P14777730684521572412

`A003056(ceil(A202153(n)/(n+2)))`
-/

namespace A324767.P14777730684521572412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 ⌈(A202153 n : ℚ) / (n + 2 : ℚ)⌉.toNat

end

end A324767.P14777730684521572412

/-! ## A324767.P8895254384244105681

`or(A180049(A097592(n)), A351361(n+1))`
-/

namespace A324767.P8895254384244105681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A180049 (A097592 n).toNat) (A351361 (n + 1))

end

end A324767.P8895254384244105681

/-! ## A324767.P18087444011408149070

`A344881(A006982(n))`
-/

namespace A324767.P18087444011408149070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344881 (A006982 n).toNat

end

end A324767.P18087444011408149070

/-! ## A324767.P15046586921963784542

`A354441(A030032(n))`
-/

namespace A324767.P15046586921963784542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354441 (A030032 n).toNat

end

end A324767.P15046586921963784542

/-!
# A324768: Number of fully anti-transitive rooted trees with n nodes.

The programs for A324768, there is no canonical definition to state claims against.
-/

/-! ## A324768.P5343187806701329614

`A002076(n)+A000120(A320528(n+1))`
-/

namespace A324768.P5343187806701329614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002076 n + A000120 (A320528 (n + 1)).toNat

end

end A324768.P5343187806701329614

/-!
# A324769: Matula-Goebel numbers of fully anti-transitive rooted trees.

The programs for A324769, there is no canonical definition to state claims against.
-/

/-! ## A324769.P7575964330280424500

`record[gcd(n+1, A136135(A074591(n+1)))]`
-/

namespace A324769.P7575964330280424500
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A136135 (A074591 (n + 1)).toNat)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A324769.P7575964330280424500

/-! ## A324769.P15001420121537207347

`lt[A092976(n), A254668(A099994(2*n+1))]`
-/

namespace A324769.P15001420121537207347
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092976 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254668 (A099994 (2 * n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A324769.P15001420121537207347

/-! ## A324769.P11418783297273250350

`A014567(lt[A099884(n), A016813(n)])`
-/

namespace A324769.P11418783297273250350
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099884 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016813 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014567 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A324769.P11418783297273250350

/-! ## A324769.P11927901244749288083

`A014567(lt[A153641(n), A359912(2*n+1)])`
-/

namespace A324769.P11927901244749288083
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153641 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359912 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014567 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A324769.P11927901244749288083

/-! ## A324769.P9787777098222079623

`A014567(lt[A000931(n), A307719(3*(n+1))])`
-/

namespace A324769.P9787777098222079623
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000931 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307719 (3 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014567 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A324769.P9787777098222079623

/-!
# A324770: Number of fully anti-transitive rooted identity trees with n nodes.

The programs for A324770, there is no canonical definition to state claims against.
-/

/-! ## A324770.P18275302121532220833

`A177849(A157133(n+4))`
-/

namespace A324770.P18275302121532220833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177849 (A157133 (n + 4)).toNat

end

end A324770.P18275302121532220833

/-! ## A324770.P18076538866324029612

`ceil(A198683(n+1)/A329548(n+1))`
-/

namespace A324770.P18076538866324029612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A198683 (n + 1) : ℚ) / (A329548 (n + 1) : ℚ)⌉

end

end A324770.P18076538866324029612

/-! ## A324770.P14964702330726887906

`A105223(A183157(n)+A114297(n))`
-/

namespace A324770.P14964702330726887906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105223 (A183157 n + A114297 n).toNat

end

end A324770.P14964702330726887906

/-! ## A324770.P1759023574930189825

`A127757(lcm(A036614(n), A263159(n)))`
-/

namespace A324770.P1759023574930189825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127757 (Int.lcm (A036614 n) (A263159 n))

end

end A324770.P1759023574930189825

/-! ## A324770.P5206781157638679482

`A076437(A064236(n))`
-/

namespace A324770.P5206781157638679482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076437 (A064236 n).toNat

end

end A324770.P5206781157638679482

/-!
# A324771: Numbers divisible by at least one of their prime indices > 1.

The programs for A324771, the canonical program `A324771.P13594597293343037890` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A324771 has offset 1).

The definition of A324771 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A324771.P13594597293343037890

`lt[n%2, A324852(n+1)]+1`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A324771

/-- `lt[n%2, A324852(n+1)]+1` -/
def P13594597293343037890.Spec : Prop :=
  ∀ n, (P13594597293343037890.a n : ℤ) = A324771 (n + 1)

theorem P13594597293343037890.correct : P13594597293343037890.Spec := by
  intro n
  simp only [A324771, Nat.add_sub_cancel]

end A324771

/-! ## A324771.P3830825724673966428

`eq[char[A324849(n+1)], A000007(n)]`
-/

namespace A324771.P3830825724673966428
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324849 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A324771.P3830825724673966428

namespace A324771

/-- `eq[char[A324849(n+1)], A000007(n)]` -/
def P3830825724673966428.Spec : Prop :=
  ∀ n, (P3830825724673966428.a n : ℤ) = A324771 (n + 1)

end A324771

/-! ## A324771.P6323578675210835837

`eq[char[A324849(n+1)], A000038(n)]`
-/

namespace A324771.P6323578675210835837
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324849 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A324771.P6323578675210835837

namespace A324771

/-- `eq[char[A324849(n+1)], A000038(n)]` -/
def P6323578675210835837.Spec : Prop :=
  ∀ n, (P6323578675210835837.a n : ℤ) = A324771 (n + 1)

end A324771

/-! ## A324771.P17747645127188283094

`lt[A000035(n), A324852(n+1)]+1`
-/

namespace A324771.P17747645127188283094
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324852 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A324771.P17747645127188283094

namespace A324771

/-- `lt[A000035(n), A324852(n+1)]+1` -/
def P17747645127188283094.Spec : Prop :=
  ∀ n, (P17747645127188283094.a n : ℤ) = A324771 (n + 1)

end A324771

/-! ## A324771.P6751570829303238264

`eq[char[A324849(n+2)], A061007(2*(n+1))]`
-/

namespace A324771.P6751570829303238264
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324849 (n + 2)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061007 (2 * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A324771.P6751570829303238264

namespace A324771

/-- `eq[char[A324849(n+2)], A061007(2*(n+1))]` -/
def P6751570829303238264.Spec : Prop :=
  ∀ n, (P6751570829303238264.a n : ℤ) = A324771 (n + 1)

end A324771

/-!
# A324772: The "Octanacci" sequence: Trajectory of 0 under the morphism 0->{0,1,0}, 1->{0}.

The programs for A324772, the canonical program `A324772.P18169006912300606666` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A324772 has offset 0).

The definition of A324772 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A324772.P3118840300865049439

`1-Δ[round(n/sqrt(2))]`
-/

namespace A324772.P3118840300865049439
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((n : ℝ) / Real.sqrt (2 : ℝ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (f1 (n + 1) - f1 n)

end

end A324772.P3118840300865049439

namespace A324772

/-- `1-Δ[round(n/sqrt(2))]` -/
def P3118840300865049439.Spec : Prop :=
  ∀ n, P3118840300865049439.a n = A324772 n

end A324772

/-! ## A324772.P9024774244724098934

`xor(1, Δ[round(n/sqrt(2))])`
-/

namespace A324772.P9024774244724098934
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((n : ℝ) / Real.sqrt (2 : ℝ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (f1 (n + 1) - f1 n)

end

end A324772.P9024774244724098934

namespace A324772

/-- `xor(1, Δ[round(n/sqrt(2))])` -/
def P9024774244724098934.Spec : Prop :=
  ∀ n, P9024774244724098934.a n = A324772 n

end A324772

/-! ## A324772.P15839619867489994141

`and(1, ∪[2*n², n²])`
-/

namespace A324772.P15839619867489994141
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 1 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∨ ∃ j, f2 j = x) n)

end

end A324772.P15839619867489994141

namespace A324772

/-- `and(1, ∪[2*n², n²])` -/
def P15839619867489994141.Spec : Prop :=
  ∀ n, (P15839619867489994141.a n : ℤ) = A324772 n

end A324772

/-! ## A324772.P15432379271015291836

`log2(A106035(n))`
-/

namespace A324772.P15432379271015291836
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A106035 n : ℝ)

end

end A324772.P15432379271015291836

namespace A324772

/-- `log2(A106035(n))` -/
def P15432379271015291836.Spec : Prop :=
  ∀ n, P15432379271015291836.a n = (A324772 n : ℝ)

end A324772

/-! ## A324772.P15762347827194918016

`char[A001954(n)]`
-/

namespace A324772.P15762347827194918016
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001954 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A324772.P15762347827194918016

namespace A324772

/-- `char[A001954(n)]` -/
def P15762347827194918016.Spec : Prop :=
  ∀ n, (P15762347827194918016.a n : ℤ) = A324772 n

end A324772

/-! ## A324772.P18169006912300606666

`abs(1-A104521(n))`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A324772

/-- `abs(1-A104521(n))` -/
def P18169006912300606666.Spec : Prop :=
  ∀ n, P18169006912300606666.a n = A324772 n

theorem P18169006912300606666.correct : P18169006912300606666.Spec := by
  intro n
  simp only [A324772]

end A324772

/-! ## A324772.P12007812803262844099

`Δ[n-A049473(n)]`
-/

namespace A324772.P12007812803262844099
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A049473 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A324772.P12007812803262844099

namespace A324772

/-- `Δ[n-A049473(n)]` -/
def P12007812803262844099.Spec : Prop :=
  ∀ n, P12007812803262844099.a n = A324772 n

end A324772

/-! ## A324772.P3474639729146779804

`char[A184119(n+1)-1]`
-/

namespace A324772.P3474639729146779804
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184119 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A324772.P3474639729146779804

namespace A324772

/-- `char[A184119(n+1)-1]` -/
def P3474639729146779804.Spec : Prop :=
  ∀ n, (P3474639729146779804.a n : ℤ) = A324772 n

end A324772

/-! ## A324772.P14263979461393327167

`char[A003152(2*n+1)]`
-/

namespace A324772.P14263979461393327167
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003152 (2 * n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A324772.P14263979461393327167

namespace A324772

/-- `char[A003152(2*n+1)]` -/
def P14263979461393327167.Spec : Prop :=
  ∀ n, (P14263979461393327167.a n : ℤ) = A324772 n

end A324772

/-! ## A324772.P220629050401886018

`char[A086377(n+1)+n]`
-/

namespace A324772.P220629050401886018
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086377 (n + 1) + (n : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A324772.P220629050401886018

namespace A324772

/-- `char[A086377(n+1)+n]` -/
def P220629050401886018.Spec : Prop :=
  ∀ n, (P220629050401886018.a n : ℤ) = A324772 n

end A324772

/-! ## A324772.P4863786673364804290

`char[A080755(2*n+1)-1]`
-/

namespace A324772.P4863786673364804290
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080755 (2 * n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A324772.P4863786673364804290

namespace A324772

/-- `char[A080755(2*n+1)-1]` -/
def P4863786673364804290.Spec : Prop :=
  ∀ n, (P4863786673364804290.a n : ℤ) = A324772 n

end A324772

/-! ## A324772.P16153964825280570278

`char[A101369(2*(n+1))-1]`
-/

namespace A324772.P16153964825280570278
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101369 (2 * (n + 1)) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A324772.P16153964825280570278

namespace A324772

/-- `char[A101369(2*(n+1))-1]` -/
def P16153964825280570278.Spec : Prop :=
  ∀ n, (P16153964825280570278.a n : ℤ) = A324772 n

end A324772

/-! ## A324772.P10078936588101723669

`char[A285074(2*(n+1))-2]`
-/

namespace A324772.P10078936588101723669
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285074 (2 * (n + 1)) - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A324772.P10078936588101723669

namespace A324772

/-- `char[A285074(2*(n+1))-2]` -/
def P10078936588101723669.Spec : Prop :=
  ∀ n, (P10078936588101723669.a n : ℤ) = A324772 n

end A324772

/-! ## A324772.P4175715362854962688

`char[A285077(2*(n+1))-2]`
-/

namespace A324772.P4175715362854962688
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285077 (2 * (n + 1)) - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A324772.P4175715362854962688

namespace A324772

/-- `char[A285077(2*(n+1))-2]` -/
def P4175715362854962688.Spec : Prop :=
  ∀ n, (P4175715362854962688.a n : ℤ) = A324772 n

end A324772

/-! ## A324772.P10110057748601387696

`A059648(A026249(n+1))`
-/

namespace A324772.P10110057748601387696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059648 (A026249 (n + 1)).toNat

end

end A324772.P10110057748601387696

namespace A324772

/-- `A059648(A026249(n+1))` -/
def P10110057748601387696.Spec : Prop :=
  ∀ n, P10110057748601387696.a n = A324772 n

end A324772

/-! ## A324772.P8583882314717832679

`A000328(n)%A106035(n)`
-/

namespace A324772.P8583882314717832679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000328 n) (A106035 n)

end

end A324772.P8583882314717832679

namespace A324772

/-- `A000328(n)%A106035(n)` -/
def P8583882314717832679.Spec : Prop :=
  ∀ n, P8583882314717832679.a n = A324772 n

end A324772

/-! ## A324772.P767131757486757553

`A000466(n)%A106035(n)`
-/

namespace A324772.P767131757486757553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000466 n) (A106035 n)

end

end A324772.P767131757486757553

namespace A324772

/-- `A000466(n)%A106035(n)` -/
def P767131757486757553.Spec : Prop :=
  ∀ n, P767131757486757553.a n = A324772 n

end A324772

/-! ## A324772.P508758585533522747

`A000605(n)%A106035(n)`
-/

namespace A324772.P508758585533522747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000605 n) (A106035 n)

end

end A324772.P508758585533522747

namespace A324772

/-- `A000605(n)%A106035(n)` -/
def P508758585533522747.Spec : Prop :=
  ∀ n, P508758585533522747.a n = A324772 n

end A324772

/-! ## A324772.P16545144428703602857

`A001148(n)%A106035(n)`
-/

namespace A324772.P16545144428703602857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001148 n) (A106035 n)

end

end A324772.P16545144428703602857

namespace A324772

/-- `A001148(n)%A106035(n)` -/
def P16545144428703602857.Spec : Prop :=
  ∀ n, P16545144428703602857.a n = A324772 n

end A324772

/-!
# A324773: Partial sums of A309151.

The programs for A324773, there is no canonical definition to state claims against.
-/

/-! ## A324773.P1513779343057177786

`∑[A309151(n+1)]`
-/

namespace A324773.P1513779343057177786
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309151 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A324773.P1513779343057177786

/-! ## A324773.P13477924523115812594

`∑[A309151(2-ceil(n*sin(11)))]-1`
-/

namespace A324773.P13477924523115812594
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309151 (2 - ⌈(n : ℝ) * Real.sin (11 : ℝ)⌉).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A324773.P13477924523115812594

/-! ## A324773.P14351664694845354261

`∑[A309151(2-(ceil(sin(n)²)-n))]-1`
-/

namespace A324773.P14351664694845354261
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309151 (2 - (⌈Real.sin (n : ℝ) ^ 2⌉ - (n : ℤ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A324773.P14351664694845354261

/-! ## A324773.P2230391065770641642

`A309151(n+1)+a(A023443(n))` with `a(0)=1`
-/

namespace A324773.P2230391065770641642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A309151 (n + 1) + a (A023443 n).toNat

end

end A324773.P2230391065770641642

/-! ## A324773.P5225558839037158529

`A028310(∑[A309151(ϕ²-(ϕ-n))])`
-/

namespace A324773.P5225558839037158529
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309151 (SequenceMachineLib.roundAway (Real.goldenRatio ^ 2 - (Real.goldenRatio - (n : ℝ)))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A324773.P5225558839037158529

/-! ## A324773.P6805204967497560209

`A309151(n+1)+a(A004273(n)-n)` with `a(0)=1`
-/

namespace A324773.P6805204967497560209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A309151 (n + 1) + a (A004273 n - (n : ℤ)).toNat

end

end A324773.P6805204967497560209

/-!
# A324774: East spoke of spiral in A274641.

The programs for A324774, there is no canonical definition to state claims against.
-/

/-! ## A324774.P3568667981641145447

`A274924(n)-1`
-/

namespace A324774.P3568667981641145447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274924 n - 1

end

end A324774.P3568667981641145447

/-! ## A324774.P7587732180236678281

`A274641(n*(4*n-3))`
-/

namespace A324774.P7587732180236678281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274641 ((n : ℤ) * ((4 * n : ℤ) - 3)).toNat

end

end A324774.P7587732180236678281

/-! ## A324774.P9808656638239238545

`A275877(floor(acot(n))+2*n)-1`
-/

namespace A324774.P9808656638239238545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275877 (⌊SequenceMachineLib.acot (n : ℝ)⌋ + (2 * n : ℤ)).toNat - 1

end

end A324774.P9808656638239238545

/-! ## A324774.P10835259912026780275

`A275877(round(1/acot(n))+n)-1`
-/

namespace A324774.P10835259912026780275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275877 (SequenceMachineLib.roundAway (1 / SequenceMachineLib.acot (n : ℝ)) + (n : ℤ)).toNat - 1

end

end A324774.P10835259912026780275

/-! ## A324774.P16307120713646028331

`A275877(floor(3/acot(n))-n)-1`
-/

namespace A324774.P16307120713646028331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275877 (⌊3 / SequenceMachineLib.acot (n : ℝ)⌋ - (n : ℤ)).toNat - 1

end

end A324774.P16307120713646028331

/-! ## A324774.P14187978449923186011

`A275877(or(2*n, floor(acot(n))))-1`
-/

namespace A324774.P14187978449923186011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275877 (Int.lor (2 * n : ℤ) ⌊SequenceMachineLib.acot (n : ℝ)⌋).toNat - 1

end

end A324774.P14187978449923186011

/-! ## A324774.P12713351711147915879

`A274640(n*record[lcm(2, n)]-n)-1`
-/

namespace A324774.P12713351711147915879
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm 2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274640 (n * f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - n) - 1

end

end A324774.P12713351711147915879

/-! ## A324774.P6544507473830283201

`A023443(A274924(n))`
-/

namespace A324774.P6544507473830283201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A274924 n).toNat

end

end A324774.P6544507473830283201

/-! ## A324774.P10834242153315007689

`A023444(A274924(n)+1)`
-/

namespace A324774.P10834242153315007689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023444 (A274924 n + 1).toNat

end

end A324774.P10834242153315007689

/-! ## A324774.P14595835589503435770

`A289207(A274924(n)+1)`
-/

namespace A324774.P14595835589503435770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289207 (A274924 n + 1).toNat

end

end A324774.P14595835589503435770

/-!
# A324775: North-East spoke of spiral in A274641.

The programs for A324775, there is no canonical definition to state claims against.
-/

/-! ## A324775.P2225544153235396174

`A274925(n)-1`
-/

namespace A324775.P2225544153235396174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274925 n - 1

end

end A324775.P2225544153235396174

/-! ## A324775.P12046541914512489703

`A274641(n*record[lcm(2, n)])`
-/

namespace A324775.P12046541914512489703
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm 2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274641 (n * f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))

end

end A324775.P12046541914512489703

/-! ## A324775.P9983271523819350997

`A274641((2*n)²-2*n)`
-/

namespace A324775.P9983271523819350997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274641 ((2 * n) ^ 2 - 2 * n)

end

end A324775.P9983271523819350997

/-! ## A324775.P17648322874541408664

`A274640(2*C(2*n, 2))-1`
-/

namespace A324775.P17648322874541408664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274640 (2 * Nat.choose (2 * n) 2) - 1

end

end A324775.P17648322874541408664

/-! ## A324775.P6158151765830692170

`A274640((2*n)²-2*n)-1`
-/

namespace A324775.P6158151765830692170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274640 ((2 * n) ^ 2 - 2 * n) - 1

end

end A324775.P6158151765830692170

/-! ## A324775.P9685386365553440313

`A023443(A274925(n))`
-/

namespace A324775.P9685386365553440313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A274925 n).toNat

end

end A324775.P9685386365553440313

/-! ## A324775.P7969456794570126343

`A023444(A274925(n)+1)`
-/

namespace A324775.P7969456794570126343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023444 (A274925 n + 1).toNat

end

end A324775.P7969456794570126343

/-! ## A324775.P8601866911253973892

`A023444(2*A274925(n))/2`
-/

namespace A324775.P8601866911253973892
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A023444 (2 * A274925 n).toNat : ℚ) / 2

end

end A324775.P8601866911253973892

/-! ## A324775.P16706709516395968764

`or(char[2], A274641(2*A000384(n)))`
-/

namespace A324775.P16706709516395968764
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A274641 (2 * A000384 n).toNat)

end

end A324775.P16706709516395968764

/-! ## A324775.P16811920053545405909

`∑{d}[A274641(2*A000384(n)), A000010(#)]`
-/

namespace A324775.P16811920053545405909
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274641 (2 * A000384 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 d

end

end A324775.P16811920053545405909

/-!
# A324776: North spoke of spiral in A274641.

The programs for A324776, there is no canonical definition to state claims against.
-/

/-! ## A324776.P7882556243144004374

`A274926(n)-1`
-/

namespace A324776.P7882556243144004374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274926 n - 1

end

end A324776.P7882556243144004374

/-! ## A324776.P16881935426682291319

`A274641((2*n)²-n)`
-/

namespace A324776.P16881935426682291319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274641 ((2 * n) ^ 2 - n)

end

end A324776.P16881935426682291319

/-! ## A324776.P3399596809693408641

`A274640((2*n)²-n)-1`
-/

namespace A324776.P3399596809693408641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274640 ((2 * n) ^ 2 - n) - 1

end

end A324776.P3399596809693408641

/-! ## A324776.P6248842909728537493

`A276036(round(1/acot(n))+n)-1`
-/

namespace A324776.P6248842909728537493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276036 (SequenceMachineLib.roundAway (1 / SequenceMachineLib.acot (n : ℝ)) + (n : ℤ)).toNat - 1

end

end A324776.P6248842909728537493

/-! ## A324776.P2463621282948498477

`A276036(comp[2*(n+1)]+1)-1`
-/

namespace A324776.P2463621282948498477
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276036 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + 1) - 1

end

end A324776.P2463621282948498477

/-! ## A324776.P17254355652739708733

`A023443(A274926(n))`
-/

namespace A324776.P17254355652739708733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A274926 n).toNat

end

end A324776.P17254355652739708733

/-! ## A324776.P12462263391330619162

`A023444(A274926(n)+1)`
-/

namespace A324776.P12462263391330619162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023444 (A274926 n + 1).toNat

end

end A324776.P12462263391330619162

/-! ## A324776.P8925399131911788000

`A023444(2*A274926(n))/2`
-/

namespace A324776.P8925399131911788000
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A023444 (2 * A274926 n).toNat : ℚ) / 2

end

end A324776.P8925399131911788000

/-!
# A324777: North-West spoke of spiral in A274641.

The programs for A324777, there is no canonical definition to state claims against.
-/

/-! ## A324777.P13720569037731170439

`A274927(n)-1`
-/

namespace A324777.P13720569037731170439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274927 n - 1

end

end A324777.P13720569037731170439

/-! ## A324777.P15023972825580147384

`A274641((2*n)²)`
-/

namespace A324777.P15023972825580147384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274641 ((2 * n) ^ 2)

end

end A324777.P15023972825580147384

/-! ## A324777.P6704936188869303443

`A274640((2*n)²)-1`
-/

namespace A324777.P6704936188869303443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274640 ((2 * n) ^ 2) - 1

end

end A324777.P6704936188869303443

/-! ## A324777.P17039905366646785011

`A023443(A274927(n))`
-/

namespace A324777.P17039905366646785011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A274927 n).toNat

end

end A324777.P17039905366646785011

/-! ## A324777.P2793169229995900723

`A057427(n)*A274641(A016742(n))`
-/

namespace A324777.P2793169229995900723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n * A274641 (A016742 n).toNat

end

end A324777.P2793169229995900723

/-! ## A324777.P3608094073245420271

`A274641(A016742(n))%A053755(n)`
-/

namespace A324777.P3608094073245420271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A274641 (A016742 n).toNat) (A053755 n)

end

end A324777.P3608094073245420271

/-! ## A324777.P1914367046974780631

`(1-A274640(A016742(n)))/A134824(n+2)`
-/

namespace A324777.P1914367046974780631
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 - A274640 (A016742 n).toNat : ℚ) / (A134824 (n + 2) : ℚ)

end

end A324777.P1914367046974780631

/-!
# A324778: West spoke of spiral in A274641.

The programs for A324778, there is no canonical definition to state claims against.
-/

/-! ## A324778.P2976727373442806551

`A274928(n)-1`
-/

namespace A324778.P2976727373442806551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274928 n - 1

end

end A324778.P2976727373442806551

/-! ## A324778.P10785898384605483460

`A275877(Δ[n²])-1`
-/

namespace A324778.P10785898384605483460
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275877 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat - 1

end

end A324778.P10785898384605483460

/-! ## A324778.P6031679395119393615

`A274641((2*n)²+n)`
-/

namespace A324778.P6031679395119393615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274641 ((2 * n) ^ 2 + n)

end

end A324778.P6031679395119393615

/-! ## A324778.P14708961063836938483

`abs(1-A275877(2*n+1))`
-/

namespace A324778.P14708961063836938483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - A275877 (2 * n + 1)|

end

end A324778.P14708961063836938483

/-! ## A324778.P9436237490580292559

`abs(A275877(n+1+n)-1)`
-/

namespace A324778.P9436237490580292559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A275877 (n + 1 + n) - 1|

end

end A324778.P9436237490580292559

/-! ## A324778.P13441186989703586439

`A274640((2*n)²+n)-1`
-/

namespace A324778.P13441186989703586439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274640 ((2 * n) ^ 2 + n) - 1

end

end A324778.P13441186989703586439

/-! ## A324778.P17681209957876121891

`A023443(A274928(n))`
-/

namespace A324778.P17681209957876121891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A274928 n).toNat

end

end A324778.P17681209957876121891

/-! ## A324778.P1260642382789460008

`(A275877(2*n+1)-1)%(A000032(n+3)-3)`
-/

namespace A324778.P1260642382789460008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A275877 (2 * n + 1) - 1) (A000032 (n + 3) - 3)

end

end A324778.P1260642382789460008

/-! ## A324778.P12685600214788554769

`lcm(1-A275877(A005408(n)), A033999(n))`
-/

namespace A324778.P12685600214788554769
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (1 - A275877 (A005408 n).toNat) (A033999 n)

end

end A324778.P12685600214788554769

/-! ## A324778.P15345518210951047248

`A033999(2*n+1)+A033999(2*n)*A275877(2*n+1)`
-/

namespace A324778.P15345518210951047248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (2 * n + 1) + A033999 (2 * n) * A275877 (2 * n + 1)

end

end A324778.P15345518210951047248

/-!
# A324779: South-West spoke of spiral in A274641.

The programs for A324779, there is no canonical definition to state claims against.
-/

/-! ## A324779.P3543966111517980856

`A274929(n)-1`
-/

namespace A324779.P3543966111517980856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274929 n - 1

end

end A324779.P3543966111517980856

/-! ## A324779.P1888124446137350198

`A274641(n*(4*n+2))`
-/

namespace A324779.P1888124446137350198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274641 (n * (4 * n + 2))

end

end A324779.P1888124446137350198

/-! ## A324779.P11027525267977893755

`A274640(n*(4*n+2))-1`
-/

namespace A324779.P11027525267977893755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274640 (n * (4 * n + 2)) - 1

end

end A324779.P11027525267977893755

/-! ## A324779.P8747585714570277043

`A023443(A274929(n))`
-/

namespace A324779.P8747585714570277043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A274929 n).toNat

end

end A324779.P8747585714570277043

/-! ## A324779.P4674773911397161003

`A023444(A274929(n)+1)`
-/

namespace A324779.P4674773911397161003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023444 (A274929 n + 1).toNat

end

end A324779.P4674773911397161003

/-! ## A324779.P16813117399904416323

`abs(1-A274640(A002943(n)))`
-/

namespace A324779.P16813117399904416323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - A274640 (A002943 n).toNat|

end

end A324779.P16813117399904416323

/-! ## A324779.P503392299291058935

`A023444(2*A274929(n))/2`
-/

namespace A324779.P503392299291058935
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A023444 (2 * A274929 n).toNat : ℚ) / 2

end

end A324779.P503392299291058935

/-! ## A324779.P6155188672534922924

`or(char[8], A274641(A002378(2*n)))`
-/

namespace A324779.P6155188672534922924
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A274641 (A002378 (2 * n)).toNat)

end

end A324779.P6155188672534922924

/-! ## A324779.P13436252894009949653

`∑{d}[A274641(A002943(n)), A000010(#)]`
-/

namespace A324779.P13436252894009949653
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274641 (A002943 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 d

end

end A324779.P13436252894009949653

/-! ## A324779.P7716812494865268975

`∑{d}[A274641(A002378(2*n)), A000010(#)]`
-/

namespace A324779.P7716812494865268975
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274641 (A002378 (2 * n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 d

end

end A324779.P7716812494865268975

/-!
# A324780: South spoke of spiral in A274641.

The programs for A324780, there is no canonical definition to state claims against.
-/

/-! ## A324780.P1046023118569194053

`A274930(n)-1`
-/

namespace A324780.P1046023118569194053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274930 n - 1

end

end A324780.P1046023118569194053

/-! ## A324780.P4220198216419132959

`A276036(Δ[n²])-1`
-/

namespace A324780.P4220198216419132959
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276036 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat - 1

end

end A324780.P4220198216419132959

/-! ## A324780.P18353118083718777040

`A274641(∑[8*n]-n)`
-/

namespace A324780.P18353118083718777040
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274641 (∑ j ∈ Finset.range (n + 1), f1 j - n)

end

end A324780.P18353118083718777040

/-! ## A324780.P1292732620486306920

`abs(1-A276036(2*n+1))`
-/

namespace A324780.P1292732620486306920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - A276036 (2 * n + 1)|

end

end A324780.P1292732620486306920

/-! ## A324780.P5276155954330282224

`abs(A276036(n+1+n)-1)`
-/

namespace A324780.P5276155954330282224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A276036 (n + 1 + n) - 1|

end

end A324780.P5276155954330282224

/-! ## A324780.P1709911658613589696

`A023443(A274930(n))`
-/

namespace A324780.P1709911658613589696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A274930 n).toNat

end

end A324780.P1709911658613589696

/-! ## A324780.P11676461495224740844

`A274640(A033954(n))-1`
-/

namespace A324780.P11676461495224740844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274640 (A033954 n).toNat - 1

end

end A324780.P11676461495224740844

/-! ## A324780.P14120240053906536347

`A274640(A156859(2*n))-1`
-/

namespace A324780.P14120240053906536347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274640 (A156859 (2 * n)).toNat - 1

end

end A324780.P14120240053906536347

/-! ## A324780.P12804718848174561680

`A274640(A002943(n)+n)-1`
-/

namespace A324780.P12804718848174561680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274640 (A002943 n + (n : ℤ)).toNat - 1

end

end A324780.P12804718848174561680

/-!
# A324781: South-East spoke of spiral in A274641.

The programs for A324781, there is no canonical definition to state claims against.
-/

/-! ## A324781.P16737347922359624476

`A274931(n)-1`
-/

namespace A324781.P16737347922359624476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274931 n - 1

end

end A324781.P16737347922359624476

/-! ## A324781.P18221353140313449897

`A274641(∑[8*n])`
-/

namespace A324781.P18221353140313449897
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274641 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A324781.P18221353140313449897

/-! ## A324781.P8276287010877786530

`A274640(∑[8*n])-1`
-/

namespace A324781.P8276287010877786530
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274640 (∑ j ∈ Finset.range (n + 1), f1 j) - 1

end

end A324781.P8276287010877786530

/-! ## A324781.P6421778099104667657

`A023443(A274931(n))`
-/

namespace A324781.P6421778099104667657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A274931 n).toNat

end

end A324781.P6421778099104667657

/-! ## A324781.P9143589111313002842

`A023444(A274931(n)+1)`
-/

namespace A324781.P9143589111313002842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023444 (A274931 n + 1).toNat

end

end A324781.P9143589111313002842

/-! ## A324781.P8105362469684134187

`A023444(2*A274931(n))/2`
-/

namespace A324781.P8105362469684134187
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A023444 (2 * A274931 n).toNat : ℚ) / 2

end

end A324781.P8105362469684134187

/-! ## A324781.P17107286388008167564

`abs(1-A274640(A033954(n)+n))`
-/

namespace A324781.P17107286388008167564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - A274640 (A033954 n + (n : ℤ)).toNat|

end

end A324781.P17107286388008167564

/-!
# A324783: First differences of A309226: distances in A008348 from n-th low point to the next.

The programs for A324783, there is no canonical definition to state claims against.
-/

/-! ## A324783.P6962380700443069837

`Δ[A309226(n)]`
-/

namespace A324783.P6962380700443069837
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309226 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A324783.P6962380700443069837

/-! ## A324783.P4275528195517298661

`A309226(n+1)-A309226(n)`
-/

namespace A324783.P4275528195517298661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309226 (n + 1) - A309226 n

end

end A324783.P4275528195517298661

/-! ## A324783.P10397434253815867254

`record[A309226(A152271(n))]-A309226(n)`
-/

namespace A324783.P10397434253815867254
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309226 (A152271 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A309226 n

end

end A324783.P10397434253815867254

/-! ## A324783.P11906422543396657269

`A023443(A135025(n+1)-lt[A008348(n), A001223(n+1)])`
-/

namespace A324783.P11906422543396657269
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008348 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001223 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A135025 (n + 1) - (SequenceMachineLib.nth (fun j => f1 j < f2 j) n : ℤ)).toNat

end

end A324783.P11906422543396657269

/-!
# A324784: Indices of low points in Recamán's sequence A005132 (see Comments in A309226 for definition).

The programs for A324784, there is no canonical definition to state claims against.
-/

/-! ## A324784.P14972067953497882466

`A324786(n)+a(n-1)` with `a(0)=0`
-/

namespace A324784.P14972067953497882466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A324786 n + a (n - 1)

end

end A324784.P14972067953497882466

/-! ## A324784.P3434598599702318779

`∑[A324786((n-1)%(n+1)+1)]-4`
-/

namespace A324784.P3434598599702318779
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324786 (Int.tmod ((n : ℤ) - 1) (n + 1 : ℤ) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 4

end

end A324784.P3434598599702318779

/-! ## A324784.P17955533637276880173

`∑[A324786(gcd(n, n*a(n-1)-n))]` with `a(0)=0`
-/

namespace A324784.P17955533637276880173
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f1 =>
  A324786 (Int.gcd (n : ℤ) ((n : ℤ) * f1 (n - 1) - (n : ℤ)))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A324784.P17955533637276880173

/-! ## A324784.P15904234382971636693

`∑[A324786(A028310(n))]-4`
-/

namespace A324784.P15904234382971636693
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324786 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 4

end

end A324784.P15904234382971636693

/-! ## A324784.P1791803859700681785

`∑[A324786(A028310(n))%A016862(n)]`
-/

namespace A324784.P1791803859700681785
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A324786 (A028310 n).toNat) (A016862 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A324784.P1791803859700681785

/-! ## A324784.P978847753720792234

`∑[A324786(n+1)]-A324786(n+1)`
-/

namespace A324784.P978847753720792234
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324786 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A324786 (n + 1)

end

end A324784.P978847753720792234

/-! ## A324784.P1397432561392025622

`A057167(A324785(n+1))`
-/

namespace A324784.P1397432561392025622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057167 (A324785 (n + 1)).toNat

end

end A324784.P1397432561392025622

/-!
# A324785: Values of A005132 at its low points.

The programs for A324785, there is no canonical definition to state claims against.
-/

/-! ## A324785.P1959104059306182754

`A005132(A324784(n+1))`
-/

namespace A324785.P1959104059306182754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005132 (A324784 (n + 1)).toNat

end

end A324785.P1959104059306182754

/-! ## A324785.P13597578159858231970

`A005132(∑[A324786(n+1)]-A324786(n+1))`
-/

namespace A324785.P13597578159858231970
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324786 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005132 (∑ j ∈ Finset.range (n + 1), f1 j - A324786 (n + 1)).toNat

end

end A324785.P13597578159858231970

/-! ## A324785.P8049153469150224400

`A334951(A324784(C(n+1, n)))`
-/

namespace A324785.P8049153469150224400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334951 (A324784 (Nat.choose (n + 1) n)).toNat

end

end A324785.P8049153469150224400

/-! ## A324785.P11075349837569402585

`A334951(and(-1, A324784(n+1)))`
-/

namespace A324785.P11075349837569402585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334951 (Int.land (-1) (A324784 (n + 1))).toNat

end

end A324785.P11075349837569402585

/-! ## A324785.P7614770648431867405

`A063733(A324784(n+1)+1)-1`
-/

namespace A324785.P7614770648431867405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063733 (A324784 (n + 1) + 1).toNat - 1

end

end A324785.P7614770648431867405

/-! ## A324785.P5163121534983284780

`A334951(A324784(2*n+1-n))`
-/

namespace A324785.P5163121534983284780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334951 (A324784 ((2 * n : ℤ) + (1 - (n : ℤ))).toNat).toNat

end

end A324785.P5163121534983284780

/-! ## A324785.P11834940522943957499

`∑{d}[A334951(A324784(n+1)), A000010(#)]`
-/

namespace A324785.P11834940522943957499
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334951 (A324784 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 d

end

end A324785.P11834940522943957499

/-! ## A324785.P8171944886486200872

`A334951(A324784(n+1))%A000040((n+1)²)`
-/

namespace A324785.P8171944886486200872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A334951 (A324784 (n + 1)).toNat) (A000040 ((n + 1) ^ 2))

end

end A324785.P8171944886486200872

/-! ## A324785.P568816648538943343

`A014963(4*n+2)*A334951(A324784(n+1))`
-/

namespace A324785.P568816648538943343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (4 * n + 2) * A334951 (A324784 (n + 1)).toNat

end

end A324785.P568816648538943343

/-!
# A324786: First differences of A324784: distances in A005132 from one low point to the next.

The programs for A324786, there is no canonical definition to state claims against.
-/

/-! ## A324786.P58027481974126586

`Δ[A324784(n+1)]`
-/

namespace A324786.P58027481974126586
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324784 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A324786.P58027481974126586

/-! ## A324786.P7548813283787669751

`abs(Δ[A324784(ϕ²-(ϕ-n))])`
-/

namespace A324786.P7548813283787669751
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324784 (SequenceMachineLib.roundAway (Real.goldenRatio ^ 2 - (Real.goldenRatio - (n : ℝ)))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A324786.P7548813283787669751

/-! ## A324786.P636056546364202652

`Δ[record[A324784(A133310(n))]]`
-/

namespace A324786.P636056546364202652
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324784 (A133310 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A324786.P636056546364202652

/-! ## A324786.P3521951507723185176

`Δ[record[A324784(A134478(n))]]`
-/

namespace A324786.P3521951507723185176
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324784 (A134478 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A324786.P3521951507723185176

/-! ## A324786.P13397975344269693174

`Δ[record[A324784(A152271(n))]]`
-/

namespace A324786.P13397975344269693174
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324784 (A152271 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A324786.P13397975344269693174

/-! ## A324786.P12624963950299351975

`Δ[record[A324784(A286554(n))]]`
-/

namespace A324786.P12624963950299351975
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324784 (A286554 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A324786.P12624963950299351975

/-! ## A324786.P11596124982202549697

`Δ[record[A324784(A330439(n))]]`
-/

namespace A324786.P11596124982202549697
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324784 (A330439 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A324786.P11596124982202549697

/-! ## A324786.P9247848158178684744

`A324784(n+2)-A324784(n+1)`
-/

namespace A324786.P9247848158178684744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324784 (n + 2) - A324784 (n + 1)

end

end A324786.P9247848158178684744

/-! ## A324786.P8625153504682328868

`Δ[A324784(ϕ²-(ϕ-n))%A000145(n)]`
-/

namespace A324786.P8625153504682328868
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A324784 (SequenceMachineLib.roundAway (Real.goldenRatio ^ 2 - (Real.goldenRatio - (n : ℝ)))).toNat) (A000145 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A324786.P8625153504682328868

/-! ## A324786.P2655683932284596820

`Δ[record[A324784(A137734(n))]]`
-/

namespace A324786.P2655683932284596820
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324784 (A137734 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A324786.P2655683932284596820

/-!
# A324787: Index of n-th low point in A022837.

The programs for A324787, there is no canonical definition to state claims against.
-/

/-! ## A324787.P10097835407201188391

`lt[A022837(n), A001223(n+1)]`
-/

namespace A324787.P10097835407201188391
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022837 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001223 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A324787.P10097835407201188391

/-! ## A324787.P5534148908765168489

`lt[A309222(n), A001223(n+1)]`
-/

namespace A324787.P5534148908765168489
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309222 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001223 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A324787.P5534148908765168489

/-! ## A324787.P6179427887318838608

`lt[A022837(n), A054541(n+2)]`
-/

namespace A324787.P6179427887318838608
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022837 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054541 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A324787.P6179427887318838608

/-! ## A324787.P10702724007193229876

`lt[A001043(n+1), A309222(n+2)]`
-/

namespace A324787.P10702724007193229876
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001043 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309222 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A324787.P10702724007193229876

/-! ## A324787.P13492958301196327136

`lt[A309222(n), A000040(n+2)-A000040(n+1)]`
-/

namespace A324787.P13492958301196327136
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309222 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 2) - A000040 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A324787.P13492958301196327136

/-!
# A324789: First differences of A324787: distances in A022837 from n-th low point to the next.

The programs for A324789, there is no canonical definition to state claims against.
-/

/-! ## A324789.P10818315308643043073

`Δ[A324787(n)]`
-/

namespace A324789.P10818315308643043073
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324787 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A324789.P10818315308643043073

/-! ## A324789.P4739737854669973367

`A324787(n+1)-A324787(n)`
-/

namespace A324789.P4739737854669973367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324787 (n + 1) - A324787 n

end

end A324789.P4739737854669973367

/-! ## A324789.P4403271106513799463

`record[A324787(A152271(n))]-A324787(n)`
-/

namespace A324789.P4403271106513799463
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324787 (A152271 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A324787 n

end

end A324789.P4403271106513799463

/-! ## A324789.P3122490399953861410

`Δ[lt[A022837(n), A001223(n+1)]]`
-/

namespace A324789.P3122490399953861410
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022837 n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001223 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < f3 j) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A324789.P3122490399953861410

/-! ## A324789.P4708968497608520299

`Δ[lt[A309222(n), A001223(n+1)]]`
-/

namespace A324789.P4708968497608520299
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309222 n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001223 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < f3 j) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A324789.P4708968497608520299

/-!
# A324790: Indices of zeros in A022837.

The programs for A324790, there is no canonical definition to state claims against.
-/

/-! ## A324790.P1693495544103469299

`A324787(2*round(4*n/3))`
-/

namespace A324790.P1693495544103469299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324787 (2 * SequenceMachineLib.roundAway (4 * ((n : ℚ) / 3))).toNat

end

end A324790.P1693495544103469299

/-!
# A324791: Value of A076042 at its n-th low point.

The programs for A324791, there is no canonical definition to state claims against.
-/

/-! ## A324791.P1770020187986423747

`A076042(A325056(n))`
-/

namespace A324791.P1770020187986423747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076042 (A325056 n).toNat

end

end A324791.P1770020187986423747

/-! ## A324791.P7229091812644279565

`A076042(lt[A076042(n), abs(1-2*n)])`
-/

namespace A324791.P7229091812644279565
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076042 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - (2 * n : ℤ)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076042 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A324791.P7229091812644279565

/-! ## A324791.P6768611704730360256

`A076042(∑[A324792(n)]-A324792(n))`
-/

namespace A324791.P6768611704730360256
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324792 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076042 (∑ j ∈ Finset.range (n + 1), f1 j - A324792 n).toNat

end

end A324791.P6768611704730360256

/-!
# A324792: First differences of A325056: distance in A076042 from n-th low point to the next.

The programs for A324792, there is no canonical definition to state claims against.
-/

/-! ## A324792.P9875129568762649823

`Δ[A325056(n)]`
-/

namespace A324792.P9875129568762649823
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325056 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A324792.P9875129568762649823

/-! ## A324792.P14012002499744949816

`A325056(n+1)-A325056(n)`
-/

namespace A324792.P14012002499744949816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325056 (n + 1) - A325056 n

end

end A324792.P14012002499744949816

/-! ## A324792.P4587461368496042237

`A279891(A229354(n))-1`
-/

namespace A324792.P4587461368496042237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279891 (A229354 n).toNat - 1

end

end A324792.P4587461368496042237

/-! ## A324792.P7265278207624467478

`A131507(A171761(n))+4`
-/

namespace A324792.P7265278207624467478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131507 (A171761 n).toNat + 4

end

end A324792.P7265278207624467478

/-! ## A324792.P10656058981936829187

`A131507(A014682(Δ[2^n+3^n]))`
-/

namespace A324792.P10656058981936829187
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n + 3 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131507 (A014682 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat).toNat

end

end A324792.P10656058981936829187

/-!
# A324793: Numbers k such that A000793(k) = A159685(k).

The programs for A324793, there is no canonical definition to state claims against.
-/

/-! ## A324793.P12419159557423712860

`eq[val(A000793(n), 4), A000007(n)]`
-/

namespace A324793.P12419159557423712860
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A000793 n).toNat 4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A324793.P12419159557423712860

/-! ## A324793.P782638214894845491

`eq[A357332(n+1)², A357332(n+1)]+1`
-/

namespace A324793.P782638214894845491
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357332 (n + 1) ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357332 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A324793.P782638214894845491

/-! ## A324793.P6160694625189367759

`lt[∑{e}[A000793(n), A102578(#)], n]`
-/

namespace A324793.P6160694625189367759
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000793 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f2 n).natAbs, A102578 (Nat.factorization (f2 n).natAbs p)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f3 j : ℤ)) n

end

end A324793.P6160694625189367759

/-! ## A324793.P5126051851930683156

`lt[∑{e}[A000793(n), A145437(#)], n]`
-/

namespace A324793.P5126051851930683156
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000793 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f2 n).natAbs, A145437 (Nat.factorization (f2 n).natAbs p)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f3 j : ℤ)) n

end

end A324793.P5126051851930683156

/-! ## A324793.P1368843233325488158

`eq[A063524(n), A087049(A000793(n))]`
-/

namespace A324793.P1368843233325488158
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063524 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087049 (A000793 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A324793.P1368843233325488158

/-!
# A324795: a(n) = 2*p(n)*p(n+2) - p(n+1)^2 where p(k) = k-th prime.

The programs for A324795, the canonical program `A324795.P1691509728636329575` is in `Seq.B005.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A324795 has offset 1).

The definition of A324795 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A324795.P1691509728636329575

`A090076(n+1)-A056221(n+1)`

The canonical program, it is in `Seq.B005.C002`.
-/

namespace A324795

/-- `A090076(n+1)-A056221(n+1)` -/
def P1691509728636329575.Spec : Prop :=
  ∀ n, P1691509728636329575.a n = A324795 (n + 1)

theorem P1691509728636329575.correct : P1691509728636329575.Spec := by
  intro n
  simp only [A324795, Nat.add_sub_cancel]

end A324795

/-! ## A324795.P12599629312618296757

`2*A090076(n+1)-A065091(n+1)²`
-/

namespace A324795.P12599629312618296757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A090076 (n + 1) - A065091 (n + 1) ^ 2

end

end A324795.P12599629312618296757

namespace A324795

/-- `2*A090076(n+1)-A065091(n+1)²` -/
def P12599629312618296757.Spec : Prop :=
  ∀ n, P12599629312618296757.a n = A324795 (n + 1)

end A324795

/-! ## A324795.P18415076606552678397

`A048448(n+2)²-A133529(n+1)`
-/

namespace A324795.P18415076606552678397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048448 (n + 2) ^ 2 - A133529 (n + 1)

end

end A324795.P18415076606552678397

namespace A324795

/-- `A048448(n+2)²-A133529(n+1)` -/
def P18415076606552678397.Spec : Prop :=
  ∀ n, P18415076606552678397.a n = A324795 (n + 1)

end A324795

/-! ## A324795.P9349714952683963564

`A090076(n+1)+A090076(n+1)-A001248(n+2)`
-/

namespace A324795.P9349714952683963564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090076 (n + 1) + (A090076 (n + 1) - A001248 (n + 2))

end

end A324795.P9349714952683963564

namespace A324795

/-- `A090076(n+1)+A090076(n+1)-A001248(n+2)` -/
def P9349714952683963564.Spec : Prop :=
  ∀ n, P9349714952683963564.a n = A324795 (n + 1)

end A324795

/-! ## A324795.P1366003581288623301

`A348569(n+1)-(A069484(n+1)+A069484(n+2))`
-/

namespace A324795.P1366003581288623301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348569 (n + 1) - (A069484 (n + 1) + A069484 (n + 2))

end

end A324795.P1366003581288623301

namespace A324795

/-- `A348569(n+1)-(A069484(n+1)+A069484(n+2))` -/
def P1366003581288623301.Spec : Prop :=
  ∀ n, P1366003581288623301.a n = A324795 (n + 1)

end A324795

/-! ## A324795.P1803169916094621703

`A001248(n+2)-A056221(n+1)-A056221(n+1)`
-/

namespace A324795.P1803169916094621703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001248 (n + 2) - A056221 (n + 1) - A056221 (n + 1)

end

end A324795.P1803169916094621703

namespace A324795

/-- `A001248(n+2)-A056221(n+1)-A056221(n+1)` -/
def P1803169916094621703.Spec : Prop :=
  ∀ n, P1803169916094621703.a n = A324795 (n + 1)

end A324795

/-! ## A324795.P14496616103478393378

`A065091(n+2)*A100484(n+1)-A001248(n+2)`
-/

namespace A324795.P14496616103478393378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (n + 2) * A100484 (n + 1) - A001248 (n + 2)

end

end A324795.P14496616103478393378

namespace A324795

/-- `A065091(n+2)*A100484(n+1)-A001248(n+2)` -/
def P14496616103478393378.Spec : Prop :=
  ∀ n, P14496616103478393378.a n = A324795 (n + 1)

end A324795

/-! ## A324795.P7044749311742102196

`2*A090076(n+1)-A000040(n+2)*A000040(n+2)`
-/

namespace A324795.P7044749311742102196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A090076 (n + 1) - A000040 (n + 2) * A000040 (n + 2)

end

end A324795.P7044749311742102196

namespace A324795

/-- `2*A090076(n+1)-A000040(n+2)*A000040(n+2)` -/
def P7044749311742102196.Spec : Prop :=
  ∀ n, P7044749311742102196.a n = A324795 (n + 1)

end A324795

/-! ## A324795.P11967597608330955968

`2*A090076(n+1)-p?[A257088(n)]²`
-/

namespace A324795.P11967597608330955968
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257088 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A090076 (n + 1) - f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) ^ 2

end

end A324795.P11967597608330955968

namespace A324795

/-- `2*A090076(n+1)-p?[A257088(n)]²` -/
def P11967597608330955968.Spec : Prop :=
  ∀ n, P11967597608330955968.a n = A324795 (n + 1)

end A324795

/-!
# A324796: Irregular triangle read by rows: row n gives numerators of fractions in the Farey subsequence B(m).

The programs for A324796, there is no canonical definition to state claims against.
-/

/-! ## A324796.P3445579679799330130

`A294446(2*A222233(n))`
-/

namespace A324796.P3445579679799330130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294446 (2 * A222233 n).toNat

end

end A324796.P3445579679799330130

/-! ## A324796.P2685403194854859556

`A294446(2*n)^A054908(n)!`
-/

namespace A324796.P2685403194854859556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294446 (2 * n) ^ Nat.factorial (A054908 n).toNat

end

end A324796.P2685403194854859556

/-! ## A324796.P11184674817298633361

`A049455(n+3)%Δ[A289324(n)]`
-/

namespace A324796.P11184674817298633361
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289324 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A049455 (n + 3)) (f1 (n + 1) - f1 n)

end

end A324796.P11184674817298633361

/-! ## A324796.P3876014326290128191

`C(A242626(n), n)!*A049455(n+3)`
-/

namespace A324796.P3876014326290128191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (Nat.choose (A242626 n).toNat n) : ℤ) * A049455 (n + 3)

end

end A324796.P3876014326290128191

/-! ## A324796.P175715297862790486

`A049455(n+3)+A000007(A000032(n))`
-/

namespace A324796.P175715297862790486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049455 (n + 3) + A000007 (A000032 n).toNat

end

end A324796.P175715297862790486

/-!
# A324797: Irregular triangle read by rows: row n gives denominators of fractions in the Farey subsequence B(m).

The programs for A324797, there is no canonical definition to state claims against.
-/

/-! ## A324797.P770423834666450797

`A049456(lt[A261356(3*n), A213339(n+1)])`
-/

namespace A324797.P770423834666450797
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261356 (3 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213339 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049456 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A324797.P770423834666450797

/-! ## A324797.P1329685178971181629

`A049456(A184945(n)!+n+2)`
-/

namespace A324797.P1329685178971181629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049456 (Nat.factorial (A184945 n).toNat + (n + 2))

end

end A324797.P1329685178971181629

/-! ## A324797.P7237585162475099756

`A294446(2*n+1)%A016777(A303888(2*n+5))`
-/

namespace A324797.P7237585162475099756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A294446 (2 * n + 1)) (A016777 (A303888 (2 * n + 5)).toNat)

end

end A324797.P7237585162475099756

/-! ## A324797.P5707178812770417565

`A049456(n+3)%∏{p}[2^n+1, #]`
-/

namespace A324797.P5707178812770417565
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A049456 (n + 3)) ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℤ)

end

end A324797.P5707178812770417565

/-! ## A324797.P14790804830213068985

`A144789(2^A049456(n+3))`
-/

namespace A324797.P14790804830213068985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144789 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A049456 (n + 3) : ℤ))).toNat

end

end A324797.P14790804830213068985

/-!
# A324798: a(n) = floor(sqrt(2)*prime(n)) - prime(n+1).

The programs for A324798, there is no canonical definition to state claims against.
-/

/-! ## A324798.P4740172562798184567

`A097433(n+1)-A065091(n+1)`
-/

namespace A324798.P4740172562798184567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097433 (n + 1) - A065091 (n + 1)

end

end A324798.P4740172562798184567

/-! ## A324798.P120479125200927778

`A001951(A000040(n+1))-p?[2*n+1]`
-/

namespace A324798.P120479125200927778
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001951 (A000040 (n + 1)).toNat - (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) : ℤ)

end

end A324798.P120479125200927778

/-! ## A324798.P8760629088300732592

`floor(sqrt(2)*A000040(n+1))-A000040(n+2)`
-/

namespace A324798.P8760629088300732592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.sqrt (2 : ℝ) * (A000040 (n + 1) : ℝ)⌋ - A000040 (n + 2)

end

end A324798.P8760629088300732592

/-! ## A324798.P1014962985573997547

`floor((A006093(n+1)+1)*sqrt(2))-A065091(n+1)`
-/

namespace A324798.P1014962985573997547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A006093 (n + 1) + 1 : ℝ) * Real.sqrt (2 : ℝ)⌋ - A065091 (n + 1)

end

end A324798.P1014962985573997547

/-! ## A324798.P18287671664890012189

`A001951(record[A000010(n+1)+1])-p?[2*n+1]`
-/

namespace A324798.P18287671664890012189
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1) + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001951 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat - (f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n) : ℤ)

end

end A324798.P18287671664890012189

/-! ## A324798.P2021709554303896322

`A001951(Δ[A007504(n)])-A000040(n+2)`
-/

namespace A324798.P2021709554303896322
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001951 (f1 (n + 1) - f1 n).toNat - A000040 (n + 2)

end

end A324798.P2021709554303896322

/-! ## A324798.P11546118541651590176

`A001951(record[A051698(n)])-A000040(n+2)`
-/

namespace A324798.P11546118541651590176
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051698 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001951 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat - A000040 (n + 2)

end

end A324798.P11546118541651590176

/-! ## A324798.P8556601261335324189

`A001951(A000040(n+1))-A000040(n+2)`
-/

namespace A324798.P8556601261335324189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001951 (A000040 (n + 1)).toNat - A000040 (n + 2)

end

end A324798.P8556601261335324189

/-! ## A324798.P16987021086318377213

`record[floor(sqrt(2)*A006530(n+2))]-A006530(A001749(n+2))`
-/

namespace A324798.P16987021086318377213
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.sqrt (2 : ℝ) * (A006530 (n + 2) : ℝ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A006530 (A001749 (n + 2)).toNat

end

end A324798.P16987021086318377213

/-!
# A324799: Symmetric square array read by antidiagonals: T(n,k) = p(n)*p(k)-p(n*k), where p(i) = prime(i), for n>=1, k>=1.

The programs for A324799, the canonical program `A324799.P15549843488400113216` is in `Seq.B006.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A324799 has offset 1).

The definition of A324799 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9870 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A324799.P15549843488400113216

`A098350(n+1)-A000040(A003991(n+1))`

The canonical program, it is in `Seq.B006.C001`.
-/

namespace A324799

/-- `A098350(n+1)-A000040(A003991(n+1))` -/
def P15549843488400113216.Spec : Prop :=
  ∀ n, P15549843488400113216.a n = A324799 (n + 1)

theorem P15549843488400113216.correct : P15549843488400113216.Spec := by
  intro n
  simp only [A324799, Nat.add_sub_cancel]

end A324799

/-! ## A324799.P7069364492283674281

`A098350(n+1)-A000040(A059036(n)+1)`
-/

namespace A324799.P7069364492283674281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098350 (n + 1) - A000040 (A059036 n + 1).toNat

end

end A324799.P7069364492283674281

namespace A324799

/-- `A098350(n+1)-A000040(A059036(n)+1)` -/
def P7069364492283674281.Spec : Prop :=
  ∀ n, P7069364492283674281.a n = A324799 (n + 1)

end A324799

/-! ## A324799.P3400564568106488367

`A098350(n+1)-A008578(A003991(n+1)+1)`
-/

namespace A324799.P3400564568106488367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098350 (n + 1) - A008578 (A003991 (n + 1) + 1).toNat

end

end A324799.P3400564568106488367

namespace A324799

/-- `A098350(n+1)-A008578(A003991(n+1)+1)` -/
def P3400564568106488367.Spec : Prop :=
  ∀ n, P3400564568106488367.a n = A324799 (n + 1)

end A324799

/-! ## A324799.P2202983303546929074

`A098350(n+1)-A000040(A098352(n+1)/4)`
-/

namespace A324799.P2202983303546929074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098350 (n + 1) - A000040 (SequenceMachineLib.roundAway ((A098352 (n + 1) : ℚ) / 4)).toNat

end

end A324799.P2202983303546929074

namespace A324799

/-- `A098350(n+1)-A000040(A098352(n+1)/4)` -/
def P2202983303546929074.Spec : Prop :=
  ∀ n, P2202983303546929074.a n = A324799 (n + 1)

end A324799

/-! ## A324799.P3041456354232112789

`A179312(4*A073060(n))-A000040(A003991(n+1))`
-/

namespace A324799.P3041456354232112789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179312 (4 * A073060 n).toNat - A000040 (A003991 (n + 1)).toNat

end

end A324799.P3041456354232112789

namespace A324799

/-- `A179312(4*A073060(n))-A000040(A003991(n+1))` -/
def P3041456354232112789.Spec : Prop :=
  ∀ n, P3041456354232112789.a n = A324799 (n + 1)

end A324799

/-! ## A324799.P3493017274198858837

`A179312(4*A073060(n))-A000040(A059036(n)+1)`
-/

namespace A324799.P3493017274198858837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179312 (4 * A073060 n).toNat - A000040 (A059036 n + 1).toNat

end

end A324799.P3493017274198858837

namespace A324799

/-- `A179312(4*A073060(n))-A000040(A059036(n)+1)` -/
def P3493017274198858837.Spec : Prop :=
  ∀ n, P3493017274198858837.a n = A324799 (n + 1)

end A324799

/-! ## A324799.P6106872939443765527

`A179312(4*A073060(n))-A000040(A098352(n+1)/4)`
-/

namespace A324799.P6106872939443765527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179312 (4 * A073060 n).toNat - A000040 (SequenceMachineLib.roundAway ((A098352 (n + 1) : ℚ) / 4)).toNat

end

end A324799.P6106872939443765527

namespace A324799

/-- `A179312(4*A073060(n))-A000040(A098352(n+1)/4)` -/
def P6106872939443765527.Spec : Prop :=
  ∀ n, P6106872939443765527.a n = A324799 (n + 1)

end A324799

