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
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C038
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C008
import Seq.B001.C009
import Seq.B001.C010
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C004
import Seq.B002.C005
import Seq.B002.C006
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C003
import Seq.B003.C004
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C002
import Seq.B006.C000
import Seq.B006.C001
import Seq.B006.C002
import Seq.B007.C000
import Seq.B007.C001
import Seq.B008.C000
import Seq.B008.C001
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
import Seq.Opaque.C020
import Seq.Opaque.C021
import Seq.Opaque.C022
import Seq.Opaque.C023
import Seq.Opaque.C024

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A066902: Integers k such that phi(prime(k)+1) = phi(prime(k)-1).

The programs for A066902, there is no canonical definition to state claims against.
-/

/-! ## A066902.P11311342908162559835

`A000720(A067890(n+1))`
-/

namespace A066902.P11311342908162559835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A067890 (n + 1)).toNat

end

end A066902.P11311342908162559835

/-! ## A066902.P3201904339420340455

`A000720(p?[A065555(n+1)])`
-/

namespace A066902.P3201904339420340455
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065555 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A066902.P3201904339420340455

/-! ## A066902.P13824791431445835971

`A000720(p?[A066812(n+1)])`
-/

namespace A066902.P13824791431445835971
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066812 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A066902.P13824791431445835971

/-! ## A066902.P5088370557764479920

`A061395(p?[A065555(n+1)])`
-/

namespace A066902.P5088370557764479920
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065555 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A066902.P5088370557764479920

/-! ## A066902.P11467008297546463658

`A061395(p?[A066812(n+1)])`
-/

namespace A066902.P11467008297546463658
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066812 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A066902.P11467008297546463658

/-!
# A066903: Primes in A006577.

The programs for A066903, there is no canonical definition to state claims against.
-/

/-! ## A066903.P12139976251706765402

`A000040(A177951(n+1))`
-/

namespace A066903.P12139976251706765402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A177951 (n + 1)).toNat

end

end A066903.P12139976251706765402

/-! ## A066903.P11085257034886469450

`A082500(2*A177951(n+1))`
-/

namespace A066903.P11085257034886469450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082500 (2 * A177951 (n + 1)).toNat

end

end A066903.P11085257034886469450

/-! ## A066903.P3760911078436847429

`A082500(A177951(n+1)+A177951(n+1))`
-/

namespace A066903.P3760911078436847429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082500 (A177951 (n + 1) + A177951 (n + 1)).toNat

end

end A066903.P3760911078436847429

/-! ## A066903.P5991678118674369471

`p?[∑[A153330(n+1)]]`
-/

namespace A066903.P5991678118674369471
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153330 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A066903.P5991678118674369471

/-! ## A066903.P11368516115706259165

`p?[A006577(n+1)]`
-/

namespace A066903.P11368516115706259165
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006577 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A066903.P11368516115706259165

/-! ## A066903.P8386168973359831959

`p?[Δ[A058633(n+1)]]`
-/

namespace A066903.P8386168973359831959
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058633 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A066903.P8386168973359831959

/-! ## A066903.P16469320485535840660

`p?[A008908(n+1)-1]`
-/

namespace A066903.P16469320485535840660
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008908 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A066903.P16469320485535840660

/-! ## A066903.P16358231947301105417

`p?[A112695(n+2)+2]`
-/

namespace A066903.P16358231947301105417
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112695 (n + 2) + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A066903.P16358231947301105417

/-! ## A066903.P16593920354546793090

`A006577(A066906(n+1))`
-/

namespace A066903.P16593920354546793090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006577 (A066906 (n + 1)).toNat

end

end A066903.P16593920354546793090

/-! ## A066903.P15555894413495246422

`filter[A006577(n+2), A010051(#)]`
-/

namespace A066903.P15555894413495246422
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006577 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A066903.P15555894413495246422

/-! ## A066903.P16656705668268767827

`filter[A006577(n+3), A080339(#)]`
-/

namespace A066903.P16656705668268767827
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006577 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A080339 (f1 j).toNat = 1) n)

end

end A066903.P16656705668268767827

/-! ## A066903.P5746682712907664307

`p?[A006667(n+1)+A006666(n+1)]`
-/

namespace A066903.P5746682712907664307
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006667 (n + 1) + A006666 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A066903.P5746682712907664307

/-! ## A066903.P7726418694552373238

`p?[A139399(2*(n+1))+1]`
-/

namespace A066903.P7726418694552373238
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139399 (2 * (n + 1)) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A066903.P7726418694552373238

/-! ## A066903.P1217052418822356925

`p?[A280193(2*n+1)+A008908(n+1)]`
-/

namespace A066903.P1217052418822356925
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280193 (2 * n + 1) + A008908 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A066903.P1217052418822356925

/-! ## A066903.P9668453937159194085

`p?[A108618(A290102(2*(n+1)))+A008908(n+1)]`
-/

namespace A066903.P9668453937159194085
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108618 (A290102 (2 * (n + 1))).toNat + A008908 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A066903.P9668453937159194085

/-! ## A066903.P2584605007161295850

`p?[A008908(A006370(n+2))]`
-/

namespace A066903.P2584605007161295850
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008908 (A006370 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A066903.P2584605007161295850

/-! ## A066903.P16001687412012368055

`p?[A127886(n+1)+A127885(n+1)]`
-/

namespace A066903.P16001687412012368055
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127886 (n + 1) + A127885 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A066903.P16001687412012368055

/-!
# A066905: Squares in A006577.

The programs for A066905, there is no canonical definition to state claims against.
-/

/-! ## A066905.P12672807838435046444

`A006577(A174539(n+1))`
-/

namespace A066905.P12672807838435046444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006577 (A174539 (n + 1)).toNat

end

end A066905.P12672807838435046444

/-! ## A066905.P8016376633106718807

`A139399(A174539(n+1))+A130130(n)`
-/

namespace A066905.P8016376633106718807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139399 (A174539 (n + 1)).toNat + A130130 n

end

end A066905.P8016376633106718807

/-! ## A066905.P6562431761505863271

`A008908(A174539(n+1))-A055396(2*(n+1))`
-/

namespace A066905.P6562431761505863271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008908 (A174539 (n + 1)).toNat - A055396 (2 * (n + 1))

end

end A066905.P6562431761505863271

/-! ## A066905.P16976140231149036442

`A008908(A174539(n+1))-A131719(3*n+4)`
-/

namespace A066905.P16976140231149036442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008908 (A174539 (n + 1)).toNat - A131719 (3 * n + 4)

end

end A066905.P16976140231149036442

/-! ## A066905.P7905475018523879235

`A139399(4*A174539(n+1))`
-/

namespace A066905.P7905475018523879235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139399 (4 * A174539 (n + 1)).toNat

end

end A066905.P7905475018523879235

/-!
# A066906: Places n where A006577(n) is a prime number.

The programs for A066906, there is no canonical definition to state claims against.
-/

/-! ## A066906.P8659137551557271903

`eq[1, A003415(A006577(n+1))]+1`
-/

namespace A066906.P8659137551557271903
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 (A006577 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A066906.P8659137551557271903

/-! ## A066906.P16814348844855424930

`eq[1, A001222(A006577(n+2))]+2`
-/

namespace A066906.P16814348844855424930
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A006577 (n + 2)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2

end

end A066906.P16814348844855424930

/-! ## A066906.P7284785167849463121

`eq[1, A010051(A006577(n+3))]+3`
-/

namespace A066906.P7284785167849463121
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (A006577 (n + 3)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 3

end

end A066906.P7284785167849463121

/-! ## A066906.P12493393482844584493

`eq[1, A001222(A008908(n+2)-1)]+2`
-/

namespace A066906.P12493393482844584493
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A008908 (n + 2) - 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2

end

end A066906.P12493393482844584493

/-! ## A066906.P7830858179426584417

`eq[1, A003415(A006577(A028310(n)))]`
-/

namespace A066906.P7830858179426584417
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 (A006577 (A028310 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A066906.P7830858179426584417

/-! ## A066906.P12326040950610496800

`eq[2, A000005(A006577(A233583(n+1)))]`
-/

namespace A066906.P12326040950610496800
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A006577 (A233583 (n + 1)).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A066906.P12326040950610496800

/-!
# A066907: Number of elements in GL(2,Z_n) x with x^2 == I mod n where I is the identity matrix.

The programs for A066907, there is no canonical definition to state claims against.
-/

/-! ## A066907.P4526766456865309321

`A316584(∑[n+2])`
-/

namespace A066907.P4526766456865309321
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316584 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A066907.P4526766456865309321

/-! ## A066907.P1065256748152954719

`record[A316584(abs(A201163(n)))]`
-/

namespace A066907.P1065256748152954719
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316584 |A201163 n|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A066907.P1065256748152954719

/-! ## A066907.P6861444909008026035

`record[A316584(∑[A152271(n)])]`
-/

namespace A066907.P6861444909008026035
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152271 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316584 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A066907.P6861444909008026035

/-! ## A066907.P5817757022815711447

`record[A316584(A000096(n+1))]`
-/

namespace A066907.P5817757022815711447
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316584 (A000096 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A066907.P5817757022815711447

/-!
# A066908: n^n minus largest factorial less than or equal to n^n.

The programs for A066908, there is no canonical definition to state claims against.
-/

/-! ## A066908.P2252770120532904910

`n^n-A064318(n)!`
-/

namespace A066908.P2252770120532904910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ n : ℤ) - (Nat.factorial (A064318 n).toNat : ℤ)

end

end A066908.P2252770120532904910

/-! ## A066908.P12528313872921438250

`n^n-(A136432(n)-1)!`
-/

namespace A066908.P12528313872921438250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ n : ℤ) - (Nat.factorial (A136432 n - 1).toNat : ℤ)

end

end A066908.P12528313872921438250

/-! ## A066908.P14899124907629936017

`n^n-A023443(A136432(n))!`
-/

namespace A066908.P14899124907629936017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ n : ℤ) - (Nat.factorial (A023443 (A136432 n).toNat).toNat : ℤ)

end

end A066908.P14899124907629936017

/-! ## A066908.P8955603886931202347

`n^n-A000142(A136432(n)-1)`
-/

namespace A066908.P8955603886931202347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ n : ℤ) - A000142 (A136432 n - 1).toNat

end

end A066908.P8955603886931202347

/-! ## A066908.P5188562796628067801

`A000312(n)-A000142(A064318(n))`
-/

namespace A066908.P5188562796628067801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000312 n - A000142 (A064318 n).toNat

end

end A066908.P5188562796628067801

/-!
# A066909: (product of primes < n that do not divide n) (mod n).

The programs for A066909, the canonical program `A066909.P7344722265387193395` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A066909 has offset 1).

The definition of A066909 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 255 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A066909.P7344722265387193395

`A066838(n+1)%(n+1)`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A066909

/-- `A066838(n+1)%(n+1)` -/
def P7344722265387193395.Spec : Prop :=
  ∀ n, P7344722265387193395.a n = A066909 (n + 1)

theorem P7344722265387193395.correct : P7344722265387193395.Spec := by
  intro n
  simp only [A066909, Nat.add_sub_cancel]

end A066909

/-! ## A066909.P7477444407201397345

`(A034386(n+1)/∏{p}[n+1, #])%(n+1)`
-/

namespace A066909.P7477444407201397345
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway ((A034386 (n + 1) : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℚ))) (n + 1 : ℤ)

end

end A066909.P7477444407201397345

namespace A066909

/-- `(A034386(n+1)/∏{p}[n+1, #])%(n+1)` -/
def P7477444407201397345.Spec : Prop :=
  ∀ n, P7477444407201397345.a n = A066909 (n + 1)

theorem P7477444407201397345.correct : P7477444407201397345.Spec := by
  intro n
  simp only [A066909, Nat.add_sub_cancel, A066909.P7477444407201397345.f1, A066909.P7477444407201397345.a, A066909.P7344722265387193395.a, A034386, A034386.P1755129826133478527.a, A066838, A066838.P8327435795258635139.a, A003418, A003418.P6976248655893080794.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A066909

/-! ## A066909.P6420048012891749413

`(A034386(n+1)/A007947(n+1))%(n+1)`
-/

namespace A066909.P6420048012891749413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway ((A034386 (n + 1) : ℚ) / (A007947 (n + 1) : ℚ))) (n + 1 : ℤ)

end

end A066909.P6420048012891749413

namespace A066909

/-- `(A034386(n+1)/A007947(n+1))%(n+1)` -/
def P6420048012891749413.Spec : Prop :=
  ∀ n, P6420048012891749413.a n = A066909 (n + 1)

end A066909

/-! ## A066909.P9369383639076100372

`(lcm(n+1, A034386(n))/(n+1))%(n+1)`
-/

namespace A066909.P9369383639076100372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway ((Int.lcm (n + 1 : ℤ) (A034386 n) : ℚ) / (n + 1 : ℚ))) (n + 1 : ℤ)

end

end A066909.P9369383639076100372

namespace A066909

/-- `(lcm(n+1, A034386(n))/(n+1))%(n+1)` -/
def P9369383639076100372.Spec : Prop :=
  ∀ n, P9369383639076100372.a n = A066909 (n + 1)

end A066909

/-! ## A066909.P17217064824156744118

`A007947(A038610(n+1))%(n+1)`
-/

namespace A066909.P17217064824156744118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A007947 (A038610 (n + 1)).toNat) (n + 1 : ℤ)

end

end A066909.P17217064824156744118

namespace A066909

/-- `A007947(A038610(n+1))%(n+1)` -/
def P17217064824156744118.Spec : Prop :=
  ∀ n, P17217064824156744118.a n = A066909 (n + 1)

end A066909

/-!
# A066910: a(1) = 1; a(n+1) = (sum{k=1 to n} a(k) ) (mod n).

The programs for A066910, the canonical program `A066910.P10239878416308779692` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A066910 has offset 1).

The definition of A066910 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A066910.P10239878416308779692

`A073117(n+1)+A000007(n)-A073117(A233583(n+1))`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A066910

/-- `A073117(n+1)+A000007(n)-A073117(A233583(n+1))` -/
def P10239878416308779692.Spec : Prop :=
  ∀ n, P10239878416308779692.a n = A066910 (n + 1)

theorem P10239878416308779692.correct : P10239878416308779692.Spec := by
  intro n
  simp only [A066910, Nat.add_sub_cancel]

end A066910

/-!
# A066911: Sum of primes < n that do not divide n.

The programs for A066911, the canonical program `A066911.P6571933624612694988` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A066911 has offset 1).

The definition of A066911 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A066911.P6571933624612694988

`∑[∑{p}[n, #]-A105221(n+1)]`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A066911

/-- `∑[∑{p}[n, #]-A105221(n+1)]` -/
def P6571933624612694988.Spec : Prop :=
  ∀ n, P6571933624612694988.a n = A066911 (n + 1)

theorem P6571933624612694988.correct : P6571933624612694988.Spec := by
  intro n
  simp only [A066911, Nat.add_sub_cancel]

end A066911

/-! ## A066911.P1486455512164606952

`∑[A061397(n+1)]-∑{p}[n+1, #]`
-/

namespace A066911.P1486455512164606952
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061397 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - ((∑ p ∈ Nat.primeFactors (f2 n), p : ℕ) : ℤ)

end

end A066911.P1486455512164606952

namespace A066911

/-- `∑[A061397(n+1)]-∑{p}[n+1, #]` -/
def P1486455512164606952.Spec : Prop :=
  ∀ n, P1486455512164606952.a n = A066911 (n + 1)

end A066911

/-! ## A066911.P13396105371444755476

`A034387(n+1)-A008472(n+1)`
-/

namespace A066911.P13396105371444755476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034387 (n + 1) - A008472 (n + 1)

end

end A066911.P13396105371444755476

namespace A066911

/-- `A034387(n+1)-A008472(n+1)` -/
def P13396105371444755476.Spec : Prop :=
  ∀ n, P13396105371444755476.a n = A066911 (n + 1)

end A066911

/-! ## A066911.P16483114162378245327

`A158662(n+1)-A074372(n+1)`
-/

namespace A066911.P16483114162378245327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158662 (n + 1) - A074372 (n + 1)

end

end A066911.P16483114162378245327

namespace A066911

/-- `A158662(n+1)-A074372(n+1)` -/
def P16483114162378245327.Spec : Prop :=
  ∀ n, P16483114162378245327.a n = A066911 (n + 1)

end A066911

/-! ## A066911.P15385762741416737723

`A349555(n+1)-A001221(n+1)`
-/

namespace A066911.P15385762741416737723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349555 (n + 1) - A001221 (n + 1)

end

end A066911.P15385762741416737723

namespace A066911

/-- `A349555(n+1)-A001221(n+1)` -/
def P15385762741416737723.Spec : Prop :=
  ∀ n, P15385762741416737723.a n = A066911 (n + 1)

theorem P15385762741416737723.correct : P15385762741416737723.Spec := by
  intro n
  simp only [A066911, Nat.add_sub_cancel, A066911.P15385762741416737723.a, A066911.P6571933624612694988.f2, A066911.P6571933624612694988.f1, A066911.P6571933624612694988.a, A001221, A001221.P10258181745752134128.a, A105221, A105221.P17719623874901943766.a, A349555, A349555.P9568767328218763309.a, A005089, A005089.P4329807401814625450.f1, A005089.P4329807401814625450.a, A005091, A005091.P2802037195389751204.f1, A005091.P2802037195389751204.a, A008472, A008472.P6567490011312877583.f1, A008472.P6567490011312877583.a, A010051, A010051.P15078252821583414300.a, A059841, A059841.P2666504972441551157.a, A100995, A100995.P9596901243079307024.f1, A100995.P9596901243079307024.a, A193056, A193056.P6449544040074946363.a, A157658, A157658.P9261385800012601708.f1, A157658.P9261385800012601708.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A066911

/-! ## A066911.P10580590018467840525

`A351827(n+1)-A000203(n+1)`
-/

namespace A066911.P10580590018467840525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351827 (n + 1) - A000203 (n + 1)

end

end A066911.P10580590018467840525

namespace A066911

/-- `A351827(n+1)-A000203(n+1)` -/
def P10580590018467840525.Spec : Prop :=
  ∀ n, P10580590018467840525.a n = A066911 (n + 1)

theorem P10580590018467840525.correct : P10580590018467840525.Spec := by
  intro n
  simp only [A066911, Nat.add_sub_cancel, A066911.P10580590018467840525.a, A066911.P6571933624612694988.f2, A066911.P6571933624612694988.f1, A066911.P6571933624612694988.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A105221, A105221.P17719623874901943766.a, A351827, A351827.P16074495888239272804.f1, A351827.P16074495888239272804.a, A008472, A008472.P6567490011312877583.f1, A008472.P6567490011312877583.a, A010051, A010051.P15078252821583414300.a, A100995, A100995.P9596901243079307024.f1, A100995.P9596901243079307024.a, A193056, A193056.P6449544040074946363.a, A157658, A157658.P9261385800012601708.f1, A157658.P9261385800012601708.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A066911

/-! ## A066911.P17390579410577323041

`A109607(n+1)-A390323(n+1)`
-/

namespace A066911.P17390579410577323041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109607 (n + 1) - A390323 (n + 1)

end

end A066911.P17390579410577323041

namespace A066911

/-- `A109607(n+1)-A390323(n+1)` -/
def P17390579410577323041.Spec : Prop :=
  ∀ n, P17390579410577323041.a n = A066911 (n + 1)

end A066911

/-! ## A066911.P16812328123463734106

`∑[A061397(n+1)]-A008472(n+1)`
-/

namespace A066911.P16812328123463734106
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061397 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A008472 (n + 1)

end

end A066911.P16812328123463734106

namespace A066911

/-- `∑[A061397(n+1)]-A008472(n+1)` -/
def P16812328123463734106.Spec : Prop :=
  ∀ n, P16812328123463734106.a n = A066911 (n + 1)

end A066911

/-! ## A066911.P1688987388479086137

`∑[A061397(n+1)]+1-A074372(n+1)`
-/

namespace A066911.P1688987388479086137
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061397 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (1 - A074372 (n + 1))

end

end A066911.P1688987388479086137

namespace A066911

/-- `∑[A061397(n+1)]+1-A074372(n+1)` -/
def P1688987388479086137.Spec : Prop :=
  ∀ n, P1688987388479086137.a n = A066911 (n + 1)

end A066911

/-! ## A066911.P322931577074443233

`∑[A061397(n+1)]-∑{d}[n+1, A061397(#)]`
-/

namespace A066911.P322931577074443233
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061397 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - ∑ d ∈ Nat.divisors (f2 n), A061397 d

end

end A066911.P322931577074443233

namespace A066911

/-- `∑[A061397(n+1)]-∑{d}[n+1, A061397(#)]` -/
def P322931577074443233.Spec : Prop :=
  ∀ n, P322931577074443233.a n = A066911 (n + 1)

end A066911

/-! ## A066911.P1568118005503945114

`∑[A061397(n+1)]-A001414(∏{p}[n+1, #])`
-/

namespace A066911.P1568118005503945114
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061397 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A001414 (∏ p ∈ Nat.primeFactors (f2 n), p)

end

end A066911.P1568118005503945114

namespace A066911

/-- `∑[A061397(n+1)]-A001414(∏{p}[n+1, #])` -/
def P1568118005503945114.Spec : Prop :=
  ∀ n, P1568118005503945114.a n = A066911 (n + 1)

end A066911

/-! ## A066911.P12461548129361791846

`∑[A061397(n+1)]-A008475(∏{p}[n+1, #])`
-/

namespace A066911.P12461548129361791846
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061397 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A008475 (∏ p ∈ Nat.primeFactors (f2 n), p)

end

end A066911.P12461548129361791846

namespace A066911

/-- `∑[A061397(n+1)]-A008475(∏{p}[n+1, #])` -/
def P12461548129361791846.Spec : Prop :=
  ∀ n, P12461548129361791846.a n = A066911 (n + 1)

end A066911

/-! ## A066911.P3066177325955029831

`A007504(A000720(n+1))-A008472(n+1)`
-/

namespace A066911.P3066177325955029831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 (A000720 (n + 1)).toNat - A008472 (n + 1)

end

end A066911.P3066177325955029831

namespace A066911

/-- `A007504(A000720(n+1))-A008472(n+1)` -/
def P3066177325955029831.Spec : Prop :=
  ∀ n, P3066177325955029831.a n = A066911 (n + 1)

end A066911

/-! ## A066911.P13494487514622022113

`∑[A061397(n+1)]-A001414(A007947(n+1))`
-/

namespace A066911.P13494487514622022113
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061397 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A001414 (A007947 (n + 1)).toNat

end

end A066911.P13494487514622022113

namespace A066911

/-- `∑[A061397(n+1)]-A001414(A007947(n+1))` -/
def P13494487514622022113.Spec : Prop :=
  ∀ n, P13494487514622022113.a n = A066911 (n + 1)

end A066911

/-! ## A066911.P1543772849583318037

`∑[A008472(A089026(n+1))]-A008472(n+1)`
-/

namespace A066911.P1543772849583318037
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008472 (A089026 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A008472 (n + 1)

end

end A066911.P1543772849583318037

namespace A066911

/-- `∑[A008472(A089026(n+1))]-A008472(n+1)` -/
def P1543772849583318037.Spec : Prop :=
  ∀ n, P1543772849583318037.a n = A066911 (n + 1)

end A066911

/-! ## A066911.P9005026487722831600

`A034387(n+1)+A024924(n)-A024924(n+1)`
-/

namespace A066911.P9005026487722831600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034387 (n + 1) + (A024924 n - A024924 (n + 1))

end

end A066911.P9005026487722831600

namespace A066911

/-- `A034387(n+1)+A024924(n)-A024924(n+1)` -/
def P9005026487722831600.Spec : Prop :=
  ∀ n, P9005026487722831600.a n = A066911 (n + 1)

end A066911

/-! ## A066911.P13552400370056064691

`A034387(n+1)-(A063958(n+1)+A063956(n+1))`
-/

namespace A066911.P13552400370056064691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034387 (n + 1) - (A063958 (n + 1) + A063956 (n + 1))

end

end A066911.P13552400370056064691

namespace A066911

/-- `A034387(n+1)-(A063958(n+1)+A063956(n+1))` -/
def P13552400370056064691.Spec : Prop :=
  ∀ n, P13552400370056064691.a n = A066911 (n + 1)

end A066911

/-! ## A066911.P14784366063121812063

`∑[A061397(n+1)]-(A344931(n+1)+A344908(n+1))`
-/

namespace A066911.P14784366063121812063
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061397 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (A344931 (n + 1) + A344908 (n + 1))

end

end A066911.P14784366063121812063

namespace A066911

/-- `∑[A061397(n+1)]-(A344931(n+1)+A344908(n+1))` -/
def P14784366063121812063.Spec : Prop :=
  ∀ n, P14784366063121812063.a n = A066911 (n + 1)

end A066911

/-! ## A066911.P1549334179442915540

`∑[A061397(n+1)]-A181894(n%A007947(n+1)+1)`
-/

namespace A066911.P1549334179442915540
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061397 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A181894 (Int.tmod (n : ℤ) (A007947 (n + 1)) + 1).toNat

end

end A066911.P1549334179442915540

namespace A066911

/-- `∑[A061397(n+1)]-A181894(n%A007947(n+1)+1)` -/
def P1549334179442915540.Spec : Prop :=
  ∀ n, P1549334179442915540.a n = A066911 (n + 1)

end A066911

/-! ## A066911.P6339688278948189251

`A063960(2*(n+1))-A008472(n+1)`
-/

namespace A066911.P6339688278948189251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063960 (2 * (n + 1)) - A008472 (n + 1)

end

end A066911.P6339688278948189251

namespace A066911

/-- `A063960(2*(n+1))-A008472(n+1)` -/
def P6339688278948189251.Spec : Prop :=
  ∀ n, P6339688278948189251.a n = A066911 (n + 1)

end A066911

/-!
# A066912: Fourth column of the Eulerian triangle A008292 in square array format.

The programs for A066912, the canonical program `A066912.P1143749707517610898` is in `Seq.B000.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A066912 has offset 0).

The definition of A066912 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 164 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A066912.P1143749707517610898

`4^(n+3)-(n+4)*3^(n+3)+C(n+4, 2)*2^(n+3)-C(n+4, 3)`

The canonical program, it is in `Seq.B000.C010`.
-/

namespace A066912

/-- `4^(n+3)-(n+4)*3^(n+3)+C(n+4, 2)*2^(n+3)-C(n+4, 3)` -/
def P1143749707517610898.Spec : Prop :=
  ∀ n, P1143749707517610898.a n = A066912 n

theorem P1143749707517610898.correct : P1143749707517610898.Spec := by
  intro n
  simp only [A066912]

end A066912

/-! ## A066912.P17586135940401760570

`A151577(n+4)/(n+4)`
-/

namespace A066912.P17586135940401760570
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A151577 (n + 4) : ℚ) / (n + 4 : ℚ)

end

end A066912.P17586135940401760570

namespace A066912

/-- `A151577(n+4)/(n+4)` -/
def P17586135940401760570.Spec : Prop :=
  ∀ n, P17586135940401760570.a n = (A066912 n : ℚ)

end A066912

/-! ## A066912.P961365811400157912

`A173018(A167614(n+2))`
-/

namespace A066912.P961365811400157912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173018 (A167614 (n + 2)).toNat

end

end A066912.P961365811400157912

namespace A066912

/-- `A173018(A167614(n+2))` -/
def P961365811400157912.Spec : Prop :=
  ∀ n, P961365811400157912.a n = A066912 n

end A066912

/-! ## A066912.P13182110451443626194

`A123125(A167614(n+2)+1)`
-/

namespace A066912.P13182110451443626194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123125 (A167614 (n + 2) + 1).toNat

end

end A066912.P13182110451443626194

namespace A066912

/-- `A123125(A167614(n+2)+1)` -/
def P13182110451443626194.Spec : Prop :=
  ∀ n, P13182110451443626194.a n = A066912 n

end A066912

/-! ## A066912.P2401973913835242810

`A123125(A166136(n+2)-2)`
-/

namespace A066912.P2401973913835242810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123125 (A166136 (n + 2) - 2).toNat

end

end A066912.P2401973913835242810

namespace A066912

/-- `A123125(A166136(n+2)-2)` -/
def P2401973913835242810.Spec : Prop :=
  ∀ n, P2401973913835242810.a n = A066912 n

end A066912

/-! ## A066912.P8363720038204201225

`A123125(A167487(n+1)+n)`
-/

namespace A066912.P8363720038204201225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123125 (A167487 (n + 1) + (n : ℤ)).toNat

end

end A066912.P8363720038204201225

namespace A066912

/-- `A123125(A167487(n+1)+n)` -/
def P8363720038204201225.Spec : Prop :=
  ∀ n, P8363720038204201225.a n = A066912 n

end A066912

/-! ## A066912.P13138856902436879324

`A173018(∑[n+4]+1)`
-/

namespace A066912.P13138856902436879324
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173018 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A066912.P13138856902436879324

namespace A066912

/-- `A173018(∑[n+4]+1)` -/
def P13138856902436879324.Spec : Prop :=
  ∀ n, P13138856902436879324.a n = A066912 n

end A066912

/-! ## A066912.P17029589124682776224

`A123125(∑[n+3]+n+3)`
-/

namespace A066912.P17029589124682776224
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123125 (∑ j ∈ Finset.range (n + 1), f1 j + (n + 3))

end

end A066912.P17029589124682776224

namespace A066912

/-- `A123125(∑[n+3]+n+3)` -/
def P17029589124682776224.Spec : Prop :=
  ∀ n, P17029589124682776224.a n = A066912 n

end A066912

/-! ## A066912.P5473058972186590267

`record[A123125(abs(A046691(n)))]`
-/

namespace A066912.P5473058972186590267
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123125 |A046691 n|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A066912.P5473058972186590267

namespace A066912

/-- `record[A123125(abs(A046691(n)))]` -/
def P5473058972186590267.Spec : Prop :=
  ∀ n, P5473058972186590267.a n = A066912 n

end A066912

/-!
# A066913: (sum of primes < n that do not divide n) (mod n).

The programs for A066913, the canonical program `A066913.P6088675062854095673` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A066913 has offset 1).

The definition of A066913 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A066913.P6088675062854095673

`A066911(n+1)%(n+1)`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A066913

/-- `A066911(n+1)%(n+1)` -/
def P6088675062854095673.Spec : Prop :=
  ∀ n, P6088675062854095673.a n = A066913 (n + 1)

theorem P6088675062854095673.correct : P6088675062854095673.Spec := by
  intro n
  simp only [A066913, Nat.add_sub_cancel]

end A066913

/-! ## A066913.P10287591065360314508

`∑[∑{p}[n, #]-A105221(n+1)]%(n+1)`
-/

namespace A066913.P10287591065360314508
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ p ∈ Nat.primeFactors (f2 n), p : ℕ) : ℤ) - A105221 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) (n + 1 : ℤ)

end

end A066913.P10287591065360314508

namespace A066913

/-- `∑[∑{p}[n, #]-A105221(n+1)]%(n+1)` -/
def P10287591065360314508.Spec : Prop :=
  ∀ n, P10287591065360314508.a n = A066913 (n + 1)

end A066913

/-! ## A066913.P10228458235439984013

`(A034387(n+1)-A008472(n+1))%(n+1)`
-/

namespace A066913.P10228458235439984013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A034387 (n + 1) - A008472 (n + 1)) (n + 1 : ℤ)

end

end A066913.P10228458235439984013

namespace A066913

/-- `(A034387(n+1)-A008472(n+1))%(n+1)` -/
def P10228458235439984013.Spec : Prop :=
  ∀ n, P10228458235439984013.a n = A066913 (n + 1)

end A066913

/-! ## A066913.P13490558554623546036

`(A158662(n+1)-A074372(n+1))%(n+1)`
-/

namespace A066913.P13490558554623546036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A158662 (n + 1) - A074372 (n + 1)) (n + 1 : ℤ)

