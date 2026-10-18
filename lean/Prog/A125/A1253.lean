import SequenceMachineLib.Basic
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C004
import Seq.B000.C005
import Seq.B000.C007
import Seq.B000.C008
import Seq.B000.C009
import Seq.B000.C011
import Seq.B000.C013
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C026
import Seq.B000.C028
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C035
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C003
import Seq.B001.C005
import Seq.B002.C000
import Seq.B002.C001
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C002
import Seq.B006.C000
import Seq.B006.C001
import Seq.B006.C002
import Seq.B007.C002
import Seq.B008.C000
import Seq.B009.C000
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
import Seq.Opaque.C012
import Seq.Opaque.C013
import Seq.Opaque.C015
import Seq.Opaque.C017
import Seq.Opaque.C018
import Seq.Opaque.C019
import Seq.Opaque.C020
import Seq.Opaque.C022
import Seq.Opaque.C023
import Seq.Opaque.C024
import Seq.Opaque.C025

/-!
# A125300: Tanimoto triangle read by rows: T(n,k) = number of "parity-alternating permutations" (PAPS) of n symbols with k ascents.

The programs for A125300, there is no canonical definition to state claims against.
-/

/-! ## A125300.P1038581145995725201

`A157273(n)%A158366(A203638(n+1))`
-/

namespace A125300.P1038581145995725201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A157273 n) (A158366 (A203638 (n + 1)).toNat)

end

end A125300.P1038581145995725201

/-! ## A125300.P11624226380475848900

`A181670(A154982(n))`
-/

namespace A125300.P11624226380475848900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181670 (A154982 n).toNat

end

end A125300.P11624226380475848900

/-! ## A125300.P3079119447278059016

`A014586(A172377(n+1))`
-/

namespace A125300.P3079119447278059016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014586 (A172377 (n + 1)).toNat

end

end A125300.P3079119447278059016

/-! ## A125300.P6415719132982331365

`A223856(A144439(n+1))`
-/

namespace A125300.P6415719132982331365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223856 (A144439 (n + 1)).toNat

end

end A125300.P6415719132982331365

/-! ## A125300.P812990031919984319

`A373605(A340560(n+1))`
-/

namespace A125300.P812990031919984319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373605 (A340560 (n + 1)).toNat

end

end A125300.P812990031919984319

/-!
# A125301: a(3n) = n, a(3n+1) = (n+2)*a(3n), a(3n+2) = (n+2)*a(3n+1).

The programs for A125301, there is no canonical definition to state claims against.
-/

/-! ## A125301.P7821879227165646913

`A284264(A151262(n+1))`
-/

namespace A125301.P7821879227165646913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284264 (A151262 (n + 1)).toNat

end

end A125301.P7821879227165646913

/-! ## A125301.P2456065532858388751

`A347698(A098485(n+1))`
-/

namespace A125301.P2456065532858388751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347698 (A098485 (n + 1)).toNat

end

end A125301.P2456065532858388751

/-! ## A125301.P17264459480647828595

`A004442(A347602(n))%A061551(n)`
-/

namespace A125301.P17264459480647828595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A004442 (A347602 n).toNat) (A061551 n)

end

end A125301.P17264459480647828595

/-! ## A125301.P6906369144285243803

`A002264(n)*A076112(A032555(n+1))`
-/

namespace A125301.P6906369144285243803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 n * A076112 (A032555 (n + 1)).toNat

end

end A125301.P6906369144285243803

/-! ## A125301.P1675758657074308552

`A054861(n)*A076112(A032555(n+1))`
-/

namespace A125301.P1675758657074308552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054861 n * A076112 (A032555 (n + 1)).toNat

end

end A125301.P1675758657074308552

/-!
# A125302: Nonprime numbers n such that n cannot be a semiperimeter of an integer Heronian triangle.

The programs for A125302, there is no canonical definition to state claims against.
-/

/-! ## A125302.P6845857957550635908

`record[A191558(A305705(n+1))]`
-/

namespace A125302.P6845857957550635908
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191558 (A305705 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A125302.P6845857957550635908

/-! ## A125302.P5203653698128698687

`filter[A305705(n+1), A005171(#)]`
-/

namespace A125302.P5203653698128698687
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305705 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A005171 (f1 j).toNat = 1) n)

end

end A125302.P5203653698128698687

/-! ## A125302.P3976188634469416059

`∩[A018252(n+1), A305705(n+1)]`
-/

namespace A125302.P3976188634469416059
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305705 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A125302.P3976188634469416059

/-! ## A125302.P766789408904348777

`∩[A141468(n+1), A305705(n+1)]`
-/

namespace A125302.P766789408904348777
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141468 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305705 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A125302.P766789408904348777

/-! ## A125302.P6224058272255351592

`∩[A174891(n+1), A305705(n+1)]`
-/

namespace A125302.P6224058272255351592
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174891 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305705 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A125302.P6224058272255351592

/-! ## A125302.P1454223575991190433

`∩[A305705(n+1), A377880(n+1)]`
-/

namespace A125302.P1454223575991190433
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305705 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377880 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A125302.P1454223575991190433

/-!
# A125305: Number of 132-segmented permutations of length n.

The programs for A125305, there is no canonical definition to state claims against.
-/

/-! ## A125305.P1569705940795589093

`A176697(n)-a(n-2)` with `a(0)=1, a(1)=1`
-/

namespace A125305.P1569705940795589093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A176697 n - a (n - 2)

end

end A125305.P1569705940795589093

/-! ## A125305.P3809697149110031531

`A309129(∑[(1-n)²])`
-/

namespace A125305.P3809697149110031531
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - (n : ℤ)) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309129 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A125305.P3809697149110031531

/-! ## A125305.P7676440565391111212

`A110266(A217616(n))`
-/

namespace A125305.P7676440565391111212
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110266 (A217616 n).toNat

end

end A125305.P7676440565391111212

/-!
# A125306: Number of 123-segmented permutations of length n.

The programs for A125306, there is no canonical definition to state claims against.
-/

/-! ## A125306.P4603561522436340180

`A108954(A054405(n)+A002450(n))`
-/

namespace A125306.P4603561522436340180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108954 (A054405 n + A002450 n).toNat

end

end A125306.P4603561522436340180

/-! ## A125306.P6690595930286412815

`A108954(A008578(n+1)+A002450(n))`
-/

namespace A125306.P6690595930286412815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108954 (A008578 (n + 1) + A002450 n).toNat

end

end A125306.P6690595930286412815

/-! ## A125306.P7055371835921340709

`A108954(A056493(n+1)+A002450(n))`
-/

namespace A125306.P7055371835921340709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108954 (A056493 (n + 1) + A002450 n).toNat

end

end A125306.P7055371835921340709

/-! ## A125306.P11135289259749077934

`A108954(A075643(n+1)+A002450(n))`
-/

namespace A125306.P11135289259749077934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108954 (A075643 (n + 1) + A002450 n).toNat

end

end A125306.P11135289259749077934

/-!
# A125307: Number of increasing trees with branches of height 1.

The programs for A125307, there is no canonical definition to state claims against.
-/

/-! ## A125307.P15656063368532702621

`A028310(n*A194920(A000522(n)))`
-/

namespace A125307.P15656063368532702621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 ((n : ℤ) * A194920 (A000522 n).toNat).toNat

end

end A125307.P15656063368532702621

/-! ## A125307.P4512693818543625632

`A000005(A011782(n))*A194920(A000522(n))`
-/

namespace A125307.P4512693818543625632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A011782 n).toNat * A194920 (A000522 n).toNat

end

end A125307.P4512693818543625632

/-!
# A125308: Primes having only {0, 1, 3, 8} as digits.

The programs for A125308, there is no canonical definition to state claims against.
-/

/-! ## A125308.P17378975452770689757

`∩[A038617(n+1), A007284(n)]`
-/

namespace A125308.P17378975452770689757
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038617 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007284 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A125308.P17378975452770689757

/-! ## A125308.P18213333181230679051

`∩[A038604(n+1), A007284(n)]`
-/

namespace A125308.P18213333181230679051
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038604 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007284 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A125308.P18213333181230679051

/-! ## A125308.P6825843316575905988

`∩[A329760(n+1), A007284(n)]`
-/

namespace A125308.P6825843316575905988
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329760 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007284 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A125308.P6825843316575905988

/-! ## A125308.P2221229882932993200

`p?[A007284(n)]`
-/

namespace A125308.P2221229882932993200
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007284 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A125308.P2221229882932993200

/-! ## A125308.P581812595103690578

`∩[A038615(n+1), A007284(n)]`
-/

namespace A125308.P581812595103690578
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038615 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007284 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A125308.P581812595103690578

/-! ## A125308.P8939941001053004455

`∩[A386339(n+1), A007284(n)]`
-/

namespace A125308.P8939941001053004455
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386339 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007284 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A125308.P8939941001053004455

/-! ## A125308.P14715667926876836684

`∩[A386358(n+1), A007284(n)]`
-/

namespace A125308.P14715667926876836684
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386358 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007284 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A125308.P14715667926876836684

/-! ## A125308.P10087958101249780568

`∩[A361822(n+1), A007284(n)]`
-/

