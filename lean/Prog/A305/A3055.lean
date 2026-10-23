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
import Seq.B000.C019
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
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
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C003
import Seq.B002.C004
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B005.C000
import Seq.B005.C001
import Seq.B006.C000
import Seq.B006.C001
import Seq.B006.C002
import Seq.B007.C000
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
# A305500: a(n) = (-1) * j((1 + sqrt(-A003173(n+2)))/2).

The programs for A305500, there is no canonical definition to state claims against.
-/

/-! ## A305500.P14789457754327476146

`A302142(A003173(n+3))`
-/

namespace A305500.P14789457754327476146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302142 (A003173 (n + 3)).toNat

end

end A305500.P14789457754327476146

/-!
# A305501: Number of connected components of the integer partition y + 1 where y is the integer partition with Heinz number n.

The programs for A305501, there is no canonical definition to state claims against.
-/

/-! ## A305501.P6519726702643015418

`A305079(A328915(n+1))`
-/

namespace A305501.P6519726702643015418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305079 (A328915 (n + 1)).toNat

end

end A305501.P6519726702643015418

/-! ## A305501.P8828917554426417711

`A305079(A003961(n+1))`
-/

namespace A305501.P8828917554426417711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305079 (A003961 (n + 1)).toNat

end

end A305501.P8828917554426417711

/-! ## A305501.P18197378697866067750

`A305079(A253885(n)+1)`
-/

namespace A305501.P18197378697866067750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305079 (A253885 n + 1).toNat

end

end A305501.P18197378697866067750

/-! ## A305501.P5117500562040991745

`A305079(or(1, A253885(n)))`
-/

namespace A305501.P5117500562040991745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305079 (Int.lor 1 (A253885 n)).toNat

end

end A305501.P5117500562040991745

/-! ## A305501.P7028333726684331274

`A305079(A243501(n+1)-1)`
-/

namespace A305501.P7028333726684331274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305079 (A243501 (n + 1) - 1).toNat

end

end A305501.P7028333726684331274

/-! ## A305501.P6029318839871621255

`A305079(A045965(n+1))%A000601(n)`
-/

namespace A305501.P6029318839871621255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A305079 (A045965 (n + 1)).toNat) (A000601 n)

end

end A305501.P6029318839871621255

/-! ## A305501.P15728540215058242198

`A305079(A341529(n+1)/A000203(n+1))`
-/

namespace A305501.P15728540215058242198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305079 (SequenceMachineLib.roundAway ((A341529 (n + 1) : ℚ) / (A000203 (n + 1) : ℚ))).toNat

end

end A305501.P15728540215058242198

/-! ## A305501.P17237725328370071712

`A327406(2*A283980(n+1))`
-/

namespace A305501.P17237725328370071712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327406 (2 * A283980 (n + 1)).toNat

end

end A305501.P17237725328370071712

/-! ## A305501.P3803846188923799143

`A327406(A003961(n+1)*A317926(n+1))`
-/

namespace A305501.P3803846188923799143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327406 (A003961 (n + 1) * A317926 (n + 1)).toNat

end

end A305501.P3803846188923799143

/-! ## A305501.P10844096758145832980

`A327406(2*A045967(n+1))`
-/

namespace A305501.P10844096758145832980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327406 (2 * A045967 (n + 1)).toNat

end

end A305501.P10844096758145832980

/-!
# A305502: Number of ways to write n as x + y with 0 < x <= y such that x^3 + n*y^2 is prime.

The programs for A305502, there is no canonical definition to state claims against.
-/

/-! ## A305502.P17101528624174273303

`A102382(A074206(n)*A292975(n))`
-/

namespace A305502.P17101528624174273303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102382 (A074206 n * A292975 n).toNat

end

end A305502.P17101528624174273303

/-! ## A305502.P10346488825727723144

`A005136(and(A034694(n+1), A167487(n)))`
-/

namespace A305502.P10346488825727723144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005136 (Int.land (A034694 (n + 1)) (A167487 n)).toNat

end

end A305502.P10346488825727723144

/-!
# A305503: Largest cardinality of subsets A of {0,1,...,n-1} with |A + A| > |A - A|.

The programs for A305503, there is no canonical definition to state claims against.
-/

/-! ## A305503.P4072555897892044728

`(n-5)*A297043(n+1)-A297044(n+1)`
-/

namespace A305503.P4072555897892044728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - 5) * A297043 (n + 1) - A297044 (n + 1)

end

end A305503.P4072555897892044728

/-! ## A305503.P9980598877360609629

`A003984(A056000(n)*A297043(n+1))`
-/

namespace A305503.P9980598877360609629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003984 (A056000 n * A297043 (n + 1)).toNat

end

end A305503.P9980598877360609629

/-! ## A305503.P17146550204866683130

`A003984(lcm(A056000(n), A297043(n+1)))`
-/

namespace A305503.P17146550204866683130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003984 (Int.lcm (A056000 n) (A297043 (n + 1)))

end

end A305503.P17146550204866683130

/-! ## A305503.P3874420062019328519

`A003984(A056000(n))%A146474(n+1)`
-/

namespace A305503.P3874420062019328519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A003984 (A056000 n).toNat) (A146474 (n + 1))

end

end A305503.P3874420062019328519

/-!
# A305504: Heinz numbers of integer partitions whose distinct parts plus 1 are connected.

The programs for A305504, there is no canonical definition to state claims against.
-/

/-! ## A305504.P17165936541035795612

`record[n/a(A305501(n))]` with `a(0)=1`
-/

namespace A305504.P17165936541035795612
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [1] fun n f1 =>
  (n : ℚ) / f1 (A305501 n).toNat

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A305504.P17165936541035795612

/-! ## A305504.P3736461240134157711

`lt[A305501(n+1), 2]+1`
-/

namespace A305504.P3736461240134157711
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305501 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A305504.P3736461240134157711

/-! ## A305504.P11162149816423895336

`lt[2, A000010(a(A305501(n)))]` with `a(0)=1, a(1)=7`
-/

namespace A305504.P11162149816423895336
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1, 7] fun n f2 =>
  A000010 (f2 (A305501 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A305504.P11162149816423895336

/-! ## A305504.P12297424361225324376

`lt[2, A041000(a(A305501(n)))]` with `a(0)=1, a(1)=7`
-/

namespace A305504.P12297424361225324376
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1, 7] fun n f2 =>
  A041000 (f2 (A305501 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A305504.P12297424361225324376

/-! ## A305504.P10436220829335636958

`lt[2, A110619(a(A305501(n)))]` with `a(0)=1, a(1)=7`
-/

namespace A305504.P10436220829335636958
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1, 7] fun n f2 =>
  A110619 (f2 (A305501 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A305504.P10436220829335636958

/-! ## A305504.P14865132528669269391

`lt[2, A096334(a(A305501(n)))]` with `a(0)=2, a(1)=8`
-/

namespace A305504.P14865132528669269391
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.rec [2, 8] fun n f2 =>
  A096334 (f2 (A305501 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A305504.P14865132528669269391

/-! ## A305504.P13964367314221521898

`lt[A000290(a(A305501(n))), 7]` with `a(0)=7, a(1)=2`
-/

namespace A305504.P13964367314221521898
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [7, 2] fun n f1 =>
  A000290 (f1 (A305501 n).toNat).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A305504.P13964367314221521898

/-! ## A305504.P16903309508690382862

`eq[1, A305079(A045965(n+1))]+1`
-/

namespace A305504.P16903309508690382862
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305079 (A045965 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A305504.P16903309508690382862

/-! ## A305504.P12550344848504147830

`eq[A057427(n), A305501(n+1)]+1`
-/

namespace A305504.P12550344848504147830
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305501 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A305504.P12550344848504147830

/-! ## A305504.P16687268956275237916

`eq[A178334(n), A305501(n+1)]+1`
-/

namespace A305504.P16687268956275237916
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178334 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305501 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A305504.P16687268956275237916

/-!
# A305505: Number of n X n 0..1 arrays with every element unequal to 2, 3, 4, 6 or 8 king-move adjacent elements, with upper left element zero.

The programs for A305505, there is no canonical definition to state claims against.
-/

/-! ## A305505.P930310340789911806

`A305509(∑[4*n]+1)`
-/

namespace A305505.P930310340789911806
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305509 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A305505.P930310340789911806

/-! ## A305505.P17875835240214927774

`record[A305509(A272267(n+1))]`
-/

namespace A305505.P17875835240214927774
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305509 (A272267 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A305505.P17875835240214927774

/-! ## A305505.P7663877672510227475

`A305509(A001844(n))+char[9]`
-/

namespace A305505.P7663877672510227475
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305509 (A001844 n).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A305505.P7663877672510227475

/-! ## A305505.P2584923793012378313

`record[A003982(n)*A305509(n+1)]`
-/

namespace A305505.P2584923793012378313
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A305509 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A305505.P2584923793012378313

/-! ## A305505.P16852240209626861991

`A305509(n²+(n+1)²)+A185043(n)`
-/

namespace A305505.P16852240209626861991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305509 (n ^ 2 + (n + 1) ^ 2) + A185043 n

end

end A305505.P16852240209626861991

/-!
# A305506: Number of nX5 0..1 arrays with every element unequal to 2, 3, 4, 6 or 8 king-move adjacent elements, with upper left element zero.

The programs for A305506, there is no canonical definition to state claims against.
-/

/-! ## A305506.P7789336603749105323

`A305509(∑[n+4]+11)`
-/

namespace A305506.P7789336603749105323
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305509 (∑ j ∈ Finset.range (n + 1), f1 j + 11)

end

end A305506.P7789336603749105323

/-! ## A305506.P17046532576666098597

`(A305509(A056000(n)+15)^(1/2))²`
-/

namespace A305506.P17046532576666098597
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((A305509 (A056000 n + 15).toNat : ℝ) ^ ((1 : ℚ) / 2 : ℝ)) ^ 2

end

end A305506.P17046532576666098597

/-! ## A305506.P6350844192659761748

`A305509(A052905(n+1)+10)+char[16]`
-/

namespace A305506.P6350844192659761748
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  16

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305509 (A052905 (n + 1) + 10).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A305506.P6350844192659761748

/-! ## A305506.P10650137099408422788

`lcm((-1)^n, A305509(eq[7, A066657(n)]))`
-/

namespace A305506.P10650137099408422788
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm ((-1) ^ n) (A305509 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n))

end

end A305506.P10650137099408422788

/-! ## A305506.P9761137422939704995

`A036225(n)*A305509(A374005(n+1))`
-/

namespace A305506.P9761137422939704995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036225 n * A305509 (A374005 (n + 1)).toNat

end

end A305506.P9761137422939704995

/-!
# A305507: Number of nX6 0..1 arrays with every element unequal to 2, 3, 4, 6 or 8 king-move adjacent elements, with upper left element zero.

The programs for A305507, there is no canonical definition to state claims against.
-/

/-! ## A305507.P10176226221529488843

`A305509(A374007(n+1))`
-/

namespace A305507.P10176226221529488843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305509 (A374007 (n + 1)).toNat

end

end A305507.P10176226221529488843

/-! ## A305507.P11888750202092337946

`A305509(A166136(n+4))`
-/

namespace A305507.P11888750202092337946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305509 (A166136 (n + 4)).toNat

end

end A305507.P11888750202092337946

/-! ## A305507.P9984473384869023875

`A305509(eq[6, A256910(n)])`
-/

namespace A305507.P9984473384869023875
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256910 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305509 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A305507.P9984473384869023875

/-! ## A305507.P5583181023754823208

`A305509(Δ[A264443(n)]+10)`
-/

namespace A305507.P5583181023754823208
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305509 (f1 (n + 1) - f1 n + 10).toNat

end

end A305507.P5583181023754823208

/-! ## A305507.P12579818634016696274

`A305509(A167499(n+4)+1)`
-/

namespace A305507.P12579818634016696274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305509 (A167499 (n + 4) + 1).toNat

end

end A305507.P12579818634016696274

/-!
# A305508: Number of nX7 0..1 arrays with every element unequal to 2, 3, 4, 6 or 8 king-move adjacent elements, with upper left element zero.

The programs for A305508, there is no canonical definition to state claims against.
-/

/-! ## A305508.P8166355524480621846

`A305509(A374008(n+1))`
-/

namespace A305508.P8166355524480621846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305509 (A374008 (n + 1)).toNat

end

end A305508.P8166355524480621846

/-! ## A305508.P11478510757018596588

`A305509(A167487(n+5))`
-/

namespace A305508.P11478510757018596588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305509 (A167487 (n + 5)).toNat

end

end A305508.P11478510757018596588

/-! ## A305508.P2395573690568857891

`A305509(A056119(n)+28)`
-/

namespace A305508.P2395573690568857891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305509 (A056119 n + 28).toNat

end

end A305508.P2395573690568857891

/-! ## A305508.P6869444024803310151

`A305509(eq[11, A066657(n)])`
-/

namespace A305508.P6869444024803310151
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305509 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A305508.P6869444024803310151

/-! ## A305508.P12657586151488822255

`A305509(A167614(n+5)+4)`
-/

namespace A305508.P12657586151488822255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305509 (A167614 (n + 5) + 4).toNat

end

end A305508.P12657586151488822255

/-!
# A305510: Number of nXn 0..1 arrays with every element unequal to 1, 2, 5, 6 or 8 king-move adjacent elements, with upper left element zero.

The programs for A305510, there is no canonical definition to state claims against.
-/

/-! ## A305510.P11012758443489677291

`A305516(∑[4*n]+1)`
-/

namespace A305510.P11012758443489677291
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305516 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A305510.P11012758443489677291

/-! ## A305510.P9908701162726195752

`record[A305516(Δ[A235355(n)])]`
-/

namespace A305510.P9908701162726195752
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235355 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305516 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A305510.P9908701162726195752

/-! ## A305510.P18434335601100784568

`record[A305516(A330613(n+1))]`
-/

namespace A305510.P18434335601100784568
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305516 (A330613 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A305510.P18434335601100784568

/-! ## A305510.P40496512173367172

`A305516(A001844(n))+char[18]`
-/

namespace A305510.P40496512173367172
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  18

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305516 (A001844 n).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A305510.P40496512173367172

/-! ## A305510.P1373259098434105699

`record[A003982(n)*A305516(n+1)]`
-/

namespace A305510.P1373259098434105699
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A305516 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A305510.P1373259098434105699

/-!
# A305511: Number of nX3 0..1 arrays with every element unequal to 1, 2, 5, 6 or 8 king-move adjacent elements, with upper left element zero.

The programs for A305511, there is no canonical definition to state claims against.
-/

/-! ## A305511.P10780752118212518361

`A305516(∑[n+2]+4)`
-/

namespace A305511.P10780752118212518361
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305516 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A305511.P10780752118212518361

/-! ## A305511.P14974751984046179621

`and(-1, A305516(A167614(n+1)))`
-/

namespace A305511.P14974751984046179621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A305516 (A167614 (n + 1)).toNat)

end

end A305511.P14974751984046179621

/-! ## A305511.P16928104994033765964

`record[A305516(A008795(n+1)+3)]`
-/

namespace A305511.P16928104994033765964
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305516 (A008795 (n + 1) + 3).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A305511.P16928104994033765964

/-! ## A305511.P1443811413605105292

`or(char[2], A305516(A055998(n)+6))`
-/

namespace A305511.P1443811413605105292
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A305516 (A055998 n + 6).toNat)

end

end A305511.P1443811413605105292

/-! ## A305511.P3002002219465614728

`record[A010054(n)*A305516(n+3)]`
-/

namespace A305511.P3002002219465614728
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A305516 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A305511.P3002002219465614728

/-!
# A305512: Number of nX4 0..1 arrays with every element unequal to 1, 2, 5, 6 or 8 king-move adjacent elements, with upper left element zero.

The programs for A305512, there is no canonical definition to state claims against.
-/

/-! ## A305512.P12732715919658285563

`A305516(∑[n+3]+7)`
-/

namespace A305512.P12732715919658285563
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305516 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A305512.P12732715919658285563

/-! ## A305512.P2939057755800320888

`A305516(A374004(n+1))%A100511(n+1)`
-/

namespace A305512.P2939057755800320888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A305516 (A374004 (n + 1)).toNat) (A100511 (n + 1))

end

end A305512.P2939057755800320888

/-! ## A305512.P12582544924325201419

`A305516(A055998(n+2))%A304301(n+1)`
-/

namespace A305512.P12582544924325201419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A305516 (A055998 (n + 2)).toNat) (A304301 (n + 1))

end

end A305512.P12582544924325201419

/-! ## A305512.P15735831912966330371

`A305516(A055998(n+2))+A000007(3*n+4)`
-/

namespace A305512.P15735831912966330371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305516 (A055998 (n + 2)).toNat + A000007 (3 * n + 4)

end

end A305512.P15735831912966330371

/-!
# A305513: Number of nX5 0..1 arrays with every element unequal to 1, 2, 5, 6 or 8 king-move adjacent elements, with upper left element zero.

The programs for A305513, there is no canonical definition to state claims against.
-/

/-! ## A305513.P14741145526127362664

`A305516(∑[n+4]+11)`
-/

namespace A305513.P14741145526127362664
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305516 (∑ j ∈ Finset.range (n + 1), f1 j + 11)

end

end A305513.P14741145526127362664

/-! ## A305513.P18181943291194179431

`A305516(A056000(n)+15)+char[32]`
-/

namespace A305513.P18181943291194179431
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  32

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305516 (A056000 n + 15).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A305513.P18181943291194179431

/-! ## A305513.P4258847688489027910

`or(char[3], A305516(A000217(n+4)+5))`
-/

namespace A305513.P4258847688489027910
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A305516 (A000217 (n + 4) + 5).toNat)

end

end A305513.P4258847688489027910

/-! ## A305513.P8189040446701782007

`A305516(A167499(n+3))%A022592(n+1)`
-/

namespace A305513.P8189040446701782007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A305516 (A167499 (n + 3)).toNat) (A022592 (n + 1))

end

end A305513.P8189040446701782007

/-! ## A305513.P7251080775690309045

`A305516(A056000(n)+15)%A000108(n+4)`
-/

namespace A305513.P7251080775690309045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A305516 (A056000 n + 15).toNat) (A000108 (n + 4))

end

end A305513.P7251080775690309045

/-!
# A305514: Number of nX6 0..1 arrays with every element unequal to 1, 2, 5, 6 or 8 king-move adjacent elements, with upper left element zero.

The programs for A305514, there is no canonical definition to state claims against.
-/

/-! ## A305514.P10366825097530440690

`A305516(A374007(n+1))`
-/

namespace A305514.P10366825097530440690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305516 (A374007 (n + 1)).toNat

end

end A305514.P10366825097530440690

/-! ## A305514.P2402495289262644405

`A305516(A056115(n)+21)`
-/

namespace A305514.P2402495289262644405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305516 (A056115 n + 21).toNat

end

end A305514.P2402495289262644405

/-! ## A305514.P13783456997461288135

`A305516(A167499(n+4)+1)`
-/

namespace A305514.P13783456997461288135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305516 (A167499 (n + 4) + 1).toNat

end

end A305514.P13783456997461288135

/-! ## A305514.P2907370086336491560

`A305516(A145018(n+6)+2)`
-/

namespace A305514.P2907370086336491560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305516 (A145018 (n + 6) + 2).toNat

end

end A305514.P2907370086336491560

/-! ## A305514.P13841987260686453460

`A305516(A112355(n+3)+6)`
-/

namespace A305514.P13841987260686453460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305516 (A112355 (n + 3) + 6).toNat

end

end A305514.P13841987260686453460

/-!
# A305515: Number of n X 7 0..1 arrays with every element unequal to 1, 2, 5, 6 or 8 king-move adjacent elements, with upper left element zero.

The programs for A305515, there is no canonical definition to state claims against.
-/

/-! ## A305515.P6649366790472813007

`A305516(A374008(n+1))`
-/

namespace A305515.P6649366790472813007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305516 (A374008 (n + 1)).toNat

end

end A305515.P6649366790472813007

/-! ## A305515.P18043680354804482131

`A305516(A167487(n+5))`
-/

namespace A305515.P18043680354804482131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305516 (A167487 (n + 5)).toNat

end

end A305515.P18043680354804482131

/-! ## A305515.P1191623809213020421

`A305516(A056119(n)+28)`
-/

namespace A305515.P1191623809213020421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305516 (A056119 n + 28).toNat

end

end A305515.P1191623809213020421

/-! ## A305515.P7871043732257027223

`A305516(A166136(n+5)+1)`
-/

namespace A305515.P7871043732257027223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305516 (A166136 (n + 5) + 1).toNat

end

end A305515.P7871043732257027223

/-! ## A305515.P16855648566827438059

`A305516(A167614(n+5)+4)`
-/

namespace A305515.P16855648566827438059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305516 (A167614 (n + 5) + 4).toNat

end

end A305515.P16855648566827438059

/-!
# A305516: T(n,k)=Number of nXk 0..1 arrays with every element unequal to 1, 2, 5, 6 or 8 king-move adjacent elements, with upper left element zero.

The programs for A305516, there is no canonical definition to state claims against.
-/

/-! ## A305516.P3050042468073600218

`A305182(A001263(A001263(n+1))+n)`
-/

namespace A305516.P3050042468073600218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305182 (A001263 (A001263 (n + 1)).toNat + (n : ℤ)).toNat

end

end A305516.P3050042468073600218

/-! ## A305516.P18098149562208708310

`A304302(n+1)+A174875(A157177(n))`
-/

namespace A305516.P18098149562208708310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304302 (n + 1) + A174875 (A157177 n).toNat

end

end A305516.P18098149562208708310

/-! ## A305516.P12125912270306941613

`A304302(n+1)+A174875(A168288(n))`
-/

namespace A305516.P12125912270306941613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304302 (n + 1) + A174875 (A168288 n).toNat

end

end A305516.P12125912270306941613

/-! ## A305516.P356470222077141822

`dr(A305015(n+1)%A098645(3*(n+1)))`
-/

namespace A305516.P356470222077141822
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (Int.tmod (A305015 (n + 1)) (A098645 (3 * (n + 1))))

end

end A305516.P356470222077141822

/-! ## A305516.P16378235384864923235

`A179561(A354408(n+2))+A174875(A157177(n))`
-/

namespace A305516.P16378235384864923235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179561 (A354408 (n + 2)).toNat + A174875 (A157177 n).toNat

end

end A305516.P16378235384864923235

/-!
# A305517: Number of nXn 0..1 arrays with every element unequal to 0, 1, 2, 3, 4 or 5 king-move adjacent elements, with upper left element zero.

The programs for A305517, there is no canonical definition to state claims against.
-/

/-! ## A305517.P10539226002425045370

`A305523(∑[4*n]+1)`
-/

namespace A305517.P10539226002425045370
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305523 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A305517.P10539226002425045370

/-! ## A305517.P201946581390966254

`lcm((-1)^n, A305523(A001844(n)))`
-/

namespace A305517.P201946581390966254
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm ((-1) ^ n) (A305523 (A001844 n).toNat)

end

end A305517.P201946581390966254

/-! ## A305517.P13124166899370341480

`record[gcd(A008482(n), A305523(n+1))]`
-/

namespace A305517.P13124166899370341480
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A008482 n) (A305523 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A305517.P13124166899370341480

/-! ## A305517.P1033813353478539438

`A305523(A001844(n))+A056965(n)`
-/

namespace A305517.P1033813353478539438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305523 (A001844 n).toNat + A056965 n

end

end A305517.P1033813353478539438

/-! ## A305517.P5060358424673798447

`A305523(A001844(n))^A014963(2*A000040(n+1))`
-/

namespace A305517.P5060358424673798447
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A305523 (A001844 n).toNat : ℚ) ^ (A014963 (2 * A000040 (n + 1)).toNat : ℤ)