end

end A066913.P13490558554623546036

namespace A066913

/-- `(A158662(n+1)-A074372(n+1))%(n+1)` -/
def P13490558554623546036.Spec : Prop :=
  ∀ n, P13490558554623546036.a n = A066913 (n + 1)

end A066913

/-! ## A066913.P5714559712935463173

`(∑[A061397(n+1)]-(A074372(n+1)-1))%(n+1)`
-/

namespace A066913.P5714559712935463173
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061397 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j - (A074372 (n + 1) - 1)) (n + 1 : ℤ)

end

end A066913.P5714559712935463173

namespace A066913

/-- `(∑[A061397(n+1)]-(A074372(n+1)-1))%(n+1)` -/
def P5714559712935463173.Spec : Prop :=
  ∀ n, P5714559712935463173.a n = A066913 (n + 1)

end A066913

/-! ## A066913.P3534471710422876158

`(A007504(A000720(n+1))-A008472(n+1))%(n+1)`
-/

namespace A066913.P3534471710422876158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A007504 (A000720 (n + 1)).toNat - A008472 (n + 1)) (n + 1 : ℤ)

end

end A066913.P3534471710422876158

namespace A066913

/-- `(A007504(A000720(n+1))-A008472(n+1))%(n+1)` -/
def P3534471710422876158.Spec : Prop :=
  ∀ n, P3534471710422876158.a n = A066913 (n + 1)

end A066913

/-! ## A066913.P4843363243587781641

`(A034387(n+1)+A024924(n)-A024924(n+1))%(n+1)`
-/

namespace A066913.P4843363243587781641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A034387 (n + 1) + (A024924 n - A024924 (n + 1))) (n + 1 : ℤ)

end

end A066913.P4843363243587781641

namespace A066913

/-- `(A034387(n+1)+A024924(n)-A024924(n+1))%(n+1)` -/
def P4843363243587781641.Spec : Prop :=
  ∀ n, P4843363243587781641.a n = A066913 (n + 1)

end A066913

/-!
# A066915: a(n) = n^phi(n) + 1.

The programs for A066915, there is no canonical definition to state claims against.
-/

/-! ## A066915.P5780166036691068090

`A062981(n+1)+1`
-/

namespace A066915.P5780166036691068090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062981 (n + 1) + 1

end

end A066915.P5780166036691068090

/-! ## A066915.P14020587719319297195

`A066916(n+1)+2`
-/

namespace A066915.P14020587719319297195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066916 (n + 1) + 2

end

end A066915.P14020587719319297195

/-! ## A066915.P18043701714124347559

`(n+1)^Δ[A002088(n)]+1`
-/

namespace A066915.P18043701714124347559
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002088 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) ^ (f1 (n + 1) - f1 n : ℤ) + 1

end

end A066915.P18043701714124347559

/-! ## A066915.P4138418362870616815

`(n+1)^Δ[A005728(n)]+1`
-/

namespace A066915.P4138418362870616815
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005728 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) ^ (f1 (n + 1) - f1 n : ℤ) + 1

end

end A066915.P4138418362870616815

/-! ## A066915.P3876618549067497707

`(n+1)*A175504(n+1)+1`
-/

namespace A066915.P3876618549067497707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A175504 (n + 1) + 1

end

end A066915.P3876618549067497707

/-! ## A066915.P6565539762282342244

`A175701(n+1)/(n+1)+1`
-/

namespace A066915.P6565539762282342244
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A175701 (n + 1) : ℚ) / (n + 1 : ℚ) + 1

end

end A066915.P6565539762282342244

/-! ## A066915.P17841053207561865569

`(n+1)^A000010(n+1)+1`
-/

namespace A066915.P17841053207561865569
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) ^ (A000010 (n + 1) : ℤ) + 1

end

end A066915.P17841053207561865569

/-! ## A066915.P11527618108149295481

`(n+1)^A225530(n+1)+1`
-/

namespace A066915.P11527618108149295481
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) ^ (A225530 (n + 1) : ℤ) + 1

end

end A066915.P11527618108149295481

/-! ## A066915.P13480700259924654888

`(n+1)^A384710(n+1)+1`
-/

namespace A066915.P13480700259924654888
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) ^ (A384710 (n + 1) : ℤ) + 1

end

end A066915.P13480700259924654888

/-! ## A066915.P6898671364626911614

`(n+1)^(A109606(n+1)+1)+1`
-/

namespace A066915.P6898671364626911614
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) ^ (A109606 (n + 1) + 1 : ℤ) + 1

end

end A066915.P6898671364626911614

/-!
# A066916: a(n) = n^phi(n) - 1.

The programs for A066916, there is no canonical definition to state claims against.
-/

/-! ## A066916.P9082080980246688121

`A062981(n+1)-1`
-/

namespace A066916.P9082080980246688121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062981 (n + 1) - 1

end

end A066916.P9082080980246688121

/-! ## A066916.P9396764408523423216

`(n+1)^((n+1)/∏{p}[n+1, #]*∏{p}[n+1, #-1])-1`
-/

namespace A066916.P9396764408523423216
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℝ) ^ ((n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℚ) * ((∏ p ∈ Nat.primeFactors (f2 n), ((p : ℤ) - 1) : ℤ) : ℚ) : ℝ) - 1

end

end A066916.P9396764408523423216

/-! ## A066916.P10362161260630264960

`A066915(n+1)-2`
-/

namespace A066916.P10362161260630264960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066915 (n + 1) - 2

end

end A066916.P10362161260630264960

/-! ## A066916.P16142473975726974200

`(n+1)^Δ[A002088(n)]-1`
-/

namespace A066916.P16142473975726974200
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002088 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) ^ (f1 (n + 1) - f1 n : ℤ) - 1

end

end A066916.P16142473975726974200

/-! ## A066916.P18277341311138198102

`(n+1)*A175504(n+1)-1`
-/

namespace A066916.P18277341311138198102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A175504 (n + 1) - 1

end

end A066916.P18277341311138198102

/-! ## A066916.P6968486413973852259

`A175701(n+1)/(n+1)-1`
-/

namespace A066916.P6968486413973852259
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A175701 (n + 1) : ℚ) / (n + 1 : ℚ) - 1

end

end A066916.P6968486413973852259

/-! ## A066916.P906989484377699345

`(n+1)^A000010(n+1)-1`
-/

namespace A066916.P906989484377699345
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) ^ (A000010 (n + 1) : ℤ) - 1

end

end A066916.P906989484377699345

/-! ## A066916.P941050892508016813

`(n+1)^A225530(n+1)-1`
-/

namespace A066916.P941050892508016813
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) ^ (A225530 (n + 1) : ℤ) - 1

end

end A066916.P941050892508016813

/-! ## A066916.P3050404329677344635

`(n+1)^A384710(n+1)-1`
-/

namespace A066916.P3050404329677344635
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) ^ (A384710 (n + 1) : ℤ) - 1

end

end A066916.P3050404329677344635

/-! ## A066916.P3181084050248653960

`(n+1)^A282634(∑[n]+1)-1`
-/

namespace A066916.P3181084050248653960
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) ^ (A282634 (∑ j ∈ Finset.range (n + 1), f1 j + 1) : ℤ) - 1

end

end A066916.P3181084050248653960

/-!
# A066919: a(n) = least number of applications of f to n to reach 1, where f is defined by f(n) = phi(n) if n is even; = sigma(n) if n is odd.

The programs for A066919, there is no canonical definition to state claims against.
-/

/-! ## A066919.P13597511477627262990

`or(A037827(A158604(n)), A091446(n))`
-/

namespace A066919.P13597511477627262990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A037827 (A158604 n).toNat) (A091446 n)

end

end A066919.P13597511477627262990

/-! ## A066919.P9590447923006992317

`or(A037827(A158604(n)), A240315(n+1))`
-/

namespace A066919.P9590447923006992317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A037827 (A158604 n).toNat) (A240315 (n + 1))

end

end A066919.P9590447923006992317

/-! ## A066919.P15564357535177948529

`A037827(A158604(n)-A011686(3*n+2))`
-/

namespace A066919.P15564357535177948529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037827 (A158604 n - A011686 (3 * n + 2)).toNat

end

end A066919.P15564357535177948529

/-! ## A066919.P12881741134661583055

`A037827(xor(A011686(3*n+2), A158604(n)))`
-/

namespace A066919.P12881741134661583055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037827 (Int.xor (A011686 (3 * n + 2)) (A158604 n)).toNat

end

end A066919.P12881741134661583055

/-! ## A066919.P12284660745580524920

`A037827(A158604(n))+A014083(A001952(n+1))`
-/

namespace A066919.P12284660745580524920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037827 (A158604 n).toNat + A014083 (A001952 (n + 1)).toNat

end

end A066919.P12284660745580524920

/-!
# A066920: Number of partitions of n into lucky parts.

The programs for A066920, there is no canonical definition to state claims against.
-/

/-! ## A066920.P13711279555143651963

`A035381(n+1)-A292547(A022384(n))`
-/

namespace A066920.P13711279555143651963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035381 (n + 1) - A292547 (A022384 n).toNat

end

end A066920.P13711279555143651963

/-! ## A066920.P9289963376207509879

`A035381(n+1)-A185284(A000961(n+1))`
-/

namespace A066920.P9289963376207509879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035381 (n + 1) - A185284 (A000961 (n + 1)).toNat

end

end A066920.P9289963376207509879

/-! ## A066920.P15961206573470170262

`A035381(n+1)-A185284(A035396(n+1))`
-/

namespace A066920.P15961206573470170262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035381 (n + 1) - A185284 (A035396 (n + 1)).toNat

end

end A066920.P15961206573470170262

/-! ## A066920.P17245412575228630320

`A035381(n+1)-A185284(2*n+1)`
-/

namespace A066920.P17245412575228630320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035381 (n + 1) - A185284 (2 * n + 1)

end

end A066920.P17245412575228630320

/-! ## A066920.P2586559560502454107

`A035381(n+1)-A185238(A096503(n+1))`
-/

namespace A066920.P2586559560502454107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035381 (n + 1) - A185238 (A096503 (n + 1)).toNat

end

end A066920.P2586559560502454107

/-!
# A066921: a(n) = lcm(Omega(n), omega(n)).

The programs for A066921, the canonical program `A066921.P13452838531310547500` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A066921 has offset 1).

The definition of A066921 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A066921.P8697112498062533132

`lcm(∑{e}[n+1, #], ∑{e}[n+1, A136640(#)])`
-/

namespace A066921.P8697112498062533132
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm ((∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p : ℕ) : ℤ) (∑ p ∈ Nat.primeFactors (f2 n), A136640 (Nat.factorization (f2 n) p))

end

end A066921.P8697112498062533132

namespace A066921

/-- `lcm(∑{e}[n+1, #], ∑{e}[n+1, A136640(#)])` -/
def P8697112498062533132.Spec : Prop :=
  ∀ n, (P8697112498062533132.a n : ℤ) = A066921 (n + 1)

end A066921

/-! ## A066921.P13452838531310547500

`lcm(A001221(n+1), Δ[A022559(n)])`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A066921

/-- `lcm(A001221(n+1), Δ[A022559(n)])` -/
def P13452838531310547500.Spec : Prop :=
  ∀ n, (P13452838531310547500.a n : ℤ) = A066921 (n + 1)

theorem P13452838531310547500.correct : P13452838531310547500.Spec := by
  intro n
  simp only [A066921, Nat.add_sub_cancel]

end A066921

/-! ## A066921.P9963639557093717923

`lcm(A001222(n+1), A158210(n+1))`
-/

namespace A066921.P9963639557093717923
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A001222 (n + 1)) (A158210 (n + 1))

end

end A066921.P9963639557093717923

namespace A066921

/-- `lcm(A001222(n+1), A158210(n+1))` -/
def P9963639557093717923.Spec : Prop :=
  ∀ n, (P9963639557093717923.a n : ℤ) = A066921 (n + 1)

end A066921

/-! ## A066921.P6278859619630329614

`lcm(A073093(n+1)-1, A001221(A007947(n+1)))`
-/

namespace A066921.P6278859619630329614
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A073093 (n + 1) - 1) (A001221 (A007947 (n + 1)).toNat)

end

end A066921.P6278859619630329614

namespace A066921

/-- `lcm(A073093(n+1)-1, A001221(A007947(n+1)))` -/
def P6278859619630329614.Spec : Prop :=
  ∀ n, (P6278859619630329614.a n : ℤ) = A066921 (n + 1)

end A066921

/-! ## A066921.P8517999303809668759

`gcd(A001222(n+1), A181591(n+1))*A001221(n+1)`
-/

namespace A066921.P8517999303809668759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.gcd (A001222 (n + 1)) (A181591 (n + 1)) : ℤ) * A001221 (n + 1)

end

end A066921.P8517999303809668759

namespace A066921

/-- `gcd(A001222(n+1), A181591(n+1))*A001221(n+1)` -/
def P8517999303809668759.Spec : Prop :=
  ∀ n, P8517999303809668759.a n = A066921 (n + 1)

end A066921

/-! ## A066921.P15332096689508013863

`A157754(A124508(n+1))`
-/

namespace A066921.P15332096689508013863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157754 (A124508 (n + 1)).toNat

end

end A066921.P15332096689508013863

namespace A066921

/-- `A157754(A124508(n+1))` -/
def P15332096689508013863.Spec : Prop :=
  ∀ n, P15332096689508013863.a n = A066921 (n + 1)

end A066921

/-!
# A066922: a(n) = gcd(Omega(n), omega(n)).

The programs for A066922, the canonical program `A066922.P17737872667638270886` is in `Seq.B000.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A066922 has offset 1).

The definition of A066922 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A066922.P17737872667638270886

`gcd(∑{e}[n+1, #-1], ∑{e}[n+1, #])`

The canonical program, it is in `Seq.B000.C010`.
-/

namespace A066922

/-- `gcd(∑{e}[n+1, #-1], ∑{e}[n+1, #])` -/
def P17737872667638270886.Spec : Prop :=
  ∀ n, (P17737872667638270886.a n : ℤ) = A066922 (n + 1)

theorem P17737872667638270886.correct : P17737872667638270886.Spec := by
  intro n
  simp only [A066922, Nat.add_sub_cancel]

end A066922

/-! ## A066922.P7835910784565874571

`gcd(∑{e}[n+1, #], A001222(∏{p}[n+1, #]))`
-/

namespace A066922.P7835910784565874571
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd ((∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p : ℕ) : ℤ) (A001222 (∏ p ∈ Nat.primeFactors (f2 n), p))

end

end A066922.P7835910784565874571

namespace A066922

/-- `gcd(∑{e}[n+1, #], A001222(∏{p}[n+1, #]))` -/
def P7835910784565874571.Spec : Prop :=
  ∀ n, (P7835910784565874571.a n : ℤ) = A066922 (n + 1)

end A066922

/-! ## A066922.P1688557150956193463

`A052409(A124508(n+1))`
-/

namespace A066922.P1688557150956193463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052409 (A124508 (n + 1)).toNat

end

end A066922.P1688557150956193463

namespace A066922

/-- `A052409(A124508(n+1))` -/
def P1688557150956193463.Spec : Prop :=
  ∀ n, P1688557150956193463.a n = A066922 (n + 1)

end A066922

/-! ## A066922.P13165660408323502239

`A366785(A046523(n+1))`
-/

namespace A066922.P13165660408323502239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366785 (A046523 (n + 1)).toNat

end

end A066922.P13165660408323502239

namespace A066922

/-- `A366785(A046523(n+1))` -/
def P13165660408323502239.Spec : Prop :=
  ∀ n, P13165660408323502239.a n = A066922 (n + 1)

end A066922

/-! ## A066922.P16147028317166324874

`A366785(A071364(n+1))`
-/

namespace A066922.P16147028317166324874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366785 (A071364 (n + 1)).toNat

end

end A066922.P16147028317166324874

namespace A066922

/-- `A366785(A071364(n+1))` -/
def P16147028317166324874.Spec : Prop :=
  ∀ n, P16147028317166324874.a n = A066922 (n + 1)

end A066922

/-! ## A066922.P357793245090211290

`A366785(A329607(n+1))`
-/

namespace A066922.P357793245090211290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366785 (A329607 (n + 1)).toNat

end

end A066922.P357793245090211290

namespace A066922

/-- `A366785(A329607(n+1))` -/
def P357793245090211290.Spec : Prop :=
  ∀ n, P357793245090211290.a n = A066922 (n + 1)

end A066922

/-! ## A066922.P1757112040875301695

`gcd(A001221(n+1), Δ[A022559(n)])`
-/

namespace A066922.P1757112040875301695
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022559 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A001221 (n + 1)) (f1 (n + 1) - f1 n)

end

end A066922.P1757112040875301695

namespace A066922

/-- `gcd(A001221(n+1), Δ[A022559(n)])` -/
def P1757112040875301695.Spec : Prop :=
  ∀ n, (P1757112040875301695.a n : ℤ) = A066922 (n + 1)

end A066922

/-! ## A066922.P11685696972993263177

`gcd(A001222(n+1), A046660(n+1))`
-/

namespace A066922.P11685696972993263177
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A001222 (n + 1)) (A046660 (n + 1))

end

end A066922.P11685696972993263177

namespace A066922

/-- `gcd(A001222(n+1), A046660(n+1))` -/
def P11685696972993263177.Spec : Prop :=
  ∀ n, (P11685696972993263177.a n : ℤ) = A066922 (n + 1)

end A066922

/-! ## A066922.P10550180443778758728

`gcd(A066921(n+1), A080256(n+1))`
-/

namespace A066922.P10550180443778758728
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A066921 (n + 1)) (A080256 (n + 1))

