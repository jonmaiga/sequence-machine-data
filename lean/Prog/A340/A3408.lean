import SequenceMachineLib
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
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
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C037
import Seq.B000.C038
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
import Seq.B001.C011
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C004
import Seq.B002.C005
import Seq.B002.C007
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
import Seq.B006.C000
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

/-!
# A340801: a(n) is the image of n under the map f defined as f(n) = n^2 - 2 if n is an odd prime, f(n) = n/2 if n is even, and f(n) = n - 1 otherwise.

The programs for A340801, there is no canonical definition to state claims against.
-/

/-! ## A340801.P8511442311066650212

`A340008(n+1)-A257531(n+1)`
-/

namespace A340801.P8511442311066650212
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340008 (n + 1) - A257531 (n + 1)

end

end A340801.P8511442311066650212

/-! ## A340801.P8541297298861572479

`A340008(n+1)-abs(A151763(n+1))`
-/

namespace A340801.P8541297298861572479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340008 (n + 1) - |A151763 (n + 1)|

end

end A340801.P8541297298861572479

/-! ## A340801.P5901297180572744519

`A340008(n+1)-char[A006093(n+2)]`
-/

namespace A340801.P5901297180572744519
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006093 (n + 2)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340008 (n + 1) - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A340801.P5901297180572744519

/-! ## A340801.P14015169397461764031

`A340008(C(n+1, n))-A151763(n+1)²`
-/

namespace A340801.P14015169397461764031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340008 (Nat.choose (n + 1) n) - A151763 (n + 1) ^ 2

end

end A340801.P14015169397461764031

/-! ## A340801.P14197343408047396011

`A340008(n+1)-A010051(A079097(n))`
-/

namespace A340801.P14197343408047396011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340008 (n + 1) - A010051 (A079097 n).toNat

end

end A340801.P14197343408047396011

/-! ## A340801.P7977315586367251139

`A340008(n+1)-A101264(A006370(n))`
-/

namespace A340801.P7977315586367251139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340008 (n + 1) - A101264 (A006370 n).toNat

end

end A340801.P7977315586367251139

/-! ## A340801.P17549303861010912776

`A340008(n+1)-A103589(A271353(n+1))`
-/

namespace A340801.P17549303861010912776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340008 (n + 1) - A103589 (A271353 (n + 1)).toNat

end

end A340801.P17549303861010912776

/-! ## A340801.P9733499528867177502

`A340008(n+1)-A010051(n+1)*A157928(n)`
-/

namespace A340801.P9733499528867177502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340008 (n + 1) - A010051 (n + 1) * A157928 n

end

end A340801.P9733499528867177502

/-!
# A340802: Number of composite numbers between the largest noncomposite number <= n! and the smallest noncomposite number >= n!.

The programs for A340802, there is no canonical definition to state claims against.
-/

/-! ## A340802.P17091451365203275605

`A058054(A028310(n)+1)-1`
-/

namespace A340802.P17091451365203275605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058054 (A028310 n + 1).toNat - 1

end

end A340802.P17091451365203275605

/-! ## A340802.P9600101164798999402

`A058054(A254667(n+1))-1`
-/

namespace A340802.P9600101164798999402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058054 (A254667 (n + 1)).toNat - 1

end

end A340802.P9600101164798999402

/-! ## A340802.P14770660036529150762

`A058054(A000007(n)+1+n)-1`
-/

namespace A340802.P14770660036529150762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058054 (A000007 n + 1 + (n : ℤ)).toNat - 1

end

end A340802.P14770660036529150762

/-! ## A340802.P15356364464009501175

`A058054(2-A057427(n)+n)-1`
-/

namespace A340802.P15356364464009501175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058054 (2 - A057427 n + (n : ℤ)).toNat - 1

end

end A340802.P15356364464009501175

/-! ## A340802.P14398440402018423385

`A300547(A045367(n+1))+A058054(A254667(n+1))`
-/

namespace A340802.P14398440402018423385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300547 (A045367 (n + 1)).toNat + A058054 (A254667 (n + 1)).toNat

end

end A340802.P14398440402018423385

/-!
# A340803: Number of composite numbers between the largest noncomposite number <= prime(n)! and the smallest noncomposite number >= prime(n)!.

The programs for A340803, there is no canonical definition to state claims against.
-/

/-! ## A340803.P1242062417712045129

`A340802(A000040(n+1))`
-/

namespace A340803.P1242062417712045129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340802 (A000040 (n + 1)).toNat

end

end A340803.P1242062417712045129

/-! ## A340803.P10031178350359892489

`A340802(A006005(n+1))`
-/

namespace A340803.P10031178350359892489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340802 (A006005 (n + 1)).toNat

end

end A340803.P10031178350359892489

/-! ## A340803.P13384650396952536515

`A340802(A008578(n+2))`
-/

namespace A340803.P13384650396952536515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340802 (A008578 (n + 2)).toNat

end

end A340803.P13384650396952536515

/-! ## A340803.P3051293969291193248

`A340802(A075643(n+2))`
-/

namespace A340803.P3051293969291193248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340802 (A075643 (n + 2)).toNat

end

end A340803.P3051293969291193248

/-! ## A340803.P4206352000288232688

`A340802(A182986(n+2))`
-/

namespace A340803.P4206352000288232688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340802 (A182986 (n + 2)).toNat

end

end A340803.P4206352000288232688

/-! ## A340803.P17021868057676122529

`A340802(record[A006530(n+2)])`
-/

namespace A340803.P17021868057676122529
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340802 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A340803.P17021868057676122529

/-! ## A340803.P3170036412553178482

`A340802(record[A014963(n+2)])`
-/

namespace A340803.P3170036412553178482
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340802 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A340803.P3170036412553178482

/-! ## A340803.P7872570452869242930

`A340802(record[A020639(n+2)])`
-/

namespace A340803.P7872570452869242930
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340802 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A340803.P7872570452869242930

/-! ## A340803.P16586311306011931721

`A340802(A006093(n+1)+1)`
-/

namespace A340803.P16586311306011931721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340802 (A006093 (n + 1) + 1).toNat

end

end A340803.P16586311306011931721

/-! ## A340803.P4602130803351669280

`A340802(A008864(n+1)-1)`
-/

namespace A340803.P4602130803351669280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340802 (A008864 (n + 1) - 1).toNat

end

end A340803.P4602130803351669280

/-! ## A340803.P17709290668002767641

`A058054(A008864(n+1)-1)-1`
-/

namespace A340803.P17709290668002767641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058054 (A008864 (n + 1) - 1).toNat - 1

end

end A340803.P17709290668002767641

/-! ## A340803.P13615529603951453294

`A058054(A014692(n+1)+n)-1`
-/

namespace A340803.P13615529603951453294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058054 (A014692 (n + 1) + (n : ℤ)).toNat - 1

end

end A340803.P13615529603951453294

/-! ## A340803.P3537133759719765999

`A340802(A173072(n+1)+2*n)`
-/

namespace A340803.P3537133759719765999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340802 (A173072 (n + 1) + (2 * n : ℤ)).toNat

end

end A340803.P3537133759719765999

/-! ## A340803.P9919851408481157431

`A340802(A164931(n+2)/(n+2))`
-/

namespace A340803.P9919851408481157431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340802 (SequenceMachineLib.roundAway ((A164931 (n + 2) : ℚ) / (n + 2 : ℚ))).toNat

end

end A340803.P9919851408481157431

/-!
# A340804: Triangle read by rows: T(n, k) = 1 + k*(n - 1) + (2*k - n - 1)*(k mod 2) with 0 < k <= n.

The programs for A340804, the canonical program `A340804.P5598442592080248084` is in `Seq.B000.C038`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A340804 has offset 1).

