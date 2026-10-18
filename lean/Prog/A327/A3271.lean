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
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
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
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C008
import Seq.B001.C009
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
import Seq.B014.C000
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
# A327100: BII-numbers of antichains of sets with cut-connectivity 1.

The programs for A327100, there is no canonical definition to state claims against.
-/

/-! ## A327100.P1615008756428123290

`∩[A326704(n+1), A327098(n+1)]`
-/

namespace A327100.P1615008756428123290
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326704 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327098 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A327100.P1615008756428123290

/-! ## A327100.P17139344637081266184

`∩[A326750(n+1), A327098(n+1)]`
-/

namespace A327100.P17139344637081266184
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326750 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327098 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A327100.P17139344637081266184

/-! ## A327100.P7172706911016445428

`∩[A309314(n+1), A327098(n+1)]`
-/

namespace A327100.P7172706911016445428
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309314 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327098 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A327100.P7172706911016445428

/-! ## A327100.P4238569055276170459

`∩[A326783(n+1), A327098(n+1)]`
-/

namespace A327100.P4238569055276170459
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326783 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327098 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A327100.P4238569055276170459

/-! ## A327100.P12244062748531889206

`∩[A326752(n+1), A327098(n+1)]`
-/

namespace A327100.P12244062748531889206
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326752 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327098 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A327100.P12244062748531889206

/-!
# A327101: BII-numbers of 2-cut-connected set-systems (cut-connectivity >= 2).

The programs for A327101, there is no canonical definition to state claims against.
-/

/-! ## A327101.P6697182567138953179

`A326853(round(sqrt(A028884(n+2))))`
-/

namespace A327101.P6697182567138953179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326853 (SequenceMachineLib.roundAway (Real.sqrt (A028884 (n + 2) : ℝ))).toNat

end

end A327101.P6697182567138953179

/-! ## A327101.P14527873734623779220

`A326853(n+5)-A000007(A000933(n+1))`
-/

namespace A327101.P14527873734623779220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326853 (n + 5) - A000007 (A000933 (n + 1)).toNat

end

end A327101.P14527873734623779220

/-! ## A327101.P13884481202099762737

`A326853(n+5)-A275926(A033299(n+1))`
-/

namespace A327101.P13884481202099762737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326853 (n + 5) - A275926 (A033299 (n + 1)).toNat

end

end A327101.P13884481202099762737

/-! ## A327101.P8621921364666860760

`comp[lt[A326786(n), 2]]`
-/

namespace A327101.P8621921364666860760
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326786 n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < (f3 j : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A327101.P8621921364666860760

/-! ## A327101.P9912285186050672981

`comp[eq[A326786(n), A327144(n)]]`
-/

namespace A327101.P9912285186050672981
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326786 n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327144 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j = f3 j) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A327101.P9912285186050672981

/-!
# A327102: BII-numbers of set-systems with non-spanning edge-connectivity >= 2.

The programs for A327102, there is no canonical definition to state claims against.
-/

/-! ## A327102.P5078963860696626146

`lt[1, A326787(n)]`
-/

namespace A327102.P5078963860696626146
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326787 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A327102.P5078963860696626146

/-! ## A327102.P7274798585843530895

`eq[0, A000073(a(A326787(n)))]` with `a(0)=2, a(1)=2`
-/

namespace A327102.P7274798585843530895
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.rec [2, 2] fun n f2 =>
  A000073 (f2 (A326787 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A327102.P7274798585843530895

/-! ## A327102.P14173320551552513534

`eq[0, A001221(a(A326787(n)))]` with `a(0)=2, a(1)=2`
-/

namespace A327102.P14173320551552513534
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.rec [2, 2] fun n f2 =>
  A001221 (f2 (A326787 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A327102.P14173320551552513534

/-! ## A327102.P7009277666817124400

`eq[0, A001222(a(A326787(n)))]` with `a(0)=2, a(1)=2`
-/

namespace A327102.P7009277666817124400
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.rec [2, 2] fun n f2 =>
  A001222 (f2 (A326787 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A327102.P7009277666817124400

/-! ## A327102.P15346308123694843742

`eq[0, a(A326787(n))-A057427(n)]` with `a(0)=2, a(1)=2`
-/

namespace A327102.P15346308123694843742
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.rec [2, 2] fun n f2 =>
  f2 (A326787 n).toNat - A057427 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A327102.P15346308123694843742

/-!
# A327103: Minimum vertex-degree in the set-system with BII-number n.

The programs for A327103, there is no canonical definition to state claims against.
-/

/-! ## A327103.P9205811719782098088

`A208576(A241700(n)%A033042(3*n+1))`
-/

namespace A327103.P9205811719782098088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208576 (Int.tmod (A241700 (n + 30)) (A033042 (3 * n + 1))).toNat

end

end A327103.P9205811719782098088

/-! ## A327103.P6173275645387627113

`A000120(A324729(A324829(A324829(A324712(n+1)+1)+1)+1))`
-/

namespace A327103.P6173275645387627113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A324729 (A324829 (A324829 (A324712 (n + 1) + 1).toNat + 1).toNat + 1).toNat).toNat

end

end A327103.P6173275645387627113

/-! ## A327103.P17083303179086033127

`round(gcd(A265527(2*n), A265527(n))^(1/5))`
-/

namespace A327103.P17083303179086033127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((Int.gcd (A265527 (2 * n)) (A265527 n) : ℝ) ^ ((1 : ℚ) / 5 : ℝ))

end

end A327103.P17083303179086033127

/-! ## A327103.P9623177268606189420

`A048766(gcd(A265527(2*n), A265527(n)))`
-/

namespace A327103.P9623177268606189420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048766 (Int.gcd (A265527 (2 * n)) (A265527 n))

end

end A327103.P9623177268606189420

/-! ## A327103.P9741012927062599185

`A139128(A092309(n+1)%A141214(n))`
-/

namespace A327103.P9741012927062599185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139128 (Int.tmod (A092309 (n + 1)) (A141214 n)).toNat

end

end A327103.P9741012927062599185

/-!
# A327104: Maximum vertex-degree of the set-system with BII-number n.

The programs for A327104, there is no canonical definition to state claims against.
-/

/-! ## A327104.P6852454080162159005

`A139351(A330101(n))`
-/

namespace A327104.P6852454080162159005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139351 (A330101 n).toNat

end

end A327104.P6852454080162159005

/-! ## A327104.P1627832782487406105

`A139352(2*A330101(n))`
-/

namespace A327104.P1627832782487406105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139352 (2 * A330101 n).toNat

end

end A327104.P1627832782487406105

/-! ## A327104.P10025914539759869432

`A139352(A330101(n)+A330101(n))`
-/

namespace A327104.P10025914539759869432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139352 (A330101 n + A330101 n).toNat

end

end A327104.P10025914539759869432

/-! ## A327104.P8533518801539756679

`A000120(n)-A139352(A330101(n))`
-/

namespace A327104.P8533518801539756679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 n - A139352 (A330101 n).toNat

end

end A327104.P8533518801539756679

/-! ## A327104.P17458925027722673280

`∑[A088705(n)]-A139352(A330101(n))`
-/

namespace A327104.P17458925027722673280
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088705 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A139352 (A330101 n).toNat

end

end A327104.P17458925027722673280

/-! ## A327104.P1754487250066289553

`A001222(A001316(n))-A139352(A330101(n))`
-/

namespace A327104.P1754487250066289553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A001316 n).toNat - A139352 (A330101 n).toNat

end

end A327104.P1754487250066289553

/-! ## A327104.P3739111434817366976

`A001221(A019565(n))-A139352(A330101(n))`
-/

namespace A327104.P3739111434817366976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A019565 n).toNat - A139352 (A330101 n).toNat

end

end A327104.P3739111434817366976

/-! ## A327104.P9128144372607161893

`A139351(A330195(n))`
-/

namespace A327104.P9128144372607161893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139351 (A330195 n).toNat

end

end A327104.P9128144372607161893

/-! ## A327104.P4530575614670458726

`A139352(2*A330195(n))`
-/

namespace A327104.P4530575614670458726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139352 (2 * A330195 n).toNat

end

end A327104.P4530575614670458726

/-! ## A327104.P4907604243134458603

`A139352(A000267(A330195(n)²))`
-/

namespace A327104.P4907604243134458603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139352 (A000267 (A330195 n ^ 2).toNat).toNat

end

end A327104.P4907604243134458603

/-!
# A327105: BII-numbers of set-systems with minimum degree 1.

The programs for A327105, there is no canonical definition to state claims against.
-/

/-! ## A327105.P5941906481808336784

`eq[1, A327103(n)]`
-/

namespace A327105.P5941906481808336784
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327103 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A327105.P5941906481808336784

/-! ## A327105.P5779525298851888338

`lt[A327103(n+1), 2]+1`
-/

namespace A327105.P5779525298851888338
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327103 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A327105.P5779525298851888338

/-! ## A327105.P4016449816513818420

`lt[A000007(n), cos(A327103(n))]`
-/

namespace A327105.P4016449816513818420
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.cos (A327103 n : ℝ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℝ) < f2 j) n

end

end A327105.P4016449816513818420

/-! ## A327105.P6134688502350428918

`lt[A151933(n), cos(A327103(n))]`
-/

namespace A327105.P6134688502350428918
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151933 n

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.cos (A327103 n : ℝ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℝ) < f2 j) n

end

end A327105.P6134688502350428918

/-! ## A327105.P758112154382887949

`lt[A327103(n), atan(A000096(n))]`
-/

namespace A327105.P758112154382887949
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327103 n

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.arctan (A000096 n : ℝ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℝ) < f2 j) n

end

end A327105.P758112154382887949

/-! ## A327105.P1451682679377514421

`lt[atan(A327103(n)), A057427(n)]`
-/

namespace A327105.P1451682679377514421
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.arctan (A327103 n : ℝ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℝ)) n

end

end A327105.P1451682679377514421

/-! ## A327105.P7334805044432737257

`eq[char[A327107(n+1)], A151933(n)]`
-/

namespace A327105.P7334805044432737257
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327107 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151933 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A327105.P7334805044432737257

/-! ## A327105.P14691641100230826461

`record[A025581(A000124(n)-A327103(n))]`
-/

namespace A327105.P14691641100230826461
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 (A000124 n - A327103 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A327105.P14691641100230826461

/-!
# A327106: BII-numbers of set-systems with maximum degree 2.

The programs for A327106, there is no canonical definition to state claims against.
-/

/-! ## A327106.P5171602065887297263

`eq[2, A327104(n)]`
-/

namespace A327106.P5171602065887297263
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327104 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A327106.P5171602065887297263

/-! ## A327106.P12909478940499700353

`lt[A270120(A327104(n)+A087695(n+1)+1), 2]`
-/

namespace A327106.P12909478940499700353
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270120 (A327104 n + A087695 (n + 1) + 1).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A327106.P12909478940499700353

/-! ## A327106.P12235616005545641301

`eq[2, A139351(A330101(n))]`
-/

namespace A327106.P12235616005545641301
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139351 (A330101 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A327106.P12235616005545641301

/-! ## A327106.P14132548237722343494

`eq[2, A139351(A330195(n))]`
-/

namespace A327106.P14132548237722343494
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139351 (A330195 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A327106.P14132548237722343494

/-! ## A327106.P2501268446273094952

`eq[2, A139352(2*A330101(n))]`
-/

namespace A327106.P2501268446273094952
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139352 (2 * A330101 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A327106.P2501268446273094952

/-!
# A327107: BII-numbers of set-systems with minimum vertex-degree > 1.

The programs for A327107, there is no canonical definition to state claims against.
-/

/-! ## A327107.P5626123005387724

`comp[A327105(n+1)-1]+1`
-/

namespace A327107.P5626123005387724
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327105 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A327107.P5626123005387724

/-! ## A327107.P9504367358802429775

`comp[∪[A327105(n+1), A000567(n)]]`
-/

namespace A327107.P9504367358802429775
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327105 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000567 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f2 j = (x : ℤ)) ∨ ∃ j, f3 j = (x : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A327107.P9504367358802429775

/-! ## A327107.P17131210651252822366

`comp[∪[A258809(n+1), A327105(n+1)]]`
-/

namespace A327107.P17131210651252822366
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258809 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327105 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f2 j = (x : ℤ)) ∨ ∃ j, f3 j = (x : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A327107.P17131210651252822366

/-! ## A327107.P3655909849143058362

`lt[1, A327103(n)]`
-/

namespace A327107.P3655909849143058362
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327103 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A327107.P3655909849143058362

/-! ## A327107.P4848689471961692998

`eq[2, and(A016825(n), A327103(n))]`
-/

namespace A327107.P4848689471961692998
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A016825 n) (A327103 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A327107.P4848689471961692998

/-!
# A327108: BII-numbers of set-systems with spanning edge-connectivity 2.

The programs for A327108, there is no canonical definition to state claims against.
-/

/-! ## A327108.P3280406309342954243

`A327109(n+1)+A324096(A039735(n+1))`
-/

namespace A327108.P3280406309342954243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327109 (n + 1) + A324096 (A039735 (n + 1)).toNat

end

end A327108.P3280406309342954243

/-! ## A327108.P3650119492531963570

`A327109((n+1)*A152847(n))`
-/

namespace A327108.P3650119492531963570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327109 ((n + 1 : ℤ) * A152847 n).toNat

end

end A327108.P3650119492531963570

/-! ## A327108.P8309291402222653085

`A327109((n+1)^A152847(n))`
-/

namespace A327108.P8309291402222653085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327109 (SequenceMachineLib.roundAway ((n + 1 : ℚ) ^ (A152847 n : ℤ))).toNat

end

end A327108.P8309291402222653085

/-! ## A327108.P11845698947941364925

`A327109(C(A080683(n+1), n))`
-/

namespace A327108.P11845698947941364925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327109 (Nat.choose (A080683 (n + 1)).toNat n)

end

end A327108.P11845698947941364925

/-! ## A327108.P1993710071986046729

`A327109(n+1)%A086979(n+2)`
-/

namespace A327108.P1993710071986046729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A327109 (n + 1)) (A086979 (n + 2))

end

end A327108.P1993710071986046729

/-!
# A327109: BII-numbers of set-systems with spanning edge-connectivity >= 2.

The programs for A327109, there is no canonical definition to state claims against.
-/

/-! ## A327109.P700074904879154690

`∩[A327107(n+1), A327102(n+3)]`
-/

namespace A327109.P700074904879154690
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327107 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327102 (n + 3)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A327109.P700074904879154690

/-! ## A327109.P1196080704247943132

`A327108(n+1)-A324096(A039735(n+1))`
-/

namespace A327109.P1196080704247943132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327108 (n + 1) - A324096 (A039735 (n + 1)).toNat

end

end A327109.P1196080704247943132

/-!
# A327110: BII-numbers of set-systems with spanning edge-connectivity 3.

The programs for A327110, there is no canonical definition to state claims against.
-/

/-! ## A327110.P4395535388898787848

`record[xor(91, 94/2-n)]`
-/

namespace A327110.P4395535388898787848
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 91 (SequenceMachineLib.roundAway ((94 : ℚ) / 2 - (n : ℚ)))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A327110.P4395535388898787848

/-! ## A327110.P11490513086062648022

`record[or(116, A056558(n))]`
-/

namespace A327110.P11490513086062648022
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 116 (A056558 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A327110.P11490513086062648022

/-! ## A327110.P11974864770581970951

`record[or(116, A319572(n))]`
-/

namespace A327110.P11974864770581970951
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 116 (A319572 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A327110.P11974864770581970951

/-! ## A327110.P1767308123554711968

`record[or(116, A329202(3*n+1))]`
-/

namespace A327110.P1767308123554711968
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 116 (A329202 (3 * n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A327110.P1767308123554711968

/-!
# A327111: BII-numbers of set-systems with spanning edge-connectivity 1.

The programs for A327111, there is no canonical definition to state claims against.
-/

/-! ## A327111.P12032101923997496183

`eq[1, A327144(n)]`
-/

namespace A327111.P12032101923997496183
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327144 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A327111.P12032101923997496183

/-! ## A327111.P14913877216244513950

`lt[0, A327144(n+1)%2]+1`
-/

namespace A327111.P14913877216244513950
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A327144 (n + 1)) 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A327111.P14913877216244513950

/-! ## A327111.P8824401549337489255

`lt[A000007(n), tan(A327144(n))]`
-/

namespace A327111.P8824401549337489255
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.tan (A327144 n : ℝ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℝ) < f2 j) n

end

end A327111.P8824401549337489255

/-! ## A327111.P3073456736540340334

`lt[A000038(n), tan(A327144(n))]`
-/

namespace A327111.P3073456736540340334
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.tan (A327144 n : ℝ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℝ) < f2 j) n

end

end A327111.P3073456736540340334

/-! ## A327111.P1403144289005619670

`lt[A057427(n), tan(A327144(n))]`
-/

namespace A327111.P1403144289005619670
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.tan (A327144 n : ℝ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℝ) < f2 j) n

end

end A327111.P1403144289005619670

/-! ## A327111.P6719848508894341994

`lt[A326753(n), tan(A327144(n))]`
-/

namespace A327111.P6719848508894341994
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326753 n

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.tan (A327144 n : ℝ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℝ) < f2 j) n

end

end A327111.P6719848508894341994

/-! ## A327111.P7108548471777313501

`lt[A033999(n)², tan(A327144(n))]`
-/

namespace A327111.P7108548471777313501
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n ^ 2

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.tan (A327144 n : ℝ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℝ) < f2 j) n

end

end A327111.P7108548471777313501

/-! ## A327111.P8816901151684080603

`lt[A051731(n+1), tan(A327144(n))]`
-/

namespace A327111.P8816901151684080603
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051731 (n + 1)

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.tan (A327144 n : ℝ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℝ) < f2 j) n

end

end A327111.P8816901151684080603

/-! ## A327111.P11603467252005444720

`lt[A093521(n+1), tan(A327144(n))]`
-/

namespace A327111.P11603467252005444720
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093521 (n + 1)

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.tan (A327144 n : ℝ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℝ) < f2 j) n

end

end A327111.P11603467252005444720

/-! ## A327111.P16114392183571276146

`lt[A175860(n+1), tan(A327144(n))]`
-/

namespace A327111.P16114392183571276146
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175860 (n + 1)

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.tan (A327144 n : ℝ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℝ) < f2 j) n

end

end A327111.P16114392183571276146

/-!
# A327112: Number of set-systems covering n vertices with cut-connectivity >= 2, or 2-cut-connected set-systems.

The programs for A327112, there is no canonical definition to state claims against.
-/

/-! ## A327112.P7636385101255246782

`2*A029313(A325514(n)²)`
-/

namespace A327112.P7636385101255246782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A029313 (A325514 n ^ 2).toNat

end

end A327112.P7636385101255246782

/-!
# A327113: Number of set-systems covering n vertices with cut-connectivity 2.

The programs for A327113, there is no canonical definition to state claims against.
-/

/-! ## A327113.P18385942432436184393

`12*99*a(n-2)` with `a(0)=0, a(1)=0, a(2)=4`
-/

namespace A327113.P18385942432436184393
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 0, 4] fun n a =>
  12 * (99 * a (n - 2))

end

end A327113.P18385942432436184393

/-!
# A327114: Number of labeled simple graphs covering n vertices with cut-connectivity 1.

The programs for A327114, there is no canonical definition to state claims against.
-/

/-! ## A327114.P3507986245826583289

`A327336(n-char[2])`
-/

namespace A327114.P3507986245826583289
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327336 (n - (if ∃ j, f1 j = n then 1 else 0))

end

end A327114.P3507986245826583289

/-! ## A327114.P4437808227466371948

`xor(char[2], A327336(n))`
-/

namespace A327114.P4437808227466371948
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A327336 n)

end

end A327114.P4437808227466371948

/-! ## A327114.P15355787353859872678

`A057427(A352685(n))*A327336(n)`
-/

namespace A327114.P15355787353859872678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (A352685 n).toNat * A327336 n

end

end A327114.P15355787353859872678

/-! ## A327114.P9458040755253232309

`A001187(n)-A013922(A233583(n+1))`
-/

namespace A327114.P9458040755253232309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001187 n - A013922 (A233583 (n + 1)).toNat

end

end A327114.P9458040755253232309

/-! ## A327114.P3971504663785167848

`A327051(A327098(n+1))*A327336(n)`
-/

namespace A327114.P3971504663785167848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327051 (A327098 (n + 1)).toNat * A327336 n

end

end A327114.P3971504663785167848

/-!
# A327115: Total number of colors used in all colored integer partitions of n using all colors of an initial interval of the color palette such that all parts have different color patterns and a pattern for part i has i distinct colors in increasing order.

The programs for A327115, there is no canonical definition to state claims against.
-/

/-! ## A327115.P5491508570676318833

`∑[∑[A100196(A108398(n))]]`
-/

namespace A327115.P5491508570676318833
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100196 (A108398 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A327115.P5491508570676318833

/-! ## A327115.P17076825486138926749

`A159790(A274739(n))+A001563(n)`
-/

namespace A327115.P17076825486138926749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159790 (A274739 n).toNat + A001563 n

end

end A327115.P17076825486138926749

/-!
# A327116: Number T(n,k) of colored integer partitions of n using all colors of a k-set such that all parts have different color patterns and a pattern for part i has i colors in (weakly) increasing order; triangle T(n,k), n>=0, 0<=k<=n, read by rows.

The programs for A327116, there is no canonical definition to state claims against.
-/

/-! ## A327116.P15684924447284498640

`A097805(n)*A285189(A293985(n))`
-/

namespace A327116.P15684924447284498640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097805 n * A285189 (A293985 n).toNat

end

end A327116.P15684924447284498640

/-! ## A327116.P7761126343865953668

`A338796(A257740(n)+1)`
-/

namespace A327116.P7761126343865953668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338796 (A257740 n + 1).toNat

end

end A327116.P7761126343865953668

/-! ## A327116.P11201196793440408022

`A163352(A327673(n)+A123125(n))`
-/

namespace A327116.P11201196793440408022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163352 (A327673 n + A123125 n).toNat

end

end A327116.P11201196793440408022

/-! ## A327116.P6702802585751382763

`A048766(A222599(n)*A270882(n))`
-/

namespace A327116.P6702802585751382763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048766 (A222599 n * A270882 n).toNat

end

end A327116.P6702802585751382763

/-! ## A327116.P7031726594834691952

`ceil(A253283(n)/A020639(A199127(n+1)))`
-/

namespace A327116.P7031726594834691952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A253283 n : ℚ) / (A020639 (A199127 (n + 1)).toNat : ℚ)⌉

end

end A327116.P7031726594834691952

/-!
# A327117: Number T(n,k) of colored integer partitions of n using all colors of a k-set such that a color pattern for part i has i distinct colors in increasing order; triangle T(n,k), n>=0, 0<=k<=n, read by rows.

The programs for A327117, there is no canonical definition to state claims against.
-/

/-! ## A327117.P9165997057931475592

`A319951(floor(sqrt(A291451(n))))`
-/

namespace A327117.P9165997057931475592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319951 (Int.sqrt (A291451 n)).toNat

end

end A327117.P9165997057931475592

/-! ## A327117.P15275387989755961377

`A349740(n)+A326033(A035312(n))`
-/

namespace A327117.P15275387989755961377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349740 n + A326033 (A035312 n).toNat

end

end A327117.P15275387989755961377

/-! ## A327117.P5252397707060983412

`A109450(n)-A303907(A126291(n))`
-/

namespace A327117.P5252397707060983412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109450 n - A303907 (A126291 n).toNat

end

end A327117.P5252397707060983412

/-! ## A327117.P13100781819976101360

`A048766(A256549(n)^A056608(n+1))`
-/

namespace A327117.P13100781819976101360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048766 (SequenceMachineLib.roundAway ((A256549 n : ℚ) ^ (A056608 (n + 1) : ℤ))).toNat

end

end A327117.P13100781819976101360

/-! ## A327117.P2612207004761290465

`A359043(A135313(n))`
-/

namespace A327117.P2612207004761290465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359043 (A135313 n).toNat

end

end A327117.P2612207004761290465

/-!
# A327118: Total number of colors in all colored integer partitions of n using all colors of an initial color palette such that a color pattern for part i has i distinct colors in increasing order.

The programs for A327118, there is no canonical definition to state claims against.
-/

/-! ## A327118.P9798918534585397191

`∑[A002265(∑[A192479(n+1)])]`
-/

namespace A327118.P9798918534585397191
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192479 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A327118.P9798918534585397191

/-! ## A327118.P1067854142936413482

`A172476(A263986(n)+A014333(n))`
-/

namespace A327118.P1067854142936413482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172476 (A263986 n + A014333 n).toNat

end

end A327118.P1067854142936413482

/-!
# A327119: Sequence obtained by swapping each (k*(2n))-th element of the nonnegative integers with the (k*(2n+1))-th element, for all k>0 in ascending order, omitting the first term.

The programs for A327119, there is no canonical definition to state claims against.
-/

/-! ## A327119.P14798201590885646977

`xor(1, A327420(n))`
-/

namespace A327119.P14798201590885646977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (A327420 n)

end

end A327119.P14798201590885646977

/-! ## A327119.P17469288763094202365

`A004442(A327420(n))`
-/

namespace A327119.P17469288763094202365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004442 (A327420 n).toNat

end

end A327119.P17469288763094202365

/-! ## A327119.P16827941389647439471

`A014681(A327420(n)+1)-1`
-/

namespace A327119.P16827941389647439471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014681 (A327420 n + 1).toNat - 1

end

end A327119.P16827941389647439471

/-! ## A327119.P1156466446317641312

`A327420(A327120(A327420(n))-1)`
-/

namespace A327119.P1156466446317641312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327420 (A327120 (A327420 n).toNat - 1).toNat

end

end A327119.P1156466446317641312

/-! ## A327119.P16181420618403206909

`A341517(A271322(n+2))+A014681(A327420(n)+1)`
-/

namespace A327119.P16181420618403206909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341517 (A271322 (n + 2)).toNat + A014681 (A327420 n + 1).toNat

end

end A327119.P16181420618403206909

/-! ## A327119.P13622808489910117152

`A176740(A094497(n))+A014681(A327420(n)+1)`
-/

namespace A327119.P13622808489910117152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176740 (A094497 n).toNat + A014681 (A327420 n + 1).toNat

end

end A327119.P13622808489910117152

/-! ## A327119.P11776390699357924987

`A327420(n)+A094267(A327420(n)²)`
-/

namespace A327119.P11776390699357924987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327420 n + A094267 (A327420 n ^ 2).toNat

end

end A327119.P11776390699357924987

/-!
# A327122: Expansion of Sum_{k>=1} sigma(k) * x^k / (1 + x^(2*k)), where sigma = A000203.