end

end A066922.P10550180443778758728

namespace A066922

/-- `gcd(A066921(n+1), A080256(n+1))` -/
def P10550180443778758728.Spec : Prop :=
  ∀ n, (P10550180443778758728.a n : ℤ) = A066922 (n + 1)

end A066922

/-! ## A066922.P3158704083816009070

`A366785(A320389(n+1))`
-/

namespace A066922.P3158704083816009070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366785 (A320389 (n + 1)).toNat

end

end A066922.P3158704083816009070

namespace A066922

/-- `A366785(A320389(n+1))` -/
def P3158704083816009070.Spec : Prop :=
  ∀ n, P3158704083816009070.a n = A066922 (n + 1)

end A066922

/-!
# A066924: Nonprime numbers n such that the GCD of n and the Chowla's function of n (A048050) is >= n/3.

The programs for A066924, there is no canonical definition to state claims against.
-/

/-! ## A066924.P3888731732194458767

`A053645((a(n-1)+1)²)` with `a(0)=1, a(1)=4`
-/

namespace A066924.P3888731732194458767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 4] fun n a =>
  A053645 ((a (n - 1) + 1) ^ 2).toNat

end

end A066924.P3888731732194458767

/-!
# A066925: Numbers k having a partition k = sum x_i for which sum k/x_i is the same partition of k.

The programs for A066925, there is no canonical definition to state claims against.
-/

/-! ## A066925.P12854502832813160604

`A066926(A113763(n+1)%p?[A161703(n)])`
-/

namespace A066925.P12854502832813160604
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161703 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066926 (Int.tmod (A113763 (n + 1)) (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))).toNat

end

end A066925.P12854502832813160604

/-! ## A066925.P2897503445144912392

`A066926(A113763(n+1))+A000007(A000045(n+1))`
-/

namespace A066925.P2897503445144912392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066926 (A113763 (n + 1)).toNat + A000007 (A000045 (n + 1)).toNat

end

end A066925.P2897503445144912392

/-! ## A066925.P14372962744039205633

`A066926(A113763(n+1))+A000007(A066926(n+1)²)`
-/

namespace A066925.P14372962744039205633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066926 (A113763 (n + 1)).toNat + A000007 (A066926 (n + 1) ^ 2).toNat

end

end A066925.P14372962744039205633

/-! ## A066925.P15578872317747233136

`∩[A066926(n+1), A258266(n+1)]`
-/

namespace A066925.P15578872317747233136
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066926 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258266 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A066925.P15578872317747233136

/-! ## A066925.P13580624952215294474

`∩[A066926(n+1), A085736(n+1)]`
-/

namespace A066925.P13580624952215294474
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066926 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085736 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A066925.P13580624952215294474

/-!
# A066927: Least k such that between p and 2p, for all primes > 3, there is always a number that is twice a square, i.e.; a k such that p < 2k^2 < 2p.

The programs for A066927, the canonical program `A066927.P9705809913949217984` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A066927 has offset 1).

The definition of A066927 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A066927.P13984389497614865140

`ceil(sqrt((p?[round(8*n/7)]+1)/2))`
-/

namespace A066927.P13984389497614865140
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (8 * ((n : ℚ) / 7))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt ((f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) + 1 : ℚ) / 2 : ℝ)⌉

end

end A066927.P13984389497614865140

namespace A066927

/-- `ceil(sqrt((p?[round(8*n/7)]+1)/2))` -/
def P13984389497614865140.Spec : Prop :=
  ∀ n, P13984389497614865140.a n = A066927 (n + 1)

end A066927

/-! ## A066927.P569775561865733165

`ceil(sqrt(A130291(n+1)))`
-/

namespace A066927.P569775561865733165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (A130291 (n + 1) : ℝ)⌉

end

end A066927.P569775561865733165

namespace A066927

/-- `ceil(sqrt(A130291(n+1)))` -/
def P569775561865733165.Spec : Prop :=
  ∀ n, P569775561865733165.a n = A066927 (n + 1)

end A066927

/-! ## A066927.P9705809913949217984

`floor(sqrt(A130290(n+1)))+1`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A066927

/-- `floor(sqrt(A130290(n+1)))+1` -/
def P9705809913949217984.Spec : Prop :=
  ∀ n, P9705809913949217984.a n = A066927 (n + 1)

theorem P9705809913949217984.correct : P9705809913949217984.Spec := by
  intro n
  simp only [A066927, Nat.add_sub_cancel]

end A066927

/-! ## A066927.P15757469785403413736

`ceil(sqrt(A008864(n+1)/2))`
-/

namespace A066927.P15757469785403413736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt ((A008864 (n + 1) : ℚ) / 2 : ℝ)⌉

end

end A066927.P15757469785403413736

namespace A066927

/-- `ceil(sqrt(A008864(n+1)/2))` -/
def P15757469785403413736.Spec : Prop :=
  ∀ n, P15757469785403413736.a n = A066927 (n + 1)

end A066927

/-! ## A066927.P5037117827802905937

`ceil(sqrt(A175216(n+1)/2))`
-/

namespace A066927.P5037117827802905937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt ((A175216 (n + 1) : ℚ) / 2 : ℝ)⌉

end

end A066927.P5037117827802905937

namespace A066927

/-- `ceil(sqrt(A175216(n+1)/2))` -/
def P5037117827802905937.Spec : Prop :=
  ∀ n, P5037117827802905937.a n = A066927 (n + 1)

end A066927

/-! ## A066927.P130945815079688931

`ceil(sqrt(cosh(log(A000040(n+1)))))`
-/

namespace A066927.P130945815079688931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (Real.cosh (Real.log (A000040 (n + 1) : ℝ)))⌉

end

end A066927.P130945815079688931

namespace A066927

/-- `ceil(sqrt(cosh(log(A000040(n+1)))))` -/
def P130945815079688931.Spec : Prop :=
  ∀ n, P130945815079688931.a n = A066927 (n + 1)

end A066927

/-! ## A066927.P8192659862233882932

`floor(sqrt(p?[xor(1, n)]/2))+1`
-/

namespace A066927.P8192659862233882932
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.sqrt ((f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) : ℚ) / 2 : ℝ)⌋ + 1

end

end A066927.P8192659862233882932

namespace A066927

/-- `floor(sqrt(p?[xor(1, n)]/2))+1` -/
def P8192659862233882932.Spec : Prop :=
  ∀ n, P8192659862233882932.a n = A066927 (n + 1)

end A066927

/-! ## A066927.P5061163461358298562

`floor(sqrt(p?[n-(-1)^n]/2))+1`
-/

namespace A066927.P5061163461358298562
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - (-1) ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.sqrt ((f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) : ℚ) / 2 : ℝ)⌋ + 1

end

end A066927.P5061163461358298562

namespace A066927

/-- `floor(sqrt(p?[n-(-1)^n]/2))+1` -/
def P5061163461358298562.Spec : Prop :=
  ∀ n, P5061163461358298562.a n = A066927 (n + 1)

end A066927

/-! ## A066927.P14848859723805490895

`A003059(A130291(n+1))`
-/

namespace A066927.P14848859723805490895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003059 (A130291 (n + 1)).toNat

end

end A066927.P14848859723805490895

namespace A066927

/-- `A003059(A130291(n+1))` -/
def P14848859723805490895.Spec : Prop :=
  ∀ n, P14848859723805490895.a n = A066927 (n + 1)

end A066927

/-! ## A066927.P15525484095568170786

`ceil(sqrt(A008619(p?[n%3+n])))`
-/

namespace A066927.P15525484095568170786
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n % 3 + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (A008619 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)) : ℝ)⌉

end

end A066927.P15525484095568170786

namespace A066927

/-- `ceil(sqrt(A008619(p?[n%3+n])))` -/
def P15525484095568170786.Spec : Prop :=
  ∀ n, P15525484095568170786.a n = A066927 (n + 1)

end A066927

/-! ## A066927.P18149251815753965806

`A083796(A245508(n+1))`
-/

namespace A066927.P18149251815753965806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083796 (A245508 (n + 1)).toNat

end

end A066927.P18149251815753965806

namespace A066927

/-- `A083796(A245508(n+1))` -/
def P18149251815753965806.Spec : Prop :=
  ∀ n, P18149251815753965806.a n = A066927 (n + 1)

end A066927

/-! ## A066927.P10704179138796673309

`A083023(A073582(n+1))`
-/

namespace A066927.P10704179138796673309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083023 (A073582 (n + 1)).toNat

end

end A066927.P10704179138796673309

namespace A066927

/-- `A083023(A073582(n+1))` -/
def P10704179138796673309.Spec : Prop :=
  ∀ n, P10704179138796673309.a n = A066927 (n + 1)

end A066927

/-! ## A066927.P4752254269315581506

`A084359(A089241(n+1))`
-/

namespace A066927.P4752254269315581506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084359 (A089241 (n + 1)).toNat

end

end A066927.P4752254269315581506

namespace A066927

/-- `A084359(A089241(n+1))` -/
def P4752254269315581506.Spec : Prop :=
  ∀ n, P4752254269315581506.a n = A066927 (n + 1)

end A066927

/-! ## A066927.P13313126851082390068

`A083023(A100484(n+1))`
-/

namespace A066927.P13313126851082390068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083023 (A100484 (n + 1)).toNat

end

end A066927.P13313126851082390068

namespace A066927

/-- `A083023(A100484(n+1))` -/
def P13313126851082390068.Spec : Prop :=
  ∀ n, P13313126851082390068.a n = A066927 (n + 1)

end A066927

/-! ## A066927.P18289474735141321857

`A083023(A001747(n+2))`
-/

namespace A066927.P18289474735141321857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083023 (A001747 (n + 2)).toNat

end

end A066927.P18289474735141321857

namespace A066927

/-- `A083023(A001747(n+2))` -/
def P18289474735141321857.Spec : Prop :=
  ∀ n, P18289474735141321857.a n = A066927 (n + 1)

end A066927

/-! ## A066927.P7709762756781069167

`A083023(A074845(n+2))`
-/

namespace A066927.P7709762756781069167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083023 (A074845 (n + 2)).toNat

end

end A066927.P7709762756781069167

namespace A066927

/-- `A083023(A074845(n+2))` -/
def P7709762756781069167.Spec : Prop :=
  ∀ n, P7709762756781069167.a n = A066927 (n + 1)

end A066927

/-! ## A066927.P18205495779060986430

`A083023(A161344(n+2))`
-/

namespace A066927.P18205495779060986430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083023 (A161344 (n + 2)).toNat

end

end A066927.P18205495779060986430

namespace A066927

/-- `A083023(A161344(n+2))` -/
def P18205495779060986430.Spec : Prop :=
  ∀ n, P18205495779060986430.a n = A066927 (n + 1)

end A066927

/-! ## A066927.P7246829841836887478

`A084359(A161425(n+2))`
-/

namespace A066927.P7246829841836887478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084359 (A161425 (n + 2)).toNat

end

end A066927.P7246829841836887478

namespace A066927

/-- `A084359(A161425(n+2))` -/
def P7246829841836887478.Spec : Prop :=
  ∀ n, P7246829841836887478.a n = A066927 (n + 1)

end A066927

/-!
# A066928: Numbers k such that floor(k*log(k)) is prime.

The programs for A066928, the canonical program `A066928.P10235930801971933906` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A066928 has offset 1).

The definition of A066928 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1024 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A066928.P10235930801971933906

`eq[1, A001222(A050504(n+2))]+2`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A066928

/-- `eq[1, A001222(A050504(n+2))]+2` -/
def P10235930801971933906.Spec : Prop :=
  ∀ n, (P10235930801971933906.a n : ℤ) = A066928 (n + 1)

theorem P10235930801971933906.correct : P10235930801971933906.Spec := by
  intro n
  simp only [A066928, Nat.add_sub_cancel]

end A066928

/-! ## A066928.P7536289979892680767

`A070984(A378422(n+1))`
-/

namespace A066928.P7536289979892680767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070984 (A378422 (n + 1)).toNat

end

end A066928.P7536289979892680767

namespace A066928

/-- `A070984(A378422(n+1))` -/
def P7536289979892680767.Spec : Prop :=
  ∀ n, P7536289979892680767.a n = A066928 (n + 1)

end A066928

/-! ## A066928.P2149347119644404501

`A225545(p?[A050504(n+1)]+1)`
-/

namespace A066928.P2149347119644404501
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050504 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225545 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) + 1).toNat

end

end A066928.P2149347119644404501

namespace A066928

/-- `A225545(p?[A050504(n+1)]+1)` -/
def P2149347119644404501.Spec : Prop :=
  ∀ n, P2149347119644404501.a n = A066928 (n + 1)

end A066928

/-! ## A066928.P8126143186392538716

`A024417(p?[A050504(n+1)])+1`
-/

namespace A066928.P8126143186392538716
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050504 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024417 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat + 1

end

end A066928.P8126143186392538716

namespace A066928

/-- `A024417(p?[A050504(n+1)])+1` -/
def P8126143186392538716.Spec : Prop :=
  ∀ n, P8126143186392538716.a n = A066928 (n + 1)

end A066928

/-!
# A066929: Numbers n such that Omega(n) = floor(log(n)).

The programs for A066929, the canonical program `A066929.P16442121695660913999` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A066929 has offset 1).

The definition of A066929 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 184 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A066929.P10114551234563998575

`eq[floor(log(n+1)), A001222(n+1)]+1`
-/

namespace A066929.P10114551234563998575
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.log (n + 1 : ℝ)⌋

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A066929.P10114551234563998575

namespace A066929

/-- `eq[floor(log(n+1)), A001222(n+1)]+1` -/
def P10114551234563998575.Spec : Prop :=
  ∀ n, (P10114551234563998575.a n : ℤ) = A066929 (n + 1)

end A066929

/-! ## A066929.P16442121695660913999

`eq[∑{e}[n+1, #], A000195(n+1)]+1`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A066929

/-- `eq[∑{e}[n+1, #], A000195(n+1)]+1` -/
def P16442121695660913999.Spec : Prop :=
  ∀ n, (P16442121695660913999.a n : ℤ) = A066929 (n + 1)

theorem P16442121695660913999.correct : P16442121695660913999.Spec := by
  intro n
  simp only [A066929, Nat.add_sub_cancel]

end A066929

/-! ## A066929.P7606633267574886918

`eq[A064800(n+1), A212445(n+1)]+1`
-/

namespace A066929.P7606633267574886918
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064800 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212445 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A066929.P7606633267574886918

namespace A066929

/-- `eq[A064800(n+1), A212445(n+1)]+1` -/
def P7606633267574886918.Spec : Prop :=
  ∀ n, (P7606633267574886918.a n : ℤ) = A066929 (n + 1)

end A066929

/-! ## A066929.P335599039197605126

`eq[A057428(n)+A004233(n+1), ∑{e}[n+1, #]]+1`
-/

namespace A066929.P335599039197605126
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 n + A004233 (n + 1)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f3 n), Nat.factorization (f3 n) p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = (f2 j : ℤ)) n + 1

end

end A066929.P335599039197605126

namespace A066929

/-- `eq[A057428(n)+A004233(n+1), ∑{e}[n+1, #]]+1` -/
def P335599039197605126.Spec : Prop :=
  ∀ n, (P335599039197605126.a n : ℤ) = A066929 (n + 1)

end A066929

/-! ## A066929.P16628776658086132322

`eq[A212450(n+1)-A065475(n+1), ∑{e}[n+1, #]]+1`
-/

namespace A066929.P16628776658086132322
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212450 (n + 1) - A065475 (n + 1)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f3 n), Nat.factorization (f3 n) p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = (f2 j : ℤ)) n + 1

end

end A066929.P16628776658086132322

namespace A066929

/-- `eq[A212450(n+1)-A065475(n+1), ∑{e}[n+1, #]]+1` -/
def P16628776658086132322.Spec : Prop :=
  ∀ n, (P16628776658086132322.a n : ℤ) = A066929 (n + 1)

end A066929

/-!
# A066930: Numbers k such that phi(sigma(k)) divides sigma(phi(k)).

The programs for A066930, there is no canonical definition to state claims against.
-/

/-! ## A066930.P12271024779388942971

`eq[1, A370690(n+1)]+1`
-/

namespace A066930.P12271024779388942971
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370690 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A066930.P12271024779388942971

/-! ## A066930.P2857011783074716100

`A326848(A025425(2*(n+1))*A187343(n+1))`
-/

namespace A066930.P2857011783074716100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326848 (A025425 (2 * (n + 1)) * A187343 (n + 1)).toNat

end

end A066930.P2857011783074716100

/-!
# A066932: a(n) is the denominator of b(n) where b(n)=1/b(n-1)+1/b(n-2) with b(1)=1 and b(2)=2.

The programs for A066932, there is no canonical definition to state claims against.
-/

/-! ## A066932.P11296252444074997037

`A096004(∏[∑[xor(1, n)]])`
-/

namespace A066932.P11296252444074997037
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096004 (∏ j ∈ Finset.range (n + 1), f1 j)

end

end A066932.P11296252444074997037

/-! ## A066932.P10640432895515296305

`A109168(a(n-1)²+5)` with `a(0)=1, a(1)=1, a(2)=2, a(3)=6`
-/

namespace A066932.P10640432895515296305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 2, 6] fun n a =>
  A109168 (a (n - 1) ^ 2 + 5).toNat

end

end A066932.P10640432895515296305

/-!
# A066934: Numbers k such that phi(k)==1 (mod bigomega(k)) where phi(n)=A000010(n) is the Euler totient function and bigomega(n)=A001222(n) is the number of prime divisors of n (counted with multiplicity).

The programs for A066934, there is no canonical definition to state claims against.
-/

/-! ## A066934.P5136561105030104695

`A002958(n+1)*A249032(A120378(n+1))`
-/

namespace A066934.P5136561105030104695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002958 (n + 1) * A249032 (A120378 (n + 1)).toNat

end

end A066934.P5136561105030104695

/-!
# A066935: Numbers k such that bigomega(k+1)==0 (mod bigomega(k)) where bigomega(n)=A001222(n) is the number of prime divisors of n (counted with multiplicity).

The programs for A066935, there is no canonical definition to state claims against.
-/

/-! ## A066935.P8767017886008006516

`lt[A164660(A235485(n)), A379106(n+1)]`
-/

