import SequenceMachineLib
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C003
import Seq.B000.C005
import Seq.B000.C006
import Seq.B000.C008
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
import Seq.B000.C028
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C044
import Seq.B000.C045
import Seq.B000.C046
import Seq.B000.C049
import Seq.B000.C050
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C004
import Seq.B001.C008
import Seq.B001.C009
import Seq.B001.C010
import Seq.B001.C012
import Seq.B001.C013
import Seq.B001.C014
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C003
import Seq.B002.C005
import Seq.B003.C000
import Seq.B003.C002
import Seq.B003.C005
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B004.C003
import Seq.B004.C004
import Seq.B005.C000
import Seq.B005.C002
import Seq.B006.C001
import Seq.B007.C001
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
import SequenceMachineLib.Triangle

/-!
# A383500: Positive integers that contain the digit 9, or an odd digit d immediately preceded by a digit <= d.

The programs for A383500, there is no canonical definition to state claims against.
-/

/-! ## A383500.P13661056290733666037

`comp[A382935(1+n)]`
-/

namespace A383500.P13661056290733666037
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382935 (1 + n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A383500.P13661056290733666037

/-! ## A383500.P15258157867956799833

`comp[A383501(1+n)]`
-/

namespace A383500.P15258157867956799833
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383501 (1 + n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A383500.P15258157867956799833

/-! ## A383500.P9599540018719848299

`comp[∩[A382938(n+1), A007095(n)]]`
-/

namespace A383500.P9599540018719848299
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382938 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007095 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f2 j = (x : ℤ)) ∧ ∃ j, f3 j = (x : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A383500.P9599540018719848299

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

/-! ## A383500.P413490499249642130

`∪[A088479(n+1), A382937(n+1)]`
-/

namespace A383500.P413490499249642130
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088479 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382937 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A383500.P413490499249642130

/-!
# A383501: Nonnegative integers without the digit 9 such that every odd digit except the leftmost is immediately preceded by a larger digit.

The programs for A383501, there is no canonical definition to state claims against.
-/

/-! ## A383501.P1120966887175651304

`∩[A382938(1+n), A007095(n)]`
-/

namespace A383501.P1120966887175651304
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382938 (1 + n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007095 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A383501.P1120966887175651304

/-! ## A383501.P3696138133137980397

`comp[A383500(1+n)]`
-/

namespace A383501.P3696138133137980397
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383500 (1 + n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A383501.P3696138133137980397

/-! ## A383501.P15838220457743310270

`comp[∪[A011539(n+1), A382937(n+1)]]`
-/

namespace A383501.P15838220457743310270
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011539 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382937 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f2 j = (x : ℤ)) ∨ ∃ j, f3 j = (x : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A383501.P15838220457743310270

/-! ## A383501.P2821531637491106960

`comp[∪[A043525(n+1), A382937(n+1)]]`
-/

namespace A383501.P2821531637491106960
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043525 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382937 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f2 j = (x : ℤ)) ∨ ∃ j, f3 j = (x : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A383501.P2821531637491106960

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

/-!
# A383503: Expansion of 1/sqrt( (1-x) * (1-x-4*x^3)^3 ).

The programs for A383503, the canonical program `A383503.P7735017479182246139` is in `Seq.B000.C049`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A383503 has offset 0).

The definition of A383503 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A383503.P7735017479182246139

`∑{#}[floor(n/3), (2*#+1)*C(2*#, #)*C(n-2*#+1, #+1)]`

The canonical program, it is in `Seq.B000.C049`.
-/

namespace A383503

/-- `∑{#}[floor(n/3), (2*#+1)*C(2*#, #)*C(n-2*#+1, #+1)]` -/
def P7735017479182246139.Spec : Prop :=
  ∀ n, (P7735017479182246139.a n : ℤ) = A383503 n

theorem P7735017479182246139.correct : P7735017479182246139.Spec := by
  intro n
  simp only [A383503]

end A383503

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

namespace A383503

/-- `∑[∑[A377213(n)]]` -/
def P3444422189464924420.Spec : Prop :=
  ∀ n, P3444422189464924420.a n = A383503 n

end A383503

/-!
# A383505: Least integer k >= 0 such that binomial(k*n,k+1) = -1 mod n, or -1 if no such integer exists.

The programs for A383505, there is no canonical definition to state claims against.
-/

/-! ## A383505.P2191504413395381292

`(n+1)*A398454(n+1)-1`
-/

namespace A383505.P2191504413395381292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A398454 (n + 1) - 1

end

end A383505.P2191504413395381292

/-! ## A383505.P10779705349217231830

`∑{#}[n-1, (n-1)^(#*C(C(n, floor(n/2)), 2*n))]`
-/

namespace A383505.P10779705349217231830
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1).toNat, ((n : ℤ) - 1) ^ (k * Nat.choose (Nat.choose n ⌊(n : ℚ) / 2⌋.toNat) (2 * n))

end

end A383505.P10779705349217231830

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

/-! ## A383508.P18311201286087084251

`A239455(A028310(n))-A383509(n)`
-/

namespace A383508.P18311201286087084251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239455 (A028310 n).toNat - A383509 n

end

end A383508.P18311201286087084251

/-! ## A383508.P15700194742405857917

`A383519(n)+A286939(A202844(n))`
-/

namespace A383508.P15700194742405857917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383519 n + A286939 (A202844 n).toNat

end

end A383508.P15700194742405857917

/-! ## A383508.P3091358078094723890

`A383511(n)+A382152(A383507(n))`
-/

namespace A383508.P3091358078094723890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383511 n + A382152 (A383507 n).toNat

end

end A383508.P3091358078094723890

/-! ## A383508.P9920258644645391454

`A382152(A383507(n))+col(A351592(n))`
-/

namespace A383508.P9920258644645391454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382152 (A383507 n).toNat + (SequenceMachineLib.triCol (A351592 n).toNat : ℤ)

end

end A383508.P9920258644645391454

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

/-! ## A383509.P3254464323245798311

`record[A035363(n+1)]-A239455(n)-A383510(n)`
-/

namespace A383509.P3254464323245798311
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035363 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A239455 n - A383510 n

end

end A383509.P3254464323245798311

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

/-! ## A383509.P12701847254551749250

`A000041(n)-A239455(A028310(n))-A383510(n)`
-/

namespace A383509.P12701847254551749250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n - A239455 (A028310 n).toNat - A383510 n

end

end A383509.P12701847254551749250

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

/-! ## A383511.P9615086439837553387

`A383506(n)-(A351293(n)-A383510(n))`
-/

namespace A383511.P9615086439837553387
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383506 n - (A351293 n - A383510 n)

end

end A383511.P9615086439837553387

/-!
# A383513: Heinz numbers of non conjugate Wilf partitions.

The programs for A383513, there is no canonical definition to state claims against.
-/

/-! ## A383513.P14411385276621837286

`∪[A259677(1+n), A381433(n+1)]`
-/

namespace A383513.P14411385276621837286
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259677 (1 + n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381433 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A383513.P14411385276621837286

/-! ## A383513.P5649569446521758877

`∪[A285300(1+n), A381433(n+1)]`
-/

namespace A383513.P5649569446521758877
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285300 (1 + n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381433 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A383513.P5649569446521758877

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

/-! ## A383513.P1240015362115643166

`∪[A381433(n+1), A400902(n+1)]`
-/

namespace A383513.P1240015362115643166
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381433 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A400902 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A383513.P1240015362115643166

/-!
# A383514: Heinz numbers of non Wilf section-sum partitions.

The programs for A383514, there is no canonical definition to state claims against.
-/

/-! ## A383514.P15227447385093421251

`record[A030229(A299481(n+1)+A055027(2*(n+2)))]`
-/

namespace A383514.P15227447385093421251
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030229 (A299481 (n + 1) + A055027 (2 * (n + 2))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A383514.P15227447385093421251

/-! ## A383514.P9025983946655609314

`∩[A307507(n+1), A336358(n+1)]`
-/

namespace A383514.P9025983946655609314
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307507 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336358 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A383514.P9025983946655609314

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

/-! ## A383514.P2889871726699723863

`∩[∪[n²+1, A364347(n+1)], A006881(n+1)]`
-/

namespace A383514.P2889871726699723863
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2 + 1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364347 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f2 j = x) ∨ ∃ j, f3 j = (x : ℤ)) n

def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006881 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f4 j = (x : ℤ)) n

end

end A383514.P2889871726699723863

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

/-!
# A383515: Heinz numbers of integer partitions that are both Look-and-Say and section-sum.

The programs for A383515, there is no canonical definition to state claims against.
-/

/-! ## A383515.P17284420023484305085

`filter[A320340(1+n), A351564(#)]`
-/

namespace A383515.P17284420023484305085
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320340 (1 + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A351564 (f1 j).toNat = 1) n)

end

end A383515.P17284420023484305085

/-! ## A383515.P3959696867049477636

`∩[A130091(1+n), A320340(n+1)]`
-/

namespace A383515.P3959696867049477636
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130091 (1 + n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320340 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A383515.P3959696867049477636

/-! ## A383515.P6401749674445921615

`∩[A319161(n+1), A320340(n+1)]`
-/

namespace A383515.P6401749674445921615
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319161 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320340 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A383515.P6401749674445921615

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

/-!
# A383516: Heinz numbers of Look-and-Say partitions that are not section-sum partitions.

The programs for A383516, there is no canonical definition to state claims against.
-/

/-! ## A383516.P12183667449606043405

`∩[A242413(n+1), A383113(n+1)]`
-/

namespace A383516.P12183667449606043405
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242413 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383113 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A383516.P12183667449606043405

/-! ## A383516.P3174404034370818470

`∩[A243068(n+1), A383113(n+1)]`
-/

namespace A383516.P3174404034370818470
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243068 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383113 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A383516.P3174404034370818470

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

/-!
# A383517: Heinz numbers of integer partitions that are neither Look-and-Say nor section-sum partitions.

The programs for A383517, there is no canonical definition to state claims against.
-/

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

/-! ## A383517.P17207256919031945895

`∩[A367224(n+1), A383531(n+1)]`
-/

namespace A383517.P17207256919031945895
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367224 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383531 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A383517.P17207256919031945895

/-! ## A383517.P12615371111695986369

`∩[A164528(n+1), A383531(n+1)]`
-/

namespace A383517.P12615371111695986369
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164528 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383531 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A383517.P12615371111695986369

/-! ## A383517.P3560536589496383703

`∩[A296241(n+1), A383531(n+1)]`
-/

namespace A383517.P3560536589496383703
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296241 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383531 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A383517.P3560536589496383703

/-! ## A383517.P11043197872213798005

`∩[A328926(n+1), A383531(n+1)]`
-/

namespace A383517.P11043197872213798005
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328926 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383531 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A383517.P11043197872213798005

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
# A383522: a(n) = Sum_{k=0..floor(n/3)} binomial(n,k) * binomial(n-2*k,k).

The programs for A383522, the canonical program `A383522.P10689918722321006695` is in `Seq.B000.C049`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A383522 has offset 0).

The definition of A383522 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `∑{#}[floor(n/3), C(n, #)*C(n-2*#, #)]` (program `A383522.P10689918722321006695`, by `A383522.P10689918722321006695.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A383522.P10689918722321006695

`∑{#}[floor(n/3), C(n, #)*C(n-2*#, #)]`

The canonical program, it is in `Seq.B000.C049`.
-/

namespace A383522

/-- `∑{#}[floor(n/3), C(n, #)*C(n-2*#, #)]` -/
def P10689918722321006695.Spec : Prop :=
  ∀ n, (P10689918722321006695.a n : ℤ) = A383522 n

theorem P10689918722321006695.correct : P10689918722321006695.Spec := by
  intro n
  simp only [A383522]

end A383522

/-!
# A383523: a(n) = Sum_{k=0..floor(n/4)} binomial(n,k) * binomial(n-3*k,k).

The programs for A383523, the canonical program `A383523.P5051052261415853543` is in `Seq.B000.C049`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A383523 has offset 0).

The definition of A383523 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `∑{#}[floor(n/4), C(n, #)*C(n-3*#, #)]` (program `A383523.P5051052261415853543`, by `A383523.P5051052261415853543.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A383523.P5051052261415853543

`∑{#}[floor(n/4), C(n, #)*C(n-3*#, #)]`

The canonical program, it is in `Seq.B000.C049`.
-/

namespace A383523

/-- `∑{#}[floor(n/4), C(n, #)*C(n-3*#, #)]` -/
def P5051052261415853543.Spec : Prop :=
  ∀ n, (P5051052261415853543.a n : ℤ) = A383523 n

theorem P5051052261415853543.correct : P5051052261415853543.Spec := by
  intro n
  simp only [A383523]

end A383523

/-! ## A383523.P15280453921114007179

`or(A239086(A282500(n)²), A307971(n))`
-/

namespace A383523.P15280453921114007179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A239086 (A282500 n ^ 2).toNat) (A307971 n)

end

end A383523.P15280453921114007179

namespace A383523

/-- `or(A239086(A282500(n)²), A307971(n))` -/
def P15280453921114007179.Spec : Prop :=
  ∀ n, P15280453921114007179.a n = A383523 n

end A383523

/-! ## A383523.P11137297855811642789

`or(A239086(A282500(n)²), A346074(n))`
-/

namespace A383523.P11137297855811642789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A239086 (A282500 n ^ 2).toNat) (A346074 n)

end

end A383523.P11137297855811642789

namespace A383523

/-- `or(A239086(A282500(n)²), A346074(n))` -/
def P11137297855811642789.Spec : Prop :=
  ∀ n, P11137297855811642789.a n = A383523 n

end A383523

/-! ## A383523.P18134480412612946200

`or(A239086(A282500(n)²), A346076(n))`
-/

namespace A383523.P18134480412612946200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A239086 (A282500 n ^ 2).toNat) (A346076 n)

end

end A383523.P18134480412612946200

namespace A383523

/-- `or(A239086(A282500(n)²), A346076(n))` -/
def P18134480412612946200.Spec : Prop :=
  ∀ n, P18134480412612946200.a n = A383523 n

end A383523

/-! ## A383523.P8006824305851153342

`or(A239086(A282500(n)²), A357570(n))`
-/

namespace A383523.P8006824305851153342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A239086 (A282500 n ^ 2).toNat) (A357570 n)