The programs for A327122, the canonical program `A327122.P14365338832682024670` is in `Seq.B003.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A327122 has offset 1).

The definition of A327122 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A050469, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A327122.P14365338832682024670

`∑{d}[n+1, A050469(#)]`

The canonical program, it is in `Seq.B003.C004`.
-/

namespace A327122

/-- `∑{d}[n+1, A050469(#)]` -/
def P14365338832682024670.Spec : Prop :=
  ∀ n, P14365338832682024670.a n = A327122 (n + 1)

theorem P14365338832682024670.correct : P14365338832682024670.Spec := by
  intro n
  simp only [A327122, Nat.add_sub_cancel]

end A327122

/-! ## A327122.P13615146346904590419

`∑{d}[n+1, #*A002654((n+1)/#)]`
-/

namespace A327122.P13615146346904590419
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * A002654 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A327122.P13615146346904590419

namespace A327122

/-- `∑{d}[n+1, #*A002654((n+1)/#)]` -/
def P13615146346904590419.Spec : Prop :=
  ∀ n, P13615146346904590419.a n = A327122 (n + 1)

end A327122

/-! ## A327122.P2695138220276466301

`∑{d}[n+1, A002131(#)*A034947((n+1)/#)]`
-/

namespace A327122.P2695138220276466301
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A002131 d * A034947 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A327122.P2695138220276466301

namespace A327122

/-- `∑{d}[n+1, A002131(#)*A034947((n+1)/#)]` -/
def P2695138220276466301.Spec : Prop :=
  ∀ n, P2695138220276466301.a n = A327122 (n + 1)

end A327122

/-! ## A327122.P5952562187324529124

`∑{d}[n+1, A000593(#)*A055975((n+1)/#)]`
-/

namespace A327122.P5952562187324529124
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000593 d * A055975 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A327122.P5952562187324529124

namespace A327122

/-- `∑{d}[n+1, A000593(#)*A055975((n+1)/#)]` -/
def P5952562187324529124.Spec : Prop :=
  ∀ n, P5952562187324529124.a n = A327122 (n + 1)

end A327122

/-! ## A327122.P8132946256642359600

`∑{d}[n+1, A000089(#)*A076752((n+1)/#)]`
-/

namespace A327122.P8132946256642359600
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000089 d * A076752 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A327122.P8132946256642359600

namespace A327122

/-- `∑{d}[n+1, A000089(#)*A076752((n+1)/#)]` -/
def P8132946256642359600.Spec : Prop :=
  ∀ n, P8132946256642359600.a n = A327122 (n + 1)

end A327122

/-! ## A327122.P1631318535835106524

`∑{d}[n+1, A062327(#)*A074722((n+1)/#)]`
-/

namespace A327122.P1631318535835106524
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A062327 d * A074722 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A327122.P1631318535835106524

namespace A327122

/-- `∑{d}[n+1, A062327(#)*A074722((n+1)/#)]` -/
def P1631318535835106524.Spec : Prop :=
  ∀ n, P1631318535835106524.a n = A327122 (n + 1)

end A327122

/-! ## A327122.P7028838287049849820

`∑{d}[n+1, A091512(#)*A113652((n+1)/#)]`
-/

namespace A327122.P7028838287049849820
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A091512 d * A113652 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A327122.P7028838287049849820

namespace A327122

/-- `∑{d}[n+1, A091512(#)*A113652((n+1)/#)]` -/
def P7028838287049849820.Spec : Prop :=
  ∀ n, P7028838287049849820.a n = A327122 (n + 1)

end A327122

/-! ## A327122.P151263801573387938

`∑{d}[n+1, A000010(#)*A262209((n+1)/#)]`
-/

namespace A327122.P151263801573387938
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000010 d * A262209 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A327122.P151263801573387938

namespace A327122

/-- `∑{d}[n+1, A000010(#)*A262209((n+1)/#)]` -/
def P151263801573387938.Spec : Prop :=
  ∀ n, P151263801573387938.a n = A327122 (n + 1)

end A327122

/-! ## A327122.P14534590354260048372

`∑{d}[n+1, A007429(#)*A275966((n+1)/#)]`
-/

namespace A327122.P14534590354260048372
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A007429 d * A275966 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A327122.P14534590354260048372

namespace A327122

/-- `∑{d}[n+1, A007429(#)*A275966((n+1)/#)]` -/
def P14534590354260048372.Spec : Prop :=
  ∀ n, P14534590354260048372.a n = A327122 (n + 1)

end A327122

/-! ## A327122.P11654183755973548636

`∑{d}[n+1, A000005(#)*A327123((n+1)/#)]`
-/

namespace A327122.P11654183755973548636
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000005 d * A327123 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A327122.P11654183755973548636

namespace A327122

/-- `∑{d}[n+1, A000005(#)*A327123((n+1)/#)]` -/
def P11654183755973548636.Spec : Prop :=
  ∀ n, P11654183755973548636.a n = A327122 (n + 1)

end A327122

/-! ## A327122.P11718811447413414549

`∑{d}[n+1, A080512(#)*A338690((n+1)/#)]`
-/

namespace A327122.P11718811447413414549
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A080512 d * A338690 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A327122.P11718811447413414549

namespace A327122

/-- `∑{d}[n+1, A080512(#)*A338690((n+1)/#)]` -/
def P11718811447413414549.Spec : Prop :=
  ∀ n, P11718811447413414549.a n = A327122 (n + 1)

end A327122

/-! ## A327122.P7325608410021834804

`∑{d}[n+1, A113446(#)*A327625((n+1)/#)]`
-/

namespace A327122.P7325608410021834804
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A113446 d * A327625 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A327122.P7325608410021834804

namespace A327122

/-- `∑{d}[n+1, A113446(#)*A327625((n+1)/#)]` -/
def P7325608410021834804.Spec : Prop :=
  ∀ n, P7325608410021834804.a n = A327122 (n + 1)

end A327122

/-! ## A327122.P4181099158968131053

`∑{d}[n+1, A164677(#)*A327095((n+1)/#)]`
-/

namespace A327122.P4181099158968131053
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A164677 d * A327095 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A327122.P4181099158968131053

namespace A327122

/-- `∑{d}[n+1, A164677(#)*A327095((n+1)/#)]` -/
def P4181099158968131053.Spec : Prop :=
  ∀ n, P4181099158968131053.a n = A327122 (n + 1)

end A327122

/-! ## A327122.P13945729118475367563

`∑{d}[n+1, A138950(#)*A364222((n+1)/#)]`
-/

namespace A327122.P13945729118475367563
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A138950 d * A364222 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A327122.P13945729118475367563

namespace A327122

/-- `∑{d}[n+1, A138950(#)*A364222((n+1)/#)]` -/
def P13945729118475367563.Spec : Prop :=
  ∀ n, P13945729118475367563.a n = A327122 (n + 1)

end A327122

/-! ## A327122.P4221590364197567756

`∑{d}[n+1, A000203(#)*A056594((n+1)/#-1)]`
-/

namespace A327122.P4221590364197567756
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000203 d * A056594 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ) - 1)).toNat

end

end A327122.P4221590364197567756

namespace A327122

/-- `∑{d}[n+1, A000203(#)*A056594((n+1)/#-1)]` -/
def P4221590364197567756.Spec : Prop :=
  ∀ n, P4221590364197567756.a n = A327122 (n + 1)

end A327122

/-!
# A327123: Expansion of Sum_{k>=1} phi(k) * x^k / (1 + x^(2*k)), where phi = A000010.

The programs for A327123, the canonical program `A327123.P13363056094402647823` is in `Seq.B004.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A327123 has offset 1).

The definition of A327123 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A327123.P6932937114801271765

`∑{d}[n+1, (n+1)/#*A275966(#)]`
-/

namespace A327123.P6932937114801271765
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (n + 1 : ℚ) / (d : ℚ) * (A275966 d : ℚ)

end

end A327123.P6932937114801271765

namespace A327123

/-- `∑{d}[n+1, (n+1)/#*A275966(#)]` -/
def P6932937114801271765.Spec : Prop :=
  ∀ n, P6932937114801271765.a n = (A327123 (n + 1) : ℚ)

end A327123

/-! ## A327123.P7937963394329703236

`∑{d}[n+1, A002654(#)*A007431((n+1)/#)]`
-/

namespace A327123.P7937963394329703236
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A002654 d * A007431 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A327123.P7937963394329703236

namespace A327123

/-- `∑{d}[n+1, A002654(#)*A007431((n+1)/#)]` -/
def P7937963394329703236.Spec : Prop :=
  ∀ n, P7937963394329703236.a n = A327123 (n + 1)

end A327123

/-! ## A327123.P8600412410542066030

`∑{d}[n+1, A008683(#)*A050469((n+1)/#)]`
-/

namespace A327123.P8600412410542066030
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008683 d * A050469 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A327123.P8600412410542066030

namespace A327123

/-- `∑{d}[n+1, A008683(#)*A050469((n+1)/#)]` -/
def P8600412410542066030.Spec : Prop :=
  ∀ n, P8600412410542066030.a n = A327123 (n + 1)

end A327123

/-! ## A327123.P2398195499735156621

`∑{d}[n+1, A000089(#)*A074722((n+1)/#)]`
-/

namespace A327123.P2398195499735156621
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000089 d * A074722 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A327123.P2398195499735156621

namespace A327123

/-- `∑{d}[n+1, A000089(#)*A074722((n+1)/#)]` -/
def P2398195499735156621.Spec : Prop :=
  ∀ n, P2398195499735156621.a n = A327123 (n + 1)

end A327123

/-! ## A327123.P11324976888777947494

`∑{d}[n+1, A062570(#)*A112299((n+1)/#)]`
-/

namespace A327123.P11324976888777947494
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A062570 d * A112299 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A327123.P11324976888777947494

namespace A327123

/-- `∑{d}[n+1, A062570(#)*A112299((n+1)/#)]` -/
def P11324976888777947494.Spec : Prop :=
  ∀ n, P11324976888777947494.a n = A327123 (n + 1)

end A327123

/-! ## A327123.P16566307554499488518

`∑{d}[n+1, A007432(#)*A262209((n+1)/#)]`
-/

namespace A327123.P16566307554499488518
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A007432 d * A262209 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A327123.P16566307554499488518

namespace A327123

/-- `∑{d}[n+1, A007432(#)*A262209((n+1)/#)]` -/
def P16566307554499488518.Spec : Prop :=
  ∀ n, P16566307554499488518.a n = A327123 (n + 1)

end A327123

/-! ## A327123.P13363056094402647823

`∑{d}[n+1, A007427(#)*A327122((n+1)/#)]`

The canonical program, it is in `Seq.B004.C003`.
-/

namespace A327123

/-- `∑{d}[n+1, A007427(#)*A327122((n+1)/#)]` -/
def P13363056094402647823.Spec : Prop :=
  ∀ n, P13363056094402647823.a n = A327123 (n + 1)

theorem P13363056094402647823.correct : P13363056094402647823.Spec := by
  intro n
  simp only [A327123, Nat.add_sub_cancel]

end A327123

/-! ## A327123.P16806484089023909498

`∑{d}[n+1, A126246(#)*A209615((n+1)/#)]`
-/

namespace A327123.P16806484089023909498
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A126246 d * A209615 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A327123.P16806484089023909498

namespace A327123

/-- `∑{d}[n+1, A126246(#)*A209615((n+1)/#)]` -/
def P16806484089023909498.Spec : Prop :=
  ∀ n, P16806484089023909498.a n = A327123 (n + 1)

end A327123

/-! ## A327123.P16989836571865892457

`∑{d}[n+1, A034947(#)*A326305((n+1)/#)]`
-/

namespace A327123.P16989836571865892457
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A034947 d * A326305 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A327123.P16989836571865892457

namespace A327123

/-- `∑{d}[n+1, A034947(#)*A326305((n+1)/#)]` -/
def P16989836571865892457.Spec : Prop :=
  ∀ n, P16989836571865892457.a n = A327123 (n + 1)

end A327123

/-! ## A327123.P3353414017848565798

`∑{d}[n+1, A055975(#)*A319997((n+1)/#)]`
-/

namespace A327123.P3353414017848565798
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A055975 d * A319997 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A327123.P3353414017848565798

namespace A327123

/-- `∑{d}[n+1, A055975(#)*A319997((n+1)/#)]` -/
def P3353414017848565798.Spec : Prop :=
  ∀ n, P3353414017848565798.a n = A327123 (n + 1)

end A327123

/-! ## A327123.P9724398838689295588

`∑{d}[n+1, A050470(#)*A328502((n+1)/#)]`
-/

namespace A327123.P9724398838689295588
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A050470 d * A328502 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A327123.P9724398838689295588

namespace A327123

/-- `∑{d}[n+1, A050470(#)*A328502((n+1)/#)]` -/
def P9724398838689295588.Spec : Prop :=
  ∀ n, P9724398838689295588.a n = A327123 (n + 1)

end A327123

/-! ## A327123.P17921766925896996809

`∑{d}[n+1, A000010(#)*A056594((n+1)/#-1)]`
-/

namespace A327123.P17921766925896996809
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000010 d * A056594 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ) - 1)).toNat

end

end A327123.P17921766925896996809

namespace A327123

/-- `∑{d}[n+1, A000010(#)*A056594((n+1)/#-1)]` -/
def P17921766925896996809.Spec : Prop :=
  ∀ n, P17921766925896996809.a n = A327123 (n + 1)

end A327123

/-! ## A327123.P12001336218865897107

`∑{d}[n+1, A185276(#)*A359101((n+1)/#)]`
-/

namespace A327123.P12001336218865897107
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A185276 d * A359101 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A327123.P12001336218865897107

namespace A327123

/-- `∑{d}[n+1, A185276(#)*A359101((n+1)/#)]` -/
def P12001336218865897107.Spec : Prop :=
  ∀ n, P12001336218865897107.a n = A327123 (n + 1)

end A327123

/-!
# A327125: Triangle read by rows where T(n,k) is the number of labeled simple graphs with n vertices and cut-connectivity k.

The programs for A327125, there is no canonical definition to state claims against.
-/

/-! ## A327125.P10667879606824877616

`A327334(A316964(n+1))`
-/

namespace A327125.P10667879606824877616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327334 (A316964 (n + 1)).toNat

end

end A327125.P10667879606824877616

/-! ## A327125.P4102469968944330001

`xor(char[A101881(n)], A327334(n))`
-/

namespace A327125.P4102469968944330001
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101881 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) (A327334 n)

end

end A327125.P4102469968944330001

/-! ## A327125.P6312611947680706126

`A327334(A127701(n+1)+n)`
-/

namespace A327125.P6312611947680706126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327334 (A127701 (n + 1) + (n : ℤ)).toNat

end

end A327125.P6312611947680706126

/-! ## A327125.P4010595292334141809

`A327334(n)-Δ[A000007(A086460(n))]`
-/

namespace A327125.P4010595292334141809
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (A086460 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327334 n - (f1 (n + 1) - f1 n)

end

end A327125.P4010595292334141809

/-! ## A327125.P1736485945583517020

`A327334(n)-Δ[A000007(A118344(n))]`
-/

namespace A327125.P1736485945583517020
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (A118344 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327334 n - (f1 (n + 1) - f1 n)

end

end A327125.P1736485945583517020

/-!
# A327127: Triangle read by rows where T(n,k) is the number of unlabeled simple graphs with n vertices where k is the minimum number of vertices that must be removed (along with any incident edges) to obtain a disconnected or empty graph.

The programs for A327127, there is no canonical definition to state claims against.
-/

/-! ## A327127.P5381784452764325813

`A102404(n)-A102683(A299646(n))`
-/

namespace A327127.P5381784452764325813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102404 n - A102683 (A299646 n).toNat

end

end A327127.P5381784452764325813

/-! ## A327127.P16522687745980367514

`A239145(n+1)*A341674(A143670(n+1))`
-/

namespace A327127.P16522687745980367514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239145 (n + 1) * A341674 (A143670 (n + 1)).toNat

end

end A327127.P16522687745980367514

/-! ## A327127.P18069033817525072438

`A240600(A145878(n))`
-/

namespace A327127.P18069033817525072438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240600 (A145878 n).toNat

end

end A327127.P18069033817525072438

/-! ## A327127.P6633768234986773838

`A102382(A349454(n))`
-/

namespace A327127.P6633768234986773838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102382 (A349454 n).toNat

end

end A327127.P6633768234986773838

/-! ## A327127.P1137579745911117259

`A352685(A107880(n))`
-/

namespace A327127.P1137579745911117259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352685 (A107880 n).toNat

end

end A327127.P1137579745911117259

/-!
# A327128: Number of set-systems with n vertices whose edge-set has cut-connectivity 1.

The programs for A327128, there is no canonical definition to state claims against.
-/

/-! ## A327128.P7525601906435125145

`lcm(n, A245050(abs(1-n)))`
-/

namespace A327128.P7525601906435125145
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (n : ℤ) (A245050 |1 - (n : ℤ)|.toNat)

end

end A327128.P7525601906435125145

/-!
# A327129: Number of connected set-systems covering n vertices with at least one edge whose removal (along with any non-covered vertices) disconnects the set-system (non-spanning edge-connectivity 1).

The programs for A327129, there is no canonical definition to state claims against.
-/

/-! ## A327129.P9021171865794219302

`xor(n, 8*A219755(n²-n))`
-/

namespace A327129.P9021171865794219302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) (8 * A219755 (n ^ 2 - n))

end

end A327129.P9021171865794219302

/-!
# A327130: Number of set-systems covering n vertices with spanning edge-connectivity 2.

The programs for A327130, there is no canonical definition to state claims against.
-/

/-! ## A327130.P13950920457986506360

`16*A210713(n²)`
-/

namespace A327130.P13950920457986506360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  16 * A210713 (n ^ 2)

end

end A327130.P13950920457986506360

/-!
# A327133: The difference between 10^n and the lesser of the twin primes immediately before.

The programs for A327133, there is no canonical definition to state claims against.
-/

/-! ## A327133.P5493520913386884663

`A011557(n+1)-A092250(n+1)`
-/

namespace A327133.P5493520913386884663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011557 (n + 1) - A092250 (n + 1)

end

end A327133.P5493520913386884663

/-! ## A327133.P7159506676551185613

`A178500(n+1)-A092250(n+1)`
-/

namespace A327133.P7159506676551185613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178500 (n + 1) - A092250 (n + 1)

end

end A327133.P7159506676551185613

/-! ## A327133.P915450765290124805

`A003618(n+1)+A033874(n+1)-A092250(n+1)`
-/

namespace A327133.P915450765290124805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003618 (n + 1) + (A033874 (n + 1) - A092250 (n + 1))

end

end A327133.P915450765290124805

/-! ## A327133.P7991474031266348766

`A003617(n+2)-(A092250(n+1)+A033873(n+1))`
-/

namespace A327133.P7991474031266348766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003617 (n + 2) - (A092250 (n + 1) + A033873 (n + 1))

end

end A327133.P7991474031266348766

/-! ## A327133.P9772694803968877695

`A092245(n+2)-(A124001(n+1)+A092250(n+1))`
-/

namespace A327133.P9772694803968877695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092245 (n + 2) - (A124001 (n + 1) + A092250 (n + 1))

end

end A327133.P9772694803968877695

/-!
# A327136: Numbers k such that sin(2k) > sin(2k+2) < sin(2k+4).

The programs for A327136, the canonical program `A327136.P310287621516089561` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A327136 has offset 1).

The definition of A327136 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A327136.P310287621516089561

`4-floor(π*(1-n))`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A327136

/-- `4-floor(π*(1-n))` -/
def P310287621516089561.Spec : Prop :=
  ∀ n, P310287621516089561.a n = A327136 (n + 1)

theorem P310287621516089561.correct : P310287621516089561.Spec := by
  intro n
  simp only [A327136, Nat.add_sub_cancel]

end A327136

/-! ## A327136.P20016715281857328

`comp[floor(cos(2*n+1)+n)]`
-/

namespace A327136.P20016715281857328
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.cos (2 * n + 1 : ℝ) + (n : ℝ)⌋

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A327136.P20016715281857328

namespace A327136

/-- `comp[floor(cos(2*n+1)+n)]` -/
def P20016715281857328.Spec : Prop :=
  ∀ n, (P20016715281857328.a n : ℤ) = A327136 (n + 1)

end A327136

/-! ## A327136.P6234193973136480315

`floor(A277138(2*n+1)/2)`
-/

namespace A327136.P6234193973136480315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A277138 (2 * n + 1) : ℚ) / 2⌋

end

end A327136.P6234193973136480315

namespace A327136

/-- `floor(A277138(2*n+1)/2)` -/
def P6234193973136480315.Spec : Prop :=
  ∀ n, P6234193973136480315.a n = A327136 (n + 1)

end A327136

/-! ## A327136.P16404728569854890422

`lt[sin(2), Δ[cos(2*n+1)]]`
-/

namespace A327136.P16404728569854890422
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sin (2 : ℝ)

def f3 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.cos (2 * n + 1 : ℝ)

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A327136.P16404728569854890422

namespace A327136

/-- `lt[sin(2), Δ[cos(2*n+1)]]` -/
def P16404728569854890422.Spec : Prop :=
  ∀ n, (P16404728569854890422.a n : ℤ) = A327136 (n + 1)

end A327136

/-! ## A327136.P4862992176635621102

`lt[1, Δ[acot(cos(2*n+1))]]`
-/

namespace A327136.P4862992176635621102
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.acot (Real.cos (2 * n + 1 : ℝ))

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℝ) < f2 j) n

end

end A327136.P4862992176635621102

namespace A327136

/-- `lt[1, Δ[acot(cos(2*n+1))]]` -/
def P4862992176635621102.Spec : Prop :=
  ∀ n, (P4862992176635621102.a n : ℤ) = A327136 (n + 1)

end A327136

/-! ## A327136.P14780716907164805090

`A140106(A004083(n+1))`
-/

namespace A327136.P14780716907164805090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140106 (A004083 (n + 1)).toNat

end

end A327136.P14780716907164805090

namespace A327136

/-- `A140106(A004083(n+1))` -/
def P14780716907164805090.Spec : Prop :=
  ∀ n, P14780716907164805090.a n = A327136 (n + 1)

end A327136

/-! ## A327136.P15352567425766052816

`floor(log(A297392(2*n+1)))`
-/

namespace A327136.P15352567425766052816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.log (A297392 (2 * n + 1) : ℝ)⌋

end

end A327136.P15352567425766052816

namespace A327136

/-- `floor(log(A297392(2*n+1)))` -/
def P15352567425766052816.Spec : Prop :=
  ∀ n, P15352567425766052816.a n = A327136 (n + 1)

end A327136

/-! ## A327136.P12287004930232813921

`round(log(A124507(2*n+1)-A124507(2*n)))`
-/

namespace A327136.P12287004930232813921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.log (A124507 (2 * n + 1) - A124507 (2 * n) : ℝ))

end

end A327136.P12287004930232813921

namespace A327136

/-- `round(log(A124507(2*n+1)-A124507(2*n)))` -/
def P12287004930232813921.Spec : Prop :=
  ∀ n, P12287004930232813921.a n = A327136 (n + 1)

end A327136

/-! ## A327136.P18314367217562264654

`A065033(A213082(n+2))`
-/

namespace A327136.P18314367217562264654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (A213082 (n + 2)).toNat

end

end A327136.P18314367217562264654

namespace A327136

/-- `A065033(A213082(n+2))` -/
def P18314367217562264654.Spec : Prop :=
  ∀ n, P18314367217562264654.a n = A327136 (n + 1)

end A327136

/-!
# A327137: Numbers k such that sin(2k) > sin(2k+2) > sin(2k+4) < sin(2k+6).

The programs for A327137, the canonical program `A327137.P6453991978606229300` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A327137 has offset 1).

The definition of A327137 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3616 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A327137.P6453991978606229300

`∩[A026316(n+1)-1, A026316(n+1)]`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A327137

/-- `∩[A026316(n+1)-1, A026316(n+1)]` -/
def P6453991978606229300.Spec : Prop :=
  ∀ n, (P6453991978606229300.a n : ℤ) = A327137 (n + 1)

theorem P6453991978606229300.correct : P6453991978606229300.Spec := by
  intro n
  simp only [A327137, Nat.add_sub_cancel]

end A327137

/-! ## A327137.P4873051291440324618

`∩[A026316(n+2), A057428(n)+A026316(n+1)]`
-/

namespace A327137.P4873051291440324618
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026316 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 n + A026316 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A327137.P4873051291440324618

namespace A327137

/-- `∩[A026316(n+2), A057428(n)+A026316(n+1)]` -/
def P4873051291440324618.Spec : Prop :=
  ∀ n, (P4873051291440324618.a n : ℤ) = A327137 (n + 1)

end A327137

/-! ## A327137.P3908923156500867156

`lt[3, 2^tan(n+7)]`
-/

namespace A327137.P3908923156500867156
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (2 : ℝ) ^ (Real.tan (n + 7 : ℝ))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℝ) < f2 j) n

end

end A327137.P3908923156500867156

namespace A327137

/-- `lt[3, 2^tan(n+7)]` -/
def P3908923156500867156.Spec : Prop :=
  ∀ n, (P3908923156500867156.a n : ℤ) = A327137 (n + 1)

end A327137

/-! ## A327137.P16489683901355905058

`A020710(A246442(n+1))`
-/

namespace A327137.P16489683901355905058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020710 (A246442 (n + 1)).toNat

end

end A327137.P16489683901355905058

namespace A327137

/-- `A020710(A246442(n+1))` -/
def P16489683901355905058.Spec : Prop :=
  ∀ n, P16489683901355905058.a n = A327137 (n + 1)

end A327137

/-! ## A327137.P6933824352874483212

`A348776(A246442(n+1)+5)`
-/

namespace A327137.P6933824352874483212
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348776 (A246442 (n + 1) + 5).toNat

end

end A327137.P6933824352874483212

namespace A327137

/-- `A348776(A246442(n+1)+5)` -/
def P6933824352874483212.Spec : Prop :=
  ∀ n, P6933824352874483212.a n = A327137 (n + 1)

end A327137

/-! ## A327137.P8386379953197595434

`A281445(n+1)+A049071(∑[A271508(n+1)])`
-/

namespace A327137.P8386379953197595434
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271508 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281445 (n + 1) + A049071 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A327137.P8386379953197595434

namespace A327137

/-- `A281445(n+1)+A049071(∑[A271508(n+1)])` -/
def P8386379953197595434.Spec : Prop :=
  ∀ n, P8386379953197595434.a n = A327137 (n + 1)

end A327137

/-! ## A327137.P17623218896701789615

`A281445(n+1)+A049071(A166137(n+1))`
-/

namespace A327137.P17623218896701789615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281445 (n + 1) + A049071 (A166137 (n + 1)).toNat

end

end A327137.P17623218896701789615

namespace A327137

/-- `A281445(n+1)+A049071(A166137(n+1))` -/
def P17623218896701789615.Spec : Prop :=
  ∀ n, P17623218896701789615.a n = A327137 (n + 1)

end A327137

/-! ## A327137.P5708879746427654639

`A004084(A047307(n+1)%A237951(n+1))`
-/

namespace A327137.P5708879746427654639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004084 (Int.tmod (A047307 (n + 1)) (A237951 (n + 1))).toNat

end

end A327137.P5708879746427654639

namespace A327137

/-- `A004084(A047307(n+1)%A237951(n+1))` -/
def P5708879746427654639.Spec : Prop :=
  ∀ n, P5708879746427654639.a n = A327137 (n + 1)

end A327137

/-!
# A327138: Numbers k such that cos(2k) < cos(2k+2).

The programs for A327138, the canonical program `A327138.P2994845938493488773` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A327138 has offset 1).

The definition of A327138 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A327138.P2994845938493488773

`lt[1, tan(n+6)²]`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A327138

/-- `lt[1, tan(n+6)²]` -/
def P2994845938493488773.Spec : Prop :=
  ∀ n, (P2994845938493488773.a n : ℤ) = A327138 (n + 1)

theorem P2994845938493488773.correct : P2994845938493488773.Spec := by
  intro n
  simp only [A327138, Nat.add_sub_cancel]

end A327138

/-! ## A327138.P15038567370181932197

`lt[cot(n+6)², 1]`
-/

namespace A327138.P15038567370181932197
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.cot (n + 6 : ℝ) ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℝ)) n

end

end A327138.P15038567370181932197

namespace A327138

/-- `lt[cot(n+6)², 1]` -/
def P15038567370181932197.Spec : Prop :=
  ∀ n, (P15038567370181932197.a n : ℤ) = A327138 (n + 1)

end A327138

/-! ## A327138.P11728329340005499507

`lt[sin(2*n+1), 0]`
-/

namespace A327138.P11728329340005499507
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sin (2 * n + 1 : ℝ)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℝ)) n

end

end A327138.P11728329340005499507

namespace A327138

/-- `lt[sin(2*n+1), 0]` -/
def P11728329340005499507.Spec : Prop :=
  ∀ n, (P11728329340005499507.a n : ℤ) = A327138 (n + 1)

end A327138

/-! ## A327138.P7256333281566321770

`lt[cos(2*(n+6)), 0]`
-/

namespace A327138.P7256333281566321770
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.cos (2 * (n + 6) : ℝ)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℝ)) n

end

end A327138.P7256333281566321770

namespace A327138

/-- `lt[cos(2*(n+6)), 0]` -/
def P7256333281566321770.Spec : Prop :=
  ∀ n, (P7256333281566321770.a n : ℤ) = A327138 (n + 1)

end A327138

/-! ## A327138.P7367880288547992104

`lt[0, sin(-(n+1+n))]`
-/

namespace A327138.P7367880288547992104
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sin (-(n + 1 + n : ℤ) : ℝ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℝ) < f2 j) n

end

end A327138.P7367880288547992104

namespace A327138

/-- `lt[0, sin(-(n+1+n))]` -/
def P7367880288547992104.Spec : Prop :=
  ∀ n, (P7367880288547992104.a n : ℤ) = A327138 (n + 1)

end A327138

/-! ## A327138.P6499522859375037779

`lt[cos(n)², cos(n+1)²]`
-/

namespace A327138.P6499522859375037779
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.cos (n : ℝ) ^ 2

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.cos (n + 1 : ℝ) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A327138.P6499522859375037779

namespace A327138

/-- `lt[cos(n)², cos(n+1)²]` -/
def P6499522859375037779.Spec : Prop :=
  ∀ n, (P6499522859375037779.a n : ℤ) = A327138 (n + 1)

end A327138

/-! ## A327138.P8336656130831956383

`lt[sin(n+1)², sin(n)²]`
-/

