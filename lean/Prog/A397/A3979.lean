import SequenceMachineLib
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
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
import Seq.B000.C018
import Seq.B000.C019
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
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C037
import Seq.B000.C038
import Seq.B000.C039
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C010
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C005
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B003.C004
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C001
import Seq.B005.C002
import Seq.B006.C000
import Seq.B007.C000
import Seq.B010.C000
import Seq.B011.C000
import Seq.B012.C000
import Seq.B013.C000
import Seq.B014.C000
import Seq.Opaque.C000
import Seq.Opaque.C002
import Seq.Opaque.C003
import Seq.Opaque.C005
import Seq.Opaque.C006
import Seq.Opaque.C009
import Seq.Opaque.C010
import Seq.Opaque.C011
import Seq.Opaque.C013
import Seq.Opaque.C015
import Seq.Opaque.C016
import Seq.Opaque.C017
import Seq.Opaque.C020
import Seq.Opaque.C021
import Seq.Opaque.C022
import Seq.Opaque.C023
import Seq.Opaque.C024
import Seq.Opaque.C025

/-!
# A397906: Row sums of triangle A152795.

The programs for A397906, there is no canonical definition to state claims against.
-/

/-! ## A397906.P18254110376774030086

`A183202(A014447(n))`
-/

namespace A397906.P18254110376774030086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183202 (A014447 n).toNat

end

end A397906.P18254110376774030086

/-! ## A397906.P9613617980393163115

`A270339(A006395(n))+n`
-/

namespace A397906.P9613617980393163115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270339 (A006395 n).toNat + (n : ℤ)

end

end A397906.P9613617980393163115

/-!
# A397907: Central terms of triangle A152795.

The programs for A397907, there is no canonical definition to state claims against.
-/

/-! ## A397907.P10511890410222128981

`A152795(∑[4*n])`
-/

namespace A397907.P10511890410222128981
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152795 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A397907.P10511890410222128981

/-!
# A397917: Number of connected bipartite multigraphs with n vertices of maximum degree 3, where the two parts are distinguished.

The programs for A397917, there is no canonical definition to state claims against.
-/

/-! ## A397917.P2380134571918263068

`A010873(A283053(n+1))+A000081(n+2)`
-/

namespace A397917.P2380134571918263068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010873 (A283053 (n + 1)).toNat + A000081 (n + 2)

end

end A397917.P2380134571918263068

/-! ## A397917.P11362796870389416485

`A293164(A002385(3*n+2))+A093637(n+1)`
-/

namespace A397917.P11362796870389416485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293164 (A002385 (3 * n + 2)).toNat + A093637 (n + 1)

end

end A397917.P11362796870389416485

/-!
# A397923: Number of nonnegative integer matrices with a total of n rows and columns with each row sum and column sum nonzero and at most n, up to permutations of rows and columns.

The programs for A397923, there is no canonical definition to state claims against.
-/

/-! ## A397923.P9587434041415861947

`A397922(∑[4*n])`
-/

namespace A397923.P9587434041415861947
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A397922 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A397923.P9587434041415861947

/-!
# A397925: Number of bicolored multigraphs on n unlabeled vertices with vertex degrees at most 3.

The programs for A397925, there is no canonical definition to state claims against.
-/

/-! ## A397925.P3220868141138974286

`∑[∑[A397924(n)]]`
-/

namespace A397925.P3220868141138974286
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A397924 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A397925.P3220868141138974286

/-! ## A397925.P5095781975263224330

`A095773(A003683(n+1))`
-/

namespace A397925.P5095781975263224330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095773 (A003683 (n + 1)).toNat

end

end A397925.P5095781975263224330

/-!
# A397926: Array read by antidiagonals: T(n,k) is the number of nonnegative integer matrices with a total of n rows and columns with each row sum and column sum nonzero and at most k, n >= 0, k >= 0.

The programs for A397926, there is no canonical definition to state claims against.
-/

/-! ## A397926.P17125759727351116330

`A333769(A003961(n+1))*A397922(n)`
-/

namespace A397926.P17125759727351116330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333769 (A003961 (n + 1)).toNat * A397922 n

end

end A397926.P17125759727351116330

/-!
# A397927: Number of nonnegative integer matrices with a total of n rows and columns with each row sum and column sum nonzero and at most n.

The programs for A397927, there is no canonical definition to state claims against.
-/

/-! ## A397927.P5055444150472323674

`A397926(∑[4*n])`
-/

namespace A397927.P5055444150472323674
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A397926 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A397927.P5055444150472323674

/-!
# A397929: Number of nonnegative integer matrices with a total of n rows and columns with each row sum and column sum nonzero and at most 3.

The programs for A397929, there is no canonical definition to state claims against.
-/

/-! ## A397929.P13038489467018700627

`A397926(A000217(n+3)+n)`
-/

namespace A397929.P13038489467018700627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A397926 (A000217 (n + 3) + (n : ℤ)).toNat

end

end A397929.P13038489467018700627

/-! ## A397929.P12142057348612771559

`A373949(2*(n+2))+A365312(A014551(n))`
-/

namespace A397929.P12142057348612771559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373949 (2 * (n + 2)) + A365312 (A014551 n).toNat

end

end A397929.P12142057348612771559

/-!
# A397930: Array read by antidiagonals: T(n,k) is the number of n X n symmetric nonnegative integer matrices with each row sum nonzero and at most k, n >= 0, k >= 0.

The programs for A397930, there is no canonical definition to state claims against.
-/

/-! ## A397930.P3901541230432949795

`A214776(n)-A102671(A351241(n+1))`
-/

namespace A397930.P3901541230432949795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214776 n - A102671 (A351241 (n + 1)).toNat

end

end A397930.P3901541230432949795

/-!
# A397931: Number of n X n symmetric nonnegative integer matrices with each row sum nonzero and at most n.

The programs for A397931, there is no canonical definition to state claims against.
-/

/-! ## A397931.P6742583199007714124

`A397930(∑[4*n])`
-/

namespace A397931.P6742583199007714124
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A397930 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A397931.P6742583199007714124

/-!
# A397932: Numbers k that are neither squarefree nor powerful such that rad(k)*omega(k) = k, where rad = A007947 and omega = A001221.

The programs for A397932, there is no canonical definition to state claims against.
-/

/-! ## A397932.P3306384188729205993

`filter[A397221(n+1), A005171(#)]`
-/

namespace A397932.P3306384188729205993
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A397221 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A005171 (f1 j).toNat = 1) n)

end

end A397932.P3306384188729205993

/-! ## A397932.P9047442466750815836

`filter[A397221(n+1), A065202(#)]`
-/

namespace A397932.P9047442466750815836
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A397221 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A065202 (f1 j).toNat = 1) n)

end

end A397932.P9047442466750815836

/-! ## A397932.P97537082624713828

`filter[A397221(n+1), A066247(#)]`
-/

namespace A397932.P97537082624713828
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A397221 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A066247 (f1 j).toNat = 1) n)

end

end A397932.P97537082624713828

/-! ## A397932.P15480440187715833609

`filter[A397221(n+1), A087049(#)]`
-/

namespace A397932.P15480440187715833609
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A397221 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A087049 (f1 j).toNat = 1) n)

end

end A397932.P15480440187715833609

/-! ## A397932.P9102281310234066747

`filter[A397221(n+1), A202238(#)]`
-/

namespace A397932.P9102281310234066747
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A397221 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A202238 (f1 j).toNat = 1) n)

end

end A397932.P9102281310234066747

/-! ## A397932.P1981022002691972126

`filter[A397221(n+1), A355447(#)]`
-/

namespace A397932.P1981022002691972126
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A397221 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A355447 (f1 j).toNat = 1) n)

end

end A397932.P1981022002691972126

/-! ## A397932.P4729780836604652897

`filter[A397221(n+1), A359466(#)]`
-/

namespace A397932.P4729780836604652897
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A397221 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359466 (f1 j).toNat = 1) n)

end

end A397932.P4729780836604652897

/-! ## A397932.P13918175033417319075

`filter[A397221(n+1), A359469(#)]`
-/

namespace A397932.P13918175033417319075
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A397221 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359469 (f1 j).toNat = 1) n)

end

end A397932.P13918175033417319075

/-! ## A397932.P14198538998135922973

`∩[A013929(n+1), A397221(n+1)]`
-/

namespace A397932.P14198538998135922973
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013929 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A397221 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A397932.P14198538998135922973

/-! ## A397932.P16256836476314474563

`∩[A082293(n+1), A397221(n+1)]`
-/

namespace A397932.P16256836476314474563
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082293 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A397221 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A397932.P16256836476314474563

/-! ## A397932.P5915977797018926322

`∩[A070011(n+1), A397221(n+1)]`
-/

namespace A397932.P5915977797018926322
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070011 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A397221 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A397932.P5915977797018926322

/-! ## A397932.P7437620597041159692

`∩[A074661(n+1), A397221(n+1)]`
-/

namespace A397932.P7437620597041159692
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074661 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A397221 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A397932.P7437620597041159692

/-! ## A397932.P15740985813970772504

`∩[A112769(n+1), A397221(n+1)]`
-/

namespace A397932.P15740985813970772504
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112769 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A397221 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A397932.P15740985813970772504

/-! ## A397932.P2066221424689540849

`∩[A065201(n+1), A397221(n+1)]`
-/

namespace A397932.P2066221424689540849
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065201 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A397221 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A397932.P2066221424689540849

/-! ## A397932.P14162346364928568261

`∩[A051144(n+1), A397221(n+1)]`
-/

namespace A397932.P14162346364928568261
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051144 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A397221 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A397932.P14162346364928568261

/-! ## A397932.P10678913204033182250

`∩[A059404(n+1), A397221(n+1)]`
-/

namespace A397932.P10678913204033182250
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059404 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A397221 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A397932.P10678913204033182250

/-! ## A397932.P2859250423368152479

`∩[A126706(n+1), A397221(n+1)]`
-/

namespace A397932.P2859250423368152479
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126706 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A397221 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A397932.P2859250423368152479

/-! ## A397932.P10856193517164045746

`∩[A049199(n+1), A397221(n+1)]`
-/

namespace A397932.P10856193517164045746
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049199 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A397221 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A397932.P10856193517164045746

/-! ## A397932.P5636667777222313370

`∩[A080756(n+1), A397221(n+1)]`
-/

namespace A397932.P5636667777222313370
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080756 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A397221 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A397932.P5636667777222313370

/-!
# A397933: Numbers k that are neither squarefree nor powerful such that rad(k)*bigomega(k) = k, where rad = A007947 and bigomega = A001222.

The programs for A397933, there is no canonical definition to state claims against.
-/

/-! ## A397933.P8115237348079895496

`filter[A396594(n+1), A355447(#)]`
-/

namespace A397933.P8115237348079895496
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A396594 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A355447 (f1 j).toNat = 1) n)

end

end A397933.P8115237348079895496

/-! ## A397933.P3461321656636626489

`filter[A396594(n+1), A202238(#)]`
-/

namespace A397933.P3461321656636626489
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A396594 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A202238 (f1 j).toNat = 1) n)

end

end A397933.P3461321656636626489

/-! ## A397933.P406698600290885207

`filter[A396594(n+1), A337383(#)]`
-/

namespace A397933.P406698600290885207
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A396594 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A337383 (f1 j).toNat = 1) n)

end

end A397933.P406698600290885207

/-! ## A397933.P16823580795242386670

`filter[A396594(n+1), A389905(#)]`
-/

namespace A397933.P16823580795242386670
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A396594 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A389905 (f1 j).toNat = 1) n)

end

end A397933.P16823580795242386670

/-! ## A397933.P4562283017870526698

`∩[A392815(n+1), A396594(n+1)]`
-/

namespace A397933.P4562283017870526698
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392815 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A396594 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A397933.P4562283017870526698

/-! ## A397933.P4809852274447692196

`∩[A046790(n+1), A396594(n+1)]`
-/

namespace A397933.P4809852274447692196
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046790 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A396594 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A397933.P4809852274447692196

/-! ## A397933.P649953984336953352

`∩[A242416(n+1), A396594(n+1)]`
-/

namespace A397933.P649953984336953352
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242416 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A396594 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A397933.P649953984336953352

/-! ## A397933.P8125424397050101842

`∩[A389227(n+1), A396594(n+1)]`
-/

namespace A397933.P8125424397050101842
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389227 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A396594 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A397933.P8125424397050101842

/-! ## A397933.P36122701612393213

`∩[A332785(n+1), A396594(n+1)]`
-/

namespace A397933.P36122701612393213
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332785 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A396594 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A397933.P36122701612393213

/-! ## A397933.P7316326727436485185

`∩[A317616(n+1), A396594(n+1)]`
-/

namespace A397933.P7316326727436485185
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317616 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A396594 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A397933.P7316326727436485185

/-! ## A397933.P8219614835708380993

`∩[A303946(n+1), A396594(n+1)]`
-/

namespace A397933.P8219614835708380993
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303946 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A396594 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A397933.P8219614835708380993

/-! ## A397933.P1391894685705514178

`∩[A051144(n+1), A396594(n+1)]`
-/

namespace A397933.P1391894685705514178
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051144 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A396594 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A397933.P1391894685705514178

/-! ## A397933.P6614014098672523149

`∩[A383080(n+1), A396594(n+1)]`
-/

namespace A397933.P6614014098672523149
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383080 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A396594 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A397933.P6614014098672523149

/-! ## A397933.P15810508382228619110

`∩[A059404(n+1), A396594(n+1)]`
-/

namespace A397933.P15810508382228619110
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059404 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A396594 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A397933.P15810508382228619110

/-! ## A397933.P2273442362299879399

`∩[A192690(n+1), A396594(n+1)]`
-/

namespace A397933.P2273442362299879399
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192690 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A396594 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A397933.P2273442362299879399

/-! ## A397933.P15376306194290530590

`∩[A126706(n+1), A396594(n+1)]`
-/

namespace A397933.P15376306194290530590
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126706 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A396594 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A397933.P15376306194290530590

/-! ## A397933.P10742035741286290118

`∩[A080756(n+1), A396594(n+1)]`
-/

namespace A397933.P10742035741286290118
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080756 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A396594 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A397933.P10742035741286290118

/-!
# A397936: a(n) = floor(3*7^n/4).

The programs for A397936, the canonical program `A397936.P6278991263813186484` is in `Seq.B000.C039`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A397936 has offset 0).

The definition of A397936 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor(3*7^n/4)` (program `A397936.P6278991263813186484`, by `A397936.P6278991263813186484.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A397936.P2268136232110504826

`7*a(n-1)+3-2*(-1)^n` with `a(0)=0`
-/

namespace A397936.P2268136232110504826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  7 * a (n - 1) + 3 - 2 * (-1) ^ n

end

end A397936.P2268136232110504826

namespace A397936

/-- `7*a(n-1)+3-2*(-1)^n` -/
def P2268136232110504826.Spec : Prop :=
  ∀ n, P2268136232110504826.a n = A397936 n

end A397936

/-! ## A397936.P10492745366120635262

`A083232(n)-(1+(-1)^n)/2`
-/

namespace A397936.P10492745366120635262
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A083232 n : ℚ) - (1 + (-1) ^ n : ℚ) / 2

end

end A397936.P10492745366120635262

namespace A397936

/-- `A083232(n)-(1+(-1)^n)/2` -/
def P10492745366120635262.Spec : Prop :=
  ∀ n, P10492745366120635262.a n = (A397936 n : ℚ)

end A397936

/-! ## A397936.P6278991263813186484

`floor(3*7^n/4)`

The canonical program, it is in `Seq.B000.C039`.
-/

namespace A397936

/-- `floor(3*7^n/4)` -/
def P6278991263813186484.Spec : Prop :=
  ∀ n, P6278991263813186484.a n = A397936 n

theorem P6278991263813186484.correct : P6278991263813186484.Spec := by
  intro n
  simp only [A397936]

end A397936

/-! ## A397936.P2515360160835739151

`ogf((5x+x^2)/(1-7x-x^2+7x^3))`
-/

namespace A397936.P2515360160835739151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 5, 1] [1, -7, -1, 7] n

end

end A397936.P2515360160835739151

namespace A397936

/-- `ogf((5x+x^2)/(1-7x-x^2+7x^3))` -/
def P2515360160835739151.Spec : Prop :=
  ∀ n, P2515360160835739151.a n = A397936 n

end A397936

/-!
# A397937: a(n) = floor(7^n/4).

The programs for A397937, the canonical program `A397937.P17930148176934407746` is in `Seq.B000.C039`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A397937 has offset 0).

The definition of A397937 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor(7^n/4)` (program `A397937.P17930148176934407746`, by `A397937.P17930148176934407746.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A397937.P8096916523557623782

`7*a(n-1)+3+2*(-1)^n` with `a(0)=0`
-/

namespace A397937.P8096916523557623782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  7 * a (n - 1) + 3 + 2 * (-1) ^ n

end

end A397937.P8096916523557623782

namespace A397937

/-- `7*a(n-1)+3+2*(-1)^n` -/
def P8096916523557623782.Spec : Prop :=
  ∀ n, P8096916523557623782.a n = A397937 n

end A397937

/-! ## A397937.P17930148176934407746

`floor(7^n/4)`

The canonical program, it is in `Seq.B000.C039`.
-/

namespace A397937

/-- `floor(7^n/4)` -/
def P17930148176934407746.Spec : Prop :=
  ∀ n, P17930148176934407746.a n = A397937 n

theorem P17930148176934407746.correct : P17930148176934407746.Spec := by
  intro n
  simp only [A397937]

end A397937

/-! ## A397937.P1386056279282190697

`ogf((x+5x^2)/(1-7x-x^2+7x^3))`
-/

namespace A397937.P1386056279282190697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1, 5] [1, -7, -1, 7] n

end

end A397937.P1386056279282190697

namespace A397937

/-- `ogf((x+5x^2)/(1-7x-x^2+7x^3))` -/
def P1386056279282190697.Spec : Prop :=
  ∀ n, P1386056279282190697.a n = A397937 n

end A397937

/-!
# A397948: G.f. A(x) satisfies A(x) = 1 + x * A(x^4/(1 - x)^4) / (1 - x)^3.

The programs for A397948, there is no canonical definition to state claims against.
-/

/-! ## A397948.P15744292077002397690

`A121373(A196596(n+1))+A038505(n+1)`
-/

namespace A397948.P15744292077002397690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121373 (A196596 (n + 1)).toNat + A038505 (n + 1)

end

end A397948.P15744292077002397690

/-!
# A397953: Polydivisible numbers in base 3.

The programs for A397953, there is no canonical definition to state claims against.
-/

/-! ## A397953.P11335776468025042105

`eq[A379679(n+1), A387672(n)]`
-/

namespace A397953.P11335776468025042105
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379679 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387672 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A397953.P11335776468025042105

/-! ## A397953.P12107890368918095510

`A355880(A156007(n+1))`
-/

namespace A397953.P12107890368918095510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355880 (A156007 (n + 1)).toNat

end

end A397953.P12107890368918095510

/-! ## A397953.P15611119992487121465

`A355880(A156107(n+1))`
-/

namespace A397953.P15611119992487121465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355880 (A156107 (n + 1)).toNat

end

end A397953.P15611119992487121465

/-! ## A397953.P15649497700149529842

`eq[A090629(n), A322100(n+1)]`
-/

namespace A397953.P15649497700149529842
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090629 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322100 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A397953.P15649497700149529842

/-!
# A397956: Polydivisible numbers in base 6.

The programs for A397956, there is no canonical definition to state claims against.
-/

/-! ## A397956.P10054241534792823514

`comp[a(n-2)+2]` with `a(0)=7, a(1)=38`
-/

namespace A397956.P10054241534792823514
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [7, 38] fun n f1 =>
  f1 (n - 2) + 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A397956.P10054241534792823514

/-! ## A397956.P10879974434775449253

`lt[n, a(n-2)+1]` with `a(0)=1, a(1)=4, a(2)=20`
-/

namespace A397956.P10879974434775449253
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.rec [1, 4, 20] fun n f2 =>
  f2 (n - 2) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A397956.P10879974434775449253

/-! ## A397956.P16839325295150617773

`lt[A006370(n), 19]`
-/

namespace A397956.P16839325295150617773
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006370 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  19

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A397956.P16839325295150617773

/-! ## A397956.P7386721527266186798

`lt[Δ[A007690(n)], 4]`
-/

namespace A397956.P7386721527266186798
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007690 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f3 j : ℤ)) n

end

end A397956.P7386721527266186798

/-! ## A397956.P14518788507704618368

`lt[A351142(2*n+3), 3]`
-/

namespace A397956.P14518788507704618368
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351142 (2 * n + 3)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A397956.P14518788507704618368

/-!
# A397957: Polydivisible numbers in base 7.

The programs for A397957, there is no canonical definition to state claims against.
-/

/-! ## A397957.P16659573082105982818

`lt[A165071(n), A040584(A366688(n+1))]`
-/

namespace A397957.P16659573082105982818
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165071 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040584 (A366688 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A397957.P16659573082105982818

/-! ## A397957.P4442704162382194613

`lt[n-5, n/a(n-1)]` with `a(0)=5`
-/

namespace A397957.P4442704162382194613
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 5

def f2 : ℕ → ℚ := SequenceMachineLib.rec [5] fun n f2 =>
  (n : ℚ) / f2 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℚ) < f2 j) n

end

end A397957.P4442704162382194613

/-! ## A397957.P5014549470897224653

`eq[0, A261044(n+1)]`
-/

namespace A397957.P5014549470897224653
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261044 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A397957.P5014549470897224653

/-!
# A397958: Polydivisible numbers in base 8.

The programs for A397958, there is no canonical definition to state claims against.
-/

/-! ## A397958.P8047732967805928696

`lt[A374249(n+1), A092366(A001511(2*(n+2)))]`
-/

namespace A397958.P8047732967805928696
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374249 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092366 (A001511 (2 * (n + 2))).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A397958.P8047732967805928696

/-! ## A397958.P12432130282603034660

`lt[A268448(((n+7)/2)^(n%2)), 15]`
-/

namespace A397958.P12432130282603034660
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268448 (SequenceMachineLib.roundAway (((n + 7 : ℚ) / 2) ^ (n % 2))).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  15

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A397958.P12432130282603034660

/-! ## A397958.P14636493792914588522

`lt[A028391(A064736(n+2)), 32]`
-/