end

end A383523.P8006824305851153342

namespace A383523

/-- `or(A239086(A282500(n)²), A357570(n))` -/
def P8006824305851153342.Spec : Prop :=
  ∀ n, P8006824305851153342.a n = A383523 n

end A383523

/-!
# A383524: a(n) = Sum_{k=0..floor(n/2)} binomial(n,k) * binomial(n-k,k)^2.

The programs for A383524, the canonical program `A383524.P2306779543263548754` is in `Seq.B000.C049`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A383524 has offset 0).

The definition of A383524 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `∑{#}[floor(n/2), C(n, #)*C(n-#, #)²]` (program `A383524.P2306779543263548754`, by `A383524.P2306779543263548754.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A383524.P2306779543263548754

`∑{#}[floor(n/2), C(n, #)*C(n-#, #)²]`

The canonical program, it is in `Seq.B000.C049`.
-/

namespace A383524

/-- `∑{#}[floor(n/2), C(n, #)*C(n-#, #)²]` -/
def P2306779543263548754.Spec : Prop :=
  ∀ n, (P2306779543263548754.a n : ℤ) = A383524 n

theorem P2306779543263548754.correct : P2306779543263548754.Spec := by
  intro n
  simp only [A383524]

end A383524

/-! ## A383524.P3580275888291952015

`∑{#}[n, C(n, #)*A356521(#)]`
-/

namespace A383524.P3580275888291952015
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), (Nat.choose n k : ℤ) * A356521 k

end

end A383524.P3580275888291952015

namespace A383524

/-- `∑{#}[n, C(n, #)*A356521(#)]` -/
def P3580275888291952015.Spec : Prop :=
  ∀ n, P3580275888291952015.a n = A383524 n

end A383524

/-!
# A383525: a(n) = Sum_{k=0..floor(n/3)} binomial(n,k)^2 * binomial(n-2*k,k).

The programs for A383525, the canonical program `A383525.P6538896163847944853` is in `Seq.B000.C049`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A383525 has offset 0).