namespace A327138.P8336656130831956383
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sin (n + 1 : ℝ) ^ 2

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sin (n : ℝ) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A327138.P8336656130831956383

namespace A327138

/-- `lt[sin(n+1)², sin(n)²]` -/
def P8336656130831956383.Spec : Prop :=
  ∀ n, (P8336656130831956383.a n : ℤ) = A327138 (n + 1)

end A327138

/-! ## A327138.P2201821763563871846

`lt[cot((2*n+1)/2), 0]`
-/

namespace A327138.P2201821763563871846
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.cot ((2 * n + 1 : ℚ) / 2 : ℝ)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℝ)) n

end

end A327138.P2201821763563871846

namespace A327138

/-- `lt[cot((2*n+1)/2), 0]` -/
def P2201821763563871846.Spec : Prop :=
  ∀ n, (P2201821763563871846.a n : ℤ) = A327138 (n + 1)

end A327138

/-! ## A327138.P9225688437882179616

`lt[sin(n+1+n)+1, 1]`
-/

namespace A327138.P9225688437882179616
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sin (n + 1 + n : ℝ) + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℝ)) n

end

end A327138.P9225688437882179616

namespace A327138

/-- `lt[sin(n+1+n)+1, 1]` -/
def P9225688437882179616.Spec : Prop :=
  ∀ n, (P9225688437882179616.a n : ℤ) = A327138 (n + 1)

end A327138

/-! ## A327138.P18430656333797706898

`comp[n*ceil(sin(2*n+1))]`
-/

namespace A327138.P18430656333797706898
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * ⌈Real.sin (2 * n + 1 : ℝ)⌉

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A327138.P18430656333797706898

namespace A327138

/-- `comp[n*ceil(sin(2*n+1))]` -/
def P18430656333797706898.Spec : Prop :=
  ∀ n, (P18430656333797706898.a n : ℤ) = A327138 (n + 1)

end A327138

/-! ## A327138.P2956237293246135778

`comp[or(n, floor(sin(2*n+1)))]`
-/

namespace A327138.P2956237293246135778
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (n : ℤ) ⌊Real.sin (2 * n + 1 : ℝ)⌋

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A327138.P2956237293246135778

namespace A327138

/-- `comp[or(n, floor(sin(2*n+1)))]` -/
def P2956237293246135778.Spec : Prop :=
  ∀ n, (P2956237293246135778.a n : ℤ) = A327138 (n + 1)

end A327138

/-! ## A327138.P1576245038312508040

`comp[xor(n, floor(sin(2*n+1)))]`
-/

namespace A327138.P1576245038312508040
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) ⌊Real.sin (2 * n + 1 : ℝ)⌋

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A327138.P1576245038312508040

namespace A327138

/-- `comp[xor(n, floor(sin(2*n+1)))]` -/
def P1576245038312508040.Spec : Prop :=
  ∀ n, (P1576245038312508040.a n : ℤ) = A327138 (n + 1)

end A327138

/-! ## A327138.P4363976530924798212

`lt[ceil(tan((2*n+1)/2)), 1]`
-/

namespace A327138.P4363976530924798212
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.tan ((2 * n + 1 : ℚ) / 2 : ℝ)⌉

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A327138.P4363976530924798212

namespace A327138

/-- `lt[ceil(tan((2*n+1)/2)), 1]` -/
def P4363976530924798212.Spec : Prop :=
  ∀ n, (P4363976530924798212.a n : ℤ) = A327138 (n + 1)

end A327138

/-! ## A327138.P12024259066672373102

`comp[A026315(n+1)]`
-/

namespace A327138.P12024259066672373102
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026315 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A327138.P12024259066672373102

namespace A327138

/-- `comp[A026315(n+1)]` -/
def P12024259066672373102.Spec : Prop :=
  ∀ n, (P12024259066672373102.a n : ℤ) = A327138 (n + 1)

end A327138

/-! ## A327138.P14039077971442700168

`lt[0, Δ[abs(cos(n))]]`
-/

namespace A327138.P14039077971442700168
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  |Real.cos (n : ℝ)|

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℝ) < f2 j) n

end

end A327138.P14039077971442700168

namespace A327138

/-- `lt[0, Δ[abs(cos(n))]]` -/
def P14039077971442700168.Spec : Prop :=
  ∀ n, (P14039077971442700168.a n : ℤ) = A327138 (n + 1)

end A327138

/-! ## A327138.P8996968156981014342

`lt[Δ[abs(sin(n))], 0]`
-/

namespace A327138.P8996968156981014342
noncomputable section

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  |Real.sin (n : ℝ)|

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f3 j : ℝ)) n

end

end A327138.P8996968156981014342

namespace A327138

/-- `lt[Δ[abs(sin(n))], 0]` -/
def P8996968156981014342.Spec : Prop :=
  ∀ n, (P8996968156981014342.a n : ℤ) = A327138 (n + 1)

end A327138

/-! ## A327138.P3312479268554852164

`lt[0, Δ[cos(n)²]]`
-/

namespace A327138.P3312479268554852164
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.cos (n : ℝ) ^ 2

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℝ) < f2 j) n

end

end A327138.P3312479268554852164

namespace A327138

/-- `lt[0, Δ[cos(n)²]]` -/
def P3312479268554852164.Spec : Prop :=
  ∀ n, (P3312479268554852164.a n : ℤ) = A327138 (n + 1)

end A327138

/-! ## A327138.P3574823496857252418

`lt[Δ[abs(tan(n))], 0]`
-/

namespace A327138.P3574823496857252418
noncomputable section

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  |Real.tan (n : ℝ)|

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f3 j : ℝ)) n

end

end A327138.P3574823496857252418

namespace A327138

/-- `lt[Δ[abs(tan(n))], 0]` -/
def P3574823496857252418.Spec : Prop :=
  ∀ n, (P3574823496857252418.a n : ℤ) = A327138 (n + 1)

end A327138

/-! ## A327138.P6896811251941338506

`lt[1, ratio[abs(cos(n))]]`
-/

namespace A327138.P6896811251941338506
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  |Real.cos (n : ℝ)|

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) / f3 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℝ) < f2 j) n

end

end A327138.P6896811251941338506

namespace A327138

/-- `lt[1, ratio[abs(cos(n))]]` -/
def P6896811251941338506.Spec : Prop :=
  ∀ n, (P6896811251941338506.a n : ℤ) = A327138 (n + 1)

end A327138

/-! ## A327138.P12160884062963077236

`lt[Δ[tan(n)²], 0]`
-/

namespace A327138.P12160884062963077236
noncomputable section

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.tan (n : ℝ) ^ 2

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f3 j : ℝ)) n

end

end A327138.P12160884062963077236

namespace A327138

/-- `lt[Δ[tan(n)²], 0]` -/
def P12160884062963077236.Spec : Prop :=
  ∀ n, (P12160884062963077236.a n : ℤ) = A327138 (n + 1)

end A327138

/-!
# A327139: Numbers k such that cos(2k) > cos(2k+2) < cos(2k+4).

The programs for A327139, the canonical program `A327139.P3482459299308253757` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A327139 has offset 1).

The definition of A327139 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A327139.P1573823354532432571

`round(Δ[n²*atan(n)])`
-/

namespace A327139.P1573823354532432571
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℝ) * Real.arctan (n : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (f1 (n + 1) - f1 n)

end

end A327139.P1573823354532432571

namespace A327139

/-- `round(Δ[n²*atan(n)])` -/
def P1573823354532432571.Spec : Prop :=
  ∀ n, P1573823354532432571.a n = A327139 (n + 1)

end A327139

/-! ## A327139.P734177677236214658

`round(Δ[n*n*atan(n)])`
-/

namespace A327139.P734177677236214658
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (n : ℝ) * ((n : ℝ) * Real.arctan (n : ℝ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (f1 (n + 1) - f1 n)

end

end A327139.P734177677236214658

namespace A327139

/-- `round(Δ[n*n*atan(n)])` -/
def P734177677236214658.Spec : Prop :=
  ∀ n, P734177677236214658.a n = A327139 (n + 1)

end A327139

/-! ## A327139.P10161621231728978569

`round(Δ[π*n²/2])-1`
-/

namespace A327139.P10161621231728978569
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.pi * ((n ^ 2 : ℚ) / 2 : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (f1 (n + 1) - f1 n) - 1

end

end A327139.P10161621231728978569

namespace A327139

/-- `round(Δ[π*n²/2])-1` -/
def P10161621231728978569.Spec : Prop :=
  ∀ n, P10161621231728978569.a n = A327139 (n + 1)

end A327139

/-! ## A327139.P3482459299308253757

`A246388(n)%A257984(n+1)`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A327139

/-- `A246388(n)%A257984(n+1)` -/
def P3482459299308253757.Spec : Prop :=
  ∀ n, P3482459299308253757.a n = A327139 (n + 1)

theorem P3482459299308253757.correct : P3482459299308253757.Spec := by
  intro n
  simp only [A327139, Nat.add_sub_cancel]

end A327139

/-! ## A327139.P11197919743637177654

`∪[A246294(n+1), A246297(n+1)]`
-/

namespace A327139.P11197919743637177654
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246294 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246297 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A327139.P11197919743637177654

namespace A327139

/-- `∪[A246294(n+1), A246297(n+1)]` -/
def P11197919743637177654.Spec : Prop :=
  ∀ n, (P11197919743637177654.a n : ℤ) = A327139 (n + 1)

end A327139

/-! ## A327139.P9850780392730695697

`lt[ratio[Δ[sin(n)]], 0]`
-/

namespace A327139.P9850780392730695697
noncomputable section

def f3 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sin (n : ℝ)

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) / f2 n

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f4 j : ℝ)) n

end

end A327139.P9850780392730695697

namespace A327139

/-- `lt[ratio[Δ[sin(n)]], 0]` -/
def P9850780392730695697.Spec : Prop :=
  ∀ n, (P9850780392730695697.a n : ℤ) = A327139 (n + 1)

end A327139

/-! ## A327139.P14310801890262635283

`A004526(A246388(n)-1)`
-/

namespace A327139.P14310801890262635283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A246388 n - 1).toNat

end

end A327139.P14310801890262635283

namespace A327139

/-- `A004526(A246388(n)-1)` -/
def P14310801890262635283.Spec : Prop :=
  ∀ n, P14310801890262635283.a n = A327139 (n + 1)

end A327139

/-! ## A327139.P1842675434655469998

`A293137(A352741(n+1))`
-/

namespace A327139.P1842675434655469998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293137 (A352741 (n + 1)).toNat

end

end A327139.P1842675434655469998

namespace A327139

/-- `A293137(A352741(n+1))` -/
def P1842675434655469998.Spec : Prop :=
  ∀ n, P1842675434655469998.a n = A327139 (n + 1)

end A327139

/-! ## A327139.P17993124557745098653

`A017029(n)%A329977(n+1)`
-/

namespace A327139.P17993124557745098653
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A017029 n) (A329977 (n + 1))

end

end A327139.P17993124557745098653

namespace A327139

/-- `A017029(n)%A329977(n+1)` -/
def P17993124557745098653.Spec : Prop :=
  ∀ n, P17993124557745098653.a n = A327139 (n + 1)

end A327139

/-!
# A327140: Numbers k such that cos(2k) > cos(2k+2) > cos(2k+4) < cos(2k+6).

The programs for A327140, the canonical program `A327140.P2571828699443447835` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A327140 has offset 1).

The definition of A327140 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5663 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A327140.P2571828699443447835

`∩[A022853(n+1), A327139(n+1)-1]`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A327140

/-- `∩[A022853(n+1), A327139(n+1)-1]` -/
def P2571828699443447835.Spec : Prop :=
  ∀ n, (P2571828699443447835.a n : ℤ) = A327140 (n + 1)

theorem P2571828699443447835.correct : P2571828699443447835.Spec := by
  intro n
  simp only [A327140, Nat.add_sub_cancel]

end A327140

/-! ## A327140.P4858288690394032397

`∩[A022853(n+1), A026315(n+1)-1]`
-/

namespace A327140.P4858288690394032397
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022853 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026315 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A327140.P4858288690394032397

namespace A327140

/-- `∩[A022853(n+1), A026315(n+1)-1]` -/
def P4858288690394032397.Spec : Prop :=
  ∀ n, (P4858288690394032397.a n : ℤ) = A327140 (n + 1)

end A327140

/-! ## A327140.P6394095509952415225

`∩[A026314(n+1)+2, A026315(n+1)]`
-/

namespace A327140.P6394095509952415225
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026314 (n + 1) + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026315 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A327140.P6394095509952415225

namespace A327140

/-- `∩[A026314(n+1)+2, A026315(n+1)]` -/
def P6394095509952415225.Spec : Prop :=
  ∀ n, (P6394095509952415225.a n : ℤ) = A327140 (n + 1)

end A327140

/-! ## A327140.P5141278430532175798

`∩[A026315(n+2)-1, A026315(n+2)]`
-/

namespace A327140.P5141278430532175798
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026315 (n + 2) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026315 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A327140.P5141278430532175798

namespace A327140

/-- `∩[A026315(n+2)-1, A026315(n+2)]` -/
def P5141278430532175798.Spec : Prop :=
  ∀ n, (P5141278430532175798.a n : ℤ) = A327140 (n + 1)

end A327140

/-! ## A327140.P13489950394699338309

`lt[sin(1), sin(A103517(n))]`
-/

namespace A327140.P13489950394699338309
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sin (1 : ℝ)

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sin (A103517 n : ℝ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A327140.P13489950394699338309

namespace A327140

/-- `lt[sin(1), sin(A103517(n))]` -/
def P13489950394699338309.Spec : Prop :=
  ∀ n, (P13489950394699338309.a n : ℤ) = A327140 (n + 1)

end A327140

/-! ## A327140.P2635430096868503381

`record[A057979(A277093(n+2))]`
-/

namespace A327140.P2635430096868503381
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057979 (A277093 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A327140.P2635430096868503381

namespace A327140

/-- `record[A057979(A277093(n+2))]` -/
def P2635430096868503381.Spec : Prop :=
  ∀ n, P2635430096868503381.a n = A327140 (n + 1)

end A327140

/-!
# A327141: a(n) is the number of different sizes of integer-sided rectangles which can be placed inside an n X n square.

The programs for A327141, the canonical program `A327141.P2501216070839656359` is in `Seq.B003.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A327141 has offset 1).

The definition of A327141 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A327141.P8042737881948474741

`A000217(n+1)+A327142(n+1)`
-/

namespace A327141.P8042737881948474741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (n + 1) + A327142 (n + 1)

end

end A327141.P8042737881948474741

namespace A327141

/-- `A000217(n+1)+A327142(n+1)` -/
def P8042737881948474741.Spec : Prop :=
  ∀ n, P8042737881948474741.a n = A327141 (n + 1)

end A327141

/-! ## A327141.P2472661437893680111

`∑[n+1]+C(floor((n+1)/(sqrt(2)+1)), 2)`
-/

namespace A327141.P2472661437893680111
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + Nat.choose ⌊(n + 1 : ℝ) / (Real.sqrt (2 : ℝ) + 1)⌋.toNat 2

end

end A327141.P2472661437893680111

namespace A327141

/-- `∑[n+1]+C(floor((n+1)/(sqrt(2)+1)), 2)` -/
def P2472661437893680111.Spec : Prop :=
  ∀ n, (P2472661437893680111.a n : ℤ) = A327141 (n + 1)

end A327141

/-! ## A327141.P1496681923436269433

`A327142(n+1)+A000096(n)+1`
-/

namespace A327141.P1496681923436269433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327142 (n + 1) + A000096 n + 1

end

end A327141.P1496681923436269433

namespace A327141

/-- `A327142(n+1)+A000096(n)+1` -/
def P1496681923436269433.Spec : Prop :=
  ∀ n, P1496681923436269433.a n = A327141 (n + 1)

end A327141

/-! ## A327141.P13899064742374755919

`A327142(n+1)+A000124(n)+n`
-/

namespace A327141.P13899064742374755919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327142 (n + 1) + A000124 n + (n : ℤ)

end

end A327141.P13899064742374755919

namespace A327141

/-- `A327142(n+1)+A000124(n)+n` -/
def P13899064742374755919.Spec : Prop :=
  ∀ n, P13899064742374755919.a n = A327141 (n + 1)

end A327141

/-! ## A327141.P2501216070839656359

`∑[A097508(n)*A188037(n+1)+n+1]`

The canonical program, it is in `Seq.B003.C004`.
-/

namespace A327141

/-- `∑[A097508(n)*A188037(n+1)+n+1]` -/
def P2501216070839656359.Spec : Prop :=
  ∀ n, P2501216070839656359.a n = A327141 (n + 1)

theorem P2501216070839656359.correct : P2501216070839656359.Spec := by
  intro n
  simp only [A327141, Nat.add_sub_cancel]

end A327141

/-! ## A327141.P1884378000045470536

`A000292(n+1)+A327142(n+1)-A000292(n)`
-/

namespace A327141.P1884378000045470536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000292 (n + 1) + (A327142 (n + 1) - A000292 n)

end

end A327141.P1884378000045470536

namespace A327141

/-- `A000292(n+1)+A327142(n+1)-A000292(n)` -/
def P1884378000045470536.Spec : Prop :=
  ∀ n, P1884378000045470536.a n = A327141 (n + 1)

end A327141

/-! ## A327141.P7344979663458315809

`A161680(A097508(n+1))+∑[n+1]`
-/

namespace A327141.P7344979663458315809
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161680 (A097508 (n + 1)).toNat + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A327141.P7344979663458315809

namespace A327141

/-- `A161680(A097508(n+1))+∑[n+1]` -/
def P7344979663458315809.Spec : Prop :=
  ∀ n, P7344979663458315809.a n = A327141 (n + 1)

end A327141

/-! ## A327141.P10204753530413418132

`∑[A004526(Δ[A097508(n)²])+n+1]`
-/

namespace A327141.P10204753530413418132
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097508 n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (f2 (n + 1) - f2 n).toNat + (n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A327141.P10204753530413418132

namespace A327141

/-- `∑[A004526(Δ[A097508(n)²])+n+1]` -/
def P10204753530413418132.Spec : Prop :=
  ∀ n, P10204753530413418132.a n = A327141 (n + 1)

end A327141

/-! ## A327141.P14700194637513317123

`∑[A060755(Δ[A097508(n)²])+n+1]`
-/

namespace A327141.P14700194637513317123
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097508 n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060755 (f2 (n + 1) - f2 n).toNat + (n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A327141.P14700194637513317123

namespace A327141

/-- `∑[A060755(Δ[A097508(n)²])+n+1]` -/
def P14700194637513317123.Spec : Prop :=
  ∀ n, P14700194637513317123.a n = A327141 (n + 1)

end A327141

/-!
# A327142: a(n) is the number of different sizes of integer-sided rectangles which can be placed inside an n X n square and with length greater than n.

The programs for A327142, the canonical program `A327142.P4142766222678673659` is in `Seq.B004.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A327142 has offset 1).

The definition of A327142 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A327141, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A327142.P4142766222678673659

`A327141(n+1)-A000217(n+1)`

The canonical program, it is in `Seq.B004.C003`.
-/

namespace A327142

/-- `A327141(n+1)-A000217(n+1)` -/
def P4142766222678673659.Spec : Prop :=
  ∀ n, P4142766222678673659.a n = A327142 (n + 1)

theorem P4142766222678673659.correct : P4142766222678673659.Spec := by
  intro n
  simp only [A327142, Nat.add_sub_cancel]

end A327142

/-! ## A327142.P14170005888827718647

`C(floor((n+1)/(sqrt(2)+1)), 2)`
-/

namespace A327142.P14170005888827718647
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose ⌊(n + 1 : ℝ) / (Real.sqrt (2 : ℝ) + 1)⌋.toNat 2

end

end A327142.P14170005888827718647

namespace A327142

/-- `C(floor((n+1)/(sqrt(2)+1)), 2)` -/
def P14170005888827718647.Spec : Prop :=
  ∀ n, (P14170005888827718647.a n : ℤ) = A327142 (n + 1)

end A327142

/-! ## A327142.P7411364604165141386

`A161680(comp[floor(n*sqrt(2))]%(n+1))`
-/

namespace A327142.P7411364604165141386
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℝ) * Real.sqrt (2 : ℝ)⌋

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161680 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n % (n + 1))

end

end A327142.P7411364604165141386

namespace A327142

/-- `A161680(comp[floor(n*sqrt(2))]%(n+1))` -/
def P7411364604165141386.Spec : Prop :=
  ∀ n, P7411364604165141386.a n = A327142 (n + 1)

end A327142

/-! ## A327142.P4363026050611791770

`A152947(ceil((n+1)/(sqrt(2)+1)))-1`
-/

namespace A327142.P4363026050611791770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152947 ⌈(n + 1 : ℝ) / (Real.sqrt (2 : ℝ) + 1)⌉.toNat - 1

end

end A327142.P4363026050611791770

namespace A327142

/-- `A152947(ceil((n+1)/(sqrt(2)+1)))-1` -/
def P4363026050611791770.Spec : Prop :=
  ∀ n, P4363026050611791770.a n = A327142 (n + 1)

end A327142

/-! ## A327142.P295593386787694274

`A161680(ceil((n+1)/(sqrt(2)+1))-1)`
-/

namespace A327142.P295593386787694274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161680 (⌈(n + 1 : ℝ) / (Real.sqrt (2 : ℝ) + 1)⌉ - 1).toNat

end

end A327142.P295593386787694274

namespace A327142

/-- `A161680(ceil((n+1)/(sqrt(2)+1))-1)` -/
def P295593386787694274.Spec : Prop :=
  ∀ n, P295593386787694274.a n = A327142 (n + 1)

end A327142

/-! ## A327142.P11668961616929485093

`A327141(n+1)%A234041(n)`
-/

namespace A327142.P11668961616929485093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A327141 (n + 1)) (A234041 n)

end

end A327142.P11668961616929485093

namespace A327142

/-- `A327141(n+1)%A234041(n)` -/
def P11668961616929485093.Spec : Prop :=
  ∀ n, P11668961616929485093.a n = A327142 (n + 1)

end A327142

/-! ## A327142.P4921738158057364951

`A000217(∑[char[A003151(n+2)]])`
-/

namespace A327142.P4921738158057364951
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003151 (n + 2)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A327142.P4921738158057364951

namespace A327142

/-- `A000217(∑[char[A003151(n+2)]])` -/
def P4921738158057364951.Spec : Prop :=
  ∀ n, P4921738158057364951.a n = A327142 (n + 1)

end A327142

/-! ## A327142.P3643067538095020298

`∑[A097508(n*A188037(n+1))]`
-/

namespace A327142.P3643067538095020298
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097508 ((n : ℤ) * A188037 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A327142.P3643067538095020298

namespace A327142

/-- `∑[A097508(n*A188037(n+1))]` -/
def P3643067538095020298.Spec : Prop :=
  ∀ n, P3643067538095020298.a n = A327142 (n + 1)

end A327142

/-! ## A327142.P16090071750874833719

`∑[A004526(Δ[A097508(n)²])]`
-/

namespace A327142.P16090071750874833719
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097508 n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A327142.P16090071750874833719

namespace A327142

/-- `∑[A004526(Δ[A097508(n)²])]` -/
def P16090071750874833719.Spec : Prop :=
  ∀ n, P16090071750874833719.a n = A327142 (n + 1)

end A327142

/-! ## A327142.P10103836779859770080

`∑[A060755(Δ[A097508(n)²])]`
-/

namespace A327142.P10103836779859770080
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097508 n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060755 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A327142.P10103836779859770080

namespace A327142

/-- `∑[A060755(Δ[A097508(n)²])]` -/
def P10103836779859770080.Spec : Prop :=
  ∀ n, P10103836779859770080.a n = A327142 (n + 1)

end A327142

/-! ## A327142.P8672466376921904640

`∑[A097508(n*Δ[A097508(n)])]`
-/

namespace A327142.P8672466376921904640
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097508 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097508 ((n : ℤ) * (f2 (n + 1) - f2 n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A327142.P8672466376921904640

namespace A327142

/-- `∑[A097508(n*Δ[A097508(n)])]` -/
def P8672466376921904640.Spec : Prop :=
  ∀ n, P8672466376921904640.a n = A327142 (n + 1)

end A327142

/-! ## A327142.P10658634550287804840

`A056943(C(ceil((n+1)/(sqrt(2)+1)), 2))`
-/

namespace A327142.P10658634550287804840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056943 (Nat.choose ⌈(n + 1 : ℝ) / (Real.sqrt (2 : ℝ) + 1)⌉.toNat 2)

end

end A327142.P10658634550287804840

namespace A327142

/-- `A056943(C(ceil((n+1)/(sqrt(2)+1)), 2))` -/
def P10658634550287804840.Spec : Prop :=
  ∀ n, P10658634550287804840.a n = A327142 (n + 1)

end A327142

/-!
# A327144: Spanning edge-connectivity of the set-system with BII-number n.

The programs for A327144, there is no canonical definition to state claims against.
-/

/-! ## A327144.P1665911180311908953

`floor(sqrt(A326787(n)*A327103(n)))`
-/

namespace A327144.P1665911180311908953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A326787 n * A327103 n)

end

end A327144.P1665911180311908953

/-! ## A327144.P8960722836035878486

`A326753((A069935(n)*A326786(n))²)`
-/

namespace A327144.P8960722836035878486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326753 ((A069935 n * A326786 n) ^ 2).toNat

end

end A327144.P8960722836035878486

/-! ## A327144.P16775640994601972510

`A326753(lcm(A069935(n), A326786(n))²)`
-/

namespace A327144.P16775640994601972510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326753 (Int.lcm (A069935 n) (A326786 n) ^ 2)

end

end A327144.P16775640994601972510

/-! ## A327144.P12141353758743213457

`A000120(A177241(n)*A326786(n))`
-/

namespace A327144.P12141353758743213457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A177241 n * A326786 n).toNat

end

end A327144.P12141353758743213457

/-! ## A327144.P7063725201913259309

`A000120(A326786(n)^A057550(n))`
-/

namespace A327144.P7063725201913259309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (SequenceMachineLib.roundAway ((A326786 n : ℚ) ^ (A057550 n : ℤ))).toNat

end

end A327144.P7063725201913259309

/-! ## A327144.P509368239386062123

`A124768(A326786(n)^A253641(n))`
-/

namespace A327144.P509368239386062123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124768 (SequenceMachineLib.roundAway ((A326786 n : ℚ) ^ (A253641 n : ℤ))).toNat

end

end A327144.P509368239386062123

/-! ## A327144.P12111643487525203826

`A335474(A326786(n)^A253641(n))`
-/

namespace A327144.P12111643487525203826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335474 (SequenceMachineLib.roundAway ((A326786 n : ℚ) ^ (A253641 n : ℤ))).toNat

end

end A327144.P12111643487525203826

/-! ## A327144.P9653353115354410540

`A001222(A326786(n)^A057550(n)+1)`
-/

namespace A327144.P9653353115354410540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (SequenceMachineLib.roundAway ((A326786 n : ℚ) ^ (A057550 n : ℤ) + 1)).toNat

end

end A327144.P9653353115354410540

/-! ## A327144.P11856221821044564476

`ceil(A326786(n)/A326810(A326782(n+1)))`
-/

namespace A327144.P11856221821044564476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A326786 n : ℚ) / (A326810 (A326782 (n + 1)).toNat : ℚ)⌉

end

end A327144.P11856221821044564476

/-!
# A327145: Number of connected set-systems with n vertices and at least one bridge (spanning edge-connectivity 1).

The programs for A327145, there is no canonical definition to state claims against.
-/

/-! ## A327145.P13935906840358302711

`and(comp[2*(n+1)]!, A350868(n))`
-/

namespace A327145.P13935906840358302711
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (Nat.factorial (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n) : ℤ) (A350868 n)

end

end A327145.P13935906840358302711

/-!
# A327146: Number of labeled simple graphs with n vertices and spanning edge-connectivity 2.

The programs for A327146, there is no canonical definition to state claims against.
-/

/-! ## A327146.P15511358975785426205

`round((cosh(n-2)+5)^(n-3))`
-/

namespace A327146.P15511358975785426205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((Real.cosh ((n : ℤ) - 2 : ℝ) + 5) ^ ((n : ℤ) - 3 : ℤ))

end

end A327146.P15511358975785426205

/-!
# A327150: Number of orbits of the direct square of the alternating group A_n^2 where A_n acts by conjugation.

The programs for A327150, there is no canonical definition to state claims against.
-/

/-! ## A327150.P268533306863643047

`A337511(16*A303032(n))`
-/

namespace A327150.P268533306863643047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337511 (16 * A303032 n).toNat

end

end A327150.P268533306863643047