namespace A125308.P10087958101249780568
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361822 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007284 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A125308.P10087958101249780568

/-! ## A125308.P686479001749056314

`∩[A386336(n+1), A007284(n)]`
-/

namespace A125308.P686479001749056314
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386336 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007284 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A125308.P686479001749056314

/-! ## A125308.P485265085084734251

`∩[A386337(n+1), A007284(n)]`
-/

namespace A125308.P485265085084734251
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386337 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007284 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A125308.P485265085084734251

/-! ## A125308.P381824199006137017

`∩[A386347(n+1), A007284(n)]`
-/

namespace A125308.P381824199006137017
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386347 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007284 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A125308.P381824199006137017

/-! ## A125308.P17898931538743135900

`∩[A386351(n+1), A007284(n)]`
-/

namespace A125308.P17898931538743135900
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386351 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007284 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A125308.P17898931538743135900

/-! ## A125308.P2050341955538681806

`∩[A386354(n+1), A007284(n)]`
-/

namespace A125308.P2050341955538681806
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386354 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007284 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A125308.P2050341955538681806

/-! ## A125308.P12154531890018993041

`∩[A386349(n+1), A007284(n)]`
-/

namespace A125308.P12154531890018993041
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386349 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007284 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A125308.P12154531890018993041

/-! ## A125308.P12542907371769260203

`∩[A386353(n+1), A007284(n)]`
-/

namespace A125308.P12542907371769260203
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386353 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007284 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A125308.P12542907371769260203

/-! ## A125308.P1899849784250096524

`∩[A386356(n+1), A007284(n)]`
-/

namespace A125308.P1899849784250096524
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386356 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007284 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A125308.P1899849784250096524

/-! ## A125308.P4282916031556337032

`∩[A045407(n+1), A007284(n)]`
-/

namespace A125308.P4282916031556337032
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045407 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007284 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A125308.P4282916031556337032

/-! ## A125308.P11238153434387688492

`∩[A045429(n+1), A007284(n)]`
-/

namespace A125308.P11238153434387688492
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045429 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007284 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A125308.P11238153434387688492

/-! ## A125308.P15083371305419974362

`∩[A386345(n+1), A007284(n)]`
-/

namespace A125308.P15083371305419974362
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386345 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007284 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A125308.P15083371305419974362

/-! ## A125308.P1017913456438407151

`∩[A386346(n+1), A007284(n)]`
-/

namespace A125308.P1017913456438407151
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386346 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007284 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A125308.P1017913456438407151

/-!
# A125309: Numbers n such that twice the sum of the prime factors of n equals the product of the digits of n.

The programs for A125309, there is no canonical definition to state claims against.
-/

/-! ## A125309.P17731667715000295755

`eq[2*A008472(A233583(n+1)), A007954(n)]`
-/

namespace A125309.P17731667715000295755
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008472 (A233583 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007954 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A125309.P17731667715000295755

/-!
# A125310: Numbers n such that n = sum of deficient proper divisors of n.

The programs for A125310, there is no canonical definition to state claims against.
-/

/-! ## A125310.P13550560898778495477

`xor(A055762(A125297(n+1)), A247111(n+1))`
-/

namespace A125310.P13550560898778495477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A055762 (A125297 (n + 1)).toNat) (A247111 (n + 1))

end

end A125310.P13550560898778495477

/-! ## A125310.P18091203997195673749

`∪[A000396(n+1), A341623(A341646(n+1))]`
-/

namespace A125310.P18091203997195673749
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000396 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341623 (A341646 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A125310.P18091203997195673749

/-! ## A125310.P16249986920014306572

`xor(A055762(A008307(2*(n+2))), A247111(n+1))`
-/

namespace A125310.P16249986920014306572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A055762 (A008307 (2 * (n + 2))).toNat) (A247111 (n + 1))

end

end A125310.P16249986920014306572

/-!
# A125311: Array giving number of (k,2)-noncrossing partitions of [n], read by antidiagonals.

The programs for A125311, there is no canonical definition to state claims against.
-/

/-! ## A125311.P5039686624440135752

`A287641(lt[1, A113374(n)])`
-/

namespace A125311.P5039686624440135752
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113374 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287641 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A125311.P5039686624440135752

/-! ## A125311.P10420031851319627250

`A287641(lt[1, A102012(n+1)])`
-/

namespace A125311.P10420031851319627250
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102012 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287641 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A125311.P10420031851319627250

/-! ## A125311.P7763677385568035069

`A287641(comp[∑[n+1]])%A103392(n+1)`
-/

namespace A125311.P7763677385568035069
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A287641 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)) (A103392 (n + 1))

end

end A125311.P7763677385568035069

/-! ## A125311.P56001156814378338

`A287641(eq[A128412(n), A128414(n)])`
-/

namespace A125311.P56001156814378338
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128412 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128414 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287641 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A125311.P56001156814378338

/-! ## A125311.P869164990582527949

`A066083(A276237(n+2))`
-/

namespace A125311.P869164990582527949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066083 (A276237 (n + 2)).toNat

end

end A125311.P869164990582527949

/-!
# A125315: Smallest n-digit number that has exactly n divisors, each with a different number of digits, or 0 if no such number exists.

The programs for A125315, there is no canonical definition to state claims against.
-/

/-! ## A125315.P250989872525156214

`∩[A084979(n+1), A385345(n+1)]`
-/

namespace A125315.P250989872525156214
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084979 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385345 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A125315.P250989872525156214

/-!
# A125316: Number of base 6 circular n-digit numbers with adjacent digits differing by 3 or less.

The programs for A125316, there is no canonical definition to state claims against.
-/

/-! ## A125316.P16027882151045644022

`A285281(A166136(n+1))`
-/

namespace A125316.P16027882151045644022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285281 (A166136 (n + 1)).toNat

end

end A125316.P16027882151045644022

/-! ## A125316.P17563081142861690897

`A285281(A046691(n)+10)`
-/

namespace A125316.P17563081142861690897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285281 (A046691 n + 10).toNat

end

end A125316.P17563081142861690897

/-! ## A125316.P5193413425208072727

`A285281(A167499(n+1)+1)`
-/

namespace A125316.P5193413425208072727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285281 (A167499 (n + 1) + 1).toNat

end

end A125316.P5193413425208072727

/-! ## A125316.P12531400294986908410

`A285281(A167487(n+1)-1)`
-/

namespace A125316.P12531400294986908410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285281 (A167487 (n + 1) - 1).toNat

end

end A125316.P12531400294986908410

/-! ## A125316.P10333315913446375153

`A285281(A167614(n+1)+3)`
-/

namespace A125316.P10333315913446375153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285281 (A167614 (n + 1) + 3).toNat

end

end A125316.P10333315913446375153

/-!
# A125317: Number of base 7 circular n-digit numbers with adjacent digits differing by 3 or less.

The programs for A125317, there is no canonical definition to state claims against.
-/

/-! ## A125317.P15622097780187506501

`A285281(A167487(n+2))`
-/

namespace A125317.P15622097780187506501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285281 (A167487 (n + 2)).toNat

end

end A125317.P15622097780187506501

/-! ## A125317.P6331555474848420948

`A285281(A052905(n)+12)`
-/

namespace A125317.P6331555474848420948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285281 (A052905 n + 12).toNat

end

end A125317.P6331555474848420948

/-! ## A125317.P14478815187283312213

`A285281(A055999(n)+13)`
-/

namespace A125317.P14478815187283312213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285281 (A055999 n + 13).toNat

end

end A125317.P14478815187283312213

/-! ## A125317.P5547814815834421320

`A285281(A166136(n+2)+1)`
-/

namespace A125317.P5547814815834421320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285281 (A166136 (n + 2) + 1).toNat

end

end A125317.P5547814815834421320

/-! ## A125317.P1561584550539825817

`A285281(A167614(n+2)+4)`
-/

namespace A125317.P1561584550539825817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285281 (A167614 (n + 2) + 4).toNat

end

end A125317.P1561584550539825817

/-!
# A125318: Number of base 8 circular n-digit numbers with adjacent digits differing by 3 or less.

The programs for A125318, there is no canonical definition to state claims against.
-/

/-! ## A125318.P9387636788740386825

`A285281(A155212(n)+16)`
-/

namespace A125318.P9387636788740386825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285281 (A155212 n + 16).toNat

end

end A125318.P9387636788740386825

/-! ## A125318.P14116542105849540501

`A285281(A077169(n+5)+3)`
-/

namespace A125318.P14116542105849540501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285281 (A077169 (n + 5) + 3).toNat

end

end A125318.P14116542105849540501

/-! ## A125318.P10259004885259684449

`A285281(eq[4, A140997(n)]+11)`
-/

namespace A125318.P10259004885259684449
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140997 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285281 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 11)

end

end A125318.P10259004885259684449

/-! ## A125318.P18421143106724613904

`A285281(A166136(n+4)-(n+3))`
-/

namespace A125318.P18421143106724613904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285281 (A166136 (n + 4) - (n + 3 : ℤ)).toNat

end

end A125318.P18421143106724613904

/-! ## A125318.P17998505077636381924

