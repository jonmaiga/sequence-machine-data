import SequenceMachineLib.Basic
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C004
import Seq.B000.C005
import Seq.B000.C007
import Seq.B000.C008
import Seq.B000.C009
import Seq.B000.C010
import Seq.B000.C013
import Seq.B000.C014
import Seq.B000.C015
import Seq.B000.C016
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C024
import Seq.B000.C026
import Seq.B000.C029
import Seq.B000.C032
import Seq.B000.C034
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C007
import Seq.B001.C008
import Seq.B001.C009
import Seq.B001.C010
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C006
import Seq.B003.C000
import Seq.B003.C002
import Seq.B003.C003
import Seq.B003.C005
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C001
import Seq.B005.C002
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C001
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
import Seq.Opaque.C025
import Seq.Opaque.C026

/-!
# A383500: Positive integers that contain the digit 9, or an odd digit d immediately preceded by a digit <= d.

The programs for A383500, there is no canonical definition to state claims against.
-/

/-! ## A383500.P15406916774642520592

`comp[A382935(n+1)]`
-/

namespace A383500.P15406916774642520592
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382935 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A383500.P15406916774642520592

/-! ## A383500.P18331557342078333248

`comp[A383501(n+1)]`
-/

namespace A383500.P18331557342078333248
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383501 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A383500.P18331557342078333248

/-! ## A383500.P9010791683516142930

`∪[A011539(n+1), A382937(n+1)]`
-/

namespace A383500.P9010791683516142930
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011539 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382937 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A383500.P9010791683516142930

/-! ## A383500.P12307709585340019156

`∪[A043525(n+1), A382937(n+1)]`
-/

namespace A383500.P12307709585340019156
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043525 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382937 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A383500.P12307709585340019156

/-! ## A383500.P12340852860656955703

`lt[A247515(A181762(n+1)), A347400(n+1)]`
-/

namespace A383500.P12340852860656955703
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247515 (A181762 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347400 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A383500.P12340852860656955703

/-!
# A383501: Nonnegative integers without the digit 9 such that every odd digit except the leftmost is immediately preceded by a larger digit.

The programs for A383501, there is no canonical definition to state claims against.
-/

/-! ## A383501.P1240298240731601726

`∩[A382938(n+1), A007095(n)]`
-/

namespace A383501.P1240298240731601726
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382938 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007095 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A383501.P1240298240731601726

/-! ## A383501.P4344647306116199758

`eq[1, char[A382935(n+1)]]`
-/

namespace A383501.P4344647306116199758
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382935 (n + 1)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A383501.P4344647306116199758

/-! ## A383501.P12850684141136291443

`eq[char[A383500(n+1)], A000007(2*(n+1))]`
-/

namespace A383501.P12850684141136291443
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383500 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (2 * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A383501.P12850684141136291443

/-! ## A383501.P783498787685193347

`∪[A144257(A001844(2*n)), A306111(n+1)]`
-/

namespace A383501.P783498787685193347
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144257 (A001844 (2 * n)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306111 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A383501.P783498787685193347

/-! ## A383501.P8440566607576958763

`lt[A329453(A000700(n+4)), A355833(3*n+2)]`
-/

namespace A383501.P8440566607576958763
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329453 (A000700 (n + 4)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355833 (3 * n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A383501.P8440566607576958763

/-!
# A383503: Expansion of 1/sqrt( (1-x) * (1-x-4*x^3)^3 ).

The programs for A383503, there is no canonical definition to state claims against.
-/

/-! ## A383503.P3444422189464924420

`∑[∑[A377213(n)]]`
-/

namespace A383503.P3444422189464924420
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377213 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A383503.P3444422189464924420

/-!
# A383505: Least integer k >= 0 such that binomial(k*n,k+1) = -1 mod n, or -1 if no such integer exists.

The programs for A383505, there is no canonical definition to state claims against.
-/

/-! ## A383505.P9633913356421114838

`A241469(C(n, ceil(n/2)))+n`
-/

namespace A383505.P9633913356421114838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241469 (Nat.choose n ⌈(n : ℚ) / 2⌉.toNat) + (n : ℤ)

end

end A383505.P9633913356421114838

/-! ## A383505.P2470415979489205804

`A380845(44*a(n-1))` with `a(0)=0, a(1)=1, a(2)=2, a(3)=3, a(4)=4`
-/

namespace A383505.P2470415979489205804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 2, 3, 4] fun n a =>
  A380845 (44 * a (n - 1)).toNat

end

end A383505.P2470415979489205804

/-!
# A383506: Number of non Wilf section-sum partitions of n.

The programs for A383506, there is no canonical definition to state claims against.
-/

/-! ## A383506.P13729754126030495284

`A383511(n)+A383509(n)`
-/

namespace A383506.P13729754126030495284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383511 n + A383509 n

end

end A383506.P13729754126030495284

/-! ## A383506.P15367178119705369426

`A383509(n)+A020987(A375944(n))`
-/

namespace A383506.P15367178119705369426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383509 n + A020987 (A375944 n).toNat

end

end A383506.P15367178119705369426

/-!
# A383508: Number of integer partitions of n that are both Look-and-Say and section-sum partitions.

The programs for A383508, there is no canonical definition to state claims against.
-/

/-! ## A383508.P12797299581383093268

`A383519(n)+A383511(n)`
-/

namespace A383508.P12797299581383093268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383519 n + A383511 n

end

end A383508.P12797299581383093268

/-! ## A383508.P15700194742405857917

`A383519(n)+A286939(A202844(n))`
-/

namespace A383508.P15700194742405857917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383519 n + A286939 (A202844 n).toNat

end

end A383508.P15700194742405857917

/-! ## A383508.P16076082249461316669

`A382152(A383507(n))+A025457(A000701(n))`
-/

namespace A383508.P16076082249461316669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382152 (A383507 n).toNat + A025457 (A000701 n).toNat

end

end A383508.P16076082249461316669

/-! ## A383508.P5230496173749629103

`A382152(A383507(n))+A024994(A219924(n))`
-/

namespace A383508.P5230496173749629103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382152 (A383507 n).toNat + A024994 (A219924 n).toNat

end

end A383508.P5230496173749629103

/-! ## A383508.P11278184187695455191

`A382152(A383507(n))+A025457(A307507(n+1))`
-/

namespace A383508.P11278184187695455191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382152 (A383507 n).toNat + A025457 (A307507 (n + 1)).toNat

end

end A383508.P11278184187695455191

/-!
# A383509: Number of Look-and-Say partitions of n that are not section-sum partitions.

The programs for A383509, there is no canonical definition to state claims against.
-/

/-! ## A383509.P14752694609770729017

`A351293(n)-A383510(n)`
-/

namespace A383509.P14752694609770729017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351293 n - A383510 n

end

end A383509.P14752694609770729017

/-! ## A383509.P8645000329366795481

`A383506(n)-A383511(n)`
-/

namespace A383509.P8645000329366795481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383506 n - A383511 n

end

end A383509.P8645000329366795481

/-! ## A383509.P13255106705209638611

`record[A114099(n+1)]-A239455(n)-A383510(n)`
-/

namespace A383509.P13255106705209638611
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114099 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A239455 n - A383510 n

end

end A383509.P13255106705209638611

/-!
# A383510: Number of integer partitions of n that are neither Look-and-Say nor section-sum.

The programs for A383510, there is no canonical definition to state claims against.
-/

/-! ## A383510.P13324927845726717081

`A351293(n)-A383509(n)`
-/

namespace A383510.P13324927845726717081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351293 n - A383509 n

end

end A383510.P13324927845726717081

/-!
# A383511: Number of integer partitions of n that are Look-and-Say and section-sum but not Wilf.

The programs for A383511, there is no canonical definition to state claims against.
-/

/-! ## A383511.P12460129913776544264

`A383506(n)-A383509(n)`
-/

namespace A383511.P12460129913776544264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383506 n - A383509 n

end

end A383511.P12460129913776544264

/-! ## A383511.P8100268362179813684

`A383508(n)-A383519(n)`
-/

namespace A383511.P8100268362179813684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383508 n - A383519 n

end

end A383511.P8100268362179813684

/-!
# A383513: Heinz numbers of non conjugate Wilf partitions.

The programs for A383513, there is no canonical definition to state claims against.
-/

/-! ## A383513.P2554014914481174618

`∪[A259677(n+1), A381433(n+1)]`
-/

namespace A383513.P2554014914481174618
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259677 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381433 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A383513.P2554014914481174618

/-! ## A383513.P17242894019358418198

`∪[A285300(n+1), A381433(n+1)]`
-/

namespace A383513.P17242894019358418198
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285300 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381433 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A383513.P17242894019358418198

/-! ## A383513.P1494649587078897611

`∪[A294169(n+1), A381433(n+1)]`
-/

namespace A383513.P1494649587078897611
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294169 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381433 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A383513.P1494649587078897611

/-! ## A383513.P9457692279355844908

`∪[A319613(n+1), A381433(n+1)]`
-/

namespace A383513.P9457692279355844908
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319613 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381433 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A383513.P9457692279355844908

/-! ## A383513.P1987677402397777534

`∪[A361908(n+1), A381433(n+1)]`
-/

namespace A383513.P1987677402397777534
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361908 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381433 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A383513.P1987677402397777534

/-! ## A383513.P12845510326551857080

`∪[A361908(n+1), A383517(n+1)]`
-/

namespace A383513.P12845510326551857080
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361908 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383517 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A383513.P12845510326551857080

/-! ## A383513.P3384011038179818832

`∪[A361908(n+1), A383531(n+1)]`
-/

namespace A383513.P3384011038179818832
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361908 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383531 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A383513.P3384011038179818832

/-! ## A383513.P9057035536469825654

`∪[A381433(n+1), A383531(n+1)]`
-/

namespace A383513.P9057035536469825654
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381433 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383531 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A383513.P9057035536469825654

/-! ## A383513.P17933634606435635881

`∪[A383516(n+1), A383531(n+1)]`
-/

namespace A383513.P17933634606435635881
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383516 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383531 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A383513.P17933634606435635881

/-!
# A383514: Heinz numbers of non Wilf section-sum partitions.

The programs for A383514, there is no canonical definition to state claims against.
-/

/-! ## A383514.P4594772382973793434

`∩[A049093(n+1), A307507(n+1)]`
-/

namespace A383514.P4594772382973793434
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049093 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307507 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A383514.P4594772382973793434

/-! ## A383514.P7676530863293706165

`∩[A336358(n+1), A367018(n+1)]`
-/

namespace A383514.P7676530863293706165
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336358 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367018 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A383514.P7676530863293706165

/-! ## A383514.P416309786214676535

`∩[A321453(A329135(n+1)), A001358(n+3)]`
-/

namespace A383514.P416309786214676535
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321453 (A329135 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001358 (n + 3)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A383514.P416309786214676535

/-! ## A383514.P6276645367808928638

`filter[A381432(n+1), A280710(#)]`
-/

namespace A383514.P6276645367808928638
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381432 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A280710 (f1 j).toNat = 1) n)

end

end A383514.P6276645367808928638

/-! ## A383514.P10326169459054828839

`filter[A381432(n+1), A354353(#)]`
-/

namespace A383514.P10326169459054828839
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381432 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354353 (f1 j).toNat = 1) n)

end

end A383514.P10326169459054828839

/-!
# A383515: Heinz numbers of integer partitions that are both Look-and-Say and section-sum.

The programs for A383515, there is no canonical definition to state claims against.
-/

/-! ## A383515.P17326945950477643447

`filter[A320340(n+1), A351564(#)]`
-/

namespace A383515.P17326945950477643447
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320340 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A351564 (f1 j).toNat = 1) n)