The definition of A383525 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `∑{#}[floor(n/3), C(n, #)²*C(n-2*#, #)]` (program `A383525.P6538896163847944853`, by `A383525.P6538896163847944853.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A383525.P6538896163847944853

`∑{#}[floor(n/3), C(n, #)²*C(n-2*#, #)]`

The canonical program, it is in `Seq.B000.C049`.
-/

namespace A383525

/-- `∑{#}[floor(n/3), C(n, #)²*C(n-2*#, #)]` -/
def P6538896163847944853.Spec : Prop :=
  ∀ n, (P6538896163847944853.a n : ℤ) = A383525 n

theorem P6538896163847944853.correct : P6538896163847944853.Spec := by
  intro n
  simp only [A383525]

end A383525

/-!
# A383526: a(n) = Sum_{k=0..floor(n/3)} binomial(n,k) * binomial(n-2*k,k)^2.

The programs for A383526, the canonical program `A383526.P3194556522516230413` is in `Seq.B000.C049`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A383526 has offset 0).

The definition of A383526 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `∑{#}[floor(n/3), C(n, #)*C(n-2*#, #)²]` (program `A383526.P3194556522516230413`, by `A383526.P3194556522516230413.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A383526.P3194556522516230413

`∑{#}[floor(n/3), C(n, #)*C(n-2*#, #)²]`

The canonical program, it is in `Seq.B000.C049`.
-/

namespace A383526

/-- `∑{#}[floor(n/3), C(n, #)*C(n-2*#, #)²]` -/
def P3194556522516230413.Spec : Prop :=
  ∀ n, (P3194556522516230413.a n : ℤ) = A383526 n

theorem P3194556522516230413.correct : P3194556522516230413.Spec := by
  intro n
  simp only [A383526]

end A383526

/-! ## A383526.P7019572437375689924

`A358637(∑[∑[n]]-n)`
-/

namespace A383526.P7019572437375689924
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358637 (∑ j ∈ Finset.range (n + 1), f1 j - n)

end

end A383526.P7019572437375689924

namespace A383526

/-- `A358637(∑[∑[n]]-n)` -/
def P7019572437375689924.Spec : Prop :=
  ∀ n, P7019572437375689924.a n = A383526 n

end A383526

/-! ## A383526.P18019762618550369141

`A226130(A060223(n))+A117662(n)`
-/

namespace A383526.P18019762618550369141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226130 (A060223 n).toNat + A117662 n

end

end A383526.P18019762618550369141

namespace A383526

/-- `A226130(A060223(n))+A117662(n)` -/
def P18019762618550369141.Spec : Prop :=
  ∀ n, P18019762618550369141.a n = A383526 n

end A383526

/-!
# A383527: Partial sums of A005773.

The programs for A383527, the canonical program `A383527.P15314249034805900064` is in `Seq.B000.C049`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A383527 has offset 0).

The definition of A383527 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A383527.P15314249034805900064

`3*a(n-1)-(6/n-1)*a(n-2)+(6/n-3)*a(n-3)` with `a(0)=1, a(1)=2, a(2)=4`

The canonical program, it is in `Seq.B000.C049`.
-/

namespace A383527

/-- `3*a(n-1)-(6/n-1)*a(n-2)+(6/n-3)*a(n-3)` -/
def P15314249034805900064.Spec : Prop :=
  ∀ n, P15314249034805900064.a n = (A383527 n : ℚ)

end A383527

/-! ## A383527.P15406148901343159510

`∑{#}[n, A167630(C(n+1, 2)+#)]`
-/

namespace A383527.P15406148901343159510
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), A167630 (Nat.choose (n + 1) 2 + k)

end

end A383527.P15406148901343159510

namespace A383527

/-- `∑{#}[n, A167630(C(n+1, 2)+#)]` -/
def P15406148901343159510.Spec : Prop :=
  ∀ n, P15406148901343159510.a n = A383527 n

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

/-! ## A383527.P10529400839870277897

`∑[A307789(1+n)]`
-/

namespace A383527.P10529400839870277897
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307789 (1 + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A383527.P10529400839870277897

namespace A383527

/-- `∑[A307789(1+n)]` -/
def P10529400839870277897.Spec : Prop :=
  ∀ n, P10529400839870277897.a n = A383527 n

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

/-! ## A383527.P2444919382043751802

`∑{#}[n, C(n, #)*A210736(#)]`
-/

namespace A383527.P2444919382043751802
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), (Nat.choose n k : ℤ) * A210736 k

end

end A383527.P2444919382043751802

namespace A383527

/-- `∑{#}[n, C(n, #)*A210736(#)]` -/
def P2444919382043751802.Spec : Prop :=
  ∀ n, P2444919382043751802.a n = A383527 n

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

/-! ## A383527.P17274336330022687401

`∑[A038622(C(n, 2))]`
-/

namespace A383527.P17274336330022687401
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038622 (Nat.choose n 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A383527.P17274336330022687401

namespace A383527

/-- `∑[A038622(C(n, 2))]` -/
def P17274336330022687401.Spec : Prop :=
  ∀ n, P17274336330022687401.a n = A383527 n

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

/-!
# A383528: a(n) = Sum_{k=0..floor(n/3)} binomial(n+k,k) * binomial(n-2*k,k).

The programs for A383528, the canonical program `A383528.P2020175442503784605` is in `Seq.B000.C049`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A383528 has offset 0).

The definition of A383528 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `∑{#}[floor(n/3), C(n+#, #)*C(n-2*#, #)]` (program `A383528.P2020175442503784605`, by `A383528.P2020175442503784605.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A383528.P2020175442503784605

`∑{#}[floor(n/3), C(n+#, #)*C(n-2*#, #)]`

The canonical program, it is in `Seq.B000.C049`.
-/

namespace A383528

/-- `∑{#}[floor(n/3), C(n+#, #)*C(n-2*#, #)]` -/
def P2020175442503784605.Spec : Prop :=
  ∀ n, (P2020175442503784605.a n : ℤ) = A383528 n

theorem P2020175442503784605.correct : P2020175442503784605.Spec := by
  intro n
  simp only [A383528]

end A383528

/-!
# A383529: a(n) = Sum_{k=0..floor(n/4)} binomial(n+k,k) * binomial(n-3*k,k).

The programs for A383529, the canonical program `A383529.P8614326166543914852` is in `Seq.B000.C049`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A383529 has offset 0).

The definition of A383529 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `∑{#}[floor(n/4), C(n+#, #)*C(n-3*#, #)]` (program `A383529.P8614326166543914852`, by `A383529.P8614326166543914852.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A383529.P8614326166543914852

`∑{#}[floor(n/4), C(n+#, #)*C(n-3*#, #)]`

The canonical program, it is in `Seq.B000.C049`.
-/

namespace A383529

/-- `∑{#}[floor(n/4), C(n+#, #)*C(n-3*#, #)]` -/
def P8614326166543914852.Spec : Prop :=
  ∀ n, (P8614326166543914852.a n : ℤ) = A383529 n

theorem P8614326166543914852.correct : P8614326166543914852.Spec := by
  intro n
  simp only [A383529]

end A383529

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

namespace A383529

/-- `filter[A394802(n+1), A104893(#)]` -/
def P13679758521147378739.Spec : Prop :=
  ∀ n, P13679758521147378739.a n = A383529 n

end A383529

/-! ## A383529.P15463211590760581545

`A394802(n+4)+A000007(A336282(n))`
-/

namespace A383529.P15463211590760581545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A394802 (n + 4) + A000007 (A336282 n).toNat

end

end A383529.P15463211590760581545

namespace A383529

/-- `A394802(n+4)+A000007(A336282(n))` -/
def P15463211590760581545.Spec : Prop :=
  ∀ n, P15463211590760581545.a n = A383529 n

end A383529

/-! ## A383529.P15912336694051840539

`A394802(n+4)+A058348(A394800(n))`
-/

namespace A383529.P15912336694051840539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A394802 (n + 4) + A058348 (A394800 n).toNat

end

end A383529.P15912336694051840539

namespace A383529

/-- `A394802(n+4)+A058348(A394800(n))` -/
def P15912336694051840539.Spec : Prop :=
  ∀ n, P15912336694051840539.a n = A383529 n

end A383529

/-! ## A383529.P16458309734822215557

`A394802(n+4)^A351083(A003319(n))`
-/

namespace A383529.P16458309734822215557
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A394802 (n + 4) : ℚ) ^ (A351083 (A003319 n).toNat : ℤ)

end

end A383529.P16458309734822215557

namespace A383529

/-- `A394802(n+4)^A351083(A003319(n))` -/
def P16458309734822215557.Spec : Prop :=
  ∀ n, P16458309734822215557.a n = (A383529 n : ℚ)

end A383529

/-!
# A383531: Heinz numbers of integer partitions that do not have distinct multiplicities (Wilf) or distinct nonzero 0-appended differences (conjugate Wilf).

The programs for A383531, there is no canonical definition to state claims against.
-/

/-! ## A383531.P6318786489855841569

`∩[A130092(1+n), A383513(n+1)]`
-/

namespace A383531.P6318786489855841569
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130092 (1 + n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383513 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A383531.P6318786489855841569

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

/-! ## A383531.P870416169220153151

`∩[A325369(n+1), A364348(n+1)]`
-/

namespace A383531.P870416169220153151
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325369 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364348 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A383531.P870416169220153151

/-! ## A383531.P10440668397792585949

`∩[A325369(n+1), A364537(n+1)]`
-/

namespace A383531.P10440668397792585949
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325369 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364537 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A383531.P10440668397792585949

/-! ## A383531.P11017051713325806064

`∩[A325369(n+1), A383513(n+1)]`
-/

namespace A383531.P11017051713325806064
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325369 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383513 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A383531.P11017051713325806064

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

/-! ## A383534.P7890719157637562903

`runs[∑[A067255(n+1)]]`
-/

namespace A383534.P7890719157637562903
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067255 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => j = 0 ∨ f1 j ≠ f1 (j - 1)) (n + 1) - SequenceMachineLib.nth (fun j => j = 0 ∨ f1 j ≠ f1 (j - 1)) n

end

end A383534.P7890719157637562903

/-! ## A383534.P9959718722986256379

`filter[A287352(1+n), A057427(#)]`
-/

namespace A383534.P9959718722986256379
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287352 (1 + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A057427 (f1 j).toNat = 1) n)

end

end A383534.P9959718722986256379

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

/-!
# A383535: Heinz number of the positive first differences of the 0-prepended prime indices of n.

The programs for A383535, there is no canonical definition to state claims against.
-/

/-! ## A383535.P9861895376300031976

`A020639(n+1)*A064989(A325352(n+1))`
-/

namespace A383535.P9861895376300031976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 1) * A064989 (A325352 (n + 1)).toNat

end

end A383535.P9861895376300031976

/-! ## A383535.P7018418206993980670

`∏{e}[A122111(1+n), A000040(#)]`
-/

namespace A383535.P7018418206993980670
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122111 (1 + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A000040 (Nat.factorization (f1 n).natAbs p)

end

end A383535.P7018418206993980670

/-! ## A383535.P8863241520320994067

`∏{e}[A153212(1+n), A000040(#)]`
-/

namespace A383535.P8863241520320994067
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153212 (1 + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A000040 (Nat.factorization (f1 n).natAbs p)

end

end A383535.P8863241520320994067

/-! ## A383535.P13979274746467776456

`∏{e}[A122111(1+n), A038618(#)]`
-/

namespace A383535.P13979274746467776456
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122111 (1 + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A038618 (Nat.factorization (f1 n).natAbs p)

end

end A383535.P13979274746467776456

/-! ## A383535.P15755037219460245090

`∏{e}[A122111(n+1), A095285(#)]`
-/

namespace A383535.P15755037219460245090
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122111 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A095285 (Nat.factorization (f1 n).natAbs p)

end

end A383535.P15755037219460245090

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

/-! ## A383535.P7081502317508135895

`∏{e}[A122111(n+1), A216886(#)]`
-/

namespace A383535.P7081502317508135895
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122111 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A216886 (Nat.factorization (f1 n).natAbs p)

end

end A383535.P7081502317508135895

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

/-!
# A383536: a(n) = Sum_{k=0..floor(n/2)} binomial(n+k,k)^2 * binomial(n-k,k).

The programs for A383536, the canonical program `A383536.P2184738925330062859` is in `Seq.B000.C049`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A383536 has offset 0).

The definition of A383536 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `∑{#}[floor(n/2), C(n+#, #)²*C(n-#, #)]` (program `A383536.P2184738925330062859`, by `A383536.P2184738925330062859.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A383536.P2184738925330062859

`∑{#}[floor(n/2), C(n+#, #)²*C(n-#, #)]`

The canonical program, it is in `Seq.B000.C049`.
-/

namespace A383536

/-- `∑{#}[floor(n/2), C(n+#, #)²*C(n-#, #)]` -/
def P2184738925330062859.Spec : Prop :=
  ∀ n, (P2184738925330062859.a n : ℤ) = A383536 n

theorem P2184738925330062859.correct : P2184738925330062859.Spec := by
  intro n
  simp only [A383536]

end A383536

/-!
# A383537: a(n) = Sum_{k=0..floor(n/3)} binomial(n+k,k)^2 * binomial(n-2*k,k).

The programs for A383537, the canonical program `A383537.P12217694787441274840` is in `Seq.B000.C049`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A383537 has offset 0).

The definition of A383537 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `∑{#}[floor(n/3), C(n+#, #)²*C(n-2*#, #)]` (program `A383537.P12217694787441274840`, by `A383537.P12217694787441274840.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A383537.P12217694787441274840

`∑{#}[floor(n/3), C(n+#, #)²*C(n-2*#, #)]`

The canonical program, it is in `Seq.B000.C049`.
-/

namespace A383537

/-- `∑{#}[floor(n/3), C(n+#, #)²*C(n-2*#, #)]` -/
def P12217694787441274840.Spec : Prop :=
  ∀ n, (P12217694787441274840.a n : ℤ) = A383537 n

theorem P12217694787441274840.correct : P12217694787441274840.Spec := by
  intro n
  simp only [A383537]

end A383537

/-! ## A383537.P4426157348828954106

`A351205(a(n-1)+n)` with `a(0)=1, a(1)=1, a(2)=1`
-/

namespace A383537.P4426157348828954106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 1] fun n a =>
  A351205 (a (n - 1) + (n : ℤ)).toNat

end

end A383537.P4426157348828954106

namespace A383537

/-- `A351205(a(n-1)+n)` -/
def P4426157348828954106.Spec : Prop :=
  ∀ n, P4426157348828954106.a n = A383537 n

end A383537

/-!
# A383538: a(n) = Sum_{k=0..floor(n/4)} binomial(n+k,k)^2 * binomial(n-3*k,k).

The programs for A383538, the canonical program `A383538.P3388887582798584115` is in `Seq.B000.C049`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A383538 has offset 0).

The definition of A383538 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `∑{#}[floor(n/4), C(n+#, #)²*C(n-3*#, #)]` (program `A383538.P3388887582798584115`, by `A383538.P3388887582798584115.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A383538.P3388887582798584115

`∑{#}[floor(n/4), C(n+#, #)²*C(n-3*#, #)]`

The canonical program, it is in `Seq.B000.C049`.
-/

namespace A383538

/-- `∑{#}[floor(n/4), C(n+#, #)²*C(n-3*#, #)]` -/
def P3388887582798584115.Spec : Prop :=
  ∀ n, (P3388887582798584115.a n : ℤ) = A383538 n

theorem P3388887582798584115.correct : P3388887582798584115.Spec := by
  intro n
  simp only [A383538]

end A383538

/-! ## A383538.P1446782753253616402

`A178692(A275067(n+1)-n)*(n+1)²+1`
-/

namespace A383538.P1446782753253616402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178692 (A275067 (n + 1) - (n : ℤ)).toNat * ((n + 1) ^ 2 : ℤ) + 1

end

end A383538.P1446782753253616402

namespace A383538

/-- `A178692(A275067(n+1)-n)*(n+1)²+1` -/
def P1446782753253616402.Spec : Prop :=
  ∀ n, P1446782753253616402.a n = A383538 n

end A383538

/-! ## A383538.P8155577435108318345

`A004216(A122827(n+1)+1)*(n+1)²+1`
-/

namespace A383538.P8155577435108318345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004216 (A122827 (n + 1) + 1).toNat * ((n + 1) ^ 2 : ℤ) + 1

end

end A383538.P8155577435108318345

namespace A383538

/-- `A004216(A122827(n+1)+1)*(n+1)²+1` -/
def P8155577435108318345.Spec : Prop :=
  ∀ n, P8155577435108318345.a n = A383538 n

end A383538

/-!
# A383539: a(n) = Sum_{k=0..floor(n/3)} binomial(n-k,k)^2 * binomial(n-2*k,k).

The programs for A383539, the canonical program `A383539.P16668665303367590188` is in `Seq.B000.C049`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A383539 has offset 0).

The definition of A383539 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `∑{#}[floor(n/3), C(n-#, #)²*C(n-2*#, #)]` (program `A383539.P16668665303367590188`, by `A383539.P16668665303367590188.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A383539.P16668665303367590188

`∑{#}[floor(n/3), C(n-#, #)²*C(n-2*#, #)]`

The canonical program, it is in `Seq.B000.C049`.
-/

namespace A383539

/-- `∑{#}[floor(n/3), C(n-#, #)²*C(n-2*#, #)]` -/
def P16668665303367590188.Spec : Prop :=
  ∀ n, (P16668665303367590188.a n : ℤ) = A383539 n

theorem P16668665303367590188.correct : P16668665303367590188.Spec := by
  intro n
  simp only [A383539]

end A383539

/-! ## A383539.P7901555726157977672

`A325623(A097116(n))`
-/

namespace A383539.P7901555726157977672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325623 (A097116 n).toNat

end

end A383539.P7901555726157977672

namespace A383539

/-- `A325623(A097116(n))` -/
def P7901555726157977672.Spec : Prop :=
  ∀ n, P7901555726157977672.a n = A383539 n

end A383539

/-! ## A383539.P12885271214198314397

`A324760(A074352(n)+1)`
-/

namespace A383539.P12885271214198314397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324760 (A074352 n + 1).toNat

end

end A383539.P12885271214198314397

namespace A383539

/-- `A324760(A074352(n)+1)` -/
def P12885271214198314397.Spec : Prop :=
  ∀ n, P12885271214198314397.a n = A383539 n

end A383539

/-!
# A383541: Positive numbers k such that (cos k)^k sets a new record.

The programs for A383541, there is no canonical definition to state claims against.
-/

/-! ## A383541.P7200256255501081905

`∏{p}[A046955(A003309(n+1)), #]`
-/

namespace A383541.P7200256255501081905
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046955 (A003309 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A383541.P7200256255501081905

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

/-! ## A383544.P1962973381676567094

`A071808(A383545(1+n))`
-/

namespace A383544.P1962973381676567094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071808 (A383545 (1 + n)).toNat

end

end A383544.P1962973381676567094

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

/-! ## A383545.P2759133446770138751

`∑[runs[A071808(n+1)]]`
-/

namespace A383545.P2759133446770138751
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071808 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => j = 0 ∨ f2 j ≠ f2 (j - 1)) (n + 1) - SequenceMachineLib.nth (fun j => j = 0 ∨ f2 j ≠ f2 (j - 1)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A383545.P2759133446770138751

/-! ## A383545.P17134746774188936976

`∑[runs[A130130(n)!*A071577(n+1)]]`
-/

namespace A383545.P17134746774188936976
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (A130130 n).toNat : ℤ) * A071577 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => j = 0 ∨ f2 j ≠ f2 (j - 1)) (n + 1) - SequenceMachineLib.nth (fun j => j = 0 ∨ f2 j ≠ f2 (j - 1)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A383545.P17134746774188936976

/-!
# A383547: Numbers k such that A383546(k) > A383546(m) for all m < k.

The programs for A383547, there is no canonical definition to state claims against.
-/

/-! ## A383547.P11978101880085138598

`record[A071809(n+1)-A378998(n+1)]`
-/

namespace A383547.P11978101880085138598
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071809 (n + 1) - A378998 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A383547.P11978101880085138598

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

/-!
# A383548: Record values in A383546.

The programs for A383548, there is no canonical definition to state claims against.
-/

/-! ## A383548.P1367059447377855793

`A383546(A383547(n+1))`
-/

namespace A383548.P1367059447377855793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383546 (A383547 (n + 1)).toNat

end

end A383548.P1367059447377855793

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

/-!
# A383549: Number of rises in all compositions of n with parts in {1,2,3} and adjacent differences in {-1,1}.

The programs for A383549, the canonical program `A383549.P1955341310140268716` is in `Seq.B000.C049`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A383549 has offset 0).

The definition of A383549 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A383549.P1955341310140268716

`ogf((x^3+x^4+2x^5+3x^6+x^7+3x^8+x^10)/(1-2x^3-2x^5+x^6+2x^8+x^10))`

The canonical program, it is in `Seq.B000.C049`.
-/

namespace A383549

/-- `ogf((x^3+x^4+2x^5+3x^6+x^7+3x^8+x^10)/(1-2x^3-2x^5+x^6+2x^8+x^10))` -/
def P1955341310140268716.Spec : Prop :=
  ∀ n, P1955341310140268716.a n = A383549 n

theorem P1955341310140268716.correct : P1955341310140268716.Spec := by
  intro n
  simp only [A383549]

end A383549

/-!
# A383550: Square array A(n,k), n >= 0, k >= 0, read by antidiagonals downwards, where A(n,k) is the number of lattice paths from (0,0) to (n,k) using steps (2,0),(0,2),(3,3).

The programs for A383550, the canonical program `A383550.P1820320034548278964` is in `Seq.B000.C049`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A383550 has offset 0).

The definition of A383550 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A383550.P1820320034548278964

`T(row(n)-2, col(n)-2)+T(n-2,k)+T(row(n)-6, col(n)-3)` with `a(0)=1`

The canonical program, it is in `Seq.B000.C049`.
-/

namespace A383550

/-- `T(row(n)-2, col(n)-2)+T(n-2,k)+T(row(n)-6, col(n)-3)` -/
def P1820320034548278964.Spec : Prop :=
  ∀ n, (P1820320034548278964.a n : ℤ) = A383550 n

theorem P1820320034548278964.correct : P1820320034548278964.Spec := by
  intro n
  simp only [A383550]

end A383550

/-! ## A383550.P620697664133031087

`gcd(A121373(A002061(3*(n+1))), A204293(n))`
-/

namespace A383550.P620697664133031087
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A121373 (A002061 (3 * (n + 1))).toNat) (A204293 n)

end

end A383550.P620697664133031087

namespace A383550

/-- `gcd(A121373(A002061(3*(n+1))), A204293(n))` -/
def P620697664133031087.Spec : Prop :=
  ∀ n, (P620697664133031087.a n : ℤ) = A383550 n

end A383550

/-! ## A383550.P6387304109675522678

`A204293(n)+A014082(A204301(n+1))`
-/

namespace A383550.P6387304109675522678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204293 n + A014082 (A204301 (n + 1)).toNat

end

end A383550.P6387304109675522678

namespace A383550

/-- `A204293(n)+A014082(A204301(n+1))` -/
def P6387304109675522678.Spec : Prop :=
  ∀ n, P6387304109675522678.a n = A383550 n

end A383550

/-! ## A383550.P9852083136716847619

`A386586(sqrt(A059064(3*n+2)))+A204293(n)`
-/

namespace A383550.P9852083136716847619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386586 (SequenceMachineLib.roundAway (Real.sqrt (A059064 (3 * n + 2) : ℝ))).toNat + A204293 n

end

end A383550.P9852083136716847619

namespace A383550

/-- `A386586(sqrt(A059064(3*n+2)))+A204293(n)` -/
def P9852083136716847619.Spec : Prop :=
  ∀ n, P9852083136716847619.a n = A383550 n

end A383550

/-! ## A383550.P17838738663718384573

`A204293(n)+A086073(A378038(3*n+2))`
-/

namespace A383550.P17838738663718384573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204293 n + A086073 (A378038 (3 * n + 2)).toNat

end

end A383550.P17838738663718384573

namespace A383550

/-- `A204293(n)+A086073(A378038(3*n+2))` -/
def P17838738663718384573.Spec : Prop :=
  ∀ n, P17838738663718384573.a n = A383550 n

end A383550

/-!
# A383551: Square array A(n,k), n >= 0, k >= 0, read by antidiagonals downwards, where A(n,k) is the number of lattice paths from (0,0) to (n,k) using steps (1,0),(0,1),(3,3).

The programs for A383551, the canonical program `A383551.P10203188890689598161` is in `Seq.B000.C049`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A383551 has offset 0).

The definition of A383551 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A383551.P10203188890689598161

`T(n-1,k)+T(n-1,k-1)+T(row(n)-6, col(n)-3)` with `a(0)=1`

The canonical program, it is in `Seq.B000.C049`.
-/

namespace A383551

/-- `T(n-1,k)+T(n-1,k-1)+T(row(n)-6, col(n)-3)` -/
def P10203188890689598161.Spec : Prop :=
  ∀ n, (P10203188890689598161.a n : ℤ) = A383551 n

theorem P10203188890689598161.correct : P10203188890689598161.Spec := by
  intro n
  simp only [A383551]

end A383551

/-! ## A383551.P8296496908232494969

`A057498(A008327(n))+A007318(n)`
-/

namespace A383551.P8296496908232494969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057498 (A008327 n).toNat + A007318 n

end

end A383551.P8296496908232494969

namespace A383551

/-- `A057498(A008327(n))+A007318(n)` -/
def P8296496908232494969.Spec : Prop :=
  ∀ n, P8296496908232494969.a n = A383551 n

end A383551

/-! ## A383551.P15571772291224347926

`A083893(A341847(n))+A007318(n)`
-/

namespace A383551.P15571772291224347926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083893 (A341847 n).toNat + A007318 n

end

end A383551.P15571772291224347926

namespace A383551

/-- `A083893(A341847(n))+A007318(n)` -/
def P15571772291224347926.Spec : Prop :=
  ∀ n, P15571772291224347926.a n = A383551 n

end A383551

/-! ## A383551.P16799577795942120503

`A007318(n)+val(A000005(A260340(n)), 3)`
-/

namespace A383551.P16799577795942120503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n + (SequenceMachineLib.valuation (A000005 (A260340 n).toNat).toNat 3 : ℤ)

end

end A383551.P16799577795942120503

namespace A383551

/-- `A007318(n)+val(A000005(A260340(n)), 3)` -/
def P16799577795942120503.Spec : Prop :=
  ∀ n, P16799577795942120503.a n = A383551 n

end A383551

/-! ## A383551.P7578741293267939559

`A352516(C(A377060(n), 2))+A007318(n)`
-/

namespace A383551.P7578741293267939559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352516 (Nat.choose (A377060 n).toNat 2) + A007318 n

end

end A383551.P7578741293267939559

namespace A383551

/-- `A352516(C(A377060(n), 2))+A007318(n)` -/
def P7578741293267939559.Spec : Prop :=
  ∀ n, P7578741293267939559.a n = A383551 n

end A383551

/-!
# A383552: Square array A(n,k), n >= 0, k >= 0, read by antidiagonals downwards, where A(n,k) is the number of lattice paths from (0,0) to (n,k) using steps (1,0),(0,1),(2,2).

The programs for A383552, the canonical program `A383552.P7301430798307531861` is in `Seq.B000.C049`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A383552 has offset 0).

The definition of A383552 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A383552.P7301430798307531861

`T(n-1,k)+T(n-1,k-1)+T(row(n)-4, col(n)-2)` with `a(0)=1`

The canonical program, it is in `Seq.B000.C049`.
-/

namespace A383552

/-- `T(n-1,k)+T(n-1,k-1)+T(row(n)-4, col(n)-2)` -/
def P7301430798307531861.Spec : Prop :=
  ∀ n, (P7301430798307531861.a n : ℤ) = A383552 n

theorem P7301430798307531861.correct : P7301430798307531861.Spec := by
  intro n
  simp only [A383552]

end A383552

/-! ## A383552.P8132135039420153667

`A120835(A008288(n))`
-/

namespace A383552.P8132135039420153667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120835 (A008288 n).toNat

end

end A383552.P8132135039420153667

namespace A383552

/-- `A120835(A008288(n))` -/
def P8132135039420153667.Spec : Prop :=
  ∀ n, P8132135039420153667.a n = A383552 n

end A383552

/-! ## A383552.P12465275696372241372

`A120835(A101164(n)+A007318(n))`
-/

namespace A383552.P12465275696372241372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120835 (A101164 n + A007318 n).toNat

end

end A383552.P12465275696372241372

namespace A383552

/-- `A120835(A101164(n)+A007318(n))` -/
def P12465275696372241372.Spec : Prop :=
  ∀ n, P12465275696372241372.a n = A383552 n

end A383552

/-! ## A383552.P4173216128757362768

`A120835(A101164(n)+A028326(n)/2)`
-/

namespace A383552.P4173216128757362768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120835 (SequenceMachineLib.roundAway ((A101164 n : ℚ) + (A028326 n : ℚ) / 2)).toNat

end

end A383552.P4173216128757362768

namespace A383552

/-- `A120835(A101164(n)+A028326(n)/2)` -/
def P4173216128757362768.Spec : Prop :=
  ∀ n, P4173216128757362768.a n = A383552 n

end A383552

/-! ## A383552.P5686340277028013728

`A120835((A122542(n)+A113413(n))/2)`
-/

namespace A383552.P5686340277028013728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120835 (SequenceMachineLib.roundAway ((A122542 n + A113413 n : ℚ) / 2)).toNat

end

end A383552.P5686340277028013728

namespace A383552

/-- `A120835((A122542(n)+A113413(n))/2)` -/
def P5686340277028013728.Spec : Prop :=
  ∀ n, P5686340277028013728.a n = A383552 n

end A383552

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

/-! ## A383554.P4916240349548950072

`A175126(A356408(n)+1)`
-/

namespace A383554.P4916240349548950072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175126 (A356408 n + 1).toNat

end

end A383554.P4916240349548950072

/-! ## A383554.P11271155731704600945

`A132213(A001147(n))+A001147(n)`
-/

namespace A383554.P11271155731704600945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132213 (A001147 n).toNat + A001147 n

end

end A383554.P11271155731704600945

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
# A383556: G.f. A(x) satisfies [x^n] A(x)^n = [x^n] -1/A(x)^(n+1) for n > 1 with A(0) = 1, A'(0) = 1.

The programs for A383556, there is no canonical definition to state claims against.
-/

/-! ## A383556.P6368877452492869968

`or(A000213(n), A398694(A000108(n)))`
-/

namespace A383556.P6368877452492869968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000213 n) (A398694 (A000108 n).toNat)

end

end A383556.P6368877452492869968

/-!
# A383557: G.f. A(x) satisfies: Sum_{n>=0} x^n * A(x)^(n*(n-1)) = 1/Sum_{n>=0} (-1)^n * x^n * A(x)^(n^2).

The programs for A383557, there is no canonical definition to state claims against.
-/

/-! ## A383557.P16398693020021071403

`ceil(ceil(A018252(A026074(n))/2)/2)`
-/

namespace A383557.P16398693020021071403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(⌈(A018252 (A026074 n).toNat : ℚ) / 2⌉ : ℚ) / 2⌉

end

end A383557.P16398693020021071403

/-! ## A383557.P18309821538448499126

`or(A174428(A002110(n)), A349331(n))`
-/

namespace A383557.P18309821538448499126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A174428 (A002110 n).toNat) (A349331 n)