The definition of A340804 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `1+(col(n)+1)*row(n)+(2*(col(n)+1)-(row(n)+1)-1)*(col(n)+1)%2` (program `A340804.P5598442592080248084`, by `A340804.P5598442592080248084.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A340804.P5598442592080248084

`1+(col(n)+1)*row(n)+(2*(col(n)+1)-(row(n)+1)-1)*(col(n)+1)%2`

The canonical program, it is in `Seq.B000.C038`.
-/

namespace A340804

/-- `1+(col(n)+1)*row(n)+(2*(col(n)+1)-(row(n)+1)-1)*(col(n)+1)%2` -/
def P5598442592080248084.Spec : Prop :=
  ∀ n, P5598442592080248084.a n = A340804 (n + 1)

theorem P5598442592080248084.correct : P5598442592080248084.Spec := by
  intro n
  simp only [A340804, Nat.add_sub_cancel]

end A340804

/-! ## A340804.P8247351625510404789

`A309639(A096130(n+1))`
-/

namespace A340804.P8247351625510404789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309639 (A096130 (n + 1)).toNat

end

end A340804.P8247351625510404789

namespace A340804

/-- `A309639(A096130(n+1))` -/
def P8247351625510404789.Spec : Prop :=
  ∀ n, P8247351625510404789.a n = A340804 (n + 1)

end A340804

/-! ## A340804.P15890886815354486678

`A057561(A193842(n))%A004788(A004781(n+1))`
-/

namespace A340804.P15890886815354486678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A057561 (A193842 n).toNat) (A004788 (A004781 (n + 1)).toNat)

end

end A340804.P15890886815354486678

namespace A340804

/-- `A057561(A193842(n))%A004788(A004781(n+1))` -/
def P15890886815354486678.Spec : Prop :=
  ∀ n, P15890886815354486678.a n = A340804 (n + 1)

end A340804

/-! ## A340804.P5402956775486074705

`A349339(A193842(n)+2)%A004788(A004781(n+1))`
-/

namespace A340804.P5402956775486074705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A349339 (A193842 n + 2).toNat) (A004788 (A004781 (n + 1)).toNat)

end

end A340804.P5402956775486074705

namespace A340804

/-- `A349339(A193842(n)+2)%A004788(A004781(n+1))` -/
def P5402956775486074705.Spec : Prop :=
  ∀ n, P5402956775486074705.a n = A340804 (n + 1)

end A340804

/-! ## A340804.P15104192026980219024

`A061775(A183244(n+1)²)`
-/

namespace A340804.P15104192026980219024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061775 (A183244 (n + 1) ^ 2).toNat

end

end A340804.P15104192026980219024

namespace A340804

/-- `A061775(A183244(n+1)²)` -/
def P15104192026980219024.Spec : Prop :=
  ∀ n, P15104192026980219024.a n = A340804 (n + 1)

end A340804

/-!
# A340805: a(n) is the number of solutions of the equation x*(y - 1) + (2*x - y - 1)*(x mod 2) = 2*n for 0 < x <= y.

The programs for A340805, there is no canonical definition to state claims against.
-/

/-! ## A340805.P10299225024521590850

`A067743(n+1)+Δ[A003056(n)%2]`
-/

namespace A340805.P10299225024521590850
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A003056 n) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067743 (n + 1) + (f1 (n + 1) - f1 n)

end

end A340805.P10299225024521590850

/-! ## A340805.P15072390826519393576

`A067743(n+1)+Δ[A000035(A003056(n))]`
-/

namespace A340805.P15072390826519393576
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A003056 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067743 (n + 1) + (f1 (n + 1) - f1 n)

end

end A340805.P15072390826519393576

/-! ## A340805.P17354650620712025611

`A067743(n+1)-A197870(n+1)`
-/

namespace A340805.P17354650620712025611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067743 (n + 1) - A197870 (n + 1)

end

end A340805.P17354650620712025611

/-! ## A340805.P13690315423647162729

`A067743(n+1)-Δ[A057211(n+1)]`
-/

namespace A340805.P13690315423647162729
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057211 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067743 (n + 1) - (f1 (n + 1) - f1 n)

end

end A340805.P13690315423647162729

/-! ## A340805.P11184086950696529805

`A197870(A061579(n))+A067743(n+1)`
-/

namespace A340805.P11184086950696529805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197870 (A061579 n).toNat + A067743 (n + 1)

end

end A340805.P11184086950696529805

/-! ## A340805.P11955528736084253923

`A197870(A038722(n+2))+A067743(n+1)`
-/

namespace A340805.P11955528736084253923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197870 (A038722 (n + 2)).toNat + A067743 (n + 1)

end

end A340805.P11955528736084253923

/-! ## A340805.P11269927922057181950

`A197870(A038722(n+2))+A000005(n+1)-A067742(n+1)`
-/

namespace A340805.P11269927922057181950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197870 (A038722 (n + 2)).toNat + (A000005 (n + 1) - A067742 (n + 1))

end

end A340805.P11269927922057181950

/-!
# A340810: Triangle T(n,k), n>=2, 2 <= k <= A214046(n), read by rows, where T(n,k) = n! mod k^n.

The programs for A340810, there is no canonical definition to state claims against.
-/

/-! ## A340810.P4693147285482256395

`lcm(A344869(A344859(2*n)), A344914(n+2))`
-/

namespace A340810.P4693147285482256395
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A344869 (A344859 (2 * n)).toNat) (A344914 (n + 2))

end

end A340810.P4693147285482256395

/-! ## A340810.P2687565920099728536

`A210635(A054147(n+1))`
-/

namespace A340810.P2687565920099728536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210635 (A054147 (n + 1)).toNat

end

end A340810.P2687565920099728536

/-!
# A340811: Array read by antidiagonals: T(n,k) is the number of unlabeled k-gonal 2-trees with n polygons, n >= 0, k >= 2.

The programs for A340811, there is no canonical definition to state claims against.
-/

/-! ## A340811.P13134092372699216767

`A303929(lt[A115576(3*(n+1)), A119274(n)])`
-/

namespace A340811.P13134092372699216767
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115576 (3 * (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119274 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303929 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A340811.P13134092372699216767

/-! ## A340811.P6507928103934666260

`and(A340812(n), A386237(n+1))`
-/

namespace A340811.P6507928103934666260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A340812 n) (A386237 (n + 1))

end

end A340811.P6507928103934666260

/-! ## A340811.P14020756937062606012

`ceil(A193860(n)/A329961(2*(n+1)))`
-/

namespace A340811.P14020756937062606012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A193860 n : ℚ) / (A329961 (2 * (n + 1)) : ℚ)⌉

end

end A340811.P14020756937062606012

/-! ## A340811.P17488047404838914782

`A073666(A340812(n)%A103500(n+1))`
-/

namespace A340811.P17488047404838914782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073666 (Int.tmod (A340812 n) (A103500 (n + 1))).toNat

end

end A340811.P17488047404838914782

/-! ## A340811.P3486895112189640016

`and(A204551(A101477(n)), A386237(n+1))`
-/

namespace A340811.P3486895112189640016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A204551 (A101477 n).toNat) (A386237 (n + 1))

end

end A340811.P3486895112189640016

/-!
# A340812: Array read by antidiagonals: T(n,k) is the number of unlabeled oriented k-gonal 2-trees with n oriented polygons, n >= 0, k >= 2.

The programs for A340812, there is no canonical definition to state claims against.
-/

/-! ## A340812.P9235963905956413594

`A303694(comp[∑[n-1]]%A303659(n+1))`
-/

namespace A340812.P9235963905956413594
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303694 (Int.tmod (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) (A303659 (n + 1))).toNat

end

end A340812.P9235963905956413594

/-! ## A340812.P6669129248737160181

`or(A335108(A135722(n)), A340811(n))`
-/

namespace A340812.P6669129248737160181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A335108 (A135722 n).toNat) (A340811 n)

end

end A340812.P6669129248737160181

/-! ## A340812.P1884704004042893940

`or(A335108(A135723(n)), A340811(n))`
-/

namespace A340812.P1884704004042893940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A335108 (A135723 n).toNat) (A340811 n)

end

end A340812.P1884704004042893940

/-! ## A340812.P15997777277572345705

`A073666(A340811(n)%A329961(2*(n+1)))`
-/

namespace A340812.P15997777277572345705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073666 (Int.tmod (A340811 n) (A329961 (2 * (n + 1)))).toNat

end

end A340812.P15997777277572345705

/-! ## A340812.P4918235953393128360

`A073666(ceil(A193860(n)/A329961(2*(n+1))))`
-/

namespace A340812.P4918235953393128360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073666 ⌈(A193860 n : ℚ) / (A329961 (2 * (n + 1)) : ℚ)⌉.toNat

end

end A340812.P4918235953393128360

/-!
# A340813: Number of oriented polygonal 2-trees with n oriented quadrilaterals.

The programs for A340813, there is no canonical definition to state claims against.
-/

/-! ## A340813.P241839065117811904

`A340812(∑[n+3])`
-/

namespace A340813.P241839065117811904
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340812 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A340813.P241839065117811904

/-! ## A340813.P6662541387862367916

`or(char[1], A340812(A055998(n+1)))`
-/

namespace A340813.P6662541387862367916
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A340812 (A055998 (n + 1)).toNat)

end

end A340813.P6662541387862367916

/-! ## A340813.P9848453448700276428

`abs(A057077(n)*A340812(A055998(n+1)))`
-/

namespace A340813.P9848453448700276428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A057077 n * A340812 (A055998 (n + 1)).toNat|

end

end A340813.P9848453448700276428

/-! ## A340813.P6443881327763074274

`A057077(n²)*A340812(A055998(n+1))`
-/

namespace A340813.P6443881327763074274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057077 (n ^ 2) * A340812 (A055998 (n + 1)).toNat

end

end A340813.P6443881327763074274

/-! ## A340813.P18024467368168742472

`A007318(A000217(n))*A340812(A055998(n+1))`
-/

namespace A340813.P18024467368168742472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (A000217 n).toNat * A340812 (A055998 (n + 1)).toNat

end

end A340813.P18024467368168742472

/-! ## A340813.P3401946258932757285

`A056201(A001316(n))*A340812(A055998(n+1))`
-/

namespace A340813.P3401946258932757285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056201 (A001316 n).toNat * A340812 (A055998 (n + 1)).toNat

end

end A340813.P3401946258932757285

/-! ## A340813.P6893939209146059537

`A057427(A054519(n))*A340812(A055998(n+1))`
-/

namespace A340813.P6893939209146059537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (A054519 n).toNat * A340812 (A055998 (n + 1)).toNat

end

end A340813.P6893939209146059537

/-!
# A340814: Array read by antidiagonals: T(n,k) is the number of unlabeled oriented edge-rooted k-gonal 2-trees with n oriented polygons, n >= 0, k >= 2.

The programs for A340814, there is no canonical definition to state claims against.
-/

/-! ## A340814.P15570045415091755425

`A032895(A001227(A079474(n+1)))`
-/

namespace A340814.P15570045415091755425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032895 (A001227 (A079474 (n + 1)).toNat).toNat

end

end A340814.P15570045415091755425

/-! ## A340814.P6862302522414540433

`A144823(n+1)+A025469(A007053(n))`
-/

namespace A340814.P6862302522414540433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144823 (n + 1) + A025469 (A007053 n).toNat

end

end A340814.P6862302522414540433

/-! ## A340814.P16486991414963516895

`A144823(n+1)+A025466(A129722(n))`
-/

namespace A340814.P16486991414963516895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144823 (n + 1) + A025466 (A129722 n).toNat

end

end A340814.P16486991414963516895

/-! ## A340814.P4495539523210750040

`A144823(n+1)+A058710(A102480(n))`
-/

namespace A340814.P4495539523210750040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144823 (n + 1) + A058710 (A102480 n).toNat

end

end A340814.P4495539523210750040

/-! ## A340814.P15187851893704192039

`A144823(n+1)+A082859(A094544(n))`
-/

namespace A340814.P15187851893704192039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144823 (n + 1) + A082859 (A094544 n).toNat

end

end A340814.P15187851893704192039

/-!
# A340815: Prime powers whose neighbors' greatest odd divisors are powers of primes.

The programs for A340815, there is no canonical definition to state claims against.
-/

/-! ## A340815.P5887907958158550451

`A087797(lt[A168363(n+1), ∑{d}[2*(n+1)², #]])`
-/

namespace A340815.P5887907958158550451
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168363 (n + 1)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1) ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f3 n), d

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087797 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A340815.P5887907958158550451

/-! ## A340815.P2670716478354421578

`record[gcd(A185036(n), A283262(n+1))]`
-/

namespace A340815.P2670716478354421578
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A185036 n) (A283262 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A340815.P2670716478354421578

/-! ## A340815.P13699911153087059609

`A246655(lt[A000700(n), A033922(3*n+2)])`
-/

namespace A340815.P13699911153087059609
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000700 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033922 (3 * n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246655 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A340815.P13699911153087059609

/-!
# A340816: Numbers k for which sigma(k^2)/k^2 reaches a new record, where sigma = A000203.

The programs for A340816, there is no canonical definition to state claims against.
-/

/-! ## A340816.P18036339198253243634

`A308471(A028310(n))+char[1]`
-/

namespace A340816.P18036339198253243634
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308471 (A028310 n).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A340816.P18036339198253243634

/-! ## A340816.P282139813793235835

`A308471(A065033(2*n))+char[1]`
-/

namespace A340816.P282139813793235835
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308471 (A065033 (2 * n)).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A340816.P282139813793235835

/-! ## A340816.P9962056912632363693

`∪[A007352(n+1), A308471(n+1)]`
-/

namespace A340816.P9962056912632363693
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007352 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308471 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A340816.P9962056912632363693

/-! ## A340816.P11993864695472979145

`∪[A262729(n+1), A308471(n+1)]`
-/

namespace A340816.P11993864695472979145
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262729 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308471 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A340816.P11993864695472979145

/-! ## A340816.P16933643068797745211

`∪[A308471(n+1), A392297(n+1)]`
-/

namespace A340816.P16933643068797745211
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308471 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392297 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A340816.P16933643068797745211

/-!
# A340817: a(n) is the least prime of the form prime(n)*p + prime(n+1)*q + prime(n+2)*r where p,q,r are consecutive primes.

The programs for A340817, there is no canonical definition to state claims against.
-/

/-! ## A340817.P8272990457456968260

`A000040(n+2)*A340821(n+2)+A000040(n+3)*A151800(A340821(n+2))+A000040(n+4)*A151800(A151800(A340821(n+2)))`
-/

namespace A340817.P8272990457456968260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 2) * A340821 (n + 2) + A000040 (n + 3) * A151800 (A340821 (n + 2)).toNat + A000040 (n + 4) * A151800 (A151800 (A340821 (n + 2)).toNat).toNat

end

end A340817.P8272990457456968260

/-!
# A340818: Numerators of a sequence of fractions converging to A340820, the asymptotic density of numbers whose excess of prime divisors (A046660) is even (A162644).

The programs for A340818, there is no canonical definition to state claims against.
-/

/-! ## A340818.P17807963206582438762

`A042990(C(A008348(n), A007091(n))+1)`
-/

namespace A340818.P17807963206582438762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042990 (Nat.choose (A008348 n).toNat (A007091 n).toNat + 1)

end

end A340818.P17807963206582438762

/-!
# A340823: a(n) = exp(-1) * Sum_{k>=0} (k*(k - n))^n / k!.

The programs for A340823, there is no canonical definition to state claims against.
-/

/-! ## A340823.P17608094329132965095

`xor(n, a(n-1)!)` with `a(0)=1, a(1)=1`
-/

namespace A340823.P17608094329132965095
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 1] fun n a =>
  Nat.xor n (Nat.factorial (a (n - 1)))

end

end A340823.P17608094329132965095

/-!
# A340825: a(n) is the smallest k such that A340745(k) - k = n.

The programs for A340825, there is no canonical definition to state claims against.
-/

/-! ## A340825.P3289833419697517226

`A274715(A000108(n))+A110236(n+1)`
-/

namespace A340825.P3289833419697517226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274715 (A000108 n).toNat + A110236 (n + 1)

end

end A340825.P3289833419697517226

/-! ## A340825.P13344924714383104155

`∑[A054404(A182197(n+1))]+A002265(n)+1`
-/

namespace A340825.P13344924714383104155
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054404 (A182197 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (A002265 n + 1)

end

end A340825.P13344924714383104155

/-! ## A340825.P10741417698131783011

`A332086(A001047(n+1)+2^ceil(A134560(n+1)/2)-1)`
-/

namespace A340825.P10741417698131783011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332086 (SequenceMachineLib.roundAway ((A001047 (n + 1) : ℚ) + ((2 : ℚ) ^ (⌈(A134560 (n + 1) : ℚ) / 2⌉ : ℤ) - 1))).toNat

end

end A340825.P10741417698131783011

/-! ## A340825.P18045647734238914562

`A332086(A001047(n+1)+A051731(n+1)*A228035(n))`
-/

namespace A340825.P18045647734238914562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332086 (A001047 (n + 1) + A051731 (n + 1) * A228035 n).toNat

end

end A340825.P18045647734238914562

/-!
# A340827: Number of strict integer partitions of n into divisors of n whose length also divides n.

The programs for A340827, there is no canonical definition to state claims against.
-/

/-! ## A340827.P13075169969904181108

`A061389(5^A094518(n+1))`
-/

namespace A340827.P13075169969904181108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061389 (SequenceMachineLib.roundAway ((5 : ℚ) ^ (A094518 (n + 1) : ℤ))).toNat

end

end A340827.P13075169969904181108

/-! ## A340827.P4834522806791846687

`gcd(A364914(n), A378604(n+1))`
-/

namespace A340827.P4834522806791846687
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A364914 n) (A378604 (n + 1))

end

end A340827.P4834522806791846687

/-! ## A340827.P12111178939208602105

`A088722(n+1)^A233543(n)+1`
-/

namespace A340827.P12111178939208602105
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A088722 (n + 1) : ℚ) ^ (A233543 n : ℤ) + 1

end

end A340827.P12111178939208602105

/-! ## A340827.P15591466960451717220

`A336312(A113196(n+1))`
-/

namespace A340827.P15591466960451717220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336312 (A113196 (n + 1)).toNat

end

end A340827.P15591466960451717220

/-! ## A340827.P220537875892132277

`gcd(A254719(n+1), A289449(n))`
-/

namespace A340827.P220537875892132277
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A254719 (n + 1)) (A289449 n)

end

end A340827.P220537875892132277

/-!
# A340828: Number of strict integer partitions of n whose maximum part is a multiple of their length.

The programs for A340828, there is no canonical definition to state claims against.
-/

/-! ## A340828.P13567975647149721117

`A110591(A001129(n))+A043545(n)`
-/

namespace A340828.P13567975647149721117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110591 (A001129 n).toNat + A043545 n

end

end A340828.P13567975647149721117

/-! ## A340828.P737502869209528245

`A000120(xor(A052932(n), A161983(n)))`
-/