namespace A066935.P8767017886008006516
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164660 (A235485 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379106 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A066935.P8767017886008006516

/-! ## A066935.P6199047238758057057

`eq[A063524(A144019(n+1)), A353498(n+1)]`
-/

namespace A066935.P6199047238758057057
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063524 (A144019 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353498 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A066935.P6199047238758057057

/-! ## A066935.P13081603930038965238

`eq[A353498(2*A144019(n+1)), A353498(n+1)]`
-/

namespace A066935.P13081603930038965238
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353498 (2 * A144019 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353498 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A066935.P13081603930038965238

/-! ## A066935.P216806049796887884

`eq[A049084(n+1), A122071(A212656(n))]`
-/

namespace A066935.P216806049796887884
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049084 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122071 (A212656 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A066935.P216806049796887884

/-! ## A066935.P6014065459563924941

`eq[A010051(A028778(n+1)), A096501(n+1)]`
-/

namespace A066935.P6014065459563924941
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (A028778 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096501 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A066935.P6014065459563924941

/-!
# A066936: Integers k such that prime(k)-1 == 0 (mod phi(k)) where prime(n)=A000040(n) is the n-th prime and phi(n)=A000010(n) is the Euler totient function.

The programs for A066936, there is no canonical definition to state claims against.
-/

/-! ## A066936.P7834073054726886641

`lt[A071168(n+1), 2]+1`
-/

namespace A066936.P7834073054726886641
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071168 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A066936.P7834073054726886641

/-! ## A066936.P15025828416772420001

`eq[1, A000010(A071168(n+1)+1)]+1`
-/

namespace A066936.P15025828416772420001
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A071168 (n + 1) + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A066936.P15025828416772420001

/-! ## A066936.P2917975430212113380

`record[gcd(n+1, A071168(A071168(n+1)+1))]`
-/

namespace A066936.P2917975430212113380
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A071168 (A071168 (n + 1) + 1).toNat)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A066936.P2917975430212113380

/-! ## A066936.P15000872746825847305

`lt[A000040(n+1)%A000010(n+1), 3]+1`
-/

namespace A066936.P15000872746825847305
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000040 (n + 1)) (A000010 (n + 1))

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A066936.P15000872746825847305

/-! ## A066936.P922355945574214938

`eq[A071168(n+1), A287556(A071168(n+1)+1)]+1`
-/

namespace A066936.P922355945574214938
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071168 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287556 (A071168 (n + 1) + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A066936.P922355945574214938

/-!
# A066938: Primes of the form p*q+p+q, where p and q are primes.

The programs for A066938, there is no canonical definition to state claims against.
-/

/-! ## A066938.P11490044745095714311

`A000040(lt[1, A067432(n+1)+1]+1)`
-/

namespace A066938.P11490044745095714311
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067432 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1)

end

end A066938.P11490044745095714311

/-! ## A066938.P856320137936282234

`record[p?[A075254(A085790(n+1))]]`
-/

namespace A066938.P856320137936282234
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075254 (A085790 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A066938.P856320137936282234

/-! ## A066938.P3240551159361336694

`∩[A050778(n+1), A363638(n+1)]`
-/

namespace A066938.P3240551159361336694
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050778 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363638 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A066938.P3240551159361336694

/-! ## A066938.P18296323545575253447

`∩[A165561(n+1), A363638(n+1)]`
-/

namespace A066938.P18296323545575253447
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165561 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363638 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A066938.P18296323545575253447

/-! ## A066938.P3093814149128198269

`∩[A088450(n+1), A363638(n+1)]`
-/

namespace A066938.P3093814149128198269
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088450 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363638 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A066938.P3093814149128198269

/-!
# A066940: Numbers k such that gcd(prime(k+1) + 1, prime(k) + 1) = 2.

The programs for A066940, the canonical program `A066940.P14356666684523876078` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A066940 has offset 1).

The definition of A066940 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5700 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A066940.P14356666684523876078

`eq[2, A063086(n+1)]+1`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A066940

/-- `eq[2, A063086(n+1)]+1` -/
def P14356666684523876078.Spec : Prop :=
  ∀ n, (P14356666684523876078.a n : ℤ) = A066940 (n + 1)

theorem P14356666684523876078.correct : P14356666684523876078.Spec := by
  intro n
  simp only [A066940, Nat.add_sub_cancel]

end A066940

/-! ## A066940.P17427499423415108711

`eq[2, A063086(A028310(n))]`
-/

namespace A066940.P17427499423415108711
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063086 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A066940.P17427499423415108711

namespace A066940

/-- `eq[2, A063086(A028310(n))]` -/
def P17427499423415108711.Spec : Prop :=
  ∀ n, (P17427499423415108711.a n : ℤ) = A066940 (n + 1)

end A066940

/-! ## A066940.P4563531172960195146

`eq[2, gcd(A008864(n+1), A028815(n))]`
-/

namespace A066940.P4563531172960195146
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A008864 (n + 1)) (A028815 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A066940.P4563531172960195146

namespace A066940

/-- `eq[2, gcd(A008864(n+1), A028815(n))]` -/
def P4563531172960195146.Spec : Prop :=
  ∀ n, (P4563531172960195146.a n : ℤ) = A066940 (n + 1)

end A066940

/-! ## A066940.P11088806584355580244

`eq[2, A342670(A000040(n+1))]`
-/

namespace A066940.P11088806584355580244
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342670 (A000040 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A066940.P11088806584355580244

namespace A066940

/-- `eq[2, A342670(A000040(n+1))]` -/
def P11088806584355580244.Spec : Prop :=
  ∀ n, (P11088806584355580244.a n : ℤ) = A066940 (n + 1)

end A066940

/-! ## A066940.P16135424961589400003

`eq[2, A342670(A082500(2*(n+1)))]`
-/

namespace A066940.P16135424961589400003
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342670 (A082500 (2 * (n + 1))).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A066940.P16135424961589400003

namespace A066940

/-- `eq[2, A342670(A082500(2*(n+1)))]` -/
def P16135424961589400003.Spec : Prop :=
  ∀ n, (P16135424961589400003.a n : ℤ) = A066940 (n + 1)

end A066940

/-! ## A066940.P13951874938212224485

`eq[4, A342670(eq[1, A001222(n+1)]+1)²]`
-/

namespace A066940.P13951874938212224485
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342670 (SequenceMachineLib.nth (fun j => (f3 j : ℤ) = f4 j) n + 1) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A066940.P13951874938212224485

namespace A066940

/-- `eq[4, A342670(eq[1, A001222(n+1)]+1)²]` -/
def P13951874938212224485.Spec : Prop :=
  ∀ n, (P13951874938212224485.a n : ℤ) = A066940 (n + 1)

end A066940

/-! ## A066940.P6273378034932283837

`eq[4, A342670(eq[n, A000010(n+1)]+1)²]`
-/

namespace A066940.P6273378034932283837
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342670 (SequenceMachineLib.nth (fun j => (f3 j : ℤ) = f4 j) n + 1) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A066940.P6273378034932283837

namespace A066940

/-- `eq[4, A342670(eq[n, A000010(n+1)]+1)²]` -/
def P6273378034932283837.Spec : Prop :=
  ∀ n, (P6273378034932283837.a n : ℤ) = A066940 (n + 1)

end A066940

/-! ## A066940.P10637157322035189348

`record[2*(n+1)/A342670(A006093(n+2)+1)]`
-/

namespace A066940.P10637157322035189348
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 * ((n + 1 : ℚ) / (A342670 (A006093 (n + 2) + 1).toNat : ℚ))

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A066940.P10637157322035189348

namespace A066940

/-- `record[2*(n+1)/A342670(A006093(n+2)+1)]` -/
def P10637157322035189348.Spec : Prop :=
  ∀ n, P10637157322035189348.a n = (A066940 (n + 1) : ℚ)

end A066940

/-! ## A066940.P4375430929819081971

`eq[2, A341530(A008578(n+1))]`
-/

namespace A066940.P4375430929819081971
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341530 (A008578 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A066940.P4375430929819081971

namespace A066940

/-- `eq[2, A341530(A008578(n+1))]` -/
def P4375430929819081971.Spec : Prop :=
  ∀ n, (P4375430929819081971.a n : ℤ) = A066940 (n + 1)

end A066940

/-!
# A066941: Numbers k such that gcd(prime(k+1) + 1, prime(k) + 1) = 4.

The programs for A066941, the canonical program `A066941.P4211167729421485919` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A066941 has offset 1).

The definition of A066941 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1417 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A066941.P4211167729421485919

`eq[4, A063086(n+1)]+1`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A066941

/-- `eq[4, A063086(n+1)]+1` -/
def P4211167729421485919.Spec : Prop :=
  ∀ n, (P4211167729421485919.a n : ℤ) = A066941 (n + 1)

theorem P4211167729421485919.correct : P4211167729421485919.Spec := by
  intro n
  simp only [A066941, Nat.add_sub_cancel]

end A066941

/-! ## A066941.P10063154926462524591

`eq[4, A063086(A028310(n))]`
-/

namespace A066941.P10063154926462524591
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063086 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A066941.P10063154926462524591

namespace A066941

/-- `eq[4, A063086(A028310(n))]` -/
def P10063154926462524591.Spec : Prop :=
  ∀ n, (P10063154926462524591.a n : ℤ) = A066941 (n + 1)

end A066941

/-! ## A066941.P18065149457567285881

`eq[4, A342670(A000040(n+1))]`
-/

namespace A066941.P18065149457567285881
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342670 (A000040 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A066941.P18065149457567285881

namespace A066941

/-- `eq[4, A342670(A000040(n+1))]` -/
def P18065149457567285881.Spec : Prop :=
  ∀ n, (P18065149457567285881.a n : ℤ) = A066941 (n + 1)

end A066941

/-! ## A066941.P5669774752254349056

`eq[4, A342670(A082500(A103517(n)))]`
-/

namespace A066941.P5669774752254349056
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342670 (A082500 (A103517 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A066941.P5669774752254349056

namespace A066941

/-- `eq[4, A342670(A082500(A103517(n)))]` -/
def P5669774752254349056.Spec : Prop :=
  ∀ n, (P5669774752254349056.a n : ℤ) = A066941 (n + 1)

end A066941

/-! ## A066941.P17707389961305311203

`eq[4, A341530(A008578(n+1))]`
-/

namespace A066941.P17707389961305311203
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341530 (A008578 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A066941.P17707389961305311203

namespace A066941

/-- `eq[4, A341530(A008578(n+1))]` -/
def P17707389961305311203.Spec : Prop :=
  ∀ n, (P17707389961305311203.a n : ℤ) = A066941 (n + 1)

end A066941

/-! ## A066941.P14393310417163285528

`eq[4, A063086(A233583(n+1))]`
-/

namespace A066941.P14393310417163285528
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063086 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A066941.P14393310417163285528

namespace A066941

/-- `eq[4, A063086(A233583(n+1))]` -/
def P14393310417163285528.Spec : Prop :=
  ∀ n, (P14393310417163285528.a n : ℤ) = A066941 (n + 1)

end A066941

/-!
# A066942: Numbers k such that gcd(prime(k+1) + 1, prime(k) + 1) = 6.

The programs for A066942, the canonical program `A066942.P934297260943197593` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A066942 has offset 1).

The definition of A066942 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1599 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A066942.P934297260943197593

`eq[6, A063086(n+6)]+6`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A066942

/-- `eq[6, A063086(n+6)]+6` -/
def P934297260943197593.Spec : Prop :=
  ∀ n, (P934297260943197593.a n : ℤ) = A066942 (n + 1)

theorem P934297260943197593.correct : P934297260943197593.Spec := by
  intro n
  simp only [A066942, Nat.add_sub_cancel]

end A066942

/-! ## A066942.P1529646110510345865

`eq[6, A063086(A028310(n))]`
-/

namespace A066942.P1529646110510345865
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063086 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A066942.P1529646110510345865

namespace A066942

/-- `eq[6, A063086(A028310(n))]` -/
def P1529646110510345865.Spec : Prop :=
  ∀ n, (P1529646110510345865.a n : ℤ) = A066942 (n + 1)

end A066942

/-! ## A066942.P256370156723194781

`eq[6, A342670(A000040(n+1))]`
-/

namespace A066942.P256370156723194781
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342670 (A000040 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A066942.P256370156723194781

namespace A066942

/-- `eq[6, A342670(A000040(n+1))]` -/
def P256370156723194781.Spec : Prop :=
  ∀ n, (P256370156723194781.a n : ℤ) = A066942 (n + 1)

end A066942

/-! ## A066942.P12482821598940929496

`eq[6, A342670(A082500(A103517(n)))]`
-/

namespace A066942.P12482821598940929496
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342670 (A082500 (A103517 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A066942.P12482821598940929496

namespace A066942

/-- `eq[6, A342670(A082500(A103517(n)))]` -/
def P12482821598940929496.Spec : Prop :=
  ∀ n, (P12482821598940929496.a n : ℤ) = A066942 (n + 1)

end A066942

/-! ## A066942.P7239055802014758152

`eq[6, A341530(A008578(n+1))]`
-/

namespace A066942.P7239055802014758152
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341530 (A008578 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A066942.P7239055802014758152

namespace A066942

/-- `eq[6, A341530(A008578(n+1))]` -/
def P7239055802014758152.Spec : Prop :=
  ∀ n, (P7239055802014758152.a n : ℤ) = A066942 (n + 1)

end A066942

/-! ## A066942.P6499302531573496270

`eq[6, A063086(A233583(n+1))]`
-/

namespace A066942.P6499302531573496270
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063086 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A066942.P6499302531573496270

namespace A066942

/-- `eq[6, A063086(A233583(n+1))]` -/
def P6499302531573496270.Spec : Prop :=
  ∀ n, (P6499302531573496270.a n : ℤ) = A066942 (n + 1)

end A066942

/-!
# A066943: Numbers k such that gcd(prime(k+1) + 1, prime(k) + 1) = 8.

The programs for A066943, the canonical program `A066943.P8029319133329898766` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A066943 has offset 1).

The definition of A066943 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 274 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A066943.P8029319133329898766

`eq[8, A063086(n+1)]+1`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A066943

/-- `eq[8, A063086(n+1)]+1` -/
def P8029319133329898766.Spec : Prop :=
  ∀ n, (P8029319133329898766.a n : ℤ) = A066943 (n + 1)

theorem P8029319133329898766.correct : P8029319133329898766.Spec := by
  intro n
  simp only [A066943, Nat.add_sub_cancel]

end A066943

/-! ## A066943.P507866372331671076

`eq[8, A063086(A028310(n))]`
-/

namespace A066943.P507866372331671076
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063086 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A066943.P507866372331671076

namespace A066943

/-- `eq[8, A063086(A028310(n))]` -/
def P507866372331671076.Spec : Prop :=
  ∀ n, (P507866372331671076.a n : ℤ) = A066943 (n + 1)

end A066943

/-! ## A066943.P10944099505912839753

`eq[8, gcd(A008864(n+1), A028815(n))]`
-/

namespace A066943.P10944099505912839753
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A008864 (n + 1)) (A028815 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A066943.P10944099505912839753

namespace A066943

/-- `eq[8, gcd(A008864(n+1), A028815(n))]` -/
def P10944099505912839753.Spec : Prop :=
  ∀ n, (P10944099505912839753.a n : ℤ) = A066943 (n + 1)

end A066943

/-! ## A066943.P15670811015932803879

`eq[8, A342670(A000040(n+1))]`
-/

namespace A066943.P15670811015932803879
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342670 (A000040 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A066943.P15670811015932803879

namespace A066943

/-- `eq[8, A342670(A000040(n+1))]` -/
def P15670811015932803879.Spec : Prop :=
  ∀ n, (P15670811015932803879.a n : ℤ) = A066943 (n + 1)

end A066943

/-! ## A066943.P11339910094676851686

`eq[8, A341530(A008578(n+1))]`
-/

namespace A066943.P11339910094676851686
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341530 (A008578 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A066943.P11339910094676851686

namespace A066943

/-- `eq[8, A341530(A008578(n+1))]` -/
def P11339910094676851686.Spec : Prop :=
  ∀ n, (P11339910094676851686.a n : ℤ) = A066943 (n + 1)

end A066943

/-!
# A066944: Numbers k such that gcd(prime(k+1) + 1, prime(k) + 1) = 10.

The programs for A066944, the canonical program `A066944.P2385431604871524094` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A066944 has offset 1).

The definition of A066944 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 340 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A066944.P2385431604871524094

`eq[10, A063086(n+1)]+1`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A066944

/-- `eq[10, A063086(n+1)]+1` -/
def P2385431604871524094.Spec : Prop :=
  ∀ n, (P2385431604871524094.a n : ℤ) = A066944 (n + 1)

theorem P2385431604871524094.correct : P2385431604871524094.Spec := by
  intro n
  simp only [A066944, Nat.add_sub_cancel]

end A066944

/-! ## A066944.P17569289202523542891

`eq[10, A063086(A028310(n))]`
-/

namespace A066944.P17569289202523542891
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063086 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A066944.P17569289202523542891

namespace A066944

/-- `eq[10, A063086(A028310(n))]` -/
def P17569289202523542891.Spec : Prop :=
  ∀ n, (P17569289202523542891.a n : ℤ) = A066944 (n + 1)

end A066944

/-! ## A066944.P8049388408466817428

`eq[10, A342670(A083249(n+1))]`
-/

namespace A066944.P8049388408466817428
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342670 (A083249 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A066944.P8049388408466817428

namespace A066944

/-- `eq[10, A342670(A083249(n+1))]` -/
def P8049388408466817428.Spec : Prop :=
  ∀ n, (P8049388408466817428.a n : ℤ) = A066944 (n + 1)

end A066944

/-! ## A066944.P8268884138774083746

`eq[2, A342670(A000040(n+1))-8]`
-/

namespace A066944.P8268884138774083746
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342670 (A000040 (n + 1)).toNat - 8

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A066944.P8268884138774083746

namespace A066944

/-- `eq[2, A342670(A000040(n+1))-8]` -/
def P8268884138774083746.Spec : Prop :=
  ∀ n, (P8268884138774083746.a n : ℤ) = A066944 (n + 1)

end A066944

/-! ## A066944.P17568519624189725412

`eq[10, A341530(A008578(n+1))]`
-/

namespace A066944.P17568519624189725412
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341530 (A008578 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A066944.P17568519624189725412

namespace A066944

/-- `eq[10, A341530(A008578(n+1))]` -/
def P17568519624189725412.Spec : Prop :=
  ∀ n, (P17568519624189725412.a n : ℤ) = A066944 (n + 1)

end A066944

/-!
# A066947: Number of elements of order 2 in GL(2,Z_n).

The programs for A066947, there is no canonical definition to state claims against.
-/

/-! ## A066947.P8135219423398065904

`A066907(n+2)-1`
-/

namespace A066947.P8135219423398065904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066907 (n + 2) - 1

end

end A066947.P8135219423398065904

/-! ## A066947.P1901517885780069716

`∑[-Δ[-A066907(n+1)]]`
-/

namespace A066947.P1901517885780069716
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A066907 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A066947.P1901517885780069716

/-! ## A066947.P8370297236655052929

`∑[Δ[A066907(n+1)]%A096958(n)]`
-/

namespace A066947.P8370297236655052929
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066907 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f2 (n + 1) - f2 n) (A096958 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A066947.P8370297236655052929

/-! ## A066947.P4147540319626039418

`A284881(A284882(n+1))+A066907(n+2)`
-/

namespace A066947.P4147540319626039418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284881 (A284882 (n + 1)).toNat + A066907 (n + 2)

end

end A066947.P4147540319626039418

/-! ## A066947.P7756775204361216671

`A330025(A016885(2*n+1))+A066907(n+2)`
-/

namespace A066947.P7756775204361216671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330025 (A016885 (2 * n + 1)).toNat + A066907 (n + 2)

end

end A066947.P7756775204361216671

/-! ## A066947.P12618263217394267398

`A004273(A066907(n+2)/2)`
-/

namespace A066947.P12618263217394267398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (SequenceMachineLib.roundAway ((A066907 (n + 2) : ℚ) / 2)).toNat

end

end A066947.P12618263217394267398

/-! ## A066947.P9482297036348983033

`A004483(A066907(n+2))`
-/

namespace A066947.P9482297036348983033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004483 (A066907 (n + 2)).toNat

end

end A066947.P9482297036348983033

/-!
# A066949: Take the sum of the previous two terms, subtract n if this sum is greater than n.

The programs for A066949, the canonical program `A066949.P14089087774726009632` is in `Seq.B000.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A066949 has offset 0).

The definition of A066949 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A066949.P14089087774726009632

`(a(n-1)+a(n-2)-1)%n+1` with `a(0)=0, a(1)=1`

The canonical program, it is in `Seq.B000.C010`.
-/

namespace A066949

/-- `(a(n-1)+a(n-2)-1)%n+1` -/
def P14089087774726009632.Spec : Prop :=
  ∀ n, P14089087774726009632.a n = A066949 n

theorem P14089087774726009632.correct : P14089087774726009632.Spec := by
  intro n
  simp only [A066949]

end A066949

/-! ## A066949.P4389674342945818602

`1-(1-a(n-1)-a(n-2))%n` with `a(0)=0, a(1)=1`
-/

namespace A066949.P4389674342945818602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  1 - Int.tmod (1 - a (n - 1) - a (n - 2)) (n : ℤ)

end

end A066949.P4389674342945818602

namespace A066949

/-- `1-(1-a(n-1)-a(n-2))%n` -/
def P4389674342945818602.Spec : Prop :=
  ∀ n, P4389674342945818602.a n = A066949 n

end A066949

/-!
# A066950: Numbers k such that phi(sigma(k)) + sigma(phi(k)) = 2k.

The programs for A066950, there is no canonical definition to state claims against.
-/

/-! ## A066950.P8201508385957068006

`eq[A295301(n+1), A295302(n+1)]+1`
-/

namespace A066950.P8201508385957068006
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295301 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295302 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A066950.P8201508385957068006

/-!
# A066951: Number of nonisomorphic connected graphs that can be drawn in the plane using n unit-length edges.

The programs for A066951, there is no canonical definition to state claims against.
-/

/-! ## A066951.P12841295507664911904

`A135660(n!)+A057513(n)`
-/

namespace A066951.P12841295507664911904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135660 (Nat.factorial n) + A057513 n

end

end A066951.P12841295507664911904

/-! ## A066951.P4447985101649821782

`A024417(A026119(n)+floor((n/2)²))`
-/

namespace A066951.P4447985101649821782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024417 (A026119 n + ⌊((n : ℚ) / 2) ^ 2⌋).toNat

end

end A066951.P4447985101649821782

/-! ## A066951.P7152065400430861437

`A024417(A148806(n)+floor(n²/2))`
-/

namespace A066951.P7152065400430861437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024417 (A148806 n + ⌊(n ^ 2 : ℚ) / 2⌋).toNat

end

end A066951.P7152065400430861437

/-! ## A066951.P5782309042381894617

`A024417(A148837(n)+A003188(n))`
-/

namespace A066951.P5782309042381894617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024417 (A148837 n + A003188 n).toNat

end

end A066951.P5782309042381894617

/-!
# A066952: Smallest m such that A072410(m) = n.

The programs for A066952, there is no canonical definition to state claims against.
-/

/-! ## A066952.P15601909565884818312

`record[∏{e}[n-1, #*2*n-4]]`
-/

namespace A066952.P15601909565884818312
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n).natAbs, ((Nat.factorization (f2 n).natAbs p * (2 * n) : ℤ) - 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A066952.P15601909565884818312

/-!
# A066955: Number of unordered solutions of x*y + y*z + z*x = n, x,y,z > 0.

The programs for A066955, there is no canonical definition to state claims against.
-/

/-! ## A066955.P8549101239679016082

`A290870(n+1)+A100073(n+1)`
-/

namespace A066955.P8549101239679016082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290870 (n + 1) + A100073 (n + 1)

end

end A066955.P8549101239679016082

/-! ## A066955.P8596267833862793358

`A067752(n+1)-A038548(n+1)`
-/

namespace A066955.P8596267833862793358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067752 (n + 1) - A038548 (n + 1)

end

end A066955.P8596267833862793358

/-! ## A066955.P14161385374677177660

`A067752(n+1)-(A072670(n)+1)`
-/

namespace A066955.P14161385374677177660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067752 (n + 1) - (A072670 n + 1)

end

end A066955.P14161385374677177660

/-! ## A066955.P11391342606666508790

`∑{d}[n+1, A010052(#)*A066360((n+1)/#)]`
-/

namespace A066955.P11391342606666508790
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A010052 d * A066360 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A066955.P11391342606666508790

/-! ## A066955.P7164609154798636727

`A067752(n+1)-A110654(A000005(n+1))`
-/

namespace A066955.P7164609154798636727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067752 (n + 1) - A110654 (A000005 (n + 1)).toNat

end

end A066955.P7164609154798636727

/-!
# A066958: Number of ordered primitive solutions (x,y,z) to xy + yz + zx = n with x,y,z >= 1.

The programs for A066958, there is no canonical definition to state claims against.
-/

/-! ## A066958.P11523059914957707583

`∑{d}[n+1, A066851(#)*A271102((n+1)/#)]`
-/

namespace A066958.P11523059914957707583
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A066851 d * A271102 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A066958.P11523059914957707583

/-! ## A066958.P11584096207279730533

`A067753(n+1)-A008585(A034444(n+1))`
-/

namespace A066958.P11584096207279730533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067753 (n + 1) - A008585 (A034444 (n + 1)).toNat

end

end A066958.P11584096207279730533

/-! ## A066958.P13561792029423583812

`A066851(n+1)%A334658(3*n)`
-/

namespace A066958.P13561792029423583812
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A066851 (n + 1)) (A334658 (3 * n))

end

end A066958.P13561792029423583812

/-! ## A066958.P11872120152818952096

`A066851(n+1)-A316864(A221364(n))`
-/

namespace A066958.P11872120152818952096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066851 (n + 1) - A316864 (A221364 n).toNat

end

end A066958.P11872120152818952096

/-! ## A066958.P16284267083136782093

`A066851(n+1)-A182581(A262864(n))`
-/

namespace A066958.P16284267083136782093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066851 (n + 1) - A182581 (A262864 n).toNat

end

end A066958.P16284267083136782093

/-!
# A066959: a(n) = bigomega(n^n) where bigomega(x) is the number of prime factors in x (counted with multiplicity).

The programs for A066959, the canonical program `A066959.P15826289147471869282` is in `Seq.B000.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A066959 has offset 1).

The definition of A066959 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A066959.P15826289147471869282

`(n+1)*∑{e}[n+1, #]`

The canonical program, it is in `Seq.B000.C010`.
-/

namespace A066959

/-- `(n+1)*∑{e}[n+1, #]` -/
def P15826289147471869282.Spec : Prop :=
  ∀ n, (P15826289147471869282.a n : ℤ) = A066959 (n + 1)

theorem P15826289147471869282.correct : P15826289147471869282.Spec := by
  intro n
  simp only [A066959, Nat.add_sub_cancel]

end A066959

/-! ## A066959.P7368576861160539802

`∑{e}[n+1, (n+1)/#^-1]`
-/

namespace A066959.P7368576861160539802
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), (n + 1 : ℚ) / (Nat.factorization (f1 n) p : ℚ) ^ (-1 : ℤ)

end

end A066959.P7368576861160539802

namespace A066959

/-- `∑{e}[n+1, (n+1)/#^-1]` -/
def P7368576861160539802.Spec : Prop :=
  ∀ n, P7368576861160539802.a n = (A066959 (n + 1) : ℚ)

end A066959

/-! ## A066959.P5861885852112745842

`(n+1)*log2(∏{e}[n+1, 2^#])`
-/

namespace A066959.P5861885852112745842
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℝ) * Real.logb 2 ((∏ p ∈ Nat.primeFactors (f1 n), 2 ^ Nat.factorization (f1 n) p : ℕ) : ℝ)

end

end A066959.P5861885852112745842

namespace A066959

/-- `(n+1)*log2(∏{e}[n+1, 2^#])` -/
def P5861885852112745842.Spec : Prop :=
  ∀ n, P5861885852112745842.a n = (A066959 (n + 1) : ℝ)

end A066959

/-! ## A066959.P5418446012024686877

`∑{e}[n+1, #]/(ratio[n+1]-1)`
-/

namespace A066959.P5418446012024686877
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p : ℕ) : ℚ) / ((f2 (n + 1) : ℚ) / (f2 n : ℚ) - 1)

end

end A066959.P5418446012024686877

namespace A066959

/-- `∑{e}[n+1, #]/(ratio[n+1]-1)` -/
def P5418446012024686877.Spec : Prop :=
  ∀ n, P5418446012024686877.a n = (A066959 (n + 1) : ℚ)

theorem P5418446012024686877.correct : P5418446012024686877.Spec := by
  intro n
  simp only [A066959, Nat.add_sub_cancel, A066959.P5418446012024686877.f1, A066959.P5418446012024686877.f2, A066959.P5418446012024686877.a, A066959.P15826289147471869282.f1, A066959.P15826289147471869282.a, SequenceMachineLib.memo_apply]
  try push_cast
  try field_simp
  try (first | ring1 | ring_nf)

end A066959

/-! ## A066959.P17066418705798562374

`∑{p}[n+1, (n+1)*val(n+1, #)]`
-/

namespace A066959.P17066418705798562374
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), (n + 1) * SequenceMachineLib.valuation (n + 1) p

end

end A066959.P17066418705798562374

namespace A066959

/-- `∑{p}[n+1, (n+1)*val(n+1, #)]` -/
def P17066418705798562374.Spec : Prop :=
  ∀ n, (P17066418705798562374.a n : ℤ) = A066959 (n + 1)

end A066959

/-! ## A066959.P6587149553109772522

`(n+1)*Δ[A022559(n)]`
-/

namespace A066959.P6587149553109772522
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022559 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (f1 (n + 1) - f1 n)

end

end A066959.P6587149553109772522

namespace A066959

/-- `(n+1)*Δ[A022559(n)]` -/
def P6587149553109772522.Spec : Prop :=
  ∀ n, P6587149553109772522.a n = A066959 (n + 1)

end A066959

/-! ## A066959.P3503932111687221319

`A387470(n+1)+1+n`
-/

namespace A066959.P3503932111687221319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387470 (n + 1) + 1 + (n : ℤ)

end

end A066959.P3503932111687221319

namespace A066959

/-- `A387470(n+1)+1+n` -/
def P3503932111687221319.Spec : Prop :=
  ∀ n, P3503932111687221319.a n = A066959 (n + 1)

theorem P3503932111687221319.correct : P3503932111687221319.Spec := by
  intro n
  simp only [A066959, Nat.add_sub_cancel, A066959.P3503932111687221319.a, A066959.P15826289147471869282.f1, A066959.P15826289147471869282.a, A387470, A387470.P8261482053908746042.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A066959

/-! ## A066959.P15004998191062164825

`(n+1)*A001222(n+1)`
-/

namespace A066959.P15004998191062164825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A001222 (n + 1)

end

end A066959.P15004998191062164825

namespace A066959

/-- `(n+1)*A001222(n+1)` -/
def P15004998191062164825.Spec : Prop :=
  ∀ n, P15004998191062164825.a n = A066959 (n + 1)

end A066959

/-! ## A066959.P11270861474126276819

`(n+1)*log2(A061142(n+1))`
-/

namespace A066959.P11270861474126276819
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℝ) * Real.logb 2 (A061142 (n + 1) : ℝ)

end

end A066959.P11270861474126276819

namespace A066959

/-- `(n+1)*log2(A061142(n+1))` -/
def P11270861474126276819.Spec : Prop :=
  ∀ n, P11270861474126276819.a n = (A066959 (n + 1) : ℝ)

end A066959

/-! ## A066959.P3546986672958873849

`(n+1)*(A073093(n+1)-1)`
-/

namespace A066959.P3546986672958873849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (A073093 (n + 1) - 1)

end

end A066959.P3546986672958873849

namespace A066959

/-- `(n+1)*(A073093(n+1)-1)` -/
def P3546986672958873849.Spec : Prop :=
  ∀ n, P3546986672958873849.a n = A066959 (n + 1)

end A066959

/-! ## A066959.P18422851527453993296

`(n+1)/2*A255201(n+1)`
-/

namespace A066959.P18422851527453993296
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / 2 * (A255201 (n + 1) : ℚ)

end

end A066959.P18422851527453993296

namespace A066959

/-- `(n+1)/2*A255201(n+1)` -/
def P18422851527453993296.Spec : Prop :=
  ∀ n, P18422851527453993296.a n = (A066959 (n + 1) : ℚ)

end A066959

/-! ## A066959.P1290318297445560309

`(n+1)*(n-A075795(n+1))`
-/

namespace A066959.P1290318297445560309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * ((n : ℤ) - A075795 (n + 1))

end

end A066959.P1290318297445560309

namespace A066959

/-- `(n+1)*(n-A075795(n+1))` -/
def P1290318297445560309.Spec : Prop :=
  ∀ n, P1290318297445560309.a n = A066959 (n + 1)

end A066959

/-! ## A066959.P13212268599465051768

`(n+1)*(A222312(n+1)-n)`
-/

namespace A066959.P13212268599465051768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (A222312 (n + 1) - (n : ℤ))

end

end A066959.P13212268599465051768

namespace A066959

/-- `(n+1)*(A222312(n+1)-n)` -/
def P13212268599465051768.Spec : Prop :=
  ∀ n, P13212268599465051768.a n = A066959 (n + 1)

end A066959

/-! ## A066959.P10558747137528258754

`(n+1)*(A064800(n+1)-(n+1))`
-/

namespace A066959.P10558747137528258754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (A064800 (n + 1) - (n + 1 : ℤ))

end

end A066959.P10558747137528258754

namespace A066959

/-- `(n+1)*(A064800(n+1)-(n+1))` -/
def P10558747137528258754.Spec : Prop :=
  ∀ n, P10558747137528258754.a n = A066959 (n + 1)

end A066959

/-! ## A066959.P5646624489860065009

`(n+1)*(n+1-A069345(n+1))`
-/

namespace A066959.P5646624489860065009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * ((n + 1 : ℤ) - A069345 (n + 1))

end

end A066959.P5646624489860065009

namespace A066959

/-- `(n+1)*(n+1-A069345(n+1))` -/
def P5646624489860065009.Spec : Prop :=
  ∀ n, P5646624489860065009.a n = A066959 (n + 1)

end A066959

/-! ## A066959.P18137349940259962542

`A186170(n+1)+A000203(n+1)`
-/

namespace A066959.P18137349940259962542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186170 (n + 1) + A000203 (n + 1)

end

end A066959.P18137349940259962542

namespace A066959

/-- `A186170(n+1)+A000203(n+1)` -/
def P18137349940259962542.Spec : Prop :=
  ∀ n, P18137349940259962542.a n = A066959 (n + 1)

theorem P18137349940259962542.correct : P18137349940259962542.Spec := by
  intro n
  simp only [A066959, Nat.add_sub_cancel, A066959.P18137349940259962542.a, A066959.P15826289147471869282.f1, A066959.P15826289147471869282.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A186170, A186170.P16645297919080472260.f1, A186170.P16645297919080472260.f2, A186170.P16645297919080472260.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A066959

/-! ## A066959.P11689180852811900571

`(n+1)*A023443(A073093(n+1))`
-/

namespace A066959.P11689180852811900571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A023443 (A073093 (n + 1)).toNat

end

end A066959.P11689180852811900571

namespace A066959

/-- `(n+1)*A023443(A073093(n+1))` -/
def P11689180852811900571.Spec : Prop :=
  ∀ n, P11689180852811900571.a n = A066959 (n + 1)

end A066959

/-! ## A066959.P8183321656272240459

`(n+1)*A000720(A105560(n+1))`
-/

namespace A066959.P8183321656272240459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A000720 (A105560 (n + 1)).toNat

end

end A066959.P8183321656272240459

namespace A066959

/-- `(n+1)*A000720(A105560(n+1))` -/
def P8183321656272240459.Spec : Prop :=
  ∀ n, P8183321656272240459.a n = A066959 (n + 1)

end A066959

/-! ## A066959.P2119075564291108884

`A086436(n+1)*A087156(n+1)`
-/

namespace A066959.P2119075564291108884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086436 (n + 1) * A087156 (n + 1)

end

end A066959.P2119075564291108884

namespace A066959

/-- `A086436(n+1)*A087156(n+1)` -/
def P2119075564291108884.Spec : Prop :=
  ∀ n, P2119075564291108884.a n = A066959 (n + 1)

end A066959

/-! ## A066959.P4432284419204916525

`(n+1)*A056239(A181819(n+1))`
-/

namespace A066959.P4432284419204916525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A056239 (A181819 (n + 1)).toNat

end

end A066959.P4432284419204916525

namespace A066959

/-- `(n+1)*A056239(A181819(n+1))` -/
def P4432284419204916525.Spec : Prop :=
  ∀ n, P4432284419204916525.a n = A066959 (n + 1)

end A066959

/-!
# A066961: Numbers k such that sigma(k) divides sigma(sigma(k)).

The programs for A066961, there is no canonical definition to state claims against.
-/

/-! ## A066961.P13939150397761361913

`∪[A326181(n+1), A353365(n+1)]`
-/

namespace A066961.P13939150397761361913
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326181 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353365 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A066961.P13939150397761361913

/-! ## A066961.P4353558569634532862

`record[(n+1)/A017666(A000203(n+1))^π]`
-/

namespace A066961.P4353558569634532862
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℝ) / (A017666 (A000203 (n + 1)).toNat : ℝ) ^ Real.pi

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A066961.P4353558569634532862

/-!
# A066966: Total sum of even parts in all partitions of n.

The programs for A066966, there is no canonical definition to state claims against.
-/

/-! ## A066966.P14781619501154756665

`A066186(n+1)-A066967(n+1)`
-/

namespace A066966.P14781619501154756665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066186 (n + 1) - A066967 (n + 1)

end

end A066966.P14781619501154756665

/-! ## A066966.P10325119603985002715

`∑[A206436(n+1)]`
-/

namespace A066966.P10325119603985002715
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206436 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A066966.P10325119603985002715

/-! ## A066966.P14285984754366211140

`∑[A138879(n+1)-A206435(n+1)]`
-/

namespace A066966.P14285984754366211140
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138879 (n + 1) - A206435 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A066966.P14285984754366211140

/-! ## A066966.P10912512941009204842

`A066967(n+1)-A208477(n+1)`
-/

namespace A066966.P10912512941009204842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066967 (n + 1) - A208477 (n + 1)

end

end A066966.P10912512941009204842

/-! ## A066966.P4553513741478517339

`(n+1)*A000041(n+1)-A066967(n+1)`
-/

namespace A066966.P4553513741478517339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A000041 (n + 1) - A066967 (n + 1)

end

end A066966.P4553513741478517339

/-!
# A066967: Total sum of odd parts in all partitions of n.

The programs for A066967, there is no canonical definition to state claims against.
-/

/-! ## A066967.P14002899037393857585

`A066186(n+1)-A066966(n+1)`
-/

namespace A066967.P14002899037393857585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066186 (n + 1) - A066966 (n + 1)

end

end A066967.P14002899037393857585

/-! ## A066967.P8556587035975748034

`∑[A206435(n+1)]`
-/

namespace A066967.P8556587035975748034
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206435 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A066967.P8556587035975748034

/-! ## A066967.P2882933815899471579

`A208477(n+1)+A066966(n+1)`
-/

namespace A066967.P2882933815899471579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208477 (n + 1) + A066966 (n + 1)

end

end A066967.P2882933815899471579

/-! ## A066967.P5806702823102038376

`∑[A138879(n+1)-A206436(n+1)]`
-/

namespace A066967.P5806702823102038376
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138879 (n + 1) - A206436 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A066967.P5806702823102038376

/-! ## A066967.P14552314414231816591

`∑[A138879(n+1)]-A066966(n+1)`
-/

namespace A066967.P14552314414231816591
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138879 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A066966 (n + 1)

end

end A066967.P14552314414231816591

/-! ## A066967.P15785945709481678763

`(n+1)*A000041(n+1)-A066966(n+1)`
-/

namespace A066967.P15785945709481678763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A000041 (n + 1) - A066966 (n + 1)

end

end A066967.P15785945709481678763

/-! ## A066967.P18139826589509028801

`∑[A066186(n+1)-(A206436(n+1)+A066186(n))]`
-/

namespace A066967.P18139826589509028801
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066186 (n + 1) - (A206436 (n + 1) + A066186 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A066967.P18139826589509028801

/-! ## A066967.P11202975918598382332

`A208475(∑[n]+1)`
-/

namespace A066967.P11202975918598382332
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208475 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A066967.P11202975918598382332

/-! ## A066967.P6607314231344715793

`record[A208475(n+1)]`
-/

namespace A066967.P6607314231344715793
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208475 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A066967.P6607314231344715793

/-!
# A066970: Integers of the form Sum_{i=1..m} phi(i)/gcd(m,i).

The programs for A066970, there is no canonical definition to state claims against.
-/

/-! ## A066970.P8832382247139240030

`A340854(A091411(n+1))`
-/

namespace A066970.P8832382247139240030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340854 (A091411 (n + 1)).toNat

end

end A066970.P8832382247139240030

/-!
# A066971: a(n) = sigma(sigma(sigma(n))).

The programs for A066971, the canonical program `A066971.P3877498513329019214` is in `Seq.B000.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A066971 has offset 1).

The definition of A066971 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A066971.P3877498513329019214

`∑{d}[∑{d}[∑{d}[n+1, #], #], #]`

The canonical program, it is in `Seq.B000.C010`.
-/

namespace A066971

/-- `∑{d}[∑{d}[∑{d}[n+1, #], #], #]` -/
def P3877498513329019214.Spec : Prop :=
  ∀ n, (P3877498513329019214.a n : ℤ) = A066971 (n + 1)

theorem P3877498513329019214.correct : P3877498513329019214.Spec := by
  intro n
  simp only [A066971, Nat.add_sub_cancel]

end A066971

/-! ## A066971.P6784498669930095456

`∑{d}[A051027(n+1), #]`
-/

namespace A066971.P6784498669930095456
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051027 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, d

end

end A066971.P6784498669930095456

namespace A066971

/-- `∑{d}[A051027(n+1), #]` -/
def P6784498669930095456.Spec : Prop :=
  ∀ n, (P6784498669930095456.a n : ℤ) = A066971 (n + 1)

end A066971

/-! ## A066971.P1085360942503107545

`∑{d}[A000203(∑{d}[n+1, #]), #]`
-/

namespace A066971.P1085360942503107545
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (∑ d ∈ Nat.divisors (f2 n), d)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, d

end

end A066971.P1085360942503107545

namespace A066971

/-- `∑{d}[A000203(∑{d}[n+1, #]), #]` -/
def P1085360942503107545.Spec : Prop :=
  ∀ n, (P1085360942503107545.a n : ℤ) = A066971 (n + 1)

end A066971

/-! ## A066971.P3089273618909811464

`∑{d}[∑{d}[A143348(n+1), #], #]`
-/

namespace A066971.P3089273618909811464
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143348 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n).natAbs, d

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), d

end

end A066971.P3089273618909811464

namespace A066971

/-- `∑{d}[∑{d}[A143348(n+1), #], #]` -/
def P3089273618909811464.Spec : Prop :=
  ∀ n, (P3089273618909811464.a n : ℤ) = A066971 (n + 1)

end A066971

/-! ## A066971.P15513871757510827277

`∑{d}[A000203(Δ[A160664(n)]), #]`
-/

namespace A066971.P15513871757510827277
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160664 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, d

end

end A066971.P15513871757510827277

namespace A066971

/-- `∑{d}[A000203(Δ[A160664(n)]), #]` -/
def P15513871757510827277.Spec : Prop :=
  ∀ n, (P15513871757510827277.a n : ℤ) = A066971 (n + 1)

end A066971

/-! ## A066971.P13269540531610765394

`∑{d}[A000203(A000203(n+1)), #]`
-/

namespace A066971.P13269540531610765394
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A000203 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, d

end

end A066971.P13269540531610765394

namespace A066971

/-- `∑{d}[A000203(A000203(n+1)), #]` -/
def P13269540531610765394.Spec : Prop :=
  ∀ n, (P13269540531610765394.a n : ℤ) = A066971 (n + 1)

end A066971

/-! ## A066971.P12117764484142819842

`A000203(∑[A111408(n)])`
-/

namespace A066971.P12117764484142819842
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111408 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A066971.P12117764484142819842

namespace A066971

/-- `A000203(∑[A111408(n)])` -/
def P12117764484142819842.Spec : Prop :=
  ∀ n, P12117764484142819842.a n = A066971 (n + 1)

end A066971

/-! ## A066971.P5915395753552804450

`A000203(A051027(n+1))`
-/

namespace A066971.P5915395753552804450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A051027 (n + 1)).toNat

end

end A066971.P5915395753552804450

namespace A066971

/-- `A000203(A051027(n+1))` -/
def P5915395753552804450.Spec : Prop :=
  ∀ n, P5915395753552804450.a n = A066971 (n + 1)

end A066971

/-! ## A066971.P12697853395894653313

`A000203(A000203(A000203(n+1)))`
-/

namespace A066971.P12697853395894653313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A000203 (A000203 (n + 1)).toNat).toNat

end

end A066971.P12697853395894653313

namespace A066971

/-- `A000203(A000203(A000203(n+1)))` -/
def P12697853395894653313.Spec : Prop :=
  ∀ n, P12697853395894653313.a n = A066971 (n + 1)

end A066971

/-! ## A066971.P2495231623422420130

`A051027(A088580(n+1)-1)`
-/

namespace A066971.P2495231623422420130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051027 (A088580 (n + 1) - 1).toNat

end

end A066971.P2495231623422420130

namespace A066971

/-- `A051027(A088580(n+1)-1)` -/
def P2495231623422420130.Spec : Prop :=
  ∀ n, P2495231623422420130.a n = A066971 (n + 1)

end A066971

/-! ## A066971.P8757370406724799126

`A051027(A245092(2*n+1))`
-/

namespace A066971.P8757370406724799126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051027 (A245092 (2 * n + 1)).toNat

end

end A066971.P8757370406724799126

namespace A066971

/-- `A051027(A245092(2*n+1))` -/
def P8757370406724799126.Spec : Prop :=
  ∀ n, P8757370406724799126.a n = A066971 (n + 1)

end A066971

/-! ## A066971.P1987073232889937039

`A051027(A001065(n+1)+1+n)`
-/

namespace A066971.P1987073232889937039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051027 (A001065 (n + 1) + 1 + (n : ℤ)).toNat

end

end A066971.P1987073232889937039

namespace A066971

/-- `A051027(A001065(n+1)+1+n)` -/
def P1987073232889937039.Spec : Prop :=
  ∀ n, P1987073232889937039.a n = A066971 (n + 1)

end A066971

/-! ## A066971.P13075227086403020367

`A051027(A155085(n+1)-(n+1))`
-/

namespace A066971.P13075227086403020367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051027 (A155085 (n + 1) - (n + 1 : ℤ)).toNat

end

end A066971.P13075227086403020367

namespace A066971

/-- `A051027(A155085(n+1)-(n+1))` -/
def P13075227086403020367.Spec : Prop :=
  ∀ n, P13075227086403020367.a n = A066971 (n + 1)

end A066971

/-! ## A066971.P7840320909096999433

`A051027(A048146(n+1)+A034448(n+1))`
-/

namespace A066971.P7840320909096999433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051027 (A048146 (n + 1) + A034448 (n + 1)).toNat

end

end A066971.P7840320909096999433

namespace A066971

/-- `A051027(A048146(n+1)+A034448(n+1))` -/
def P7840320909096999433.Spec : Prop :=
  ∀ n, P7840320909096999433.a n = A066971 (n + 1)

end A066971

/-! ## A066971.P4653966205111893394

`A051027(A070039(n+1)+A070038(n+1))`
-/

namespace A066971.P4653966205111893394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051027 (A070039 (n + 1) + A070038 (n + 1)).toNat

end

end A066971.P4653966205111893394

namespace A066971

/-- `A051027(A070039(n+1)+A070038(n+1))` -/
def P4653966205111893394.Spec : Prop :=
  ∀ n, P4653966205111893394.a n = A066971 (n + 1)

end A066971

/-! ## A066971.P9858181014159161870

`A051027(A117004(n+1)+A079667(n+1))`
-/

namespace A066971.P9858181014159161870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051027 (A117004 (n + 1) + A079667 (n + 1)).toNat

end

end A066971.P9858181014159161870

namespace A066971

/-- `A051027(A117004(n+1)+A079667(n+1))` -/
def P9858181014159161870.Spec : Prop :=
  ∀ n, P9858181014159161870.a n = A066971 (n + 1)

end A066971

/-! ## A066971.P11705947793747498078

`A051027(A000217(n+1)-A024816(n+1))`
-/

namespace A066971.P11705947793747498078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051027 (A000217 (n + 1) - A024816 (n + 1)).toNat

end

end A066971.P11705947793747498078

namespace A066971

/-- `A051027(A000217(n+1)-A024816(n+1))` -/
def P11705947793747498078.Spec : Prop :=
  ∀ n, P11705947793747498078.a n = A066971 (n + 1)

end A066971

/-! ## A066971.P15589719306684135184

`A051027(A065387(n+1)-A000010(n+1))`
-/

namespace A066971.P15589719306684135184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051027 (A065387 (n + 1) - A000010 (n + 1)).toNat

end

end A066971.P15589719306684135184

namespace A066971

/-- `A051027(A065387(n+1)-A000010(n+1))` -/
def P15589719306684135184.Spec : Prop :=
  ∀ n, P15589719306684135184.a n = A066971 (n + 1)

end A066971

/-! ## A066971.P12961835770305808253

`A051027(A351568(n+1)*A351569(n+1))`
-/

namespace A066971.P12961835770305808253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051027 (A351568 (n + 1) * A351569 (n + 1)).toNat

end

end A066971.P12961835770305808253

namespace A066971

/-- `A051027(A351568(n+1)*A351569(n+1))` -/
def P12961835770305808253.Spec : Prop :=
  ∀ n, P12961835770305808253.a n = A066971 (n + 1)

end A066971

/-! ## A066971.P14580230538129547697

`A051027(A353783(n+1)*A353784(n+1))`
-/

namespace A066971.P14580230538129547697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051027 (A353783 (n + 1) * A353784 (n + 1)).toNat

end

end A066971.P14580230538129547697

namespace A066971

/-- `A051027(A353783(n+1)*A353784(n+1))` -/
def P14580230538129547697.Spec : Prop :=
  ∀ n, P14580230538129547697.a n = A066971 (n + 1)

end A066971

/-!
# A066973: a(n) = phi(binomial(2n, n)).

The programs for A066973, the canonical program `A066973.P2959280615539179547` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A066973 has offset 1).

The definition of A066973 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A066973.P2959280615539179547

`A000010(A000984(n+1))`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A066973

/-- `A000010(A000984(n+1))` -/
def P2959280615539179547.Spec : Prop :=
  ∀ n, P2959280615539179547.a n = A066973 (n + 1)

theorem P2959280615539179547.correct : P2959280615539179547.Spec := by
  intro n
  simp only [A066973, Nat.add_sub_cancel]

end A066973

/-! ## A066973.P3111852957945633652

`A102715(∑[4*(n+1)])`
-/

namespace A066973.P3111852957945633652
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102715 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A066973.P3111852957945633652

namespace A066973

/-- `A102715(∑[4*(n+1)])` -/
def P3111852957945633652.Spec : Prop :=
  ∀ n, P3111852957945633652.a n = A066973 (n + 1)

end A066973

/-! ## A066973.P10630375093593947620

`record[A102715(A050187(n))]`
-/

namespace A066973.P10630375093593947620
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102715 (A050187 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A066973.P10630375093593947620

namespace A066973

/-- `record[A102715(A050187(n))]` -/
def P10630375093593947620.Spec : Prop :=
  ∀ n, P10630375093593947620.a n = A066973 (n + 1)

end A066973

/-! ## A066973.P6758014405128947076

`2^(n-∑[val(n+1, 2)])*A000010(A001790(n+1))`
-/

namespace A066973.P6758014405128947076
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (n + 1) 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ ((n : ℤ) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) : ℤ) * (A000010 (A001790 (n + 1)).toNat : ℚ)

end

end A066973.P6758014405128947076

namespace A066973

/-- `2^(n-∑[val(n+1, 2)])*A000010(A001790(n+1))` -/
def P6758014405128947076.Spec : Prop :=
  ∀ n, P6758014405128947076.a n = (A066973 (n + 1) : ℚ)

end A066973

/-! ## A066973.P9465537901375684504

`A001405(2*(n+1))/∏{p}[A001405(2*(n+1)), #/(#-1)]`
-/

namespace A066973.P9465537901375684504
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001405 (2 * (n + 1))

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001405 (2 * (n + 1)) : ℚ) / (∏ p ∈ Nat.primeFactors (f1 n).natAbs, (p : ℚ) / ((p : ℤ) - 1 : ℚ))

end

end A066973.P9465537901375684504

namespace A066973

/-- `A001405(2*(n+1))/∏{p}[A001405(2*(n+1)), #/(#-1)]` -/
def P9465537901375684504.Spec : Prop :=
  ∀ n, P9465537901375684504.a n = (A066973 (n + 1) : ℚ)

end A066973

/-!
# A066974: Integers of the form (1/m)*sum(i=1,m,binomial(2i,i)).

The programs for A066974, there is no canonical definition to state claims against.
-/

/-! ## A066974.P4662151719056596177

`A066796(A082406(n+1))/A082406(n+1)`
-/

namespace A066974.P4662151719056596177
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A066796 (A082406 (n + 1)).toNat : ℚ) / (A082406 (n + 1) : ℚ)

end

end A066974.P4662151719056596177

/-!
# A066975: a(n) = gcd(binomial(2n,n), 2^n + 1).

The programs for A066975, the canonical program `A066975.P14356048802470457297` is in `Seq.B000.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A066975 has offset 0).

The definition of A066975 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `gcd(C(2*n, n), 2^n+1)` (program `A066975.P14356048802470457297`, by `A066975.P14356048802470457297.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A066975.P69339458929744769

`gcd(A000984(n), A000051(n))`
-/

namespace A066975.P69339458929744769
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000984 n) (A000051 n)

end

end A066975.P69339458929744769

namespace A066975

/-- `gcd(A000984(n), A000051(n))` -/
def P69339458929744769.Spec : Prop :=
  ∀ n, (P69339458929744769.a n : ℤ) = A066975 n

end A066975

/-! ## A066975.P14356048802470457297

`gcd(C(2*n, n), 2^n+1)`

The canonical program, it is in `Seq.B000.C010`.
-/

namespace A066975

/-- `gcd(C(2*n, n), 2^n+1)` -/
def P14356048802470457297.Spec : Prop :=
  ∀ n, (P14356048802470457297.a n : ℤ) = A066975 n

theorem P14356048802470457297.correct : P14356048802470457297.Spec := by
  intro n
  simp only [A066975]

end A066975

/-! ## A066975.P6157079216936124962

`gcd(A083318(n), A088218(n))`
-/

namespace A066975.P6157079216936124962
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A083318 n) (A088218 n)

end

end A066975.P6157079216936124962

namespace A066975

/-- `gcd(A083318(n), A088218(n))` -/
def P6157079216936124962.Spec : Prop :=
  ∀ n, (P6157079216936124962.a n : ℤ) = A066975 n

end A066975

/-! ## A066975.P10433227076580811915

`gcd(A110556(n), A143096(n+1))`
-/

namespace A066975.P10433227076580811915
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A110556 n) (A143096 (n + 1))

end

end A066975.P10433227076580811915

namespace A066975

/-- `gcd(A110556(n), A143096(n+1))` -/
def P10433227076580811915.Spec : Prop :=
  ∀ n, (P10433227076580811915.a n : ℤ) = A066975 n

end A066975

/-! ## A066975.P15352722864896967810

`gcd(A001790(n), A007582(n))`
-/

namespace A066975.P15352722864896967810
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A001790 n) (A007582 n)

end

end A066975.P15352722864896967810

namespace A066975

/-- `gcd(A001790(n), A007582(n))` -/
def P15352722864896967810.Spec : Prop :=
  ∀ n, (P15352722864896967810.a n : ℤ) = A066975 n

end A066975

/-!
# A066976: a(0) = 1; for n>0: a(n) = sum{a(i)*n^i : 0<=i

The programs for A066976, there is no canonical definition to state claims against.
-/

/-! ## A066976.P5688525283068332923

`A265901(A001426(n))`
-/

namespace A066976.P5688525283068332923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265901 (A001426 n).toNat

end

end A066976.P5688525283068332923

/-!
# A066977: a(n) = gcd(prime(n^2) + 1, prime(n) + 1).

The programs for A066977, the canonical program `A066977.P9742772824617248515` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A066977 has offset 1).

The definition of A066977 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2847 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A066977.P9742772824617248515

`gcd(A008864(n+1), A213926(n+1))`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A066977

/-- `gcd(A008864(n+1), A213926(n+1))` -/
def P9742772824617248515.Spec : Prop :=
  ∀ n, (P9742772824617248515.a n : ℤ) = A066977 (n + 1)

theorem P9742772824617248515.correct : P9742772824617248515.Spec := by
  intro n
  simp only [A066977, Nat.add_sub_cancel]

end A066977

/-! ## A066977.P317423480287623405

`gcd(Δ[A007504(n)]+1, A008864((n+1)²))`
-/

namespace A066977.P317423480287623405
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (f1 (n + 1) - f1 n + 1) (A008864 ((n + 1) ^ 2))

end

end A066977.P317423480287623405

namespace A066977

/-- `gcd(Δ[A007504(n)]+1, A008864((n+1)²))` -/
def P317423480287623405.Spec : Prop :=
  ∀ n, (P317423480287623405.a n : ℤ) = A066977 (n + 1)

end A066977

/-! ## A066977.P3618961866292366072

`gcd(A000040((n+1)²)+1, A000040(n+1)+1)`
-/

namespace A066977.P3618961866292366072
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000040 ((n + 1) ^ 2) + 1) (A000040 (n + 1) + 1)

end

end A066977.P3618961866292366072

namespace A066977

/-- `gcd(A000040((n+1)²)+1, A000040(n+1)+1)` -/
def P3618961866292366072.Spec : Prop :=
  ∀ n, (P3618961866292366072.a n : ℤ) = A066977 (n + 1)

end A066977

/-! ## A066977.P2527306184442572943

`gcd(A089241(n+1)/2, A008864(∑[2*n+1]))`
-/

namespace A066977.P2527306184442572943
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (SequenceMachineLib.roundAway ((A089241 (n + 1) : ℚ) / 2)) (A008864 (∑ j ∈ Finset.range (n + 1), f1 j))

end

end A066977.P2527306184442572943

namespace A066977

/-- `gcd(A089241(n+1)/2, A008864(∑[2*n+1]))` -/
def P2527306184442572943.Spec : Prop :=
  ∀ n, (P2527306184442572943.a n : ℤ) = A066977 (n + 1)

end A066977

/-! ## A066977.P2760850336903094652

`gcd(A008578(n+2)+1, A008864(A000463(2*(n+1))))`
-/

namespace A066977.P2760850336903094652
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A008578 (n + 2) + 1) (A008864 (A000463 (2 * (n + 1))).toNat)