end

end A383557.P18309821538448499126

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

/-! ## A383563.P10204513205966708091

`A184156(a(n-1))+n*a(n-1)-1-A394844(n)` with `a(0)=1, a(1)=1, a(2)=1`
-/

namespace A383563.P10204513205966708091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 1] fun n a =>
  A184156 (a (n - 1)).toNat + (n : ℤ) * a (n - 1) - 1 - A394844 n

end

end A383563.P10204513205966708091

/-! ## A383563.P3661522394749953711

`A137579(A000225(n))+A003319(n)`
-/

namespace A383563.P3661522394749953711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137579 (A000225 n).toNat + A003319 n

end

end A383563.P3661522394749953711

/-! ## A383563.P11057624690791186365

`A046098(A336020(n))+A003319(n)`
-/

namespace A383563.P11057624690791186365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046098 (A336020 n).toNat + A003319 n

end

end A383563.P11057624690791186365

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

The programs for A383566, the canonical program `A383566.P10971377680074708116` is in `Seq.B000.C049`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A383566 has offset 0).

The definition of A383566 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A383566.P10971377680074708116

`T(n-1,k)+T(n-1,k-1)+T(row(n)-8, col(n)-4)` with `a(0)=1`

The canonical program, it is in `Seq.B000.C049`.
-/