namespace A340828.P737502869209528245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (Int.xor (A052932 n) (A161983 n)).toNat

end

end A340828.P737502869209528245

/-! ## A340828.P13105451528259752442

`A256502(n+1)-A214851(A240505(n+1))`
-/

namespace A340828.P13105451528259752442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256502 (n + 1) - A214851 (A240505 (n + 1)).toNat

end

end A340828.P13105451528259752442

/-! ## A340828.P2292449418069786288

`A348330(lt[A348347(3*n+5), A348307(n+1)])`
-/

namespace A340828.P2292449418069786288
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348347 (3 * n + 5)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348307 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348330 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A340828.P2292449418069786288

/-! ## A340828.P5274463068370200311

`A000120(A189869(n+1)+A000217(n))`
-/

namespace A340828.P5274463068370200311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A189869 (n + 1) + A000217 n).toNat

end

end A340828.P5274463068370200311

/-!
# A340829: Number of strict integer partitions of n whose Heinz number (product of primes of parts) is divisible by n.

The programs for A340829, there is no canonical definition to state claims against.
-/

/-! ## A340829.P6254272024536050223

`A124767(lcm(A008683(n+1), A079980(n)))`
-/

namespace A340829.P6254272024536050223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124767 (Int.lcm (A008683 (n + 1)) (A079980 n))

end

end A340829.P6254272024536050223

/-! ## A340829.P6900931031144865834

`lcm(A008683(A335049(n+1)), A025799(n))`
-/

namespace A340829.P6900931031144865834
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A008683 (A335049 (n + 1)).toNat) (A025799 n)

end

end A340829.P6900931031144865834

/-! ## A340829.P8875851484217738275

`lcm(A008683(A077168(n)), A025797(n))`
-/

namespace A340829.P8875851484217738275
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A008683 (A077168 n).toNat) (A025797 n)

end

end A340829.P8875851484217738275

/-! ## A340829.P11655445194405003855

`A061395(2*(n+1))-A257990(A281638(n))`
-/

namespace A340829.P11655445194405003855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (2 * (n + 1)) - A257990 (A281638 n).toNat

end

end A340829.P11655445194405003855

/-! ## A340829.P4096682079561123149

`A008683(n+1)*A025797(n)*A008683(A077168(n))`
-/

namespace A340829.P4096682079561123149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (n + 1) * A025797 n * A008683 (A077168 n).toNat

end

end A340829.P4096682079561123149

/-!
# A340830: Number of strict integer partitions of n such that every part is a multiple of the number of parts.

The programs for A340830, there is no canonical definition to state claims against.
-/

/-! ## A340830.P18317009123444523133

`A007302(A097331(n)+A028235(n+1))`
-/

namespace A340830.P18317009123444523133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007302 (A097331 n + A028235 (n + 1)).toNat

end

end A340830.P18317009123444523133

/-! ## A340830.P7846858173672374368

`A110654(A152271(n))+A016232(A038479(n+1))`
-/

namespace A340830.P7846858173672374368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (A152271 n).toNat + A016232 (A038479 (n + 1)).toNat

end

end A340830.P7846858173672374368

/-!
# A340831: Number of factorizations of n into factors > 1 with odd greatest factor.

The programs for A340831, there is no canonical definition to state claims against.
-/

/-! ## A340831.P14957406144486011314

`A056170(A302776(n+1))+A056170(A304660(n+1))`
-/

namespace A340831.P14957406144486011314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056170 (A302776 (n + 1)).toNat + A056170 (A304660 (n + 1)).toNat

end

end A340831.P14957406144486011314

/-! ## A340831.P6460135875498562706

`A056170(lcm(A302776(n+1), A304660(n+1)))`
-/

namespace A340831.P6460135875498562706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056170 (Int.lcm (A302776 (n + 1)) (A304660 (n + 1)))

end

end A340831.P6460135875498562706

/-! ## A340831.P18061327469181659792

`A001222(A348158(n+1)%A033149(A181363(n+1)))`
-/

namespace A340831.P18061327469181659792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (Int.tmod (A348158 (n + 1)) (A033149 (A181363 (n + 1)).toNat)).toNat

end

end A340831.P18061327469181659792

/-! ## A340831.P11815774130700375969

`A122840(A273332(n))+A001222(A000265(n+1))`
-/

namespace A340831.P11815774130700375969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122840 (A273332 n).toNat + A001222 (A000265 (n + 1)).toNat

end

end A340831.P11815774130700375969

/-! ## A340831.P5011402301097517179

`A326622(A000265(n+1)*A318809(3*(n+1)))`
-/

namespace A340831.P5011402301097517179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326622 (A000265 (n + 1) * A318809 (3 * (n + 1))).toNat

end

end A340831.P5011402301097517179

/-!
# A340832: Number of factorizations of n into factors > 1 with odd least factor.

The programs for A340832, there is no canonical definition to state claims against.
-/

/-! ## A340832.P13983850587435389975

`A060764(n+1)-A036452(A113196(n+1))`
-/

namespace A340832.P13983850587435389975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060764 (n + 1) - A036452 (A113196 (n + 1)).toNat

end

end A340832.P13983850587435389975

/-! ## A340832.P13970843554544352878

`A060764(n+1)-A064372(A183092(n+1))`
-/

namespace A340832.P13970843554544352878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060764 (n + 1) - A064372 (A183092 (n + 1)).toNat

end

end A340832.P13970843554544352878

/-! ## A340832.P16637647936507095231

`A218320(n+1)%A001227(A064446(n+1))`
-/

namespace A340832.P16637647936507095231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A218320 (n + 1)) (A001227 (A064446 (n + 1)).toNat)

end

end A340832.P16637647936507095231

/-! ## A340832.P5895996218226017651

`A342086(A045967(n+1))%A060764(n+1)`
-/

namespace A340832.P5895996218226017651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A342086 (A045967 (n + 1)).toNat) (A060764 (n + 1))

end

end A340832.P5895996218226017651

/-! ## A340832.P1138381592414614784

`A008578(A105440(n+1))%A045778(n+4)`
-/

namespace A340832.P1138381592414614784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A008578 (A105440 (n + 1)).toNat) (A045778 (n + 4))

end

end A340832.P1138381592414614784

/-!
# A340833: a(n) is the number of vertices in the diagram of the symmetric representation of sigma(n).

The programs for A340833, there is no canonical definition to state claims against.
-/

/-! ## A340833.P382111221156068920

`A340846(n+1)-A237271(n+1)+1`
-/

namespace A340833.P382111221156068920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340846 (n + 1) - A237271 (n + 1) + 1

end

end A340833.P382111221156068920

/-! ## A340833.P4443249791197267016

`A131507(n)+Δ[A294723(n)]`
-/

namespace A340833.P4443249791197267016
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294723 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131507 n + (f1 (n + 1) - f1 n)

end

end A340833.P4443249791197267016

/-! ## A340833.P11328638384889847168

`A131507(n)-A001489(Δ[A294723(n)])`
-/

namespace A340833.P11328638384889847168
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294723 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131507 n - A001489 (f1 (n + 1) - f1 n).toNat

end

end A340833.P11328638384889847168

/-! ## A340833.P8778817286322378434

`A060747(A002024(n+1))+Δ[A294723(n)]`
-/

namespace A340833.P8778817286322378434
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294723 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060747 (A002024 (n + 1)).toNat + (f1 (n + 1) - f1 n)

end

end A340833.P8778817286322378434

/-! ## A340833.P1713226338854533694

`A060747(A003056(n)+1)+Δ[A294723(n)]`
-/

namespace A340833.P1713226338854533694
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294723 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060747 (A003056 n + 1).toNat + (f1 (n + 1) - f1 n)

end

end A340833.P1713226338854533694

/-! ## A340833.P8274771477868065454

`A004442(A340846(n+1))-A237271(n+1)`
-/

namespace A340833.P8274771477868065454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004442 (A340846 (n + 1)).toNat - A237271 (n + 1)

end

end A340833.P8274771477868065454

/-! ## A340833.P16267842842489898026

`A340846(n+1)-A002265(A244971(n+1))`
-/

namespace A340833.P16267842842489898026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340846 (n + 1) - A002265 (A244971 (n + 1)).toNat

end

end A340833.P16267842842489898026

/-! ## A340833.P2437481476375686734

`A340846(n+1)+1-(A000005(n+1)-A243982(n+1))`
-/

namespace A340833.P2437481476375686734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340846 (n + 1) + 1 - (A000005 (n + 1) - A243982 (n + 1))

end

end A340833.P2437481476375686734

/-!
# A340836: a(n) is the least k such that the binary reversal of k is greater than or equal to n.

The programs for A340836, there is no canonical definition to state claims against.
-/

/-! ## A340836.P9137609685046381780

`A073137(or(n, A185102(A010011(n))))`
-/

namespace A340836.P9137609685046381780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073137 (Int.lor (n : ℤ) (A185102 (A010011 n).toNat)).toNat

end

end A340836.P9137609685046381780

/-! ## A340836.P8046274037273415422

`A073137(A004525(2*n+1))-A126812(A285636(n))`
-/

namespace A340836.P8046274037273415422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073137 (A004525 (2 * n + 1)).toNat - A126812 (A285636 n).toNat

end

end A340836.P8046274037273415422

/-! ## A340836.P10885468361086798416

`A073137(A004525(2*n+1))%A002522(A007331(n))`
-/

namespace A340836.P10885468361086798416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A073137 (A004525 (2 * n + 1)).toNat) (A002522 (A007331 n).toNat)

end

end A340836.P10885468361086798416

/-! ## A340836.P17847069267225996872

`A073137(or(1, n))%A124974(n+1)`
-/

namespace A340836.P17847069267225996872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A073137 (Nat.lor 1 n)) (A124974 (n + 1))

end

end A340836.P17847069267225996872

/-!
# A340837: a(n) = (1/2) * Sum_{k>=0} (k*(k - 1))^n / 2^k.

The programs for A340837, there is no canonical definition to state claims against.
-/

/-! ## A340837.P5030768606764112369

`A122101(∑[4*n])`
-/

namespace A340837.P5030768606764112369
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122101 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A340837.P5030768606764112369

/-! ## A340837.P4610345682302891255

`2^n*A055203(n)`
-/

namespace A340837.P4610345682302891255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) * A055203 n

end

end A340837.P4610345682302891255

/-! ## A340837.P15031517022818938992

`lcm(2^n, A059516(n))`
-/

namespace A340837.P15031517022818938992
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (2 ^ n : ℤ) (A059516 n)

end

end A340837.P15031517022818938992

/-! ## A340837.P9317694839126024159

`A011782(n)*A059516(n)`
-/

namespace A340837.P9317694839126024159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 n * A059516 n

end

end A340837.P9317694839126024159

/-! ## A340837.P9060599473269517079

`A059516(n)*A166444(n+1)`
-/

namespace A340837.P9060599473269517079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059516 n * A166444 (n + 1)

end

end A340837.P9060599473269517079

/-!
# A340840: 

The programs for A340840, there is no canonical definition to state claims against.
-/

/-! ## A340840.P7163419160987957676

`∪[A002182(n+1), A004394(n+1)]%A004394(n+2)`
-/

namespace A340840.P7163419160987957676
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002182 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004394 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n : ℤ) (A004394 (n + 2))

end

end A340840.P7163419160987957676

/-! ## A340840.P8400213251511546976

`∪[A004394(n+1), A004778(n+1)]`
-/

namespace A340840.P8400213251511546976
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004394 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004778 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A340840.P8400213251511546976

/-! ## A340840.P18148921512946260103

`A025487(∪[A293635(n+1), A306802(n+1)])`
-/

namespace A340840.P18148921512946260103
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293635 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306802 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025487 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n)

end

end A340840.P18148921512946260103

/-! ## A340840.P4046097517211288293

`A055932(∪[A332034(n+1), A332035(n+1)])`
-/

namespace A340840.P4046097517211288293
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332034 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332035 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055932 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n)

end

end A340840.P4046097517211288293

/-! ## A340840.P3810183093726954060

`∪[A055932(A332035(n+1)), A333655(n+5)]`
-/

namespace A340840.P3810183093726954060
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055932 (A332035 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333655 (n + 5)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A340840.P3810183093726954060

/-!
# A340845: Denominators of coefficients in the expansion given in A340825 (see Comments at A340844).

The programs for A340845, there is no canonical definition to state claims against.
-/

/-! ## A340845.P10675832465198201282

`A225975((n+1)*(n+2)!)`
-/

namespace A340845.P10675832465198201282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225975 ((n + 1) * Nat.factorial (n + 2))

end

end A340845.P10675832465198201282

/-!
# A340846: a(n) is the number of edges in the diagram of the symmetric representation of sigma(n).

The programs for A340846, there is no canonical definition to state claims against.
-/

/-! ## A340846.P5686106401826251275

`A340833(n+1)+A237271(n+1)-1`
-/

namespace A340846.P5686106401826251275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340833 (n + 1) + A237271 (n + 1) - 1

end

end A340846.P5686106401826251275

/-! ## A340846.P17788957811035635528

`A279891(n)+Δ[A317109(n)]`
-/

namespace A340846.P17788957811035635528
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317109 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279891 n + (f1 (n + 1) - f1 n)

end

end A340846.P17788957811035635528

/-! ## A340846.P9166688918945875355

`A004442(A340833(n+1)+A237271(n+1))`
-/

namespace A340846.P9166688918945875355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004442 (A340833 (n + 1) + A237271 (n + 1)).toNat

end

end A340846.P9166688918945875355

/-! ## A340846.P3927630466440624265

`A340833(n+1)+A002265(A244971(n+1))`
-/

namespace A340846.P3927630466440624265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340833 (n + 1) + A002265 (A244971 (n + 1)).toNat

end

end A340846.P3927630466440624265

/-! ## A340846.P7540909803288627816

`A023443(A340833(n+1)+A237271(n+1))`
-/

namespace A340846.P7540909803288627816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A340833 (n + 1) + A237271 (n + 1)).toNat

