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
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C007
import Seq.B001.C010
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
import Seq.B006.C000
import Seq.B006.C001
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
# A079600: a(n) = A000670(p-1)/p with p = prime(n+1).

The programs for A079600, there is no canonical definition to state claims against.
-/

/-! ## A079600.P17486714924308194187

`A000670(A006093(n+2))/A065091(n+1)`
-/

namespace A079600.P17486714924308194187
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000670 (A006093 (n + 2)).toNat : ℚ) / (A065091 (n + 1) : ℚ)

end

end A079600.P17486714924308194187

/-!
# A079602: Greatest of smallest odd prime factors of all composite numbers between n-th prime and next prime.

The programs for A079602, there is no canonical definition to state claims against.
-/

/-! ## A079602.P11627624221079973101

`p?[A029600(n)*A321258(n+1)]`
-/

namespace A079602.P11627624221079973101
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029600 n * A321258 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A079602.P11627624221079973101

/-! ## A079602.P3461309408373575975

`p?[A164340(n+1)%A048765(n+1)]`
-/

namespace A079602.P3461309408373575975
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A164340 (n + 1)) (A048765 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A079602.P3461309408373575975

/-! ## A079602.P17041791586341795694

`A090368(A221362(3*n+2)+n+1)`
-/

namespace A079602.P17041791586341795694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090368 (A221362 (3 * n + 2) + (n + 1 : ℤ)).toNat

end

end A079602.P17041791586341795694

/-! ## A079602.P14534927987363896205

`p?[A174956(n+1)+A000005(A176551(n+1))]`
-/

namespace A079602.P14534927987363896205
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174956 (n + 1) + A000005 (A176551 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A079602.P14534927987363896205

/-! ## A079602.P10713107288544013871

`p?[A324886(A032742(n+1)+A032742(n+3))]`
-/

namespace A079602.P10713107288544013871
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324886 (A032742 (n + 1) + A032742 (n + 3)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A079602.P10713107288544013871

/-!
# A079603: "Trim" numbers: see reference for definition.

The programs for A079603, there is no canonical definition to state claims against.
-/

/-! ## A079603.P7827710512562741998

`filter[A330697(n+1), A359372(#)]`
-/

namespace A079603.P7827710512562741998
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330697 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359372 (f1 j).toNat = 1) n)

end

end A079603.P7827710512562741998

/-! ## A079603.P13323690869676232776

`eq[A240235(n+1), A294333(n)]`
-/

namespace A079603.P13323690869676232776
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240235 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294333 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A079603.P13323690869676232776

/-! ## A079603.P1254527344382623180

`∩[A305081(n+1), A346635(n+1)]`
-/

namespace A079603.P1254527344382623180
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305081 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346635 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A079603.P1254527344382623180

/-! ## A079603.P12663022533444806489

`∩[A330697(n+1), A359373(n+1)]`
-/

namespace A079603.P12663022533444806489
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330697 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359373 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A079603.P12663022533444806489

/-! ## A079603.P7744585344075389504

`∩[A352936(n+1), A359891(n+1)]`
-/

namespace A079603.P7744585344075389504
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352936 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359891 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A079603.P7744585344075389504

/-!
# A079604: Marks on lexicographically earliest 17-mark optimal Golomb ruler.

The programs for A079604, there is no canonical definition to state claims against.
-/

/-! ## A079604.P14509955302242352893

`A106683(137+n)`
-/

namespace A079604.P14509955302242352893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106683 (137 + n)

end

end A079604.P14509955302242352893

/-!
# A079607: Marks on lexicographically earliest 20-mark optimal Golomb ruler.

The programs for A079607, there is no canonical definition to state claims against.
-/

/-! ## A079607.P16454404503117150579

`A106683(191+n)`
-/

namespace A079607.P16454404503117150579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106683 (191 + n)

end

end A079607.P16454404503117150579

/-!
# A079609: a(n) = (b(p)-2)/p where b(k) denotes Bell numbers and p = prime(n).

The programs for A079609, there is no canonical definition to state claims against.
-/

/-! ## A079609.P9354429704873349505

`A327696(p?[comp[n²]])`
-/

namespace A079609.P9354429704873349505
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327696 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A079609.P9354429704873349505

/-! ## A079609.P15097228424882597900

`A327696(A000040(n+1))`
-/

namespace A079609.P15097228424882597900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327696 (A000040 (n + 1)).toNat

end

end A079609.P15097228424882597900

/-! ## A079609.P5409250774532899014

`A327696(record[A006530(n+2)])`
-/

namespace A079609.P5409250774532899014
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327696 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A079609.P5409250774532899014

/-! ## A079609.P7910770671040508813

`A327696(record[A014963(n+2)])`
-/

namespace A079609.P7910770671040508813
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327696 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A079609.P7910770671040508813

/-! ## A079609.P4569056849446177272

`A327696(record[A020639(n+2)])`
-/

namespace A079609.P4569056849446177272
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327696 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A079609.P4569056849446177272

/-!
# A079610: a(n) = (5*n+1)*(5*n+3)*(5*n+5).

The programs for A079610, the canonical program `A079610.P3533576370435016541` is in `Seq.B000.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A079610 has offset 0).

The definition of A079610 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(5*n+1)*(5*n+3)*(5*n+5)` (program `A079610.P3533576370435016541`, by `A079610.P3533576370435016541.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A079610.P3533576370435016541

`(5*n+1)*(5*n+3)*(5*n+5)`

The canonical program, it is in `Seq.B000.C010`.
-/

namespace A079610

/-- `(5*n+1)*(5*n+3)*(5*n+5)` -/
def P3533576370435016541.Spec : Prop :=
  ∀ n, (P3533576370435016541.a n : ℤ) = A079610 n

theorem P3533576370435016541.correct : P3533576370435016541.Spec := by
  intro n
  simp only [A079610]

end A079610

/-! ## A079610.P13605529733265413700

`A016887(n)-A305074(n+1)`
-/

namespace A079610.P13605529733265413700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016887 n - A305074 (n + 1)

end

end A079610.P13605529733265413700

namespace A079610

/-- `A016887(n)-A305074(n+1)` -/
def P13605529733265413700.Spec : Prop :=
  ∀ n, P13605529733265413700.a n = A079610 n

end A079610

/-! ## A079610.P3214296946350425934

`A016887(n)-2*A017341(n)`
-/

namespace A079610.P3214296946350425934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016887 n - 2 * A017341 n

end

end A079610.P3214296946350425934

namespace A079610

/-- `A016887(n)-2*A017341(n)` -/
def P3214296946350425934.Spec : Prop :=
  ∀ n, P3214296946350425934.a n = A079610 n

end A079610

/-! ## A079610.P2282796105591710945

`A001545(n)*A016897(n)-A016861(n)`
-/

namespace A079610.P2282796105591710945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001545 n * A016897 n - A016861 n

end

end A079610.P2282796105591710945

namespace A079610

/-- `A001545(n)*A016897(n)-A016861(n)` -/
def P2282796105591710945.Spec : Prop :=
  ∀ n, P2282796105591710945.a n = A079610 n

end A079610

/-! ## A079610.P16641074960573936578

`A016885(n)²*A016885(n)-A305074(n+1)`
-/

namespace A079610.P16641074960573936578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016885 n ^ 2 * A016885 n - A305074 (n + 1)

end

end A079610.P16641074960573936578

namespace A079610

/-- `A016885(n)²*A016885(n)-A305074(n+1)` -/
def P16641074960573936578.Spec : Prop :=
  ∀ n, P16641074960573936578.a n = A079610 n

end A079610

/-! ## A079610.P12191143480390104534

`A370912(4*n+n+1)`
-/

namespace A079610.P12191143480390104534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370912 (4 * n + (n + 1))

end

end A079610.P12191143480390104534

namespace A079610

/-- `A370912(4*n+n+1)` -/
def P12191143480390104534.Spec : Prop :=
  ∀ n, P12191143480390104534.a n = A079610 n

end A079610

/-! ## A079610.P9713655041711825857

`A177058(A016897(n))-A016897(n)`
-/

namespace A079610.P9713655041711825857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177058 (A016897 n).toNat - A016897 n

end

end A079610.P9713655041711825857

namespace A079610

/-- `A177058(A016897(n))-A016897(n)` -/
def P9713655041711825857.Spec : Prop :=
  ∀ n, P9713655041711825857.a n = A079610 n

end A079610

/-! ## A079610.P11615848270725497546

`A000578(A016885(n))-A305074(n+1)`
-/

namespace A079610.P11615848270725497546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000578 (A016885 n).toNat - A305074 (n + 1)

end

end A079610.P11615848270725497546

namespace A079610

/-- `A000578(A016885(n))-A305074(n+1)` -/
def P11615848270725497546.Spec : Prop :=
  ∀ n, P11615848270725497546.a n = A079610 n

end A079610

/-! ## A079610.P15340121239203599852

`∑[A194715(7*n)+A194715(n+1)]`
-/

namespace A079610.P15340121239203599852
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194715 (7 * n) + A194715 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A079610.P15340121239203599852

namespace A079610

/-- `∑[A194715(7*n)+A194715(n+1)]` -/
def P15340121239203599852.Spec : Prop :=
  ∀ n, P15340121239203599852.a n = A079610 n

end A079610

/-! ## A079610.P12839149060029017933

`A034828(10*n+6)-A305074(n+1)`
-/

namespace A079610.P12839149060029017933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034828 (10 * n + 6) - A305074 (n + 1)

end

end A079610.P12839149060029017933

namespace A079610

/-- `A034828(10*n+6)-A305074(n+1)` -/
def P12839149060029017933.Spec : Prop :=
  ∀ n, P12839149060029017933.a n = A079610 n

end A079610

/-!
# A079612: Largest number m such that a^n == 1 (mod m) whenever a is coprime to m.

The programs for A079612, there is no canonical definition to state claims against.
-/

/-! ## A079612.P10815565733000716249

`((2*n+3)%(n+1)+1)*A075180(n)`
-/

namespace A079612.P10815565733000716249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((2 * n + 3) % (n + 1) + 1 : ℕ) : ℤ) * A075180 n

end

end A079612.P10815565733000716249

/-! ## A079612.P12202283790215675205

`A000034(n)*A185633(n+1)`
-/

namespace A079612.P12202283790215675205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 n * A185633 (n + 1)

end

end A079612.P12202283790215675205

/-! ## A079612.P5096610746047210678

`(2-A000007(n))*A075180(n)`
-/

namespace A079612.P5096610746047210678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - A000007 n) * A075180 n

end

end A079612.P5096610746047210678

/-! ## A079612.P1958065106212345142

`A040001(2*n)*A075180(n)`
-/

namespace A079612.P1958065106212345142
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040001 (2 * n) * A075180 n

end

end A079612.P1958065106212345142

/-! ## A079612.P15655579841300436783

`lcm(A074723(n+1), A075180(n))`
-/

namespace A079612.P15655579841300436783
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A074723 (n + 1)) (A075180 n)

end

end A079612.P15655579841300436783

/-! ## A079612.P781779634490329752

`gcd(2, A102376(n))*A075180(n)`
-/

namespace A079612.P781779634490329752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.gcd 2 (A102376 n) : ℤ) * A075180 n

end

end A079612.P781779634490329752

/-! ## A079612.P10623536164898429786

`A040001(n+1)*A185633(n+1)`
-/

namespace A079612.P10623536164898429786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040001 (n + 1) * A185633 (n + 1)

end

end A079612.P10623536164898429786

/-! ## A079612.P10253332798490276500

`A034444(A034444(n+1))*A075180(n)`
-/

namespace A079612.P10253332798490276500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034444 (A034444 (n + 1)).toNat * A075180 n

end

end A079612.P10253332798490276500

/-! ## A079612.P9922868105927770588

`(A001222(A039635(n+1))+1)*A075180(n)`
-/

namespace A079612.P9922868105927770588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A001222 (A039635 (n + 1)).toNat + 1) * A075180 n

end

end A079612.P9922868105927770588

/-! ## A079612.P8668489701099073393

`A067513(A108077(n+2))*A185633(n+1)`
-/

namespace A079612.P8668489701099073393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067513 (A108077 (n + 2)).toNat * A185633 (n + 1)

end

end A079612.P8668489701099073393

/-! ## A079612.P13666676207499302995

`(2-A088157(A051903(n+1)))*A075180(n)`
-/

namespace A079612.P13666676207499302995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - A088157 (A051903 (n + 1)).toNat) * A075180 n

end

end A079612.P13666676207499302995

/-! ## A079612.P2963672327658225687

`A185633(n+1)/A075180(n+1)*A185633(n+2)`
-/

namespace A079612.P2963672327658225687
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A185633 (n + 1) : ℚ) / (A075180 (n + 1) : ℚ) * (A185633 (n + 2) : ℚ)

end

end A079612.P2963672327658225687

/-! ## A079612.P5304442600362761908

`A075180(A000007(n)*A075180(n))*A075180(n)`
-/

namespace A079612.P5304442600362761908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075180 (A000007 n * A075180 n).toNat * A075180 n

end

end A079612.P5304442600362761908

/-! ## A079612.P16002849691537929165

`A000925(A075180(2*n))*A075180(n)`
-/

namespace A079612.P16002849691537929165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000925 (A075180 (2 * n)).toNat * A075180 n

end

end A079612.P16002849691537929165

/-! ## A079612.P12718187823507435899

`A000002(A054353(n+1))*A185633(n+1)`
-/

namespace A079612.P12718187823507435899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000002 (A054353 (n + 1)).toNat * A185633 (n + 1)

end

end A079612.P12718187823507435899

/-! ## A079612.P12477989071075880494

`(2-A209229(A000040(n+1)))*A075180(n)`
-/

namespace A079612.P12477989071075880494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - A209229 (A000040 (n + 1)).toNat) * A075180 n

end

end A079612.P12477989071075880494

/-! ## A079612.P13812562384744668255

`A036453(2*n+1)*A075180(n)`
-/

namespace A079612.P13812562384744668255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036453 (2 * n + 1) * A075180 n

end

end A079612.P13812562384744668255

/-! ## A079612.P14498236566301381982

`A075180(n)*A176591(2*n+1)`
-/

namespace A079612.P14498236566301381982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075180 n * A176591 (2 * n + 1)

end

end A079612.P14498236566301381982

/-! ## A079612.P3723146169627397401

`A143407(A322315(n+1))`
-/

namespace A079612.P3723146169627397401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143407 (A322315 (n + 1)).toNat

end

end A079612.P3723146169627397401

/-!
# A079613: a(n) = F(3*2^n) where F(k) denotes the k-th Fibonacci number.

The programs for A079613, the canonical program `A079613.P8290668010841187312` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A079613 has offset 0).

The definition of A079613 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A079613.P8290668010841187312

`A000045(A007283(n))`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A079613

/-- `A000045(A007283(n))` -/
def P8290668010841187312.Spec : Prop :=
  ∀ n, P8290668010841187312.a n = A079613 n

theorem P8290668010841187312.correct : P8290668010841187312.Spec := by
  intro n
  simp only [A079613]

end A079613

/-! ## A079613.P8543781146629605339

`A081976(n+1)*A081976(n+2)`
-/

namespace A079613.P8543781146629605339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081976 (n + 1) * A081976 (n + 2)

end

end A079613.P8543781146629605339

namespace A079613

/-- `A081976(n+1)*A081976(n+2)` -/
def P8543781146629605339.Spec : Prop :=
  ∀ n, P8543781146629605339.a n = A079613 n

end A079613

/-! ## A079613.P16450314795685214628

`A014445(2^n)`
-/

namespace A079613.P16450314795685214628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014445 (2 ^ n)

end

end A079613.P16450314795685214628

namespace A079613

/-- `A014445(2^n)` -/
def P16450314795685214628.Spec : Prop :=
  ∀ n, P16450314795685214628.a n = A079613 n

end A079613

/-! ## A079613.P9925894361885180506

`2*A081460(n+1)`
-/

namespace A079613.P9925894361885180506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A081460 (n + 1)

end

end A079613.P9925894361885180506

namespace A079613

/-- `2*A081460(n+1)` -/
def P9925894361885180506.Spec : Prop :=
  ∀ n, P9925894361885180506.a n = A079613 n

end A079613

/-!
# A079615: Product of all distinct prime factors of all composite numbers between n-th prime and next prime.

The programs for A079615, there is no canonical definition to state claims against.
-/

/-! ## A079615.P16845861128361251656

`A076978(n+2)`
-/

namespace A079615.P16845861128361251656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076978 (n + 2)

end

end A079615.P16845861128361251656

/-! ## A079615.P15270306999146423975

`gcd(A002110(A066530(n+1)), A061214(n+2))`
-/

namespace A079615.P15270306999146423975
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002110 (A066530 (n + 1)).toNat) (A061214 (n + 2))

end

end A079615.P15270306999146423975

/-! ## A079615.P4301451831599176098

`gcd(A002110(A136548(n+2)), A072472(n+2))`
-/

namespace A079615.P4301451831599176098
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002110 (A136548 (n + 2)).toNat) (A072472 (n + 2))

end

end A079615.P4301451831599176098

/-! ## A079615.P4270240119379547507

`gcd(A002110(n+1), A056831(n+2))`
-/

namespace A079615.P4270240119379547507
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002110 (n + 1)) (A056831 (n + 2))

end

end A079615.P4270240119379547507

/-! ## A079615.P5507706849025953615

`gcd(A074167(n+2)+A002110(n+1), A074167(n+2))`
-/

namespace A079615.P5507706849025953615
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A074167 (n + 2) + A002110 (n + 1)) (A074167 (n + 2))

end

end A079615.P5507706849025953615

/-! ## A079615.P1884321076886040243

`Δ[gcd(A002110(n), A072472(n+1))]+gcd(A002110(n), A072472(n+1))`
-/

namespace A079615.P1884321076886040243
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002110 n) (A072472 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ) + (Int.gcd (A002110 n) (A072472 (n + 1)) : ℤ)

end

end A079615.P1884321076886040243

/-!
# A079616: Prime factorization templates.

The programs for A079616, there is no canonical definition to state claims against.
-/

/-! ## A079616.P9424559382363146512

`A077462(n+1)-1`
-/

namespace A079616.P9424559382363146512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077462 (n + 1) - 1

end

end A079616.P9424559382363146512

/-! ## A079616.P12661517926418213692

`∑[Δ[A077462(n)]%A008486(n)]`
-/

namespace A079616.P12661517926418213692
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077462 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f2 (n + 1) - f2 n) (A008486 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A079616.P12661517926418213692

/-! ## A079616.P12796517594825444178

`Δ[∑[A077462(n)]-n]`
-/

namespace A079616.P12796517594825444178
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077462 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A079616.P12796517594825444178

/-! ## A079616.P13190187953835660497

`A088226(A077462(n+1)²)`
-/

namespace A079616.P13190187953835660497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088226 (A077462 (n + 1) ^ 2).toNat

end

end A079616.P13190187953835660497

/-! ## A079616.P11866116283586135523

`A338629(A077462(n+1)²)`
-/

namespace A079616.P11866116283586135523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338629 (A077462 (n + 1) ^ 2).toNat

end

end A079616.P11866116283586135523

/-! ## A079616.P3964365464071716527

`∑[A262501(n+1)]%A077462(n+1)`
-/

namespace A079616.P3964365464071716527
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262501 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) (A077462 (n + 1))

end

end A079616.P3964365464071716527

/-!
# A079617: Occurrences of prime factorization templates, unordered.

The programs for A079617, there is no canonical definition to state claims against.
-/

/-! ## A079617.P2318398505227612818

`A101296(n+2)-1`
-/

namespace A079617.P2318398505227612818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101296 (n + 2) - 1

end

end A079617.P2318398505227612818

/-! ## A079617.P14652287278065194873

`A320110(2*(n+2))-2`
-/

namespace A079617.P14652287278065194873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320110 (2 * (n + 2)) - 2

end

end A079617.P14652287278065194873

/-! ## A079617.P14099162876745181022

`A057918(A101296(n+2)²)`
-/

namespace A079617.P14099162876745181022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057918 (A101296 (n + 2) ^ 2).toNat

end

end A079617.P14099162876745181022

/-! ## A079617.P17833328203556990000

`A085089(A046523(n+2)-1)`
-/

namespace A079617.P17833328203556990000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085089 (A046523 (n + 2) - 1).toNat

end

end A079617.P17833328203556990000

/-! ## A079617.P9913040298896851447

`A361808(A181819(n+2))-1`
-/

namespace A079617.P9913040298896851447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361808 (A181819 (n + 2)).toNat - 1

end

end A079617.P9913040298896851447

/-! ## A079617.P4804603277759403186

`A002260(A286566(n+2)-1)`
-/

namespace A079617.P4804603277759403186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (A286566 (n + 2) - 1).toNat

end

end A079617.P4804603277759403186

/-! ## A079617.P2210151625608400415

`A002260(A286467(n+2)-1)`
-/

namespace A079617.P2210151625608400415
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (A286467 (n + 2) - 1).toNat

end

end A079617.P2210151625608400415

/-! ## A079617.P10023246160103828039

`A130270(A286467(n+2))`
-/

namespace A079617.P10023246160103828039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130270 (A286467 (n + 2)).toNat

end

end A079617.P10023246160103828039

/-! ## A079617.P14680488319095319131

`A002260(A286454(n+2)-1)`
-/

namespace A079617.P14680488319095319131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (A286454 (n + 2) - 1).toNat

end

end A079617.P14680488319095319131

/-! ## A079617.P5608632134067402183

`A089688(A289628(n+2))`
-/

namespace A079617.P5608632134067402183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089688 (A289628 (n + 2)).toNat

end

end A079617.P5608632134067402183

/-! ## A079617.P12872345320095203046

`A004736(A289628(n+2)+1)`
-/

namespace A079617.P12872345320095203046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (A289628 (n + 2) + 1).toNat

end

end A079617.P12872345320095203046

/-! ## A079617.P15579313127638582378

`A128138(A286454(n+2))`
-/

namespace A079617.P15579313127638582378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128138 (A286454 (n + 2)).toNat

end

end A079617.P15579313127638582378

/-! ## A079617.P1984017899986804964

`A051777(A291752(n+2))`
-/

namespace A079617.P1984017899986804964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051777 (A291752 (n + 2)).toNat

end

end A079617.P1984017899986804964

/-! ## A079617.P14037083955731193686

`A002260(A291752(n+2)-1)`
-/

namespace A079617.P14037083955731193686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (A291752 (n + 2) - 1).toNat

end

end A079617.P14037083955731193686

/-! ## A079617.P6191965872696817461

`A329901(A238745(n+2))-1`
-/

namespace A079617.P6191965872696817461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329901 (A238745 (n + 2)).toNat - 1

end

end A079617.P6191965872696817461

/-!
# A079619: Look at and say the digits of Pi.

The programs for A079619, there is no canonical definition to state claims against.
-/

/-! ## A079619.P16397472109961413879

`A104691(n+1)^(A087036(n)%2)`
-/

namespace A079619.P16397472109961413879
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A104691 (n + 1) : ℚ) ^ (Int.tmod (A087036 n) 2 : ℤ)

end

end A079619.P16397472109961413879

/-! ## A079619.P16817664821124659429

`A104691(A207801(n+1))^and(1, n)`
-/

namespace A079619.P16817664821124659429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104691 (A207801 (n + 1)).toNat ^ Nat.land 1 n

end

end A079619.P16817664821124659429

/-!
# A079620: Look at and say the digits of e.

The programs for A079620, there is no canonical definition to state claims against.
-/

/-! ## A079620.P1419090699591489849

`A001355(n+1)^A007814(A019565(n))`
-/

namespace A079620.P1419090699591489849
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001355 (n + 1) : ℚ) ^ (A007814 (A019565 n).toNat : ℤ)

end

end A079620.P1419090699591489849

/-! ## A079620.P11361711690458471386

`A001355(n+1)^A089263(A010008(n))`
-/

namespace A079620.P11361711690458471386
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001355 (n + 1) : ℚ) ^ (A089263 (A010008 n).toNat : ℤ)

end

end A079620.P11361711690458471386

/-! ## A079620.P1203918791236934299

`C(A001355(2*n+1-n), A089263(A010008(n)))`
-/

namespace A079620.P1203918791236934299
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A001355 ((2 * n : ℤ) + (1 - (n : ℤ))).toNat).toNat (A089263 (A010008 n).toNat).toNat

end

end A079620.P1203918791236934299

/-! ## A079620.P9723161524782619733

`A001355(n+1)^A007877(A033428(n))`
-/

namespace A079620.P9723161524782619733
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001355 (n + 1) : ℚ) ^ (A007877 (A033428 n).toNat : ℤ)

end

end A079620.P9723161524782619733

/-! ## A079620.P2318024282772031616

`A001355(n+1)^A178146(A056107(n))`
-/

namespace A079620.P2318024282772031616
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001355 (n + 1) : ℚ) ^ (A178146 (A056107 n).toNat : ℤ)

end

end A079620.P2318024282772031616

/-!
# A079621: Matrix square of unsigned Lah triangle abs(A008297(n,k)) or A105278(n,k).

The programs for A079621, the canonical program `A079621.P13592380189452857907` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A079621 has offset 1).

The definition of A079621 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1771 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A079621.P8395049862453410535

`(C(comp[∑[n]]-n, 2)-n)!*A114656(n+1)`
-/

namespace A079621.P8395049862453410535
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial ((Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 : ℤ) - (n : ℤ)).toNat : ℤ) * A114656 (n + 1)

end

end A079621.P8395049862453410535

namespace A079621

/-- `(C(comp[∑[n]]-n, 2)-n)!*A114656(n+1)` -/
def P8395049862453410535.Spec : Prop :=
  ∀ n, P8395049862453410535.a n = A079621 (n + 1)

end A079621

/-! ## A079621.P3444345931608102301

`2^(C(comp[∑[n]]-n, 2)-(n+1))*A105278(n+1)`
-/

namespace A079621.P3444345931608102301
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ ((Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 : ℤ) - (n + 1 : ℤ) : ℤ) * (A105278 (n + 1) : ℚ)

end

end A079621.P3444345931608102301

namespace A079621

/-- `2^(C(comp[∑[n]]-n, 2)-(n+1))*A105278(n+1)` -/
def P3444345931608102301.Spec : Prop :=
  ∀ n, P3444345931608102301.a n = (A079621 (n + 1) : ℚ)

end A079621

/-! ## A079621.P6378787984218388375

`A130322(n)*A247500(n)`
-/

namespace A079621.P6378787984218388375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130322 n * A247500 n

end

end A079621.P6378787984218388375

namespace A079621

/-- `A130322(n)*A247500(n)` -/
def P6378787984218388375.Spec : Prop :=
  ∀ n, P6378787984218388375.a n = A079621 (n + 1)

end A079621

/-! ## A079621.P13640354047417808256

`abs(A066667(n)*A130321(n))`
-/

namespace A079621.P13640354047417808256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A066667 n * A130321 n|

end

end A079621.P13640354047417808256

namespace A079621

/-- `abs(A066667(n)*A130321(n))` -/
def P13640354047417808256.Spec : Prop :=
  ∀ n, P13640354047417808256.a n = A079621 (n + 1)

end A079621

/-! ## A079621.P13592380189452857907

`A038207(n)*A173333(n+1)`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A079621

/-- `A038207(n)*A173333(n+1)` -/
def P13592380189452857907.Spec : Prop :=
  ∀ n, P13592380189452857907.a n = A079621 (n + 1)

theorem P13592380189452857907.correct : P13592380189452857907.Spec := by
  intro n
  simp only [A079621, Nat.add_sub_cancel]

end A079621

/-! ## A079621.P2994025985819634780

`A105278(n+1)*A130321(n)`
-/

namespace A079621.P2994025985819634780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105278 (n + 1) * A130321 n

end

end A079621.P2994025985819634780

namespace A079621

/-- `A105278(n+1)*A130321(n)` -/
def P2994025985819634780.Spec : Prop :=
  ∀ n, P2994025985819634780.a n = A079621 (n + 1)

end A079621

/-! ## A079621.P13262083992509035258

`A105278(n+1)/A007318(n)*A038207(n)`
-/

namespace A079621.P13262083992509035258
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A105278 (n + 1) : ℚ) / (A007318 n : ℚ) * (A038207 n : ℚ)

end

end A079621.P13262083992509035258

namespace A079621

/-- `A105278(n+1)/A007318(n)*A038207(n)` -/
def P13262083992509035258.Spec : Prop :=
  ∀ n, P13262083992509035258.a n = (A079621 (n + 1) : ℚ)

end A079621

/-! ## A079621.P3565505642004972582

`A048786(n+1)/2^(C(comp[∑[n]]-n, 2)-(n+1))`
-/

namespace A079621.P3565505642004972582
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A048786 (n + 1) : ℚ) / (2 : ℚ) ^ ((Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 : ℤ) - (n + 1 : ℤ) : ℤ)

end

end A079621.P3565505642004972582

namespace A079621

/-- `A048786(n+1)/2^(C(comp[∑[n]]-n, 2)-(n+1))` -/
def P3565505642004972582.Spec : Prop :=
  ∀ n, P3565505642004972582.a n = (A079621 (n + 1) : ℚ)

end A079621

/-! ## A079621.P13415559947213004370

`A048786(n+1)/A130321(n)`
-/

namespace A079621.P13415559947213004370
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A048786 (n + 1) : ℚ) / (A130321 n : ℚ)

end

end A079621.P13415559947213004370

namespace A079621

/-- `A048786(n+1)/A130321(n)` -/
def P13415559947213004370.Spec : Prop :=
  ∀ n, P13415559947213004370.a n = (A079621 (n + 1) : ℚ)

end A079621

/-!
# A079623: a(1) = a(2) = 1, a(3)=4, a(n) = abs(a(n-1) - a(n-2) - a(n-3)).

The programs for A079623, the canonical program `A079623.P15298684453623887333` is in `Seq.B000.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A079623 has offset 1).

The definition of A079623 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `abs(a(n-1)-a(n-2)-a(n-3))` (program `A079623.P15298684453623887333`, by `A079623.P15298684453623887333.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A079623.P15298684453623887333

`abs(a(n-1)-a(n-2)-a(n-3))` with `a(0)=1, a(1)=1, a(2)=4`

The canonical program, it is in `Seq.B000.C010`.
-/

namespace A079623

/-- `abs(a(n-1)-a(n-2)-a(n-3))` -/
def P15298684453623887333.Spec : Prop :=
  ∀ n, P15298684453623887333.a n = A079623 (n + 1)

theorem P15298684453623887333.correct : P15298684453623887333.Spec := by
  intro n
  simp only [A079623, Nat.add_sub_cancel]

end A079623

/-! ## A079623.P12355418792046772061

`A077653(A028310(n)+16)`
-/

namespace A079623.P12355418792046772061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077653 (A028310 n + 16).toNat

end

end A079623.P12355418792046772061

namespace A079623

/-- `A077653(A028310(n)+16)` -/
def P12355418792046772061.Spec : Prop :=
  ∀ n, P12355418792046772061.a n = A079623 (n + 1)

end A079623

/-! ## A079623.P15988961249080450601

`A080096(A028310(n)+21)`
-/

namespace A079623.P15988961249080450601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080096 (A028310 n + 21).toNat

end

end A079623.P15988961249080450601

namespace A079623

/-- `A080096(A028310(n)+21)` -/
def P15988961249080450601.Spec : Prop :=
  ∀ n, P15988961249080450601.a n = A079623 (n + 1)

end A079623

/-! ## A079623.P7964957648266014955

`A088226(A028310(n)+27)`
-/

namespace A079623.P7964957648266014955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088226 (A028310 n + 27).toNat

end

end A079623.P7964957648266014955

namespace A079623

/-- `A088226(A028310(n)+27)` -/
def P7964957648266014955.Spec : Prop :=
  ∀ n, P7964957648266014955.a n = A079623 (n + 1)

end A079623

/-! ## A079623.P5547745606505416042

`A077653(A065033(2*n)+16)`
-/

namespace A079623.P5547745606505416042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077653 (A065033 (2 * n) + 16).toNat

end

end A079623.P5547745606505416042

namespace A079623

/-- `A077653(A065033(2*n)+16)` -/
def P5547745606505416042.Spec : Prop :=
  ∀ n, P5547745606505416042.a n = A079623 (n + 1)

end A079623

/-! ## A079623.P2657838373715887258

`A088226(A065033(2*n)+27)`
-/

namespace A079623.P2657838373715887258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088226 (A065033 (2 * n) + 27).toNat

end

end A079623.P2657838373715887258

namespace A079623

/-- `A088226(A065033(2*n)+27)` -/
def P2657838373715887258.Spec : Prop :=
  ∀ n, P2657838373715887258.a n = A079623 (n + 1)

end A079623

/-! ## A079623.P14921977241986218897

`A088226(A134478(∑[n])+27)`
-/

namespace A079623.P14921977241986218897
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088226 (A134478 (∑ j ∈ Finset.range (n + 1), f1 j) + 27).toNat

end

end A079623.P14921977241986218897

namespace A079623

/-- `A088226(A134478(∑[n])+27)` -/
def P14921977241986218897.Spec : Prop :=
  ∀ n, P14921977241986218897.a n = A079623 (n + 1)

end A079623

/-!
# A079624: a(1) = a(2) = 1, a(3) = 6, a(n) = abs(a(n-1) - a(n-2) - a(n-3)).

The programs for A079624, the canonical program `A079624.P5558490196233248783` is in `Seq.B000.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A079624 has offset 1).

The definition of A079624 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `abs(a(n-1)-a(n-2)-a(n-3))` (program `A079624.P5558490196233248783`, by `A079624.P5558490196233248783.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A079624.P5558490196233248783

`abs(a(n-1)-a(n-2)-a(n-3))` with `a(0)=1, a(1)=1, a(2)=6`

The canonical program, it is in `Seq.B000.C010`.
-/

namespace A079624

/-- `abs(a(n-1)-a(n-2)-a(n-3))` -/
def P5558490196233248783.Spec : Prop :=
  ∀ n, P5558490196233248783.a n = A079624 (n + 1)

theorem P5558490196233248783.correct : P5558490196233248783.Spec := by
  intro n
  simp only [A079624, Nat.add_sub_cancel]

end A079624

/-!
# A079626: Let u(1) = u(2) = 1, u(n) = abs(u(n-1) - 3/2*u(n-2)); then a(n) is the exponent of 2 in the denominator of u(n).

The programs for A079626, there is no canonical definition to state claims against.
-/

/-! ## A079626.P9638420665201829532

`floor(n/2)+1-A000189(A165886(n))`
-/

namespace A079626.P9638420665201829532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℚ) / 2⌋ + (1 - A000189 (A165886 n).toNat)

end

end A079626.P9638420665201829532

/-! ## A079626.P3575640463796657898

`A008619(n)-A000189(A165886(n))`
-/

namespace A079626.P3575640463796657898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 n - A000189 (A165886 n).toNat

end

end A079626.P3575640463796657898

/-! ## A079626.P10437423966931090834

`and(-A000189(A165886(n)), A004526(n))`
-/

namespace A079626.P10437423966931090834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-A000189 (A165886 n).toNat) (A004526 n)

end

end A079626.P10437423966931090834

/-! ## A079626.P10197681889391761571

`∑[A059841(n)]-A000189(A165886(n))`
-/

namespace A079626.P10197681889391761571
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059841 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A000189 (A165886 n).toNat

end

end A079626.P10197681889391761571

/-! ## A079626.P15818802169280171989

`A001222(A038754(n))-A053389(n+1)`
-/

namespace A079626.P15818802169280171989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A038754 n).toNat - A053389 (n + 1)

end

end A079626.P15818802169280171989

/-!
# A079627: a(n) = Sum_{prime(n) < m < prime(n+1)} mu(m), where mu is the Moebius function (A008683).

The programs for A079627, the canonical program `A079627.P16123061929790760579` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A079627 has offset 1).

The definition of A079627 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A079627.P16123061929790760579

`2*A074905(n+1)-A061398(n+1)`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A079627

/-- `2*A074905(n+1)-A061398(n+1)` -/
def P16123061929790760579.Spec : Prop :=
  ∀ n, P16123061929790760579.a n = A079627 (n + 1)

theorem P16123061929790760579.correct : P16123061929790760579.Spec := by
  intro n
  simp only [A079627, Nat.add_sub_cancel]

end A079627

/-! ## A079627.P6696447942752397217

`Δ[A088004(A000040(n+1))]`
-/

namespace A079627.P6696447942752397217
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088004 (A000040 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A079627.P6696447942752397217

namespace A079627

/-- `Δ[A088004(A000040(n+1))]` -/
def P6696447942752397217.Spec : Prop :=
  ∀ n, P6696447942752397217.a n = A079627 (n + 1)

end A079627

/-! ## A079627.P17886303685807588623

`Δ[A088004(A006005(n+1))]`
-/

namespace A079627.P17886303685807588623
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088004 (A006005 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A079627.P17886303685807588623

namespace A079627

/-- `Δ[A088004(A006005(n+1))]` -/
def P17886303685807588623.Spec : Prop :=
  ∀ n, P17886303685807588623.a n = A079627 (n + 1)

end A079627

/-! ## A079627.P6141964559641783277

`Δ[A088004(A006093(n+1))]`
-/

namespace A079627.P6141964559641783277
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088004 (A006093 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A079627.P6141964559641783277

namespace A079627

/-- `Δ[A088004(A006093(n+1))]` -/
def P6141964559641783277.Spec : Prop :=
  ∀ n, P6141964559641783277.a n = A079627 (n + 1)

end A079627

/-! ## A079627.P7595097570405271414

`Δ[A088004(A076342(n+1))]`
-/

namespace A079627.P7595097570405271414
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088004 (A076342 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A079627.P7595097570405271414

namespace A079627

/-- `Δ[A088004(A076342(n+1))]` -/
def P7595097570405271414.Spec : Prop :=
  ∀ n, P7595097570405271414.a n = A079627 (n + 1)

end A079627

/-! ## A079627.P17650836430521068994

`Δ[A088004(A008578(n+2))]`
-/

namespace A079627.P17650836430521068994
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088004 (A008578 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A079627.P17650836430521068994

namespace A079627

/-- `Δ[A088004(A008578(n+2))]` -/
def P17650836430521068994.Spec : Prop :=
  ∀ n, P17650836430521068994.a n = A079627 (n + 1)

end A079627

/-! ## A079627.P18178855056266758166

`Δ[A088004(A037168(n+1)/2)]`
-/

namespace A079627.P18178855056266758166
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088004 (SequenceMachineLib.roundAway ((A037168 (n + 1) : ℚ) / 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A079627.P18178855056266758166

namespace A079627

/-- `Δ[A088004(A037168(n+1)/2)]` -/
def P18178855056266758166.Spec : Prop :=
  ∀ n, P18178855056266758166.a n = A079627 (n + 1)

end A079627

/-! ## A079627.P15100741966567733014

`Δ[A088004(A100484(n+1)/2)]`
-/

namespace A079627.P15100741966567733014
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088004 (SequenceMachineLib.roundAway ((A100484 (n + 1) : ℚ) / 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A079627.P15100741966567733014

namespace A079627

/-- `Δ[A088004(A100484(n+1)/2)]` -/
def P15100741966567733014.Spec : Prop :=
  ∀ n, P15100741966567733014.a n = A079627 (n + 1)

end A079627

/-! ## A079627.P10929121195356988498

`Δ[A002321(A000040(n+1)-1)]+1`
-/

namespace A079627.P10929121195356988498
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002321 (A000040 (n + 1) - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + 1

end

end A079627.P10929121195356988498

namespace A079627

/-- `Δ[A002321(A000040(n+1)-1)]+1` -/
def P10929121195356988498.Spec : Prop :=
  ∀ n, P10929121195356988498.a n = A079627 (n + 1)

end A079627

/-! ## A079627.P5463905378021410365

`Δ[A002321(eq[2, A000005(n+1)])]+1`
-/

namespace A079627.P5463905378021410365
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002321 (SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + 1

end

end A079627.P5463905378021410365

namespace A079627

/-- `Δ[A002321(eq[2, A000005(n+1)])]+1` -/
def P5463905378021410365.Spec : Prop :=
  ∀ n, P5463905378021410365.a n = A079627 (n + 1)

end A079627

/-! ## A079627.P14763953171039636159

`Δ[A002321(eq[1, A001222(n+1)]+1)]+1`
-/

namespace A079627.P14763953171039636159
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002321 (SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + 1

end

end A079627.P14763953171039636159

namespace A079627

/-- `Δ[A002321(eq[1, A001222(n+1)]+1)]+1` -/
def P14763953171039636159.Spec : Prop :=
  ∀ n, P14763953171039636159.a n = A079627 (n + 1)

end A079627

/-! ## A079627.P8936430703028418193

`Δ[A002321(eq[n, A000010(n+1)]+1)+n]`
-/

namespace A079627.P8936430703028418193
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002321 (SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n + 1) + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A079627.P8936430703028418193

namespace A079627

/-- `Δ[A002321(eq[n, A000010(n+1)]+1)+n]` -/
def P8936430703028418193.Spec : Prop :=
  ∀ n, P8936430703028418193.a n = A079627 (n + 1)

end A079627

/-! ## A079627.P12840239013295768970

`Δ[A088004(A004086(A004087(n+1)))]`
-/

namespace A079627.P12840239013295768970
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088004 (A004086 (A004087 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A079627.P12840239013295768970

namespace A079627

/-- `Δ[A088004(A004086(A004087(n+1)))]` -/
def P12840239013295768970.Spec : Prop :=
  ∀ n, P12840239013295768970.a n = A079627 (n + 1)

end A079627

/-! ## A079627.P17071144930640721512

`Δ[A088004(A006530(A100484(n+1)))]`
-/

namespace A079627.P17071144930640721512
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088004 (A006530 (A100484 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A079627.P17071144930640721512

namespace A079627

/-- `Δ[A088004(A006530(A100484(n+1)))]` -/
def P17071144930640721512.Spec : Prop :=
  ∀ n, P17071144930640721512.a n = A079627 (n + 1)

end A079627

/-! ## A079627.P8931729145154641726

`Δ[A088004(A004525(A037168(n+1)))]`
-/

namespace A079627.P8931729145154641726
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088004 (A004525 (A037168 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A079627.P8931729145154641726

namespace A079627

/-- `Δ[A088004(A004525(A037168(n+1)))]` -/
def P8931729145154641726.Spec : Prop :=
  ∀ n, P8931729145154641726.a n = A079627 (n + 1)

end A079627

/-! ## A079627.P17472845239785597706

`Δ[A088004(A005145(A000124(n)))]`
-/

namespace A079627.P17472845239785597706
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088004 (A005145 (A000124 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A079627.P17472845239785597706

namespace A079627

/-- `Δ[A088004(A005145(A000124(n)))]` -/
def P17472845239785597706.Spec : Prop :=
  ∀ n, P17472845239785597706.a n = A079627 (n + 1)

end A079627

/-!
# A079628: Array of coefficients of P(n,x) = det (M(n,x)) where M(n,x) is the n X n matrix m(i,j)=x if i>j m(i,j)=1-x if i<=j.

The programs for A079628, the canonical program `A079628.P17679166513055195538` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A079628 has offset 0).

The definition of A079628 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A079628.P17679166513055195538

`A033999(A002262(n))*A081277(n)`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A079628

/-- `A033999(A002262(n))*A081277(n)` -/
def P17679166513055195538.Spec : Prop :=
  ∀ n, P17679166513055195538.a n = A079628 n

theorem P17679166513055195538.correct : P17679166513055195538.Spec := by
  intro n
  simp only [A079628]

end A079628

/-! ## A079628.P5998648232002567929

`A081277(n)*A097807(A061579(n))`
-/

namespace A079628.P5998648232002567929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081277 n * A097807 (A061579 n).toNat

end

end A079628.P5998648232002567929

namespace A079628

/-- `A081277(n)*A097807(A061579(n))` -/
def P5998648232002567929.Spec : Prop :=
  ∀ n, P5998648232002567929.a n = A079628 n

end A079628

/-! ## A079628.P17532270921246210812

`A193734(n)/A122803(A002262(n))`
-/

namespace A079628.P17532270921246210812
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A193734 n : ℚ) / (A122803 (A002262 n).toNat : ℚ)

end

end A079628.P17532270921246210812

namespace A079628

/-- `A193734(n)/A122803(A002262(n))` -/
def P17532270921246210812.Spec : Prop :=
  ∀ n, P17532270921246210812.a n = (A079628 n : ℚ)

end A079628

/-! ## A079628.P7581200620485353702

`Δ[A010751(n)]*A118800(A061579(n))`
-/

namespace A079628.P7581200620485353702
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010751 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A118800 (A061579 n).toNat

end

end A079628.P7581200620485353702

namespace A079628

/-- `Δ[A010751(n)]*A118800(A061579(n))` -/
def P7581200620485353702.Spec : Prop :=
  ∀ n, P7581200620485353702.a n = A079628 n

end A079628

/-! ## A079628.P15006119364704865974

`A097807(A057944(n))*A118800(A061579(n))`
-/

namespace A079628.P15006119364704865974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097807 (A057944 n).toNat * A118800 (A061579 n).toNat

end

end A079628.P15006119364704865974

namespace A079628

/-- `A097807(A057944(n))*A118800(A061579(n))` -/
def P15006119364704865974.Spec : Prop :=
  ∀ n, P15006119364704865974.a n = A079628 n

end A079628

/-! ## A079628.P15366100082603686373

`A033999(A294317(n))*A200139(A061579(n))`
-/

namespace A079628.P15366100082603686373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (A294317 n).toNat * A200139 (A061579 n).toNat

end

end A079628.P15366100082603686373

namespace A079628

/-- `A033999(A294317(n))*A200139(A061579(n))` -/
def P15366100082603686373.Spec : Prop :=
  ∀ n, P15366100082603686373.a n = A079628 n

end A079628

/-! ## A079628.P3786648944720061983

`A033999(A217575(n+1))*A081277(n)`
-/

namespace A079628.P3786648944720061983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (A217575 (n + 1)).toNat * A081277 n

end

end A079628.P3786648944720061983

namespace A079628

/-- `A033999(A217575(n+1))*A081277(n)` -/
def P3786648944720061983.Spec : Prop :=
  ∀ n, P3786648944720061983.a n = A079628 n

end A079628

/-! ## A079628.P911272999469971558

`A154269(A059268(n))*A200139(A061579(n))`
-/

namespace A079628.P911272999469971558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154269 (A059268 n).toNat * A200139 (A061579 n).toNat

end

end A079628.P911272999469971558

namespace A079628

/-- `A154269(A059268(n))*A200139(A061579(n))` -/
def P911272999469971558.Spec : Prop :=
  ∀ n, P911272999469971558.a n = A079628 n

end A079628

/-! ## A079628.P9703156183235224300

`A008836(A059268(n))*A081277(n)`
-/

namespace A079628.P9703156183235224300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008836 (A059268 n).toNat * A081277 n

end

end A079628.P9703156183235224300

namespace A079628

/-- `A008836(A059268(n))*A081277(n)` -/
def P9703156183235224300.Spec : Prop :=
  ∀ n, P9703156183235224300.a n = A079628 n

end A079628

/-! ## A079628.P14900787504886535206

`A118800(A061579(n))*A165586(A036561(n))`
-/

namespace A079628.P14900787504886535206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118800 (A061579 n).toNat * A165586 (A036561 n).toNat

end

end A079628.P14900787504886535206

namespace A079628

/-- `A118800(A061579(n))*A165586(A036561(n))` -/
def P14900787504886535206.Spec : Prop :=
  ∀ n, P14900787504886535206.a n = A079628 n

end A079628

/-!
# A079629: Number of twin prime pairs between p^2 and q^2 where (p,q) is the n-th twin prime pair.

The programs for A079629, the canonical program `A079629.P301677267479446868` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A079629 has offset 1).

The definition of A079629 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001359, A006512, A071538, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A079629.P301677267479446868

`A071538(A006512(n+1)²+1)-A071538(A001359(n+1)²+1)`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A079629

/-- `A071538(A006512(n+1)²+1)-A071538(A001359(n+1)²+1)` -/
def P301677267479446868.Spec : Prop :=
  ∀ n, P301677267479446868.a n = A079629 (n + 1)

theorem P301677267479446868.correct : P301677267479446868.Spec := by
  intro n
  simp only [A079629, Nat.add_sub_cancel]

end A079629

/-! ## A079629.P12713453705242229555

`A057767(A029707(n+1))`
-/

namespace A079629.P12713453705242229555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057767 (A029707 (n + 1)).toNat

end

end A079629.P12713453705242229555

namespace A079629

/-- `A057767(A029707(n+1))` -/
def P12713453705242229555.Spec : Prop :=
  ∀ n, P12713453705242229555.a n = A079629 (n + 1)

end A079629

/-! ## A079629.P4677429060836740331

`A057767(A000720(A001359(n+1)))`
-/

namespace A079629.P4677429060836740331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057767 (A000720 (A001359 (n + 1)).toNat).toNat

end

end A079629.P4677429060836740331

namespace A079629

/-- `A057767(A000720(A001359(n+1)))` -/
def P4677429060836740331.Spec : Prop :=
  ∀ n, P4677429060836740331.a n = A079629 (n + 1)

end A079629

/-! ## A079629.P10569077571261647557

`A057767(A000720(A006512(n+1)-1))`
-/

namespace A079629.P10569077571261647557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057767 (A000720 (A006512 (n + 1) - 1).toNat).toNat

end

end A079629.P10569077571261647557

namespace A079629

/-- `A057767(A000720(A006512(n+1)-1))` -/
def P10569077571261647557.Spec : Prop :=
  ∀ n, P10569077571261647557.a n = A079629 (n + 1)

end A079629

/-! ## A079629.P12020612004597154976

`A057767(A000720(xor(1, A006512(n+1))))`
-/

namespace A079629.P12020612004597154976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057767 (A000720 (Int.xor 1 (A006512 (n + 1))).toNat).toNat

end

end A079629.P12020612004597154976

namespace A079629

/-- `A057767(A000720(xor(1, A006512(n+1))))` -/
def P12020612004597154976.Spec : Prop :=
  ∀ n, P12020612004597154976.a n = A079629 (n + 1)

end A079629

/-! ## A079629.P7851053713926657679

`A057767(eq[2, A000040(n+2)-A000040(n+1)]+1)`
-/

namespace A079629.P7851053713926657679
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 2) - A000040 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057767 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A079629.P7851053713926657679

namespace A079629

/-- `A057767(eq[2, A000040(n+2)-A000040(n+1)]+1)` -/
def P7851053713926657679.Spec : Prop :=
  ∀ n, P7851053713926657679.a n = A079629 (n + 1)

end A079629

/-! ## A079629.P7865275882134166134

`A263204(A001359(n+1))`
-/

namespace A079629.P7865275882134166134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263204 (A001359 (n + 1)).toNat

end

end A079629.P7865275882134166134

namespace A079629

/-- `A263204(A001359(n+1))` -/
def P7865275882134166134.Spec : Prop :=
  ∀ n, P7865275882134166134.a n = A079629 (n + 1)

end A079629

/-! ## A079629.P13591932876882889974

`A263204(A111166(n+1))`
-/

namespace A079629.P13591932876882889974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263204 (A111166 (n + 1)).toNat

end

end A079629.P13591932876882889974

namespace A079629

/-- `A263204(A111166(n+1))` -/
def P13591932876882889974.Spec : Prop :=
  ∀ n, P13591932876882889974.a n = A079629 (n + 1)

end A079629

/-! ## A079629.P2213273241928223144

`A263204(A124588(n+2))`
-/

namespace A079629.P2213273241928223144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263204 (A124588 (n + 2)).toNat

end

end A079629.P2213273241928223144

namespace A079629

/-- `A263204(A124588(n+2))` -/
def P2213273241928223144.Spec : Prop :=
  ∀ n, P2213273241928223144.a n = A079629 (n + 1)

end A079629

/-! ## A079629.P7031832498477055842

`A263204(A181747(n+2))`
-/

namespace A079629.P7031832498477055842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263204 (A181747 (n + 2)).toNat

end

end A079629.P7031832498477055842

namespace A079629

/-- `A263204(A181747(n+2))` -/
def P7031832498477055842.Spec : Prop :=
  ∀ n, P7031832498477055842.a n = A079629 (n + 1)

end A079629

/-! ## A079629.P12191120618803346350

`A263204(A014574(n+1)-1)`
-/

namespace A079629.P12191120618803346350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263204 (A014574 (n + 1) - 1).toNat

end

end A079629.P12191120618803346350

namespace A079629

/-- `A263204(A014574(n+1)-1)` -/
def P12191120618803346350.Spec : Prop :=
  ∀ n, P12191120618803346350.a n = A079629 (n + 1)

end A079629

/-! ## A079629.P57797222891452818

`A263204(A006512(n+1)-2)`
-/

namespace A079629.P57797222891452818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263204 (A006512 (n + 1) - 2).toNat

end

end A079629.P57797222891452818

namespace A079629

/-- `A263204(A006512(n+1)-2)` -/
def P57797222891452818.Spec : Prop :=
  ∀ n, P57797222891452818.a n = A079629 (n + 1)

end A079629

/-! ## A079629.P9107610175121860999

`A263204(A094743(n+2)-2)`
-/

namespace A079629.P9107610175121860999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263204 (A094743 (n + 2) - 2).toNat

end

end A079629.P9107610175121860999

namespace A079629

/-- `A263204(A094743(n+2)-2)` -/
def P9107610175121860999.Spec : Prop :=
  ∀ n, P9107610175121860999.a n = A079629 (n + 1)

end A079629

/-! ## A079629.P13426174991918507753

`A263204(A108605(n+1)/2)`
-/

namespace A079629.P13426174991918507753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263204 (SequenceMachineLib.roundAway ((A108605 (n + 1) : ℚ) / 2)).toNat

end

end A079629.P13426174991918507753

namespace A079629

/-- `A263204(A108605(n+1)/2)` -/
def P13426174991918507753.Spec : Prop :=
  ∀ n, P13426174991918507753.a n = A079629 (n + 1)

end A079629

/-! ## A079629.P4451261150742905505

`A263204(A001097(2*n+1)-2)`
-/

namespace A079629.P4451261150742905505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263204 (A001097 (2 * n + 1) - 2).toNat

end

end A079629.P4451261150742905505

namespace A079629

/-- `A263204(A001097(2*n+1)-2)` -/
def P4451261150742905505.Spec : Prop :=
  ∀ n, P4451261150742905505.a n = A079629 (n + 1)

end A079629

/-!
# A079631: Number of k less than or equal to n such that floor(k^(1/3)) divides k.

The programs for A079631, there is no canonical definition to state claims against.
-/

/-! ## A079631.P8585710879779300174

`∑[A340977((n+1)%∑[A010057((n+1)²)]+4)]`
-/

namespace A079631.P8585710879779300174
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010057 ((n + 1) ^ 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340977 (Int.tmod (n + 1 : ℤ) (∑ j ∈ Finset.range (n + 1), f2 j) + 4).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A079631.P8585710879779300174

/-! ## A079631.P15585304681817876969

`∑[gcd(n, A061523(n))%2]`
-/

namespace A079631.P15585304681817876969
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n : ℤ) (A061523 n) % 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A079631.P15585304681817876969

/-! ## A079631.P5049090166358686436

`∑[A097806(A000045(A235669(n)))]`
-/

namespace A079631.P5049090166358686436
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097806 (A000045 (A235669 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A079631.P5049090166358686436

/-! ## A079631.P15960312898623076905

`∑[(n%2)^A225681(n)]`
-/

namespace A079631.P15960312898623076905
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n % 2 : ℕ) : ℚ) ^ (A225681 n : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A079631.P15960312898623076905

/-! ## A079631.P8822148292355048142

`A061716(A333953(n+1))`
-/

namespace A079631.P8822148292355048142
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061716 (A333953 (n + 1)).toNat

end

end A079631.P8822148292355048142

/-!
# A079632: a(n) = floor(n/floor(sqrt(n)))-floor(sqrt(n)).

The programs for A079632, the canonical program `A079632.P7364351861297694612` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A079632 has offset 1).

The definition of A079632 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A079632.P16768418200462962373

`floor(2*(sqrt(n+2)-floor(sqrt(n+1))))`
-/

namespace A079632.P16768418200462962373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊2 * (Real.sqrt (n + 2 : ℝ) - (Nat.sqrt (n + 1) : ℝ))⌋

end

end A079632.P16768418200462962373

namespace A079632

/-- `floor(2*(sqrt(n+2)-floor(sqrt(n+1))))` -/
def P16768418200462962373.Spec : Prop :=
  ∀ n, P16768418200462962373.a n = A079632 (n + 1)

end A079632

/-! ## A079632.P7364351861297694612

`a(A076874(n))` with `a(0)=0, a(1)=1, a(2)=2`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A079632

/-- `a(A076874(n))` -/
def P7364351861297694612.Spec : Prop :=
  ∀ n, (P7364351861297694612.a n : ℤ) = A079632 (n + 1)

theorem P7364351861297694612.correct : P7364351861297694612.Spec := by
  intro n
  simp only [A079632, Nat.add_sub_cancel]

end A079632

/-! ## A079632.P5095170937075433627

`val(A319423(n+1), 2)`
-/

namespace A079632.P5095170937075433627
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A319423 (n + 1)).toNat 2

end

end A079632.P5095170937075433627

namespace A079632

/-- `val(A319423(n+1), 2)` -/
def P5095170937075433627.Spec : Prop :=
  ∀ n, (P5095170937075433627.a n : ℤ) = A079632 (n + 1)

end A079632

/-! ## A079632.P12750906649464455655

`∑[char[A086162(n)]]%3`
-/

namespace A079632.P12750906649464455655
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086162 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) % 3

end

end A079632.P12750906649464455655

namespace A079632

/-- `∑[char[A086162(n)]]%3` -/
def P12750906649464455655.Spec : Prop :=
  ∀ n, (P12750906649464455655.a n : ℤ) = A079632 (n + 1)

end A079632

/-! ## A079632.P6901318364346731727

`round(acot(A091453(n+2)))`
-/

namespace A079632.P6901318364346731727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (SequenceMachineLib.acot (A091453 (n + 2) : ℝ))

end

end A079632.P6901318364346731727

namespace A079632

/-- `round(acot(A091453(n+2)))` -/
def P6901318364346731727.Spec : Prop :=
  ∀ n, P6901318364346731727.a n = A079632 (n + 1)

end A079632

/-! ## A079632.P17473549337108411912

`6%(A253607(n+1)+3)`
-/

namespace A079632.P17473549337108411912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod 6 (A253607 (n + 1) + 3)

end

end A079632.P17473549337108411912

namespace A079632

/-- `6%(A253607(n+1)+3)` -/
def P17473549337108411912.Spec : Prop :=
  ∀ n, P17473549337108411912.a n = A079632 (n + 1)

end A079632

/-! ## A079632.P7639518713008977061

`a(n-A000267(n))` with `a(0)=0, a(1)=1, a(2)=2`
-/

namespace A079632.P7639518713008977061
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 2] fun n a =>
  a ((n : ℤ) - A000267 n).toNat

end

end A079632.P7639518713008977061

namespace A079632

/-- `a(n-A000267(n))` -/
def P7639518713008977061.Spec : Prop :=
  ∀ n, (P7639518713008977061.a n : ℤ) = A079632 (n + 1)

end A079632

/-! ## A079632.P5020791942595208179

`A010872(∑[char[A086162(n)]])`
-/

namespace A079632.P5020791942595208179
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086162 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010872 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A079632.P5020791942595208179

namespace A079632

/-- `A010872(∑[char[A086162(n)]])` -/
def P5020791942595208179.Spec : Prop :=
  ∀ n, P5020791942595208179.a n = A079632 (n + 1)

end A079632

/-! ## A079632.P9669514692485955717

`A079643(n+1)-A000196(n+1)`
-/

namespace A079632.P9669514692485955717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079643 (n + 1) - A000196 (n + 1)

end

end A079632.P9669514692485955717

namespace A079632

/-- `A079643(n+1)-A000196(n+1)` -/
def P9669514692485955717.Spec : Prop :=
  ∀ n, P9669514692485955717.a n = A079632 (n + 1)

end A079632

/-! ## A079632.P16650155068068861673

`A305371(A084346(n+2))`
-/

namespace A079632.P16650155068068861673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305371 (A084346 (n + 2)).toNat

end

end A079632.P16650155068068861673

namespace A079632

/-- `A305371(A084346(n+2))` -/
def P16650155068068861673.Spec : Prop :=
  ∀ n, P16650155068068861673.a n = A079632 (n + 1)

end A079632

/-! ## A079632.P12755203546893616633

`A023969(n+1)+Δ[A023969(n+1)]²`
-/

namespace A079632.P12755203546893616633
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023969 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023969 (n + 1) + (f1 (n + 1) - f1 n) ^ 2

end

end A079632.P12755203546893616633

namespace A079632

/-- `A023969(n+1)+Δ[A023969(n+1)]²` -/
def P12755203546893616633.Spec : Prop :=
  ∀ n, P12755203546893616633.a n = A079632 (n + 1)

end A079632

/-! ## A079632.P5593110313617440487

`(Δ[A004737(n+2)]+2)%3`
-/

namespace A079632.P5593110313617440487
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004737 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (n + 1) - f1 n + 2) 3

end

end A079632.P5593110313617440487

namespace A079632

/-- `(Δ[A004737(n+2)]+2)%3` -/
def P5593110313617440487.Spec : Prop :=
  ∀ n, P5593110313617440487.a n = A079632 (n + 1)

end A079632

/-! ## A079632.P7653051232331752580

`A033716(Δ[A004737(n+2)]+1)`
-/

namespace A079632.P7653051232331752580
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004737 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033716 (f1 (n + 1) - f1 n + 1).toNat

end

end A079632.P7653051232331752580

namespace A079632

/-- `A033716(Δ[A004737(n+2)]+1)` -/
def P7653051232331752580.Spec : Prop :=
  ∀ n, P7653051232331752580.a n = A079632 (n + 1)

end A079632

/-! ## A079632.P5454770365087850594

`A004488(1-Δ[A004737(n+2)])`
-/

namespace A079632.P5454770365087850594
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004737 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004488 (1 - (f1 (n + 1) - f1 n)).toNat

end

end A079632.P5454770365087850594

namespace A079632

/-- `A004488(1-Δ[A004737(n+2)])` -/
def P5454770365087850594.Spec : Prop :=
  ∀ n, P5454770365087850594.a n = A079632 (n + 1)

end A079632

/-! ## A079632.P2021479400571982390

`A010872(Δ[A004737(n+2)]+2)`
-/

namespace A079632.P2021479400571982390
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004737 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010872 (f1 (n + 1) - f1 n + 2).toNat

end

end A079632.P2021479400571982390

namespace A079632

/-- `A010872(Δ[A004737(n+2)]+2)` -/
def P2021479400571982390.Spec : Prop :=
  ∀ n, P2021479400571982390.a n = A079632 (n + 1)

end A079632

/-! ## A079632.P12431153023808288302

`A014681(1-Δ[A004737(n+2)])`
-/

namespace A079632.P12431153023808288302
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004737 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014681 (1 - (f1 (n + 1) - f1 n)).toNat

end

end A079632.P12431153023808288302

namespace A079632

/-- `A014681(1-Δ[A004737(n+2)])` -/
def P12431153023808288302.Spec : Prop :=
  ∀ n, P12431153023808288302.a n = A079632 (n + 1)

end A079632

/-! ## A079632.P6500959371898049813

`A025651(4-Δ[A004737(n+2)])`
-/

namespace A079632.P6500959371898049813
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004737 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025651 (4 - (f1 (n + 1) - f1 n)).toNat

end

end A079632.P6500959371898049813

namespace A079632

/-- `A025651(4-Δ[A004737(n+2)])` -/
def P6500959371898049813.Spec : Prop :=
  ∀ n, P6500959371898049813.a n = A079632 (n + 1)

end A079632

/-! ## A079632.P17099276120175377084

`3-A000032(Δ[A004737(n+2)]+1)`
-/

namespace A079632.P17099276120175377084
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004737 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 - A000032 (f1 (n + 1) - f1 n + 1).toNat

end

end A079632.P17099276120175377084

namespace A079632

/-- `3-A000032(Δ[A004737(n+2)]+1)` -/
def P17099276120175377084.Spec : Prop :=
  ∀ n, P17099276120175377084.a n = A079632 (n + 1)

end A079632

/-! ## A079632.P2787199522747461846

`A001221(xor(2, 4-Δ[A004737(n+2)]))`
-/

namespace A079632.P2787199522747461846
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004737 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (Int.xor 2 (4 - (f1 (n + 1) - f1 n))).toNat

end

end A079632.P2787199522747461846

namespace A079632

/-- `A001221(xor(2, 4-Δ[A004737(n+2)]))` -/
def P2787199522747461846.Spec : Prop :=
  ∀ n, P2787199522747461846.a n = A079632 (n + 1)

end A079632

/-! ## A079632.P3114412166773595378

`A001222(xor(2, 4-Δ[A004737(n+2)]))`
-/

namespace A079632.P3114412166773595378
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004737 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (Int.xor 2 (4 - (f1 (n + 1) - f1 n))).toNat

end

end A079632.P3114412166773595378

namespace A079632

/-- `A001222(xor(2, 4-Δ[A004737(n+2)]))` -/
def P3114412166773595378.Spec : Prop :=
  ∀ n, P3114412166773595378.a n = A079632 (n + 1)

end A079632

/-!
# A079634: Marks on lexicographically earliest 23-mark optimal Golomb ruler.

The programs for A079634, there is no canonical definition to state claims against.
-/

/-! ## A079634.P3731752632962714897

`A106683(254+n)`
-/

namespace A079634.P3731752632962714897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106683 (254 + n)

end

end A079634.P3731752632962714897

/-!
# A079635: Sum of (2 - p mod 4) for all prime factors p of n (with repetition).

The programs for A079635, the canonical program `A079635.P16766627809967727170` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A079635 has offset 1).

The definition of A079635 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A065339, A083025, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A079635.P16766627809967727170

`A083025(n+1)-A065339(n+1)`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A079635

/-- `A083025(n+1)-A065339(n+1)` -/
def P16766627809967727170.Spec : Prop :=
  ∀ n, P16766627809967727170.a n = A079635 (n + 1)

theorem P16766627809967727170.correct : P16766627809967727170.Spec := by
  intro n
  simp only [A079635, Nat.add_sub_cancel]

end A079635

/-! ## A079635.P7693241169986303679

`A007814(n+1)-A378880(n+1)`
-/

namespace A079635.P7693241169986303679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (n + 1) - A378880 (n + 1)

end

end A079635.P7693241169986303679

namespace A079635

/-- `A007814(n+1)-A378880(n+1)` -/
def P7693241169986303679.Spec : Prop :=
  ∀ n, P7693241169986303679.a n = A079635 (n + 1)

end A079635

/-! ## A079635.P248658312716326716

`A087436(n+1)-2*A065339(n+1)`
-/

namespace A079635.P248658312716326716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087436 (n + 1) - 2 * A065339 (n + 1)

end

end A079635.P248658312716326716

namespace A079635

/-- `A087436(n+1)-2*A065339(n+1)` -/
def P248658312716326716.Spec : Prop :=
  ∀ n, P248658312716326716.a n = A079635 (n + 1)

end A079635

/-! ## A079635.P6782104688783233252

`2*A083025(n+1)-A087436(n+1)`
-/

namespace A079635.P6782104688783233252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A083025 (n + 1) - A087436 (n + 1)

end

end A079635.P6782104688783233252

namespace A079635

/-- `2*A083025(n+1)-A087436(n+1)` -/
def P6782104688783233252.Spec : Prop :=
  ∀ n, P6782104688783233252.a n = A079635 (n + 1)

end A079635

/-! ## A079635.P4054401528725620483

`A083025(n+1)-A001222(A097706(n+1))`
-/

namespace A079635.P4054401528725620483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083025 (n + 1) - A001222 (A097706 (n + 1)).toNat

end

end A079635.P4054401528725620483

namespace A079635

/-- `A083025(n+1)-A001222(A097706(n+1))` -/
def P4054401528725620483.Spec : Prop :=
  ∀ n, P4054401528725620483.a n = A079635 (n + 1)

end A079635

/-! ## A079635.P12450776295160725050

`A083025(n+1)-A007949(A278509(n+1))`
-/

namespace A079635.P12450776295160725050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083025 (n + 1) - A007949 (A278509 (n + 1)).toNat

end

end A079635.P12450776295160725050

namespace A079635

/-- `A083025(n+1)-A007949(A278509(n+1))` -/
def P12450776295160725050.Spec : Prop :=
  ∀ n, P12450776295160725050.a n = A079635 (n + 1)

end A079635

/-! ## A079635.P5498959110438717507

`A087436(n+1)-2*A087436(A072438(n+1))`
-/

namespace A079635.P5498959110438717507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087436 (n + 1) - 2 * A087436 (A072438 (n + 1)).toNat

end

end A079635.P5498959110438717507

namespace A079635

/-- `A087436(n+1)-2*A087436(A072438(n+1))` -/
def P5498959110438717507.Spec : Prop :=
  ∀ n, P5498959110438717507.a n = A079635 (n + 1)

end A079635

/-! ## A079635.P8925992486273217179

`A007814(n+1)+A083025(n+1)-A378879(n+1)`
-/

namespace A079635.P8925992486273217179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (n + 1) + (A083025 (n + 1) - A378879 (n + 1))

end

end A079635.P8925992486273217179

namespace A079635

/-- `A007814(n+1)+A083025(n+1)-A378879(n+1)` -/
def P8925992486273217179.Spec : Prop :=
  ∀ n, P8925992486273217179.a n = A079635 (n + 1)

end A079635

/-! ## A079635.P12836437497951600717

`A378879(n+1)-(A378880(n+1)+A065339(n+1))`
-/

namespace A079635.P12836437497951600717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378879 (n + 1) - (A378880 (n + 1) + A065339 (n + 1))

end

end A079635.P12836437497951600717

namespace A079635

/-- `A378879(n+1)-(A378880(n+1)+A065339(n+1))` -/
def P12836437497951600717.Spec : Prop :=
  ∀ n, P12836437497951600717.a n = A079635 (n + 1)

end A079635

/-! ## A079635.P1842118575133961775

`A001222(A286361(n+1))-A001222(A286363(n+1))`
-/

namespace A079635.P1842118575133961775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A286361 (n + 1)).toNat - A001222 (A286363 (n + 1)).toNat

end

end A079635.P1842118575133961775

namespace A079635

/-- `A001222(A286361(n+1))-A001222(A286363(n+1))` -/
def P1842118575133961775.Spec : Prop :=
  ∀ n, P1842118575133961775.a n = A079635 (n + 1)

end A079635

/-! ## A079635.P5613824768449266974

`A065339(A332819(n+1))-A065339(n+1)`
-/

namespace A079635.P5613824768449266974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065339 (A332819 (n + 1)).toNat - A065339 (n + 1)

end

end A079635.P5613824768449266974

namespace A079635

/-- `A065339(A332819(n+1))-A065339(n+1)` -/
def P5613824768449266974.Spec : Prop :=
  ∀ n, P5613824768449266974.a n = A079635 (n + 1)

end A079635

/-! ## A079635.P14945330241142681199

`A065339(A267099(n+1))-A065339(n+1)`
-/

namespace A079635.P14945330241142681199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065339 (A267099 (n + 1)).toNat - A065339 (n + 1)

end

end A079635.P14945330241142681199

namespace A079635

/-- `A065339(A267099(n+1))-A065339(n+1)` -/
def P14945330241142681199.Spec : Prop :=
  ∀ n, P14945330241142681199.a n = A079635 (n + 1)

end A079635

/-! ## A079635.P12430538013666016360

`A083025(n+1)-A083025(A267099(n+1))`
-/

namespace A079635.P12430538013666016360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083025 (n + 1) - A083025 (A267099 (n + 1)).toNat

end

end A079635.P12430538013666016360

namespace A079635

/-- `A083025(n+1)-A083025(A267099(n+1))` -/
def P12430538013666016360.Spec : Prop :=
  ∀ n, P12430538013666016360.a n = A079635 (n + 1)

end A079635

/-! ## A079635.P8650622971055856504

`A343938(A319984(n+1))`
-/

namespace A079635.P8650622971055856504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343938 (A319984 (n + 1)).toNat

end

end A079635.P8650622971055856504

namespace A079635

/-- `A343938(A319984(n+1))` -/
def P8650622971055856504.Spec : Prop :=
  ∀ n, P8650622971055856504.a n = A079635 (n + 1)

end A079635

/-! ## A079635.P3332512410187668938

`A083025(n+1)-A083025(A319987(n+1))`
-/

namespace A079635.P3332512410187668938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083025 (n + 1) - A083025 (A319987 (n + 1)).toNat

end

end A079635.P3332512410187668938

namespace A079635

/-- `A083025(n+1)-A083025(A319987(n+1))` -/
def P3332512410187668938.Spec : Prop :=
  ∀ n, P3332512410187668938.a n = A079635 (n + 1)

end A079635

/-! ## A079635.P2774531310205119133

`A083025(n+1)-A083025(A332818(n+1))`
-/

namespace A079635.P2774531310205119133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083025 (n + 1) - A083025 (A332818 (n + 1)).toNat

end

end A079635.P2774531310205119133

namespace A079635

/-- `A083025(n+1)-A083025(A332818(n+1))` -/
def P2774531310205119133.Spec : Prop :=
  ∀ n, P2774531310205119133.a n = A079635 (n + 1)

end A079635

/-! ## A079635.P13697344463828071167

`A087436(n+1)-A087436(A072438(n+1)²)`
-/

namespace A079635.P13697344463828071167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087436 (n + 1) - A087436 (A072438 (n + 1) ^ 2).toNat

end

end A079635.P13697344463828071167

namespace A079635

/-- `A087436(n+1)-A087436(A072438(n+1)²)` -/
def P13697344463828071167.Spec : Prop :=
  ∀ n, P13697344463828071167.a n = A079635 (n + 1)

end A079635

/-! ## A079635.P2463525114060733405

`A087436(n+1)-A065339((n+1)²)`
-/

namespace A079635.P2463525114060733405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087436 (n + 1) - A065339 ((n + 1) ^ 2)

end

end A079635.P2463525114060733405

namespace A079635

/-- `A087436(n+1)-A065339((n+1)²)` -/
def P2463525114060733405.Spec : Prop :=
  ∀ n, P2463525114060733405.a n = A079635 (n + 1)

end A079635

/-! ## A079635.P9969877196720501373

`A083025((n+1)²)-A087436(n+1)`
-/

namespace A079635.P9969877196720501373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083025 ((n + 1) ^ 2) - A087436 (n + 1)

end

end A079635.P9969877196720501373

namespace A079635

/-- `A083025((n+1)²)-A087436(n+1)` -/
def P9969877196720501373.Spec : Prop :=
  ∀ n, P9969877196720501373.a n = A079635 (n + 1)

end A079635

/-!
# A079636: Smallest number whose reciprocal fits in the square-root gap of consecutive primes.

The programs for A079636, the canonical program `A079636.P9723229985810336634` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A079636 has offset 1).

The definition of A079636 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A079636.P16357189772217763637

`A252477(n+1)+1`
-/

namespace A079636.P16357189772217763637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252477 (n + 1) + 1

end

end A079636.P16357189772217763637

namespace A079636

/-- `A252477(n+1)+1` -/
def P16357189772217763637.Spec : Prop :=
  ∀ n, P16357189772217763637.a n = A079636 (n + 1)

end A079636

/-! ## A079636.P9723229985810336634

`ceil(2/Δ[sqrt(A001749(n+1))])`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A079636

/-- `ceil(2/Δ[sqrt(A001749(n+1))])` -/
def P9723229985810336634.Spec : Prop :=
  ∀ n, P9723229985810336634.a n = A079636 (n + 1)

theorem P9723229985810336634.correct : P9723229985810336634.Spec := by
  intro n
  simp only [A079636, Nat.add_sub_cancel]

end A079636

/-! ## A079636.P5563172225940326846

`ceil(1/Δ[sqrt(A000040(n+1))])`
-/

namespace A079636.P5563172225940326846
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A000040 (n + 1) : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈1 / (f1 (n + 1) - f1 n)⌉

end

end A079636.P5563172225940326846

namespace A079636

/-- `ceil(1/Δ[sqrt(A000040(n+1))])` -/
def P5563172225940326846.Spec : Prop :=
  ∀ n, P5563172225940326846.a n = A079636 (n + 1)

end A079636

/-! ## A079636.P2987851381742646664

`ceil(1/Δ[sqrt(A008864(n+1)-1)])`
-/

namespace A079636.P2987851381742646664
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A008864 (n + 1) - 1 : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈1 / (f1 (n + 1) - f1 n)⌉

end

end A079636.P2987851381742646664

namespace A079636

/-- `ceil(1/Δ[sqrt(A008864(n+1)-1)])` -/
def P2987851381742646664.Spec : Prop :=
  ∀ n, P2987851381742646664.a n = A079636 (n + 1)

end A079636

/-! ## A079636.P11964785999013096922

`ceil(1/Δ[sqrt(A008578(n+2))])`
-/

namespace A079636.P11964785999013096922
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A008578 (n + 2) : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈1 / (f1 (n + 1) - f1 n)⌉

end

end A079636.P11964785999013096922

namespace A079636

/-- `ceil(1/Δ[sqrt(A008578(n+2))])` -/
def P11964785999013096922.Spec : Prop :=
  ∀ n, P11964785999013096922.a n = A079636 (n + 1)

end A079636

/-!
# A079637: Smallest prime p with audioactive "echo" of at least n, that is, the finite sequence p_0 = p, p_1 = LookAndSay(p_0), ..., p_n = LookAndSay(p_(n-1)) consists entirely of primes.

The programs for A079637, there is no canonical definition to state claims against.
-/

/-! ## A079637.P12360004460169835991

`A334726(A334749(3*n+2)+n)`
-/

namespace A079637.P12360004460169835991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334726 (A334749 (3 * n + 2) + (n : ℤ)).toNat

end

end A079637.P12360004460169835991

/-! ## A079637.P10268681474465512366

`A334726(floor((n+1)*cosh(cos(n))))`
-/

namespace A079637.P10268681474465512366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334726 ⌊(n + 1 : ℝ) * Real.cosh (Real.cos (n : ℝ))⌋.toNat

end

end A079637.P10268681474465512366

/-!
# A079638: Matrix product of unsigned Lah-triangle |A008297(n,k)| and unsigned Stirling1-triangle |A008275(n,k)|.

The programs for A079638, there is no canonical definition to state claims against.
-/

/-! ## A079638.P1994617488876611301

`A131222(comp[∑[n]])`
-/

namespace A079638.P1994617488876611301
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131222 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A079638.P1994617488876611301

/-! ## A079638.P12384968131975130740

`or(char[1], A131222(A014132(n+1)))`
-/

namespace A079638.P12384968131975130740
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A131222 (A014132 (n + 1)).toNat)

end

end A079638.P12384968131975130740

/-! ## A079638.P16876778147810397402

`A131222(A014132(n+1))%A000032(n+4)`
-/

namespace A079638.P16876778147810397402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A131222 (A014132 (n + 1)).toNat) (A000032 (n + 4))

end

end A079638.P16876778147810397402

/-! ## A079638.P9869004964471635997

`A007318(∑[n])*A131222(A014132(n+1))`
-/

namespace A079638.P9869004964471635997
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (∑ j ∈ Finset.range (n + 1), f1 j) * A131222 (A014132 (n + 1)).toNat

end

end A079638.P9869004964471635997

/-! ## A079638.P16821280017384798169

`A131222(A014132(n+1))/A007318(∑[n+1])`
-/

namespace A079638.P16821280017384798169
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A131222 (A014132 (n + 1)).toNat : ℚ) / (A007318 (∑ j ∈ Finset.range (n + 1), f1 j) : ℚ)

end

end A079638.P16821280017384798169

/-!
# A079641: Matrix product of Stirling2-triangle A008277(n,k) and unsigned Stirling1-triangle |A008275(n,k)|.

The programs for A079641, there is no canonical definition to state claims against.
-/

/-! ## A079641.P13399619677274233840

`A129062(comp[∑[n]])`
-/

namespace A079641.P13399619677274233840
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129062 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A079641.P13399619677274233840

/-! ## A079641.P14799706267163175385

`or(char[2], A129062(A014132(n+1)))`
-/

namespace A079641.P14799706267163175385
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A129062 (A014132 (n + 1)).toNat)

end

end A079641.P14799706267163175385

/-! ## A079641.P14436203885585009261

`or(char[2], A129062(A007401(n+1)+1))`
-/

namespace A079641.P14436203885585009261
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A129062 (A007401 (n + 1) + 1).toNat)

end

end A079641.P14436203885585009261

/-! ## A079641.P17399960898827042952

`A192490(2*(n+2))+A129062(A014132(n+1))`
-/

namespace A079641.P17399960898827042952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192490 (2 * (n + 2)) + A129062 (A014132 (n + 1)).toNat

end

end A079641.P17399960898827042952

/-! ## A079641.P2247111445550119688

`A129062(A014132(n+1))%A022115(n)`
-/

namespace A079641.P2247111445550119688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A129062 (A014132 (n + 1)).toNat) (A022115 n)

end

end A079641.P2247111445550119688

/-!
# A079642: Matrix product of unsigned Stirling1-triangle |A008275(n,k)| and Stirling1-triangle A008275(n,k).

The programs for A079642, there is no canonical definition to state claims against.
-/

/-! ## A079642.P6253781896478967639

`A325873(comp[∑[n]])`
-/

namespace A079642.P6253781896478967639
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325873 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A079642.P6253781896478967639

/-! ## A079642.P9218614177581846499

`or(char[2], A325873(A014132(n+1)))`
-/

namespace A079642.P9218614177581846499
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A325873 (A014132 (n + 1)).toNat)

end

end A079642.P9218614177581846499

/-! ## A079642.P17767620113070901541

`A325873(A014132(n+1))^A178489(n)`
-/

namespace A079642.P17767620113070901541
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A325873 (A014132 (n + 1)).toNat : ℚ) ^ (A178489 n : ℤ)

end

end A079642.P17767620113070901541

/-! ## A079642.P2987550720281449178

`A325873(A014132(n+1))%A000032(n)`
-/

namespace A079642.P2987550720281449178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A325873 (A014132 (n + 1)).toNat) (A000032 n)

end

end A079642.P2987550720281449178

/-! ## A079642.P6317224974123114962

`A007318(∑[n])*A325873(A014132(n+1))`
-/

namespace A079642.P6317224974123114962
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (∑ j ∈ Finset.range (n + 1), f1 j) * A325873 (A014132 (n + 1)).toNat

end

end A079642.P6317224974123114962

/-!
# A079643: a(n) = floor(n/floor(sqrt(n))).

The programs for A079643, the canonical program `A079643.P1696170211291075610` is in `Seq.B000.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A079643 has offset 1).

The definition of A079643 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A079643.P1696170211291075610

`floor((n+1)/floor(sqrt(n+1)))`

The canonical program, it is in `Seq.B000.C010`.
-/

namespace A079643

/-- `floor((n+1)/floor(sqrt(n+1)))` -/
def P1696170211291075610.Spec : Prop :=
  ∀ n, P1696170211291075610.a n = A079643 (n + 1)

theorem P1696170211291075610.correct : P1696170211291075610.Spec := by
  intro n
  simp only [A079643, Nat.add_sub_cancel]

end A079643

/-! ## A079643.P12819289991160089963

`A079632(n+1)+A000196(n+1)`
-/

namespace A079643.P12819289991160089963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079632 (n + 1) + A000196 (n + 1)

end

end A079643.P12819289991160089963

namespace A079643

/-- `A079632(n+1)+A000196(n+1)` -/
def P12819289991160089963.Spec : Prop :=
  ∀ n, P12819289991160089963.a n = A079643 (n + 1)

end A079643

/-! ## A079643.P11971294478186676846

`A379604(n+1-A079644(n+1))`
-/

namespace A079643.P11971294478186676846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379604 ((n + 1 : ℤ) - A079644 (n + 1)).toNat

end

end A079643.P11971294478186676846

namespace A079643

/-- `A379604(n+1-A079644(n+1))` -/
def P11971294478186676846.Spec : Prop :=
  ∀ n, P11971294478186676846.a n = A079643 (n + 1)

end A079643

/-! ## A079643.P1855471327984059197

`A000027(floor((n+1)/A000196(n+1)))`
-/

namespace A079643.P1855471327984059197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 ⌊(n + 1 : ℚ) / (A000196 (n + 1) : ℚ)⌋.toNat

end

end A079643.P1855471327984059197

namespace A079643

/-- `A000027(floor((n+1)/A000196(n+1)))` -/
def P1855471327984059197.Spec : Prop :=
  ∀ n, P1855471327984059197.a n = A079643 (n + 1)

end A079643

/-! ## A079643.P1171393118262601512

`A000037(n+2)-A000037(A028391(n+2))`
-/

namespace A079643.P1171393118262601512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000037 (n + 2) - A000037 (A028391 (n + 2)).toNat

end

end A079643.P1171393118262601512

namespace A079643

/-- `A000037(n+2)-A000037(A028391(n+2))` -/
def P1171393118262601512.Spec : Prop :=
  ∀ n, P1171393118262601512.a n = A079643 (n + 1)

end A079643

/-! ## A079643.P15039912661606926966

`round(sqrt(A143051(n+3)))`
-/

namespace A079643.P15039912661606926966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (A143051 (n + 3) : ℝ))