`A285281(A167614(n+1)+A020744(n)+4)`
-/

namespace A125318.P17998505077636381924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285281 (A167614 (n + 1) + A020744 n + 4).toNat

end

end A125318.P17998505077636381924

/-!
# A125319: Number of base 9 circular n-digit numbers with adjacent digits differing by 3 or less.

The programs for A125319, there is no canonical definition to state claims against.
-/

/-! ## A125319.P7060456598002601611

`A285281(A166136(n+4)+3)`
-/

namespace A125319.P7060456598002601611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285281 (A166136 (n + 4) + 3).toNat

end

end A125319.P7060456598002601611

/-! ## A125319.P16430119680843304766

`A285281(A173036(n+5)-4)`
-/

namespace A125319.P16430119680843304766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285281 (A173036 (n + 5) - 4).toNat

end

end A125319.P16430119680843304766

/-! ## A125319.P8166615944407608391

`A285281(A000217(n+5)+9)`
-/

namespace A125319.P8166615944407608391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285281 (A000217 (n + 5) + 9).toNat

end

end A125319.P8166615944407608391

/-! ## A125319.P10564615140258743520

`A285281(Δ[A023545(n+1)]+13)`
-/

namespace A125319.P10564615140258743520
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285281 (f1 (n + 1) - f1 n + 13).toNat

end

end A125319.P10564615140258743520

/-! ## A125319.P10364157735527583738

`A285281(A167499(n+5)-(n+2))`
-/

namespace A125319.P10364157735527583738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285281 (A167499 (n + 5) - (n + 2 : ℤ)).toNat

end

end A125319.P10364157735527583738

/-!
# A125320: Number of base 10 circular n-digit numbers with adjacent digits differing by 3 or less.

The programs for A125320, there is no canonical definition to state claims against.
-/

/-! ## A125320.P15153780987494085443

`A285281(A167499(n+5)+5)`
-/

namespace A125320.P15153780987494085443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285281 (A167499 (n + 5) + 5).toNat

end

end A125320.P15153780987494085443

/-! ## A125320.P4284780900355304573

`A285281(A000096(n+5)+11)`
-/

namespace A125320.P4284780900355304573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285281 (A000096 (n + 5) + 11).toNat

end

end A125320.P4284780900355304573

/-! ## A125320.P16852801174782276817

`A285281(A000217(n+6)+10)`
-/

namespace A125320.P16852801174782276817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285281 (A000217 (n + 6) + 10).toNat

end

end A125320.P16852801174782276817

/-! ## A125320.P13116464562804545306

`A285281(A052905(n+3)+15)`
-/

namespace A125320.P13116464562804545306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285281 (A052905 (n + 3) + 15).toNat

end

end A125320.P13116464562804545306

/-! ## A125320.P3666905871019640429

`A285281(A133263(n+7)-(n-1))`
-/

namespace A125320.P3666905871019640429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285281 (A133263 (n + 7) - ((n : ℤ) - 1)).toNat

end

end A125320.P3666905871019640429

/-!
# A125321: Number of base 11 circular n-digit numbers with adjacent digits differing by 3 or less.

The programs for A125321, there is no canonical definition to state claims against.
-/

/-! ## A125321.P12973230018213319023

`A285281(A167499(n+6)+6)`
-/

namespace A125321.P12973230018213319023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285281 (A167499 (n + 6) + 6).toNat

end

end A125321.P12973230018213319023

/-! ## A125321.P9242318008423147594

`A285281(A000124(n+7)+10)`
-/

namespace A125321.P9242318008423147594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285281 (A000124 (n + 7) + 10).toNat

end

end A125321.P9242318008423147594

/-! ## A125321.P3516795846124068659

`A285281(eq[7, A002262(n)]+4)`
-/

namespace A125321.P3516795846124068659
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285281 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 4)

end

end A125321.P3516795846124068659

/-! ## A125321.P6480534109863126254

`A285281(A055999(n+6)-2*n)`
-/

namespace A125321.P6480534109863126254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285281 (A055999 (n + 6) - (2 * n : ℤ)).toNat

end

end A125321.P6480534109863126254

/-!
# A125322: Number of base 12 circular n-digit numbers with adjacent digits differing by 3 or less.

The programs for A125322, there is no canonical definition to state claims against.
-/

/-! ## A125322.P17859786766382150065

`A285281(A167499(n+7)+7)`
-/

namespace A125322.P17859786766382150065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285281 (A167499 (n + 7) + 7).toNat

end

end A125322.P17859786766382150065

/-! ## A125322.P5561098807901114638

`A285281(A000124(n+8)+11)`
-/

namespace A125322.P5561098807901114638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285281 (A000124 (n + 8) + 11).toNat

end

end A125322.P5561098807901114638

/-! ## A125322.P126012583137587501

`A285281(A000217(n+8)+12)`
-/

namespace A125322.P126012583137587501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285281 (A000217 (n + 8) + 12).toNat

end

end A125322.P126012583137587501

/-!
# A125323: Number of base 13 circular n-digit numbers with adjacent digits differing by 3 or less.

The programs for A125323, there is no canonical definition to state claims against.
-/

/-! ## A125323.P16103741768131526521

`A285281(A008486(n+12)+A000124(n+6))`
-/

namespace A125323.P16103741768131526521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285281 (A008486 (n + 12) + A000124 (n + 6)).toNat

end

end A125323.P16103741768131526521

/-! ## A125323.P9292204276578961202

`abs(A004277(A025012(n))-A125325(n))`
-/

namespace A125323.P9292204276578961202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A004277 (A025012 n).toNat - A125325 n|

end

end A125323.P9292204276578961202

/-! ## A125323.P13135009198822509075

`2*A000265(A125324(n))-A025012(n)`
-/

namespace A125323.P13135009198822509075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000265 (A125324 n).toNat - A025012 n

end

end A125323.P13135009198822509075

/-!
# A125324: Number of base 14 circular n-digit numbers with adjacent digits differing by 3 or less.

The programs for A125324, there is no canonical definition to state claims against.
-/

/-! ## A125324.P9149104466119161879

`A285281(A000217(n+10)+14)`
-/

namespace A125324.P9149104466119161879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285281 (A000217 (n + 10) + 14).toNat

end

end A125324.P9149104466119161879

/-! ## A125324.P11875312187120206617

`abs(A004277(A025012(n))-A125326(n))`
-/

namespace A125324.P11875312187120206617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A004277 (A025012 n).toNat - A125326 n|

end

end A125324.P11875312187120206617

/-!
# A125325: Number of base 15 circular n-digit numbers with adjacent digits differing by 3 or less.

The programs for A125325, there is no canonical definition to state claims against.
-/

/-! ## A125325.P8897044238883893093

`A125327(n)-A014682(A125331(n)-A125327(n))`
-/

namespace A125325.P8897044238883893093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125327 n - A014682 (A125331 n - A125327 n).toNat

end

end A125325.P8897044238883893093

/-! ## A125325.P2053354306227494463

`A000265(A125324(n)+A025012(n))`
-/

namespace A125325.P2053354306227494463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A125324 n + A025012 n).toNat

end

end A125325.P2053354306227494463

/-!
# A125326: Number of base 16 circular n-digit numbers with adjacent digits differing by 3 or less.

The programs for A125326, there is no canonical definition to state claims against.
-/

/-! ## A125326.P11686948281292694211

`A125325(n)+A014682(A125327(n)-A125325(n))`
-/

namespace A125326.P11686948281292694211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125325 n + A014682 (A125327 n - A125325 n).toNat

end

end A125326.P11686948281292694211

/-! ## A125326.P8682882402065559408

`A125327(n)-A014682(A125329(n)-A125327(n))`
-/

namespace A125326.P8682882402065559408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125327 n - A014682 (A125329 n - A125327 n).toNat

end

end A125326.P8682882402065559408

/-!
# A125327: Number of base 17 circular n-digit numbers with adjacent digits differing by 3 or less.

The programs for A125327, there is no canonical definition to state claims against.
-/

/-! ## A125327.P14326841539414922176

`A004277(A025012(n))+A125325(n)-A000038(n)`
-/

namespace A125327.P14326841539414922176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A025012 n).toNat + (A125325 n - A000038 n)

end

end A125327.P14326841539414922176

/-! ## A125327.P11593161674556783466

`A125329(n)-A014682(A125333(n)-A125329(n))`
-/

namespace A125327.P11593161674556783466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125329 n - A014682 (A125333 n - A125329 n).toNat

end

end A125327.P11593161674556783466

/-!
# A125328: Number of base 18 circular n-digit numbers with adjacent digits differing by 3 or less.

The programs for A125328, there is no canonical definition to state claims against.
-/

/-! ## A125328.P4793722957986237164

`A004277(A025012(n))+A125326(n)-A000038(n)`
-/

namespace A125328.P4793722957986237164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A025012 n).toNat + (A125326 n - A000038 n)

end

end A125328.P4793722957986237164

/-! ## A125328.P10014320194784483865

`A125327(n)+A014682(A125327(n)-A125325(n))`
-/

namespace A125328.P10014320194784483865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125327 n + A014682 (A125327 n - A125325 n).toNat

end