end

end A383515.P17326945950477643447

/-! ## A383515.P7000275832873744032

`∩[A130091(n+1), A320340(n+1)]`
-/

namespace A383515.P7000275832873744032
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130091 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320340 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A383515.P7000275832873744032

/-! ## A383515.P2063265033365816944

`filter[A364347(n+1), A351564(#)]`
-/

namespace A383515.P2063265033365816944
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364347 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A351564 (f1 j).toNat = 1) n)

end

end A383515.P2063265033365816944

/-! ## A383515.P7027590429968225752

`filter[A381432(n+1), A351564(#)]`
-/

namespace A383515.P7027590429968225752
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381432 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A351564 (f1 j).toNat = 1) n)

end

end A383515.P7027590429968225752

/-! ## A383515.P8325778651237507424

`∩[A130091(n+1), A364347(n+1)]`
-/

namespace A383515.P8325778651237507424
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130091 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364347 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A383515.P8325778651237507424

/-!
# A383516: Heinz numbers of Look-and-Say partitions that are not section-sum partitions.

The programs for A383516, there is no canonical definition to state claims against.
-/

/-! ## A383516.P15558381004931516170

`∩[A350845(n+1), A383113(n+1)]`
-/

namespace A383516.P15558381004931516170
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350845 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383113 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A383516.P15558381004931516170

/-! ## A383516.P8688536170506396558

`∩[A361908(n+1), A383113(n+1)]`
-/

namespace A383516.P8688536170506396558
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361908 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383113 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A383516.P8688536170506396558

/-! ## A383516.P17793888382094593349

`∩[A364348(n+1), A383113(n+1)]`
-/

namespace A383516.P17793888382094593349
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364348 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383113 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A383516.P17793888382094593349

/-! ## A383516.P5785528454648651468

`∩[A364537(n+1), A383113(n+1)]`
-/

namespace A383516.P5785528454648651468
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364537 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383113 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A383516.P5785528454648651468

/-! ## A383516.P3666446735943839252

`∩[A381433(n+1), A383113(n+1)]`
-/

namespace A383516.P3666446735943839252
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381433 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383113 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A383516.P3666446735943839252

/-!
# A383517: Heinz numbers of integer partitions that are neither Look-and-Say nor section-sum partitions.

The programs for A383517, there is no canonical definition to state claims against.
-/

/-! ## A383517.P14497911055244574576

`∩[A343126(n+1), A383531(n+1)]`
-/

namespace A383517.P14497911055244574576
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343126 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383531 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A383517.P14497911055244574576

/-! ## A383517.P1986415763667923357

`∩[A239310(n+1), A383531(n+1)]`
-/

namespace A383517.P1986415763667923357
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239310 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383531 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A383517.P1986415763667923357

/-! ## A383517.P5745782203245154248

`∩[A068577(n+1), A383531(n+1)]`
-/

namespace A383517.P5745782203245154248
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068577 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383531 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A383517.P5745782203245154248

/-! ## A383517.P14252270602513910462

`∩[A130092(n+1), A381433(n+1)]`
-/

namespace A383517.P14252270602513910462
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130092 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381433 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A383517.P14252270602513910462

/-! ## A383517.P7418493930666944778

`∩[A229307(n+1), A383531(n+1)]`
-/

namespace A383517.P7418493930666944778
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229307 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383531 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A383517.P7418493930666944778

/-!
# A383519: Number of section-sum partitions of n that have all distinct multiplicities (Wilf).

The programs for A383519, there is no canonical definition to state claims against.
-/

/-! ## A383519.P16412796324666636045

`A383508(n)-A383511(n)`
-/

namespace A383519.P16412796324666636045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383508 n - A383511 n

end

end A383519.P16412796324666636045

/-! ## A383519.P11751746759359197319

`A383508(n)-A010054(A291630(2*n+3))`
-/

namespace A383519.P11751746759359197319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383508 n - A010054 (A291630 (2 * n + 3)).toNat

end

end A383519.P11751746759359197319

/-! ## A383519.P6000548953501191119

`A382152(A383507(n))`
-/

namespace A383519.P6000548953501191119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382152 (A383507 n).toNat

end

end A383519.P6000548953501191119

/-! ## A383519.P8819350371773783947

`A383507(n)+A007949(A319559(n))`
-/

namespace A383519.P8819350371773783947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383507 n + A007949 (A319559 n).toNat

end

end A383519.P8819350371773783947

/-! ## A383519.P11546978419072669722

`A383508(n)-A124762(A319435(n))`
-/

namespace A383519.P11546978419072669722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383508 n - A124762 (A319435 n).toNat

end

end A383519.P11546978419072669722

/-!
# A383524: a(n) = Sum_{k=0..floor(n/2)} binomial(n,k) * binomial(n-k,k)^2.

The programs for A383524, there is no canonical definition to state claims against.
-/

/-! ## A383524.P17242406810771324935

`A082226(A029759(n))`
-/

namespace A383524.P17242406810771324935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082226 (A029759 n).toNat

end

end A383524.P17242406810771324935

/-! ## A383524.P13946987300220530436

`A006984(A149952(n))`
-/

namespace A383524.P13946987300220530436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006984 (A149952 n).toNat

end

end A383524.P13946987300220530436

/-!
# A383526: a(n) = Sum_{k=0..floor(n/3)} binomial(n,k) * binomial(n-2*k,k)^2.

The programs for A383526, there is no canonical definition to state claims against.
-/

/-! ## A383526.P5094864092501044925

`A358637(∑[∑[n-char[1]]])`
-/

namespace A383526.P5094864092501044925
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - ((if ∃ j, f3 j = n then 1 else 0 : ℕ) : ℤ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358637 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A383526.P5094864092501044925

/-! ## A383526.P18019762618550369141

`A226130(A060223(n))+A117662(n)`
-/

namespace A383526.P18019762618550369141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226130 (A060223 n).toNat + A117662 n

end

end A383526.P18019762618550369141

/-! ## A383526.P15388532580884776544

`xor(A046787(n), A379671(A157395(n+1)))`
-/

namespace A383526.P15388532580884776544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A046787 n) (A379671 (A157395 (n + 1)).toNat)

end

end A383526.P15388532580884776544

/-!
# A383527: Partial sums of A005773.

The programs for A383527, the canonical program `A383527.P15314249034805900064` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A383527 has offset 0).

The definition of A383527 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A383527.P15314249034805900064

`3*a(n-1)-(6/n-1)*a(n-2)+(6/n-3)*a(n-3)` with `a(0)=1, a(1)=2, a(2)=4`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A383527

/-- `3*a(n-1)-(6/n-1)*a(n-2)+(6/n-3)*a(n-3)` -/
def P15314249034805900064.Spec : Prop :=
  ∀ n, P15314249034805900064.a n = (A383527 n : ℚ)

end A383527

/-! ## A383527.P9921121306405733457

`∑[A005773(n)]`
-/

namespace A383527.P9921121306405733457
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005773 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A383527.P9921121306405733457

namespace A383527