end

end A079643.P15039912661606926966

namespace A079643

/-- `round(sqrt(A143051(n+3)))` -/
def P15039912661606926966.Spec : Prop :=
  ∀ n, P15039912661606926966.a n = A079643 (n + 1)

end A079643

/-! ## A079643.P195410642112086509

`A010052(n+2)+A000194(n+2)`
-/

namespace A079643.P195410642112086509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010052 (n + 2) + A000194 (n + 2)

end

end A079643.P195410642112086509

namespace A079643

/-- `A010052(n+2)+A000194(n+2)` -/
def P195410642112086509.Spec : Prop :=
  ∀ n, P195410642112086509.a n = A079643 (n + 1)

end A079643

/-! ## A079643.P14225883821647542279

`A060018(n+4)-A000196(n+1)`
-/

namespace A079643.P14225883821647542279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060018 (n + 4) - A000196 (n + 1)

end

end A079643.P14225883821647542279

namespace A079643

/-- `A060018(n+4)-A000196(n+1)` -/
def P14225883821647542279.Spec : Prop :=
  ∀ n, P14225883821647542279.a n = A079643 (n + 1)

end A079643

/-! ## A079643.P6686719767851885526

`A003059(n+3)-A079813(n+2)`
-/

namespace A079643.P6686719767851885526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003059 (n + 3) - A079813 (n + 2)