namespace A397958.P14636493792914588522
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028391 (A064736 (n + 2)).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  32

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A397958.P14636493792914588522

/-! ## A397958.P16896391975903929681

`A397959(n+1)%A270890(n+5)`
-/

namespace A397958.P16896391975903929681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A397959 (n + 1)) (A270890 (n + 5))

end

end A397958.P16896391975903929681

/-!
# A397959: Polydivisible numbers in base 9.

The programs for A397959, there is no canonical definition to state claims against.
-/

/-! ## A397959.P17382121313336191737

`lt[(n-1)^((1-(-1)^n)/2), A331549((n-1)^((1-(-1)^n)/2))]`
-/

namespace A397959.P17382121313336191737
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - 1 : ℝ) ^ ((1 - (-1) ^ n : ℚ) / 2 : ℝ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331549 (SequenceMachineLib.roundAway (((n : ℤ) - 1 : ℝ) ^ ((1 - (-1) ^ n : ℚ) / 2 : ℝ))).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℝ)) n

end

end A397959.P17382121313336191737

/-! ## A397959.P9792499017472348012

`lt[n, A354558(A354587(n+2))]`
-/

namespace A397959.P9792499017472348012
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354558 (A354587 (n + 2)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A397959.P9792499017472348012

/-! ## A397959.P3581829064515387188

`lt[n, A218415(A100727(n+3))]`
-/

namespace A397959.P3581829064515387188
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218415 (A100727 (n + 3)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A397959.P3581829064515387188

/-! ## A397959.P7264766147176303381

`lt[A000463(n+1), log2(A138426(n+1))]`
-/

namespace A397959.P7264766147176303381
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000463 (n + 1)

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A138426 (n + 1) : ℝ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℝ) < f2 j) n

end

end A397959.P7264766147176303381

/-!
# A397970: Number of inequivalent ways to place 4 nonattacking kings on an n X n board, with equivalence being up to rotations.

The programs for A397970, there is no canonical definition to state claims against.
-/

/-! ## A397970.P4426037100955550402

`A247336(A112738(n))`
-/

namespace A397970.P4426037100955550402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247336 (A112738 n).toNat

end

end A397970.P4426037100955550402

/-!
# A397972: Lower (1,1/3) midsequence of triangular numbers (A000217) and squares (A000290); see Comments.

The programs for A397972, the canonical program `A397972.P716944389194268233` is in `Seq.B000.C039`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A397972 has offset 0).

The definition of A397972 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A397972.P716944389194268233

`2*a(n-1)-a(n-2)+a(n-3)-2*a(n-4)+a(n-5)` with `a(0)=0, a(1)=1, a(2)=4, a(3)=9, a(4)=15`

The canonical program, it is in `Seq.B000.C039`.
-/

namespace A397972

/-- `2*a(n-1)-a(n-2)+a(n-3)-2*a(n-4)+a(n-5)` -/
def P716944389194268233.Spec : Prop :=
  ∀ n, P716944389194268233.a n = A397972 n

theorem P716944389194268233.correct : P716944389194268233.Spec := by
  intro n
  simp only [A397972]

end A397972

/-! ## A397972.P2784332563651271462

`∑[floor(5*n/3)]`
-/

namespace A397972.P2784332563651271462
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊5 * ((n : ℚ) / 3)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A397972.P2784332563651271462

namespace A397972

/-- `∑[floor(5*n/3)]` -/
def P2784332563651271462.Spec : Prop :=
  ∀ n, P2784332563651271462.a n = A397972 n

end A397972

/-! ## A397972.P16943551233044927231

`floor(∑[a(n-3)+5])` with `a(0)=0, a(1)=1, a(2)=3`

`floor` is left out, it is the identity on integers.
-/

namespace A397972.P16943551233044927231
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 3] fun n f1 =>
  f1 (n - 3) + 5

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A397972.P16943551233044927231

namespace A397972

/-- `floor(∑[a(n-3)+5])` -/
def P16943551233044927231.Spec : Prop :=
  ∀ n, (P16943551233044927231.a n : ℤ) = A397972 n

end A397972

/-! ## A397972.P4534317889985878394

`floor(a(n-1)+5*n/3)` with `a(0)=0`
-/

namespace A397972.P4534317889985878394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  ⌊(a (n - 1) : ℚ) + 5 * ((n : ℚ) / 3)⌋

end

end A397972.P4534317889985878394

namespace A397972

/-- `floor(a(n-1)+5*n/3)` -/
def P4534317889985878394.Spec : Prop :=
  ∀ n, P4534317889985878394.a n = A397972 n

end A397972

/-! ## A397972.P2437149507836583139

`∑[a(n-3)+5]-1` with `a(0)=1, a(1)=1, a(2)=3, a(3)=5`
-/

namespace A397972.P2437149507836583139
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 1, 3, 5] fun n f1 =>
  f1 (n - 3) + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 1

end

end A397972.P2437149507836583139

namespace A397972

/-- `∑[a(n-3)+5]-1` -/
def P2437149507836583139.Spec : Prop :=
  ∀ n, P2437149507836583139.a n = A397972 n

end A397972

/-! ## A397972.P7848606413524450509

`∑[∑[floor(a(n-3))]]/2` with `a(0)=0, a(1)=2, a(2)=4, a(3)=4`

`floor` is left out, it is the identity on integers.
-/

namespace A397972.P7848606413524450509
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [0, 2, 4, 4] fun n f2 =>
  f2 (n - 3)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) / 2

end

end A397972.P7848606413524450509

namespace A397972

/-- `∑[∑[floor(a(n-3))]]/2` -/
def P7848606413524450509.Spec : Prop :=
  ∀ n, P7848606413524450509.a n = (A397972 n : ℚ)

end A397972

/-! ## A397972.P11323793094110962345

`floor(2*n-(n/3-a(n-1)))` with `a(0)=0`
-/

namespace A397972.P11323793094110962345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  ⌊(2 * n : ℚ) - ((n : ℚ) / 3 - (a (n - 1) : ℚ))⌋

end

end A397972.P11323793094110962345

namespace A397972

/-- `floor(2*n-(n/3-a(n-1)))` -/
def P11323793094110962345.Spec : Prop :=
  ∀ n, P11323793094110962345.a n = A397972 n

end A397972

/-! ## A397972.P2524695148099865771

`floor(a(n-1)-n/3+n+n)` with `a(0)=0`
-/

namespace A397972.P2524695148099865771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  ⌊(a (n - 1) : ℚ) - (n : ℚ) / 3 + (n : ℚ) + (n : ℚ)⌋

end

end A397972.P2524695148099865771

namespace A397972

/-- `floor(a(n-1)-n/3+n+n)` -/
def P2524695148099865771.Spec : Prop :=
  ∀ n, P2524695148099865771.a n = A397972 n

end A397972

/-! ## A397972.P27829622898772595

`floor(n-(n/3-a(n-1)-n))` with `a(0)=0`
-/

namespace A397972.P27829622898772595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  ⌊(n : ℚ) - ((n : ℚ) / 3 - (a (n - 1) : ℚ) - (n : ℚ))⌋

end

end A397972.P27829622898772595

namespace A397972

/-- `floor(n-(n/3-a(n-1)-n))` -/
def P27829622898772595.Spec : Prop :=
  ∀ n, P27829622898772595.a n = A397972 n

end A397972

/-! ## A397972.P503113970304848980

`A398058(n)-n²`
-/

namespace A397972.P503113970304848980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A398058 n - (n ^ 2 : ℤ)

end

end A397972.P503113970304848980

namespace A397972

/-- `A398058(n)-n²` -/
def P503113970304848980.Spec : Prop :=
  ∀ n, P503113970304848980.a n = A397972 n

end A397972

/-! ## A397972.P16464175962709163950

`A000212(n)+∑[n]`
-/

namespace A397972.P16464175962709163950
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000212 n + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A397972.P16464175962709163950

namespace A397972

/-- `A000212(n)+∑[n]` -/
def P16464175962709163950.Spec : Prop :=
  ∀ n, P16464175962709163950.a n = A397972 n

end A397972

/-! ## A397972.P5927658616949995888

`(A222170(n)+n)/2`
-/

namespace A397972.P5927658616949995888
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A222170 n + (n : ℤ) : ℚ) / 2

end

end A397972.P5927658616949995888

namespace A397972

/-- `(A222170(n)+n)/2` -/
def P5927658616949995888.Spec : Prop :=
  ∀ n, P5927658616949995888.a n = (A397972 n : ℚ)

end A397972

/-! ## A397972.P8652162287643401502

`n²+n-A001840(n)`
-/

namespace A397972.P8652162287643401502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 + n : ℤ) - A001840 n

end

end A397972.P8652162287643401502

namespace A397972

/-- `n²+n-A001840(n)` -/
def P8652162287643401502.Spec : Prop :=
  ∀ n, P8652162287643401502.a n = A397972 n

end A397972

/-! ## A397972.P6318639101125712444

`(n+1)²-A186355(n+1)`
-/

namespace A397972.P6318639101125712444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℤ) - A186355 (n + 1)

end

end A397972.P6318639101125712444

namespace A397972

/-- `(n+1)²-A186355(n+1)` -/
def P6318639101125712444.Spec : Prop :=
  ∀ n, P6318639101125712444.a n = A397972 n

end A397972

/-! ## A397972.P10899797687791813269

`A238705(n+1)-∑[n+1]`
-/

namespace A397972.P10899797687791813269
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238705 (n + 1) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A397972.P10899797687791813269

namespace A397972

/-- `A238705(n+1)-∑[n+1]` -/
def P10899797687791813269.Spec : Prop :=
  ∀ n, P10899797687791813269.a n = A397972 n

end A397972

/-! ## A397972.P2383047863092052338

`A000217(n)+A000212(n)`
-/

namespace A397972.P2383047863092052338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 n + A000212 n

end

end A397972.P2383047863092052338

namespace A397972

/-- `A000217(n)+A000212(n)` -/
def P2383047863092052338.Spec : Prop :=
  ∀ n, P2383047863092052338.a n = A397972 n

end A397972

/-! ## A397972.P9574921130184253105

`A069905(n)+A006578(n)`
-/

namespace A397972.P9574921130184253105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069905 n + A006578 n

end

end A397972.P9574921130184253105

namespace A397972

/-- `A069905(n)+A006578(n)` -/
def P9574921130184253105.Spec : Prop :=
  ∀ n, P9574921130184253105.a n = A397972 n

end A397972

/-! ## A397972.P9832235265594669037

`A331952(n)+A001399(n)`
-/

namespace A397972.P9832235265594669037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331952 n + A001399 n

end

end A397972.P9832235265594669037

namespace A397972

/-- `A331952(n)+A001399(n)` -/
def P9832235265594669037.Spec : Prop :=
  ∀ n, P9832235265594669037.a n = A397972 n

end A397972

/-! ## A397972.P2013119136846174971

`A005449(n)-A071619(n)`
-/

namespace A397972.P2013119136846174971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005449 n - A071619 n

end

end A397972.P2013119136846174971

namespace A397972

/-- `A005449(n)-A071619(n)` -/
def P2013119136846174971.Spec : Prop :=
  ∀ n, P2013119136846174971.a n = A397972 n

end A397972

/-!
# A397973: Upper (1,1/3) midsequence of midsequence of triangular numbers (A000217) and squares (A000290); see Comments.

The programs for A397973, the canonical program `A397973.P2204164977154397390` is in `Seq.B000.C039`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A397973 has offset 0).

The definition of A397973 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A397973.P2204164977154397390

`2*a(n-1)-a(n-2)+a(n-3)-2*a(n-4)+a(n-5)` with `a(0)=0, a(1)=2, a(2)=5, a(3)=9, a(4)=16`

The canonical program, it is in `Seq.B000.C039`.
-/

namespace A397973

/-- `2*a(n-1)-a(n-2)+a(n-3)-2*a(n-4)+a(n-5)` -/
def P2204164977154397390.Spec : Prop :=
  ∀ n, P2204164977154397390.a n = A397973 n

theorem P2204164977154397390.correct : P2204164977154397390.Spec := by
  intro n
  simp only [A397973]

end A397973

/-! ## A397973.P2081691179070894820

`ceil(∑[n]+n²/3)`
-/

namespace A397973.P2081691179070894820
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) + (n ^ 2 : ℚ) / 3⌉

end

end A397973.P2081691179070894820

namespace A397973

/-- `ceil(∑[n]+n²/3)` -/
def P2081691179070894820.Spec : Prop :=
  ∀ n, P2081691179070894820.a n = A397973 n

end A397973

/-! ## A397973.P15128315680879970941

`∑[comp[∑[gcd(2, n+1)²]]]`
-/

namespace A397973.P15128315680879970941
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd 2 (n + 1) ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A397973.P15128315680879970941

namespace A397973

/-- `∑[comp[∑[gcd(2, n+1)²]]]` -/
def P15128315680879970941.Spec : Prop :=
  ∀ n, (P15128315680879970941.a n : ℤ) = A397973 n

end A397973

/-! ## A397973.P903387284931222494

`∑[comp[∑[((n+1)%3)²]]]`
-/

namespace A397973.P903387284931222494
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((n + 1) % 3) ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A397973.P903387284931222494

namespace A397973

/-- `∑[comp[∑[((n+1)%3)²]]]` -/
def P903387284931222494.Spec : Prop :=
  ∀ n, (P903387284931222494.a n : ℤ) = A397973 n

end A397973

/-! ## A397973.P7839666244435459353

`∑[a(n-3)+5]` with `a(0)=0, a(1)=2, a(2)=3, a(3)=4`
-/

namespace A397973.P7839666244435459353
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 2, 3, 4] fun n f1 =>
  f1 (n - 3) + 5

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A397973.P7839666244435459353

namespace A397973

/-- `∑[a(n-3)+5]` -/
def P7839666244435459353.Spec : Prop :=
  ∀ n, (P7839666244435459353.a n : ℤ) = A397973 n

end A397973

/-! ## A397973.P10849547935147930798

`∑[∑[or(1, a(n-3))]]` with `a(0)=0, a(1)=2, a(2)=1`
-/

namespace A397973.P10849547935147930798
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [0, 2, 1] fun n f2 =>
  Nat.lor 1 (f2 (n - 3))

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A397973.P10849547935147930798

namespace A397973

/-- `∑[∑[or(1, a(n-3))]]` -/
def P10849547935147930798.Spec : Prop :=
  ∀ n, (P10849547935147930798.a n : ℤ) = A397973 n

end A397973

/-! ## A397973.P11771522461868627242

`∑[comp[∑[(3-a(n-1))²]]]` with `a(0)=1`
-/

namespace A397973.P11771522461868627242
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f3 =>
  (3 - f3 (n - 1)) ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A397973.P11771522461868627242

namespace A397973

/-- `∑[comp[∑[(3-a(n-1))²]]]` -/
def P11771522461868627242.Spec : Prop :=
  ∀ n, (P11771522461868627242.a n : ℤ) = A397973 n

end A397973

/-! ## A397973.P16505919637095138720

`∑[∑[floor(a(n-3))]]` with `a(0)=0, a(1)=2, a(2)=1, a(3)=1, a(4)=3`

`floor` is left out, it is the identity on integers.
-/

namespace A397973.P16505919637095138720
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [0, 2, 1, 1, 3] fun n f2 =>
  f2 (n - 3)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A397973.P16505919637095138720

namespace A397973

/-- `∑[∑[floor(a(n-3))]]` -/
def P16505919637095138720.Spec : Prop :=
  ∀ n, (P16505919637095138720.a n : ℤ) = A397973 n

end A397973

/-! ## A397973.P9189455163263547548

`∑[∑[gcd(n+2, n-1)]-2]+1`
-/

namespace A397973.P9189455163263547548
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 2 : ℤ) ((n : ℤ) - 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A397973.P9189455163263547548

namespace A397973

/-- `∑[∑[gcd(n+2, n-1)]-2]+1` -/
def P9189455163263547548.Spec : Prop :=
  ∀ n, P9189455163263547548.a n = A397973 n

end A397973

/-! ## A397973.P11661007710438886673

`∑[∑[a(n-3)^a(n-1)]]` with `a(0)=0, a(1)=2, a(2)=1, a(3)=1, a(4)=3`
-/

namespace A397973.P11661007710438886673
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [0, 2, 1, 1, 3] fun n f2 =>
  f2 (n - 3) ^ f2 (n - 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A397973.P11661007710438886673

namespace A397973

/-- `∑[∑[a(n-3)^a(n-1)]]` -/
def P11661007710438886673.Spec : Prop :=
  ∀ n, (P11661007710438886673.a n : ℤ) = A397973 n

end A397973

/-! ## A397973.P2855262479574573488

`A398059(n)-n²`
-/

namespace A397973.P2855262479574573488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A398059 n - (n ^ 2 : ℤ)

end

end A397973.P2855262479574573488

namespace A397973

/-- `A398059(n)-n²` -/
def P2855262479574573488.Spec : Prop :=
  ∀ n, P2855262479574573488.a n = A397973 n

end A397973

/-! ## A397973.P7590775951407349648

`A008810(n)+∑[n]`
-/

namespace A397973.P7590775951407349648
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008810 n + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A397973.P7590775951407349648

namespace A397973

/-- `A008810(n)+∑[n]` -/
def P7590775951407349648.Spec : Prop :=
  ∀ n, P7590775951407349648.a n = A397973 n

end A397973

/-! ## A397973.P18351173638484160022

`∑[A047205(n+1)]-n`
-/

namespace A397973.P18351173638484160022
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047205 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (n : ℤ)

end

end A397973.P18351173638484160022

namespace A397973

/-- `∑[A047205(n+1)]-n` -/
def P18351173638484160022.Spec : Prop :=
  ∀ n, P18351173638484160022.a n = A397973 n

end A397973

/-! ## A397973.P16407091732482722590

`A194275(n+1)-Δ[n²]`
-/

namespace A397973.P16407091732482722590
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194275 (n + 1) - ((f1 (n + 1) : ℤ) - (f1 n : ℤ))

end

end A397973.P16407091732482722590

namespace A397973

/-- `A194275(n+1)-Δ[n²]` -/
def P16407091732482722590.Spec : Prop :=
  ∀ n, P16407091732482722590.a n = A397973 n

end A397973

/-! ## A397973.P14585718405097865479

`(n+1)²-A186357(n+1)`
-/

namespace A397973.P14585718405097865479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℤ) - A186357 (n + 1)

end

end A397973.P14585718405097865479

namespace A397973

/-- `(n+1)²-A186357(n+1)` -/
def P14585718405097865479.Spec : Prop :=
  ∀ n, P14585718405097865479.a n = A397973 n

end A397973

/-! ## A397973.P1701866769669780700

`n²+n-A301654(n+1)`
-/

namespace A397973.P1701866769669780700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 + n : ℤ) - A301654 (n + 1)

end

end A397973.P1701866769669780700

namespace A397973

/-- `n²+n-A301654(n+1)` -/
def P1701866769669780700.Spec : Prop :=
  ∀ n, P1701866769669780700.a n = A397973 n

end A397973

/-! ## A397973.P3077483769884760876

`A071619(n)+A001840(n)`
-/

namespace A397973.P3077483769884760876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071619 n + A001840 n

end

end A397973.P3077483769884760876

namespace A397973

/-- `A071619(n)+A001840(n)` -/
def P3077483769884760876.Spec : Prop :=
  ∀ n, P3077483769884760876.a n = A397973 n

end A397973

/-! ## A397973.P10090421431697099257

`A397972(n)+A011655(n)`
-/

namespace A397973.P10090421431697099257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A397972 n + A011655 n

end

end A397973.P10090421431697099257

namespace A397973

/-- `A397972(n)+A011655(n)` -/
def P10090421431697099257.Spec : Prop :=
  ∀ n, P10090421431697099257.a n = A397973 n

end A397973

/-! ## A397973.P15868412979117824589

`A002522(n)-A058212(n)`
-/

namespace A397973.P15868412979117824589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002522 n - A058212 n

end

end A397973.P15868412979117824589

namespace A397973

/-- `A002522(n)-A058212(n)` -/
def P15868412979117824589.Spec : Prop :=
  ∀ n, P15868412979117824589.a n = A397973 n

end A397973

/-! ## A397973.P546508913036350083

`A005475(n)-A222170(n)`
-/

namespace A397973.P546508913036350083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005475 n - A222170 n

end

end A397973.P546508913036350083

namespace A397973

/-- `A005475(n)-A222170(n)` -/
def P546508913036350083.Spec : Prop :=
  ∀ n, P546508913036350083.a n = A397973 n

end A397973

/-!
# A397974: Lower (1,2/3) midsequence of triangular numbers (A000217) and squares (A000290); see Comments.

The programs for A397974, the canonical program `A397974.P13932353562097098142` is in `Seq.B000.C039`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A397974 has offset 0).

The definition of A397974 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A397974.P13932353562097098142

`2*a(n-1)-a(n-2)+a(n-3)-2*a(n-4)+a(n-5)` with `a(0)=0, a(1)=1, a(2)=5, a(3)=12, a(4)=20`

The canonical program, it is in `Seq.B000.C039`.
-/

namespace A397974

/-- `2*a(n-1)-a(n-2)+a(n-3)-2*a(n-4)+a(n-5)` -/
def P13932353562097098142.Spec : Prop :=
  ∀ n, P13932353562097098142.a n = A397974 n

theorem P13932353562097098142.correct : P13932353562097098142.Spec := by
  intro n
  simp only [A397974]

end A397974

/-! ## A397974.P14156713376443513450

`∑[∑[sqrt(dr(∑[n]²))]]`
-/

namespace A397974.P14156713376443513450
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (SequenceMachineLib.digitalRoot (((∑ j ∈ Finset.range (n + 1), f3 j) ^ 2 : ℕ) : ℤ) : ℝ)

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A397974.P14156713376443513450

namespace A397974

/-- `∑[∑[sqrt(dr(∑[n]²))]]` -/
def P14156713376443513450.Spec : Prop :=
  ∀ n, P14156713376443513450.a n = (A397974 n : ℝ)

end A397974

/-! ## A397974.P17629699165622914945

`∑[∑[gcd(3, ∑[n])]-3]`
-/

namespace A397974.P17629699165622914945
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd 3 (∑ j ∈ Finset.range (n + 1), f3 j)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ) - 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A397974.P17629699165622914945