end A125328.P10014320194784483865

/-! ## A125328.P14451108023766206768

`A125327(n)+A014682(A125329(n)-A125327(n))`
-/

namespace A125328.P14451108023766206768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125327 n + A014682 (A125329 n - A125327 n).toNat

end

end A125328.P14451108023766206768

/-!
# A125329: Number of base 19 circular n-digit numbers with adjacent digits differing by 3 or less.

The programs for A125329, there is no canonical definition to state claims against.
-/

/-! ## A125329.P18397141373885669243

`A125327(n)+A014682(A125331(n)-A125327(n))`
-/

namespace A125329.P18397141373885669243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125327 n + A014682 (A125331 n - A125327 n).toNat

end

end A125329.P18397141373885669243

/-! ## A125329.P15891283406788244495

`A125333(n)-A014682(A125341(n)-A125333(n))`
-/

namespace A125329.P15891283406788244495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125333 n - A014682 (A125341 n - A125333 n).toNat

end

end A125329.P15891283406788244495

/-!
# A125330: Number of base 20 circular n-digit numbers with adjacent digits differing by 3 or less.

The programs for A125330, there is no canonical definition to state claims against.
-/

/-! ## A125330.P9204902888852177103

`abs(A004277(A025012(n))-A125332(n))`
-/

namespace A125330.P9204902888852177103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A004277 (A025012 n).toNat - A125332 n|

end

end A125330.P9204902888852177103

/-! ## A125330.P2599484580183551235

`A000038(n)+A125332(n)-A004277(A025012(n))`
-/

namespace A125330.P2599484580183551235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n + (A125332 n - A004277 (A025012 n).toNat)

end

end A125330.P2599484580183551235

/-! ## A125330.P7854130205147061179

`A125329(n)+A014682(A125329(n)-A125327(n))`
-/

namespace A125330.P7854130205147061179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125329 n + A014682 (A125329 n - A125327 n).toNat

end

end A125330.P7854130205147061179

/-!
# A125331: Number of base 21 circular n-digit numbers with adjacent digits differing by 3 or less.

The programs for A125331, there is no canonical definition to state claims against.
-/

/-! ## A125331.P8638229164719956220

`A125329(n)+A014682(A125333(n)-A125329(n))`
-/

namespace A125331.P8638229164719956220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125329 n + A014682 (A125333 n - A125329 n).toNat

end

end A125331.P8638229164719956220

/-! ## A125331.P11601737635243058617

`A000265(A125330(n)+A025012(n))`
-/

namespace A125331.P11601737635243058617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A125330 n + A025012 n).toNat

end

end A125331.P11601737635243058617

/-!
# A125332: Number of base 22 circular n-digit numbers with adjacent digits differing by 3 or less.

The programs for A125332, there is no canonical definition to state claims against.
-/

/-! ## A125332.P14924007925289021815

`∏{p}[A025012(n)-A125333(n), #]`
-/

namespace A125332.P14924007925289021815
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025012 n - A125333 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A125332.P14924007925289021815

/-! ## A125332.P8351380462868265800

`A125331(n)+A014682(A125333(n)-A125331(n))`
-/

namespace A125332.P8351380462868265800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125331 n + A014682 (A125333 n - A125331 n).toNat

end

end A125332.P8351380462868265800

/-! ## A125332.P18162852360424870468

`A125333(n)-A014682(A125335(n)-A125333(n))`
-/

namespace A125332.P18162852360424870468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125333 n - A014682 (A125335 n - A125333 n).toNat

end

end A125332.P18162852360424870468

/-!
# A125333: Number of base 23 circular n-digit numbers with adjacent digits differing by 3 or less.

The programs for A125333, there is no canonical definition to state claims against.
-/

/-! ## A125333.P1465546864757135446

`A125331(n)+A014682(A125331(n)-A125327(n))`
-/

namespace A125333.P1465546864757135446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125331 n + A014682 (A125331 n - A125327 n).toNat

end

end A125333.P1465546864757135446

/-! ## A125333.P17475394218984874914

`A125335(n)-A014682(A125339(n)-A125335(n))`
-/

namespace A125333.P17475394218984874914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125335 n - A014682 (A125339 n - A125335 n).toNat

end

end A125333.P17475394218984874914

/-!
# A125334: Number of base 24 circular n-digit numbers with adjacent digits differing by 3 or less.

The programs for A125334, there is no canonical definition to state claims against.
-/

/-! ## A125334.P8555468895776999159

`A004277(A025012(n))+A125332(n)-A000038(n)`
-/

namespace A125334.P8555468895776999159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A025012 n).toNat + (A125332 n - A000038 n)

end

end A125334.P8555468895776999159

/-! ## A125334.P5173460394856896788

`A125331(n)+A014682(A125337(n)-A125331(n))`
-/

namespace A125334.P5173460394856896788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125331 n + A014682 (A125337 n - A125331 n).toNat

end

end A125334.P5173460394856896788

/-! ## A125334.P10486084065142638313

`A125333(n)+A014682(A125333(n)-A125331(n))`
-/

namespace A125334.P10486084065142638313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125333 n + A014682 (A125333 n - A125331 n).toNat

end

end A125334.P10486084065142638313

/-!
# A125335: Number of base 25 circular n-digit numbers with adjacent digits differing by 3 or less.

The programs for A125335, there is no canonical definition to state claims against.
-/

/-! ## A125335.P10361112544045670423

`A125333(n)+A014682(A125333(n)-A125329(n))`
-/

namespace A125335.P10361112544045670423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125333 n + A014682 (A125333 n - A125329 n).toNat

end

end A125335.P10361112544045670423

/-! ## A125335.P17758253403967431766

`A125337(n)-A014682(A125341(n)-A125337(n))`
-/

namespace A125335.P17758253403967431766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125337 n - A014682 (A125341 n - A125337 n).toNat

end

end A125335.P17758253403967431766

/-!
# A125336: Number of base 26 circular n-digit numbers with adjacent digits differing by 3 or less.

The programs for A125336, there is no canonical definition to state claims against.
-/

/-! ## A125336.P4479459052066854504

`∏{p}[A025012(n)-A125337(n), #]`
-/

namespace A125336.P4479459052066854504
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025012 n - A125337 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A125336.P4479459052066854504

/-! ## A125336.P6954511986600347697

`abs(A004277(A025012(n))-A125338(n))`
-/

namespace A125336.P6954511986600347697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A004277 (A025012 n).toNat - A125338 n|

end

end A125336.P6954511986600347697

/-! ## A125336.P7625117023834890714

`A000038(n)+A125338(n)-A004277(A025012(n))`
-/

namespace A125336.P7625117023834890714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n + (A125338 n - A004277 (A025012 n).toNat)

end

end A125336.P7625117023834890714

/-!
# A125337: Number of base 27 circular n-digit numbers with adjacent digits differing by 3 or less.

The programs for A125337, there is no canonical definition to state claims against.
-/

/-! ## A125337.P7864012178111687342

`A125333(n)+A014682(A125341(n)-A125333(n))`
-/

namespace A125337.P7864012178111687342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125333 n + A014682 (A125341 n - A125333 n).toNat

end

end A125337.P7864012178111687342

/-! ## A125337.P13292086421019104678

`A125335(n)+A014682(A125339(n)-A125335(n))`
-/

namespace A125337.P13292086421019104678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125335 n + A014682 (A125339 n - A125335 n).toNat

end

end A125337.P13292086421019104678

/-! ## A125337.P942628804762782128

`A125338(n)-A014682(A125340(n)-A125338(n))`
-/

namespace A125337.P942628804762782128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125338 n - A014682 (A125340 n - A125338 n).toNat

end

end A125337.P942628804762782128

/-!
# A125338: Number of base 28 circular n-digit numbers with adjacent digits differing by 3 or less.

The programs for A125338, there is no canonical definition to state claims against.
-/

/-! ## A125338.P13761393856726804123

`A125335(n)+A014682(A125341(n)-A125335(n))`
-/

namespace A125338.P13761393856726804123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125335 n + A014682 (A125341 n - A125335 n).toNat

end

end A125338.P13761393856726804123

/-! ## A125338.P12387269002124251335

`A125337(n)+A014682(A125339(n)-A125337(n))`
-/

namespace A125338.P12387269002124251335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125337 n + A014682 (A125339 n - A125337 n).toNat

end

end A125338.P12387269002124251335

/-! ## A125338.P11475349086126805475

`A125339(n)-A014682(A125341(n)-A125339(n))`
-/

namespace A125338.P11475349086126805475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125339 n - A014682 (A125341 n - A125339 n).toNat

end

end A125338.P11475349086126805475

/-!
# A125339: Number of base 29 circular n-digit numbers with adjacent digits differing by 3 or less.

The programs for A125339, there is no canonical definition to state claims against.
-/

/-! ## A125339.P4477743776272692807

`A125337(n)+A014682(A125341(n)-A125337(n))`
-/

namespace A125339.P4477743776272692807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125337 n + A014682 (A125341 n - A125337 n).toNat

end

end A125339.P4477743776272692807

/-! ## A125339.P18122642512582765955

`A125338(n)+A014682(A125340(n)-A125338(n))`
-/