end

end A079643.P6686719767851885526

namespace A079643

/-- `A003059(n+3)-A079813(n+2)` -/
def P6686719767851885526.Spec : Prop :=
  ∀ n, P6686719767851885526.a n = A079643 (n + 1)

end A079643

/-! ## A079643.P5169304433102954478

`A000194(n+2)+Δ[A000196(n+1)]`
-/

namespace A079643.P5169304433102954478
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000194 (n + 2) + (f1 (n + 1) - f1 n)

end

end A079643.P5169304433102954478

namespace A079643

/-- `A000194(n+2)+Δ[A000196(n+1)]` -/
def P5169304433102954478.Spec : Prop :=
  ∀ n, P5169304433102954478.a n = A079643 (n + 1)

end A079643

/-! ## A079643.P4275556244291169249

`A003059(2*n+5-A003059(n+2)²)`
-/

namespace A079643.P4275556244291169249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003059 ((2 * n + 5 : ℤ) - A003059 (n + 2) ^ 2).toNat

end

end A079643.P4275556244291169249

namespace A079643

/-- `A003059(2*n+5-A003059(n+2)²)` -/
def P4275556244291169249.Spec : Prop :=
  ∀ n, P4275556244291169249.a n = A079643 (n + 1)

end A079643

/-! ## A079643.P8640040985417648477