namespace A397974

/-- `∑[∑[gcd(3, ∑[n])]-3]` -/
def P17629699165622914945.Spec : Prop :=
  ∀ n, P17629699165622914945.a n = A397974 n

end A397974

/-! ## A397974.P18370553229610851709

`∑[a(n-3)+7]` with `a(0)=0, a(1)=1, a(2)=4`
-/

namespace A397974.P18370553229610851709
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 4] fun n f1 =>
  f1 (n - 3) + 7

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A397974.P18370553229610851709

namespace A397974

/-- `∑[a(n-3)+7]` -/
def P18370553229610851709.Spec : Prop :=
  ∀ n, (P18370553229610851709.a n : ℤ) = A397974 n

end A397974

/-! ## A397974.P11975762728194474654

`floor(∑[n]+2/3*n²)`
-/

namespace A397974.P11975762728194474654
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) + (2 : ℚ) / 3 * (n ^ 2 : ℚ)⌋

end

end A397974.P11975762728194474654

namespace A397974

/-- `floor(∑[n]+2/3*n²)` -/
def P11975762728194474654.Spec : Prop :=
  ∀ n, P11975762728194474654.a n = A397974 n

end A397974

/-! ## A397974.P13703042796307143758

`∑[∑[abs(a(n-3))]]` with `a(0)=0, a(1)=1, a(2)=3, a(3)=3`
-/

namespace A397974.P13703042796307143758
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 3, 3] fun n f2 =>
  f2 (n - 3)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A397974.P13703042796307143758

namespace A397974

/-- `∑[∑[abs(a(n-3))]]` -/
def P13703042796307143758.Spec : Prop :=
  ∀ n, (P13703042796307143758.a n : ℤ) = A397974 n

end A397974

/-! ## A397974.P6715095815340892336

`∑[∑[dr(a(n-3))]]` with `a(0)=0, a(1)=1, a(2)=3, a(3)=3`
-/

namespace A397974.P6715095815340892336
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 3, 3] fun n f2 =>
  SequenceMachineLib.digitalRoot (f2 (n - 3) : ℤ)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A397974.P6715095815340892336

namespace A397974

/-- `∑[∑[dr(a(n-3))]]` -/
def P6715095815340892336.Spec : Prop :=
  ∀ n, (P6715095815340892336.a n : ℤ) = A397974 n

end A397974

/-! ## A397974.P1854483759583183109

`∑[∑[floor(a(n-3))]]` with `a(0)=0, a(1)=1, a(2)=3, a(3)=3`

`floor` is left out, it is the identity on integers.
-/

namespace A397974.P1854483759583183109
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 3, 3] fun n f2 =>
  f2 (n - 3)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A397974.P1854483759583183109

namespace A397974

/-- `∑[∑[floor(a(n-3))]]` -/
def P1854483759583183109.Spec : Prop :=
  ∀ n, (P1854483759583183109.a n : ℤ) = A397974 n

end A397974

/-! ## A397974.P3320143780825795743

`∑[∑[ceil(a(n-3))]]` with `a(0)=0, a(1)=1, a(2)=3, a(3)=3`

`ceil` is left out, it is the identity on integers.
-/

namespace A397974.P3320143780825795743
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 3, 3] fun n f2 =>
  f2 (n - 3)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A397974.P3320143780825795743

namespace A397974

/-- `∑[∑[ceil(a(n-3))]]` -/
def P3320143780825795743.Spec : Prop :=
  ∀ n, (P3320143780825795743.a n : ℤ) = A397974 n

end A397974

/-! ## A397974.P6311461298699948206

`∑[∑[round(a(n-3))]]` with `a(0)=0, a(1)=1, a(2)=3, a(3)=3`

`round` is left out, it is the identity on integers.
-/

namespace A397974.P6311461298699948206
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 3, 3] fun n f2 =>
  f2 (n - 3)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A397974.P6311461298699948206

namespace A397974

/-- `∑[∑[round(a(n-3))]]` -/
def P6311461298699948206.Spec : Prop :=
  ∀ n, (P6311461298699948206.a n : ℤ) = A397974 n

end A397974

/-! ## A397974.P7975554834993576299

`∑[A047347(n+1)]`
-/

namespace A397974.P7975554834993576299
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047347 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A397974.P7975554834993576299

namespace A397974

/-- `∑[A047347(n+1)]` -/
def P7975554834993576299.Spec : Prop :=
  ∀ n, P7975554834993576299.a n = A397974 n

end A397974

/-! ## A397974.P4024127653238784540

`∑[A047387(n+1)-1]`
-/

namespace A397974.P4024127653238784540
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047387 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A397974.P4024127653238784540

namespace A397974

/-- `∑[A047387(n+1)-1]` -/
def P4024127653238784540.Spec : Prop :=
  ∀ n, P4024127653238784540.a n = A397974 n

end A397974

/-! ## A397974.P4938207253376425623

`∑[A047284(n+1)-2]`
-/

namespace A397974.P4938207253376425623
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047284 (n + 1) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A397974.P4938207253376425623

namespace A397974

/-- `∑[A047284(n+1)-2]` -/
def P4938207253376425623.Spec : Prop :=
  ∀ n, P4938207253376425623.a n = A397974 n

end A397974

/-! ## A397974.P4736354602386915786

`A301654(n+1)+n²`
-/

namespace A397974.P4736354602386915786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301654 (n + 1) + (n ^ 2 : ℤ)

end

end A397974.P4736354602386915786

namespace A397974

/-- `A301654(n+1)+n²` -/
def P4736354602386915786.Spec : Prop :=
  ∀ n, P4736354602386915786.a n = A397974 n

end A397974

/-! ## A397974.P667595324531054941

`∑[n+1-A168053(n)]`
-/

namespace A397974.P667595324531054941
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A168053 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A397974.P667595324531054941

namespace A397974

/-- `∑[n+1-A168053(n)]` -/
def P667595324531054941.Spec : Prop :=
  ∀ n, P667595324531054941.a n = A397974 n

end A397974

/-! ## A397974.P5561080182761901243

`A397972(n)+A000212(n)`
-/

namespace A397974.P5561080182761901243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A397972 n + A000212 n

end

end A397974.P5561080182761901243

namespace A397974

/-- `A397972(n)+A000212(n)` -/
def P5561080182761901243.Spec : Prop :=
  ∀ n, P5561080182761901243.a n = A397974 n

end A397974

/-! ## A397974.P9163363988191957118

`A397980(n)+A002264(n)`
-/

namespace A397974.P9163363988191957118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A397980 n + A002264 n

end

end A397974.P9163363988191957118

namespace A397974

/-- `A397980(n)+A002264(n)` -/
def P9163363988191957118.Spec : Prop :=
  ∀ n, P9163363988191957118.a n = A397974 n

end A397974

/-! ## A397974.P7144746065381272424

`A005449(n)-A008810(n)`
-/

namespace A397974.P7144746065381272424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005449 n - A008810 n

end

end A397974.P7144746065381272424

namespace A397974

/-- `A005449(n)-A008810(n)` -/
def P7144746065381272424.Spec : Prop :=
  ∀ n, P7144746065381272424.a n = A397974 n

end A397974

/-! ## A397974.P3991859564659856526

`A008822(n)-A080956(n)`
-/

namespace A397974.P3991859564659856526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008822 n - A080956 n

end

end A397974.P3991859564659856526

namespace A397974

/-- `A008822(n)-A080956(n)` -/
def P3991859564659856526.Spec : Prop :=
  ∀ n, P3991859564659856526.a n = A397974 n

end A397974

/-! ## A397974.P10522334672378655742

`A005475(n)-A147623(n)`
-/

namespace A397974.P10522334672378655742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005475 n - A147623 n

end

end A397974.P10522334672378655742

namespace A397974

/-- `A005475(n)-A147623(n)` -/
def P10522334672378655742.Spec : Prop :=
  ∀ n, P10522334672378655742.a n = A397974 n

end A397974

/-!
# A397975: Upper (1,2/3) midsequence triangular numbers (A000217) and squares (A000290); see Comments.

The programs for A397975, the canonical program `A397975.P7737740424573854809` is in `Seq.B000.C039`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A397975 has offset 0).

The definition of A397975 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A397975.P7737740424573854809

`2*a(n-1)-a(n-2)+a(n-3)-2*a(n-4)+a(n-5)` with `a(0)=0, a(1)=2, a(2)=6, a(3)=12, a(4)=21`

The canonical program, it is in `Seq.B000.C039`.
-/

namespace A397975

/-- `2*a(n-1)-a(n-2)+a(n-3)-2*a(n-4)+a(n-5)` -/
def P7737740424573854809.Spec : Prop :=
  ∀ n, P7737740424573854809.a n = A397975 n

theorem P7737740424573854809.correct : P7737740424573854809.Spec := by
  intro n
  simp only [A397975]

end A397975

/-! ## A397975.P15954975855361670436

`∑[ceil(n/3)]+n²`
-/

namespace A397975.P15954975855361670436
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n : ℚ) / 3⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n ^ 2 : ℤ)

end

end A397975.P15954975855361670436

namespace A397975

/-- `∑[ceil(n/3)]+n²` -/
def P15954975855361670436.Spec : Prop :=
  ∀ n, P15954975855361670436.a n = A397975 n

end A397975

/-! ## A397975.P7149611735888345133

`floor(n²+C(n+3, 3)/(n+3))`
-/

namespace A397975.P7149611735888345133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n ^ 2 : ℚ) + (Nat.choose (n + 3) 3 : ℚ) / (n + 3 : ℚ)⌋

end

end A397975.P7149611735888345133

namespace A397975

/-- `floor(n²+C(n+3, 3)/(n+3))` -/
def P7149611735888345133.Spec : Prop :=
  ∀ n, P7149611735888345133.a n = A397975 n

end A397975

/-! ## A397975.P10173308693825414520

`A056108(n)%A389614(n)`
-/

namespace A397975.P10173308693825414520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A056108 n) (A389614 n)

end

end A397975.P10173308693825414520

namespace A397975

/-- `A056108(n)%A389614(n)` -/
def P10173308693825414520.Spec : Prop :=
  ∀ n, P10173308693825414520.a n = A397975 n

end A397975

/-! ## A397975.P4339503885095886946

`A299259(n)%A173247(n)`
-/

namespace A397975.P4339503885095886946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A299259 n) (A173247 n)

end

end A397975.P4339503885095886946

namespace A397975

/-- `A299259(n)%A173247(n)` -/
def P4339503885095886946.Spec : Prop :=
  ∀ n, P4339503885095886946.a n = A397975 n

end A397975

/-! ## A397975.P9166100658952735103

`A005891(n)%A238705(n+1)`
-/

namespace A397975.P9166100658952735103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A005891 n) (A238705 (n + 1))

end

end A397975.P9166100658952735103

namespace A397975

/-- `A005891(n)%A238705(n+1)` -/
def P9166100658952735103.Spec : Prop :=
  ∀ n, P9166100658952735103.a n = A397975 n

end A397975

/-! ## A397975.P3717392616705768957

`A004396(A397985(n))`
-/

namespace A397975.P3717392616705768957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A397985 n).toNat

end

end A397975.P3717392616705768957

namespace A397975

/-- `A004396(A397985(n))` -/
def P3717392616705768957.Spec : Prop :=
  ∀ n, P3717392616705768957.a n = A397975 n

end A397975

/-! ## A397975.P3617825091230168709

`A151842(A186029(n))`
-/

namespace A397975.P3617825091230168709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151842 (A186029 n).toNat

end

end A397975.P3617825091230168709

namespace A397975

/-- `A151842(A186029(n))` -/
def P3617825091230168709.Spec : Prop :=
  ∀ n, P3617825091230168709.a n = A397975 n

end A397975

/-! ## A397975.P644195066043439375

`A002264(A389615(n))`
-/

namespace A397975.P644195066043439375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (A389615 n).toNat

end

end A397975.P644195066043439375

namespace A397975

/-- `A002264(A389615(n))` -/
def P644195066043439375.Spec : Prop :=
  ∀ n, P644195066043439375.a n = A397975 n

end A397975

/-!
# A397976: Lower (1,3/2) midsequence of triangular numbers (A000217) and squares (A000290); see Comments.

The programs for A397976, the canonical program `A397976.P17523580794336411567` is in `Seq.B000.C039`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A397976 has offset 0).

The definition of A397976 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A397976.P721002621014880594

`∑[comp[or(2, n)]]+n²`
-/

namespace A397976.P721002621014880594
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 2 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + n ^ 2

end

end A397976.P721002621014880594

namespace A397976

/-- `∑[comp[or(2, n)]]+n²` -/
def P721002621014880594.Spec : Prop :=
  ∀ n, (P721002621014880594.a n : ℤ) = A397976 n

end A397976

/-! ## A397976.P17523580794336411567

`floor(2*(1/8+n)²)`

The canonical program, it is in `Seq.B000.C039`.
-/

namespace A397976

/-- `floor(2*(1/8+n)²)` -/
def P17523580794336411567.Spec : Prop :=
  ∀ n, P17523580794336411567.a n = A397976 n

theorem P17523580794336411567.correct : P17523580794336411567.Spec := by
  intro n
  simp only [A397976]

end A397976

/-! ## A397976.P1239977097264061529

`∑[a(n-2)+8]` with `a(0)=0, a(1)=2, a(2)=7`
-/

namespace A397976.P1239977097264061529
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 2, 7] fun n f1 =>
  f1 (n - 2) + 8

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A397976.P1239977097264061529

namespace A397976

/-- `∑[a(n-2)+8]` -/
def P1239977097264061529.Spec : Prop :=
  ∀ n, (P1239977097264061529.a n : ℤ) = A397976 n

end A397976

/-! ## A397976.P6397715574959819300

`∑[∑[8-a(n-1)]]` with `a(0)=0, a(1)=2, a(2)=5`
-/

namespace A397976.P6397715574959819300
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [0, 2, 5] fun n f2 =>
  8 - f2 (n - 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A397976.P6397715574959819300

namespace A397976

/-- `∑[∑[8-a(n-1)]]` -/
def P6397715574959819300.Spec : Prop :=
  ∀ n, P6397715574959819300.a n = A397976 n

end A397976

/-! ## A397976.P7963985673798014934

`∑[2*n-and(1, n)]+n²`
-/

namespace A397976.P7963985673798014934
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) - (Nat.land 1 n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n ^ 2 : ℤ)

end

end A397976.P7963985673798014934

namespace A397976

/-- `∑[2*n-and(1, n)]+n²` -/
def P7963985673798014934.Spec : Prop :=
  ∀ n, P7963985673798014934.a n = A397976 n

end A397976

/-! ## A397976.P10298662667393834262

`n²-∑[and(1, n)-2*n]`
-/

namespace A397976.P10298662667393834262
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.land 1 n : ℤ) - (2 * n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A397976.P10298662667393834262

namespace A397976

/-- `n²-∑[and(1, n)-2*n]` -/
def P10298662667393834262.Spec : Prop :=
  ∀ n, P10298662667393834262.a n = A397976 n

end A397976

/-! ## A397976.P5342045720564770884

`∑[eq[n, and(n, n+2)]]+n²`
-/

namespace A397976.P5342045720564770884
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land n (n + 2)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j = f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + n ^ 2

end

end A397976.P5342045720564770884

namespace A397976

/-- `∑[eq[n, and(n, n+2)]]+n²` -/
def P5342045720564770884.Spec : Prop :=
  ∀ n, (P5342045720564770884.a n : ℤ) = A397976 n

end A397976

/-! ## A397976.P16780566254008084014

`ogf((2x+5x^2+x^3)/(1-2x+2x^3-x^4))`
-/

namespace A397976.P16780566254008084014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 2, 5, 1] [1, -2, 0, 2, -1] n

end

end A397976.P16780566254008084014

namespace A397976

/-- `ogf((2x+5x^2+x^3)/(1-2x+2x^3-x^4))` -/
def P16780566254008084014.Spec : Prop :=
  ∀ n, P16780566254008084014.a n = A397976 n

end A397976

/-! ## A397976.P6588359988447619672

`8*n+a(n-2)-7` with `a(0)=0, a(1)=2`
-/

namespace A397976.P6588359988447619672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 2] fun n a =>
  (8 * n : ℤ) + (a (n - 2) - 7)

end

end A397976.P6588359988447619672

namespace A397976

/-- `8*n+a(n-2)-7` -/
def P6588359988447619672.Spec : Prop :=
  ∀ n, P6588359988447619672.a n = A397976 n

end A397976

/-! ## A397976.P9385304286840067354

`8*n-(7-a(n-2))` with `a(0)=0, a(1)=2`
-/

namespace A397976.P9385304286840067354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 2] fun n a =>
  (8 * n : ℤ) - (7 - a (n - 2))

end

end A397976.P9385304286840067354

namespace A397976

/-- `8*n-(7-a(n-2))` -/
def P9385304286840067354.Spec : Prop :=
  ∀ n, P9385304286840067354.a n = A397976 n

end A397976

/-! ## A397976.P15124990615996446377

`C(2*n+1, 2)-ceil(n/2)`
-/

namespace A397976.P15124990615996446377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose (2 * n + 1) 2 : ℤ) - ⌈(n : ℚ) / 2⌉

end

end A397976.P15124990615996446377

namespace A397976

/-- `C(2*n+1, 2)-ceil(n/2)` -/
def P15124990615996446377.Spec : Prop :=
  ∀ n, P15124990615996446377.a n = A397976 n

end A397976

/-! ## A397976.P8531224301927093369

`lcm(n, 2*n+1)-ceil(n/2)`
-/

namespace A397976.P8531224301927093369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.lcm n (2 * n + 1) : ℤ) - ⌈(n : ℚ) / 2⌉

end

end A397976.P8531224301927093369

namespace A397976

/-- `lcm(n, 2*n+1)-ceil(n/2)` -/
def P8531224301927093369.Spec : Prop :=
  ∀ n, P8531224301927093369.a n = A397976 n

end A397976

/-! ## A397976.P15114596852259217212

`n*(2*n+1)-∑[n%2]`
-/

namespace A397976.P15114596852259217212
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n % 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n * (2 * n + 1) : ℤ) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A397976.P15114596852259217212

namespace A397976

/-- `n*(2*n+1)-∑[n%2]` -/
def P15114596852259217212.Spec : Prop :=
  ∀ n, P15114596852259217212.a n = A397976 n

end A397976

/-! ## A397976.P8712483891689594057

`n*(2*n+1)-∑[and(1, n)]`
-/

namespace A397976.P8712483891689594057
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 1 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n * (2 * n + 1) : ℤ) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A397976.P8712483891689594057

namespace A397976

/-- `n*(2*n+1)-∑[and(1, n)]` -/
def P8712483891689594057.Spec : Prop :=
  ∀ n, P8712483891689594057.a n = A397976 n

end A397976

/-! ## A397976.P16136829119076870231

`∑[2*n]+floor(C(2*n, 2)/2)`
-/

namespace A397976.P16136829119076870231
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) + ⌊(Nat.choose (2 * n) 2 : ℚ) / 2⌋

end

end A397976.P16136829119076870231

namespace A397976

/-- `∑[2*n]+floor(C(2*n, 2)/2)` -/
def P16136829119076870231.Spec : Prop :=
  ∀ n, P16136829119076870231.a n = A397976 n

end A397976

/-! ## A397976.P8181178186535774603

`∑[2*n+1-gcd(2, n+1)]+n²`
-/

namespace A397976.P8181178186535774603
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n + 1 : ℤ) - (Nat.gcd 2 (n + 1) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n ^ 2 : ℤ)

end

end A397976.P8181178186535774603

namespace A397976

/-- `∑[2*n+1-gcd(2, n+1)]+n²` -/
def P8181178186535774603.Spec : Prop :=
  ∀ n, P8181178186535774603.a n = A397976 n

end A397976

/-! ## A397976.P10600962685961392422

`round(C(2*n+1, 2)-(2*n+1)/4)`
-/

namespace A397976.P10600962685961392422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((Nat.choose (2 * n + 1) 2 : ℚ) - (2 * n + 1 : ℚ) / 4)

end

end A397976.P10600962685961392422

namespace A397976

/-- `round(C(2*n+1, 2)-(2*n+1)/4)` -/
def P10600962685961392422.Spec : Prop :=
  ∀ n, P10600962685961392422.a n = A397976 n

end A397976

/-! ## A397976.P18141587232591219654

`A139593(n)-n`
-/

namespace A397976.P18141587232591219654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139593 n - (n : ℤ)

end

end A397976.P18141587232591219654

namespace A397976

/-- `A139593(n)-n` -/
def P18141587232591219654.Spec : Prop :=
  ∀ n, P18141587232591219654.a n = A397976 n

end A397976

/-! ## A397976.P14222570222415641116

`A035608(n)+n²`
-/

namespace A397976.P14222570222415641116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035608 n + (n ^ 2 : ℤ)

end

end A397976.P14222570222415641116

namespace A397976

/-- `A035608(n)+n²` -/
def P14222570222415641116.Spec : Prop :=
  ∀ n, P14222570222415641116.a n = A397976 n

end A397976

/-! ## A397976.P864973239275948559

`A032528(n)+∑[n]`
-/

namespace A397976.P864973239275948559
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032528 n + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A397976.P864973239275948559

namespace A397976

/-- `A032528(n)+∑[n]` -/
def P864973239275948559.Spec : Prop :=
  ∀ n, P864973239275948559.a n = A397976 n

end A397976

/-!
# A397977: Upper (1,3/2) midsequence of triangular numbers (A000217) and squares (A000290); see Comments.

The programs for A397977, the canonical program `A397977.P8002124037299490132` is in `Seq.B000.C039`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A397977 has offset 0).

The definition of A397977 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A397977.P8002124037299490132

`ceil(((2*n)²+n)/2)`

The canonical program, it is in `Seq.B000.C039`.
-/

namespace A397977

/-- `ceil(((2*n)²+n)/2)` -/
def P8002124037299490132.Spec : Prop :=
  ∀ n, P8002124037299490132.a n = A397977 n

theorem P8002124037299490132.correct : P8002124037299490132.Spec := by
  intro n
  simp only [A397977]

end A397977

/-! ## A397977.P10889841787416809903

`∑[n%2]+2*n²`
-/

namespace A397977.P10889841787416809903
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n % 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 2 * n ^ 2

end

end A397977.P10889841787416809903