end

end A305517.P5060358424673798447

/-!
# A305518: Number of nX3 0..1 arrays with every element unequal to 0, 1, 2, 3, 4 or 5 king-move adjacent elements, with upper left element zero.

The programs for A305518, there is no canonical definition to state claims against.
-/

/-! ## A305518.P4493765409293197223

`A305523(∑[n+2]+4)`
-/

namespace A305518.P4493765409293197223
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305523 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A305518.P4493765409293197223

/-! ## A305518.P18350282610348912468

`A305523(A167614(n+1))+A025469(n)`
-/

namespace A305518.P18350282610348912468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305523 (A167614 (n + 1)).toNat + A025469 n

end

end A305518.P18350282610348912468

/-! ## A305518.P8861087955346877780

`A305523(A167614(n+1))+A185284(n)`
-/

namespace A305518.P8861087955346877780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305523 (A167614 (n + 1)).toNat + A185284 n

end

end A305518.P8861087955346877780

/-! ## A305518.P9223139257574437499

`lcm(A033999(n), A305523(A167614(n+1)))`
-/

namespace A305518.P9223139257574437499
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 n) (A305523 (A167614 (n + 1)).toNat)

end

end A305518.P9223139257574437499

/-! ## A305518.P7560477509776238659

`A305523(A167614(n+1))+A034452(n+1)`
-/

namespace A305518.P7560477509776238659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305523 (A167614 (n + 1)).toNat + A034452 (n + 1)

end

end A305518.P7560477509776238659

/-!
# A305519: Number of nX4 0..1 arrays with every element unequal to 0, 1, 2, 3, 4 or 5 king-move adjacent elements, with upper left element zero.

The programs for A305519, there is no canonical definition to state claims against.
-/

/-! ## A305519.P13732083370741425892

`A305523(A374004(n+1))`
-/

namespace A305519.P13732083370741425892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305523 (A374004 (n + 1)).toNat

end

end A305519.P13732083370741425892

/-! ## A305519.P4922318411015750160

`A305523(A052905(n)+9)`
-/

namespace A305519.P4922318411015750160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305523 (A052905 n + 9).toNat

end

end A305519.P4922318411015750160

/-! ## A305519.P2409901682432104949

`A305523(A055999(n)+10)`
-/

namespace A305519.P2409901682432104949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305523 (A055999 n + 10).toNat

end

end A305519.P2409901682432104949

/-! ## A305519.P8116760062022783185

`A305523(A167614(n+2)+1)`
-/

namespace A305519.P8116760062022783185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305523 (A167614 (n + 2) + 1).toNat

end

end A305519.P8116760062022783185

/-! ## A305519.P2232539696872732136

`record[A305523(A167499(n)-A016777(n))]`
-/

namespace A305519.P2232539696872732136
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305523 (A167499 n - A016777 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A305519.P2232539696872732136

/-!
# A305520: Number of nX5 0..1 arrays with every element unequal to 0, 1, 2, 3, 4 or 5 king-move adjacent elements, with upper left element zero.

The programs for A305520, there is no canonical definition to state claims against.
-/

/-! ## A305520.P9947990909326826338

`A305523(A374005(n+1))`
-/

namespace A305520.P9947990909326826338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305523 (A374005 (n + 1)).toNat

end

end A305520.P9947990909326826338

/-! ## A305520.P642554343776839869

`A305523(A167499(n+3))`
-/

namespace A305520.P642554343776839869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305523 (A167499 (n + 3)).toNat

end

end A305520.P642554343776839869

/-! ## A305520.P17623895523518573932

`A305523(A155212(n)+13)`
-/

namespace A305520.P17623895523518573932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305523 (A155212 n + 13).toNat

end

end A305520.P17623895523518573932

/-! ## A305520.P11829864862106748492

`A305523(A167614(n+3)+2)`
-/

namespace A305520.P11829864862106748492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305523 (A167614 (n + 3) + 2).toNat

end

end A305520.P11829864862106748492

/-! ## A305520.P16289348040307492137

`A305523(A046691(n+3))`
-/

namespace A305520.P16289348040307492137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305523 (A046691 (n + 3)).toNat

end

end A305520.P16289348040307492137

/-!
# A305521: Number of nX6 0..1 arrays with every element unequal to 0, 1, 2, 3, 4 or 5 king-move adjacent elements, with upper left element zero.

The programs for A305521, there is no canonical definition to state claims against.
-/

/-! ## A305521.P10692260456253729555

`A305523(A374007(n+1))`
-/

namespace A305521.P10692260456253729555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305523 (A374007 (n + 1)).toNat

end

end A305521.P10692260456253729555

/-! ## A305521.P12214522616635384605

`A305523(eq[7, A131818(n+1)])`
-/

namespace A305521.P12214522616635384605
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305523 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A305521.P12214522616635384605

/-! ## A305521.P1740659465540991825

`A305523(A052905(n+3))`
-/

namespace A305521.P1740659465540991825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305523 (A052905 (n + 3)).toNat

end

end A305521.P1740659465540991825

/-! ## A305521.P16184812891692798840

`A305523(eq[3, A219347(n)])`
-/

namespace A305521.P16184812891692798840
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305523 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A305521.P16184812891692798840

/-! ## A305521.P10296116621072415966

`A305523(eq[5, A193592(n)])`
-/

namespace A305521.P10296116621072415966
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305523 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A305521.P10296116621072415966

/-!
# A305522: Number of nX7 0..1 arrays with every element unequal to 0, 1, 2, 3, 4 or 5 king-move adjacent elements, with upper left element zero.

The programs for A305522, there is no canonical definition to state claims against.
-/

/-! ## A305522.P9557624093292390076

`A305523(A374008(n+1))`
-/

namespace A305522.P9557624093292390076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305523 (A374008 (n + 1)).toNat

end

end A305522.P9557624093292390076

/-! ## A305522.P6785313254540939165

`A305523(A000217(n+6)+7)`
-/

namespace A305522.P6785313254540939165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305523 (A000217 (n + 6) + 7).toNat

end

end A305522.P6785313254540939165

/-! ## A305522.P1427398189412936411

`A305523(eq[8, A131818(n+1)])`
-/

namespace A305522.P1427398189412936411
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305523 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A305522.P1427398189412936411

/-! ## A305522.P11550082382877541390

`A305523(eq[4, A219347(n)])`
-/

namespace A305522.P11550082382877541390
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305523 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A305522.P11550082382877541390

/-! ## A305522.P1962499116302463652

`A305523(eq[6, A193592(n)])`
-/

namespace A305522.P1962499116302463652
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305523 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A305522.P1962499116302463652

/-!
# A305523: T(n,k) = Number of n X k 0..1 arrays with every element unequal to 0, 1, 2, 3, 4 or 5 king-move adjacent elements, with upper left element zero.

The programs for A305523, there is no canonical definition to state claims against.
-/

/-! ## A305523.P17873883714088930198

`A316960(n+1)-A065339(A316960(n+1))²²`
-/

namespace A305523.P17873883714088930198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316960 (n + 1) - (A065339 (A316960 (n + 1)).toNat ^ 2) ^ 2

end

end A305523.P17873883714088930198

/-!
# A305524: Number of nXn 0..1 arrays with every element unequal to 0, 1, 2, 3, 4 or 6 king-move adjacent elements, with upper left element zero.

The programs for A305524, there is no canonical definition to state claims against.
-/

/-! ## A305524.P17032985871719448829

`A305530(∑[4*n]+1)`
-/

namespace A305524.P17032985871719448829
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305530 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A305524.P17032985871719448829

/-! ## A305524.P10329816319323371336

`record[A003982(n)*A305530(n+1)]`
-/

namespace A305524.P10329816319323371336
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A305530 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A305524.P10329816319323371336

/-! ## A305524.P1606336769931946366

`record[gcd(A305530(n+1), A347682(n+1))]`
-/

namespace A305524.P1606336769931946366
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A305530 (n + 1)) (A347682 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A305524.P1606336769931946366

/-! ## A305524.P6211513829871025253

`A305530(A001844(n))+A026816(n)`
-/

namespace A305524.P6211513829871025253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305530 (A001844 n).toNat + A026816 n

end

end A305524.P6211513829871025253

/-! ## A305524.P13505146165149452502

`gcd(A010893(n), A305530(A001844(n)))`
-/

namespace A305524.P13505146165149452502
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A010893 (n + 13)) (A305530 (A001844 n).toNat)

end

end A305524.P13505146165149452502

/-!
# A305525: Number of nX3 0..1 arrays with every element unequal to 0, 1, 2, 3, 4 or 6 king-move adjacent elements, with upper left element zero.

The programs for A305525, there is no canonical definition to state claims against.
-/

/-! ## A305525.P14198482080765025639

`A305530(∑[n+2]+4)`
-/

namespace A305525.P14198482080765025639
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305530 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A305525.P14198482080765025639

/-! ## A305525.P17840757072902773431

`A305530(A167614(n+1))+A185284(n)`
-/

namespace A305525.P17840757072902773431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305530 (A167614 (n + 1)).toNat + A185284 n

end

end A305525.P17840757072902773431

/-! ## A305525.P7559230554015308168

`lcm(A057077(n), A305530(A167614(n+1)))`
-/

namespace A305525.P7559230554015308168
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A057077 n) (A305530 (A167614 (n + 1)).toNat)

end

end A305525.P7559230554015308168

/-! ## A305525.P17125497022513401357

`A305530(A167614(n+1))+A000038(n+1)`
-/

namespace A305525.P17125497022513401357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305530 (A167614 (n + 1)).toNat + A000038 (n + 1)

end

end A305525.P17125497022513401357

/-! ## A305525.P6358399678278317971

`A305530(A167614(n+1))%A016298(n+1)`
-/

namespace A305525.P6358399678278317971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A305530 (A167614 (n + 1)).toNat) (A016298 (n + 1))

end

end A305525.P6358399678278317971

/-!
# A305526: Number of nX4 0..1 arrays with every element unequal to 0, 1, 2, 3, 4 or 6 king-move adjacent elements, with upper left element zero.

The programs for A305526, there is no canonical definition to state claims against.
-/

/-! ## A305526.P12652381664282890644

`A305530(A374004(n+1))`
-/

namespace A305526.P12652381664282890644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305530 (A374004 (n + 1)).toNat

end

end A305526.P12652381664282890644

/-! ## A305526.P11833686482928969145

`A305530(A141214(n)+7)`
-/

namespace A305526.P11833686482928969145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305530 (A141214 n + 7).toNat

end

end A305526.P11833686482928969145

/-! ## A305526.P9011133230371409616

`A305530(A052905(n)+9)`
-/

namespace A305526.P9011133230371409616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305530 (A052905 n + 9).toNat

end

end A305526.P9011133230371409616

/-! ## A305526.P4552035727904054535

`A305530(A055999(n)+10)`
-/

namespace A305526.P4552035727904054535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305530 (A055999 n + 10).toNat

end

end A305526.P4552035727904054535

/-! ## A305526.P8662477313178028651

`A305530(A167614(n+2)+1)`
-/

namespace A305526.P8662477313178028651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305530 (A167614 (n + 2) + 1).toNat

end

end A305526.P8662477313178028651

/-!
# A305527: Number of nX5 0..1 arrays with every element unequal to 0, 1, 2, 3, 4 or 6 king-move adjacent elements, with upper left element zero.