namespace A125339.P18122642512582765955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125338 n + A014682 (A125340 n - A125338 n).toNat

end

end A125339.P18122642512582765955

/-!
# A125340: Number of base 30 circular n-digit numbers with adjacent digits differing by 3 or less.

The programs for A125340, there is no canonical definition to state claims against.
-/

/-! ## A125340.P1696271298873159584

`A004277(A025012(n))+A125338(n)-A000038(n)`
-/

namespace A125340.P1696271298873159584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A025012 n).toNat + (A125338 n - A000038 n)

end

end A125340.P1696271298873159584

/-! ## A125340.P11403437976427410751

`A125337(n)+A014682(A125337(n)-A125331(n))`
-/

namespace A125340.P11403437976427410751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125337 n + A014682 (A125337 n - A125331 n).toNat

end

end A125340.P11403437976427410751

/-! ## A125340.P4945506636516358517

`A125339(n)+A014682(A125339(n)-A125337(n))`
-/

namespace A125340.P4945506636516358517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125339 n + A014682 (A125339 n - A125337 n).toNat

end

end A125340.P4945506636516358517

/-!
# A125341: Number of base 31 circular n-digit numbers with adjacent digits differing by 3 or less.

The programs for A125341, there is no canonical definition to state claims against.
-/

/-! ## A125341.P14757478415795032567

`A125339(n)+A014682(A125339(n)-A125335(n))`
-/

namespace A125341.P14757478415795032567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125339 n + A014682 (A125339 n - A125335 n).toNat

end

end A125341.P14757478415795032567

/-! ## A125341.P16047289902324429647

`A125340(n)+A014682(A125340(n)-A125338(n))`
-/

namespace A125341.P16047289902324429647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125340 n + A014682 (A125340 n - A125338 n).toNat

end

end A125341.P16047289902324429647

/-!
# A125342: Number of base 32 circular n-digit numbers with adjacent digits differing by 3 or less.

The programs for A125342, there is no canonical definition to state claims against.
-/

/-! ## A125342.P2233354307273599346

`A125341(n)+A014682(A125341(n)-A125339(n))`
-/

namespace A125342.P2233354307273599346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125341 n + A014682 (A125341 n - A125339 n).toNat

end

end A125342.P2233354307273599346

/-!
# A125343: Number of base 6 circular n-digit numbers with adjacent digits differing by 4 or less.

The programs for A125343, the canonical program `A125343.P16521255945650297259` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A125343 has offset 0).

The definition of A125343 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A125343.P16521255945650297259

`6*a(n-1)-a(n-2)-4*a(n-3)` with `a(0)=1, a(1)=6, a(2)=34, a(3)=186`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A125343

/-- `6*a(n-1)-a(n-2)-4*a(n-3)` -/
def P16521255945650297259.Spec : Prop :=
  ∀ n, P16521255945650297259.a n = A125343 n

theorem P16521255945650297259.correct : P16521255945650297259.Spec := by
  intro n
  simp only [A125343]

end A125343

/-!
# A125344: Number of base 7 circular n-digit numbers with adjacent digits differing by 4 or less.

The programs for A125344, there is no canonical definition to state claims against.
-/

/-! ## A125344.P2806429761869146667

`A387007(n)+A374633(A026550(n))`
-/

namespace A125344.P2806429761869146667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387007 n + A374633 (A026550 n).toNat

end

end A125344.P2806429761869146667

/-!
# A125345: Number of base 8 circular n-digit numbers with adjacent digits differing by 4 or less.

The programs for A125345, there is no canonical definition to state claims against.
-/

/-! ## A125345.P10113633865086451661

`A125347(n)-A014682(A125351(n)-A125347(n))`
-/

namespace A125345.P10113633865086451661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125347 n - A014682 (A125351 n - A125347 n).toNat

end

end A125345.P10113633865086451661

/-! ## A125345.P15571117203181689658

`A125355(n)%(10*A028310(A125355(n)-A125354(n)))`
-/

namespace A125345.P15571117203181689658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A125355 n) (10 * A028310 (A125355 n - A125354 n).toNat)

end

end A125345.P15571117203181689658

/-!
# A125346: Number of base 9 circular n-digit numbers with adjacent digits differing by 4 or less.

The programs for A125346, there is no canonical definition to state claims against.
-/

/-! ## A125346.P8564468497212270106

`A000265(A125345(n)+A025014(n))`
-/

namespace A125346.P8564468497212270106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A125345 n + A025014 n).toNat

end

end A125346.P8564468497212270106

/-! ## A125346.P1386904910946083517

`A093178(A125345(n)+A025014(n))`
-/

namespace A125346.P1386904910946083517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093178 (A125345 n + A025014 n).toNat

end

end A125346.P1386904910946083517

/-!
# A125347: Number of base 10 circular n-digit numbers with adjacent digits differing by 4 or less.

The programs for A125347, there is no canonical definition to state claims against.
-/

/-! ## A125347.P17811655583148018607

`A014682(A125348(n)+A125346(n))`
-/

namespace A125347.P17811655583148018607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A125348 n + A125346 n).toNat

end

end A125347.P17811655583148018607

/-! ## A125347.P10900236336845916466

`A014682(A125349(n)+A125345(n))`
-/

namespace A125347.P10900236336845916466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A125349 n + A125345 n).toNat

end

end A125347.P10900236336845916466

/-!
# A125348: Number of base 11 circular n-digit numbers with adjacent digits differing by 4 or less.

The programs for A125348, there is no canonical definition to state claims against.
-/

/-! ## A125348.P5159615926959801208

`A000265(A125347(n)+A025014(n))`
-/

namespace A125348.P5159615926959801208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A125347 n + A025014 n).toNat

end

end A125348.P5159615926959801208

/-! ## A125348.P2491023477266013481

`A000265(A125349(n)+A125347(n))`
-/

namespace A125348.P2491023477266013481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A125349 n + A125347 n).toNat

end

end A125348.P2491023477266013481

/-!
# A125349: Number of base 12 circular n-digit numbers with adjacent digits differing by 4 or less.

The programs for A125349, there is no canonical definition to state claims against.
-/

/-! ## A125349.P11903429860586395747

`A125350(n)-A014682(A125352(n)-A125350(n))`
-/

namespace A125349.P11903429860586395747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125350 n - A014682 (A125352 n - A125350 n).toNat

end

end A125349.P11903429860586395747

/-! ## A125349.P18043750116895862757

`A014682(A125350(n)+A125348(n))`
-/

namespace A125349.P18043750116895862757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A125350 n + A125348 n).toNat

end

end A125349.P18043750116895862757

/-!
# A125350: Number of base 13 circular n-digit numbers with adjacent digits differing by 4 or less.

The programs for A125350, there is no canonical definition to state claims against.
-/

/-! ## A125350.P1085611023821204348

`∏{p}[A025014(n)-A125351(n), #]`
-/

namespace A125350.P1085611023821204348
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025014 n - A125351 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A125350.P1085611023821204348

/-! ## A125350.P5843508169203335111

`A000265(A125349(n)+A025014(n))`
-/

namespace A125350.P5843508169203335111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A125349 n + A025014 n).toNat

end

end A125350.P5843508169203335111

/-!
# A125351: Number of base 14 circular n-digit numbers with adjacent digits differing by 4 or less.

The programs for A125351, there is no canonical definition to state claims against.
-/

/-! ## A125351.P16923016278419213094

`∏{p}[A025014(n)-A125352(n), #]`
-/

namespace A125351.P16923016278419213094
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025014 n - A125352 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A125351.P16923016278419213094

/-! ## A125351.P11074971794059981415

`A125350(n)+A014682(A125352(n)-A125350(n))`
-/

namespace A125351.P11074971794059981415
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125350 n + A014682 (A125352 n - A125350 n).toNat

end

end A125351.P11074971794059981415

/-! ## A125351.P5534365477370896551

`A125352(n)-A014682(A125354(n)-A125352(n))`
-/

namespace A125351.P5534365477370896551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125352 n - A014682 (A125354 n - A125352 n).toNat

end

end A125351.P5534365477370896551

/-!
# A125352: Number of base 15 circular n-digit numbers with adjacent digits differing by 4 or less.

The programs for A125352, there is no canonical definition to state claims against.
-/

/-! ## A125352.P17148295260399342418

`A000265(A125351(n)+A025014(n))`
-/

namespace A125352.P17148295260399342418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A125351 n + A025014 n).toNat

end

end A125352.P17148295260399342418

/-! ## A125352.P579859732432455855

`A000265(A125353(n)+A125351(n))`
-/

namespace A125352.P579859732432455855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A125353 n + A125351 n).toNat

end

end A125352.P579859732432455855

/-!
# A125353: Number of base 16 circular n-digit numbers with adjacent digits differing by 4 or less.

The programs for A125353, there is no canonical definition to state claims against.
-/

/-! ## A125353.P8086247434340511503

`A125352(n)+A014682(A125352(n)-A125350(n))`
-/

namespace A125353.P8086247434340511503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125352 n + A014682 (A125352 n - A125350 n).toNat

end

end A125353.P8086247434340511503

/-! ## A125353.P3065401083972670699