`A137735(comp[n²]+1)`
-/

namespace A079643.P8640040985417648477
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137735 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + 1)

end

end A079643.P8640040985417648477

namespace A079643

/-- `A137735(comp[n²]+1)` -/
def P8640040985417648477.Spec : Prop :=
  ∀ n, P8640040985417648477.a n = A079643 (n + 1)

end A079643

/-! ## A079643.P14302381266699865174

`A010052(n+2)+A000196(A000037(n+2))`
-/

namespace A079643.P14302381266699865174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010052 (n + 2) + A000196 (A000037 (n + 2)).toNat

end

end A079643.P14302381266699865174

namespace A079643

/-- `A010052(n+2)+A000196(A000037(n+2))` -/
def P14302381266699865174.Spec : Prop :=
  ∀ n, P14302381266699865174.a n = A079643 (n + 1)

end A079643

/-! ## A079643.P203295591197772566

`A028391(A028392(A028392(n+2)))-(n+1)`
-/

namespace A079643.P203295591197772566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028391 (A028392 (A028392 (n + 2)).toNat).toNat - (n + 1 : ℤ)

end

end A079643.P203295591197772566

namespace A079643

/-- `A028391(A028392(A028392(n+2)))-(n+1)` -/
def P203295591197772566.Spec : Prop :=
  ∀ n, P203295591197772566.a n = A079643 (n + 1)

end A079643

/-! ## A079643.P13540023836353713208

`A000196(A008574(n+2))-A000196(n+1)`
-/

namespace A079643.P13540023836353713208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A008574 (n + 2)).toNat - A000196 (n + 1)

end

end A079643.P13540023836353713208

namespace A079643

/-- `A000196(A008574(n+2))-A000196(n+1)` -/
def P13540023836353713208.Spec : Prop :=
  ∀ n, P13540023836353713208.a n = A079643 (n + 1)

end A079643

/-! ## A079643.P9709428310687835900

`val(A243112(n+1), 2)`
-/

namespace A079643.P9709428310687835900
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A243112 (n + 1)).toNat 2

end

end A079643.P9709428310687835900

namespace A079643

/-- `val(A243112(n+1), 2)` -/
def P9709428310687835900.Spec : Prop :=
  ∀ n, (P9709428310687835900.a n : ℤ) = A079643 (n + 1)

end A079643

/-! ## A079643.P12146558516621755361

`A010766(A000217(n)+A000196(n+1))`
-/

namespace A079643.P12146558516621755361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010766 (A000217 n + A000196 (n + 1)).toNat

end

end A079643.P12146558516621755361

namespace A079643

/-- `A010766(A000217(n)+A000196(n+1))` -/
def P12146558516621755361.Spec : Prop :=
  ∀ n, P12146558516621755361.a n = A079643 (n + 1)

end A079643

/-!
# A079644: a(n) = (n mod sqrtint(n)).