/-!
# A327153: Number of divisors d of n such that sigma(d)*d is equal to n.

The programs for A327153, there is no canonical definition to state claims against.
-/

/-! ## A327153.P11951566224813778210

`and(A114000(n), A231351(n+1))`
-/

namespace A327153.P11951566224813778210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A114000 n) (A231351 (n + 1))

end

end A327153.P11951566224813778210

/-! ## A327153.P16329784179524071444

`A215075(A007318(n))*A348033(n+1)`
-/

namespace A327153.P16329784179524071444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215075 (A007318 n).toNat * A348033 (n + 1)

end

end A327153.P16329784179524071444

/-! ## A327153.P5994083488531441278

`A219659(A266012(n+1))*A348033(n+1)`
-/

namespace A327153.P5994083488531441278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219659 (A266012 (n + 1)).toNat * A348033 (n + 1)

end

end A327153.P5994083488531441278

/-! ## A327153.P3662103506309279206

`A348033(n+1)+A348033(A179032(n+4))`
-/

namespace A327153.P3662103506309279206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348033 (n + 1) + A348033 (A179032 (n + 4)).toNat

end

end A327153.P3662103506309279206

/-! ## A327153.P2497821307462320152

`A348033(n+1)*A366571(n)`
-/

namespace A327153.P2497821307462320152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348033 (n + 1) * A366571 n

end

end A327153.P2497821307462320152

/-! ## A327153.P15879706479784057640

`A348033(n+1)+A297155(A005385(2*n+5))`
-/

namespace A327153.P15879706479784057640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348033 (n + 1) + A297155 (A005385 (2 * n + 5)).toNat

end

end A327153.P15879706479784057640

/-! ## A327153.P10037354609660103793

`A187595(n+1)*A348033(n+1)`
-/

namespace A327153.P10037354609660103793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187595 (n + 1) * A348033 (n + 1)

end

end A327153.P10037354609660103793

/-! ## A327153.P11698800786030423380

`A229557(n+1)*A348033(n+1)`
-/

namespace A327153.P11698800786030423380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229557 (n + 1) * A348033 (n + 1)

end

end A327153.P11698800786030423380

/-! ## A327153.P16979406367200156158

`A353559(A108747(n+2))`
-/

namespace A327153.P16979406367200156158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353559 (A108747 (n + 2)).toNat

end

end A327153.P16979406367200156158

/-! ## A327153.P2763827206025939268

`A347615(n)*A348033(n+1)`
-/

namespace A327153.P2763827206025939268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347615 n * A348033 (n + 1)

end

end A327153.P2763827206025939268

/-!
# A327155: a(n) = Product_{d|sigma(n), d>1} A008578(1+A286561(n,d)), where A286561(n,d) gives the highest exponent of d dividing n.

The programs for A327155, there is no canonical definition to state claims against.
-/

/-! ## A327155.P6782835807476422757

`A343652(A009194(n+1)^A001222(n+1))`
-/

namespace A327155.P6782835807476422757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343652 (SequenceMachineLib.roundAway ((A009194 (n + 1) : ℚ) ^ (A001222 (n + 1) : ℤ))).toNat

end

end A327155.P6782835807476422757

/-! ## A327155.P10588521536165759282

`A008480(n+1)*A212171(A000045(n+3))`
-/

namespace A327155.P10588521536165759282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008480 (n + 1) * A212171 (A000045 (n + 3)).toNat

end

end A327155.P10588521536165759282

/-! ## A327155.P16448965896673260669

`gcd(A147912(A071416(n+1)), A218773(n+1))`
-/

namespace A327155.P16448965896673260669
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A147912 (A071416 (n + 1)).toNat) (A218773 (n + 1))

end

end A327155.P16448965896673260669

/-!
# A327156: a(n) = Product_{d|n, d>1} A008578(1+A286561(n,sigma(d))), where A286561(n,x) gives the highest exponent of x dividing n.

The programs for A327156, there is no canonical definition to state claims against.
-/

/-! ## A327156.P14213151530578389364

`A288636(A060546(n))^A177064(A173441(n+1))`
-/

namespace A327156.P14213151530578389364
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A288636 (A060546 n).toNat : ℚ) ^ (A177064 (A173441 (n + 1)).toNat : ℤ)

end

end A327156.P14213151530578389364

/-!
# A327157: Numbers that are members of unitary sigma aliquot cycles (union of unitary perfect, unitary amicable and unitary sociable numbers).

The programs for A327157, there is no canonical definition to state claims against.
-/

/-! ## A327157.P13656856374746482534

`lt[A097033(n+1), 1]+1`
-/

namespace A327157.P13656856374746482534
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097033 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A327157.P13656856374746482534

/-! ## A327157.P1804449283980046860

`lt[0, A327159(n+2)]+2`
-/

namespace A327157.P1804449283980046860
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327159 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 2

end

end A327157.P1804449283980046860

/-! ## A327157.P2443833218030801595

`eq[A097032(n+1), A327159(n+1)]+1`
-/

namespace A327157.P2443833218030801595
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097032 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327159 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A327157.P2443833218030801595

/-! ## A327157.P3568384642945366054

`A336216(A077342(n+1))`
-/

namespace A327157.P3568384642945366054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336216 (A077342 (n + 1)).toNat

end

end A327157.P3568384642945366054

/-!
# A327158: Unitary multiply-perfect numbers: n divides usigma(n), where usigma is the sum of unitary divisors of n (A034448).

The programs for A327158, there is no canonical definition to state claims against.
-/

/-! ## A327158.P11717483890273112758

`A035206(A288785(n+3))`
-/

namespace A327158.P11717483890273112758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035206 (A288785 (n + 3)).toNat

end

end A327158.P11717483890273112758

/-!
# A327159: Size of the cycle containing n in the map x -> usigma(x)-x or 0 if n is not a member of any finite cycle. Here usigma is the sum of unitary divisors of n (A034448).

The programs for A327159, there is no canonical definition to state claims against.
-/

/-! ## A327159.P11477620136428760343

`A000007(A097033(n+1))*A097031(n+1)`
-/

namespace A327159.P11477620136428760343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (A097033 (n + 1)).toNat * A097031 (n + 1)

end

end A327159.P11477620136428760343

/-! ## A327159.P7307985776702520261

`A000007(A097033(n+1))*A318882(n+1)`
-/

namespace A327159.P7307985776702520261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (A097033 (n + 1)).toNat * A318882 (n + 1)

end

end A327159.P7307985776702520261

/-! ## A327159.P4991618720829230360

`C(A069292(n+3), A143094(A097033(n+1)))`
-/

namespace A327159.P4991618720829230360
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A069292 (n + 3)).toNat (A143094 (A097033 (n + 1)).toNat).toNat

end

end A327159.P4991618720829230360

/-! ## A327159.P18441654425538727971

`A082062(n+1)%A356233(A179930(2*(n+1)))`
-/

namespace A327159.P18441654425538727971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A082062 (n + 1)) (A356233 (A179930 (2 * (n + 1))).toNat)

end

end A327159.P18441654425538727971

/-! ## A327159.P12008481535199485676

`A097032(A284289(n)²+n)*A318880(n+1)`
-/

namespace A327159.P12008481535199485676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097032 (A284289 n ^ 2 + (n : ℤ)).toNat * A318880 (n + 1)

end

end A327159.P12008481535199485676

/-! ## A327159.P18190493973592507850

`A327104(A003601(n+1)*A318880(n+1))`
-/

namespace A327159.P18190493973592507850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327104 (A003601 (n + 1) * A318880 (n + 1)).toNat

end

end A327159.P18190493973592507850

/-! ## A327159.P16187591316441363760

`A296709(3*n+5)%A219924(A196441(n+1))`
-/

namespace A327159.P16187591316441363760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A296709 (3 * n + 5)) (A219924 (A196441 (n + 1)).toNat)

end

end A327159.P16187591316441363760

/-! ## A327159.P4243026530617745546

`A032741(A003453(n+5)+n)*A318880(n+1)`
-/

namespace A327159.P4243026530617745546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 (A003453 (n + 5) + (n : ℤ)).toNat * A318880 (n + 1)

end

end A327159.P4243026530617745546

/-! ## A327159.P4063992438858555497

`A043537(A329395(n+1))*A318880(n+1)`
-/

namespace A327159.P4063992438858555497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043537 (A329395 (n + 1)).toNat * A318880 (n + 1)

end

end A327159.P4063992438858555497

/-! ## A327159.P17685436101868301376

`A049711(A134755(n+1))*A318880(n+1)`
-/

namespace A327159.P17685436101868301376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049711 (A134755 (n + 1)).toNat * A318880 (n + 1)

end

end A327159.P17685436101868301376

/-!
# A327160: Number of positive integers that are reachable from n with some combination of transitions x -> usigma(x)-x and x -> gcd(x,usigma(x)), where usigma is the sum of unitary divisors of n (A034448).

The programs for A327160, there is no canonical definition to state claims against.
-/

/-! ## A327160.P4460071537044347301

`A318882(A243057(n+1)^A318883(n+1))`
-/

namespace A327160.P4460071537044347301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318882 (SequenceMachineLib.roundAway ((A243057 (n + 1) : ℚ) ^ (A318883 (n + 1) : ℤ))).toNat

end

end A327160.P4460071537044347301

/-! ## A327160.P14432032298239630543

`A318882((n+1)^A060384(n))`
-/

namespace A327160.P14432032298239630543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318882 (SequenceMachineLib.roundAway ((n + 1 : ℚ) ^ (A060384 n : ℤ))).toNat

end

end A327160.P14432032298239630543

/-! ## A327160.P12761224656676050543

`A255054(A034460(n+1)^A058716(n))`
-/

namespace A327160.P12761224656676050543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255054 (SequenceMachineLib.roundAway ((A034460 (n + 1) : ℚ) ^ (A058716 n : ℤ))).toNat

end

end A327160.P12761224656676050543

/-! ## A327160.P9691695024007990396

`A056440(A097032(n+1)%A034317(n))`
-/

namespace A327160.P9691695024007990396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056440 (Int.tmod (A097032 (n + 1)) (A034317 n)).toNat

end

end A327160.P9691695024007990396

/-! ## A327160.P7795890661296855990

`A083875(A318882(n+1)%A215821(n+1))`
-/

namespace A327160.P7795890661296855990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083875 (Int.tmod (A318882 (n + 1)) (A215821 (n + 1))).toNat

end

end A327160.P7795890661296855990

/-!
# A327161: Number of positive integers that are reachable from n with some combination of transitions x -> usigma(x)-x and x -> gcd(x,phi(x)), where usigma is the sum of unitary divisors of n (A034448), and phi is Euler totient function (A000010).

The programs for A327161, there is no canonical definition to state claims against.
-/

/-! ## A327161.P9008697361528429863

`A341737(A058352(n))`
-/

namespace A327161.P9008697361528429863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341737 (A058352 n).toNat

end

end A327161.P9008697361528429863

/-! ## A327161.P6293148829847049097

`A069897(n+1)+A001221(A282124(n))`
-/

namespace A327161.P6293148829847049097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069897 (n + 1) + A001221 (A282124 n).toNat

end

end A327161.P6293148829847049097

/-! ## A327161.P6262808553243672185

`A323902(n+1)+A008966(A287188(n))`
-/

namespace A327161.P6262808553243672185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323902 (n + 1) + A008966 (A287188 n).toNat

end

end A327161.P6262808553243672185

/-! ## A327161.P11956886055877858182

`A352895(A348717(n+1))+A334440(A067558(n+1)²)`
-/

namespace A327161.P11956886055877858182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352895 (A348717 (n + 1)).toNat + A334440 (A067558 (n + 1) ^ 2).toNat

end

end A327161.P11956886055877858182

/-! ## A327161.P7973547683074284611

`A352895(A348717(n+1))+A334440(A067558(n+1)^2)`
-/

namespace A327161.P7973547683074284611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352895 (A348717 (n + 1)).toNat + A334440 (A067558 (n + 1) ^ 2).toNat

end

end A327161.P7973547683074284611

/-!
# A327162: Lexicographically earliest sequence such that for all i, j, a(i) = a(j) => f(i) = f(j), where f(n) = A034460(n) * (-1)^[A327159(n)>0], and A034460(n) = usigma(n)-n, with usigma the sum of unitary divisors of n (A034448).

The programs for A327162, there is no canonical definition to state claims against.
-/

/-! ## A327162.P5596121472697927101

`A110591(3^A305976(n+1))`
-/

namespace A327162.P5596121472697927101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110591 (SequenceMachineLib.roundAway ((3 : ℚ) ^ (A305976 (n + 1) : ℤ))).toNat

end

end A327162.P5596121472697927101

/-! ## A327162.P17795749050827284625

`A110591(A094398(A305976(n+1))²)`
-/

namespace A327162.P17795749050827284625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110591 (A094398 (A305976 (n + 1)).toNat ^ 2).toNat

end

end A327162.P17795749050827284625

/-! ## A327162.P15528130638852243678

`A014709(A280058(n))*A272206(A326202(n+1))`
-/

namespace A327162.P15528130638852243678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014709 (A280058 n).toNat * A272206 (A326202 (n + 1)).toNat

end

end A327162.P15528130638852243678

/-! ## A327162.P16692514790567558503

`∏{e}[A004990(A324389(n+1)), #]`
-/

namespace A327162.P16692514790567558503
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004990 (A324389 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A327162.P16692514790567558503

/-! ## A327162.P8027354787288200132

`A368916(A000129(n))+A153452(n+1)`
-/

namespace A327162.P8027354787288200132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368916 (A000129 n).toNat + A153452 (n + 1)

end

end A327162.P8027354787288200132

/-!
# A327163: Lexicographically earliest sequence such that for all i, j, a(i) = a(j) => f(i) = f(j), where f(n) = gcd(n,usigma(n)) * (-1)^[gcd(n,usigma(n))==n], and usigma is the sum of unitary divisors of n (A034448).

The programs for A327163, there is no canonical definition to state claims against.
-/

/-! ## A327163.P5669808645718626431

`A137912(A305976(n+1)%A131863(3*n+1))`
-/

namespace A327163.P5669808645718626431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137912 (Int.tmod (A305976 (n + 1)) (A131863 (3 * n + 1))).toNat

end

end A327163.P5669808645718626431

/-!
# A327164: Number of iterations of x -> gcd(usigma(x),x) needed to reach a fixed point, where usigma is the sum of unitary divisors of n (A034448).

The programs for A327164, there is no canonical definition to state claims against.
-/

/-! ## A327164.P6521185890604058473

`A244580(A334491(n+1))%A006530(n+1)`
-/

namespace A327164.P6521185890604058473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A244580 (A334491 (n + 1)).toNat) (A006530 (n + 1))

end

end A327164.P6521185890604058473

/-! ## A327164.P9804298956107254844

`A024199(A327155(n+1))%A244580(n+1)`
-/

namespace A327164.P9804298956107254844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A024199 (A327155 (n + 1)).toNat) (A244580 (n + 1))

end

end A327164.P9804298956107254844

/-! ## A327164.P8501699765685867903

`A244580(A334491(n+1))%A020639(A016813(n))`
-/

namespace A327164.P8501699765685867903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A244580 (A334491 (n + 1)).toNat) (A020639 (A016813 n).toNat)

end

end A327164.P8501699765685867903

/-! ## A327164.P8924953830625300744

`A327155(n+1)%A051700(A158537(n))`
-/

namespace A327164.P8924953830625300744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A327155 (n + 1)) (A051700 (A158537 n).toNat)

end

end A327164.P8924953830625300744

/-! ## A327164.P15393502695058513783

`A006530(A332337(n))%A087133(n+1)`
-/

namespace A327164.P15393502695058513783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A006530 (A332337 n).toNat) (A087133 (n + 1))

end

end A327164.P15393502695058513783

/-!
# A327165: Numbers n that have a divisor d such that sigma(d)*d is equal to n.

The programs for A327165, there is no canonical definition to state claims against.
-/

/-! ## A327165.P966399062371539939

`∪[A337873(n+1), A338520(n+1)]`
-/

namespace A327165.P966399062371539939
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337873 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338520 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A327165.P966399062371539939

/-! ## A327165.P5709438061976172432

`record[lcm(n+1, A327153(n+1))]`
-/

namespace A327165.P5709438061976172432
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (n + 1 : ℤ) (A327153 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A327165.P5709438061976172432

/-! ## A327165.P2291576757149084369

`record[and(-A327153(n+1), A000027(n+1))]`
-/

namespace A327165.P2291576757149084369
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-A327153 (n + 1)) (A000027 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A327165.P2291576757149084369

/-! ## A327165.P14346638256350545077

`lt[A327153(n+1), A327153(A327153(n+1)+n)]`
-/

namespace A327165.P14346638256350545077
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327153 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327153 (A327153 (n + 1) + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A327165.P14346638256350545077

/-! ## A327165.P11365736386862639935

`∩[A130446(n+1), A338520(n+1)]`
-/

namespace A327165.P11365736386862639935
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130446 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338520 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A327165.P11365736386862639935

/-!
# A327166: Number of divisors d of n for which A000005(d)*d is equal to n, where A000005(x) gives the number of divisors of x.

The programs for A327166, there is no canonical definition to state claims against.
-/

/-! ## A327166.P236035974596514351

`A000038(A124794(3*n+1))^A073068(n+1)`
-/

namespace A327166.P236035974596514351
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000038 (A124794 (3 * n + 1)).toNat : ℚ) ^ (A073068 (n + 1) : ℤ)

end

end A327166.P236035974596514351

/-! ## A327166.P13531302532297489265

`C(A000038(A030432(3*n+5)), A073068(n+1))`
-/

namespace A327166.P13531302532297489265
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A000038 (A030432 (3 * n + 5)).toNat).toNat (A073068 (n + 1)).toNat

end

end A327166.P13531302532297489265

/-! ## A327166.P8037427028416373758

`C(A000038(n²), A073068(n+1))`
-/

namespace A327166.P8037427028416373758
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A000038 (n ^ 2)).toNat (A073068 (n + 1)).toNat

end

end A327166.P8037427028416373758

/-! ## A327166.P8623215374631531232

`A000038(A000290(n))^A073068(n+1)`
-/

namespace A327166.P8623215374631531232
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000038 (A000290 n).toNat : ℚ) ^ (A073068 (n + 1) : ℤ)

end

end A327166.P8623215374631531232

/-! ## A327166.P5885935528728699173

`A000038(n^A055642(n))^A073068(n+1)`
-/

namespace A327166.P5885935528728699173
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000038 (SequenceMachineLib.roundAway ((n : ℚ) ^ (A055642 n : ℤ))).toNat : ℚ) ^ (A073068 (n + 1) : ℤ)

end

end A327166.P5885935528728699173

/-! ## A327166.P885240814895778698

`A000038(A003415(n)+n²)^A073068(n+1)`
-/

namespace A327166.P885240814895778698
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000038 (A003415 n + (n ^ 2 : ℤ)).toNat : ℚ) ^ (A073068 (n + 1) : ℤ)

end

end A327166.P885240814895778698

/-! ## A327166.P5868873878760187483

`A000038(A057501(n)+n²)^A073068(n+1)`
-/

namespace A327166.P5868873878760187483
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000038 (A057501 n + (n ^ 2 : ℤ)).toNat : ℚ) ^ (A073068 (n + 1) : ℤ)

end

end A327166.P5868873878760187483

/-! ## A327166.P14459329076912927030

`A000038(A154439(n)+n²)^A073068(n+1)`
-/

namespace A327166.P14459329076912927030
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000038 (A154439 n + (n ^ 2 : ℤ)).toNat : ℚ) ^ (A073068 (n + 1) : ℤ)

end

end A327166.P14459329076912927030

/-! ## A327166.P8507303728528997840

`A000038(A268834(n)+n²)^A073068(n+1)`
-/

namespace A327166.P8507303728528997840
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000038 (A268834 n + (n ^ 2 : ℤ)).toNat : ℚ) ^ (A073068 (n + 1) : ℤ)

end

end A327166.P8507303728528997840

/-! ## A327166.P11883760107189039941

`A000038(A061775(n+1)+n²)^A073068(n+1)`
-/

namespace A327166.P11883760107189039941
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000038 (A061775 (n + 1) + (n ^ 2 : ℤ)).toNat : ℚ) ^ (A073068 (n + 1) : ℤ)

end

end A327166.P11883760107189039941

/-! ## A327166.P10485738815177634472

`A000038(A113655(n+1)+n²)^A073068(n+1)`
-/

namespace A327166.P10485738815177634472
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000038 (A113655 (n + 1) + (n ^ 2 : ℤ)).toNat : ℚ) ^ (A073068 (n + 1) : ℤ)

end

end A327166.P10485738815177634472

/-!
# A327168: Number of common divisors of n and A276086(n), with a(0) = 1.

The programs for A327168, there is no canonical definition to state claims against.
-/

/-! ## A327168.P18277824418573039865

`A000005(A324198(n))`
-/

namespace A327168.P18277824418573039865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A324198 n).toNat

end

end A327168.P18277824418573039865

/-! ## A327168.P15419364674683948234

`∏{e}[gcd(n, A351225(n)), #+1]`
-/

namespace A327168.P15419364674683948234
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n : ℤ) (A351225 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p + 1)

end

end A327168.P15419364674683948234

/-! ## A327168.P4009890890102517319

`A324655(A351254(n))`
-/

namespace A327168.P4009890890102517319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324655 (A351254 n).toNat

end

end A327168.P4009890890102517319

/-! ## A327168.P17727102083321456962

`A000005(gcd(n, A276086(n)))`
-/

namespace A327168.P17727102083321456962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (Int.gcd (n : ℤ) (A276086 n))

end

end A327168.P17727102083321456962

/-! ## A327168.P13655819891839526581

`∑{d}[A324198(n), A010169(#)]`
-/

namespace A327168.P13655819891839526581
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324198 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A010169 d

end

end A327168.P13655819891839526581

/-! ## A327168.P14258250823919178386

`∑{d}[A324198(n), A324198(A014963(#+1))]`
-/

namespace A327168.P14258250823919178386
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324198 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A324198 (A014963 (d + 1)).toNat

end

end A327168.P14258250823919178386

/-!
# A327169: Number of distinct k such that A000005(k)*A000010(k) is equal to n.

The programs for A327169, there is no canonical definition to state claims against.
-/

/-! ## A327169.P13240232119866370424

`A279316(C(A324046(n+1), ∏{p}[n+1, #-1]))`
-/

namespace A327169.P13240232119866370424
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279316 (Nat.choose (A324046 (n + 1)).toNat (∏ p ∈ Nat.primeFactors (f1 n), ((p : ℤ) - 1)).toNat)

end

end A327169.P13240232119866370424

/-! ## A327169.P15024425277635011877

`A319000(A008621(∑[n+1]))`
-/

namespace A327169.P15024425277635011877
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319000 (A008621 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A327169.P15024425277635011877

/-! ## A327169.P9706846515490864495

`round(3^∑{e}[n+1, #]/A196082(3*(n+1)))`
-/

namespace A327169.P9706846515490864495
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((3 ^ (∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p) : ℚ) / (A196082 (3 * (n + 1)) : ℚ))

end

end A327169.P9706846515490864495

/-! ## A327169.P15124036579307695068

`∑{e}[A113246(A322310(n+1)), #]`
-/

namespace A327169.P15124036579307695068
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113246 (A322310 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A327169.P15124036579307695068

/-! ## A327169.P15471964549125174513

`A343221(n+1)+A010054(A354169(n))`
-/

namespace A327169.P15471964549125174513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343221 (n + 1) + A010054 (A354169 n).toNat

end

end A327169.P15471964549125174513

/-!
# A327170: Number of divisors d of n such that A327171(d) (= phi(d)*core(d)) is equal to n.

The programs for A327170, there is no canonical definition to state claims against.
-/

/-! ## A327170.P12914302837224712047

`A231813(A327172(n+1)^A051340(n))`
-/

namespace A327170.P12914302837224712047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231813 (SequenceMachineLib.roundAway ((A327172 (n + 1) : ℚ) ^ (A051340 n : ℤ))).toNat

end

end A327170.P12914302837224712047

/-! ## A327170.P18038008092149756453

`A231813(A327172(n+1)^A103921(2*n))`
-/

namespace A327170.P18038008092149756453
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231813 (SequenceMachineLib.roundAway ((A327172 (n + 1) : ℚ) ^ (A103921 (2 * n) : ℤ))).toNat

end

end A327170.P18038008092149756453

/-! ## A327170.P7668266963422902039

`ceil(A327172(n+1)/A039836(n+1))`
-/

namespace A327170.P7668266963422902039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A327172 (n + 1) : ℚ) / (A039836 (n + 1) : ℚ)⌉

end

end A327170.P7668266963422902039

/-! ## A327170.P8647424588649971834

`A000045(ceil(A327172(n+1)/A346094(n+1)))`
-/

namespace A327170.P8647424588649971834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 ⌈(A327172 (n + 1) : ℚ) / (A346094 (n + 1) : ℚ)⌉.toNat

end

end A327170.P8647424588649971834

/-! ## A327170.P2798355342530281182

`ceil(A327172(n+1)/A162912(n+3))`
-/

namespace A327170.P2798355342530281182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A327172 (n + 1) : ℚ) / (A162912 (n + 3) : ℚ)⌉

end

end A327170.P2798355342530281182

/-! ## A327170.P8921472855054627864

`A231813(A327172(n+1)^A007875(n+1))`
-/

namespace A327170.P8921472855054627864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231813 (SequenceMachineLib.roundAway ((A327172 (n + 1) : ℚ) ^ (A007875 (n + 1) : ℤ))).toNat

end

end A327170.P8921472855054627864

/-! ## A327170.P18026374392629814470

`A231813(A327172(n+1)%A332821(n+1))`
-/

namespace A327170.P18026374392629814470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231813 (Int.tmod (A327172 (n + 1)) (A332821 (n + 1))).toNat

end

end A327170.P18026374392629814470

/-!
# A327171: a(n) = phi(n) * core(n), where phi is Euler totient function, and core gives the squarefree part of n.

The programs for A327171, the canonical program `A327171.P16996833286360269017` is in `Seq.B006.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A327171 has offset 1).

The definition of A327171 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, A007913, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A327171.P16996833286360269017

`A000010(n+1)*A007913(n+1)`

The canonical program, it is in `Seq.B006.C002`.
-/

namespace A327171

/-- `A000010(n+1)*A007913(n+1)` -/
def P16996833286360269017.Spec : Prop :=
  ∀ n, P16996833286360269017.a n = A327171 (n + 1)

theorem P16996833286360269017.correct : P16996833286360269017.Spec := by
  intro n
  simp only [A327171, Nat.add_sub_cancel]

end A327171

/-! ## A327171.P12351220230267952811

`A000010(A053143(n+1))`
-/

namespace A327171.P12351220230267952811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A053143 (n + 1)).toNat

end

end A327171.P12351220230267952811

namespace A327171

/-- `A000010(A053143(n+1))` -/
def P12351220230267952811.Spec : Prop :=
  ∀ n, P12351220230267952811.a n = A327171 (n + 1)

end A327171

/-! ## A327171.P15608005764209516324

`(n+1)*(n+1)/∏{p}[n+1, #]*∏{p}[n+1, #-1]/∏{p}[n+1, #^val(n+1, #²)]²`
-/

namespace A327171.P15608005764209516324
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) * ((n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℚ) * ((∏ p ∈ Nat.primeFactors (f2 n), ((p : ℤ) - 1) : ℤ) : ℚ)) / (((∏ p ∈ Nat.primeFactors (f3 n), p ^ SequenceMachineLib.valuation (n + 1) (p ^ 2)) ^ 2 : ℕ) : ℚ)

end

end A327171.P15608005764209516324

namespace A327171

/-- `(n+1)*(n+1)/∏{p}[n+1, #]*∏{p}[n+1, #-1]/∏{p}[n+1, #^val(n+1, #²)]²` -/
def P15608005764209516324.Spec : Prop :=
  ∀ n, P15608005764209516324.a n = (A327171 (n + 1) : ℚ)

end A327171

/-! ## A327171.P15371382651460875243

`A002618(A019554(n+1))`
-/

namespace A327171.P15371382651460875243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002618 (A019554 (n + 1)).toNat

end

end A327171.P15371382651460875243

namespace A327171

/-- `A002618(A019554(n+1))` -/
def P15371382651460875243.Spec : Prop :=
  ∀ n, P15371382651460875243.a n = A327171 (n + 1)

end A327171

/-! ## A327171.P15900898223605962200

`A299822(A350390(n+1))`
-/

namespace A327171.P15900898223605962200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299822 (A350390 (n + 1)).toNat

end

end A327171.P15900898223605962200

namespace A327171