The programs for A305527, there is no canonical definition to state claims against.
-/

/-! ## A305527.P7616915991679526644

`A305530(A374005(n+1))`
-/

namespace A305527.P7616915991679526644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305530 (A374005 (n + 1)).toNat

end

end A305527.P7616915991679526644

/-! ## A305527.P7700070483524290830

`A305530(A167499(n+3))`
-/

namespace A305527.P7700070483524290830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305530 (A167499 (n + 3)).toNat

end

end A305527.P7700070483524290830

/-! ## A305527.P11810172234882396372

`A305530(A051936(n+4)+14)`
-/

namespace A305527.P11810172234882396372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305530 (A051936 (n + 4) + 14).toNat

end

end A305527.P11810172234882396372

/-! ## A305527.P17954366479211644798

`A305530(eq[6, A131818(n+1)])`
-/

namespace A305527.P17954366479211644798
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305530 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A305527.P17954366479211644798

/-! ## A305527.P9378742597576289640

`A305530(Δ[A264443(n)])`
-/

namespace A305527.P9378742597576289640
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305530 (f1 (n + 1) - f1 n).toNat

end

end A305527.P9378742597576289640

/-!
# A305528: Number of nX6 0..1 arrays with every element unequal to 0, 1, 2, 3, 4 or 6 king-move adjacent elements, with upper left element zero.

The programs for A305528, there is no canonical definition to state claims against.
-/

/-! ## A305528.P1852876122959122226

`A305530(A374007(n+1))`
-/

namespace A305528.P1852876122959122226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305530 (A374007 (n + 1)).toNat

end

end A305528.P1852876122959122226

/-! ## A305528.P13703518365782990708

`A305530(eq[7, A131818(n+1)])`
-/

namespace A305528.P13703518365782990708
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305530 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A305528.P13703518365782990708

/-! ## A305528.P171960888927271035

`A305530(A052905(n+3))`
-/

namespace A305528.P171960888927271035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305530 (A052905 (n + 3)).toNat

end

end A305528.P171960888927271035

/-! ## A305528.P11161877190539484242

`A305530(eq[3, A219347(n)])`
-/

namespace A305528.P11161877190539484242
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305530 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A305528.P11161877190539484242

/-! ## A305528.P3234271066317170781

`A305530(eq[5, A193592(n)])`
-/

namespace A305528.P3234271066317170781
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305530 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A305528.P3234271066317170781

/-!
# A305529: Number of nX7 0..1 arrays with every element unequal to 0, 1, 2, 3, 4 or 6 king-move adjacent elements, with upper left element zero.

The programs for A305529, there is no canonical definition to state claims against.
-/

/-! ## A305529.P10831940756541115865

`A305530(A374008(n+1))`
-/

namespace A305529.P10831940756541115865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305530 (A374008 (n + 1)).toNat

end

end A305529.P10831940756541115865

/-! ## A305529.P11901567220242775272

`A305530(eq[11, A066657(n)])`
-/

namespace A305529.P11901567220242775272
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305530 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A305529.P11901567220242775272

/-! ## A305529.P14180181375470445013

`A305530(eq[8, A131818(n+1)])`
-/

namespace A305529.P14180181375470445013
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305530 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A305529.P14180181375470445013

/-! ## A305529.P17416043065706595374

`A305530(A055999(n+4))`
-/

namespace A305529.P17416043065706595374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305530 (A055999 (n + 4)).toNat

end

end A305529.P17416043065706595374

/-! ## A305529.P15881763811423524484

`A305530(eq[4, A219347(n)])`
-/

namespace A305529.P15881763811423524484
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305530 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A305529.P15881763811423524484

/-!
# A305530: T(n,k)=Number of nXk 0..1 arrays with every element unequal to 0, 1, 2, 3, 4 or 6 king-move adjacent elements, with upper left element zero.

The programs for A305530, there is no canonical definition to state claims against.
-/

/-! ## A305530.P8085379558299141759

`A317004(n+1)+A016389(A022166(n))`
-/

namespace A305530.P8085379558299141759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317004 (n + 1) + A016389 (A022166 n).toNat

end

end A305530.P8085379558299141759

/-! ## A305530.P12312654214467180436

`A317004(n+1)+A016389(A027336(n))`
-/

namespace A305530.P12312654214467180436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317004 (n + 1) + A016389 (A027336 n).toNat

end

end A305530.P12312654214467180436

/-! ## A305530.P3893456423968607207

`A317004(n+1)+A016389(A176561(n))`
-/

namespace A305530.P3893456423968607207
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317004 (n + 1) + A016389 (A176561 n).toNat

end

end A305530.P3893456423968607207

/-! ## A305530.P11997849824357728697

`A317004(n+1)+A178780(A174376(n))`
-/

namespace A305530.P11997849824357728697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317004 (n + 1) + A178780 (A174376 n).toNat

end

end A305530.P11997849824357728697

/-! ## A305530.P16285332593793351882

`A317004(n+1)-A011731(A022171(n))`
-/

namespace A305530.P16285332593793351882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317004 (n + 1) - A011731 (A022171 n).toNat

end

end A305530.P16285332593793351882

/-!
# A305531: Smallest k >= 1 such that (n-1)*n^k + 1 is prime.

The programs for A305531, there is no canonical definition to state claims against.
-/

/-! ## A305531.P17955154027751389174

`A083258(ceil(atan(n+1)+(2*n)²/3))%A122853(n+1)`
-/

namespace A305531.P17955154027751389174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A083258 ⌈Real.arctan (n + 1 : ℝ) + (((2 * n) ^ 2 : ℚ) / 3 : ℝ)⌉.toNat) (A122853 (n + 1))

end

end A305531.P17955154027751389174

/-! ## A305531.P11059790079687932353

`A083258(A115285(n)^A008676(n))`
-/

namespace A305531.P11059790079687932353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083258 (SequenceMachineLib.roundAway ((A115285 n : ℚ) ^ (A008676 n : ℤ))).toNat

end

end A305531.P11059790079687932353

/-! ## A305531.P8276449830333798221

`A083258(C(A115285(n), A008676(n)))`
-/

namespace A305531.P8276449830333798221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083258 (Nat.choose (A115285 n).toNat (A008676 n).toNat)

end

end A305531.P8276449830333798221

/-! ## A305531.P7938408383865214644

`A083258(A115285(n))%A122853(n+1)`
-/

namespace A305531.P7938408383865214644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A083258 (A115285 n).toNat) (A122853 (n + 1))

end

end A305531.P7938408383865214644

/-! ## A305531.P13933643225963439260

`gcd(A083258(A115285(n)), A200033(n+2))`
-/

namespace A305531.P13933643225963439260
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A083258 (A115285 n).toNat) (A200033 (n + 2))

end

end A305531.P13933643225963439260

/-!
# A305533: Expansion of 1/(1 - x/(1 - 1*x/(1 - 3*x/(1 - 6*x/(1 - 10*x/(1 - ... - (k*(k + 1)/2)*x/(1 - ...))))))), a continued fraction.

The programs for A305533, there is no canonical definition to state claims against.
-/

/-! ## A305533.P10130602750951776084

`floor(∑[A318361(3^n)+1]/2)`
-/

namespace A305533.P10130602750951776084
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318361 (3 ^ n) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / 2⌋

end

end A305533.P10130602750951776084

/-! ## A305533.P15850158509662170008

`A306385(A307128(n))`
-/

namespace A305533.P15850158509662170008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306385 (A307128 n).toNat

end

end A305533.P15850158509662170008

/-!
# A305534: Index of the smallest prime in the n-Fibonacci sequence, or the Lucas U(n,-1) sequence.

The programs for A305534, there is no canonical definition to state claims against.
-/

/-! ## A305534.P8898332794465468926

`A217650(A321944(n+1)^A152977(n))`
-/

namespace A305534.P8898332794465468926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217650 (SequenceMachineLib.roundAway ((A321944 (n + 1) : ℚ) ^ (A152977 n : ℤ))).toNat

end

end A305534.P8898332794465468926

/-! ## A305534.P5227431420479698841

`A052126(n+1)+A010224(A334774(n+1))`
-/

namespace A305534.P5227431420479698841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052126 (n + 1) + A010224 (A334774 (n + 1)).toNat

end

end A305534.P5227431420479698841

/-!
# A305535: Expansion of 1/(1 - x/(1 - 2*x/(1 - 2*x/(1 - 4*x/(1 - 4*x/(1 - 6*x/(1 - 6*x/(1 - ...)))))))), a continued fraction.

The programs for A305535, there is no canonical definition to state claims against.
-/

/-! ## A305535.P17800674316962718483

`A004525(A185994(n))`
-/

namespace A305535.P17800674316962718483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A185994 n).toNat

end

end A305535.P17800674316962718483

/-! ## A305535.P11480875505012463912

`A004526(A185994(n)+1)`
-/

namespace A305535.P11480875505012463912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A185994 n + 1).toNat

end

end A305535.P11480875505012463912

/-!
# A305536: Expansion of 1/(1 - x/(1 - x - 1*x/(1 - x - 2*x/(1 - x - 3*x/(1 - x - 4*x/(1 - ...)))))), a continued fraction.

The programs for A305536, there is no canonical definition to state claims against.
-/

/-! ## A305536.P13705973623904037202

`A036234(A148453(n)²)`
-/

namespace A305536.P13705973623904037202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036234 (A148453 n ^ 2).toNat

end

end A305536.P13705973623904037202

/-! ## A305536.P3366820412996709067

`A267501(A035009(n)+1)`
-/

namespace A305536.P3366820412996709067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267501 (A035009 n + 1).toNat

end

end A305536.P3366820412996709067

/-!
# A305539: a(n) is a generalized pentagonal number such that 2*a(n) is also a generalized pentagonal number.

The programs for A305539, there is no canonical definition to state claims against.
-/

/-! ## A305539.P9857982064836551450

`∑[34*a(n-1)-a(n-2)]` with `a(0)=0, a(1)=1`
-/

namespace A305539.P9857982064836551450
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n f1 =>
  34 * f1 (n - 1) - f1 (n - 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A305539.P9857982064836551450

/-! ## A305539.P5475872352187793247

`34*a(n-1)-a(n-2)+1` with `a(0)=0, a(1)=1`
-/

namespace A305539.P5475872352187793247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  34 * a (n - 1) - a (n - 2) + 1

end

end A305539.P5475872352187793247

/-! ## A305539.P4953392096430043710

`34*a(n-1)-(a(n-2)-1)` with `a(0)=0, a(1)=1`
-/

namespace A305539.P4953392096430043710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  34 * a (n - 1) - (a (n - 2) - 1)

end

end A305539.P4953392096430043710

/-! ## A305539.P3186926018558907682

`∑[A091761(n)]`
-/

namespace A305539.P3186926018558907682
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091761 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A305539.P3186926018558907682

/-! ## A305539.P3065374478635448567

`A001110(n)-a(n-1)` with `a(0)=0`
-/

namespace A305539.P3065374478635448567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A001110 n - a (n - 1)

end

end A305539.P3065374478635448567

/-! ## A305539.P14332108596328008679

`A001109(n)²-a(n-1)` with `a(0)=0`
-/

namespace A305539.P14332108596328008679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A001109 n ^ 2 - a (n - 1)

end

end A305539.P14332108596328008679

/-! ## A305539.P15989598876490475085

`(A005319(n)/4)²-a(n-1)` with `a(0)=0`
-/

namespace A305539.P15989598876490475085
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [0] fun n a =>
  ((A005319 n : ℚ) / 4) ^ 2 - a (n - 1)

end

end A305539.P15989598876490475085

/-! ## A305539.P3102190694591619187

`∑[∑[A144533(A004273(n))]]`
-/

namespace A305539.P3102190694591619187
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144533 (A004273 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A305539.P3102190694591619187

/-! ## A305539.P17472257320218644867

`A075528(n)/3`
-/

namespace A305539.P17472257320218644867
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A075528 n : ℚ) / 3

end

end A305539.P17472257320218644867

/-! ## A305539.P7439715820888582126

`A029549(n)/6`
-/

namespace A305539.P7439715820888582126
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A029549 n : ℚ) / 6

end

end A305539.P7439715820888582126

/-!
# A305541: Triangle read by rows: T(n,k) is the number of chiral pairs of color loops of length n with exactly k different colors.

The programs for A305541, there is no canonical definition to state claims against.
-/

/-! ## A305541.P15705017529645222275

`A087854(n+1)-A273891(n+1)`
-/

namespace A305541.P15705017529645222275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087854 (n + 1) - A273891 (n + 1)

end

end A305541.P15705017529645222275

/-! ## A305541.P6192421067703015641

`A309651(n+1)+A127247(A070142(3*n+4))`
-/

namespace A305541.P6192421067703015641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309651 (n + 1) + A127247 (A070142 (3 * n + 4)).toNat

end

end A305541.P6192421067703015641

/-! ## A305541.P12375576565820057028

`or(A028306(A303837(3*n+4)), A309651(n+1))`
-/

namespace A305541.P12375576565820057028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A028306 (A303837 (3 * n + 4)).toNat) (A309651 (n + 1))

end

end A305541.P12375576565820057028

/-! ## A305541.P17118668010708387976

`A309651(n+1)+val(A014398(2*(n+1)), A256221(n+5))`
-/

namespace A305541.P17118668010708387976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309651 (n + 1) + (SequenceMachineLib.valuation (A014398 (2 * (n + 1))).toNat (A256221 (n + 5)).toNat : ℤ)

end

end A305541.P17118668010708387976

/-! ## A305541.P9396111705708232444

`A309651(n+1)+A010054(A239087(3*n+4))`
-/

namespace A305541.P9396111705708232444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309651 (n + 1) + A010054 (A239087 (3 * n + 4)).toNat

end

end A305541.P9396111705708232444

/-!
# A305542: Number of chiral pairs of color loops of length n with exactly 3 different colors.