The programs for A079644, the canonical program `A079644.P6451914815902459820` is in `Seq.B000.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A079644 has offset 1).

The definition of A079644 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A079644.P6451914815902459820

`(n+1)%floor(sqrt(n+1))`

The canonical program, it is in `Seq.B000.C010`.
-/

namespace A079644

/-- `(n+1)%floor(sqrt(n+1))` -/
def P6451914815902459820.Spec : Prop :=
  ∀ n, (P6451914815902459820.a n : ℤ) = A079644 (n + 1)

theorem P6451914815902459820.correct : P6451914815902459820.Spec := by
  intro n
  simp only [A079644, Nat.add_sub_cancel]

end A079644

/-! ## A079644.P6745712246857531763

`--(n+1)%ceil(-sqrt(n+1))`
-/

namespace A079644.P6745712246857531763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -Int.tmod (-(n + 1 : ℤ)) ⌈-Real.sqrt (n + 1 : ℝ)⌉

end

end A079644.P6745712246857531763

namespace A079644

/-- `--(n+1)%ceil(-sqrt(n+1))` -/
def P6745712246857531763.Spec : Prop :=
  ∀ n, P6745712246857531763.a n = A079644 (n + 1)

end A079644

/-! ## A079644.P16742297826569493777

`A055087(A028391(n+1))`
-/

namespace A079644.P16742297826569493777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055087 (A028391 (n + 1)).toNat

end

end A079644.P16742297826569493777

namespace A079644

/-- `A055087(A028391(n+1))` -/
def P16742297826569493777.Spec : Prop :=
  ∀ n, P16742297826569493777.a n = A079644 (n + 1)

end A079644

/-! ## A079644.P1685409863570951265

`A055087(n+1-A000196(n+1))`
-/

namespace A079644.P1685409863570951265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055087 ((n + 1 : ℤ) - A000196 (n + 1)).toNat

end

end A079644.P1685409863570951265

namespace A079644

/-- `A055087(n+1-A000196(n+1))` -/
def P1685409863570951265.Spec : Prop :=
  ∀ n, P1685409863570951265.a n = A079644 (n + 1)

end A079644

/-! ## A079644.P3220111362337356070

`A055087(A173517(n+1))`
-/

namespace A079644.P3220111362337356070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055087 (A173517 (n + 1)).toNat

end

end A079644.P3220111362337356070

namespace A079644

/-- `A055087(A173517(n+1))` -/
def P3220111362337356070.Spec : Prop :=
  ∀ n, P3220111362337356070.a n = A079644 (n + 1)

end A079644

/-! ## A079644.P16838813691961739932

`A055087(n+2-A003059(n+2))`
-/

namespace A079644.P16838813691961739932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055087 ((n + 2 : ℤ) - A003059 (n + 2)).toNat

end

end A079644.P16838813691961739932

namespace A079644

/-- `A055087(n+2-A003059(n+2))` -/
def P16838813691961739932.Spec : Prop :=
  ∀ n, P16838813691961739932.a n = A079644 (n + 1)

end A079644

/-! ## A079644.P13388517339974032962

`A055087(A206224(n)+A055087(n+1))`
-/

namespace A079644.P13388517339974032962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055087 (A206224 n + A055087 (n + 1)).toNat

end

end A079644.P13388517339974032962

namespace A079644

/-- `A055087(A206224(n)+A055087(n+1))` -/
def P13388517339974032962.Spec : Prop :=
  ∀ n, P13388517339974032962.a n = A079644 (n + 1)

end A079644

/-! ## A079644.P14331589658897779474

`A055087(A055087(n+1)+A000196(n+1)²)`
-/

namespace A079644.P14331589658897779474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055087 (A055087 (n + 1) + A000196 (n + 1) ^ 2).toNat

end

end A079644.P14331589658897779474

namespace A079644

/-- `A055087(A055087(n+1)+A000196(n+1)²)` -/
def P14331589658897779474.Spec : Prop :=
  ∀ n, P14331589658897779474.a n = A079644 (n + 1)

end A079644

/-! ## A079644.P8021014297506205972

`A048158(A000217(n)+A000196(n+1))`
-/

namespace A079644.P8021014297506205972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048158 (A000217 n + A000196 (n + 1)).toNat

end

end A079644.P8021014297506205972

namespace A079644

/-- `A048158(A000217(n)+A000196(n+1))` -/
def P8021014297506205972.Spec : Prop :=
  ∀ n, P8021014297506205972.a n = A079644 (n + 1)

end A079644

/-! ## A079644.P4265699168178502513

`n+1-A006446(A204330(n+1))`
-/

namespace A079644.P4265699168178502513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A006446 (A204330 (n + 1)).toNat

end

end A079644.P4265699168178502513

namespace A079644

/-- `n+1-A006446(A204330(n+1))` -/
def P4265699168178502513.Spec : Prop :=
  ∀ n, P4265699168178502513.a n = A079644 (n + 1)

end A079644

/-!
# A079645: Numbers j such that the integer part of the cube root of j divides j.

The programs for A079645, there is no canonical definition to state claims against.
-/

/-! ## A079645.P4730455017776307354

`∪[A032378(n+1), A006501(n)]`
-/

namespace A079645.P4730455017776307354
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032378 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006501 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A079645.P4730455017776307354

/-! ## A079645.P4989442701844587050

`∪[Δ[A112873(n+1)], A006501(n)]`
-/

namespace A079645.P4989442701844587050
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112873 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006501 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f3 j = (x : ℤ)) n

end

end A079645.P4989442701844587050

/-! ## A079645.P2181698976671267553

`record[gcd(n, A048766(n+1))+n]`
-/

namespace A079645.P2181698976671267553
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n : ℤ) (A048766 (n + 1)) + n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A079645.P2181698976671267553

/-! ## A079645.P13459020514712383466

`lt[lcm(n, A048766(n)), 2*n]`
-/

namespace A079645.P13459020514712383466
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (n : ℤ) (A048766 n)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A079645.P13459020514712383466

/-! ## A079645.P11115756315258641753

`eq[lcm(n, A048766(n)), A028310(n)]`
-/

namespace A079645.P11115756315258641753
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (n : ℤ) (A048766 n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A079645.P11115756315258641753

/-!
# A079647: Integer part of the cube root of n and integer part of the square root of n both divide n.

The programs for A079647, there is no canonical definition to state claims against.
-/

/-! ## A079647.P14125939313724250558

`∩[A006446(n+1), A079645(n+1)]`
-/

namespace A079647.P14125939313724250558
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006446 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079645 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A079647.P14125939313724250558

/-! ## A079647.P15355502640375991169

`∩[A079645(n+1), A274583(n)-1]`
-/

namespace A079647.P15355502640375991169
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079645 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274583 n - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A079647.P15355502640375991169

/-! ## A079647.P2539383738037504034

`∩[A079645(n+1), A238738(n)-A001840(n)]`
-/

namespace A079647.P2539383738037504034
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079645 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238738 n - A001840 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A079647.P2539383738037504034

/-! ## A079647.P13543578902475788549

`∩[A079645(n+1), A002620(A131737(n))+1+n]`
-/

namespace A079647.P13543578902475788549
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079645 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002620 (A131737 n).toNat + 1 + (n : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A079647.P13543578902475788549

/-!
# A079648: Number of primes between n^2 and n^3.

The programs for A079648, there is no canonical definition to state claims against.
-/

/-! ## A079648.P313248795605799530

`A038098(floor(acot(n)+n))-A038107(n)`
-/

namespace A079648.P313248795605799530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038098 ⌊SequenceMachineLib.acot (n : ℝ) + (n : ℝ)⌋.toNat - A038107 n

end

end A079648.P313248795605799530

/-! ## A079648.P3904550521459262613

`A038098(floor(sqrt(n²+1)))-A038107(n)`
-/

namespace A079648.P3904550521459262613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038098 (Nat.sqrt (n ^ 2 + 1)) - A038107 n

end

end A079648.P3904550521459262613

/-! ## A079648.P14342749752313576429

`∑[A060199(n)]-(A060199(n)+A038107(n))`
-/

namespace A079648.P14342749752313576429
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060199 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (A060199 n + A038107 n)

end

end A079648.P14342749752313576429

/-! ## A079648.P11173176086864288264

`A038098(n+1)-(A060199(n)+A038107(n))`
-/

namespace A079648.P11173176086864288264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038098 (n + 1) - (A060199 n + A038107 n)

end

end A079648.P11173176086864288264

/-! ## A079648.P14728042321486966612

`A038098(A028310(n))-A000720(A028310(n)²)`
-/

namespace A079648.P14728042321486966612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038098 (A028310 n).toNat - A000720 (A028310 n ^ 2).toNat

end

end A079648.P14728042321486966612

/-! ## A079648.P3869316261298795128

`A038098(A065033(2*n))-A000720(A065033(2*n)²)`
-/

namespace A079648.P3869316261298795128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038098 (A065033 (2 * n)).toNat - A000720 (A065033 (2 * n) ^ 2).toNat

end

end A079648.P3869316261298795128

/-!
# A079650: Continued fraction for e^(-gamma).

The programs for A079650, there is no canonical definition to state claims against.
-/

/-! ## A079650.P14533028584533020708

`A094644(A289207(n+1))%(n+1)²`
-/

namespace A079650.P14533028584533020708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A094644 (A289207 (n + 1)).toNat) ((n + 1) ^ 2 : ℤ)

end

end A079650.P14533028584533020708

/-! ## A079650.P2381058764046676722

`A094644(A289207(n+1))-A000007(n)`
-/

namespace A079650.P2381058764046676722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094644 (A289207 (n + 1)).toNat - A000007 n

end

end A079650.P2381058764046676722

/-! ## A079650.P18372334048153247921

`A001221(2^A227185(n))*A094644(A289207(n+1))`
-/

namespace A079650.P18372334048153247921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A227185 n : ℤ))).toNat * A094644 (A289207 (n + 1)).toNat

end

end A079650.P18372334048153247921

/-!
# A079651: Primes having only {1, 4, 7} as digits.

The programs for A079651, the canonical program `A079651.P4122737859183377024` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A079651 has offset 1).

The definition of A079651 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1277 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A079651.P10875483216155974988

`∩[A028373(n+1), A386029(n+1)]`
-/

namespace A079651.P10875483216155974988
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028373 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386029 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A079651.P10875483216155974988

namespace A079651

/-- `∩[A028373(n+1), A386029(n+1)]` -/
def P10875483216155974988.Spec : Prop :=
  ∀ n, (P10875483216155974988.a n : ℤ) = A079651 (n + 1)

end A079651

/-! ## A079651.P4122737859183377024

`∩[A028373(n+1), A386093(n+1)]`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A079651

/-- `∩[A028373(n+1), A386093(n+1)]` -/
def P4122737859183377024.Spec : Prop :=
  ∀ n, (P4122737859183377024.a n : ℤ) = A079651 (n + 1)

theorem P4122737859183377024.correct : P4122737859183377024.Spec := by
  intro n
  simp only [A079651, Nat.add_sub_cancel]

end A079651

/-! ## A079651.P1279403360578631275

`∩[A028373(n+1), A386107(n+1)]`
-/

namespace A079651.P1279403360578631275
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028373 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386107 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A079651.P1279403360578631275

namespace A079651

/-- `∩[A028373(n+1), A386107(n+1)]` -/
def P1279403360578631275.Spec : Prop :=
  ∀ n, (P1279403360578631275.a n : ℤ) = A079651 (n + 1)

end A079651

/-! ## A079651.P8655291087245976982

`∩[A028373(n+1), A386120(n+1)]`
-/

namespace A079651.P8655291087245976982
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028373 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386120 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A079651.P8655291087245976982

namespace A079651

/-- `∩[A028373(n+1), A386120(n+1)]` -/
def P8655291087245976982.Spec : Prop :=
  ∀ n, (P8655291087245976982.a n : ℤ) = A079651 (n + 1)

end A079651

/-! ## A079651.P6012373734751812938

`∩[A028373(n+1), A386123(n+1)]`
-/

namespace A079651.P6012373734751812938
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028373 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386123 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A079651.P6012373734751812938

namespace A079651

/-- `∩[A028373(n+1), A386123(n+1)]` -/
def P6012373734751812938.Spec : Prop :=
  ∀ n, (P6012373734751812938.a n : ℤ) = A079651 (n + 1)

end A079651

/-! ## A079651.P11317427607596172620

`∩[A028373(n+1), A386126(n+1)]`
-/

namespace A079651.P11317427607596172620
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028373 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386126 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A079651.P11317427607596172620

namespace A079651

/-- `∩[A028373(n+1), A386126(n+1)]` -/
def P11317427607596172620.Spec : Prop :=
  ∀ n, (P11317427607596172620.a n : ℤ) = A079651 (n + 1)

end A079651

/-! ## A079651.P12995165445008046630

`∩[A028373(n+1), A386127(n+1)]`
-/

namespace A079651.P12995165445008046630
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028373 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386127 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A079651.P12995165445008046630

namespace A079651

/-- `∩[A028373(n+1), A386127(n+1)]` -/
def P12995165445008046630.Spec : Prop :=
  ∀ n, (P12995165445008046630.a n : ℤ) = A079651 (n + 1)

end A079651

/-! ## A079651.P6813334647149845321

`∩[A386029(n+1), A386093(n+1)]`
-/

namespace A079651.P6813334647149845321
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386029 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386093 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A079651.P6813334647149845321

namespace A079651

/-- `∩[A386029(n+1), A386093(n+1)]` -/
def P6813334647149845321.Spec : Prop :=
  ∀ n, (P6813334647149845321.a n : ℤ) = A079651 (n + 1)

end A079651

/-! ## A079651.P17879899755957565119

`∩[A386029(n+1), A386107(n+1)]`
-/

namespace A079651.P17879899755957565119
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386029 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386107 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A079651.P17879899755957565119

namespace A079651

/-- `∩[A386029(n+1), A386107(n+1)]` -/
def P17879899755957565119.Spec : Prop :=
  ∀ n, (P17879899755957565119.a n : ℤ) = A079651 (n + 1)

end A079651

/-! ## A079651.P15170763671090999275

`∩[A386029(n+1), A386120(n+1)]`
-/

namespace A079651.P15170763671090999275
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386029 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386120 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A079651.P15170763671090999275

namespace A079651

/-- `∩[A386029(n+1), A386120(n+1)]` -/
def P15170763671090999275.Spec : Prop :=
  ∀ n, (P15170763671090999275.a n : ℤ) = A079651 (n + 1)

end A079651

/-! ## A079651.P12390072158992012222

`∩[A386029(n+1), A386123(n+1)]`
-/

namespace A079651.P12390072158992012222
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386029 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386123 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A079651.P12390072158992012222

namespace A079651

/-- `∩[A386029(n+1), A386123(n+1)]` -/
def P12390072158992012222.Spec : Prop :=
  ∀ n, (P12390072158992012222.a n : ℤ) = A079651 (n + 1)

end A079651

/-! ## A079651.P17393858897636622460

`∩[A386029(n+1), A386126(n+1)]`
-/

namespace A079651.P17393858897636622460
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386029 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386126 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A079651.P17393858897636622460

namespace A079651

/-- `∩[A386029(n+1), A386126(n+1)]` -/
def P17393858897636622460.Spec : Prop :=
  ∀ n, (P17393858897636622460.a n : ℤ) = A079651 (n + 1)

end A079651

/-! ## A079651.P15430682313052621803

`∩[A386029(n+1), A386127(n+1)]`
-/

namespace A079651.P15430682313052621803
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386029 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386127 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A079651.P15430682313052621803

namespace A079651

/-- `∩[A386029(n+1), A386127(n+1)]` -/
def P15430682313052621803.Spec : Prop :=
  ∀ n, (P15430682313052621803.a n : ℤ) = A079651 (n + 1)

end A079651

/-! ## A079651.P2382379613711747211

`∩[A386093(n+1), A386107(n+1)]`
-/

namespace A079651.P2382379613711747211
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386093 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386107 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A079651.P2382379613711747211

namespace A079651

/-- `∩[A386093(n+1), A386107(n+1)]` -/
def P2382379613711747211.Spec : Prop :=
  ∀ n, (P2382379613711747211.a n : ℤ) = A079651 (n + 1)

end A079651

/-! ## A079651.P14761004258529278121

`∩[A386093(n+1), A386120(n+1)]`
-/

namespace A079651.P14761004258529278121
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386093 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386120 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A079651.P14761004258529278121

namespace A079651

/-- `∩[A386093(n+1), A386120(n+1)]` -/
def P14761004258529278121.Spec : Prop :=
  ∀ n, (P14761004258529278121.a n : ℤ) = A079651 (n + 1)

end A079651

/-! ## A079651.P6839371663745257420

`∩[A386093(n+1), A386123(n+1)]`
-/

namespace A079651.P6839371663745257420
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386093 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386123 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A079651.P6839371663745257420

namespace A079651

/-- `∩[A386093(n+1), A386123(n+1)]` -/
def P6839371663745257420.Spec : Prop :=
  ∀ n, (P6839371663745257420.a n : ℤ) = A079651 (n + 1)

end A079651

/-! ## A079651.P7164251663632026588

`∩[A386093(n+1), A386126(n+1)]`
-/

namespace A079651.P7164251663632026588
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386093 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386126 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A079651.P7164251663632026588

namespace A079651

/-- `∩[A386093(n+1), A386126(n+1)]` -/
def P7164251663632026588.Spec : Prop :=
  ∀ n, (P7164251663632026588.a n : ℤ) = A079651 (n + 1)

end A079651

/-! ## A079651.P13236309202098145341

`∩[A386093(n+1), A386127(n+1)]`
-/

namespace A079651.P13236309202098145341
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386093 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386127 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A079651.P13236309202098145341

namespace A079651

/-- `∩[A386093(n+1), A386127(n+1)]` -/
def P13236309202098145341.Spec : Prop :=
  ∀ n, (P13236309202098145341.a n : ℤ) = A079651 (n + 1)

end A079651

/-! ## A079651.P17116476427919077157

`∩[A386107(n+1), A386120(n+1)]`
-/

namespace A079651.P17116476427919077157
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386107 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386120 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A079651.P17116476427919077157

namespace A079651

/-- `∩[A386107(n+1), A386120(n+1)]` -/
def P17116476427919077157.Spec : Prop :=
  ∀ n, (P17116476427919077157.a n : ℤ) = A079651 (n + 1)

end A079651

/-! ## A079651.P10450844999725745492

`∩[A386120(n+1), A386123(n+1)]`
-/

namespace A079651.P10450844999725745492
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386120 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386123 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A079651.P10450844999725745492

namespace A079651

/-- `∩[A386120(n+1), A386123(n+1)]` -/
def P10450844999725745492.Spec : Prop :=
  ∀ n, (P10450844999725745492.a n : ℤ) = A079651 (n + 1)

end A079651

/-!
# A079652: Prime numbers using only the curved digits 0, 3, 6, 8 and 9.

The programs for A079652, the canonical program `A079652.P17596218607054029471` is in `Seq.B013.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A079652 has offset 1).

The definition of A079652 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 721 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A079652.P17596218607054029471

`p?[A072960(n+1)]`

The canonical program, it is in `Seq.B013.C000`.
-/

namespace A079652

/-- `p?[A072960(n+1)]` -/
def P17596218607054029471.Spec : Prop :=
  ∀ n, P17596218607054029471.a n = A079652 (n + 1)

theorem P17596218607054029471.correct : P17596218607054029471.Spec := by
  intro n
  simp only [A079652, Nat.add_sub_cancel]

end A079652

/-! ## A079652.P14969773184709926904

`or(1, p?[A072960(-xor(n, -1))])`
-/

namespace A079652.P14969773184709926904
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072960 (-Int.xor (n : ℤ) (-1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A079652.P14969773184709926904

namespace A079652

/-- `or(1, p?[A072960(-xor(n, -1))])` -/
def P14969773184709926904.Spec : Prop :=
  ∀ n, P14969773184709926904.a n = A079652 (n + 1)

end A079652

/-! ## A079652.P17926211281609296676

`∩[A034470(n+1), A072960(n+1)]`
-/

namespace A079652.P17926211281609296676
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034470 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072960 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A079652.P17926211281609296676

namespace A079652

/-- `∩[A034470(n+1), A072960(n+1)]` -/
def P17926211281609296676.Spec : Prop :=
  ∀ n, (P17926211281609296676.a n : ℤ) = A079652 (n + 1)

end A079652

/-! ## A079652.P5855816072426199978

`p?[A072960(-xor(n, -1))-A000007(n)]`
-/

namespace A079652.P5855816072426199978
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072960 (-Int.xor (n : ℤ) (-1)).toNat - A000007 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A079652.P5855816072426199978

namespace A079652

/-- `p?[A072960(-xor(n, -1))-A000007(n)]` -/
def P5855816072426199978.Spec : Prop :=
  ∀ n, P5855816072426199978.a n = A079652 (n + 1)

end A079652

/-! ## A079652.P16429567899056067213

`p?[A072960(-xor(n, -1))-A000038(n)]`
-/

namespace A079652.P16429567899056067213
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072960 (-Int.xor (n : ℤ) (-1)).toNat - A000038 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A079652.P16429567899056067213

namespace A079652

/-- `p?[A072960(-xor(n, -1))-A000038(n)]` -/
def P16429567899056067213.Spec : Prop :=
  ∀ n, P16429567899056067213.a n = A079652 (n + 1)

end A079652

/-! ## A079652.P1547405535715916419

`p?[A072960(-xor(n, -1))%A158537(n)]`
-/

namespace A079652.P1547405535715916419
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A072960 (-Int.xor (n : ℤ) (-1)).toNat) (A158537 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A079652.P1547405535715916419

namespace A079652

/-- `p?[A072960(-xor(n, -1))%A158537(n)]` -/
def P1547405535715916419.Spec : Prop :=
  ∀ n, P1547405535715916419.a n = A079652 (n + 1)

end A079652

/-! ## A079652.P18435210361461706954

`p?[A072960(-xor(n, -1))]%A002148(n)²`
-/

namespace A079652.P18435210361461706954
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072960 (-Int.xor (n : ℤ) (-1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)) (A002148 n ^ 2)

end

end A079652.P18435210361461706954

namespace A079652

/-- `p?[A072960(-xor(n, -1))]%A002148(n)²` -/
def P18435210361461706954.Spec : Prop :=
  ∀ n, P18435210361461706954.a n = A079652 (n + 1)

end A079652

/-! ## A079652.P17933405443465398137

`∩[A072960(n+1), A386333(n+1)]`
-/

namespace A079652.P17933405443465398137
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072960 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386333 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A079652.P17933405443465398137

namespace A079652

/-- `∩[A072960(n+1), A386333(n+1)]` -/
def P17933405443465398137.Spec : Prop :=
  ∀ n, (P17933405443465398137.a n : ℤ) = A079652 (n + 1)

end A079652

/-! ## A079652.P13061985298506046405

`∩[A072960(n+1), A386328(n+1)]`
-/

namespace A079652.P13061985298506046405
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072960 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386328 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A079652.P13061985298506046405

namespace A079652

/-- `∩[A072960(n+1), A386328(n+1)]` -/
def P13061985298506046405.Spec : Prop :=
  ∀ n, (P13061985298506046405.a n : ℤ) = A079652 (n + 1)

end A079652

/-! ## A079652.P14242878114354702880

`∩[A072960(n+1), A329760(n+1)]`
-/

namespace A079652.P14242878114354702880
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072960 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329760 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A079652.P14242878114354702880

namespace A079652

/-- `∩[A072960(n+1), A329760(n+1)]` -/
def P14242878114354702880.Spec : Prop :=
  ∀ n, (P14242878114354702880.a n : ℤ) = A079652 (n + 1)

end A079652

/-! ## A079652.P5126358986301949513

`∩[A072960(n+1), A386330(n+1)]`
-/

namespace A079652.P5126358986301949513
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072960 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386330 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A079652.P5126358986301949513

namespace A079652

/-- `∩[A072960(n+1), A386330(n+1)]` -/
def P5126358986301949513.Spec : Prop :=
  ∀ n, (P5126358986301949513.a n : ℤ) = A079652 (n + 1)

end A079652

/-! ## A079652.P6666544287121823907

`∩[A072960(n+1), A386331(n+1)]`
-/

namespace A079652.P6666544287121823907
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072960 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386331 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A079652.P6666544287121823907

namespace A079652

/-- `∩[A072960(n+1), A386331(n+1)]` -/
def P6666544287121823907.Spec : Prop :=
  ∀ n, (P6666544287121823907.a n : ℤ) = A079652 (n + 1)

end A079652

/-! ## A079652.P478154027854274528

`∩[A034470(n+1), A361822(n+1)]`
-/

namespace A079652.P478154027854274528
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034470 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361822 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A079652.P478154027854274528

namespace A079652

/-- `∩[A034470(n+1), A361822(n+1)]` -/
def P478154027854274528.Spec : Prop :=
  ∀ n, (P478154027854274528.a n : ℤ) = A079652 (n + 1)

end A079652

/-! ## A079652.P8831281574626655216

`∩[A072960(n+1), A361822(n+1)]`
-/

namespace A079652.P8831281574626655216
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072960 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361822 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A079652.P8831281574626655216

namespace A079652

/-- `∩[A072960(n+1), A361822(n+1)]` -/
def P8831281574626655216.Spec : Prop :=
  ∀ n, (P8831281574626655216.a n : ℤ) = A079652 (n + 1)

end A079652

/-! ## A079652.P10250860422362980152

`∩[A072960(n+1), A386336(n+1)]`
-/

namespace A079652.P10250860422362980152
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072960 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386336 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A079652.P10250860422362980152

namespace A079652

/-- `∩[A072960(n+1), A386336(n+1)]` -/
def P10250860422362980152.Spec : Prop :=
  ∀ n, (P10250860422362980152.a n : ℤ) = A079652 (n + 1)

end A079652

/-! ## A079652.P18044497347575776552

`∩[A072960(n+1), A386347(n+1)]`
-/

namespace A079652.P18044497347575776552
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072960 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386347 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A079652.P18044497347575776552

namespace A079652

/-- `∩[A072960(n+1), A386347(n+1)]` -/
def P18044497347575776552.Spec : Prop :=
  ∀ n, (P18044497347575776552.a n : ℤ) = A079652 (n + 1)

end A079652

/-! ## A079652.P9692094854585768247

`∩[A072960(n+1), A386351(n+1)]`
-/

namespace A079652.P9692094854585768247
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072960 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386351 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A079652.P9692094854585768247

namespace A079652

/-- `∩[A072960(n+1), A386351(n+1)]` -/
def P9692094854585768247.Spec : Prop :=
  ∀ n, (P9692094854585768247.a n : ℤ) = A079652 (n + 1)

end A079652

/-! ## A079652.P9492525854318682722

`∩[A038603(n+1), A072960(n+1)]`
-/

namespace A079652.P9492525854318682722
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038603 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072960 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A079652.P9492525854318682722

namespace A079652

/-- `∩[A038603(n+1), A072960(n+1)]` -/
def P9492525854318682722.Spec : Prop :=
  ∀ n, (P9492525854318682722.a n : ℤ) = A079652 (n + 1)

end A079652

/-! ## A079652.P15762019129858382801

`record[A020639(A072960(n+2))]`
-/

namespace A079652.P15762019129858382801
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A072960 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A079652.P15762019129858382801

namespace A079652

/-- `record[A020639(A072960(n+2))]` -/
def P15762019129858382801.Spec : Prop :=
  ∀ n, P15762019129858382801.a n = A079652 (n + 1)

end A079652

/-! ## A079652.P16592283731873397575

`A000265(p?[A072960(-xor(n, -1))])`
-/

namespace A079652.P16592283731873397575
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072960 (-Int.xor (n : ℤ) (-1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A079652.P16592283731873397575

namespace A079652

/-- `A000265(p?[A072960(-xor(n, -1))])` -/
def P16592283731873397575.Spec : Prop :=
  ∀ n, P16592283731873397575.a n = A079652 (n + 1)

end A079652

/-!
# A079653: Triangular numbers using only the curved digits 0, 3, 6, 8 and 9.

The programs for A079653, there is no canonical definition to state claims against.
-/

/-! ## A079653.P7813710140878071900

`∩[A072960(n+1), A000217(n)]`
-/

namespace A079653.P7813710140878071900
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072960 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A079653.P7813710140878071900

/-! ## A079653.P11562245741944436598

`∩[A072960(n+1), A253145(n)]`
-/

namespace A079653.P11562245741944436598
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072960 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253145 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A079653.P11562245741944436598

/-! ## A079653.P16854106710969122370

`∩[A072960(n+1), A117748(n+1)]`
-/

namespace A079653.P16854106710969122370
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072960 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117748 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A079653.P16854106710969122370

/-! ## A079653.P1890701814057201497

`∩[A072960(n+1), A193246(n+1)]`
-/

namespace A079653.P1890701814057201497
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072960 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193246 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A079653.P1890701814057201497

/-! ## A079653.P981849439683132359

`∩[A072960(n+1), A247016(n+1)]`
-/

namespace A079653.P981849439683132359
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072960 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247016 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A079653.P981849439683132359

/-!
# A079654: Triangular numbers using only the straight digits 1, 4 and 7.

The programs for A079654, there is no canonical definition to state claims against.
-/

/-! ## A079654.P12770023942292375123

`A000217(A119127(n+1))`
-/

namespace A079654.P12770023942292375123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (A119127 (n + 1)).toNat

end

end A079654.P12770023942292375123

/-!
# A079655: Perfect squares using only the curved digits 0, 3, 6, 8 and 9.

The programs for A079655, there is no canonical definition to state claims against.
-/

/-! ## A079655.P15839331633318430948

`∩[A072960(n+1), n²]`
-/

namespace A079655.P15839331633318430948
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072960 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = x) n

end

end A079655.P15839331633318430948

/-! ## A079655.P3959823908537402910

`∩[A000290(n), A072960(n+1)]`
-/

namespace A079655.P3959823908537402910
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000290 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072960 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A079655.P3959823908537402910

/-! ## A079655.P4204707324325781914

`∩[n², A222220(A054047(n))]`
-/

namespace A079655.P4204707324325781914
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222220 (A054047 n).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A079655.P4204707324325781914

/-! ## A079655.P10153803647575491531

`∩[A222234(A001744(n+1)), n²]`
-/

namespace A079655.P10153803647575491531
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222234 (A001744 (n + 1)).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = x) n

end

end A079655.P10153803647575491531

/-!
# A079662: a(n) = the number of occurrences of 1 in all compositions of n without 2's = # of occurrences of the integer k in compositions of n+k-1 without 2's (k > 2).

The programs for A079662, the canonical program `A079662.P8062691922964598358` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A079662 has offset 1).

The definition of A079662 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 402 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A079662.P8062691922964598358

`A118430(n)+A005314(n+1)`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A079662

/-- `A118430(n)+A005314(n+1)` -/
def P8062691922964598358.Spec : Prop :=
  ∀ n, P8062691922964598358.a n = A079662 (n + 1)

theorem P8062691922964598358.correct : P8062691922964598358.Spec := by
  intro n
  simp only [A079662, Nat.add_sub_cancel]

end A079662

/-! ## A079662.P1977596648849421849

`Δ[A136444(n+2)]`
-/

namespace A079662.P1977596648849421849
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136444 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A079662.P1977596648849421849

namespace A079662

/-- `Δ[A136444(n+2)]` -/
def P1977596648849421849.Spec : Prop :=
  ∀ n, P1977596648849421849.a n = A079662 (n + 1)

end A079662

/-! ## A079662.P1955873448316952694

`A391962(n)-A118430(n)`
-/

namespace A079662.P1955873448316952694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391962 n - A118430 n

end

end A079662.P1955873448316952694

namespace A079662

/-- `A391962(n)-A118430(n)` -/
def P1955873448316952694.Spec : Prop :=
  ∀ n, P1955873448316952694.a n = A079662 (n + 1)

end A079662

/-! ## A079662.P14676483895784680140

`Δ[A228577(2*(n+1))/2]`
-/

namespace A079662.P14676483895784680140
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A228577 (2 * (n + 1)) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A079662.P14676483895784680140

namespace A079662

/-- `Δ[A228577(2*(n+1))/2]` -/
def P14676483895784680140.Spec : Prop :=
  ∀ n, P14676483895784680140.a n = (A079662 (n + 1) : ℚ)

end A079662

/-! ## A079662.P17862531332578384684

`Δ[A228577(Δ[n²]+1)]/2`
-/

namespace A079662.P17862531332578384684
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228577 ((f2 (n + 1) : ℤ) - (f2 n : ℤ) + 1).toNat

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n : ℚ) / 2

