import SequenceMachineLib.Basic
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C008
import Seq.B000.C018
import Seq.B000.C019
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C005
import Seq.B002.C001
import Seq.B002.C004
import Seq.B002.C006
import Seq.B003.C000
import Seq.B008.C000
import Seq.Opaque.C000
import Seq.Opaque.C001
import Seq.Opaque.C002
import Seq.Opaque.C004
import Seq.Opaque.C005
import Seq.Opaque.C006
import Seq.Opaque.C007
import Seq.Opaque.C009
import Seq.Opaque.C010
import Seq.Opaque.C011
import Seq.Opaque.C012
import Seq.Opaque.C013
import Seq.Opaque.C014
import Seq.Opaque.C015
import Seq.Opaque.C017
import Seq.Opaque.C019
import Seq.Opaque.C020
import Seq.Opaque.C021
import Seq.Opaque.C022
import Seq.Opaque.C023

/-!
# A020201: Pseudoprimes to base 73.

The programs for A020201, there is no canonical definition to state claims against.
-/

/-! ## A020201.P3667939262759007248

`A370809(A248693(n+1)-8)`
-/

namespace A020201.P3667939262759007248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370809 (A248693 (n + 1) - 8).toNat

end

end A020201.P3667939262759007248

/-! ## A020201.P1168641557405603565

`record[A000005(Δ[A162828(n+1)])]`
-/

namespace A020201.P1168641557405603565
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162828 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A020201.P1168641557405603565

/-! ## A020201.P8298317801113797352

`eq[Δ[A288510(n+1)], A328772(n)]`
-/

namespace A020201.P8298317801113797352
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288510 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328772 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f3 j) n

end

end A020201.P8298317801113797352

/-! ## A020201.P14371428512002243217

`A122786(lt[2, A334700(2*n+1)])`
-/

namespace A020201.P14371428512002243217
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334700 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122786 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A020201.P14371428512002243217

/-! ## A020201.P2527518100351064800

`A018412(lt[A123081(n), A185953(n+1)])`
-/

namespace A020201.P2527518100351064800
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123081 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185953 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018412 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A020201.P2527518100351064800

/-!
# A020202: Pseudoprimes to base 74.

The programs for A020202, there is no canonical definition to state claims against.
-/

/-! ## A020202.P7407572990403101227

`A225509(n+1)%A002755(A006126(n))`
-/

namespace A020202.P7407572990403101227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A225509 (n + 1)) (A002755 (A006126 n).toNat)

end

end A020202.P7407572990403101227

/-!
# A020208: Pseudoprimes to base 80.

The programs for A020208, there is no canonical definition to state claims against.
-/

/-! ## A020208.P15162431798471843175

`A020306(n+1)-A065714(A089420(n))`
-/

namespace A020208.P15162431798471843175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020306 (n + 1) - A065714 (A089420 n).toNat

end

end A020208.P15162431798471843175

/-!
# A020209: Pseudoprimes to base 81.

The programs for A020209, there is no canonical definition to state claims against.
-/

/-! ## A020209.P7947572035689149849

`A111624(∩[A001651(n+1), A231571(n+1)])`
-/

namespace A020209.P7947572035689149849
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001651 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231571 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111624 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n)

end

end A020209.P7947572035689149849

/-!
# A020216: Pseudoprimes to base 88.

The programs for A020216, there is no canonical definition to state claims against.
-/

/-! ## A020216.P13155380272709166094

`A175612(A175612(2*n+5)+floor(2*n/5))`
-/

namespace A020216.P13155380272709166094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175612 (A175612 (2 * n + 5) + ⌊2 * ((n : ℚ) / 5)⌋).toNat

end

end A020216.P13155380272709166094

/-!
# A020225: Pseudoprimes to base 97.

The programs for A020225, there is no canonical definition to state claims against.
-/

/-! ## A020225.P13498326149435200943

`eq[A002487(n), A187816(A345918(n+1))]`
-/