`A125352(n)+A014682(A125354(n)-A125352(n))`
-/

namespace A125353.P3065401083972670699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125352 n + A014682 (A125354 n - A125352 n).toNat

end

end A125353.P3065401083972670699

/-! ## A125353.P13281471981948694588

`A125354(n)-A014682(A125356(n)-A125354(n))`
-/

namespace A125353.P13281471981948694588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125354 n - A014682 (A125356 n - A125354 n).toNat

end

end A125353.P13281471981948694588

/-!
# A125354: Number of base 17 circular n-digit numbers with adjacent digits differing by 4 or less.

The programs for A125354, there is no canonical definition to state claims against.
-/

/-! ## A125354.P2966079322086617898

`A000265(A125353(n)+A025014(n))`
-/

namespace A125354.P2966079322086617898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A125353 n + A025014 n).toNat

end

end A125354.P2966079322086617898

/-! ## A125354.P661730232872982736

`A000265(A125355(n)+A125353(n))`
-/

namespace A125354.P661730232872982736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A125355 n + A125353 n).toNat

end

end A125354.P661730232872982736

/-!
# A125355: Number of base 18 circular n-digit numbers with adjacent digits differing by 4 or less.

The programs for A125355, there is no canonical definition to state claims against.
-/

/-! ## A125355.P4624724097669645172

`A125354(n)+A014682(A125354(n)-A125352(n))`
-/

namespace A125355.P4624724097669645172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125354 n + A014682 (A125354 n - A125352 n).toNat

end

end A125355.P4624724097669645172

/-! ## A125355.P8105871130558198427

`A125354(n)+A014682(A125356(n)-A125354(n))`
-/

namespace A125355.P8105871130558198427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125354 n + A014682 (A125356 n - A125354 n).toNat

end

end A125355.P8105871130558198427

/-!
# A125356: Number of base 19 circular n-digit numbers with adjacent digits differing by 4 or less.

The programs for A125356, there is no canonical definition to state claims against.
-/

/-! ## A125356.P5878173239139357818

`A000265(A213652((2*n)²+n))+A125355(n)*A178334(n)`
-/

namespace A125356.P5878173239139357818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A213652 ((2 * n) ^ 2 + n)).toNat + A125355 n * A178334 n

end

end A125356.P5878173239139357818

/-! ## A125356.P1611128866842526441

`A000265(A125355(n)+A025014(n))`
-/

namespace A125356.P1611128866842526441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A125355 n + A025014 n).toNat

end

end A125356.P1611128866842526441

/-!
# A125357: Number of base 20 circular n-digit numbers with adjacent digits differing by 4 or less.

The programs for A125357, there is no canonical definition to state claims against.
-/

/-! ## A125357.P11463177917049299449

`A125356(n)+A014682(A125356(n)-A125354(n))`
-/

namespace A125357.P11463177917049299449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125356 n + A014682 (A125356 n - A125354 n).toNat

end

end A125357.P11463177917049299449

/-! ## A125357.P1239868684854566872

`A125358(n)-A014682(A125360(n)-A125358(n))`
-/

namespace A125357.P1239868684854566872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125358 n - A014682 (A125360 n - A125358 n).toNat

end

end A125357.P1239868684854566872

/-!
# A125358: Number of base 21 circular n-digit numbers with adjacent digits differing by 4 or less.

The programs for A125358, there is no canonical definition to state claims against.
-/

/-! ## A125358.P17226267833432996407

`A000265(A125357(n)+A025014(n))`
-/

namespace A125358.P17226267833432996407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A125357 n + A025014 n).toNat

end

end A125358.P17226267833432996407

/-! ## A125358.P12702662673525683904

`A000265(A213652((2*n)²+n)+A125357(n))`
-/

namespace A125358.P12702662673525683904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A213652 ((2 * n) ^ 2 + n) + A125357 n).toNat

end

end A125358.P12702662673525683904

/-!
# A125359: Number of base 22 circular n-digit numbers with adjacent digits differing by 4 or less.

The programs for A125359, there is no canonical definition to state claims against.
-/

/-! ## A125359.P7937124105372576837

`A125358(n)+A014682(A125360(n)-A125358(n))`
-/

namespace A125359.P7937124105372576837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125358 n + A014682 (A125360 n - A125358 n).toNat

end

end A125359.P7937124105372576837

/-! ## A125359.P5256723678138730590

`A125360(n)-A014682(A125362(n)-A125360(n))`
-/

namespace A125359.P5256723678138730590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125360 n - A014682 (A125362 n - A125360 n).toNat

end

end A125359.P5256723678138730590

/-!
# A125360: Number of base 23 circular n-digit numbers with adjacent digits differing by 4 or less.

The programs for A125360, there is no canonical definition to state claims against.
-/

/-! ## A125360.P1359739058283305098

`(A125364(n)+A125356(n))/A020639(A003500(n))`
-/

namespace A125360.P1359739058283305098
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A125364 n + A125356 n : ℚ) / (A020639 (A003500 n).toNat : ℚ)

end

end A125360.P1359739058283305098

/-! ## A125360.P392143870703627246

`∏{p}[A025014(n)-A125361(n), #]`
-/

namespace A125360.P392143870703627246
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025014 n - A125361 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A125360.P392143870703627246

/-!
# A125361: Number of base 24 circular n-digit numbers with adjacent digits differing by 4 or less.

The programs for A125361, there is no canonical definition to state claims against.
-/

/-! ## A125361.P12866016755413841075

`A125360(n)+A014682(A125360(n)-A125358(n))`
-/

namespace A125361.P12866016755413841075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125360 n + A014682 (A125360 n - A125358 n).toNat

end

end A125361.P12866016755413841075

/-! ## A125361.P1071316659875567459

`A125360(n)+A014682(A125362(n)-A125360(n))`
-/

namespace A125361.P1071316659875567459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125360 n + A014682 (A125362 n - A125360 n).toNat

end

end A125361.P1071316659875567459

/-!
# A125362: Number of base 25 circular n-digit numbers with adjacent digits differing by 4 or less.

The programs for A125362, there is no canonical definition to state claims against.
-/

/-! ## A125362.P18174611736221837741

`A000265(A125361(n)+A025014(n))`
-/

namespace A125362.P18174611736221837741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A125361 n + A025014 n).toNat

end

end A125362.P18174611736221837741

/-! ## A125362.P6597630142248837555

`2*A000265(A125363(n))-A025014(n)`
-/

namespace A125362.P6597630142248837555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000265 (A125363 n).toNat - A025014 n

end

end A125362.P6597630142248837555

/-!
# A125363: Number of base 26 circular n-digit numbers with adjacent digits differing by 4 or less.

The programs for A125363, there is no canonical definition to state claims against.
-/

/-! ## A125363.P8361271812193929220

`∏{p}[A025014(n)-A125364(n), #]`
-/

namespace A125363.P8361271812193929220
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025014 n - A125364 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A125363.P8361271812193929220

/-! ## A125363.P13467091829488968614

`A125362(n)+A014682(A125362(n)-A125360(n))`
-/

namespace A125363.P13467091829488968614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125362 n + A014682 (A125362 n - A125360 n).toNat

end

end A125363.P13467091829488968614

/-! ## A125363.P7245592699468472772

`A125364(n)-A014682(A125366(n)-A125364(n))`
-/

namespace A125363.P7245592699468472772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125364 n - A014682 (A125366 n - A125364 n).toNat

end

end A125363.P7245592699468472772

/-!
# A125364: Number of base 27 circular n-digit numbers with adjacent digits differing by 4 or less.

The programs for A125364, there is no canonical definition to state claims against.
-/

/-! ## A125364.P11853349521365160716

`A000265(A125363(n)+A025014(n))`
-/

namespace A125364.P11853349521365160716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A125363 n + A025014 n).toNat

end

end A125364.P11853349521365160716

/-! ## A125364.P9200035456630535843

`A000265(2*A125356(n)-A125348(n))`
-/

namespace A125364.P9200035456630535843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (2 * A125356 n - A125348 n).toNat

end

end A125364.P9200035456630535843

/-!
# A125365: Number of base 28 circular n-digit numbers with adjacent digits differing by 4 or less.

The programs for A125365, there is no canonical definition to state claims against.
-/

/-! ## A125365.P5645272920207743027

`A125364(n)+A014682(A125366(n)-A125364(n))`
-/

namespace A125365.P5645272920207743027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125364 n + A014682 (A125366 n - A125364 n).toNat

end

end A125365.P5645272920207743027

/-!
# A125366: Number of base 29 circular n-digit numbers with adjacent digits differing by 4 or less.

The programs for A125366, there is no canonical definition to state claims against.
-/

/-! ## A125366.P14750966885144814731

`A000265(A125365(n)+A025014(n))`
-/

namespace A125366.P14750966885144814731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A125365 n + A025014 n).toNat

end

end A125366.P14750966885144814731

/-! ## A125366.P17795418242907145286

`A000265(A213652((2*n)²+n)+A125365(n))`
-/

namespace A125366.P17795418242907145286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A213652 ((2 * n) ^ 2 + n) + A125365 n).toNat

end

end A125366.P17795418242907145286