/-- `∑[A005773(n)]` -/
def P9921121306405733457.Spec : Prop :=
  ∀ n, P9921121306405733457.a n = A383527 n

end A383527

/-! ## A383527.P11187494375274242020

`∑[A307789(n+1)]`
-/

namespace A383527.P11187494375274242020
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307789 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A383527.P11187494375274242020

namespace A383527

/-- `∑[A307789(n+1)]` -/
def P11187494375274242020.Spec : Prop :=
  ∀ n, P11187494375274242020.a n = A383527 n

end A383527

/-! ## A383527.P17804939740933268794

`(A025577(n+1)+1)/2`
-/

namespace A383527.P17804939740933268794
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A025577 (n + 1) + 1 : ℚ) / 2

end

end A383527.P17804939740933268794

namespace A383527

/-- `(A025577(n+1)+1)/2` -/
def P17804939740933268794.Spec : Prop :=
  ∀ n, P17804939740933268794.a n = (A383527 n : ℚ)

end A383527

/-! ## A383527.P2456445454017149339

`A097893(n)-A097861(n)`
-/

namespace A383527.P2456445454017149339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097893 n - A097861 n

end

end A383527.P2456445454017149339

namespace A383527

/-- `A097893(n)-A097861(n)` -/
def P2456445454017149339.Spec : Prop :=
  ∀ n, P2456445454017149339.a n = A383527 n

end A383527

/-! ## A383527.P8692392621895974584

`∑[A171670(∑[n])]`
-/

namespace A383527.P8692392621895974584
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171670 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A383527.P8692392621895974584

namespace A383527

/-- `∑[A171670(∑[n])]` -/
def P8692392621895974584.Spec : Prop :=
  ∀ n, P8692392621895974584.a n = A383527 n

end A383527

/-! ## A383527.P15660895484957222299

`∑[A169623(2*n²)]`
-/

namespace A383527.P15660895484957222299
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169623 (2 * n ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A383527.P15660895484957222299

namespace A383527

/-- `∑[A169623(2*n²)]` -/
def P15660895484957222299.Spec : Prop :=
  ∀ n, P15660895484957222299.a n = A383527 n

end A383527

/-! ## A383527.P16793292787172766565

`∑[A124445(2*n²)]`
-/

namespace A383527.P16793292787172766565
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124445 (2 * n ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A383527.P16793292787172766565

namespace A383527

/-- `∑[A124445(2*n²)]` -/
def P16793292787172766565.Spec : Prop :=
  ∀ n, P16793292787172766565.a n = A383527 n

end A383527

/-!
# A383529: a(n) = Sum_{k=0..floor(n/4)} binomial(n+k,k) * binomial(n-3*k,k).

The programs for A383529, there is no canonical definition to state claims against.
-/

/-! ## A383529.P13679758521147378739

`filter[A394802(n+1), A104893(#)]`
-/

namespace A383529.P13679758521147378739
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A394802 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A104893 (f1 j).toNat = 1) n)

end

end A383529.P13679758521147378739

/-!
# A383531: Heinz numbers of integer partitions that do not have distinct multiplicities (Wilf) or distinct nonzero 0-appended differences (conjugate Wilf).

The programs for A383531, there is no canonical definition to state claims against.
-/

/-! ## A383531.P10447998973702053437

`∩[A130092(n+1), A383513(n+1)]`
-/

namespace A383531.P10447998973702053437
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130092 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383513 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A383531.P10447998973702053437

/-! ## A383531.P16083946711854510955

`∩[A240938(n+1), A383513(n+1)]`
-/

namespace A383531.P16083946711854510955
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240938 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383513 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A383531.P16083946711854510955

/-! ## A383531.P7946097811895573105

`∩[A182851(n+1), A364348(n+1)]`
-/

namespace A383531.P7946097811895573105
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182851 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364348 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A383531.P7946097811895573105

/-! ## A383531.P13917765317492477914

`∩[A182851(n+1), A364537(n+1)]`
-/

namespace A383531.P13917765317492477914
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182851 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364537 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A383531.P13917765317492477914

/-! ## A383531.P13371972162910985536

`∩[A182851(n+1), A383513(n+1)]`
-/

namespace A383531.P13371972162910985536
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182851 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383513 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A383531.P13371972162910985536

/-!
# A383533: Number of integer partitions of n with no ones such that it is possible to choose a family of pairwise disjoint strict integer partitions, one of each part.

The programs for A383533, there is no canonical definition to state claims against.
-/

/-! ## A383533.P5956349758070282614

`A002865(n)-A383711(n)`
-/

namespace A383533.P5956349758070282614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002865 n - A383711 n

end

end A383533.P5956349758070282614

/-! ## A383533.P5098704442986597914

`A085811(n+3)-A383711(n)`
-/

namespace A383533.P5098704442986597914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085811 (n + 3) - A383711 n

end

end A383533.P5098704442986597914

/-! ## A383533.P14053285481475898714

`A238394(n)-A031436(A220032(n+1))`
-/

namespace A383533.P14053285481475898714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238394 n - A031436 (A220032 (n + 1)).toNat

end

end A383533.P14053285481475898714

/-! ## A383533.P9141694746192251818

`A238394(n)-A127241(A169985(n+4))`
-/

namespace A383533.P9141694746192251818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238394 n - A127241 (A169985 (n + 4)).toNat

end

end A383533.P9141694746192251818

/-!
# A383534: Irregular triangle read by rows where row n lists the positive first differences of the 0-prepended prime indices of n.

The programs for A383534, there is no canonical definition to state claims against.
-/

/-! ## A383534.P15453580769542671706

`A367579(A087548(n+1))`
-/

namespace A383534.P15453580769542671706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367579 (A087548 (n + 1)).toNat

end

end A383534.P15453580769542671706

/-! ## A383534.P1601546484591207695

`gcd(A007091(n+4), A297146(A167616(n+7)))`
-/

namespace A383534.P1601546484591207695
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A007091 (n + 4)) (A297146 (A167616 (n + 7)).toNat)

end

end A383534.P1601546484591207695

/-! ## A383534.P6352557695538545593

`A331181(A291719(n+1)%A319913(3*n+5))`
-/

namespace A383534.P6352557695538545593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331181 (Int.tmod (A291719 (n + 1)) (A319913 (3 * n + 5))).toNat

end

end A383534.P6352557695538545593

/-! ## A383534.P16302288115742870959

`A001511(A003215(n)*A324845(n+1))`
-/

namespace A383534.P16302288115742870959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001511 (A003215 n * A324845 (n + 1)).toNat

end

end A383534.P16302288115742870959

/-!
# A383535: Heinz number of the positive first differences of the 0-prepended prime indices of n.

The programs for A383535, there is no canonical definition to state claims against.
-/

/-! ## A383535.P5224566146529889690

`∏{e}[A122111(n+1), A000040(#)]`
-/

namespace A383535.P5224566146529889690
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122111 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A000040 (Nat.factorization (f1 n).natAbs p)

end

end A383535.P5224566146529889690

/-! ## A383535.P4021104760159330831

`∏{e}[A153212(n+1), A000040(#)]`
-/

namespace A383535.P4021104760159330831
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153212 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A000040 (Nat.factorization (f1 n).natAbs p)

end

end A383535.P4021104760159330831

/-! ## A383535.P2033820663177961346

`∏{e}[A278221(n+1), A000040(#)]`
-/

namespace A383535.P2033820663177961346
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278221 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A000040 (Nat.factorization (f1 n).natAbs p)

end

end A383535.P2033820663177961346

/-! ## A383535.P10438731064302123164

`∏{e}[A122111(n+1), A216883(#)]`
-/

namespace A383535.P10438731064302123164
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122111 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A216883 (Nat.factorization (f1 n).natAbs p)

end

end A383535.P10438731064302123164

/-! ## A383535.P13212385766787665435

`∏{e}[A122111(n+1), A385492(#)]`
-/

namespace A383535.P13212385766787665435
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122111 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A385492 (Nat.factorization (f1 n).natAbs p)

end

end A383535.P13212385766787665435

/-! ## A383535.P17410543088289060476

`∏{e}[A279352(A249817(n+1)), A000040(#)]`
-/

namespace A383535.P17410543088289060476
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279352 (A249817 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A000040 (Nat.factorization (f1 n).natAbs p)

end

end A383535.P17410543088289060476

/-! ## A383535.P11292394349520124875

`A064989(A325390(n+1))`
-/

namespace A383535.P11292394349520124875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064989 (A325390 (n + 1)).toNat

end

end A383535.P11292394349520124875

/-!
# A383536: a(n) = Sum_{k=0..floor(n/2)} binomial(n+k,k)^2 * binomial(n-k,k).

The programs for A383536, there is no canonical definition to state claims against.
-/

/-! ## A383536.P2932919882993051371

`A360519(A256537(n!))`
-/

namespace A383536.P2932919882993051371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360519 (A256537 (Nat.factorial n)).toNat

end

end A383536.P2932919882993051371

/-!
# A383537: a(n) = Sum_{k=0..floor(n/3)} binomial(n+k,k)^2 * binomial(n-2*k,k).

The programs for A383537, there is no canonical definition to state claims against.
-/

/-! ## A383537.P4426157348828954106

`A351205(a(n-1)+n)` with `a(0)=1, a(1)=1, a(2)=1`
-/

namespace A383537.P4426157348828954106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 1] fun n a =>
  A351205 (a (n - 1) + (n : ℤ)).toNat