namespace A020225.P13498326149435200943
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002487 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187816 (A345918 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A020225.P13498326149435200943

/-! ## A020225.P9140064048126681557

`record[A000005(A000005(2*(n+2))*A000045(n+3))]`
-/

namespace A020225.P9140064048126681557
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A000005 (2 * (n + 2)) * A000045 (n + 3)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A020225.P9140064048126681557

/-!
# A020226: Pseudoprimes to base 98.

The programs for A020226, there is no canonical definition to state claims against.
-/

/-! ## A020226.P12889849162366712340

`∩[A020217(n+1), A075824(n+1)]`
-/

namespace A020226.P12889849162366712340
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020217 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075824 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A020226.P12889849162366712340

/-!
# A020228: Pseudoprimes to base 100.

The programs for A020228, there is no canonical definition to state claims against.
-/

/-! ## A020228.P18392771525610308669

`A291663(A160275(n+1))+A001749(n+1)`
-/

namespace A020228.P18392771525610308669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291663 (A160275 (n + 1)).toNat + A001749 (n + 1)

end

end A020228.P18392771525610308669

/-!
# A020229: Strong pseudoprimes to base 3.

The programs for A020229, there is no canonical definition to state claims against.
-/

/-! ## A020229.P12392114660494428678

`∩[A005935(n+1), A020253(n+1)]`
-/

namespace A020229.P12392114660494428678
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005935 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020253 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A020229.P12392114660494428678

/-! ## A020229.P3554727643731198854

`∩[A020138(n+1), A020253(n+1)]`
-/

namespace A020229.P3554727643731198854
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020138 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020253 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A020229.P3554727643731198854

/-! ## A020229.P3223105121357591043

`∩[A020235(n+1), A020253(n+1)]`
-/

namespace A020229.P3223105121357591043
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020235 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020253 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A020229.P3223105121357591043

/-! ## A020229.P5492803734244143225

`∩[A020253(n+1), A020307(n+1)]`
-/

namespace A020229.P5492803734244143225
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020253 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020307 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A020229.P5492803734244143225

/-! ## A020229.P3021701611367224339

`∩[A020253(n+1), A048950(n+1)]`
-/

namespace A020229.P3021701611367224339
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020253 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048950 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A020229.P3021701611367224339

/-! ## A020229.P264087384563726035

`∩[A020253(n+1), A122780(n+1)]`
-/

namespace A020229.P264087384563726035
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020253 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122780 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A020229.P264087384563726035

/-! ## A020229.P11182839547555406175

`∩[A020253(n+1), A122786(n+1)]`
-/

namespace A020229.P11182839547555406175
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020253 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122786 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A020229.P11182839547555406175

/-! ## A020229.P1301965591097140617

`∩[A020253(n+1), A262051(n+1)]`
-/

namespace A020229.P1301965591097140617
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020253 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262051 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A020229.P1301965591097140617

/-! ## A020229.P2810061958152401668

`∩[A020253(n+1), A263239(n+1)]`
-/

namespace A020229.P2810061958152401668
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020253 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263239 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A020229.P2810061958152401668

/-! ## A020229.P5234843832727990156

`∩[A020253(n+1), A351336(n+1)]`
-/

namespace A020229.P5234843832727990156
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020253 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351336 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A020229.P5234843832727990156

/-! ## A020229.P17950637773132337213

`∩[A020209(n+1), A020253(n+1)]`
-/

namespace A020229.P17950637773132337213
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020209 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020253 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A020229.P17950637773132337213

/-!
# A020230: Strong pseudoprimes to base 4.

The programs for A020230, there is no canonical definition to state claims against.
-/

/-! ## A020230.P4655379034028733550

`∩[A001567(n+1), A020290(n+1)]`
-/

namespace A020230.P4655379034028733550
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001567 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020290 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A020230.P4655379034028733550

/-! ## A020230.P3578535138017922785

`∩[A020136(n+1), A020290(n+1)]`
-/

namespace A020230.P3578535138017922785
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020136 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020290 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A020230.P3578535138017922785

/-! ## A020230.P875675144711451398

`∩[A020144(n+1), A020290(n+1)]`
-/

namespace A020230.P875675144711451398
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020144 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020290 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A020230.P875675144711451398

/-! ## A020230.P11324259240137546276

`∩[A020160(n+1), A020290(n+1)]`
-/

namespace A020230.P11324259240137546276
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020160 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020290 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A020230.P11324259240137546276

/-! ## A020230.P2230541476156473658

`∩[A020242(n+1), A020290(n+1)]`
-/

namespace A020230.P2230541476156473658
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020242 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020290 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A020230.P2230541476156473658

/-! ## A020230.P6407355838650712869

`∩[A020290(n+1), A122781(n+1)]`
-/

namespace A020230.P6407355838650712869
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020290 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122781 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A020230.P6407355838650712869

/-!
# A020231: Strong pseudoprimes to base 5.

The programs for A020231, there is no canonical definition to state claims against.
-/

/-! ## A020231.P7297680966718240453

`A262052(∑{e}[∏[A001414(3*(n+1))], #]+1)`
-/

namespace A020231.P7297680966718240453
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001414 (3 * (n + 1))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262052 (∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p + 1)

end

end A020231.P7297680966718240453

/-!
# A020232: Strong pseudoprimes to base 6.

The programs for A020232, there is no canonical definition to state claims against.
-/

/-! ## A020232.P17426070676157439380

`A005937(eq[2, A283845(n+1)])`
-/

namespace A020232.P17426070676157439380
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283845 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005937 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A020232.P17426070676157439380

/-!
# A020233: Strong pseudoprimes to base 7.

The programs for A020233, there is no canonical definition to state claims against.
-/

/-! ## A020233.P10090424237050881776

`filter[A020275(n+1), A363344(#)]`
-/

namespace A020233.P10090424237050881776
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020275 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A363344 (f1 j).toNat = 1) n)