/-!
# A125367: Number of base 30 circular n-digit numbers with adjacent digits differing by 4 or less.

The programs for A125367, there is no canonical definition to state claims against.
-/

/-! ## A125367.P8486940684690906562

`A125366(n)+A014682(A125366(n)-A125364(n))`
-/

namespace A125367.P8486940684690906562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125366 n + A014682 (A125366 n - A125364 n).toNat

end

end A125367.P8486940684690906562

/-! ## A125367.P226809205996357277

`2*A000265(A125365(n)+A025014(n))-A125365(n)`
-/

namespace A125367.P226809205996357277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000265 (A125365 n + A025014 n).toNat - A125365 n

end

end A125367.P226809205996357277

/-!
# A125368: Number of base 31 circular n-digit numbers with adjacent digits differing by 4 or less.

The programs for A125368, there is no canonical definition to state claims against.
-/

/-! ## A125368.P11603745702825681378

`A000265(A125367(n)+A025014(n))`
-/

namespace A125368.P11603745702825681378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A125367 n + A025014 n).toNat

end

end A125368.P11603745702825681378

/-!
# A125369: Number of base 32 circular n-digit numbers with adjacent digits differing by 4 or less.

The programs for A125369, there is no canonical definition to state claims against.
-/

/-! ## A125369.P15694467519215422499

`A004277(A125358(n))-A125347(n)`
-/

namespace A125369.P15694467519215422499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A125358 n).toNat - A125347 n

end

end A125369.P15694467519215422499

/-!
# A125370: Number of base 7 circular n-digit numbers with adjacent digits differing by 5 or less.

The programs for A125370, the canonical program `A125370.P16451900473567272590` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A125370 has offset 0).

The definition of A125370 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A125370.P16451900473567272590

`7*a(n-1)-a(n-2)-5*a(n-3)` with `a(0)=1, a(1)=7, a(2)=47, a(3)=307`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A125370

/-- `7*a(n-1)-a(n-2)-5*a(n-3)` -/
def P16451900473567272590.Spec : Prop :=
  ∀ n, P16451900473567272590.a n = A125370 n

theorem P16451900473567272590.correct : P16451900473567272590.Spec := by
  intro n
  simp only [A125370]

end A125370

/-!
# A125371: Number of base 8 circular n-digit numbers with adjacent digits differing by 5 or less.

The programs for A125371, there is no canonical definition to state claims against.
-/

/-! ## A125371.P12341273753877568501

`A061885(A178792(n))-A053121(n)`
-/

namespace A125371.P12341273753877568501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061885 (A178792 n).toNat - A053121 n

end

end A125371.P12341273753877568501

/-!
# A125372: Number of base-9 circular n-digit numbers with adjacent digits differing by 5 or less.

The programs for A125372, there is no canonical definition to state claims against.
-/

/-! ## A125372.P7530894310934624138

`A313231(A111546(n)-A007318(n))`
-/

namespace A125372.P7530894310934624138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313231 (A111546 n - A007318 n).toNat

end

end A125372.P7530894310934624138

/-!
# A125373: Number of base 10 circular n-digit numbers with adjacent digits differing by 5 or less.

The programs for A125373, there is no canonical definition to state claims against.
-/

/-! ## A125373.P17955769133922801192

`A125374(n)-A273943(A125376(n)-A125374(n))`
-/

namespace A125373.P17955769133922801192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125374 n - A273943 (A125376 n - A125374 n).toNat

end

end A125373.P17955769133922801192

/-! ## A125373.P166791433905224397

`2*A000265(2*A125378(n)-A125382(n))-A125375(n)`
-/

namespace A125373.P166791433905224397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000265 (2 * A125378 n - A125382 n).toNat - A125375 n

end

end A125373.P166791433905224397

/-!
# A125374: Number of base 11 circular n-digit numbers with adjacent digits differing by 5 or less.

The programs for A125374, there is no canonical definition to state claims against.
-/

/-! ## A125374.P12325586814209810836

`A000265(A125375(n)+A125373(n))`
-/

namespace A125374.P12325586814209810836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A125375 n + A125373 n).toNat

end

end A125374.P12325586814209810836

/-! ## A125374.P3451010390096609912

`A273943(A125375(n)+A125373(n))`
-/

namespace A125374.P3451010390096609912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273943 (A125375 n + A125373 n).toNat

end

end A125374.P3451010390096609912

/-!
# A125375: Number of base 12 circular n-digit numbers with adjacent digits differing by 5 or less.

The programs for A125375, there is no canonical definition to state claims against.
-/

/-! ## A125375.P7681757238449624623

`A273943(A125376(n)-A125374(n))+A125374(n)`
-/

namespace A125375.P7681757238449624623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273943 (A125376 n - A125374 n).toNat + A125374 n

end

end A125375.P7681757238449624623

/-! ## A125375.P3018677150244456819

`2*A000265(2*A125378(n)-A125382(n))-A125373(n)`
-/

namespace A125375.P3018677150244456819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000265 (2 * A125378 n - A125382 n).toNat - A125373 n

end

end A125375.P3018677150244456819

/-!
# A125376: Number of base 13 circular n-digit numbers with adjacent digits differing by 5 or less.

The programs for A125376, there is no canonical definition to state claims against.
-/

/-! ## A125376.P3376212749202261583

`A000265(2*A125384(n)-A125392(n))`
-/

namespace A125376.P3376212749202261583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (2 * A125384 n - A125392 n).toNat

end

end A125376.P3376212749202261583

/-! ## A125376.P1521151583731409786

`A000265(A125384(n)+A125384(n)-A125392(n))`
-/

namespace A125376.P1521151583731409786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A125384 n + (A125384 n - A125392 n)).toNat

end

end A125376.P1521151583731409786

/-!
# A125377: Number of base 14 circular n-digit numbers with adjacent digits differing by 5 or less.

The programs for A125377, there is no canonical definition to state claims against.
-/

/-! ## A125377.P8218414055644751907

`A273943(A125376(n)-A125374(n))+A125376(n)`
-/

namespace A125377.P8218414055644751907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273943 (A125376 n - A125374 n).toNat + A125376 n

end

end A125377.P8218414055644751907

/-! ## A125377.P8296334390301078275

`A273943(A125378(n)-A125376(n))+A125376(n)`
-/

namespace A125377.P8296334390301078275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273943 (A125378 n - A125376 n).toNat + A125376 n

end

end A125377.P8296334390301078275

/-!
# A125378: Number of base 15 circular n-digit numbers with adjacent digits differing by 5 or less.

The programs for A125378, there is no canonical definition to state claims against.
-/

/-! ## A125378.P11096309261595299884

`(A125376(n)+A000265(A125380(n)))/2`
-/

namespace A125378.P11096309261595299884
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A125376 n + A000265 (A125380 n).toNat : ℚ) / 2

end

end A125378.P11096309261595299884

/-!
# A125379: Number of base 16 circular n-digit numbers with adjacent digits differing by 5 or less.

The programs for A125379, there is no canonical definition to state claims against.
-/

/-! ## A125379.P14809864574376686908

`A273943(A125378(n)-A125376(n))+A125378(n)`
-/

namespace A125379.P14809864574376686908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273943 (A125378 n - A125376 n).toNat + A125378 n

end

end A125379.P14809864574376686908

/-! ## A125379.P9106014535972539198

`A273943(A125380(n)-A125378(n))+A125378(n)`
-/

namespace A125379.P9106014535972539198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273943 (A125380 n - A125378 n).toNat + A125378 n

end

end A125379.P9106014535972539198

/-!
# A125380: Number of base 17 circular n-digit numbers with adjacent digits differing by 5 or less.

The programs for A125380, there is no canonical definition to state claims against.
-/

/-! ## A125380.P5025510860013754642

`A000265((A125382(n)+A125378(n))/2)`
-/

namespace A125380.P5025510860013754642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (SequenceMachineLib.roundAway ((A125382 n + A125378 n : ℚ) / 2)).toNat

end

end A125380.P5025510860013754642

/-!
# A125381: Number of base 18 circular n-digit numbers with adjacent digits differing by 5 or less.

The programs for A125381, there is no canonical definition to state claims against.
-/

/-! ## A125381.P10334911544906746823

`A273943(A125380(n)-A125378(n))+A125380(n)`
-/

namespace A125381.P10334911544906746823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273943 (A125380 n - A125378 n).toNat + A125380 n

end

end A125381.P10334911544906746823

/-! ## A125381.P2333763105454889831

`A273943(A125382(n)-A125380(n))+A125380(n)`
-/

namespace A125381.P2333763105454889831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273943 (A125382 n - A125380 n).toNat + A125380 n

end

end A125381.P2333763105454889831

/-!
# A125382: Number of base 19 circular n-digit numbers with adjacent digits differing by 5 or less.

The programs for A125382, there is no canonical definition to state claims against.
-/

/-! ## A125382.P4858082160451611586

`2*A125378(n)-A273943(A125375(n)+A125373(n))`
-/

namespace A125382.P4858082160451611586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A125378 n - A273943 (A125375 n + A125373 n).toNat

end

end A125382.P4858082160451611586