end

end A079662.P17862531332578384684

namespace A079662

/-- `Δ[A228577(Δ[n²]+1)]/2` -/
def P17862531332578384684.Spec : Prop :=
  ∀ n, P17862531332578384684.a n = (A079662 (n + 1) : ℚ)

end A079662

/-! ## A079662.P17078921749042696529

`Δ[Δ[A118430(n+1)]]`
-/

namespace A079662.P17078921749042696529
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118430 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A079662.P17078921749042696529

namespace A079662

/-- `Δ[Δ[A118430(n+1)]]` -/
def P17078921749042696529.Spec : Prop :=
  ∀ n, P17078921749042696529.a n = A079662 (n + 1)

end A079662

/-! ## A079662.P10966169305166170258

`Δ[record[A136444(A002262(n))]]`
-/

namespace A079662.P10966169305166170258
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136444 (A002262 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A079662.P10966169305166170258

namespace A079662

/-- `Δ[record[A136444(A002262(n))]]` -/
def P10966169305166170258.Spec : Prop :=
  ∀ n, P10966169305166170258.a n = A079662 (n + 1)

end A079662

/-!
# A079663: Sequence of the radicands that give the best radical approach to e.

The programs for A079663, there is no canonical definition to state claims against.
-/

/-! ## A079663.P3613818712451433161

`∪[A106172(n+1), A194030(A334405(n+1))]`
-/

namespace A079663.P3613818712451433161
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106172 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194030 (A334405 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A079663.P3613818712451433161

/-!
# A079664: a(n) = Sum_{i=1..n} LookAndSay(i).

The programs for A079664, there is no canonical definition to state claims against.
-/

/-! ## A079664.P17384181917946410484

`∑[A045918(n+1)]`
-/

namespace A079664.P17384181917946410484
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045918 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A079664.P17384181917946410484

/-! ## A079664.P4108266905426437417

`∑[ratio[A045918(n)]*A045918(n)]`
-/

namespace A079664.P4108266905426437417
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045918 n

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℚ) / (f2 n : ℚ) * (A045918 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A079664.P4108266905426437417

/-! ## A079664.P1251626664804351137

`∑[A097601(n+1)+A047842(n+1)]`
-/

namespace A079664.P1251626664804351137
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097601 (n + 1) + A047842 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A079664.P1251626664804351137

/-! ## A079664.P7985075776099363731

`A000027(∑[A045918(-xor(n, -1))])`
-/

namespace A079664.P7985075776099363731
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045918 (-Int.xor (n : ℤ) (-1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A079664.P7985075776099363731

/-! ## A079664.P5703593332691193134

`∑[A334027(2^(n+1))]`
-/

namespace A079664.P5703593332691193134
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334027 (2 ^ (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A079664.P5703593332691193134

/-!
# A079665: Triangular array read by rows: row s contains integers of the form (2^s+1)/(2^r+1) in order of increasing r <= s-1.

The programs for A079665, there is no canonical definition to state claims against.
-/

/-! ## A079665.P14440143937683634034

`A061392(A079672(n+1))`
-/

namespace A079665.P14440143937683634034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061392 (A079672 (n + 1)).toNat

end

end A079665.P14440143937683634034

/-! ## A079665.P10623584872097030637

`A289831(A079672(n+1)+1)`
-/

namespace A079665.P10623584872097030637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289831 (A079672 (n + 1) + 1).toNat

end

end A079665.P10623584872097030637

/-! ## A079665.P16212296195331937822

`A106609(eq[A106609(n), A132226(n+1)])`
-/

namespace A079665.P16212296195331937822
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106609 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132226 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106609 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A079665.P16212296195331937822

/-!
# A079667: a(n) = (1/2) * Sum_{d divides n} abs(n/d-d).

The programs for A079667, there is no canonical definition to state claims against.
-/

/-! ## A079667.P7972756764041129117

`A070038(n+1)-A066839(n+1)`
-/

namespace A079667.P7972756764041129117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070038 (n + 1) - A066839 (n + 1)

end

end A079667.P7972756764041129117

/-! ## A079667.P8593869847367308510

`A000203(n+1)-A117004(n+1)`
-/

namespace A079667.P8593869847367308510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1) - A117004 (n + 1)

end

end A079667.P8593869847367308510

/-! ## A079667.P1885457200601076886

`A117003(n+1)-A000203(n+1)`
-/

namespace A079667.P1885457200601076886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117003 (n + 1) - A000203 (n + 1)

end

end A079667.P1885457200601076886

/-! ## A079667.P9153283482719235439

`A238535(n+1)-A070039(n+1)`
-/

namespace A079667.P9153283482719235439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238535 (n + 1) - A070039 (n + 1)

end

end A079667.P9153283482719235439

/-! ## A079667.P14511190976572101937

`A357259(n+1)-A038548(n+1)`
-/

namespace A079667.P14511190976572101937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357259 (n + 1) - A038548 (n + 1)

end

end A079667.P14511190976572101937

/-! ## A079667.P10170083056930267590

`abs(A143348(n+1))-A117004(n+1)`
-/

namespace A079667.P10170083056930267590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A143348 (n + 1)| - A117004 (n + 1)

end

end A079667.P10170083056930267590

/-! ## A079667.P4400188379599816801

`sqrt(A072861(n+1))-A117004(n+1)`
-/

namespace A079667.P4400188379599816801
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A072861 (n + 1) : ℝ) - (A117004 (n + 1) : ℝ)

end

end A079667.P4400188379599816801

/-! ## A079667.P16514206071511715775

`A088580(n+1)-(A117004(n+1)+1)`
-/

namespace A079667.P16514206071511715775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088580 (n + 1) - (A117004 (n + 1) + 1)

end

end A079667.P16514206071511715775

/-! ## A079667.P3454788701565365692

`A060866(n+1)-2*A066839(n+1)`
-/

namespace A079667.P3454788701565365692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060866 (n + 1) - 2 * A066839 (n + 1)

end

end A079667.P3454788701565365692

/-! ## A079667.P10374253581415516933

`2*A070038(n+1)-A060866(n+1)`
-/

namespace A079667.P10374253581415516933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A070038 (n + 1) - A060866 (n + 1)

end

end A079667.P10374253581415516933

/-! ## A079667.P1291491897188209354

`A337177(n+1)-2*A070039(n+1)`
-/

namespace A079667.P1291491897188209354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337177 (n + 1) - 2 * A070039 (n + 1)

end

end A079667.P1291491897188209354

/-! ## A079667.P7812733046256668475

`2*A238535(n+1)-A337177(n+1)`
-/

namespace A079667.P7812733046256668475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A238535 (n + 1) - A337177 (n + 1)

end

end A079667.P7812733046256668475

/-! ## A079667.P7901075852660236011

`A074400(n+1)/2-A117004(n+1)`
-/

namespace A079667.P7901075852660236011
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A074400 (n + 1) : ℚ) / 2 - (A117004 (n + 1) : ℚ)

end

end A079667.P7901075852660236011

/-! ## A079667.P13074190990885322525

`A117003(n+1)-A074400(n+1)/2`
-/

namespace A079667.P13074190990885322525
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A117003 (n + 1) : ℚ) - (A074400 (n + 1) : ℚ) / 2

end

end A079667.P13074190990885322525

/-! ## A079667.P3677864672616786925

`(A117002(n+1)-A117003(n+1))/2`
-/

namespace A079667.P3677864672616786925
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A117002 (n + 1) - A117003 (n + 1) : ℚ) / 2

end

end A079667.P3677864672616786925

/-! ## A079667.P14507635790612449463

`(A117003(n+1)-A117004(n+1))/2`
-/

namespace A079667.P14507635790612449463
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A117003 (n + 1) - A117004 (n + 1) : ℚ) / 2

end

end A079667.P14507635790612449463

/-! ## A079667.P1325403298973669891

`A001065(n+1)+n+1-A117004(n+1)`
-/

namespace A079667.P1325403298973669891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001065 (n + 1) + (n + 1 : ℤ) - A117004 (n + 1)

end

end A079667.P1325403298973669891

/-! ## A079667.P17647816391315519844

`A155085(n+1)-(n+1)-A117004(n+1)`
-/

namespace A079667.P17647816391315519844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155085 (n + 1) - (n + 1 : ℤ) - A117004 (n + 1)

end

end A079667.P17647816391315519844

/-! ## A079667.P18059567739154057431

`A064987(n+1)/(n+1)-A117004(n+1)`
-/

namespace A079667.P18059567739154057431
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A064987 (n + 1) : ℚ) / (n + 1 : ℚ) - (A117004 (n + 1) : ℚ)

end

end A079667.P18059567739154057431

/-! ## A079667.P14506970236797477013

`A237588(n+1)+(n+1)²-n²-A117004(n+1)`
-/

namespace A079667.P14506970236797477013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237588 (n + 1) + ((n + 1) ^ 2 : ℤ) - (n ^ 2 : ℤ) - A117004 (n + 1)

end

end A079667.P14506970236797477013

/-!
# A079668: Start with 1; at n-th step, write down what is in the sequence so far.

The programs for A079668, there is no canonical definition to state claims against.
-/

/-! ## A079668.P12760400474666195516

`A058127(A133675(n+1))%6`
-/

namespace A079668.P12760400474666195516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A058127 (A133675 (n + 1)).toNat) 6

end

end A079668.P12760400474666195516

/-! ## A079668.P1287189704194612685

`sqrt(and(A121460(3*(n+1)), A121513(3*(n+1))))`
-/

namespace A079668.P1287189704194612685
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (Int.land (A121460 (3 * (n + 1))) (A121513 (3 * (n + 1))) : ℝ)

end

end A079668.P1287189704194612685

/-! ## A079668.P18169072167749937495

`A324831(A080995(n)+A000294(n))`
-/

namespace A079668.P18169072167749937495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324831 (A080995 n + A000294 n).toNat

end

end A079668.P18169072167749937495

/-! ## A079668.P15951995567341113700

`gcd(A029236(n), A138745(A001094(n)))`
-/

namespace A079668.P15951995567341113700
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A029236 n) (A138745 (A001094 n).toNat)

end

end A079668.P15951995567341113700

/-! ## A079668.P5695655861917207064

`A258712(A000051(n+2)%A002906(n))`
-/

namespace A079668.P5695655861917207064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258712 (Int.tmod (A000051 (n + 2)) (A002906 n)).toNat

end

end A079668.P5695655861917207064

/-!
# A079670: a(n) = (gcd(2^p-1, Fibonacci(p))-1)/(8p) > 0 where p = n-th prime from A080050.

The programs for A079670, there is no canonical definition to state claims against.
-/

/-! ## A079670.P18396436974574166499

`(A080051(n+1)-1)/(8*A080050(n+1))`
-/

namespace A079670.P18396436974574166499
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A080051 (n + 1) - 1 : ℚ) / (8 * A080050 (n + 1) : ℚ)

end

end A079670.P18396436974574166499

/-!
# A079671: Number of irreducible polynomials (over the rationals) of form a*x^2+b*x+c, 1 <= a,b,c <= n.

The programs for A079671, there is no canonical definition to state claims against.
-/

/-! ## A079671.P8965346595432588629

`A270867(n)-∑[A219977(A240285(n+1))]`
-/

namespace A079671.P8965346595432588629
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219977 (A240285 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270867 n - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A079671.P8965346595432588629

/-! ## A079671.P12845137721572934194

`A270867(n)-A025465(A334037(n+1))`
-/

namespace A079671.P12845137721572934194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270867 n - A025465 (A334037 (n + 1)).toNat

end

end A079671.P12845137721572934194

/-!
# A079672: Numbers of the form (3^s+1)/(3^r+1) for s > 1, 1 <= r <= s-1.

The programs for A079672, there is no canonical definition to state claims against.
-/

/-! ## A079672.P1533438078759461553

`A005823(A079665(n+1))+1`
-/

namespace A079672.P1533438078759461553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005823 (A079665 (n + 1)).toNat + 1

end

end A079672.P1533438078759461553

/-! ## A079672.P2841202239300022319

`A055247(A079665(n+1))`
-/

namespace A079672.P2841202239300022319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055247 (A079665 (n + 1)).toNat

end

end A079672.P2841202239300022319

/-!
# A079673: Consider pairs (r,s) such that the polynomial (x^r+1) divides (x^s+1) and 1 <= r < s. This sequence gives the r values; A079581 gives the s values.

The programs for A079673, there is no canonical definition to state claims against.
-/

/-! ## A079673.P15151785393195630213

`A247815(p?[A093515(A130799(n+3))])`
-/

namespace A079673.P15151785393195630213
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093515 (A130799 (n + 3)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247815 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A079673.P15151785393195630213

/-! ## A079673.P6537305440614752213

`val(A079665(n+1)-1, 2)`
-/

namespace A079673.P6537305440614752213
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A079665 (n + 1) - 1).toNat 2

end

end A079673.P6537305440614752213

/-! ## A079673.P2385449851310380093

`A049581(eq[A003989(n+1), A056951(n+1)])`
-/

namespace A079673.P2385449851310380093
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003989 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056951 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049581 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A079673.P2385449851310380093

/-! ## A079673.P6951264758443561301

`A003989(eq[A003989(n+1), A056951(n+1)]+1)`
-/

namespace A079673.P6951264758443561301
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003989 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056951 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003989 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1)

end

end A079673.P6951264758443561301

/-! ## A079673.P15064853696307304457

`A331886(eq[A254605(n+1), A331886(n)])`
-/

namespace A079673.P15064853696307304457
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254605 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331886 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331886 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A079673.P15064853696307304457

/-!
# A079675: a(1)=1; a(n)=sum(u=1,n-1,sum(v=1,u,sum(w=1,v,sum(x=1, w,sum(y=1,x,a(y)))))).

The programs for A079675, the canonical program `A079675.P18407692208722494872` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A079675 has offset 1).

The definition of A079675 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 165 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A079675.P18407692208722494872

`A369837(n)+a(n-1)` with `a(0)=1, a(1)=1`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A079675

/-- `A369837(n)+a(n-1)` -/
def P18407692208722494872.Spec : Prop :=
  ∀ n, P18407692208722494872.a n = A079675 (n + 1)

theorem P18407692208722494872.correct : P18407692208722494872.Spec := by
  intro n
  simp only [A079675, Nat.add_sub_cancel]

end A079675

/-! ## A079675.P17658433498499710934

`A003520(abs(1-n-4*n))`
-/

namespace A079675.P17658433498499710934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003520 |1 - (n : ℤ) - (4 * n : ℤ)|.toNat

end

end A079675.P17658433498499710934

namespace A079675

/-- `A003520(abs(1-n-4*n))` -/
def P17658433498499710934.Spec : Prop :=
  ∀ n, P17658433498499710934.a n = A079675 (n + 1)

end A079675

/-! ## A079675.P9780594229347131506

`Δ[A017899(A008706(n))]`
-/

namespace A079675.P9780594229347131506
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017899 (A008706 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A079675.P9780594229347131506

namespace A079675

/-- `Δ[A017899(A008706(n))]` -/
def P9780594229347131506.Spec : Prop :=
  ∀ n, P9780594229347131506.a n = A079675 (n + 1)

end A079675

/-! ## A079675.P3823249349575987697

`A017899(A008706(n)+4)`
-/

namespace A079675.P3823249349575987697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017899 (A008706 n + 4).toNat

end

end A079675.P3823249349575987697

namespace A079675

/-- `A017899(A008706(n)+4)` -/
def P3823249349575987697.Spec : Prop :=
  ∀ n, P3823249349575987697.a n = A079675 (n + 1)

end A079675

/-! ## A079675.P14725165356565560369

`Δ[A017899(A008574(n)+n)]`
-/

namespace A079675.P14725165356565560369
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017899 (A008574 n + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A079675.P14725165356565560369

namespace A079675

/-- `Δ[A017899(A008574(n)+n)]` -/
def P14725165356565560369.Spec : Prop :=
  ∀ n, P14725165356565560369.a n = A079675 (n + 1)

end A079675

/-! ## A079675.P13939315973679153214

`A017899(A028310(n)+4*(n+1))`
-/

namespace A079675.P13939315973679153214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017899 (A028310 n + (4 * (n + 1) : ℤ)).toNat

end

end A079675.P13939315973679153214

namespace A079675

/-- `A017899(A028310(n)+4*(n+1))` -/
def P13939315973679153214.Spec : Prop :=
  ∀ n, P13939315973679153214.a n = A079675 (n + 1)

end A079675

/-!
# A079676: LookAndSay(n) is palindromic.

The programs for A079676, there is no canonical definition to state claims against.
-/

/-! ## A079676.P4887152440255932095

`filter[A079466(n+1), A072418(#)]`
-/

namespace A079676.P4887152440255932095
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079466 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A072418 (f1 j).toNat = 1) n)

end

end A079676.P4887152440255932095

/-! ## A079676.P15946236357959058034

`∩[A079466(n+1), A194081(n)]`
-/

namespace A079676.P15946236357959058034
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079466 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194081 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A079676.P15946236357959058034

/-!
# A079677: Distance from F(n) to closest prime, where F(n) is the n-th Fibonacci number.

The programs for A079677, there is no canonical definition to state claims against.
-/

/-! ## A079677.P433543276083774119

`A163768(n)*A292438(A000045(n))`
-/

namespace A079677.P433543276083774119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163768 n * A292438 (A000045 n).toNat

end

end A079677.P433543276083774119

/-! ## A079677.P1004545765842149937

`A163768(n)*A292438(abs(A236191(n)))`
-/

namespace A079677.P1004545765842149937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163768 n * A292438 |A236191 n|.toNat

end

end A079677.P1004545765842149937

/-! ## A079677.P15688840893605835672

`A163768(n)*A292438(A212804(n+1))`
-/

namespace A079677.P15688840893605835672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163768 n * A292438 (A212804 (n + 1)).toNat

end

end A079677.P15688840893605835672

/-! ## A079677.P12729799562014178928

`A163768(n)*A292438(A324969(n+1))`
-/

namespace A079677.P12729799562014178928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163768 n * A292438 (A324969 (n + 1)).toNat

end

end A079677.P12729799562014178928

/-!
# A079678: a(n) = a(n,m) = Sum_{k=0..n} binomial(m*k,k)*binomial(m*(n-k),n-k) for m=5.

The programs for A079678, there is no canonical definition to state claims against.
-/

/-! ## A079678.P15843233580504167609

`A358050(Δ[A023551(n+1)])`
-/

namespace A079678.P15843233580504167609
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023551 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358050 (f1 (n + 1) - f1 n).toNat

end

end A079678.P15843233580504167609

/-! ## A079678.P4683170186365052872

`A358050(lt[4, A128229(n+5)])`
-/