namespace A383566

/-- `T(n-1,k)+T(n-1,k-1)+T(row(n)-8, col(n)-4)` -/
def P10971377680074708116.Spec : Prop :=
  ∀ n, (P10971377680074708116.a n : ℤ) = A383566 n

theorem P10971377680074708116.correct : P10971377680074708116.Spec := by
  intro n
  simp only [A383566]

end A383566

/-! ## A383566.P17395884402479293748

`A007318(n)+A235145(A177944(n))`
-/

namespace A383566.P17395884402479293748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n + A235145 (A177944 n).toNat

end

end A383566.P17395884402479293748

namespace A383566

/-- `A007318(n)+A235145(A177944(n))` -/
def P17395884402479293748.Spec : Prop :=
  ∀ n, P17395884402479293748.a n = A383566 n

end A383566

/-! ## A383566.P10830831769978020669

`A178798(A119339(n))+A007318(n)`
-/

namespace A383566.P10830831769978020669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178798 (A119339 n).toNat + A007318 n

end

end A383566.P10830831769978020669

namespace A383566

/-- `A178798(A119339(n))+A007318(n)` -/
def P10830831769978020669.Spec : Prop :=
  ∀ n, P10830831769978020669.a n = A383566 n

end A383566

/-! ## A383566.P11250903053483638727

`A151795(A007318(n))+A007318(n)`
-/

namespace A383566.P11250903053483638727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151795 (A007318 n).toNat + A007318 n

end

end A383566.P11250903053483638727

namespace A383566

/-- `A151795(A007318(n))+A007318(n)` -/
def P11250903053483638727.Spec : Prop :=
  ∀ n, P11250903053483638727.a n = A383566 n

end A383566

/-! ## A383566.P14133632330597266522

`A122841(A176331(n))+A007318(n)`
-/

namespace A383566.P14133632330597266522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122841 (A176331 n).toNat + A007318 n

end

end A383566.P14133632330597266522

namespace A383566

/-- `A122841(A176331(n))+A007318(n)` -/
def P14133632330597266522.Spec : Prop :=
  ∀ n, P14133632330597266522.a n = A383566 n

end A383566

/-!
# A383567: Square array A(n,k), n >= 0, k >= 0, read by antidiagonals downwards, where A(n,k) is the number of lattice paths from (0,0) to (n,k) using steps (2,0),(0,2),(5,5).

The programs for A383567, the canonical program `A383567.P7196987743226415464` is in `Seq.B000.C049`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A383567 has offset 0).

The definition of A383567 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A383567.P7196987743226415464

`T(row(n)-2, col(n)-2)+T(n-2,k)+T(row(n)-10, col(n)-5)` with `a(0)=1`

The canonical program, it is in `Seq.B000.C049`.
-/

namespace A383567