end

end A020233.P10090424237050881776

/-! ## A020233.P931384389633695445

`filter[A020275(n+1), A112713(#)]`
-/

namespace A020233.P931384389633695445
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020275 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A112713 (f1 j).toNat = 1) n)

end

end A020233.P931384389633695445

/-!
# A020235: Strong pseudoprimes to base 9.

The programs for A020235, there is no canonical definition to state claims against.
-/

/-! ## A020235.P11400500039850563285

`record[A005935(A026791((n+1)²))]`
-/

namespace A020235.P11400500039850563285
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005935 (A026791 ((n + 1) ^ 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A020235.P11400500039850563285

/-! ## A020235.P506847127661204311

`A005935(lt[A008483(n), A007318(n+3)])`
-/

namespace A020235.P506847127661204311
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008483 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005935 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A020235.P506847127661204311

/-!
# A020238: Strong pseudoprimes to base 12.

The programs for A020238, there is no canonical definition to state claims against.
-/

/-! ## A020238.P16095911456108080411

`A020140(eq[A004526(n), A027907(n)])`
-/

namespace A020238.P16095911456108080411
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027907 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020140 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A020238.P16095911456108080411

/-!
# A020242: Strong pseudoprimes to base 16.

The programs for A020242, there is no canonical definition to state claims against.
-/

/-! ## A020242.P12016281019808706875

`A020136(∑[A122377(n+1)!])`
-/

namespace A020242.P12016281019808706875
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A122377 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020136 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A020242.P12016281019808706875

/-! ## A020242.P1760056420681898503

`A020136(A078213(∑[val(n+1, 2)%2+1]))`
-/

namespace A020242.P1760056420681898503
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (n + 1) 2 % 2 + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020136 (A078213 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A020242.P1760056420681898503

/-! ## A020242.P11027289882133294922

`A020136(lt[A077608(n+3), A368276(n+1)])`
-/

namespace A020242.P11027289882133294922
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077608 (n + 3)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368276 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020136 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A020242.P11027289882133294922

/-!
# A020245: Strong pseudoprimes to base 19.

The programs for A020245, there is no canonical definition to state claims against.
-/

/-! ## A020245.P16733935408419843902

`A257670(p?[A161206(n)]²)`
-/

namespace A020245.P16733935408419843902
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161206 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257670 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) ^ 2).toNat

end

end A020245.P16733935408419843902

/-!
# A020250: Strong pseudoprimes to base 24.

The programs for A020250, there is no canonical definition to state claims against.
-/

/-! ## A020250.P6529126681314972516

`A020152(∑[∑{e}[n+1, #]+1]^A178964(n))`
-/

namespace A020250.P6529126681314972516
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f2 n), Nat.factorization (f2 n) p + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020152 (SequenceMachineLib.roundAway (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) ^ (A178964 n : ℤ))).toNat

end

end A020250.P6529126681314972516

/-!
# A020251: Strong pseudoprimes to base 25.

The programs for A020251, there is no canonical definition to state claims against.
-/

/-! ## A020251.P3096627244856072281

`A005936(eq[2, A172245(n+2)])`
-/