end

end A383537.P4426157348828954106

/-! ## A383537.P6794643747607447987

`A370647(A078485(n+1))`
-/

namespace A383537.P6794643747607447987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370647 (A078485 (n + 1)).toNat

end

end A383537.P6794643747607447987

/-!
# A383539: a(n) = Sum_{k=0..floor(n/3)} binomial(n-k,k)^2 * binomial(n-2*k,k).

The programs for A383539, there is no canonical definition to state claims against.
-/

/-! ## A383539.P7901555726157977672

`A325623(A097116(n))`
-/

namespace A383539.P7901555726157977672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325623 (A097116 n).toNat

end

end A383539.P7901555726157977672

/-! ## A383539.P16208129533127249723

`or(1, A353398(A005563(n)))`
-/

namespace A383539.P16208129533127249723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A353398 (A005563 n).toNat)

end

end A383539.P16208129533127249723

/-! ## A383539.P11195858498082974896

`A331784(A210109(n+1)+A039599(n))`
-/

namespace A383539.P11195858498082974896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331784 (A210109 (n + 1) + A039599 n).toNat

end

end A383539.P11195858498082974896

/-!
# A383541: Positive numbers k such that (cos k)^k sets a new record.

The programs for A383541, there is no canonical definition to state claims against.
-/

/-! ## A383541.P10826643695299557918

`A050292(A286048(2*n+1)+A212153(n))`
-/

namespace A383541.P10826643695299557918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050292 (A286048 (2 * n + 1) + A212153 n).toNat

end

end A383541.P10826643695299557918

/-!
# A383544: Numbers k such that A383543(k) > A383543(m) for all m < k.

The programs for A383544, there is no canonical definition to state claims against.
-/

/-! ## A383544.P8332396137180912593

`record[A071808(∏{p}[n+1, #])]`
-/

namespace A383544.P8332396137180912593
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071808 (∏ p ∈ Nat.primeFactors (f2 n), p)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A383544.P8332396137180912593

/-! ## A383544.P9841902183539014271

`A071808(A383545(n+1))`
-/

namespace A383544.P9841902183539014271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071808 (A383545 (n + 1)).toNat

end

end A383544.P9841902183539014271

/-! ## A383544.P10551052616142151128

`record[A071808(A003602(n+1))]`
-/

namespace A383544.P10551052616142151128
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071808 (A003602 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A383544.P10551052616142151128

/-! ## A383544.P13892089601295797449

`record[A071808(A007947(n+1))]`
-/

namespace A383544.P13892089601295797449
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071808 (A007947 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A383544.P13892089601295797449

/-! ## A383544.P9724724056854636677

`record[A071808(A336395(n+1))]`
-/

namespace A383544.P9724724056854636677
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071808 (A336395 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A383544.P9724724056854636677

/-!
# A383545: Record values in A383543.

The programs for A383545, there is no canonical definition to state claims against.
-/

/-! ## A383545.P12790763967251147483

`A383543(A383544(n+1))`
-/

namespace A383545.P12790763967251147483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383543 (A383544 (n + 1)).toNat

end

end A383545.P12790763967251147483

/-!
# A383547: Numbers k such that A383546(k) > A383546(m) for all m < k.

The programs for A383547, there is no canonical definition to state claims against.
-/

/-! ## A383547.P1721665872090719394

`record[C(A071809(n+1), A001285(n)-1)]`
-/

namespace A383547.P1721665872090719394
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A071809 (n + 1)).toNat (A001285 n - 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A383547.P1721665872090719394

/-! ## A383547.P4875147330374821425

`record[C(A071809(n+1), 1-A010059(n))]`
-/

namespace A383547.P4875147330374821425
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A071809 (n + 1)).toNat (1 - A010059 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A383547.P4875147330374821425

/-! ## A383547.P16132770747313624508

`∩[A060735(n+1), A225600(n)]`
-/

namespace A383547.P16132770747313624508
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060735 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225600 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A383547.P16132770747313624508

/-! ## A383547.P17409016368735821358

`∩[A342702(n+1), A225600(n)]`
-/

namespace A383547.P17409016368735821358
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342702 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225600 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A383547.P17409016368735821358

/-!
# A383548: Record values in A383546.

The programs for A383548, there is no canonical definition to state claims against.
-/

/-! ## A383548.P2610805318324478171

`record[A383546(n+1)]`
-/

namespace A383548.P2610805318324478171
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383546 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A383548.P2610805318324478171

/-! ## A383548.P1367059447377855793

`A383546(A383547(n+1))`
-/

namespace A383548.P1367059447377855793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383546 (A383547 (n + 1)).toNat

end

end A383548.P1367059447377855793

/-!
# A383550: Square array A(n,k), n >= 0, k >= 0, read by antidiagonals downwards, where A(n,k) is the number of lattice paths from (0,0) to (n,k) using steps (2,0),(0,2),(3,3).

The programs for A383550, there is no canonical definition to state claims against.
-/

/-! ## A383550.P620697664133031087

`gcd(A121373(A002061(3*(n+1))), A204293(n))`
-/

namespace A383550.P620697664133031087
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A121373 (A002061 (3 * (n + 1))).toNat) (A204293 n)

end

end A383550.P620697664133031087

/-!
# A383551: Square array A(n,k), n >= 0, k >= 0, read by antidiagonals downwards, where A(n,k) is the number of lattice paths from (0,0) to (n,k) using steps (1,0),(0,1),(3,3).

The programs for A383551, there is no canonical definition to state claims against.
-/

/-! ## A383551.P8296496908232494969

`A057498(A008327(n))+A007318(n)`
-/

namespace A383551.P8296496908232494969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057498 (A008327 n).toNat + A007318 n

end

end A383551.P8296496908232494969

/-! ## A383551.P15571772291224347926

`A083893(A341847(n))+A007318(n)`
-/

namespace A383551.P15571772291224347926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083893 (A341847 n).toNat + A007318 n

end

end A383551.P15571772291224347926

/-! ## A383551.P16799577795942120503

`A007318(n)+val(A000005(A260340(n)), 3)`
-/

namespace A383551.P16799577795942120503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n + (SequenceMachineLib.valuation (A000005 (A260340 n).toNat).toNat 3 : ℤ)

end

end A383551.P16799577795942120503

/-! ## A383551.P7578741293267939559

`A352516(C(A377060(n), 2))+A007318(n)`
-/

namespace A383551.P7578741293267939559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352516 (Nat.choose (A377060 n).toNat 2) + A007318 n

end

end A383551.P7578741293267939559

/-! ## A383551.P15415500323529746763

`A300221(A374942(n+1)^A180472(n))+A007318(n)`
-/

namespace A383551.P15415500323529746763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300221 (SequenceMachineLib.roundAway ((A374942 (n + 1) : ℚ) ^ (A180472 n : ℤ))).toNat + A007318 n

end

end A383551.P15415500323529746763

/-!
# A383552: Square array A(n,k), n >= 0, k >= 0, read by antidiagonals downwards, where A(n,k) is the number of lattice paths from (0,0) to (n,k) using steps (1,0),(0,1),(2,2).

The programs for A383552, there is no canonical definition to state claims against.
-/

/-! ## A383552.P8132135039420153667

`A120835(A008288(n))`
-/

namespace A383552.P8132135039420153667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120835 (A008288 n).toNat

end

end A383552.P8132135039420153667

/-! ## A383552.P18217859591563635121

`A025455(A006972(n+1))+A132731(n)+1-A072405(n)`
-/

namespace A383552.P18217859591563635121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025455 (A006972 (n + 1)).toNat + (A132731 n + (1 - A072405 n))

end

end A383552.P18217859591563635121

/-!
# A383553: G.f. A(x) satisfies A( x*(1 - x*A(x)) )^2 = A(x) / (1 - x*A(x)).

The programs for A383553, there is no canonical definition to state claims against.
-/

/-! ## A383553.P9257969116779572609

`A341646(A305988(n))-A076323(n+1)`
-/

namespace A383553.P9257969116779572609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341646 (A305988 n).toNat - A076323 (n + 1)

end

end A383553.P9257969116779572609

/-!
# A383554: G.f. B(x) satisfies B(x)^2 = B(x*B(x)) / (1 - x*B(x)).

The programs for A383554, there is no canonical definition to state claims against.
-/

/-! ## A383554.P2797987139287157376

`A069700(A303923(n))+A001147(n)`
-/

namespace A383554.P2797987139287157376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069700 (A303923 n).toNat + A001147 n

end

end A383554.P2797987139287157376

/-! ## A383554.P12569689676717832892

`A056966(A324461(n))+A001147(n)`
-/

namespace A383554.P12569689676717832892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056966 (A324461 n).toNat + A001147 n

end

end A383554.P12569689676717832892

/-!
# A383555: G.f. C(x) satisfies C(x) = (1 - x/C(x)) * C(x/C(x))^2.

The programs for A383555, there is no canonical definition to state claims against.
-/

/-! ## A383555.P9263433930045974459

`A218970(∑[∑[n]])`
-/

namespace A383555.P9263433930045974459
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218970 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A383555.P9263433930045974459

/-! ## A383555.P13165592481251750961

`A244988(A001147(n))`
-/

namespace A383555.P13165592481251750961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244988 (A001147 n).toNat

end

end A383555.P13165592481251750961

/-!
# A383557: G.f. A(x) satisfies: Sum_{n>=0} x^n * A(x)^(n*(n-1)) = 1/Sum_{n>=0} (-1)^n * x^n * A(x)^(n^2).

The programs for A383557, there is no canonical definition to state claims against.
-/

/-! ## A383557.P18309821538448499126

`or(A174428(A002110(n)), A349331(n))`
-/

namespace A383557.P18309821538448499126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A174428 (A002110 n).toNat) (A349331 n)

end

end A383557.P18309821538448499126

/-! ## A383557.P18082924187648001994

`or(A013943(A178922(n)), A367238(n))`
-/

namespace A383557.P18082924187648001994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A013943 (A178922 n).toNat) (A367238 n)