namespace A079678.P4683170186365052872
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128229 (n + 5)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358050 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A079678.P4683170186365052872

/-!
# A079679: a(n) = a(n,m) = Sum_{k=0..n} binomial(m*k,k)*binomial(m*(n-k),n-k) for m=6.

The programs for A079679, there is no canonical definition to state claims against.
-/

/-! ## A079679.P1318723227951100888

`A358050(A052905(n+4)-2)`
-/

namespace A079679.P1318723227951100888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358050 (A052905 (n + 4) - 2).toNat

end

end A079679.P1318723227951100888

/-!
# A079680: Number of 1's in n!.

The programs for A079680, there is no canonical definition to state claims against.
-/

/-! ## A079680.P11903813942712575930

`A034886(n)-(A027869(n)+A079714(n)+A079684(n)+A079688(n)+A079690(n)+A079691(n)+A079692(n)+A079693(n)+A079694(n))`
-/

namespace A079680.P11903813942712575930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034886 n - (A027869 n + A079714 n + A079684 n + A079688 n + A079690 n + A079691 n + A079692 n + A079693 n + A079694 n)

end

end A079680.P11903813942712575930

/-! ## A079680.P11186936903105555997

`∑{digits}[A181952(n), A036987(#²)]`
-/

namespace A079680.P11186936903105555997
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181952 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A036987 (x ^ 2)).sum

end

end A079680.P11186936903105555997

/-! ## A079680.P1070409421564554862

`∑{digits}[A004154(n), A268643(#)]`
-/

namespace A079680.P1070409421564554862
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004154 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A268643 x).sum

end

end A079680.P1070409421564554862

/-! ## A079680.P5816195663066404275

`∑{digits}[n!, C(#, #^#)]`
-/

namespace A079680.P5816195663066404275
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => Nat.choose x (x ^ x)).sum

end

end A079680.P5816195663066404275

/-! ## A079680.P3110554517948127116

`∑{digits}[n!, and(#, #!²)]`
-/

namespace A079680.P3110554517948127116
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => Nat.land x (Nat.factorial x ^ 2)).sum

end

end A079680.P3110554517948127116

/-! ## A079680.P14956673167046981544

`∑{digits}[n!, val(n+2, n+1+#)]`
-/

namespace A079680.P14956673167046981544
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => SequenceMachineLib.valuation (n + 2) (n + 1 + x)).sum

end

end A079680.P14956673167046981544

/-! ## A079680.P1512329685887748266

`∑{digits}[A000142(n), A178333(#)]`
-/

namespace A079680.P1512329685887748266
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A178333 x).sum

end

end A079680.P1512329685887748266

/-! ## A079680.P3784574119207776507

`∑{digits}[A000142(n), A025926(A008611(#))]`
-/

namespace A079680.P3784574119207776507
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A025926 (A008611 x).toNat).sum

end

end A079680.P3784574119207776507

/-!
# A079684: Number of 3's in n!.

The programs for A079684, there is no canonical definition to state claims against.
-/

/-! ## A079684.P13529095910802333272

`A034886(n)-(A027869(n)+A079680(n)+A079714(n)+A079688(n)+A079690(n)+A079691(n)+A079692(n)+A079693(n)+A079694(n))`
-/

namespace A079684.P13529095910802333272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034886 n - (A027869 n + A079680 n + A079714 n + A079688 n + A079690 n + A079691 n + A079692 n + A079693 n + A079694 n)

end

end A079684.P13529095910802333272

/-! ## A079684.P14557150352187484914

`∑{digits}[A000142(n), A316864(#)]`
-/

namespace A079684.P14557150352187484914
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A316864 x).sum

end

end A079684.P14557150352187484914

/-! ## A079684.P12847826200482100054

`∑{digits}[n!, and(1, A083946(A178125(#)))]`
-/

namespace A079684.P12847826200482100054
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => Int.land 1 (A083946 (A178125 x).toNat)).sum

end

end A079684.P12847826200482100054

/-!
# A079686: Start with 0; at n-th step, write down what is in the sequence so far.

The programs for A079686, there is no canonical definition to state claims against.
-/

/-! ## A079686.P10879251866255441070

`A001221(A013943(n+1)*A105608(n+1))`
-/

namespace A079686.P10879251866255441070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A013943 (n + 1) * A105608 (n + 1)).toNat

end

end A079686.P10879251866255441070

/-! ## A079686.P7507887336746126969

`A122841(A003959(n+1)*A181821(n+1))`
-/

namespace A079686.P7507887336746126969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122841 (A003959 (n + 1) * A181821 (n + 1)).toNat

end

end A079686.P7507887336746126969

/-! ## A079686.P4902182480938150670

`A003989(A227308(n+1))*A309936(n+1)`
-/

namespace A079686.P4902182480938150670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003989 (A227308 (n + 1)).toNat * A309936 (n + 1)

end

end A079686.P4902182480938150670

/-! ## A079686.P7018366062769877380

`A152216(A099381(n+1))%A000005(n+1)`
-/

namespace A079686.P7018366062769877380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A152216 (A099381 (n + 1)).toNat) (A000005 (n + 1))

end

end A079686.P7018366062769877380

/-! ## A079686.P18105377451596507168

`A001221(C(A075384(n+1), A309936(n+1)))`
-/

namespace A079686.P18105377451596507168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (Nat.choose (A075384 (n + 1)).toNat (A309936 (n + 1)).toNat)

end

end A079686.P18105377451596507168

/-!
# A079688: Number of 4's in n!.

The programs for A079688, there is no canonical definition to state claims against.
-/

/-! ## A079688.P17470675381813655389

`A034886(n)-(A027869(n)+A079680(n)+A079714(n)+A079684(n)+A079690(n)+A079691(n)+A079692(n)+A079693(n)+A079694(n))`
-/

namespace A079688.P17470675381813655389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034886 n - (A027869 n + A079680 n + A079714 n + A079684 n + A079690 n + A079691 n + A079692 n + A079693 n + A079694 n)

end

end A079688.P17470675381813655389

/-! ## A079688.P5712785695937339082

`∑{digits}[A181952(n), A079692(#+2)]`
-/

namespace A079688.P5712785695937339082
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181952 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A079692 (x + 2)).sum

end

end A079688.P5712785695937339082

/-! ## A079688.P1043010526255906564

`∑{digits}[A004154(n), A079692(#+2)]`
-/

namespace A079688.P1043010526255906564
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004154 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A079692 (x + 2)).sum

end

end A079688.P1043010526255906564

/-! ## A079688.P852288285184402116

`∑{digits}[A004154(n), A316867(#+2)]`
-/

namespace A079688.P852288285184402116
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004154 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A316867 (x + 2)).sum

end

end A079688.P852288285184402116

/-! ## A079688.P3714974960575270348

`∑{digits}[n!, A004198(#)]`
-/

namespace A079688.P3714974960575270348
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => A004198 x).sum

end

end A079688.P3714974960575270348

/-! ## A079688.P18309950028361346528

`∑{digits}[n!, 3%A007318(#)]`
-/

namespace A079688.P18309950028361346528
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => Int.tmod 3 (A007318 x)).sum

end

end A079688.P18309950028361346528

/-! ## A079688.P14348756174063818622

`∑{digits}[A000142(n), A261084(#)]`
-/

namespace A079688.P14348756174063818622
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A261084 x).sum

end

end A079688.P14348756174063818622

/-! ## A079688.P4523332722872525484

`∑{digits}[A000142(n), A316865(#)]`
-/

namespace A079688.P4523332722872525484
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A316865 x).sum

end

end A079688.P4523332722872525484

/-! ## A079688.P10976476225129069829

`∑{digits}[A000142(n), A275947(#+1)]`
-/

namespace A079688.P10976476225129069829
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A275947 (x + 1)).sum

end

end A079688.P10976476225129069829

/-! ## A079688.P6338798979459053428

`∑{digits}[n!, and(1, A083946(A315518(#)))]`
-/

namespace A079688.P6338798979459053428
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => Int.land 1 (A083946 (A315518 x).toNat)).sum

end

end A079688.P6338798979459053428

/-!
# A079690: Number of 5's in n!.

The programs for A079690, there is no canonical definition to state claims against.
-/

/-! ## A079690.P15096281088900029028

`A034886(n)-(A027869(n)+A079680(n)+A079714(n)+A079684(n)+A079688(n)+A079691(n)+A079692(n)+A079693(n)+A079694(n))`
-/

namespace A079690.P15096281088900029028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034886 n - (A027869 n + A079680 n + A079714 n + A079684 n + A079688 n + A079691 n + A079692 n + A079693 n + A079694 n)

end

end A079690.P15096281088900029028

/-! ## A079690.P12627094002903933135

`val(A067067(n), 5)`
-/

namespace A079690.P12627094002903933135
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A067067 n).toNat 5

end

end A079690.P12627094002903933135

/-! ## A079690.P7107913768159924826

`val(∏{digits}[n!, gcd(#, #!²)], 5)`
-/

namespace A079690.P7107913768159924826
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => Nat.gcd x (Nat.factorial x ^ 2)).prod 5

end

end A079690.P7107913768159924826

/-! ## A079690.P9808913827665432469

`∑{digits}[n!, A065714(#)]`
-/

namespace A079690.P9808913827665432469
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => A065714 x).sum

end

end A079690.P9808913827665432469

/-! ## A079690.P14590582200145146607

`∑{digits}[A000142(n), A025441(#)]`
-/

namespace A079690.P14590582200145146607
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A025441 x).sum

end

end A079690.P14590582200145146607

/-! ## A079690.P15515004533828166170

`∑{digits}[A000142(n), A275947(#)]`
-/

namespace A079690.P15515004533828166170
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A275947 x).sum

end

end A079690.P15515004533828166170

/-!
# A079691: Number of 6's in n!.

The programs for A079691, there is no canonical definition to state claims against.
-/

/-! ## A079691.P12454209313273315001

`A034886(n)-(A027869(n)+A079680(n)+A079714(n)+A079684(n)+A079688(n)+A079690(n)+A079692(n)+A079693(n)+A079694(n))`
-/

namespace A079691.P12454209313273315001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034886 n - (A027869 n + A079680 n + A079714 n + A079684 n + A079688 n + A079690 n + A079692 n + A079693 n + A079694 n)

end

end A079691.P12454209313273315001

/-! ## A079691.P6787231815420480544

`∑{digits}[A181952(n), A079692(#)]`
-/

namespace A079691.P6787231815420480544
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181952 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A079692 x).sum

end

end A079691.P6787231815420480544

/-! ## A079691.P14963550888379393722

`∑{digits}[A181952(n), A036987(A202706(#))]`
-/

namespace A079691.P14963550888379393722
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181952 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A036987 (A202706 x).toNat).sum

end

end A079691.P14963550888379393722

/-! ## A079691.P3492745637444727746

`∑{digits}[A004154(n), A079692(#)]`
-/

namespace A079691.P3492745637444727746
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004154 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A079692 x).sum

end

end A079691.P3492745637444727746

/-! ## A079691.P2036078364598437379

`∑{digits}[A004154(n), A316867(#)]`
-/

namespace A079691.P2036078364598437379
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004154 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A316867 x).sum

end

end A079691.P2036078364598437379

/-!
# A079692: Number of 7's in n!.

The programs for A079692, there is no canonical definition to state claims against.
-/

/-! ## A079692.P7898747433148516049

`A034886(n)-(A027869(n)+A079680(n)+A079714(n)+A079684(n)+A079688(n)+A079690(n)+A079691(n)+A079693(n)+A079694(n))`
-/

namespace A079692.P7898747433148516049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034886 n - (A027869 n + A079680 n + A079714 n + A079684 n + A079688 n + A079690 n + A079691 n + A079693 n + A079694 n)

end

end A079692.P7898747433148516049

/-! ## A079692.P7147248646742053193

`val(A067067(n), 7)`
-/

namespace A079692.P7147248646742053193
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A067067 n).toNat 7

end

end A079692.P7147248646742053193

/-! ## A079692.P7002220371095625441

`∑{digits}[A181952(n), A047753(#+2)]`
-/

namespace A079692.P7002220371095625441
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181952 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A047753 (x + 2)).sum

end

end A079692.P7002220371095625441

/-! ## A079692.P6630460842299453664

`∑{digits}[A004154(n), A047753(#+2)]`
-/

namespace A079692.P6630460842299453664
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004154 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A047753 (x + 2)).sum

end

end A079692.P6630460842299453664

/-! ## A079692.P17984964125961496483

`val(∏{digits}[n!, gcd(#, #!²)], 7)`
-/

namespace A079692.P17984964125961496483
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => Nat.gcd x (Nat.factorial x ^ 2)).prod 7

end

end A079692.P17984964125961496483

/-! ## A079692.P5878442184837374141

`∑{digits}[A000142(n), A079690(#)]`
-/

namespace A079692.P5878442184837374141
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A079690 x).sum

end

end A079692.P5878442184837374141

/-! ## A079692.P3346975211738938452

`∑{digits}[A000142(n), A135133(#)]`
-/

namespace A079692.P3346975211738938452
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A135133 x).sum

end

end A079692.P3346975211738938452

/-! ## A079692.P15670681665377069782

`∑{digits}[A133942(n), A079690(#)]`
-/

namespace A079692.P15670681665377069782
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133942 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A079690 x).sum

end

end A079692.P15670681665377069782

/-! ## A079692.P10031117828588349473

`∑{digits}[A000142(n), A000150(A053121(#))]`
-/

namespace A079692.P10031117828588349473
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A000150 (A053121 x).toNat).sum

end

end A079692.P10031117828588349473

/-! ## A079692.P9294816009416876072

`∑{digits}[A000142(n), A054861(A000120(#))]`
-/

namespace A079692.P9294816009416876072
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A054861 (A000120 x).toNat).sum

end

end A079692.P9294816009416876072

/-!
# A079693: Number of 8's in n!.

The programs for A079693, there is no canonical definition to state claims against.
-/

/-! ## A079693.P9320207083846150243

`A034886(n)-(A027869(n)+A079680(n)+A079714(n)+A079684(n)+A079688(n)+A079690(n)+A079691(n)+A079692(n)+A079694(n))`
-/

namespace A079693.P9320207083846150243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034886 n - (A027869 n + A079680 n + A079714 n + A079684 n + A079688 n + A079690 n + A079691 n + A079692 n + A079694 n)

end

end A079693.P9320207083846150243

/-! ## A079693.P13454121368957875220

`∑{digits}[A181952(n), A047753(#+1)]`
-/

namespace A079693.P13454121368957875220
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181952 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A047753 (x + 1)).sum

end

end A079693.P13454121368957875220

/-! ## A079693.P4803649845364867914

`∑{digits}[A004154(n), A047753(#+1)]`
-/

namespace A079693.P4803649845364867914
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004154 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A047753 (x + 1)).sum

end

end A079693.P4803649845364867914

/-! ## A079693.P10357114045893975240

`∑{digits}[A000142(n), A258997(#)]`
-/

namespace A079693.P10357114045893975240
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A258997 x).sum

end

end A079693.P10357114045893975240

/-! ## A079693.P2382825806295980656

`∑{digits}[A133942(n), A258997(#)]`
-/

namespace A079693.P2382825806295980656
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133942 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A258997 x).sum

end

end A079693.P2382825806295980656

/-! ## A079693.P4548325531600659031

`∑{digits}[A000142(n), A000720(A130461(#))]`
-/

namespace A079693.P4548325531600659031
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A000720 (A130461 x).toNat).sum

end

end A079693.P4548325531600659031

/-!
# A079694: Number of 9's in n!.

The programs for A079694, there is no canonical definition to state claims against.
-/

/-! ## A079694.P10381576819543541575

`A034886(n)-(A027869(n)+A079680(n)+A079714(n)+A079684(n)+A079688(n)+A079690(n)+A079691(n)+A079692(n)+A079693(n))`
-/

namespace A079694.P10381576819543541575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034886 n - (A027869 n + A079680 n + A079714 n + A079684 n + A079688 n + A079690 n + A079691 n + A079692 n + A079693 n)

end

end A079694.P10381576819543541575

/-! ## A079694.P15486116357937893081

`∑{digits}[A181952(n), A047753(#)]`
-/

namespace A079694.P15486116357937893081
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181952 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A047753 x).sum

end

end A079694.P15486116357937893081

/-! ## A079694.P7230441388589684138

`∑{digits}[n!, C(#, 9)]`
-/

namespace A079694.P7230441388589684138
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => Nat.choose x 9).sum

end

end A079694.P7230441388589684138

/-! ## A079694.P13472004596186242696

`∑{digits}[n!, floor(#/9)]`
-/

namespace A079694.P13472004596186242696
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => ⌊(x : ℚ) / 9⌋).sum

end

end A079694.P13472004596186242696

/-! ## A079694.P1821706291000498163

`∑{digits}[n*a(n-1), C(#, 9)]` with `a(0)=1`
-/

namespace A079694.P1821706291000498163
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f1 =>
  n * f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => Nat.choose x 9).sum

end

end A079694.P1821706291000498163

/-! ## A079694.P3204865335016592859

`∑{digits}[A000142(n), A055641(A000041(#))]`
-/

namespace A079694.P3204865335016592859
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A055641 (A000041 x).toNat).sum

end

end A079694.P3204865335016592859

/-! ## A079694.P15551845134150871248

`∑{digits}[A000142(n), A026926(A038201(#))]`
-/

namespace A079694.P15551845134150871248
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A026926 (A038201 x).toNat).sum

end

end A079694.P15551845134150871248

/-! ## A079694.P1089773680865428154

`∑{digits}[A000142(n), A011371(A090618(#))]`
-/

namespace A079694.P1089773680865428154
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A011371 (A090618 x).toNat).sum

end

end A079694.P1089773680865428154

/-!
# A079695: Values never taken by phi(j)/2 for any j: a(n) = A005277(n)/2.

The programs for A079695, the canonical program `A079695.P1401663240331411904` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A079695 has offset 1).

The definition of A079695 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A005277, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A079695.P1401663240331411904

`A005277(n+1)/2`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A079695

/-- `A005277(n+1)/2` -/
def P1401663240331411904.Spec : Prop :=
  ∀ n, P1401663240331411904.a n = (A079695 (n + 1) : ℚ)

end A079695

/-! ## A079695.P13652805079434699623

`comp[floor(A000010(n+1)/2)]`
-/

namespace A079695.P13652805079434699623
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A000010 (n + 1) : ℚ) / 2⌋

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A079695.P13652805079434699623

namespace A079695

/-- `comp[floor(A000010(n+1)/2)]` -/
def P13652805079434699623.Spec : Prop :=
  ∀ n, (P13652805079434699623.a n : ℤ) = A079695 (n + 1)

end A079695

/-! ## A079695.P739182033146796953

`comp[ceil(sinh(log(A000010(n+2))))]`
-/

namespace A079695.P739182033146796953
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sinh (Real.log (A000010 (n + 2) : ℝ))⌉

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A079695.P739182033146796953

namespace A079695

/-- `comp[ceil(sinh(log(A000010(n+2))))]` -/
def P739182033146796953.Spec : Prop :=
  ∀ n, (P739182033146796953.a n : ℤ) = A079695 (n + 1)

end A079695

/-! ## A079695.P8941527555339473926

`comp[A002180(n+2)-1]+1`
-/

namespace A079695.P8941527555339473926
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002180 (n + 2) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A079695.P8941527555339473926

namespace A079695

/-- `comp[A002180(n+2)-1]+1` -/
def P8941527555339473926.Spec : Prop :=
  ∀ n, (P8941527555339473926.a n : ℤ) = A079695 (n + 1)

end A079695

/-! ## A079695.P18182430726240689701

`eq[1, A355451(2*(n+1))]+1`
-/

namespace A079695.P18182430726240689701
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355451 (2 * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A079695.P18182430726240689701

namespace A079695

/-- `eq[1, A355451(2*(n+1))]+1` -/
def P18182430726240689701.Spec : Prop :=
  ∀ n, (P18182430726240689701.a n : ℤ) = A079695 (n + 1)

end A079695

/-! ## A079695.P18127380925614891945

`comp[round(sinh(log(A000010(2*n+1))))]`
-/

namespace A079695.P18127380925614891945
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sinh (Real.log (A000010 (2 * n + 1) : ℝ)))

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A079695.P18127380925614891945

namespace A079695

/-- `comp[round(sinh(log(A000010(2*n+1))))]` -/
def P18127380925614891945.Spec : Prop :=
  ∀ n, (P18127380925614891945.a n : ℤ) = A079695 (n + 1)

end A079695

/-! ## A079695.P637928780715020303

`A014682(A005277(n+1))`
-/

namespace A079695.P637928780715020303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A005277 (n + 1)).toNat

end

end A079695.P637928780715020303

namespace A079695

/-- `A014682(A005277(n+1))` -/
def P637928780715020303.Spec : Prop :=
  ∀ n, P637928780715020303.a n = A079695 (n + 1)

end A079695

/-! ## A079695.P15986437702822917080

`eq[A069932(2*(n+1)), A070633(2*(n+1))]+1`
-/

namespace A079695.P15986437702822917080
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069932 (2 * (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070633 (2 * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A079695.P15986437702822917080

namespace A079695

/-- `eq[A069932(2*(n+1)), A070633(2*(n+1))]+1` -/
def P15986437702822917080.Spec : Prop :=
  ∀ n, (P15986437702822917080.a n : ℤ) = A079695 (n + 1)

end A079695

/-! ## A079695.P8002806713661154262

`eq[1, A071615(n+1)]+1`
-/

namespace A079695.P8002806713661154262
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071615 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A079695.P8002806713661154262

namespace A079695

/-- `eq[1, A071615(n+1)]+1` -/
def P8002806713661154262.Spec : Prop :=
  ∀ n, (P8002806713661154262.a n : ℤ) = A079695 (n + 1)

end A079695

/-! ## A079695.P14275305361894979608

`lt[A032446(n+1), 1]+1`
-/

namespace A079695.P14275305361894979608
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032446 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A079695.P14275305361894979608

namespace A079695

/-- `lt[A032446(n+1), 1]+1` -/
def P14275305361894979608.Spec : Prop :=
  ∀ n, (P14275305361894979608.a n : ℤ) = A079695 (n + 1)

end A079695

/-! ## A079695.P1505930252394657026

`lt[A057826(n+1), 1]+1`
-/

namespace A079695.P1505930252394657026
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057826 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A079695.P1505930252394657026

namespace A079695

/-- `lt[A057826(n+1), 1]+1` -/
def P1505930252394657026.Spec : Prop :=
  ∀ n, (P1505930252394657026.a n : ℤ) = A079695 (n + 1)

end A079695

/-! ## A079695.P57479527304505062

`eq[1, A000010(A051445(n+1)+1)]+1`
-/

namespace A079695.P57479527304505062
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A051445 (n + 1) + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A079695.P57479527304505062

namespace A079695

/-- `eq[1, A000010(A051445(n+1)+1)]+1` -/
def P57479527304505062.Spec : Prop :=
  ∀ n, (P57479527304505062.a n : ℤ) = A079695 (n + 1)

end A079695

/-! ## A079695.P6348248393315578391

`eq[A014197(n+1), A057826(n+1)]+1`
-/

namespace A079695.P6348248393315578391
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014197 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057826 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A079695.P6348248393315578391

namespace A079695

/-- `eq[A014197(n+1), A057826(n+1)]+1` -/
def P6348248393315578391.Spec : Prop :=
  ∀ n, (P6348248393315578391.a n : ℤ) = A079695 (n + 1)

end A079695

/-! ## A079695.P10606229620021870125

`eq[A032446(n+1), A057826(n+1)]+1`
-/

namespace A079695.P10606229620021870125
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032446 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057826 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A079695.P10606229620021870125

namespace A079695

/-- `eq[A032446(n+1), A057826(n+1)]+1` -/
def P10606229620021870125.Spec : Prop :=
  ∀ n, (P10606229620021870125.a n : ℤ) = A079695 (n + 1)

end A079695

/-! ## A079695.P4529195032059353432

`eq[1, A322310(2*(n+1))]+1`
-/

namespace A079695.P4529195032059353432
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322310 (2 * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A079695.P4529195032059353432

namespace A079695

/-- `eq[1, A322310(2*(n+1))]+1` -/
def P4529195032059353432.Spec : Prop :=
  ∀ n, (P4529195032059353432.a n : ℤ) = A079695 (n + 1)

end A079695

/-! ## A079695.P11540168753432099264

`lt[A323169(2*(n+1)), 1]+1`
-/

namespace A079695.P11540168753432099264
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323169 (2 * (n + 1))

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A079695.P11540168753432099264

namespace A079695

/-- `lt[A323169(2*(n+1)), 1]+1` -/
def P11540168753432099264.Spec : Prop :=
  ∀ n, (P11540168753432099264.a n : ℤ) = A079695 (n + 1)

end A079695

/-! ## A079695.P982958501399353302

`∩[A007617(n+1), A004275(n)]/2`
-/

namespace A079695.P982958501399353302
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007617 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004275 n

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℚ) / 2

end

end A079695.P982958501399353302

namespace A079695

/-- `∩[A007617(n+1), A004275(n)]/2` -/
def P982958501399353302.Spec : Prop :=
  ∀ n, P982958501399353302.a n = (A079695 (n + 1) : ℚ)

end A079695

/-! ## A079695.P15533662701529198454

`∩[A007617(n+1), A004277(n)]/2`
-/

namespace A079695.P15533662701529198454
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007617 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 n

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℚ) / 2

end

end A079695.P15533662701529198454

namespace A079695

/-- `∩[A007617(n+1), A004277(n)]/2` -/
def P15533662701529198454.Spec : Prop :=
  ∀ n, P15533662701529198454.a n = (A079695 (n + 1) : ℚ)

end A079695

/-! ## A079695.P11467985540421886448

`∩[A007617(n+1), A005843(n)]/2`
-/

namespace A079695.P11467985540421886448
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007617 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 n

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℚ) / 2

end

end A079695.P11467985540421886448

namespace A079695

/-- `∩[A007617(n+1), A005843(n)]/2` -/
def P11467985540421886448.Spec : Prop :=
  ∀ n, P11467985540421886448.a n = (A079695 (n + 1) : ℚ)

end A079695

/-!
# A079696: Numbers one more than composite numbers.

The programs for A079696, the canonical program `A079696.P2621453534582977077` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A079696 has offset 1).