end

end A340846.P7540909803288627816

/-! ## A340846.P1880950081436200772

`A029578(A340833(n+1)+A237271(n+1))`
-/

namespace A340846.P1880950081436200772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029578 (A340833 (n + 1) + A237271 (n + 1)).toNat

end

end A340846.P1880950081436200772

/-! ## A340846.P14360885466478420764

`A052928(A340833(n+1)+A237271(n+1))`
-/

namespace A340846.P14360885466478420764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052928 (A340833 (n + 1) + A237271 (n + 1)).toNat

end

end A340846.P14360885466478420764

/-! ## A340846.P1492822999770199730

`A085914(A340833(n+1)+A237271(n+1))`
-/

namespace A340846.P1492822999770199730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085914 (A340833 (n + 1) + A237271 (n + 1)).toNat

end

end A340846.P1492822999770199730

/-!
# A340847: a(n) is the number of vertices in the diagram of the symmetric representation of sigma(n) with subparts.

The programs for A340847, there is no canonical definition to state claims against.
-/

/-! ## A340847.P2561688756050158443

`A340848(n+1)-A069283(A187829(n+1))`
-/

namespace A340847.P2561688756050158443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340848 (n + 1) - A069283 (A187829 (n + 1)).toNat

end

end A340847.P2561688756050158443

/-! ## A340847.P7044572662025281995

`A340848(n+1)-A340853(∏{d}[n+1, #^(#%2)])`
-/

namespace A340847.P7044572662025281995
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340848 (n + 1) - A340853 (∏ d ∈ Nat.divisors (f1 n), d ^ (d % 2))

end

end A340847.P7044572662025281995

/-! ## A340847.P6724870976031587426

`or(A134022(A218638(2*n+1)), A340833(n+1))`
-/

namespace A340847.P6724870976031587426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A134022 (A218638 (2 * n + 1)).toNat) (A340833 (n + 1))

end

end A340847.P6724870976031587426

/-!
# A340848: a(n) is the number of edges in the diagram of the symmetric representation of sigma(n) with subparts.

The programs for A340848, there is no canonical definition to state claims against.
-/

/-! ## A340848.P3223908194688433761

`A279891(n)+Δ[A317292(n)]`
-/

namespace A340848.P3223908194688433761
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317292 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279891 n + (f1 (n + 1) - f1 n)

end

end A340848.P3223908194688433761

/-! ## A340848.P6406836996915621398

`A340847(n+1)+A069283(A187829(n+1))`
-/

namespace A340848.P6406836996915621398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340847 (n + 1) + A069283 (A187829 (n + 1)).toNat

end

end A340848.P6406836996915621398

/-! ## A340848.P16521573537721863903

`A340853(∏{d}[n+1, #^(#%2)])+A340847(n+1)`
-/

namespace A340848.P16521573537721863903
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340853 (∏ d ∈ Nat.divisors (f1 n), d ^ (d % 2)) + A340847 (n + 1)

end

end A340848.P16521573537721863903

/-!
# A340849: a(n) = A001045(n) + A052928(n).

The programs for A340849, the canonical program `A340849.P14711496973372682514` is in `Seq.B001.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A340849 has offset 0).

The definition of A340849 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A001045(n)+A052928(n)` (program `A340849.P14711496973372682514`, by `A340849.P14711496973372682514.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A340849.P14154030168937517047

`3*a(n-1)-a(n-2)-3*a(n-3)+2*a(n-4)` with `a(0)=0, a(1)=1, a(2)=3, a(3)=5`
-/

namespace A340849.P14154030168937517047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 3, 5] fun n a =>
  3 * a (n - 1) - a (n - 2) - 3 * a (n - 3) + 2 * a (n - 4)

end

end A340849.P14154030168937517047

namespace A340849

/-- `3*a(n-1)-a(n-2)-3*a(n-3)+2*a(n-4)` -/
def P14154030168937517047.Spec : Prop :=
  ∀ n, P14154030168937517047.a n = A340849 n

end A340849

/-! ## A340849.P14711496973372682514

`A001045(n)+A052928(n)`

The canonical program, it is in `Seq.B001.C011`.
-/

namespace A340849

/-- `A001045(n)+A052928(n)` -/
def P14711496973372682514.Spec : Prop :=
  ∀ n, P14711496973372682514.a n = A340849 n

theorem P14711496973372682514.correct : P14711496973372682514.Spec := by
  intro n
  simp only [A340849]

end A340849

/-! ## A340849.P14040821464964834838

`n+floor(2^n/3)`
-/

namespace A340849.P14040821464964834838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) + ⌊(2 ^ n : ℚ) / 3⌋

end

end A340849.P14040821464964834838

namespace A340849

/-- `n+floor(2^n/3)` -/
def P14040821464964834838.Spec : Prop :=
  ∀ n, P14040821464964834838.a n = A340849 n

end A340849

/-! ## A340849.P12727964150073180882

`ogf((x-3x^3)/(1-3x+x^2+3x^3-2x^4))`
-/

namespace A340849.P12727964150073180882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1, 0, -3] [1, -3, 1, 3, -2] n

end

end A340849.P12727964150073180882

namespace A340849

/-- `ogf((x-3x^3)/(1-3x+x^2+3x^3-2x^4))` -/
def P12727964150073180882.Spec : Prop :=
  ∀ n, P12727964150073180882.a n = A340849 n

end A340849

/-! ## A340849.P4239990982981084069

`or(1, 2*a(n-1)-(n-2))` with `a(0)=0`
-/

namespace A340849.P4239990982981084069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  Int.lor 1 (2 * a (n - 1) - ((n : ℤ) - 2))

end

end A340849.P4239990982981084069

namespace A340849

/-- `or(1, 2*a(n-1)-(n-2))` -/
def P4239990982981084069.Spec : Prop :=
  ∀ n, P4239990982981084069.a n = A340849 n

end A340849

/-! ## A340849.P15175101626260617345

`Δ[A357282(n)]`
-/

namespace A340849.P15175101626260617345
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357282 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A340849.P15175101626260617345

namespace A340849

/-- `Δ[A357282(n)]` -/
def P15175101626260617345.Spec : Prop :=
  ∀ n, P15175101626260617345.a n = A340849 n

end A340849

/-! ## A340849.P1152533717560498371

`A052997(n)%A179744(n)`
-/

namespace A340849.P1152533717560498371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A052997 n) (A179744 n)

end

end A340849.P1152533717560498371

namespace A340849

/-- `A052997(n)%A179744(n)` -/
def P1152533717560498371.Spec : Prop :=
  ∀ n, P1152533717560498371.a n = A340849 n

end A340849

/-! ## A340849.P12045862887247898245

`A171231(n)%A322783(n)`
-/

namespace A340849.P12045862887247898245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A171231 n) (A322783 n)

end

end A340849.P12045862887247898245

namespace A340849

/-- `A171231(n)%A322783(n)` -/
def P12045862887247898245.Spec : Prop :=
  ∀ n, P12045862887247898245.a n = A340849 n

end A340849

/-! ## A340849.P1342528523659204150

`A083706(n)%A081254(n+1)`
-/

namespace A340849.P1342528523659204150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A083706 n) (A081254 (n + 1))

end

end A340849.P1342528523659204150

namespace A340849

/-- `A083706(n)%A081254(n+1)` -/
def P1342528523659204150.Spec : Prop :=
  ∀ n, P1342528523659204150.a n = A340849 n

end A340849

/-! ## A340849.P3050332834028727748

`A033484(n)%A026646(n)`
-/

namespace A340849.P3050332834028727748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A033484 n) (A026646 n)

end

end A340849.P3050332834028727748

namespace A340849

/-- `A033484(n)%A026646(n)` -/
def P3050332834028727748.Spec : Prop :=
  ∀ n, P3050332834028727748.a n = A340849 n

end A340849

/-! ## A340849.P3876217890077357374

`A052940(n)%A084172(n)`
-/

namespace A340849.P3876217890077357374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A052940 n) (A084172 n)

end

end A340849.P3876217890077357374

namespace A340849

/-- `A052940(n)%A084172(n)` -/
def P3876217890077357374.Spec : Prop :=
  ∀ n, P3876217890077357374.a n = A340849 n

end A340849

/-! ## A340849.P11931535895831931503

`A153893(n)%A084172(n)`
-/

namespace A340849.P11931535895831931503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A153893 n) (A084172 n)

end

end A340849.P11931535895831931503

namespace A340849

/-- `A153893(n)%A084172(n)` -/
def P11931535895831931503.Spec : Prop :=
  ∀ n, P11931535895831931503.a n = A340849 n

end A340849

/-! ## A340849.P14489352601280785836

`xor(A153893(n), A288206(n))`
-/

namespace A340849.P14489352601280785836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A153893 n) (A288206 n)

end

end A340849.P14489352601280785836

namespace A340849

/-- `xor(A153893(n), A288206(n))` -/
def P14489352601280785836.Spec : Prop :=
  ∀ n, P14489352601280785836.a n = A340849 n

end A340849

/-! ## A340849.P6770742940045562028

`A097809(n)%A005262(n)`
-/

namespace A340849.P6770742940045562028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A097809 n) (A005262 n)

end

end A340849.P6770742940045562028

namespace A340849

/-- `A097809(n)%A005262(n)` -/
def P6770742940045562028.Spec : Prop :=
  ∀ n, P6770742940045562028.a n = A340849 n

end A340849

/-! ## A340849.P3489850354445166420

`A085278(n)%A094002(n)`
-/

namespace A340849.P3489850354445166420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A085278 n) (A094002 n)

end

end A340849.P3489850354445166420

namespace A340849

/-- `A085278(n)%A094002(n)` -/
def P3489850354445166420.Spec : Prop :=
  ∀ n, P3489850354445166420.a n = A340849 n

end A340849

/-! ## A340849.P3993740854287185543

`A127981(n+1)%A048493(n)`
-/

namespace A340849.P3993740854287185543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A127981 (n + 1)) (A048493 n)

end

end A340849.P3993740854287185543

namespace A340849

/-- `A127981(n+1)%A048493(n)` -/
def P3993740854287185543.Spec : Prop :=
  ∀ n, P3993740854287185543.a n = A340849 n

end A340849

/-!
# A340850: Dirichlet g.f.: Sum_{n>0} a(n)/n^s = zeta(s) * zeta(s-2) / (zeta(s-1))^2.

The programs for A340850, the canonical program `A340850.P57978566503964907` is in `Seq.B003.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A340850 has offset 1).

The definition of A340850 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A173557, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A340850.P57978566503964907

`A000203((n+1)²/A007947(n+1))*A173557(n+1)²/A048250(n+1)`

The canonical program, it is in `Seq.B003.C004`.
-/

namespace A340850

/-- `A000203((n+1)²/A007947(n+1))*A173557(n+1)²/A048250(n+1)` -/
def P57978566503964907.Spec : Prop :=
  ∀ n, P57978566503964907.a n = (A340850 (n + 1) : ℚ)

end A340850

/-! ## A340850.P10321325814311808613

`A349469(n+1)/(n+1)`
-/

namespace A340850.P10321325814311808613
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A349469 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A340850.P10321325814311808613

namespace A340850

/-- `A349469(n+1)/(n+1)` -/
def P10321325814311808613.Spec : Prop :=
  ∀ n, P10321325814311808613.a n = (A340850 (n + 1) : ℚ)

end A340850

/-! ## A340850.P13245007369659831991

`∑{d}[n+1, #*A007431(#)]`
-/

namespace A340850.P13245007369659831991
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * A007431 d

end

end A340850.P13245007369659831991

namespace A340850

/-- `∑{d}[n+1, #*A007431(#)]` -/
def P13245007369659831991.Spec : Prop :=
  ∀ n, P13245007369659831991.a n = A340850 (n + 1)

end A340850

/-! ## A340850.P11583194495329518032

`∑{d}[A003557(n+1), (#*A023900(n+1))²]`
-/

namespace A340850.P11583194495329518032
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003557 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, ((d : ℤ) * A023900 (n + 1)) ^ 2

end

end A340850.P11583194495329518032

namespace A340850

/-- `∑{d}[A003557(n+1), (#*A023900(n+1))²]` -/
def P11583194495329518032.Spec : Prop :=
  ∀ n, P11583194495329518032.a n = A340850 (n + 1)

end A340850

/-! ## A340850.P2189319715687574248

`∑{d}[A003557(n+1), (#*A173557(n+1))²]`
-/

namespace A340850.P2189319715687574248
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003557 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, ((d : ℤ) * A173557 (n + 1)) ^ 2

end

end A340850.P2189319715687574248

namespace A340850

/-- `∑{d}[A003557(n+1), (#*A173557(n+1))²]` -/
def P2189319715687574248.Spec : Prop :=
  ∀ n, P2189319715687574248.a n = A340850 (n + 1)