The programs for A305542, the canonical program `A305542.P4052484984925121273` is in `Seq.B014.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A305542 has offset 1).

The definition of A305542 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 215 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A305542.P4052484984925121273

`A056343(n+1)-A056489(n+1)`

The canonical program, it is in `Seq.B014.C000`.
-/

namespace A305542

/-- `A056343(n+1)-A056489(n+1)` -/
def P4052484984925121273.Spec : Prop :=
  ∀ n, P4052484984925121273.a n = A305542 (n + 1)

theorem P4052484984925121273.correct : P4052484984925121273.Spec := by
  intro n
  simp only [A305542, Nat.add_sub_cancel]

end A305542

/-! ## A305542.P4060814485461587633

`A056283(n+1)-A056343(n+1)`
-/

namespace A305542.P4060814485461587633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056283 (n + 1) - A056343 (n + 1)

end

end A305542.P4060814485461587633

namespace A305542

/-- `A056283(n+1)-A056343(n+1)` -/
def P4060814485461587633.Spec : Prop :=
  ∀ n, P4060814485461587633.a n = A305542 (n + 1)

end A305542

/-! ## A305542.P10613301700524861244

`(A056283(n+1)-A056489(n+1))/2`
-/

namespace A305542.P10613301700524861244
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A056283 (n + 1) - A056489 (n + 1) : ℚ) / 2

end

end A305542.P10613301700524861244

namespace A305542

/-- `(A056283(n+1)-A056489(n+1))/2` -/
def P10613301700524861244.Spec : Prop :=
  ∀ n, P10613301700524861244.a n = (A305542 (n + 1) : ℚ)

end A305542

/-! ## A305542.P10522653350489218338

`∑{d}[n+1, A326660(#)]`
-/

namespace A305542.P10522653350489218338
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A326660 d

end

end A305542.P10522653350489218338

namespace A305542

/-- `∑{d}[n+1, A326660(#)]` -/
def P10522653350489218338.Spec : Prop :=
  ∀ n, P10522653350489218338.a n = A305542 (n + 1)

end A305542

/-! ## A305542.P4657005217027001678

`A305541(∑[n]+3)`
-/

namespace A305542.P4657005217027001678
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305541 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A305542.P4657005217027001678

namespace A305542

/-- `A305541(∑[n]+3)` -/
def P4657005217027001678.Spec : Prop :=
  ∀ n, P4657005217027001678.a n = A305542 (n + 1)

end A305542

/-! ## A305542.P2268936217960391511

`A305541(A133263(n)+1)%(11^n)`
-/

namespace A305542.P2268936217960391511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A305541 (A133263 n + 1).toNat) (11 ^ n : ℤ)

end

end A305542.P2268936217960391511

namespace A305542

/-- `A305541(A133263(n)+1)%(11^n)` -/
def P2268936217960391511.Spec : Prop :=
  ∀ n, P2268936217960391511.a n = A305542 (n + 1)

end A305542

/-!
# A305543: Number of chiral pairs of color loops of length n with exactly 4 different colors.

The programs for A305543, the canonical program `A305543.P8141347739697117408` is in `Seq.B013.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A305543 has offset 1).

The definition of A305543 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A056284, A056490, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A305543.P8141347739697117408

`(A056284(n+1)-A056490(n+1))/2`

The canonical program, it is in `Seq.B013.C000`.
-/

namespace A305543

/-- `(A056284(n+1)-A056490(n+1))/2` -/
def P8141347739697117408.Spec : Prop :=
  ∀ n, P8141347739697117408.a n = (A305543 (n + 1) : ℚ)

end A305543

/-! ## A305543.P756381038847350484

`∑{d}[n+1, A326789(#)]`
-/

namespace A305543.P756381038847350484
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A326789 d

end

end A305543.P756381038847350484

namespace A305543

/-- `∑{d}[n+1, A326789(#)]` -/
def P756381038847350484.Spec : Prop :=
  ∀ n, P756381038847350484.a n = A305543 (n + 1)

end A305543

/-! ## A305543.P2955145004610065999

`A056344(n+1)-A056490(n+1)`
-/

namespace A305543.P2955145004610065999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056344 (n + 1) - A056490 (n + 1)

end

end A305543.P2955145004610065999

namespace A305543

/-- `A056344(n+1)-A056490(n+1)` -/
def P2955145004610065999.Spec : Prop :=
  ∀ n, P2955145004610065999.a n = A305543 (n + 1)

end A305543

/-! ## A305543.P18118382512054342009

`A056284(n+1)-A056344(n+1)`
-/

namespace A305543.P18118382512054342009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056284 (n + 1) - A056344 (n + 1)

end

end A305543.P18118382512054342009

namespace A305543

/-- `A056284(n+1)-A056344(n+1)` -/
def P18118382512054342009.Spec : Prop :=
  ∀ n, P18118382512054342009.a n = A305543 (n + 1)

end A305543

/-! ## A305543.P8837726003239225628

`A305541(∑[n]+4)`
-/

namespace A305543.P8837726003239225628
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305541 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A305543.P8837726003239225628

namespace A305543

/-- `A305541(∑[n]+4)` -/
def P8837726003239225628.Spec : Prop :=
  ∀ n, P8837726003239225628.a n = A305543 (n + 1)

end A305543

/-!
# A305544: Number of chiral pairs of color loops of length n with exactly 5 different colors.

The programs for A305544, there is no canonical definition to state claims against.
-/

/-! ## A305544.P2795395169349957215

`A056285(n+1)-A056345(n+1)`
-/

namespace A305544.P2795395169349957215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056285 (n + 1) - A056345 (n + 1)

end

end A305544.P2795395169349957215

/-! ## A305544.P8542692322959858278

`A056345(n+1)-A056491(n+1)`
-/

namespace A305544.P8542692322959858278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056345 (n + 1) - A056491 (n + 1)

end

end A305544.P8542692322959858278

/-! ## A305544.P1421004050876398115

`(A056285(n+1)-A056491(n+1))/2`
-/

namespace A305544.P1421004050876398115
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A056285 (n + 1) - A056491 (n + 1) : ℚ) / 2

end

end A305544.P1421004050876398115

/-! ## A305544.P4138627038865054221

`A305541(A077169(n+1))`
-/

namespace A305544.P4138627038865054221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305541 (A077169 (n + 1)).toNat

end

end A305544.P4138627038865054221

/-! ## A305544.P5658748140143102578

`A305541(∑[A000194(A087475(n))])`
-/

namespace A305544.P5658748140143102578
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000194 (A087475 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305541 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A305544.P5658748140143102578

/-! ## A305544.P2386451880094961049

`A305541(A128999(n+1)+A000217(n))`
-/

namespace A305544.P2386451880094961049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305541 (A128999 (n + 1) + A000217 n).toNat

end

end A305544.P2386451880094961049

/-!
# A305545: Number of chiral pairs of color loops of length n with exactly 6 different colors.

The programs for A305545, there is no canonical definition to state claims against.
-/

/-! ## A305545.P8058818156212719125

`(A056286(n+1)-A056492(n+1))/2`
-/

namespace A305545.P8058818156212719125
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A056286 (n + 1) - A056492 (n + 1) : ℚ) / 2

end

end A305545.P8058818156212719125

/-! ## A305545.P13393722820633800890

`A056286(n+1)-A056346(n+1)`
-/

namespace A305545.P13393722820633800890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056286 (n + 1) - A056346 (n + 1)

end

end A305545.P13393722820633800890

/-! ## A305545.P2786351827420154626

`A056346(n+1)-A056492(n+1)`
-/

namespace A305545.P2786351827420154626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056346 (n + 1) - A056492 (n + 1)

end

end A305545.P2786351827420154626

/-! ## A305545.P16825418692715903195

`A305541(A077169(n+1)+1)`
-/

namespace A305545.P16825418692715903195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305541 (A077169 (n + 1) + 1).toNat

end

end A305545.P16825418692715903195

/-! ## A305545.P12021590260770434659

`A305541(A128999(n+1)+A000217(n)+1)`
-/

namespace A305545.P12021590260770434659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305541 (A128999 (n + 1) + (A000217 n + 1)).toNat

end

end A305545.P12021590260770434659

/-!
# A305547: Expansion of e.g.f. Product_{k>=1} (1 + (exp(x) - 1)^k/k!).

The programs for A305547, there is no canonical definition to state claims against.
-/

/-! ## A305547.P17404834442559315294

`ceil(A039632(n+5)/49)`
-/

namespace A305547.P17404834442559315294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A039632 (n + 5) : ℚ) / 49⌉

end

end A305547.P17404834442559315294

/-! ## A305547.P2650745161434059279

`A005041(∏[(1-n)²+n])`
-/

namespace A305547.P2650745161434059279
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - (n : ℤ)) ^ 2 + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005041 (∏ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A305547.P2650745161434059279

/-!
# A305548: a(n) = 27*n.

The programs for A305548, the canonical program `A305548.P17403744554045376548` is in `Seq.B000.C035`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A305548 has offset 0).

The definition of A305548 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `27*n` (program `A305548.P17403744554045376548`, by `A305548.P17403744554045376548.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A305548.P17403744554045376548

`27*n`

The canonical program, it is in `Seq.B000.C035`.
-/

namespace A305548

/-- `27*n` -/
def P17403744554045376548.Spec : Prop :=
  ∀ n, (P17403744554045376548.a n : ℤ) = A305548 n

theorem P17403744554045376548.correct : P17403744554045376548.Spec := by
  intro n
  simp only [A305548]

end A305548

/-!
# A305549: Crystal ball sequence for the lattice C_6.

The programs for A305549, the canonical program `A305549.P11754656348602292953` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A305549 has offset 0).

The definition of A305549 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A305549.P11754656348602292953

`∑[A019562(n)]`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A305549

/-- `∑[A019562(n)]` -/
def P11754656348602292953.Spec : Prop :=
  ∀ n, P11754656348602292953.a n = A305549 n

theorem P11754656348602292953.correct : P11754656348602292953.Spec := by
  intro n
  simp only [A305549]

end A305549

/-! ## A305549.P14402129132004467715

`∑[A008414(2*n)]`
-/

namespace A305549.P14402129132004467715
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008414 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A305549.P14402129132004467715

namespace A305549

/-- `∑[A008414(2*n)]` -/
def P14402129132004467715.Spec : Prop :=
  ∀ n, P14402129132004467715.a n = A305549 n

end A305549

/-! ## A305549.P5779749691161011631

`∑[record[A008414(and(n, n+1))]]`
-/

namespace A305549.P5779749691161011631
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008414 (Nat.land n (n + 1))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A305549.P5779749691161011631

namespace A305549

/-- `∑[record[A008414(and(n, n+1))]]` -/
def P5779749691161011631.Spec : Prop :=
  ∀ n, P5779749691161011631.a n = A305549 n

end A305549

/-! ## A305549.P6075018011682613342

`A008414(n+n)+a(n-1)` with `a(0)=1`
-/

namespace A305549.P6075018011682613342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A008414 (n + n) + a (n - 1)

end

end A305549.P6075018011682613342

namespace A305549

/-- `A008414(n+n)+a(n-1)` -/
def P6075018011682613342.Spec : Prop :=
  ∀ n, P6075018011682613342.a n = A305549 n

end A305549

/-! ## A305549.P54183157360273729

`A069039(A004277(n)-1)+A019562(n)`
-/

namespace A305549.P54183157360273729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069039 (A004277 n - 1).toNat + A019562 n

end

end A305549.P54183157360273729

namespace A305549

/-- `A069039(A004277(n)-1)+A019562(n)` -/
def P54183157360273729.Spec : Prop :=
  ∀ n, P54183157360273729.a n = A305549 n

end A305549

/-! ## A305549.P8985639809418082589

`A069039(Δ[n²])`
-/

namespace A305549.P8985639809418082589
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069039 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A305549.P8985639809418082589

namespace A305549

/-- `A069039(Δ[n²])` -/
def P8985639809418082589.Spec : Prop :=
  ∀ n, P8985639809418082589.a n = A305549 n

end A305549

/-! ## A305549.P992937569036253652

`A035600(Δ[n²])/2`
-/

namespace A305549.P992937569036253652
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A035600 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat : ℚ) / 2

end

end A305549.P992937569036253652

namespace A305549

/-- `A035600(Δ[n²])/2` -/
def P992937569036253652.Spec : Prop :=
  ∀ n, P992937569036253652.a n = (A305549 n : ℚ)

end A305549

/-! ## A305549.P8604236114392875703

`A069039(2*n)+A001847(2*n)`
-/

namespace A305549.P8604236114392875703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069039 (2 * n) + A001847 (2 * n)

end

end A305549.P8604236114392875703

namespace A305549

/-- `A069039(2*n)+A001847(2*n)` -/
def P8604236114392875703.Spec : Prop :=
  ∀ n, P8604236114392875703.a n = A305549 n

end A305549

/-! ## A305549.P10114655246996363434

`A001848(2*n)-A069039(2*n)`
-/

namespace A305549.P10114655246996363434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001848 (2 * n) - A069039 (2 * n)

end

end A305549.P10114655246996363434

namespace A305549

/-- `A001848(2*n)-A069039(2*n)` -/
def P10114655246996363434.Spec : Prop :=
  ∀ n, P10114655246996363434.a n = A305549 n

end A305549

/-! ## A305549.P7152736817078108564

`(A001848(2*n)+A001847(2*n))/2`
-/

namespace A305549.P7152736817078108564
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001848 (2 * n) + A001847 (2 * n) : ℚ) / 2

end

end A305549.P7152736817078108564

namespace A305549

/-- `(A001848(2*n)+A001847(2*n))/2` -/
def P7152736817078108564.Spec : Prop :=
  ∀ n, P7152736817078108564.a n = (A305549 n : ℚ)

end A305549

/-! ## A305549.P3780971706609130134

`A001848(2*n)-A035600(2*n)/2`
-/

namespace A305549.P3780971706609130134
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001848 (2 * n) : ℚ) - (A035600 (2 * n) : ℚ) / 2

end

end A305549.P3780971706609130134

namespace A305549

/-- `A001848(2*n)-A035600(2*n)/2` -/
def P3780971706609130134.Spec : Prop :=
  ∀ n, P3780971706609130134.a n = (A305549 n : ℚ)

end A305549

/-! ## A305549.P17475486000072861815

`A047663(2*n+1)-A047661(2*n+1)`
-/

namespace A305549.P17475486000072861815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047663 (2 * n + 1) - A047661 (2 * n + 1)

end

end A305549.P17475486000072861815

namespace A305549

/-- `A047663(2*n+1)-A047661(2*n+1)` -/
def P17475486000072861815.Spec : Prop :=
  ∀ n, P17475486000072861815.a n = A305549 n

end A305549

/-! ## A305549.P7813353802766920800

`A035600(2*n+1)-A069039(2*n+1)`
-/

namespace A305549.P7813353802766920800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035600 (2 * n + 1) - A069039 (2 * n + 1)

end

end A305549.P7813353802766920800

namespace A305549

/-- `A035600(2*n+1)-A069039(2*n+1)` -/
def P7813353802766920800.Spec : Prop :=
  ∀ n, P7813353802766920800.a n = A305549 n

end A305549

/-! ## A305549.P2094540800972077289

`A069039(2*n+1)²/A069039(A004273(n+1))`
-/

namespace A305549.P2094540800972077289
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A069039 (2 * n + 1) ^ 2 : ℚ) / (A069039 (A004273 (n + 1)).toNat : ℚ)

end

end A305549.P2094540800972077289

namespace A305549

/-- `A069039(2*n+1)²/A069039(A004273(n+1))` -/
def P2094540800972077289.Spec : Prop :=
  ∀ n, P2094540800972077289.a n = (A305549 n : ℚ)

end A305549

/-! ## A305549.P929690543083808248

`A035600(2*n+1)*A069039(n+1)/A035600(n+1)`
-/

namespace A305549.P929690543083808248
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A035600 (2 * n + 1) * A069039 (n + 1) : ℚ) / (A035600 (n + 1) : ℚ)

end

end A305549.P929690543083808248

namespace A305549

/-- `A035600(2*n+1)*A069039(n+1)/A035600(n+1)` -/
def P929690543083808248.Spec : Prop :=
  ∀ n, P929690543083808248.a n = (A305549 n : ℚ)

end A305549

/-! ## A305549.P7031462171498079600

`A069039(2*n+1)%A035600(2*(n+1))`
-/

namespace A305549.P7031462171498079600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A069039 (2 * n + 1)) (A035600 (2 * (n + 1)))

end

end A305549.P7031462171498079600

namespace A305549

/-- `A069039(2*n+1)%A035600(2*(n+1))` -/
def P7031462171498079600.Spec : Prop :=
  ∀ n, P7031462171498079600.a n = A305549 n

end A305549

/-! ## A305549.P14059312262128836652

`A069039(2*n+1)%A227485(n)`
-/

namespace A305549.P14059312262128836652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A069039 (2 * n + 1)) (A227485 n)

end

end A305549.P14059312262128836652

namespace A305549

/-- `A069039(2*n+1)%A227485(n)` -/
def P14059312262128836652.Spec : Prop :=
  ∀ n, P14059312262128836652.a n = A305549 n

end A305549

/-!
# A305550: Expansion of e.g.f. Product_{k>=1} (1 + (exp(x) - 1)^k).

The programs for A305550, there is no canonical definition to state claims against.
-/

/-! ## A305550.P2783989660654639587

`A069321(n)-A023443(A306082(n))`
-/

namespace A305550.P2783989660654639587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069321 n - A023443 (A306082 n).toNat

end

end A305550.P2783989660654639587

/-! ## A305550.P10307871099048223733

`A028310(A091346(n))`
-/

namespace A305550.P10307871099048223733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A091346 n).toNat

end

end A305550.P10307871099048223733

/-!
# A305551: Number of partitions of partitions of n where all partitions have the same sum.

The programs for A305551, there is no canonical definition to state claims against.
-/

/-! ## A305551.P7654821926447833401

`A320887(2^n)`
-/

namespace A305551.P7654821926447833401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320887 (2 ^ n)

end

end A305551.P7654821926447833401

/-! ## A305551.P6319649257606134999

`A320887(A000079(n))+char[18]`
-/

namespace A305551.P6319649257606134999
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  18

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320887 (A000079 n).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A305551.P6319649257606134999

/-! ## A305551.P7033190872566077431

`A326543(n)+A320887(A000079(n))`
-/

namespace A305551.P7033190872566077431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326543 n + A320887 (A000079 n).toNat

end

end A305551.P7033190872566077431

/-! ## A305551.P11572060100656892461

`A326545(n)+A320887(A000079(n))`
-/

namespace A305551.P11572060100656892461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326545 n + A320887 (A000079 n).toNat

end

end A305551.P11572060100656892461

/-! ## A305551.P4025440512921175938

`A326683(n)+A320887(A000079(n))`
-/

namespace A305551.P4025440512921175938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326683 n + A320887 (A000079 n).toNat

end

end A305551.P4025440512921175938

/-!
# A305552: Number of uniform normal multiset partitions of weight n.

The programs for A305552, there is no canonical definition to state claims against.
-/

/-! ## A305552.P1798304138064154326

`A093555(A064628(2*n))+A027306(n)`
-/

namespace A305552.P1798304138064154326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093555 (A064628 (2 * n)).toNat + A027306 n

end

end A305552.P1798304138064154326

/-!
# A305553: Numbers that are not the sum of 2 squares and a 4th power.

The programs for A305553, there is no canonical definition to state claims against.
-/

/-! ## A305553.P13317929824300448480

`A353219(∑[A357137((n+1)²)])`
-/

namespace A305553.P13317929824300448480
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357137 ((n + 1) ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353219 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A305553.P13317929824300448480

/-! ## A305553.P7602816064618968457

`lt[A289841(A155009(2*(n+1))), A289841(n+4)]`
-/

namespace A305553.P7602816064618968457
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289841 (A155009 (2 * (n + 1))).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289841 (n + 4)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A305553.P7602816064618968457

/-!
# A305554: Sum of the areas of all D-elevated skew paths of semi-length n.

The programs for A305554, there is no canonical definition to state claims against.
-/

/-! ## A305554.P16439486266426610639

`A059995(A081625(n)+4-n)`
-/

namespace A305554.P16439486266426610639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059995 (A081625 n + (4 - (n : ℤ))).toNat

end

end A305554.P16439486266426610639

/-! ## A305554.P283249746816638129

`A357598(n+1)-A357646(A122514(2*n+3))`
-/

namespace A305554.P283249746816638129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357598 (n + 1) - A357646 (A122514 (2 * n + 3)).toNat

end

end A305554.P283249746816638129

/-!
# A305555: Sum of the areas of all L-elevated skew paths of semi-length n.

The programs for A305555, there is no canonical definition to state claims against.
-/

/-! ## A305555.P13207591326305232477

`A050501(9*n*a(n-1)+2)` with `a(0)=0, a(1)=0`
-/

namespace A305555.P13207591326305232477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0] fun n a =>
  A050501 (9 * ((n : ℤ) * a (n - 1)) + 2).toNat

end

end A305555.P13207591326305232477

/-! ## A305555.P9383282115647650397

`A176044(A080069(n)+1)`
-/

namespace A305555.P9383282115647650397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176044 (A080069 n + 1).toNat

end

end A305555.P9383282115647650397

/-!
# A305556: Irregular triangle read by rows: T(n,k) is the number of superdiagonal bargraphs with area n and with k columns.

The programs for A305556, there is no canonical definition to state claims against.
-/

/-! ## A305556.P16397363249600087981

`A102547((∑{d}[floor(2^(n-1)), #]+1)%2+n+1)`
-/

namespace A305556.P16397363249600087981
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102547 ((∑ d ∈ Nat.divisors (f1 n).natAbs, d + 1) % 2 + (n + 1))

end

end A305556.P16397363249600087981

/-! ## A305556.P3364980584358398234

`A102547(n+1)%(A335457(n)+1)`
-/

namespace A305556.P3364980584358398234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A102547 (n + 1)) (A335457 n + 1)

end

end A305556.P3364980584358398234

/-! ## A305556.P18184272950807385673

`A102547(n+1)^A007423(p?[n²+16]-16)`
-/

namespace A305556.P18184272950807385673
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2 + 16

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A102547 (n + 1) : ℚ) ^ (A007423 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) - 16) : ℤ)

