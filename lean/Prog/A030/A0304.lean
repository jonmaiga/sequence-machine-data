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
import Seq.B000.C030
import Seq.B000.C031
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C005
import Seq.B001.C007
import Seq.B001.C009
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C006
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B003.C004
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
import Seq.B007.C000
import Seq.B008.C000
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
import Seq.Opaque.C026

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A030401: Write 2n-1 in base 4 and juxtapose.

The programs for A030401, there is no canonical definition to state claims against.
-/

/-! ## A030401.P3779078399481118569

`A304241(A311580(n))%4`
-/

namespace A030401.P3779078399481118569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A304241 (A311580 n).toNat) 4

end

end A030401.P3779078399481118569

/-! ## A030401.P5176293946868787606

`and(3, A304241(record[A311580(n)]))`
-/

namespace A030401.P5176293946868787606
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311580 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 3 (A304241 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat)

end

end A030401.P5176293946868787606

/-! ## A030401.P10588343141409441450

`A010882(A004976(n)+A001045(n))`
-/

namespace A030401.P10588343141409441450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010882 (A004976 n + A001045 n).toNat

end

end A030401.P10588343141409441450

/-! ## A030401.P12524328655110363886

`A010882(A172269(n)+A001045(n))`
-/

namespace A030401.P12524328655110363886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010882 (A172269 n + A001045 n).toNat

end

end A030401.P12524328655110363886

/-! ## A030401.P12650303085984125266

`A171899(A010814(n+1)-A213177(n))`
-/

namespace A030401.P12650303085984125266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171899 (A010814 (n + 1) - A213177 n).toNat

end

end A030401.P12650303085984125266

/-!
# A030402: Position of n-th 0 in A030401.

The programs for A030402, there is no canonical definition to state claims against.
-/

/-! ## A030402.P14842113670480244257

`eq[0, A030401(n+1)]+1`
-/

namespace A030402.P14842113670480244257
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030401 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A030402.P14842113670480244257

/-! ## A030402.P8077376821063863240

`eq[0, A030401(A028310(n))]`
-/

namespace A030402.P8077376821063863240
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030401 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A030402.P8077376821063863240

/-! ## A030402.P1618420995720339163

`eq[0, A030401(A000007(n)+n)]`
-/