end A340850

/-! ## A340850.P6972616350129204515

`∑{d}[A003557(n+1), A000010((n+1)/#)²]`
-/

namespace A340850.P6972616350129204515
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003557 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat ^ 2

end

end A340850.P6972616350129204515

namespace A340850

/-- `∑{d}[A003557(n+1), A000010((n+1)/#)²]` -/
def P6972616350129204515.Spec : Prop :=
  ∀ n, P6972616350129204515.a n = A340850 (n + 1)

end A340850

/-! ## A340850.P1429563254951356173

`∑{d}[n+1, A002618(#)*A023900((n+1)/#)]`
-/

namespace A340850.P1429563254951356173
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A002618 d * A023900 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A340850.P1429563254951356173

namespace A340850

/-- `∑{d}[n+1, A002618(#)*A023900((n+1)/#)]` -/
def P1429563254951356173.Spec : Prop :=
  ∀ n, P1429563254951356173.a n = A340850 (n + 1)

end A340850

/-! ## A340850.P2468868924359023232

`∑{d}[n+1, A055615(#)*A057660((n+1)/#)]`
-/

namespace A340850.P2468868924359023232
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A055615 d * A057660 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A340850.P2468868924359023232

namespace A340850

/-- `∑{d}[n+1, A055615(#)*A057660((n+1)/#)]` -/
def P2468868924359023232.Spec : Prop :=
  ∀ n, P2468868924359023232.a n = A340850 (n + 1)

end A340850

/-! ## A340850.P8968766740724817622

`∑{d}[n+1, A063445(#)*A130054((n+1)/#)]`
-/

namespace A340850.P8968766740724817622
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A063445 d * A130054 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A340850.P8968766740724817622

namespace A340850

/-- `∑{d}[n+1, A063445(#)*A130054((n+1)/#)]` -/
def P8968766740724817622.Spec : Prop :=
  ∀ n, P8968766740724817622.a n = A340850 (n + 1)

end A340850

/-! ## A340850.P16682852750192368817

`∑{d}[n+1, A001157(#)*A328722((n+1)/#)]`
-/

namespace A340850.P16682852750192368817
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A001157 d * A328722 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A340850.P16682852750192368817

namespace A340850

/-- `∑{d}[n+1, A001157(#)*A328722((n+1)/#)]` -/
def P16682852750192368817.Spec : Prop :=
  ∀ n, P16682852750192368817.a n = A340850 (n + 1)

end A340850

/-! ## A340850.P5333026942127260313

`∑{d}[n+1, A034676(#)*A298473((n+1)/#)]`
-/

namespace A340850.P5333026942127260313
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A034676 d * A298473 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A340850.P5333026942127260313

namespace A340850

/-- `∑{d}[n+1, A034676(#)*A298473((n+1)/#)]` -/
def P5333026942127260313.Spec : Prop :=
  ∀ n, P5333026942127260313.a n = A340850 (n + 1)

end A340850

/-! ## A340850.P3577379188754424610

`∑{d}[n+1, A007433(#)*A327960((n+1)/#)]`
-/

namespace A340850.P3577379188754424610
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A007433 d * A327960 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A340850.P3577379188754424610

namespace A340850

/-- `∑{d}[n+1, A007433(#)*A327960((n+1)/#)]` -/
def P3577379188754424610.Spec : Prop :=
  ∀ n, P3577379188754424610.a n = A340850 (n + 1)

end A340850

/-! ## A340850.P14343363962321413525

`∑{d}[n+1, A007434(#)*A328641((n+1)/#)]`
-/

namespace A340850.P14343363962321413525
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A007434 d * A328641 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A340850.P14343363962321413525

namespace A340850

/-- `∑{d}[n+1, A007434(#)*A328641((n+1)/#)]` -/
def P14343363962321413525.Spec : Prop :=
  ∀ n, P14343363962321413525.a n = A340850 (n + 1)

end A340850

/-! ## A340850.P13171302001052891201

`∑{d}[n+1, A065958(#)*A347092((n+1)/#)]`
-/

namespace A340850.P13171302001052891201
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A065958 d * A347092 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A340850.P13171302001052891201

namespace A340850

/-- `∑{d}[n+1, A065958(#)*A347092((n+1)/#)]` -/
def P13171302001052891201.Spec : Prop :=
  ∀ n, P13171302001052891201.a n = A340850 (n + 1)

end A340850

/-! ## A340850.P12986803774990863878

`∑{d}[n+1, A078747(#)*A349343((n+1)/#)]`
-/

namespace A340850.P12986803774990863878
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A078747 d * A349343 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A340850.P12986803774990863878

namespace A340850

/-- `∑{d}[n+1, A078747(#)*A349343((n+1)/#)]` -/
def P12986803774990863878.Spec : Prop :=
  ∀ n, P12986803774990863878.a n = A340850 (n + 1)

end A340850

/-! ## A340850.P2952759433308866992

`∑{d}[n+1, A334657(#)*A373059((n+1)/#)]`
-/

namespace A340850.P2952759433308866992
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A334657 d * A373059 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A340850.P2952759433308866992

namespace A340850

/-- `∑{d}[n+1, A334657(#)*A373059((n+1)/#)]` -/
def P2952759433308866992.Spec : Prop :=
  ∀ n, P2952759433308866992.a n = A340850 (n + 1)

end A340850

/-! ## A340850.P6730815597194267756

`∑{d}[n+1, A334659(#)*A373061((n+1)/#)]`
-/

namespace A340850.P6730815597194267756
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A334659 d * A373061 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A340850.P6730815597194267756

namespace A340850

/-- `∑{d}[n+1, A334659(#)*A373061((n+1)/#)]` -/
def P6730815597194267756.Spec : Prop :=
  ∀ n, P6730815597194267756.a n = A340850 (n + 1)

end A340850

/-!
# A340851: Number of factorizations of n such that every factor is a divisor of the number of factors.

The programs for A340851, there is no canonical definition to state claims against.
-/

/-! ## A340851.P7905410650881851699

`∏{e}[8*(n+1), A326413(#)]`
-/

namespace A340851.P7905410650881851699
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8 * (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A326413 (Nat.factorization (f1 n) p)

end

end A340851.P7905410650881851699

/-! ## A340851.P1347267482116327454

`∏{p}[∏{p}[n+1, #], val(A050412(n+1), #)]`
-/

namespace A340851.P1347267482116327454
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), SequenceMachineLib.valuation (A050412 (n + 1)).toNat p

end

end A340851.P1347267482116327454

/-! ## A340851.P4127919434685805603

`floor(A293896(2*(n+2))/∏{p}[n+1, #])`
-/

namespace A340851.P4127919434685805603
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A293896 (2 * (n + 2)) : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℚ)⌋

end

end A340851.P4127919434685805603

/-! ## A340851.P12289811732642225191

`floor(A071575(2*n+3)/∏{p}[n+1, #])`
-/

namespace A340851.P12289811732642225191
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A071575 (2 * n + 3) : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℚ)⌋

end

end A340851.P12289811732642225191

/-! ## A340851.P11175458216355423510

`∏{e}[lcm(2, n)+n%2+1, val(A000108(#-1), 2)]`
-/

namespace A340851.P11175458216355423510
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm 2 n + n % 2 + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), SequenceMachineLib.valuation (A000108 (Nat.factorization (f1 n) p - 1)).toNat 2

end

end A340851.P11175458216355423510

/-! ## A340851.P14734413198988256456

`∏{e}[Δ[A317300(n)], A005044(#)]`
-/

namespace A340851.P14734413198988256456
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317300 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A005044 (Nat.factorization (f1 n).natAbs p)

end

end A340851.P14734413198988256456

/-! ## A340851.P6730991643381096919

`A106602(A145501(n+1)-1)`
-/

namespace A340851.P6730991643381096919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106602 (A145501 (n + 1) - 1).toNat

end

end A340851.P6730991643381096919

/-! ## A340851.P5862331177900218116

`A370256(n+1)%A040291(n)`
-/

namespace A340851.P5862331177900218116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A370256 (n + 1)) (A040291 n)

end

end A340851.P5862331177900218116

/-! ## A340851.P10300341834539363064

`∏{e}[A022998(n+1), A049115(#)]`
-/

namespace A340851.P10300341834539363064
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022998 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A049115 (Nat.factorization (f1 n).natAbs p)

end

end A340851.P10300341834539363064

/-! ## A340851.P8757683893790435699

`and(A370256(n+1), A382160(n+1))`
-/

namespace A340851.P8757683893790435699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A370256 (n + 1)) (A382160 (n + 1))

end

end A340851.P8757683893790435699

/-!
# A340852: Numbers that can be factored in such a way that every factor is a divisor of the number of factors.

The programs for A340852, there is no canonical definition to state claims against.
-/

/-! ## A340852.P3886252464492393914

`A384010(A310182(n))`
-/

namespace A340852.P3886252464492393914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A384010 (A310182 n).toNat

end

end A340852.P3886252464492393914

/-! ## A340852.P5980173670264262400

`record[and(A203025(n+1), A335942(n))]`
-/

namespace A340852.P5980173670264262400
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A203025 (n + 1)) (A335942 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A340852.P5980173670264262400

/-!
# A340853: Number of factorizations of n such that every factor is a multiple of the number of factors.

The programs for A340853, there is no canonical definition to state claims against.
-/

/-! ## A340853.P4398726315851083074

`gcd(A092184(A246277(n+1)), A124766(3*n))`
-/

namespace A340853.P4398726315851083074
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A092184 (A246277 (n + 1)).toNat) (A124766 (3 * n))

end

end A340853.P4398726315851083074

/-! ## A340853.P7380020758254715514

`A001222(gcd(A130064(n+1), A346701(2*(n+1))))`
-/

namespace A340853.P7380020758254715514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (Int.gcd (A130064 (n + 1)) (A346701 (2 * (n + 1))))

end

end A340853.P7380020758254715514

/-! ## A340853.P12308726408529340190

`A067029(∏{p}[n+1, #^val(n+1, #²)]*A225637(3*n))`
-/

namespace A340853.P12308726408529340190
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067029 (((∏ p ∈ Nat.primeFactors (f1 n), p ^ SequenceMachineLib.valuation (n + 1) (p ^ 2) : ℕ) : ℤ) * A225637 (3 * n)).toNat

end

end A340853.P12308726408529340190

/-! ## A340853.P3374530266938903775

`ceil(A039930(n+1)/A137512(n+1))`
-/

namespace A340853.P3374530266938903775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A039930 (n + 1) : ℚ) / (A137512 (n + 1) : ℚ)⌉

end

end A340853.P3374530266938903775

/-! ## A340853.P1991272573069619980

`A051903(A033316(n+1)*A052126(n+1))`
-/

namespace A340853.P1991272573069619980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051903 (A033316 (n + 1) * A052126 (n + 1)).toNat

end

end A340853.P1991272573069619980

/-!
# A340854: Numbers that cannot be factored into factors > 1, the least of which is odd.

The programs for A340854, there is no canonical definition to state claims against.
-/

/-! ## A340854.P3618913526751314799

`eq[1, exp(a(A340832(n)))]` with `a(0)=0`
-/

namespace A340854.P3618913526751314799
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℝ := SequenceMachineLib.rec [0] fun n f2 =>
  Real.exp (f2 (A340832 n).toNat)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℝ) = f2 j) n

end

end A340854.P3618913526751314799

/-! ## A340854.P8919624988517814886

`eq[0, A340832(n+1)]+1`
-/

namespace A340854.P8919624988517814886
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340832 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A340854.P8919624988517814886

/-! ## A340854.P10826124034944766241

`eq[n%2, A333805(n+1)]+1`
-/

namespace A340854.P10826124034944766241
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n % 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333805 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A340854.P10826124034944766241

/-! ## A340854.P5877216692477181504

`record[(n*and(1, n)+1)/A069289(n+1)]`
-/

namespace A340854.P5877216692477181504
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n * Nat.land 1 n + 1 : ℚ) / (A069289 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A340854.P5877216692477181504

/-! ## A340854.P6460190599278891541

`A004277(lt[A359899(n), 2])`
-/

namespace A340854.P6460190599278891541
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359899 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A340854.P6460190599278891541

/-! ## A340854.P729575932644853828

`filter[A004277(n), A365605(#)]`
-/

namespace A340854.P729575932644853828
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A365605 (f1 j).toNat = 1) n)

end

end A340854.P729575932644853828

/-! ## A340854.P1989882888804830444

`eq[1, A000079(a(A340832(n)))]` with `a(0)=0`
-/