end

end A066977.P2760850336903094652

namespace A066977

/-- `gcd(A008578(n+2)+1, A008864(A000463(2*(n+1))))` -/
def P2760850336903094652.Spec : Prop :=
  ∀ n, (P2760850336903094652.a n : ℤ) = A066977 (n + 1)

end A066977

/-! ## A066977.P2536551393435529462

`gcd(A000203(A011757(n+1)), A036690(n+1))`
-/

namespace A066977.P2536551393435529462
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000203 (A011757 (n + 1)).toNat) (A036690 (n + 1))

end

end A066977.P2536551393435529462

namespace A066977

/-- `gcd(A000203(A011757(n+1)), A036690(n+1))` -/
def P2536551393435529462.Spec : Prop :=
  ∀ n, (P2536551393435529462.a n : ℤ) = A066977 (n + 1)

end A066977

/-!
# A066978: a(n) = gcd(prime(2*n)+1, prime(n)+1).

The programs for A066978, the canonical program `A066978.P1746091308066131393` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A066978 has offset 1).

The definition of A066978 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A066978.P1746091308066131393

`gcd(A008864(n+1), A072473(n+1))`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A066978

/-- `gcd(A008864(n+1), A072473(n+1))` -/
def P1746091308066131393.Spec : Prop :=
  ∀ n, (P1746091308066131393.a n : ℤ) = A066978 (n + 1)