namespace A030402.P1618420995720339163
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030401 (A000007 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A030402.P1618420995720339163

/-! ## A030402.P14035511168788404129

`eq[0, A030401(gcd(n, A298028(n)))]`
-/

namespace A030402.P14035511168788404129
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030401 (Int.gcd (n : ℤ) (A298028 n))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A030402.P14035511168788404129

/-! ## A030402.P12343047540689498764

`eq[0, A030401(A065033(2*n))]`
-/

namespace A030402.P12343047540689498764
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030401 (A065033 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A030402.P12343047540689498764

/-! ## A030402.P2809517914630955743

`eq[0, A030401(A233583(n+1))]`
-/

namespace A030402.P2809517914630955743
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030401 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A030402.P2809517914630955743

/-!
# A030403: Position of n-th 1 in A030401.

The programs for A030403, there is no canonical definition to state claims against.
-/

/-! ## A030403.P3372303392939999398

`eq[1, A030401(n+1)]+1`
-/

namespace A030403.P3372303392939999398
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030401 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A030403.P3372303392939999398

/-! ## A030403.P10117692392071723474

`eq[1, A030401(A000038(n)+n)]`
-/

namespace A030403.P10117692392071723474
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030401 (A000038 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A030403.P10117692392071723474

/-! ## A030403.P6646276738579973327

`eq[A000038(n)!, A030401(A028310(n))]`
-/

namespace A030403.P6646276738579973327
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A000038 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030401 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A030403.P6646276738579973327

/-! ## A030403.P6808375940758683980

`eq[A030401(A028310(n)), A054977(n)]`
-/

namespace A030403.P6808375940758683980
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030401 (A028310 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054977 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A030403.P6808375940758683980

/-! ## A030403.P18157622623556844433

`eq[A030401(A028310(n)), A057427(n)]`
-/

namespace A030403.P18157622623556844433
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030401 (A028310 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A030403.P18157622623556844433

/-! ## A030403.P2060868126069277331

`eq[-A030401(A028310(n)), A057428(n)]`
-/

namespace A030403.P2060868126069277331
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A030401 (A028310 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A030403.P2060868126069277331

/-! ## A030403.P5724693206677758289

`record[A135997(A030401(n+1)+A016789(n))]`
-/

namespace A030403.P5724693206677758289
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135997 (A030401 (n + 1) + A016789 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A030403.P5724693206677758289

/-!
# A030404: Position of n-th 2 in A030401.

The programs for A030404, there is no canonical definition to state claims against.
-/

/-! ## A030404.P2473252776092992104

`eq[2, A030401(n+1)]+1`
-/

namespace A030404.P2473252776092992104
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030401 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A030404.P2473252776092992104

/-! ## A030404.P4236644302240375473

`eq[2, A030401(A028310(n))]`
-/

namespace A030404.P4236644302240375473
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030401 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A030404.P4236644302240375473

/-! ## A030404.P18239735670941282614

`A020725(eq[2, A030401(n+1)])`
-/

namespace A030404.P18239735670941282614
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030401 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A030404.P18239735670941282614

/-! ## A030404.P13626396832040559787

`A065475(eq[2, A030401(n+1)])`
-/

namespace A030404.P13626396832040559787
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030401 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065475 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A030404.P13626396832040559787

/-! ## A030404.P5640401508289808685

`eq[2, A030401(A000007(n)+n)]`
-/

namespace A030404.P5640401508289808685
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030401 (A000007 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A030404.P5640401508289808685

/-! ## A030404.P4400965808457700936

`eq[2, A030401(A000038(n)+n)]`
-/

namespace A030404.P4400965808457700936
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030401 (A000038 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A030404.P4400965808457700936

/-! ## A030404.P5334951593634487432

`eq[2, A030401(gcd(n, A298028(n)))]`
-/

namespace A030404.P5334951593634487432
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030401 (Int.gcd (n : ℤ) (A298028 n))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A030404.P5334951593634487432

/-! ## A030404.P6014278597803318098

`eq[2, A030401(A065033(2*n))]`
-/

namespace A030404.P6014278597803318098
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030401 (A065033 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A030404.P6014278597803318098

/-! ## A030404.P16645413448767270721

`eq[2, A030401(A233583(n+1))]`
-/

namespace A030404.P16645413448767270721
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030401 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A030404.P16645413448767270721

/-!
# A030405: Position of n-th 3 in A030401.

The programs for A030405, there is no canonical definition to state claims against.
-/

/-! ## A030405.P10813004436281685012

`lt[2, A030401(n+1)]+1`
-/

namespace A030405.P10813004436281685012
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030401 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A030405.P10813004436281685012

/-! ## A030405.P16819549378311234664

`eq[3, A030401(A028310(n))]`
-/

namespace A030405.P16819549378311234664
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030401 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A030405.P16819549378311234664

/-! ## A030405.P17766832516406815677

`A020725(eq[3, A030401(n+1)])`
-/

namespace A030405.P17766832516406815677
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030401 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A030405.P17766832516406815677

/-! ## A030405.P13690113170922767289

`eq[3, A030401(A000007(n)+n)]`
-/

namespace A030405.P13690113170922767289
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030401 (A000007 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A030405.P13690113170922767289

/-! ## A030405.P1370607520721092283

`eq[3, A030401(gcd(n, A298028(n)))]`
-/

namespace A030405.P1370607520721092283
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030401 (Int.gcd (n : ℤ) (A298028 n))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A030405.P1370607520721092283

/-! ## A030405.P8453959948754657722

`eq[3, A030401(A065033(2*n))]`
-/

namespace A030405.P8453959948754657722
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030401 (A065033 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A030405.P8453959948754657722

/-!
# A030407: Length of n-th run of digit 0 in A030401.

The programs for A030407, there is no canonical definition to state claims against.
-/

/-! ## A030407.P16591195574671298322

`A030392(∑[A010052(ceil((n/2)²))])`
-/

namespace A030407.P16591195574671298322
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010052 ⌈((n : ℚ) / 2) ^ 2⌉.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030392 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A030407.P16591195574671298322

/-! ## A030407.P9992649439917085469

`A030379(A259361(∑[char[2*n]]²)+1)`
-/

namespace A030407.P9992649439917085469
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030379 (A259361 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2) + 1).toNat

end

end A030407.P9992649439917085469

/-! ## A030407.P7151185709654012521

`A216599(A000040(n+1))+A030379(A008619(n))`
-/

namespace A030407.P7151185709654012521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216599 (A000040 (n + 1)).toNat + A030379 (A008619 n).toNat

end

end A030407.P7151185709654012521

/-! ## A030407.P9565920067394478649

`A007318(A000096(n))*A030379(A008619(n))`
-/

namespace A030407.P9565920067394478649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (A000096 n).toNat * A030379 (A008619 n).toNat

end

end A030407.P9565920067394478649

/-! ## A030407.P13054845803052366444

`A030379(A034877(∑[n]))`
-/

namespace A030407.P13054845803052366444
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030379 (A034877 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A030407.P13054845803052366444

/-! ## A030407.P15456401322878263258

`A030379(Δ[A002265((n+1)²)])`
-/

namespace A030407.P15456401322878263258
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 ((n + 1) ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030379 (f1 (n + 1) - f1 n).toNat

end

end A030407.P15456401322878263258

/-! ## A030407.P11302291315617201086

`A303825(or(1, n)%A346146(n+1))`
-/

namespace A030407.P11302291315617201086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303825 (Int.tmod (Nat.lor 1 n : ℤ) (A346146 (n + 1))).toNat

end

end A030407.P11302291315617201086

/-!
# A030408: Length of n-th run of digit 1 in A030401.

The programs for A030408, there is no canonical definition to state claims against.
-/

/-! ## A030408.P14486330844717264373

`A020639(gcd(A073536(2*(n+1)), A077474(3*n+1)))`
-/

namespace A030408.P14486330844717264373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (Int.gcd (A073536 (2 * (n + 1))) (A077474 (3 * n + 1)))

end

end A030408.P14486330844717264373

/-! ## A030408.P6201607549057294308

`A020639(gcd(A210254(3*n+2), A210283(3*n+4)))`
-/

namespace A030408.P6201607549057294308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (Int.gcd (A210254 (3 * n + 2)) (A210283 (3 * n + 4)))

end

end A030408.P6201607549057294308

/-! ## A030408.P9492814828782961703

`gcd(A277724(A000120(2*n+3)), A349158(3*n+5))`
-/

namespace A030408.P9492814828782961703
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A277724 (A000120 (2 * n + 3)).toNat) (A349158 (3 * n + 5))

end

end A030408.P9492814828782961703

/-! ## A030408.P3102862674466698722

`gcd(A008901(n), A290099(A023548(n+1)))`
-/

namespace A030408.P3102862674466698722
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A008901 n) (A290099 (A023548 (n + 1)).toNat)

end

end A030408.P3102862674466698722

/-!
# A030409: Length of n-th run of digit 2 in A030401.

The programs for A030409, there is no canonical definition to state claims against.
-/

/-! ## A030409.P8353481546013637535

`A362852(A025065(n+2)+8)`
-/

namespace A030409.P8353481546013637535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362852 (A025065 (n + 2) + 8).toNat

end

end A030409.P8353481546013637535

/-! ## A030409.P18028791503813246957

`gcd(A101615(n+2), A101842(n+1))`
-/

namespace A030409.P18028791503813246957
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A101615 (n + 2)) (A101842 (n + 1))

end

end A030409.P18028791503813246957

/-! ## A030409.P2275162780804171309

`∏{p}[Δ[dr(A207359(n+2))], #]`
-/

namespace A030409.P2275162780804171309
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A207359 (n + 2))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℤ) - (f2 n : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A030409.P2275162780804171309

/-!
# A030410: Length of n-th run of digit 3 in A030401.

The programs for A030410, there is no canonical definition to state claims against.
-/

/-! ## A030410.P7210203222177055053

`A336387(A344803(n+1)+A006490(n+1))`
-/

namespace A030410.P7210203222177055053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336387 (A344803 (n + 1) + A006490 (n + 1)).toNat

end

end A030410.P7210203222177055053

/-! ## A030410.P12371726762099215615

`A115577(A315038(n))`
-/

namespace A030410.P12371726762099215615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115577 (A315038 n).toNat

end

end A030410.P12371726762099215615

/-! ## A030410.P11930146685920289302

`A049076(A106800(3*n+2)+1)`
-/

namespace A030410.P11930146685920289302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049076 (A106800 (3 * n + 2) + 1).toNat

end

end A030410.P11930146685920289302

/-!
# A030412: a(n) = (# 1's)-(# 2's) in first n terms of A030401.

The programs for A030412, there is no canonical definition to state claims against.
-/

/-! ## A030412.P8754181858777440501

`∑[round(sin(A030401(n+1)²))]`
-/

namespace A030412.P8754181858777440501
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sin (A030401 (n + 1) ^ 2 : ℝ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A030412.P8754181858777440501

/-! ## A030412.P11107808354224898145

`∑[A163804(A052380(n+1)-A030401(n+1))]`
-/

namespace A030412.P11107808354224898145
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163804 (A052380 (n + 1) - A030401 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A030412.P11107808354224898145

/-! ## A030412.P12359522285297494368

`∑[A163804(3*(n+1)-A030401(n+1))]`
-/

namespace A030412.P12359522285297494368
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163804 ((3 * (n + 1) : ℤ) - A030401 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A030412.P12359522285297494368

/-!
# A030414: Position of n-th 0 in A030413.

The programs for A030414, there is no canonical definition to state claims against.
-/

/-! ## A030414.P12263759859576301831

`eq[0, A030413(n+1)]+1`
-/

namespace A030414.P12263759859576301831
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030413 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A030414.P12263759859576301831

/-! ## A030414.P4075927230116316792

`eq[0, A030413(A028310(n))]`
-/

namespace A030414.P4075927230116316792
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030413 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A030414.P4075927230116316792

/-! ## A030414.P12136427704601029562

`A262564(eq[0, A030413(n+1)])`
-/

namespace A030414.P12136427704601029562
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030413 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262564 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A030414.P12136427704601029562

/-! ## A030414.P8436559307525490468

`eq[0, A030413(A000038(n)+n)]`
-/

namespace A030414.P8436559307525490468
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030413 (A000038 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A030414.P8436559307525490468

/-! ## A030414.P15140745774785861238

`eq[0, A030413(gcd(n, A008458(n)))]`
-/

namespace A030414.P15140745774785861238
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030413 (Int.gcd (n : ℤ) (A008458 n))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A030414.P15140745774785861238

/-! ## A030414.P10351641705085334389

`eq[0, A030413(A123108(2*n))]`
-/

namespace A030414.P10351641705085334389
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030413 (A123108 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A030414.P10351641705085334389

/-! ## A030414.P13000489509899283641

`eq[0, A030413(A233583(n+1))]`
-/

namespace A030414.P13000489509899283641
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030413 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A030414.P13000489509899283641

/-!
# A030415: Position of n-th 1 in A030413.

The programs for A030415, there is no canonical definition to state claims against.
-/

/-! ## A030415.P18364559179815522227

`eq[1, A030413(n+1)]+1`
-/

namespace A030415.P18364559179815522227
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030413 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A030415.P18364559179815522227

/-! ## A030415.P13740103929788474763

`eq[1, A030413(A000038(n)+n)]`
-/

namespace A030415.P13740103929788474763
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030413 (A000038 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A030415.P13740103929788474763

/-! ## A030415.P6075105237880096777

`record[gcd(n+1, A030413(n+1)+A004767(n))]`
-/

namespace A030415.P6075105237880096777
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A030413 (n + 1) + A004767 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A030415.P6075105237880096777

/-! ## A030415.P7317009929860571988

`eq[A030413(A028310(n)), A054977(n)]`
-/

namespace A030415.P7317009929860571988
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030413 (A028310 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054977 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A030415.P7317009929860571988

/-! ## A030415.P7487198135716355816

`eq[A030413(A028310(n)), A057427(n)]`
-/

namespace A030415.P7487198135716355816
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030413 (A028310 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A030415.P7487198135716355816

/-!
# A030416: Position of n-th 2 in A030413.

The programs for A030416, there is no canonical definition to state claims against.
-/

/-! ## A030416.P17276930046864937652

`eq[2, A030413(n+1)]+1`
-/

namespace A030416.P17276930046864937652
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030413 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A030416.P17276930046864937652

/-! ## A030416.P16267742633498587107

`eq[2, A030413(A028310(n))]`
-/

namespace A030416.P16267742633498587107
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030413 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A030416.P16267742633498587107

/-! ## A030416.P15139803613155986267

`A020725(eq[2, A030413(n+1)])`
-/

namespace A030416.P15139803613155986267
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030413 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A030416.P15139803613155986267

/-! ## A030416.P3413048401952965751

`A262564(eq[2, A030413(n+1)])`
-/

namespace A030416.P3413048401952965751
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030413 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262564 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A030416.P3413048401952965751

/-! ## A030416.P5701866216966137876

`eq[2, A030413(A000007(n)+n)]`
-/

namespace A030416.P5701866216966137876
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030413 (A000007 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A030416.P5701866216966137876

/-! ## A030416.P6406887182696710714

`eq[2, A030413(gcd(n, A008458(n)))]`
-/

namespace A030416.P6406887182696710714
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030413 (Int.gcd (n : ℤ) (A008458 n))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A030416.P6406887182696710714

/-! ## A030416.P15879932938802702498

`eq[2, A030413(A123108(2*n))]`
-/

namespace A030416.P15879932938802702498
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030413 (A123108 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A030416.P15879932938802702498

/-!
# A030417: Position of n-th 3 in A030413.

The programs for A030417, there is no canonical definition to state claims against.
-/

/-! ## A030417.P784371742528374928

`lt[2, A030413(n+1)]+1`
-/

namespace A030417.P784371742528374928
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030413 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A030417.P784371742528374928

/-! ## A030417.P238824288263803543

`eq[1, A030413(A028310(n))-2]`
-/

namespace A030417.P238824288263803543
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030413 (A028310 n).toNat - 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A030417.P238824288263803543

/-! ## A030417.P17712770307472264306

`eq[3, A030413(A000007(n)+n)]`
-/

namespace A030417.P17712770307472264306
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030413 (A000007 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A030417.P17712770307472264306

/-! ## A030417.P3561960323804332929

`eq[3, A030413(A000038(n)+n)]`
-/

namespace A030417.P3561960323804332929
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030413 (A000038 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A030417.P3561960323804332929

/-! ## A030417.P1725130510996407879

`eq[3, A030413(gcd(n, A008458(n)))]`
-/

namespace A030417.P1725130510996407879
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030413 (Int.gcd (n : ℤ) (A008458 n))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A030417.P1725130510996407879

/-! ## A030417.P469880550786556731

`eq[3, A030413(A123108(2*n))]`
-/

namespace A030417.P469880550786556731
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030413 (A123108 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A030417.P469880550786556731

/-! ## A030417.P7573377012024281943

`eq[3, A030413(A233583(n+1))]`
-/

namespace A030417.P7573377012024281943
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030413 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A030417.P7573377012024281943

/-!
# A030419: Length of n-th run of digit 0 in A030413.

The programs for A030419, there is no canonical definition to state claims against.
-/

/-! ## A030419.P11696083258833791600

`A288636(A138121(3*n+2)+A027642(n))`
-/

namespace A030419.P11696083258833791600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288636 (A138121 (3 * n + 2) + A027642 n).toNat

end

end A030419.P11696083258833791600

/-! ## A030419.P6393327747936400108

`gcd(A136480(A249115(n+1)), A267382(n+1))`
-/

namespace A030419.P6393327747936400108
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A136480 (A249115 (n + 1)).toNat) (A267382 (n + 1))

end

end A030419.P6393327747936400108

/-! ## A030419.P5135362426730243262

`gcd(2, A328902(A051873(n)))`
-/

namespace A030419.P5135362426730243262
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 2 (A328902 (A051873 n).toNat)

end

end A030419.P5135362426730243262

/-! ## A030419.P8633011318290193454

`gcd(A128017(n), A337540(n+1))`
-/

namespace A030419.P8633011318290193454
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A128017 n) (A337540 (n + 1))

end

end A030419.P8633011318290193454

/-!
# A030420: Length of n-th run of digit 1 in A030413.

The programs for A030420, there is no canonical definition to state claims against.
-/

/-! ## A030420.P9044037254028914546

`gcd(A002562(n+1), A241605(A206812(3*n+1)))`
-/

namespace A030420.P9044037254028914546
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002562 (n + 1)) (A241605 (A206812 (3 * n + 1)).toNat)

end

end A030420.P9044037254028914546

/-! ## A030420.P2858783029135104224

`gcd(A008619(A045656(n)), A110659(n))`
-/

namespace A030420.P2858783029135104224
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A008619 (A045656 n).toNat) (A110659 n)

end

end A030420.P2858783029135104224

/-! ## A030420.P15799884073403181605

`gcd(A153662(n+1), A338038(A008620(n)))`
-/

namespace A030420.P15799884073403181605
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A153662 (n + 1)) (A338038 (A008620 n).toNat)

end

end A030420.P15799884073403181605

/-! ## A030420.P6358584312050233528

`gcd(A129593(n), A250277(A250277(n+1)))`
-/

namespace A030420.P6358584312050233528
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A129593 n) (A250277 (A250277 (n + 1)).toNat)

end

end A030420.P6358584312050233528

/-! ## A030420.P17778046315488683342

`A374683(A367816(n)+A242881(n+1))`
-/

namespace A030420.P17778046315488683342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374683 (A367816 n + A242881 (n + 1)).toNat

end

end A030420.P17778046315488683342

/-!
# A030421: Length of n-th run of digit 2 in A030413.

The programs for A030421, there is no canonical definition to state claims against.
-/

/-! ## A030421.P7317559109390399667

`A327538(A048266(n+1)+A007599(n))`
-/

namespace A030421.P7317559109390399667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327538 (A048266 (n + 1) + A007599 n).toNat

end

end A030421.P7317559109390399667

/-! ## A030421.P7998647415880431523

`gcd(A005117(n+4), A018252(A267383(2*n)))`
-/

namespace A030421.P7998647415880431523
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A005117 (n + 4)) (A018252 (A267383 (2 * n)).toNat)

end

end A030421.P7998647415880431523

/-! ## A030421.P2790105727303943697

`A050361(A108392(n)+2)`
-/

namespace A030421.P2790105727303943697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050361 (A108392 n + 2).toNat

end

end A030421.P2790105727303943697

/-! ## A030421.P11726864283074313543

`gcd(A065120(A374760(n+1)), A260558(n+1))`
-/

namespace A030421.P11726864283074313543
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A065120 (A374760 (n + 1)).toNat) (A260558 (n + 1))

end

end A030421.P11726864283074313543

/-!
# A030422: Length of n-th run of digit 3 in A030413.

The programs for A030422, there is no canonical definition to state claims against.
-/

/-! ## A030422.P14759554381490688927

`A005136(gcd(A042948(n), A285835(n)))`
-/

namespace A030422.P14759554381490688927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005136 (Int.gcd (A042948 n) (A285835 n))

end

end A030422.P14759554381490688927

/-! ## A030422.P13219341423329796323

`A131271(A279861(2*(n+1))%A072768(n+1))`
-/

namespace A030422.P13219341423329796323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131271 (Int.tmod (A279861 (2 * (n + 1))) (A072768 (n + 1))).toNat

end

end A030422.P13219341423329796323

/-! ## A030422.P17946994735011112927

`A146289(A222438(n+1)+A185620(2*n))`
-/

namespace A030422.P17946994735011112927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146289 (A222438 (n + 1) + A185620 (2 * n)).toNat

end

end A030422.P17946994735011112927

/-!
# A030423: a(n)=(# 1's)-(# 0's) in first n terms of A030413.

The programs for A030423, there is no canonical definition to state claims against.
-/

/-! ## A030423.P10166094718052364462

`∑[A219977(A004767(n)²-A030413(n+1))]`
-/

namespace A030423.P10166094718052364462
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219977 (A004767 n ^ 2 - A030413 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A030423.P10166094718052364462

/-! ## A030423.P10858142910388705510

`∑[A013595(A119328(3*n)²)]`
-/

namespace A030423.P10858142910388705510
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013595 (A119328 (3 * n) ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A030423.P10858142910388705510

/-!
# A030424: (# 1's)-(# 2's) in first n terms of A030413.

The programs for A030424, there is no canonical definition to state claims against.
-/

/-! ## A030424.P15650201624428620547

`∑[round(sin(A030413(n+1)²))]`
-/

namespace A030424.P15650201624428620547
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sin (A030413 (n + 1) ^ 2 : ℝ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A030424.P15650201624428620547

/-! ## A030424.P14989929645199303644

`∑[A163804(A052380(n+1)-A030413(n+1))]`
-/

namespace A030424.P14989929645199303644
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163804 (A052380 (n + 1) - A030413 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A030424.P14989929645199303644

/-! ## A030424.P8787173314262191465

`∑[A163804(A028310(3*n+2)+1-A030413(n+1))]`
-/

namespace A030424.P8787173314262191465
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163804 (A028310 (3 * n + 2) + 1 - A030413 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A030424.P8787173314262191465

/-! ## A030424.P5652490105427812601

`∑[A219977(A030413(n+1)+A004767(n))]`
-/

namespace A030424.P5652490105427812601
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219977 (A030413 (n + 1) + A004767 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A030424.P5652490105427812601

/-! ## A030424.P6365674470480030083

`∑[A219977(A030413(n+1)+A004771(n))]`
-/

namespace A030424.P6365674470480030083
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219977 (A030413 (n + 1) + A004771 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A030424.P6365674470480030083

/-! ## A030424.P12936635972388878325

`∑[A163804(A055131(n)-A030413(n+1))]`
-/

namespace A030424.P12936635972388878325
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163804 (A055131 n - A030413 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A030424.P12936635972388878325

/-!
# A030425: (# 2's)-(# 3's) in first n terms of A030413.

The programs for A030425, there is no canonical definition to state claims against.
-/

/-! ## A030425.P16743540074416611629

`∑[A219977(A030413(n+1)+A017137(n))]`
-/

namespace A030425.P16743540074416611629
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219977 (A030413 (n + 1) + A017137 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A030425.P16743540074416611629

/-! ## A030425.P7549097288198897387

`A051777(A005206(n+7))%A089085(n+1)`
-/

namespace A030425.P7549097288198897387
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A051777 (A005206 (n + 7)).toNat) (A089085 (n + 1))

end

end A030425.P7549097288198897387

/-! ## A030425.P17553751822313868698

`A051777(A005206(n+7))^A014963(n+1)²`
-/

namespace A030425.P17553751822313868698
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A051777 (A005206 (n + 7)).toNat : ℚ) ^ (A014963 (n + 1) ^ 2 : ℤ)

end

end A030425.P17553751822313868698

/-! ## A030425.P1601831758260970566

`A269246(A324696(3*n+2)-A175427(n+3))`
-/

namespace A030425.P1601831758260970566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269246 (A324696 (3 * n + 2) - A175427 (n + 3)).toNat

end

end A030425.P1601831758260970566

/-! ## A030425.P14120241733983955400

`and(A062039(A008440(3*n+4)), A353786(n+1))`
-/

namespace A030425.P14120241733983955400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A062039 (A008440 (3 * n + 4)).toNat) (A353786 (n + 1))

end

end A030425.P14120241733983955400

/-!
# A030426: a(n) = Fibonacci(prime(n)).

The programs for A030426, the canonical program `A030426.P5250980322616430628` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A030426 has offset 1).

The definition of A030426 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000040, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A030426.P5250980322616430628

`A000045(A000040(n+1))`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A030426

/-- `A000045(A000040(n+1))` -/
def P5250980322616430628.Spec : Prop :=
  ∀ n, P5250980322616430628.a n = A030426 (n + 1)

theorem P5250980322616430628.correct : P5250980322616430628.Spec := by
  intro n
  simp only [A030426, Nat.add_sub_cancel]

end A030426

/-! ## A030426.P4130017401778185162

`record[A113175(n+1)]`
-/

namespace A030426.P4130017401778185162
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113175 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A030426.P4130017401778185162

namespace A030426

/-- `record[A113175(n+1)]` -/
def P4130017401778185162.Spec : Prop :=
  ∀ n, P4130017401778185162.a n = A030426 (n + 1)

end A030426

/-! ## A030426.P7967530557667698127

`record[A113176(n+1)]`
-/

namespace A030426.P7967530557667698127
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113176 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A030426.P7967530557667698127

namespace A030426

/-- `record[A113176(n+1)]` -/
def P7967530557667698127.Spec : Prop :=
  ∀ n, P7967530557667698127.a n = A030426 (n + 1)

end A030426

/-! ## A030426.P8407013252389064248

`record[A113177(n+2)]`
-/

namespace A030426.P8407013252389064248
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113177 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A030426.P8407013252389064248

namespace A030426

/-- `record[A113177(n+2)]` -/
def P8407013252389064248.Spec : Prop :=
  ∀ n, P8407013252389064248.a n = A030426 (n + 1)

end A030426

/-! ## A030426.P12758624708060574486

`record[A113178(n+2)]`
-/

namespace A030426.P12758624708060574486
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113178 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A030426.P12758624708060574486

namespace A030426

/-- `record[A113178(n+2)]` -/
def P12758624708060574486.Spec : Prop :=
  ∀ n, P12758624708060574486.a n = A030426 (n + 1)

end A030426

/-! ## A030426.P17730612249554652589

`record[A374106(n+2)]`
-/

namespace A030426.P17730612249554652589
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374106 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A030426.P17730612249554652589

namespace A030426

/-- `record[A374106(n+2)]` -/
def P17730612249554652589.Spec : Prop :=
  ∀ n, P17730612249554652589.a n = A030426 (n + 1)

end A030426

/-! ## A030426.P15608641314539617096

`record[∏{p}[n, A000045(#)]]`
-/

namespace A030426.P15608641314539617096
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), A000045 p

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A030426.P15608641314539617096

namespace A030426

/-- `record[∏{p}[n, A000045(#)]]` -/
def P15608641314539617096.Spec : Prop :=
  ∀ n, P15608641314539617096.a n = A030426 (n + 1)

end A030426

/-! ## A030426.P3982392701083943286

`record[∏{p}[n, A167816(#)]]`
-/

namespace A030426.P3982392701083943286
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), A167816 p

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A030426.P3982392701083943286

namespace A030426

/-- `record[∏{p}[n, A167816(#)]]` -/
def P3982392701083943286.Spec : Prop :=
  ∀ n, P3982392701083943286.a n = A030426 (n + 1)

end A030426

/-! ## A030426.P15121075291262045395

`record[∏{p}[n, A264800(#)]]`
-/

namespace A030426.P15121075291262045395
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), A264800 p

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A030426.P15121075291262045395

namespace A030426

/-- `record[∏{p}[n, A264800(#)]]` -/
def P15121075291262045395.Spec : Prop :=
  ∀ n, P15121075291262045395.a n = A030426 (n + 1)

end A030426

/-!
# A030427: a(n) = prime(Fibonacci(n)).

The programs for A030427, there is no canonical definition to state claims against.
-/

/-! ## A030427.P9099303860765743453

`A343256(n)+a(n-1)` with `a(0)=2`
-/

namespace A030427.P9099303860765743453
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A343256 n + a (n - 1)

end

end A030427.P9099303860765743453

/-! ## A030427.P7652092374346717027

`∑[A343256(A028310(n))]+2`
-/

namespace A030427.P7652092374346717027
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343256 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 2

end

end A030427.P7652092374346717027

/-! ## A030427.P2393546904704469287

`∑[A343256(A065033(2*n))]+2`
-/

namespace A030427.P2393546904704469287
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343256 (A065033 (2 * n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 2

end

end A030427.P2393546904704469287

/-! ## A030427.P6002613333557621456

`A030426(n+1)-A093062(n+1)`
-/

namespace A030427.P6002613333557621456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030426 (n + 1) - A093062 (n + 1)

end

end A030427.P6002613333557621456

/-! ## A030427.P12027738932479266072

`A000045(A000040(n+1))-A093062(n+1)`
-/

namespace A030427.P12027738932479266072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (A000040 (n + 1)).toNat - A093062 (n + 1)

end

end A030427.P12027738932479266072

/-! ## A030427.P11805593702193436180

`∑[A343256(n+1)]+2-A343256(n+1)`
-/

namespace A030427.P11805593702193436180
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343256 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (2 - A343256 (n + 1))

end

end A030427.P11805593702193436180

/-!
# A030428: a(n) = 0! * 1! * 2! * ... * n! - 1.

The programs for A030428, the canonical program `A030428.P15846834439160890083` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A030428 has offset 0).

The definition of A030428 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A030428.P15846834439160890083

`A000178(n)-1`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A030428

/-- `A000178(n)-1` -/
def P15846834439160890083.Spec : Prop :=
  ∀ n, P15846834439160890083.a n = A030428 n

theorem P15846834439160890083.correct : P15846834439160890083.Spec := by
  intro n
  simp only [A030428]

end A030428

/-! ## A030428.P318553160000124745

`∏[n!]-1`
-/

namespace A030428.P318553160000124745
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∏ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 1

end

end A030428.P318553160000124745

namespace A030428

/-- `∏[n!]-1` -/
def P318553160000124745.Spec : Prop :=
  ∀ n, P318553160000124745.a n = A030428 n

end A030428

/-! ## A030428.P13319985273646374267

`exp(∑[log(n!)])-1`
-/

namespace A030428.P13319985273646374267
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.log (Nat.factorial n : ℝ)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.exp (∑ j ∈ Finset.range (n + 1), f1 j) - 1

end

end A030428.P13319985273646374267

namespace A030428

/-- `exp(∑[log(n!)])-1` -/
def P13319985273646374267.Spec : Prop :=
  ∀ n, P13319985273646374267.a n = (A030428 n : ℝ)

end A030428

/-! ## A030428.P13652783549241092161

`xor(-1, -∏[n!])`
-/

namespace A030428.P13652783549241092161
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (-1) (-((∏ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ))

end

end A030428.P13652783549241092161

namespace A030428

/-- `xor(-1, -∏[n!])` -/
def P13652783549241092161.Spec : Prop :=
  ∀ n, P13652783549241092161.a n = A030428 n

end A030428

/-! ## A030428.P17869376293172209963

`2^∑[log2(n!)]-1`
-/

namespace A030428.P17869376293172209963
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (Nat.factorial n : ℝ)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (2 : ℝ) ^ (∑ j ∈ Finset.range (n + 1), f1 j) - 1

end

end A030428.P17869376293172209963

namespace A030428

/-- `2^∑[log2(n!)]-1` -/
def P17869376293172209963.Spec : Prop :=
  ∀ n, P17869376293172209963.a n = (A030428 n : ℝ)

end A030428

/-!
# A030430: Primes of the form 10*n+1.

The programs for A030430, the canonical program `A030430.P15047301384318659499` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A030430 has offset 1).

The definition of A030430 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A024912, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A030430.P15047301384318659499

`10*A024912(n+1)+1`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A030430

/-- `10*A024912(n+1)+1` -/
def P15047301384318659499.Spec : Prop :=
  ∀ n, P15047301384318659499.a n = A030430 (n + 1)

theorem P15047301384318659499.correct : P15047301384318659499.Spec := by
  intro n
  simp only [A030430, Nat.add_sub_cancel]

end A030430

/-! ## A030430.P16210433530087912031

`5*A081759(n+1)+6`
-/

namespace A030430.P16210433530087912031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * A081759 (n + 1) + 6

end

end A030430.P16210433530087912031

namespace A030430

/-- `5*A081759(n+1)+6` -/
def P16210433530087912031.Spec : Prop :=
  ∀ n, P16210433530087912031.a n = A030430 (n + 1)

end A030430

/-! ## A030430.P9870152298419343592

`p?[5*n+1]`
-/

namespace A030430.P9870152298419343592
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5 * n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A030430.P9870152298419343592

namespace A030430

/-- `p?[5*n+1]` -/
def P9870152298419343592.Spec : Prop :=
  ∀ n, (P9870152298419343592.a n : ℤ) = A030430 (n + 1)

end A030430

/-! ## A030430.P17951620988101071618

`or(1, p?[a(n-1)+5])` with `a(0)=1`
-/

namespace A030430.P17951620988101071618
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f1 =>
  f1 (n - 1) + 5

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A030430.P17951620988101071618

namespace A030430

/-- `or(1, p?[a(n-1)+5])` -/
def P17951620988101071618.Spec : Prop :=
  ∀ n, (P17951620988101071618.a n : ℤ) = A030430 (n + 1)

end A030430

/-! ## A030430.P8809773952995464436

`∏{d}[p?[a(n-1)+5], #]` with `a(0)=1`
-/

namespace A030430.P8809773952995464436
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f2 =>
  f2 (n - 1) + 5

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n), d

end

end A030430.P8809773952995464436

namespace A030430

/-- `∏{d}[p?[a(n-1)+5], #]` -/
def P8809773952995464436.Spec : Prop :=
  ∀ n, (P8809773952995464436.a n : ℤ) = A030430 (n + 1)

end A030430

/-! ## A030430.P17118512507347746527

`∑{p}[p?[a(n-1)+5], #]` with `a(0)=1`
-/

namespace A030430.P17118512507347746527
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f2 =>
  f2 (n - 1) + 5

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), p

end

end A030430.P17118512507347746527

namespace A030430

/-- `∑{p}[p?[a(n-1)+5], #]` -/
def P17118512507347746527.Spec : Prop :=
  ∀ n, (P17118512507347746527.a n : ℤ) = A030430 (n + 1)

end A030430

/-! ## A030430.P14204551463882352223

`∏{p}[p?[a(n-1)+5], #]` with `a(0)=1`
-/

namespace A030430.P14204551463882352223
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f2 =>
  f2 (n - 1) + 5

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), p

end

end A030430.P14204551463882352223

namespace A030430

/-- `∏{p}[p?[a(n-1)+5], #]` -/
def P14204551463882352223.Spec : Prop :=
  ∀ n, (P14204551463882352223.a n : ℤ) = A030430 (n + 1)

end A030430

/-! ## A030430.P9233801334769686688

`5*A024894(n+1)+1`
-/

namespace A030430.P9233801334769686688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * A024894 (n + 1) + 1

end

end A030430.P9233801334769686688

namespace A030430

/-- `5*A024894(n+1)+1` -/
def P9233801334769686688.Spec : Prop :=
  ∀ n, P9233801334769686688.a n = A030430 (n + 1)

end A030430

/-! ## A030430.P12252892701918015759

`A045453(n+2)`
-/

namespace A030430.P12252892701918015759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045453 (n + 2)

end

end A030430.P12252892701918015759

namespace A030430

/-- `A045453(n+2)` -/
def P12252892701918015759.Spec : Prop :=
  ∀ n, P12252892701918015759.a n = A030430 (n + 1)

end A030430

/-! ## A030430.P10019055452713787079

`A275467(3*n+n+1)`
-/

namespace A030430.P10019055452713787079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275467 (3 * n + (n + 1))

end

end A030430.P10019055452713787079

namespace A030430

/-- `A275467(3*n+n+1)` -/
def P10019055452713787079.Spec : Prop :=
  ∀ n, P10019055452713787079.a n = A030430 (n + 1)

end A030430

/-! ## A030430.P5079167426177406737

`A000040(A049511(n+1))`
-/

namespace A030430.P5079167426177406737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A049511 (n + 1)).toNat

end

end A030430.P5079167426177406737

namespace A030430

/-- `A000040(A049511(n+1))` -/
def P5079167426177406737.Spec : Prop :=
  ∀ n, P5079167426177406737.a n = A030430 (n + 1)

end A030430

/-! ## A030430.P14273648720253884879

`∩[A000040(n+1), A004615(n+1)]`
-/

namespace A030430.P14273648720253884879
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004615 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A030430.P14273648720253884879

namespace A030430

/-- `∩[A000040(n+1), A004615(n+1)]` -/
def P14273648720253884879.Spec : Prop :=
  ∀ n, (P14273648720253884879.a n : ℤ) = A030430 (n + 1)

end A030430

/-! ## A030430.P14444436181376887464

`∩[A000040(n+1), A090756(n+1)]`
-/

namespace A030430.P14444436181376887464
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090756 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A030430.P14444436181376887464

namespace A030430

/-- `∩[A000040(n+1), A090756(n+1)]` -/
def P14444436181376887464.Spec : Prop :=
  ∀ n, (P14444436181376887464.a n : ℤ) = A030430 (n + 1)

end A030430

/-! ## A030430.P276655787047675870

`∩[A000040(n+1), A327752(n+1)]`
-/

namespace A030430.P276655787047675870
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327752 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A030430.P276655787047675870

namespace A030430

/-- `∩[A000040(n+1), A327752(n+1)]` -/
def P276655787047675870.Spec : Prop :=
  ∀ n, (P276655787047675870.a n : ℤ) = A030430 (n + 1)

end A030430

/-! ## A030430.P16450149022195162367

`∩[A081061(n+1), A090756(n+1)]`
-/

namespace A030430.P16450149022195162367
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081061 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090756 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A030430.P16450149022195162367

namespace A030430

/-- `∩[A081061(n+1), A090756(n+1)]` -/
def P16450149022195162367.Spec : Prop :=
  ∀ n, (P16450149022195162367.a n : ℤ) = A030430 (n + 1)

end A030430

/-! ## A030430.P16940031308688252457

`∩[A090756(n+1), A274222(n+1)]`
-/

namespace A030430.P16940031308688252457
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090756 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274222 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A030430.P16940031308688252457

namespace A030430

/-- `∩[A090756(n+1), A274222(n+1)]` -/
def P16940031308688252457.Spec : Prop :=
  ∀ n, (P16940031308688252457.a n : ℤ) = A030430 (n + 1)

end A030430

/-! ## A030430.P5608713008735841270

`∩[A090756(n+1), A130073(n+1)]`
-/

namespace A030430.P5608713008735841270
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090756 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130073 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A030430.P5608713008735841270

namespace A030430

/-- `∩[A090756(n+1), A130073(n+1)]` -/
def P5608713008735841270.Spec : Prop :=
  ∀ n, (P5608713008735841270.a n : ℤ) = A030430 (n + 1)

end A030430

/-! ## A030430.P6075798130776956042

`∩[A000040(n+1), A331194(n+1)]`
-/

namespace A030430.P6075798130776956042
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331194 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A030430.P6075798130776956042

namespace A030430

/-- `∩[A000040(n+1), A331194(n+1)]` -/
def P6075798130776956042.Spec : Prop :=
  ∀ n, (P6075798130776956042.a n : ℤ) = A030430 (n + 1)

end A030430

/-! ## A030430.P5489399323307102157

`∩[A072303(n+1), A090756(n+1)]`
-/

namespace A030430.P5489399323307102157
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072303 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090756 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A030430.P5489399323307102157

namespace A030430

/-- `∩[A072303(n+1), A090756(n+1)]` -/
def P5489399323307102157.Spec : Prop :=
  ∀ n, (P5489399323307102157.a n : ℤ) = A030430 (n + 1)

end A030430

/-! ## A030430.P5149676619618570400

`∩[A090756(n+1), A133810(n+1)]`
-/

namespace A030430.P5149676619618570400
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090756 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133810 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A030430.P5149676619618570400

namespace A030430

/-- `∩[A090756(n+1), A133810(n+1)]` -/
def P5149676619618570400.Spec : Prop :=
  ∀ n, (P5149676619618570400.a n : ℤ) = A030430 (n + 1)

end A030430

/-!
# A030431: Primes of form 10n+3.

The programs for A030431, the canonical program `A030431.P16894720436376490872` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A030431 has offset 1).

The definition of A030431 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A102338, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A030431.P16894720436376490872

`10*A102338(n+1)+3`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A030431

/-- `10*A102338(n+1)+3` -/
def P16894720436376490872.Spec : Prop :=
  ∀ n, P16894720436376490872.a n = A030431 (n + 1)

theorem P16894720436376490872.correct : P16894720436376490872.Spec := by
  intro n
  simp only [A030431, Nat.add_sub_cancel]

end A030431

/-! ## A030431.P183707595662204669

`p?[5*n-2]`
-/

namespace A030431.P183707595662204669
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (5 * n : ℤ) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A030431.P183707595662204669

namespace A030431

/-- `p?[5*n-2]` -/
def P183707595662204669.Spec : Prop :=
  ∀ n, P183707595662204669.a n = A030431 (n + 1)

end A030431

/-! ## A030431.P10600946661490854021

`or(1, p?[a(n-1)+5])` with `a(0)=3`
-/

namespace A030431.P10600946661490854021
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [3] fun n f1 =>
  f1 (n - 1) + 5

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A030431.P10600946661490854021

namespace A030431

/-- `or(1, p?[a(n-1)+5])` -/
def P10600946661490854021.Spec : Prop :=
  ∀ n, (P10600946661490854021.a n : ℤ) = A030431 (n + 1)

end A030431

/-! ## A030431.P15104522734755083354

`∏{d}[p?[a(n-1)+5], #]` with `a(0)=3`
-/

namespace A030431.P15104522734755083354
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [3] fun n f2 =>
  f2 (n - 1) + 5

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n), d

end

end A030431.P15104522734755083354

namespace A030431

/-- `∏{d}[p?[a(n-1)+5], #]` -/
def P15104522734755083354.Spec : Prop :=
  ∀ n, (P15104522734755083354.a n : ℤ) = A030431 (n + 1)

end A030431

/-! ## A030431.P13794319420571852175

`5*A024896(n+1)-2`
-/

namespace A030431.P13794319420571852175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * A024896 (n + 1) - 2

end

end A030431.P13794319420571852175

namespace A030431

/-- `5*A024896(n+1)-2` -/
def P13794319420571852175.Spec : Prop :=
  ∀ n, P13794319420571852175.a n = A030431 (n + 1)

end A030431

/-! ## A030431.P3564054399274465169

`5*A087505(n+1)+3`
-/

namespace A030431.P3564054399274465169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * A087505 (n + 1) + 3

end

end A030431.P3564054399274465169

namespace A030431

/-- `5*A087505(n+1)+3` -/
def P3564054399274465169.Spec : Prop :=
  ∀ n, P3564054399274465169.a n = A030431 (n + 1)

end A030431

/-! ## A030431.P4819943663971400695

`A045414(A065475(n+1))`
-/

namespace A030431.P4819943663971400695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045414 (A065475 (n + 1)).toNat

end

end A030431.P4819943663971400695

namespace A030431

/-- `A045414(A065475(n+1))` -/
def P4819943663971400695.Spec : Prop :=
  ∀ n, P4819943663971400695.a n = A030431 (n + 1)

end A030431

/-! ## A030431.P5326720683854446852

`A045414(A181440(n+2))`
-/

namespace A030431.P5326720683854446852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045414 (A181440 (n + 2)).toNat

end

end A030431.P5326720683854446852

namespace A030431

/-- `A045414(A181440(n+2))` -/
def P5326720683854446852.Spec : Prop :=
  ∀ n, P5326720683854446852.a n = A030431 (n + 1)

end A030431

/-! ## A030431.P2544711144273799944

`A045414(A184985(n+2))`
-/

namespace A030431.P2544711144273799944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045414 (A184985 (n + 2)).toNat

end

end A030431.P2544711144273799944

namespace A030431

/-- `A045414(A184985(n+2))` -/
def P2544711144273799944.Spec : Prop :=
  ∀ n, P2544711144273799944.a n = A030431 (n + 1)

end A030431

/-! ## A030431.P13471488245519031151

`A000040(A049508(n+1))`
-/

namespace A030431.P13471488245519031151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A049508 (n + 1)).toNat

end

end A030431.P13471488245519031151

namespace A030431

/-- `A000040(A049508(n+1))` -/
def P13471488245519031151.Spec : Prop :=
  ∀ n, P13471488245519031151.a n = A030431 (n + 1)

end A030431

/-! ## A030431.P8793114554080780621

`A000040(eq[3, A000040(n+1)%5]+1)`
-/

namespace A030431.P8793114554080780621
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000040 (n + 1)) 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A030431.P8793114554080780621

namespace A030431

/-- `A000040(eq[3, A000040(n+1)%5]+1)` -/
def P8793114554080780621.Spec : Prop :=
  ∀ n, P8793114554080780621.a n = A030431 (n + 1)

end A030431

/-! ## A030431.P805438289236685194

`record[∑{p}[10*n+3, #]]`
-/

namespace A030431.P805438289236685194
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10 * n + 3

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f2 n), p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A030431.P805438289236685194

namespace A030431

/-- `record[∑{p}[10*n+3, #]]` -/
def P805438289236685194.Spec : Prop :=
  ∀ n, (P805438289236685194.a n : ℤ) = A030431 (n + 1)

end A030431

/-! ## A030431.P6788810001366516152

`record[A006530(5*n+3)]`
-/

namespace A030431.P6788810001366516152
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (5 * n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A030431.P6788810001366516152

namespace A030431

/-- `record[A006530(5*n+3)]` -/
def P6788810001366516152.Spec : Prop :=
  ∀ n, P6788810001366516152.a n = A030431 (n + 1)

end A030431

/-! ## A030431.P619614596595305004

`record[A020639(5*n+3)]`
-/

namespace A030431.P619614596595305004
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (5 * n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A030431.P619614596595305004

namespace A030431

/-- `record[A020639(5*n+3)]` -/
def P619614596595305004.Spec : Prop :=
  ∀ n, P619614596595305004.a n = A030431 (n + 1)

end A030431

/-! ## A030431.P11324245336552095270

`5*eq[2, A000005(5*n+3)]+3`
-/

namespace A030431.P11324245336552095270
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (5 * n + 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5 * SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 3

end

end A030431.P11324245336552095270

namespace A030431

/-- `5*eq[2, A000005(5*n+3)]+3` -/
def P11324245336552095270.Spec : Prop :=
  ∀ n, (P11324245336552095270.a n : ℤ) = A030431 (n + 1)

end A030431

/-! ## A030431.P13935911431206965380

`A017305(A102338(n+1))`
-/

namespace A030431.P13935911431206965380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017305 (A102338 (n + 1)).toNat

end

end A030431.P13935911431206965380

namespace A030431

/-- `A017305(A102338(n+1))` -/
def P13935911431206965380.Spec : Prop :=
  ∀ n, P13935911431206965380.a n = A030431 (n + 1)

end A030431

/-! ## A030431.P6789452447735677369

`filter[A017305(n), A010051(#)]`
-/

namespace A030431.P6789452447735677369
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017305 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A030431.P6789452447735677369

namespace A030431

/-- `filter[A017305(n), A010051(#)]` -/
def P6789452447735677369.Spec : Prop :=
  ∀ n, P6789452447735677369.a n = A030431 (n + 1)

end A030431

/-! ## A030431.P6640798834957565518

`filter[A017305(n), A355937(#)]`
-/

namespace A030431.P6640798834957565518
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017305 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A355937 (f1 j).toNat = 1) n)

end

end A030431.P6640798834957565518

namespace A030431

/-- `filter[A017305(n), A355937(#)]` -/
def P6640798834957565518.Spec : Prop :=
  ∀ n, P6640798834957565518.a n = A030431 (n + 1)

end A030431

/-! ## A030431.P14036876088711666409

`filter[A017305(n), A365716(#)]`
-/

namespace A030431.P14036876088711666409
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017305 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A365716 (f1 j).toNat = 1) n)

end

end A030431.P14036876088711666409

namespace A030431

/-- `filter[A017305(n), A365716(#)]` -/
def P14036876088711666409.Spec : Prop :=
  ∀ n, P14036876088711666409.a n = A030431 (n + 1)

end A030431

/-! ## A030431.P5215610493002910112

`filter[A017305(n), A379969(#)]`
-/

namespace A030431.P5215610493002910112
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017305 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A379969 (f1 j).toNat = 1) n)

end

end A030431.P5215610493002910112

namespace A030431

/-- `filter[A017305(n), A379969(#)]` -/
def P5215610493002910112.Spec : Prop :=
  ∀ n, P5215610493002910112.a n = A030431 (n + 1)

end A030431

/-!
# A030432: Primes of form 10n+7.

The programs for A030432, the canonical program `A030432.P3543089398304254842` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A030432 has offset 1).

The definition of A030432 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A102342, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A030432.P3543089398304254842

`10*A102342(n+1)+7`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A030432

/-- `10*A102342(n+1)+7` -/
def P3543089398304254842.Spec : Prop :=
  ∀ n, P3543089398304254842.a n = A030432 (n + 1)

theorem P3543089398304254842.correct : P3543089398304254842.Spec := by
  intro n
  simp only [A030432, Nat.add_sub_cancel]

end A030432

/-! ## A030432.P18023128369448083303

`p?[5*n+7]`
-/

namespace A030432.P18023128369448083303
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5 * n + 7

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A030432.P18023128369448083303

namespace A030432

/-- `p?[5*n+7]` -/
def P18023128369448083303.Spec : Prop :=
  ∀ n, (P18023128369448083303.a n : ℤ) = A030432 (n + 1)

end A030432

/-! ## A030432.P9476664006341141528

`or(1, p?[a(n-1)+5])` with `a(0)=7`
-/

namespace A030432.P9476664006341141528
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [7] fun n f1 =>
  f1 (n - 1) + 5

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A030432.P9476664006341141528

namespace A030432

/-- `or(1, p?[a(n-1)+5])` -/
def P9476664006341141528.Spec : Prop :=
  ∀ n, (P9476664006341141528.a n : ℤ) = A030432 (n + 1)

end A030432

/-! ## A030432.P12269033506251071643

`∑{d}[p?[10*n-3], #]-1`
-/

namespace A030432.P12269033506251071643
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (10 * n : ℤ) - 3

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ d ∈ Nat.divisors (f1 n).natAbs, d : ℕ) : ℤ) - 1

end

end A030432.P12269033506251071643

namespace A030432

/-- `∑{d}[p?[10*n-3], #]-1` -/
def P12269033506251071643.Spec : Prop :=
  ∀ n, P12269033506251071643.a n = A030432 (n + 1)

end A030432

/-! ## A030432.P3984285702200172069

`∏{d}[p?[a(n-1)+5], #]` with `a(0)=7`
-/

namespace A030432.P3984285702200172069
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [7] fun n f2 =>
  f2 (n - 1) + 5

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n), d

end

end A030432.P3984285702200172069

namespace A030432

/-- `∏{d}[p?[a(n-1)+5], #]` -/
def P3984285702200172069.Spec : Prop :=
  ∀ n, (P3984285702200172069.a n : ℤ) = A030432 (n + 1)

end A030432

/-! ## A030432.P4470857751620468824

`A045380(n+2)`
-/

namespace A030432.P4470857751620468824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045380 (n + 2)

end

end A030432.P4470857751620468824

namespace A030432

/-- `A045380(n+2)` -/
def P4470857751620468824.Spec : Prop :=
  ∀ n, P4470857751620468824.a n = A030432 (n + 1)

end A030432

/-! ## A030432.P11195173855586649318

`record[p?[a(n-1)+5]]` with `a(0)=7, a(1)=2`
-/

namespace A030432.P11195173855586649318
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [7, 2] fun n f2 =>
  f2 (n - 1) + 5

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A030432.P11195173855586649318

namespace A030432

/-- `record[p?[a(n-1)+5]]` -/
def P11195173855586649318.Spec : Prop :=
  ∀ n, (P11195173855586649318.a n : ℤ) = A030432 (n + 1)

end A030432

/-! ## A030432.P13947383086161436036

`A045357(n+3)`
-/

namespace A030432.P13947383086161436036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045357 (n + 3)

end

end A030432.P13947383086161436036

namespace A030432

/-- `A045357(n+3)` -/
def P13947383086161436036.Spec : Prop :=
  ∀ n, P13947383086161436036.a n = A030432 (n + 1)

end A030432

/-! ## A030432.P1117268461992030656

`A000040(A049509(n+1))`
-/

namespace A030432.P1117268461992030656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A049509 (n + 1)).toNat