namespace A340854.P1989882888804830444
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f2 =>
  A000079 (f2 (A340832 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A340854.P1989882888804830444

/-! ## A340854.P11889817513590475352

`eq[1, A000122(a(A340832(n)))]` with `a(0)=0`
-/

namespace A340854.P11889817513590475352
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f2 =>
  A000122 (f2 (A340832 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A340854.P11889817513590475352

/-! ## A340854.P17056598305811468487

`eq[1, A000124(a(A340832(n)))]` with `a(0)=0`
-/

namespace A340854.P17056598305811468487
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f2 =>
  A000124 (f2 (A340832 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A340854.P17056598305811468487

/-! ## A340854.P2538614089581730508

`eq[2, A000040(a(A340832(n)))]` with `a(0)=1`
-/

namespace A340854.P2538614089581730508
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f2 =>
  A000040 (f2 (A340832 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A340854.P2538614089581730508

/-!
# A340855: Numbers that can be factored into factors > 1, the least of which is odd.

The programs for A340855, there is no canonical definition to state claims against.
-/

/-! ## A340855.P6562097577367248797

`lt[1, exp(a(A340832(n)))]` with `a(0)=0`
-/

namespace A340855.P6562097577367248797
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℝ := SequenceMachineLib.rec [0] fun n f2 =>
  Real.exp (f2 (A340832 n).toNat)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℝ) < f2 j) n

end

end A340855.P6562097577367248797

/-! ## A340855.P5580799998255369184

`lt[0, A340832(n+1)]+1`
-/

namespace A340855.P5580799998255369184
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340832 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A340855.P5580799998255369184

/-! ## A340855.P12146415182299526798

`comp[A340854(n+1)-1]+1`
-/

namespace A340855.P12146415182299526798
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340854 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A340855.P12146415182299526798

/-! ## A340855.P9659382027174660219

`lt[n%2, A333805(n+1)]+1`
-/

namespace A340855.P9659382027174660219
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n % 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333805 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A340855.P9659382027174660219

/-! ## A340855.P3344326135730054039

`lt[0, A340832(A028310(n))]`
-/

namespace A340855.P3344326135730054039
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340832 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A340855.P3344326135730054039

/-! ## A340855.P17174505854019999171

`lt[A035363(n), A284463(n)]`
-/

namespace A340855.P17174505854019999171
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035363 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284463 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A340855.P17174505854019999171

/-! ## A340855.P13648482069514797657

`eq[1, A010054(a(A340832(n)))]` with `a(0)=2`
-/

namespace A340855.P13648482069514797657
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.rec [2] fun n f2 =>
  A010054 (f2 (A340832 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A340855.P13648482069514797657

/-! ## A340855.P2735270396102036906

`eq[1, A000010(a(A340832(n)))]` with `a(0)=3`
-/

namespace A340855.P2735270396102036906
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.rec [3] fun n f2 =>
  A000010 (f2 (A340832 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A340855.P2735270396102036906

/-! ## A340855.P1754379195773608748

`lt[2, A000040(a(A340832(n)))]` with `a(0)=1`
-/

namespace A340855.P1754379195773608748
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f2 =>
  A000040 (f2 (A340832 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A340855.P1754379195773608748

/-! ## A340855.P4890923654318866971

`eq[1, A000045(a(A340832(n)))]` with `a(0)=3`
-/

namespace A340855.P4890923654318866971
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.rec [3] fun n f2 =>
  A000045 (f2 (A340832 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A340855.P4890923654318866971

/-!
# A340856: Squarefree numbers whose greatest prime index (A061395) is divisible by their number of prime factors (A001222).

The programs for A340856, there is no canonical definition to state claims against.
-/

/-! ## A340856.P7746961186344188583

`record[∏{p}[A340610(n+1), #]]`
-/

namespace A340856.P7746961186344188583
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340610 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n).natAbs, p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A340856.P7746961186344188583

/-! ## A340856.P16364541519493276398

`record[A007913(A340610(n+1))]`
-/

namespace A340856.P16364541519493276398
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (A340610 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A340856.P16364541519493276398

/-! ## A340856.P1276937775583831029

`filter[A340610(n+1), A008966(#)]`
-/

namespace A340856.P1276937775583831029
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340610 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A008966 (f1 j).toNat = 1) n)

end

end A340856.P1276937775583831029

/-! ## A340856.P16920805642224748430

`filter[A340610(n+1), A323154(#)]`
-/

namespace A340856.P16920805642224748430
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340610 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323154 (f1 j).toNat = 1) n)

end

end A340856.P16920805642224748430

/-! ## A340856.P15868654726097361750

`filter[A340610(n+1), A353519(#)]`
-/

namespace A340856.P15868654726097361750
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340610 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353519 (f1 j).toNat = 1) n)

end

end A340856.P15868654726097361750

/-! ## A340856.P9507722655878066987

`filter[A340610(n+1), A353559(#)]`
-/

namespace A340856.P9507722655878066987
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340610 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353559 (f1 j).toNat = 1) n)

end

end A340856.P9507722655878066987

/-! ## A340856.P6133040198083454595

`record[A007947(A340610(n+1)²)]`
-/

namespace A340856.P6133040198083454595
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (A340610 (n + 1) ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A340856.P6133040198083454595

/-! ## A340856.P8565445785855595945

`∩[A005117(n+1), A340610(n+1)]`
-/

namespace A340856.P8565445785855595945
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005117 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340610 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A340856.P8565445785855595945

/-! ## A340856.P9693935030724857353

`∩[A064594(n+1), A340610(n+1)]`
-/

namespace A340856.P9693935030724857353
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064594 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340610 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A340856.P9693935030724857353

/-! ## A340856.P13465519224561991265

`∩[A144338(n+1), A340610(n+1)]`
-/

namespace A340856.P13465519224561991265
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144338 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340610 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A340856.P13465519224561991265

/-!
# A340858: a(n) is the number of integer trapezoids (up to congruence) with integer side lengths a,b,c,d with n=Max(a,b,c,d) and integer diagonals e,f.

The programs for A340858, there is no canonical definition to state claims against.
-/

/-! ## A340858.P15085939764554034255

`A340860(n+1)+A340859(n+1)`
-/

namespace A340858.P15085939764554034255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340860 (n + 1) + A340859 (n + 1)

end

end A340858.P15085939764554034255

/-! ## A340858.P2956495946355117248

`A340859(n+1)+A113602(n+1)%A002828(A005898(n+2))`
-/

namespace A340858.P2956495946355117248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340859 (n + 1) + Int.tmod (A113602 (n + 1)) (A002828 (A005898 (n + 2)).toNat)

end

end A340858.P2956495946355117248

/-! ## A340858.P2935340194231701696

`A340859(n+1)+A328917(A249733(n)%A328871(3*n+2))`
-/

namespace A340858.P2935340194231701696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340859 (n + 1) + A328917 (Int.tmod (A249733 n) (A328871 (3 * n + 2))).toNat

end

end A340858.P2935340194231701696

/-!
# A340859: a(n) is the number of isosceles integer trapezoids (up to congruence) with integer side lengths a,c,b=d with n=Max(a,b,c) and integer diagonals e=f.

The programs for A340859, there is no canonical definition to state claims against.
-/

/-! ## A340859.P5250863931953525990

`A340858(n+1)-A340860(n+1)`
-/

namespace A340859.P5250863931953525990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340858 (n + 1) - A340860 (n + 1)

end

end A340859.P5250863931953525990

/-! ## A340859.P4534101101933804834

`A340858(n+1)-A113602(n+1)%A002828(A005898(n+2))`
-/

namespace A340859.P4534101101933804834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340858 (n + 1) - Int.tmod (A113602 (n + 1)) (A002828 (A005898 (n + 2)).toNat)

end

end A340859.P4534101101933804834

/-! ## A340859.P8839177477380895986

`A340858(n+1)-A328917(A249733(n)%A328871(3*n+2))`
-/

namespace A340859.P8839177477380895986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340858 (n + 1) - A328917 (Int.tmod (A249733 n) (A328871 (3 * n + 2))).toNat

end

end A340859.P8839177477380895986

/-!
# A340860: a(n) is the number of non-isosceles integer trapezoids (up to congruence) with integer side lengths a,b,c,d with n=Max(a,b,c,d) and integer diagonals e,f.

The programs for A340860, there is no canonical definition to state claims against.
-/

/-! ## A340860.P17574066514963448723

`A340858(n+1)-A340859(n+1)`
-/

namespace A340860.P17574066514963448723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340858 (n + 1) - A340859 (n + 1)

end

end A340860.P17574066514963448723

/-! ## A340860.P10219187823802050143

`A113602(n+1)%A002828(A005898(n+2))`
-/

namespace A340860.P10219187823802050143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A113602 (n + 1)) (A002828 (A005898 (n + 2)).toNat)

end

end A340860.P10219187823802050143

/-! ## A340860.P11579599959899856195

`A328917(A249733(n)%A328871(3*n+2))`
-/

namespace A340860.P11579599959899856195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328917 (Int.tmod (A249733 n) (A328871 (3 * n + 2))).toNat

end

end A340860.P11579599959899856195

/-! ## A340860.P6236711199359358861

`A000196(A008828(n+2))%A152198(2*(n+1))`
-/

namespace A340860.P6236711199359358861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000196 (A008828 (n + 2)).toNat) (A152198 (2 * (n + 1)))

end

end A340860.P6236711199359358861

/-!
# A340862: Number of times the number n turns up in pseudo-Fibonacci sequences starting with [k, 1] (with k >= 1), excluding the starting terms.

The programs for A340862, there is no canonical definition to state claims against.
-/

/-! ## A340862.P10834937472847108165

`floor(A067148(n+1)+atan(n))`
-/

namespace A340862.P10834937472847108165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A067148 (n + 1) : ℝ) + Real.arctan (n : ℝ)⌋

end

end A340862.P10834937472847108165

/-! ## A340862.P8259563030790933697

`A157928(n)+A067148(n+1)`
-/

namespace A340862.P8259563030790933697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157928 n + A067148 (n + 1)

end

end A340862.P8259563030790933697

/-! ## A340862.P3842449001405502901

`A067148(n+1)+A029429(C(2, n²))`
-/

namespace A340862.P3842449001405502901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067148 (n + 1) + A029429 (Nat.choose 2 (n ^ 2))

end

end A340862.P3842449001405502901

/-! ## A340862.P4942226358489900334

`A078012(C(2, n²))+A067148(n+1)`
-/

namespace A340862.P4942226358489900334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078012 (Nat.choose 2 (n ^ 2)) + A067148 (n + 1)

end

end A340862.P4942226358489900334

/-! ## A340862.P8671013252832722369

`A067148(n+1)+(A000010(n+1)-1)%2`
-/

namespace A340862.P8671013252832722369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067148 (n + 1) + Int.tmod (A000010 (n + 1) - 1) 2

end

end A340862.P8671013252832722369

/-! ## A340862.P5213665049562424119

`A067148(n+1)+(n+1)%(A000007(n)+n)`
-/

namespace A340862.P5213665049562424119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067148 (n + 1) + Int.tmod (n + 1 : ℤ) (A000007 n + (n : ℤ))

end

end A340862.P5213665049562424119

/-! ## A340862.P4787055098775708801

`A067148(n+1)+A001221(A060632(n))`
-/

namespace A340862.P4787055098775708801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067148 (n + 1) + A001221 (A060632 n).toNat

end

end A340862.P4787055098775708801

/-! ## A340862.P3232203412353040347

`A067148(n+1)+A057427(A004523(n))`
-/

namespace A340862.P3232203412353040347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067148 (n + 1) + A057427 (A004523 n).toNat

end

end A340862.P3232203412353040347

/-! ## A340862.P15301250503938879256

`A067148(n+1)+A057427(A004526(n))`
-/

namespace A340862.P15301250503938879256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067148 (n + 1) + A057427 (A004526 n).toNat

end

end A340862.P15301250503938879256

/-! ## A340862.P16779681174845031611

`A067148(n+1)+A001221(A003642(n+1))`
-/

namespace A340862.P16779681174845031611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067148 (n + 1) + A001221 (A003642 (n + 1)).toNat

end

end A340862.P16779681174845031611

/-! ## A340862.P13568716551589401220

`A067148(n+1)+char[A038722(n+1)+1]`
-/

namespace A340862.P13568716551589401220
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038722 (n + 1) + 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067148 (n + 1) + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A340862.P13568716551589401220

/-! ## A340862.P16597713016517199575

`A067148(n+1)+A000035(A019426(n))`
-/

namespace A340862.P16597713016517199575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067148 (n + 1) + A000035 (A019426 n).toNat

end

end A340862.P16597713016517199575

/-! ## A340862.P7254509525538760610

`A067148(n+1)+A000035(A019432(n))`
-/

namespace A340862.P7254509525538760610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067148 (n + 1) + A000035 (A019432 n).toNat

end

end A340862.P7254509525538760610

/-!
# A340863: a(n) = n!*LaguerreL(n, -n^2).

The programs for A340863, there is no canonical definition to state claims against.
-/

/-! ## A340863.P8816489677885993052

`A338435(∑[4*n])`
-/

namespace A340863.P8816489677885993052
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338435 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A340863.P8816489677885993052

/-!
# A340864: Numbers k such that both sigma_{-1}(k) > 2 and sigma_0(k)/sigma_{-1}(k) are integers.

The programs for A340864, there is no canonical definition to state claims against.
-/

/-! ## A340864.P2675843763222553973

`∩[A166069(n+1), A325025(n+1)]`
-/

namespace A340864.P2675843763222553973
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166069 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325025 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A340864.P2675843763222553973

/-! ## A340864.P12655019478625107397

`∩[A001599(n+1), A166069(n+1)]`
-/

namespace A340864.P12655019478625107397
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001599 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166069 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A340864.P12655019478625107397

/-! ## A340864.P17665989166426843089

`∩[A090945(n+1), A166069(n+1)]`
-/

namespace A340864.P17665989166426843089
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090945 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166069 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A340864.P17665989166426843089

/-! ## A340864.P7701937112405238048

`∩[A001599(n+1), A117350(n+1)]`
-/

namespace A340864.P7701937112405238048
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001599 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117350 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A340864.P7701937112405238048

/-! ## A340864.P16464633740248785607

`∩[A090945(n+1), A117349(n+1)]`
-/

namespace A340864.P16464633740248785607
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090945 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117349 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A340864.P16464633740248785607

/-!
# A340865: Primes p such that (p^2 + 1)/2 and 2*p^2 - 1 are also prime.

The programs for A340865, there is no canonical definition to state claims against.
-/

/-! ## A340865.P8241644155890989625

`∩[A048161(n+1), A106483(n+1)]`
-/

namespace A340865.P8241644155890989625
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048161 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106483 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A340865.P8241644155890989625

/-! ## A340865.P9912333009789812203

`∩[2*A068501(n+1)+1, A106483(n+1)]`
-/

namespace A340865.P9912333009789812203
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A068501 (n + 1) + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106483 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A340865.P9912333009789812203

/-! ## A340865.P9132837443566660056

`∩[A106483(n+1), A281575(n+1)]`
-/

namespace A340865.P9132837443566660056
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106483 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281575 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A340865.P9132837443566660056

/-! ## A340865.P10425759993813930341

`∩[A106483(n+1), A172438(n+1)]`
-/

namespace A340865.P10425759993813930341
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106483 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172438 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A340865.P10425759993813930341

/-! ## A340865.P5629050537650492384

`∩[A002731(n+1), A106483(n+1)]`
-/

namespace A340865.P5629050537650492384
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002731 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106483 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A340865.P5629050537650492384

/-! ## A340865.P6300670967974052079

`∩[A106483(n+1), A281505(n+1)]`
-/

namespace A340865.P6300670967974052079
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106483 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281505 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A340865.P6300670967974052079

/-! ## A340865.P10118480875907420703

`∩[A048161(n+1), A066049(n+1)]`
-/

namespace A340865.P10118480875907420703
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048161 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066049 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A340865.P10118480875907420703

/-! ## A340865.P8539636489265492579

`∩[A085722(n+1), A106483(n+1)]`
-/

namespace A340865.P8539636489265492579
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085722 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106483 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A340865.P8539636489265492579

/-! ## A340865.P13028284978517523584

`∩[A106483(n+1), A376428(n+1)]`
-/

namespace A340865.P13028284978517523584
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106483 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376428 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A340865.P13028284978517523584

/-!
# A340867: a(n) = (prime(n) - a(n-1)) mod 4; a(0)=0.

The programs for A340867, the canonical program `A340867.P12982449728944294804` is in `Seq.B001.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A340867 has offset 0).

The definition of A340867 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(A000040(n)-a(n-1))%4` (program `A340867.P12982449728944294804`, by `A340867.P12982449728944294804.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A340867.P16024206652267673641

`A008347(n)%4`
-/

namespace A340867.P16024206652267673641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A008347 n) 4

end

end A340867.P16024206652267673641

namespace A340867

/-- `A008347(n)%4` -/
def P16024206652267673641.Spec : Prop :=
  ∀ n, P16024206652267673641.a n = A340867 n

end A340867

/-! ## A340867.P12982449728944294804

`(A000040(n)-a(n-1))%4` with `a(0)=0`

The canonical program, it is in `Seq.B001.C011`.
-/

namespace A340867

/-- `(A000040(n)-a(n-1))%4` -/
def P12982449728944294804.Spec : Prop :=
  ∀ n, P12982449728944294804.a n = A340867 n

theorem P12982449728944294804.correct : P12982449728944294804.Spec := by
  intro n
  simp only [A340867]

end A340867

/-! ## A340867.P3318293961446856269

`A126084(n)%4`
-/

namespace A340867.P3318293961446856269
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A126084 n) 4

end

end A340867.P3318293961446856269

namespace A340867

/-- `A126084(n)%4` -/
def P3318293961446856269.Spec : Prop :=
  ∀ n, P3318293961446856269.a n = A340867 n

end A340867

/-! ## A340867.P4493691477192678819

`(A014689(n)-a(n-1)+n)%4` with `a(0)=0`
-/

namespace A340867.P4493691477192678819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  Int.tmod (A014689 n - a (n - 1) + (n : ℤ)) 4

end

end A340867.P4493691477192678819

namespace A340867

/-- `(A014689(n)-a(n-1)+n)%4` -/
def P4493691477192678819.Spec : Prop :=
  ∀ n, P4493691477192678819.a n = A340867 n

end A340867

/-! ## A340867.P17718042917953896969

`A010873(A008347(n))`
-/

namespace A340867.P17718042917953896969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010873 (A008347 n).toNat

end

end A340867.P17718042917953896969

namespace A340867

/-- `A010873(A008347(n))` -/
def P17718042917953896969.Spec : Prop :=
  ∀ n, P17718042917953896969.a n = A340867 n

end A340867

/-! ## A340867.P4573076890644786763

`and(A008347(n), A122553(n))`
-/

namespace A340867.P4573076890644786763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A008347 n) (A122553 n)

end

end A340867.P4573076890644786763

namespace A340867

/-- `and(A008347(n), A122553(n))` -/
def P4573076890644786763.Spec : Prop :=
  ∀ n, P4573076890644786763.a n = A340867 n

end A340867

/-! ## A340867.P13224404800067237751

`and(A008347(n), A158799(n))`
-/

namespace A340867.P13224404800067237751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A008347 n) (A158799 n)

end

end A340867.P13224404800067237751

namespace A340867

/-- `and(A008347(n), A158799(n))` -/
def P13224404800067237751.Spec : Prop :=
  ∀ n, P13224404800067237751.a n = A340867 n

end A340867

/-! ## A340867.P4241553645599831977

`and(A008347(n), A176059(n))`
-/

namespace A340867.P4241553645599831977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A008347 n) (A176059 n)

end

end A340867.P4241553645599831977

namespace A340867

/-- `and(A008347(n), A176059(n))` -/
def P4241553645599831977.Spec : Prop :=
  ∀ n, P4241553645599831977.a n = A340867 n

end A340867

/-! ## A340867.P10995072116020270706

`and(A122553(n), A126084(n))`
-/

namespace A340867.P10995072116020270706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A122553 n) (A126084 n)

end

end A340867.P10995072116020270706

namespace A340867

/-- `and(A122553(n), A126084(n))` -/
def P10995072116020270706.Spec : Prop :=
  ∀ n, P10995072116020270706.a n = A340867 n

end A340867

/-! ## A340867.P14441261905925641416

`and(A126084(n), A158799(n))`
-/

namespace A340867.P14441261905925641416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A126084 n) (A158799 n)

end

end A340867.P14441261905925641416

namespace A340867

/-- `and(A126084(n), A158799(n))` -/
def P14441261905925641416.Spec : Prop :=
  ∀ n, P14441261905925641416.a n = A340867 n

end A340867

/-! ## A340867.P5685063870723350750

`and(A126084(n), A176059(n))`
-/

namespace A340867.P5685063870723350750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A126084 n) (A176059 n)

end

end A340867.P5685063870723350750

namespace A340867

/-- `and(A126084(n), A176059(n))` -/
def P5685063870723350750.Spec : Prop :=
  ∀ n, P5685063870723350750.a n = A340867 n

end A340867

/-! ## A340867.P14140948544112851235

`and(A008347(n), A157532(n+1))`
-/

namespace A340867.P14140948544112851235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A008347 n) (A157532 (n + 1))

end

end A340867.P14140948544112851235

namespace A340867

/-- `and(A008347(n), A157532(n+1))` -/
def P14140948544112851235.Spec : Prop :=
  ∀ n, P14140948544112851235.a n = A340867 n

end A340867

/-! ## A340867.P16162879852771027612

`and(A126084(n), A157532(n+1))`
-/

namespace A340867.P16162879852771027612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A126084 n) (A157532 (n + 1))

end

end A340867.P16162879852771027612

namespace A340867

/-- `and(A126084(n), A157532(n+1))` -/
def P16162879852771027612.Spec : Prop :=
  ∀ n, P16162879852771027612.a n = A340867 n

end A340867

/-! ## A340867.P15134685959413829302

`and(n-A007504(n), A176059(n))`
-/

namespace A340867.P15134685959413829302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land ((n : ℤ) - A007504 n) (A176059 n)

end

end A340867.P15134685959413829302

namespace A340867

/-- `and(n-A007504(n), A176059(n))` -/
def P15134685959413829302.Spec : Prop :=
  ∀ n, P15134685959413829302.a n = A340867 n

end A340867

/-! ## A340867.P15254878067673540107

`(record[A006530(n+1)]-a(n-1))%4` with `a(0)=0`
-/

namespace A340867.P15254878067673540107
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - a (n - 1)) 4

end

end A340867.P15254878067673540107

namespace A340867

/-- `(record[A006530(n+1)]-a(n-1))%4` -/
def P15254878067673540107.Spec : Prop :=
  ∀ n, P15254878067673540107.a n = A340867 n

end A340867

/-! ## A340867.P14088337730266955871

`(record[A020639(n+1)]-a(n-1))%4` with `a(0)=0`
-/

namespace A340867.P14088337730266955871
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - a (n - 1)) 4

end

end A340867.P14088337730266955871

namespace A340867

/-- `(record[A020639(n+1)]-a(n-1))%4` -/
def P14088337730266955871.Spec : Prop :=
  ∀ n, P14088337730266955871.a n = A340867 n

end A340867

/-! ## A340867.P17450397121950667565

`A010873(A126084(n))`
-/

namespace A340867.P17450397121950667565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010873 (A126084 n).toNat

end

end A340867.P17450397121950667565

namespace A340867

/-- `A010873(A126084(n))` -/
def P17450397121950667565.Spec : Prop :=
  ∀ n, P17450397121950667565.a n = A340867 n

end A340867

/-! ## A340867.P11146174162316397669

`(record[A014963(n+1)]-a(n-1))%4` with `a(0)=0`
-/

namespace A340867.P11146174162316397669
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - a (n - 1)) 4

end

end A340867.P11146174162316397669

namespace A340867

/-- `(record[A014963(n+1)]-a(n-1))%4` -/
def P11146174162316397669.Spec : Prop :=
  ∀ n, P11146174162316397669.a n = A340867 n

end A340867

/-! ## A340867.P8496702735532589753

`and(A008347(n), A088578(n))`
-/

namespace A340867.P8496702735532589753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A008347 n) (A088578 n)

end

end A340867.P8496702735532589753

namespace A340867

/-- `and(A008347(n), A088578(n))` -/
def P8496702735532589753.Spec : Prop :=
  ∀ n, P8496702735532589753.a n = A340867 n

end A340867

/-! ## A340867.P13443688962794564810

`and(A088578(n), A126084(n))`
-/

namespace A340867.P13443688962794564810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A088578 n) (A126084 n)

end

end A340867.P13443688962794564810

namespace A340867

/-- `and(A088578(n), A126084(n))` -/
def P13443688962794564810.Spec : Prop :=
  ∀ n, P13443688962794564810.a n = A340867 n

end A340867

/-!
# A340870: a(n) is the smallest prime p such that p - 1 has 2*n divisors.

The programs for A340870, there is no canonical definition to state claims against.
-/

/-! ## A340870.P2549592877099521161

`A066814(2*(n+1))`
-/

namespace A340870.P2549592877099521161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066814 (2 * (n + 1))

end

end A340870.P2549592877099521161

/-! ## A340870.P18019273626484003255

`or(1, A066814(A103517(n)))`
-/

namespace A340870.P18019273626484003255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A066814 (A103517 n).toNat)

end

end A340870.P18019273626484003255

/-! ## A340870.P1391043722278503372

`or(1, A066814(Δ[A002378(n)]))`
-/

namespace A340870.P1391043722278503372
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002378 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A066814 (f1 (n + 1) - f1 n).toNat)

end

end A340870.P1391043722278503372

/-!
# A340874: Square root of the determinant of the 3 X 3 matrix [prime(k), prime(k+1), prime(k+2); prime(k+3), prime(k+4), prime(k+5); prime(k+6), prime(k+7), prime(k+8)] when that determinant is a square.

The programs for A340874, there is no canonical definition to state claims against.
-/

/-! ## A340874.P9496650757514515685

`sqrt(A117330(A340869(n+1)))`
-/

namespace A340874.P9496650757514515685
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A117330 (A340869 (n + 1)).toNat : ℝ)

end

end A340874.P9496650757514515685

/-!
# A340877: Numbers k such that A000217(k+2)^A000217(k+1) mod A000217(k) is a triangular number.

The programs for A340877, there is no canonical definition to state claims against.
-/

/-! ## A340877.P3021135739516770883

`eq[A051903(A086341(n)), A333733(2*n+1)]`
-/

namespace A340877.P3021135739516770883
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051903 (A086341 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333733 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A340877.P3021135739516770883

/-!
# A340881: Row sums of A340880.

The programs for A340881, there is no canonical definition to state claims against.
-/

/-! ## A340881.P2956201320155417606

`∏[2*a(n-1)]+(2^n-1)*a(n-1)` with `a(0)=1`
-/

namespace A340881.P2956201320155417606
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f1 =>
  2 * f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ((∏ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) + ((2 ^ n : ℤ) - 1) * a (n - 1)

end

end A340881.P2956201320155417606

/-! ## A340881.P1667542146332604910

`∏[2*a(n-1)]+a(n-1)*A000225(n)` with `a(0)=1`
-/

namespace A340881.P1667542146332604910
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f1 =>
  2 * f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ((∏ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) + a (n - 1) * A000225 n

end

end A340881.P1667542146332604910

/-! ## A340881.P11763502790129716896

`∏[2*a(n-1)]+(A126646(n)-1)*a(n-1)/2` with `a(0)=1`
-/

namespace A340881.P11763502790129716896
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f1 =>
  2 * f1 (n - 1)

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  ((∏ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) + (A126646 n - 1 : ℚ) * a (n - 1) / 2

end

end A340881.P11763502790129716896

/-! ## A340881.P7015358512184877045

`A006125(n+1)+a(n-1)*A000225(n)` with `a(0)=1`
-/

namespace A340881.P7015358512184877045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A006125 (n + 1) + a (n - 1) * A000225 n

end

end A340881.P7015358512184877045

/-! ## A340881.P15039753462734147462

`A006125(n+1)+a(n-1)*Δ[A000295(n)]` with `a(0)=1`
-/

namespace A340881.P15039753462734147462
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000295 n

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A006125 (n + 1) + a (n - 1) * (f1 (n + 1) - f1 n)

end

end A340881.P15039753462734147462

/-!
# A340883: Row sums of A340882.

The programs for A340883, there is no canonical definition to state claims against.
-/

/-! ## A340883.P3964243941214821134

`2^n²+(4^n-1)*a(n-1)` with `a(0)=1`
-/

namespace A340883.P3964243941214821134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (2 ^ n ^ 2 : ℤ) + ((4 ^ n : ℤ) - 1) * a (n - 1)

end

end A340883.P3964243941214821134

/-!
# A340885: Sum of subword complexity (number of nonempty distinct subwords) of all binary strings of length n.

The programs for A340885, there is no canonical definition to state claims against.
-/

/-! ## A340885.P6347828555932518372

`A157481(A333394(n)+1)`
-/

namespace A340885.P6347828555932518372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157481 (A333394 n + 1).toNat

end

end A340885.P6347828555932518372

/-! ## A340885.P8003661379054359866

`A157481(A065613(n+2))`
-/

namespace A340885.P8003661379054359866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157481 (A065613 (n + 2)).toNat

end

end A340885.P8003661379054359866

/-!
# A340886: a(0) = 1; a(n) = Sum_{k=0..n-1} binomial(n,k)^2 * 2^(n-k-1) * a(k).

The programs for A340886, there is no canonical definition to state claims against.
-/

/-! ## A340886.P10577867370024498868

`A022846(n²*a(n-1))` with `a(0)=1`
-/

namespace A340886.P10577867370024498868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A022846 ((n ^ 2 : ℤ) * a (n - 1)).toNat

end

end A340886.P10577867370024498868

/-!
# A340887: a(0) = 1; a(n) = Sum_{k=0..n-1} binomial(n,k)^2 * 3^(n-k-1) * a(k).

The programs for A340887, there is no canonical definition to state claims against.
-/

/-! ## A340887.P2377799869015203398

`A037477(A045891(∑[n]))`
-/

namespace A340887.P2377799869015203398
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037477 (A045891 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A340887.P2377799869015203398

/-!
# A340888: a(0) = 1; a(n) = Sum_{k=0..n-1} binomial(n,k)^2 * 4^(n-k-1) * a(k).

The programs for A340888, there is no canonical definition to state claims against.
-/

/-! ## A340888.P11046272352177243870

`A002131(A322909(n))`
-/

namespace A340888.P11046272352177243870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002131 (A322909 n).toNat

end

end A340888.P11046272352177243870

/-!
# A340889: Primes p such that, if q is the next prime after p, the sum of prime factors (with multiplicity) of the composites between p and q is at least p+q.

The programs for A340889, there is no canonical definition to state claims against.
-/

/-! ## A340889.P4183869410598091559

`A245396(A031875(n+2)+A014081(n))`
-/

namespace A340889.P4183869410598091559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245396 (A031875 (n + 2) + A014081 n).toNat

end

end A340889.P4183869410598091559

/-! ## A340889.P7158920454357495027

`A245396(A057427(n)+A031875(n+2))`
-/

namespace A340889.P7158920454357495027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245396 (A057427 n + A031875 (n + 2)).toNat

end

end A340889.P7158920454357495027

/-! ## A340889.P6732250245222898744

`A245396(A115721(n)+A031875(n+2))`
-/

namespace A340889.P6732250245222898744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245396 (A115721 n + A031875 (n + 2)).toNat

end

end A340889.P6732250245222898744

/-!
# A340890: 

The programs for A340890, there is no canonical definition to state claims against.
-/

/-! ## A340890.P15758615692489877105

`A000178(n+1)*A002109(n+1)*A036740(n)`
-/

namespace A340890.P15758615692489877105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000178 (n + 1) * A002109 (n + 1) * A036740 n

end

end A340890.P15758615692489877105

/-! ## A340890.P10237365735303672045

`A010790(n)^(n+2)/A001044(n)`
-/

namespace A340890.P10237365735303672045
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A010790 n ^ (n + 2) : ℚ) / (A001044 n : ℚ)

end

end A340890.P10237365735303672045

/-!
# A340891: G.f. A(x) satisfies: A(x) = (1 - x*A(x)) * Sum_{n>=0} x^n / (1 - x*A(x)^(n+1)).

The programs for A340891, there is no canonical definition to state claims against.
-/

/-! ## A340891.P4616194161709320526

`A191748(A187258(n))`
-/

namespace A340891.P4616194161709320526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191748 (A187258 n).toNat

end

end A340891.P4616194161709320526

/-! ## A340891.P3829149485406165479

`A049128(A109919(n+1))`
-/

namespace A340891.P3829149485406165479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049128 (A109919 (n + 1)).toNat

end

end A340891.P3829149485406165479

/-! ## A340891.P11007251971507195047

`A049128(A109920(n+1))`
-/

namespace A340891.P11007251971507195047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049128 (A109920 (n + 1)).toNat

end

end A340891.P11007251971507195047

/-!
# A340892: G.f. A(x) satisfies: A(x) = (1 - x*A(x)) * Sum_{n>=0} x^n*A(x)^n / (1 - x*A(x)^(n+1)).

The programs for A340892, there is no canonical definition to state claims against.
-/

/-! ## A340892.P12251552040879216637

`A189717(2*A155069(n))`
-/

namespace A340892.P12251552040879216637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189717 (2 * A155069 n).toNat

end

end A340892.P12251552040879216637

/-! ## A340892.P7040404079094906529

`or(A036453(n!), A155069(n))`
-/

namespace A340892.P7040404079094906529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A036453 (Nat.factorial n)) (A155069 n)

end

end A340892.P7040404079094906529

/-! ## A340892.P15386903380783925039

`or(A117872(n!), A155069(n))`
-/

namespace A340892.P15386903380783925039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A117872 (Nat.factorial n)) (A155069 n)

end

end A340892.P15386903380783925039

/-! ## A340892.P17565526788292405086

`or(A155069(n), A211396(n!))`
-/

namespace A340892.P17565526788292405086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A155069 n) (A211396 (Nat.factorial n))

end

end A340892.P17565526788292405086

/-!
# A340893: G.f. A(x) satisfies: A(x) = (1 - x*A(x)) * Sum_{n>=0} x^n / (1 - x*A(x)^(2*n+1)).

The programs for A340893, there is no canonical definition to state claims against.
-/

/-! ## A340893.P630602973552692665

`A226190(A000139(n))`
-/

namespace A340893.P630602973552692665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226190 (A000139 n).toNat

end

end A340893.P630602973552692665

/-! ## A340893.P6253531122349066520

`A226190(A107591(n))`
-/

namespace A340893.P6253531122349066520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226190 (A107591 n).toNat

end

end A340893.P6253531122349066520

/-! ## A340893.P11662861033020128949

`A187188(A150634(n))`
-/

namespace A340893.P11662861033020128949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187188 (A150634 n).toNat

end

end A340893.P11662861033020128949

/-!
# A340894: G.f. A(x) satisfies: Sum_{n>=0} x^n*A(x)^(2*n)/(1 - x*A(x)^n) = Sum_{n>=0} x^n*A(x)^n/(1 - x*A(x)^(2*n+1)).

The programs for A340894, there is no canonical definition to state claims against.
-/

/-! ## A340894.P8320194113070010812

`A340940(∑[n+3])`
-/

namespace A340894.P8320194113070010812
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340940 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A340894.P8320194113070010812

/-! ## A340894.P13420037769868355221

`and(-1, A340940(A141214(n)))`
-/

namespace A340894.P13420037769868355221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A340940 (A141214 n).toNat)

end

end A340894.P13420037769868355221

/-! ## A340894.P9102738721978894361

`A340940(A141214(n))+A029577(n)`
-/

namespace A340894.P9102738721978894361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340940 (A141214 n).toNat + A029577 n

end

end A340894.P9102738721978894361

/-! ## A340894.P10745069447778449125

`A340940(A141214(n))+A308979(n)`
-/

namespace A340894.P10745069447778449125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340940 (A141214 n).toNat + A308979 n

end

end A340894.P10745069447778449125

/-! ## A340894.P8791728607359364181

`A025793(n)*A340940(A141214(n))`
-/

namespace A340894.P8791728607359364181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025793 n * A340940 (A141214 n).toNat

end

end A340894.P8791728607359364181

/-!
# A340895: G.f. A(x) satisfies: Sum_{n>=0} x^n*A(x)^(3*n)/(1 - x*A(x)^n) = Sum_{n>=0} x^n*A(x)^n/(1 - x*A(x)^(3*n+2)).

The programs for A340895, there is no canonical definition to state claims against.
-/

/-! ## A340895.P11585795093240468791

`A340940(∑[n+4]+2)`
-/

namespace A340895.P11585795093240468791
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340940 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A340895.P11585795093240468791

/-! ## A340895.P1866586174596172722

`A312267(xor(A085632(n+1), A273953(n)))`
-/

namespace A340895.P1866586174596172722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312267 (Int.xor (A085632 (n + 1)) (A273953 n)).toNat

end

end A340895.P1866586174596172722

/-!
# A340896: Irregular triangle in which the n-th row consists of all multiples of n that have fewer than twice as many divisors as n.

The programs for A340896, there is no canonical definition to state claims against.
-/

/-! ## A340896.P13342114006255174902

`∑[A322452(A210208(n+1))]*A210208(n+1)`
-/

namespace A340896.P13342114006255174902
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322452 (A210208 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A210208 (n + 1)

end

end A340896.P13342114006255174902

/-! ## A340896.P13977478356192848608

`A113901(A384180(n+1))`
-/

namespace A340896.P13977478356192848608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113901 (A384180 (n + 1)).toNat

end

end A340896.P13977478356192848608

/-! ## A340896.P3388820299545439925

`A281873(A027750(n+1)*A061017(n+1))`
-/

namespace A340896.P3388820299545439925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281873 (A027750 (n + 1) * A061017 (n + 1)).toNat

end

end A340896.P3388820299545439925

/-! ## A340896.P2816462156217759433

`A281873(A061017(n+1)*A275055(n+1))`
-/

namespace A340896.P2816462156217759433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281873 (A061017 (n + 1) * A275055 (n + 1)).toNat

end

end A340896.P2816462156217759433

/-! ## A340896.P11902055978957877591

`A281873(abs(A061017(n+1)*A233773(n+1)))`
-/

namespace A340896.P11902055978957877591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281873 |A061017 (n + 1) * A233773 (n + 1)|.toNat

end

end A340896.P11902055978957877591

/-!
# A340898: Number of sets in the geometry determined by the Hausdorff metric at each location between two sets defined by a complete bipartite graph K(3,n) (with n at least 4) missing three edges, where all three removed edges are incident to the same vertex in the 3-point set.

The programs for A340898, the canonical program `A340898.P15552997699913965440` is in `Seq.B000.C038`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A340898 has offset 4).

The definition of A340898 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A340898.P15552997699913965440

`27*7^(n+1)-29*3^(n+1)+2`

The canonical program, it is in `Seq.B000.C038`.
-/

namespace A340898

/-- `27*7^(n+1)-29*3^(n+1)+2` -/
def P15552997699913965440.Spec : Prop :=
  ∀ n, P15552997699913965440.a n = A340898 (n + 4)

theorem P15552997699913965440.correct : P15552997699913965440.Spec := by
  intro n
  simp only [A340898, Nat.add_sub_cancel]

end A340898

/-!
# A340899: Number of sets in the geometry determined by the Hausdorff metric at each location between two sets defined by a complete bipartite graph K(4,n) (with n at least 4) missing three edges, where all three removed edges are incident to the same vertex in the 4-point set.

The programs for A340899, the canonical program `A340899.P11700652085156554926` is in `Seq.B000.C038`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A340899 has offset 4).

The definition of A340899 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A340899.P11700652085156554926

`343*15^(n+1)-424*7^(n+1)+28*3^(n+2)-3`

The canonical program, it is in `Seq.B000.C038`.
-/

namespace A340899

/-- `343*15^(n+1)-424*7^(n+1)+28*3^(n+2)-3` -/
def P11700652085156554926.Spec : Prop :=
  ∀ n, P11700652085156554926.a n = A340899 (n + 4)

theorem P11700652085156554926.correct : P11700652085156554926.Spec := by
  intro n
  simp only [A340899, Nat.add_sub_cancel]

end A340899