end

end A383557.P18082924187648001994

/-!
# A383560: E.g.f. satisfies A(x) = exp(-x*A(x)) * A( x*exp(-x*A(x)) )^2.

The programs for A383560, there is no canonical definition to state claims against.
-/

/-! ## A383560.P17961069389710839384

`A003136(A193363(n))+A002061(n)`
-/

namespace A383560.P17961069389710839384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003136 (A193363 n).toNat + A002061 n

end

end A383560.P17961069389710839384

/-!
# A383561: E.g.f. B(x) satisfies B(x)^2 = exp(x*B(x)) * B(x*B(x)).

The programs for A383561, there is no canonical definition to state claims against.
-/

/-! ## A383561.P12728994927678715774

`A214677((2*n+1)^(n-1))`
-/

namespace A383561.P12728994927678715774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214677 (SequenceMachineLib.roundAway ((2 * n + 1 : ℚ) ^ ((n : ℤ) - 1 : ℤ))).toNat

end

end A383561.P12728994927678715774

/-!
# A383562: E.g.f. C(x) satisfies C(x) = exp(-x/C(x)) * C(x/C(x))^2.

The programs for A383562, there is no canonical definition to state claims against.
-/

/-! ## A383562.P15802713261035143604

`A215909(A089387(n))`
-/

namespace A383562.P15802713261035143604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215909 (A089387 n).toNat

end

end A383562.P15802713261035143604

/-!
# A383563: G.f. A(x) satisfies A( x*(1+x)/A(x)^2 ) = 1 + x.

The programs for A383563, there is no canonical definition to state claims against.
-/

/-! ## A383563.P3661522394749953711

`A137579(A000225(n))+A003319(n)`
-/

namespace A383563.P3661522394749953711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137579 (A000225 n).toNat + A003319 n

end

end A383563.P3661522394749953711

/-! ## A383563.P12176549124415246523

`A370599(A052529(n))+A003319(n)`
-/

namespace A383563.P12176549124415246523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370599 (A052529 n).toNat + A003319 n

end

end A383563.P12176549124415246523

/-! ## A383563.P8365243073617999589

`A120705(A076282(n+1))+A003319(n)`
-/

namespace A383563.P8365243073617999589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120705 (A076282 (n + 1)).toNat + A003319 n

end

end A383563.P8365243073617999589

/-!
# A383564: G.f. A(x) satisfies 1 = Sum{n=-oo..+oo} (x^n - 2*x*A(x)^n)^n.

The programs for A383564, there is no canonical definition to state claims against.
-/

/-! ## A383564.P6394731954781334936

`A130575(A054552(n))`
-/

namespace A383564.P6394731954781334936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130575 (A054552 n).toNat

end

end A383564.P6394731954781334936

/-!
# A383565: G.f. A(x) satisfies 1 = Sum{n=-oo..+oo} (2*x*A(x)^(n-2) - x^n)^n.

The programs for A383565, there is no canonical definition to state claims against.
-/

/-! ## A383565.P14591564738499916401

`A036468(A000543(n)+1)`
-/

namespace A383565.P14591564738499916401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036468 (A000543 n + 1).toNat

end

end A383565.P14591564738499916401

/-!
# A383566: Square array A(n,k), n >= 0, k >= 0, read by antidiagonals downwards, where A(n,k) is the number of lattice paths from (0,0) to (n,k) using steps (1,0),(0,1),(4,4).

The programs for A383566, there is no canonical definition to state claims against.
-/

/-! ## A383566.P10543890414233191858

`A235145(A177944(n))+A007318(n)`
-/

namespace A383566.P10543890414233191858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235145 (A177944 n).toNat + A007318 n

end

end A383566.P10543890414233191858

/-! ## A383566.P14133632330597266522

`A122841(A176331(n))+A007318(n)`
-/

namespace A383566.P14133632330597266522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122841 (A176331 n).toNat + A007318 n

end

end A383566.P14133632330597266522

/-! ## A383566.P7505023574542457223

`or(A007318(n), A127708(A219924(n)))`
-/

namespace A383566.P7505023574542457223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A007318 n) (A127708 (A219924 n).toNat)

end

end A383566.P7505023574542457223

/-! ## A383566.P16065905425934902519

`A025469(A138381(n+1))+A007318(n)`
-/

namespace A383566.P16065905425934902519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025469 (A138381 (n + 1)).toNat + A007318 n

end

end A383566.P16065905425934902519

/-! ## A383566.P8669852011194416657

`A055641(A301498(n+1))+A007318(n)`
-/

namespace A383566.P8669852011194416657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055641 (A301498 (n + 1)).toNat + A007318 n

end

end A383566.P8669852011194416657

/-!
# A383568: Expansion of 1/sqrt((1-x^5)^2 - 4*x^2).

The programs for A383568, there is no canonical definition to state claims against.
-/

/-! ## A383568.P2742841944972397654

`gcd(A107760(A135792(n+4)), A338465(n))`
-/

namespace A383568.P2742841944972397654
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A107760 (A135792 (n + 4)).toNat) (A338465 n)

end

end A383568.P2742841944972397654

/-!
# A383569: Expansion of 1/sqrt((1-x^7)^2 - 4*x^2).

The programs for A383569, there is no canonical definition to state claims against.
-/

/-! ## A383569.P9208265185597311196

`A126869(and(n, A293994(n)))`
-/

namespace A383569.P9208265185597311196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126869 (Int.land (n : ℤ) (A293994 n)).toNat

end

end A383569.P9208265185597311196

/-! ## A383569.P17775065685049973575

`filter[A392430(2*n), A075437(#)]`
-/

namespace A383569.P17775065685049973575
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392430 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A075437 (f1 j).toNat = 1) n)

end

end A383569.P17775065685049973575

/-! ## A383569.P1036367446556596998

`filter[A392430(2*n), A127972(#)]`
-/

namespace A383569.P1036367446556596998
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392430 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A127972 (f1 j).toNat = 1) n)

end

end A383569.P1036367446556596998

/-! ## A383569.P13487983199979690428

`filter[A392430(2*n), A337263(#)]`
-/

namespace A383569.P13487983199979690428
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392430 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A337263 (f1 j).toNat = 1) n)

end

end A383569.P13487983199979690428

/-! ## A383569.P4044607159958918442

`C(A126869(n), A089239(∑{d}[n+1, (#%(n+1))^3]))`
-/

namespace A383569.P4044607159958918442
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A126869 n).toNat (A089239 (∑ d ∈ Nat.divisors (f1 n), (d % (n + 1)) ^ 3)).toNat

end

end A383569.P4044607159958918442

/-!
# A383573: a(n) = Sum_{k=0..floor(n/2)} binomial(n-k,k) * binomial(2*(n-2*k),n-2*k).

The programs for A383573, there is no canonical definition to state claims against.
-/

/-! ## A383573.P190626229923361707

`A210357(A202206(n))`
-/

namespace A383573.P190626229923361707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210357 (A202206 n).toNat

end

end A383573.P190626229923361707

/-! ## A383573.P9185670695623048996

`A381717(n+1)+char[2]+A233970(2^n)-∑[n]`
-/

namespace A383573.P9185670695623048996
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381717 (n + 1) + (((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) + (A233970 (2 ^ n) - ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)))

end

end A383573.P9185670695623048996

/-!
# A383575: Characteristic function of numbers of the form k = m^e, where m is squarefree and (-1)^omega(k) = mu(e).

The programs for A383575, there is no canonical definition to state claims against.
-/

/-! ## A383575.P13873547817965378588

`A383576(n+1)+A382883(n+1)`
-/

namespace A383575.P13873547817965378588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383576 (n + 1) + A382883 (n + 1)

end

end A383575.P13873547817965378588

/-! ## A383575.P8626258357081867193

`ceil(A382883(n+1)/2)`
-/

namespace A383575.P8626258357081867193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A382883 (n + 1) : ℚ) / 2⌉

end

end A383575.P8626258357081867193

/-! ## A383575.P11934771998396238927

`A382883(n+1)*A385055(n+1)`
-/

namespace A383575.P11934771998396238927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382883 (n + 1) * A385055 (n + 1)

end

end A383575.P11934771998396238927

/-! ## A383575.P5040149906066277511

`A384667(n+1)*A385055(n+1)`
-/

namespace A383575.P5040149906066277511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A384667 (n + 1) * A385055 (n + 1)

end

end A383575.P5040149906066277511

/-! ## A383575.P18369323533388879921

`(A384709(n+1)+A382883(n+1))*A382883(n+1)`
-/

namespace A383575.P18369323533388879921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A384709 (n + 1) + A382883 (n + 1)) * A382883 (n + 1)

end

end A383575.P18369323533388879921

/-! ## A383575.P2683782820924359106