end

end A305556.P18184272950807385673

/-! ## A305556.P8629950102121764575

`A357375(A033848(n+2))`
-/

namespace A305556.P8629950102121764575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357375 (A033848 (n + 2)).toNat

end

end A305556.P8629950102121764575

/-! ## A305556.P11486920103421377640

`A102547(A187829(n+1))`
-/

namespace A305556.P11486920103421377640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102547 (A187829 (n + 1)).toNat

end

end A305556.P11486920103421377640

/-!
# A305557: a(1) = a(2) = 1; a(n) = n - a(a(n-2)) - a(n-a(n-2)) for n > 2.

The programs for A305557, the canonical program `A305557.P5056517368096765067` is in `Seq.B000.C035`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A305557 has offset 1).

The definition of A305557 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n+1-a(a(n-2)-1)-a(n-a(n-2))` (program `A305557.P5056517368096765067`, by `A305557.P5056517368096765067.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A305557.P5056517368096765067

`n+1-a(a(n-2)-1)-a(n-a(n-2))` with `a(0)=1, a(1)=1`

The canonical program, it is in `Seq.B000.C035`.
-/

namespace A305557

/-- `n+1-a(a(n-2)-1)-a(n-a(n-2))` -/
def P5056517368096765067.Spec : Prop :=
  ∀ n, P5056517368096765067.a n = A305557 (n + 1)

theorem P5056517368096765067.correct : P5056517368096765067.Spec := by
  intro n
  simp only [A305557, Nat.add_sub_cancel]

end A305557

/-! ## A305557.P13609580148542541703

`∑[A187950(A014641(A184738(n+1)))]`
-/

namespace A305557.P13609580148542541703
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187950 (A014641 (A184738 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A305557.P13609580148542541703

namespace A305557

/-- `∑[A187950(A014641(A184738(n+1)))]` -/
def P13609580148542541703.Spec : Prop :=
  ∀ n, P13609580148542541703.a n = A305557 (n + 1)

end A305557

/-! ## A305557.P15532109970258490996

`∑[A285952(A242108(n)+A114537(n+1))]`
-/

namespace A305557.P15532109970258490996
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285952 (A242108 n + A114537 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A305557.P15532109970258490996

namespace A305557

/-- `∑[A285952(A242108(n)+A114537(n+1))]` -/
def P15532109970258490996.Spec : Prop :=
  ∀ n, P15532109970258490996.a n = A305557 (n + 1)

end A305557

/-! ## A305557.P8511450894189091899

`∑[A226463(record[A226502(2*n+1)])]`
-/

namespace A305557.P8511450894189091899
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226502 (2 * n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226463 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A305557.P8511450894189091899

namespace A305557

/-- `∑[A226463(record[A226502(2*n+1)])]` -/
def P8511450894189091899.Spec : Prop :=
  ∀ n, P8511450894189091899.a n = A305557 (n + 1)

end A305557

/-! ## A305557.P11922595801321940111

`∑[A039982(A000124(A250769(n+1)))]`
-/

namespace A305557.P11922595801321940111
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039982 (A000124 (A250769 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A305557.P11922595801321940111

namespace A305557

/-- `∑[A039982(A000124(A250769(n+1)))]` -/
def P11922595801321940111.Spec : Prop :=
  ∀ n, P11922595801321940111.a n = A305557 (n + 1)

end A305557

/-!
# A305558: If (p1,p2) is the n-th twin prime pair and p the prime before p1 and q the prime after p2 then a(n) = p + q - (p1 + p2).

The programs for A305558, the canonical program `A305558.P7441246682485823562` is in `Seq.B013.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A305558 has offset 1).

The definition of A305558 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000040, A001359, A006512, A029707, A107770, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A305558.P7441246682485823562

`A000040(A029707(n+1)-1)+A000040(A107770(n+1)+1)-(A001359(n+1)+A006512(n+1))`

The canonical program, it is in `Seq.B013.C000`.
-/

namespace A305558

/-- `A000040(A029707(n+1)-1)+A000040(A107770(n+1)+1)-(A001359(n+1)+A006512(n+1))` -/
def P7441246682485823562.Spec : Prop :=
  ∀ n, P7441246682485823562.a n = A305558 (n + 1)

theorem P7441246682485823562.correct : P7441246682485823562.Spec := by
  intro n
  simp only [A305558, Nat.add_sub_cancel]

end A305558

/-! ## A305558.P27703621975583429

`A084291(n+1)-A084290(n+1)`
-/

namespace A305558.P27703621975583429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084291 (n + 1) - A084290 (n + 1)

end

end A305558.P27703621975583429

namespace A305558

/-- `A084291(n+1)-A084290(n+1)` -/
def P27703621975583429.Spec : Prop :=
  ∀ n, P27703621975583429.a n = A305558 (n + 1)

end A305558

/-! ## A305558.P17542252229157321285

`A261470(A155752(n+1))`
-/

namespace A305558.P17542252229157321285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261470 (A155752 (n + 1)).toNat

end

end A305558.P17542252229157321285

namespace A305558

/-- `A261470(A155752(n+1))` -/
def P17542252229157321285.Spec : Prop :=
  ∀ n, P17542252229157321285.a n = A305558 (n + 1)

end A305558

/-! ## A305558.P3807961852862367606

`A261470(∑[A242767(n+2)])`
-/

namespace A305558.P3807961852862367606
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242767 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261470 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A305558.P3807961852862367606

namespace A305558

/-- `A261470(∑[A242767(n+2)])` -/
def P3807961852862367606.Spec : Prop :=
  ∀ n, P3807961852862367606.a n = A305558 (n + 1)

end A305558

/-! ## A305558.P8162654222261243220

`A261470(A029707(n+1)-1)`
-/

namespace A305558.P8162654222261243220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261470 (A029707 (n + 1) - 1).toNat

end

end A305558.P8162654222261243220

namespace A305558

/-- `A261470(A029707(n+1)-1)` -/
def P8162654222261243220.Spec : Prop :=
  ∀ n, P8162654222261243220.a n = A305558 (n + 1)

end A305558

/-! ## A305558.P12361014884288063147

`A261470(A107770(n+1)-2)`
-/

namespace A305558.P12361014884288063147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261470 (A107770 (n + 1) - 2).toNat

end

end A305558.P12361014884288063147

namespace A305558

/-- `A261470(A107770(n+1)-2)` -/
def P12361014884288063147.Spec : Prop :=
  ∀ n, P12361014884288063147.a n = A305558 (n + 1)

end A305558

/-! ## A305558.P889352528722525838

`A261470(eq[1, A046933(n+1)])`
-/

namespace A305558.P889352528722525838
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046933 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261470 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A305558.P889352528722525838

namespace A305558

/-- `A261470(eq[1, A046933(n+1)])` -/
def P889352528722525838.Spec : Prop :=
  ∀ n, P889352528722525838.a n = A305558 (n + 1)

end A305558

/-! ## A305558.P7932189102890483196

`A261470(eq[1, A074927(n+1)])`
-/

namespace A305558.P7932189102890483196
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074927 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261470 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A305558.P7932189102890483196

namespace A305558

/-- `A261470(eq[1, A074927(n+1)])` -/
def P7932189102890483196.Spec : Prop :=
  ∀ n, P7932189102890483196.a n = A305558 (n + 1)

end A305558

/-! ## A305558.P8868467401402590855

`A261470(eq[2, A001223(n+1)])`
-/

namespace A305558.P8868467401402590855
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001223 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261470 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A305558.P8868467401402590855

namespace A305558

/-- `A261470(eq[2, A001223(n+1)])` -/
def P8868467401402590855.Spec : Prop :=
  ∀ n, P8868467401402590855.a n = A305558 (n + 1)

end A305558

/-! ## A305558.P16518720306582378425

`A261470(eq[2, A049234(n+1)])`
-/

namespace A305558.P16518720306582378425
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049234 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261470 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A305558.P16518720306582378425

namespace A305558

/-- `A261470(eq[2, A049234(n+1)])` -/
def P16518720306582378425.Spec : Prop :=
  ∀ n, P16518720306582378425.a n = A305558 (n + 1)

end A305558

/-! ## A305558.P4844683218249127997

`A261470(eq[2, A000040(n+2)-A000040(n+1)])`
-/

namespace A305558.P4844683218249127997
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 2) - A000040 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261470 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A305558.P4844683218249127997

namespace A305558

/-- `A261470(eq[2, A000040(n+2)-A000040(n+1)])` -/
def P4844683218249127997.Spec : Prop :=
  ∀ n, P4844683218249127997.a n = A305558 (n + 1)

end A305558

/-!
# A305559: [0, -1, -1] together with A000290.

The programs for A305559, the canonical program `A305559.P10038066497483246434` is in `Seq.B000.C035`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A305559 has offset 0).

The definition of A305559 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A305559.P1998051718206106182

`round((n-3)^(2-3^(2-n)))`
-/

namespace A305559.P1998051718206106182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (((n : ℤ) - 3 : ℝ) ^ (2 - (3 : ℚ) ^ (2 - (n : ℤ) : ℤ) : ℝ))

end

end A305559.P1998051718206106182

namespace A305559

/-- `round((n-3)^(2-3^(2-n)))` -/
def P1998051718206106182.Spec : Prop :=
  ∀ n, P1998051718206106182.a n = A305559 n

end A305559

/-! ## A305559.P1439794859817501102

`floor((n-3)^(2-C(5, n+3)))`
-/

namespace A305559.P1439794859817501102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((n : ℤ) - 3 : ℚ) ^ (2 - (Nat.choose 5 (n + 3) : ℤ) : ℤ)⌋

end

end A305559.P1439794859817501102

namespace A305559

/-- `floor((n-3)^(2-C(5, n+3)))` -/
def P1439794859817501102.Spec : Prop :=
  ∀ n, P1439794859817501102.a n = A305559 n

end A305559

/-! ## A305559.P10038066497483246434

`∑[a(n-1)+2]` with `a(0)=0, a(1)=-1, a(2)=0, a(3)=1, a(4)=1`

The canonical program, it is in `Seq.B000.C035`.
-/

namespace A305559

/-- `∑[a(n-1)+2]` -/
def P10038066497483246434.Spec : Prop :=
  ∀ n, P10038066497483246434.a n = A305559 n

theorem P10038066497483246434.correct : P10038066497483246434.Spec := by
  intro n
  simp only [A305559]

end A305559

/-! ## A305559.P16670013178255673187

`(sqrt(a(n-1))+1)²` with `a(0)=0, a(1)=-1, a(2)=-1, a(3)=0`
-/

namespace A305559.P16670013178255673187
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.rec [0, -1, -1, 0] fun n a =>
  (Real.sqrt (a (n - 1)) + 1) ^ 2

end

end A305559.P16670013178255673187

namespace A305559

/-- `(sqrt(a(n-1))+1)²` -/
def P16670013178255673187.Spec : Prop :=
  ∀ n, P16670013178255673187.a n = (A305559 n : ℝ)

end A305559

/-! ## A305559.P16260281366160436796

`ogf((-x+2x^2-x^4+2x^5)/(1-3x+3x^2-x^3))`
-/

namespace A305559.P16260281366160436796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, -1, 2, 0, -1, 2] [1, -3, 3, -1] n

end

end A305559.P16260281366160436796

namespace A305559

/-- `ogf((-x+2x^2-x^4+2x^5)/(1-3x+3x^2-x^3))` -/
def P16260281366160436796.Spec : Prop :=
  ∀ n, P16260281366160436796.a n = A305559 n

end A305559

/-! ## A305559.P12203780441514535455

`n-∑[a(n-1)-2]` with `a(0)=0, a(1)=2, a(2)=1, a(3)=0, a(4)=0`
-/

namespace A305559.P12203780441514535455
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 2, 1, 0, 0] fun n f1 =>
  f1 (n - 1) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A305559.P12203780441514535455

namespace A305559

/-- `n-∑[a(n-1)-2]` -/
def P12203780441514535455.Spec : Prop :=
  ∀ n, P12203780441514535455.a n = A305559 n

end A305559

/-! ## A305559.P11087591272643989856

`C(2*n, 2)-A333637(n+3)`
-/

namespace A305559.P11087591272643989856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose (2 * n) 2 : ℤ) - A333637 (n + 3)

end

end A305559.P11087591272643989856

namespace A305559

/-- `C(2*n, 2)-A333637(n+3)` -/
def P11087591272643989856.Spec : Prop :=
  ∀ n, P11087591272643989856.a n = A305559 n

end A305559

/-! ## A305559.P3420929993330520130

`A330715(Δ[n²])-(n+1)`
-/

namespace A305559.P3420929993330520130
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330715 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat - (n + 1 : ℤ)

end

end A305559.P3420929993330520130

namespace A305559

/-- `A330715(Δ[n²])-(n+1)` -/
def P3420929993330520130.Spec : Prop :=
  ∀ n, P3420929993330520130.a n = A305559 n

end A305559

/-! ## A305559.P15405034160515435200

`((n-3)*abs(3-n))%∏[2*n+1]`
-/

namespace A305559.P15405034160515435200
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (((n : ℤ) - 3) * |3 - (n : ℤ)|) ((∏ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A305559.P15405034160515435200

namespace A305559

/-- `((n-3)*abs(3-n))%∏[2*n+1]` -/
def P15405034160515435200.Spec : Prop :=
  ∀ n, P15405034160515435200.a n = A305559 n

end A305559

/-!
# A305560: Expansion of Sum_{k>=0} binomial(k,floor(k/2))*x^k/Product_{j=1..k} (1 - j*x).

The programs for A305560, there is no canonical definition to state claims against.
-/

/-! ## A305560.P12499283153003896358

`A108954(A151374(n)+A005132(n))`
-/

namespace A305560.P12499283153003896358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108954 (A151374 n + A005132 n).toNat

end

end A305560.P12499283153003896358

/-! ## A305560.P9059829985683527966

`A108954(A151374(n)+A072153(n))`
-/

namespace A305560.P9059829985683527966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108954 (A151374 n + A072153 n).toNat

end

end A305560.P9059829985683527966

/-! ## A305560.P9777740300444773997

`A060715(A151374(n)+A089625(n+1))`
-/

namespace A305560.P9777740300444773997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060715 (A151374 n + A089625 (n + 1)).toNat

end

end A305560.P9777740300444773997

/-!
# A305561: Expansion of 2*x*(1 - 2*x)/(1 + 2*x - 8*x^2 - sqrt(1 - 4*x^2)).

The programs for A305561, there is no canonical definition to state claims against.
-/

/-! ## A305561.P10234594096454411220

`ceil(A098617(n)/2)`
-/

namespace A305561.P10234594096454411220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A098617 n : ℚ) / 2⌉

end

end A305561.P10234594096454411220

/-! ## A305561.P359518975523488264

`A098617(n)/A036453(n+1)`
-/

namespace A305561.P359518975523488264
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A098617 n : ℚ) / (A036453 (n + 1) : ℚ)

end

end A305561.P359518975523488264

/-! ## A305561.P4862337393778208166

`A098617(A004277(n)-n)/2`
-/

namespace A305561.P4862337393778208166
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A098617 (A004277 n - (n : ℤ)).toNat : ℚ) / 2

end

end A305561.P4862337393778208166

/-! ## A305561.P12435467004860453716

`A098617(n)/A020639(A001316(n))`
-/

namespace A305561.P12435467004860453716
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A098617 n : ℚ) / (A020639 (A001316 n).toNat : ℚ)

end

end A305561.P12435467004860453716

/-! ## A305561.P10213066141520429937

`A098617(n)/A020639(A004011(n))`
-/

namespace A305561.P10213066141520429937
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A098617 n : ℚ) / (A020639 (A004011 n).toNat : ℚ)

end

end A305561.P10213066141520429937

/-! ## A305561.P13290535319127479633

`A098617(n)/A020639(A004277(n))`
-/

namespace A305561.P13290535319127479633
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A098617 n : ℚ) / (A020639 (A004277 n).toNat : ℚ)

end

end A305561.P13290535319127479633

/-! ## A305561.P1881586381271252086

`A098617(n)/A020639(A311002(n))`
-/

namespace A305561.P1881586381271252086
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A098617 n : ℚ) / (A020639 (A311002 n).toNat : ℚ)

end

end A305561.P1881586381271252086

/-! ## A305561.P1786542572857604109

`A098617(n)/A000034(A004277(n)+1)`
-/

namespace A305561.P1786542572857604109
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A098617 n : ℚ) / (A000034 (A004277 n + 1).toNat : ℚ)

end

end A305561.P1786542572857604109

/-!
# A305562: Coefficients associated with power series solution of g'(x) = g(x/2) e^x at x=0.

The programs for A305562, there is no canonical definition to state claims against.
-/

/-! ## A305562.P10776500448270319562

`A386393(A025702(n))`
-/

namespace A305562.P10776500448270319562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386393 (A025702 n).toNat

end

end A305562.P10776500448270319562

/-! ## A305562.P10779170632697084181

`A386393(A025717(n))`
-/

namespace A305562.P10779170632697084181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386393 (A025717 n).toNat

end

end A305562.P10779170632697084181

/-! ## A305562.P4036541582278607951

`A386393(A074134(n+1))`
-/

namespace A305562.P4036541582278607951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386393 (A074134 (n + 1)).toNat

end

end A305562.P4036541582278607951

/-! ## A305562.P10418076187947222654

`A386393(A075346(n+1))`
-/

namespace A305562.P10418076187947222654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386393 (A075346 (n + 1)).toNat

end

end A305562.P10418076187947222654

/-! ## A305562.P1645238047543183004

`A386393(A076307(n+1))`
-/

namespace A305562.P1645238047543183004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386393 (A076307 (n + 1)).toNat

end

end A305562.P1645238047543183004

/-!
# A305563: Number of reducible integer partitions of n.

The programs for A305563, there is no canonical definition to state claims against.
-/

/-! ## A305563.P12136429436585347666

`record[A035363(n)]-A305731(n+1)`
-/

namespace A305563.P12136429436585347666
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035363 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A305731 (n + 1)

end

end A305563.P12136429436585347666

/-! ## A305563.P13838807045825457134

`record[A175595(n)]-A305731(n+1)`
-/

namespace A305563.P13838807045825457134
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175595 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A305731 (n + 1)

end

end A305563.P13838807045825457134

/-! ## A305563.P11630008969886816244

`record[A175788(n)]-A305731(n+1)`
-/

namespace A305563.P11630008969886816244
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175788 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A305731 (n + 1)

end

end A305563.P11630008969886816244

/-! ## A305563.P1607730575558003434

`A000041(n+1)-A305731(n+1)`
-/

namespace A305563.P1607730575558003434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (n + 1) - A305731 (n + 1)

end

end A305563.P1607730575558003434

/-! ## A305563.P2296734781876073067

`∑[A187219(n+1)]-A305731(n+1)`
-/

namespace A305563.P2296734781876073067
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187219 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A305731 (n + 1)

end

end A305563.P2296734781876073067

/-!
# A305564: Number of finite sets of relatively prime positive integers with least common multiple n.

The programs for A305564, there is no canonical definition to state claims against.
-/

/-! ## A305564.P13211035344778626056

`A305566(n+1)+A069626(n+1)`
-/

namespace A305564.P13211035344778626056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305566 (n + 1) + A069626 (n + 1)

end

end A305564.P13211035344778626056

/-! ## A305564.P16675734817727664418

`∑{d}[n+1, A008683(#)*A076078((n+1)/#)]`
-/

namespace A305564.P16675734817727664418
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008683 d * A076078 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A305564.P16675734817727664418

/-! ## A305564.P12984179403674783008

`∑{d}[n+1, A007427(#)*A100587((n+1)/#)]`
-/

namespace A305564.P12984179403674783008
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A007427 d * A100587 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A305564.P12984179403674783008

/-! ## A305564.P8617648778949950897

`A305566(n+1)+A004525(A076078(n+1))`
-/

namespace A305564.P8617648778949950897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305566 (n + 1) + A004525 (A076078 (n + 1)).toNat

end

end A305564.P8617648778949950897

/-! ## A305564.P12949332264135427044

`A305566(n+1)+A076078(n+1)/(A065475(n+1)-n)`
-/

namespace A305564.P12949332264135427044
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A305566 (n + 1) : ℚ) + (A076078 (n + 1) : ℚ) / (A065475 (n + 1) - (n : ℤ) : ℚ)

end

end A305564.P12949332264135427044

/-!
# A305565: Regular triangle where T(n,k) is the number of finite sets of positive integers with least common multiple n and greatest common divisor k.

The programs for A305565, there is no canonical definition to state claims against.
-/

/-! ## A305565.P15023330547117327188

`A051731(n+1)*A305564(A010766(n+1))`
-/

namespace A305565.P15023330547117327188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051731 (n + 1) * A305564 (A010766 (n + 1)).toNat

end

end A305565.P15023330547117327188

/-! ## A305565.P14431791598222545334

`A051731(n+1)*A305564(A054531(n+1))`
-/

namespace A305565.P14431791598222545334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051731 (n + 1) * A305564 (A054531 (n + 1)).toNat

end

end A305565.P14431791598222545334

/-! ## A305565.P16153049873309879449

`A051731(n+1)*A305564(A051537(n+1))`
-/

namespace A305565.P16153049873309879449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051731 (n + 1) * A305564 (A051537 (n + 1)).toNat

end

end A305565.P16153049873309879449

/-! ## A305565.P11590316334962638179

`A001222(A150091(A127172(n+1)))`
-/

namespace A305565.P11590316334962638179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A150091 (A127172 (n + 1)).toNat).toNat

end

end A305565.P11590316334962638179

/-! ## A305565.P12321672732480187500

`A051731(n+1)*A330665(A082058(n))`
-/

namespace A305565.P12321672732480187500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051731 (n + 1) * A330665 (A082058 n).toNat

end

end A305565.P12321672732480187500

/-!
# A305566: Number of finite sets of relatively prime positive integers > 1 with least common multiple n.

The programs for A305566, the canonical program `A305566.P17970018183238645294` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A305566 has offset 1).

The definition of A305566 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A305566.P17970018183238645294

`∑{d}[n+1, A008683(#)*A076078((n+1)/#)]-A069626(n+1)`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A305566

/-- `∑{d}[n+1, A008683(#)*A076078((n+1)/#)]-A069626(n+1)` -/
def P17970018183238645294.Spec : Prop :=
  ∀ n, P17970018183238645294.a n = A305566 (n + 1)

theorem P17970018183238645294.correct : P17970018183238645294.Spec := by
  intro n
  simp only [A305566, Nat.add_sub_cancel]

end A305566

/-! ## A305566.P2001038996066547094

`A305564(A046523(n+1))-A069626(n+1)`
-/

namespace A305566.P2001038996066547094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305564 (A046523 (n + 1)).toNat - A069626 (n + 1)

end

end A305566.P2001038996066547094

namespace A305566

/-- `A305564(A046523(n+1))-A069626(n+1)` -/
def P2001038996066547094.Spec : Prop :=
  ∀ n, P2001038996066547094.a n = A305566 (n + 1)

end A305566

/-! ## A305566.P78990002718169398

`A305564(A071364(n+1))-A069626(n+1)`
-/

namespace A305566.P78990002718169398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305564 (A071364 (n + 1)).toNat - A069626 (n + 1)

end

end A305566.P78990002718169398

namespace A305566

/-- `A305564(A071364(n+1))-A069626(n+1)` -/
def P78990002718169398.Spec : Prop :=
  ∀ n, P78990002718169398.a n = A305566 (n + 1)

end A305566

/-! ## A305566.P8507841232961714318

`A305564(A348717(n+1))-A069626(n+1)`
-/

namespace A305566.P8507841232961714318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305564 (A348717 (n + 1)).toNat - A069626 (n + 1)

end

end A305566.P8507841232961714318

namespace A305566

/-- `A305564(A348717(n+1))-A069626(n+1)` -/
def P8507841232961714318.Spec : Prop :=
  ∀ n, P8507841232961714318.a n = A305566 (n + 1)

end A305566

/-! ## A305566.P1951834028586308341

`A305564(n+1)-A069626(n+1)`
-/

namespace A305566.P1951834028586308341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305564 (n + 1) - A069626 (n + 1)

end

end A305566.P1951834028586308341

namespace A305566

/-- `A305564(n+1)-A069626(n+1)` -/
def P1951834028586308341.Spec : Prop :=
  ∀ n, P1951834028586308341.a n = A305566 (n + 1)

end A305566

/-! ## A305566.P9133229637860366943

`A305564(C(n+1, n))%A069626(n+1)`
-/

namespace A305566.P9133229637860366943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A305564 (Nat.choose (n + 1) n)) (A069626 (n + 1))

end

end A305566.P9133229637860366943

namespace A305566

/-- `A305564(C(n+1, n))%A069626(n+1)` -/
def P9133229637860366943.Spec : Prop :=
  ∀ n, P9133229637860366943.a n = A305566 (n + 1)

end A305566

/-! ## A305566.P12486560019066852766

`A305564(gcd(n²+n, n+1))%A069626(n+1)`
-/

namespace A305566.P12486560019066852766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A305564 (Nat.gcd (n ^ 2 + n) (n + 1))) (A069626 (n + 1))

end

end A305566.P12486560019066852766

namespace A305566

/-- `A305564(gcd(n²+n, n+1))%A069626(n+1)` -/
def P12486560019066852766.Spec : Prop :=
  ∀ n, P12486560019066852766.a n = A305566 (n + 1)

end A305566

/-! ## A305566.P15618519324893675489

`A305564(n+1)-A004525(A076078(n+1))`
-/

namespace A305566.P15618519324893675489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305564 (n + 1) - A004525 (A076078 (n + 1)).toNat

end

end A305566.P15618519324893675489

namespace A305566

/-- `A305564(n+1)-A004525(A076078(n+1))` -/
def P15618519324893675489.Spec : Prop :=
  ∀ n, P15618519324893675489.a n = A305566 (n + 1)

end A305566

/-! ## A305566.P7451426235404512596

`A305564(A000027(n+1))%A069626(n+1)`
-/

namespace A305566.P7451426235404512596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A305564 (A000027 (n + 1)).toNat) (A069626 (n + 1))

end

end A305566.P7451426235404512596

namespace A305566

/-- `A305564(A000027(n+1))%A069626(n+1)` -/
def P7451426235404512596.Spec : Prop :=
  ∀ n, P7451426235404512596.a n = A305566 (n + 1)

end A305566

/-! ## A305566.P8941192907863926758

`A305564(n+1)-A076078(n+1)/A036453(n+1)`
-/

namespace A305566.P8941192907863926758
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A305564 (n + 1) : ℚ) - (A076078 (n + 1) : ℚ) / (A036453 (n + 1) : ℚ)

end

end A305566.P8941192907863926758

namespace A305566

/-- `A305564(n+1)-A076078(n+1)/A036453(n+1)` -/
def P8941192907863926758.Spec : Prop :=
  ∀ n, P8941192907863926758.a n = (A305566 (n + 1) : ℚ)

end A305566

/-!
# A305567: Irregular triangle where T(n,k) is the number of finite sets of positive integers with least common multiple n and greatest common divisor k, where k runs over all divisors of n.

The programs for A305567, there is no canonical definition to state claims against.
-/

/-! ## A305567.P6404665492945127597

`A305564(A056538(n+1))`
-/

namespace A305567.P6404665492945127597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305564 (A056538 (n + 1)).toNat

end

end A305567.P6404665492945127597

/-! ## A305567.P685672250909586900

`A305564(abs(A233772(n+1)))`
-/

namespace A305567.P685672250909586900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305564 |A233772 (n + 1)|.toNat

end

end A305567.P685672250909586900

/-! ## A305567.P1718499255542128097

`A305564(A061017(n+1)/A027750(n+1))`
-/

namespace A305567.P1718499255542128097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305564 (SequenceMachineLib.roundAway ((A061017 (n + 1) : ℚ) / (A027750 (n + 1) : ℚ))).toNat

end

end A305567.P1718499255542128097

/-! ## A305567.P15345225013919005731

`A305564(gcd(A002182(n+1), A233772(n+1)))`
-/

namespace A305567.P15345225013919005731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305564 (Int.gcd (A002182 (n + 1)) (A233772 (n + 1)))

end

end A305567.P15345225013919005731

/-! ## A305567.P2043924218221656591

`A305564(A338508(n+1))`
-/

namespace A305567.P2043924218221656591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305564 (A338508 (n + 1)).toNat

end

end A305567.P2043924218221656591

/-! ## A305567.P1106062313102170349

`A305564(∑{d}[A233772(n+1), A305564(#)])`
-/

namespace A305567.P1106062313102170349
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233772 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305564 (∑ d ∈ Nat.divisors (f1 n).natAbs, A305564 d).toNat

end

end A305567.P1106062313102170349

/-!
# A305568: Number of bachelor diagonal Latin squares of order n with the first row in ascending order.

The programs for A305568, there is no canonical definition to state claims against.
-/

/-! ## A305568.P11298216851873445458

`A305569(n+1)/(n+1)!`
-/

namespace A305568.P11298216851873445458
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A305569 (n + 1) : ℚ) / (Nat.factorial (n + 1) : ℚ)