end

end A030432.P1117268461992030656

namespace A030432

/-- `A000040(A049509(n+1))` -/
def P1117268461992030656.Spec : Prop :=
  ∀ n, P1117268461992030656.a n = A030432 (n + 1)

end A030432

/-! ## A030432.P5028854032717009885

`A000040(A244741(n+2))`
-/

namespace A030432.P5028854032717009885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A244741 (n + 2)).toNat

end

end A030432.P5028854032717009885

namespace A030432

/-- `A000040(A244741(n+2))` -/
def P5028854032717009885.Spec : Prop :=
  ∀ n, P5028854032717009885.a n = A030432 (n + 1)

end A030432

/-! ## A030432.P8749890839850556774

`∩[A000040(n+1), A090652(n+1)]`
-/

namespace A030432.P8749890839850556774
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090652 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A030432.P8749890839850556774

namespace A030432

/-- `∩[A000040(n+1), A090652(n+1)]` -/
def P8749890839850556774.Spec : Prop :=
  ∀ n, (P8749890839850556774.a n : ℤ) = A030432 (n + 1)

end A030432

/-! ## A030432.P7412405728411716691

`A000040(eq[7, A000040(n+1)%10]+1)`
-/

namespace A030432.P7412405728411716691
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000040 (n + 1)) 10

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A030432.P7412405728411716691

namespace A030432

/-- `A000040(eq[7, A000040(n+1)%10]+1)` -/
def P7412405728411716691.Spec : Prop :=
  ∀ n, P7412405728411716691.a n = A030432 (n + 1)

end A030432

/-! ## A030432.P9604433934390635029

`∩[A090652(n+1), A130073(n+1)]`
-/

namespace A030432.P9604433934390635029
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090652 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130073 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A030432.P9604433934390635029

namespace A030432

/-- `∩[A090652(n+1), A130073(n+1)]` -/
def P9604433934390635029.Spec : Prop :=
  ∀ n, (P9604433934390635029.a n : ℤ) = A030432 (n + 1)

end A030432

/-! ## A030432.P15746743654120109135

`record[∑{p}[10*n+7, #]]`
-/

namespace A030432.P15746743654120109135
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10 * n + 7

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f2 n), p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A030432.P15746743654120109135

namespace A030432

/-- `record[∑{p}[10*n+7, #]]` -/
def P15746743654120109135.Spec : Prop :=
  ∀ n, (P15746743654120109135.a n : ℤ) = A030432 (n + 1)

end A030432

/-! ## A030432.P1469391003652865553

`record[A006530(5*n+7)]`
-/

namespace A030432.P1469391003652865553
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (5 * n + 7)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A030432.P1469391003652865553

namespace A030432

/-- `record[A006530(5*n+7)]` -/
def P1469391003652865553.Spec : Prop :=
  ∀ n, P1469391003652865553.a n = A030432 (n + 1)

end A030432

/-! ## A030432.P2158352077020258496

`record[A020639(5*n+7)]`
-/

namespace A030432.P2158352077020258496
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (5 * n + 7)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A030432.P2158352077020258496

namespace A030432

/-- `record[A020639(5*n+7)]` -/
def P2158352077020258496.Spec : Prop :=
  ∀ n, P2158352077020258496.a n = A030432 (n + 1)

end A030432

/-! ## A030432.P16170660881141818842

`A017353(A102342(n+1))`
-/

namespace A030432.P16170660881141818842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017353 (A102342 (n + 1)).toNat

end

end A030432.P16170660881141818842

namespace A030432

/-- `A017353(A102342(n+1))` -/
def P16170660881141818842.Spec : Prop :=
  ∀ n, P16170660881141818842.a n = A030432 (n + 1)

end A030432

/-! ## A030432.P17590851494537397373

`filter[A017353(n), A010051(#)]`
-/

namespace A030432.P17590851494537397373
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017353 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A030432.P17590851494537397373

namespace A030432

/-- `filter[A017353(n), A010051(#)]` -/
def P17590851494537397373.Spec : Prop :=
  ∀ n, P17590851494537397373.a n = A030432 (n + 1)

end A030432

/-! ## A030432.P18229190010569958873

`filter[A017353(n), A355937(#)]`
-/

namespace A030432.P18229190010569958873
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017353 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A355937 (f1 j).toNat = 1) n)

end

end A030432.P18229190010569958873

namespace A030432

/-- `filter[A017353(n), A355937(#)]` -/
def P18229190010569958873.Spec : Prop :=
  ∀ n, P18229190010569958873.a n = A030432 (n + 1)

end A030432

/-! ## A030432.P288005023876772427

`A017353(A024914(n+1)-1)`
-/

namespace A030432.P288005023876772427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017353 (A024914 (n + 1) - 1).toNat

end

end A030432.P288005023876772427

namespace A030432

/-- `A017353(A024914(n+1)-1)` -/
def P288005023876772427.Spec : Prop :=
  ∀ n, P288005023876772427.a n = A030432 (n + 1)

end A030432

/-!
# A030433: Primes of form 10*k + 9.

The programs for A030433, the canonical program `A030433.P5160408850318071491` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A030433 has offset 1).

The definition of A030433 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A102700, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A030433.P5160408850318071491

`10*A102700(n+1)+9`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A030433

/-- `10*A102700(n+1)+9` -/
def P5160408850318071491.Spec : Prop :=
  ∀ n, P5160408850318071491.a n = A030433 (n + 1)

theorem P5160408850318071491.correct : P5160408850318071491.Spec := by
  intro n
  simp only [A030433, Nat.add_sub_cancel]

end A030433

/-! ## A030433.P922797458490868198

`p?[5*n-1]`
-/

namespace A030433.P922797458490868198
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (5 * n : ℤ) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A030433.P922797458490868198

namespace A030433

/-- `p?[5*n-1]` -/
def P922797458490868198.Spec : Prop :=
  ∀ n, P922797458490868198.a n = A030433 (n + 1)

end A030433

/-! ## A030433.P6253137200727402898

`or(1, p?[5*n+4])`
-/

namespace A030433.P6253137200727402898
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5 * n + 4

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A030433.P6253137200727402898

namespace A030433

/-- `or(1, p?[5*n+4])` -/
def P6253137200727402898.Spec : Prop :=
  ∀ n, (P6253137200727402898.a n : ℤ) = A030433 (n + 1)

end A030433

/-! ## A030433.P3065326580478671806

`∏{p}[p?[5*n+4], #]`
-/

namespace A030433.P3065326580478671806
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5 * n + 4

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), p

end

end A030433.P3065326580478671806

namespace A030433

/-- `∏{p}[p?[5*n+4], #]` -/
def P3065326580478671806.Spec : Prop :=
  ∀ n, (P3065326580478671806.a n : ℤ) = A030433 (n + 1)

end A030433

/-! ## A030433.P5409771853848901344

`∏{d}[p?[a(n-1)+5], #]` with `a(0)=4`
-/

namespace A030433.P5409771853848901344
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [4] fun n f2 =>
  f2 (n - 1) + 5

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n), d

end

end A030433.P5409771853848901344

namespace A030433

/-- `∏{d}[p?[a(n-1)+5], #]` -/
def P5409771853848901344.Spec : Prop :=
  ∀ n, (P5409771853848901344.a n : ℤ) = A030433 (n + 1)

end A030433

/-! ## A030433.P13940993593898910785

`∑{p}[p?[a(n-1)+5], #]` with `a(0)=4`
-/

namespace A030433.P13940993593898910785
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [4] fun n f2 =>
  f2 (n - 1) + 5

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), p

end

end A030433.P13940993593898910785

namespace A030433

/-- `∑{p}[p?[a(n-1)+5], #]` -/
def P13940993593898910785.Spec : Prop :=
  ∀ n, (P13940993593898910785.a n : ℤ) = A030433 (n + 1)

end A030433

/-! ## A030433.P17518658226580500790

`∑{p}[p?[3*n+2*(n+1)+2], #]`
-/

namespace A030433.P17518658226580500790
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n + (2 * (n + 1) + 2)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), p

end

end A030433.P17518658226580500790

namespace A030433

/-- `∑{p}[p?[3*n+2*(n+1)+2], #]` -/
def P17518658226580500790.Spec : Prop :=
  ∀ n, (P17518658226580500790.a n : ℤ) = A030433 (n + 1)

end A030433

/-! ## A030433.P16302243829408887313

`5*A153355(n+1)-1`
-/

namespace A030433.P16302243829408887313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * A153355 (n + 1) - 1

end

end A030433.P16302243829408887313

namespace A030433

/-- `5*A153355(n+1)-1` -/
def P16302243829408887313.Spec : Prop :=
  ∀ n, P16302243829408887313.a n = A030433 (n + 1)

end A030433

/-! ## A030433.P10660426704050017306

`5*A024897(n+1)+4`
-/

namespace A030433.P10660426704050017306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * A024897 (n + 1) + 4

end

end A030433.P10660426704050017306

namespace A030433

/-- `5*A024897(n+1)+4` -/
def P10660426704050017306.Spec : Prop :=
  ∀ n, P10660426704050017306.a n = A030433 (n + 1)

end A030433

/-! ## A030433.P4442077489972816740

`A045457(n+2)`
-/

namespace A030433.P4442077489972816740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045457 (n + 2)

end

end A030433.P4442077489972816740

namespace A030433

/-- `A045457(n+2)` -/
def P4442077489972816740.Spec : Prop :=
  ∀ n, P4442077489972816740.a n = A030433 (n + 1)

end A030433

/-! ## A030433.P11911787682307002806

`p?[A004618(n+1)]%A004634(n+2)`
-/

namespace A030433.P11911787682307002806
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004618 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)) (A004634 (n + 2))

end

end A030433.P11911787682307002806

namespace A030433

/-- `p?[A004618(n+1)]%A004634(n+2)` -/
def P11911787682307002806.Spec : Prop :=
  ∀ n, P11911787682307002806.a n = A030433 (n + 1)

end A030433

/-! ## A030433.P17049924639213676897

`∩[A023173(n+1), A045413(n+1)]`
-/

namespace A030433.P17049924639213676897
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023173 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045413 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A030433.P17049924639213676897

namespace A030433

/-- `∩[A023173(n+1), A045413(n+1)]` -/
def P17049924639213676897.Spec : Prop :=
  ∀ n, (P17049924639213676897.a n : ℤ) = A030433 (n + 1)

end A030433

/-! ## A030433.P4284222243189328604

`∩[A040165(n+1), A004618(n+1)]`
-/

namespace A030433.P4284222243189328604
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040165 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004618 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A030433.P4284222243189328604

namespace A030433

/-- `∩[A040165(n+1), A004618(n+1)]` -/
def P4284222243189328604.Spec : Prop :=
  ∀ n, (P4284222243189328604.a n : ℤ) = A030433 (n + 1)

end A030433

/-! ## A030433.P14570333357930688415

`A275467(4*(n+1))`
-/

namespace A030433.P14570333357930688415
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275467 (4 * (n + 1))

end

end A030433.P14570333357930688415

namespace A030433

/-- `A275467(4*(n+1))` -/
def P14570333357930688415.Spec : Prop :=
  ∀ n, P14570333357930688415.a n = A030433 (n + 1)

end A030433

/-! ## A030433.P11692991895588812650

`A000040(A049510(n+1))`
-/

namespace A030433.P11692991895588812650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A049510 (n + 1)).toNat

end

end A030433.P11692991895588812650

namespace A030433

/-- `A000040(A049510(n+1))` -/
def P11692991895588812650.Spec : Prop :=
  ∀ n, P11692991895588812650.a n = A030433 (n + 1)

end A030433

/-! ## A030433.P16754640272942248459

`∩[A004618(n+1), A000040(n+1)]`
-/

namespace A030433.P16754640272942248459
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004618 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A030433.P16754640272942248459

namespace A030433

/-- `∩[A004618(n+1), A000040(n+1)]` -/
def P16754640272942248459.Spec : Prop :=
  ∀ n, (P16754640272942248459.a n : ℤ) = A030433 (n + 1)

end A030433

/-! ## A030433.P13069995785455030499

`A000040(lt[3, A000040(n+1)%5]+1)`
-/

namespace A030433.P13069995785455030499
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000040 (n + 1)) 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1)

end

end A030433.P13069995785455030499

namespace A030433

/-- `A000040(lt[3, A000040(n+1)%5]+1)` -/
def P13069995785455030499.Spec : Prop :=
  ∀ n, P13069995785455030499.a n = A030433 (n + 1)

end A030433

/-! ## A030433.P412215340897020628

`record[p?[A268488(n+1)]]`
-/

namespace A030433.P412215340897020628
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268488 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A030433.P412215340897020628

namespace A030433

/-- `record[p?[A268488(n+1)]]` -/
def P412215340897020628.Spec : Prop :=
  ∀ n, P412215340897020628.a n = A030433 (n + 1)

end A030433

/-! ## A030433.P2512449901603410881

`record[A006530(5*(n+4)-1)]`
-/

namespace A030433.P2512449901603410881
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (5 * (n + 4) - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A030433.P2512449901603410881

namespace A030433

/-- `record[A006530(5*(n+4)-1)]` -/
def P2512449901603410881.Spec : Prop :=
  ∀ n, P2512449901603410881.a n = A030433 (n + 1)

end A030433

/-! ## A030433.P5098832079773645900

`record[A020639(5*(n+4)-1)]`
-/

namespace A030433.P5098832079773645900
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (5 * (n + 4) - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A030433.P5098832079773645900

namespace A030433

/-- `record[A020639(5*(n+4)-1)]` -/
def P5098832079773645900.Spec : Prop :=
  ∀ n, P5098832079773645900.a n = A030433 (n + 1)

end A030433

/-!
# A030434: Values of Newton-Gregory forward interpolating polynomial (1/3)*(2*n-7)*(2*n^2-11*n+18).

The programs for A030434, the canonical program `A030434.P14513390670445953821` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A030434 has offset 0).

The definition of A030434 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A030434.P14513390670445953821

`1/3*(2*n-7)*(2*n²-11*n+18)`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A030434

/-- `1/3*(2*n-7)*(2*n²-11*n+18)` -/
def P14513390670445953821.Spec : Prop :=
  ∀ n, P14513390670445953821.a n = (A030434 n : ℚ)

end A030434

/-!
# A030435: Expansion of g.f. (1 + x - 2*x^2 - x^3)/(1/2 - 2*x^2 + x^4).

The programs for A030435, the canonical program `A030435.P18260245440241369201` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A030435 has offset 0).

The definition of A030435 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 376 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A030435.P18260245440241369201

`2*A030436(n)`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A030435

/-- `2*A030436(n)` -/
def P18260245440241369201.Spec : Prop :=
  ∀ n, P18260245440241369201.a n = A030435 n

theorem P18260245440241369201.correct : P18260245440241369201.Spec := by
  intro n
  simp only [A030435]

end A030435

/-! ## A030435.P14026372671810829111

`A062112(or(1, n))+A062112(n+1)`
-/

namespace A030435.P14026372671810829111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062112 (Nat.lor 1 n) + A062112 (n + 1)

end

end A030435.P14026372671810829111

namespace A030435

/-- `A062112(or(1, n))+A062112(n+1)` -/
def P14026372671810829111.Spec : Prop :=
  ∀ n, P14026372671810829111.a n = A030435 n

end A030435

/-! ## A030435.P1937511440313632891

`A000034(n+1)*A006012(A110654(n))`
-/

namespace A030435.P1937511440313632891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 (n + 1) * A006012 (A110654 n).toNat

end

end A030435.P1937511440313632891

namespace A030435

/-- `A000034(n+1)*A006012(A110654(n))` -/
def P1937511440313632891.Spec : Prop :=
  ∀ n, P1937511440313632891.a n = A030435 n

end A030435

/-! ## A030435.P12944775477640185690

`2/A000034(n)*A006012(A110654(n))`
-/

namespace A030435.P12944775477640185690
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 / (A000034 n : ℚ) * (A006012 (A110654 n).toNat : ℚ)

end

end A030435.P12944775477640185690

namespace A030435

/-- `2/A000034(n)*A006012(A110654(n))` -/
def P12944775477640185690.Spec : Prop :=
  ∀ n, P12944775477640185690.a n = (A030435 n : ℚ)

end A030435

/-! ## A030435.P15274471306973509688

`A030436(A000007(n)+n)+A030436(n)`
-/

namespace A030435.P15274471306973509688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030436 (A000007 n + (n : ℤ)).toNat + A030436 n

end

end A030435.P15274471306973509688

namespace A030435

/-- `A030436(A000007(n)+n)+A030436(n)` -/
def P15274471306973509688.Spec : Prop :=
  ∀ n, P15274471306973509688.a n = A030435 n

end A030435

/-! ## A030435.P12490624470940701455

`A030436(A004277(n)-n)+A030436(n)`
-/

namespace A030435.P12490624470940701455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030436 (A004277 n - (n : ℤ)).toNat + A030436 n

end

end A030435.P12490624470940701455

namespace A030435

/-- `A030436(A004277(n)-n)+A030436(n)` -/
def P12490624470940701455.Spec : Prop :=
  ∀ n, P12490624470940701455.a n = A030435 n

end A030435

/-! ## A030435.P6536589296432352206

`A062112(A004525(2*n+1))+A062112(n+1)`
-/

namespace A030435.P6536589296432352206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062112 (A004525 (2 * n + 1)).toNat + A062112 (n + 1)

end

end A030435.P6536589296432352206

namespace A030435

/-- `A062112(A004525(2*n+1))+A062112(n+1)` -/
def P6536589296432352206.Spec : Prop :=
  ∀ n, P6536589296432352206.a n = A030435 n

end A030435

/-! ## A030435.P10235017326661266666

`A062112(A000035(n+1)+n)+A062112(n+1)`
-/

namespace A030435.P10235017326661266666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062112 (A000035 (n + 1) + (n : ℤ)).toNat + A062112 (n + 1)

end

end A030435.P10235017326661266666

namespace A030435

/-- `A062112(A000035(n+1)+n)+A062112(n+1)` -/
def P10235017326661266666.Spec : Prop :=
  ∀ n, P10235017326661266666.a n = A030435 n

end A030435

/-! ## A030435.P12046935818241006656

`A056236(A110654(n))/A000034(n)`
-/

namespace A030435.P12046935818241006656
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A056236 (A110654 n).toNat : ℚ) / (A000034 n : ℚ)

end

end A030435.P12046935818241006656

namespace A030435

/-- `A056236(A110654(n))/A000034(n)` -/
def P12046935818241006656.Spec : Prop :=
  ∀ n, P12046935818241006656.a n = (A030435 n : ℚ)

end A030435

/-! ## A030435.P86476406423025799

`2*(A001882(n+1)+A062112(n)-A007068(n+1))`
-/

namespace A030435.P86476406423025799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A001882 (n + 1) + (A062112 n - A007068 (n + 1)))

end

end A030435.P86476406423025799

namespace A030435

/-- `2*(A001882(n+1)+A062112(n)-A007068(n+1))` -/
def P86476406423025799.Spec : Prop :=
  ∀ n, P86476406423025799.a n = A030435 n

end A030435

/-! ## A030435.P14434040345698557000

`2*A216210(A194274(n))`
-/

namespace A030435.P14434040345698557000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A216210 (A194274 n).toNat

end

end A030435.P14434040345698557000

namespace A030435

/-- `2*A216210(A194274(n))` -/
def P14434040345698557000.Spec : Prop :=
  ∀ n, P14434040345698557000.a n = A030435 n

end A030435

/-! ## A030435.P17986516342303434084

`2*A216210(A007590(n+1))`
-/

namespace A030435.P17986516342303434084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A216210 (A007590 (n + 1)).toNat

end

end A030435.P17986516342303434084

namespace A030435

/-- `2*A216210(A007590(n+1))` -/
def P17986516342303434084.Spec : Prop :=
  ∀ n, P17986516342303434084.a n = A030435 n

end A030435

/-! ## A030435.P17783088516629943476

`2*A216210(A080476(n+1))`
-/

namespace A030435.P17783088516629943476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A216210 (A080476 (n + 1)).toNat

end

end A030435.P17783088516629943476

namespace A030435

/-- `2*A216210(A080476(n+1))` -/
def P17783088516629943476.Spec : Prop :=
  ∀ n, P17783088516629943476.a n = A030435 n

end A030435

/-! ## A030435.P16789798783181569983

`2*A216210(eq[1, A216230(n)])`
-/

namespace A030435.P16789798783181569983
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216230 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A216210 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A030435.P16789798783181569983

namespace A030435

/-- `2*A216210(eq[1, A216230(n)])` -/
def P16789798783181569983.Spec : Prop :=
  ∀ n, P16789798783181569983.a n = A030435 n

end A030435

/-! ## A030435.P18103690696033706981

`2*A216210(A000982(n)+n)`
-/

namespace A030435.P18103690696033706981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A216210 (A000982 n + (n : ℤ)).toNat

end

end A030435.P18103690696033706981

namespace A030435

/-- `2*A216210(A000982(n)+n)` -/
def P18103690696033706981.Spec : Prop :=
  ∀ n, P18103690696033706981.a n = A030435 n

end A030435

/-! ## A030435.P18402287469658715103

`2*A228405(A213037(n+1))`
-/

namespace A030435.P18402287469658715103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A228405 (A213037 (n + 1)).toNat

end

end A030435.P18402287469658715103

namespace A030435

/-- `2*A228405(A213037(n+1))` -/
def P18402287469658715103.Spec : Prop :=
  ∀ n, P18402287469658715103.a n = A030435 n

end A030435

/-!
# A030436: Expansion of g.f. (1 + x - 2*x^2 - x^3)/(1 - 4*x^2 + 2*x^4).

The programs for A030436, the canonical program `A030436.P12264755496810791120` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A030436 has offset 0).

The definition of A030436 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A030436.P12264755496810791120

`4*a(n-2)-2*a(n-4)` with `a(0)=1, a(1)=1, a(2)=2, a(3)=3`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A030436

/-- `4*a(n-2)-2*a(n-4)` -/
def P12264755496810791120.Spec : Prop :=
  ∀ n, P12264755496810791120.a n = A030436 n

theorem P12264755496810791120.correct : P12264755496810791120.Spec := by
  intro n
  simp only [A030436]

end A030436

/-! ## A030436.P3953637973084286048

`A030435(n)/2`
-/

namespace A030436.P3953637973084286048
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A030435 n : ℚ) / 2

end

end A030436.P3953637973084286048

namespace A030436

/-- `A030435(n)/2` -/
def P3953637973084286048.Spec : Prop :=
  ∀ n, P3953637973084286048.a n = (A030436 n : ℚ)

end A030436

/-! ## A030436.P14032990841174309526

`floor((sqrt(2)+2)*a(n-2))` with `a(0)=1, a(1)=1, a(2)=2`
-/

namespace A030436.P14032990841174309526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 2] fun n a =>
  ⌊(Real.sqrt (2 : ℝ) + 2) * (a (n - 2) : ℝ)⌋

end

end A030436.P14032990841174309526

namespace A030436

/-- `floor((sqrt(2)+2)*a(n-2))` -/
def P14032990841174309526.Spec : Prop :=
  ∀ n, P14032990841174309526.a n = A030436 n

end A030436

/-! ## A030436.P16992367470755897860

`A121720(n)+a(n-1)` with `a(0)=1`
-/

namespace A030436.P16992367470755897860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A121720 n + a (n - 1)

end

end A030436.P16992367470755897860

namespace A030436

/-- `A121720(n)+a(n-1)` -/
def P16992367470755897860.Spec : Prop :=
  ∀ n, P16992367470755897860.a n = A030436 n

end A030436

/-! ## A030436.P4445535254473225111

`A006012(A110654(n))/A000034(n)`
-/

namespace A030436.P4445535254473225111
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A006012 (A110654 n).toNat : ℚ) / (A000034 n : ℚ)

end

end A030436.P4445535254473225111

namespace A030436

/-- `A006012(A110654(n))/A000034(n)` -/
def P4445535254473225111.Spec : Prop :=
  ∀ n, P4445535254473225111.a n = (A030436 n : ℚ)

end A030436

/-! ## A030436.P8007087924162919581

`A062112(A000034(n)+n)/A000034(n)`
-/

namespace A030436.P8007087924162919581
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A062112 (A000034 n + (n : ℤ)).toNat : ℚ) / (A000034 n : ℚ)

end

end A030436.P8007087924162919581

namespace A030436

/-- `A062112(A000034(n)+n)/A000034(n)` -/
def P8007087924162919581.Spec : Prop :=
  ∀ n, P8007087924162919581.a n = (A030436 n : ℚ)

end A030436

/-! ## A030436.P1681622404710575901

`A062112(n+1)+A062112(n)-A121720(n+1)`
-/

namespace A030436.P1681622404710575901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062112 (n + 1) + (A062112 n - A121720 (n + 1))

end

end A030436.P1681622404710575901

namespace A030436

/-- `A062112(n+1)+A062112(n)-A121720(n+1)` -/
def P1681622404710575901.Spec : Prop :=
  ∀ n, P1681622404710575901.a n = A030436 n

end A030436

/-! ## A030436.P8142970989244970419

`A062113(n)-A062112(A000035(n)+n)`
-/