theorem P1746091308066131393.correct : P1746091308066131393.Spec := by
  intro n
  simp only [A066978, Nat.add_sub_cancel]

end A066978

/-! ## A066978.P8248881877474437798

`gcd(A031215(n+1)+1, A055670(n+1))`
-/

namespace A066978.P8248881877474437798
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A031215 (n + 1) + 1) (A055670 (n + 1))

end

end A066978.P8248881877474437798

namespace A066978

/-- `gcd(A031215(n+1)+1, A055670(n+1))` -/
def P8248881877474437798.Spec : Prop :=
  ∀ n, (P8248881877474437798.a n : ℤ) = A066978 (n + 1)

end A066978

/-! ## A066978.P1379002693658422257

`gcd(A008864(n+1), A055670(A103517(n)))`
-/

namespace A066978.P1379002693658422257
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A008864 (n + 1)) (A055670 (A103517 n).toNat)

end

end A066978.P1379002693658422257

namespace A066978

/-- `gcd(A008864(n+1), A055670(A103517(n)))` -/
def P1379002693658422257.Spec : Prop :=
  ∀ n, (P1379002693658422257.a n : ℤ) = A066978 (n + 1)

end A066978

/-! ## A066978.P4206699623740900775

`gcd(A055670(2*(n+1))+A028815(n+1), A055670(2*(n+1)))`
-/

namespace A066978.P4206699623740900775
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A055670 (2 * (n + 1)) + A028815 (n + 1)) (A055670 (2 * (n + 1)))

end

end A066978.P4206699623740900775

namespace A066978

/-- `gcd(A055670(2*(n+1))+A028815(n+1), A055670(2*(n+1)))` -/
def P4206699623740900775.Spec : Prop :=
  ∀ n, (P4206699623740900775.a n : ℤ) = A066978 (n + 1)

end A066978

/-! ## A066978.P14769474015922460175

`gcd(A008864(2*(n+1)), A028815(n+1))`
-/

namespace A066978.P14769474015922460175
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A008864 (2 * (n + 1))) (A028815 (n + 1))

end

end A066978.P14769474015922460175

namespace A066978

/-- `gcd(A008864(2*(n+1)), A028815(n+1))` -/
def P14769474015922460175.Spec : Prop :=
  ∀ n, (P14769474015922460175.a n : ℤ) = A066978 (n + 1)

end A066978

/-! ## A066978.P16392316915955024683

`gcd(A028815(A103517(n)), A055670(n+1))`
-/

namespace A066978.P16392316915955024683
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A028815 (A103517 n).toNat) (A055670 (n + 1))

end

end A066978.P16392316915955024683

namespace A066978

/-- `gcd(A028815(A103517(n)), A055670(n+1))` -/
def P16392316915955024683.Spec : Prop :=
  ∀ n, (P16392316915955024683.a n : ℤ) = A066978 (n + 1)

end A066978

/-! ## A066978.P9753108864299004086

`A260437(gcd(A089241(2*(n+1)), A089241(n+1)))`
-/

namespace A066978.P9753108864299004086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260437 (Int.gcd (A089241 (2 * (n + 1))) (A089241 (n + 1)))

end

end A066978.P9753108864299004086

namespace A066978

/-- `A260437(gcd(A089241(2*(n+1)), A089241(n+1)))` -/
def P9753108864299004086.Spec : Prop :=
  ∀ n, P9753108864299004086.a n = A066978 (n + 1)

end A066978

/-!
# A066979: a(n) = floor(n!/2^n).

The programs for A066979, the canonical program `A066979.P6247858953745526574` is in `Seq.B000.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A066979 has offset 1).

The definition of A066979 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor((n+1)!/2^(n+1))` (program `A066979.P6247858953745526574`, by `A066979.P6247858953745526574.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A066979.P6247858953745526574

`floor((n+1)!/2^(n+1))`

The canonical program, it is in `Seq.B000.C010`.
-/

namespace A066979

/-- `floor((n+1)!/2^(n+1))` -/
def P6247858953745526574.Spec : Prop :=
  ∀ n, P6247858953745526574.a n = A066979 (n + 1)

theorem P6247858953745526574.correct : P6247858953745526574.Spec := by
  intro n
  simp only [A066979, Nat.add_sub_cancel]

end A066979

/-! ## A066979.P2075400234886307219

`floor(∏[(n+1)/2])`
-/

namespace A066979.P2075400234886307219
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊∏ j ∈ Finset.range (n + 1), f1 j⌋

end

end A066979.P2075400234886307219

namespace A066979

/-- `floor(∏[(n+1)/2])` -/
def P2075400234886307219.Spec : Prop :=
  ∀ n, P2075400234886307219.a n = A066979 (n + 1)

end A066979

/-! ## A066979.P5148813461328080838

`ceil((n+1)!/A011782(n+2))-1`
-/

namespace A066979.P5148813461328080838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(Nat.factorial (n + 1) : ℚ) / (A011782 (n + 2) : ℚ)⌉ - 1

end

end A066979.P5148813461328080838

namespace A066979

/-- `ceil((n+1)!/A011782(n+2))-1` -/
def P5148813461328080838.Spec : Prop :=
  ∀ n, P5148813461328080838.a n = A066979 (n + 1)

end A066979

/-! ## A066979.P6726370077872592099

`ceil((n+1)!/A029748(3*n))-1`
-/

namespace A066979.P6726370077872592099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(Nat.factorial (n + 1) : ℚ) / (A029748 (3 * n) : ℚ)⌉ - 1

end

end A066979.P6726370077872592099

namespace A066979

/-- `ceil((n+1)!/A029748(3*n))-1` -/
def P6726370077872592099.Spec : Prop :=
  ∀ n, P6726370077872592099.a n = A066979 (n + 1)

end A066979

/-! ## A066979.P8332718736464480306

`ceil(A123642(n+1)/A000079(n+1))`
-/

namespace A066979.P8332718736464480306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A123642 (n + 1) : ℚ) / (A000079 (n + 1) : ℚ)⌉

end

end A066979.P8332718736464480306

namespace A066979

/-- `ceil(A123642(n+1)/A000079(n+1))` -/
def P8332718736464480306.Spec : Prop :=
  ∀ n, P8332718736464480306.a n = A066979 (n + 1)

end A066979

/-! ## A066979.P5329619575604067839

`(A000142(n+1)-A068496(n+1))/A000079(n+1)`
-/

namespace A066979.P5329619575604067839
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000142 (n + 1) - A068496 (n + 1) : ℚ) / (A000079 (n + 1) : ℚ)

end

end A066979.P5329619575604067839

namespace A066979

/-- `(A000142(n+1)-A068496(n+1))/A000079(n+1)` -/
def P5329619575604067839.Spec : Prop :=
  ∀ n, P5329619575604067839.a n = (A066979 (n + 1) : ℚ)

end A066979

/-!
# A066980: Numbers k such that antid(k) > antid(k+1) and santid(k) > santid(k+1), where antid(k) = A066272 and santid(k) = A066417.

The programs for A066980, there is no canonical definition to state claims against.
-/

/-! ## A066980.P8149740844448019317

`A195770(∑[A196176(A196239(n+1))])`
-/

namespace A066980.P8149740844448019317
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196176 (A196239 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195770 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A066980.P8149740844448019317

/-! ## A066980.P2912563897447194417

`A047486(2*n+5)-A240067(A239017(n+1))`
-/

namespace A066980.P2912563897447194417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047486 (2 * n + 5) - A240067 (A239017 (n + 1)).toNat

end

end A066980.P2912563897447194417

/-! ## A066980.P16857788156192671735

`A244219(3*n+4)+A008683(A327696(n+3))`
-/

namespace A066980.P16857788156192671735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244219 (3 * n + 4) + A008683 (A327696 (n + 3)).toNat

end

end A066980.P16857788156192671735

/-!
# A066981: Number of residues of Lucas numbers modulo n.

The programs for A066981, there is no canonical definition to state claims against.
-/

/-! ## A066981.P6350328886261655462

`1-A223487(n+1)+n`
-/

namespace A066981.P6350328886261655462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A223487 (n + 1) + (n : ℤ)

end

end A066981.P6350328886261655462

/-! ## A066981.P871316542809185231

`1-(A223487(n-log2(1/2))-n)`
-/

namespace A066981.P871316542809185231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (A223487 (SequenceMachineLib.roundAway ((n : ℝ) - Real.logb 2 ((1 : ℚ) / 2 : ℝ))).toNat - (n : ℤ))

end

end A066981.P871316542809185231

/-! ## A066981.P11507268848823221521

`A024000(A223487(n+1))+n`
-/

namespace A066981.P11507268848823221521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024000 (A223487 (n + 1)).toNat + (n : ℤ)

end

end A066981.P11507268848823221521

/-! ## A066981.P14741410784611760362

`abs(A223487(n+1)+A001478(n+1))`
-/

namespace A066981.P14741410784611760362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A223487 (n + 1) + A001478 (n + 1)|

end

end A066981.P14741410784611760362

/-! ## A066981.P2683727946821342466

`A001489(A223487(n+1)+1)+n+2`
-/

namespace A066981.P2683727946821342466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001489 (A223487 (n + 1) + 1).toNat + (n + 2 : ℤ)

end

end A066981.P2683727946821342466

/-! ## A066981.P11604563003197003094

`A057428(n)*A223487(n+1)+1+n`
-/

namespace A066981.P11604563003197003094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 n * A223487 (n + 1) + 1 + (n : ℤ)

end

end A066981.P11604563003197003094

/-! ## A066981.P6699300436750881109

`A223487(n+1)*A260196(n)+n+1`
-/

namespace A066981.P6699300436750881109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223487 (n + 1) * A260196 n + (n + 1 : ℤ)

end

end A066981.P6699300436750881109

/-! ## A066981.P3269854392694369747

`A001489(A223487(n+1))+A000027(n+1)`
-/

namespace A066981.P3269854392694369747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001489 (A223487 (n + 1)).toNat + A000027 (n + 1)

end

end A066981.P3269854392694369747

/-! ## A066981.P18022713964636307180

`A004736(A223487(n+1)+A000124(n))`
-/

namespace A066981.P18022713964636307180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (A223487 (n + 1) + A000124 n).toNat

end

end A066981.P18022713964636307180

/-!
# A066982: a(n) = Lucas(n+1) - (n+1).

The programs for A066982, the canonical program `A066982.P9921641872799268463` is in `Seq.B000.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A066982 has offset 1).

The definition of A066982 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A066982.P9921641872799268463

`a(n-1)+a(n-2)+n+1-2` with `a(0)=1, a(1)=1`

The canonical program, it is in `Seq.B000.C010`.
-/

namespace A066982

/-- `a(n-1)+a(n-2)+n+1-2` -/
def P9921641872799268463.Spec : Prop :=
  ∀ n, P9921641872799268463.a n = A066982 (n + 1)

theorem P9921641872799268463.correct : P9921641872799268463.Spec := by
  intro n
  simp only [A066982, Nat.add_sub_cancel]

end A066982

/-! ## A066982.P748738018348575212

`floor(∑[ϕ^n]-n)`
-/

namespace A066982.P748738018348575212
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.goldenRatio ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊∑ j ∈ Finset.range (n + 1), f1 j - (n : ℝ)⌋

end

end A066982.P748738018348575212

namespace A066982

/-- `floor(∑[ϕ^n]-n)` -/
def P748738018348575212.Spec : Prop :=
  ∀ n, P748738018348575212.a n = A066982 (n + 1)

end A066982

/-! ## A066982.P8707830856614325506

`round(record[ϕ^n-n])`
-/

namespace A066982.P8707830856614325506
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.goldenRatio ^ n - (n : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))

end

end A066982.P8707830856614325506

namespace A066982

/-- `round(record[ϕ^n-n])` -/
def P8707830856614325506.Spec : Prop :=
  ∀ n, P8707830856614325506.a n = A066982 (n + 1)

end A066982

/-! ## A066982.P12016484559305626689

`∑[ogf((1-2x+2x^2)/(1-2x+x^3))]`
-/

namespace A066982.P12016484559305626689
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -2, 2] [1, -2, 0, 1] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A066982.P12016484559305626689

namespace A066982

/-- `∑[ogf((1-2x+2x^2)/(1-2x+x^3))]` -/
def P12016484559305626689.Spec : Prop :=
  ∀ n, P12016484559305626689.a n = A066982 (n + 1)

end A066982

/-! ## A066982.P18361517312136683443

`ogf((1-2x+2x^2)/(1-3x+2x^2+x^3-x^4))`
-/

namespace A066982.P18361517312136683443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -2, 2] [1, -3, 2, 1, -1] n

end

end A066982.P18361517312136683443

namespace A066982

/-- `ogf((1-2x+2x^2)/(1-3x+2x^2+x^3-x^4))` -/
def P18361517312136683443.Spec : Prop :=
  ∀ n, P18361517312136683443.a n = A066982 (n + 1)

end A066982

/-! ## A066982.P698638198316430275

`floor(∑[ϕ*a(n-1)])-n` with `a(0)=1`
-/

namespace A066982.P698638198316430275
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.rec [1] fun n f1 =>
  Real.goldenRatio * f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊∑ j ∈ Finset.range (n + 1), f1 j⌋ - (n : ℤ)

end

end A066982.P698638198316430275

namespace A066982

/-- `floor(∑[ϕ*a(n-1)])-n` -/
def P698638198316430275.Spec : Prop :=
  ∀ n, P698638198316430275.a n = A066982 (n + 1)

end A066982

/-! ## A066982.P8687941658971275041

`∑[a(n-1)+a(n-2)+1]` with `a(0)=1, a(1)=0`
-/

namespace A066982.P8687941658971275041
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 0] fun n f1 =>
  f1 (n - 1) + (f1 (n - 2) + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A066982.P8687941658971275041

namespace A066982

/-- `∑[a(n-1)+a(n-2)+1]` -/
def P8687941658971275041.Spec : Prop :=
  ∀ n, (P8687941658971275041.a n : ℤ) = A066982 (n + 1)

end A066982

/-! ## A066982.P10881143436075027027

`round(ϕ^C(n+2, n+1)-(n+2))`
-/

namespace A066982.P10881143436075027027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.goldenRatio ^ Nat.choose (n + 2) (n + 1) - (n + 2 : ℝ))

end

end A066982.P10881143436075027027

namespace A066982

/-- `round(ϕ^C(n+2, n+1)-(n+2))` -/
def P10881143436075027027.Spec : Prop :=
  ∀ n, P10881143436075027027.a n = A066982 (n + 1)

end A066982

/-! ## A066982.P8305822400304818512

`∑[2*a(n-1)-a(n-3)]` with `a(0)=1, a(1)=0, a(2)=2`
-/

namespace A066982.P8305822400304818512
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 2] fun n f1 =>
  2 * f1 (n - 1) - f1 (n - 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A066982.P8305822400304818512

namespace A066982

/-- `∑[2*a(n-1)-a(n-3)]` -/
def P8305822400304818512.Spec : Prop :=
  ∀ n, P8305822400304818512.a n = A066982 (n + 1)

end A066982

/-! ## A066982.P10832398921291872382

`n-1+a(n-1)+a(n-2)` with `a(0)=1, a(1)=1`
-/

namespace A066982.P10832398921291872382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  (n : ℤ) - 1 + (a (n - 1) + a (n - 2))

end

end A066982.P10832398921291872382

namespace A066982

/-- `n-1+a(n-1)+a(n-2)` -/
def P10832398921291872382.Spec : Prop :=
  ∀ n, P10832398921291872382.a n = A066982 (n + 1)

end A066982

/-! ## A066982.P18269060771375910760

`n-(1-a(n-1)-a(n-2))` with `a(0)=1, a(1)=1`
-/

namespace A066982.P18269060771375910760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  (n : ℤ) - (1 - a (n - 1) - a (n - 2))

end

end A066982.P18269060771375910760

namespace A066982

/-- `n-(1-a(n-1)-a(n-2))` -/
def P18269060771375910760.Spec : Prop :=
  ∀ n, P18269060771375910760.a n = A066982 (n + 1)

end A066982

/-! ## A066982.P510110594654997632

`A014739(n)-n`
-/

namespace A066982.P510110594654997632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014739 n - (n : ℤ)

end

end A066982.P510110594654997632

namespace A066982

/-- `A014739(n)-n` -/
def P510110594654997632.Spec : Prop :=
  ∀ n, P510110594654997632.a n = A066982 (n + 1)

end A066982

/-! ## A066982.P2447049791992533892

`∑[A000032(n)-1]`
-/

namespace A066982.P2447049791992533892
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 n - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A066982.P2447049791992533892

namespace A066982

/-- `∑[A000032(n)-1]` -/
def P2447049791992533892.Spec : Prop :=
  ∀ n, P2447049791992533892.a n = A066982 (n + 1)

end A066982

/-! ## A066982.P17886122359947910316

`∑[A001612(n)-2]`
-/

namespace A066982.P17886122359947910316
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001612 n - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A066982.P17886122359947910316

namespace A066982

/-- `∑[A001612(n)-2]` -/
def P17886122359947910316.Spec : Prop :=
  ∀ n, P17886122359947910316.a n = A066982 (n + 1)

end A066982

/-! ## A066982.P15761055482337480500

`∑[A000211(n)-3]`
-/

namespace A066982.P15761055482337480500
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000211 n - 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A066982.P15761055482337480500

namespace A066982

/-- `∑[A000211(n)-3]` -/
def P15761055482337480500.Spec : Prop :=
  ∀ n, P15761055482337480500.a n = A066982 (n + 1)

end A066982

/-! ## A066982.P1872441130279712292

`∑[Δ[A001610(n)]-1]`
-/

namespace A066982.P1872441130279712292
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001610 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A066982.P1872441130279712292

namespace A066982

/-- `∑[Δ[A001610(n)]-1]` -/
def P1872441130279712292.Spec : Prop :=
  ∀ n, P1872441130279712292.a n = A066982 (n + 1)

end A066982

/-! ## A066982.P16267635267734253262

`∑[A127218(2*n)-1]`
-/

namespace A066982.P16267635267734253262
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127218 (2 * n) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A066982.P16267635267734253262

namespace A066982

/-- `∑[A127218(2*n)-1]` -/
def P16267635267734253262.Spec : Prop :=
  ∀ n, P16267635267734253262.a n = A066982 (n + 1)

end A066982

/-! ## A066982.P14066354013446042239

`∑[A303427(2*n)-1]`
-/

namespace A066982.P14066354013446042239
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303427 (2 * n) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A066982.P14066354013446042239

namespace A066982

/-- `∑[A303427(2*n)-1]` -/
def P14066354013446042239.Spec : Prop :=
  ∀ n, P14066354013446042239.a n = A066982 (n + 1)

end A066982

/-! ## A066982.P17077056646223504899

`A001610(n+1)-(n+1)`
-/

namespace A066982.P17077056646223504899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001610 (n + 1) - (n + 1 : ℤ)

end

end A066982.P17077056646223504899

namespace A066982

/-- `A001610(n+1)-(n+1)` -/
def P17077056646223504899.Spec : Prop :=
  ∀ n, P17077056646223504899.a n = A066982 (n + 1)

end A066982

/-! ## A066982.P18426552114020627211

`A324015(n+2)-(n+1)`
-/

namespace A066982.P18426552114020627211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324015 (n + 2) - (n + 1 : ℤ)

end

end A066982.P18426552114020627211

namespace A066982

/-- `A324015(n+2)-(n+1)` -/
def P18426552114020627211.Spec : Prop :=
  ∀ n, P18426552114020627211.a n = A066982 (n + 1)

end A066982

/-!
# A066983: a(n+2) = a(n+1) + a(n) + (-1)^n, with a(1) = a(2) = 1.

The programs for A066983, the canonical program `A066983.P9158293881669286122` is in `Seq.B000.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A066983 has offset 1).

The definition of A066983 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A066983.P9158293881669286122

`2*a(n-2)+a(n-3)` with `a(0)=1, a(1)=1, a(2)=1, a(3)=3`

The canonical program, it is in `Seq.B000.C010`.
-/

namespace A066983

/-- `2*a(n-2)+a(n-3)` -/
def P9158293881669286122.Spec : Prop :=
  ∀ n, (P9158293881669286122.a n : ℤ) = A066983 (n + 1)

theorem P9158293881669286122.correct : P9158293881669286122.Spec := by
  intro n
  simp only [A066983, Nat.add_sub_cancel]

end A066983

/-! ## A066983.P15898208172268955704

`a(n-1)+a(n-2)+(-1)^(n+1)` with `a(0)=1, a(1)=1`
-/

namespace A066983.P15898208172268955704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  a (n - 1) + a (n - 2) + (-1) ^ (n + 1)

end

end A066983.P15898208172268955704

namespace A066983

/-- `a(n-1)+a(n-2)+(-1)^(n+1)` -/
def P15898208172268955704.Spec : Prop :=
  ∀ n, P15898208172268955704.a n = A066983 (n + 1)

end A066983

/-! ## A066983.P2643846862308571545

`ogf((1+x-x^2)/(1-2x^2-x^3))`
-/

namespace A066983.P2643846862308571545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 1, -1] [1, 0, -2, -1] n

end

end A066983.P2643846862308571545

namespace A066983

/-- `ogf((1+x-x^2)/(1-2x^2-x^3))` -/
def P2643846862308571545.Spec : Prop :=
  ∀ n, P2643846862308571545.a n = A066983 (n + 1)

end A066983

/-! ## A066983.P12796995408547682327

`a(n-3)+2*a(n-2)` with `a(0)=1, a(1)=1, a(2)=1`
-/

namespace A066983.P12796995408547682327
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 1, 1] fun n a =>
  a (n - 3) + 2 * a (n - 2)

end

end A066983.P12796995408547682327

namespace A066983

/-- `a(n-3)+2*a(n-2)` -/
def P12796995408547682327.Spec : Prop :=
  ∀ n, (P12796995408547682327.a n : ℤ) = A066983 (n + 1)

end A066983

/-! ## A066983.P2855782869501642372

`a(n-3)+lcm(2, a(n-2))` with `a(0)=1, a(1)=1, a(2)=1`
-/

namespace A066983.P2855782869501642372
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 1, 1] fun n a =>
  a (n - 3) + Nat.lcm 2 (a (n - 2))

end

end A066983.P2855782869501642372

namespace A066983

/-- `a(n-3)+lcm(2, a(n-2))` -/
def P2855782869501642372.Spec : Prop :=
  ∀ n, (P2855782869501642372.a n : ℤ) = A066983 (n + 1)

end A066983

/-! ## A066983.P5367009810748641587

`a(n-1)-((-1)^n-a(n-2))` with `a(0)=1, a(1)=1`
-/

namespace A066983.P5367009810748641587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  a (n - 1) - ((-1) ^ n - a (n - 2))

end

end A066983.P5367009810748641587

namespace A066983

/-- `a(n-1)-((-1)^n-a(n-2))` -/
def P5367009810748641587.Spec : Prop :=
  ∀ n, P5367009810748641587.a n = A066983 (n + 1)

end A066983

/-! ## A066983.P3372245954356319946

`floor(a(n-2)+a(n-2)+a(n-3))` with `a(0)=1, a(1)=1, a(2)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A066983.P3372245954356319946
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 1, 1] fun n a =>
  a (n - 2) + (a (n - 2) + a (n - 3))