/-- `A299822(A350390(n+1))` -/
def P15900898223605962200.Spec : Prop :=
  ∀ n, P15900898223605962200.a n = A327171 (n + 1)

end A327171

/-! ## A327171.P12238351559465958122

`Δ[A002088(n)]*A007913(n+1)`
-/

namespace A327171.P12238351559465958122
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002088 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A007913 (n + 1)

end

end A327171.P12238351559465958122

namespace A327171

/-- `Δ[A002088(n)]*A007913(n+1)` -/
def P12238351559465958122.Spec : Prop :=
  ∀ n, P12238351559465958122.a n = A327171 (n + 1)

end A327171

/-! ## A327171.P346075363614478914

`Δ[A005728(n)]*A007913(n+1)`
-/

namespace A327171.P346075363614478914
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005728 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A007913 (n + 1)

end

end A327171.P346075363614478914

namespace A327171

/-- `Δ[A005728(n)]*A007913(n+1)` -/
def P346075363614478914.Spec : Prop :=
  ∀ n, P346075363614478914.a n = A327171 (n + 1)

end A327171

/-! ## A327171.P1509662805238591569

`A076685(n+1)*A076686(n+1)`
-/

namespace A327171.P1509662805238591569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076685 (n + 1) * A076686 (n + 1)

end

end A327171.P1509662805238591569

namespace A327171

/-- `A076685(n+1)*A076686(n+1)` -/
def P1509662805238591569.Spec : Prop :=
  ∀ n, P1509662805238591569.a n = A327171 (n + 1)

end A327171

/-! ## A327171.P12402687849917263006

`A019554(n+1)*A390752(n+1)`
-/

namespace A327171.P12402687849917263006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019554 (n + 1) * A390752 (n + 1)

end

end A327171.P12402687849917263006

namespace A327171

/-- `A019554(n+1)*A390752(n+1)` -/
def P12402687849917263006.Spec : Prop :=
  ∀ n, P12402687849917263006.a n = A327171 (n + 1)

end A327171

/-! ## A327171.P8732073634153978998

`A055229(n+1)*A390755(n+1)`
-/

namespace A327171.P8732073634153978998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055229 (n + 1) * A390755 (n + 1)

end

end A327171.P8732073634153978998

namespace A327171

/-- `A055229(n+1)*A390755(n+1)` -/
def P8732073634153978998.Spec : Prop :=
  ∀ n, P8732073634153978998.a n = A327171 (n + 1)

end A327171

/-! ## A327171.P648157541158042430

`A173557(n+1)*A350390(n+1)`
-/

namespace A327171.P648157541158042430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173557 (n + 1) * A350390 (n + 1)

end

end A327171.P648157541158042430

namespace A327171

/-- `A173557(n+1)*A350390(n+1)` -/
def P648157541158042430.Spec : Prop :=
  ∀ n, P648157541158042430.a n = A327171 (n + 1)

end A327171

/-! ## A327171.P12556568356733172919

`A002618((n+1)/A000188(n+1))`
-/

namespace A327171.P12556568356733172919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002618 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A000188 (n + 1) : ℚ))).toNat

end

end A327171.P12556568356733172919

namespace A327171

/-- `A002618((n+1)/A000188(n+1))` -/
def P12556568356733172919.Spec : Prop :=
  ∀ n, P12556568356733172919.a n = A327171 (n + 1)

end A327171

/-! ## A327171.P7284499578197170552

`A002618(n+1)/A008833(n+1)`
-/

namespace A327171.P7284499578197170552
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002618 (n + 1) : ℚ) / (A008833 (n + 1) : ℚ)

end

end A327171.P7284499578197170552

namespace A327171

/-- `A002618(n+1)/A008833(n+1)` -/
def P7284499578197170552.Spec : Prop :=
  ∀ n, P7284499578197170552.a n = (A327171 (n + 1) : ℚ)

end A327171

/-! ## A327171.P4361981502639640987

`A189393(n+1)/A059479(n+1)`
-/

namespace A327171.P4361981502639640987
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A189393 (n + 1) : ℚ) / (A059479 (n + 1) : ℚ)

end

end A327171.P4361981502639640987

namespace A327171

/-- `A189393(n+1)/A059479(n+1)` -/
def P4361981502639640987.Spec : Prop :=
  ∀ n, P4361981502639640987.a n = (A327171 (n + 1) : ℚ)

end A327171

/-! ## A327171.P11350725000079983068

`A299822((n+1)/A336643(n+1))`
-/

namespace A327171.P11350725000079983068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299822 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A336643 (n + 1) : ℚ))).toNat

end

end A327171.P11350725000079983068

namespace A327171

/-- `A299822((n+1)/A336643(n+1))` -/
def P11350725000079983068.Spec : Prop :=
  ∀ n, P11350725000079983068.a n = A327171 (n + 1)

end A327171

/-! ## A327171.P1341837768862044129

`(A109606(n+1)+1)*A007913(n+1)`
-/

namespace A327171.P1341837768862044129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A109606 (n + 1) + 1) * A007913 (n + 1)

end

end A327171.P1341837768862044129

namespace A327171

/-- `(A109606(n+1)+1)*A007913(n+1)` -/
def P1341837768862044129.Spec : Prop :=
  ∀ n, P1341837768862044129.a n = A327171 (n + 1)

end A327171

/-! ## A327171.P7778438647331574579

`(A039649(n+1)-1)*A007913(n+1)`
-/

namespace A327171.P7778438647331574579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A039649 (n + 1) - 1) * A007913 (n + 1)

end

end A327171.P7778438647331574579

namespace A327171

/-- `(A039649(n+1)-1)*A007913(n+1)` -/
def P7778438647331574579.Spec : Prop :=
  ∀ n, P7778438647331574579.a n = A327171 (n + 1)

end A327171

/-! ## A327171.P7790048974227806967

`(n-A219428(n+1))*A007913(n+1)`
-/

namespace A327171.P7790048974227806967
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - A219428 (n + 1)) * A007913 (n + 1)

end

end A327171.P7790048974227806967

namespace A327171

/-- `(n-A219428(n+1))*A007913(n+1)` -/
def P7790048974227806967.Spec : Prop :=
  ∀ n, P7790048974227806967.a n = A327171 (n + 1)

end A327171

/-! ## A327171.P14142541508278266997

`A102631(A019554(n+1))*A173557(n+1)`
-/

namespace A327171.P14142541508278266997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102631 (A019554 (n + 1)).toNat * A173557 (n + 1)

end

end A327171.P14142541508278266997

namespace A327171

/-- `A102631(A019554(n+1))*A173557(n+1)` -/
def P14142541508278266997.Spec : Prop :=
  ∀ n, P14142541508278266997.a n = A327171 (n + 1)

end A327171

/-! ## A327171.P3705970731405974261

`(A002088(n+1)-A002088(n))*A007913(n+1)`
-/

namespace A327171.P3705970731405974261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A002088 (n + 1) - A002088 n) * A007913 (n + 1)

end

end A327171.P3705970731405974261

namespace A327171

/-- `(A002088(n+1)-A002088(n))*A007913(n+1)` -/
def P3705970731405974261.Spec : Prop :=
  ∀ n, P3705970731405974261.a n = A327171 (n + 1)

end A327171

/-!
# A327172: If there is a divisor d of n such that phi(d)*d = n, then a(n) = d, otherwise a(n) = 0.

The programs for A327172, there is no canonical definition to state claims against.
-/

/-! ## A327172.P3351176872040455149

`char[A046151(n+1)]*A275823(n+1)`
-/

namespace A327172.P3351176872040455149
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046151 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A275823 (n + 1)

end

end A327172.P3351176872040455149

/-!
# A327174: a(n) = [(2*n+1)*r] - [(n+1)*r] - [n*r], where [ ] = floor and r = (1+sqrt(5))/2.

The programs for A327174, the canonical program `A327174.P2217078710281402132` is in `Seq.B003.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A327174 has offset 0).

The definition of A327174 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A327174.P998997061864108461

`char[A327176(n+1)]`
-/

namespace A327174.P998997061864108461
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327176 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A327174.P998997061864108461

namespace A327174

/-- `char[A327176(n+1)]` -/
def P998997061864108461.Spec : Prop :=
  ∀ n, (P998997061864108461.a n : ℤ) = A327174 n

end A327174

/-! ## A327174.P14222545090631707458

`A342279(n)-A191402(n)`
-/

namespace A327174.P14222545090631707458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342279 n - A191402 n

end

end A327174.P14222545090631707458

namespace A327174

/-- `A342279(n)-A191402(n)` -/
def P14222545090631707458.Spec : Prop :=
  ∀ n, P14222545090631707458.a n = A327174 n

end A327174

/-! ## A327174.P14062058613019400616

`A096270(n)-A387348(n+1)`
-/

namespace A327174.P14062058613019400616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096270 n - A387348 (n + 1)

end

end A327174.P14062058613019400616

namespace A327174

/-- `A096270(n)-A387348(n+1)` -/
def P14062058613019400616.Spec : Prop :=
  ∀ n, P14062058613019400616.a n = A327174 n

end A327174

/-! ## A327174.P8882715345394000273

`A187944(n+1)*A339051(n)`
-/

namespace A327174.P8882715345394000273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187944 (n + 1) * A339051 n

end

end A327174.P8882715345394000273

namespace A327174

/-- `A187944(n+1)*A339051(n)` -/
def P8882715345394000273.Spec : Prop :=
  ∀ n, P8882715345394000273.a n = A327174 n

end A327174

/-! ## A327174.P5353012275011308042

`A187948(n+1)*A339051(n)`
-/

namespace A327174.P5353012275011308042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187948 (n + 1) * A339051 n

end

end A327174.P5353012275011308042

namespace A327174

/-- `A187948(n+1)*A339051(n)` -/
def P5353012275011308042.Spec : Prop :=
  ∀ n, P5353012275011308042.a n = A327174 n

end A327174

/-! ## A327174.P12862011713351978554

`A188433(n+1)*A339051(n)`
-/

namespace A327174.P12862011713351978554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188433 (n + 1) * A339051 n

end

end A327174.P12862011713351978554

namespace A327174

/-- `A188433(n+1)*A339051(n)` -/
def P12862011713351978554.Spec : Prop :=
  ∀ n, P12862011713351978554.a n = A327174 n

end A327174

/-! ## A327174.P16859483920342734154

`and(A219609(n+1), A339051(n))`
-/

namespace A327174.P16859483920342734154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A219609 (n + 1)) (A339051 n)

end

end A327174.P16859483920342734154

namespace A327174

/-- `and(A219609(n+1), A339051(n))` -/
def P16859483920342734154.Spec : Prop :=
  ∀ n, P16859483920342734154.a n = A327174 n

end A327174

/-! ## A327174.P2217078710281402132

`A096270(2*n*A187944(n+1))`

The canonical program, it is in `Seq.B003.C004`.
-/

namespace A327174

/-- `A096270(2*n*A187944(n+1))` -/
def P2217078710281402132.Spec : Prop :=
  ∀ n, P2217078710281402132.a n = A327174 n

theorem P2217078710281402132.correct : P2217078710281402132.Spec := by
  intro n
  simp only [A327174]

end A327174

/-! ## A327174.P9403829392644424656

`A096270(2*n*A188433(n+1))`
-/

namespace A327174.P9403829392644424656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096270 (2 * ((n : ℤ) * A188433 (n + 1))).toNat

end

end A327174.P9403829392644424656

namespace A327174

/-- `A096270(2*n*A188433(n+1))` -/
def P9403829392644424656.Spec : Prop :=
  ∀ n, P9403829392644424656.a n = A327174 n

end A327174

/-! ## A327174.P17079145930789953430

`and(1, A096270(n)+A005206(2*n))`
-/

namespace A327174.P17079145930789953430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A096270 n + A005206 (2 * n))

end

end A327174.P17079145930789953430

namespace A327174

/-- `and(1, A096270(n)+A005206(2*n))` -/
def P17079145930789953430.Spec : Prop :=
  ∀ n, P17079145930789953430.a n = A327174 n

end A327174

/-! ## A327174.P7456831236792194962

`A096270(A004937(n)-A005206(n))`
-/

namespace A327174.P7456831236792194962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096270 (A004937 n - A005206 n).toNat

end

end A327174.P7456831236792194962

namespace A327174

/-- `A096270(A004937(n)-A005206(n))` -/
def P7456831236792194962.Spec : Prop :=
  ∀ n, P7456831236792194962.a n = A327174 n

end A327174

/-! ## A327174.P7367603644596819062

`A096270(A004937(n)-∑[A096270(n)])`
-/

namespace A327174.P7367603644596819062
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096270 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096270 (A004937 n - ∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A327174.P7367603644596819062

namespace A327174

/-- `A096270(A004937(n)-∑[A096270(n)])` -/
def P7367603644596819062.Spec : Prop :=
  ∀ n, P7367603644596819062.a n = A327174 n

end A327174

/-! ## A327174.P8988459791564216925

`A096270(2*n*A096270(A060143(n)))`
-/

namespace A327174.P8988459791564216925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096270 ((2 * n : ℤ) * A096270 (A060143 n).toNat).toNat

end

end A327174.P8988459791564216925

namespace A327174

/-- `A096270(2*n*A096270(A060143(n)))` -/
def P8988459791564216925.Spec : Prop :=
  ∀ n, P8988459791564216925.a n = A327174 n

end A327174

/-! ## A327174.P9752306786361437907

`A096270(n+1-A339052(A022342(n+1)))`
-/

namespace A327174.P9752306786361437907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096270 ((n + 1 : ℤ) - A339052 (A022342 (n + 1)).toNat).toNat

end

end A327174.P9752306786361437907

namespace A327174

/-- `A096270(n+1-A339052(A022342(n+1)))` -/
def P9752306786361437907.Spec : Prop :=
  ∀ n, P9752306786361437907.a n = A327174 n

end A327174

/-! ## A327174.P14241647473346896196

`A000035(A005206(2*n)-A096270(n))`
-/

namespace A327174.P14241647473346896196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A005206 (2 * n) - A096270 n).toNat

end

end A327174.P14241647473346896196

namespace A327174

/-- `A000035(A005206(2*n)-A096270(n))` -/
def P14241647473346896196.Spec : Prop :=
  ∀ n, P14241647473346896196.a n = A327174 n

end A327174

/-! ## A327174.P7539416321355420587

`A000035(A096270(n)+A005206(2*n))`
-/

namespace A327174.P7539416321355420587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A096270 n + A005206 (2 * n)).toNat

end

end A327174.P7539416321355420587

namespace A327174

/-- `A000035(A096270(n)+A005206(2*n))` -/
def P7539416321355420587.Spec : Prop :=
  ∀ n, P7539416321355420587.a n = A327174 n

end A327174

/-! ## A327174.P4758117881235687755

`A000035(A282162(n)+A005206(2*n))`
-/

namespace A327174.P4758117881235687755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A282162 n + A005206 (2 * n)).toNat

end

end A327174.P4758117881235687755

namespace A327174

/-- `A000035(A282162(n)+A005206(2*n))` -/
def P4758117881235687755.Spec : Prop :=
  ∀ n, P4758117881235687755.a n = A327174 n

end A327174

/-! ## A327174.P6574346692932197153

`A096270(A191402(n)+1)`
-/

namespace A327174.P6574346692932197153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096270 (A191402 n + 1).toNat

end

end A327174.P6574346692932197153

namespace A327174

/-- `A096270(A191402(n)+1)` -/
def P6574346692932197153.Spec : Prop :=
  ∀ n, P6574346692932197153.a n = A327174 n

end A327174

/-! ## A327174.P8819843133225993890

`A096270(A026351(n)+A000201(n+1))`
-/

namespace A327174.P8819843133225993890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096270 (A026351 n + A000201 (n + 1)).toNat

end

end A327174.P8819843133225993890

namespace A327174

/-- `A096270(A026351(n)+A000201(n+1))` -/
def P8819843133225993890.Spec : Prop :=
  ∀ n, P8819843133225993890.a n = A327174 n

end A327174

/-! ## A327174.P6390613325267576946

`A003849(2*n)+A007067(n+1)-A026355(n+1)`
-/

namespace A327174.P6390613325267576946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003849 (2 * n) + (A007067 (n + 1) - A026355 (n + 1))

end

end A327174.P6390613325267576946

namespace A327174

/-- `A003849(2*n)+A007067(n+1)-A026355(n+1)` -/
def P6390613325267576946.Spec : Prop :=
  ∀ n, P6390613325267576946.a n = A327174 n

end A327174

/-!
# A327175: Positions of 0's in {A327174(n) : n > 0}.

The programs for A327175, the canonical program `A327175.P4858780168493079708` is in `Seq.B004.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A327175 has offset 1).

The definition of A327175 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A327175.P1610546746617518938

`comp[n*A327174(n)]`
-/

namespace A327175.P1610546746617518938
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A327174 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A327175.P1610546746617518938

namespace A327175

/-- `comp[n*A327174(n)]` -/
def P1610546746617518938.Spec : Prop :=
  ∀ n, (P1610546746617518938.a n : ℤ) = A327175 (n + 1)

end A327175

/-! ## A327175.P4858780168493079708

`lt[A327174(n+1), 1]+1`

The canonical program, it is in `Seq.B004.C003`.
-/

namespace A327175

/-- `lt[A327174(n+1), 1]+1` -/
def P4858780168493079708.Spec : Prop :=
  ∀ n, (P4858780168493079708.a n : ℤ) = A327175 (n + 1)

theorem P4858780168493079708.correct : P4858780168493079708.Spec := by
  intro n
  simp only [A327175, Nat.add_sub_cancel]

end A327175

/-! ## A327175.P16992042898326849846

`comp[A327176(n+1)-1]+1`
-/

namespace A327175.P16992042898326849846
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327176 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A327175.P16992042898326849846

namespace A327175

/-- `comp[A327176(n+1)-1]+1` -/
def P16992042898326849846.Spec : Prop :=
  ∀ n, (P16992042898326849846.a n : ℤ) = A327175 (n + 1)

end A327175

/-! ## A327175.P7907120757736945935

`eq[A105348(2*n), A327174(n)]`
-/

namespace A327175.P7907120757736945935
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105348 (2 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327174 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A327175.P7907120757736945935

namespace A327175

/-- `eq[A105348(2*n), A327174(n)]` -/
def P7907120757736945935.Spec : Prop :=
  ∀ n, (P7907120757736945935.a n : ℤ) = A327175 (n + 1)

end A327175

/-! ## A327175.P13504873654604183292

`eq[A154269(2*n+1), A327174(n)]`
-/

namespace A327175.P13504873654604183292
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154269 (2 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327174 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A327175.P13504873654604183292

namespace A327175

/-- `eq[A154269(2*n+1), A327174(n)]` -/
def P13504873654604183292.Spec : Prop :=
  ∀ n, (P13504873654604183292.a n : ℤ) = A327175 (n + 1)

end A327175

/-! ## A327175.P18371777485130294631

`eq[A209229(2*n+1), A327174(n)]`
-/

namespace A327175.P18371777485130294631
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209229 (2 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327174 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A327175.P18371777485130294631

namespace A327175

/-- `eq[A209229(2*n+1), A327174(n)]` -/
def P18371777485130294631.Spec : Prop :=
  ∀ n, (P18371777485130294631.a n : ℤ) = A327175 (n + 1)

end A327175

/-! ## A327175.P6218565310621734414

`filter[A188019(n+1), A339052(#)]`
-/

namespace A327175.P6218565310621734414
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188019 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A339052 (f1 j).toNat = 1) n)

end

end A327175.P6218565310621734414

namespace A327175

/-- `filter[A188019(n+1), A339052(#)]` -/
def P6218565310621734414.Spec : Prop :=
  ∀ n, P6218565310621734414.a n = A327175 (n + 1)

end A327175

/-! ## A327175.P13283315987130738717

`filter[A003233(n+1), A339052(#)]`
-/

namespace A327175.P13283315987130738717
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003233 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A339052 (f1 j).toNat = 1) n)

end

end A327175.P13283315987130738717

namespace A327175

/-- `filter[A003233(n+1), A339052(#)]` -/
def P13283315987130738717.Spec : Prop :=
  ∀ n, P13283315987130738717.a n = A327175 (n + 1)

end A327175

/-! ## A327175.P7087359621786944634

`filter[A187485(n+1), A339052(#)]`
-/

namespace A327175.P7087359621786944634
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187485 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A339052 (f1 j).toNat = 1) n)

end

end A327175.P7087359621786944634

namespace A327175

/-- `filter[A187485(n+1), A339052(#)]` -/
def P7087359621786944634.Spec : Prop :=
  ∀ n, P7087359621786944634.a n = A327175 (n + 1)

end A327175

/-! ## A327175.P11099676954911667245

`filter[A188033(n+1), A339052(#)]`
-/

namespace A327175.P11099676954911667245
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188033 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A339052 (f1 j).toNat = 1) n)

end

end A327175.P11099676954911667245

namespace A327175

/-- `filter[A188033(n+1), A339052(#)]` -/
def P11099676954911667245.Spec : Prop :=
  ∀ n, P11099676954911667245.a n = A327175 (n + 1)

end A327175

/-! ## A327175.P8735344301439755674

`filter[A188013(n+1), A339052(#)]`
-/

namespace A327175.P8735344301439755674
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188013 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A339052 (f1 j).toNat = 1) n)

end

end A327175.P8735344301439755674

namespace A327175

/-- `filter[A188013(n+1), A339052(#)]` -/
def P8735344301439755674.Spec : Prop :=
  ∀ n, P8735344301439755674.a n = A327175 (n + 1)

end A327175

/-! ## A327175.P15704375146424701635

`filter[A188437(n+1), A339052(#)]`
-/

namespace A327175.P15704375146424701635
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188437 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A339052 (f1 j).toNat = 1) n)

end

end A327175.P15704375146424701635

namespace A327175

/-- `filter[A188437(n+1), A339052(#)]` -/
def P15704375146424701635.Spec : Prop :=
  ∀ n, P15704375146424701635.a n = A327175 (n + 1)

end A327175

/-! ## A327175.P17973553975258622102

`eq[A000007(n), A327174(n)]`
-/

namespace A327175.P17973553975258622102
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327174 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A327175.P17973553975258622102

namespace A327175

/-- `eq[A000007(n), A327174(n)]` -/
def P17973553975258622102.Spec : Prop :=
  ∀ n, (P17973553975258622102.a n : ℤ) = A327175 (n + 1)

end A327175

/-! ## A327175.P7437477458044600114

`eq[A000038(n), A327174(n)]`
-/

namespace A327175.P7437477458044600114
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327174 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A327175.P7437477458044600114

namespace A327175

/-- `eq[A000038(n), A327174(n)]` -/
def P7437477458044600114.Spec : Prop :=
  ∀ n, (P7437477458044600114.a n : ℤ) = A327175 (n + 1)

end A327175

/-! ## A327175.P12432415782859450263

`eq[1, A327174(n)+A054977(n)]`
-/

namespace A327175.P12432415782859450263
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327174 n + A054977 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A327175.P12432415782859450263

namespace A327175

/-- `eq[1, A327174(n)+A054977(n)]` -/
def P12432415782859450263.Spec : Prop :=
  ∀ n, (P12432415782859450263.a n : ℤ) = A327175 (n + 1)

end A327175

/-! ## A327175.P7182347141316282044

`eq[1, A327174(n)+A158388(n)]`
-/

namespace A327175.P7182347141316282044
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327174 n + A158388 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A327175.P7182347141316282044

namespace A327175

/-- `eq[1, A327174(n)+A158388(n)]` -/
def P7182347141316282044.Spec : Prop :=
  ∀ n, (P7182347141316282044.a n : ℤ) = A327175 (n + 1)

end A327175

/-! ## A327175.P11119374310789337185

`eq[A114986(n), A387348(n+1)]`
-/

namespace A327175.P11119374310789337185
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114986 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387348 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A327175.P11119374310789337185

namespace A327175

/-- `eq[A114986(n), A387348(n+1)]` -/
def P11119374310789337185.Spec : Prop :=
  ∀ n, (P11119374310789337185.a n : ℤ) = A327175 (n + 1)

end A327175

/-! ## A327175.P3957958104473767181

`eq[A188432(n+1), A380151(n+1)]`
-/

namespace A327175.P3957958104473767181
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188432 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380151 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A327175.P3957958104473767181

namespace A327175

/-- `eq[A188432(n+1), A380151(n+1)]` -/
def P3957958104473767181.Spec : Prop :=
  ∀ n, (P3957958104473767181.a n : ℤ) = A327175 (n + 1)

end A327175

/-!
# A327176: Positions of 1's in {A327174(n) : n > 0}.

The programs for A327176, the canonical program `A327176.P1040020970767484414` is in `Seq.B004.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A327176 has offset 1).

The definition of A327176 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A327176.P1040020970767484414

`lt[0, A327174(n)]`

The canonical program, it is in `Seq.B004.C003`.
-/

namespace A327176

/-- `lt[0, A327174(n)]` -/
def P1040020970767484414.Spec : Prop :=
  ∀ n, (P1040020970767484414.a n : ℤ) = A327176 (n + 1)

theorem P1040020970767484414.correct : P1040020970767484414.Spec := by
  intro n
  simp only [A327176, Nat.add_sub_cancel]

end A327176

/-! ## A327176.P10756785331740020430

`record[(n+2)*A327174(n+2)]`
-/

namespace A327176.P10756785331740020430
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℤ) * A327174 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A327176.P10756785331740020430

namespace A327176

/-- `record[(n+2)*A327174(n+2)]` -/
def P10756785331740020430.Spec : Prop :=
  ∀ n, P10756785331740020430.a n = A327176 (n + 1)

end A327176

/-! ## A327176.P1640628552920869986

`eq[1, A327174(n*A327174(n))]`
-/

namespace A327176.P1640628552920869986
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327174 ((n : ℤ) * A327174 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A327176.P1640628552920869986

namespace A327176

/-- `eq[1, A327174(n*A327174(n))]` -/
def P1640628552920869986.Spec : Prop :=
  ∀ n, (P1640628552920869986.a n : ℤ) = A327176 (n + 1)

end A327176

/-! ## A327176.P1995993598643865947

`filter[A188262(n+1), A327174(#)]`
-/

namespace A327176.P1995993598643865947
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188262 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A327174 (f1 j).toNat = 1) n)

end

end A327176.P1995993598643865947

namespace A327176

/-- `filter[A188262(n+1), A327174(#)]` -/
def P1995993598643865947.Spec : Prop :=
  ∀ n, P1995993598643865947.a n = A327176 (n + 1)

end A327176

/-! ## A327176.P5319719491933315126

`filter[A307295(n), A327174(#)]`
-/

namespace A327176.P5319719491933315126
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307295 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A327174 (f1 j).toNat = 1) n)

end

end A327176.P5319719491933315126

namespace A327176

/-- `filter[A307295(n), A327174(#)]` -/
def P5319719491933315126.Spec : Prop :=
  ∀ n, P5319719491933315126.a n = A327176 (n + 1)

end A327176

/-! ## A327176.P12532315000618565876

`filter[A307295(n), A339051(#)]`
-/

namespace A327176.P12532315000618565876
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307295 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A339051 (f1 j).toNat = 1) n)

end

end A327176.P12532315000618565876

namespace A327176

/-- `filter[A307295(n), A339051(#)]` -/
def P12532315000618565876.Spec : Prop :=
  ∀ n, P12532315000618565876.a n = A327176 (n + 1)

end A327176

/-! ## A327176.P16280655654730244480

`filter[A188188(n+1), A327174(#)]`
-/

namespace A327176.P16280655654730244480
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188188 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A327174 (f1 j).toNat = 1) n)

end

end A327176.P16280655654730244480

namespace A327176

/-- `filter[A188188(n+1), A327174(#)]` -/
def P16280655654730244480.Spec : Prop :=
  ∀ n, P16280655654730244480.a n = A327176 (n + 1)

end A327176

/-! ## A327176.P15785041657709736546

`filter[A187945(n+1), A327174(#)]`
-/

namespace A327176.P15785041657709736546
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187945 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A327174 (f1 j).toNat = 1) n)

end

end A327176.P15785041657709736546

namespace A327176

/-- `filter[A187945(n+1), A327174(#)]` -/
def P15785041657709736546.Spec : Prop :=
  ∀ n, P15785041657709736546.a n = A327176 (n + 1)

end A327176

/-! ## A327176.P7622989251554289057

`eq[(A000038(n)-1)², A327174(n)]`
-/

namespace A327176.P7622989251554289057
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000038 n - 1) ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327174 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A327176.P7622989251554289057

namespace A327176

/-- `eq[(A000038(n)-1)², A327174(n)]` -/
def P7622989251554289057.Spec : Prop :=
  ∀ n, (P7622989251554289057.a n : ℤ) = A327176 (n + 1)