namespace A030436.P8142970989244970419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062113 n - A062112 (A000035 n + (n : ℤ)).toNat

end

end A030436.P8142970989244970419

namespace A030436

/-- `A062113(n)-A062112(A000035(n)+n)` -/
def P8142970989244970419.Spec : Prop :=
  ∀ n, P8142970989244970419.a n = A030436 n

end A030436

/-! ## A030436.P6914425444941969290

`A001882(n+1)+A062112(n)-A007068(n+1)`
-/

namespace A030436.P6914425444941969290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001882 (n + 1) + (A062112 n - A007068 (n + 1))

end

end A030436.P6914425444941969290

namespace A030436

/-- `A001882(n+1)+A062112(n)-A007068(n+1)` -/
def P6914425444941969290.Spec : Prop :=
  ∀ n, P6914425444941969290.a n = A030436 n

end A030436

/-! ## A030436.P975037451603253955

`A094038(n+1)/A068912(n)`
-/

namespace A030436.P975037451603253955
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A094038 (n + 1) : ℚ) / (A068912 n : ℚ)

end

end A030436.P975037451603253955

namespace A030436

/-- `A094038(n+1)/A068912(n)` -/
def P975037451603253955.Spec : Prop :=
  ∀ n, P975037451603253955.a n = (A030436 n : ℚ)

end A030436

/-! ## A030436.P11817212573035520250

`A068914(A056119(n)+27)`
-/

namespace A030436.P11817212573035520250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068914 (A056119 n + 27).toNat

end

end A030436.P11817212573035520250

namespace A030436

/-- `A068914(A056119(n)+27)` -/
def P11817212573035520250.Spec : Prop :=
  ∀ n, P11817212573035520250.a n = A030436 n

end A030436

/-! ## A030436.P6919980064134896516

`A068914(A000217(n+7)-(n+1))`
-/

namespace A030436.P6919980064134896516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068914 (A000217 (n + 7) - (n + 1 : ℤ)).toNat

end

end A030436.P6919980064134896516

namespace A030436

/-- `A068914(A000217(n+7)-(n+1))` -/
def P6919980064134896516.Spec : Prop :=
  ∀ n, P6919980064134896516.a n = A030436 n

end A030436

/-! ## A030436.P7618873410127958500

`A068914(A133263(n+5)+n+10)`
-/

namespace A030436.P7618873410127958500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068914 (A133263 (n + 5) + (n + 10 : ℤ)).toNat

end

end A030436.P7618873410127958500

namespace A030436

/-- `A068914(A133263(n+5)+n+10)` -/
def P7618873410127958500.Spec : Prop :=
  ∀ n, P7618873410127958500.a n = A030436 n

end A030436

/-! ## A030436.P12172248364725485232

`A216210(A194274(n))`
-/

namespace A030436.P12172248364725485232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216210 (A194274 n).toNat

end

end A030436.P12172248364725485232

namespace A030436

/-- `A216210(A194274(n))` -/
def P12172248364725485232.Spec : Prop :=
  ∀ n, P12172248364725485232.a n = A030436 n

end A030436

/-! ## A030436.P17891057956931505377

`A216210(A007590(n+1))`
-/

namespace A030436.P17891057956931505377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216210 (A007590 (n + 1)).toNat

end

end A030436.P17891057956931505377

namespace A030436

/-- `A216210(A007590(n+1))` -/
def P17891057956931505377.Spec : Prop :=
  ∀ n, P17891057956931505377.a n = A030436 n

end A030436

/-! ## A030436.P2612304849694604772

`A216210(A080476(n+1))`
-/

namespace A030436.P2612304849694604772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216210 (A080476 (n + 1)).toNat

end

end A030436.P2612304849694604772

namespace A030436

/-- `A216210(A080476(n+1))` -/
def P2612304849694604772.Spec : Prop :=
  ∀ n, P2612304849694604772.a n = A030436 n

end A030436

/-! ## A030436.P10528166466419298831

`A216210(eq[1, A216230(n)])`
-/

namespace A030436.P10528166466419298831
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216230 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216210 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A030436.P10528166466419298831

namespace A030436

/-- `A216210(eq[1, A216230(n)])` -/
def P10528166466419298831.Spec : Prop :=
  ∀ n, P10528166466419298831.a n = A030436 n

end A030436

/-! ## A030436.P17874663804895408061

`A216210(A000982(n)+n)`
-/

namespace A030436.P17874663804895408061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216210 (A000982 n + (n : ℤ)).toNat

end

end A030436.P17874663804895408061

namespace A030436

/-- `A216210(A000982(n)+n)` -/
def P17874663804895408061.Spec : Prop :=
  ∀ n, P17874663804895408061.a n = A030436 n

end A030436

/-! ## A030436.P16809608981346482064

`A216210(A047838(n+2)-(n+1))`
-/

namespace A030436.P16809608981346482064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216210 (A047838 (n + 2) - (n + 1 : ℤ)).toNat

end

end A030436.P16809608981346482064

namespace A030436

/-- `A216210(A047838(n+2)-(n+1))` -/
def P16809608981346482064.Spec : Prop :=
  ∀ n, P16809608981346482064.a n = A030436 n

end A030436

/-!
# A030438: a(n) = A030019(n)*n! (or A035051*(n-1)!).

The programs for A030438, there is no canonical definition to state claims against.
-/

/-! ## A030438.P24100304943731210

`A030019(n)*n!`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A030438.P24100304943731210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030019 n * (Nat.factorial n : ℤ)

end

end A030438.P24100304943731210

/-! ## A030438.P10010990635805786564

`A000142(n)*A030019(n)`
-/

namespace A030438.P10010990635805786564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 n * A030019 n

end

end A030438.P10010990635805786564

/-! ## A030438.P3598941733952066752

`∏[A028310(n)]*A030019(n)`
-/

namespace A030438.P3598941733952066752
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∏ j ∈ Finset.range (n + 1), f1 j) * A030019 n

end

end A030438.P3598941733952066752

/-! ## A030438.P1816234049623341872

`A030019(n)*A112624(A000079(n))`
-/

namespace A030438.P1816234049623341872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030019 n * A112624 (A000079 n).toNat

end

end A030438.P1816234049623341872

/-!
# A030439: a(n+1) = smallest number not containing any digits of a(n), working in base 3.

The programs for A030439, the canonical program `A030439.P6091865569706183357` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A030439 has offset 0).

The definition of A030439 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A030439.P6091865569706183357

`4*a(n-2)-3*a(n-4)` with `a(0)=0, a(1)=1, a(2)=2, a(3)=3`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A030439

/-- `4*a(n-2)-3*a(n-4)` -/
def P6091865569706183357.Spec : Prop :=
  ∀ n, P6091865569706183357.a n = A030439 n

theorem P6091865569706183357.correct : P6091865569706183357.Spec := by
  intro n
  simp only [A030439]

end A030439

/-! ## A030439.P13813468980595568769

`and(-gcd(2, n), 3^floor(n/2))`
-/

namespace A030439.P13813468980595568769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-(Nat.gcd 2 n : ℤ)) (SequenceMachineLib.roundAway ((3 : ℚ) ^ (⌊(n : ℚ) / 2⌋ : ℤ)))

end

end A030439.P13813468980595568769

namespace A030439

/-- `and(-gcd(2, n), 3^floor(n/2))` -/
def P13813468980595568769.Spec : Prop :=
  ∀ n, P13813468980595568769.a n = A030439 n

end A030439

/-! ## A030439.P10642820415982150327

`xor(1, 3*a(n-2))+1` with `a(0)=0, a(1)=1`
-/

namespace A030439.P10642820415982150327
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 1] fun n a =>
  Nat.xor 1 (3 * a (n - 2)) + 1

end

end A030439.P10642820415982150327

namespace A030439

/-- `xor(1, 3*a(n-2))+1` -/
def P10642820415982150327.Spec : Prop :=
  ∀ n, (P10642820415982150327.a n : ℤ) = A030439 n

end A030439

/-! ## A030439.P1412760193495029025

`-xor(3*a(n-2), -2)` with `a(0)=0, a(1)=1`
-/

namespace A030439.P1412760193495029025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  -Int.xor (3 * a (n - 2)) (-2)

end

end A030439.P1412760193495029025

namespace A030439

/-- `-xor(3*a(n-2), -2)` -/
def P1412760193495029025.Spec : Prop :=
  ∀ n, P1412760193495029025.a n = A030439 n

end A030439

/-! ## A030439.P16093134743394192634

`3^floor(n/2)-(n+1)%2`
-/

namespace A030439.P16093134743394192634
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 : ℚ) ^ (⌊(n : ℚ) / 2⌋ : ℤ) - (((n + 1) % 2 : ℕ) : ℚ)

end

end A030439.P16093134743394192634

namespace A030439

/-- `3^floor(n/2)-(n+1)%2` -/
def P16093134743394192634.Spec : Prop :=
  ∀ n, P16093134743394192634.a n = (A030439 n : ℚ)

end A030439

/-! ## A030439.P15484661600258367218

`3^floor(n/2)-and(1, n+1)`
-/

namespace A030439.P15484661600258367218
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 : ℚ) ^ (⌊(n : ℚ) / 2⌋ : ℤ) - (Nat.land 1 (n + 1) : ℚ)

end

end A030439.P15484661600258367218

namespace A030439

/-- `3^floor(n/2)-and(1, n+1)` -/
def P15484661600258367218.Spec : Prop :=
  ∀ n, P15484661600258367218.a n = (A030439 n : ℚ)

end A030439

/-! ## A030439.P3436833252717000578

`a(n-1)+gcd(a(n-1)+a(n-2), n%2)` with `a(0)=0, a(1)=1`
-/

namespace A030439.P3436833252717000578
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 1] fun n a =>
  a (n - 1) + Nat.gcd (a (n - 1) + a (n - 2)) (n % 2)

end

end A030439.P3436833252717000578

namespace A030439

/-- `a(n-1)+gcd(a(n-1)+a(n-2), n%2)` -/
def P3436833252717000578.Spec : Prop :=
  ∀ n, (P3436833252717000578.a n : ℤ) = A030439 n

end A030439

/-! ## A030439.P4777938327525545716

`gcd(2, n)*A232801(n)`
-/

namespace A030439.P4777938327525545716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.gcd 2 n : ℤ) * A232801 n

end

end A030439.P4777938327525545716

namespace A030439

/-- `gcd(2, n)*A232801(n)` -/
def P4777938327525545716.Spec : Prop :=
  ∀ n, P4777938327525545716.a n = A030439 n

end A030439

/-! ## A030439.P7595190708746121746

`3^floor(n/2)-Δ[A002265(2*(n+1))]`
-/

namespace A030439.P7595190708746121746
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (2 * (n + 1))

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 : ℚ) ^ (⌊(n : ℚ) / 2⌋ : ℤ) - (f1 (n + 1) - f1 n : ℚ)

end

end A030439.P7595190708746121746

namespace A030439

/-- `3^floor(n/2)-Δ[A002265(2*(n+1))]` -/
def P7595190708746121746.Spec : Prop :=
  ∀ n, P7595190708746121746.a n = (A030439 n : ℚ)

end A030439

/-! ## A030439.P1316780166780726841

`A108411(n)-A059841(n)`
-/

namespace A030439.P1316780166780726841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108411 n - A059841 n

end

end A030439.P1316780166780726841

namespace A030439

/-- `A108411(n)-A059841(n)` -/
def P1316780166780726841.Spec : Prop :=
  ∀ n, P1316780166780726841.a n = A030439 n

end A030439

/-! ## A030439.P13688139030983566347

`A040001(n)*A232801(n)`
-/

namespace A030439.P13688139030983566347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040001 n * A232801 n

end

end A030439.P13688139030983566347

namespace A030439

/-- `A040001(n)*A232801(n)` -/
def P13688139030983566347.Spec : Prop :=
  ∀ n, P13688139030983566347.a n = A030439 n

end A030439

/-! ## A030439.P2380846495763477362

`A134451(n)*A232801(n)`
-/

namespace A030439.P2380846495763477362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134451 n * A232801 n

end

end A030439.P2380846495763477362

namespace A030439

/-- `A134451(n)*A232801(n)` -/
def P2380846495763477362.Spec : Prop :=
  ∀ n, P2380846495763477362.a n = A030439 n

end A030439

/-! ## A030439.P7768110973346405580

`xor(A130599(n), A254006(n))`
-/

namespace A030439.P7768110973346405580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A130599 n) (A254006 n)

end

end A030439.P7768110973346405580

namespace A030439

/-- `xor(A130599(n), A254006(n))` -/
def P7768110973346405580.Spec : Prop :=
  ∀ n, P7768110973346405580.a n = A030439 n

end A030439

/-! ## A030439.P10083787990547774042

`∪[A000244(n), A024023(n)]`
-/

namespace A030439.P10083787990547774042
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000244 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024023 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A030439.P10083787990547774042

namespace A030439

/-- `∪[A000244(n), A024023(n)]` -/
def P10083787990547774042.Spec : Prop :=
  ∀ n, (P10083787990547774042.a n : ℤ) = A030439 n

end A030439

/-! ## A030439.P8154444645996296585

`A000035(n)+A108411(n)-1`
-/

namespace A030439.P8154444645996296585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 n + (A108411 n - 1)

end

end A030439.P8154444645996296585

namespace A030439

/-- `A000035(n)+A108411(n)-1` -/
def P8154444645996296585.Spec : Prop :=
  ∀ n, P8154444645996296585.a n = A030439 n

end A030439

/-! ## A030439.P14997392729382896393

`A000034(n)+A108411(n)-2`
-/

namespace A030439.P14997392729382896393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 n + (A108411 n - 2)

end

end A030439.P14997392729382896393

namespace A030439

/-- `A000034(n)+A108411(n)-2` -/
def P14997392729382896393.Spec : Prop :=
  ∀ n, P14997392729382896393.a n = A030439 n

end A030439

/-! ## A030439.P12599541163963799330

`xor(Δ[A002265(2*(n+1))], A108411(n))`
-/

namespace A030439.P12599541163963799330
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (f1 (n + 1) - f1 n) (A108411 n)

end

end A030439.P12599541163963799330

namespace A030439

/-- `xor(Δ[A002265(2*(n+1))], A108411(n))` -/
def P12599541163963799330.Spec : Prop :=
  ∀ n, P12599541163963799330.a n = A030439 n

end A030439

/-! ## A030439.P13105545439916452193

`A038754(n)-A130599(n)`
-/

namespace A030439.P13105545439916452193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038754 n - A130599 n

end

end A030439.P13105545439916452193

namespace A030439

/-- `A038754(n)-A130599(n)` -/
def P13105545439916452193.Spec : Prop :=
  ∀ n, P13105545439916452193.a n = A030439 n

end A030439

/-! ## A030439.P4736366754982539295

`∪[A024023(n), A140429(n)]`
-/

namespace A030439.P4736366754982539295
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024023 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140429 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A030439.P4736366754982539295

namespace A030439

/-- `∪[A024023(n), A140429(n)]` -/
def P4736366754982539295.Spec : Prop :=
  ∀ n, (P4736366754982539295.a n : ℤ) = A030439 n

end A030439

/-!
# A030440: Values of Newton-Gregory forward interpolating polynomial (1/3)*(n-1)*(2*n+3)*(2*n-1).

The programs for A030440, the canonical program `A030440.P7028222270296302430` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A030440 has offset 0).

The definition of A030440 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A030440.P7028222270296302430

`(n-1)*(2*n-1)*(2*n+3)/3`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A030440

/-- `(n-1)*(2*n-1)*(2*n+3)/3` -/
def P7028222270296302430.Spec : Prop :=
  ∀ n, P7028222270296302430.a n = (A030440 n : ℚ)

end A030440

/-! ## A030440.P4715486287751770151

`8*C(n+1, 3)-(n-1)`
-/

namespace A030440.P4715486287751770151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (8 * Nat.choose (n + 1) 3 : ℤ) - ((n : ℤ) - 1)

end

end A030440.P4715486287751770151

namespace A030440

/-- `8*C(n+1, 3)-(n-1)` -/
def P4715486287751770151.Spec : Prop :=
  ∀ n, P4715486287751770151.a n = A030440 n

end A030440

/-! ## A030440.P5689004983871507322

`∑[∑[a(n-1)+8]]` with `a(0)=1, a(1)=-2, a(2)=8`
-/

namespace A030440.P5689004983871507322
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1, -2, 8] fun n f2 =>
  f2 (n - 1) + 8

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A030440.P5689004983871507322

namespace A030440

/-- `∑[∑[a(n-1)+8]]` -/
def P5689004983871507322.Spec : Prop :=
  ∀ n, P5689004983871507322.a n = A030440 n

end A030440

/-! ## A030440.P2857725435436428189

`2-∑[∑[a(n-1)-8]]` with `a(0)=1, a(1)=0`
-/

namespace A030440.P2857725435436428189
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n f2 =>
  f2 (n - 1) - 8

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A030440.P2857725435436428189

namespace A030440

/-- `2-∑[∑[a(n-1)-8]]` -/
def P2857725435436428189.Spec : Prop :=
  ∀ n, P2857725435436428189.a n = A030440 n

end A030440

/-! ## A030440.P11363573470661433244

`abs(2*n-1-C(Δ[n²], 3))`
-/

namespace A030440.P11363573470661433244
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(2 * n : ℤ) - 1 - (Nat.choose ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat 3 : ℤ)|

end

end A030440.P11363573470661433244

namespace A030440

/-- `abs(2*n-1-C(Δ[n²], 3))` -/
def P11363573470661433244.Spec : Prop :=
  ∀ n, P11363573470661433244.a n = A030440 n

end A030440

/-! ## A030440.P13435028566196681973

`A100503(n)-4*n`
-/

namespace A030440.P13435028566196681973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100503 n - (4 * n : ℤ)

end

end A030440.P13435028566196681973

namespace A030440

/-- `A100503(n)-4*n` -/
def P13435028566196681973.Spec : Prop :=
  ∀ n, P13435028566196681973.a n = A030440 n

end A030440

/-! ## A030440.P14589753995049638052

`abs(2*n-1-A000447(n))`
-/

namespace A030440.P14589753995049638052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(2 * n : ℤ) - 1 - A000447 n|

end

end A030440.P14589753995049638052

namespace A030440

/-- `abs(2*n-1-A000447(n))` -/
def P14589753995049638052.Spec : Prop :=
  ∀ n, P14589753995049638052.a n = A030440 n

end A030440

/-! ## A030440.P14085719109156307086

`A165747(n)+A000447(n)`
-/

namespace A030440.P14085719109156307086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165747 n + A000447 n

end

end A030440.P14085719109156307086

namespace A030440

/-- `A165747(n)+A000447(n)` -/
def P14085719109156307086.Spec : Prop :=
  ∀ n, P14085719109156307086.a n = A030440 n

end A030440

/-! ## A030440.P5990082094369663864

`A123972(n)+A084990(n)`
-/

namespace A030440.P5990082094369663864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123972 n + A084990 n

end

end A030440.P5990082094369663864

namespace A030440

/-- `A123972(n)+A084990(n)` -/
def P5990082094369663864.Spec : Prop :=
  ∀ n, P5990082094369663864.a n = A030440 n

end A030440

/-! ## A030440.P2282901572018727547

`A001845(n)-A033537(n)`
-/

namespace A030440.P2282901572018727547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001845 n - A033537 n

end

end A030440.P2282901572018727547

namespace A030440

/-- `A001845(n)-A033537(n)` -/
def P2282901572018727547.Spec : Prop :=
  ∀ n, P2282901572018727547.a n = A030440 n

end A030440

/-! ## A030440.P9812839762497936608

`A000447(n)-A060747(n)`
-/

namespace A030440.P9812839762497936608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000447 n - A060747 n

end

end A030440.P9812839762497936608

namespace A030440

/-- `A000447(n)-A060747(n)` -/
def P9812839762497936608.Spec : Prop :=
  ∀ n, P9812839762497936608.a n = A030440 n

end A030440

/-! ## A030440.P14603491558355212407

`A166464(n)-A014106(n)`
-/

namespace A030440.P14603491558355212407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166464 n - A014106 n

end

end A030440.P14603491558355212407

namespace A030440

/-- `A166464(n)-A014106(n)` -/
def P14603491558355212407.Spec : Prop :=
  ∀ n, P14603491558355212407.a n = A030440 n

end A030440

/-! ## A030440.P2716886834086532657

`A098931(n)-A140676(n)`
-/

namespace A030440.P2716886834086532657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098931 n - A140676 n

end

end A030440.P2716886834086532657

namespace A030440

/-- `A098931(n)-A140676(n)` -/
def P2716886834086532657.Spec : Prop :=
  ∀ n, P2716886834086532657.a n = A030440 n

end A030440

/-! ## A030440.P12251916942100988827

`A273408(n)-A002943(n)`
-/

namespace A030440.P12251916942100988827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273408 n - A002943 n

end

end A030440.P12251916942100988827

namespace A030440

/-- `A273408(n)-A002943(n)` -/
def P12251916942100988827.Spec : Prop :=
  ∀ n, P12251916942100988827.a n = A030440 n

end A030440

/-! ## A030440.P13675321529435013958

`A322594(n)-A007742(n)`
-/

namespace A030440.P13675321529435013958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322594 n - A007742 n

end

end A030440.P13675321529435013958

namespace A030440

/-- `A322594(n)-A007742(n)` -/
def P13675321529435013958.Spec : Prop :=
  ∀ n, P13675321529435013958.a n = A030440 n

end A030440

/-! ## A030440.P10646749736862290955

`A100207(n)-A269342(n)`
-/

namespace A030440.P10646749736862290955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100207 n - A269342 n

end

end A030440.P10646749736862290955

namespace A030440

/-- `A100207(n)-A269342(n)` -/
def P10646749736862290955.Spec : Prop :=
  ∀ n, P10646749736862290955.a n = A030440 n

end A030440

/-! ## A030440.P10117256969128940874

`A274974(n)-A139277(n)`
-/

namespace A030440.P10117256969128940874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274974 n - A139277 n

end

end A030440.P10117256969128940874

namespace A030440

/-- `A274974(n)-A139277(n)` -/
def P10117256969128940874.Spec : Prop :=
  ∀ n, P10117256969128940874.a n = A030440 n

end A030440

/-! ## A030440.P3984198449246749876

`A280089(n)-A259110(n)`
-/

namespace A030440.P3984198449246749876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280089 n - A259110 n

end

end A030440.P3984198449246749876

namespace A030440

/-- `A280089(n)-A259110(n)` -/
def P3984198449246749876.Spec : Prop :=
  ∀ n, P3984198449246749876.a n = A030440 n

end A030440

/-! ## A030440.P256051191712741431

`A145067(n+1)+A081441(n)`
-/

namespace A030440.P256051191712741431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145067 (n + 1) + A081441 n

end

end A030440.P256051191712741431

namespace A030440

/-- `A145067(n+1)+A081441(n)` -/
def P256051191712741431.Spec : Prop :=
  ∀ n, P256051191712741431.a n = A030440 n

end A030440

/-! ## A030440.P12287461785919820306

`A121670(n)+A116731(n+1)`
-/

namespace A030440.P12287461785919820306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121670 n + A116731 (n + 1)

end

end A030440.P12287461785919820306

namespace A030440

/-- `A121670(n)+A116731(n+1)` -/
def P12287461785919820306.Spec : Prop :=
  ∀ n, P12287461785919820306.a n = A030440 n

end A030440

/-!
# A030441: Values of Newton-Gregory forward interpolating polynomial (1/3)*(2*n - 3)*(2*n^2 - 3*n + 4).

The programs for A030441, the canonical program `A030441.P17828383332589417735` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A030441 has offset 0).

The definition of A030441 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A030441.P2808243734230933651

`1/3*(2*n-3)*(2*n²-3*n+4)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A030441.P2808243734230933651
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 : ℚ) / 3 * (((2 * n : ℤ) - 3) * ((2 * n ^ 2 : ℤ) - (3 * n : ℤ) + 4) : ℚ)

end

end A030441.P2808243734230933651

namespace A030441

/-- `1/3*(2*n-3)*(2*n²-3*n+4)` -/
def P2808243734230933651.Spec : Prop :=
  ∀ n, P2808243734230933651.a n = (A030441 n : ℚ)

end A030441

/-! ## A030441.P17828383332589417735

`4*a(n-1)-6*a(n-2)+4*a(n-3)-a(n-4)` with `a(0)=-4, a(1)=-1, a(2)=2, a(3)=13`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A030441

/-- `4*a(n-1)-6*a(n-2)+4*a(n-3)-a(n-4)` -/
def P17828383332589417735.Spec : Prop :=
  ∀ n, P17828383332589417735.a n = A030441 n

theorem P17828383332589417735.correct : P17828383332589417735.Spec := by
  intro n
  simp only [A030441]

end A030441

/-! ## A030441.P14202778132184408760

`∑[∑[a(n-1)+8]]-5+n` with `a(0)=1, a(1)=1, a(2)=0`
-/

namespace A030441.P14202778132184408760
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [1, 1, 0] fun n f2 =>
  f2 (n - 1) + 8

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 5 + (n : ℤ)

end

end A030441.P14202778132184408760

namespace A030441

/-- `∑[∑[a(n-1)+8]]-5+n` -/
def P14202778132184408760.Spec : Prop :=
  ∀ n, P14202778132184408760.a n = A030441 n

end A030441

/-! ## A030441.P9114523243462897178

`A161703(n)-5+n`
-/

namespace A030441.P9114523243462897178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161703 n - 5 + (n : ℤ)

end

end A030441.P9114523243462897178

namespace A030441

/-- `A161703(n)-5+n` -/
def P9114523243462897178.Spec : Prop :=
  ∀ n, P9114523243462897178.a n = A030441 n

end A030441

/-! ## A030441.P5712272308756525522

`A161703(n)+A023447(n)`
-/

namespace A030441.P5712272308756525522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161703 n + A023447 n

end

end A030441.P5712272308756525522

namespace A030441

/-- `A161703(n)+A023447(n)` -/
def P5712272308756525522.Spec : Prop :=
  ∀ n, P5712272308756525522.a n = A030441 n

end A030441

/-! ## A030441.P649058326481623124

`A161703(n)-A022961(n)`
-/

namespace A030441.P649058326481623124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161703 n - A022961 n

end

end A030441.P649058326481623124

namespace A030441

/-- `A161703(n)-A022961(n)` -/
def P649058326481623124.Spec : Prop :=
  ∀ n, P649058326481623124.a n = A030441 n

end A030441

/-! ## A030441.P11757147389072178173

`A030434(n+2)`
-/

namespace A030441.P11757147389072178173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030434 (n + 2)

end

end A030441.P11757147389072178173

namespace A030441

/-- `A030434(n+2)` -/
def P11757147389072178173.Spec : Prop :=
  ∀ n, P11757147389072178173.a n = A030441 n

end A030441

/-! ## A030441.P17183157794700055236

`record[A030434(abs(2-n))]`
-/

namespace A030441.P17183157794700055236
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030434 |2 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A030441.P17183157794700055236

namespace A030441

/-- `record[A030434(abs(2-n))]` -/
def P17183157794700055236.Spec : Prop :=
  ∀ n, P17183157794700055236.a n = A030441 n

end A030441

/-!
# A030442: Values of Newton-Gregory forward interpolating polynomial (1/6)*(4*n^4 - 60*n^3 + 347*n^2 - 927*n + 978).

The programs for A030442, the canonical program `A030442.P12951591978989293136` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A030442 has offset 0).

The definition of A030442 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A030442.P8494495330755513750

`1/6*(4*n^4-60*n^3+347*n²-927*n+978)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A030442.P8494495330755513750
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 : ℚ) / 6 * ((4 * n ^ 4 : ℤ) - (60 * n ^ 3 : ℤ) + (347 * n ^ 2 : ℤ) - (927 * n : ℤ) + 978 : ℚ)