namespace A020251.P3096627244856072281
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172245 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005936 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A020251.P3096627244856072281

/-!
# A020258: Strong pseudoprimes to base 32.

The programs for A020258, there is no canonical definition to state claims against.
-/

/-! ## A020258.P12505377553184089563

`∩[A020160(n+1), A200046(n+1)]`
-/

namespace A020258.P12505377553184089563
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020160 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200046 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A020258.P12505377553184089563

/-!
# A020262: Strong pseudoprimes to base 36.

The programs for A020262, there is no canonical definition to state claims against.
-/

/-! ## A020262.P1918726372819654021

`record[A005937(n+1)%A214796(3*(n+1))]`
-/

namespace A020262.P1918726372819654021
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A005937 (n + 1)) (A214796 (3 * (n + 1)))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A020262.P1918726372819654021

/-! ## A020262.P9566561923900480700

`A262053(n+1)%A282766(A323623(n))`
-/

namespace A020262.P9566561923900480700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A262053 (n + 1)) (A282766 (A323623 n).toNat)

end

end A020262.P9566561923900480700

/-! ## A020262.P16275313843549171298

`A005937(lt[A038712(n+2), A079377(n+1)])`
-/

namespace A020262.P16275313843549171298
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038712 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079377 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005937 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A020262.P16275313843549171298

/-!
# A020265: Strong pseudoprimes to base 39.

The programs for A020265, there is no canonical definition to state claims against.
-/

/-! ## A020265.P6424015808216337112

`A020167(lt[A104445(3*n), A106800(2*n+1)])`
-/

namespace A020265.P6424015808216337112
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104445 (3 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106800 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020167 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A020265.P6424015808216337112

/-!
# A020273: Strong pseudoprimes to base 47.

The programs for A020273, there is no canonical definition to state claims against.
-/

/-! ## A020273.P8347451388687450988

`A322120(A014574(n+1)+A005100(2*(n+2)))`
-/

namespace A020273.P8347451388687450988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322120 (A014574 (n + 1) + A005100 (2 * (n + 2))).toNat

end

end A020273.P8347451388687450988

/-!
# A020275: Strong pseudoprimes to base 49.

The programs for A020275, there is no canonical definition to state claims against.
-/

/-! ## A020275.P12252132259783353619

`A262054(∑[A282885(n+1)!])`
-/

namespace A020275.P12252132259783353619
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A282885 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262054 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A020275.P12252132259783353619

/-! ## A020275.P5720412693474193081

`A262054(lt[A000079(n), A173681(3*n)])`
-/

namespace A020275.P5720412693474193081
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173681 (3 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262054 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A020275.P5720412693474193081

/-!
# A020283: Strong pseudoprimes to base 57.

The programs for A020283, there is no canonical definition to state claims against.
-/

/-! ## A020283.P10243675282420107386

`5*A018394(n+2)`
-/

namespace A020283.P10243675282420107386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * A018394 (n + 2)

end

end A020283.P10243675282420107386

/-!
# A020288: Strong pseudoprimes to base 62.

The programs for A020288, there is no canonical definition to state claims against.
-/

/-! ## A020288.P7452371553984127594

`A173250(A155929(n+1))`
-/

namespace A020288.P7452371553984127594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173250 (A155929 (n + 1)).toNat

end

end A020288.P7452371553984127594

/-!
# A020290: Strong pseudoprimes to base 64.

The programs for A020290, there is no canonical definition to state claims against.
-/

/-! ## A020290.P8958435104697109655

`A020137(lt[A293182(n+3), A103886(n+1)])`
-/

namespace A020290.P8958435104697109655
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293182 (n + 3)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103886 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020137 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A020290.P8958435104697109655

/-!
# A020291: Strong pseudoprimes to base 65.

The programs for A020291, there is no canonical definition to state claims against.
-/

/-! ## A020291.P9378404711590949269

`∩[A020193(n+1), A020497(n+1)]`
-/

namespace A020291.P9378404711590949269
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020193 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020497 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A020291.P9378404711590949269

/-!
# A020294: Strong pseudoprimes to base 68.

The programs for A020294, there is no canonical definition to state claims against.
-/

/-! ## A020294.P3165927345077120924

`A020196(eq[A215463(n+1), A343381(n)])`
-/

namespace A020294.P3165927345077120924
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215463 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343381 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020196 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A020294.P3165927345077120924