end

end A066983.P3372245954356319946

namespace A066983

/-- `floor(a(n-2)+a(n-2)+a(n-3))` -/
def P3372245954356319946.Spec : Prop :=
  ∀ n, (P3372245954356319946.a n : ℤ) = A066983 (n + 1)

end A066983

/-! ## A066983.P1394123125730720926

`3*a(n-2)-(a(n-2)-a(n-3))` with `a(0)=1, a(1)=1, a(2)=1`
-/

namespace A066983.P1394123125730720926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 1] fun n a =>
  3 * a (n - 2) - (a (n - 2) - a (n - 3))

end

end A066983.P1394123125730720926

namespace A066983

/-- `3*a(n-2)-(a(n-2)-a(n-3))` -/
def P1394123125730720926.Spec : Prop :=
  ∀ n, P1394123125730720926.a n = A066983 (n + 1)

end A066983

/-! ## A066983.P7631996098683072963

`∑[a(n-2)+a(n-2)+a(n-3)]` with `a(0)=1, a(1)=0, a(2)=0, a(3)=2`
-/

namespace A066983.P7631996098683072963
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 0, 0, 2] fun n f1 =>
  f1 (n - 2) + (f1 (n - 2) + f1 (n - 3))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A066983.P7631996098683072963

namespace A066983

/-- `∑[a(n-2)+a(n-2)+a(n-3)]` -/
def P7631996098683072963.Spec : Prop :=
  ∀ n, (P7631996098683072963.a n : ℤ) = A066983 (n + 1)

end A066983

/-! ## A066983.P16574541981126087396

`abs(2*A119282(n)+1)`
-/

namespace A066983.P16574541981126087396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |2 * A119282 n + 1|

end

end A066983.P16574541981126087396

namespace A066983

/-- `abs(2*A119282(n)+1)` -/
def P16574541981126087396.Spec : Prop :=
  ∀ n, P16574541981126087396.a n = A066983 (n + 1)

end A066983

/-! ## A066983.P13212789456523651005

`abs(1-A128587(n+1))+1`
-/

namespace A066983.P13212789456523651005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - A128587 (n + 1)| + 1

end

end A066983.P13212789456523651005

namespace A066983

/-- `abs(1-A128587(n+1))+1` -/
def P13212789456523651005.Spec : Prop :=
  ∀ n, P13212789456523651005.a n = A066983 (n + 1)

end A066983

/-! ## A066983.P13789847773490840126

`A163733(n)+a(n-2)` with `a(0)=1, a(1)=1, a(2)=1`
-/

namespace A066983.P13789847773490840126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 1] fun n a =>
  A163733 n + a (n - 2)

end

end A066983.P13789847773490840126

namespace A066983

/-- `A163733(n)+a(n-2)` -/
def P13789847773490840126.Spec : Prop :=
  ∀ n, P13789847773490840126.a n = A066983 (n + 1)

end A066983

/-! ## A066983.P10143815964584398823

`a(n-2)+2*A000045(n-2)` with `a(0)=1, a(1)=1`
-/

namespace A066983.P10143815964584398823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  a (n - 2) + 2 * A000045 (n - 2)

end

end A066983.P10143815964584398823

namespace A066983

/-- `a(n-2)+2*A000045(n-2)` -/
def P10143815964584398823.Spec : Prop :=
  ∀ n, P10143815964584398823.a n = A066983 (n + 1)

end A066983

/-! ## A066983.P865045016123465138

`A062157(n)+A006355(n)`
-/

namespace A066983.P865045016123465138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062157 n + A006355 n

end

end A066983.P865045016123465138

namespace A066983

/-- `A062157(n)+A006355(n)` -/
def P865045016123465138.Spec : Prop :=
  ∀ n, P865045016123465138.a n = A066983 (n + 1)

end A066983

/-! ## A066983.P8829079822417073477

`A118658(n)-A033999(n)`
-/

namespace A066983.P8829079822417073477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118658 n - A033999 n

end

end A066983.P8829079822417073477

namespace A066983

/-- `A118658(n)-A033999(n)` -/
def P8829079822417073477.Spec : Prop :=
  ∀ n, P8829079822417073477.a n = A066983 (n + 1)

end A066983

/-! ## A066983.P9776392476762239297

`A152163(n)+A008346(n+1)`
-/

namespace A066983.P9776392476762239297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152163 n + A008346 (n + 1)

end

end A066983.P9776392476762239297

namespace A066983

/-- `A152163(n)+A008346(n+1)` -/
def P9776392476762239297.Spec : Prop :=
  ∀ n, P9776392476762239297.a n = A066983 (n + 1)

end A066983

/-! ## A066983.P16757949972737644792

`A198834(n+1)+A165326(n)`
-/

namespace A066983.P16757949972737644792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198834 (n + 1) + A165326 n

end

end A066983.P16757949972737644792

namespace A066983

/-- `A198834(n+1)+A165326(n)` -/
def P16757949972737644792.Spec : Prop :=
  ∀ n, P16757949972737644792.a n = A066983 (n + 1)

end A066983

/-! ## A066983.P5479317969557403707

`A007492(n+1)-A078024(n)`
-/

namespace A066983.P5479317969557403707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007492 (n + 1) - A078024 n

end

end A066983.P5479317969557403707

namespace A066983

/-- `A007492(n+1)-A078024(n)` -/
def P5479317969557403707.Spec : Prop :=
  ∀ n, P5479317969557403707.a n = A066983 (n + 1)

end A066983

/-! ## A066983.P1038870392676850893

`A118658(n)-A056594(2*n)`
-/

namespace A066983.P1038870392676850893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118658 n - A056594 (2 * n)

end

end A066983.P1038870392676850893

namespace A066983

/-- `A118658(n)-A056594(2*n)` -/
def P1038870392676850893.Spec : Prop :=
  ∀ n, P1038870392676850893.a n = A066983 (n + 1)

end A066983

/-! ## A066983.P6119474701487834031

`2*A212804(n)-A033999(n)`
-/

namespace A066983.P6119474701487834031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A212804 n - A033999 n

end

end A066983.P6119474701487834031

namespace A066983

/-- `2*A212804(n)-A033999(n)` -/
def P6119474701487834031.Spec : Prop :=
  ∀ n, P6119474701487834031.a n = A066983 (n + 1)

end A066983

/-!
# A066984: a(n) = gcd(prime(n+1) - 1, prime(n) + 1).

The programs for A066984, the canonical program `A066984.P2700678080183725045` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A066984 has offset 1).

The definition of A066984 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A066984.P2700678080183725045

`gcd(A001043(n+1), A008864(n+1))`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A066984

/-- `gcd(A001043(n+1), A008864(n+1))` -/
def P2700678080183725045.Spec : Prop :=
  ∀ n, (P2700678080183725045.a n : ℤ) = A066984 (n + 1)

theorem P2700678080183725045.correct : P2700678080183725045.Spec := by
  intro n
  simp only [A066984, Nat.add_sub_cancel]

end A066984

/-! ## A066984.P13909786142378733903

`gcd(A037166(n+1), A055670(n+1))`
-/

namespace A066984.P13909786142378733903
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A037166 (n + 1)) (A055670 (n + 1))

end

end A066984.P13909786142378733903

namespace A066984

/-- `gcd(A037166(n+1), A055670(n+1))` -/
def P13909786142378733903.Spec : Prop :=
  ∀ n, (P13909786142378733903.a n : ℤ) = A066984 (n + 1)

end A066984

/-! ## A066984.P17907703006414679981

`gcd(A036690(n+1), A062235(n+1))`
-/

namespace A066984.P17907703006414679981
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A036690 (n + 1)) (A062235 (n + 1))

end

end A066984.P17907703006414679981

namespace A066984

/-- `gcd(A036690(n+1), A062235(n+1))` -/
def P17907703006414679981.Spec : Prop :=
  ∀ n, (P17907703006414679981.a n : ℤ) = A066984 (n + 1)

end A066984

/-! ## A066984.P16298728799615586114

`gcd(A099407(n+1), A135178(n+1))`
-/

namespace A066984.P16298728799615586114
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A099407 (n + 1)) (A135178 (n + 1))

end

end A066984.P16298728799615586114

namespace A066984

/-- `gcd(A099407(n+1), A135178(n+1))` -/
def P16298728799615586114.Spec : Prop :=
  ∀ n, (P16298728799615586114.a n : ℤ) = A066984 (n + 1)

end A066984

/-! ## A066984.P7903489809247067708

`gcd(A165972(n+1), A175216(n+1))`
-/

namespace A066984.P7903489809247067708
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A165972 (n + 1)) (A175216 (n + 1))

end

end A066984.P7903489809247067708

namespace A066984

/-- `gcd(A165972(n+1), A175216(n+1))` -/
def P7903489809247067708.Spec : Prop :=
  ∀ n, (P7903489809247067708.a n : ℤ) = A066984 (n + 1)

end A066984

/-! ## A066984.P12610554551277707740

`gcd(A083554(n+1), A345727(n+1))`
-/

namespace A066984.P12610554551277707740
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A083554 (n + 1)) (A345727 (n + 1))

end

end A066984.P12610554551277707740

namespace A066984

/-- `gcd(A083554(n+1), A345727(n+1))` -/
def P12610554551277707740.Spec : Prop :=
  ∀ n, (P12610554551277707740.a n : ℤ) = A066984 (n + 1)

end A066984

/-! ## A066984.P11843060559689778447

`gcd(1-A000040(n+2), A011974(n+2))`
-/

namespace A066984.P11843060559689778447
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (1 - A000040 (n + 2)) (A011974 (n + 2))

end

end A066984.P11843060559689778447

namespace A066984

/-- `gcd(1-A000040(n+2), A011974(n+2))` -/
def P11843060559689778447.Spec : Prop :=
  ∀ n, (P11843060559689778447.a n : ℤ) = A066984 (n + 1)

end A066984

/-! ## A066984.P9819342610045482322

`gcd(2-A008864(n+2), A028815(n+1))`
-/

namespace A066984.P9819342610045482322
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (2 - A008864 (n + 2)) (A028815 (n + 1))

end

end A066984.P9819342610045482322

namespace A066984

/-- `gcd(2-A008864(n+2), A028815(n+1))` -/
def P9819342610045482322.Spec : Prop :=
  ∀ n, (P9819342610045482322.a n : ℤ) = A066984 (n + 1)

end A066984

/-!
# A066986: Integers of the form (Product_{i=1..k} sigma(i))/(Product_{i=1..k} phi(i)) = A066780(k)/A001088(k).

The programs for A066986, there is no canonical definition to state claims against.
-/

/-! ## A066986.P6498735469966433886

`A017665(A136140(n+1)*A349270(n))`
-/

namespace A066986.P6498735469966433886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017665 (A136140 (n + 1) * A349270 n).toNat

end

end A066986.P6498735469966433886

/-! ## A066986.P12286870433629428361

`A292885(A339626(n)+A001791(n))`
-/

namespace A066986.P12286870433629428361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292885 (A339626 n + A001791 n).toNat

end

end A066986.P12286870433629428361

/-!
# A066987: a(n) = Product_{i=2..n} sigma(i)/bigomega(i).

The programs for A066987, there is no canonical definition to state claims against.
-/

/-! ## A066987.P9090483742991241372

`∏[A000203(n+2)/A001222(n+2)]`
-/

namespace A066987.P9090483742991241372
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000203 (n + 2) : ℚ) / (A001222 (n + 2) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A066987.P9090483742991241372

/-! ## A066987.P15278512417506311287

`∏[A245092(2*n+3)/A001222(n+2)]`
-/

namespace A066987.P15278512417506311287
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A245092 (2 * n + 3) : ℚ) / (A001222 (n + 2) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A066987.P15278512417506311287

/-!
# A066988: a(n) = Product_{i=2..n} phi(i)/bigomega(i).

The programs for A066988, there is no canonical definition to state claims against.
-/

/-! ## A066988.P14589810644030553842

`∏[A000010(n+2)/∑{e}[n+2, #]]`
-/

namespace A066988.P14589810644030553842
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000010 (n + 2) : ℚ) / ((∑ p ∈ Nat.primeFactors (f2 n), Nat.factorization (f2 n) p : ℕ) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A066988.P14589810644030553842

/-! ## A066988.P7338167745523512977

`∏[A000010(n+2)/A001222(n+2)]`
-/

namespace A066988.P7338167745523512977
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000010 (n + 2) : ℚ) / (A001222 (n + 2) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A066988.P7338167745523512977

/-! ## A066988.P1255259926635960170

`∏[Δ[A005728(n+1)]/A001222(n+2)]`
-/

namespace A066988.P1255259926635960170
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005728 (n + 1)

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) - f2 n : ℚ) / (A001222 (n + 2) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A066988.P1255259926635960170

/-! ## A066988.P3359769498116894168

`A085543(A008675(n*(n+2)))`
-/

namespace A066988.P3359769498116894168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085543 (A008675 (n * (n + 2))).toNat

end

end A066988.P3359769498116894168

/-! ## A066988.P3114502043038034626

`and(A003945(n), A055998(A093210(n)))`
-/

namespace A066988.P3114502043038034626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A003945 n) (A055998 (A093210 n).toNat)

end

end A066988.P3114502043038034626

/-!
# A066989: a(n) = (n!)^3 * Sum_{i=1..n} 1/i^3.

The programs for A066989, there is no canonical definition to state claims against.
-/

/-! ## A066989.P1879242117838623440

`A249677(∑[n+2]-1)`
-/

namespace A066989.P1879242117838623440
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249677 (∑ j ∈ Finset.range (n + 1), f1 j - 1)

end

end A066989.P1879242117838623440

/-! ## A066989.P9410351261751037361

`A269947(∑[n+2]+3)`
-/

namespace A066989.P9410351261751037361
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269947 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A066989.P9410351261751037361

/-! ## A066989.P17635469535789008294

`lcm(A025527(n+1), A249677(A034856(n+1)))`
-/

namespace A066989.P17635469535789008294
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A025527 (n + 1)) (A249677 (A034856 (n + 1)).toNat)

end

end A066989.P17635469535789008294

/-! ## A066989.P6581387101611664657

`A291556(Δ[A264443(n)])`
-/

namespace A066989.P6581387101611664657
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291556 (f1 (n + 1) - f1 n).toNat

end

end A066989.P6581387101611664657

/-! ## A066989.P15359495951269848283

`A291556(eq[3, A152157(n)])`
-/

namespace A066989.P15359495951269848283
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152157 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291556 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A066989.P15359495951269848283

/-!
# A066990: In canonical prime factorization of n replace even exponents with 2 and odd exponents with 1.

The programs for A066990, the canonical program `A066990.P6526794843317406672` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A066990 has offset 1).

The definition of A066990 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A066990.P6526794843317406672

`(n+1)/A295657(n+1)²`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A066990

/-- `(n+1)/A295657(n+1)²` -/
def P6526794843317406672.Spec : Prop :=
  ∀ n, P6526794843317406672.a n = (A066990 (n + 1) : ℚ)

end A066990

/-! ## A066990.P863067968143366371

`A355261(n+1)²/(n+1)`
-/

namespace A066990.P863067968143366371
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A355261 (n + 1) ^ 2 : ℚ) / (n + 1 : ℚ)

end

end A066990.P863067968143366371

namespace A066990

/-- `A355261(n+1)²/(n+1)` -/
def P863067968143366371.Spec : Prop :=
  ∀ n, P863067968143366371.a n = (A066990 (n + 1) : ℚ)

end A066990

/-! ## A066990.P1094147653976139345

`∏{p}[n+1, #]*A007913((n+1)/∏{p}[n+1, #])`
-/

namespace A066990.P1094147653976139345
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℤ) * A007913 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f2 n), p : ℕ) : ℚ))).toNat

end

end A066990.P1094147653976139345

namespace A066990

/-- `∏{p}[n+1, #]*A007913((n+1)/∏{p}[n+1, #])` -/
def P1094147653976139345.Spec : Prop :=
  ∀ n, P1094147653976139345.a n = A066990 (n + 1)

end A066990

/-! ## A066990.P3673848430110236590

`A007948(A365296(n+1))`
-/

namespace A066990.P3673848430110236590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007948 (A365296 (n + 1)).toNat

end

end A066990.P3673848430110236590

namespace A066990

/-- `A007948(A365296(n+1))` -/
def P3673848430110236590.Spec : Prop :=
  ∀ n, P3673848430110236590.a n = A066990 (n + 1)

end A066990

/-! ## A066990.P14052392482301350788

`A365296(A338782(n+1))`
-/

namespace A066990.P14052392482301350788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365296 (A338782 (n + 1)).toNat

end

end A066990.P14052392482301350788

namespace A066990

/-- `A365296(A338782(n+1))` -/
def P14052392482301350788.Spec : Prop :=
  ∀ n, P14052392482301350788.a n = A066990 (n + 1)

end A066990

/-! ## A066990.P17358003987166561468

`A007947(n+1)*A336643(n+1)`
-/

namespace A066990.P17358003987166561468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (n + 1) * A336643 (n + 1)

end

end A066990.P17358003987166561468

namespace A066990

/-- `A007947(n+1)*A336643(n+1)` -/
def P17358003987166561468.Spec : Prop :=
  ∀ n, P17358003987166561468.a n = A066990 (n + 1)

end A066990

/-! ## A066990.P13876069959494424154

`(n+1)/A008833(A003557(n+1))`
-/

namespace A066990.P13876069959494424154
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A008833 (A003557 (n + 1)).toNat : ℚ)

end

end A066990.P13876069959494424154

namespace A066990

/-- `(n+1)/A008833(A003557(n+1))` -/
def P13876069959494424154.Spec : Prop :=
  ∀ n, P13876069959494424154.a n = (A066990 (n + 1) : ℚ)

end A066990

/-! ## A066990.P8394119311092273021

`A007948(n+1)/A055229(n+1)`
-/

namespace A066990.P8394119311092273021
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007948 (n + 1) : ℚ) / (A055229 (n + 1) : ℚ)

end

end A066990.P8394119311092273021

namespace A066990

/-- `A007948(n+1)/A055229(n+1)` -/
def P8394119311092273021.Spec : Prop :=
  ∀ n, P8394119311092273021.a n = (A066990 (n + 1) : ℚ)

end A066990

/-! ## A066990.P5188468034926600373

`A078615(n+1)/A007913(n+1)`
-/

namespace A066990.P5188468034926600373
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A078615 (n + 1) : ℚ) / (A007913 (n + 1) : ℚ)

end

end A066990.P5188468034926600373

namespace A066990

/-- `A078615(n+1)/A007913(n+1)` -/
def P5188468034926600373.Spec : Prop :=
  ∀ n, P5188468034926600373.a n = (A066990 (n + 1) : ℚ)

end A066990

/-! ## A066990.P12611652160015761684

`(n+1)/A003557(A350390(n+1))`
-/

namespace A066990.P12611652160015761684
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A003557 (A350390 (n + 1)).toNat : ℚ)

end

end A066990.P12611652160015761684

namespace A066990

/-- `(n+1)/A003557(A350390(n+1))` -/
def P12611652160015761684.Spec : Prop :=
  ∀ n, P12611652160015761684.a n = (A066990 (n + 1) : ℚ)

end A066990

/-! ## A066990.P10409806745488197033

`A356191(n+1)/A003557(n+1)`
-/

namespace A066990.P10409806745488197033
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A356191 (n + 1) : ℚ) / (A003557 (n + 1) : ℚ)

end

end A066990.P10409806745488197033

namespace A066990

/-- `A356191(n+1)/A003557(n+1)` -/
def P10409806745488197033.Spec : Prop :=
  ∀ n, P10409806745488197033.a n = (A066990 (n + 1) : ℚ)

end A066990

/-! ## A066990.P17892899135458855848

`A361264(n+1)/A053143(n+1)`
-/

namespace A066990.P17892899135458855848
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A361264 (n + 1) : ℚ) / (A053143 (n + 1) : ℚ)

end

end A066990.P17892899135458855848

namespace A066990

/-- `A361264(n+1)/A053143(n+1)` -/
def P17892899135458855848.Spec : Prop :=
  ∀ n, P17892899135458855848.a n = (A066990 (n + 1) : ℚ)

end A066990

/-! ## A066990.P4613396162919735122

`A064549(n+1)/A350390(n+1)`
-/

namespace A066990.P4613396162919735122
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A064549 (n + 1) : ℚ) / (A350390 (n + 1) : ℚ)

end

end A066990.P4613396162919735122

namespace A066990

/-- `A064549(n+1)/A350390(n+1)` -/
def P4613396162919735122.Spec : Prop :=
  ∀ n, P4613396162919735122.a n = (A066990 (n + 1) : ℚ)

end A066990

/-! ## A066990.P4736995030293164230

`A355261(n+1)/A295657(n+1)`
-/

namespace A066990.P4736995030293164230
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A355261 (n + 1) : ℚ) / (A295657 (n + 1) : ℚ)

end

end A066990.P4736995030293164230

namespace A066990

/-- `A355261(n+1)/A295657(n+1)` -/
def P4736995030293164230.Spec : Prop :=
  ∀ n, P4736995030293164230.a n = (A066990 (n + 1) : ℚ)

end A066990

/-! ## A066990.P14874467327950471351

`A336643(n+1)²*A007913(n+1)`
-/

namespace A066990.P14874467327950471351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336643 (n + 1) ^ 2 * A007913 (n + 1)

end