end

end A030442.P8494495330755513750

namespace A030442

/-- `1/6*(4*n^4-60*n^3+347*n²-927*n+978)` -/
def P8494495330755513750.Spec : Prop :=
  ∀ n, P8494495330755513750.a n = (A030442 n : ℚ)

end A030442

/-! ## A030442.P12951591978989293136

`5*a(n-1)-10*a(n-2)+10*a(n-3)-5*a(n-4)+a(n-5)` with `a(0)=163, a(1)=57, a(2)=16, a(3)=4, a(4)=1`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A030442

/-- `5*a(n-1)-10*a(n-2)+10*a(n-3)-5*a(n-4)+a(n-5)` -/
def P12951591978989293136.Spec : Prop :=
  ∀ n, P12951591978989293136.a n = A030442 n

theorem P12951591978989293136.correct : P12951591978989293136.Spec := by
  intro n
  simp only [A030442]

end A030442

/-!
# A030443: Nonzero coefficients in theta series of {E_7}* lattice.

The programs for A030443, there is no canonical definition to state claims against.
-/

/-! ## A030443.P11686828932000546645

`A003781(Δ[n²]-and(1, n+1))`
-/

namespace A030443.P11686828932000546645
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003781 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) - (Nat.land 1 (n + 1) : ℤ)).toNat

end

end A030443.P11686828932000546645

/-! ## A030443.P5288413247586373116

`A003781(A014601(n))`
-/

namespace A030443.P5288413247586373116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003781 (A014601 n).toNat

end

end A030443.P5288413247586373116

/-! ## A030443.P15940605451957789371

`A003781(A003815(2*n))`
-/

namespace A030443.P15940605451957789371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003781 (A003815 (2 * n)).toNat

end

end A030443.P15940605451957789371

/-! ## A030443.P10000821193785183828

`A003781(lt[0, A003781(n)])`
-/

namespace A030443.P10000821193785183828
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003781 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003781 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A030443.P10000821193785183828

/-! ## A030443.P17490140068878676808

`A003781(A000035(n)+2*n)`
-/

namespace A030443.P17490140068878676808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003781 (A000035 n + (2 * n : ℤ)).toNat

end

end A030443.P17490140068878676808

/-! ## A030443.P7769251712303193108

`A003781(or(2*n, A000035(n)))`
-/

namespace A030443.P7769251712303193108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003781 (Int.lor (2 * n : ℤ) (A000035 n)).toNat

end

end A030443.P7769251712303193108

/-! ## A030443.P12276827010464946109

`A003781(xor(2*n, A000035(n)))`
-/

namespace A030443.P12276827010464946109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003781 (Int.xor (2 * n : ℤ) (A000035 n)).toNat

end

end A030443.P12276827010464946109

/-! ## A030443.P767875043411794860

`A003781(A000035(n)+n+n)`
-/

namespace A030443.P767875043411794860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003781 (A000035 n + (n : ℤ) + (n : ℤ)).toNat

end

end A030443.P767875043411794860

/-! ## A030443.P15603952727954344033

`A003781(A004525(record[and(6, -n)+n]))`
-/

namespace A030443.P15603952727954344033
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 6 (-(n : ℤ)) + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003781 (A004525 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat).toNat

end

end A030443.P15603952727954344033

/-! ## A030443.P5981323570116766145

`A003781(2*n+1)+A003781(2*n)`
-/

namespace A030443.P5981323570116766145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003781 (2 * n + 1) + A003781 (2 * n)

end

end A030443.P5981323570116766145

/-! ## A030443.P2716999540139774670

`A023919(lt[A023919(2*n+1), A023919(n)])`
-/

namespace A030443.P2716999540139774670
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023919 (2 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023919 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023919 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A030443.P2716999540139774670

/-! ## A030443.P2646377992148362626

`A023919(A072834(2*n))`
-/

namespace A030443.P2646377992148362626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023919 (A072834 (2 * n)).toNat

end

end A030443.P2646377992148362626

/-!
# A030444: Number of fixed n-celled polyknights.

The programs for A030444, there is no canonical definition to state claims against.
-/

/-! ## A030444.P15386427290786463786

`A393390(∑[n+1]+2)`
-/

namespace A030444.P15386427290786463786
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A393390 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A030444.P15386427290786463786

/-! ## A030444.P1913773232255637218

`record[gcd(A259776(n), A393390(n+1))]`
-/

namespace A030444.P1913773232255637218
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A259776 n) (A393390 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A030444.P1913773232255637218

/-!
# A030445: Number of one-sided n-celled polyknights.

The programs for A030445, there is no canonical definition to state claims against.
-/

/-! ## A030445.P9840595573511026847

`A030448(n+1)+A030446(n+1)`
-/

namespace A030445.P9840595573511026847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030448 (n + 1) + A030446 (n + 1)

end

end A030445.P9840595573511026847

/-! ## A030445.P2421086393884246985

`A030447(n+1)+2*A030448(n+1)`
-/

namespace A030445.P2421086393884246985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030447 (n + 1) + 2 * A030448 (n + 1)

end

end A030445.P2421086393884246985

/-! ## A030445.P11687525821978334535

`2*A030446(n+1)-A030447(n+1)`
-/

namespace A030445.P11687525821978334535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A030446 (n + 1) - A030447 (n + 1)

end

end A030445.P11687525821978334535

/-! ## A030445.P9575196744423714648

`A030447(n+1)+A030448(n+1)+A030448(A005555(n))`
-/

namespace A030445.P9575196744423714648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030447 (n + 1) + (A030448 (n + 1) + A030448 (A005555 n).toNat)

end

end A030445.P9575196744423714648

/-! ## A030445.P16031660359730747310

`A030447(n+1)+A030448(n+1)+A030448(A291769(n))`
-/

namespace A030445.P16031660359730747310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030447 (n + 1) + (A030448 (n + 1) + A030448 (A291769 n).toNat)

end

end A030445.P16031660359730747310

/-!
# A030446: Number of n-celled polyknights (polyominoes connected by knight's moves).

The programs for A030446, there is no canonical definition to state claims against.
-/

/-! ## A030446.P2011558918109479539

`A030448(n+1)+A030447(n+1)`
-/

namespace A030446.P2011558918109479539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030448 (n + 1) + A030447 (n + 1)

end

end A030446.P2011558918109479539

/-! ## A030446.P13645038300619057930

`A030445(n+1)-A030448(n+1)`
-/

namespace A030446.P13645038300619057930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030445 (n + 1) - A030448 (n + 1)

end

end A030446.P13645038300619057930

/-! ## A030446.P5802271188449820251

`(A030447(n+1)+A030445(n+1))/2`
-/

namespace A030446.P5802271188449820251
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A030447 (n + 1) + A030445 (n + 1) : ℚ) / 2

end

end A030446.P5802271188449820251

/-! ## A030446.P15435930116902085741

`A393392(∑[n+1]+2)`
-/

namespace A030446.P15435930116902085741
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A393392 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A030446.P15435930116902085741

/-!
# A030447: Number of n-celled polyknights with bilateral symmetry.

The programs for A030447, there is no canonical definition to state claims against.
-/

/-! ## A030447.P814972451282535366

`A030446(n+1)-A030448(n+1)`
-/

namespace A030447.P814972451282535366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030446 (n + 1) - A030448 (n + 1)

end

end A030447.P814972451282535366

/-! ## A030447.P1986308312074250192

`2*A030446(n+1)-A030445(n+1)`
-/

namespace A030447.P1986308312074250192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A030446 (n + 1) - A030445 (n + 1)

end

end A030447.P1986308312074250192

/-! ## A030447.P17473601333236806503

`A030445(n+1)-2*A030448(n+1)`
-/

namespace A030447.P17473601333236806503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030445 (n + 1) - 2 * A030448 (n + 1)

end

end A030447.P17473601333236806503

/-! ## A030447.P8874510228608939462

`A030445(n+1)-(A030448(n+1)+A030448(A005555(n)))`
-/

namespace A030447.P8874510228608939462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030445 (n + 1) - (A030448 (n + 1) + A030448 (A005555 n).toNat)

end

end A030447.P8874510228608939462

/-! ## A030447.P13224895901194249540

`A030446(n+1)+A030446(A005555(n))-A030445(n+1)`
-/

namespace A030447.P13224895901194249540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030446 (n + 1) + A030446 (A005555 n).toNat - A030445 (n + 1)

end

end A030447.P13224895901194249540

/-!
# A030448: Number of n-celled polyknights without bilateral symmetry.

The programs for A030448, there is no canonical definition to state claims against.
-/

/-! ## A030448.P13252866965533411811

`A030445(n+1)-A030446(n+1)`
-/

namespace A030448.P13252866965533411811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030445 (n + 1) - A030446 (n + 1)

end

end A030448.P13252866965533411811

/-! ## A030448.P6327119587958363013

`A030446(n+1)-A030447(n+1)`
-/

namespace A030448.P6327119587958363013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030446 (n + 1) - A030447 (n + 1)

end

end A030448.P6327119587958363013

/-! ## A030448.P7205586987180685924

`(A030445(n+1)-A030447(n+1))/2`
-/

namespace A030448.P7205586987180685924
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A030445 (n + 1) - A030447 (n + 1) : ℚ) / 2

end

end A030448.P7205586987180685924

/-!
# A030449: Number of elements in the free band (idempotent semigroup) on n generators.

The programs for A030449, there is no canonical definition to state claims against.
-/

/-! ## A030449.P16068844820983742606

`A005345(n+1)-1`
-/

namespace A030449.P16068844820983742606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005345 (n + 1) - 1

end

end A030449.P16068844820983742606

/-! ## A030449.P11190779372153108721

`Δ[∑[A005345(n)]-n]`
-/

namespace A030449.P11190779372153108721
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005345 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A030449.P11190779372153108721

/-!
# A030450: Related to number of elements in the free band (idempotent semigroup) on n generators.

The programs for A030450, the canonical program `A030450.P8313234223128072855` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A030450 has offset 0).

The definition of A030450 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A030450.P8313234223128072855

`(n*a(n-1))²` with `a(0)=1`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A030450

/-- `(n*a(n-1))²` -/
def P8313234223128072855.Spec : Prop :=
  ∀ n, (P8313234223128072855.a n : ℤ) = A030450 n

theorem P8313234223128072855.correct : P8313234223128072855.Spec := by
  intro n
  simp only [A030450]

end A030450

/-! ## A030450.P5106781262084550585

`(n*a(n-1))^2` with `a(0)=1`
-/

namespace A030450.P5106781262084550585
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  (n * a (n - 1)) ^ 2

end

end A030450.P5106781262084550585

namespace A030450

/-- `(n*a(n-1))^2` -/
def P5106781262084550585.Spec : Prop :=
  ∀ n, (P5106781262084550585.a n : ℤ) = A030450 n

theorem P5106781262084550585.correct : P5106781262084550585.Spec := by
  intro n
  simp only [A030450, Nat.add_sub_cancel, A030450.P5106781262084550585.a, A030450.P8313234223128072855.a, SequenceMachineLib.memo_apply]

end A030450

/-! ## A030450.P10940365758679433056

`(a(n-1)/tan(acot(n)))²` with `a(0)=1`
-/

namespace A030450.P10940365758679433056
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.rec [1] fun n a =>
  (a (n - 1) / Real.tan (SequenceMachineLib.acot (n : ℝ))) ^ 2

end

end A030450.P10940365758679433056

namespace A030450

/-- `(a(n-1)/tan(acot(n)))²` -/
def P10940365758679433056.Spec : Prop :=
  ∀ n, P10940365758679433056.a n = (A030450 n : ℝ)

end A030450

/-! ## A030450.P16292377226921248926

`(a(n-1)/cot(atan(n)))²` with `a(0)=1`
-/

namespace A030450.P16292377226921248926
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.rec [1] fun n a =>
  (a (n - 1) / Real.cot (Real.arctan (n : ℝ))) ^ 2

end

end A030450.P16292377226921248926

namespace A030450

/-- `(a(n-1)/cot(atan(n)))²` -/
def P16292377226921248926.Spec : Prop :=
  ∀ n, P16292377226921248926.a n = (A030450 n : ℝ)

end A030450

/-!
# A030451: a(2*n) = n, a(2*n+1) = n+2.

The programs for A030451, the canonical program `A030451.P7052687886994460928` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A030451 has offset 0).

The definition of A030451 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A030451.P7052687886994460928

`n+1-a(n-1)` with `a(0)=0`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A030451

/-- `n+1-a(n-1)` -/
def P7052687886994460928.Spec : Prop :=
  ∀ n, P7052687886994460928.a n = A030451 n

theorem P7052687886994460928.correct : P7052687886994460928.Spec := by
  intro n
  simp only [A030451]

end A030451

/-! ## A030451.P12866843810263107008

`a(n-2)+1` with `a(0)=0, a(1)=2`
-/

namespace A030451.P12866843810263107008
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 2] fun n a =>
  a (n - 2) + 1

end

end A030451.P12866843810263107008

namespace A030451

/-- `a(n-2)+1` -/
def P12866843810263107008.Spec : Prop :=
  ∀ n, (P12866843810263107008.a n : ℤ) = A030451 n

end A030451

/-! ## A030451.P17644950622713176871

`ceil(xor(1, n+1)/2)`
-/

namespace A030451.P17644950622713176871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(Nat.xor 1 (n + 1) : ℚ) / 2⌉

end

end A030451.P17644950622713176871

namespace A030451

/-- `ceil(xor(1, n+1)/2)` -/
def P17644950622713176871.Spec : Prop :=
  ∀ n, P17644950622713176871.a n = A030451 n

end A030451

/-! ## A030451.P13957106288834759810

`round(xor(1, n+1)/2)`
-/

namespace A030451.P13957106288834759810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((Nat.xor 1 (n + 1) : ℚ) / 2)

end

end A030451.P13957106288834759810

namespace A030451

/-- `round(xor(1, n+1)/2)` -/
def P13957106288834759810.Spec : Prop :=
  ∀ n, P13957106288834759810.a n = A030451 n

end A030451

/-! ## A030451.P12916574024260728546

`3*ceil(n/2)-n`
-/

namespace A030451.P12916574024260728546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * ⌈(n : ℚ) / 2⌉ - (n : ℤ)

end

end A030451.P12916574024260728546

namespace A030451

/-- `3*ceil(n/2)-n` -/
def P12916574024260728546.Spec : Prop :=
  ∀ n, P12916574024260728546.a n = A030451 n

end A030451

/-! ## A030451.P45634455537587447

`ceil(n%2+n/2)`
-/

namespace A030451.P45634455537587447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((n % 2 : ℕ) : ℚ) + (n : ℚ) / 2⌉

end

end A030451.P45634455537587447

namespace A030451

/-- `ceil(n%2+n/2)` -/
def P45634455537587447.Spec : Prop :=
  ∀ n, P45634455537587447.a n = A030451 n

end A030451

/-! ## A030451.P6042712712067947656

`ceil(and(1, n)+n/2)`
-/

namespace A030451.P6042712712067947656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(Nat.land 1 n : ℚ) + (n : ℚ) / 2⌉

end

end A030451.P6042712712067947656

namespace A030451

/-- `ceil(and(1, n)+n/2)` -/
def P6042712712067947656.Spec : Prop :=
  ∀ n, P6042712712067947656.a n = A030451 n

end A030451

/-! ## A030451.P13593952300147638899

`round(and(1, n)+n/2)`
-/

namespace A030451.P13593952300147638899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((Nat.land 1 n : ℚ) + (n : ℚ) / 2)

end

end A030451.P13593952300147638899

namespace A030451

/-- `round(and(1, n)+n/2)` -/
def P13593952300147638899.Spec : Prop :=
  ∀ n, P13593952300147638899.a n = A030451 n

end A030451

/-! ## A030451.P10261833722741546916

`floor(sinh(log(xor(1, n+3))))`
-/

namespace A030451.P10261833722741546916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.sinh (Real.log (Nat.xor 1 (n + 3) : ℝ))⌋

end

end A030451.P10261833722741546916

namespace A030451

/-- `floor(sinh(log(xor(1, n+3))))` -/
def P10261833722741546916.Spec : Prop :=
  ∀ n, P10261833722741546916.a n = A030451 n

end A030451

/-! ## A030451.P11451510140195247018

`∑[1-a(n-1)]` with `a(0)=0, a(1)=2`
-/

namespace A030451.P11451510140195247018
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 2] fun n f1 =>
  1 - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A030451.P11451510140195247018

namespace A030451

/-- `∑[1-a(n-1)]` -/
def P11451510140195247018.Spec : Prop :=
  ∀ n, P11451510140195247018.a n = A030451 n

end A030451

/-! ## A030451.P12732151906816414252

`abs(n-a(n-3))` with `a(0)=0, a(1)=2, a(2)=1`
-/

namespace A030451.P12732151906816414252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 2, 1] fun n a =>
  |(n : ℤ) - a (n - 3)|

end

end A030451.P12732151906816414252

namespace A030451

/-- `abs(n-a(n-3))` -/
def P12732151906816414252.Spec : Prop :=
  ∀ n, P12732151906816414252.a n = A030451 n

end A030451

/-! ## A030451.P3202792123382541894

`floor((xor(1, n+1)+1)/2)`
-/

namespace A030451.P3202792123382541894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(Nat.xor 1 (n + 1) + 1 : ℚ) / 2⌋

end

end A030451.P3202792123382541894

namespace A030451

/-- `floor((xor(1, n+1)+1)/2)` -/
def P3202792123382541894.Spec : Prop :=
  ∀ n, P3202792123382541894.a n = A030451 n

end A030451

/-! ## A030451.P3639212766565682510