/-- `T(row(n)-2, col(n)-2)+T(n-2,k)+T(row(n)-10, col(n)-5)` -/
def P7196987743226415464.Spec : Prop :=
  ∀ n, (P7196987743226415464.a n : ℤ) = A383567 n

theorem P7196987743226415464.correct : P7196987743226415464.Spec := by
  intro n
  simp only [A383567]

end A383567

/-! ## A383567.P7629632857677976629

`A204293(n)+A185284(A343378(n))`
-/

namespace A383567.P7629632857677976629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204293 n + A185284 (A343378 n).toNat

end

end A383567.P7629632857677976629

namespace A383567

/-- `A204293(n)+A185284(A343378(n))` -/
def P7629632857677976629.Spec : Prop :=
  ∀ n, P7629632857677976629.a n = A383567 n

end A383567

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

/-! ## A383569.P15892228347455962909

`A094233(and(n, A293994(n)))`
-/

namespace A383569.P15892228347455962909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094233 (Int.land (n : ℤ) (A293994 n)).toNat

end

end A383569.P15892228347455962909

/-! ## A383569.P9208265185597311196

`A126869(and(n, A293994(n)))`
-/

namespace A383569.P9208265185597311196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126869 (Int.land (n : ℤ) (A293994 n)).toNat

end

end A383569.P9208265185597311196

/-! ## A383569.P9849252302632405707

`A392430(2*n)%A201644(n+1)`
-/

namespace A383569.P9849252302632405707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A392430 (2 * n)) (A201644 (n + 1))

end

end A383569.P9849252302632405707

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

/-! ## A383569.P10695668428614807967

`A102683(A027914(n))+A094233(n)`
-/

namespace A383569.P10695668428614807967
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102683 (A027914 n).toNat + A094233 n

end

end A383569.P10695668428614807967

/-!
# A383571: Expansion of 1/sqrt((1-x^3)^2 - 4*x^4).

The programs for A383571, the canonical program `A383571.P10238304371994759373` is in `Seq.B000.C049`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A383571 has offset 0).

The definition of A383571 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A383571.P10238304371994759373

`∑{#}[floor(n/3), C(n-2*#, #)*C(#, n-3*#)]`

The canonical program, it is in `Seq.B000.C049`.
-/

namespace A383571

/-- `∑{#}[floor(n/3), C(n-2*#, #)*C(#, n-3*#)]` -/
def P10238304371994759373.Spec : Prop :=
  ∀ n, (P10238304371994759373.a n : ℤ) = A383571 n

theorem P10238304371994759373.correct : P10238304371994759373.Spec := by
  intro n
  simp only [A383571]

end A383571

/-!
# A383572: Expansion of 1/sqrt((1-x^4)^2 - 4*x^5).

The programs for A383572, the canonical program `A383572.P2953140890869910254` is in `Seq.B000.C049`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A383572 has offset 0).

The definition of A383572 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A383572.P2953140890869910254

`∑{#}[floor(n/4), C(n-3*#, #)*C(#, n-4*#)]`

The canonical program, it is in `Seq.B000.C049`.
-/

namespace A383572

/-- `∑{#}[floor(n/4), C(n-3*#, #)*C(#, n-4*#)]` -/
def P2953140890869910254.Spec : Prop :=
  ∀ n, (P2953140890869910254.a n : ℤ) = A383572 n

theorem P2953140890869910254.correct : P2953140890869910254.Spec := by
  intro n
  simp only [A383572]

end A383572

/-!
# A383573: a(n) = Sum_{k=0..floor(n/2)} binomial(n-k,k) * binomial(2*(n-2*k),n-2*k).

The programs for A383573, the canonical program `A383573.P4148953438429222037` is in `Seq.B000.C049`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A383573 has offset 0).

The definition of A383573 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `∑{#}[floor(n/2), C(n-#, #)*C(2*(n-2*#), n-2*#)]` (program `A383573.P4148953438429222037`, by `A383573.P4148953438429222037.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A383573.P4148953438429222037

`∑{#}[floor(n/2), C(n-#, #)*C(2*(n-2*#), n-2*#)]`

The canonical program, it is in `Seq.B000.C049`.
-/

namespace A383573

/-- `∑{#}[floor(n/2), C(n-#, #)*C(2*(n-2*#), n-2*#)]` -/
def P4148953438429222037.Spec : Prop :=
  ∀ n, (P4148953438429222037.a n : ℤ) = A383573 n

theorem P4148953438429222037.correct : P4148953438429222037.Spec := by
  intro n
  simp only [A383573]

end A383573

/-! ## A383573.P190626229923361707

`A210357(A202206(n))`
-/

namespace A383573.P190626229923361707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210357 (A202206 n).toNat

end

end A383573.P190626229923361707

namespace A383573

/-- `A210357(A202206(n))` -/
def P190626229923361707.Spec : Prop :=
  ∀ n, P190626229923361707.a n = A383573 n

end A383573

/-!
# A383574: Fourth column of A353077.

The programs for A383574, there is no canonical definition to state claims against.
-/

/-! ## A383574.P1337416115728367288

`A353077(A052905(n)+9)`
-/

namespace A383574.P1337416115728367288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353077 (A052905 n + 9).toNat

end

end A383574.P1337416115728367288

/-! ## A383574.P16996147220979427710

`A353077(A055999(n)+10)`
-/

namespace A383574.P16996147220979427710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353077 (A055999 n + 10).toNat

end

end A383574.P16996147220979427710

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

/-! ## A383575.P8921371555428009378

`floor(3^(A382883(1+n)+3)/63)`
-/

namespace A383575.P8921371555428009378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(3 : ℚ) ^ (A382883 (1 + n) + 3 : ℤ) / 63⌋

end

end A383575.P8921371555428009378

/-! ## A383575.P10138350886919836210

`A000217(col(A382883(n+1)+1))`
-/

namespace A383575.P10138350886919836210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (SequenceMachineLib.triCol (A382883 (n + 1) + 1).toNat)

end

end A383575.P10138350886919836210

/-! ## A383575.P15827772759330038994

`A000584(col(A382883(n+1)+1))`
-/

namespace A383575.P15827772759330038994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000584 (SequenceMachineLib.triCol (A382883 (n + 1) + 1).toNat)

end

end A383575.P15827772759330038994

/-! ## A383575.P4684497565212745833

`A382883(1+n)*A385055(n+1)`
-/

namespace A383575.P4684497565212745833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382883 (1 + n) * A385055 (n + 1)

end

end A383575.P4684497565212745833

/-! ## A383575.P5040149906066277511

`A384667(n+1)*A385055(n+1)`
-/

namespace A383575.P5040149906066277511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A384667 (n + 1) * A385055 (n + 1)

end

end A383575.P5040149906066277511

/-! ## A383575.P16666193988297251907

`A008290(∑{#}[2, A382883(n+1)^#])`
-/

namespace A383575.P16666193988297251907
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008290 (∑ k ∈ Finset.range (f1 n + 1), A382883 (n + 1) ^ k).toNat

end

end A383575.P16666193988297251907

/-! ## A383575.P8127561705256874759

`A319600(1+col(A382883(n+1)+1))`
-/

namespace A383575.P8127561705256874759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319600 (1 + SequenceMachineLib.triCol (A382883 (n + 1) + 1).toNat)

end

end A383575.P8127561705256874759

/-! ## A383575.P9929843408236421406

`A008612(A382883(n+1)+A319702(2*(n+1)))`
-/

namespace A383575.P9929843408236421406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008612 (A382883 (n + 1) + A319702 (2 * (n + 1))).toNat

end

end A383575.P9929843408236421406

/-! ## A383575.P18369323533388879921

`(A384709(n+1)+A382883(n+1))*A382883(n+1)`
-/

namespace A383575.P18369323533388879921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A384709 (n + 1) + A382883 (n + 1)) * A382883 (n + 1)

end

end A383575.P18369323533388879921

/-! ## A383575.P5326981966754219325

`char[eq[A057427(n+4), A382883(n+1)]]`
-/

namespace A383575.P5326981966754219325
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (n + 4)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382883 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j = f3 j) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A383575.P5326981966754219325

/-! ## A383575.P398068515547007868

`A079978(A382883(n+1)+3*n+2)`
-/

namespace A383575.P398068515547007868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079978 (A382883 (n + 1) + (3 * n + 2 : ℤ)).toNat

end

end A383575.P398068515547007868

/-! ## A383575.P6726828642692954676

`A010060(A157970(n+1)-A382883(n+1))`
-/

namespace A383575.P6726828642692954676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010060 (A157970 (n + 1) - A382883 (n + 1)).toNat

end

end A383575.P6726828642692954676

/-! ## A383575.P12417340731595961997

`Δ[fp[A383016(n+1)]]`
-/

namespace A383575.P12417340731595961997
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383016 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (n : ℤ) < f2 j) 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A383575.P12417340731595961997

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

/-! ## A383576.P3714613480885897724

`A261766(row(A382883(n+1)+1))`
-/

namespace A383576.P3714613480885897724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261766 (SequenceMachineLib.triRow (A382883 (n + 1) + 1).toNat)

end

end A383576.P3714613480885897724

/-! ## A383576.P6121023782896211100

`A333213(row(A382883(n+1)+1))`
-/

namespace A383576.P6121023782896211100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333213 (SequenceMachineLib.triRow (A382883 (n + 1) + 1).toNat)

end

end A383576.P6121023782896211100

/-! ## A383576.P12140259058829357961

`A384667(1+n)*A384709(n+1)`
-/

namespace A383576.P12140259058829357961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A384667 (1 + n) * A384709 (n + 1)

end

end A383576.P12140259058829357961

/-! ## A383576.P9371207494065789234

`min(A384667(n+1), A384709(n+1))`
-/

namespace A383576.P9371207494065789234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  min (A384667 (n + 1)) (A384709 (n + 1))

end

end A383576.P9371207494065789234

/-! ## A383576.P3167277787239728735

`A109702(∑{#}[1, A382883(n+1)^#])`
-/

namespace A383576.P3167277787239728735
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109702 (∑ k ∈ Finset.range (f1 n + 1), A382883 (n + 1) ^ k).toNat

end

end A383576.P3167277787239728735

/-! ## A383576.P5315359758745329924

`-(A382883(n+1)*A384709(n+1))`
-/

namespace A383576.P5315359758745329924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(A382883 (n + 1) * A384709 (n + 1))

end

end A383576.P5315359758745329924

/-! ## A383576.P13538891857017974391

`and(1, A017089(n)^(A382883(n+1)+1))`
-/