end

end A305568.P11298216851873445458

/-! ## A305568.P15408270740182438518

`A274171(n+1)-A305570(n+1)`
-/

namespace A305568.P15408270740182438518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274171 (n + 1) - A305570 (n + 1)

end

end A305568.P15408270740182438518

/-! ## A305568.P14414695905215149217

`A305569(n+1)/record[A094587(n)]`
-/

namespace A305568.P14414695905215149217
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094587 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A305569 (n + 1) : ℚ) / (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℚ)

end

end A305568.P14414695905215149217

/-! ## A305568.P13511365440119588989

`A305569(n+1)/∏[A246337(n+1)]`
-/

namespace A305568.P13511365440119588989
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246337 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A305569 (n + 1) : ℚ) / ((∏ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ)

end

end A305568.P13511365440119588989

/-! ## A305568.P4175623612119032014

`A305569(n+1)/∏[A263808(n+1)]`
-/

namespace A305568.P4175623612119032014
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263808 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A305569 (n + 1) : ℚ) / ((∏ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ)

end

end A305568.P4175623612119032014

/-!
# A305569: Number of bachelor diagonal Latin squares of order n.

The programs for A305569, there is no canonical definition to state claims against.
-/

/-! ## A305569.P8770471691777580433

`A305568(n+1)*(n+1)!`
-/

namespace A305569.P8770471691777580433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305568 (n + 1) * (Nat.factorial (n + 1) : ℤ)

end

end A305569.P8770471691777580433

/-! ## A305569.P14637265722823096956

`A274806(n+1)-A305571(n+1)`
-/

namespace A305569.P14637265722823096956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274806 (n + 1) - A305571 (n + 1)

end

end A305569.P14637265722823096956

/-! ## A305569.P15237893807352497040

`(n+1)!*A274171(n+1)-A305571(n+1)`
-/

namespace A305569.P15237893807352497040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (n + 1) : ℤ) * A274171 (n + 1) - A305571 (n + 1)

end

end A305569.P15237893807352497040

/-! ## A305569.P11786779070797559856

`A274806(n+1)-(n+1)!*A305570(n+1)`
-/

namespace A305569.P11786779070797559856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274806 (n + 1) - (Nat.factorial (n + 1) : ℤ) * A305570 (n + 1)

end

end A305569.P11786779070797559856

/-! ## A305569.P8301702512563939667

`A274806(n+1)-∏[A077168(n)]*A305570(n+1)`
-/

namespace A305569.P8301702512563939667
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077168 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274806 (n + 1) - (∏ j ∈ Finset.range (n + 1), f1 j) * A305570 (n + 1)

end

end A305569.P8301702512563939667

/-!
# A305570: Number of diagonal Latin squares of order n with the first row in order and at least one orthogonal diagonal mate.

The programs for A305570, there is no canonical definition to state claims against.
-/

/-! ## A305570.P9388762852923461040

`A305571(n+1)/(n+1)!`
-/

namespace A305570.P9388762852923461040
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A305571 (n + 1) : ℚ) / (Nat.factorial (n + 1) : ℚ)

end

end A305570.P9388762852923461040

/-! ## A305570.P13464279146977527971

`A274171(n+1)-A305568(n+1)`
-/

namespace A305570.P13464279146977527971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274171 (n + 1) - A305568 (n + 1)

end

end A305570.P13464279146977527971

/-! ## A305570.P18043560102870578178

`A305571(n+1)/Δ[A007489(n)]`
-/

namespace A305570.P18043560102870578178
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007489 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A305571 (n + 1) : ℚ) / (f1 (n + 1) - f1 n : ℚ)

end

end A305570.P18043560102870578178

/-! ## A305570.P12432179054147154073

`A305571(n+1)/∏[A005496(n)]`
-/

namespace A305570.P12432179054147154073
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005496 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A305571 (n + 1) : ℚ) / ((∏ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ)

end

end A305570.P12432179054147154073

/-! ## A305570.P5016733566945600087

`A305571(n+1)/∏[A005555(n)]`
-/

namespace A305570.P5016733566945600087
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005555 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A305571 (n + 1) : ℚ) / ((∏ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ)

end

end A305570.P5016733566945600087

/-!
# A305571: Number of diagonal Latin squares of order n with at least one orthogonal diagonal mate.

The programs for A305571, there is no canonical definition to state claims against.
-/

/-! ## A305571.P634793446853335281

`A305570(n+1)*(n+1)!`
-/

namespace A305571.P634793446853335281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305570 (n + 1) * (Nat.factorial (n + 1) : ℤ)

end

end A305571.P634793446853335281

/-! ## A305571.P4911630609374934962

`A274806(n+1)-A305569(n+1)`
-/

namespace A305571.P4911630609374934962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274806 (n + 1) - A305569 (n + 1)

end

end A305571.P4911630609374934962

/-! ## A305571.P14962960991810289536

`A112007(∑[n])*A305570(n+1)`
-/

namespace A305571.P14962960991810289536
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112007 (∑ j ∈ Finset.range (n + 1), f1 j) * A305570 (n + 1)

end

end A305571.P14962960991810289536

/-! ## A305571.P17965031467355818857

`Δ[A007489(n)]*A305570(n+1)`
-/

namespace A305571.P17965031467355818857
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007489 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A305570 (n + 1)

end

end A305571.P17965031467355818857

/-! ## A305571.P5491782967439479636

`∏[A005496(n)]*A305570(n+1)`
-/

namespace A305571.P5491782967439479636
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005496 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∏ j ∈ Finset.range (n + 1), f1 j) * A305570 (n + 1)