The definition of A079696 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A002808, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A079696.P2621453534582977077

`A002808(n+1)+1`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A079696

/-- `A002808(n+1)+1` -/
def P2621453534582977077.Spec : Prop :=
  ∀ n, P2621453534582977077.a n = A079696 (n + 1)

theorem P2621453534582977077.correct : P2621453534582977077.Spec := by
  intro n
  simp only [A079696, Nat.add_sub_cancel]

end A079696

/-! ## A079696.P500106424117045343

`Δ[A053767(n)]+1`
-/

namespace A079696.P500106424117045343
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053767 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + 1

end

end A079696.P500106424117045343

namespace A079696

/-- `Δ[A053767(n)]+1` -/
def P500106424117045343.Spec : Prop :=
  ∀ n, P500106424117045343.a n = A079696 (n + 1)

end A079696

/-! ## A079696.P1824300302675009543

`comp[A351078(n)]+1`
-/

namespace A079696.P1824300302675009543
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351078 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A079696.P1824300302675009543

namespace A079696

/-- `comp[A351078(n)]+1` -/
def P1824300302675009543.Spec : Prop :=
  ∀ n, (P1824300302675009543.a n : ℤ) = A079696 (n + 1)

end A079696

/-! ## A079696.P12346476972494758264

`A018252(n+2)+1`
-/

namespace A079696.P12346476972494758264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (n + 2) + 1

end

end A079696.P12346476972494758264

namespace A079696

/-- `A018252(n+2)+1` -/
def P12346476972494758264.Spec : Prop :=
  ∀ n, P12346476972494758264.a n = A079696 (n + 1)

end A079696

/-! ## A079696.P8391272369306966373

`A072668(n+1)+2`
-/

namespace A079696.P8391272369306966373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072668 (n + 1) + 2

end

end A079696.P8391272369306966373

namespace A079696

/-- `A072668(n+1)+2` -/
def P8391272369306966373.Spec : Prop :=
  ∀ n, P8391272369306966373.a n = A079696 (n + 1)

end A079696

/-! ## A079696.P11450516010089680129

`A141468(n+3)+1`
-/

namespace A079696.P11450516010089680129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141468 (n + 3) + 1

end

end A079696.P11450516010089680129

namespace A079696

/-- `A141468(n+3)+1` -/
def P11450516010089680129.Spec : Prop :=
  ∀ n, P11450516010089680129.a n = A079696 (n + 1)

end A079696

/-! ## A079696.P756183402539117225

`A164028(n+1)+4`
-/

namespace A079696.P756183402539117225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164028 (n + 1) + 4

end

end A079696.P756183402539117225

namespace A079696

/-- `A164028(n+1)+4` -/
def P756183402539117225.Spec : Prop :=
  ∀ n, P756183402539117225.a n = A079696 (n + 1)

end A079696

/-! ## A079696.P10687701519744229255

`lt[1, A074206(n)]+1`
-/

namespace A079696.P10687701519744229255
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074206 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A079696.P10687701519744229255

namespace A079696

/-- `lt[1, A074206(n)]+1` -/
def P10687701519744229255.Spec : Prop :=
  ∀ n, (P10687701519744229255.a n : ℤ) = A079696 (n + 1)

end A079696

/-! ## A079696.P399506324142730774

`lt[1, A107286(n)]+1`
-/

namespace A079696.P399506324142730774
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107286 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A079696.P399506324142730774

namespace A079696

/-- `lt[1, A107286(n)]+1` -/
def P399506324142730774.Spec : Prop :=
  ∀ n, (P399506324142730774.a n : ℤ) = A079696 (n + 1)

end A079696

/-! ## A079696.P13433205037140246124

`lt[1, A107463(n)]+1`
-/

namespace A079696.P13433205037140246124
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107463 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A079696.P13433205037140246124

namespace A079696

/-- `lt[1, A107463(n)]+1` -/
def P13433205037140246124.Spec : Prop :=
  ∀ n, (P13433205037140246124.a n : ℤ) = A079696 (n + 1)

end A079696

/-! ## A079696.P17906838275643277671

`lt[1, A175126(n)]+1`
-/

namespace A079696.P17906838275643277671
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175126 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A079696.P17906838275643277671

namespace A079696

/-- `lt[1, A175126(n)]+1` -/
def P17906838275643277671.Spec : Prop :=
  ∀ n, (P17906838275643277671.a n : ℤ) = A079696 (n + 1)

end A079696

/-! ## A079696.P14024859461506683856

`A161537(n+1)-n`
-/

namespace A079696.P14024859461506683856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161537 (n + 1) - (n : ℤ)

end

end A079696.P14024859461506683856

namespace A079696

/-- `A161537(n+1)-n` -/
def P14024859461506683856.Spec : Prop :=
  ∀ n, P14024859461506683856.a n = A079696 (n + 1)

end A079696

/-! ## A079696.P13775404169347217123

`∑[A065310(n+1)]+2`
-/

namespace A079696.P13775404169347217123
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065310 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 2

end

end A079696.P13775404169347217123

namespace A079696

/-- `∑[A065310(n+1)]+2` -/
def P13775404169347217123.Spec : Prop :=
  ∀ n, P13775404169347217123.a n = A079696 (n + 1)

end A079696

/-! ## A079696.P18381969789180672688

`A282671(n+1)/2+1`
-/

namespace A079696.P18381969789180672688
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A282671 (n + 1) : ℚ) / 2 + 1

end

end A079696.P18381969789180672688

namespace A079696

/-- `A282671(n+1)/2+1` -/
def P18381969789180672688.Spec : Prop :=
  ∀ n, P18381969789180672688.a n = (A079696 (n + 1) : ℚ)

end A079696

/-! ## A079696.P165463926049566458

`lt[1, A001222(n+1)]+2`
-/

namespace A079696.P165463926049566458
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 2

end

end A079696.P165463926049566458

namespace A079696

/-- `lt[1, A001222(n+1)]+2` -/
def P165463926049566458.Spec : Prop :=
  ∀ n, (P165463926049566458.a n : ℤ) = A079696 (n + 1)

end A079696

/-! ## A079696.P69716368889596128

`lt[2, A000005(n+1)]+2`
-/

namespace A079696.P69716368889596128
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 2

end

end A079696.P69716368889596128

namespace A079696

/-- `lt[2, A000005(n+1)]+2` -/
def P69716368889596128.Spec : Prop :=
  ∀ n, (P69716368889596128.a n : ℤ) = A079696 (n + 1)

end A079696

/-! ## A079696.P16793850795006790515

`A073169(n+1)+2+n`
-/

namespace A079696.P16793850795006790515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073169 (n + 1) + 2 + (n : ℤ)

end

end A079696.P16793850795006790515

namespace A079696

/-- `A073169(n+1)+2+n` -/
def P16793850795006790515.Spec : Prop :=
  ∀ n, P16793850795006790515.a n = A079696 (n + 1)

end A079696

/-! ## A079696.P10956530015518268754

`lt[A000010(n+1), n]+2`
-/

namespace A079696.P10956530015518268754
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 2

end

end A079696.P10956530015518268754

namespace A079696

/-- `lt[A000010(n+1), n]+2` -/
def P10956530015518268754.Spec : Prop :=
  ∀ n, (P10956530015518268754.a n : ℤ) = A079696 (n + 1)

end A079696

/-! ## A079696.P6908882571572726888

`lt[A006530(n+1), n]+2`
-/

namespace A079696.P6908882571572726888
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 2

end

end A079696.P6908882571572726888

namespace A079696

/-- `lt[A006530(n+1), n]+2` -/
def P6908882571572726888.Spec : Prop :=
  ∀ n, (P6908882571572726888.a n : ℤ) = A079696 (n + 1)

end A079696

/-! ## A079696.P17165728410903941850

`lt[A020639(n+1), n]+2`
-/

namespace A079696.P17165728410903941850
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 2

end

end A079696.P17165728410903941850

namespace A079696

/-- `lt[A020639(n+1), n]+2` -/
def P17165728410903941850.Spec : Prop :=
  ∀ n, (P17165728410903941850.a n : ℤ) = A079696 (n + 1)

end A079696

/-!
# A079697: Odd part of A005277(n).

The programs for A079697, the canonical program `A079697.P17241016761379675189` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A079697 has offset 1).

The definition of A079697 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A079697.P17241016761379675189

`A000265(A005277(n+1))`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A079697

/-- `A000265(A005277(n+1))` -/
def P17241016761379675189.Spec : Prop :=
  ∀ n, P17241016761379675189.a n = A079697 (n + 1)

theorem P17241016761379675189.correct : P17241016761379675189.Spec := by
  intro n
  simp only [A079697, Nat.add_sub_cancel]

end A079697

/-! ## A079697.P16102429375191595517

`A000265(A079695(n+1))`
-/

namespace A079697.P16102429375191595517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A079695 (n + 1)).toNat

end

end A079697.P16102429375191595517

namespace A079697

/-- `A000265(A079695(n+1))` -/
def P16102429375191595517.Spec : Prop :=
  ∀ n, P16102429375191595517.a n = A079697 (n + 1)

end A079697

/-! ## A079697.P6221366108858865759

`A000265(eq[1, A071615(n+1)]+1)`
-/

namespace A079697.P6221366108858865759
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071615 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A079697.P6221366108858865759

namespace A079697

/-- `A000265(eq[1, A071615(n+1)]+1)` -/
def P6221366108858865759.Spec : Prop :=
  ∀ n, P6221366108858865759.a n = A079697 (n + 1)

end A079697

/-! ## A079697.P8121876904366471522

`A353412(2*A079695(n+1))`
-/

namespace A079697.P8121876904366471522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353412 (2 * A079695 (n + 1)).toNat

end

end A079697.P8121876904366471522

namespace A079697

/-- `A353412(2*A079695(n+1))` -/
def P8121876904366471522.Spec : Prop :=
  ∀ n, P8121876904366471522.a n = A079697 (n + 1)

end A079697

/-! ## A079697.P10115881394818363838

`A353412(lcm(2, A079695(n+1)))`
-/

namespace A079697.P10115881394818363838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353412 (Int.lcm 2 (A079695 (n + 1)))

end

end A079697.P10115881394818363838

namespace A079697

/-- `A353412(lcm(2, A079695(n+1)))` -/
def P10115881394818363838.Spec : Prop :=
  ∀ n, P10115881394818363838.a n = A079697 (n + 1)

end A079697

/-! ## A079697.P2676434717015422837

`A028234(A005277(n+1)%A044708(n+1))`
-/

namespace A079697.P2676434717015422837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028234 (Int.tmod (A005277 (n + 1)) (A044708 (n + 1))).toNat

end

end A079697.P2676434717015422837

namespace A079697

/-- `A028234(A005277(n+1)%A044708(n+1))` -/
def P2676434717015422837.Spec : Prop :=
  ∀ n, P2676434717015422837.a n = A079697 (n + 1)

end A079697

/-! ## A079697.P2860473923833424368

`A028234(A005277(n+1))%A120398(n+1)`
-/

namespace A079697.P2860473923833424368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A028234 (A005277 (n + 1)).toNat) (A120398 (n + 1))

end

end A079697.P2860473923833424368

namespace A079697

/-- `A028234(A005277(n+1))%A120398(n+1)` -/
def P2860473923833424368.Spec : Prop :=
  ∀ n, P2860473923833424368.a n = A079697 (n + 1)

end A079697

/-! ## A079697.P10394936607511504954

`A028234(2*A005277(n+1))`
-/

namespace A079697.P10394936607511504954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028234 (2 * A005277 (n + 1)).toNat

end

end A079697.P10394936607511504954

namespace A079697

/-- `A028234(2*A005277(n+1))` -/
def P10394936607511504954.Spec : Prop :=
  ∀ n, P10394936607511504954.a n = A079697 (n + 1)

end A079697

/-! ## A079697.P6657223753396520995

`A005277(n+1)/gcd(A000079(n+1), A005277(n+1))`
-/

namespace A079697.P6657223753396520995
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A005277 (n + 1) : ℚ) / (Int.gcd (A000079 (n + 1)) (A005277 (n + 1)) : ℚ)

end

end A079697.P6657223753396520995

namespace A079697

/-- `A005277(n+1)/gcd(A000079(n+1), A005277(n+1))` -/
def P6657223753396520995.Spec : Prop :=
  ∀ n, P6657223753396520995.a n = (A079697 (n + 1) : ℚ)

end A079697

/-! ## A079697.P6043371392701686059

`A000265(A307854(n+2)-1)`
-/

namespace A079697.P6043371392701686059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A307854 (n + 2) - 1).toNat

end

end A079697.P6043371392701686059

namespace A079697

/-- `A000265(A307854(n+2)-1)` -/
def P6043371392701686059.Spec : Prop :=
  ∀ n, P6043371392701686059.a n = A079697 (n + 1)

end A079697

/-!
# A079698: Values of the odd part of A005277(n).

The programs for A079698, the canonical program `A079698.P14525829100009091042` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A079698 has offset 0).

The definition of A079698 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6891 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A079698.P14525829100009091042

`record[A079697(n+1)]`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A079698

/-- `record[A079697(n+1)]` -/
def P14525829100009091042.Spec : Prop :=
  ∀ n, P14525829100009091042.a n = A079698 n

theorem P14525829100009091042.correct : P14525829100009091042.Spec := by
  intro n
  simp only [A079698]

end A079698

/-! ## A079698.P16166671719575205038

`∩[2*n+1, A079695(n+1)]`
-/

namespace A079698.P16166671719575205038
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079695 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A079698.P16166671719575205038

namespace A079698

/-- `∩[2*n+1, A079695(n+1)]` -/
def P16166671719575205038.Spec : Prop :=
  ∀ n, (P16166671719575205038.a n : ℤ) = A079698 n

end A079698

/-! ## A079698.P13862237613196556298

`∩[A079695(n+1), A004273(n)]`
-/

namespace A079698.P13862237613196556298
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079695 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A079698.P13862237613196556298

namespace A079698

/-- `∩[A079695(n+1), A004273(n)]` -/
def P13862237613196556298.Spec : Prop :=
  ∀ n, (P13862237613196556298.a n : ℤ) = A079698 n

end A079698

/-! ## A079698.P267175279246095908

`∩[A079695(n+1), A004274(n)]`
-/

namespace A079698.P267175279246095908
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079695 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004274 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A079698.P267175279246095908

namespace A079698

/-- `∩[A079695(n+1), A004274(n)]` -/
def P267175279246095908.Spec : Prop :=
  ∀ n, (P267175279246095908.a n : ℤ) = A079698 n

end A079698

/-! ## A079698.P12331842074706723864

`∩[A079695(n+1), A004276(n)]`
-/

namespace A079698.P12331842074706723864
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079695 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004276 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A079698.P12331842074706723864

namespace A079698

/-- `∩[A079695(n+1), A004276(n)]` -/
def P12331842074706723864.Spec : Prop :=
  ∀ n, (P12331842074706723864.a n : ℤ) = A079698 n

end A079698

/-! ## A079698.P9699463559678577640

`∩[A079695(n+1), A004281(n)]`
-/

namespace A079698.P9699463559678577640
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079695 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004281 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A079698.P9699463559678577640

namespace A079698

/-- `∩[A079695(n+1), A004281(n)]` -/
def P9699463559678577640.Spec : Prop :=
  ∀ n, (P9699463559678577640.a n : ℤ) = A079698 n

end A079698

/-! ## A079698.P9209202855462794535

`∩[A079695(n+1), A020742(n)]`
-/

namespace A079698.P9209202855462794535
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079695 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020742 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A079698.P9209202855462794535

namespace A079698

/-- `∩[A079695(n+1), A020742(n)]` -/
def P9209202855462794535.Spec : Prop :=
  ∀ n, (P9209202855462794535.a n : ℤ) = A079698 n

end A079698

/-! ## A079698.P1925630995984521494

`∩[A079695(n+1), A060747(n)]`
-/

namespace A079698.P1925630995984521494
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079695 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060747 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A079698.P1925630995984521494

namespace A079698

/-- `∩[A079695(n+1), A060747(n)]` -/
def P1925630995984521494.Spec : Prop :=
  ∀ n, (P1925630995984521494.a n : ℤ) = A079698 n

end A079698

/-! ## A079698.P9372041042822489735

`∩[A079695(n+1), A062545(n)]`
-/

namespace A079698.P9372041042822489735
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079695 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062545 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A079698.P9372041042822489735

namespace A079698

/-- `∩[A079695(n+1), A062545(n)]` -/
def P9372041042822489735.Spec : Prop :=
  ∀ n, (P9372041042822489735.a n : ℤ) = A079698 n

end A079698

/-! ## A079698.P15772461044777871528

`∩[A079695(n+1), A130773(n)]`
-/

namespace A079698.P15772461044777871528
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079695 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130773 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A079698.P15772461044777871528

namespace A079698

/-- `∩[A079695(n+1), A130773(n)]` -/
def P15772461044777871528.Spec : Prop :=
  ∀ n, (P15772461044777871528.a n : ℤ) = A079698 n

end A079698

/-! ## A079698.P4990214051024920972

`∩[A079695(n+1), A163985(n)]`
-/

namespace A079698.P4990214051024920972
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079695 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163985 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A079698.P4990214051024920972

namespace A079698

/-- `∩[A079695(n+1), A163985(n)]` -/
def P4990214051024920972.Spec : Prop :=
  ∀ n, (P4990214051024920972.a n : ℤ) = A079698 n

end A079698

/-! ## A079698.P4192262425399770295

`∩[A079695(n+1), A223134(n)]`
-/

namespace A079698.P4192262425399770295
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079695 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223134 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A079698.P4192262425399770295

namespace A079698

/-- `∩[A079695(n+1), A223134(n)]` -/
def P4192262425399770295.Spec : Prop :=
  ∀ n, (P4192262425399770295.a n : ℤ) = A079698 n

end A079698

/-! ## A079698.P9024973331986460649

`eq[0, A032446(n^(n%2))]`
-/

namespace A079698.P9024973331986460649
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032446 (n ^ (n % 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A079698.P9024973331986460649

namespace A079698

/-- `eq[0, A032446(n^(n%2))]` -/
def P9024973331986460649.Spec : Prop :=
  ∀ n, (P9024973331986460649.a n : ℤ) = A079698 n

end A079698

/-! ## A079698.P6791796051669792158

`eq[2*n, A071616(or(1, n))]`
-/

namespace A079698.P6791796051669792158
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071616 (Nat.lor 1 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A079698.P6791796051669792158

namespace A079698

/-- `eq[2*n, A071616(or(1, n))]` -/
def P6791796051669792158.Spec : Prop :=
  ∀ n, (P6791796051669792158.a n : ℤ) = A079698 n

end A079698

/-! ## A079698.P3518568769097887114

`eq[0, A032446(n^and(1, n))]`
-/

namespace A079698.P3518568769097887114
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032446 (n ^ Nat.land 1 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A079698.P3518568769097887114

namespace A079698

/-- `eq[0, A032446(n^and(1, n))]` -/
def P3518568769097887114.Spec : Prop :=
  ∀ n, (P3518568769097887114.a n : ℤ) = A079698 n

end A079698

/-! ## A079698.P15974732444234838779

`filter[A079695(n+1), A000035(#)]`
-/

namespace A079698.P15974732444234838779
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079695 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A000035 (f1 j).toNat = 1) n)

end

end A079698.P15974732444234838779

namespace A079698

/-- `filter[A079695(n+1), A000035(#)]` -/
def P15974732444234838779.Spec : Prop :=
  ∀ n, P15974732444234838779.a n = A079698 n

end A079698

/-! ## A079698.P257291536140670351

`filter[A079695(n+1), A266070(#)]`
-/

namespace A079698.P257291536140670351
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079695 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A266070 (f1 j).toNat = 1) n)

end

end A079698.P257291536140670351

namespace A079698

/-- `filter[A079695(n+1), A266070(#)]` -/
def P257291536140670351.Spec : Prop :=
  ∀ n, P257291536140670351.a n = A079698 n

end A079698

/-! ## A079698.P6323251192244656

`filter[A079695(n+1), A266246(#)]`
-/

namespace A079698.P6323251192244656
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079695 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A266246 (f1 j).toNat = 1) n)

end

end A079698.P6323251192244656

namespace A079698

/-- `filter[A079695(n+1), A266246(#)]` -/
def P6323251192244656.Spec : Prop :=
  ∀ n, P6323251192244656.a n = A079698 n

end A079698

/-! ## A079698.P11203016155239266680

`filter[A079695(n+1), A266611(#)]`
-/

namespace A079698.P11203016155239266680
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079695 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A266611 (f1 j).toNat = 1) n)

end

end A079698.P11203016155239266680

namespace A079698

/-- `filter[A079695(n+1), A266611(#)]` -/
def P11203016155239266680.Spec : Prop :=
  ∀ n, P11203016155239266680.a n = A079698 n

end A079698

/-! ## A079698.P10978865832154499390

`filter[A079695(n+1), A266719(#)]`
-/

namespace A079698.P10978865832154499390
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079695 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A266719 (f1 j).toNat = 1) n)

end

end A079698.P10978865832154499390

namespace A079698

/-- `filter[A079695(n+1), A266719(#)]` -/
def P10978865832154499390.Spec : Prop :=
  ∀ n, P10978865832154499390.a n = A079698 n

end A079698