namespace A397977

/-- `∑[n%2]+2*n²` -/
def P10889841787416809903.Spec : Prop :=
  ∀ n, (P10889841787416809903.a n : ℤ) = A397977 n

end A397977

/-! ## A397977.P2639002114951374679

`∑[and(1, n)]+2*n²`
-/

namespace A397977.P2639002114951374679
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 1 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 2 * n ^ 2

end

end A397977.P2639002114951374679

namespace A397977

/-- `∑[and(1, n)]+2*n²` -/
def P2639002114951374679.Spec : Prop :=
  ∀ n, (P2639002114951374679.a n : ℤ) = A397977 n

end A397977

/-! ## A397977.P9729852811828474503

`∑[a(n-2)+8]` with `a(0)=0, a(1)=3, a(2)=6`
-/

namespace A397977.P9729852811828474503
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 3, 6] fun n f1 =>
  f1 (n - 2) + 8

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A397977.P9729852811828474503

namespace A397977

/-- `∑[a(n-2)+8]` -/
def P9729852811828474503.Spec : Prop :=
  ∀ n, (P9729852811828474503.a n : ℤ) = A397977 n

end A397977

/-! ## A397977.P15530778968882374145

`∑[∑[8-a(n-1)]]` with `a(0)=0, a(1)=3, a(2)=3`
-/

namespace A397977.P15530778968882374145
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [0, 3, 3] fun n f2 =>
  8 - f2 (n - 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A397977.P15530778968882374145

namespace A397977

/-- `∑[∑[8-a(n-1)]]` -/
def P15530778968882374145.Spec : Prop :=
  ∀ n, P15530778968882374145.a n = A397977 n

end A397977

/-! ## A397977.P4810330953495025307

`ogf((3x+3x^2+2x^3)/(1-2x+2x^3-x^4))`
-/

namespace A397977.P4810330953495025307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 3, 3, 2] [1, -2, 0, 2, -1] n

end

end A397977.P4810330953495025307

namespace A397977

/-- `ogf((3x+3x^2+2x^3)/(1-2x+2x^3-x^4))` -/
def P4810330953495025307.Spec : Prop :=
  ∀ n, P4810330953495025307.a n = A397977 n

end A397977

/-! ## A397977.P8322828648711985081

`8*n+a(n-2)-7` with `a(0)=0, a(1)=3`
-/

namespace A397977.P8322828648711985081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 3] fun n a =>
  (8 * n : ℤ) + (a (n - 2) - 7)

end

end A397977.P8322828648711985081

namespace A397977

/-- `8*n+a(n-2)-7` -/
def P8322828648711985081.Spec : Prop :=
  ∀ n, P8322828648711985081.a n = A397977 n

end A397977

/-! ## A397977.P248463454125637007

`8*n-(7-a(n-2))` with `a(0)=0, a(1)=3`
-/

namespace A397977.P248463454125637007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 3] fun n a =>
  (8 * n : ℤ) - (7 - a (n - 2))

end

end A397977.P248463454125637007

namespace A397977

/-- `8*n-(7-a(n-2))` -/
def P248463454125637007.Spec : Prop :=
  ∀ n, P248463454125637007.a n = A397977 n

end A397977

/-! ## A397977.P2190677201374528153

`C(2*n+1, 2)-floor(n/2)`
-/

namespace A397977.P2190677201374528153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose (2 * n + 1) 2 : ℤ) - ⌊(n : ℚ) / 2⌋

end

end A397977.P2190677201374528153

namespace A397977

/-- `C(2*n+1, 2)-floor(n/2)` -/
def P2190677201374528153.Spec : Prop :=
  ∀ n, P2190677201374528153.a n = A397977 n

end A397977

/-! ## A397977.P17314650769818197044

`round(C(2*n+1, 2)-n/2)`
-/

namespace A397977.P17314650769818197044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((Nat.choose (2 * n + 1) 2 : ℚ) - (n : ℚ) / 2)

end

end A397977.P17314650769818197044

namespace A397977

/-- `round(C(2*n+1, 2)-n/2)` -/
def P17314650769818197044.Spec : Prop :=
  ∀ n, P17314650769818197044.a n = A397977 n

end A397977

/-! ## A397977.P15382561104994512284

`lcm(n, 2*n+1)-floor(n/2)`
-/

namespace A397977.P15382561104994512284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.lcm n (2 * n + 1) : ℤ) - ⌊(n : ℚ) / 2⌋

end

end A397977.P15382561104994512284

namespace A397977

/-- `lcm(n, 2*n+1)-floor(n/2)` -/
def P15382561104994512284.Spec : Prop :=
  ∀ n, P15382561104994512284.a n = A397977 n

end A397977

/-! ## A397977.P14236358074682900227

`floor((lcm(2, (2*n)²)+n+1)/2)`
-/

namespace A397977.P14236358074682900227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(Nat.lcm 2 ((2 * n) ^ 2) + (n + 1) : ℚ) / 2⌋

end

end A397977.P14236358074682900227

namespace A397977

/-- `floor((lcm(2, (2*n)²)+n+1)/2)` -/
def P14236358074682900227.Spec : Prop :=
  ∀ n, P14236358074682900227.a n = A397977 n

end A397977

/-! ## A397977.P13506739564010733408

`floor((C(n+1, n)+(2*n)²)/2)`
-/

namespace A397977.P13506739564010733408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(Nat.choose (n + 1) n + (2 * n) ^ 2 : ℚ) / 2⌋

end

end A397977.P13506739564010733408

namespace A397977

/-- `floor((C(n+1, n)+(2*n)²)/2)` -/
def P13506739564010733408.Spec : Prop :=
  ∀ n, P13506739564010733408.a n = A397977 n

end A397977

/-! ## A397977.P3673910629283394766

`round(C(2*n+2*n+1, 2)/4)`
-/

namespace A397977.P3673910629283394766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((Nat.choose (2 * n + (2 * n + 1)) 2 : ℚ) / 4)

end

end A397977.P3673910629283394766

namespace A397977

/-- `round(C(2*n+2*n+1, 2)/4)` -/
def P3673910629283394766.Spec : Prop :=
  ∀ n, P3673910629283394766.a n = A397977 n

end A397977

/-! ## A397977.P8600180240702857972

`floor(((2*n)²+n+1)/gcd(2, 2*n))`
-/

namespace A397977.P8600180240702857972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((2 * n) ^ 2 + (n + 1) : ℚ) / (Nat.gcd 2 (2 * n) : ℚ)⌋

end

end A397977.P8600180240702857972

namespace A397977

/-- `floor(((2*n)²+n+1)/gcd(2, 2*n))` -/
def P8600180240702857972.Spec : Prop :=
  ∀ n, P8600180240702857972.a n = A397977 n

end A397977

/-! ## A397977.P15727131662755573281

`floor((and(2*n+1, 2*n)²+n+1)/2)`
-/

namespace A397977.P15727131662755573281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(Nat.land (2 * n + 1) (2 * n) ^ 2 + (n + 1) : ℚ) / 2⌋

end

end A397977.P15727131662755573281

namespace A397977

/-- `floor((and(2*n+1, 2*n)²+n+1)/2)` -/
def P15727131662755573281.Spec : Prop :=
  ∀ n, P15727131662755573281.a n = A397977 n

end A397977

/-! ## A397977.P3793495224143416715

`A139595(n)-2*n`
-/

namespace A397977.P3793495224143416715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139595 n - (2 * n : ℤ)

end

end A397977.P3793495224143416715

namespace A397977

/-- `A139595(n)-2*n` -/
def P3793495224143416715.Spec : Prop :=
  ∀ n, P3793495224143416715.a n = A397977 n

end A397977

/-! ## A397977.P2795129152542597014

`A213502(n)-n^3`
-/

namespace A397977.P2795129152542597014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213502 n - (n ^ 3 : ℤ)

end

end A397977.P2795129152542597014

namespace A397977

/-- `A213502(n)-n^3` -/
def P2795129152542597014.Spec : Prop :=
  ∀ n, P2795129152542597014.a n = A397977 n

end A397977

/-! ## A397977.P2007287974827527262

`A238410(n+1)+∑[n]`
-/

namespace A397977.P2007287974827527262
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238410 (n + 1) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A397977.P2007287974827527262

namespace A397977

/-- `A238410(n+1)+∑[n]` -/
def P2007287974827527262.Spec : Prop :=
  ∀ n, P2007287974827527262.a n = A397977 n

end A397977

/-! ## A397977.P5101266937599605257

`A014848(n)+n²+n`
-/

namespace A397977.P5101266937599605257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014848 n + (n ^ 2 + n : ℤ)

end

end A397977.P5101266937599605257

namespace A397977

/-- `A014848(n)+n²+n` -/
def P5101266937599605257.Spec : Prop :=
  ∀ n, P5101266937599605257.a n = A397977 n

end A397977

/-!
# A397978: Lower (1/2,1) midsequence of triangular numbers (A000217) and squares (A000290); see Comments.

The programs for A397978, the canonical program `A397978.P337987089045620854` is in `Seq.B000.C039`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A397978 has offset 0).

The definition of A397978 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A397978.P337987089045620854

`3*a(n-1)-4*a(n-2)+4*a(n-3)-3*a(n-4)+a(n-5)` with `a(0)=0, a(1)=1, a(2)=5, a(3)=12, a(4)=21`

The canonical program, it is in `Seq.B000.C039`.
-/

namespace A397978

/-- `3*a(n-1)-4*a(n-2)+4*a(n-3)-3*a(n-4)+a(n-5)` -/
def P337987089045620854.Spec : Prop :=
  ∀ n, P337987089045620854.a n = A397978 n

theorem P337987089045620854.correct : P337987089045620854.Spec := by
  intro n
  simp only [A397978]

end A397978

/-! ## A397978.P13875411921635236094

`floor(∑[n/2]+n²)`
-/

namespace A397978.P13875411921635236094
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊∑ j ∈ Finset.range (n + 1), f1 j + (n ^ 2 : ℚ)⌋

end

end A397978.P13875411921635236094

namespace A397978

/-- `floor(∑[n/2]+n²)` -/
def P13875411921635236094.Spec : Prop :=
  ∀ n, P13875411921635236094.a n = A397978 n

end A397978

/-! ## A397978.P16721064159805633613

`floor(C(n+1, 2)/2)+n²`
-/

namespace A397978.P16721064159805633613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(Nat.choose (n + 1) 2 : ℚ) / 2⌋ + (n ^ 2 : ℤ)

end

end A397978.P16721064159805633613

namespace A397978

/-- `floor(C(n+1, 2)/2)+n²` -/
def P16721064159805633613.Spec : Prop :=
  ∀ n, P16721064159805633613.a n = A397978 n

end A397978

/-! ## A397978.P9775410873385184030

`∑[∑[5-a(n-2)]]` with `a(0)=0, a(1)=1, a(2)=3, a(3)=3`
-/

namespace A397978.P9775410873385184030
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 3, 3] fun n f2 =>
  5 - f2 (n - 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A397978.P9775410873385184030

namespace A397978

/-- `∑[∑[5-a(n-2)]]` -/
def P9775410873385184030.Spec : Prop :=
  ∀ n, P9775410873385184030.a n = A397978 n

end A397978

/-! ## A397978.P13211156720485540720

`A332495(n)-n`
-/

namespace A397978.P13211156720485540720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332495 n - (n : ℤ)

end

end A397978.P13211156720485540720

namespace A397978

/-- `A332495(n)-n` -/
def P13211156720485540720.Spec : Prop :=
  ∀ n, P13211156720485540720.a n = A397978 n

end A397978

/-! ## A397978.P11924444313708520491

`A231559(n)+∑[n]`
-/

namespace A397978.P11924444313708520491
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231559 n + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A397978.P11924444313708520491

namespace A397978

/-- `A231559(n)+∑[n]` -/
def P11924444313708520491.Spec : Prop :=
  ∀ n, P11924444313708520491.a n = A397978 n

end A397978

/-! ## A397978.P10121277136804319606

`A397984(n)-∑[n]`
-/

namespace A397978.P10121277136804319606
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A397984 n - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A397978.P10121277136804319606

namespace A397978

/-- `A397984(n)-∑[n]` -/
def P10121277136804319606.Spec : Prop :=
  ∀ n, P10121277136804319606.a n = A397978 n

end A397978

/-! ## A397978.P13297775710125610554

`A301294(n)-(n+1)²`
-/

namespace A397978.P13297775710125610554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301294 n - ((n + 1) ^ 2 : ℤ)

end

end A397978.P13297775710125610554

namespace A397978

/-- `A301294(n)-(n+1)²` -/
def P13297775710125610554.Spec : Prop :=
  ∀ n, P13297775710125610554.a n = A397978 n

end A397978

/-! ## A397978.P1976518070689880645

`∑[A301293(n)]-(n+1)²`
-/

namespace A397978.P1976518070689880645
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301293 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - ((n + 1) ^ 2 : ℤ)

end

end A397978.P1976518070689880645

namespace A397978

/-- `∑[A301293(n)]-(n+1)²` -/
def P1976518070689880645.Spec : Prop :=
  ∀ n, P1976518070689880645.a n = A397978 n

end A397978

/-! ## A397978.P3647343242422137074

`A077043(n)+A038707(n)`
-/

namespace A397978.P3647343242422137074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077043 n + A038707 n

end

end A397978.P3647343242422137074

namespace A397978

/-- `A077043(n)+A038707(n)` -/
def P3647343242422137074.Spec : Prop :=
  ∀ n, P3647343242422137074.a n = A397978 n

end A397978

/-! ## A397978.P14276039355810523344

`A084684(n)+A082645(n)`
-/

namespace A397978.P14276039355810523344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084684 n + A082645 n

end

end A397978.P14276039355810523344

namespace A397978

/-- `A084684(n)+A082645(n)` -/
def P14276039355810523344.Spec : Prop :=
  ∀ n, P14276039355810523344.a n = A397978 n

end A397978

/-! ## A397978.P15218480419455462452

`A281026(n)+A161680(n)`
-/

namespace A397978.P15218480419455462452
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281026 n + A161680 n

end

end A397978.P15218480419455462452

namespace A397978

/-- `A281026(n)+A161680(n)` -/
def P15218480419455462452.Spec : Prop :=
  ∀ n, P15218480419455462452.a n = A397978 n

end A397978

/-! ## A397978.P5465658848572481828

`A397986(n)+A071619(n)`
-/

namespace A397978.P5465658848572481828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A397986 n + A071619 n

end

end A397978.P5465658848572481828

namespace A397978

/-- `A397986(n)+A071619(n)` -/
def P5465658848572481828.Spec : Prop :=
  ∀ n, P5465658848572481828.a n = A397978 n

end A397978

/-! ## A397978.P870093292521019200

`A033951(n)-A301709(n)`
-/

namespace A397978.P870093292521019200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033951 n - A301709 n

end

end A397978.P870093292521019200

namespace A397978

/-- `A033951(n)-A301709(n)` -/
def P870093292521019200.Spec : Prop :=
  ∀ n, P870093292521019200.a n = A397978 n

end A397978

/-! ## A397978.P14793637071288225151

`A001105(n)-A340648(n)`
-/

namespace A397978.P14793637071288225151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001105 n - A340648 n

end

end A397978.P14793637071288225151

namespace A397978

/-- `A001105(n)-A340648(n)` -/
def P14793637071288225151.Spec : Prop :=
  ∀ n, P14793637071288225151.a n = A397978 n

end A397978

/-! ## A397978.P727243343335644433

`A005475(n)-A397979(n)`
-/

namespace A397978.P727243343335644433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005475 n - A397979 n

end

end A397978.P727243343335644433

namespace A397978

/-- `A005475(n)-A397979(n)` -/
def P727243343335644433.Spec : Prop :=
  ∀ n, P727243343335644433.a n = A397978 n

end A397978

/-! ## A397978.P15048809953183072924

`A049451(n)-A397985(n)`
-/

namespace A397978.P15048809953183072924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049451 n - A397985 n

end

end A397978.P15048809953183072924

namespace A397978

/-- `A049451(n)-A397985(n)` -/
def P15048809953183072924.Spec : Prop :=
  ∀ n, P15048809953183072924.a n = A397978 n

end A397978

/-! ## A397978.P12206217344273898343

`A212959(n)-A398152(n)`
-/

namespace A397978.P12206217344273898343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212959 n - A398152 n

end

end A397978.P12206217344273898343

namespace A397978

/-- `A212959(n)-A398152(n)` -/
def P12206217344273898343.Spec : Prop :=
  ∀ n, P12206217344273898343.a n = A397978 n

end A397978

/-! ## A397978.P8884430403967411729

`A391537(n+1)+A165900(n)`
-/

namespace A397978.P8884430403967411729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391537 (n + 1) + A165900 n

end

end A397978.P8884430403967411729

namespace A397978

/-- `A391537(n+1)+A165900(n)` -/
def P8884430403967411729.Spec : Prop :=
  ∀ n, P8884430403967411729.a n = A397978 n

end A397978

/-!
# A397979: Upper (1/2,1) midsequence of triangular numbers (A000217) and squares (A000290); see Comments.

The programs for A397979, the canonical program `A397979.P1436968017955477644` is in `Seq.B000.C039`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A397979 has offset 0).

The definition of A397979 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A397979.P1436968017955477644

`3*a(n-1)-4*a(n-2)+4*a(n-3)-3*a(n-4)+a(n-5)` with `a(0)=0, a(1)=2, a(2)=6, a(3)=12, a(4)=21`

The canonical program, it is in `Seq.B000.C039`.
-/

namespace A397979

/-- `3*a(n-1)-4*a(n-2)+4*a(n-3)-3*a(n-4)+a(n-5)` -/
def P1436968017955477644.Spec : Prop :=
  ∀ n, P1436968017955477644.a n = A397979 n

theorem P1436968017955477644.correct : P1436968017955477644.Spec := by
  intro n
  simp only [A397979]

end A397979

/-! ## A397979.P2815352320394328606

`ceil(∑[n/2]+n²)`
-/

namespace A397979.P2815352320394328606
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈∑ j ∈ Finset.range (n + 1), f1 j + (n ^ 2 : ℚ)⌉

end

end A397979.P2815352320394328606

namespace A397979

/-- `ceil(∑[n/2]+n²)` -/
def P2815352320394328606.Spec : Prop :=
  ∀ n, P2815352320394328606.a n = A397979 n

end A397979

/-! ## A397979.P7359142003716708680

`∑[∑[5-a(n-2)]]` with `a(0)=0, a(1)=2, a(2)=2, a(3)=2`
-/

namespace A397979.P7359142003716708680
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [0, 2, 2, 2] fun n f2 =>
  5 - f2 (n - 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A397979.P7359142003716708680

namespace A397979

/-- `∑[∑[5-a(n-2)]]` -/
def P7359142003716708680.Spec : Prop :=
  ∀ n, P7359142003716708680.a n = A397979 n

end A397979

/-! ## A397979.P222464710330355409

`floor((∑[n+1]+C(2*n, 2))/2)`
-/

namespace A397979.P222464710330355409
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((∑ j ∈ Finset.range (n + 1), f1 j + Nat.choose (2 * n) 2 : ℕ) : ℚ) / 2⌋

end

end A397979.P222464710330355409

namespace A397979

/-- `floor((∑[n+1]+C(2*n, 2))/2)` -/
def P222464710330355409.Spec : Prop :=
  ∀ n, P222464710330355409.a n = A397979 n

end A397979

/-! ## A397979.P16821884430687642217

`A340648(n)+∑[n]`
-/

namespace A397979.P16821884430687642217
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340648 n + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A397979.P16821884430687642217

namespace A397979

/-- `A340648(n)+∑[n]` -/
def P16821884430687642217.Spec : Prop :=
  ∀ n, P16821884430687642217.a n = A397979 n

end A397979

/-! ## A397979.P10787882244543194669

`A397985(n)-∑[n]`
-/

namespace A397979.P10787882244543194669
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A397985 n - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A397979.P10787882244543194669

namespace A397979

/-- `A397985(n)-∑[n]` -/
def P10787882244543194669.Spec : Prop :=
  ∀ n, P10787882244543194669.a n = A397979 n

end A397979

/-! ## A397979.P5996407023436138895

`∑[A004525(n)]+n²`
-/

namespace A397979.P5996407023436138895
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n ^ 2 : ℤ)

end

end A397979.P5996407023436138895

namespace A397979

/-- `∑[A004525(n)]+n²` -/
def P5996407023436138895.Spec : Prop :=
  ∀ n, P5996407023436138895.a n = A397979 n

end A397979

/-! ## A397979.P14706834714415015742

`A054925(n+1)+n²`
-/

namespace A397979.P14706834714415015742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054925 (n + 1) + (n ^ 2 : ℤ)

end

end A397979.P14706834714415015742

namespace A397979

/-- `A054925(n+1)+n²` -/
def P14706834714415015742.Spec : Prop :=
  ∀ n, P14706834714415015742.a n = A397979 n

end A397979

/-! ## A397979.P9399412948407922227

`A301292(n)-(n+1)²`
-/

namespace A397979.P9399412948407922227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301292 n - ((n + 1) ^ 2 : ℤ)

end

end A397979.P9399412948407922227

namespace A397979

/-- `A301292(n)-(n+1)²` -/
def P9399412948407922227.Spec : Prop :=
  ∀ n, P9399412948407922227.a n = A397979 n

end A397979

/-! ## A397979.P6193808705920575187

`∑[A301291(n)]-(n+1)²`
-/

namespace A397979.P6193808705920575187
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301291 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - ((n + 1) ^ 2 : ℤ)

end

end A397979.P6193808705920575187

namespace A397979

/-- `∑[A301291(n)]-(n+1)²` -/
def P6193808705920575187.Spec : Prop :=
  ∀ n, P6193808705920575187.a n = A397979 n

end A397979

/-! ## A397979.P1081278707775854451

`A110655(n)+A032527(n)`
-/

namespace A397979.P1081278707775854451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110655 n + A032527 n

end

end A397979.P1081278707775854451

namespace A397979

/-- `A110655(n)+A032527(n)` -/
def P1081278707775854451.Spec : Prop :=
  ∀ n, P1081278707775854451.a n = A397979 n

end A397979

/-! ## A397979.P14247829423364699317

`A173562(n)+A008811(n)`
-/

namespace A397979.P14247829423364699317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173562 n + A008811 n