end

end A305571.P5491782967439479636

/-!
# A305572: a(n) = (-1)^(n-1) + Sum_{d|n, d>1} a(n/d)^d.

The programs for A305572, there is no canonical definition to state claims against.
-/

/-! ## A305572.P901479655377873972

`A281145(n+1)%A020986(A011782(n))`
-/

namespace A305572.P901479655377873972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A281145 (n + 1)) (A020986 (A011782 n).toNat)

end

end A305572.P901479655377873972

/-!
# A305573: Number of (1,1) pairs occurring at depth 3n of the Fibonacci tree.

The programs for A305573, there is no canonical definition to state claims against.
-/

/-! ## A305573.P5361162462531817266

`A107347(or(2, A074516(n)))`
-/

namespace A305573.P5361162462531817266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107347 (Int.lor 2 (A074516 n)).toNat

end

end A305573.P5361162462531817266

/-!
# A305574: Number of primitive (1,1) pairs in the Fibonacci tree at depth 3n.

The programs for A305574, there is no canonical definition to state claims against.
-/

/-! ## A305574.P13235351705906610957

`or(C(3*n+1, n)/(n+1), C(n, a(n-1)))` with `a(0)=5`
-/

namespace A305574.P13235351705906610957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [5] fun n a =>
  Int.lor (SequenceMachineLib.roundAway ((Nat.choose (3 * n + 1) n : ℚ) / (n + 1 : ℚ))) (Nat.choose n (a (n - 1)).toNat : ℤ)

end

end A305574.P13235351705906610957

/-! ## A305574.P18168281394581602650

`C(3*n+1, n)/(n+1)+C(n, 2*a(n-1))*comp[2*n]` with `a(0)=5`
-/

namespace A305574.P18168281394581602650
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.rec [5] fun n a =>
  (Nat.choose (3 * n + 1) n : ℚ) / (n + 1 : ℚ) + (Nat.choose n (SequenceMachineLib.roundAway (2 * a (n - 1))).toNat * SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℚ)

end

end A305574.P18168281394581602650

/-! ## A305574.P8566816788078652141

`A006013(n)+4*floor(acot(n))`
-/

namespace A305574.P8566816788078652141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006013 n + 4 * ⌊SequenceMachineLib.acot (n : ℝ)⌋

end

end A305574.P8566816788078652141

/-! ## A305574.P10763856027932950359

`A047749(Δ[n²])+4*floor(acot(n))`
-/

namespace A305574.P10763856027932950359
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047749 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat + 4 * ⌊SequenceMachineLib.acot (n : ℝ)⌋

end

end A305574.P10763856027932950359

/-! ## A305574.P997771201324442976

`4*floor(acot(n))+A116637(Δ[n²])/2`
-/

namespace A305574.P997771201324442976
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (4 * ⌊SequenceMachineLib.acot (n : ℝ)⌋ : ℚ) + (A116637 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat : ℚ) / 2

end

end A305574.P997771201324442976

/-!
# A305575: List points (x,y) having integer coordinates, sorted first by radial coordinate r and in case of ties, by polar angle 0 <= phi < 2*Pi in a polar coordinate system. Sequence gives x-coordinates.

The programs for A305575, there is no canonical definition to state claims against.
-/

/-! ## A305575.P803090915052968814

`A296030(2*A308080(n)-1)`
-/

namespace A305575.P803090915052968814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296030 (2 * A308080 n - 1).toNat

end

end A305575.P803090915052968814

/-! ## A305575.P3070365098939949873

`A296030(A308080(n)+A308080(n)-1)`
-/

namespace A305575.P3070365098939949873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296030 (A308080 n + (A308080 n - 1)).toNat

end

end A305575.P3070365098939949873

/-! ## A305575.P17127879121223466492

`A296030(A308080(n)-(1-A308080(n)))`
-/

namespace A305575.P17127879121223466492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296030 (A308080 n - (1 - A308080 n)).toNat

end

end A305575.P17127879121223466492

/-! ## A305575.P5236707090702266990

`A174344(A308080(n))`
-/

namespace A305575.P5236707090702266990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174344 (A308080 n).toNat

end

end A305575.P5236707090702266990

/-! ## A305575.P8293966365136298006

`A180714(A308080(n)-1)-A305576(n)`
-/

namespace A305575.P8293966365136298006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180714 (A308080 n - 1).toNat - A305576 n

end

end A305575.P8293966365136298006

/-! ## A305575.P11212919641868738296

`A342561(eq[0, A342563(n)])`
-/

namespace A305575.P11212919641868738296
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342563 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342561 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A305575.P11212919641868738296

/-! ## A305575.P3612287126549469187

`A342561(lt[A342563(n)², 1])`
-/

namespace A305575.P3612287126549469187
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342563 n ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342561 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A305575.P3612287126549469187

/-! ## A305575.P14849501769686922431

`A342561(lt[1, acot(A342563(n))])`
-/

namespace A305575.P14849501769686922431
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.acot (A342563 n : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342561 (SequenceMachineLib.nth (fun j => (f1 j : ℝ) < f2 j) n)

end

end A305575.P14849501769686922431

/-!
# A305576: List points (x,y) having integer coordinates, sorted first by radial coordinate r and in case of ties, by polar angle 0 <= phi < 2*Pi in a polar coordinate system. Sequence gives y-coordinates.

The programs for A305576, there is no canonical definition to state claims against.
-/

/-! ## A305576.P10251492296537404532

`A296030(2*A308080(n))`
-/

namespace A305576.P10251492296537404532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296030 (2 * A308080 n).toNat

end

end A305576.P10251492296537404532

/-! ## A305576.P15170329496281410211

`A274923(A308080(n))`
-/

namespace A305576.P15170329496281410211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274923 (A308080 n).toNat

end

end A305576.P15170329496281410211

/-! ## A305576.P14441508603315926469

`A057428(n)*A268038(A308080(n))`
-/

namespace A305576.P14441508603315926469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 n * A268038 (A308080 n).toNat

end

end A305576.P14441508603315926469

/-! ## A305576.P8507705447020717040

`A260196(n)*A268038(A308080(n))`
-/

namespace A305576.P8507705447020717040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260196 n * A268038 (A308080 n).toNat

end

end A305576.P8507705447020717040

/-! ## A305576.P3686390322434157990

`A180714(A308080(n)-1)-A305575(n)`
-/

namespace A305576.P3686390322434157990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180714 (A308080 n - 1).toNat - A305575 n

end

end A305576.P3686390322434157990

/-! ## A305576.P11095709699985119186

`A268038(A308080(n))/A057428(n+1)`
-/

namespace A305576.P11095709699985119186
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A268038 (A308080 n).toNat : ℚ) / (A057428 (n + 1) : ℚ)

end

end A305576.P11095709699985119186

/-! ## A305576.P10250314240882832911

`A342562(eq[0, A342563(n)])`
-/

namespace A305576.P10250314240882832911
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342563 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342562 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A305576.P10250314240882832911

/-! ## A305576.P11908332617917694565

`A342562(lt[A342563(n)², 1])`
-/

namespace A305576.P11908332617917694565
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342563 n ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342562 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A305576.P11908332617917694565

/-! ## A305576.P6668061600707914263

`A342562(lt[1, acot(A342563(n))])`
-/

namespace A305576.P6668061600707914263
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.acot (A342563 n : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342562 (SequenceMachineLib.nth (fun j => (f1 j : ℝ) < f2 j) n)

end

end A305576.P6668061600707914263

/-!
# A305577: a(n) = Sum_{k=0..n} k!!*(n - k)!!.

The programs for A305577, there is no canonical definition to state claims against.
-/

/-! ## A305577.P15650027866789113526

`A072746(A264571(n+2))`
-/

namespace A305577.P15650027866789113526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072746 (A264571 (n + 2)).toNat

end

end A305577.P15650027866789113526

/-! ## A305577.P7763603391906950846

`A276625(A221547(n+2)+n)`
-/

namespace A305577.P7763603391906950846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276625 (A221547 (n + 2) + (n : ℤ)).toNat

end

end A305577.P7763603391906950846

/-! ## A305577.P12059973962461071462

`A172471(∑{d}[A030928(n+1), #])`
-/

namespace A305577.P12059973962461071462
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030928 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172471 (∑ d ∈ Nat.divisors (f1 n).natAbs, d)

end

end A305577.P12059973962461071462

/-!
# A305578: a(n) = Sum_{k=0..n} binomial(n,k)*k!!*(n - k)!!.

The programs for A305578, the canonical program `A305578.P11217618953950280017` is in `Seq.B000.C035`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A305578 has offset 0).

The definition of A305578 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A305578.P11217618953950280017

`3*n*a(n-2)-2*(n-3)*n*a(n-4)` with `a(0)=1, a(1)=2, a(2)=6, a(3)=18`

The canonical program, it is in `Seq.B000.C035`.
-/

namespace A305578

/-- `3*n*a(n-2)-2*(n-3)*n*a(n-4)` -/
def P11217618953950280017.Spec : Prop :=
  ∀ n, P11217618953950280017.a n = A305578 n

theorem P11217618953950280017.correct : P11217618953950280017.Spec := by
  intro n
  simp only [A305578]

end A305578

/-! ## A305578.P12757612507991457598

`ceil(root(A056846(2*n+1), 4))`
-/

namespace A305578.P12757612507991457598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A056846 (2 * n + 1) : ℝ) ^ (1 / (4 : ℝ))⌉

end

end A305578.P12757612507991457598

namespace A305578

/-- `ceil(root(A056846(2*n+1), 4))` -/
def P12757612507991457598.Spec : Prop :=
  ∀ n, P12757612507991457598.a n = A305578 n

end A305578

/-!
# A305579: Square array read by antidiagonals upwards in which row k has k as its first term and each subsequent term is the least possible value such that the sum of any 2 or more terms does not equal a prime.

The programs for A305579, there is no canonical definition to state claims against.
-/

/-! ## A305579.P12375110924932901390

`A236104(A049614(n))+A051162(n)`
-/

namespace A305579.P12375110924932901390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236104 (A049614 n).toNat + A051162 n

end

end A305579.P12375110924932901390

/-! ## A305579.P7968791841208088602

`A328434(A185336(n))+A051162(n)`
-/

namespace A305579.P7968791841208088602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328434 (A185336 n).toNat + A051162 n

end

end A305579.P7968791841208088602

/-! ## A305579.P8834858425912933386

`A094727(lcm(A061805(n+1), A219955(n+1)))`
-/

namespace A305579.P8834858425912933386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094727 (Int.lcm (A061805 (n + 1)) (A219955 (n + 1)))

end

end A305579.P8834858425912933386

/-! ## A305579.P17507860703308132695

`A106477(A210709(3*n+2))+A064514(n+1)`
-/

namespace A305579.P17507860703308132695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106477 (A210709 (3 * n + 2)).toNat + A064514 (n + 1)

end

end A305579.P17507860703308132695

/-!
# A305580: Number of nXn 0..1 arrays with every element unequal to 0, 1, 2, 7 or 8 king-move adjacent elements, with upper left element zero.

The programs for A305580, there is no canonical definition to state claims against.
-/

/-! ## A305580.P15597506498922971284

`A305586(∑[4*n]+1)`
-/

namespace A305580.P15597506498922971284
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305586 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A305580.P15597506498922971284

/-! ## A305580.P10279524063922311466

`A305586(A001844(n))+char[15]`
-/

namespace A305580.P10279524063922311466
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  15

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305586 (A001844 n).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A305580.P10279524063922311466

/-! ## A305580.P13567595691292048328

`record[A003982(n)*A305586(n+1)]`
-/

namespace A305580.P13567595691292048328
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A305586 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A305580.P13567595691292048328

/-! ## A305580.P1709836695010911857

`record[A214505(n)*A305586(n+1)]`
-/

namespace A305580.P1709836695010911857
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214505 n * A305586 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A305580.P1709836695010911857

/-! ## A305580.P8085278685876689075

`record[gcd(A008482(n), A305586(n+1))]`
-/

namespace A305580.P8085278685876689075
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A008482 n) (A305586 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A305580.P8085278685876689075

/-!
# A305581: Number of nX3 0..1 arrays with every element unequal to 0, 1, 2, 7 or 8 king-move adjacent elements, with upper left element zero.

The programs for A305581, the canonical program `A305581.P247166614896756586` is in `Seq.B000.C035`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A305581 has offset 1).

The definition of A305581 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 378 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A305581.P4295402163979342464

`ogf((-4+x+x^2+5x^3-2x^4)/(-1+x+x^2+x^3))`
-/

namespace A305581.P4295402163979342464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [4, -1, -1, -5, 2] [1, -1, -1, -1] n

end

end A305581.P4295402163979342464

namespace A305581

/-- `ogf((-4+x+x^2+5x^3-2x^4)/(-1+x+x^2+x^3))` -/
def P4295402163979342464.Spec : Prop :=
  ∀ n, P4295402163979342464.a n = A305581 (n + 1)

end A305581

/-! ## A305581.P247166614896756586

`a(n-1)+a(n-2)+a(n-3)` with `a(0)=4, a(1)=3, a(2)=6, a(3)=8, a(4)=19`

The canonical program, it is in `Seq.B000.C035`.
-/

namespace A305581

/-- `a(n-1)+a(n-2)+a(n-3)` -/
def P247166614896756586.Spec : Prop :=
  ∀ n, (P247166614896756586.a n : ℤ) = A305581 (n + 1)

theorem P247166614896756586.correct : P247166614896756586.Spec := by
  intro n
  simp only [A305581, Nat.add_sub_cancel]

end A305581

/-! ## A305581.P5257218988728518350

`A305586(∑[n+2]+4)`
-/

namespace A305581.P5257218988728518350
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305586 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A305581.P5257218988728518350

namespace A305581

/-- `A305586(∑[n+2]+4)` -/
def P5257218988728518350.Spec : Prop :=
  ∀ n, P5257218988728518350.a n = A305581 (n + 1)

end A305581

/-! ## A305581.P10357436423723247878

`or(char[1], A305586(A167614(n+1)))`
-/

namespace A305581.P10357436423723247878
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A305586 (A167614 (n + 1)).toNat)

end

end A305581.P10357436423723247878

namespace A305581

/-- `or(char[1], A305586(A167614(n+1)))` -/
def P10357436423723247878.Spec : Prop :=
  ∀ n, P10357436423723247878.a n = A305581 (n + 1)

end A305581

/-! ## A305581.P16671638847734523856

`A305586(A167614(n+1))+A025466(n)`
-/

namespace A305581.P16671638847734523856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305586 (A167614 (n + 1)).toNat + A025466 n

end

end A305581.P16671638847734523856

namespace A305581

/-- `A305586(A167614(n+1))+A025466(n)` -/
def P16671638847734523856.Spec : Prop :=
  ∀ n, P16671638847734523856.a n = A305581 (n + 1)

end A305581

/-!
# A305582: Number of nX4 0..1 arrays with every element unequal to 0, 1, 2, 7 or 8 king-move adjacent elements, with upper left element zero.

The programs for A305582, the canonical program `A305582.P5305641638298001983` is in `Seq.B000.C035`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A305582 has offset 1).

The definition of A305582 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 251 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A305582.P5305641638298001983

`a(n-1)+2*a(n-2)+5*a(n-3)-2*a(n-5)-4*a(n-6)` with `a(0)=8, a(1)=5, a(2)=8, a(3)=15, a(4)=38, a(5)=102, a(6)=247, a(7)=617`

The canonical program, it is in `Seq.B000.C035`.
-/

namespace A305582

/-- `a(n-1)+2*a(n-2)+5*a(n-3)-2*a(n-5)-4*a(n-6)` -/
def P5305641638298001983.Spec : Prop :=
  ∀ n, P5305641638298001983.a n = A305582 (n + 1)

theorem P5305641638298001983.correct : P5305641638298001983.Spec := by
  intro n
  simp only [A305582, Nat.add_sub_cancel]

end A305582

/-! ## A305582.P17740248451279039317

`A305586(A374004(n+1))`
-/

namespace A305582.P17740248451279039317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305586 (A374004 (n + 1)).toNat

end

end A305582.P17740248451279039317

namespace A305582

/-- `A305586(A374004(n+1))` -/
def P17740248451279039317.Spec : Prop :=
  ∀ n, P17740248451279039317.a n = A305582 (n + 1)

end A305582

/-! ## A305582.P2129917632653652110

`A305586(A141214(n)+7)`
-/

namespace A305582.P2129917632653652110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305586 (A141214 n + 7).toNat

end

end A305582.P2129917632653652110

namespace A305582

/-- `A305586(A141214(n)+7)` -/
def P2129917632653652110.Spec : Prop :=
  ∀ n, P2129917632653652110.a n = A305582 (n + 1)

end A305582

/-! ## A305582.P10987699280245696858

`A305586(A052905(n)+9)`
-/

namespace A305582.P10987699280245696858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305586 (A052905 n + 9).toNat

end