end A327176

/-! ## A327176.P640020542271832153

`eq[A014675(n), A190427(n+1)]+1`
-/

namespace A327176.P640020542271832153
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014675 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190427 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A327176.P640020542271832153

namespace A327176

/-- `eq[A014675(n), A190427(n+1)]+1` -/
def P640020542271832153.Spec : Prop :=
  ∀ n, (P640020542271832153.a n : ℤ) = A327176 (n + 1)

end A327176

/-! ## A327176.P11900178493048818836

`eq[A054977(n), A327174(n)]`
-/

namespace A327176.P11900178493048818836
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054977 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327174 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A327176.P11900178493048818836

namespace A327176

/-- `eq[A054977(n), A327174(n)]` -/
def P11900178493048818836.Spec : Prop :=
  ∀ n, (P11900178493048818836.a n : ℤ) = A327176 (n + 1)

end A327176

/-! ## A327176.P13059109784890234145

`eq[A141044(n), A327174(n)]`
-/

namespace A327176.P13059109784890234145
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141044 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327174 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A327176.P13059109784890234145

namespace A327176

/-- `eq[A141044(n), A327174(n)]` -/
def P13059109784890234145.Spec : Prop :=
  ∀ n, (P13059109784890234145.a n : ℤ) = A327176 (n + 1)

end A327176

/-! ## A327176.P16778214733009618359

`eq[A158388(n), A327174(n)]`
-/

namespace A327176.P16778214733009618359
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158388 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327174 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A327176.P16778214733009618359

namespace A327176

/-- `eq[A158388(n), A327174(n)]` -/
def P16778214733009618359.Spec : Prop :=
  ∀ n, (P16778214733009618359.a n : ℤ) = A327176 (n + 1)

end A327176

/-! ## A327176.P11078968006631723023

`eq[A327174(n), A373565(n)]`
-/

namespace A327176.P11078968006631723023
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327174 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373565 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A327176.P11078968006631723023

namespace A327176

/-- `eq[A327174(n), A373565(n)]` -/
def P11078968006631723023.Spec : Prop :=
  ∀ n, (P11078968006631723023.a n : ℤ) = A327176 (n + 1)

end A327176

/-! ## A327176.P8588797149503186736

`eq[A096270(n), A380151(n+1)]`
-/

namespace A327176.P8588797149503186736
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096270 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380151 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A327176.P8588797149503186736

namespace A327176

/-- `eq[A096270(n), A380151(n+1)]` -/
def P8588797149503186736.Spec : Prop :=
  ∀ n, (P8588797149503186736.a n : ℤ) = A327176 (n + 1)

end A327176

/-! ## A327176.P4835476406921309178

`eq[2, A020639(A001966(n)+A001468(n))]`
-/

namespace A327176.P4835476406921309178
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A001966 n + A001468 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A327176.P4835476406921309178

namespace A327176

/-- `eq[2, A020639(A001966(n)+A001468(n))]` -/
def P4835476406921309178.Spec : Prop :=
  ∀ n, (P4835476406921309178.a n : ℤ) = A327176 (n + 1)

end A327176

/-! ## A327176.P7037748929397330358

`eq[A188436(n+4)+1, A096270(2*n)]`
-/

namespace A327176.P7037748929397330358
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188436 (n + 4) + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096270 (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A327176.P7037748929397330358

namespace A327176

/-- `eq[A188436(n+4)+1, A096270(2*n)]` -/
def P7037748929397330358.Spec : Prop :=
  ∀ n, (P7037748929397330358.a n : ℤ) = A327176 (n + 1)

end A327176

/-! ## A327176.P5196766769569609043

`lt[A188031(n+2), A096270(2*n)+A096270(n+1)]`
-/

namespace A327176.P5196766769569609043
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188031 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096270 (2 * n) + A096270 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A327176.P5196766769569609043

namespace A327176

/-- `lt[A188031(n+2), A096270(2*n)+A096270(n+1)]` -/
def P5196766769569609043.Spec : Prop :=
  ∀ n, (P5196766769569609043.a n : ℤ) = A327176 (n + 1)

end A327176

/-!
# A327177: a(n) = [(2n+1)r] - [(n+1)r] - [nr], where [ ] = floor and r = sqrt(2).

The programs for A327177, the canonical program `A327177.P10177580896383627063` is in `Seq.B003.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A327177 has offset 0).

The definition of A327177 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A327177.P8548331079706359609

`char[A327179(n+1)]`
-/

namespace A327177.P8548331079706359609
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327179 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A327177.P8548331079706359609

namespace A327177

/-- `char[A327179(n+1)]` -/
def P8548331079706359609.Spec : Prop :=
  ∀ n, (P8548331079706359609.a n : ℤ) = A327177 n

end A327177

/-! ## A327177.P10177580896383627063

`A342281(n)-A191405(n)`

The canonical program, it is in `Seq.B003.C004`.
-/

namespace A327177

/-- `A342281(n)-A191405(n)` -/
def P10177580896383627063.Spec : Prop :=
  ∀ n, P10177580896383627063.a n = A327177 n

theorem P10177580896383627063.correct : P10177580896383627063.Spec := by
  intro n
  simp only [A327177]

end A327177

/-! ## A327177.P3006674104010339758

`A342281(n)-(A001951(n+1)+A001951(n))`
-/

namespace A327177.P3006674104010339758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342281 n - (A001951 (n + 1) + A001951 n)

end

end A327177.P3006674104010339758

namespace A327177

/-- `A342281(n)-(A001951(n+1)+A001951(n))` -/
def P3006674104010339758.Spec : Prop :=
  ∀ n, P3006674104010339758.a n = A327177 n

end A327177

/-! ## A327177.P12358181058340742621

`(1-A159684(2*n))*A188038(n+2)`
-/

namespace A327177.P12358181058340742621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - A159684 (2 * n)) * A188038 (n + 2)

end

end A327177.P12358181058340742621

namespace A327177

/-- `(1-A159684(2*n))*A188038(n+2)` -/
def P12358181058340742621.Spec : Prop :=
  ∀ n, P12358181058340742621.a n = A327177 n

end A327177

/-! ## A327177.P6050882187225442677

`A001951(2*n+1)-A191405(n)`
-/

namespace A327177.P6050882187225442677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001951 (2 * n + 1) - A191405 n

end

end A327177.P6050882187225442677

namespace A327177

/-- `A001951(2*n+1)-A191405(n)` -/
def P6050882187225442677.Spec : Prop :=
  ∀ n, P6050882187225442677.a n = A327177 n

end A327177

/-! ## A327177.P12924672437472210905

`and(A188038(n+2), A276864(2*(n+1)))`
-/

namespace A327177.P12924672437472210905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A188038 (n + 2)) (A276864 (2 * (n + 1)))

end

end A327177.P12924672437472210905

namespace A327177

/-- `and(A188038(n+2), A276864(2*(n+1)))` -/
def P12924672437472210905.Spec : Prop :=
  ∀ n, P12924672437472210905.a n = A327177 n

end A327177

/-! ## A327177.P7659793907157349323

`∑[A188038(2*n+1)-A188038(n+1)]`
-/

namespace A327177.P7659793907157349323
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188038 (2 * n + 1) - A188038 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A327177.P7659793907157349323

namespace A327177

/-- `∑[A188038(2*n+1)-A188038(n+1)]` -/
def P7659793907157349323.Spec : Prop :=
  ∀ n, P7659793907157349323.a n = A327177 n

end A327177

/-! ## A327177.P16729572254005899022

`(1-A188037(2*(n+1)))*A188038(n+2)`
-/

namespace A327177.P16729572254005899022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - A188037 (2 * (n + 1))) * A188038 (n + 2)

end

end A327177.P16729572254005899022

namespace A327177

/-- `(1-A188037(2*(n+1)))*A188038(n+2)` -/
def P16729572254005899022.Spec : Prop :=
  ∀ n, P16729572254005899022.a n = A327177 n

end A327177

/-! ## A327177.P7114415952514151806

`(2-A006337(2*n+1))*A188038(n+2)`
-/

namespace A327177.P7114415952514151806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - A006337 (2 * n + 1)) * A188038 (n + 2)

end

end A327177.P7114415952514151806

namespace A327177

/-- `(2-A006337(2*n+1))*A188038(n+2)` -/
def P7114415952514151806.Spec : Prop :=
  ∀ n, P7114415952514151806.a n = A327177 n

end A327177

/-! ## A327177.P2780048645651246214

`and(1, A285078(2*(n+1))+A285076(n+2))`
-/

namespace A327177.P2780048645651246214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A285078 (2 * (n + 1)) + A285076 (n + 2))

end

end A327177.P2780048645651246214

namespace A327177

/-- `and(1, A285078(2*(n+1))+A285076(n+2))` -/
def P2780048645651246214.Spec : Prop :=
  ∀ n, P2780048645651246214.a n = A327177 n

end A327177

/-! ## A327177.P14621717376676791547

`and(A006337(2*n+1), A188295(2*n+1))`
-/

namespace A327177.P14621717376676791547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A006337 (2 * n + 1)) (A188295 (2 * n + 1))

end

end A327177.P14621717376676791547

namespace A327177

/-- `and(A006337(2*n+1), A188295(2*n+1))` -/
def P14621717376676791547.Spec : Prop :=
  ∀ n, P14621717376676791547.a n = A327177 n

end A327177

/-! ## A327177.P15693590246840770465

`(1-A188037(2*(n+1)))*A188295(2*n+1)`
-/

namespace A327177.P15693590246840770465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - A188037 (2 * (n + 1))) * A188295 (2 * n + 1)

end

end A327177.P15693590246840770465

namespace A327177

/-- `(1-A188037(2*(n+1)))*A188295(2*n+1)` -/
def P15693590246840770465.Spec : Prop :=
  ∀ n, P15693590246840770465.a n = A327177 n

end A327177

/-! ## A327177.P9663805249258251011

`A001951(2*n+1)-(A049472(2*n)+A001951(n+1))`
-/

namespace A327177.P9663805249258251011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001951 (2 * n + 1) - (A049472 (2 * n) + A001951 (n + 1))

end

end A327177.P9663805249258251011

namespace A327177

/-- `A001951(2*n+1)-(A049472(2*n)+A001951(n+1))` -/
def P9663805249258251011.Spec : Prop :=
  ∀ n, P9663805249258251011.a n = A327177 n

end A327177

/-! ## A327177.P18279167910277532563

`(A188038(2*n+1)-A188041(2*(n+1)))*A188038(n+2)`
-/

namespace A327177.P18279167910277532563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A188038 (2 * n + 1) - A188041 (2 * (n + 1))) * A188038 (n + 2)

end

end A327177.P18279167910277532563

namespace A327177

/-- `(A188038(2*n+1)-A188041(2*(n+1)))*A188038(n+2)` -/
def P18279167910277532563.Spec : Prop :=
  ∀ n, P18279167910277532563.a n = A327177 n

end A327177

/-! ## A327177.P12037964951410843060

`(A049472(2*n+1)-A049472(2*n))*A144611(2*n+1)`
-/

namespace A327177.P12037964951410843060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A049472 (2 * n + 1) - A049472 (2 * n)) * A144611 (2 * n + 1)

end

end A327177.P12037964951410843060

namespace A327177

/-- `(A049472(2*n+1)-A049472(2*n))*A144611(2*n+1)` -/
def P12037964951410843060.Spec : Prop :=
  ∀ n, P12037964951410843060.a n = A327177 n

end A327177

/-! ## A327177.P5711491158443062083

`A144611(A285078(2*(n+1))-A285078(n+2))`
-/

namespace A327177.P5711491158443062083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144611 (A285078 (2 * (n + 1)) - A285078 (n + 2)).toNat

end

end A327177.P5711491158443062083

namespace A327177

/-- `A144611(A285078(2*(n+1))-A285078(n+2))` -/
def P5711491158443062083.Spec : Prop :=
  ∀ n, P5711491158443062083.a n = A327177 n

end A327177

/-! ## A327177.P8414554117755162173

`A083035(A001951(n+1)+A001951(n)+1)`
-/

namespace A327177.P8414554117755162173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083035 (A001951 (n + 1) + A001951 n + 1).toNat

end

end A327177.P8414554117755162173

namespace A327177

/-- `A083035(A001951(n+1)+A001951(n)+1)` -/
def P8414554117755162173.Spec : Prop :=
  ∀ n, P8414554117755162173.a n = A327177 n

end A327177

/-! ## A327177.P13449238672876087021

`A188374(A001951(n+1)+A001951(n)+1)`
-/

namespace A327177.P13449238672876087021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188374 (A001951 (n + 1) + A001951 n + 1).toNat

end

end A327177.P13449238672876087021

namespace A327177

/-- `A188374(A001951(n+1)+A001951(n)+1)` -/
def P13449238672876087021.Spec : Prop :=
  ∀ n, P13449238672876087021.a n = A327177 n

end A327177

/-! ## A327177.P12979784358669233501

`A188297(A191407(n))`
-/

namespace A327177.P12979784358669233501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188297 (A191407 n).toNat

end

end A327177.P12979784358669233501

namespace A327177

/-- `A188297(A191407(n))` -/
def P12979784358669233501.Spec : Prop :=
  ∀ n, P12979784358669233501.a n = A327177 n

end A327177

/-! ## A327177.P14472378740113718432

`A188297(A001951(n+3)+A001951(n))`
-/

namespace A327177.P14472378740113718432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188297 (A001951 (n + 3) + A001951 n).toNat

end

end A327177.P14472378740113718432

namespace A327177

/-- `A188297(A001951(n+3)+A001951(n))` -/
def P14472378740113718432.Spec : Prop :=
  ∀ n, P14472378740113718432.a n = A327177 n

end A327177

/-!
# A327178: Positions of 0's in {A327177(n) : n > 0}.

The programs for A327178, the canonical program `A327178.P10784989447855658781` is in `Seq.B004.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A327178 has offset 1).

The definition of A327178 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4997 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A327178.P10784989447855658781

`lt[n*A327177(n), n]`

The canonical program, it is in `Seq.B004.C003`.
-/

namespace A327178

/-- `lt[n*A327177(n), n]` -/
def P10784989447855658781.Spec : Prop :=
  ∀ n, (P10784989447855658781.a n : ℤ) = A327178 (n + 1)

theorem P10784989447855658781.correct : P10784989447855658781.Spec := by
  intro n
  simp only [A327178, Nat.add_sub_cancel]

end A327178

/-! ## A327178.P8017053965612116119

`lt[A327177(n+1), 1]+1`
-/

namespace A327178.P8017053965612116119
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327177 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A327178.P8017053965612116119

namespace A327178

/-- `lt[A327177(n+1), 1]+1` -/
def P8017053965612116119.Spec : Prop :=
  ∀ n, (P8017053965612116119.a n : ℤ) = A327178 (n + 1)

end A327178

/-! ## A327178.P1269395450449365870

`eq[A000038(n), A327177(n)]`
-/

namespace A327178.P1269395450449365870
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327177 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A327178.P1269395450449365870

namespace A327178

/-- `eq[A000038(n), A327177(n)]` -/
def P1269395450449365870.Spec : Prop :=
  ∀ n, (P1269395450449365870.a n : ℤ) = A327178 (n + 1)

end A327178

/-! ## A327178.P8069074551186231346

`eq[A000007(n), A327177(n)]`
-/

namespace A327178.P8069074551186231346
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327177 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A327178.P8069074551186231346

namespace A327178

/-- `eq[A000007(n), A327177(n)]` -/
def P8069074551186231346.Spec : Prop :=
  ∀ n, (P8069074551186231346.a n : ℤ) = A327178 (n + 1)

end A327178

/-! ## A327178.P1580801420956494268

`eq[A130706(n), A327177(n)]`
-/

namespace A327178.P1580801420956494268
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130706 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327177 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A327178.P1580801420956494268

namespace A327178

/-- `eq[A130706(n), A327177(n)]` -/
def P1580801420956494268.Spec : Prop :=
  ∀ n, (P1580801420956494268.a n : ℤ) = A327178 (n + 1)

end A327178

/-! ## A327178.P2800723524583550063

`eq[A166926(n), A327177(n)]`
-/

namespace A327178.P2800723524583550063
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166926 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327177 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A327178.P2800723524583550063

namespace A327178

/-- `eq[A166926(n), A327177(n)]` -/
def P2800723524583550063.Spec : Prop :=
  ∀ n, (P2800723524583550063.a n : ℤ) = A327178 (n + 1)

end A327178

/-! ## A327178.P12827217667273499905

`eq[A167891(n), A327177(n)]`
-/

namespace A327178.P12827217667273499905
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167891 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327177 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A327178.P12827217667273499905

namespace A327178

/-- `eq[A167891(n), A327177(n)]` -/
def P12827217667273499905.Spec : Prop :=
  ∀ n, (P12827217667273499905.a n : ℤ) = A327178 (n + 1)

end A327178

/-! ## A327178.P12804583763901816123

`eq[A169585(n), A327177(n)]`
-/

namespace A327178.P12804583763901816123
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169585 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327177 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A327178.P12804583763901816123

namespace A327178

/-- `eq[A169585(n), A327177(n)]` -/
def P12804583763901816123.Spec : Prop :=
  ∀ n, (P12804583763901816123.a n : ℤ) = A327178 (n + 1)

end A327178

/-! ## A327178.P16819224329179925674

`eq[1, A327177(n)+A054977(n)]`
-/

namespace A327178.P16819224329179925674
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327177 n + A054977 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A327178.P16819224329179925674

namespace A327178

/-- `eq[1, A327177(n)+A054977(n)]` -/
def P16819224329179925674.Spec : Prop :=
  ∀ n, (P16819224329179925674.a n : ℤ) = A327178 (n + 1)

end A327178

/-! ## A327178.P12216542319867374744

`eq[A154955(n+1), A327177(n)]`
-/

namespace A327178.P12216542319867374744
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154955 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327177 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A327178.P12216542319867374744

namespace A327178

/-- `eq[A154955(n+1), A327177(n)]` -/
def P12216542319867374744.Spec : Prop :=
  ∀ n, (P12216542319867374744.a n : ℤ) = A327178 (n + 1)

end A327178

/-! ## A327178.P6458804914493668179

`eq[1, A327177(n)+A158388(n)]`
-/

namespace A327178.P6458804914493668179
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327177 n + A158388 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A327178.P6458804914493668179

namespace A327178

/-- `eq[1, A327177(n)+A158388(n)]` -/
def P6458804914493668179.Spec : Prop :=
  ∀ n, (P6458804914493668179.a n : ℤ) = A327178 (n + 1)

end A327178

/-! ## A327178.P9273604816940176101

`eq[A173012(n+1), A327177(n)]`
-/

namespace A327178.P9273604816940176101
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173012 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327177 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A327178.P9273604816940176101

namespace A327178

/-- `eq[A173012(n+1), A327177(n)]` -/
def P9273604816940176101.Spec : Prop :=
  ∀ n, (P9273604816940176101.a n : ℤ) = A327178 (n + 1)

end A327178

/-! ## A327178.P15070080524197001576

`eq[A285476(n), A327177(n)]`
-/

namespace A327178.P15070080524197001576
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285476 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327177 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A327178.P15070080524197001576

namespace A327178

/-- `eq[A285476(n), A327177(n)]` -/
def P15070080524197001576.Spec : Prop :=
  ∀ n, (P15070080524197001576.a n : ℤ) = A327178 (n + 1)

end A327178

/-! ## A327178.P18267331802096065542

`eq[A138330(n+1), A144611(2*n)]`
-/