`A227291(A390555(A360969((n+1)²)))`
-/

namespace A383575.P2683782820924359106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227291 (A390555 (A360969 ((n + 1) ^ 2)).toNat).toNat

end

end A383575.P2683782820924359106

/-! ## A383575.P3606940058497272574

`A368980(A368977(A286324((n+1)²)))`
-/

namespace A383575.P3606940058497272574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368980 (A368977 (A286324 ((n + 1) ^ 2)).toNat).toNat

end

end A383575.P3606940058497272574

/-! ## A383575.P14895107891178514604

`A382080(n+1)*A385055(n+1)`
-/

namespace A383575.P14895107891178514604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382080 (n + 1) * A385055 (n + 1)

end

end A383575.P14895107891178514604

/-! ## A383575.P10279631222293200332

`and(A077740(n+1), A373481(n+1))`
-/

namespace A383575.P10279631222293200332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A077740 (n + 1)) (A373481 (n + 1))

end

end A383575.P10279631222293200332

/-! ## A383575.P8043129721832162908

`and(A078214(n+1), A373481(n+1))`
-/

namespace A383575.P8043129721832162908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A078214 (n + 1)) (A373481 (n + 1))

end

end A383575.P8043129721832162908

/-!
# A383576: Characteristic function of numbers of the form k = m^e, where m is squarefree and (-1)^omega(k) = -mu(e).

The programs for A383576, there is no canonical definition to state claims against.
-/

/-! ## A383576.P830472711685819042

`A383575(n+1)-A382883(n+1)`
-/

namespace A383576.P830472711685819042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383575 (n + 1) - A382883 (n + 1)

end

end A383576.P830472711685819042

/-! ## A383576.P11921816688006494854

`char[lt[A382883(n+1), 0]]`
-/

namespace A383576.P11921816688006494854
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382883 (n + 1)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < (f3 j : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A383576.P11921816688006494854

/-! ## A383576.P1606704645363015127

`A384667(n+1)*A384709(n+1)`
-/

namespace A383576.P1606704645363015127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A384667 (n + 1) * A384709 (n + 1)

end

end A383576.P1606704645363015127

/-! ## A383576.P7108948005118840885

`(A382883(n+1)-A385055(n+1))*A382883(n+1)`
-/

namespace A383576.P7108948005118840885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A382883 (n + 1) - A385055 (n + 1)) * A382883 (n + 1)

end

end A383576.P7108948005118840885

/-! ## A383576.P1609383621340729711

`A382883(n+1)*A382883(n+1)*A384709(n+1)`
-/

namespace A383576.P1609383621340729711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382883 (n + 1) * A382883 (n + 1) * A384709 (n + 1)

end

end A383576.P1609383621340729711

/-! ## A383576.P3944737227210378586

`A083923(A112621(n+1))`
-/

namespace A383576.P3944737227210378586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083923 (A112621 (n + 1)).toNat

end

end A383576.P3944737227210378586

/-! ## A383576.P4032316971994963481

`A050602(A256691(n+1))`
-/

namespace A383576.P4032316971994963481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050602 (A256691 (n + 1)).toNat

end

end A383576.P4032316971994963481

/-!
# A383578: Let p = prime(n), then a(n) is the p-smooth part of (p-1)! + 1.