`floor(n-a(n-3))` with `a(0)=0, a(1)=2, a(2)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A030451.P3639212766565682510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 2, 1] fun n a =>
  (n : ℤ) - a (n - 3)

end

end A030451.P3639212766565682510

namespace A030451

/-- `floor(n-a(n-3))` -/
def P3639212766565682510.Spec : Prop :=
  ∀ n, P3639212766565682510.a n = A030451 n

end A030451

/-! ## A030451.P16731080388455116687

`ceil(n-a(n-3))` with `a(0)=0, a(1)=2, a(2)=1`

`ceil` is left out, it is the identity on integers.
-/

namespace A030451.P16731080388455116687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 2, 1] fun n a =>
  (n : ℤ) - a (n - 3)

end

end A030451.P16731080388455116687

namespace A030451

/-- `ceil(n-a(n-3))` -/
def P16731080388455116687.Spec : Prop :=
  ∀ n, P16731080388455116687.a n = A030451 n

end A030451

/-! ## A030451.P15032397440431962133

`round(n-a(n-3))` with `a(0)=0, a(1)=2, a(2)=1`

`round` is left out, it is the identity on integers.
-/

namespace A030451.P15032397440431962133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 2, 1] fun n a =>
  (n : ℤ) - a (n - 3)

end

end A030451.P15032397440431962133

namespace A030451

/-- `round(n-a(n-3))` -/
def P15032397440431962133.Spec : Prop :=
  ∀ n, P15032397440431962133.a n = A030451 n

end A030451

/-! ## A030451.P13701755250686149989

`lcm(2, Δ[lcm(2, n+1)])/2`
-/

namespace A030451.P13701755250686149989
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm 2 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm 2 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)) : ℚ) / 2

end

end A030451.P13701755250686149989

namespace A030451

/-- `lcm(2, Δ[lcm(2, n+1)])/2` -/
def P13701755250686149989.Spec : Prop :=
  ∀ n, P13701755250686149989.a n = (A030451 n : ℚ)

end A030451

/-! ## A030451.P4677430126269271134

`floor(and(1, n)+(n+1)/2)`
-/

namespace A030451.P4677430126269271134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(Nat.land 1 n : ℚ) + (n + 1 : ℚ) / 2⌋

end

end A030451.P4677430126269271134

namespace A030451

/-- `floor(and(1, n)+(n+1)/2)` -/
def P4677430126269271134.Spec : Prop :=
  ∀ n, P4677430126269271134.a n = A030451 n

end A030451

/-! ## A030451.P8792158738094969863

`floor((3/gcd(2, n)+n)/2)`
-/

namespace A030451.P8792158738094969863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(3 / (Nat.gcd 2 n : ℚ) + (n : ℚ)) / 2⌋

end

end A030451.P8792158738094969863

namespace A030451

/-- `floor((3/gcd(2, n)+n)/2)` -/
def P8792158738094969863.Spec : Prop :=
  ∀ n, P8792158738094969863.a n = A030451 n

end A030451

/-!
# A030452: Markov numbers satisfying region 5 (x=5) of the equation x^2 + y^2 + z^2 = 3xyz.

The programs for A030452, the canonical program `A030452.P8396025091167087183` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A030452 has offset 1).

The definition of A030452 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A030452.P8396025091167087183

`15*a(n-2)-a(n-4)` with `a(0)=1, a(1)=2, a(2)=13, a(3)=29`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A030452

/-- `15*a(n-2)-a(n-4)` -/
def P8396025091167087183.Spec : Prop :=
  ∀ n, P8396025091167087183.a n = A030452 (n + 1)

theorem P8396025091167087183.correct : P8396025091167087183.Spec := by
  intro n
  simp only [A030452, Nat.add_sub_cancel]

end A030452

/-! ## A030452.P3182875077197581976

`record[A253809(A297465(n))]`
-/

namespace A030452.P3182875077197581976
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253809 (A297465 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A030452.P3182875077197581976

namespace A030452

/-- `record[A253809(A297465(n))]` -/
def P3182875077197581976.Spec : Prop :=
  ∀ n, P3182875077197581976.a n = A030452 (n + 1)

end A030452

/-!
# A030453: Number of linearly ordered Abelian monoids of size n (semigroups with greatest element of the corresponding chain as neutral element); triangular norms on an n-chain.

The programs for A030453, there is no canonical definition to state claims against.
-/

/-! ## A030453.P13049336431169430281

`A055253(A150856(n))`
-/

namespace A030453.P13049336431169430281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055253 (A150856 n).toNat

end

end A030453.P13049336431169430281

/-! ## A030453.P3099890675861036051

`A138311(A109153(n))`
-/

namespace A030453.P3099890675861036051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138311 (A109153 n).toNat

end

end A030453.P3099890675861036051

/-! ## A030453.P2696155959799878746

`A138311(A109152(∑[n]))`
-/

namespace A030453.P2696155959799878746
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138311 (A109152 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A030453.P2696155959799878746

/-!
# A030456: a(0) = 2; a(n) is smallest prime containing a(n-1) as substring.

The programs for A030456, there is no canonical definition to state claims against.
-/

/-! ## A030456.P16190679198940045219

`A064735(A000720(a(n-1)))` with `a(0)=2`
-/

namespace A030456.P16190679198940045219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A064735 (A000720 (a (n - 1)).toNat).toNat

end

end A030456.P16190679198940045219

/-!
# A030457: Numbers k such that k concatenated with k+1 is prime.

The programs for A030457, there is no canonical definition to state claims against.
-/

/-! ## A030457.P5778196993561453475

`eq[1, A245727(n+1)]+1`
-/

namespace A030457.P5778196993561453475
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245727 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A030457.P5778196993561453475

/-! ## A030457.P17234019642311026877

`record[root(n+2, A245727(n+2))]`
-/

namespace A030457.P17234019642311026877
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℝ) ^ (1 / (A245727 (n + 2) : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A030457.P17234019642311026877

/-! ## A030457.P6219634188276085880

`eq[n+3, A228325(n+2)]+2`
-/

namespace A030457.P6219634188276085880
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228325 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2

end

end A030457.P6219634188276085880

/-! ## A030457.P5382631500549951620

`A014681(eq[1, A245727(n+1)])`
-/

namespace A030457.P5382631500549951620
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245727 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014681 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A030457.P5382631500549951620

/-! ## A030457.P5562331054481988556

`A092486(eq[1, A245727(n+1)])`
-/

namespace A030457.P5562331054481988556
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245727 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092486 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A030457.P5562331054481988556

/-! ## A030457.P13655496345143558600

`A133265(eq[1, A245727(n+1)])`
-/

namespace A030457.P13655496345143558600
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245727 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133265 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A030457.P13655496345143558600

/-! ## A030457.P649059230866805850

`A014681(eq[n+2, A228325(n+1)])`
-/

namespace A030457.P649059230866805850
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228325 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014681 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A030457.P649059230866805850

/-! ## A030457.P14886387067712401917

`record[A133265(n+1)/A245727(n+2)]`
-/

namespace A030457.P14886387067712401917
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A133265 (n + 1) : ℚ) / (A245727 (n + 2) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A030457.P14886387067712401917

/-! ## A030457.P15263859720220413260

`record[(A000265(n+1)+1)/A245727(n+2)]`
-/

namespace A030457.P15263859720220413260
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000265 (n + 1) + 1 : ℚ) / (A245727 (n + 2) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A030457.P15263859720220413260

/-! ## A030457.P16128711221984114943

`record[A133265(n)/A245727(A133265(n))²]`
-/

namespace A030457.P16128711221984114943
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A133265 n : ℚ) / (A245727 (A133265 n).toNat ^ 2 : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A030457.P16128711221984114943

/-! ## A030457.P10317519026151276596

`eq[n+1, A228325(A233583(n+1))]`
-/

namespace A030457.P10317519026151276596
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228325 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A030457.P10317519026151276596

/-!
# A030458: Primes formed by concatenating n with n+1.

The programs for A030458, there is no canonical definition to state claims against.
-/

/-! ## A030458.P12976828957602621098

`∩[A052087(n+1), A154530(n+1)]`
-/

namespace A030458.P12976828957602621098
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052087 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154530 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A030458.P12976828957602621098

/-! ## A030458.P14523787750426085596

`A001704(A030457(n+1))`
-/

namespace A030458.P14523787750426085596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001704 (A030457 (n + 1)).toNat

end

end A030458.P14523787750426085596

/-! ## A030458.P14195414087451106773

`A127421(A030457(n+1)+1)`
-/

namespace A030458.P14195414087451106773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127421 (A030457 (n + 1) + 1).toNat

end

end A030458.P14195414087451106773

/-! ## A030458.P15934657393815296001

`A030656(A030457(n+1)/2)`
-/

namespace A030458.P15934657393815296001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030656 (SequenceMachineLib.roundAway ((A030457 (n + 1) : ℚ) / 2)).toNat

end

end A030458.P15934657393815296001

/-! ## A030458.P8735110696732246494

`∩[A052087(n+1), A030656(n)]`
-/

namespace A030458.P8735110696732246494
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052087 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030656 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A030458.P8735110696732246494

/-! ## A030458.P16428489761288167896

`∩[A154530(n+1), A030656(n)]`
-/

namespace A030458.P16428489761288167896
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154530 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030656 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A030458.P16428489761288167896

/-! ## A030458.P17537086982129137713

`∩[A001704(n+1), A154530(n+1)]`
-/

namespace A030458.P17537086982129137713
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001704 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154530 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A030458.P17537086982129137713

/-! ## A030458.P17646091947901889341

`∩[A127421(n+1), A154530(n+1)]`
-/

namespace A030458.P17646091947901889341
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127421 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154530 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A030458.P17646091947901889341

/-! ## A030458.P9272656229861745531

`∩[A052087(n+1), A275238(n)]`
-/

namespace A030458.P9272656229861745531
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052087 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275238 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A030458.P9272656229861745531

/-! ## A030458.P934599836302930156

`∩[A154530(n+1), A275238(n)]`
-/

namespace A030458.P934599836302930156
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154530 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275238 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A030458.P934599836302930156

/-! ## A030458.P6945009761493267381

`A253253(A030457(2*n+1-n))`
-/

namespace A030458.P6945009761493267381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253253 (A030457 (2 * n + 1 - n)).toNat

end

end A030458.P6945009761493267381

/-! ## A030458.P14972160381704920514

`∩[A001704(n+1), A052087(n+1)]`
-/

namespace A030458.P14972160381704920514
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001704 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052087 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A030458.P14972160381704920514

/-! ## A030458.P17167400108471910831

`∩[A052087(n+1), A127421(n+1)]`
-/

namespace A030458.P17167400108471910831
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052087 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127421 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A030458.P17167400108471910831

/-! ## A030458.P8581816837764994617

`∩[A127423(n+1)+2, A154530(n+1)]`
-/

namespace A030458.P8581816837764994617
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127423 (n + 1) + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154530 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A030458.P8581816837764994617

/-! ## A030458.P12908996203708447715

`A275238(A030457(A004442(A004442(n+1))))`
-/

namespace A030458.P12908996203708447715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275238 (A030457 (A004442 (A004442 (n + 1)).toNat).toNat).toNat

end

end A030458.P12908996203708447715

/-! ## A030458.P3340326918106418605

`∩[A035333(n+1), A154530(n+1)]`
-/

namespace A030458.P3340326918106418605
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035333 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154530 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A030458.P3340326918106418605

/-! ## A030458.P18248313974619165255

`A248378(2*(A030457(n+1)-1))`
-/

namespace A030458.P18248313974619165255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248378 (2 * (A030457 (n + 1) - 1)).toNat

end

end A030458.P18248313974619165255

/-! ## A030458.P12697395136759406986

`A248378(A030457(n+1)+A030457(n+1)-2)`
-/

namespace A030458.P12697395136759406986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248378 (A030457 (n + 1) + (A030457 (n + 1) - 2)).toNat

end

end A030458.P12697395136759406986

/-! ## A030458.P1413554988986240940

`p?[A030656(n)]`
-/

namespace A030458.P1413554988986240940
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030656 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A030458.P1413554988986240940

/-! ## A030458.P16973596655188941356

`p?[A275238(n)]`
-/

namespace A030458.P16973596655188941356
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275238 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A030458.P16973596655188941356

/-!
# A030459: Prime p concatenated with next prime is also prime.

The programs for A030459, there is no canonical definition to state claims against.
-/

/-! ## A030459.P12528576362789710387

`A008578(A000720(p?[A030460(n+1)]))`
-/

namespace A030459.P12528576362789710387
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030460 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (A000720 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat).toNat

end

end A030459.P12528576362789710387

/-! ## A030459.P13540421374040231797

`A000040(A000720(A030460(n+1)-1))`
-/

namespace A030459.P13540421374040231797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A000720 (A030460 (n + 1) - 1).toNat).toNat

end

end A030459.P13540421374040231797

/-! ## A030459.P9933500151274687638

`A000040(A000720(and(-2, A030460(n+1))))`
-/

namespace A030459.P9933500151274687638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A000720 (Int.land (-2) (A030460 (n + 1))).toNat).toNat

end

end A030459.P9933500151274687638

/-! ## A030459.P16903393089655865235

`p?[A034591(n+1)]`
-/

namespace A030459.P16903393089655865235
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034591 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A030459.P16903393089655865235

/-! ## A030459.P434707445319470707

`filter[A034591(n+2), A010051(#)]`
-/

namespace A030459.P434707445319470707
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034591 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A030459.P434707445319470707

/-! ## A030459.P5625145905869853501

`∩[A000040(n+1), A034591(n+1)]`
-/

namespace A030459.P5625145905869853501
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034591 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A030459.P5625145905869853501

/-! ## A030459.P2129142262451535033

`∩[A008578(n+1), A034591(n+1)]`
-/

namespace A030459.P2129142262451535033
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034591 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A030459.P2129142262451535033

/-! ## A030459.P11598923848718324021

`∩[A034591(n+1), A045319(n+1)]`
-/

namespace A030459.P11598923848718324021
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034591 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045319 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A030459.P11598923848718324021

/-! ## A030459.P4848457849624369515

`∩[A034591(n+1), A045344(n+1)]`
-/

namespace A030459.P4848457849624369515
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034591 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045344 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A030459.P4848457849624369515

/-! ## A030459.P15010113540693429952

`∩[A034591(n+1), A046022(n+1)]`
-/

namespace A030459.P15010113540693429952
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034591 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046022 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A030459.P15010113540693429952

/-! ## A030459.P1896499088675048253

`∩[A034591(n+1), A062972(n+1)]`
-/

namespace A030459.P1896499088675048253
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034591 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062972 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A030459.P1896499088675048253

/-! ## A030459.P4194862742707239659

`∩[A034591(n+1), A067774(n+1)]`
-/

namespace A030459.P4194862742707239659
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034591 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067774 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A030459.P4194862742707239659

/-! ## A030459.P16337917808906058922

`∩[A034591(n+1), A067775(n+1)]`
-/

namespace A030459.P16337917808906058922
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034591 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067775 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A030459.P16337917808906058922

/-! ## A030459.P2435257475873667819

`∩[A034591(n+1), A106118(n+1)]`
-/

namespace A030459.P2435257475873667819
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034591 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106118 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A030459.P2435257475873667819

/-! ## A030459.P13548674197818196701

`∩[A034591(n+1), A175787(n+1)]`
-/

namespace A030459.P13548674197818196701
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034591 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175787 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A030459.P13548674197818196701

/-! ## A030459.P17337468570409325890

`∩[A034591(n+1), A182140(n+1)]`
-/

namespace A030459.P17337468570409325890
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034591 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182140 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A030459.P17337468570409325890

/-! ## A030459.P1914407244370476356

`∩[A034591(n+1), A261123(n+1)]`
-/

namespace A030459.P1914407244370476356
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034591 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261123 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A030459.P1914407244370476356

/-! ## A030459.P12684348254716709653

`A064989(p?[A030460(n+1)])`
-/

namespace A030459.P12684348254716709653
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030460 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064989 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A030459.P12684348254716709653

/-!
# A030460: Previous prime concatenated with this prime p is a prime.

The programs for A030460, there is no canonical definition to state claims against.
-/

/-! ## A030460.P12334178015097096178

`A030461(n+1)%(2*A030459(n+1))`
-/

namespace A030460.P12334178015097096178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A030461 (n + 1)) (2 * A030459 (n + 1))

end

end A030460.P12334178015097096178

/-! ## A030460.P8811785410141699053

`p?[A034808(n+1)]`
-/

namespace A030460.P8811785410141699053
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034808 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A030460.P8811785410141699053

/-! ## A030460.P1186503453318000869

`∩[A034808(n+1), A327748(n+1)]`
-/

namespace A030460.P1186503453318000869
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034808 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327748 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A030460.P1186503453318000869

/-! ## A030460.P12266789581893233644

`∩[A025584(n+1), A034808(n+1)]`
-/

namespace A030460.P12266789581893233644
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025584 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034808 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A030460.P12266789581893233644

/-! ## A030460.P10655273243090438267

`∩[A000040(n+1), A034808(n+1)]`
-/

namespace A030460.P10655273243090438267
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034808 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A030460.P10655273243090438267

/-! ## A030460.P12910905212451351616

`∩[A004139(n+1), A034808(n+1)]`
-/

namespace A030460.P12910905212451351616
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004139 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034808 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A030460.P12910905212451351616

/-! ## A030460.P13380345179075877442

`∩[A006005(n+1), A034808(n+1)]`
-/

namespace A030460.P13380345179075877442
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006005 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034808 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A030460.P13380345179075877442

/-! ## A030460.P14074605022579239564

`∩[A034808(n+1), A045319(n+1)]`
-/

namespace A030460.P14074605022579239564
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034808 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045319 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A030460.P14074605022579239564

/-! ## A030460.P2629875222588280308

`∩[A034808(n+1), A065091(n+1)]`
-/

namespace A030460.P2629875222588280308
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034808 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A030460.P2629875222588280308

/-! ## A030460.P15752488817339748983

`∩[A008578(n+1), A034808(n+1)]`
-/

namespace A030460.P15752488817339748983
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034808 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A030460.P15752488817339748983

/-! ## A030460.P17431130281006793685

`∩[A034808(n+1), A046022(n+1)]`
-/

namespace A030460.P17431130281006793685
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034808 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046022 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A030460.P17431130281006793685

/-! ## A030460.P10216456900929220144

`∩[A034808(n+1), A051948(n+1)]`
-/

namespace A030460.P10216456900929220144
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034808 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051948 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A030460.P10216456900929220144

/-! ## A030460.P15724270688261291755

`∩[A034808(n+1), A053813(n+1)]`
-/

namespace A030460.P15724270688261291755
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034808 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053813 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A030460.P15724270688261291755

/-! ## A030460.P6085484612301460246

`∩[A034808(n+1), A066542(n+1)]`
-/

namespace A030460.P6085484612301460246
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034808 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066542 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A030460.P6085484612301460246

/-! ## A030460.P8584263320168044353

`∩[A034808(n+1), A067133(n+1)]`
-/

namespace A030460.P8584263320168044353
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034808 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067133 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A030460.P8584263320168044353

/-! ## A030460.P12856273975535690969

`∩[A034808(n+1), A116974(n+1)]`
-/

namespace A030460.P12856273975535690969
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034808 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116974 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A030460.P12856273975535690969

/-! ## A030460.P178471028835395942

`∩[A034808(n+1), A140826(n+1)]`
-/

namespace A030460.P178471028835395942
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034808 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140826 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A030460.P178471028835395942

/-! ## A030460.P4650872905432114385

`∩[A034808(n+1), A158611(n+1)]`
-/

namespace A030460.P4650872905432114385
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034808 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158611 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A030460.P4650872905432114385

/-! ## A030460.P13278563358885805383

`∩[A174090(n+1), A034808(n+1)]`
-/

namespace A030460.P13278563358885805383
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174090 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034808 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A030460.P13278563358885805383

/-! ## A030460.P12249731737404349849

`∩[A034808(n+1), A182986(n+1)]`
-/

namespace A030460.P12249731737404349849
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034808 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182986 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A030460.P12249731737404349849

/-!
# A030461: Primes that are concatenations of two consecutive primes.

The programs for A030461, there is no canonical definition to state claims against.
-/

/-! ## A030461.P14896520002900215058

`∩[A068655(n+1), A280576(n+1)]`
-/

namespace A030461.P14896520002900215058
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068655 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280576 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A030461.P14896520002900215058

/-! ## A030461.P15127628462408414668

`∩[A045533(n+1), A068655(n+1)]`
-/

namespace A030461.P15127628462408414668
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045533 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068655 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A030461.P15127628462408414668

/-! ## A030461.P4195706935258861660

`A045533(A000720(A030459(n+1)))`
-/

namespace A030461.P4195706935258861660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045533 (A000720 (A030459 (n + 1)).toNat).toNat

end

end A030461.P4195706935258861660

/-! ## A030461.P14219383806248903616

`A045533(A000720(A030460(n+1)-1))`
-/

namespace A030461.P14219383806248903616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045533 (A000720 (A030460 (n + 1) - 1).toNat).toNat

end

end A030461.P14219383806248903616

/-! ## A030461.P8270539410118289764

`A045533(A000720(xor(1, A030460(n+1))))`
-/

namespace A030461.P8270539410118289764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045533 (A000720 (Int.xor 1 (A030460 (n + 1))).toNat).toNat

end

end A030461.P8270539410118289764

/-! ## A030461.P6023914911869106340

`A045533(A000720(A000010(A030460(n+1))))`
-/

namespace A030461.P6023914911869106340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045533 (A000720 (A000010 (A030460 (n + 1)).toNat).toNat).toNat

end

end A030461.P6023914911869106340

/-! ## A030461.P11090532910084874248

`∩[A045533(n+1), A280376(n+1)]`
-/

namespace A030461.P11090532910084874248
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045533 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280376 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A030461.P11090532910084874248

/-! ## A030461.P7047297644312189560

`∩[A068655(n+1), A280376(n+1)]`
-/

namespace A030461.P7047297644312189560
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068655 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280376 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A030461.P7047297644312189560

/-! ## A030461.P4389405731088117468

`∩[A045533(n+1), A280576(n+1)]`
-/

namespace A030461.P4389405731088117468
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045533 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280576 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A030461.P4389405731088117468

/-! ## A030461.P3167398938904480551

`∩[A280376(n+1), A280576(n+1)]`
-/

namespace A030461.P3167398938904480551
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280376 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280576 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A030461.P3167398938904480551

/-! ## A030461.P7319283283407258206

`A049852(A030459(n+1))`
-/

namespace A030461.P7319283283407258206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049852 (A030459 (n + 1)).toNat

end

end A030461.P7319283283407258206

/-! ## A030461.P151889300502942290

`A049851(A030460(n+1))`
-/

namespace A030461.P151889300502942290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049851 (A030460 (n + 1)).toNat

end

end A030461.P151889300502942290

/-! ## A030461.P8475910627757016503

`A049851(p?[A034808(n+1)])`
-/

namespace A030461.P8475910627757016503
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034808 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049851 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A030461.P8475910627757016503

/-! ## A030461.P5000036548850634635

`∩[A049852(n+1), A068655(n+1)]`
-/

namespace A030461.P5000036548850634635
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049852 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068655 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A030461.P5000036548850634635

/-! ## A030461.P10159280154223632795

`∩[A068655(n+1), A049851(n+3)]`
-/

namespace A030461.P10159280154223632795
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068655 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049851 (n + 3)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A030461.P10159280154223632795

/-! ## A030461.P3202746454673163332

`∩[A280376(n+1), A049851(n+3)]`
-/

namespace A030461.P3202746454673163332
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280376 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049851 (n + 3)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A030461.P3202746454673163332

/-! ## A030461.P17382582759083403484

`A045533(∏{d}[A030459(n+1), A087712(#)])`
-/

namespace A030461.P17382582759083403484
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030459 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045533 (∏ d ∈ Nat.divisors (f1 n).natAbs, A087712 d).toNat

end

end A030461.P17382582759083403484

/-!
# A030465: Numbers k such that k concatenated with k+1 is a square.

The programs for A030465, there is no canonical definition to state claims against.
-/

/-! ## A030465.P2661451673319119264

`record[A116136(n+3)%A116267(n+3)]`
-/

namespace A030465.P2661451673319119264
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A116136 (n + 3)) (A116267 (n + 3))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A030465.P2661451673319119264

/-! ## A030465.P16358241180190505342

`filter[A116136(n+1), A353627(#)]`
-/

namespace A030465.P16358241180190505342
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116136 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353627 (f1 j).toNat = 1) n)

end

end A030465.P16358241180190505342

/-! ## A030465.P18376965943041131548

`filter[A116136(n+1), A353628(#)]`
-/

namespace A030465.P18376965943041131548
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116136 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353628 (f1 j).toNat = 1) n)

end

end A030465.P18376965943041131548

/-!
# A030466: Squares that are concatenations of two consecutive nonzero numbers.

The programs for A030466, there is no canonical definition to state claims against.
-/

/-! ## A030466.P5543765146357225210

`A030465(n+1)*(10^A055642(A030465(n+1))+1)+1`
-/

namespace A030466.P5543765146357225210
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A030465 (n + 1) : ℚ) * ((10 : ℚ) ^ (A055642 (A030465 (n + 1)).toNat : ℤ) + 1) + 1

end

end A030466.P5543765146357225210

/-! ## A030466.P8730088224252275373

`A030467(n+1)²`
-/

namespace A030466.P8730088224252275373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030467 (n + 1) ^ 2

end

end A030466.P8730088224252275373

/-! ## A030466.P17066764764884609635

`A030467(n+1)^(2%A054214(n+1))`
-/

namespace A030466.P17066764764884609635
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A030467 (n + 1) : ℚ) ^ (Int.tmod 2 (A054214 (n + 1)) : ℤ)

end

end A030466.P17066764764884609635

/-! ## A030466.P14435901569538516108

`A030467(n+1)^A000005(A076567(n+1))`
-/

namespace A030466.P14435901569538516108
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A030467 (n + 1) : ℚ) ^ (A000005 (A076567 (n + 1)).toNat : ℤ)

end

end A030466.P14435901569538516108

/-! ## A030466.P9621557570067277870

`A030467(n+1)^A000005(A205687(n+1))`
-/

namespace A030466.P9621557570067277870
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A030467 (n + 1) : ℚ) ^ (A000005 (A205687 (n + 1)).toNat : ℤ)

end

end A030466.P9621557570067277870

/-! ## A030466.P2660016923272898819

`A030467(n+1)^A001222(A070552(n+1))`
-/

namespace A030466.P2660016923272898819
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A030467 (n + 1) : ℚ) ^ (A001222 (A070552 (n + 1)).toNat : ℤ)

end

end A030466.P2660016923272898819

/-! ## A030466.P5007014209524130565

`A030467(n+1)^A030413(A030416(n+1))`
-/

namespace A030466.P5007014209524130565
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A030467 (n + 1) : ℚ) ^ (A030413 (A030416 (n + 1)).toNat : ℤ)

end

end A030466.P5007014209524130565

/-! ## A030466.P4131328559358919441

`A030467(n+1)^A000034(A004767(n))`
-/

namespace A030466.P4131328559358919441
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A030467 (n + 1) : ℚ) ^ (A000034 (A004767 n).toNat : ℤ)

end

end A030466.P4131328559358919441

/-! ## A030466.P7650799037835557337

`record[A030467(A065648(n))²]`
-/

namespace A030466.P7650799037835557337
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030467 (A065648 n).toNat ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A030466.P7650799037835557337

/-! ## A030466.P6218549981709863491

`record[A030467(A022446(n))²]`
-/

namespace A030466.P6218549981709863491
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030467 (A022446 n).toNat ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A030466.P6218549981709863491

/-! ## A030466.P9106415723234264748

`record[A030467(A022446(n))]*A030467(n+1)`
-/

namespace A030466.P9106415723234264748
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030467 (A022446 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) * A030467 (n + 1)

end

end A030466.P9106415723234264748

/-! ## A030466.P5822570722872962374

`A030467(n+1)^A000034(A017629(n))`
-/

namespace A030466.P5822570722872962374
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A030467 (n + 1) : ℚ) ^ (A000034 (A017629 n).toNat : ℤ)

end

end A030466.P5822570722872962374

/-! ## A030466.P12159096513862989070

`A030467(n+1)^A000005(A030459(n+1))`
-/

namespace A030466.P12159096513862989070
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A030467 (n + 1) : ℚ) ^ (A000005 (A030459 (n + 1)).toNat : ℤ)

end

end A030466.P12159096513862989070

/-! ## A030466.P3136951387676993540

`A030467(n+1)^A000005(A030460(n+1))`
-/

namespace A030466.P3136951387676993540
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A030467 (n + 1) : ℚ) ^ (A000005 (A030460 (n + 1)).toNat : ℤ)

end

end A030466.P3136951387676993540

/-! ## A030466.P13685840675646863396

`record[A030467(A038568(n))²]`
-/

namespace A030466.P13685840675646863396
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030467 (A038568 n).toNat ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A030466.P13685840675646863396

/-! ## A030466.P17688442961954803319

`record[A030467(A038568(n))]*A030467(n+1)`
-/

namespace A030466.P17688442961954803319
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030467 (A038568 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) * A030467 (n + 1)

end

end A030466.P17688442961954803319

/-! ## A030466.P14447296606160460623

`record[A030467(A020986(n))²]`
-/

namespace A030466.P14447296606160460623
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030467 (A020986 n).toNat ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A030466.P14447296606160460623

/-! ## A030466.P14076778857118856953

`record[A030467(A020986(n))]*A030467(n+1)`
-/

namespace A030466.P14076778857118856953
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030467 (A020986 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) * A030467 (n + 1)

end

end A030466.P14076778857118856953

/-! ## A030466.P9040105636236307671

`record[A030467(A028920(n))²]`
-/

namespace A030466.P9040105636236307671
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030467 (A028920 n).toNat ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A030466.P9040105636236307671

/-! ## A030466.P9447009188267149750

`record[A030467(A028920(n))]*A030467(n+1)`
-/

namespace A030466.P9447009188267149750
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030467 (A028920 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) * A030467 (n + 1)

end

end A030466.P9447009188267149750

/-!
# A030467: Numbers k such that k^2 is a concatenation of two successive numbers.

The programs for A030467, there is no canonical definition to state claims against.
-/

/-! ## A030467.P5493115690113626379

`sqrt(A030466(n+1))`
-/

namespace A030467.P5493115690113626379
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A030466 (n + 1) : ℝ)

end

end A030467.P5493115690113626379

/-! ## A030467.P1893556072155207626

`root(A030466(n+1), A001316(A001316(n)))`
-/

namespace A030467.P1893556072155207626
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A030466 (n + 1) : ℝ) ^ (1 / (A001316 (A001316 n).toNat : ℝ))

end

end A030467.P1893556072155207626

/-! ## A030467.P10424029964601740482

`A030466(n+1)^(A064470(n+1)/A064469(n+1))`
-/

namespace A030467.P10424029964601740482
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A030466 (n + 1) : ℝ) ^ ((A064470 (n + 1) : ℚ) / (A064469 (n + 1) : ℚ) : ℝ)

end

end A030467.P10424029964601740482

/-! ## A030467.P6355442143975830934

`root(A030466(n+1), ratio[A000079(n)])`
-/

namespace A030467.P6355442143975830934
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A030466 (n + 1) : ℝ) ^ (1 / ((f1 (n + 1) : ℚ) / (f1 n : ℚ) : ℝ))

end

end A030467.P6355442143975830934

/-! ## A030467.P8867317194760518108

`record[sqrt(A030466(C(comp[∑[n]]-n, 2)-n))]`
-/

namespace A030467.P8867317194760518108
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A030466 (Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 - n) : ℝ)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A030467.P8867317194760518108

/-!
# A030468: Primes which when concatenated with next two primes are also prime.

The programs for A030468, there is no canonical definition to state claims against.
-/

/-! ## A030468.P5468831617946968761

`A290099(p?[A034810(n+1)])`
-/

namespace A030468.P5468831617946968761
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034810 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290099 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A030468.P5468831617946968761

/-! ## A030468.P17553595440668841909

`A353412(p?[A034810(n+1)])`
-/

namespace A030468.P17553595440668841909
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034810 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353412 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A030468.P17553595440668841909

/-! ## A030468.P13845328462031381458

`A064989(p?[A034810(n+1)])`
-/

namespace A030468.P13845328462031381458
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034810 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064989 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A030468.P13845328462031381458

/-! ## A030468.P46033424190441591

`A341515(p?[A034810(n+1)])`
-/

namespace A030468.P46033424190441591
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034810 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341515 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A030468.P46033424190441591

/-! ## A030468.P10334413077263607279

`A341516(p?[A034810(n+1)])`
-/

namespace A030468.P10334413077263607279
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034810 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341516 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A030468.P10334413077263607279

/-!
# A030469: Primes which are concatenations of three consecutive primes.

The programs for A030469, there is no canonical definition to state claims against.
-/

/-! ## A030469.P15486918683384175447

`A049857(p?[A034810(n+1)])`
-/

namespace A030469.P15486918683384175447
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034810 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049857 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A030469.P15486918683384175447

/-! ## A030469.P3595027870301064021

`∩[A068655(n+1), A132903(n+1)]`
-/

namespace A030469.P3595027870301064021
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068655 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132903 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A030469.P3595027870301064021

/-! ## A030469.P7172112440038614929

`∩[A068655(n+1), A049857(n+3)]`
-/

namespace A030469.P7172112440038614929
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068655 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049857 (n + 3)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A030469.P7172112440038614929

/-! ## A030469.P2465032957797789166

`A049857(∩[A004139(n+1), A034810(n+1)])`
-/

namespace A030469.P2465032957797789166
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004139 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034810 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049857 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n)

end

end A030469.P2465032957797789166

/-! ## A030469.P8063764402571151696

`A049857(∩[A006005(n+1), A034810(n+1)])`
-/

namespace A030469.P8063764402571151696
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006005 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034810 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049857 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n)

end

end A030469.P8063764402571151696

/-! ## A030469.P15974843282473192083

`A049857(∩[A008578(n+1), A034810(n+1)])`
-/

namespace A030469.P15974843282473192083
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034810 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049857 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n)

end

end A030469.P15974843282473192083

/-! ## A030469.P851623762448092862

`A049857(∩[A033946(n+1), A034810(n+1)])`
-/

namespace A030469.P851623762448092862
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033946 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034810 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049857 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n)

end

end A030469.P851623762448092862

/-! ## A030469.P16489280431751002937

`A049857(∩[A034810(n+1), A045319(n+1)])`
-/

namespace A030469.P16489280431751002937
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034810 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045319 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049857 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n)

end

end A030469.P16489280431751002937

/-! ## A030469.P1041851348445596819

`A049857(∩[A034810(n+1), A045344(n+1)])`
-/

namespace A030469.P1041851348445596819
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034810 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045344 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049857 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n)

end

end A030469.P1041851348445596819

/-! ## A030469.P16514057379653748339

`A049857(∩[A034810(n+1), A065091(n+1)])`
-/

namespace A030469.P16514057379653748339
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034810 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049857 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n)

end

end A030469.P16514057379653748339

/-! ## A030469.P7234991426126148737

`∩[A049857(A034810(n+1)), A132903(n+1)]`
-/

namespace A030469.P7234991426126148737
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049857 (A034810 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132903 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A030469.P7234991426126148737

/-!
# A030471: Primes which are concatenations of four consecutive numbers.

The programs for A030471, there is no canonical definition to state claims against.
-/

/-! ## A030471.P8739786183383212388

`A279204(A030470(n+1))`
-/

namespace A030471.P8739786183383212388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279204 (A030470 (n + 1)).toNat

end

end A030471.P8739786183383212388

/-! ## A030471.P5879223511608500638

`∩[A052087(n+1), A279204(n+1)]`
-/

namespace A030471.P5879223511608500638
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052087 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279204 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A030471.P5879223511608500638

/-!
# A030472: Primes which when concatenated with next 3 primes are also prime.

The programs for A030472, there is no canonical definition to state claims against.
-/

/-! ## A030472.P4486832812383152395

`p?[A000040(n+1)*A102745(n+1)]`
-/

namespace A030472.P4486832812383152395
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) * A102745 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A030472.P4486832812383152395