namespace A383576.P13538891857017974391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (SequenceMachineLib.roundAway ((A017089 n : ℚ) ^ (A382883 (n + 1) + 1 : ℤ)))

end

end A383576.P13538891857017974391

/-! ## A383576.P6068743515487983193

`abs(floor(A382883(n+1)/A000040(n+1)))`
-/

namespace A383576.P6068743515487983193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |⌊(A382883 (n + 1) : ℚ) / (A000040 (n + 1) : ℚ)⌋|

end

end A383576.P6068743515487983193

/-! ## A383576.P12109843614655699773

`abs(floor(A382883(n+1)/A011533(n+1)))`
-/

namespace A383576.P12109843614655699773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |⌊(A382883 (n + 1) : ℚ) / (A011533 (n + 1) : ℚ)⌋|

end

end A383576.P12109843614655699773

/-! ## A383576.P14211473297072939365

`abs(A134824(n)*floor(A382883(n+1)/8))`
-/

namespace A383576.P14211473297072939365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A134824 n * ⌊(A382883 (n + 1) : ℚ) / 8⌋|

end

end A383576.P14211473297072939365

/-! ## A383576.P7108948005118840885

`(A382883(n+1)-A385055(n+1))*A382883(n+1)`
-/

namespace A383576.P7108948005118840885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A382883 (n + 1) - A385055 (n + 1)) * A382883 (n + 1)

end

end A383576.P7108948005118840885

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

/-! ## A383576.P10398869077580937544

`A134824(2*(n+2))*floor(A382883(n+1)/8)`
-/

namespace A383576.P10398869077580937544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134824 (2 * (n + 2)) * ⌊(A382883 (n + 1) : ℚ) / 8⌋

end

end A383576.P10398869077580937544

/-! ## A383576.P1788745979232484314

`A079978(3*n+2-A382883(n+1))`
-/

namespace A383576.P1788745979232484314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079978 ((3 * n + 2 : ℤ) - A382883 (n + 1)).toNat

end

end A383576.P1788745979232484314

/-! ## A383576.P3421465588589763073

`Δ[fp[A383017(n+1)]]`
-/

namespace A383576.P3421465588589763073
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383017 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (n : ℤ) < f2 j) 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A383576.P3421465588589763073

/-!
# A383577: a(n) = Sum_{k=0..floor(n/3)} binomial(n-k,k) * binomial(n-2*k,k)^2.

The programs for A383577, the canonical program `A383577.P4833542204328850671` is in `Seq.B000.C049`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A383577 has offset 0).

The definition of A383577 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `∑{#}[floor(n/3), C(n-#, #)*C(n-2*#, #)²]` (program `A383577.P4833542204328850671`, by `A383577.P4833542204328850671.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A383577.P4833542204328850671

`∑{#}[floor(n/3), C(n-#, #)*C(n-2*#, #)²]`

The canonical program, it is in `Seq.B000.C049`.
-/

namespace A383577

/-- `∑{#}[floor(n/3), C(n-#, #)*C(n-2*#, #)²]` -/
def P4833542204328850671.Spec : Prop :=
  ∀ n, (P4833542204328850671.a n : ℤ) = A383577 n

theorem P4833542204328850671.correct : P4833542204328850671.Spec := by
  intro n
  simp only [A383577]

end A383577

/-!
# A383578: Let p = prime(n), then a(n) is the p-smooth part of (p-1)! + 1.

The programs for A383578, the canonical program `A383578.P17294025589639841997` is in `Seq.B001.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A383578 has offset 1).

The definition of A383578 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A383578.P17294025589639841997

`A000040(n+1)^(char[(n*a(n-1))²+n]+1)` with `a(0)=2`

The canonical program, it is in `Seq.B001.C014`.
-/

namespace A383578

/-- `A000040(n+1)^(char[(n*a(n-1))²+n]+1)` -/
def P17294025589639841997.Spec : Prop :=
  ∀ n, P17294025589639841997.a n = A383578 (n + 1)

theorem P17294025589639841997.correct : P17294025589639841997.Spec := by
  intro n
  simp only [A383578, Nat.add_sub_cancel]

end A383578

/-! ## A383578.P2068634168592546918

`Δ[A007504(n)]^A174965(A353448(n+1))`
-/

namespace A383578.P2068634168592546918
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n : ℚ) ^ (A174965 (A353448 (n + 1)).toNat : ℤ)

end

end A383578.P2068634168592546918

namespace A383578

/-- `Δ[A007504(n)]^A174965(A353448(n+1))` -/
def P2068634168592546918.Spec : Prop :=
  ∀ n, P2068634168592546918.a n = (A383578 (n + 1) : ℚ)

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

/-! ## A383578.P16323374348793030979

`(A008864(n+1)-1)^A316782(A023175(n+1))`
-/

namespace A383578.P16323374348793030979
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008864 (n + 1) - 1 : ℚ) ^ (A316782 (A023175 (n + 1)).toNat : ℤ)

end

end A383578.P16323374348793030979

namespace A383578

/-- `(A008864(n+1)-1)^A316782(A023175(n+1))` -/
def P16323374348793030979.Spec : Prop :=
  ∀ n, P16323374348793030979.a n = (A383578 (n + 1) : ℚ)

end A383578

/-! ## A383578.P17557215102457570188

`A000040(n+1)^A050334(A302596(3*n+2))`
-/

namespace A383578.P17557215102457570188
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000040 (n + 1) : ℚ) ^ (A050334 (A302596 (3 * n + 2)).toNat : ℤ)

end

end A383578.P17557215102457570188

namespace A383578

/-- `A000040(n+1)^A050334(A302596(3*n+2))` -/
def P17557215102457570188.Spec : Prop :=
  ∀ n, P17557215102457570188.a n = (A383578 (n + 1) : ℚ)

end A383578

/-! ## A383578.P648916068822029003

`A000040(n+1)^A052409(A240536(n+1))`
-/

namespace A383578.P648916068822029003
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000040 (n + 1) : ℚ) ^ (A052409 (A240536 (n + 1)).toNat : ℤ)

end

end A383578.P648916068822029003

namespace A383578

/-- `A000040(n+1)^A052409(A240536(n+1))` -/
def P648916068822029003.Spec : Prop :=
  ∀ n, P648916068822029003.a n = (A383578 (n + 1) : ℚ)

end A383578

/-! ## A383578.P16317748171069205965

`gcd(A000040(n+1), A371130(n))*A000040(n+1)`
-/

namespace A383578.P16317748171069205965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.gcd (A000040 (n + 1)) (A371130 n) : ℤ) * A000040 (n + 1)

end

end A383578.P16317748171069205965

namespace A383578

/-- `gcd(A000040(n+1), A371130(n))*A000040(n+1)` -/
def P16317748171069205965.Spec : Prop :=
  ∀ n, P16317748171069205965.a n = A383578 (n + 1)

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

/-!
# A383579: a(n) is the largest number t such that there exist numbers i,j,k such that, for all m <= t, there exist integers x,y,z with x*i + y*j + z*k = m and |x|+|y|+|z| <= n.

The programs for A383579, there is no canonical definition to state claims against.
-/

/-! ## A383579.P3152474065688249322

`A051462(n)-A055642(A081358(n))`
-/

namespace A383579.P3152474065688249322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051462 n - A055642 (A081358 n).toNat

end

end A383579.P3152474065688249322

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

/-! ## A383579.P13721640512335759133

`A001752(n)-A034199(3*n+4)%2`
-/

namespace A383579.P13721640512335759133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001752 n - Int.tmod (A034199 (3 * n + 4)) 2

end

end A383579.P13721640512335759133

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

The programs for A383581, the canonical program `A383581.P3867534860763599039` is in `Seq.B000.C049`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A383581 has offset 0).

The definition of A383581 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `∑{#}[floor(n/3), C(n-2*#, #)*C(2*(n-3*#), n-3*#)]` (program `A383581.P3867534860763599039`, by `A383581.P3867534860763599039.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A383581.P3867534860763599039

`∑{#}[floor(n/3), C(n-2*#, #)*C(2*(n-3*#), n-3*#)]`

The canonical program, it is in `Seq.B000.C049`.
-/

namespace A383581

/-- `∑{#}[floor(n/3), C(n-2*#, #)*C(2*(n-3*#), n-3*#)]` -/
def P3867534860763599039.Spec : Prop :=
  ∀ n, (P3867534860763599039.a n : ℤ) = A383581 n

theorem P3867534860763599039.correct : P3867534860763599039.Spec := by
  intro n
  simp only [A383581]

end A383581

/-! ## A383581.P17641937380267702547

`A013938(C(∑{e}[10^n, #], n))`
-/

namespace A383581.P17641937380267702547
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013938 (Nat.choose (∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p) n)

end

end A383581.P17641937380267702547

namespace A383581

/-- `A013938(C(∑{e}[10^n, #], n))` -/
def P17641937380267702547.Spec : Prop :=
  ∀ n, P17641937380267702547.a n = A383581 n

end A383581

/-!
# A383582: a(n) = Sum_{k=0..floor(n/4)} binomial(n-3*k,k) * binomial(2*(n-4*k),n-4*k).

The programs for A383582, the canonical program `A383582.P10697401163163222314` is in `Seq.B000.C049`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A383582 has offset 0).

The definition of A383582 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `∑{#}[floor(n/4), C(n-3*#, #)*C(2*(n-4*#), n-4*#)]` (program `A383582.P10697401163163222314`, by `A383582.P10697401163163222314.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A383582.P10697401163163222314

`∑{#}[floor(n/4), C(n-3*#, #)*C(2*(n-4*#), n-4*#)]`

The canonical program, it is in `Seq.B000.C049`.
-/

namespace A383582

/-- `∑{#}[floor(n/4), C(n-3*#, #)*C(2*(n-4*#), n-4*#)]` -/
def P10697401163163222314.Spec : Prop :=
  ∀ n, (P10697401163163222314.a n : ℤ) = A383582 n

theorem P10697401163163222314.correct : P10697401163163222314.Spec := by
  intro n
  simp only [A383582]

end A383582

/-! ## A383582.P329071592736144565

`A075249(A006134(n+1))`
-/

namespace A383582.P329071592736144565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075249 (A006134 (n + 1)).toNat

end

end A383582.P329071592736144565

namespace A383582

/-- `A075249(A006134(n+1))` -/
def P329071592736144565.Spec : Prop :=
  ∀ n, P329071592736144565.a n = A383582 n

end A383582

/-! ## A383582.P8725778797799144125

`A159700(A030019(n))+A000984(n)`
-/

namespace A383582.P8725778797799144125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159700 (A030019 n).toNat + A000984 n

end

end A383582.P8725778797799144125

namespace A383582

/-- `A159700(A030019(n))+A000984(n)` -/
def P8725778797799144125.Spec : Prop :=
  ∀ n, P8725778797799144125.a n = A383582 n

end A383582

/-!
# A383583: a(n) = Sum_{k=0..floor(n/3)} binomial(n-2*k-1,k) * binomial(k,n-3*k).

The programs for A383583, there is no canonical definition to state claims against.
-/

/-! ## A383583.P16768352445388685023

`A383584(lt[A395095(2*n+1), A174264(2*(n+1))])`
-/

namespace A383583.P16768352445388685023
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A395095 (2 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174264 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383584 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A383583.P16768352445388685023

/-!
# A383585: Number of vertices of even degree in a cubic lattice n X n X n.

The programs for A383585, the canonical program `A383585.P679580776248636813` is in `Seq.B000.C049`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A383585 has offset 1).

The definition of A383585 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A383585.P7541157527133294159

`ogf((13x^2-20x^3+13x^4)/(1-4x+6x^2-4x^3+x^4))`
-/

namespace A383585.P7541157527133294159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 0, 13, -20, 13] [1, -4, 6, -4, 1] n

end

end A383585.P7541157527133294159

namespace A383585

/-- `ogf((13x^2-20x^3+13x^4)/(1-4x+6x^2-4x^3+x^4))` -/
def P7541157527133294159.Spec : Prop :=
  ∀ n, P7541157527133294159.a n = A383585 (n + 1)

end A383585

/-! ## A383585.P679580776248636813

`4*a(n-1)-6*a(n-2)+4*a(n-3)-a(n-4)` with `a(0)=0, a(1)=0, a(2)=13, a(3)=32, a(4)=63`

The canonical program, it is in `Seq.B000.C049`.
-/

namespace A383585

/-- `4*a(n-1)-6*a(n-2)+4*a(n-3)-a(n-4)` -/
def P679580776248636813.Spec : Prop :=
  ∀ n, P679580776248636813.a n = A383585 (n + 1)

theorem P679580776248636813.correct : P679580776248636813.Spec := by
  intro n
  simp only [A383585, Nat.add_sub_cancel]

end A383585

/-! ## A383585.P1728403330681889253

`Δ[(C(abs(1-n), 2)+6)²]`
-/

namespace A383585.P1728403330681889253
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (Nat.choose |1 - (n : ℤ)|.toNat 2 + 6) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A383585.P1728403330681889253

namespace A383585

/-- `Δ[(C(abs(1-n), 2)+6)²]` -/
def P1728403330681889253.Spec : Prop :=
  ∀ n, P1728403330681889253.a n = A383585 (n + 1)

end A383585

/-! ## A383585.P7645955450264148134

`Δ[∑[a(n-1)+1]²]` with `a(0)=6, a(1)=0, a(2)=0`
-/

namespace A383585.P7645955450264148134
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [6, 0, 0] fun n f2 =>
  f2 (n - 1) + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f2 j) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A383585.P7645955450264148134

namespace A383585

/-- `Δ[∑[a(n-1)+1]²]` -/
def P7645955450264148134.Spec : Prop :=
  ∀ n, P7645955450264148134.a n = A383585 (n + 1)

end A383585

/-! ## A383585.P17636245149261670005

`Δ[(1+A167499(n)-A008486(n))²]`
-/

namespace A383585.P17636245149261670005
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 + (A167499 n - A008486 n)) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A383585.P17636245149261670005

namespace A383585

/-- `Δ[(1+A167499(n)-A008486(n))²]` -/
def P17636245149261670005.Spec : Prop :=
  ∀ n, P17636245149261670005.a n = A383585 (n + 1)

end A383585

/-! ## A383585.P1785859049060957147

`Δ[(1+A000217(n+3)+n-A008458(n))²]`
-/

namespace A383585.P1785859049060957147
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 + (A000217 (n + 3) + (n : ℤ) - A008458 n)) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A383585.P1785859049060957147