end A066990.P14874467327950471351

namespace A066990

/-- `A336643(n+1)²*A007913(n+1)` -/
def P14874467327950471351.Spec : Prop :=
  ∀ n, P14874467327950471351.a n = A066990 (n + 1)

end A066990

/-! ## A066990.P11433349594823604826

`A007947(n+1)²/A007913(n+1)`
-/

namespace A066990.P11433349594823604826
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007947 (n + 1) ^ 2 : ℚ) / (A007913 (n + 1) : ℚ)

end

end A066990.P11433349594823604826

namespace A066990

/-- `A007947(n+1)²/A007913(n+1)` -/
def P11433349594823604826.Spec : Prop :=
  ∀ n, P11433349594823604826.a n = (A066990 (n + 1) : ℚ)

end A066990

/-! ## A066990.P14062814493111002391

`A356191(n+1)/(A336551(n+1)+1)`
-/

namespace A066990.P14062814493111002391
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A356191 (n + 1) : ℚ) / (A336551 (n + 1) + 1 : ℚ)

end

end A066990.P14062814493111002391

namespace A066990

/-- `A356191(n+1)/(A336551(n+1)+1)` -/
def P14062814493111002391.Spec : Prop :=
  ∀ n, P14062814493111002391.a n = (A066990 (n + 1) : ℚ)

end A066990

/-! ## A066990.P11451918095973262143

`A007947(n+1)*A007947(A071974(n+1))`
-/

namespace A066990.P11451918095973262143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (n + 1) * A007947 (A071974 (n + 1)).toNat

end

end A066990.P11451918095973262143

namespace A066990

/-- `A007947(n+1)*A007947(A071974(n+1))` -/
def P11451918095973262143.Spec : Prop :=
  ∀ n, P11451918095973262143.a n = A066990 (n + 1)

end A066990

/-! ## A066990.P6907406431815662095

`A007947(n+1)*A007947(A331738(n+1))`
-/

namespace A066990.P6907406431815662095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (n + 1) * A007947 (A331738 (n + 1)).toNat

end

end A066990.P6907406431815662095

namespace A066990

/-- `A007947(n+1)*A007947(A331738(n+1))` -/
def P6907406431815662095.Spec : Prop :=
  ∀ n, P6907406431815662095.a n = A066990 (n + 1)

end A066990

/-! ## A066990.P7014234242111474828

`A007947(n+1)*A007947(A350388(n+1))`
-/

namespace A066990.P7014234242111474828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (n + 1) * A007947 (A350388 (n + 1)).toNat

end

end A066990.P7014234242111474828

namespace A066990

/-- `A007947(n+1)*A007947(A350388(n+1))` -/
def P7014234242111474828.Spec : Prop :=
  ∀ n, P7014234242111474828.a n = A066990 (n + 1)

end A066990

/-!
# A066991: Square array read by descending antidiagonals of number of ways of dividing n*k labeled items into k unlabeled orders with n items in each order.

The programs for A066991, the canonical program `A066991.P7535364690137440939` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A066991 has offset 1).

The definition of A066991 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 142 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A066991.P7535364690137440939

`A046792(n+1)*A166350(n+1)`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A066991

/-- `A046792(n+1)*A166350(n+1)` -/
def P7535364690137440939.Spec : Prop :=
  ∀ n, P7535364690137440939.a n = A066991 (n + 1)

theorem P7535364690137440939.correct : P7535364690137440939.Spec := by
  intro n
  simp only [A066991, Nat.add_sub_cancel]

end A066991

/-! ## A066991.P3697152680754105774

`A177939(n+1)*A181511(n+1)`
-/

namespace A066991.P3697152680754105774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177939 (n + 1) * A181511 (n + 1)

end

end A066991.P3697152680754105774

namespace A066991

/-- `A177939(n+1)*A181511(n+1)` -/
def P3697152680754105774.Spec : Prop :=
  ∀ n, P3697152680754105774.a n = A066991 (n + 1)

end A066991

/-! ## A066991.P9236220954408680750

`A002260(n+1)!*A046792(n+1)`
-/

namespace A066991.P9236220954408680750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (A002260 (n + 1)).toNat : ℤ) * A046792 (n + 1)

end

end A066991.P9236220954408680750

namespace A066991

/-- `A002260(n+1)!*A046792(n+1)` -/
def P9236220954408680750.Spec : Prop :=
  ∀ n, P9236220954408680750.a n = A066991 (n + 1)

theorem P9236220954408680750.correct : P9236220954408680750.Spec := by
  intro n
  simp only [A066991, Nat.add_sub_cancel, A066991.P9236220954408680750.a, A066991.P7535364690137440939.a, A002260, A002260.P769748059679640451.a, A046792, A046792.P13304464133605671692.a, A166350, A166350.P17376879308644749140.a, A000124, A000124.P675563980313077261.a, A002262, A002262.P12129691700837801527.a, A003991, A003991.P14084851459366035567.a, A098361, A098361.P7044536785034610126.a, A000142, A000142.P3272619076580183195.a, A004736, A004736.P10337537277358081527.a, A025581, A025581.P420762180635059694.a, A057944, A057944.P16851463738746886639.a, A000217, A000217.P10269402890581615239.a, A002024, A002024.P11700297927830783882.a, A003056, A003056.P5318256527314048597.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A066991

/-! ## A066991.P4890233779345583444

`A009963(A003056(n)+1+n)*A060854(n+1)`
-/

namespace A066991.P4890233779345583444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009963 (A003056 n + 1 + (n : ℤ)).toNat * A060854 (n + 1)

end

end A066991.P4890233779345583444

namespace A066991

/-- `A009963(A003056(n)+1+n)*A060854(n+1)` -/
def P4890233779345583444.Spec : Prop :=
  ∀ n, P4890233779345583444.a n = A066991 (n + 1)

end A066991

/-! ## A066991.P11841245755193838730

`A003991(n+1)!/A004736(n+1)!`
-/

namespace A066991.P11841245755193838730
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (A003991 (n + 1)).toNat : ℚ) / (Nat.factorial (A004736 (n + 1)).toNat : ℚ)

end

end A066991.P11841245755193838730

namespace A066991

/-- `A003991(n+1)!/A004736(n+1)!` -/
def P11841245755193838730.Spec : Prop :=
  ∀ n, P11841245755193838730.a n = (A066991 (n + 1) : ℚ)

end A066991

/-!
# A066993: Integer of the form phi(n)*sigma(n)/n.

The programs for A066993, there is no canonical definition to state claims against.
-/

/-! ## A066993.P18033485981492122856

`A074882(A011775(n+1))`
-/

namespace A066993.P18033485981492122856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074882 (A011775 (n + 1)).toNat

end

end A066993.P18033485981492122856

/-!
# A066994: Numbers k such that phi(k) divides k*sigma(k).

The programs for A066994, the canonical program `A066994.P5597610892535735044` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A066994 has offset 1).

The definition of A066994 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 752 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A066994.P5597610892535735044

`eq[0, (n+1)%A289412(n+1)]+1`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A066994

/-- `eq[0, (n+1)%A289412(n+1)]+1` -/
def P5597610892535735044.Spec : Prop :=
  ∀ n, (P5597610892535735044.a n : ℤ) = A066994 (n + 1)

theorem P5597610892535735044.correct : P5597610892535735044.Spec := by
  intro n
  simp only [A066994, Nat.add_sub_cancel]

end A066994

/-!
# A066997: Survivor number for 2nd-order Josephus problem.

The programs for A066997, the canonical program `A066997.P15947561357529940953` is in `Seq.B000.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A066997 has offset 2).

The definition of A066997 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A066997.P15947561357529940953

`∑[abs(a(∑[n-1]%n))]` with `a(0)=2, a(1)=0, a(2)=1`

The canonical program, it is in `Seq.B000.C010`.
-/

namespace A066997

/-- `∑[abs(a(∑[n-1]%n))]` -/
def P15947561357529940953.Spec : Prop :=
  ∀ n, (P15947561357529940953.a n : ℤ) = A066997 (n + 2)

theorem P15947561357529940953.correct : P15947561357529940953.Spec := by
  intro n
  simp only [A066997, Nat.add_sub_cancel]

end A066997

/-! ## A066997.P14535852897819536198

`∑[abs(a(floor(n/2)-1))]` with `a(0)=2, a(1)=0, a(2)=1, a(3)=1`
-/

namespace A066997.P14535852897819536198
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [2, 0, 1, 1] fun n f1 =>
  f1 (⌊(n : ℚ) / 2⌋ - 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A066997.P14535852897819536198

namespace A066997

/-- `∑[abs(a(floor(n/2)-1))]` -/
def P14535852897819536198.Spec : Prop :=
  ∀ n, (P14535852897819536198.a n : ℤ) = A066997 (n + 2)

end A066997

/-! ## A066997.P4173922634523513310

`∑[a(floor(n/2)-1)²]` with `a(0)=2, a(1)=0, a(2)=1, a(3)=1`
-/

namespace A066997.P4173922634523513310
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [2, 0, 1, 1] fun n f1 =>
  f1 (⌊(n : ℚ) / 2⌋ - 1).toNat ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A066997.P4173922634523513310

namespace A066997

/-- `∑[a(floor(n/2)-1)²]` -/
def P4173922634523513310.Spec : Prop :=
  ∀ n, (P4173922634523513310.a n : ℤ) = A066997 (n + 2)

end A066997

/-! ## A066997.P3152838825841827636

`∑[ceil(a(lcm(2, n)/2-1))]` with `a(0)=2, a(1)=0, a(2)=1`

`ceil` is left out, it is the identity on integers.
-/

namespace A066997.P3152838825841827636
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [2, 0, 1] fun n f1 =>
  f1 (SequenceMachineLib.roundAway ((Nat.lcm 2 n : ℚ) / 2 - 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A066997.P3152838825841827636

namespace A066997

/-- `∑[ceil(a(lcm(2, n)/2-1))]` -/
def P3152838825841827636.Spec : Prop :=
  ∀ n, (P3152838825841827636.a n : ℤ) = A066997 (n + 2)

end A066997

/-! ## A066997.P10773616314082972324

`∑[floor(a(floor(n/2)-1))]` with `a(0)=2, a(1)=0, a(2)=1, a(3)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A066997.P10773616314082972324
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [2, 0, 1, 1] fun n f1 =>
  f1 (⌊(n : ℚ) / 2⌋ - 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A066997.P10773616314082972324

namespace A066997

/-- `∑[floor(a(floor(n/2)-1))]` -/
def P10773616314082972324.Spec : Prop :=
  ∀ n, (P10773616314082972324.a n : ℤ) = A066997 (n + 2)

end A066997

/-! ## A066997.P11817920063396875724

`∑[a(∑[a(n-2)²])²]+3` with `a(0)=-1, a(1)=0`
-/

namespace A066997.P11817920063396875724
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [-1, 0] fun n f2 =>
  f2 (n - 2) ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.rec [-1, 0] fun n f1 =>
  f1 (∑ j ∈ Finset.range (n + 1), f2 j).toNat ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 3

end

end A066997.P11817920063396875724

namespace A066997

/-- `∑[a(∑[a(n-2)²])²]+3` -/
def P11817920063396875724.Spec : Prop :=
  ∀ n, P11817920063396875724.a n = A066997 (n + 2)

end A066997

/-! ## A066997.P2979812847278231646

`1-∑[floor(a(∑[a(n-2)²]))]` with `a(0)=-1, a(1)=0`

`floor` is left out, it is the identity on integers.
-/

namespace A066997.P2979812847278231646
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [-1, 0] fun n f2 =>
  f2 (n - 2) ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.rec [-1, 0] fun n f1 =>
  f1 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A066997.P2979812847278231646

namespace A066997

/-- `1-∑[floor(a(∑[a(n-2)²]))]` -/
def P2979812847278231646.Spec : Prop :=
  ∀ n, P2979812847278231646.a n = A066997 (n + 2)

end A066997

/-! ## A066997.P6326394927347564560

`a(n-1)+(a(n-1)/gcd(n+2, a(n-1)))%2` with `a(0)=2`
-/

namespace A066997.P6326394927347564560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  a (n - 1) + Int.tmod (SequenceMachineLib.roundAway ((a (n - 1) : ℚ) / (Int.gcd (n + 2 : ℤ) (a (n - 1)) : ℚ))) 2

end

end A066997.P6326394927347564560

namespace A066997

/-- `a(n-1)+(a(n-1)/gcd(n+2, a(n-1)))%2` -/
def P6326394927347564560.Spec : Prop :=
  ∀ n, P6326394927347564560.a n = A066997 (n + 2)

end A066997

/-! ## A066997.P3799052312010684670

`∑[A086694(n+1)]+1`
-/

namespace A066997.P3799052312010684670
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086694 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A066997.P3799052312010684670

namespace A066997

/-- `∑[A086694(n+1)]+1` -/
def P3799052312010684670.Spec : Prop :=
  ∀ n, P3799052312010684670.a n = A066997 (n + 2)

end A066997

/-! ## A066997.P1448375202592920895

`2*n+3-A079945(n)`
-/

namespace A066997.P1448375202592920895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n + 3 : ℤ) - A079945 n

end

end A066997.P1448375202592920895

namespace A066997

/-- `2*n+3-A079945(n)` -/
def P1448375202592920895.Spec : Prop :=
  ∀ n, P1448375202592920895.a n = A066997 (n + 2)

end A066997

/-! ## A066997.P8369839108065506064

`A086694(n+1)+A078881(n+1)`
-/

namespace A066997.P8369839108065506064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086694 (n + 1) + A078881 (n + 1)

end

end A066997.P8369839108065506064

namespace A066997

/-- `A086694(n+1)+A078881(n+1)` -/
def P8369839108065506064.Spec : Prop :=
  ∀ n, P8369839108065506064.a n = A066997 (n + 2)

end A066997

/-! ## A066997.P10365650795010018015

`A078881(n+1)+1-A079944(n)`
-/

namespace A066997.P10365650795010018015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078881 (n + 1) + (1 - A079944 n)

end

end A066997.P10365650795010018015

namespace A066997

/-- `A078881(n+1)+1-A079944(n)` -/
def P10365650795010018015.Spec : Prop :=
  ∀ n, P10365650795010018015.a n = A066997 (n + 2)

end A066997

/-! ## A066997.P16624633690794902359

`A346302(n+1)-A080637(n+1)`
-/

namespace A066997.P16624633690794902359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346302 (n + 1) - A080637 (n + 1)

end

end A066997.P16624633690794902359

namespace A066997

/-- `A346302(n+1)-A080637(n+1)` -/
def P16624633690794902359.Spec : Prop :=
  ∀ n, P16624633690794902359.a n = A066997 (n + 2)

end A066997

/-! ## A066997.P2173372567176843725

`A078881(n+2)`
-/

namespace A066997.P2173372567176843725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078881 (n + 2)

end

end A066997.P2173372567176843725

namespace A066997

/-- `A078881(n+2)` -/
def P2173372567176843725.Spec : Prop :=
  ∀ n, P2173372567176843725.a n = A066997 (n + 2)

end A066997

/-! ## A066997.P6594005590819404052

`A279521(n+2)+1`
-/

namespace A066997.P6594005590819404052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279521 (n + 2) + 1

end

end A066997.P6594005590819404052

namespace A066997

/-- `A279521(n+2)+1` -/
def P6594005590819404052.Spec : Prop :=
  ∀ n, P6594005590819404052.a n = A066997 (n + 2)

end A066997

/-! ## A066997.P7183576243614539114

`A159615(n+2)-(n+2)`
-/

namespace A066997.P7183576243614539114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159615 (n + 2) - (n + 2 : ℤ)

end

end A066997.P7183576243614539114

namespace A066997

/-- `A159615(n+2)-(n+2)` -/
def P7183576243614539114.Spec : Prop :=
  ∀ n, P7183576243614539114.a n = A066997 (n + 2)

end A066997

/-! ## A066997.P18261607950204795517

`n+2-A277267(n+2)`
-/

namespace A066997.P18261607950204795517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℤ) - A277267 (n + 2)

end

end A066997.P18261607950204795517

namespace A066997

/-- `n+2-A277267(n+2)` -/
def P18261607950204795517.Spec : Prop :=
  ∀ n, P18261607950204795517.a n = A066997 (n + 2)

end A066997

/-! ## A066997.P18424138074399587455

`A020725(A279521(n+2))`
-/

namespace A066997.P18424138074399587455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (A279521 (n + 2)).toNat

end

end A066997.P18424138074399587455

namespace A066997

/-- `A020725(A279521(n+2))` -/
def P18424138074399587455.Spec : Prop :=
  ∀ n, P18424138074399587455.a n = A066997 (n + 2)

end A066997

/-! ## A066997.P15850044939235437775

`A144396(n+2)-A080637(n+2)`
-/

namespace A066997.P15850044939235437775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144396 (n + 2) - A080637 (n + 2)

end

end A066997.P15850044939235437775

namespace A066997

/-- `A144396(n+2)-A080637(n+2)` -/
def P15850044939235437775.Spec : Prop :=
  ∀ n, P15850044939235437775.a n = A066997 (n + 2)

end A066997

/-!
# A066998: a(0)=0; a(n) = n^2*a(n-1) + 1.

The programs for A066998, the canonical program `A066998.P9420470937437890405` is in `Seq.B000.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A066998 has offset 0).

The definition of A066998 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n²*a(n-1)+1` (program `A066998.P9420470937437890405`, by `A066998.P9420470937437890405.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A066998.P9420470937437890405

`n²*a(n-1)+1` with `a(0)=0`

The canonical program, it is in `Seq.B000.C010`.
-/

namespace A066998

/-- `n²*a(n-1)+1` -/
def P9420470937437890405.Spec : Prop :=
  ∀ n, (P9420470937437890405.a n : ℤ) = A066998 n

theorem P9420470937437890405.correct : P9420470937437890405.Spec := by
  intro n
  simp only [A066998]

end A066998

/-! ## A066998.P14819385529531748797

`n*n*a(n-1)+1` with `a(0)=0`
-/

namespace A066998.P14819385529531748797
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  n * (n * a (n - 1)) + 1

end

end A066998.P14819385529531748797

namespace A066998

/-- `n*n*a(n-1)+1` -/
def P14819385529531748797.Spec : Prop :=
  ∀ n, (P14819385529531748797.a n : ℤ) = A066998 n

theorem P14819385529531748797.correct : P14819385529531748797.Spec := by
  intro n
  simp only [A066998, Nat.add_sub_cancel, A066998.P14819385529531748797.a, A066998.P9420470937437890405.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A066998

/-! ## A066998.P8667480112946662092

`a(n-1)/n^(-2)+1` with `a(0)=0`
-/

namespace A066998.P8667480112946662092
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) / (n : ℚ) ^ (-2 : ℤ) + 1

end

end A066998.P8667480112946662092

namespace A066998

/-- `a(n-1)/n^(-2)+1` -/
def P8667480112946662092.Spec : Prop :=
  ∀ n, P8667480112946662092.a n = (A066998 n : ℚ)

end A066998

/-! ## A066998.P3724977387767789935

`1-(n-∑[2*n])*a(n-1)` with `a(0)=0`
-/

namespace A066998.P3724977387767789935
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  1 - ((n : ℤ) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)) * a (n - 1)

end

end A066998.P3724977387767789935

namespace A066998

/-- `1-(n-∑[2*n])*a(n-1)` -/
def P3724977387767789935.Spec : Prop :=
  ∀ n, P3724977387767789935.a n = A066998 n

end A066998

/-! ## A066998.P2367025277835673136

`1-(n*(1-n*a(n-1))-n)` with `a(0)=0`
-/

namespace A066998.P2367025277835673136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  1 - ((n : ℤ) * (1 - (n : ℤ) * a (n - 1)) - (n : ℤ))

end

end A066998.P2367025277835673136

namespace A066998

/-- `1-(n*(1-n*a(n-1))-n)` -/
def P2367025277835673136.Spec : Prop :=
  ∀ n, P2367025277835673136.a n = A066998 n

end A066998

/-!
# A066999: a(n) = 3^n * Sum_{i=1..n} i^3/3^i.

The programs for A066999, the canonical program `A066999.P116705358463195293` is in `Seq.B000.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A066999 has offset 1).

The definition of A066999 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A066999.P116705358463195293

`3*a(n-1)+(n+1)^3` with `a(0)=1`

The canonical program, it is in `Seq.B000.C010`.
-/

namespace A066999

/-- `3*a(n-1)+(n+1)^3` -/
def P116705358463195293.Spec : Prop :=
  ∀ n, (P116705358463195293.a n : ℤ) = A066999 (n + 1)

theorem P116705358463195293.correct : P116705358463195293.Spec := by
  intro n
  simp only [A066999, Nat.add_sub_cancel]

end A066999

/-! ## A066999.P16097989372242167049

`(11*3^(n+2)-4*(n+1)^3-18*(n+1)²-36*(n+1)-33)/8`
-/

namespace A066999.P16097989372242167049
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((11 * 3 ^ (n + 2) : ℤ) - (4 * (n + 1) ^ 3 : ℤ) - (18 * (n + 1) ^ 2 : ℤ) - (36 * (n + 1) : ℤ) - 33 : ℚ) / 8

end

end A066999.P16097989372242167049

namespace A066999

/-- `(11*3^(n+2)-4*(n+1)^3-18*(n+1)²-36*(n+1)-33)/8` -/
def P16097989372242167049.Spec : Prop :=
  ∀ n, P16097989372242167049.a n = (A066999 (n + 1) : ℚ)

theorem P16097989372242167049.correct : P16097989372242167049.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A066999, Nat.add_sub_cancel, A066999.P16097989372242167049.a, A066999.P116705358463195293.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A066999, Nat.add_sub_cancel, A066999.P16097989372242167049.a, A066999.P116705358463195293.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [← h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A066999

/-! ## A066999.P15600900301845461673

`Δ[∑[n]²]+3*a(n-1)` with `a(0)=1`
-/

namespace A066999.P15600900301845461673
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f2 j) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ) + 3 * a (n - 1)

end

end A066999.P15600900301845461673

namespace A066999

/-- `Δ[∑[n]²]+3*a(n-1)` -/
def P15600900301845461673.Spec : Prop :=
  ∀ n, P15600900301845461673.a n = A066999 (n + 1)

end A066999

/-! ## A066999.P3717438775899134674

`∑[∑[∑[3*(a(n-1)+2)]]]` with `a(0)=1, a(1)=8`
-/

namespace A066999.P3717438775899134674
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.rec [1, 8] fun n f3 =>
  3 * (f3 (n - 1) + 2)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A066999.P3717438775899134674

namespace A066999

/-- `∑[∑[∑[3*(a(n-1)+2)]]]` -/
def P3717438775899134674.Spec : Prop :=
  ∀ n, (P3717438775899134674.a n : ℤ) = A066999 (n + 1)

end A066999

/-! ## A066999.P1670309894034031538

`floor(3*a(n-1))+(n+1)*(n+1)²` with `a(0)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A066999.P1670309894034031538
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  3 * a (n - 1) + (n + 1) * (n + 1) ^ 2

end

end A066999.P1670309894034031538

namespace A066999

/-- `floor(3*a(n-1))+(n+1)*(n+1)²` -/
def P1670309894034031538.Spec : Prop :=
  ∀ n, (P1670309894034031538.a n : ℤ) = A066999 (n + 1)

theorem P1670309894034031538.correct : P1670309894034031538.Spec := by
  intro n
  simp only [A066999, Nat.add_sub_cancel, A066999.P1670309894034031538.a, A066999.P116705358463195293.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A066999

/-! ## A066999.P10797024677030169805

`a(n-1)+a(n-1)+a(n-1)+(n+1)^3` with `a(0)=1`
-/

namespace A066999.P10797024677030169805
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (a (n - 1) + (a (n - 1) + (n + 1) ^ 3))

end

end A066999.P10797024677030169805

namespace A066999

/-- `a(n-1)+a(n-1)+a(n-1)+(n+1)^3` -/
def P10797024677030169805.Spec : Prop :=
  ∀ n, (P10797024677030169805.a n : ℤ) = A066999 (n + 1)

theorem P10797024677030169805.correct : P10797024677030169805.Spec := by
  intro n
  simp only [A066999, Nat.add_sub_cancel, A066999.P10797024677030169805.a, A066999.P116705358463195293.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A066999

/-! ## A066999.P5269794677629891340

`∑[∑[3*(A004277(n)+a(n-1))]]` with `a(0)=1`
-/

namespace A066999.P5269794677629891340
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f2 =>
  3 * (A004277 n + f2 (n - 1))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A066999.P5269794677629891340

namespace A066999

/-- `∑[∑[3*(A004277(n)+a(n-1))]]` -/
def P5269794677629891340.Spec : Prop :=
  ∀ n, P5269794677629891340.a n = A066999 (n + 1)

end A066999