namespace A327178.P18267331802096065542
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138330 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144611 (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A327178.P18267331802096065542

namespace A327178

/-- `eq[A138330(n+1), A144611(2*n)]` -/
def P18267331802096065542.Spec : Prop :=
  ∀ n, (P18267331802096065542.a n : ℤ) = A327178 (n + 1)

end A327178

/-! ## A327178.P16288325313387789620

`eq[A080763(A001951(n)+1), A097509(2*n)]`
-/

namespace A327178.P16288325313387789620
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080763 (A001951 n + 1).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097509 (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A327178.P16288325313387789620

namespace A327178

/-- `eq[A080763(A001951(n)+1), A097509(2*n)]` -/
def P16288325313387789620.Spec : Prop :=
  ∀ n, (P16288325313387789620.a n : ℤ) = A327178 (n + 1)

end A327178

/-! ## A327178.P8608543256447399626

`eq[A083035(2*n+1), A144611(n)]`
-/

namespace A327178.P8608543256447399626
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083035 (2 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144611 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A327178.P8608543256447399626

namespace A327178

/-- `eq[A083035(2*n+1), A144611(n)]` -/
def P8608543256447399626.Spec : Prop :=
  ∀ n, (P8608543256447399626.a n : ℤ) = A327178 (n + 1)

end A327178

/-! ## A327178.P12274322906946738943

`eq[A144611(2*n)*A324772(2*n+1), A144611(2*n+1)]`
-/

namespace A327178.P12274322906946738943
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144611 (2 * n) * A324772 (2 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144611 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A327178.P12274322906946738943

namespace A327178

/-- `eq[A144611(2*n)*A324772(2*n+1), A144611(2*n+1)]` -/
def P12274322906946738943.Spec : Prop :=
  ∀ n, (P12274322906946738943.a n : ℤ) = A327178 (n + 1)

end A327178

/-! ## A327178.P12268764454808844489

`eq[A006337(A001954(n)+1), A097509(2*n)]`
-/

namespace A327178.P12268764454808844489
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006337 (A001954 n + 1).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097509 (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A327178.P12268764454808844489

namespace A327178

/-- `eq[A006337(A001954(n)+1), A097509(2*n)]` -/
def P12268764454808844489.Spec : Prop :=
  ∀ n, (P12268764454808844489.a n : ℤ) = A327178 (n + 1)

end A327178

/-!
# A327179: Positions of 1's in {A327177(n) : n > 0}.

The programs for A327179, the canonical program `A327179.P1020334519859577474` is in `Seq.B004.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A327179 has offset 1).

The definition of A327179 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5003 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A327179.P1020334519859577474

`lt[0, A327177(n)]`

The canonical program, it is in `Seq.B004.C003`.
-/

namespace A327179

/-- `lt[0, A327177(n)]` -/
def P1020334519859577474.Spec : Prop :=
  ∀ n, (P1020334519859577474.a n : ℤ) = A327179 (n + 1)

theorem P1020334519859577474.correct : P1020334519859577474.Spec := by
  intro n
  simp only [A327179, Nat.add_sub_cancel]

end A327179

/-! ## A327179.P1018725737190244826

`filter[n+1, A327177(#)]`
-/

namespace A327179.P1018725737190244826
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A327177 (f1 j) = 1) n)

end

end A327179.P1018725737190244826

namespace A327179

/-- `filter[n+1, A327177(#)]` -/
def P1018725737190244826.Spec : Prop :=
  ∀ n, (P1018725737190244826.a n : ℤ) = A327179 (n + 1)

end A327179

/-! ## A327179.P11043757707918262048

`eq[A054977(n), A327177(n)]`
-/

namespace A327179.P11043757707918262048
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054977 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327177 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A327179.P11043757707918262048

namespace A327179

/-- `eq[A054977(n), A327177(n)]` -/
def P11043757707918262048.Spec : Prop :=
  ∀ n, (P11043757707918262048.a n : ℤ) = A327179 (n + 1)

end A327179

/-! ## A327179.P6375387078918466766

`eq[A158388(n), A327177(n)]`
-/

namespace A327179.P6375387078918466766
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158388 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327177 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A327179.P6375387078918466766

namespace A327179

/-- `eq[A158388(n), A327177(n)]` -/
def P6375387078918466766.Spec : Prop :=
  ∀ n, (P6375387078918466766.a n : ℤ) = A327179 (n + 1)

end A327179

/-! ## A327179.P4802632760982106566

`eq[1, A327177(n*A327177(n))]`
-/

namespace A327179.P4802632760982106566
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327177 ((n : ℤ) * A327177 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A327179.P4802632760982106566

namespace A327179

/-- `eq[1, A327177(n*A327177(n))]` -/
def P4802632760982106566.Spec : Prop :=
  ∀ n, (P4802632760982106566.a n : ℤ) = A327179 (n + 1)

end A327179

/-! ## A327179.P2668508676374945492

`eq[(A000038(n)-1)², A327177(n)]`
-/

namespace A327179.P2668508676374945492
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000038 n - 1) ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327177 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A327179.P2668508676374945492

namespace A327179

/-- `eq[(A000038(n)-1)², A327177(n)]` -/
def P2668508676374945492.Spec : Prop :=
  ∀ n, (P2668508676374945492.a n : ℤ) = A327179 (n + 1)

end A327179

/-! ## A327179.P8155182112766598487

`lt[A006337(2*n+1), A188038(n+2)+1]`
-/

namespace A327179.P8155182112766598487
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006337 (2 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188038 (n + 2) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A327179.P8155182112766598487

namespace A327179

/-- `lt[A006337(2*n+1), A188038(n+2)+1]` -/
def P8155182112766598487.Spec : Prop :=
  ∀ n, (P8155182112766598487.a n : ℤ) = A327179 (n + 1)

end A327179

/-! ## A327179.P11311956647704985564

`lt[A097509(2*n+1), A188038(n+2)+2]`
-/

namespace A327179.P11311956647704985564
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097509 (2 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188038 (n + 2) + 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A327179.P11311956647704985564

namespace A327179

/-- `lt[A097509(2*n+1), A188038(n+2)+2]` -/
def P11311956647704985564.Spec : Prop :=
  ∀ n, (P11311956647704985564.a n : ℤ) = A327179 (n + 1)

end A327179

/-! ## A327179.P5770823816534748628

`eq[A188037(2*(n+1))+1, A188295(2*n+1)]`
-/

namespace A327179.P5770823816534748628
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188037 (2 * (n + 1)) + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188295 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A327179.P5770823816534748628

namespace A327179

/-- `eq[A188037(2*(n+1))+1, A188295(2*n+1)]` -/
def P5770823816534748628.Spec : Prop :=
  ∀ n, (P5770823816534748628.a n : ℤ) = A327179 (n + 1)

end A327179

/-! ## A327179.P2094895494912542063

`lt[A188038(n+1), A006337(A004277(n))]`
-/

namespace A327179.P2094895494912542063
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188038 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006337 (A004277 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A327179.P2094895494912542063

namespace A327179

/-- `lt[A188038(n+1), A006337(A004277(n))]` -/
def P2094895494912542063.Spec : Prop :=
  ∀ n, (P2094895494912542063.a n : ℤ) = A327179 (n + 1)

end A327179

/-! ## A327179.P15263699891155619214

`eq[A188041(2*(n+1))+A188038(2*n+1), A188038(n+2)]`
-/

namespace A327179.P15263699891155619214
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188041 (2 * (n + 1)) + A188038 (2 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188038 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A327179.P15263699891155619214

namespace A327179

/-- `eq[A188041(2*(n+1))+A188038(2*n+1), A188038(n+2)]` -/
def P15263699891155619214.Spec : Prop :=
  ∀ n, (P15263699891155619214.a n : ℤ) = A327179 (n + 1)

end A327179

/-! ## A327179.P14202120631892464713

`lt[A171588(A001953(2*n+1)), A188295(2*n+1)]`
-/

namespace A327179.P14202120631892464713
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171588 (A001953 (2 * n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188295 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A327179.P14202120631892464713

namespace A327179

/-- `lt[A171588(A001953(2*n+1)), A188295(2*n+1)]` -/
def P14202120631892464713.Spec : Prop :=
  ∀ n, (P14202120631892464713.a n : ℤ) = A327179 (n + 1)

end A327179

/-! ## A327179.P12900552714976911467

`eq[1, A059648(A001952(n+1)+A001951(n))]`
-/

namespace A327179.P12900552714976911467
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059648 (A001952 (n + 1) + A001951 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A327179.P12900552714976911467

namespace A327179

/-- `eq[1, A059648(A001952(n+1)+A001951(n))]` -/
def P12900552714976911467.Spec : Prop :=
  ∀ n, (P12900552714976911467.a n : ℤ) = A327179 (n + 1)

end A327179

/-! ## A327179.P12624155741953337689

`eq[1, A080763(A001952(n+1)+A001951(n))]`
-/

namespace A327179.P12624155741953337689
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080763 (A001952 (n + 1) + A001951 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A327179.P12624155741953337689

namespace A327179

/-- `eq[1, A080763(A001952(n+1)+A001951(n))]` -/
def P12624155741953337689.Spec : Prop :=
  ∀ n, (P12624155741953337689.a n : ℤ) = A327179 (n + 1)

end A327179

/-!
# A327180: a(n) = [(2n+1)r] - [(n+1)r] - [nr], where [ ] = floor and r = sqrt(3).

The programs for A327180, the canonical program `A327180.P17620113074031336904` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A327180 has offset 0).

The definition of A327180 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A327180.P14457770208520557551

`char[A327182(n+1)]`
-/

namespace A327180.P14457770208520557551
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327182 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A327180.P14457770208520557551

namespace A327180

/-- `char[A327182(n+1)]` -/
def P14457770208520557551.Spec : Prop :=
  ∀ n, (P14457770208520557551.a n : ℤ) = A327180 n

end A327180

/-! ## A327180.P7710766873524643520

`1-char[n*char[A327181(n+1)]]`
-/

namespace A327180.P7710766873524643520
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327181 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * (if ∃ j, f2 j = (n : ℤ) then 1 else 0)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A327180.P7710766873524643520

namespace A327180

/-- `1-char[n*char[A327181(n+1)]]` -/
def P7710766873524643520.Spec : Prop :=
  ∀ n, P7710766873524643520.a n = A327180 n

end A327180

/-! ## A327180.P17620113074031336904

`A188068(n+2)*A188068(Δ[n²])`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A327180

/-- `A188068(n+2)*A188068(Δ[n²])` -/
def P17620113074031336904.Spec : Prop :=
  ∀ n, P17620113074031336904.a n = A327180 n

theorem P17620113074031336904.correct : P17620113074031336904.Spec := by
  intro n
  simp only [A327180]

end A327180

/-! ## A327180.P14647401852469495279

`Δ[A182778(n+1)]%A080757(2*n)`
-/

namespace A327180.P14647401852469495279
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182778 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (n + 1) - f1 n) (A080757 (2 * n))

end

end A327180.P14647401852469495279

namespace A327180

/-- `Δ[A182778(n+1)]%A080757(2*n)` -/
def P14647401852469495279.Spec : Prop :=
  ∀ n, P14647401852469495279.a n = A327180 n

end A327180

/-! ## A327180.P6936540174652022825

`A188068(2*n+1)*A188082(n+1)`
-/

namespace A327180.P6936540174652022825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188068 (2 * n + 1) * A188082 (n + 1)

end

end A327180.P6936540174652022825

namespace A327180

/-- `A188068(2*n+1)*A188082(n+1)` -/
def P6936540174652022825.Spec : Prop :=
  ∀ n, P6936540174652022825.a n = A327180 n

end A327180

/-! ## A327180.P751781943429959507

`gcd(A080757(2*n), A080757(n+1))-1`
-/

namespace A327180.P751781943429959507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.gcd (A080757 (2 * n)) (A080757 (n + 1)) : ℤ) - 1

end

end A327180.P751781943429959507

namespace A327180

/-- `gcd(A080757(2*n), A080757(n+1))-1` -/
def P751781943429959507.Spec : Prop :=
  ∀ n, P751781943429959507.a n = A327180 n

end A327180

/-! ## A327180.P6822039673741105398

`and(A188068(n+2), A188068(2*n+1))`
-/

namespace A327180.P6822039673741105398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A188068 (n + 2)) (A188068 (2 * n + 1))

end

end A327180.P6822039673741105398

namespace A327180

/-- `and(A188068(n+2), A188068(2*n+1))` -/
def P6822039673741105398.Spec : Prop :=
  ∀ n, P6822039673741105398.a n = A327180 n

end A327180

/-! ## A327180.P205770393964245450

`and(A007538(2*n+1)², A007538(n+2))`
-/

namespace A327180.P205770393964245450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A007538 (2 * n + 1) ^ 2) (A007538 (n + 2))

end

end A327180.P205770393964245450

namespace A327180

/-- `and(A007538(2*n+1)², A007538(n+2))` -/
def P205770393964245450.Spec : Prop :=
  ∀ n, P205770393964245450.a n = A327180 n

end A327180

/-! ## A327180.P17526934519302445060

`val(A007538(2*n+1)+A007538(n+2), A007538(2*(n+1)))`
-/

namespace A327180.P17526934519302445060
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A007538 (2 * n + 1) + A007538 (n + 2)).toNat (A007538 (2 * (n + 1))).toNat

end

end A327180.P17526934519302445060

namespace A327180

/-- `val(A007538(2*n+1)+A007538(n+2), A007538(2*(n+1)))` -/
def P17526934519302445060.Spec : Prop :=
  ∀ n, (P17526934519302445060.a n : ℤ) = A327180 n

end A327180

/-! ## A327180.P4327937346872265161

`A188068(A188069(n+1)+A003512(n+1))`
-/

namespace A327180.P4327937346872265161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188068 (A188069 (n + 1) + A003512 (n + 1)).toNat

end

end A327180.P4327937346872265161

namespace A327180

/-- `A188068(A188069(n+1)+A003512(n+1))` -/
def P4327937346872265161.Spec : Prop :=
  ∀ n, P4327937346872265161.a n = A327180 n

end A327180

/-! ## A327180.P11104032760953502787

`A275855(A188069(n+1)+A188069(n+2))`
-/

namespace A327180.P11104032760953502787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275855 (A188069 (n + 1) + A188069 (n + 2)).toNat

end

end A327180.P11104032760953502787

namespace A327180

/-- `A275855(A188069(n+1)+A188069(n+2))` -/
def P11104032760953502787.Spec : Prop :=
  ∀ n, P11104032760953502787.a n = A327180 n

end A327180

/-! ## A327180.P1857320861734455320

`A007538(A188069(n+1)+A003512(n+1))-2`
-/

namespace A327180.P1857320861734455320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007538 (A188069 (n + 1) + A003512 (n + 1)).toNat - 2

end

end A327180.P1857320861734455320

namespace A327180

/-- `A007538(A188069(n+1)+A003512(n+1))-2` -/
def P1857320861734455320.Spec : Prop :=
  ∀ n, P1857320861734455320.a n = A327180 n

end A327180

/-!
# A327181: Positions of 0's in {A327180(n) : n > 0}.

The programs for A327181, the canonical program `A327181.P1963751843994086053` is in `Seq.B003.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A327181 has offset 1).

The definition of A327181 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4998 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A327181.P1963751843994086053

`lt[n*A327180(n), n]`

The canonical program, it is in `Seq.B003.C004`.
-/

namespace A327181

/-- `lt[n*A327180(n), n]` -/
def P1963751843994086053.Spec : Prop :=
  ∀ n, (P1963751843994086053.a n : ℤ) = A327181 (n + 1)

theorem P1963751843994086053.correct : P1963751843994086053.Spec := by
  intro n
  simp only [A327181, Nat.add_sub_cancel]

end A327181

/-! ## A327181.P12009249103430675472

`eq[0, A327180(n+1)]+1`
-/

namespace A327181.P12009249103430675472
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327180 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A327181.P12009249103430675472

namespace A327181

/-- `eq[0, A327180(n+1)]+1` -/
def P12009249103430675472.Spec : Prop :=
  ∀ n, (P12009249103430675472.a n : ℤ) = A327181 (n + 1)

end A327181

/-! ## A327181.P15300968078230493628

`eq[A000038(n), A327180(n)]`
-/

namespace A327181.P15300968078230493628
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327180 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A327181.P15300968078230493628

namespace A327181

/-- `eq[A000038(n), A327180(n)]` -/
def P15300968078230493628.Spec : Prop :=
  ∀ n, (P15300968078230493628.a n : ℤ) = A327181 (n + 1)

end A327181

/-! ## A327181.P5236235947893663311

`eq[A105348(2*n), A327180(n)]`
-/

namespace A327181.P5236235947893663311
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105348 (2 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327180 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A327181.P5236235947893663311

namespace A327181

/-- `eq[A105348(2*n), A327180(n)]` -/
def P5236235947893663311.Spec : Prop :=
  ∀ n, (P5236235947893663311.a n : ℤ) = A327181 (n + 1)

end A327181

/-! ## A327181.P7491730239100944374

`lt[A327180(n), n/A158187(n)]`
-/

namespace A327181.P7491730239100944374
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327180 n

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / (A158187 n : ℚ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℚ) < f2 j) n

end

end A327181.P7491730239100944374

namespace A327181

/-- `lt[A327180(n), n/A158187(n)]` -/
def P7491730239100944374.Spec : Prop :=
  ∀ n, (P7491730239100944374.a n : ℤ) = A327181 (n + 1)

end A327181

/-! ## A327181.P13882294632243762336

`eq[A096268(A004016(n)), A327180(n)]`
-/

namespace A327181.P13882294632243762336
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096268 (A004016 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327180 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A327181.P13882294632243762336

namespace A327181

/-- `eq[A096268(A004016(n)), A327180(n)]` -/
def P13882294632243762336.Spec : Prop :=
  ∀ n, (P13882294632243762336.a n : ℤ) = A327181 (n + 1)

end A327181

/-! ## A327181.P7785606243864526251

`eq[A317839(A001316(n)), A327180(n)]`
-/

namespace A327181.P7785606243864526251
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317839 (A001316 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327180 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A327181.P7785606243864526251

namespace A327181

/-- `eq[A317839(A001316(n)), A327180(n)]` -/
def P7785606243864526251.Spec : Prop :=
  ∀ n, (P7785606243864526251.a n : ℤ) = A327181 (n + 1)

end A327181

/-! ## A327181.P15648171453916923721

`eq[A000007(n), A327180(n)]`
-/

namespace A327181.P15648171453916923721
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327180 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A327181.P15648171453916923721

namespace A327181

/-- `eq[A000007(n), A327180(n)]` -/
def P15648171453916923721.Spec : Prop :=
  ∀ n, (P15648171453916923721.a n : ℤ) = A327181 (n + 1)

end A327181

/-! ## A327181.P1992842748070290387

`eq[A130706(n), A327180(n)]`
-/

namespace A327181.P1992842748070290387
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130706 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327180 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A327181.P1992842748070290387

namespace A327181

/-- `eq[A130706(n), A327180(n)]` -/
def P1992842748070290387.Spec : Prop :=
  ∀ n, (P1992842748070290387.a n : ℤ) = A327181 (n + 1)

end A327181

/-! ## A327181.P5308482763640091521

`eq[A169585(n), A327180(n)]`
-/

namespace A327181.P5308482763640091521
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169585 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327180 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A327181.P5308482763640091521

namespace A327181

/-- `eq[A169585(n), A327180(n)]` -/
def P5308482763640091521.Spec : Prop :=
  ∀ n, (P5308482763640091521.a n : ℤ) = A327181 (n + 1)

end A327181

/-! ## A327181.P15357306787843820723

`eq[1, A327180(n)+A054977(n)]`
-/

namespace A327181.P15357306787843820723
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327180 n + A054977 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A327181.P15357306787843820723

namespace A327181

/-- `eq[1, A327180(n)+A054977(n)]` -/
def P15357306787843820723.Spec : Prop :=
  ∀ n, (P15357306787843820723.a n : ℤ) = A327181 (n + 1)

end A327181

/-! ## A327181.P1929738840961425856

`eq[A154955(n+1), A327180(n)]`
-/

namespace A327181.P1929738840961425856
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154955 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327180 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A327181.P1929738840961425856

namespace A327181

/-- `eq[A154955(n+1), A327180(n)]` -/
def P1929738840961425856.Spec : Prop :=
  ∀ n, (P1929738840961425856.a n : ℤ) = A327181 (n + 1)

end A327181

/-! ## A327181.P3101768397363733956

`eq[1, A327180(n)+A158388(n)]`
-/

namespace A327181.P3101768397363733956
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327180 n + A158388 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A327181.P3101768397363733956

namespace A327181

/-- `eq[1, A327180(n)+A158388(n)]` -/
def P3101768397363733956.Spec : Prop :=
  ∀ n, (P3101768397363733956.a n : ℤ) = A327181 (n + 1)

end A327181

/-! ## A327181.P8599939868805499459

`eq[A082564(n)%2, A327180(n)]`
-/

namespace A327181.P8599939868805499459
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A082564 n) 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327180 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A327181.P8599939868805499459

namespace A327181

/-- `eq[A082564(n)%2, A327180(n)]` -/
def P8599939868805499459.Spec : Prop :=
  ∀ n, (P8599939868805499459.a n : ℤ) = A327181 (n + 1)

end A327181

/-! ## A327181.P17217626617321075537

`lt[A327180(n), char[A327162(n+1)]]`
-/

namespace A327181.P17217626617321075537
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327180 n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327162 (n + 1)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A327181.P17217626617321075537

namespace A327181

/-- `lt[A327180(n), char[A327162(n+1)]]` -/
def P17217626617321075537.Spec : Prop :=
  ∀ n, (P17217626617321075537.a n : ℤ) = A327181 (n + 1)

end A327181

/-! ## A327181.P8980489830999855135

`lt[A327180(n), n/A079079(n+1)]`
-/

namespace A327181.P8980489830999855135
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327180 n

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / (A079079 (n + 1) : ℚ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℚ) < f2 j) n

end

end A327181.P8980489830999855135

namespace A327181

/-- `lt[A327180(n), n/A079079(n+1)]` -/
def P8980489830999855135.Spec : Prop :=
  ∀ n, (P8980489830999855135.a n : ℤ) = A327181 (n + 1)

end A327181

/-! ## A327181.P664535445462768164

`lt[A327180(n), n/A000040(n+2)]`
-/

namespace A327181.P664535445462768164
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327180 n

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / (A000040 (n + 2) : ℚ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℚ) < f2 j) n

end

end A327181.P664535445462768164

namespace A327181

/-- `lt[A327180(n), n/A000040(n+2)]` -/
def P664535445462768164.Spec : Prop :=
  ∀ n, (P664535445462768164.a n : ℤ) = A327181 (n + 1)

end A327181

/-!
# A327182: Positions of 1's in {A327180(n) : n > 0}.

The programs for A327182, the canonical program `A327182.P8957837183894890012` is in `Seq.B003.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A327182 has offset 1).

The definition of A327182 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5002 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A327182.P8957837183894890012

`lt[0, A327180(n)]`

The canonical program, it is in `Seq.B003.C004`.
-/

namespace A327182

/-- `lt[0, A327180(n)]` -/
def P8957837183894890012.Spec : Prop :=
  ∀ n, (P8957837183894890012.a n : ℤ) = A327182 (n + 1)

theorem P8957837183894890012.correct : P8957837183894890012.Spec := by
  intro n
  simp only [A327182, Nat.add_sub_cancel]

end A327182

/-! ## A327182.P9879167653042378719

`filter[n+1, A327180(#)]`
-/

namespace A327182.P9879167653042378719
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A327180 (f1 j) = 1) n)

end

end A327182.P9879167653042378719

namespace A327182

/-- `filter[n+1, A327180(#)]` -/
def P9879167653042378719.Spec : Prop :=
  ∀ n, (P9879167653042378719.a n : ℤ) = A327182 (n + 1)

end A327182

/-! ## A327182.P6002963320894440687

`eq[1, A327180(n+1)]+1`
-/

namespace A327182.P6002963320894440687
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327180 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A327182.P6002963320894440687

namespace A327182

/-- `eq[1, A327180(n+1)]+1` -/
def P6002963320894440687.Spec : Prop :=
  ∀ n, (P6002963320894440687.a n : ℤ) = A327182 (n + 1)

end A327182

/-! ## A327182.P7618890603607983086

`eq[A054977(n), A327180(n)]`
-/

namespace A327182.P7618890603607983086
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054977 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327180 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A327182.P7618890603607983086

namespace A327182

/-- `eq[A054977(n), A327180(n)]` -/
def P7618890603607983086.Spec : Prop :=
  ∀ n, (P7618890603607983086.a n : ℤ) = A327182 (n + 1)

end A327182

/-! ## A327182.P5402192471332966596

`eq[A158388(n), A327180(n)]`
-/

namespace A327182.P5402192471332966596
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158388 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327180 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A327182.P5402192471332966596

namespace A327182

/-- `eq[A158388(n), A327180(n)]` -/
def P5402192471332966596.Spec : Prop :=
  ∀ n, (P5402192471332966596.a n : ℤ) = A327182 (n + 1)

end A327182

/-! ## A327182.P2307606382381139572

`eq[A327180(n), A329684(n)]`
-/

namespace A327182.P2307606382381139572
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327180 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329684 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A327182.P2307606382381139572

namespace A327182

/-- `eq[A327180(n), A329684(n)]` -/
def P2307606382381139572.Spec : Prop :=
  ∀ n, (P2307606382381139572.a n : ℤ) = A327182 (n + 1)

end A327182

/-! ## A327182.P17252885189298902328

`eq[1, A327180(n*A327180(n))]`
-/

namespace A327182.P17252885189298902328
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327180 ((n : ℤ) * A327180 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A327182.P17252885189298902328

namespace A327182

/-- `eq[1, A327180(n*A327180(n))]` -/
def P17252885189298902328.Spec : Prop :=
  ∀ n, (P17252885189298902328.a n : ℤ) = A327182 (n + 1)

end A327182

/-! ## A327182.P12824626648581491028

`eq[(A000038(n)-1)², A327180(n)]`
-/

namespace A327182.P12824626648581491028
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000038 n - 1) ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327180 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A327182.P12824626648581491028

namespace A327182

/-- `eq[(A000038(n)-1)², A327180(n)]` -/
def P12824626648581491028.Spec : Prop :=
  ∀ n, (P12824626648581491028.a n : ℤ) = A327182 (n + 1)

end A327182

/-! ## A327182.P3014386021255643393

`eq[A014574(n+1)%3, char[A327181(n+1)]]`
-/

namespace A327182.P3014386021255643393
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A014574 (n + 1)) 3

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327181 (n + 1)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = (f2 j : ℤ)) n

end

end A327182.P3014386021255643393

namespace A327182

/-- `eq[A014574(n+1)%3, char[A327181(n+1)]]` -/
def P3014386021255643393.Spec : Prop :=
  ∀ n, (P3014386021255643393.a n : ℤ) = A327182 (n + 1)

end A327182

/-! ## A327182.P12353080272811275304

`record[A004442(A004442(n)*A327180(n))]`
-/

namespace A327182.P12353080272811275304
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004442 (A004442 n * A327180 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A327182.P12353080272811275304

namespace A327182

/-- `record[A004442(A004442(n)*A327180(n))]` -/
def P12353080272811275304.Spec : Prop :=
  ∀ n, P12353080272811275304.a n = A327182 (n + 1)

end A327182

/-! ## A327182.P16332622762334696189

`eq[A275855(n+2)+2, A080757(2*n)]`
-/

namespace A327182.P16332622762334696189
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275855 (n + 2) + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080757 (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A327182.P16332622762334696189

namespace A327182

/-- `eq[A275855(n+2)+2, A080757(2*n)]` -/
def P16332622762334696189.Spec : Prop :=
  ∀ n, (P16332622762334696189.a n : ℤ) = A327182 (n + 1)

end A327182

/-! ## A327182.P17522007432083013380

`lt[A275855(n+2), A188068(2*n+1)]`
-/

namespace A327182.P17522007432083013380
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275855 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188068 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A327182.P17522007432083013380

namespace A327182

/-- `lt[A275855(n+2), A188068(2*n+1)]` -/
def P17522007432083013380.Spec : Prop :=
  ∀ n, (P17522007432083013380.a n : ℤ) = A327182 (n + 1)

end A327182

/-! ## A327182.P10493062685657196993

`lt[2, A080757(2*n)*A080757(n+1)]`
-/

namespace A327182.P10493062685657196993
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080757 (2 * n) * A080757 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A327182.P10493062685657196993

namespace A327182

/-- `lt[2, A080757(2*n)*A080757(n+1)]` -/
def P10493062685657196993.Spec : Prop :=
  ∀ n, (P10493062685657196993.a n : ℤ) = A327182 (n + 1)

end A327182

/-! ## A327182.P12234811289706143271

`lt[1, A188068(2*n+1)+A188068(n+2)]`
-/

namespace A327182.P12234811289706143271
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188068 (2 * n + 1) + A188068 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A327182.P12234811289706143271

namespace A327182

/-- `lt[1, A188068(2*n+1)+A188068(n+2)]` -/
def P12234811289706143271.Spec : Prop :=
  ∀ n, (P12234811289706143271.a n : ℤ) = A327182 (n + 1)

end A327182

/-! ## A327182.P14554986835721113064

`eq[A188068(2*n+1), A245222(2*n+1)]`
-/

namespace A327182.P14554986835721113064
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188068 (2 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245222 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A327182.P14554986835721113064

namespace A327182

/-- `eq[A188068(2*n+1), A245222(2*n+1)]` -/
def P14554986835721113064.Spec : Prop :=
  ∀ n, (P14554986835721113064.a n : ℤ) = A327182 (n + 1)

end A327182

/-! ## A327182.P18010059364619125100

`eq[A275855(2*n+1)+A275855(n+2), A000007(n)]`
-/

namespace A327182.P18010059364619125100
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275855 (2 * n + 1) + A275855 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A327182.P18010059364619125100

namespace A327182

/-- `eq[A275855(2*n+1)+A275855(n+2), A000007(n)]` -/
def P18010059364619125100.Spec : Prop :=
  ∀ n, (P18010059364619125100.a n : ℤ) = A327182 (n + 1)

end A327182

/-!
# A327183: a(n) = [(2n+1)e] - [(n+1)e] - [ne], where [ ] = floor.

The programs for A327183, the canonical program `A327183.P5072092057238273237` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A327183 has offset 0).

The definition of A327183 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A327183.P9087135557590881190

`char[A327185(n+1)]`
-/

namespace A327183.P9087135557590881190
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327185 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A327183.P9087135557590881190

namespace A327183

/-- `char[A327185(n+1)]` -/
def P9087135557590881190.Spec : Prop :=
  ∀ n, (P9087135557590881190.a n : ℤ) = A327183 n

end A327183

/-! ## A327183.P18309646120553212148

`1-char[n*char[A327184(n+1)]]`
-/

namespace A327183.P18309646120553212148
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327184 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * (if ∃ j, f2 j = (n : ℤ) then 1 else 0)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A327183.P18309646120553212148

namespace A327183

/-- `1-char[n*char[A327184(n+1)]]` -/
def P18309646120553212148.Spec : Prop :=
  ∀ n, P18309646120553212148.a n = A327183 n

end A327183

/-! ## A327183.P9491762129405972888

`Δ[A194819(A028310(n))]`
-/

namespace A327183.P9491762129405972888
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194819 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A327183.P9491762129405972888

namespace A327183

/-- `Δ[A194819(A028310(n))]` -/
def P9491762129405972888.Spec : Prop :=
  ∀ n, P9491762129405972888.a n = A327183 n

end A327183

/-! ## A327183.P4067713351119226750

`A057427(n)-char[A327184(n+1)]`
-/

namespace A327183.P4067713351119226750
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327184 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A327183.P4067713351119226750

namespace A327183

/-- `A057427(n)-char[A327184(n+1)]` -/
def P4067713351119226750.Spec : Prop :=
  ∀ n, P4067713351119226750.a n = A327183 n

end A327183

/-! ## A327183.P5554003678837206577

`A194819(n+1)-A194819(A028310(n))`
-/

namespace A327183.P5554003678837206577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194819 (n + 1) - A194819 (A028310 n).toNat

end

end A327183.P5554003678837206577

namespace A327183

/-- `A194819(n+1)-A194819(A028310(n))` -/
def P5554003678837206577.Spec : Prop :=
  ∀ n, P5554003678837206577.a n = A327183 n

end A327183

/-! ## A327183.P1824401483181603211

`A001222(A006005(n+1))-char[A327184(n+1)]`
-/

namespace A327183.P1824401483181603211
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327184 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A006005 (n + 1)).toNat - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A327183.P1824401483181603211

namespace A327183

/-- `A001222(A006005(n+1))-char[A327184(n+1)]` -/
def P1824401483181603211.Spec : Prop :=
  ∀ n, P1824401483181603211.a n = A327183 n

end A327183

/-! ## A327183.P893670941204390399

`xor(char[A327184(n+1)], A057427(2*n))`
-/

namespace A327183.P893670941204390399
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327184 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) (A057427 (2 * n))

end

end A327183.P893670941204390399

namespace A327183

/-- `xor(char[A327184(n+1)], A057427(2*n))` -/
def P893670941204390399.Spec : Prop :=
  ∀ n, P893670941204390399.a n = A327183 n

end A327183

/-! ## A327183.P5072092057238273237

`A022843(2*n+1)-(A022843(n+1)+A022843(n))`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A327183

/-- `A022843(2*n+1)-(A022843(n+1)+A022843(n))` -/
def P5072092057238273237.Spec : Prop :=
  ∀ n, P5072092057238273237.a n = A327183 n

theorem P5072092057238273237.correct : P5072092057238273237.Spec := by
  intro n
  simp only [A327183]

end A327183

/-! ## A327183.P139764099681293440

`A084170(n*char[A327184(n+1)])%A084170(n)`
-/

namespace A327183.P139764099681293440
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327184 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A084170 (n * (if ∃ j, f1 j = (n : ℤ) then 1 else 0))) (A084170 n)

end

end A327183.P139764099681293440

namespace A327183

/-- `A084170(n*char[A327184(n+1)])%A084170(n)` -/
def P139764099681293440.Spec : Prop :=
  ∀ n, P139764099681293440.a n = A327183 n

end A327183

/-! ## A327183.P1634292373276892901

`A006457(n*char[A327184(n+1)])%A006457(n)`
-/

namespace A327183.P1634292373276892901
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327184 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A006457 (n * (if ∃ j, f1 j = (n : ℤ) then 1 else 0))) (A006457 n)

end

end A327183.P1634292373276892901

namespace A327183

/-- `A006457(n*char[A327184(n+1)])%A006457(n)` -/
def P1634292373276892901.Spec : Prop :=
  ∀ n, P1634292373276892901.a n = A327183 n

end A327183

/-!
# A327184: Positions of 0's in {A327183(n) : n > 0}.

The programs for A327184, the canonical program `A327184.P242452364317620198` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A327184 has offset 1).

The definition of A327184 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A327184.P242452364317620198

`lt[n*A327183(n), n]`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A327184

/-- `lt[n*A327183(n), n]` -/
def P242452364317620198.Spec : Prop :=
  ∀ n, (P242452364317620198.a n : ℤ) = A327184 (n + 1)

theorem P242452364317620198.correct : P242452364317620198.Spec := by
  intro n
  simp only [A327184, Nat.add_sub_cancel]

end A327184

/-! ## A327184.P5815976351850759759

`lt[n*char[A327185(n+1)], n]`
-/

namespace A327184.P5815976351850759759
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327185 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * (if ∃ j, f2 j = (n : ℤ) then 1 else 0)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f3 j) n

end

end A327184.P5815976351850759759

namespace A327184

/-- `lt[n*char[A327185(n+1)], n]` -/
def P5815976351850759759.Spec : Prop :=
  ∀ n, (P5815976351850759759.a n : ℤ) = A327184 (n + 1)

end A327184

/-! ## A327184.P1930245381589401507

`eq[1, A327183(n+1)+1]+1`
-/

namespace A327184.P1930245381589401507
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327183 (n + 1) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A327184.P1930245381589401507

namespace A327184

/-- `eq[1, A327183(n+1)+1]+1` -/
def P1930245381589401507.Spec : Prop :=
  ∀ n, (P1930245381589401507.a n : ℤ) = A327184 (n + 1)

end A327184

/-! ## A327184.P13901482504938754073

`eq[A130706(n), A327183(n)]`
-/

namespace A327184.P13901482504938754073
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130706 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327183 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A327184.P13901482504938754073

namespace A327184

/-- `eq[A130706(n), A327183(n)]` -/
def P13901482504938754073.Spec : Prop :=
  ∀ n, (P13901482504938754073.a n : ℤ) = A327184 (n + 1)

end A327184

/-! ## A327184.P3997555922867020909

`eq[A169585(n), A327183(n)]`
-/

namespace A327184.P3997555922867020909
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169585 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327183 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A327184.P3997555922867020909

namespace A327184

/-- `eq[A169585(n), A327183(n)]` -/
def P3997555922867020909.Spec : Prop :=
  ∀ n, (P3997555922867020909.a n : ℤ) = A327184 (n + 1)

end A327184

/-! ## A327184.P7243856093597952052

`eq[A154955(n+1), A327183(n)]`
-/

namespace A327184.P7243856093597952052
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154955 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327183 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A327184.P7243856093597952052

namespace A327184

/-- `eq[A154955(n+1), A327183(n)]` -/
def P7243856093597952052.Spec : Prop :=
  ∀ n, (P7243856093597952052.a n : ℤ) = A327184 (n + 1)

end A327184

/-! ## A327184.P13238383822456471739

`lt[A327183(n), char[A327162(n+1)]]`
-/

namespace A327184.P13238383822456471739
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327183 n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327162 (n + 1)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A327184.P13238383822456471739