end A305582.P10987699280245696858

namespace A305582

/-- `A305586(A052905(n)+9)` -/
def P10987699280245696858.Spec : Prop :=
  ∀ n, P10987699280245696858.a n = A305582 (n + 1)

end A305582

/-! ## A305582.P8449531141473011713

`A305586(A055999(n)+10)`
-/

namespace A305582.P8449531141473011713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305586 (A055999 n + 10).toNat

end

end A305582.P8449531141473011713

namespace A305582

/-- `A305586(A055999(n)+10)` -/
def P8449531141473011713.Spec : Prop :=
  ∀ n, P8449531141473011713.a n = A305582 (n + 1)

end A305582

/-!
# A305583: Number of nX5 0..1 arrays with every element unequal to 0, 1, 2, 7 or 8 king-move adjacent elements, with upper left element zero.

The programs for A305583, there is no canonical definition to state claims against.
-/

/-! ## A305583.P17993889687062275796

`A305586(A374005(n+1))`
-/

namespace A305583.P17993889687062275796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305586 (A374005 (n + 1)).toNat

end

end A305583.P17993889687062275796

/-! ## A305583.P416487346415529393

`A305586(A167499(n+3))`
-/

namespace A305583.P416487346415529393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305586 (A167499 (n + 3)).toNat

end

end A305583.P416487346415529393

/-! ## A305583.P8865132941532853239

`A305586(A056000(n)+15)`
-/

namespace A305583.P8865132941532853239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305586 (A056000 n + 15).toNat

end

end A305583.P8865132941532853239

/-! ## A305583.P17962598610915457952

`A305586(A055998(n+2)+8)`
-/

namespace A305583.P17962598610915457952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305586 (A055998 (n + 2) + 8).toNat

end

end A305583.P17962598610915457952

/-! ## A305583.P16356180378669930761

`A305586(A038722(Δ[A023545(n+1)]))`
-/

namespace A305583.P16356180378669930761
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305586 (A038722 (f1 (n + 1) - f1 n).toNat).toNat

end

end A305583.P16356180378669930761

/-!
# A305584: Number of nX6 0..1 arrays with every element unequal to 0, 1, 2, 7 or 8 king-move adjacent elements, with upper left element zero.

The programs for A305584, there is no canonical definition to state claims against.
-/

/-! ## A305584.P12224186674425183235

`A305586(A374007(n+1))`
-/

namespace A305584.P12224186674425183235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305586 (A374007 (n + 1)).toNat

end

end A305584.P12224186674425183235

/-! ## A305584.P7975601770747158676

`A305586(A166136(n+4))`
-/

namespace A305584.P7975601770747158676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305586 (A166136 (n + 4)).toNat

end

end A305584.P7975601770747158676

/-! ## A305584.P4212401966344891331

`A305586(A000217(n+5)+6)`
-/

namespace A305584.P4212401966344891331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305586 (A000217 (n + 5) + 6).toNat

end

end A305584.P4212401966344891331

/-! ## A305584.P5187177021715858424

`A305586(n+12+A000096(n+3))`
-/

namespace A305584.P5187177021715858424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305586 ((n + 12 : ℤ) + A000096 (n + 3)).toNat

end

end A305584.P5187177021715858424

/-! ## A305584.P13930666330320530210

`A305586(A052905(n+3))`
-/

namespace A305584.P13930666330320530210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305586 (A052905 (n + 3)).toNat

end

end A305584.P13930666330320530210

/-!
# A305585: Number of nX7 0..1 arrays with every element unequal to 0, 1, 2, 7 or 8 king-move adjacent elements, with upper left element zero.

The programs for A305585, there is no canonical definition to state claims against.
-/

/-! ## A305585.P6834784929599873793

`A305586(A374008(n+1))`
-/

namespace A305585.P6834784929599873793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305586 (A374008 (n + 1)).toNat

end

end A305585.P6834784929599873793

/-! ## A305585.P1746856493225013674

`A305586(A167487(n+5))`
-/

namespace A305585.P1746856493225013674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305586 (A167487 (n + 5)).toNat

end

end A305585.P1746856493225013674

/-! ## A305585.P4806825684060614075

`A305586(A167499(n+5)+2)`
-/

namespace A305585.P4806825684060614075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305586 (A167499 (n + 5) + 2).toNat

end

end A305585.P4806825684060614075

/-! ## A305585.P768682460955214467

`A305586(A000217(n+6)+7)`
-/

namespace A305585.P768682460955214467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305586 (A000217 (n + 6) + 7).toNat

end

end A305585.P768682460955214467

/-! ## A305585.P7889918927892525591

`A305586(A055999(n+4))`
-/

namespace A305585.P7889918927892525591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305586 (A055999 (n + 4)).toNat

end

end A305585.P7889918927892525591

/-!
# A305586: T(n,k)=Number of nXk 0..1 arrays with every element unequal to 0, 1, 2, 7 or 8 king-move adjacent elements, with upper left element zero.

The programs for A305586, there is no canonical definition to state claims against.
-/

/-! ## A305586.P7196414256757241696

`A316693(n+1)+A305258(A131235(n))`
-/

namespace A305586.P7196414256757241696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316693 (n + 1) + A305258 (A131235 n).toNat

end

end A305586.P7196414256757241696

/-! ## A305586.P17427964787172614926

`A340998(A174376(n))+A304230(n+1)`
-/

namespace A305586.P17427964787172614926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340998 ((A174376 n).toNat + 140) + A304230 (n + 1)

end

end A305586.P17427964787172614926

/-! ## A305586.P2520805905897544676

`A304230(n+1)+A005087(A301443(n+1))`
-/

namespace A305586.P2520805905897544676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304230 (n + 1) + A005087 (A301443 (n + 1)).toNat

end

end A305586.P2520805905897544676

/-! ## A305586.P2586399705301693421

`A316693(n+1)-A082858(A059441(n+1))`
-/

namespace A305586.P2586399705301693421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316693 (n + 1) - A082858 (A059441 (n + 1)).toNat

end

end A305586.P2586399705301693421

/-! ## A305586.P2128424341998547467

`A304230(n+1)+A058348(A131235(n))`
-/

namespace A305586.P2128424341998547467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304230 (n + 1) + A058348 (A131235 n).toNat

end

end A305586.P2128424341998547467

/-!
# A305587: Number of n X n 0..1 arrays with every element unequal to 0, 1, 2, 3, 5 or 6 king-move adjacent elements, with upper left element zero.

The programs for A305587, there is no canonical definition to state claims against.
-/

/-! ## A305587.P2062044017180477926

`A305593(∑[4*n]+1)`
-/

namespace A305587.P2062044017180477926
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305593 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A305587.P2062044017180477926

/-! ## A305587.P1619387578626750876

`record[A305593(Δ[A235355(n)])]`
-/

namespace A305587.P1619387578626750876
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235355 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305593 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A305587.P1619387578626750876

/-! ## A305587.P3683083974619094366

`record[A305593(A330613(n+1))]`
-/

namespace A305587.P3683083974619094366
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305593 (A330613 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A305587.P3683083974619094366

/-! ## A305587.P7844418261971968899

`A305593(A001844(n))+char[9]`
-/

namespace A305587.P7844418261971968899
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305593 (A001844 n).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A305587.P7844418261971968899

/-! ## A305587.P9514641545535086984

`record[A003982(n)*A305593(n+1)]`
-/

namespace A305587.P9514641545535086984
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A305593 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A305587.P9514641545535086984

/-!
# A305588: Number of nX3 0..1 arrays with every element unequal to 0, 1, 2, 3, 5 or 6 king-move adjacent elements, with upper left element zero.

The programs for A305588, there is no canonical definition to state claims against.
-/

/-! ## A305588.P1376423403726101402

`A305593(∑[n+2]+4)`
-/

namespace A305588.P1376423403726101402
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305593 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A305588.P1376423403726101402

/-! ## A305588.P16092118417275038510

`or(char[1], A305593(A167614(n+1)))`
-/

namespace A305588.P16092118417275038510
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A305593 (A167614 (n + 1)).toNat)

end

end A305588.P16092118417275038510

/-! ## A305588.P2292808118808773379

`A305593(A167614(n+1))+A185238(n)`
-/

namespace A305588.P2292808118808773379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305593 (A167614 (n + 1)).toNat + A185238 n

end

end A305588.P2292808118808773379

/-! ## A305588.P7102797813038720664

`A305593(A167614(n+1))+A185284(n)`
-/

namespace A305588.P7102797813038720664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305593 (A167614 (n + 1)).toNat + A185284 n

end

end A305588.P7102797813038720664

/-! ## A305588.P5327073275695438026

`A305593(A167614(n+1))%A016938(n)`
-/

namespace A305588.P5327073275695438026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A305593 (A167614 (n + 1)).toNat) (A016938 n)

end

end A305588.P5327073275695438026

/-!
# A305589: Number of nX4 0..1 arrays with every element unequal to 0, 1, 2, 3, 5 or 6 king-move adjacent elements, with upper left element zero.

The programs for A305589, there is no canonical definition to state claims against.
-/

/-! ## A305589.P9546569288226103786

`A305593(∑[a(n-1)+1])` with `a(0)=10, a(1)=4`
-/

namespace A305589.P9546569288226103786
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [10, 4] fun n f1 =>
  f1 (n - 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305593 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A305589.P9546569288226103786

/-! ## A305589.P9553171384884397245

`A305593(A374004(n+1))`
-/

namespace A305589.P9553171384884397245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305593 (A374004 (n + 1)).toNat

end

end A305589.P9553171384884397245

/-! ## A305589.P4921538322551386509

`A305593(A052905(n)+9)`
-/

namespace A305589.P4921538322551386509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305593 (A052905 n + 9).toNat

end

end A305589.P4921538322551386509

/-! ## A305589.P11589465652124257737

`A305593(A055999(n)+10)`
-/

namespace A305589.P11589465652124257737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305593 (A055999 n + 10).toNat

end

end A305589.P11589465652124257737

/-! ## A305589.P14514932711238892351

`A305593(A167614(n+2)+1)`
-/

namespace A305589.P14514932711238892351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305593 (A167614 (n + 2) + 1).toNat

end

end A305589.P14514932711238892351

/-!
# A305590: Number of n X 5 0..1 arrays with every element unequal to 0, 1, 2, 3, 5 or 6 king-move adjacent elements, with upper left element zero.

The programs for A305590, there is no canonical definition to state claims against.
-/

/-! ## A305590.P8868635524469273173

`A305593(∑[a(n-1)+1])` with `a(0)=15, a(1)=5`
-/

namespace A305590.P8868635524469273173
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [15, 5] fun n f1 =>
  f1 (n - 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305593 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A305590.P8868635524469273173

/-! ## A305590.P7188277626886156037

`A305593(A374005(n+1))`
-/

namespace A305590.P7188277626886156037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305593 (A374005 (n + 1)).toNat

end

end A305590.P7188277626886156037

/-! ## A305590.P9595499989898362978

`A305593(A167499(n+3))`
-/

namespace A305590.P9595499989898362978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305593 (A167499 (n + 3)).toNat

end

end A305590.P9595499989898362978

/-! ## A305590.P2933178111814363625

`A305593(A155212(n)+13)`
-/

namespace A305590.P2933178111814363625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305593 (A155212 n + 13).toNat

end

end A305590.P2933178111814363625

/-! ## A305590.P15767310810978785750

`A305593(Δ[A264443(n)])`
-/

namespace A305590.P15767310810978785750
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305593 (f1 (n + 1) - f1 n).toNat

end

end A305590.P15767310810978785750

/-!
# A305591: Number of nX6 0..1 arrays with every element unequal to 0, 1, 2, 3, 5 or 6 king-move adjacent elements, with upper left element zero.

The programs for A305591, there is no canonical definition to state claims against.
-/

/-! ## A305591.P7451096899362095921

`A305593(∑[a(n-1)+1])` with `a(0)=21, a(1)=6`
-/

namespace A305591.P7451096899362095921
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [21, 6] fun n f1 =>
  f1 (n - 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305593 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A305591.P7451096899362095921

/-! ## A305591.P10384558730313473491

`A305593(A374007(n+1))`
-/

namespace A305591.P10384558730313473491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305593 (A374007 (n + 1)).toNat

end

end A305591.P10384558730313473491

/-! ## A305591.P13836261005739398384

`A305593(A166136(n+4))`
-/

namespace A305591.P13836261005739398384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305593 (A166136 (n + 4)).toNat

end

end A305591.P13836261005739398384

/-! ## A305591.P9000222692769711479

`A305593(A056115(n)+21)`
-/

namespace A305591.P9000222692769711479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305593 (A056115 n + 21).toNat

end

end A305591.P9000222692769711479

/-! ## A305591.P574912533068208045

`A305593(A034856(n+4)+8)`
-/

namespace A305591.P574912533068208045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305593 (A034856 (n + 4) + 8).toNat

end

end A305591.P574912533068208045

/-!
# A305592: Number of n X 7 0..1 arrays with every element unequal to 0, 1, 2, 3, 5 or 6 king-move adjacent elements, with upper left element zero.

The programs for A305592, there is no canonical definition to state claims against.
-/

/-! ## A305592.P6375930574108451018

`A305593(∑[a(n-1)+1])` with `a(0)=28, a(1)=7`
-/

namespace A305592.P6375930574108451018
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [28, 7] fun n f1 =>
  f1 (n - 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305593 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A305592.P6375930574108451018

/-! ## A305592.P13023698490816856945

`A305593(A374008(n+1))`
-/

namespace A305592.P13023698490816856945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305593 (A374008 (n + 1)).toNat

end

end A305592.P13023698490816856945

/-! ## A305592.P10290508247753594866

`A305593(A167487(n+5))`
-/

namespace A305592.P10290508247753594866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305593 (A167487 (n + 5)).toNat

end

end A305592.P10290508247753594866

/-! ## A305592.P6164109416941137767

`A305593(A056119(n)+28)`
-/

namespace A305592.P6164109416941137767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305593 (A056119 n + 28).toNat

end

end A305592.P6164109416941137767

/-! ## A305592.P17483333332691928237

`A305593(A167614(n+5)+4)`
-/

namespace A305592.P17483333332691928237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305593 (A167614 (n + 5) + 4).toNat

end

end A305592.P17483333332691928237

/-!
# A305593: T(n,k)=Number of nXk 0..1 arrays with every element unequal to 0, 1, 2, 3, 5 or 6 king-move adjacent elements, with upper left element zero.

The programs for A305593, there is no canonical definition to state claims against.
-/

/-! ## A305593.P10599238172817994314

`A317011(n+1)-A010894(A003401(n+1))`
-/

namespace A305593.P10599238172817994314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317011 (n + 1) - A010894 ((A003401 (n + 1)).toNat + 21)

end

end A305593.P10599238172817994314

/-! ## A305593.P1645889759087779548

`A317011(n+1)+A016389(A022166(n))`
-/

namespace A305593.P1645889759087779548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317011 (n + 1) + A016389 (A022166 n).toNat

end

end A305593.P1645889759087779548

/-! ## A305593.P7201088596808251223

`A317011(n+1)+A016389(A027336(n))`
-/

namespace A305593.P7201088596808251223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317011 (n + 1) + A016389 (A027336 n).toNat

end

end A305593.P7201088596808251223

/-! ## A305593.P5420749252195683531

`A305776(n+1)+A185284(A008459(n))`
-/

namespace A305593.P5420749252195683531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305776 (n + 1) + A185284 (A008459 n).toNat

end

end A305593.P5420749252195683531

/-! ## A305593.P9231456293950297499

`A317011(n+1)+A178798(A008459(n))`
-/

namespace A305593.P9231456293950297499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317011 (n + 1) + A178798 (A008459 n).toNat

end

end A305593.P9231456293950297499

/-!
# A305596: O.g.f. A(x) satisfies: 0 = [x^n] exp( n*(n-1) * x * A(x) ) / A(x), for n > 0, with A'(0) = 0.

The programs for A305596, there is no canonical definition to state claims against.
-/

/-! ## A305596.P11766860006076650983

`A241417(∑[n²])`
-/

namespace A305596.P11766860006076650983
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241417 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A305596.P11766860006076650983

/-!
# A305597: O.g.f. A(x) satisfies: 0 = [x^n] exp( n*(n-1) * x * A(x) ) / A(x), for n > 1, with A'(0) = 1.

The programs for A305597, there is no canonical definition to state claims against.
-/

/-! ## A305597.P3919922448726224282

`or(n, A100208(A300990(n)))`
-/

namespace A305597.P3919922448726224282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (n : ℤ) (A100208 (A300990 n).toNat)

end

end A305597.P3919922448726224282

/-!
# A305598: O.g.f. A(x) satisfies: 0 = [x^n] exp( n*(n-1) * x * A(x) ) / A(x), for n > 1, with A'(0) = 2.

The programs for A305598, there is no canonical definition to state claims against.
-/

/-! ## A305598.P16928258639023280026

`lcm(n+1, A002322(A375868(n)))`
-/

namespace A305598.P16928258639023280026
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (n + 1 : ℤ) (A002322 (A375868 n).toNat)

end

end A305598.P16928258639023280026

/-!
# A305599: G.f. A(x) satisfies: 0 = Sum_{n>=1} (n*x - A(x))^n, with A(0) = 0, A'(0) = 1.

The programs for A305599, there is no canonical definition to state claims against.
-/

/-! ## A305599.P17585116737455561175

`A279515(n^(n+1)+2)`
-/

namespace A305599.P17585116737455561175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279515 (n ^ (n + 1) + 2)

end

end A305599.P17585116737455561175