The programs for A383578, the canonical program `A383578.P17294025589639841997` is in `Seq.B001.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A383578 has offset 1).

The definition of A383578 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A383578.P17294025589639841997

`A000040(n+1)^(char[(n*a(n-1))²+n]+1)` with `a(0)=2`

The canonical program, it is in `Seq.B001.C010`.
-/

namespace A383578

/-- `A000040(n+1)^(char[(n*a(n-1))²+n]+1)` -/
def P17294025589639841997.Spec : Prop :=
  ∀ n, P17294025589639841997.a n = A383578 (n + 1)

theorem P17294025589639841997.correct : P17294025589639841997.Spec := by
  intro n
  simp only [A383578, Nat.add_sub_cancel]

end A383578

/-! ## A383578.P13478424709950631139

`A000040(n+1)^A316782(A023175(n+1))`
-/

namespace A383578.P13478424709950631139
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000040 (n + 1) : ℚ) ^ (A316782 (A023175 (n + 1)).toNat : ℤ)

end

end A383578.P13478424709950631139

namespace A383578

/-- `A000040(n+1)^A316782(A023175(n+1))` -/
def P13478424709950631139.Spec : Prop :=
  ∀ n, P13478424709950631139.a n = (A383578 (n + 1) : ℚ)

end A383578

/-! ## A383578.P14731691850901881621

`A000040(n+1)^A174965(A353448(n+1))`
-/

namespace A383578.P14731691850901881621
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000040 (n + 1) : ℚ) ^ (A174965 (A353448 (n + 1)).toNat : ℤ)

end

end A383578.P14731691850901881621

namespace A383578

/-- `A000040(n+1)^A174965(A353448(n+1))` -/
def P14731691850901881621.Spec : Prop :=
  ∀ n, P14731691850901881621.a n = (A383578 (n + 1) : ℚ)

end A383578

/-! ## A383578.P5790448294666489822

`A000040(n+1)^A294336(A283511(n+1))`
-/

namespace A383578.P5790448294666489822
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000040 (n + 1) : ℚ) ^ (A294336 (A283511 (n + 1)).toNat : ℤ)

end

end A383578.P5790448294666489822

namespace A383578

/-- `A000040(n+1)^A294336(A283511(n+1))` -/
def P5790448294666489822.Spec : Prop :=
  ∀ n, P5790448294666489822.a n = (A383578 (n + 1) : ℚ)

end A383578

/-! ## A383578.P17798190662444750911

`A346088(A000040(n+1)*A346040(n+1))`
-/

namespace A383578.P17798190662444750911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346088 (A000040 (n + 1) * A346040 (n + 1)).toNat

end

end A383578.P17798190662444750911

namespace A383578

/-- `A346088(A000040(n+1)*A346040(n+1))` -/
def P17798190662444750911.Spec : Prop :=
  ∀ n, P17798190662444750911.a n = A383578 (n + 1)

end A383578

/-!
# A383579: a(n) is the largest number t such that there exist numbers i,j,k such that, for all m <= t, there exist integers x,y,z with x*i + y*j + z*k = m and |x|+|y|+|z| <= n.

The programs for A383579, there is no canonical definition to state claims against.
-/

/-! ## A383579.P3900826829043285631

`∑[∑[A056239(A052644(n))]]`
-/

namespace A383579.P3900826829043285631
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056239 (A052644 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A383579.P3900826829043285631

/-! ## A383579.P381263794850587173

`A001752(n)-A010060(A002720(n))`
-/

namespace A383579.P381263794850587173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001752 n - A010060 (A002720 n).toNat

end

end A383579.P381263794850587173

/-! ## A383579.P4326051566459481319

`A001752(n)-A008966(A001405(3*n+1))`
-/

namespace A383579.P4326051566459481319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001752 n - A008966 (A001405 (3 * n + 1)).toNat

end

end A383579.P4326051566459481319

/-!
# A383580: a(n) is the largest number t such that there exist numbers i,j,k,l such that, for all m <= t, there exist integers x,y,z,w with x*i + y*j + z*k + w*l = m and |x|+|y|+|z|+|w| <= n.

The programs for A383580, there is no canonical definition to state claims against.
-/

/-! ## A383580.P17873857416205947196

`A193879(A005994(n))`
-/

namespace A383580.P17873857416205947196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193879 (A005994 n).toNat

end

end A383580.P17873857416205947196

/-!
# A383581: a(n) = Sum_{k=0..floor(n/3)} binomial(n-2*k,k) * binomial(2*(n-3*k),n-3*k).

The programs for A383581, there is no canonical definition to state claims against.
-/

/-! ## A383581.P14925437095424307931

`A141204(A149975(n))`
-/

namespace A383581.P14925437095424307931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141204 (A149975 n).toNat

end

end A383581.P14925437095424307931

/-! ## A383581.P8363728595593050006

`∑[A276888(A000110(n))]`
-/

namespace A383581.P8363728595593050006
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276888 (A000110 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A383581.P8363728595593050006

/-!
# A383582: a(n) = Sum_{k=0..floor(n/4)} binomial(n-3*k,k) * binomial(2*(n-4*k),n-4*k).

The programs for A383582, there is no canonical definition to state claims against.
-/

/-! ## A383582.P329071592736144565

`A075249(A006134(n+1))`
-/

namespace A383582.P329071592736144565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075249 (A006134 (n + 1)).toNat

end

end A383582.P329071592736144565

/-! ## A383582.P13479923205156534467

`A131646(A103198(n))+A000984(n)`
-/

namespace A383582.P13479923205156534467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131646 (A103198 n).toNat + A000984 n

end

end A383582.P13479923205156534467

/-!
# A383585: Number of vertices of even degree in a cubic lattice n X n X n.

The programs for A383585, the canonical program `A383585.P679580776248636813` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A383585 has offset 1).

The definition of A383585 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A383585.P679580776248636813

`4*a(n-1)-6*a(n-2)+4*a(n-3)-a(n-4)` with `a(0)=0, a(1)=0, a(2)=13, a(3)=32, a(4)=63`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A383585

/-- `4*a(n-1)-6*a(n-2)+4*a(n-3)-a(n-4)` -/
def P679580776248636813.Spec : Prop :=
  ∀ n, P679580776248636813.a n = A383585 (n + 1)

theorem P679580776248636813.correct : P679580776248636813.Spec := by
  intro n
  simp only [A383585, Nat.add_sub_cancel]

end A383585

/-! ## A383585.P6655770000134972606

`∑[A373584(n+1)%A058316(3*n)]`
-/

namespace A383585.P6655770000134972606
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A373584 (n + 1)) (A058316 (3 * n))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A383585.P6655770000134972606

namespace A383585

/-- `∑[A373584(n+1)%A058316(3*n)]` -/
def P6655770000134972606.Spec : Prop :=
  ∀ n, P6655770000134972606.a n = A383585 (n + 1)

end A383585

/-!
# A383588: a(n) is the minimum sum of a nonnegative integer 6-tuple that takes n moves to reach a 0 component, where a move picks two components, subtracts the smaller from the larger, and doubles the smaller.

The programs for A383588, there is no canonical definition to state claims against.
-/

/-! ## A383588.P2693740484926552424

`A346951(A015656(n+1))`
-/

namespace A383588.P2693740484926552424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346951 (A015656 (n + 1)).toNat

end

end A383588.P2693740484926552424

/-!
# A383589: a(n) = A378762(A381662(n)).

The programs for A383589, the canonical program `A383589.P13762508171308959209` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A383589 has offset 1).

The definition of A383589 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9730 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A383589.P11394396780822034998

`A376214(A056023(n+1))`
-/

namespace A383589.P11394396780822034998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376214 (A056023 (n + 1)).toNat

end

end A383589.P11394396780822034998

namespace A383589

/-- `A376214(A056023(n+1))` -/
def P11394396780822034998.Spec : Prop :=
  ∀ n, P11394396780822034998.a n = A383589 (n + 1)

end A383589

/-! ## A383589.P13762508171308959209

`A379343(A378200(n+1))`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A383589

/-- `A379343(A378200(n+1))` -/
def P13762508171308959209.Spec : Prop :=
  ∀ n, P13762508171308959209.a n = A383589 (n + 1)

theorem P13762508171308959209.correct : P13762508171308959209.Spec := by
  intro n
  simp only [A383589, Nat.add_sub_cancel]

end A383589

/-! ## A383589.P14715405751735310784

`A378705(A380200(n+1))`
-/

namespace A383589.P14715405751735310784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378705 (A380200 (n + 1)).toNat

end

end A383589.P14715405751735310784

namespace A383589

/-- `A378705(A380200(n+1))` -/
def P14715405751735310784.Spec : Prop :=
  ∀ n, P14715405751735310784.a n = A383589 (n + 1)

end A383589

/-! ## A383589.P3615516337179948084

`A380815(A378705(n+1))`
-/

namespace A383589.P3615516337179948084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380815 (A378705 (n + 1)).toNat

end

end A383589.P3615516337179948084

namespace A383589

/-- `A380815(A378705(n+1))` -/
def P3615516337179948084.Spec : Prop :=
  ∀ n, P3615516337179948084.a n = A383589 (n + 1)

end A383589

/-! ## A383589.P16342403532674426475

`A378200(A381663(n+1))`
-/

namespace A383589.P16342403532674426475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378200 (A381663 (n + 1)).toNat

end

end A383589.P16342403532674426475

namespace A383589

/-- `A378200(A381663(n+1))` -/
def P16342403532674426475.Spec : Prop :=
  ∀ n, P16342403532674426475.a n = A383589 (n + 1)

end A383589

/-! ## A383589.P11294761823466269227

`A381662(A378762(n+1))`
-/

namespace A383589.P11294761823466269227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381662 (A378762 (n + 1)).toNat

end

end A383589.P11294761823466269227

namespace A383589

/-- `A381662(A378762(n+1))` -/
def P11294761823466269227.Spec : Prop :=
  ∀ n, P11294761823466269227.a n = A383589 (n + 1)

end A383589

/-! ## A383589.P1229861766094693813

`A383723(A380817(n+1))`
-/

namespace A383589.P1229861766094693813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383723 (A380817 (n + 1)).toNat

end

end A383589.P1229861766094693813

namespace A383589

/-- `A383723(A380817(n+1))` -/
def P1229861766094693813.Spec : Prop :=
  ∀ n, P1229861766094693813.a n = A383589 (n + 1)

end A383589

/-! ## A383589.P17957314643917388404

`A383419(A381968(n+1))`
-/

namespace A383589.P17957314643917388404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383419 (A381968 (n + 1)).toNat

end

end A383589.P17957314643917388404

namespace A383589

/-- `A383419(A381968(n+1))` -/
def P17957314643917388404.Spec : Prop :=
  ∀ n, P17957314643917388404.a n = A383589 (n + 1)

end A383589

/-! ## A383589.P14582672778968855311

`A383590(A382499(n+1))`
-/

namespace A383589.P14582672778968855311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383590 (A382499 (n + 1)).toNat

end

end A383589.P14582672778968855311

namespace A383589

/-- `A383590(A382499(n+1))` -/
def P14582672778968855311.Spec : Prop :=
  ∀ n, P14582672778968855311.a n = A383589 (n + 1)

end A383589

/-! ## A383589.P11119405650568000345

`A383722(A382679(n+1))`
-/

namespace A383589.P11119405650568000345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383722 (A382679 (n + 1)).toNat

end

end A383589.P11119405650568000345

namespace A383589

/-- `A383722(A382679(n+1))` -/
def P11119405650568000345.Spec : Prop :=
  ∀ n, P11119405650568000345.a n = A383589 (n + 1)

end A383589

/-! ## A383589.P14632131909035486548

`A383724(A382680(n+1))`
-/

namespace A383589.P14632131909035486548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383724 (A382680 (n + 1)).toNat

end

end A383589.P14632131909035486548

namespace A383589

/-- `A383724(A382680(n+1))` -/
def P14632131909035486548.Spec : Prop :=
  ∀ n, P14632131909035486548.a n = A383589 (n + 1)

end A383589

/-! ## A383589.P12759081438812300210

`A056023(A378684(A380245(n+1)))`
-/

namespace A383589.P12759081438812300210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056023 (A378684 (A380245 (n + 1)).toNat).toNat

end

end A383589.P12759081438812300210

namespace A383589

/-- `A056023(A378684(A380245(n+1)))` -/
def P12759081438812300210.Spec : Prop :=
  ∀ n, P12759081438812300210.a n = A383589 (n + 1)

end A383589

/-! ## A383589.P17690776911530413017

`A380245(A056023(A381664(n+1)))`
-/

namespace A383589.P17690776911530413017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380245 (A056023 (A381664 (n + 1)).toNat).toNat

end

end A383589.P17690776911530413017

namespace A383589

/-- `A380245(A056023(A381664(n+1)))` -/
def P17690776911530413017.Spec : Prop :=
  ∀ n, P17690776911530413017.a n = A383589 (n + 1)

end A383589

/-! ## A383589.P223085450999518989

`A378762(A056023(A383723(n+1)))`
-/

namespace A383589.P223085450999518989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378762 (A056023 (A383723 (n + 1)).toNat).toNat

end

end A383589.P223085450999518989

namespace A383589

/-- `A378762(A056023(A383723(n+1)))` -/
def P223085450999518989.Spec : Prop :=
  ∀ n, P223085450999518989.a n = A383589 (n + 1)

end A383589

/-! ## A383589.P1946316200847053071

`A378705(A376214(A379342(n+1)))`
-/

namespace A383589.P1946316200847053071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378705 (A376214 (A379342 (n + 1)).toNat).toNat

end

end A383589.P1946316200847053071

namespace A383589

/-- `A378705(A376214(A379342(n+1)))` -/
def P1946316200847053071.Spec : Prop :=
  ∀ n, P1946316200847053071.a n = A383589 (n + 1)

end A383589

/-! ## A383589.P424201862773437915

`A380245(A378705(A376214(n+1)))`
-/

namespace A383589.P424201862773437915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380245 (A378705 (A376214 (n + 1)).toNat).toNat

end

end A383589.P424201862773437915

namespace A383589

/-- `A380245(A378705(A376214(n+1)))` -/
def P424201862773437915.Spec : Prop :=
  ∀ n, P424201862773437915.a n = A383589 (n + 1)

end A383589

/-! ## A383589.P15189963646133553809

`A378705(A379343(A379343(n+1)))`
-/

namespace A383589.P15189963646133553809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378705 (A379343 (A379343 (n + 1)).toNat).toNat

end

end A383589.P15189963646133553809

namespace A383589

/-- `A378705(A379343(A379343(n+1)))` -/
def P15189963646133553809.Spec : Prop :=
  ∀ n, P15189963646133553809.a n = A383589 (n + 1)

end A383589

/-! ## A383589.P17163740372648539222

`A380815(A378762(A378684(n+1)))`
-/

namespace A383589.P17163740372648539222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380815 (A378762 (A378684 (n + 1)).toNat).toNat

end

end A383589.P17163740372648539222

namespace A383589

/-- `A380815(A378762(A378684(n+1)))` -/
def P17163740372648539222.Spec : Prop :=
  ∀ n, P17163740372648539222.a n = A383589 (n + 1)

end A383589

/-! ## A383589.P15909781973092580190

`A378200(A380815(A380815(n+1)))`
-/

namespace A383589.P15909781973092580190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378200 (A380815 (A380815 (n + 1)).toNat).toNat

end

end A383589.P15909781973092580190

namespace A383589

/-- `A378200(A380815(A380815(n+1)))` -/
def P15909781973092580190.Spec : Prop :=
  ∀ n, P15909781973092580190.a n = A383589 (n + 1)

end A383589

/-! ## A383589.P871326853667182071

`A381968(A376214(A383722(n+1)))`
-/

namespace A383589.P871326853667182071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381968 (A376214 (A383722 (n + 1)).toNat).toNat

end

end A383589.P871326853667182071

namespace A383589

/-- `A381968(A376214(A383722(n+1)))` -/
def P871326853667182071.Spec : Prop :=
  ∀ n, P871326853667182071.a n = A383589 (n + 1)

end A383589

/-!
# A383590: a(n) = A378762(A382499(n)).

The programs for A383590, there is no canonical definition to state claims against.
-/

/-! ## A383590.P1457458916238450809

`A382679(A056023(n+1))`
-/

namespace A383590.P1457458916238450809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382679 (A056023 (n + 1)).toNat

end

end A383590.P1457458916238450809

/-! ## A383590.P15303413179654235979

`A056023(A382680(n+1))`
-/

namespace A383590.P15303413179654235979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056023 (A382680 (n + 1)).toNat

end

end A383590.P15303413179654235979

/-! ## A383590.P4982954030452849897

`A383722(A376214(n+1))`
-/

namespace A383590.P4982954030452849897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383722 (A376214 (n + 1)).toNat

end

end A383590.P4982954030452849897

/-! ## A383590.P6369359343635578301

`A376214(A383724(n+1))`
-/

namespace A383590.P6369359343635578301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376214 (A383724 (n + 1)).toNat

end

end A383590.P6369359343635578301

/-! ## A383590.P4614877016123536980

`A382499(A378762(n+1))`
-/

namespace A383590.P4614877016123536980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382499 (A378762 (n + 1)).toNat

end

end A383590.P4614877016123536980

/-! ## A383590.P6535838432566029428

`A383724(A380817(n+1))`
-/

namespace A383590.P6535838432566029428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383724 (A380817 (n + 1)).toNat

end

end A383590.P6535838432566029428

/-! ## A383590.P10221706761587669251

`A380817(A383722(n+1))`
-/

namespace A383590.P10221706761587669251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380817 (A383722 (n + 1)).toNat

end

end A383590.P10221706761587669251

/-! ## A383590.P1826225297480680942

`A383419(A381662(n+1))`
-/

namespace A383590.P1826225297480680942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383419 (A381662 (n + 1)).toNat

end

end A383590.P1826225297480680942

/-! ## A383590.P15035345453606613159

`A383589(A381968(n+1))`
-/

namespace A383590.P15035345453606613159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383589 (A381968 (n + 1)).toNat

end

end A383590.P15035345453606613159

/-! ## A383590.P18428711288974950633

`A383723(A382679(n+1))`
-/

namespace A383590.P18428711288974950633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383723 (A382679 (n + 1)).toNat

end

end A383590.P18428711288974950633

/-! ## A383590.P11567508933505818046

`A382680(A383723(n+1))`
-/

namespace A383590.P11567508933505818046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382680 (A383723 (n + 1)).toNat

end

end A383590.P11567508933505818046

/-! ## A383590.P4845527343582545573

`A382499(A378684(A378200(n+1)))`
-/

namespace A383590.P4845527343582545573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382499 (A378684 (A378200 (n + 1)).toNat).toNat

end

end A383590.P4845527343582545573

/-! ## A383590.P6249428296458580616

`A378200(A381968(A379342(n+1)))`
-/

namespace A383590.P6249428296458580616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378200 (A381968 (A379342 (n + 1)).toNat).toNat

end

end A383590.P6249428296458580616

/-! ## A383590.P11707531472823537976

`A382680(A378200(A379343(n+1)))`
-/

namespace A383590.P11707531472823537976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382680 (A378200 (A379343 (n + 1)).toNat).toNat

end

end A383590.P11707531472823537976

/-! ## A383590.P1084102526390469310

`A380817(A376214(A383419(n+1)))`
-/

namespace A383590.P1084102526390469310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380817 (A376214 (A383419 (n + 1)).toNat).toNat

end

end A383590.P1084102526390469310

/-! ## A383590.P12869483773691160770

`A382499(A379342(A378705(n+1)))`
-/

namespace A383590.P12869483773691160770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382499 (A379342 (A378705 (n + 1)).toNat).toNat

end

end A383590.P12869483773691160770

/-! ## A383590.P16439055489024147355

`A378200(A382679(A380200(n+1)))`
-/

namespace A383590.P16439055489024147355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378200 (A382679 (A380200 (n + 1)).toNat).toNat

end

end A383590.P16439055489024147355

/-! ## A383590.P13883725817004349622

`A378684(A383724(A378684(n+1)))`
-/

namespace A383590.P13883725817004349622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378684 (A383724 (A378684 (n + 1)).toNat).toNat

end

end A383590.P13883725817004349622

/-! ## A383590.P11975794301721321098

`A378200(A382680(A380245(n+1)))`
-/

namespace A383590.P11975794301721321098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378200 (A382680 (A380245 (n + 1)).toNat).toNat

end

end A383590.P11975794301721321098

/-! ## A383590.P432577252385345220

`A378200(A382499(A380815(n+1)))`
-/

namespace A383590.P432577252385345220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378200 (A382499 (A380815 (n + 1)).toNat).toNat

end

end A383590.P432577252385345220

/-!
# A383591: Smallest prime p where the absolute difference of the gaps to the adjacent primes exceeds n*log(p).

The programs for A383591, there is no canonical definition to state claims against.
-/

/-! ## A383591.P17805237829311496469

`A000040(A144309((n+1)*(n+2)))`
-/

namespace A383591.P17805237829311496469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A144309 ((n + 1) * (n + 2))).toNat

end

end A383591.P17805237829311496469

/-!
# A383593: In the binary expansion of n, change the most significant 0 bit to 1, if there is any 0 bit.

The programs for A383593, the canonical program `A383593.P18009256936053025423` is in `Seq.B003.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A383593 has offset 0).