/-!
# A125383: Number of base 20 circular n-digit numbers with adjacent digits differing by 5 or less.

The programs for A125383, there is no canonical definition to state claims against.
-/

/-! ## A125383.P11066822424237431316

`A273943(A125382(n)-A125380(n))+A125382(n)`
-/

namespace A125383.P11066822424237431316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273943 (A125382 n - A125380 n).toNat + A125382 n

end

end A125383.P11066822424237431316

/-! ## A125383.P1242212535747085027

`A273943(A125384(n)-A125382(n))+A125382(n)`
-/

namespace A125383.P1242212535747085027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273943 (A125384 n - A125382 n).toNat + A125382 n

end

end A125383.P1242212535747085027

/-!
# A125384: Number of base 21 circular n-digit numbers with adjacent digits differing by 5 or less.

The programs for A125384, there is no canonical definition to state claims against.
-/

/-! ## A125384.P8225006018515223906

`2*A125380(n)-A000265(A125376(n))`
-/

namespace A125384.P8225006018515223906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A125380 n - A000265 (A125376 n).toNat

end

end A125384.P8225006018515223906

/-! ## A125384.P15895214700904443116

`2*A125382(n)-A000265((A125382(n)+A125378(n))/2)`
-/

namespace A125384.P15895214700904443116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A125382 n - A000265 (SequenceMachineLib.roundAway ((A125382 n + A125378 n : ℚ) / 2)).toNat

end

end A125384.P15895214700904443116

/-!
# A125385: Number of base 22 circular n-digit numbers with adjacent digits differing by 5 or less.

The programs for A125385, there is no canonical definition to state claims against.
-/

/-! ## A125385.P18231867044270985274

`A273943(A125384(n)-A125382(n))+A125384(n)`
-/

namespace A125385.P18231867044270985274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273943 (A125384 n - A125382 n).toNat + A125384 n

end

end A125385.P18231867044270985274

/-! ## A125385.P9870429141236983660

`A273943(A125386(n)-A125384(n))+A125384(n)`
-/

namespace A125385.P9870429141236983660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273943 (A125386 n - A125384 n).toNat + A125384 n

end

end A125385.P9870429141236983660

/-!
# A125386: Number of base 23 circular n-digit numbers with adjacent digits differing by 5 or less.

The programs for A125386, there is no canonical definition to state claims against.
-/

/-! ## A125386.P9669017934563378127

`2*A125382(n)-A000265(A125378(n))`
-/

namespace A125386.P9669017934563378127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A125382 n - A000265 (A125378 n).toNat

end

end A125386.P9669017934563378127

/-!
# A125387: Number of base 24 circular n-digit numbers with adjacent digits differing by 5 or less.

The programs for A125387, there is no canonical definition to state claims against.
-/

/-! ## A125387.P16623770112006915006

`A273943(A125386(n)-A125384(n))+A125386(n)`
-/

namespace A125387.P16623770112006915006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273943 (A125386 n - A125384 n).toNat + A125386 n

end

end A125387.P16623770112006915006

/-! ## A125387.P10721726238708130113

`A273943(A125388(n)-A125386(n))+A125386(n)`
-/

namespace A125387.P10721726238708130113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273943 (A125388 n - A125386 n).toNat + A125386 n

end

end A125387.P10721726238708130113

/-!
# A125388: Number of base 25 circular n-digit numbers with adjacent digits differing by 5 or less.

The programs for A125388, there is no canonical definition to state claims against.
-/

/-! ## A125388.P14129885147812063022

`A000265(A125392(n)+A125384(n))`
-/

namespace A125388.P14129885147812063022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A125392 n + A125384 n).toNat

end

end A125388.P14129885147812063022

/-!
# A125389: Number of base 26 circular n-digit numbers with adjacent digits differing by 5 or less.

The programs for A125389, there is no canonical definition to state claims against.
-/

/-! ## A125389.P3722079705028670244

`A273943(A125388(n)-A125386(n))+A125388(n)`
-/

namespace A125389.P3722079705028670244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273943 (A125388 n - A125386 n).toNat + A125388 n

end

end A125389.P3722079705028670244

/-! ## A125389.P11653737819186959781

`A273943(A125390(n)-A125388(n))+A125388(n)`
-/

namespace A125389.P11653737819186959781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273943 (A125390 n - A125388 n).toNat + A125388 n

end

end A125389.P11653737819186959781

/-!
# A125390: Number of base 27 circular n-digit numbers with adjacent digits differing by 5 or less.

The programs for A125390, there is no canonical definition to state claims against.
-/

/-! ## A125390.P17109079052543550858

`2*A125382(n)-A273943(A125375(n)+A125373(n))`
-/

namespace A125390.P17109079052543550858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A125382 n - A273943 (A125375 n + A125373 n).toNat

end

end A125390.P17109079052543550858

/-! ## A125390.P5598478317902372217

`2*A125382(n)-A000265(2*A125378(n)-A125382(n))`
-/

namespace A125390.P5598478317902372217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A125382 n - A000265 (2 * A125378 n - A125382 n).toNat

end

end A125390.P5598478317902372217

/-!
# A125391: Number of base 28 circular n-digit numbers with adjacent digits differing by 5 or less.

The programs for A125391, there is no canonical definition to state claims against.
-/

/-! ## A125391.P567516638885711282

`A273943(A125390(n)-A125388(n))+A125390(n)`
-/

namespace A125391.P567516638885711282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273943 (A125390 n - A125388 n).toNat + A125390 n

end

end A125391.P567516638885711282

/-! ## A125391.P12444900649493829100

`A273943(A125392(n)-A125390(n))+A125390(n)`
-/

namespace A125391.P12444900649493829100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273943 (A125392 n - A125390 n).toNat + A125390 n

end

end A125391.P12444900649493829100

/-!
# A125392: Number of base 29 circular n-digit numbers with adjacent digits differing by 5 or less.

The programs for A125392, there is no canonical definition to state claims against.
-/

/-! ## A125392.P9512099450575750836

`A000265(A125393(n)+A125391(n))`
-/

namespace A125392.P9512099450575750836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A125393 n + A125391 n).toNat

end

end A125392.P9512099450575750836

/-!
# A125393: Number of base 30 circular n-digit numbers with adjacent digits differing by 5 or less.

The programs for A125393, there is no canonical definition to state claims against.
-/

/-! ## A125393.P4696238307667193631

`A273943(A125392(n)-A125390(n))+A125392(n)`
-/

namespace A125393.P4696238307667193631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273943 (A125392 n - A125390 n).toNat + A125392 n

end

end A125393.P4696238307667193631

/-! ## A125393.P25547552125658796

`A273943(A125394(n)-A125392(n))+A125392(n)`
-/

namespace A125393.P25547552125658796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273943 (A125394 n - A125392 n).toNat + A125392 n

end

end A125393.P25547552125658796

/-!
# A125394: Number of base 31 circular n-digit numbers with adjacent digits differing by 5 or less.

The programs for A125394, there is no canonical definition to state claims against.
-/

/-! ## A125394.P9233566539521249657

`A000265(A125395(n)+A125393(n))`
-/

namespace A125394.P9233566539521249657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A125395 n + A125393 n).toNat

end

end A125394.P9233566539521249657

/-!
# A125395: Number of base 32 circular n-digit numbers with adjacent digits differing by 5 or less.

The programs for A125395, there is no canonical definition to state claims against.
-/

/-! ## A125395.P17426503834130909854

`A273943(A125394(n)-A125392(n))+A125394(n)`
-/

namespace A125395.P17426503834130909854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273943 (A125394 n - A125392 n).toNat + A125394 n

end

end A125395.P17426503834130909854

/-!
# A125396: Number of base 8 circular n-digit numbers with adjacent digits differing by 6 or less.

The programs for A125396, the canonical program `A125396.P3209054951522511781` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A125396 has offset 0).

The definition of A125396 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A125396.P3209054951522511781

`8*a(n-1)-a(n-2)-6*a(n-3)` with `a(0)=1, a(1)=8, a(2)=62, a(3)=470`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A125396

/-- `8*a(n-1)-a(n-2)-6*a(n-3)` -/
def P3209054951522511781.Spec : Prop :=
  ∀ n, P3209054951522511781.a n = A125396 n

theorem P3209054951522511781.correct : P3209054951522511781.Spec := by
  intro n
  simp only [A125396]

end A125396

/-!
# A125397: Number of base 9 circular n-digit numbers with adjacent digits differing by 6 or less.

The programs for A125397, there is no canonical definition to state claims against.
-/

/-! ## A125397.P9176078881649250715

`or(A003951(n), A004525(A007018(n)))`
-/

namespace A125397.P9176078881649250715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A003951 n) (A004525 (A007018 n).toNat)

end

end A125397.P9176078881649250715

/-!
# A125398: Number of base 10 circular n-digit numbers with adjacent digits differing by 6 or less.

The programs for A125398, there is no canonical definition to state claims against.
-/

/-! ## A125398.P11756887867616843245

`A298024(A365132(n)-A326244(n))`
-/

namespace A125398.P11756887867616843245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298024 (A365132 n - A326244 n).toNat

end

end A125398.P11756887867616843245