end

end A397979.P14247829423364699317

namespace A397979

/-- `A173562(n)+A008811(n)` -/
def P14247829423364699317.Spec : Prop :=
  ∀ n, P14247829423364699317.a n = A397979 n

end A397979

/-! ## A397979.P11185654242820656948

`A330707(n)+A104563(n)`
-/

namespace A397979.P11185654242820656948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330707 n + A104563 n

end

end A397979.P11185654242820656948

namespace A397979

/-- `A330707(n)+A104563(n)` -/
def P11185654242820656948.Spec : Prop :=
  ∀ n, P11185654242820656948.a n = A397979 n

end A397979

/-! ## A397979.P12489478691381528281

`A001105(n)-A231559(n)`
-/

namespace A397979.P12489478691381528281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001105 n - A231559 n

end

end A397979.P12489478691381528281

namespace A397979

/-- `A001105(n)-A231559(n)` -/
def P12489478691381528281.Spec : Prop :=
  ∀ n, P12489478691381528281.a n = A397979 n

end A397979

/-! ## A397979.P6265718988187979015

`A014105(n)-A281026(n)`
-/

namespace A397979.P6265718988187979015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014105 n - A281026 n

end

end A397979.P6265718988187979015

namespace A397979

/-- `A014105(n)-A281026(n)` -/
def P6265718988187979015.Spec : Prop :=
  ∀ n, P6265718988187979015.a n = A397979 n

end A397979

/-! ## A397979.P14770375866352289779

`A249547(n)-A057353(n)`
-/

namespace A397979.P14770375866352289779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249547 n - A057353 n

end

end A397979.P14770375866352289779

namespace A397979

/-- `A249547(n)-A057353(n)` -/
def P14770375866352289779.Spec : Prop :=
  ∀ n, P14770375866352289779.a n = A397979 n

end A397979

/-! ## A397979.P12191185950766982420

`A033951(n)-A301711(n)`
-/

namespace A397979.P12191185950766982420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033951 n - A301711 n

end

end A397979.P12191185950766982420

namespace A397979

/-- `A033951(n)-A301711(n)` -/
def P12191185950766982420.Spec : Prop :=
  ∀ n, P12191185950766982420.a n = A397979 n

end A397979

/-! ## A397979.P765201400733006807

`A005475(n)-A397978(n)`
-/

namespace A397979.P765201400733006807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005475 n - A397978 n

end

end A397979.P765201400733006807

namespace A397979

/-- `A005475(n)-A397978(n)` -/
def P765201400733006807.Spec : Prop :=
  ∀ n, P765201400733006807.a n = A397979 n

end A397979

/-! ## A397979.P17652186071894105919

`A049451(n)-A397984(n)`
-/

namespace A397979.P17652186071894105919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049451 n - A397984 n

end

end A397979.P17652186071894105919

namespace A397979

/-- `A049451(n)-A397984(n)` -/
def P17652186071894105919.Spec : Prop :=
  ∀ n, P17652186071894105919.a n = A397979 n

end A397979

/-! ## A397979.P2073529283704983963

`A147875(n)-A332495(n)`
-/

namespace A397979.P2073529283704983963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147875 n - A332495 n

end

end A397979.P2073529283704983963

namespace A397979

/-- `A147875(n)-A332495(n)` -/
def P2073529283704983963.Spec : Prop :=
  ∀ n, P2073529283704983963.a n = A397979 n

end A397979

/-!
# A397980: Lower (1/3,1) midsequence of triangular numbers (A000217) and squares (A000290); see Comments.

The programs for A397980, the canonical program `A397980.P11192333638417042657` is in `Seq.B000.C039`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A397980 has offset 0).

The definition of A397980 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A397980.P11192333638417042657

`2*a(n-1)-a(n-2)+a(n-3)-2*a(n-4)+a(n-5)` with `a(0)=0, a(1)=1, a(2)=5, a(3)=11, a(4)=19`

The canonical program, it is in `Seq.B000.C039`.
-/

namespace A397980

/-- `2*a(n-1)-a(n-2)+a(n-3)-2*a(n-4)+a(n-5)` -/
def P11192333638417042657.Spec : Prop :=
  ∀ n, P11192333638417042657.a n = A397980 n

theorem P11192333638417042657.correct : P11192333638417042657.Spec := by
  intro n
  simp only [A397980]

end A397980

/-! ## A397980.P15914501552790326426

`floor(∑[n/3]+n²)`
-/

namespace A397980.P15914501552790326426
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊∑ j ∈ Finset.range (n + 1), f1 j + (n ^ 2 : ℚ)⌋

end

end A397980.P15914501552790326426

namespace A397980

/-- `floor(∑[n/3]+n²)` -/
def P15914501552790326426.Spec : Prop :=
  ∀ n, P15914501552790326426.a n = A397980 n

end A397980

/-! ## A397980.P1209546452656030244

`∑[a(n-3)+7]` with `a(0)=0, a(1)=1, a(2)=4, a(3)=6`
-/

namespace A397980.P1209546452656030244
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 4, 6] fun n f1 =>
  f1 (n - 3) + 7

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A397980.P1209546452656030244

namespace A397980

/-- `∑[a(n-3)+7]` -/
def P1209546452656030244.Spec : Prop :=
  ∀ n, (P1209546452656030244.a n : ℤ) = A397980 n

end A397980

/-! ## A397980.P11206987577811115319

`∑[∑[floor(a(n-3))]]` with `a(0)=0, a(1)=1, a(2)=3, a(3)=2, a(4)=2`

`floor` is left out, it is the identity on integers.
-/

namespace A397980.P11206987577811115319
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 3, 2, 2] fun n f2 =>
  f2 (n - 3)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A397980.P11206987577811115319

namespace A397980

/-- `∑[∑[floor(a(n-3))]]` -/
def P11206987577811115319.Spec : Prop :=
  ∀ n, (P11206987577811115319.a n : ℤ) = A397980 n

end A397980

/-! ## A397980.P12803614667056837395

`∑[A047386(n+1)]-n`
-/

namespace A397980.P12803614667056837395
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047386 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (n : ℤ)

end

end A397980.P12803614667056837395

namespace A397980

/-- `∑[A047386(n+1)]-n` -/
def P12803614667056837395.Spec : Prop :=
  ∀ n, P12803614667056837395.a n = A397980 n

end A397980

/-! ## A397980.P13315667962189139542

`∑[A298786(n)-(n+1)]`
-/

namespace A397980.P13315667962189139542
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298786 n - (n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A397980.P13315667962189139542

namespace A397980

/-- `∑[A298786(n)-(n+1)]` -/
def P13315667962189139542.Spec : Prop :=
  ∀ n, P13315667962189139542.a n = A397980 n

end A397980

/-! ## A397980.P215288167187325169

`A298787(n)-∑[n+1]`
-/

namespace A397980.P215288167187325169
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298787 n - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A397980.P215288167187325169

namespace A397980

/-- `A298787(n)-∑[n+1]` -/
def P215288167187325169.Spec : Prop :=
  ∀ n, P215288167187325169.a n = A397980 n

end A397980

/-! ## A397980.P6281860043458974871

`A389142(n)+A071619(n)`
-/

namespace A397980.P6281860043458974871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389142 n + A071619 n

end

end A397980.P6281860043458974871

namespace A397980

/-- `A389142(n)+A071619(n)` -/
def P6281860043458974871.Spec : Prop :=
  ∀ n, P6281860043458974871.a n = A397980 n

end A397980

/-! ## A397980.P2670693100718117781

`A393678(n)+A374702(n)`
-/

namespace A397980.P2670693100718117781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A393678 n + A374702 n

end

end A397980.P2670693100718117781

namespace A397980

/-- `A393678(n)+A374702(n)` -/
def P2670693100718117781.Spec : Prop :=
  ∀ n, P2670693100718117781.a n = A397980 n

end A397980

/-! ## A397980.P3146281384983264296

`A005891(n)-A212978(n)`
-/

namespace A397980.P3146281384983264296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005891 n - A212978 n

end

end A397980.P3146281384983264296

namespace A397980

/-- `A005891(n)-A212978(n)` -/
def P3146281384983264296.Spec : Prop :=
  ∀ n, P3146281384983264296.a n = A397980 n

end A397980

/-! ## A397980.P15573357127465537937

`A008748(n)-A258837(n)`
-/

namespace A397980.P15573357127465537937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008748 n - A258837 n

end

end A397980.P15573357127465537937

namespace A397980

/-- `A008748(n)-A258837(n)` -/
def P15573357127465537937.Spec : Prop :=
  ∀ n, P15573357127465537937.a n = A397980 n

end A397980

/-! ## A397980.P1422388318951949174

`A147875(n)-A211480(n)`
-/

namespace A397980.P1422388318951949174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147875 n - A211480 n

end

end A397980.P1422388318951949174

namespace A397980

/-- `A147875(n)-A211480(n)` -/
def P1422388318951949174.Spec : Prop :=
  ∀ n, P1422388318951949174.a n = A397980 n

end A397980

/-! ## A397980.P17592507825279947055

`A222170(n)-A171452(n)`
-/

namespace A397980.P17592507825279947055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222170 n - A171452 n

end

end A397980.P17592507825279947055

namespace A397980

/-- `A222170(n)-A171452(n)` -/
def P17592507825279947055.Spec : Prop :=
  ∀ n, P17592507825279947055.a n = A397980 n

end A397980

/-! ## A397980.P5134414699634737538

`A397974(n)-A002264(n)`
-/

namespace A397980.P5134414699634737538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A397974 n - A002264 n

end

end A397980.P5134414699634737538

namespace A397980

/-- `A397974(n)-A002264(n)` -/
def P5134414699634737538.Spec : Prop :=
  ∀ n, P5134414699634737538.a n = A397980 n

end A397980

/-! ## A397980.P5025012178491405453

`A005475(n)-A397983(n)`
-/

namespace A397980.P5025012178491405453
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005475 n - A397983 n

end

end A397980.P5025012178491405453

namespace A397980

/-- `A005475(n)-A397983(n)` -/
def P5025012178491405453.Spec : Prop :=
  ∀ n, P5025012178491405453.a n = A397980 n

end A397980

/-! ## A397980.P1737465842557491331

`A302588(n)-A168053(n)`
-/

namespace A397980.P1737465842557491331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302588 n - A168053 n

end

end A397980.P1737465842557491331

namespace A397980

/-- `A302588(n)-A168053(n)` -/
def P1737465842557491331.Spec : Prop :=
  ∀ n, P1737465842557491331.a n = A397980 n

end A397980

/-! ## A397980.P12656048731682162193

`A134238(n+1)-A008577(n)`
-/

namespace A397980.P12656048731682162193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134238 (n + 1) - A008577 n

end

end A397980.P12656048731682162193

namespace A397980

/-- `A134238(n+1)-A008577(n)` -/
def P12656048731682162193.Spec : Prop :=
  ∀ n, P12656048731682162193.a n = A397980 n

end A397980

/-! ## A397980.P17443306643845575675

`A058937(n+1)-A110331(n)`
-/

namespace A397980.P17443306643845575675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058937 (n + 1) - A110331 n

end

end A397980.P17443306643845575675

namespace A397980

/-- `A058937(n+1)-A110331(n)` -/
def P17443306643845575675.Spec : Prop :=
  ∀ n, P17443306643845575675.a n = A397980 n

end A397980

/-!
# A397981: Upper (1/3,1) midsequence of triangular numbers (A000217) and squares (A000290); see Comments.

The programs for A397981, the canonical program `A397981.P14393984382924941802` is in `Seq.B000.C039`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A397981 has offset 0).

The definition of A397981 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A397981.P14393984382924941802

`2*a(n-1)-a(n-2)+a(n-3)-2*a(n-4)+a(n-5)` with `a(0)=0, a(1)=2, a(2)=5, a(3)=11, a(4)=20`

The canonical program, it is in `Seq.B000.C039`.
-/

namespace A397981

/-- `2*a(n-1)-a(n-2)+a(n-3)-2*a(n-4)+a(n-5)` -/
def P14393984382924941802.Spec : Prop :=
  ∀ n, P14393984382924941802.a n = A397981 n

theorem P14393984382924941802.correct : P14393984382924941802.Spec := by
  intro n
  simp only [A397981]

end A397981

/-! ## A397981.P9322451411503423946

`ceil(∑[n/3]+n²)`
-/

namespace A397981.P9322451411503423946
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈∑ j ∈ Finset.range (n + 1), f1 j + (n ^ 2 : ℚ)⌉

end

end A397981.P9322451411503423946

namespace A397981

/-- `ceil(∑[n/3]+n²)` -/
def P9322451411503423946.Spec : Prop :=
  ∀ n, P9322451411503423946.a n = A397981 n

end A397981

/-! ## A397981.P7666901799187638445

`∑[a(n-3)+7]` with `a(0)=0, a(1)=2, a(2)=3, a(3)=6`
-/

namespace A397981.P7666901799187638445
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 2, 3, 6] fun n f1 =>
  f1 (n - 3) + 7

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A397981.P7666901799187638445

namespace A397981

/-- `∑[a(n-3)+7]` -/
def P7666901799187638445.Spec : Prop :=
  ∀ n, (P7666901799187638445.a n : ℤ) = A397981 n

end A397981

/-! ## A397981.P2759768258000872615

`∑[∑[floor(a(n-3))]]` with `a(0)=0, a(1)=2, a(2)=1, a(3)=3, a(4)=3`

`floor` is left out, it is the identity on integers.
-/

namespace A397981.P2759768258000872615
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [0, 2, 1, 3, 3] fun n f2 =>
  f2 (n - 3)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A397981.P2759768258000872615

namespace A397981

/-- `∑[∑[floor(a(n-3))]]` -/
def P2759768258000872615.Spec : Prop :=
  ∀ n, (P2759768258000872615.a n : ℤ) = A397981 n

end A397981

/-! ## A397981.P18436040737916221759

`∑[A047342(n+1)]-n`
-/

namespace A397981.P18436040737916221759
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047342 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (n : ℤ)

end

end A397981.P18436040737916221759

namespace A397981

/-- `∑[A047342(n+1)]-n` -/
def P18436040737916221759.Spec : Prop :=
  ∀ n, P18436040737916221759.a n = A397981 n

end A397981

/-! ## A397981.P11793346351849852928

`∑[A298784(n)-(n+1)]`
-/

namespace A397981.P11793346351849852928
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298784 n - (n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A397981.P11793346351849852928

namespace A397981

/-- `∑[A298784(n)-(n+1)]` -/
def P11793346351849852928.Spec : Prop :=
  ∀ n, P11793346351849852928.a n = A397981 n

end A397981

/-! ## A397981.P6784135242620819388

`A298785(n)-∑[n+1]`
-/

namespace A397981.P6784135242620819388
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298785 n - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A397981.P6784135242620819388

namespace A397981

/-- `A298785(n)-∑[n+1]` -/
def P6784135242620819388.Spec : Prop :=
  ∀ n, P6784135242620819388.a n = A397981 n

end A397981

/-! ## A397981.P17848681016478026429

`A014105(n)-A194275(n)`
-/

namespace A397981.P17848681016478026429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014105 n - A194275 n

end

end A397981.P17848681016478026429

namespace A397981

/-- `A014105(n)-A194275(n)` -/
def P17848681016478026429.Spec : Prop :=
  ∀ n, P17848681016478026429.a n = A397981 n

end A397981

/-! ## A397981.P5282828045445322431

`A104249(n)-A208994(n)`
-/

namespace A397981.P5282828045445322431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104249 n - A208994 n

end

end A397981.P5282828045445322431

namespace A397981

/-- `A104249(n)-A208994(n)` -/
def P5282828045445322431.Spec : Prop :=
  ∀ n, P5282828045445322431.a n = A397981 n

end A397981

/-! ## A397981.P7187270562912159311

`A005475(n)-A397982(n)`
-/

namespace A397981.P7187270562912159311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005475 n - A397982 n

end

end A397981.P7187270562912159311

namespace A397981

/-- `A005475(n)-A397982(n)` -/
def P7187270562912159311.Spec : Prop :=
  ∀ n, P7187270562912159311.a n = A397981 n

end A397981

/-! ## A397981.P13123516919295782241

`A397973(n)+A128422(n+1)`
-/

namespace A397981.P13123516919295782241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A397973 n + A128422 (n + 1)

end

end A397981.P13123516919295782241

namespace A397981

/-- `A397973(n)+A128422(n+1)` -/
def P13123516919295782241.Spec : Prop :=
  ∀ n, P13123516919295782241.a n = A397981 n

end A397981

/-! ## A397981.P3864972832430207071

`A045943(n)-A071408(n+1)`
-/

namespace A397981.P3864972832430207071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045943 n - A071408 (n + 1)

end

end A397981.P3864972832430207071

namespace A397981

/-- `A045943(n)-A071408(n+1)` -/
def P3864972832430207071.Spec : Prop :=
  ∀ n, P3864972832430207071.a n = A397981 n

end A397981

/-! ## A397981.P14528174573994685933

`A213495(n)-A001651(n+1)`
-/

namespace A397981.P14528174573994685933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213495 n - A001651 (n + 1)

end

end A397981.P14528174573994685933

namespace A397981

/-- `A213495(n)-A001651(n+1)` -/
def P14528174573994685933.Spec : Prop :=
  ∀ n, P14528174573994685933.a n = A397981 n

end A397981

/-! ## A397981.P9258545070191374661

`A147623(n)-A007997(n+3)`
-/

namespace A397981.P9258545070191374661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147623 n - A007997 (n + 3)

end

end A397981.P9258545070191374661

namespace A397981

/-- `A147623(n)-A007997(n+3)` -/
def P9258545070191374661.Spec : Prop :=
  ∀ n, P9258545070191374661.a n = A397981 n

end A397981

/-! ## A397981.P18324336783465802655

`A000217(2*n)-A194275(n)`
-/

namespace A397981.P18324336783465802655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (2 * n) - A194275 n

end

end A397981.P18324336783465802655

namespace A397981

/-- `A000217(2*n)-A194275(n)` -/
def P18324336783465802655.Spec : Prop :=
  ∀ n, P18324336783465802655.a n = A397981 n

end A397981

/-! ## A397981.P12607202322574663191

`A058212(n+2)+n²`
-/

namespace A397981.P12607202322574663191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058212 (n + 2) + (n ^ 2 : ℤ)

end

end A397981.P12607202322574663191

namespace A397981

/-- `A058212(n+2)+n²` -/
def P12607202322574663191.Spec : Prop :=
  ∀ n, P12607202322574663191.a n = A397981 n

end A397981

/-! ## A397981.P6299474955803488134

`Δ[A061866(n+1)]+n²`
-/

namespace A397981.P6299474955803488134
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061866 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + (n ^ 2 : ℤ)

end

end A397981.P6299474955803488134

namespace A397981

/-- `Δ[A061866(n+1)]+n²` -/
def P6299474955803488134.Spec : Prop :=
  ∀ n, P6299474955803488134.a n = A397981 n

end A397981

/-! ## A397981.P5480054044988435449

`A114208(Δ[n²])-1`
-/

namespace A397981.P5480054044988435449
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114208 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat - 1

end

end A397981.P5480054044988435449

namespace A397981

/-- `A114208(Δ[n²])-1` -/
def P5480054044988435449.Spec : Prop :=
  ∀ n, P5480054044988435449.a n = A397981 n

end A397981

/-! ## A397981.P13009767617860563312

`A212987(2*n+1)-(2*n+1)`
-/

namespace A397981.P13009767617860563312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212987 (2 * n + 1) - (2 * n + 1 : ℤ)

end

end A397981.P13009767617860563312

namespace A397981

/-- `A212987(2*n+1)-(2*n+1)` -/
def P13009767617860563312.Spec : Prop :=
  ∀ n, P13009767617860563312.a n = A397981 n

end A397981

/-!
# A397982: Lower (2/3,1) midsequence of triangular numbers (A000217) and squares (A000290); see Comments.

The programs for A397982, the canonical program `A397982.P9815716747188698397` is in `Seq.B000.C039`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A397982 has offset 0).

The definition of A397982 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A397982.P9815716747188698397

`2*a(n-1)-a(n-2)+a(n-3)-2*a(n-4)+a(n-5)` with `a(0)=0, a(1)=1, a(2)=6, a(3)=13, a(4)=22`

The canonical program, it is in `Seq.B000.C039`.
-/

namespace A397982

/-- `2*a(n-1)-a(n-2)+a(n-3)-2*a(n-4)+a(n-5)` -/
def P9815716747188698397.Spec : Prop :=
  ∀ n, P9815716747188698397.a n = A397982 n

theorem P9815716747188698397.correct : P9815716747188698397.Spec := by
  intro n
  simp only [A397982]

end A397982

/-! ## A397982.P5102211327545129946

`floor(((2*n)²+n)/3)`
-/

namespace A397982.P5102211327545129946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((2 * n) ^ 2 + n : ℚ) / 3⌋

end

end A397982.P5102211327545129946

namespace A397982

/-- `floor(((2*n)²+n)/3)` -/
def P5102211327545129946.Spec : Prop :=
  ∀ n, P5102211327545129946.a n = A397982 n

end A397982

/-! ## A397982.P1835111182367403493

`∑[a(n-3)+8]` with `a(0)=0, a(1)=1, a(2)=5, a(3)=7`
-/

namespace A397982.P1835111182367403493
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 5, 7] fun n f1 =>
  f1 (n - 3) + 8

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A397982.P1835111182367403493

namespace A397982

/-- `∑[a(n-3)+8]` -/
def P1835111182367403493.Spec : Prop :=
  ∀ n, (P1835111182367403493.a n : ℤ) = A397982 n

end A397982

/-! ## A397982.P8371667100917408919

`∑[∑[floor(a(n-3))]]` with `a(0)=0, a(1)=1, a(2)=4, a(3)=2, a(4)=2`

`floor` is left out, it is the identity on integers.
-/

namespace A397982.P8371667100917408919
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 4, 2, 2] fun n f2 =>
  f2 (n - 3)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A397982.P8371667100917408919

namespace A397982

/-- `∑[∑[floor(a(n-3))]]` -/
def P8371667100917408919.Spec : Prop :=
  ∀ n, (P8371667100917408919.a n : ℤ) = A397982 n

end A397982

/-! ## A397982.P8512491430768262180

`round((lcm(2*n+1, 2*n)-(n+1))/3)`
-/