namespace A327184

/-- `lt[A327183(n), char[A327162(n+1)]]` -/
def P13238383822456471739.Spec : Prop :=
  ∀ n, (P13238383822456471739.a n : ℤ) = A327184 (n + 1)

end A327184

/-! ## A327184.P16513038093494290971

`eq[A010875(A008458(n)), A327183(n)]`
-/

namespace A327184.P16513038093494290971
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010875 (A008458 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327183 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A327184.P16513038093494290971

namespace A327184

/-- `eq[A010875(A008458(n)), A327183(n)]` -/
def P16513038093494290971.Spec : Prop :=
  ∀ n, (P16513038093494290971.a n : ℤ) = A327184 (n + 1)

end A327184

/-! ## A327184.P17908270447795504150

`eq[A256480(A004016(n)), A327183(n)]`
-/

namespace A327184.P17908270447795504150
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256480 (A004016 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327183 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A327184.P17908270447795504150

namespace A327184

/-- `eq[A256480(A004016(n)), A327183(n)]` -/
def P17908270447795504150.Spec : Prop :=
  ∀ n, (P17908270447795504150.a n : ℤ) = A327184 (n + 1)

end A327184

/-! ## A327184.P4256532922928888445

`eq[A256480(A122857(n)), A327183(n)]`
-/

namespace A327184.P4256532922928888445
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256480 (A122857 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327183 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A327184.P4256532922928888445

namespace A327184

/-- `eq[A256480(A122857(n)), A327183(n)]` -/
def P4256532922928888445.Spec : Prop :=
  ∀ n, (P4256532922928888445.a n : ℤ) = A327184 (n + 1)

end A327184

/-! ## A327184.P13675849317872749246

`eq[A010054(A049116(n+1)), A327183(n)]`
-/

namespace A327184.P13675849317872749246
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 (A049116 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327183 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A327184.P13675849317872749246

namespace A327184

/-- `eq[A010054(A049116(n+1)), A327183(n)]` -/
def P13675849317872749246.Spec : Prop :=
  ∀ n, (P13675849317872749246.a n : ℤ) = A327184 (n + 1)

end A327184

/-! ## A327184.P3527145770878439291

`eq[A088157(A056924(n+1)), A327183(n)]`
-/

namespace A327184.P3527145770878439291
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088157 (A056924 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327183 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A327184.P3527145770878439291

namespace A327184

/-- `eq[A088157(A056924(n+1)), A327183(n)]` -/
def P3527145770878439291.Spec : Prop :=
  ∀ n, (P3527145770878439291.a n : ℤ) = A327184 (n + 1)

end A327184

/-! ## A327184.P2988562846973475209

`eq[A285476(n), A327183(n)]`
-/

namespace A327184.P2988562846973475209
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285476 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327183 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A327184.P2988562846973475209

namespace A327184

/-- `eq[A285476(n), A327183(n)]` -/
def P2988562846973475209.Spec : Prop :=
  ∀ n, (P2988562846973475209.a n : ℤ) = A327184 (n + 1)

end A327184

/-! ## A327184.P11118716970397221097

`eq[A146076(A275115(n+1)), A327183(n)]`
-/

namespace A327184.P11118716970397221097
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146076 (A275115 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327183 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A327184.P11118716970397221097

namespace A327184

/-- `eq[A146076(A275115(n+1)), A327183(n)]` -/
def P11118716970397221097.Spec : Prop :=
  ∀ n, (P11118716970397221097.a n : ℤ) = A327184 (n + 1)

end A327184

/-! ## A327184.P4014115238423086388

`eq[A010673(A008579(n)), A327183(n)]`
-/

namespace A327184.P4014115238423086388
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010673 (A008579 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327183 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A327184.P4014115238423086388

namespace A327184

/-- `eq[A010673(A008579(n)), A327183(n)]` -/
def P4014115238423086388.Spec : Prop :=
  ∀ n, (P4014115238423086388.a n : ℤ) = A327184 (n + 1)

end A327184

/-! ## A327184.P6299938586374171521

`eq[A023533(A017533(n)), A327183(n)]`
-/

namespace A327184.P6299938586374171521
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023533 (A017533 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327183 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A327184.P6299938586374171521

namespace A327184

/-- `eq[A023533(A017533(n)), A327183(n)]` -/
def P6299938586374171521.Spec : Prop :=
  ∀ n, (P6299938586374171521.a n : ℤ) = A327184 (n + 1)

end A327184

/-! ## A327184.P4211242825294078737

`eq[A073424(A184777(n+1)), A327183(n)]`
-/

namespace A327184.P4211242825294078737
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073424 (A184777 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327183 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A327184.P4211242825294078737

namespace A327184

/-- `eq[A073424(A184777(n+1)), A327183(n)]` -/
def P4211242825294078737.Spec : Prop :=
  ∀ n, (P4211242825294078737.a n : ℤ) = A327184 (n + 1)

end A327184

/-! ## A327184.P16191276537104668841

`eq[A000079(n)%2, A327183(n)]`
-/

namespace A327184.P16191276537104668841
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000079 n) 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327183 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A327184.P16191276537104668841

namespace A327184

/-- `eq[A000079(n)%2, A327183(n)]` -/
def P16191276537104668841.Spec : Prop :=
  ∀ n, (P16191276537104668841.a n : ℤ) = A327184 (n + 1)

end A327184

/-!
# A327185: Positions of 1's in {A327183(n) : n > 0}.

The programs for A327185, the canonical program `A327185.P8897625522565049644` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A327185 has offset 1).

The definition of A327185 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A327185.P8897625522565049644

`filter[n+1, A327183(#)]`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A327185

/-- `filter[n+1, A327183(#)]` -/
def P8897625522565049644.Spec : Prop :=
  ∀ n, (P8897625522565049644.a n : ℤ) = A327185 (n + 1)

theorem P8897625522565049644.correct : P8897625522565049644.Spec := by
  intro n
  simp only [A327185, Nat.add_sub_cancel]

end A327185

/-! ## A327185.P8601446500703251457

`lt[1, A327162(n+1)*A327183(n)]`
-/

namespace A327185.P8601446500703251457
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327162 (n + 1) * A327183 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A327185.P8601446500703251457

namespace A327185

/-- `lt[1, A327162(n+1)*A327183(n)]` -/
def P8601446500703251457.Spec : Prop :=
  ∀ n, (P8601446500703251457.a n : ℤ) = A327185 (n + 1)

end A327185

/-! ## A327185.P16743477292942681761

`eq[A327183(n), A329684(n)]`
-/

namespace A327185.P16743477292942681761
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327183 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329684 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A327185.P16743477292942681761

namespace A327185

/-- `eq[A327183(n), A329684(n)]` -/
def P16743477292942681761.Spec : Prop :=
  ∀ n, (P16743477292942681761.a n : ℤ) = A327185 (n + 1)

end A327185

/-! ## A327185.P4793770551043099662

`eq[A008458(n)*A327183(n), A008458(n)]`
-/

namespace A327185.P4793770551043099662
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n * A327183 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A327185.P4793770551043099662

namespace A327185

/-- `eq[A008458(n)*A327183(n), A008458(n)]` -/
def P4793770551043099662.Spec : Prop :=
  ∀ n, (P4793770551043099662.a n : ℤ) = A327185 (n + 1)

end A327185

/-! ## A327185.P12745483739950522869

`eq[A008579(n)*A327183(n), A008579(n)]`
-/

namespace A327185.P12745483739950522869
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008579 n * A327183 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008579 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A327185.P12745483739950522869

namespace A327185

/-- `eq[A008579(n)*A327183(n), A008579(n)]` -/
def P12745483739950522869.Spec : Prop :=
  ∀ n, (P12745483739950522869.a n : ℤ) = A327185 (n + 1)

end A327185

/-! ## A327185.P3985186282757599364

`eq[A017533(n)*A327183(n), A017533(n)]`
-/

namespace A327185.P3985186282757599364
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017533 n * A327183 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017533 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A327185.P3985186282757599364

namespace A327185

/-- `eq[A017533(n)*A327183(n), A017533(n)]` -/
def P3985186282757599364.Spec : Prop :=
  ∀ n, (P3985186282757599364.a n : ℤ) = A327185 (n + 1)

end A327185

/-! ## A327185.P6986812817261318112

`eq[A049116(n+1)*A327183(n), A049116(n+1)]`
-/

namespace A327185.P6986812817261318112
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049116 (n + 1) * A327183 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049116 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A327185.P6986812817261318112

namespace A327185

/-- `eq[A049116(n+1)*A327183(n), A049116(n+1)]` -/
def P6986812817261318112.Spec : Prop :=
  ∀ n, (P6986812817261318112.a n : ℤ) = A327185 (n + 1)

end A327185

/-! ## A327185.P13064659020264042306

`eq[A184777(n+1)*A327183(n), A184777(n+1)]`
-/

namespace A327185.P13064659020264042306
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184777 (n + 1) * A327183 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184777 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A327185.P13064659020264042306

namespace A327185

/-- `eq[A184777(n+1)*A327183(n), A184777(n+1)]` -/
def P13064659020264042306.Spec : Prop :=
  ∀ n, (P13064659020264042306.a n : ℤ) = A327185 (n + 1)

end A327185

/-! ## A327185.P8402039110081929530

`eq[A275115(n+1)*A327183(n), A275115(n+1)]`
-/

namespace A327185.P8402039110081929530
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275115 (n + 1) * A327183 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275115 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A327185.P8402039110081929530

namespace A327185

/-- `eq[A275115(n+1)*A327183(n), A275115(n+1)]` -/
def P8402039110081929530.Spec : Prop :=
  ∀ n, (P8402039110081929530.a n : ℤ) = A327185 (n + 1)

end A327185

/-! ## A327185.P13700691869896747700

`eq[A260897(n+1)*A327183(n), A260897(n+1)]`
-/

namespace A327185.P13700691869896747700
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260897 (n + 1) * A327183 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260897 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A327185.P13700691869896747700

namespace A327185

/-- `eq[A260897(n+1)*A327183(n), A260897(n+1)]` -/
def P13700691869896747700.Spec : Prop :=
  ∀ n, (P13700691869896747700.a n : ℤ) = A327185 (n + 1)

end A327185

/-! ## A327185.P7506367020127623433

`eq[A000079(n)*A327183(n), A000079(n)]`
-/

namespace A327185.P7506367020127623433
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n * A327183 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A327185.P7506367020127623433

namespace A327185

/-- `eq[A000079(n)*A327183(n), A000079(n)]` -/
def P7506367020127623433.Spec : Prop :=
  ∀ n, (P7506367020127623433.a n : ℤ) = A327185 (n + 1)

end A327185

/-!
# A327186: For any n >= 0: consider the different ways to split the binary representation of n into two (possibly empty) parts, say with value x and y; a(n) is the least possible value of x OR y (where OR denotes the bitwise OR operator).

The programs for A327186, there is no canonical definition to state claims against.
-/

/-! ## A327186.P14270107283898759290

`A327188(n)+A327187(n)%A001770(n+1)`
-/

namespace A327186.P14270107283898759290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327188 n + Int.tmod (A327187 n) (A001770 (n + 1))

end

end A327186.P14270107283898759290

/-!
# A327187: For any n >= 0: consider the different ways to split the binary representation of n into two (possibly empty) parts, say with value x and y; a(n) is the least possible value of x XOR y (where XOR denotes the bitwise XOR operator).

The programs for A327187, there is no canonical definition to state claims against.
-/

/-! ## A327187.P6268595101566802335

`(A327186(n)-A327188(n))^A014963(A068501(n+1))`
-/

namespace A327187.P6268595101566802335
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A327186 n - A327188 n : ℚ) ^ (A014963 (A068501 (n + 1)).toNat : ℤ)

end

end A327187.P6268595101566802335

/-! ## A327187.P2207049176845402967

`(A327186(n)-A327188(n))^A034462(n+1)!`
-/

namespace A327187.P2207049176845402967
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A327186 n - A327188 n) ^ Nat.factorial (A034462 (n + 1)).toNat

end

end A327187.P2207049176845402967

/-! ## A327187.P10083611493612351463

`A327191(n)*A333254(A333245(n+1))`
-/

namespace A327187.P10083611493612351463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327191 n * A333254 (A333245 (n + 1)).toNat

end

end A327187.P10083611493612351463

/-! ## A327187.P18231155911372820089

`A122328(and(A000120(n), A335052(2*n+5)))`
-/

namespace A327187.P18231155911372820089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122328 (Int.land (A000120 n) (A335052 (2 * n + 5))).toNat

end

end A327187.P18231155911372820089

/-! ## A327187.P11698369522084356914

`lcm(A115660(A115645(n+1)), A327191(n))`
-/

namespace A327187.P11698369522084356914
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A115660 (A115645 (n + 1)).toNat) (A327191 n)

end

end A327187.P11698369522084356914

/-!
# A327188: For any n >= 0: consider the different ways to split the binary representation of n into two (possibly empty) parts, say with value x and y; a(n) is the greatest possible value of x AND y (where AND denotes the bitwise AND operator).

The programs for A327188, there is no canonical definition to state claims against.
-/

/-! ## A327188.P1767057855013241560

`A001221(A095184(n+1))*A327186(n)-A327187(n)`
-/

namespace A327188.P1767057855013241560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A095184 (n + 1)).toNat * A327186 n - A327187 n

end

end A327188.P1767057855013241560

/-! ## A327188.P7429483509177259238

`A327186(n)-A327187(n)%A001770(n+1)`
-/

namespace A327188.P7429483509177259238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327186 n - Int.tmod (A327187 n) (A001770 (n + 1))

end

end A327188.P7429483509177259238

/-! ## A327188.P2754863933052974300

`and(char[1]+n, A146289(A051137(3*n+4)))`
-/

namespace A327188.P2754863933052974300
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (((if ∃ j, f1 j = n then 1 else 0) + n : ℕ) : ℤ) (A146289 (A051137 (3 * n + 4)).toNat)

end

end A327188.P2754863933052974300

/-! ## A327188.P4013756657322193298

`and(n, A136755(A000695(3*(n+1))))`
-/

namespace A327188.P4013756657322193298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n : ℤ) (A136755 (A000695 (3 * (n + 1))).toNat)

end

end A327188.P4013756657322193298

/-! ## A327188.P5502099493034360750

`and(n, A366078(A000011(n)))`
-/

namespace A327188.P5502099493034360750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n : ℤ) (A366078 (A000011 n).toNat)

end

end A327188.P5502099493034360750

/-!
# A327189: For any n >= 0: consider the different ways to split the binary representation of n into two (possibly empty) parts, say with value x and y; a(n) is the least possible value of x + y.

The programs for A327189, there is no canonical definition to state claims against.
-/

/-! ## A327189.P15664015990874381993

`A116939(A327194(n))%A088830(n+1)`
-/

namespace A327189.P15664015990874381993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A116939 (A327194 n).toNat) (A088830 (n + 1))

end

end A327189.P15664015990874381993

/-! ## A327189.P4301060070874205339

`A116939(A327194(n)%A141214(n))`
-/

namespace A327189.P4301060070874205339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116939 (Int.tmod (A327194 n) (A141214 n)).toNat

end

end A327189.P4301060070874205339

/-! ## A327189.P10235592289898011343

`A330960(lt[A005384(n+1), A103811(3*n+5)])`
-/

namespace A327189.P10235592289898011343
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005384 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103811 (3 * n + 5)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330960 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A327189.P10235592289898011343

/-! ## A327189.P10889222460751507151

`A330960(A008554(n+1))`
-/

namespace A327189.P10889222460751507151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330960 (A008554 (n + 1)).toNat

end

end A327189.P10889222460751507151

/-!
# A327190: For any n > 0: consider the different ways to split the binary representation of 2*n+1 into two nonempty parts, say with value x and y; a(n) is the least possible value of x * y.

The programs for A327190, there is no canonical definition to state claims against.
-/

/-! ## A327190.P4190549141667847548

`A163381(n+1)+and(2, A299905(n)!)`
-/

namespace A327190.P4190549141667847548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163381 (n + 1) + (Nat.land 2 (Nat.factorial (A299905 n).toNat) : ℤ)

end

end A327190.P4190549141667847548

/-! ## A327190.P18181046049167285298

`A163381(n+1)+A028601(A174672(n))`
-/

namespace A327190.P18181046049167285298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163381 (n + 1) + A028601 (A174672 n).toNat

end

end A327190.P18181046049167285298

/-! ## A327190.P14125419315686178453

`A082551(A274114(n))+A001316(n+1)`
-/

namespace A327190.P14125419315686178453
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082551 (A274114 n).toNat + A001316 (n + 1)

end

end A327190.P14125419315686178453

/-! ## A327190.P10202748336197968596

`A175599(A022166(n))+A163381(n+1)`
-/

namespace A327190.P10202748336197968596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175599 (A022166 n).toNat + A163381 (n + 1)

end

end A327190.P10202748336197968596

/-! ## A327190.P3119364635788131256

`xor(A163381(n+1), A185284(A008459(n)))`
-/

namespace A327190.P3119364635788131256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A163381 (n + 1)) (A185284 (A008459 n).toNat)

end

end A327190.P3119364635788131256

/-!
# A327191: For any n >= 0: consider the different ways to split the binary representation of n into two (possibly empty) parts, say with value x and y; a(n) is the least possible value of abs(x - y).

The programs for A327191, there is no canonical definition to state claims against.
-/

/-! ## A327191.P13772322410004105326

`A107286(A151815(n)!*A327195(n))`
-/

namespace A327191.P13772322410004105326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107286 ((Nat.factorial (A151815 n).toNat : ℤ) * A327195 n).toNat

end

end A327191.P13772322410004105326

/-! ## A327191.P7503125973014101990

`A107286(A327195(n)^A151815(n)!)`
-/

namespace A327191.P7503125973014101990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107286 (A327195 n ^ Nat.factorial (A151815 n).toNat).toNat

end

end A327191.P7503125973014101990

/-! ## A327191.P7483032513863035796

`A107286(∑[A151815(n)]*A327195(n))`
-/

namespace A327191.P7483032513863035796
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151815 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107286 ((∑ j ∈ Finset.range (n + 1), f1 j) * A327195 n).toNat

end

end A327191.P7483032513863035796

/-! ## A327191.P10694676593313057706

`A107286(A327195(n)^∑[A151815(n)])`
-/

namespace A327191.P10694676593313057706
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151815 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107286 (SequenceMachineLib.roundAway ((A327195 n : ℚ) ^ (∑ j ∈ Finset.range (n + 1), f1 j : ℤ))).toNat

end

end A327191.P10694676593313057706

/-! ## A327191.P2830141033832234692

`A327187(n)%A306323(A393029(n+1))`
-/

namespace A327191.P2830141033832234692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A327187 n) (A306323 (A393029 (n + 1)).toNat)

end

end A327191.P2830141033832234692

/-!
# A327192: For any n >= 0: consider the different ways to split the binary representation of n into two (possibly empty) parts, say with value x and y; a(n) is the least possible value of max(x, y).

The programs for A327192, there is no canonical definition to state claims against.
-/

/-! ## A327192.P5151402510153170121

`A327193(A145341(n+1)%A360006(2*n+3))`
-/

namespace A327192.P5151402510153170121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327193 (Int.tmod (A145341 (n + 1)) (A360006 (2 * n + 3))).toNat

end

end A327192.P5151402510153170121

/-! ## A327192.P4831859002604866393

`A064876(A327194(n)%A214925(n+1))`
-/

namespace A327192.P4831859002604866393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064876 (Int.tmod (A327194 n) (A214925 (n + 1))).toNat

end

end A327192.P4831859002604866393

/-! ## A327192.P4620131773754416070

`A064876(A327194(n)%A133715(n))`
-/

namespace A327192.P4620131773754416070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064876 (Int.tmod (A327194 n) (A133715 n)).toNat

end

end A327192.P4620131773754416070

/-! ## A327192.P17414398528647774145

`A064876(A327194(n))%A095967(n+1)`
-/

namespace A327192.P17414398528647774145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A064876 (A327194 n).toNat) (A095967 (n + 1))

end

end A327192.P17414398528647774145

/-! ## A327192.P18235326910374192960

`A064876(A327194(n))+A000038(A107586(n))`
-/

namespace A327192.P18235326910374192960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064876 (A327194 n).toNat + A000038 (A107586 n).toNat

end

end A327192.P18235326910374192960

/-!
# A327193: For any n >= 0: consider the different ways to split the binary representation of n into two (possibly empty) parts, say with value x and y; a(n) is the greatest possible value of min(x, y).

The programs for A327193, there is no canonical definition to state claims against.
-/

/-! ## A327193.P9113700334860934734

`floor(A327192(2*n)/2)`
-/

namespace A327193.P9113700334860934734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A327192 (2 * n) : ℚ) / 2⌋

end

end A327193.P9113700334860934734

/-! ## A327193.P8377885981756595587

`A004526(A327192(2*n))`
-/

namespace A327193.P8377885981756595587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A327192 (2 * n)).toNat

end

end A327193.P8377885981756595587

/-! ## A327193.P8714600052798859105

`A008615(3*A327192(2*n))`
-/

namespace A327193.P8714600052798859105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008615 (3 * A327192 (2 * n)).toNat

end

end A327193.P8714600052798859105

/-! ## A327193.P6338553016815430691

`(A327192(2*n+1)-1)/2`
-/

namespace A327193.P6338553016815430691
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A327192 (2 * n + 1) - 1 : ℚ) / 2

end

end A327193.P6338553016815430691

/-! ## A327193.P1017892312094763009

`A028242(A327192(2*n+1))`
-/

namespace A327193.P1017892312094763009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028242 (A327192 (2 * n + 1)).toNat

end

end A327193.P1017892312094763009

/-! ## A327193.P9748428121282461225

`A123108(A327192(n+1+n))`
-/

namespace A327193.P9748428121282461225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123108 (A327192 (n + 1 + n)).toNat

end

end A327193.P9748428121282461225

/-! ## A327193.P10186709512854247688

`A004525(A327192(2*n+1)-1)`
-/

namespace A327193.P10186709512854247688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A327192 (2 * n + 1) - 1).toNat

end

end A327193.P10186709512854247688

/-!
# A327194: For any n >= 0: consider the different ways to split the binary representation of n into two (possibly empty) parts, say with value x and y; a(n) is the least possible value of x^2 + y^2.

The programs for A327194, there is no canonical definition to state claims against.
-/

/-! ## A327194.P16043863792684688055

`A330962(A037462(n))`
-/

namespace A327194.P16043863792684688055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330962 (A037462 n).toNat

end

end A327194.P16043863792684688055

/-! ## A327194.P2094715199736983947

`A330962(n*A010121(n))`
-/

namespace A327194.P2094715199736983947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330962 ((n : ℤ) * A010121 n).toNat

end

end A327194.P2094715199736983947

/-! ## A327194.P12598876362180654148

`A330962(A188167(A188167(n)))`
-/

namespace A327194.P12598876362180654148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330962 (A188167 (A188167 n).toNat).toNat

end

end A327194.P12598876362180654148

/-! ## A327194.P12325925528885689159

`A330962(n)+A156659(A210068(n))`
-/

namespace A327194.P12325925528885689159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330962 n + A156659 (A210068 n).toNat

end

end A327194.P12325925528885689159

/-! ## A327194.P16101618318185297000

`or(A316345(A052552(n)), A330962(n))`
-/

namespace A327194.P16101618318185297000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A316345 (A052552 n).toNat) (A330962 n)

end

end A327194.P16101618318185297000

/-!
# A327195: For any n >= 0: consider the different ways to split the binary representation of n into two (possibly empty) parts, say with value x and y; a(n) is the least possible value of abs(x^2 - y^2).

The programs for A327195, there is no canonical definition to state claims against.
-/

/-! ## A327195.P9777686105539201121

`A330963(n*A295679(n)!)`
-/

namespace A327195.P9777686105539201121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330963 (n * Nat.factorial (A295679 n).toNat)

end

end A327195.P9777686105539201121

/-! ## A327195.P3791432699043967949

`A330963(n*n^val(gcd(4, n), 4))`
-/

namespace A327195.P3791432699043967949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330963 (n * n ^ SequenceMachineLib.valuation (Nat.gcd 4 n) 4)

end

end A327195.P3791432699043967949

/-! ## A327195.P16909268032962422801

`A330963(A020485(n))`
-/

namespace A327195.P16909268032962422801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330963 (A020485 n).toNat

end

end A327195.P16909268032962422801

/-! ## A327195.P4830969964482903370

`A330963(A049872(n))`
-/

namespace A327195.P4830969964482903370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330963 (A049872 n).toNat

end

end A327195.P4830969964482903370

/-! ## A327195.P12476306059311568260

`A330963(A062003(n))`
-/

namespace A327195.P12476306059311568260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330963 (A062003 n).toNat

end

end A327195.P12476306059311568260

/-!
# A327196: Number of connected set-systems with n vertices and at least one bridge that is not an endpoint (non-spanning edge-connectivity 1).

The programs for A327196, there is no canonical definition to state claims against.
-/

/-! ## A327196.P13841081930578992622

`Δ[((10*n+1)*(10*n+9))%∏[floor(abs(3*n-ϕ))]]`
-/

namespace A327196.P13841081930578992622
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊|(3 * n : ℝ) - Real.goldenRatio|⌋

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((10 * n + 1) * (10 * n + 9) : ℤ) (∏ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A327196.P13841081930578992622

/-!
# A327197: Number of set-systems covering n vertices with cut-connectivity 1.

The programs for A327197, there is no canonical definition to state claims against.
-/

/-! ## A327197.P5455519003632866531

`(n*(7*C(n, 2)+n))²%A000612(n)`
-/

namespace A327197.P5455519003632866531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((n * (7 * Nat.choose n 2 + n)) ^ 2 : ℤ) (A000612 n)

end

end A327197.P5455519003632866531

/-!
# A327198: Number of labeled simple graphs covering n vertices with vertex-connectivity 2.

The programs for A327198, there is no canonical definition to state claims against.
-/

/-! ## A327198.P806515406048978023

`A327334(∑[char[1]+n]+1)-char[n^3]`
-/

namespace A327198.P806515406048978023
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f2 j = n then 1 else 0) + n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 3

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327334 (∑ j ∈ Finset.range (n + 1), f1 j + 1) - ((if ∃ j, f3 j = n then 1 else 0 : ℕ) : ℤ)

end

end A327198.P806515406048978023

/-! ## A327198.P2236344532493771911

`A327334(A247469(∑[n+2]))`
-/

namespace A327198.P2236344532493771911
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327334 (A247469 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A327198.P2236344532493771911

/-! ## A327198.P8490664842643790849

`A327334(A133263(n))%(n^n)`
-/

namespace A327198.P8490664842643790849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A327334 (A133263 n).toNat) (n ^ n : ℤ)

end

end A327198.P8490664842643790849

/-! ## A327198.P11961531190536121596

`A327334(A238531(n)+round(1/acot(n)))`
-/

namespace A327198.P11961531190536121596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327334 (A238531 n + SequenceMachineLib.roundAway (1 / SequenceMachineLib.acot (n : ℝ))).toNat

end

end A327198.P11961531190536121596

/-!
# A327199: Number of labeled simple graphs with n vertices whose edge-set is not connected.

The programs for A327199, there is no canonical definition to state claims against.
-/

/-! ## A327199.P14363009324468090321

`A006125(n)+1-A327078(n)`
-/

namespace A327199.P14363009324468090321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006125 n + (1 - A327078 n)

end

end A327199.P14363009324468090321

/-! ## A327199.P1423390709060699880

`1-(A327078(n)-∏[A000010(2^n)])`
-/

namespace A327199.P1423390709060699880
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (2 ^ n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (A327078 n - ∏ j ∈ Finset.range (n + 1), f1 j)

end

end A327199.P1423390709060699880

/-! ## A327199.P13069687766805234657

`1-(A327078(n)-∏{d}[2^n, A000010(#)])`
-/

namespace A327199.P13069687766805234657
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (A327078 n - ∏ d ∈ Nat.divisors (f1 n), A000010 d)

end

end A327199.P13069687766805234657

/-! ## A327199.P8779083712446252894

`1-(A182100(n)-n-∏[A000010(2^n)])`
-/

namespace A327199.P8779083712446252894
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (2 ^ n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (A182100 n - (n : ℤ) - ∏ j ∈ Finset.range (n + 1), f1 j)

end

end A327199.P8779083712446252894

/-! ## A327199.P8223587799194236410

`1-(A182100(n)-n-∏{d}[2^n, A000010(#)])`
-/

namespace A327199.P8223587799194236410
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (A182100 n - (n : ℤ) - ∏ d ∈ Nat.divisors (f1 n), A000010 d)

end

end A327199.P8223587799194236410