namespace A383585

/-- `Δ[(1+A000217(n+3)+n-A008458(n))²]` -/
def P1785859049060957147.Spec : Prop :=
  ∀ n, P1785859049060957147.a n = A383585 (n + 1)

end A383585

/-!
# A383588: a(n) is the minimum sum of a nonnegative integer 6-tuple that takes n moves to reach a 0 component, where a move picks two components, subtracts the smaller from the larger, and doubles the smaller.

The programs for A383588, there is no canonical definition to state claims against.
-/

/-! ## A383588.P9551342370074994540

`A346951(A015656(1+n))`
-/

namespace A383588.P9551342370074994540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346951 (A015656 (1 + n)).toNat

end

end A383588.P9551342370074994540

/-!
# A383589: a(n) = A378762(A381662(n)).

The programs for A383589, the canonical program `A383589.P15006316624676943189` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A383589 has offset 1).

The definition of A383589 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A378762, A381662, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A383589.P15006316624676943189

`A378762(A381662(n+1))`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A383589

/-- `A378762(A381662(n+1))` -/
def P15006316624676943189.Spec : Prop :=
  ∀ n, P15006316624676943189.a n = A383589 (n + 1)

theorem P15006316624676943189.correct : P15006316624676943189.Spec := by
  intro n
  simp only [A383589, Nat.add_sub_cancel]

end A383589

/-! ## A383589.P12175027218184696411

`A376214(A056023(1+n))`
-/

namespace A383589.P12175027218184696411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376214 (A056023 (1 + n)).toNat

end

end A383589.P12175027218184696411

namespace A383589

/-- `A376214(A056023(1+n))` -/
def P12175027218184696411.Spec : Prop :=
  ∀ n, P12175027218184696411.a n = A383589 (n + 1)

end A383589

/-! ## A383589.P15568273566938019797

`A379343(A378200(1+n))`
-/

namespace A383589.P15568273566938019797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379343 (A378200 (1 + n)).toNat

end

end A383589.P15568273566938019797

namespace A383589

/-- `A379343(A378200(1+n))` -/
def P15568273566938019797.Spec : Prop :=
  ∀ n, P15568273566938019797.a n = A383589 (n + 1)

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

/-!
# A383590: a(n) = A378762(A382499(n)).

The programs for A383590, there is no canonical definition to state claims against.
-/

/-! ## A383590.P9961302092394914794

`A378762(A382499(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A383590.P9961302092394914794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378762 (A382499 (n + 1)).toNat

end

end A383590.P9961302092394914794

/-! ## A383590.P8662051909846484849

`fo[A383419(n+1)-1]+1`
-/

namespace A383590.P8662051909846484849
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383419 (n + 1) - 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = (n : ℤ)) 0 + 1

end

end A383590.P8662051909846484849

/-! ## A383590.P1457458916238450809

`A382679(A056023(n+1))`
-/

namespace A383590.P1457458916238450809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382679 (A056023 (n + 1)).toNat

end

end A383590.P1457458916238450809

/-! ## A383590.P17923475898648727836

`A056023(A382680(1+n))`
-/

namespace A383590.P17923475898648727836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056023 (A382680 (1 + n)).toNat

end

end A383590.P17923475898648727836

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

/-! ## A383590.P10221706761587669251

`A380817(A383722(n+1))`
-/

namespace A383590.P10221706761587669251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380817 (A383722 (n + 1)).toNat

end

end A383590.P10221706761587669251

/-! ## A383590.P6535838432566029428

`A383724(A380817(n+1))`
-/

namespace A383590.P6535838432566029428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383724 (A380817 (n + 1)).toNat

end

end A383590.P6535838432566029428

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

/-!
# A383591: Smallest prime p where the absolute difference of the gaps to the adjacent primes exceeds n*log(p).

The programs for A383591, there is no canonical definition to state claims against.
-/

/-! ## A383591.P10187946556233053673

`A104138(A237708(8*n+1)+A000217(n)+1)`
-/

namespace A383591.P10187946556233053673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104138 (A237708 (8 * n + 1) + A000217 n + 1).toNat

end

end A383591.P10187946556233053673

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

/-! ## A383593.P13697691973441282879

`or(n, A011782(A063250(n)))`
-/

namespace A383593.P13697691973441282879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (n : ℤ) (A011782 (A063250 n).toNat)

end

end A383593.P13697691973441282879

namespace A383593

/-- `or(n, A011782(A063250(n)))` -/
def P13697691973441282879.Spec : Prop :=
  ∀ n, P13697691973441282879.a n = A383593 n

end A383593

/-! ## A383593.P317017241219872882

`or(n, A246592(A028310(n)))`
-/

namespace A383593.P317017241219872882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (n : ℤ) (A246592 (A028310 n).toNat)

end

end A383593.P317017241219872882

namespace A383593

/-- `or(n, A246592(A028310(n)))` -/
def P317017241219872882.Spec : Prop :=
  ∀ n, P317017241219872882.a n = A383593 n

end A383593

/-! ## A383593.P16268630842473872015

`A053644(or(1, ∑[A048298(n)])-n)+n`
-/

namespace A383593.P16268630842473872015
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048298 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053644 (Int.lor 1 (∑ j ∈ Finset.range (n + 1), f1 j) - (n : ℤ)).toNat + (n : ℤ)

end

end A383593.P16268630842473872015

namespace A383593

/-- `A053644(or(1, ∑[A048298(n)])-n)+n` -/
def P16268630842473872015.Spec : Prop :=
  ∀ n, P16268630842473872015.a n = A383593 n

end A383593

/-! ## A383593.P13040017908003173222

`A053644(A346303(n+1)-3*n)+n`
-/

namespace A383593.P13040017908003173222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053644 (A346303 (n + 1) - (3 * n : ℤ)).toNat + (n : ℤ)

end

end A383593.P13040017908003173222

namespace A383593

/-- `A053644(A346303(n+1)-3*n)+n` -/
def P13040017908003173222.Spec : Prop :=
  ∀ n, P13040017908003173222.a n = A383593 n

end A383593

/-! ## A383593.P11447011185453646194

`A053644(A038554(n))+A028310(n)`
-/

namespace A383593.P11447011185453646194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053644 (A038554 n).toNat + A028310 n

end

end A383593.P11447011185453646194

namespace A383593

/-- `A053644(A038554(n))+A028310(n)` -/
def P11447011185453646194.Spec : Prop :=
  ∀ n, P11447011185453646194.a n = A383593 n

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