namespace A397982.P8512491430768262180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (((Nat.lcm (2 * n + 1) (2 * n) : ℤ) - (n + 1 : ℤ) : ℚ) / 3)

end

end A397982.P8512491430768262180

namespace A397982

/-- `round((lcm(2*n+1, 2*n)-(n+1))/3)` -/
def P8512491430768262180.Spec : Prop :=
  ∀ n, P8512491430768262180.a n = A397982 n

end A397982

/-! ## A397982.P9191653149011166528

`A298025(n)-(n+1)²`
-/

namespace A397982.P9191653149011166528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298025 n - ((n + 1) ^ 2 : ℤ)

end

end A397982.P9191653149011166528

namespace A397982

/-- `A298025(n)-(n+1)²` -/
def P9191653149011166528.Spec : Prop :=
  ∀ n, P9191653149011166528.a n = A397982 n

end A397982

/-! ## A397982.P8708497884249538815

`∑[A047395(n+1)]-n`
-/

namespace A397982.P8708497884249538815
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047395 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (n : ℤ)

end

end A397982.P8708497884249538815

namespace A397982

/-- `∑[A047395(n+1)]-n` -/
def P8708497884249538815.Spec : Prop :=
  ∀ n, P8708497884249538815.a n = A397982 n

end A397982

/-! ## A397982.P1365225770067637639

`∑[A298024(n)]-(n+1)²`
-/

namespace A397982.P1365225770067637639
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298024 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - ((n + 1) ^ 2 : ℤ)

end

end A397982.P1365225770067637639

namespace A397982

/-- `∑[A298024(n)]-(n+1)²` -/
def P1365225770067637639.Spec : Prop :=
  ∀ n, P1365225770067637639.a n = A397982 n

end A397982

/-! ## A397982.P1327995265185049873

`A194275(n)+A161680(n)`
-/

namespace A397982.P1327995265185049873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194275 n + A161680 n

end

end A397982.P1327995265185049873

namespace A397982

/-- `A194275(n)+A161680(n)` -/
def P1327995265185049873.Spec : Prop :=
  ∀ n, P1327995265185049873.a n = A397982 n

end A397982

/-! ## A397982.P7680943535117910431

`A008577(n)-A092200(n)`
-/

namespace A397982.P7680943535117910431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008577 n - A092200 n

end

end A397982.P7680943535117910431

namespace A397982

/-- `A008577(n)-A092200(n)` -/
def P7680943535117910431.Spec : Prop :=
  ∀ n, P7680943535117910431.a n = A397982 n

end A397982

/-! ## A397982.P8994322667329374289

`A033951(n)-A301695(n)`
-/

namespace A397982.P8994322667329374289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033951 n - A301695 n

end

end A397982.P8994322667329374289

namespace A397982

/-- `A033951(n)-A301695(n)` -/
def P8994322667329374289.Spec : Prop :=
  ∀ n, P8994322667329374289.a n = A397982 n

end A397982

/-! ## A397982.P18350683392814713063

`A056109(n)-A298785(n)`
-/

namespace A397982.P18350683392814713063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056109 n - A298785 n

end

end A397982.P18350683392814713063

namespace A397982

/-- `A056109(n)-A298785(n)` -/
def P18350683392814713063.Spec : Prop :=
  ∀ n, P18350683392814713063.a n = A397982 n

end A397982

/-! ## A397982.P14519300199739640080

`A005475(n)-A397981(n)`
-/

namespace A397982.P14519300199739640080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005475 n - A397981 n

end

end A397982.P14519300199739640080

namespace A397982

/-- `A005475(n)-A397981(n)` -/
def P14519300199739640080.Spec : Prop :=
  ∀ n, P14519300199739640080.a n = A397982 n

end A397982

/-! ## A397982.P11157836965720055444

`A208994(n)-A258837(n)`
-/

namespace A397982.P11157836965720055444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208994 n - A258837 n

end

end A397982.P11157836965720055444

namespace A397982

/-- `A208994(n)-A258837(n)` -/
def P11157836965720055444.Spec : Prop :=
  ∀ n, P11157836965720055444.a n = A397982 n

end A397982

/-! ## A397982.P3396429725712085775

`A301696(n)-A212978(n)`
-/

namespace A397982.P3396429725712085775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301696 n - A212978 n

end

end A397982.P3396429725712085775

namespace A397982

/-- `A301696(n)-A212978(n)` -/
def P3396429725712085775.Spec : Prop :=
  ∀ n, P3396429725712085775.a n = A397982 n

end A397982

/-! ## A397982.P8947603936643928822

`A185669(n)%A008577(n)`
-/

namespace A397982.P8947603936643928822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A185669 n) (A008577 n)

end

end A397982.P8947603936643928822

namespace A397982

/-- `A185669(n)%A008577(n)` -/
def P8947603936643928822.Spec : Prop :=
  ∀ n, P8947603936643928822.a n = A397982 n

end A397982

/-! ## A397982.P8937385681738044980

`A256320(n)+A002264(n+1)`
-/

namespace A397982.P8937385681738044980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256320 n + A002264 (n + 1)

end

end A397982.P8937385681738044980

namespace A397982

/-- `A256320(n)+A002264(n+1)` -/
def P8937385681738044980.Spec : Prop :=
  ∀ n, P8937385681738044980.a n = A397982 n

end A397982

/-! ## A397982.P16013643072843717910

`A212978(n)-A047259(n+1)`
-/

namespace A397982.P16013643072843717910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212978 n - A047259 (n + 1)

end

end A397982.P16013643072843717910

namespace A397982

/-- `A212978(n)-A047259(n+1)` -/
def P16013643072843717910.Spec : Prop :=
  ∀ n, P16013643072843717910.a n = A397982 n

end A397982

/-! ## A397982.P5066823563677784098

`A222170(n)-A128422(n+1)`
-/

namespace A397982.P5066823563677784098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222170 n - A128422 (n + 1)

end

end A397982.P5066823563677784098

namespace A397982

/-- `A222170(n)-A128422(n+1)` -/
def P5066823563677784098.Spec : Prop :=
  ∀ n, P5066823563677784098.a n = A397982 n

end A397982

/-! ## A397982.P7156207835173275001

`A357837(n)-A047342(n+1)`
-/

namespace A397982.P7156207835173275001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357837 n - A047342 (n + 1)

end

end A397982.P7156207835173275001

namespace A397982

/-- `A357837(n)-A047342(n+1)` -/
def P7156207835173275001.Spec : Prop :=
  ∀ n, P7156207835173275001.a n = A397982 n

end A397982

/-!
# A397983: Upper (2/3,1) midsequence of triangular numbers (A000217) and squares (A000290); see Comments.

The programs for A397983, the canonical program `A397983.P11012610200060332783` is in `Seq.B000.C039`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A397983 has offset 0).

The definition of A397983 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A397983.P11012610200060332783

`2*a(n-1)-a(n-2)+a(n-3)-2*a(n-4)+a(n-5)` with `a(0)=0, a(1)=2, a(2)=6, a(3)=13, a(4)=23`

The canonical program, it is in `Seq.B000.C039`.
-/

namespace A397983

/-- `2*a(n-1)-a(n-2)+a(n-3)-2*a(n-4)+a(n-5)` -/
def P11012610200060332783.Spec : Prop :=
  ∀ n, P11012610200060332783.a n = A397983 n

theorem P11012610200060332783.correct : P11012610200060332783.Spec := by
  intro n
  simp only [A397983]

end A397983

/-! ## A397983.P3769111297973147862

`ceil(((2*n)²+n)/3)`
-/

namespace A397983.P3769111297973147862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((2 * n) ^ 2 + n : ℚ) / 3⌉

end

end A397983.P3769111297973147862

namespace A397983

/-- `ceil(((2*n)²+n)/3)` -/
def P3769111297973147862.Spec : Prop :=
  ∀ n, P3769111297973147862.a n = A397983 n

end A397983

/-! ## A397983.P18231816586421169198

`∑[a(n-3)+8]` with `a(0)=0, a(1)=2, a(2)=4, a(3)=7`
-/

namespace A397983.P18231816586421169198
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 2, 4, 7] fun n f1 =>
  f1 (n - 3) + 8

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A397983.P18231816586421169198

namespace A397983

/-- `∑[a(n-3)+8]` -/
def P18231816586421169198.Spec : Prop :=
  ∀ n, (P18231816586421169198.a n : ℤ) = A397983 n

end A397983

/-! ## A397983.P10949093033558131535

`∑[∑[floor(a(n-3))]]` with `a(0)=0, a(1)=2, a(2)=2, a(3)=3, a(4)=3`

`floor` is left out, it is the identity on integers.
-/

namespace A397983.P10949093033558131535
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [0, 2, 2, 3, 3] fun n f2 =>
  f2 (n - 3)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A397983.P10949093033558131535

namespace A397983

/-- `∑[∑[floor(a(n-3))]]` -/
def P10949093033558131535.Spec : Prop :=
  ∀ n, (P10949093033558131535.a n : ℤ) = A397983 n

end A397983

/-! ## A397983.P9138442677918211035

`round(lcm(n, 2*n+2*n+1)/3)`
-/

namespace A397983.P9138442677918211035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((Nat.lcm n (2 * n + (2 * n + 1)) : ℚ) / 3)

end

end A397983.P9138442677918211035

namespace A397983

/-- `round(lcm(n, 2*n+2*n+1)/3)` -/
def P9138442677918211035.Spec : Prop :=
  ∀ n, P9138442677918211035.a n = A397983 n

end A397983

/-! ## A397983.P688381091741735743

`floor(∑[2*C(2*n+1, 2)]/(n+2))`
-/

namespace A397983.P688381091741735743
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * Nat.choose (2 * n + 1) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) / (n + 2 : ℚ)⌋

end

end A397983.P688381091741735743

namespace A397983

/-- `floor(∑[2*C(2*n+1, 2)]/(n+2))` -/
def P688381091741735743.Spec : Prop :=
  ∀ n, P688381091741735743.a n = A397983 n

end A397983

/-! ## A397983.P16210957671258306869

`floor(∑[lcm(2*n+1, 2*n)]/(n+2))`
-/

namespace A397983.P16210957671258306869
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm (2 * n + 1) (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) / (n + 2 : ℚ)⌋

end

end A397983.P16210957671258306869

namespace A397983

/-- `floor(∑[lcm(2*n+1, 2*n)]/(n+2))` -/
def P16210957671258306869.Spec : Prop :=
  ∀ n, P16210957671258306869.a n = A397983 n

end A397983

/-! ## A397983.P2393229683123476808

`floor(∑[(2*n+1)*and(2*n+1, 2*n)]/(n+2))`
-/

namespace A397983.P2393229683123476808
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (2 * n + 1) * Nat.land (2 * n + 1) (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) / (n + 2 : ℚ)⌋

end

end A397983.P2393229683123476808

namespace A397983

/-- `floor(∑[(2*n+1)*and(2*n+1, 2*n)]/(n+2))` -/
def P2393229683123476808.Spec : Prop :=
  ∀ n, P2393229683123476808.a n = A397983 n

end A397983

/-! ## A397983.P15934716649573698110

`A211480(n)-n`
-/

namespace A397983.P15934716649573698110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211480 n - (n : ℤ)

end

end A397983.P15934716649573698110

namespace A397983

/-- `A211480(n)-n` -/
def P15934716649573698110.Spec : Prop :=
  ∀ n, P15934716649573698110.a n = A397983 n

end A397983

/-! ## A397983.P7934608513207196956

`∑[A008576(n)-1]`
-/

namespace A397983.P7934608513207196956
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008576 n - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A397983.P7934608513207196956

namespace A397983

/-- `∑[A008576(n)-1]` -/
def P7934608513207196956.Spec : Prop :=
  ∀ n, P7934608513207196956.a n = A397983 n

end A397983

/-! ## A397983.P13338530481215120345

`A008577(n)-(n+1)`
-/

namespace A397983.P13338530481215120345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008577 n - (n + 1 : ℤ)

end

end A397983.P13338530481215120345

namespace A397983

/-- `A008577(n)-(n+1)` -/
def P13338530481215120345.Spec : Prop :=
  ∀ n, P13338530481215120345.a n = A397983 n

end A397983

/-! ## A397983.P5210718124790421395

`A212978(n)-Δ[n²]`
-/

namespace A397983.P5210718124790421395
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212978 n - ((f1 (n + 1) : ℤ) - (f1 n : ℤ))

end

end A397983.P5210718124790421395

namespace A397983

/-- `A212978(n)-Δ[n²]` -/
def P5210718124790421395.Spec : Prop :=
  ∀ n, P5210718124790421395.a n = A397983 n

end A397983

/-! ## A397983.P17096872114595896724

`A365418(n)-(n+1)²`
-/

namespace A397983.P17096872114595896724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365418 n - ((n + 1) ^ 2 : ℤ)

end

end A397983.P17096872114595896724

namespace A397983

/-- `A365418(n)-(n+1)²` -/
def P17096872114595896724.Spec : Prop :=
  ∀ n, P17096872114595896724.a n = A397983 n

end A397983

/-! ## A397983.P9531461799362091267

`∑[A047622(n+1)]-n`
-/

namespace A397983.P9531461799362091267
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047622 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (n : ℤ)

end

end A397983.P9531461799362091267

namespace A397983

/-- `∑[A047622(n+1)]-n` -/
def P9531461799362091267.Spec : Prop :=
  ∀ n, P9531461799362091267.a n = A397983 n

end A397983

/-! ## A397983.P13369099054675440807

`∑[A301298(n)]-(n+1)²`
-/

namespace A397983.P13369099054675440807
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301298 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - ((n + 1) ^ 2 : ℤ)

end

end A397983.P13369099054675440807

namespace A397983

/-- `∑[A301298(n)]-(n+1)²` -/
def P13369099054675440807.Spec : Prop :=
  ∀ n, P13369099054675440807.a n = A397983 n

end A397983

/-! ## A397983.P7984143439627554301

`A147623(n)+A002264(n)`
-/

namespace A397983.P7984143439627554301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147623 n + A002264 n

end

end A397983.P7984143439627554301

namespace A397983

/-- `A147623(n)+A002264(n)` -/
def P7984143439627554301.Spec : Prop :=
  ∀ n, P7984143439627554301.a n = A397983 n

end A397983

/-! ## A397983.P8861740983833969376

`A389317(n)+A000212(n)`
-/

namespace A397983.P8861740983833969376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389317 n + A000212 n

end

end A397983.P8861740983833969376

namespace A397983

/-- `A389317(n)+A000212(n)` -/
def P8861740983833969376.Spec : Prop :=
  ∀ n, P8861740983833969376.a n = A397983 n

end A397983

/-! ## A397983.P13453421923695380827

`A389316(n)+A008810(n)`
-/

namespace A397983.P13453421923695380827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389316 n + A008810 n

end

end A397983.P13453421923695380827

namespace A397983

/-- `A389316(n)+A008810(n)` -/
def P13453421923695380827.Spec : Prop :=
  ∀ n, P13453421923695380827.a n = A397983 n

end A397983

/-! ## A397983.P1073953361826180529

`A397973(n)+A171452(n)`
-/

namespace A397983.P1073953361826180529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A397973 n + A171452 n

end

end A397983.P1073953361826180529

namespace A397983

/-- `A397973(n)+A171452(n)` -/
def P1073953361826180529.Spec : Prop :=
  ∀ n, P1073953361826180529.a n = A397983 n

end A397983

/-!
# A397984: Lower (3/2,1) midsequence of triangular numbers (A000217) and squares (A000290); see Comments.

The programs for A397984, the canonical program `A397984.P7444801838713330577` is in `Seq.B000.C039`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A397984 has offset 0).

The definition of A397984 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A397984.P7444801838713330577

`3*a(n-1)-4*a(n-2)+4*a(n-3)-3*a(n-4)+a(n-5)` with `a(0)=0, a(1)=2, a(2)=8, a(3)=18, a(4)=31`

The canonical program, it is in `Seq.B000.C039`.
-/

namespace A397984

/-- `3*a(n-1)-4*a(n-2)+4*a(n-3)-3*a(n-4)+a(n-5)` -/
def P7444801838713330577.Spec : Prop :=
  ∀ n, P7444801838713330577.a n = A397984 n

theorem P7444801838713330577.correct : P7444801838713330577.Spec := by
  intro n
  simp only [A397984]

end A397984

/-! ## A397984.P12365396487350728314

`floor(7/2*∑[n]-n)`
-/

namespace A397984.P12365396487350728314
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(7 : ℚ) / 2 * ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) - (n : ℚ)⌋

end

end A397984.P12365396487350728314

namespace A397984

/-- `floor(7/2*∑[n]-n)` -/
def P12365396487350728314.Spec : Prop :=
  ∀ n, P12365396487350728314.a n = A397984 n

end A397984

/-! ## A397984.P14947739608952479492

`∑[∑[7-a(n-2)]]` with `a(0)=0, a(1)=2, a(2)=4, a(3)=4`
-/

namespace A397984.P14947739608952479492
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [0, 2, 4, 4] fun n f2 =>
  7 - f2 (n - 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A397984.P14947739608952479492

namespace A397984

/-- `∑[∑[7-a(n-2)]]` -/
def P14947739608952479492.Spec : Prop :=
  ∀ n, P14947739608952479492.a n = A397984 n

end A397984

/-! ## A397984.P7513404671617367954

`A281026(n)+n²`
-/

namespace A397984.P7513404671617367954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281026 n + (n ^ 2 : ℤ)

end

end A397984.P7513404671617367954

namespace A397984

/-- `A281026(n)+n²` -/
def P7513404671617367954.Spec : Prop :=
  ∀ n, P7513404671617367954.a n = A397984 n

end A397984

/-! ## A397984.P8828103886526845872

`A397978(n)+∑[n]`
-/

namespace A397984.P8828103886526845872
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A397978 n + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A397984.P8828103886526845872

namespace A397984

/-- `A397978(n)+∑[n]` -/
def P8828103886526845872.Spec : Prop :=
  ∀ n, P8828103886526845872.a n = A397984 n

end A397984

/-! ## A397984.P13474104388514348429

`A301711(n)-(n+1)²`
-/

namespace A397984.P13474104388514348429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301711 n - ((n + 1) ^ 2 : ℤ)

end

end A397984.P13474104388514348429

namespace A397984

/-- `A301711(n)-(n+1)²` -/
def P13474104388514348429.Spec : Prop :=
  ∀ n, P13474104388514348429.a n = A397984 n

end A397984

/-! ## A397984.P12033771105559405700

`∑[A301293(n)-(n+1)]`
-/

namespace A397984.P12033771105559405700
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301293 n - (n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A397984.P12033771105559405700

namespace A397984

/-- `∑[A301293(n)-(n+1)]` -/
def P12033771105559405700.Spec : Prop :=
  ∀ n, P12033771105559405700.a n = A397984 n

end A397984

/-! ## A397984.P14444650840673141318

`A301294(n)-∑[n+1]`
-/

namespace A397984.P14444650840673141318
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301294 n - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A397984.P14444650840673141318

namespace A397984

/-- `A301294(n)-∑[n+1]` -/
def P14444650840673141318.Spec : Prop :=
  ∀ n, P14444650840673141318.a n = A397984 n

end A397984

/-! ## A397984.P7717419164821633852

`A231559(n)+n²+n`
-/

namespace A397984.P7717419164821633852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231559 n + (n ^ 2 + n : ℤ)

end

end A397984.P7717419164821633852

namespace A397984

/-- `A231559(n)+n²+n` -/
def P7717419164821633852.Spec : Prop :=
  ∀ n, P7717419164821633852.a n = A397984 n

end A397984

/-! ## A397984.P7086171660958396813

`∑[A047273(n+1)]+n²`
-/

namespace A397984.P7086171660958396813
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047273 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n ^ 2 : ℤ)

end

end A397984.P7086171660958396813

namespace A397984

/-- `∑[A047273(n+1)]+n²` -/
def P7086171660958396813.Spec : Prop :=
  ∀ n, P7086171660958396813.a n = A397984 n

end A397984

/-! ## A397984.P11602068442659416979

`A332495(n)+A161680(n)`
-/

namespace A397984.P11602068442659416979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332495 n + A161680 n

end

end A397984.P11602068442659416979

namespace A397984

/-- `A332495(n)+A161680(n)` -/
def P11602068442659416979.Spec : Prop :=
  ∀ n, P11602068442659416979.a n = A397984 n

end A397984

/-! ## A397984.P9432130481971793054

`A397986(n)+A397975(n)`
-/

namespace A397984.P9432130481971793054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A397986 n + A397975 n

end

end A397984.P9432130481971793054

namespace A397984

/-- `A397986(n)+A397975(n)` -/
def P9432130481971793054.Spec : Prop :=
  ∀ n, P9432130481971793054.a n = A397984 n

end A397984

/-! ## A397984.P5856557868673294070

`A033951(n)-A301292(n)`
-/

namespace A397984.P5856557868673294070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033951 n - A301292 n

end

end A397984.P5856557868673294070

namespace A397984

/-- `A033951(n)-A301292(n)` -/
def P5856557868673294070.Spec : Prop :=
  ∀ n, P5856557868673294070.a n = A397984 n

end A397984

/-! ## A397984.P1850450875354330282

`A005475(n)-A340648(n)`
-/

namespace A397984.P1850450875354330282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005475 n - A340648 n

end

end A397984.P1850450875354330282

namespace A397984

/-- `A005475(n)-A340648(n)` -/
def P1850450875354330282.Spec : Prop :=
  ∀ n, P1850450875354330282.a n = A397984 n

end A397984

/-! ## A397984.P8186050727243950579

`A081267(n)-A301709(n)`
-/

namespace A397984.P8186050727243950579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081267 n - A301709 n

end

end A397984.P8186050727243950579

namespace A397984

/-- `A081267(n)-A301709(n)` -/
def P8186050727243950579.Spec : Prop :=
  ∀ n, P8186050727243950579.a n = A397984 n

end A397984

/-! ## A397984.P15649789484851205809

`A049451(n)-A397979(n)`
-/

namespace A397984.P15649789484851205809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049451 n - A397979 n

end

end A397984.P15649789484851205809

namespace A397984

/-- `A049451(n)-A397979(n)` -/
def P15649789484851205809.Spec : Prop :=
  ∀ n, P15649789484851205809.a n = A397984 n

end A397984

/-! ## A397984.P13895988893350360575

`A293296(n)-A182568(n)`
-/

namespace A397984.P13895988893350360575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293296 n - A182568 n

end

end A397984.P13895988893350360575

namespace A397984

/-- `A293296(n)-A182568(n)` -/
def P13895988893350360575.Spec : Prop :=
  ∀ n, P13895988893350360575.a n = A397984 n

end A397984

/-! ## A397984.P16571190499599095012

`A186029(n)-A397985(n)`
-/

namespace A397984.P16571190499599095012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186029 n - A397985 n

end

end A397984.P16571190499599095012

namespace A397984

/-- `A186029(n)-A397985(n)` -/
def P16571190499599095012.Spec : Prop :=
  ∀ n, P16571190499599095012.a n = A397984 n

end A397984

/-! ## A397984.P18100308315957933408

`A028895(n)-A024219(n+1)`
-/

namespace A397984.P18100308315957933408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028895 n - A024219 (n + 1)

end

end A397984.P18100308315957933408

namespace A397984

/-- `A028895(n)-A024219(n+1)` -/
def P18100308315957933408.Spec : Prop :=
  ∀ n, P18100308315957933408.a n = A397984 n

end A397984

/-! ## A397984.P4766558521363697080

`A271937(n)-A047329(n+1)`
-/

namespace A397984.P4766558521363697080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271937 n - A047329 (n + 1)

end

end A397984.P4766558521363697080

namespace A397984

/-- `A271937(n)-A047329(n+1)` -/
def P4766558521363697080.Spec : Prop :=
  ∀ n, P4766558521363697080.a n = A397984 n

end A397984

/-!
# A397985: Upper (3/2,1) midsequence of triangular numbers (A000217) and squares (A000290); see Comments.

The programs for A397985, the canonical program `A397985.P8730540323721886037` is in `Seq.B000.C039`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A397985 has offset 0).