/-! ## A030472.P16678580702646883952

`p?[p?[A084937(n+1)]*A102745(n+1)]`
-/

namespace A030472.P16678580702646883952
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084937 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n) * A102745 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A030472.P16678580702646883952

/-! ## A030472.P2969754925287087496

`p?[(A006093(n+1)+1)*A102745(n+1)]`
-/

namespace A030472.P2969754925287087496
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A006093 (n + 1) + 1) * A102745 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A030472.P2969754925287087496

/-! ## A030472.P9274966381236392409

`p?[A006530(A001749(n+1))*A102745(n+1)]`
-/

namespace A030472.P9274966381236392409
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A001749 (n + 1)).toNat * A102745 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A030472.P9274966381236392409

/-!
# A030474: n does not have the property that all even digits occur together and all odd digits occur together.

The programs for A030474, there is no canonical definition to state claims against.
-/

/-! ## A030474.P8982663561407045813

`filter[A043639(n+1), A228710(#)]`
-/

namespace A030474.P8982663561407045813
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043639 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A228710 (f1 j).toNat = 1) n)

end

end A030474.P8982663561407045813

/-! ## A030474.P17679046242444889309

`eq[val(A283531(n), 2), A158388(n)]`
-/

namespace A030474.P17679046242444889309
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A283531 n).toNat 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158388 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A030474.P17679046242444889309

/-! ## A030474.P8623690506921424310

`∩[A030141(n+1), A043639(n+1)]`
-/

namespace A030474.P8623690506921424310
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030141 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043639 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A030474.P8623690506921424310

/-! ## A030474.P3675782526016958971

`eq[A010555(A073053(n)), A228710(n)]`
-/

namespace A030474.P3675782526016958971
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010555 (A073053 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228710 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A030474.P3675782526016958971

/-! ## A030474.P6733522858463622713

`eq[A091088(A308003(n)), A228710(n)]`
-/

namespace A030474.P6733522858463622713
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091088 (A308003 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228710 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A030474.P6733522858463622713

/-! ## A030474.P10014015217838571954

`eq[A228710(n), A345312(A332550(n))]`
-/

namespace A030474.P10014015217838571954
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228710 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345312 (A332550 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A030474.P10014015217838571954

/-! ## A030474.P2786457594684235595

`eq[A196564(n)+A065031(n), A073053(n)]`
-/

namespace A030474.P2786457594684235595
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196564 n + A065031 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073053 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A030474.P2786457594684235595

/-!
# A030475: Primes with property that all even digits occur together and all odd digits occur together.

The programs for A030475, there is no canonical definition to state claims against.
-/

/-! ## A030475.P8187948585889120636

`A000040(lt[A359003(n+3), A169964(n+1)])`
-/

namespace A030475.P8187948585889120636
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359003 (n + 3)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169964 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A030475.P8187948585889120636

/-! ## A030475.P13503540881029761848

`A038618(comp[∑[A356361(n)^n]-1])`
-/

namespace A030475.P13503540881029761848
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356361 n ^ n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038618 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A030475.P13503540881029761848

/-! ## A030475.P1742605623252797795

`A000040(lt[A086993(n+3), A250120(n)])`
-/

namespace A030475.P1742605623252797795
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086993 (n + 3)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250120 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A030475.P1742605623252797795

/-!
# A030476: Squares with property that all even digits occur together and all odd digits occur together.

The programs for A030476, there is no canonical definition to state claims against.
-/

/-! ## A030476.P266703279976336525

`A030477(n+1)²`
-/

namespace A030476.P266703279976336525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030477 (n + 1) ^ 2

end

end A030476.P266703279976336525

/-! ## A030476.P5983769791016324445

`A030477(n+1)^A020639(4*(n+1))`
-/

namespace A030476.P5983769791016324445
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A030477 (n + 1) : ℚ) ^ (A020639 (4 * (n + 1)) : ℤ)

end

end A030476.P5983769791016324445

/-! ## A030476.P15884315574291657194

`A030477(n+1)^A000005(A007918(n))`
-/

namespace A030476.P15884315574291657194
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A030477 (n + 1) : ℚ) ^ (A000005 (A007918 n).toNat : ℤ)

end

end A030476.P15884315574291657194

/-! ## A030476.P10917024761660951159

`A030477(n+1)^A001222(2*A006530(n+1))`
-/

namespace A030476.P10917024761660951159
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A030477 (n + 1) : ℚ) ^ (A001222 (2 * A006530 (n + 1)).toNat : ℤ)

end

end A030476.P10917024761660951159

/-! ## A030476.P14844059961732401687

`A030477(n+1)^A000005(A002313(n+1))`
-/

namespace A030476.P14844059961732401687
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A030477 (n + 1) : ℚ) ^ (A000005 (A002313 (n + 1)).toNat : ℤ)

end

end A030476.P14844059961732401687

/-! ## A030476.P1919894537099613153

`A030477(n+1)^A001221(A001748(n+1))`
-/

namespace A030476.P1919894537099613153
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A030477 (n + 1) : ℚ) ^ (A001221 (A001748 (n + 1)).toNat : ℤ)

end

end A030476.P1919894537099613153

/-! ## A030476.P10607886239051055507

`A030477(n+1)^A001221(A001749(n+1))`
-/

namespace A030476.P10607886239051055507
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A030477 (n + 1) : ℚ) ^ (A001221 (A001749 (n + 1)).toNat : ℤ)

end

end A030476.P10607886239051055507

/-! ## A030476.P3808228639640085791

`A030477(n+1)^A028326(C(n+1, 2))`
-/

namespace A030476.P3808228639640085791
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A030477 (n + 1) : ℚ) ^ (A028326 (Nat.choose (n + 1) 2) : ℤ)

end

end A030476.P3808228639640085791

/-! ## A030476.P15408336992009362831

`A030477(n+1)^A029653(C(n+1, 2))`
-/

namespace A030476.P15408336992009362831
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A030477 (n + 1) : ℚ) ^ (A029653 (Nat.choose (n + 1) 2) : ℤ)

end

end A030476.P15408336992009362831

/-! ## A030476.P6713356781322777359

`A030477(n+1)^A134058(C(n+1, 2))`
-/

namespace A030476.P6713356781322777359
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A030477 (n + 1) : ℚ) ^ (A134058 (Nat.choose (n + 1) 2) : ℤ)

end

end A030476.P6713356781322777359

/-!
# A030477: Numbers k such that k^2 has property that all even digits occur together and all odd digits occur together.

The programs for A030477, there is no canonical definition to state claims against.
-/

/-! ## A030477.P11447072941480536153

`sqrt(A030476(n+1))`
-/

namespace A030477.P11447072941480536153
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A030476 (n + 1) : ℝ)

end

end A030477.P11447072941480536153

/-! ## A030477.P1557651502783768108

`A056926(A030476(n+1)*A054977(n))`
-/

namespace A030477.P1557651502783768108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056926 (A030476 (n + 1) * A054977 n).toNat

end

end A030477.P1557651502783768108

/-! ## A030477.P1623122008060566922

`A056926(A030476(n+1)/A054977(n))`
-/

namespace A030477.P1623122008060566922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056926 (SequenceMachineLib.roundAway ((A030476 (n + 1) : ℚ) / (A054977 n : ℚ))).toNat

end

end A030477.P1623122008060566922

/-! ## A030477.P13675245987121476284

`A056926(∑{d}[A030476(n+1), A000010(#)])`
-/

namespace A030477.P13675245987121476284
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030476 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056926 (∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 d).toNat

end

end A030477.P13675245987121476284

/-! ## A030477.P7425966426885358030

`A000196(∩[A030476(n+1), n²])`
-/

namespace A030477.P7425966426885358030
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030476 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = x) n)

end

end A030477.P7425966426885358030

/-! ## A030477.P17578970491495520166

`A000196(∑{d}[A030476(n+1), A000010(#)])`
-/

namespace A030477.P17578970491495520166
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030476 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 d).toNat

end

end A030477.P17578970491495520166

/-! ## A030477.P3252374772087979703

`A000196(A212213(n+2)+A030476(n+1))`
-/

namespace A030477.P3252374772087979703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A212213 (n + 2) + A030476 (n + 1)).toNat

end

end A030477.P3252374772087979703

/-! ## A030477.P16242655982239287917

`A000196(A114986(3*n+2)+A030476(n+1))`
-/

namespace A030477.P16242655982239287917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A114986 (3 * n + 2) + A030476 (n + 1)).toNat

end

end A030477.P16242655982239287917

/-! ## A030477.P8951048105313135824

`A000194(A030476(n+1)+n)`
-/

namespace A030477.P8951048105313135824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000194 (A030476 (n + 1) + (n : ℤ)).toNat

end

end A030477.P8951048105313135824

/-! ## A030477.P3226672782294624599

`A000196(A030476(n+1)+n)`
-/

namespace A030477.P3226672782294624599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A030476 (n + 1) + (n : ℤ)).toNat

end

end A030477.P3226672782294624599

/-!
# A030478: Numbers k such that k^3 has property that all even digits occur together and all odd digits occur together.

The programs for A030478, there is no canonical definition to state claims against.
-/

/-! ## A030478.P10417082450503824950

`A030479(n+1)^(1/3)`
-/

namespace A030478.P10417082450503824950
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A030479 (n + 1) : ℝ) ^ ((1 : ℚ) / 3 : ℝ)

end

end A030478.P10417082450503824950

/-!
# A030479: Cubes with property that all even digits occur together and all odd digits occur together.

The programs for A030479, there is no canonical definition to state claims against.
-/

/-! ## A030479.P17332262477206019366

`A030478(n+1)^3`
-/

namespace A030479.P17332262477206019366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030478 (n + 1) ^ 3

end

end A030479.P17332262477206019366

/-! ## A030479.P11213602001298631938

`(A054977(n)²*A030478(n+1))²*A030478(n+1)`
-/

namespace A030479.P11213602001298631938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A054977 n ^ 2 * A030478 (n + 1)) ^ 2 * A030478 (n + 1)

end

end A030479.P11213602001298631938

/-! ## A030479.P3760577249346358187

`((A000038(n+1)+1)²*A030478(n+1))²*A030478(n+1)`
-/

namespace A030479.P3760577249346358187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((A000038 (n + 1) + 1) ^ 2 * A030478 (n + 1)) ^ 2 * A030478 (n + 1)

end

end A030479.P3760577249346358187

/-! ## A030479.P3255678752397393544

`A033999(n)²*A030478(n+1)*A030478(n+1)*A030478(n+1)`
-/

namespace A030479.P3255678752397393544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n ^ 2 * A030478 (n + 1) * A030478 (n + 1) * A030478 (n + 1)

end

end A030479.P3255678752397393544

/-! ## A030479.P3008975226725496900

`A014963(4*n+2)*A030478(n+1)*A030478(n+1)*A030478(n+1)`
-/

namespace A030479.P3008975226725496900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (4 * n + 2) * A030478 (n + 1) * A030478 (n + 1) * A030478 (n + 1)

end

end A030479.P3008975226725496900

/-! ## A030479.P8727305231148311477

`A000578(A030478(n+1))`
-/

namespace A030479.P8727305231148311477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000578 (A030478 (n + 1)).toNat

end

end A030479.P8727305231148311477

/-! ## A030479.P8747637773938107087

`A034828(2*A030478(n+1))`
-/

namespace A030479.P8747637773938107087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034828 (2 * A030478 (n + 1)).toNat

end

end A030479.P8747637773938107087

/-!
# A030480: Primes with property that when squared all even digits occur together and all odd digits occur together.

The programs for A030480, there is no canonical definition to state claims against.
-/

/-! ## A030480.P13405848830839250827

`sqrt(A030481(n+1))`
-/

namespace A030480.P13405848830839250827
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A030481 (n + 1) : ℝ)

end

end A030480.P13405848830839250827

/-! ## A030480.P2374318605403811909

`root(A030481(n+1), A001316(A001316(n)))`
-/

namespace A030480.P2374318605403811909
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A030481 (n + 1) : ℝ) ^ (1 / (A001316 (A001316 n).toNat : ℝ))

end

end A030480.P2374318605403811909

/-! ## A030480.P2157832502143473571

`p?[A030477(n+1)]`
-/

namespace A030480.P2157832502143473571
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030477 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A030480.P2157832502143473571

/-! ## A030480.P1094392649832116417

`filter[A030477(n+2), A010051(#)]`
-/

namespace A030480.P1094392649832116417
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030477 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A030480.P1094392649832116417

/-! ## A030480.P16003281097526492938

`∩[A000040(n+1), A030477(n+1)]`
-/

namespace A030480.P16003281097526492938
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030477 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A030480.P16003281097526492938

/-! ## A030480.P10977945008129447516

`∩[A030477(n+1), A076805(n+1)]`
-/

namespace A030480.P10977945008129447516
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030477 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076805 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A030480.P10977945008129447516

/-! ## A030480.P175574435820102073

`∩[A030477(n+1), A106118(n+1)]`
-/

namespace A030480.P175574435820102073
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030477 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106118 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A030480.P175574435820102073

/-! ## A030480.P2773256452895363214

`∩[A030477(n+1), A216887(n+1)]`
-/

namespace A030480.P2773256452895363214
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030477 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216887 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A030480.P2773256452895363214

/-!
# A030481: Squares of primes, with property that all even digits occur together and all odd digits occur together.

The programs for A030481, there is no canonical definition to state claims against.
-/

/-! ## A030481.P6042170213946238256

`A030480(n+1)²`
-/

namespace A030481.P6042170213946238256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030480 (n + 1) ^ 2

end

end A030481.P6042170213946238256

/-! ## A030481.P7345330153094320262

`A030480(A000027(n+1))*A030480(n+1)`
-/

namespace A030481.P7345330153094320262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030480 (A000027 (n + 1)).toNat * A030480 (n + 1)

end

end A030481.P7345330153094320262

/-! ## A030481.P4768984975095614195

`A030480(n+1)^A000005(A002144(n+1))`
-/

namespace A030481.P4768984975095614195
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A030480 (n + 1) : ℚ) ^ (A000005 (A002144 (n + 1)).toNat : ℤ)

end

end A030481.P4768984975095614195

/-! ## A030481.P6107690016303152296

`A030480(n+1)^A365171(A000040(n+1))`
-/

namespace A030481.P6107690016303152296
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A030480 (n + 1) : ℚ) ^ (A365171 (A000040 (n + 1)).toNat : ℤ)

end

end A030481.P6107690016303152296

/-! ## A030481.P16927600552403983729

`A030480(A030451(2*(n+1)))*A030480(n+1)`
-/

namespace A030481.P16927600552403983729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030480 (A030451 (2 * (n + 1))).toNat * A030480 (n + 1)

end

end A030481.P16927600552403983729

/-! ## A030481.P191948575272246805

`p?[A030477(n+1)]²`
-/

namespace A030481.P191948575272246805
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030477 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) ^ 2

end

end A030481.P191948575272246805

/-! ## A030481.P5228073141140827705

`∩[A001248(n+1), A030476(n+1)]`
-/

namespace A030481.P5228073141140827705
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001248 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030476 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A030481.P5228073141140827705

/-! ## A030481.P2749510616368231273

`∩[A030476(n+1), A053810(n+1)]`
-/

namespace A030481.P2749510616368231273
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030476 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053810 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A030481.P2749510616368231273

/-! ## A030481.P11098609615719055744

`∩[A030476(n+1), A064599(n+1)]`
-/

namespace A030481.P11098609615719055744
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030476 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064599 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A030481.P11098609615719055744

/-!
# A030482: Primes with property that when cubed all even digits occur together and all odd digits occur together.

The programs for A030482, there is no canonical definition to state claims against.
-/

/-! ## A030482.P14108011641736486306

`root(A030483(n+1), 3)`
-/

namespace A030482.P14108011641736486306
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A030483 (n + 1) : ℝ) ^ (1 / (3 : ℝ))

end

end A030482.P14108011641736486306

/-! ## A030482.P10582235930411199575

`p?[A030478(n+1)]`
-/

namespace A030482.P10582235930411199575
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030478 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A030482.P10582235930411199575

/-! ## A030482.P3489669296949630390

`p?[record[A030478(A052938(n))]]`
-/

namespace A030482.P3489669296949630390
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030478 (A052938 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A030482.P3489669296949630390

/-! ## A030482.P11718107073742305971

`record[A020639(A030478(n+3))]`
-/

namespace A030482.P11718107073742305971
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A030478 (n + 3)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A030482.P11718107073742305971

/-!
# A030483: Cubes of primes, with property that all even digits occur together and all odd digits occur together.

The programs for A030483, there is no canonical definition to state claims against.
-/

/-! ## A030483.P10811396471307870436

`A030482(n+1)^3`
-/

namespace A030483.P10811396471307870436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030482 (n + 1) ^ 3

end

end A030483.P10811396471307870436

/-! ## A030483.P5225198213479893454

`p?[A030478(n+1)]^3`
-/

namespace A030483.P5225198213479893454
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030478 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) ^ 3

end

end A030483.P5225198213479893454

/-! ## A030483.P14765857753237061472

`p?[A030478(n+1)]²*A030482(n+1)`
-/

namespace A030483.P14765857753237061472
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030478 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) ^ 2 * A030482 (n + 1)

end

end A030483.P14765857753237061472

/-! ## A030483.P482065267042068369

`record[A020639(A030478(n+3))]^3`
-/

namespace A030483.P482065267042068369
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A030478 (n + 3)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) ^ 3

end

end A030483.P482065267042068369

/-! ## A030483.P7833450510948124739

`∩[A030078(n+1), A030479(n+1)]`
-/

namespace A030483.P7833450510948124739
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030078 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030479 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A030483.P7833450510948124739

/-!
# A030484: Squares composed of digits {2,5,6}.

The programs for A030484, there is no canonical definition to state claims against.
-/

/-! ## A030484.P15042315061265034359

`A030486(n+1)²`
-/

namespace A030484.P15042315061265034359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030486 (n + 1) ^ 2

end

end A030484.P15042315061265034359

/-! ## A030484.P11011457872570487445

`A030486(n+1)^A342309(2*n+1)`
-/

namespace A030484.P11011457872570487445
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A030486 (n + 1) : ℚ) ^ (A342309 (2 * n + 1) : ℤ)

end

end A030484.P11011457872570487445

/-! ## A030484.P13532282893874513035

`A030486(n+1)^A001222(A319613(n+1))`
-/

namespace A030484.P13532282893874513035
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A030486 (n + 1) : ℚ) ^ (A001222 (A319613 (n + 1)).toNat : ℤ)

end

end A030484.P13532282893874513035

/-! ## A030484.P12890229820837337171

`A030486(n+1)^A067538(A342309(n+1))`
-/

namespace A030484.P12890229820837337171
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A030486 (n + 1) : ℚ) ^ (A067538 (A342309 (n + 1)).toNat : ℤ)

end

end A030484.P12890229820837337171

/-! ## A030484.P8697978694096143509

`A030486(n+1)^A060632(A060632(n+2))`
-/

namespace A030484.P8697978694096143509
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A030486 (n + 1) : ℚ) ^ (A060632 (A060632 (n + 2)).toNat : ℤ)

end

end A030484.P8697978694096143509

/-!
# A030485: Squares composed of digits {2, 5, 7}.

The programs for A030485, there is no canonical definition to state claims against.
-/

/-! ## A030485.P10992487046893728298

`A030487(n+1)²`
-/

namespace A030485.P10992487046893728298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030487 (n + 1) ^ 2

end

end A030485.P10992487046893728298

/-! ## A030485.P16346956839468142420

`A030487(A000027(n+1))^2`
-/

namespace A030485.P16346956839468142420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030487 (A000027 (n + 1)).toNat ^ 2

end

end A030485.P16346956839468142420

/-! ## A030485.P4025950424188315036

`A030487(A000027(n+1))*A030487(n+1)`
-/

namespace A030485.P4025950424188315036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030487 (A000027 (n + 1)).toNat * A030487 (n + 1)

end

end A030485.P4025950424188315036

/-! ## A030485.P2198758105913523990

`A030487(n+1)^A048272(A007528(n+1))`
-/

namespace A030485.P2198758105913523990
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A030487 (n + 1) : ℚ) ^ (A048272 (A007528 (n + 1)).toNat : ℤ)

end

end A030485.P2198758105913523990

/-! ## A030485.P464633924702236016

`A030487(n+1)^A048272(A182785(2*n+3))`
-/

namespace A030485.P464633924702236016
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A030487 (n + 1) : ℚ) ^ (A048272 (A182785 (2 * n + 3)).toNat : ℤ)

end

end A030485.P464633924702236016

/-!
# A030486: When squared gives number composed of digits {2,5,6}.

The programs for A030486, there is no canonical definition to state claims against.
-/

/-! ## A030486.P13556613224011657448

`sqrt(A030484(n+1))`
-/

namespace A030486.P13556613224011657448
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A030484 (n + 1) : ℝ)

end

end A030486.P13556613224011657448

/-! ## A030486.P16611686859737070319

`root(A030484(n+1), 2)*A007318(∑[n])`
-/

namespace A030486.P16611686859737070319
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A030484 (n + 1) : ℝ) ^ (1 / (2 : ℝ)) * (A007318 (∑ j ∈ Finset.range (n + 1), f1 j) : ℝ)

end

end A030486.P16611686859737070319

/-! ## A030486.P13806028003279530221

`root(A030484(n+1), A020639(2*(n+1)))`
-/

namespace A030486.P13806028003279530221
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A030484 (n + 1) : ℝ) ^ (1 / (A020639 (2 * (n + 1)) : ℝ))

end

end A030486.P13806028003279530221

/-! ## A030486.P10454368029471868110

`root(A030484(n+1), 2)/A007318(C(2, n))`
-/

namespace A030486.P10454368029471868110
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A030484 (n + 1) : ℝ) ^ (1 / (2 : ℝ)) / (A007318 (Nat.choose 2 n) : ℝ)

end

end A030486.P10454368029471868110

/-! ## A030486.P9622073427065037580

`root(A030484(n+1), A056608(A056608(n+1)))`
-/

namespace A030486.P9622073427065037580
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A030484 (n + 1) : ℝ) ^ (1 / (A056608 (A056608 (n + 1)).toNat : ℝ))

end

end A030486.P9622073427065037580

/-!
# A030487: When squared gives number composed of digits {2, 5, 7}.

The programs for A030487, there is no canonical definition to state claims against.
-/

/-! ## A030487.P17878546160251383967

`sqrt(A030485(n+1))`
-/

namespace A030487.P17878546160251383967
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A030485 (n + 1) : ℝ)

end

end A030487.P17878546160251383967

/-! ## A030487.P14098774200648109284

`root(A030485(n+1), 2%A017029(n))`
-/

namespace A030487.P14098774200648109284
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A030485 (n + 1) : ℝ) ^ (1 / (Int.tmod 2 (A017029 n) : ℝ))

end

end A030487.P14098774200648109284

/-! ## A030487.P14520078021403952149

`root(A030485(n+1), A017293(n)%5)`
-/

namespace A030487.P14520078021403952149
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A030485 (n + 1) : ℝ) ^ (1 / (Int.tmod (A017293 n) 5 : ℝ))

end

end A030487.P14520078021403952149

/-! ## A030487.P9340129135464097195

`root(A030485(n+1), A001316(A001316(n)))`
-/

namespace A030487.P9340129135464097195
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A030485 (n + 1) : ℝ) ^ (1 / (A001316 (A001316 n).toNat : ℝ))

end

end A030487.P9340129135464097195

/-! ## A030487.P12434689606854711072

`A030485(n+1)^(A017293(n)/A139245(n+1))`
-/

namespace A030487.P12434689606854711072
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A030485 (n + 1) : ℝ) ^ ((A017293 n : ℚ) / (A139245 (n + 1) : ℚ) : ℝ)

end

end A030487.P12434689606854711072

/-!
# A030488: Position of n-th 1 in A030298.

The programs for A030488, there is no canonical definition to state claims against.
-/

/-! ## A030488.P13331532024272504251

`eq[1, A030298(n+1)]+1`
-/

namespace A030488.P13331532024272504251
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030298 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A030488.P13331532024272504251

/-! ## A030488.P16735875833804675768

`record[A000027(n+1)/A030298(n+1)]`
-/