The definition of A383593 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A383593.P18009256936053025423

`A004760(A266341(n)+2)`

The canonical program, it is in `Seq.B003.C005`.
-/

namespace A383593

/-- `A004760(A266341(n)+2)` -/
def P18009256936053025423.Spec : Prop :=
  ∀ n, P18009256936053025423.a n = A383593 n

theorem P18009256936053025423.correct : P18009256936053025423.Spec := by
  intro n
  simp only [A383593]

end A383593

/-! ## A383593.P11246368019046230729

`A053644(A035327(n))+n`
-/

namespace A383593.P11246368019046230729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053644 (A035327 n).toNat + (n : ℤ)

end

end A383593.P11246368019046230729

namespace A383593

/-- `A053644(A035327(n))+n` -/
def P11246368019046230729.Spec : Prop :=
  ∀ n, P11246368019046230729.a n = A383593 n

end A383593

/-! ## A383593.P5915055947043373024

`A004277(n)-A246592(n)`
-/

namespace A383593.P5915055947043373024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 n - A246592 n

end

end A383593.P5915055947043373024

namespace A383593

/-- `A004277(n)-A246592(n)` -/
def P5915055947043373024.Spec : Prop :=
  ∀ n, P5915055947043373024.a n = A383593 n

end A383593

/-! ## A383593.P9529816652947855661

`A131577(A063250(n))+A028310(n)`
-/

namespace A383593.P9529816652947855661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131577 (A063250 n).toNat + A028310 n

end

end A383593.P9529816652947855661

namespace A383593

/-- `A131577(A063250(n))+A028310(n)` -/
def P9529816652947855661.Spec : Prop :=
  ∀ n, P9529816652947855661.a n = A383593 n

end A383593

/-! ## A383593.P18159815144383792338

`or(n, A140130(A109613(n)))`
-/

namespace A383593.P18159815144383792338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (n : ℤ) (A140130 (A109613 n).toNat)

end

end A383593.P18159815144383792338

namespace A383593

/-- `or(n, A140130(A109613(n)))` -/
def P18159815144383792338.Spec : Prop :=
  ∀ n, P18159815144383792338.a n = A383593 n

end A383593

/-!
# A383597: Expansion of 1/( (1-x)^2 * (1-10*x) )^(1/3).

The programs for A383597, there is no canonical definition to state claims against.
-/

/-! ## A383597.P14370451432270931535

`∑[A361375(n)]`
-/

namespace A383597.P14370451432270931535
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361375 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A383597.P14370451432270931535

/-!
# A383598: Expansion of 1/( (1-x^2)^2 * (1-x^2-9*x) )^(1/3).

The programs for A383598, there is no canonical definition to state claims against.
-/

/-! ## A383598.P5812002642667526737

`∑[A026478(A111537(n))]`
-/

namespace A383598.P5812002642667526737
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026478 (A111537 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A383598.P5812002642667526737

/-!
# A383599: Expansion of 1/( (1-x^3)^2 * (1-x^3-9*x) )^(1/3).

The programs for A383599, there is no canonical definition to state claims against.
-/

/-! ## A383599.P10631308864348846648

`filter[A369940(n+1), A022930(#)]`
-/

namespace A383599.P10631308864348846648
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369940 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A022930 (f1 j).toNat = 1) n)

end

end A383599.P10631308864348846648