The definition of A397985 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A397985.P8730540323721886037

`3*a(n-1)-4*a(n-2)+4*a(n-3)-3*a(n-4)+a(n-5)` with `a(0)=0, a(1)=3, a(2)=9, a(3)=18, a(4)=31`

The canonical program, it is in `Seq.B000.C039`.
-/

namespace A397985

/-- `3*a(n-1)-4*a(n-2)+4*a(n-3)-3*a(n-4)+a(n-5)` -/
def P8730540323721886037.Spec : Prop :=
  ∀ n, P8730540323721886037.a n = A397985 n

theorem P8730540323721886037.correct : P8730540323721886037.Spec := by
  intro n
  simp only [A397985]

end A397985

/-! ## A397985.P812375056805615808

`∑[∑[7-a(n-2)]]` with `a(0)=0, a(1)=3, a(2)=3, a(3)=3`
-/

namespace A397985.P812375056805615808
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [0, 3, 3, 3] fun n f2 =>
  7 - f2 (n - 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A397985.P812375056805615808

namespace A397985

/-- `∑[∑[7-a(n-2)]]` -/
def P812375056805615808.Spec : Prop :=
  ∀ n, P812375056805615808.a n = A397985 n

end A397985

/-! ## A397985.P10181111726332921551

`floor((∑[n+1]+3*n²)/2)`
-/

namespace A397985.P10181111726332921551
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((∑ j ∈ Finset.range (n + 1), f1 j + 3 * n ^ 2 : ℕ) : ℚ) / 2⌋

end

end A397985.P10181111726332921551

namespace A397985

/-- `floor((∑[n+1]+3*n²)/2)` -/
def P10181111726332921551.Spec : Prop :=
  ∀ n, P10181111726332921551.a n = A397985 n

end A397985

/-! ## A397985.P14710557097513180178

`C(2*n+1, 2)-floor(∑[n/2])`
-/

namespace A397985.P14710557097513180178
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose (2 * n + 1) 2 : ℤ) - ⌊∑ j ∈ Finset.range (n + 1), f1 j⌋

end

end A397985.P14710557097513180178

namespace A397985

/-- `C(2*n+1, 2)-floor(∑[n/2])` -/
def P14710557097513180178.Spec : Prop :=
  ∀ n, P14710557097513180178.a n = A397985 n

end A397985

/-! ## A397985.P12397470307003549576

`A397979(n)+∑[n]`
-/

namespace A397985.P12397470307003549576
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A397979 n + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A397985.P12397470307003549576

namespace A397985

/-- `A397979(n)+∑[n]` -/
def P12397470307003549576.Spec : Prop :=
  ∀ n, P12397470307003549576.a n = A397985 n

end A397985

/-! ## A397985.P14535360972775842885

`A301709(n)-(n+1)²`
-/

namespace A397985.P14535360972775842885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301709 n - ((n + 1) ^ 2 : ℤ)

end

end A397985.P14535360972775842885

namespace A397985

/-- `A301709(n)-(n+1)²` -/
def P14535360972775842885.Spec : Prop :=
  ∀ n, P14535360972775842885.a n = A397985 n

end A397985

/-! ## A397985.P5139088681777822128

`∑[A301291(n)-(n+1)]`
-/

namespace A397985.P5139088681777822128
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301291 n - (n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A397985.P5139088681777822128

namespace A397985

/-- `∑[A301291(n)-(n+1)]` -/
def P5139088681777822128.Spec : Prop :=
  ∀ n, P5139088681777822128.a n = A397985 n

end A397985

/-! ## A397985.P2684164233439443194

`A301292(n)-∑[n+1]`
-/

namespace A397985.P2684164233439443194
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301292 n - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A397985.P2684164233439443194

namespace A397985

/-- `A301292(n)-∑[n+1]` -/
def P2684164233439443194.Spec : Prop :=
  ∀ n, P2684164233439443194.a n = A397985 n

end A397985

/-! ## A397985.P5772374514317339212

`A340648(n)+n²+n`
-/

namespace A397985.P5772374514317339212
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340648 n + (n ^ 2 + n : ℤ)

end

end A397985.P5772374514317339212

namespace A397985

/-- `A340648(n)+n²+n` -/
def P5772374514317339212.Spec : Prop :=
  ∀ n, P5772374514317339212.a n = A397985 n

end A397985

/-! ## A397985.P14787176106751340598

`∑[A047229(n+1)]+n²`
-/

namespace A397985.P14787176106751340598
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047229 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n ^ 2 : ℤ)

end

end A397985.P14787176106751340598

namespace A397985

/-- `∑[A047229(n+1)]+n²` -/
def P14787176106751340598.Spec : Prop :=
  ∀ n, P14787176106751340598.a n = A397985 n

end A397985

/-! ## A397985.P13925162805279810922

`A005475(n)-A231559(n)`
-/

namespace A397985.P13925162805279810922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005475 n - A231559 n

end

end A397985.P13925162805279810922

namespace A397985

/-- `A005475(n)-A231559(n)` -/
def P13925162805279810922.Spec : Prop :=
  ∀ n, P13925162805279810922.a n = A397985 n

end A397985

/-! ## A397985.P13679828930558197025

`A033951(n)-A301294(n)`
-/

namespace A397985.P13679828930558197025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033951 n - A301294 n

end

end A397985.P13679828930558197025

namespace A397985

/-- `A033951(n)-A301294(n)` -/
def P13679828930558197025.Spec : Prop :=
  ∀ n, P13679828930558197025.a n = A397985 n

end A397985

/-! ## A397985.P6130795852167941463

`A045944(n)-A332495(n)`
-/

namespace A397985.P6130795852167941463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045944 n - A332495 n

end

end A397985.P6130795852167941463

namespace A397985

/-- `A045944(n)-A332495(n)` -/
def P6130795852167941463.Spec : Prop :=
  ∀ n, P6130795852167941463.a n = A397985 n

end A397985

/-! ## A397985.P16226712591742126177

`A081267(n)-A301711(n)`
-/

namespace A397985.P16226712591742126177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081267 n - A301711 n

end

end A397985.P16226712591742126177

namespace A397985

/-- `A081267(n)-A301711(n)` -/
def P16226712591742126177.Spec : Prop :=
  ∀ n, P16226712591742126177.a n = A397985 n

end A397985

/-! ## A397985.P14225800342084853325

`A147875(n)-A281026(n)`
-/

namespace A397985.P14225800342084853325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147875 n - A281026 n

end

end A397985.P14225800342084853325

namespace A397985

/-- `A147875(n)-A281026(n)` -/
def P14225800342084853325.Spec : Prop :=
  ∀ n, P14225800342084853325.a n = A397985 n

end A397985

/-! ## A397985.P8433413198867200974

`A049451(n)-A397978(n)`
-/

namespace A397985.P8433413198867200974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049451 n - A397978 n

end

end A397985.P8433413198867200974

namespace A397985

/-- `A049451(n)-A397978(n)` -/
def P8433413198867200974.Spec : Prop :=
  ∀ n, P8433413198867200974.a n = A397985 n

end A397985

/-! ## A397985.P17816515762078960043

`A186029(n)-A397984(n)`
-/

namespace A397985.P17816515762078960043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186029 n - A397984 n

end

end A397985.P17816515762078960043

namespace A397985

/-- `A186029(n)-A397984(n)` -/
def P17816515762078960043.Spec : Prop :=
  ∀ n, P17816515762078960043.a n = A397985 n

end A397985

/-! ## A397985.P12505034294383596527

`A054925(n+1)+A005449(n)`
-/

namespace A397985.P12505034294383596527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054925 (n + 1) + A005449 n

end

end A397985.P12505034294383596527

namespace A397985

/-- `A054925(n+1)+A005449(n)` -/
def P12505034294383596527.Spec : Prop :=
  ∀ n, P12505034294383596527.a n = A397985 n

end A397985

/-! ## A397985.P8395771994595770836

`A397978(n)+A192447(n+1)`
-/

namespace A397985.P8395771994595770836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A397978 n + A192447 (n + 1)

end

end A397985.P8395771994595770836

namespace A397985

/-- `A397978(n)+A192447(n+1)` -/
def P8395771994595770836.Spec : Prop :=
  ∀ n, P8395771994595770836.a n = A397985 n

end A397985

/-! ## A397985.P1355560421600224964

`A271937(n)-A047294(n+1)`
-/

namespace A397985.P1355560421600224964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271937 n - A047294 (n + 1)

end

end A397985.P1355560421600224964

namespace A397985

/-- `A271937(n)-A047294(n+1)` -/
def P1355560421600224964.Spec : Prop :=
  ∀ n, P1355560421600224964.a n = A397985 n

end A397985

/-!
# A397986: Lower (1/2,1/3) midsequence of triangular numbers (A000217) and squares (A000290); see Comments.

The programs for A397986, the canonical program `A397986.P9100517263041861075` is in `Seq.B000.C039`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A397986 has offset 0).

The definition of A397986 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A397986.P9100517263041861075

`floor(∑[n/2]+n²/3)`

The canonical program, it is in `Seq.B000.C039`.
-/

namespace A397986

/-- `floor(∑[n/2]+n²/3)` -/
def P9100517263041861075.Spec : Prop :=
  ∀ n, P9100517263041861075.a n = A397986 n

theorem P9100517263041861075.correct : P9100517263041861075.Spec := by
  intro n
  simp only [A397986]

end A397986

/-! ## A397986.P13581172253821103508

`A082645(n)+A014591(n)`
-/

namespace A397986.P13581172253821103508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082645 n + A014591 n

end

end A397986.P13581172253821103508

namespace A397986

/-- `A082645(n)+A014591(n)` -/
def P13581172253821103508.Spec : Prop :=
  ∀ n, P13581172253821103508.a n = A397986 n

end A397986

/-! ## A397986.P13333857493156113093

`A069905(n)+A038707(n)`
-/

namespace A397986.P13333857493156113093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069905 n + A038707 n

end

end A397986.P13333857493156113093

namespace A397986

/-- `A069905(n)+A038707(n)` -/
def P13333857493156113093.Spec : Prop :=
  ∀ n, P13333857493156113093.a n = A397986 n

end A397986

/-! ## A397986.P13053220886161948549

`A281026(n)-A001840(n)`
-/

namespace A397986.P13053220886161948549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281026 n - A001840 n

end

end A397986.P13053220886161948549

namespace A397986

/-- `A281026(n)-A001840(n)` -/
def P13053220886161948549.Spec : Prop :=
  ∀ n, P13053220886161948549.a n = A397986 n

end A397986

/-! ## A397986.P14539548733694296592

`A397978(n)-A071619(n)`
-/

namespace A397986.P14539548733694296592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A397978 n - A071619 n

end

end A397986.P14539548733694296592

namespace A397986

/-- `A397978(n)-A071619(n)` -/
def P14539548733694296592.Spec : Prop :=
  ∀ n, P14539548733694296592.a n = A397986 n

end A397986

/-! ## A397986.P2663408778186545003

`A256320(n)-A340648(n)`
-/

namespace A397986.P2663408778186545003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256320 n - A340648 n

end

end A397986.P2663408778186545003

namespace A397986

/-- `A256320(n)-A340648(n)` -/
def P2663408778186545003.Spec : Prop :=
  ∀ n, P2663408778186545003.a n = A397986 n

end A397986

/-! ## A397986.P15964744926317832053

`A332495(n)-A320259(n)`
-/

namespace A397986.P15964744926317832053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332495 n - A320259 n

end

end A397986.P15964744926317832053

namespace A397986

/-- `A332495(n)-A320259(n)` -/
def P15964744926317832053.Spec : Prop :=
  ∀ n, P15964744926317832053.a n = A397986 n

end A397986

/-! ## A397986.P6997515217053611426

`A397984(n)-A397975(n)`
-/

namespace A397986.P6997515217053611426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A397984 n - A397975 n

end

end A397986.P6997515217053611426

namespace A397986

/-- `A397984(n)-A397975(n)` -/
def P6997515217053611426.Spec : Prop :=
  ∀ n, P6997515217053611426.a n = A397986 n

end A397986

/-! ## A397986.P12830720303754071748

`A398058(n)-A397979(n)`
-/

namespace A397986.P12830720303754071748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A398058 n - A397979 n

end

end A397986.P12830720303754071748

namespace A397986

/-- `A398058(n)-A397979(n)` -/
def P12830720303754071748.Spec : Prop :=
  ∀ n, P12830720303754071748.a n = A397986 n

end A397986

/-! ## A397986.P15297469839343203586

`A397972(n)-A054925(n+1)`
-/

namespace A397986.P15297469839343203586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A397972 n - A054925 (n + 1)

end

end A397986.P15297469839343203586

namespace A397986

/-- `A397972(n)-A054925(n+1)` -/
def P15297469839343203586.Spec : Prop :=
  ∀ n, P15297469839343203586.a n = A397986 n

end A397986

/-! ## A397986.P16260333838518454807

`A231559(n)+A397972(n)-n²`
-/

namespace A397986.P16260333838518454807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231559 n + (A397972 n - (n ^ 2 : ℤ))

end

end A397986.P16260333838518454807

namespace A397986

/-- `A231559(n)+A397972(n)-n²` -/
def P16260333838518454807.Spec : Prop :=
  ∀ n, P16260333838518454807.a n = A397986 n

end A397986

/-! ## A397986.P3373070624613937276

`n²+A397972(n)-A397979(n)`
-/

namespace A397986.P3373070624613937276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) + (A397972 n - A397979 n)

end

end A397986.P3373070624613937276

namespace A397986

/-- `n²+A397972(n)-A397979(n)` -/
def P3373070624613937276.Spec : Prop :=
  ∀ n, P3373070624613937276.a n = A397986 n

end A397986

/-! ## A397986.P10531977273131850410

`A000217(n+1)+A281026(n)-A143978(n+1)`
-/

namespace A397986.P10531977273131850410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (n + 1) + (A281026 n - A143978 (n + 1))

end

end A397986.P10531977273131850410

namespace A397986

/-- `A000217(n+1)+A281026(n)-A143978(n+1)` -/
def P10531977273131850410.Spec : Prop :=
  ∀ n, P10531977273131850410.a n = A397986 n

end A397986

/-! ## A397986.P1446154848818989088

`A143978(n+1)+A281026(n)-A194275(n+1)`
-/

namespace A397986.P1446154848818989088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143978 (n + 1) + (A281026 n - A194275 (n + 1))

end

end A397986.P1446154848818989088

namespace A397986

/-- `A143978(n+1)+A281026(n)-A194275(n+1)` -/
def P1446154848818989088.Spec : Prop :=
  ∀ n, P1446154848818989088.a n = A397986 n

end A397986

/-! ## A397986.P6526934512803711994

`A069905(2*n)+A011848(n+1)`
-/

namespace A397986.P6526934512803711994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069905 (2 * n) + A011848 (n + 1)

end

end A397986.P6526934512803711994

namespace A397986

/-- `A069905(2*n)+A011848(n+1)` -/
def P6526934512803711994.Spec : Prop :=
  ∀ n, P6526934512803711994.a n = A397986 n

end A397986

/-!
# A397987: Upper (1/2,1/3) midsequence of triangular numbers (A000217) and squares (A000290); see Comments.

The programs for A397987, the canonical program `A397987.P8556232856134825525` is in `Seq.B000.C039`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A397987 has offset 0).

The definition of A397987 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A397987.P8556232856134825525

`floor(∑[a(n-1)+7]/6)` with `a(0)=4, a(1)=5`

The canonical program, it is in `Seq.B000.C039`.
-/

namespace A397987

/-- `floor(∑[a(n-1)+7]/6)` -/
def P8556232856134825525.Spec : Prop :=
  ∀ n, P8556232856134825525.a n = A397987 n

theorem P8556232856134825525.correct : P8556232856134825525.Spec := by
  intro n
  simp only [A397987]

end A397987

/-! ## A397987.P9138193274039286508

`ceil(A397985(n)/3)`
-/

namespace A397987.P9138193274039286508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A397985 n : ℚ) / 3⌉

end

end A397987.P9138193274039286508

namespace A397987

/-- `ceil(A397985(n)/3)` -/
def P9138193274039286508.Spec : Prop :=
  ∀ n, P9138193274039286508.a n = A397987 n

end A397987

/-! ## A397987.P4709032378957536374

`A110654(A397975(n))`
-/

namespace A397987.P4709032378957536374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (A397975 n).toNat

end

end A397987.P4709032378957536374

namespace A397987

/-- `A110654(A397975(n))` -/
def P4709032378957536374.Spec : Prop :=
  ∀ n, P4709032378957536374.a n = A397987 n

end A397987

/-! ## A397987.P2657276590372160863

`A248375(A000217(n)%A102993(n+1))`
-/

namespace A397987.P2657276590372160863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248375 (Int.tmod (A000217 n) (A102993 (n + 1))).toNat

end

end A397987.P2657276590372160863

namespace A397987

/-- `A248375(A000217(n)%A102993(n+1))` -/
def P2657276590372160863.Spec : Prop :=
  ∀ n, P2657276590372160863.a n = A397987 n

end A397987

/-! ## A397987.P12762073081907748773

`eq[A052382(n+1), A132118(n+1)]`
-/

namespace A397987.P12762073081907748773
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052382 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132118 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A397987.P12762073081907748773

namespace A397987

/-- `eq[A052382(n+1), A132118(n+1)]` -/
def P12762073081907748773.Spec : Prop :=
  ∀ n, (P12762073081907748773.a n : ℤ) = A397987 n

end A397987

/-!
# A397989: Upper (1/3,1/2) midsequence of triangular numbers (A000217) and squares (A000290); see Comments.

The programs for A397989, the canonical program `A397989.P6481869229831735829` is in `Seq.B000.C039`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A397989 has offset 0).

The definition of A397989 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A397989.P6481869229831735829

`2*a(n-1)-a(n-2)+a(n-6)-2*a(n-7)+a(n-8)` with `a(0)=0, a(1)=1, a(2)=3, a(3)=7, a(4)=12, a(5)=18, a(6)=25, a(7)=34`

The canonical program, it is in `Seq.B000.C039`.
-/

namespace A397989

/-- `2*a(n-1)-a(n-2)+a(n-6)-2*a(n-7)+a(n-8)` -/
def P6481869229831735829.Spec : Prop :=
  ∀ n, P6481869229831735829.a n = A397989 n

theorem P6481869229831735829.correct : P6481869229831735829.Spec := by
  intro n
  simp only [A397989]

end A397989

/-! ## A397989.P3680355295235913865

`ceil(((2*n)²+n)/6)`
-/

namespace A397989.P3680355295235913865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((2 * n) ^ 2 + n : ℚ) / 6⌉

end

end A397989.P3680355295235913865

namespace A397989

/-- `ceil(((2*n)²+n)/6)` -/
def P3680355295235913865.Spec : Prop :=
  ∀ n, P3680355295235913865.a n = A397989 n

end A397989

/-! ## A397989.P11192734907456919574

`floor(∑[a(n-1)+8]/6)` with `a(0)=4, a(1)=5`
-/

namespace A397989.P11192734907456919574
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [4, 5] fun n f1 =>
  f1 (n - 1) + 8

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) / 6⌋

end

end A397989.P11192734907456919574

namespace A397989

/-- `floor(∑[a(n-1)+8]/6)` -/
def P11192734907456919574.Spec : Prop :=
  ∀ n, P11192734907456919574.a n = A397989 n

end A397989

/-! ## A397989.P17501812068391251595

`∑[A047587(n+1)]-n`
-/

namespace A397989.P17501812068391251595
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047587 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (n : ℤ)

end

end A397989.P17501812068391251595

namespace A397989

/-- `∑[A047587(n+1)]-n` -/
def P17501812068391251595.Spec : Prop :=
  ∀ n, P17501812068391251595.a n = A397989 n

end A397989

/-! ## A397989.P8137484698721967158

`n²-A011865(2*n)`
-/

namespace A397989.P8137484698721967158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) - A011865 (2 * n)

end

end A397989.P8137484698721967158

namespace A397989

/-- `n²-A011865(2*n)` -/
def P8137484698721967158.Spec : Prop :=
  ∀ n, P8137484698721967158.a n = A397989 n

end A397989

/-! ## A397989.P11445373456450547148

`A130519(2*n)+A056827(n+2)`
-/

namespace A397989.P11445373456450547148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130519 (2 * n) + A056827 (n + 2)

end

end A397989.P11445373456450547148

namespace A397989

/-- `A130519(2*n)+A056827(n+2)` -/
def P11445373456450547148.Spec : Prop :=
  ∀ n, P11445373456450547148.a n = A397989 n