namespace A030488.P16735875833804675768
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000027 (n + 1) : ℚ) / (A030298 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A030488.P16735875833804675768

/-! ## A030488.P12736643983836495992

`record[(1-(n-A005843(n)))/A030298(n+1)]`
-/

namespace A030488.P12736643983836495992
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 - ((n : ℤ) - A005843 n) : ℚ) / (A030298 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A030488.P12736643983836495992

/-! ## A030488.P12354680100413386550

`record[A006949(n)/A030298(A006949(n))]`
-/

namespace A030488.P12354680100413386550
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A006949 n : ℚ) / (A030298 (A006949 n).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A030488.P12354680100413386550

/-! ## A030488.P10268991714317672740

`record[A028310(n)/A030298(A028310(n))]`
-/

namespace A030488.P10268991714317672740
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A028310 n : ℚ) / (A030298 (A028310 n).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A030488.P10268991714317672740

/-! ## A030488.P5275119244710119863

`record[A071754(n)/A030298(A071754(n))]`
-/

namespace A030488.P5275119244710119863
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A071754 n : ℚ) / (A030298 (A071754 n).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A030488.P5275119244710119863

/-! ## A030488.P3041566855981059857

`record[A008619(2*n)/A030298(n+1)]`
-/

namespace A030488.P3041566855981059857
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008619 (2 * n) : ℚ) / (A030298 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A030488.P3041566855981059857

/-! ## A030488.P3138467559356948808

`record[A028242(2*n)/A030298(n+1)]`
-/

namespace A030488.P3138467559356948808
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A028242 (2 * n) : ℚ) / (A030298 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A030488.P3138467559356948808

/-! ## A030488.P12200380334991549954

`record[A065033(n)/A030298(A065033(n))]`
-/

namespace A030488.P12200380334991549954
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A065033 n : ℚ) / (A030298 (A065033 n).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A030488.P12200380334991549954

/-! ## A030488.P2629721756008482702

`record[A080513(n)/A030298(A080513(n))]`
-/

namespace A030488.P2629721756008482702
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A080513 n : ℚ) / (A030298 (A080513 n).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A030488.P2629721756008482702

/-! ## A030488.P1179750510575733978

`record[A003602(n+1)/A030298(A003602(n+1))]`
-/

namespace A030488.P1179750510575733978
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003602 (n + 1) : ℚ) / (A030298 (A003602 (n + 1)).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A030488.P1179750510575733978

/-! ## A030488.P2422411838292984759

`record[A008611(3*n)/A030298(n+1)]`
-/

namespace A030488.P2422411838292984759
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008611 (3 * n) : ℚ) / (A030298 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A030488.P2422411838292984759

/-!
# A030489: Position of n-th 2 in A030298.

The programs for A030489, there is no canonical definition to state claims against.
-/

/-! ## A030489.P2641298559522765553

`eq[2, A030298(n+1)]+1`
-/

namespace A030489.P2641298559522765553
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030298 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A030489.P2641298559522765553

/-! ## A030489.P849526692684153601

`eq[2, A030298(A028310(n))]`
-/

namespace A030489.P849526692684153601
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030298 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A030489.P849526692684153601

/-! ## A030489.P9803889632302821213

`A020725(eq[2, A030298(n+1)])`
-/

namespace A030489.P9803889632302821213
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030298 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A030489.P9803889632302821213

/-! ## A030489.P18017106291481569241

`A065475(eq[2, A030298(n+1)])`
-/

namespace A030489.P18017106291481569241
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030298 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065475 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A030489.P18017106291481569241

/-! ## A030489.P16751020947729603964

`eq[2, A030298(A000038(n)+n)]`
-/

namespace A030489.P16751020947729603964
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030298 (A000038 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A030489.P16751020947729603964

/-! ## A030489.P13159146668377635437

`eq[2, A030298(A000007(n)+n)]`
-/

namespace A030489.P13159146668377635437
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030298 (A000007 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A030489.P13159146668377635437

/-! ## A030489.P5301625814218985176

`eq[2, A030298(or(n, A000007(n)))]`
-/

namespace A030489.P5301625814218985176
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030298 (Int.lor (n : ℤ) (A000007 n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A030489.P5301625814218985176

/-! ## A030489.P1782410096699750555

`eq[2, A030298(A065033(2*n))]`
-/

namespace A030489.P1782410096699750555
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030298 (A065033 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A030489.P1782410096699750555

/-! ## A030489.P3519104499578224317

`eq[2, A030298(A123108(2*n))]`
-/

namespace A030489.P3519104499578224317
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030298 (A123108 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A030489.P3519104499578224317

/-! ## A030489.P3498132294055516000

`eq[2, A030298(A008619(A004275(n)))]`
-/

namespace A030489.P3498132294055516000
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030298 (A008619 (A004275 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A030489.P3498132294055516000

/-! ## A030489.P17104813798895087462

`eq[2, A030298(A233583(n+1))]`
-/

namespace A030489.P17104813798895087462
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030298 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A030489.P17104813798895087462

/-!
# A030490: Position of n-th 3 in A030298.

The programs for A030490, there is no canonical definition to state claims against.
-/

/-! ## A030490.P3372671482039796453

`eq[3, A030298(n+1)]+1`
-/

namespace A030490.P3372671482039796453
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030298 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A030490.P3372671482039796453

/-! ## A030490.P160327970998406297

`eq[1, A030298(A028310(n))-2]`
-/

namespace A030490.P160327970998406297
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030298 (A028310 n).toNat - 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A030490.P160327970998406297

/-! ## A030490.P9347535830699284243

`eq[3, A030298(A138153(n+1))]`
-/

namespace A030490.P9347535830699284243
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030298 (A138153 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A030490.P9347535830699284243

/-! ## A030490.P6796640169264350215

`eq[3, A030298(A000007(n)+n)]`
-/

namespace A030490.P6796640169264350215
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030298 (A000007 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A030490.P6796640169264350215

/-! ## A030490.P804013755993016645

`eq[3, A030298(A000038(n)+n)]`
-/

namespace A030490.P804013755993016645
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030298 (A000038 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A030490.P804013755993016645

/-! ## A030490.P1962367887358853776

`eq[3, A030298(or(n, A000007(n)))]`
-/

namespace A030490.P1962367887358853776
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030298 (Int.lor (n : ℤ) (A000007 n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A030490.P1962367887358853776

/-! ## A030490.P17647817179204625762

`eq[3, A030298(A065033(2*n))]`
-/

namespace A030490.P17647817179204625762
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030298 (A065033 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A030490.P17647817179204625762

/-! ## A030490.P6766445011295947133

`eq[3, A030298(A123108(2*n))]`
-/

namespace A030490.P6766445011295947133
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030298 (A123108 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A030490.P6766445011295947133

/-! ## A030490.P18003369573340190912

`eq[3, A030298(A233583(n+1))]`
-/

namespace A030490.P18003369573340190912
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030298 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A030490.P18003369573340190912

/-!
# A030491: Position of n-th 4 in A030298.

The programs for A030491, there is no canonical definition to state claims against.
-/

/-! ## A030491.P12536269374413736034

`eq[4, A030298(n+1)]+1`
-/

namespace A030491.P12536269374413736034
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030298 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A030491.P12536269374413736034

/-! ## A030491.P9296056065558525328

`eq[2, A030298(A028310(n))-2]`
-/

namespace A030491.P9296056065558525328
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030298 (A028310 n).toNat - 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A030491.P9296056065558525328

/-! ## A030491.P4145845841014830527

`eq[4, A030298(A138153(n+1))]`
-/

namespace A030491.P4145845841014830527
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030298 (A138153 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A030491.P4145845841014830527

/-! ## A030491.P11675011870623153201

`A153152(eq[4, A030298(n+1)])`
-/

namespace A030491.P11675011870623153201
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030298 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153152 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A030491.P11675011870623153201

/-! ## A030491.P12061300807753695431

`eq[4, A030298(A000007(n)+n)]`
-/

namespace A030491.P12061300807753695431
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030298 (A000007 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A030491.P12061300807753695431

/-! ## A030491.P12999659847002553744

`eq[4, A030298(A000038(n)+n)]`
-/

namespace A030491.P12999659847002553744
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030298 (A000038 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A030491.P12999659847002553744

/-! ## A030491.P5655426489702279098

`eq[4, A030298(or(n, A000007(n)))]`
-/

namespace A030491.P5655426489702279098
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030298 (Int.lor (n : ℤ) (A000007 n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A030491.P5655426489702279098

/-! ## A030491.P14983318734598932200

`eq[4, A030298(A153151(n+1))]`
-/

namespace A030491.P14983318734598932200
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030298 (A153151 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A030491.P14983318734598932200

/-! ## A030491.P17721359422546066074

`eq[4, A030298(A008619(A004275(n)))]`
-/

namespace A030491.P17721359422546066074
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030298 (A008619 (A004275 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A030491.P17721359422546066074

/-! ## A030491.P11058011139981858412

`eq[4, A030298(A065033(2*n))]`
-/

namespace A030491.P11058011139981858412
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030298 (A065033 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A030491.P11058011139981858412

/-! ## A030491.P17143512281632676750

`eq[4, A030298(A233583(n+1))]`
-/

namespace A030491.P17143512281632676750
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030298 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A030491.P17143512281632676750

/-!
# A030492: Position of n-th 5 in A030298.

The programs for A030492, there is no canonical definition to state claims against.
-/

/-! ## A030492.P17723605542110283597

`eq[5, A030298(n+1)]+1`
-/

namespace A030492.P17723605542110283597
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030298 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A030492.P17723605542110283597

/-! ## A030492.P9743842171443168163

`eq[5, A030298(A028310(n))]`
-/

namespace A030492.P9743842171443168163
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030298 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A030492.P9743842171443168163

/-! ## A030492.P5244157134519253256

`A065475(eq[5, A030298(n+1)])`
-/

namespace A030492.P5244157134519253256
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030298 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065475 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A030492.P5244157134519253256

/-! ## A030492.P6911759580219942013

`eq[5, A030298(A000007(n)+n)]`
-/

namespace A030492.P6911759580219942013
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030298 (A000007 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A030492.P6911759580219942013

/-! ## A030492.P14738001405170659278

`eq[5, A030298(A000038(n)+n)]`
-/

namespace A030492.P14738001405170659278
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030298 (A000038 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A030492.P14738001405170659278

/-! ## A030492.P2153697935947523036

`eq[5, A030298(A065033(2*n))]`
-/

namespace A030492.P2153697935947523036
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030298 (A065033 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A030492.P2153697935947523036

/-! ## A030492.P4852361608861619830

`eq[5, A030298(A233583(n+1))]`
-/

namespace A030492.P4852361608861619830
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030298 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A030492.P4852361608861619830

/-!
# A030493: n-th partial sum of A030298.

The programs for A030493, there is no canonical definition to state claims against.
-/

/-! ## A030493.P2285865355998391617

`∑[A030298(n+1)]`
-/

namespace A030493.P2285865355998391617
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030298 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A030493.P2285865355998391617

/-! ## A030493.P16613842442341544222

`∑[A084556(A220655(n+1))-A030496(n+1)]`
-/

namespace A030493.P16613842442341544222
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084556 (A220655 (n + 1)).toNat - A030496 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A030493.P16613842442341544222

/-! ## A030493.P6759347921821382701

`∑[A084556(A220656(n+1))-A030496(n+1)]`
-/

namespace A030493.P6759347921821382701
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084556 (A220656 (n + 1)).toNat - A030496 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A030493.P6759347921821382701

/-! ## A030493.P4082490464588121227

`∑[A030496(A030496(n+1)*A048764(n+1))]`
-/

namespace A030493.P4082490464588121227
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030496 (A030496 (n + 1) * A048764 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A030493.P4082490464588121227

/-! ## A030493.P4714408222788786579

`∑[A030496(A030496(n+1)+A048764(n+1)-1)]`
-/

namespace A030493.P4714408222788786579
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030496 (A030496 (n + 1) + (A048764 (n + 1) - 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A030493.P4714408222788786579

/-! ## A030493.P13575637779946841912

`a(n-1)+A030298(n+1)/A000034(2*n)` with `a(0)=1`
-/

namespace A030493.P13575637779946841912
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (A030298 (n + 1) : ℚ) / (A000034 (2 * n) : ℚ)

end

end A030493.P13575637779946841912

/-! ## A030493.P5114458759364286676

`A028310(∑[A030298(ϕ²-(ϕ-n))])`
-/

namespace A030493.P5114458759364286676
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030298 (SequenceMachineLib.roundAway (Real.goldenRatio ^ 2 - (Real.goldenRatio - (n : ℝ)))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A030493.P5114458759364286676

/-! ## A030493.P13398994916359624273

`a(n-1)+A325144(A001749(n+1))+A030298(n+1)` with `a(0)=1`
-/

namespace A030493.P13398994916359624273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (A325144 (A001749 (n + 1)).toNat + A030298 (n + 1))

end

end A030493.P13398994916359624273

/-!
# A030494: If n is even, 2(n/2 + 1)! - 1; if n is odd, ((n + 1)/2 + 1)! - 1.

The programs for A030494, the canonical program `A030494.P12041848191355079327` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A030494 has offset 1).

The definition of A030494 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 136 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A030494.P12041848191355079327

`record[A137948(n+5)-1]`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A030494

/-- `record[A137948(n+5)-1]` -/
def P12041848191355079327.Spec : Prop :=
  ∀ n, P12041848191355079327.a n = A030494 (n + 1)

theorem P12041848191355079327.correct : P12041848191355079327.Spec := by
  intro n
  simp only [A030494, Nat.add_sub_cancel]

end A030494

/-! ## A030494.P6649454449729812484

`record[A126064(n)-ceil(sin(n)²)]`
-/

namespace A030494.P6649454449729812484
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126064 n - ⌈Real.sin (n : ℝ) ^ 2⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A030494.P6649454449729812484

namespace A030494

/-- `record[A126064(n)-ceil(sin(n)²)]` -/
def P6649454449729812484.Spec : Prop :=
  ∀ n, P6649454449729812484.a n = A030494 (n + 1)

end A030494

/-! ## A030494.P10152605743483994914

`A200748(A134519(n+1))`
-/

namespace A030494.P10152605743483994914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200748 (A134519 (n + 1)).toNat

end

end A030494.P10152605743483994914

namespace A030494

/-- `A200748(A134519(n+1))` -/
def P10152605743483994914.Spec : Prop :=
  ∀ n, P10152605743483994914.a n = A030494 (n + 1)

end A030494

/-! ## A030494.P7187523987752951001

`A200748(record[A056534(n+1)])`
-/

namespace A030494.P7187523987752951001
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056534 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200748 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A030494.P7187523987752951001

namespace A030494

/-- `A200748(record[A056534(n+1)])` -/
def P7187523987752951001.Spec : Prop :=
  ∀ n, P7187523987752951001.a n = A030494 (n + 1)

end A030494

/-! ## A030494.P16396553502777556591

`record[A126064(n)-A057427(n)]`
-/

namespace A030494.P16396553502777556591
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126064 n - A057427 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A030494.P16396553502777556591

namespace A030494

/-- `record[A126064(n)-A057427(n)]` -/
def P16396553502777556591.Spec : Prop :=
  ∀ n, P16396553502777556591.a n = A030494 (n + 1)

end A030494

/-! ## A030494.P17184169638490673943

`record[A208058(n)-A057427(n)]`
-/

namespace A030494.P17184169638490673943
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208058 n - A057427 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A030494.P17184169638490673943

namespace A030494

/-- `record[A208058(n)-A057427(n)]` -/
def P17184169638490673943.Spec : Prop :=
  ∀ n, P17184169638490673943.a n = A030494 (n + 1)

end A030494

/-! ## A030494.P6869779198034816772

`A200748(eq[1, A007318(n)]+1)`
-/

namespace A030494.P6869779198034816772
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200748 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A030494.P6869779198034816772

namespace A030494

/-- `A200748(eq[1, A007318(n)]+1)` -/
def P6869779198034816772.Spec : Prop :=
  ∀ n, P6869779198034816772.a n = A030494 (n + 1)

end A030494

/-! ## A030494.P13777964602105216948

`record[A208058(n)-A019428(2*n)]`
-/

namespace A030494.P13777964602105216948
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208058 n - A019428 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A030494.P13777964602105216948

namespace A030494

/-- `record[A208058(n)-A019428(2*n)]` -/
def P13777964602105216948.Spec : Prop :=
  ∀ n, P13777964602105216948.a n = A030494 (n + 1)

end A030494

/-! ## A030494.P11568890794308231639

`A200748(eq[A002262(n), A048993(n)])`
-/

namespace A030494.P11568890794308231639
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048993 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200748 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A030494.P11568890794308231639

namespace A030494

/-- `A200748(eq[A002262(n), A048993(n)])` -/
def P11568890794308231639.Spec : Prop :=
  ∀ n, P11568890794308231639.a n = A030494 (n + 1)

end A030494

/-! ## A030494.P9588009868868666952

`A200748(eq[A002262(n), A090181(n)])`
-/

namespace A030494.P9588009868868666952
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090181 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200748 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A030494.P9588009868868666952

namespace A030494

/-- `A200748(eq[A002262(n), A090181(n)])` -/
def P9588009868868666952.Spec : Prop :=
  ∀ n, P9588009868868666952.a n = A030494 (n + 1)

end A030494

/-! ## A030494.P14463597426286365960

`A200748(eq[A002262(n), A122935(n)])`
-/

namespace A030494.P14463597426286365960
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122935 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200748 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A030494.P14463597426286365960

namespace A030494

/-- `A200748(eq[A002262(n), A122935(n)])` -/
def P14463597426286365960.Spec : Prop :=
  ∀ n, P14463597426286365960.a n = A030494 (n + 1)

end A030494

/-! ## A030494.P12980352421271439973

`A200748(eq[A002262(n), A123125(n)])`
-/

namespace A030494.P12980352421271439973
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123125 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200748 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A030494.P12980352421271439973

namespace A030494

/-- `A200748(eq[A002262(n), A123125(n)])` -/
def P12980352421271439973.Spec : Prop :=
  ∀ n, P12980352421271439973.a n = A030494 (n + 1)

end A030494

/-!
# A030495: a(n) = (n+1)! + n.

The programs for A030495, the canonical program `A030495.P773199002299498144` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A030495 has offset 0).

The definition of A030495 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(n+1)!+n` (program `A030495.P773199002299498144`, by `A030495.P773199002299498144.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A030495.P773199002299498144

`(n+1)!+n`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A030495

/-- `(n+1)!+n` -/
def P773199002299498144.Spec : Prop :=
  ∀ n, (P773199002299498144.a n : ℤ) = A030495 n

theorem P773199002299498144.correct : P773199002299498144.Spec := by
  intro n
  simp only [A030495]

end A030495

/-! ## A030495.P12803508897222071664

`∏[n+1]+n`
-/

namespace A030495.P12803508897222071664
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j + n

end

end A030495.P12803508897222071664

namespace A030495

/-- `∏[n+1]+n` -/
def P12803508897222071664.Spec : Prop :=
  ∀ n, (P12803508897222071664.a n : ℤ) = A030495 n

theorem P12803508897222071664.correct : P12803508897222071664.Spec := by
  intro n
  simp only [A030495, Nat.add_sub_cancel, A030495.P12803508897222071664.f1, A030495.P12803508897222071664.a, A030495.P773199002299498144.a, SequenceMachineLib.memo_apply]
  try simp

end A030495

/-! ## A030495.P4611136741785755076

`∑[1-Δ[-n!]]`
-/

namespace A030495.P4611136741785755076
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(Nat.factorial n : ℤ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A030495.P4611136741785755076

namespace A030495

/-- `∑[1-Δ[-n!]]` -/
def P4611136741785755076.Spec : Prop :=
  ∀ n, P4611136741785755076.a n = A030495 n

end A030495

/-! ## A030495.P13910347507499788383

`∑[xor(1, Δ[xor(1, n!)])]`
-/

namespace A030495.P13910347507499788383
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 (Nat.factorial n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 ((f2 (n + 1) : ℤ) - (f2 n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A030495.P13910347507499788383

namespace A030495

/-- `∑[xor(1, Δ[xor(1, n!)])]` -/
def P13910347507499788383.Spec : Prop :=
  ∀ n, P13910347507499788383.a n = A030495 n

end A030495

/-! ## A030495.P4335038197994234457

`∑[2-Δ[n-n!]]`
-/

namespace A030495.P4335038197994234457
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - (Nat.factorial n : ℤ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A030495.P4335038197994234457

namespace A030495

/-- `∑[2-Δ[n-n!]]` -/
def P4335038197994234457.Spec : Prop :=
  ∀ n, P4335038197994234457.a n = A030495 n

end A030495

/-! ## A030495.P14514314582324148130

`∑[Δ[n*a(n-1)]+1]` with `a(0)=1`
-/

namespace A030495.P14514314582324148130
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f2 =>
  n * f2 (n - 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℤ) - (f2 n : ℤ) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A030495.P14514314582324148130

namespace A030495

/-- `∑[Δ[n*a(n-1)]+1]` -/
def P14514314582324148130.Spec : Prop :=
  ∀ n, P14514314582324148130.a n = A030495 n

end A030495

/-! ## A030495.P1062306051983187477

`abs(xor(-n, (2*n-(n-1))!))`
-/

namespace A030495.P1062306051983187477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.xor (-(n : ℤ)) (Nat.factorial ((2 * n : ℤ) - ((n : ℤ) - 1)).toNat : ℤ)|

end

end A030495.P1062306051983187477

namespace A030495

/-- `abs(xor(-n, (2*n-(n-1))!))` -/
def P1062306051983187477.Spec : Prop :=
  ∀ n, P1062306051983187477.a n = A030495 n

end A030495

/-! ## A030495.P9372377201047849970

`floor((n+1)*(a(n-1)-(n-1))+n)` with `a(0)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A030495.P9372377201047849970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (n + 1 : ℤ) * (a (n - 1) - ((n : ℤ) - 1)) + (n : ℤ)

end

end A030495.P9372377201047849970

namespace A030495

/-- `floor((n+1)*(a(n-1)-(n-1))+n)` -/
def P9372377201047849970.Spec : Prop :=
  ∀ n, P9372377201047849970.a n = A030495 n

end A030495

/-! ## A030495.P2322752290001660587

`∑[A188914(n)]`
-/

namespace A030495.P2322752290001660587
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188914 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A030495.P2322752290001660587

namespace A030495

/-- `∑[A188914(n)]` -/
def P2322752290001660587.Spec : Prop :=
  ∀ n, P2322752290001660587.a n = A030495 n

end A030495

/-! ## A030495.P7564080413261003786

`∑[A001563(n)+1]`
-/

namespace A030495.P7564080413261003786
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001563 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A030495.P7564080413261003786

namespace A030495

/-- `∑[A001563(n)+1]` -/
def P7564080413261003786.Spec : Prop :=
  ∀ n, P7564080413261003786.a n = A030495 n

end A030495

/-!
# A030496: Permutations of 1,2,...,n for n=1,2,3,..., arranged antilexicographically.

The programs for A030496, there is no canonical definition to state claims against.
-/

/-! ## A030496.P3531794552817574917

`A084558(n+1)+1-A030298(n+1)`
-/

namespace A030496.P3531794552817574917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084558 (n + 1) + 1 - A030298 (n + 1)

end

end A030496.P3531794552817574917

/-! ## A030496.P17495982199191745551

`A028310(Δ[A030502(A028310(n))])`
-/

namespace A030496.P17495982199191745551
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030502 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (f1 (n + 1) - f1 n).toNat

end

end A030496.P17495982199191745551

/-! ## A030496.P1000623191546521822

`A084556(A220656(n+1))-A030298(n+1)`
-/

namespace A030496.P1000623191546521822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084556 (A220656 (n + 1)).toNat - A030298 (n + 1)

end

end A030496.P1000623191546521822

/-! ## A030496.P10612049353560768682

`A090529(n+2)-A030298(n+1)`
-/

namespace A030496.P10612049353560768682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090529 (n + 2) - A030298 (n + 1)

end

end A030496.P10612049353560768682

/-! ## A030496.P4399776252835000881

`Δ[A220657(n+1)]-A030298(n+1)`
-/

namespace A030496.P4399776252835000881
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220657 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A030298 (n + 1)

end

end A030496.P4399776252835000881

/-! ## A030496.P765266015108333177

`A001222(A290096(n+1))-A030298(n+1)`
-/

namespace A030496.P765266015108333177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A290096 (n + 1)).toNat - A030298 (n + 1)

end

end A030496.P765266015108333177

/-! ## A030496.P16164617408269462495

`A001222(A275725(n+1))-A030298(n+1)`
-/

namespace A030496.P16164617408269462495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A275725 (n + 1)).toNat - A030298 (n + 1)

end

end A030496.P16164617408269462495

/-! ## A030496.P16557962919088150371

`A001222(A290095(n+1))-A030298(n+1)`
-/

namespace A030496.P16557962919088150371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A290095 (n + 1)).toNat - A030298 (n + 1)

end

end A030496.P16557962919088150371

/-!
# A030497: Position of n-th 1 in A030496.

The programs for A030497, there is no canonical definition to state claims against.
-/

/-! ## A030497.P4845264589727830763

`eq[1, A030496(n+1)]+1`
-/

namespace A030497.P4845264589727830763
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030496 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A030497.P4845264589727830763

/-! ## A030497.P2090496651952968508

`record[(n+2)/A030496(n+2)]`
-/

namespace A030497.P2090496651952968508
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℚ) / (A030496 (n + 2) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A030497.P2090496651952968508

/-! ## A030497.P6940489373598921468

`eq[A030298(A028310(n)), A084558(n)]`
-/

namespace A030497.P6940489373598921468
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030298 (A028310 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084558 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A030497.P6940489373598921468

/-! ## A030497.P9483241403581689179

`eq[A019425(2*n), A030496(A065033(2*n))]`
-/

namespace A030497.P9483241403581689179
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019425 (2 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030496 (A065033 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A030497.P9483241403581689179

/-! ## A030497.P15880072433864165

`eq[n/A030496(A065033(2*n)), A028310(n)]`
-/

namespace A030497.P15880072433864165
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / (A030496 (A065033 (2 * n)).toNat : ℚ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = (f2 j : ℚ)) n

end

end A030497.P15880072433864165

/-! ## A030497.P3564481142496880409

`eq[A030298(A233583(n+1)), A084558(n)]`
-/

namespace A030497.P3564481142496880409
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030298 (A233583 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084558 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A030497.P3564481142496880409

/-!
# A030498: Position of n-th 2 in A030496.

The programs for A030498, there is no canonical definition to state claims against.
-/

/-! ## A030498.P2043414536224936933

`eq[2, A030496(n+1)]+1`
-/

namespace A030498.P2043414536224936933
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030496 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A030498.P2043414536224936933

/-! ## A030498.P14909293637471555562

`eq[2, A030496(A028310(n))]`
-/

namespace A030498.P14909293637471555562
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030496 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A030498.P14909293637471555562

/-! ## A030498.P5458781430983551232

`eq[2, A030496(A000007(n)+n)]`
-/

namespace A030498.P5458781430983551232
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030496 (A000007 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A030498.P5458781430983551232

/-! ## A030498.P11791117985683435990

`eq[A030298(A028310(n))+1, A084558(n)]`
-/

namespace A030498.P11791117985683435990
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030298 (A028310 n).toNat + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084558 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A030498.P11791117985683435990

/-! ## A030498.P9017507307396194891

`eq[2, A030496(A065033(2*n))]`
-/

namespace A030498.P9017507307396194891
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030496 (A065033 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A030498.P9017507307396194891

/-! ## A030498.P9668096808947079316

`eq[2, A030496(A123108(2*n))]`
-/

namespace A030498.P9668096808947079316
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030496 (A123108 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A030498.P9668096808947079316

/-! ## A030498.P14814224231977109597

`eq[A030298(A233583(n+1))+1, A084558(n)]`
-/

namespace A030498.P14814224231977109597
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030298 (A233583 (n + 1)).toNat + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084558 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A030498.P14814224231977109597

/-!
# A030499: Position of n-th 3 in A030496.

The programs for A030499, there is no canonical definition to state claims against.
-/

/-! ## A030499.P15037780095714695869

`eq[3, A030496(n+1)]+1`
-/

namespace A030499.P15037780095714695869
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030496 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A030499.P15037780095714695869

/-! ## A030499.P8907086961597732065

`eq[3, A030496(A028310(n))]`
-/

namespace A030499.P8907086961597732065
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030496 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A030499.P8907086961597732065

/-! ## A030499.P4526450054651029673

`eq[3, A030496(A000007(n)+n)]`
-/

namespace A030499.P4526450054651029673
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030496 (A000007 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A030499.P4526450054651029673

/-! ## A030499.P16606566057171872741

`eq[A030298(A028310(n))+2, A084558(n)]`
-/

namespace A030499.P16606566057171872741
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030298 (A028310 n).toNat + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084558 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A030499.P16606566057171872741

/-! ## A030499.P2316267892787778207

`eq[3, A030496(A065033(2*n))]`
-/

namespace A030499.P2316267892787778207
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030496 (A065033 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A030499.P2316267892787778207

/-! ## A030499.P281298846415050424

`eq[3, A030496(A123108(2*n))]`
-/

namespace A030499.P281298846415050424
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030496 (A123108 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A030499.P281298846415050424

/-! ## A030499.P5782565423088633526

`eq[3, A030496(A233583(n+1))]`
-/

namespace A030499.P5782565423088633526
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030496 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A030499.P5782565423088633526

/-! ## A030499.P13996390058967118518

`eq[A030298(A233583(n+1))+2, A084558(n)]`
-/

namespace A030499.P13996390058967118518
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030298 (A233583 (n + 1)).toNat + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084558 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A030499.P13996390058967118518