end A397989

/-! ## A397989.P15929318668326633172

`A110654(A397983(n))`
-/

namespace A397989.P15929318668326633172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (A397983 n).toNat

end

end A397989.P15929318668326633172

namespace A397989

/-- `A110654(A397983(n))` -/
def P15929318668326633172.Spec : Prop :=
  ∀ n, P15929318668326633172.a n = A397989 n

end A397989

/-! ## A397989.P56461248776760788

`A004526(A087483(2*n)-n)`
-/

namespace A397989.P56461248776760788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A087483 (2 * n) - (n : ℤ)).toNat

end

end A397989.P56461248776760788

namespace A397989

/-- `A004526(A087483(2*n)-n)` -/
def P56461248776760788.Spec : Prop :=
  ∀ n, P56461248776760788.a n = A397989 n

end A397989

/-! ## A397989.P12065660215334531677

`A004526(A212978(n))-n`
-/

namespace A397989.P12065660215334531677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A212978 n).toNat - (n : ℤ)

end

end A397989.P12065660215334531677

namespace A397989

/-- `A004526(A212978(n))-n` -/
def P12065660215334531677.Spec : Prop :=
  ∀ n, P12065660215334531677.a n = A397989 n

end A397989

/-!
# A397990: Upper (1,1/4) midsequence of triangular numbers (A000217) and squares (A000290); see Comments.

The programs for A397990, the canonical program `A397990.P7415381113754661748` is in `Seq.B000.C039`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A397990 has offset 0).

The definition of A397990 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A397990.P7415381113754661748

`2*a(n-1)-2*a(n-3)+a(n-4)` with `a(0)=0, a(1)=2, a(2)=4, a(3)=9`

The canonical program, it is in `Seq.B000.C039`.
-/

namespace A397990

/-- `2*a(n-1)-2*a(n-3)+a(n-4)` -/
def P7415381113754661748.Spec : Prop :=
  ∀ n, P7415381113754661748.a n = A397990 n

theorem P7415381113754661748.correct : P7415381113754661748.Spec := by
  intro n
  simp only [A397990]

end A397990

/-! ## A397990.P9612858505568493424

`ceil(∑[n]+(n/2)²)`
-/

namespace A397990.P9612858505568493424
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) + ((n : ℚ) / 2) ^ 2⌉

end

end A397990.P9612858505568493424

namespace A397990

/-- `ceil(∑[n]+(n/2)²)` -/
def P9612858505568493424.Spec : Prop :=
  ∀ n, P9612858505568493424.a n = A397990 n

end A397990

/-! ## A397990.P12401729923873958658

`∑[a(n-2)+3]` with `a(0)=0, a(1)=2, a(2)=2`
-/

namespace A397990.P12401729923873958658
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 2, 2] fun n f1 =>
  f1 (n - 2) + 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A397990.P12401729923873958658

namespace A397990

/-- `∑[a(n-2)+3]` -/
def P12401729923873958658.Spec : Prop :=
  ∀ n, (P12401729923873958658.a n : ℤ) = A397990 n

end A397990

/-! ## A397990.P15130473116226319906

`∑[∑[3-a(n-1)]]` with `a(0)=0, a(1)=2, a(2)=0`
-/

namespace A397990.P15130473116226319906
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [0, 2, 0] fun n f2 =>
  3 - f2 (n - 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A397990.P15130473116226319906

namespace A397990

/-- `∑[∑[3-a(n-1)]]` -/
def P15130473116226319906.Spec : Prop :=
  ∀ n, P15130473116226319906.a n = A397990 n

end A397990

/-! ## A397990.P3762457873983167342

`ogf((2x+x^3)/(1-2x+2x^3-x^4))`
-/

namespace A397990.P3762457873983167342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 2, 0, 1] [1, -2, 0, 2, -1] n

end

end A397990.P3762457873983167342

namespace A397990

/-- `ogf((2x+x^3)/(1-2x+2x^3-x^4))` -/
def P3762457873983167342.Spec : Prop :=
  ∀ n, P3762457873983167342.a n = A397990 n

end A397990

/-! ## A397990.P12772152870041643833

`3*n+a(n-2)-2` with `a(0)=0, a(1)=2`
-/

namespace A397990.P12772152870041643833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 2] fun n a =>
  (3 * n : ℤ) + (a (n - 2) - 2)

end

end A397990.P12772152870041643833

namespace A397990

/-- `3*n+a(n-2)-2` -/
def P12772152870041643833.Spec : Prop :=
  ∀ n, P12772152870041643833.a n = A397990 n

end A397990

/-! ## A397990.P5491712706007296735

`3*n-(2-a(n-2))` with `a(0)=0, a(1)=2`
-/

namespace A397990.P5491712706007296735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 2] fun n a =>
  (3 * n : ℤ) - (2 - a (n - 2))

end

end A397990.P5491712706007296735

namespace A397990

/-- `3*n-(2-a(n-2))` -/
def P5491712706007296735.Spec : Prop :=
  ∀ n, P5491712706007296735.a n = A397990 n

end A397990

/-! ## A397990.P15611108883887813281

`n-2+a(n-2)+n+n` with `a(0)=0, a(1)=2`
-/

namespace A397990.P15611108883887813281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 2] fun n a =>
  (n : ℤ) - 2 + (a (n - 2) + (n : ℤ) + (n : ℤ))

end

end A397990.P15611108883887813281

namespace A397990

/-- `n-2+a(n-2)+n+n` -/
def P15611108883887813281.Spec : Prop :=
  ∀ n, P15611108883887813281.a n = A397990 n

end A397990

/-! ## A397990.P9684769753318881002

`n-(2-a(n-2)-n-n)` with `a(0)=0, a(1)=2`
-/

namespace A397990.P9684769753318881002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 2] fun n a =>
  (n : ℤ) - (2 - a (n - 2) - (n : ℤ) - (n : ℤ))

end

end A397990.P9684769753318881002

namespace A397990

/-- `n-(2-a(n-2)-n-n)` -/
def P9684769753318881002.Spec : Prop :=
  ∀ n, P9684769753318881002.a n = A397990 n

end A397990

/-! ## A397990.P203668771034369041

`A004652(n)+∑[n]`
-/

namespace A397990.P203668771034369041
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004652 n + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A397990.P203668771034369041

namespace A397990

/-- `A004652(n)+∑[n]` -/
def P203668771034369041.Spec : Prop :=
  ∀ n, P203668771034369041.a n = A397990 n

end A397990

/-! ## A397990.P1584224546942769866

`A194073(n+1)-(n+1)`
-/

namespace A397990.P1584224546942769866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194073 (n + 1) - (n + 1 : ℤ)

end

end A397990.P1584224546942769866

namespace A397990

/-- `A194073(n+1)-(n+1)` -/
def P1584224546942769866.Spec : Prop :=
  ∀ n, P1584224546942769866.a n = A397990 n

end A397990

/-! ## A397990.P9300423046623540297

`3*A002620(n+1)-n`
-/

namespace A397990.P9300423046623540297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A002620 (n + 1) - (n : ℤ)

end

end A397990.P9300423046623540297

namespace A397990

/-- `3*A002620(n+1)-n` -/
def P9300423046623540297.Spec : Prop :=
  ∀ n, P9300423046623540297.a n = A397990 n

end A397990

/-! ## A397990.P13604851991234480525

`A270257(n+1)/4-n`
-/

namespace A397990.P13604851991234480525
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A270257 (n + 1) : ℚ) / 4 - (n : ℚ)

end

end A397990.P13604851991234480525

namespace A397990

/-- `A270257(n+1)/4-n` -/
def P13604851991234480525.Spec : Prop :=
  ∀ n, P13604851991234480525.a n = (A397990 n : ℚ)

end A397990

/-! ## A397990.P6318210623010413047

`(n+1)²-A184676(n+1)`
-/

namespace A397990.P6318210623010413047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℤ) - A184676 (n + 1)

end

end A397990.P6318210623010413047

namespace A397990

/-- `(n+1)²-A184676(n+1)` -/
def P6318210623010413047.Spec : Prop :=
  ∀ n, P6318210623010413047.a n = A397990 n

end A397990

/-! ## A397990.P18246924519910424466

`n²+n-A198442(n+1)`
-/

namespace A397990.P18246924519910424466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 + n : ℤ) - A198442 (n + 1)

end

end A397990.P18246924519910424466

namespace A397990

/-- `n²+n-A198442(n+1)` -/
def P18246924519910424466.Spec : Prop :=
  ∀ n, P18246924519910424466.a n = A397990 n

end A397990

/-! ## A397990.P217596693085253598

`A006578(n)+A000035(n)`
-/

namespace A397990.P217596693085253598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006578 n + A000035 n

end

end A397990.P217596693085253598

namespace A397990

/-- `A006578(n)+A000035(n)` -/
def P217596693085253598.Spec : Prop :=
  ∀ n, P217596693085253598.a n = A397990 n

end A397990

/-! ## A397990.P13011402274467142927

`A093353(n)+A008794(n)`
-/

namespace A397990.P13011402274467142927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093353 n + A008794 n

end

end A397990.P13011402274467142927

namespace A397990

/-- `A093353(n)+A008794(n)` -/
def P13011402274467142927.Spec : Prop :=
  ∀ n, P13011402274467142927.a n = A397990 n

end A397990

/-! ## A397990.P11185251263517729014

`A110654(n)+A077043(n)`
-/

namespace A397990.P11185251263517729014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 n + A077043 n

end

end A397990.P11185251263517729014

namespace A397990

/-- `A110654(n)+A077043(n)` -/
def P11185251263517729014.Spec : Prop :=
  ∀ n, P11185251263517729014.a n = A397990 n

end A397990

/-! ## A397990.P10947214834624332269

`A242477(n)+A030451(n)`
-/

namespace A397990.P10947214834624332269
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242477 n + A030451 n

end

end A397990.P10947214834624332269

namespace A397990

/-- `A242477(n)+A030451(n)` -/
def P10947214834624332269.Spec : Prop :=
  ∀ n, P10947214834624332269.a n = A397990 n

end A397990

/-! ## A397990.P5953894623838995681

`A236453(n)+A078126(n)`
-/

namespace A397990.P5953894623838995681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236453 n + A078126 n

end

end A397990.P5953894623838995681

namespace A397990

/-- `A236453(n)+A078126(n)` -/
def P5953894623838995681.Spec : Prop :=
  ∀ n, P5953894623838995681.a n = A397990 n

end A397990

/-!
# A397991: Array read by ascending antidiagonals: A(n,k) = floor(1+k*n/(k-1)) with k >= 2.

The programs for A397991, the canonical program `A397991.P6089644370162683677` is in `Seq.B005.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A397991 has offset 0).

The definition of A397991 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A397991.P6089644370162683677

`A025581(n)+A010766(n+1)`

The canonical program, it is in `Seq.B005.C002`.
-/

namespace A397991

/-- `A025581(n)+A010766(n+1)` -/
def P6089644370162683677.Spec : Prop :=
  ∀ n, P6089644370162683677.a n = A397991 n

theorem P6089644370162683677.correct : P6089644370162683677.Spec := by
  intro n
  simp only [A397991]

end A397991

/-! ## A397991.P6223137384995926651

`A010766(n+1)+A004736(n+1)-1`
-/

namespace A397991.P6223137384995926651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010766 (n + 1) + (A004736 (n + 1) - 1)

end

end A397991.P6223137384995926651

namespace A397991

/-- `A010766(n+1)+A004736(n+1)-1` -/
def P6223137384995926651.Spec : Prop :=
  ∀ n, P6223137384995926651.a n = A397991 n

end A397991

/-! ## A397991.P5854643891315021291

`A167430(A259448(n+1))`
-/

namespace A397991.P5854643891315021291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167430 (A259448 (n + 1)).toNat

end

end A397991.P5854643891315021291

namespace A397991

/-- `A167430(A259448(n+1))` -/
def P5854643891315021291.Spec : Prop :=
  ∀ n, P5854643891315021291.a n = A397991 n

end A397991

/-! ## A397991.P18248669922855819673

`A052038(A192951(n+1))`
-/

namespace A397991.P18248669922855819673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052038 (A192951 (n + 1)).toNat

end

end A397991.P18248669922855819673

namespace A397991

/-- `A052038(A192951(n+1))` -/
def P18248669922855819673.Spec : Prop :=
  ∀ n, P18248669922855819673.a n = A397991 n

end A397991

/-!
# A397992: Antidiagonal sums of the array A397991.

The programs for A397992, the canonical program `A397992.P13780803117957403864` is in `Seq.B000.C039`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A397992 has offset 0).

The definition of A397992 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A397992.P13780803117957403864

`∑[∏{e}[n+1, #+1]+n]`

The canonical program, it is in `Seq.B000.C039`.
-/

namespace A397992

/-- `∑[∏{e}[n+1, #+1]+n]` -/
def P13780803117957403864.Spec : Prop :=
  ∀ n, (P13780803117957403864.a n : ℤ) = A397992 n

theorem P13780803117957403864.correct : P13780803117957403864.Spec := by
  intro n
  simp only [A397992]

end A397992

/-! ## A397992.P14138780827059012158

`∑[∑{d}[n+1, gcd(n, #)]+n]`
-/

namespace A397992.P14138780827059012158
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n), Nat.gcd n d + n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A397992.P14138780827059012158

namespace A397992

/-- `∑[∑{d}[n+1, gcd(n, #)]+n]` -/
def P14138780827059012158.Spec : Prop :=
  ∀ n, (P14138780827059012158.a n : ℤ) = A397992 n

end A397992

/-! ## A397992.P1101948686052463221

`∑[∑{d}[n+1, #^C(#, n+1)]]`
-/

namespace A397992.P1101948686052463221
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n), d ^ Nat.choose d (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A397992.P1101948686052463221

namespace A397992

/-- `∑[∑{d}[n+1, #^C(#, n+1)]]` -/
def P1101948686052463221.Spec : Prop :=
  ∀ n, (P1101948686052463221.a n : ℤ) = A397992 n

end A397992

/-! ## A397992.P13125873714741805985

`∑[∑{d}[n+1, C(#, C(#, n+1))]]`
-/

namespace A397992.P13125873714741805985
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n), Nat.choose d (Nat.choose d (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A397992.P13125873714741805985

namespace A397992

/-- `∑[∑{d}[n+1, C(#, C(#, n+1))]]` -/
def P13125873714741805985.Spec : Prop :=
  ∀ n, (P13125873714741805985.a n : ℤ) = A397992 n

end A397992

/-! ## A397992.P5546130806413410039

`∑[A158907(n+1)]`
-/

namespace A397992.P5546130806413410039
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158907 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A397992.P5546130806413410039

namespace A397992

/-- `∑[A158907(n+1)]` -/
def P5546130806413410039.Spec : Prop :=
  ∀ n, P5546130806413410039.a n = A397992 n

end A397992

/-! ## A397992.P15490532337822216291

`∑[A062249(n+1)-1]`
-/

namespace A397992.P15490532337822216291
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062249 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A397992.P15490532337822216291

namespace A397992

/-- `∑[A062249(n+1)-1]` -/
def P15490532337822216291.Spec : Prop :=
  ∀ n, P15490532337822216291.a n = A397992 n

end A397992

/-! ## A397992.P2017697287804275880

`∑[A000005(n+1)+n]`
-/

namespace A397992.P2017697287804275880
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A397992.P2017697287804275880

namespace A397992

/-- `∑[A000005(n+1)+n]` -/
def P2017697287804275880.Spec : Prop :=
  ∀ n, P2017697287804275880.a n = A397992 n

end A397992

/-! ## A397992.P7091164352841397506

`A006218(n+1)+∑[n]`
-/

namespace A397992.P7091164352841397506
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006218 (n + 1) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A397992.P7091164352841397506

namespace A397992

/-- `A006218(n+1)+∑[n]` -/
def P7091164352841397506.Spec : Prop :=
  ∀ n, P7091164352841397506.a n = A397992 n

end A397992

/-! ## A397992.P840591108488156238

`∑[A134871(n+1)]+n`
-/

namespace A397992.P840591108488156238
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134871 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ)

end

end A397992.P840591108488156238

namespace A397992

/-- `∑[A134871(n+1)]+n` -/
def P840591108488156238.Spec : Prop :=
  ∀ n, P840591108488156238.a n = A397992 n

end A397992

/-! ## A397992.P4169148279352117754

`(n+1)²-A161664(n+1)`
-/

namespace A397992.P4169148279352117754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℤ) - A161664 (n + 1)

end

end A397992.P4169148279352117754

namespace A397992

/-- `(n+1)²-A161664(n+1)` -/
def P4169148279352117754.Spec : Prop :=
  ∀ n, P4169148279352117754.a n = A397992 n

end A397992

/-! ## A397992.P16002186913792117089

`A077597(n)+A000124(n)`
-/

namespace A397992.P16002186913792117089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077597 n + A000124 n

end

end A397992.P16002186913792117089

namespace A397992

/-- `A077597(n)+A000124(n)` -/
def P16002186913792117089.Spec : Prop :=
  ∀ n, P16002186913792117089.a n = A397992 n

end A397992

/-! ## A397992.P17803399189840021098

`A161886(n+1)+A161680(n)`
-/

namespace A397992.P17803399189840021098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161886 (n + 1) + A161680 n

end

end A397992.P17803399189840021098

namespace A397992

/-- `A161886(n+1)+A161680(n)` -/
def P17803399189840021098.Spec : Prop :=
  ∀ n, P17803399189840021098.a n = A397992 n

end A397992

/-! ## A397992.P15730823279580363334

`A156745(n+1)-A080956(n)`
-/

namespace A397992.P15730823279580363334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156745 (n + 1) - A080956 n

end

end A397992.P15730823279580363334

namespace A397992

/-- `A156745(n+1)-A080956(n)` -/
def P15730823279580363334.Spec : Prop :=
  ∀ n, P15730823279580363334.a n = A397992 n

end A397992

/-! ## A397992.P13525120009044065112

`A002541(n+1)+A000217(n+1)`
-/

namespace A397992.P13525120009044065112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002541 (n + 1) + A000217 (n + 1)

end

end A397992.P13525120009044065112

namespace A397992

/-- `A002541(n+1)+A000217(n+1)` -/
def P13525120009044065112.Spec : Prop :=
  ∀ n, P13525120009044065112.a n = A397992 n

end A397992

/-! ## A397992.P81522186172034266

`A366968(n+1)+A074148(n+1)`
-/

namespace A397992.P81522186172034266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366968 (n + 1) + A074148 (n + 1)

end

end A397992.P81522186172034266

namespace A397992

/-- `A366968(n+1)+A074148(n+1)` -/
def P81522186172034266.Spec : Prop :=
  ∀ n, P81522186172034266.a n = A397992 n

end A397992

/-! ## A397992.P1751382745968834194

`A091369(n+1)-A063088(n+1)`
-/

namespace A397992.P1751382745968834194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091369 (n + 1) - A063088 (n + 1)

end

end A397992.P1751382745968834194

namespace A397992

/-- `A091369(n+1)-A063088(n+1)` -/
def P1751382745968834194.Spec : Prop :=
  ∀ n, P1751382745968834194.a n = A397992 n

end A397992

/-! ## A397992.P16364471968512153371

`A024916(n+1)-A152967(n+1)`
-/

namespace A397992.P16364471968512153371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024916 (n + 1) - A152967 (n + 1)

end

end A397992.P16364471968512153371

namespace A397992

/-- `A024916(n+1)-A152967(n+1)` -/
def P16364471968512153371.Spec : Prop :=
  ∀ n, P16364471968512153371.a n = A397992 n

end A397992

/-! ## A397992.P8524237021906138384

`A002620(n+1)+A006218(n+1)+A002620(n)`
-/

namespace A397992.P8524237021906138384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002620 (n + 1) + (A006218 (n + 1) + A002620 n)

end

end A397992.P8524237021906138384

namespace A397992

/-- `A002620(n+1)+A006218(n+1)+A002620(n)` -/
def P8524237021906138384.Spec : Prop :=
  ∀ n, P8524237021906138384.a n = A397992 n

end A397992

/-! ## A397992.P5111937404952246732

`A000217(n+1)+A000217(n)-A161664(n+1)`
-/

namespace A397992.P5111937404952246732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (n + 1) + (A000217 n - A161664 (n + 1))

end

end A397992.P5111937404952246732

namespace A397992

/-- `A000217(n+1)+A000217(n)-A161664(n+1)` -/
def P5111937404952246732.Spec : Prop :=
  ∀ n, P5111937404952246732.a n = A397992 n

end A397992

/-! ## A397992.P4475553652308503721

`A024916(n+1)+A000217(n)-A236632(n+1)`
-/

namespace A397992.P4475553652308503721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024916 (n + 1) + (A000217 n - A236632 (n + 1))

end

end A397992.P4475553652308503721

namespace A397992

/-- `A024916(n+1)+A000217(n)-A236632(n+1)` -/
def P4475553652308503721.Spec : Prop :=
  ∀ n, P4475553652308503721.a n = A397992 n

end A397992

/-!
# A397996: E.g.f. A(x) satisfies A((exp(2*x) - 1)/2) = 3*A(x) - 2*x.

The programs for A397996, there is no canonical definition to state claims against.
-/

/-! ## A397996.P13905774631945422363

`A107365(A114998(n+2))`
-/

namespace A397996.P13905774631945422363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107365 (A114998 (n + 2)).toNat

end

end A397996.P13905774631945422363

/-!
# A397997: E.g.f. A(x) satisfies A((exp(3*x) - 1)/3) = 4*A(x) - 3*x.

The programs for A397997, there is no canonical definition to state claims against.
-/

/-! ## A397997.P1485245151725366881

`A184349(A199524(n+1))`
-/

namespace A397997.P1485245151725366881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184349 (A199524 (n + 1)).toNat

end

end A397997.P1485245151725366881

/-!
# A397998: E.g.f. A(x) satisfies A((exp(4*x) - 1)/4) = 5*A(x) - 4*x.

The programs for A397998, there is no canonical definition to state claims against.
-/

/-! ## A397998.P4609511710802856690

`A001481(A001044(n))+A000740(n+1)`
-/

namespace A397998.P4609511710802856690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001481 (A001044 n).toNat + A000740 (n + 1)

end

end A397998.P4609511710802856690

