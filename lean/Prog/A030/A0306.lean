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
import Seq.B000.C010
import Seq.B000.C011
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
import Seq.B000.C034
import Seq.B000.C036
import Seq.B000.C038
import Seq.B000.C039
import Seq.B000.C040
import Seq.B000.C043
import Seq.B000.C044
import Seq.B000.C048
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C008
import Seq.B001.C010
import Seq.B001.C011
import Seq.B001.C013
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C005
import Seq.B002.C007
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
import Seq.B004.C004
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
import Seq.Opaque.C000
import Seq.Opaque.C001
import Seq.Opaque.C002
import Seq.Opaque.C003
import Seq.Opaque.C004
import Seq.Opaque.C005
import Seq.Opaque.C006
import Seq.Opaque.C007
import Seq.Opaque.C008
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

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A030600: Length of the n-th run of digit 5 in A030588.

The programs for A030600, there is no canonical definition to state claims against.
-/

/-! ## A030600.P5566581445161216068

`runs[A030594(1+n)-n]`
-/

namespace A030600.P5566581445161216068
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030594 (1 + n) - (n : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => j = 0 ∨ f1 j ≠ f1 (j - 1)) (n + 1) - SequenceMachineLib.nth (fun j => j = 0 ∨ f1 j ≠ f1 (j - 1)) n

end

end A030600.P5566581445161216068

/-! ## A030600.P4700615220136961521

`runs[eq[5, A030588(n+1)]-n]`
-/

namespace A030600.P4700615220136961521
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030588 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n : ℤ) - (n : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => j = 0 ∨ f1 j ≠ f1 (j - 1)) (n + 1) - SequenceMachineLib.nth (fun j => j = 0 ∨ f1 j ≠ f1 (j - 1)) n

end

end A030600.P4700615220136961521

/-! ## A030600.P1283959020945669702

`gcd(A005117(A259483(n+1)), A080577(2*n+3))`
-/

namespace A030600.P1283959020945669702
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A005117 (A259483 (n + 1)).toNat) (A080577 (2 * n + 3))

end

end A030600.P1283959020945669702

/-! ## A030600.P7904853922443246987

`gcd(n, A285718(A074742(n)))`
-/

namespace A030600.P7904853922443246987
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n : ℤ) (A285718 (A074742 n).toNat)

end

end A030600.P7904853922443246987

/-! ## A030600.P14410525754918259958

`gcd(n², A061347(A127218(n+1)))`
-/

namespace A030600.P14410525754918259958
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n ^ 2 : ℤ) (A061347 (A127218 (n + 1)).toNat)

end

end A030600.P14410525754918259958

/-!
# A030601: a(n)=(# 1's)-(# 0's) in first n terms of A030588.

The programs for A030601, there is no canonical definition to state claims against.
-/

/-! ## A030601.P4774629161026564630

`A081604(A004207(n)*A179269(n))`
-/

namespace A030601.P4774629161026564630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081604 (A004207 n * A179269 n).toNat

end

end A030601.P4774629161026564630

/-!
# A030605: Position of n-th 0 in A030604 (previous version).

The programs for A030605, there is no canonical definition to state claims against.
-/

/-! ## A030605.P1405738199360817467

`A333908(n+2)-1`
-/

namespace A030605.P1405738199360817467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333908 (n + 2) - 1

end

end A030605.P1405738199360817467

/-! ## A030605.P1000223543578282640

`eq[0, A030604(n+1)]`
-/

namespace A030605.P1000223543578282640
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030604 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A030605.P1000223543578282640

/-! ## A030605.P11495744618247566235

`lt[n*A030604(n), n]-1`
-/

namespace A030605.P11495744618247566235
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A030604 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n : ℤ) - 1

end

end A030605.P11495744618247566235

/-! ## A030605.P17321229912176580969

`A023443(A333908(n+2))`
-/

namespace A030605.P17321229912176580969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A333908 (n + 2)).toNat

end

end A030605.P17321229912176580969

/-! ## A030605.P11172355438602375446

`lt[A030604(A028310(n)), 1]-1`
-/

namespace A030605.P11172355438602375446
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030604 (A028310 n).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n : ℤ) - 1

end

end A030605.P11172355438602375446

/-! ## A030605.P17646308284770166552

`eq[A000007(n), A030604(n)]-1`
-/

namespace A030605.P17646308284770166552
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030604 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => f1 j = f2 j) n : ℤ) - 1

end

end A030605.P17646308284770166552

/-! ## A030605.P7869959284820984001

`eq[A000038(n), A030604(n)]-1`
-/

namespace A030605.P7869959284820984001
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030604 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => f1 j = f2 j) n : ℤ) - 1

end

end A030605.P7869959284820984001

/-! ## A030605.P14859662245753352525

`lt[A030604(n), acot(A060747(n))]-1`
-/

namespace A030605.P14859662245753352525
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030604 n

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.acot (A060747 n : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℝ) < f2 j) n : ℤ) - 1

end

end A030605.P14859662245753352525

/-!
# A030606: Position of n-th 1 in A030604.

The programs for A030606, there is no canonical definition to state claims against.
-/

/-! ## A030606.P7256247289927621295

`eq[ceil(n/(n+1)), A030604(n+1)]`
-/

namespace A030606.P7256247289927621295
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n : ℚ) / (n + 1 : ℚ)⌉

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030604 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A030606.P7256247289927621295

/-! ## A030606.P6205395336607526368

`eq[A030604(n+1), A054977(n)]`
-/

namespace A030606.P6205395336607526368
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030604 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054977 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A030606.P6205395336607526368

/-! ## A030606.P9110290906519242760

`eq[A030604(n+1), A057427(n)]`
-/

namespace A030606.P9110290906519242760
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030604 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A030606.P9110290906519242760

/-! ## A030606.P8099634328212610991

`eq[A030604(n), A141044(n)]-1`
-/

namespace A030606.P8099634328212610991
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030604 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141044 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => f1 j = f2 j) n : ℤ) - 1

end

end A030606.P8099634328212610991

/-! ## A030606.P16526904039214796813

`eq[1, A030604(n+1)+A000007(n)]`
-/

namespace A030606.P16526904039214796813
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030604 (n + 1) + A000007 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A030606.P16526904039214796813

/-! ## A030606.P15727631990144497459

`eq[1, A030604(n+1)+A000038(n)]`
-/

namespace A030606.P15727631990144497459
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030604 (n + 1) + A000038 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A030606.P15727631990144497459

/-! ## A030606.P7776505866947660736

`eq[A030604(n+1), A141044(n+1)]`
-/

namespace A030606.P7776505866947660736
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030604 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141044 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A030606.P7776505866947660736

/-! ## A030606.P872174914770480443

`eq[A030604(n+1)², A014963(A017089(n))]`
-/

namespace A030606.P872174914770480443
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030604 (n + 1) ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A017089 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A030606.P872174914770480443

/-! ## A030606.P2080554015641753958

`eq[A030604(n+1)+n, A233583(n+2)]`
-/

namespace A030606.P2080554015641753958
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030604 (n + 1) + (n : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233583 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A030606.P2080554015641753958

/-!
# A030607: Position of n-th 2 in A030604.

The programs for A030607, there is no canonical definition to state claims against.
-/

/-! ## A030607.P681790742877169395

`eq[2, A030604(n+1)]`
-/

namespace A030607.P681790742877169395
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030604 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A030607.P681790742877169395

/-! ## A030607.P431257298061760824

`eq[2, A030604(n)]-1`
-/

namespace A030607.P431257298061760824
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030604 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n : ℤ) - 1

end

end A030607.P431257298061760824

/-! ## A030607.P14125261344602691461

`A023443(eq[2, A030604(n)])`
-/

namespace A030607.P14125261344602691461
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030604 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A030607.P14125261344602691461

/-! ## A030607.P17515958439740499156

`A004275(eq[2, A030604(n)])/2`
-/

namespace A030607.P17515958439740499156
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030604 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A004275 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n) : ℚ) / 2

end

end A030607.P17515958439740499156

/-! ## A030607.P18200738515087657250

`A051755(eq[2, A030604(n)])/2`
-/

namespace A030607.P18200738515087657250
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030604 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A051755 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n) : ℚ) / 2

end

end A030607.P18200738515087657250

/-! ## A030607.P17075993336159754711

`eq[2, A030604(A008619(2*n))!]`
-/

namespace A030607.P17075993336159754711
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A030604 (A008619 (2 * n)).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A030607.P17075993336159754711

/-! ## A030607.P12506470374990446867

`A233583(eq[2, A030604(n)])`
-/

namespace A030607.P12506470374990446867
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030604 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233583 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A030607.P12506470374990446867

/-!
# A030608: Position of n-th 3 in A030604.

The programs for A030608, there is no canonical definition to state claims against.
-/

/-! ## A030608.P1646908546225362608

`eq[3, A030604(n+1)]`
-/

namespace A030608.P1646908546225362608
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030604 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A030608.P1646908546225362608

/-! ## A030608.P2628190721391755424

`eq[3, A030604(n)]-1`
-/

namespace A030608.P2628190721391755424
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030604 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n : ℤ) - 1

end

end A030608.P2628190721391755424

/-! ## A030608.P1052275057557205391

`A023443(eq[3, A030604(n)])`
-/

namespace A030608.P1052275057557205391
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030604 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A030608.P1052275057557205391

/-! ## A030608.P1177389148335041535

`eq[6, A030604(A008619(2*n))!]`
-/

namespace A030608.P1177389148335041535
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A030604 (A008619 (2 * n)).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A030608.P1177389148335041535

/-! ## A030608.P16680091111243676095

`A233583(eq[3, A030604(n)])`
-/

namespace A030608.P16680091111243676095
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030604 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233583 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A030608.P16680091111243676095

/-!
# A030609: Position of n-th 4 in A030604.

The programs for A030609, there is no canonical definition to state claims against.
-/

/-! ## A030609.P7525072966495390271

`eq[4, A030604(n+1)]`
-/

namespace A030609.P7525072966495390271
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030604 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A030609.P7525072966495390271

/-! ## A030609.P2361908170121340888

`eq[4, A030604(n)]-1`
-/

namespace A030609.P2361908170121340888
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030604 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n : ℤ) - 1

end

end A030609.P2361908170121340888

/-! ## A030609.P6033026644377502291

`A023443(eq[4, A030604(n)])`
-/

namespace A030609.P6033026644377502291
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030604 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A030609.P6033026644377502291

/-! ## A030609.P4443759285069579250

`A004275(eq[4, A030604(n)])/2`
-/

namespace A030609.P4443759285069579250
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030604 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A004275 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n) : ℚ) / 2

end

end A030609.P4443759285069579250

/-! ## A030609.P12258304356323337057

`A233583(eq[4, A030604(n)])`
-/

namespace A030609.P12258304356323337057
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030604 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233583 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A030609.P12258304356323337057

/-!
# A030610: Position of n-th 5 in A030604.

The programs for A030610, there is no canonical definition to state claims against.
-/

/-! ## A030610.P11414367814505233495

`eq[5, A030604(n+1)]`
-/

namespace A030610.P11414367814505233495
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030604 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A030610.P11414367814505233495

/-! ## A030610.P6793382942452399945

`eq[5, A030604(n)]-1`
-/

namespace A030610.P6793382942452399945
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030604 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n : ℤ) - 1

end

end A030610.P6793382942452399945

/-! ## A030610.P9658625344541117729

`A023443(eq[5, A030604(n)])`
-/

namespace A030610.P9658625344541117729
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030604 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A030610.P9658625344541117729

/-! ## A030610.P17070431939841869513

`A004275(eq[5, A030604(n)])/2`
-/

namespace A030610.P17070431939841869513
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030604 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A004275 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n) : ℚ) / 2

end

end A030610.P17070431939841869513

/-! ## A030610.P16734283983546835094

`A051755(eq[5, A030604(n)])/2`
-/

namespace A030610.P16734283983546835094
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030604 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A051755 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n) : ℚ) / 2

end

end A030610.P16734283983546835094

/-! ## A030610.P11260478308031189719

`lt[A060747(2*n+1), n*A030604(n+1)]`
-/

namespace A030610.P11260478308031189719
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060747 (2 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A030604 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A030610.P11260478308031189719

/-! ## A030610.P14277926707319379510

`A233583(eq[5, A030604(n)])`
-/

namespace A030610.P14277926707319379510
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030604 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233583 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A030610.P14277926707319379510

/-!
# A030612: Length of n-th run of digit 0 in A030604.

The programs for A030612, there is no canonical definition to state claims against.
-/

/-! ## A030612.P3006571379496145780

`runs[A333908(n+1)-n]`
-/

namespace A030612.P3006571379496145780
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333908 (n + 1) - (n : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => j = 0 ∨ f1 j ≠ f1 (j - 1)) (n + 1) - SequenceMachineLib.nth (fun j => j = 0 ∨ f1 j ≠ f1 (j - 1)) n

end

end A030612.P3006571379496145780

/-! ## A030612.P7221533753656761978

`runs[eq[0, A030604(n)]-n]`
-/

namespace A030612.P7221533753656761978
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030604 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n : ℤ) - (n : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => j = 0 ∨ f1 j ≠ f1 (j - 1)) (n + 1) - SequenceMachineLib.nth (fun j => j = 0 ∨ f1 j ≠ f1 (j - 1)) n

end

end A030612.P7221533753656761978

/-! ## A030612.P878897074456892120

`A355080(gcd(floor(n/2), A011977(n+5)))`
-/

namespace A030612.P878897074456892120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355080 (Int.gcd ⌊(n : ℚ) / 2⌋ (A011977 (n + 5)))

end

end A030612.P878897074456892120

/-! ## A030612.P13306110833251762363

`gcd(A126305(A003961(n+1)), A274583(n))`
-/

namespace A030612.P13306110833251762363
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A126305 (A003961 (n + 1)).toNat) (A274583 n)

end

end A030612.P13306110833251762363

/-! ## A030612.P6168761239577642816

`gcd(A100922(A155517(n+1)), A322026(n+1))`
-/

namespace A030612.P6168761239577642816
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A100922 (A155517 (n + 1)).toNat) (A322026 (n + 1))

end

end A030612.P6168761239577642816

/-!
# A030613: Length of n-th run of digit 1 in A030604.

The programs for A030613, there is no canonical definition to state claims against.
-/

/-! ## A030613.P17735196715970053969

`runs[eq[1, A030604(n)]-n]`
-/

namespace A030613.P17735196715970053969
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030604 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n : ℤ) - (n : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => j = 0 ∨ f1 j ≠ f1 (j - 1)) (n + 1) - SequenceMachineLib.nth (fun j => j = 0 ∨ f1 j ≠ f1 (j - 1)) n

end

end A030613.P17735196715970053969

/-! ## A030613.P2252157169524360944

`A285706(A016116(n)+3-n)`
-/

namespace A030613.P2252157169524360944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285706 (A016116 n + (3 - (n : ℤ))).toNat

end

end A030613.P2252157169524360944

/-! ## A030613.P14673743834458295121

`A331311(A252269(n+1)+A088158(n))`
-/

namespace A030613.P14673743834458295121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331311 (A252269 (n + 1) + A088158 n).toNat

end

end A030613.P14673743834458295121

/-! ## A030613.P11787211376032655172

`gcd(A259176(4*n+2), A283367(A237591(4*n+2)))`
-/

namespace A030613.P11787211376032655172
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A259176 (4 * n + 2)) (A283367 (A237591 (4 * n + 2)).toNat)

end

end A030613.P11787211376032655172

/-! ## A030613.P12691735812115547472

`A124010(A353486(n+2)+A212804(n))`
-/

namespace A030613.P12691735812115547472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124010 (A353486 (n + 2) + A212804 n).toNat

end

end A030613.P12691735812115547472

/-!
# A030614: Length of n-th run of digit 2 in A030604.

The programs for A030614, there is no canonical definition to state claims against.
-/

/-! ## A030614.P17935994922025504713

`runs[A030607(n+1)-n]`
-/

namespace A030614.P17935994922025504713
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030607 (n + 1) - (n : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => j = 0 ∨ f1 j ≠ f1 (j - 1)) (n + 1) - SequenceMachineLib.nth (fun j => j = 0 ∨ f1 j ≠ f1 (j - 1)) n

end

end A030614.P17935994922025504713

/-! ## A030614.P5874686929724803541

`runs[eq[2, A030604(n)]-n]`
-/

namespace A030614.P5874686929724803541
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030604 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n : ℤ) - (n : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => j = 0 ∨ f1 j ≠ f1 (j - 1)) (n + 1) - SequenceMachineLib.nth (fun j => j = 0 ∨ f1 j ≠ f1 (j - 1)) n

end

end A030614.P5874686929724803541

/-!
# A030615: Length of n-th run of digit 3 in A030604.

The programs for A030615, there is no canonical definition to state claims against.
-/

/-! ## A030615.P858799817437026212

`runs[A030608(1+n)-n]`
-/

namespace A030615.P858799817437026212
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030608 (1 + n) - (n : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => j = 0 ∨ f1 j ≠ f1 (j - 1)) (n + 1) - SequenceMachineLib.nth (fun j => j = 0 ∨ f1 j ≠ f1 (j - 1)) n

end

end A030615.P858799817437026212

/-! ## A030615.P17161264421253009181

`runs[eq[3, A030604(n+2)]-n]`
-/

namespace A030615.P17161264421253009181
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030604 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n : ℤ) - (n : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => j = 0 ∨ f1 j ≠ f1 (j - 1)) (n + 1) - SequenceMachineLib.nth (fun j => j = 0 ∨ f1 j ≠ f1 (j - 1)) n

end

end A030615.P17161264421253009181

/-! ## A030615.P17320129806239557190

`∏{e}[A316674(n)+A104762(2*n+5), #]`
-/

namespace A030615.P17320129806239557190
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316674 n + A104762 (2 * n + 5)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A030615.P17320129806239557190

/-! ## A030615.P16355305809585605808

`A124010(A238865(n)*A303821(n+5))`
-/

namespace A030615.P16355305809585605808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124010 (A238865 n * A303821 (n + 5)).toNat

end

end A030615.P16355305809585605808

/-! ## A030615.P5568719438339817484

`A373125(A261093(n+2)+A075236(n+3))`
-/

namespace A030615.P5568719438339817484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373125 (A261093 (n + 2) + A075236 (n + 3)).toNat

end

end A030615.P5568719438339817484

/-!
# A030616: Length of n-th run of digit 4 in A030604.

The programs for A030616, there is no canonical definition to state claims against.
-/

/-! ## A030616.P4230992779142697246

`runs[A030609(n+1)-n]`
-/

namespace A030616.P4230992779142697246
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030609 (n + 1) - (n : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => j = 0 ∨ f1 j ≠ f1 (j - 1)) (n + 1) - SequenceMachineLib.nth (fun j => j = 0 ∨ f1 j ≠ f1 (j - 1)) n

end

end A030616.P4230992779142697246

/-! ## A030616.P12525141980124419955

`runs[eq[4, A030604(n)]-n]`
-/

namespace A030616.P12525141980124419955
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030604 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n : ℤ) - (n : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => j = 0 ∨ f1 j ≠ f1 (j - 1)) (n + 1) - SequenceMachineLib.nth (fun j => j = 0 ∨ f1 j ≠ f1 (j - 1)) n

end

end A030616.P12525141980124419955

/-! ## A030616.P13416419157536390183

`A138330(A136496(A381841((n+1)²)))`
-/

namespace A030616.P13416419157536390183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138330 (A136496 (A381841 ((n + 1) ^ 2)).toNat).toNat

end

end A030616.P13416419157536390183

/-! ## A030616.P4206580752299565290

`A022300(A260390(n+1)+A219041(n+1))`
-/

namespace A030616.P4206580752299565290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022300 (A260390 (n + 1) + A219041 (n + 1)).toNat

end

end A030616.P4206580752299565290

/-! ## A030616.P13564060140169222995

`gcd(A020639(A360667(n)), A360690(2*n+1))`
-/

namespace A030616.P13564060140169222995
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A020639 (A360667 n).toNat) (A360690 (2 * n + 1))

end

end A030616.P13564060140169222995

/-!
# A030623: Powers of 2 grouped in pairs of 2 digits (version 2).

The programs for A030623, there is no canonical definition to state claims against.
-/

/-! ## A030623.P17513144782759162533

`A000455(2*n+1)+10*A000455(2*n)`
-/

namespace A030623.P17513144782759162533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000455 (2 * n + 1) + 10 * A000455 (2 * n)

end

end A030623.P17513144782759162533

/-! ## A030623.P17348062191235302097

`A030624(A032555(n+1))`
-/

namespace A030623.P17348062191235302097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030624 (A032555 (n + 1)).toNat

end

end A030623.P17348062191235302097

/-!
# A030625: n(n+Z(n)), where Z( ) is the Narayana-Zidek-Capell sequence (A002083).

The programs for A030625, the canonical program `A030625.P7737987755420101011` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A030625 has offset 0).

The definition of A030625 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 328 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A030625.P7737987755420101011

`(A002083(abs(1-n)+1)+n)*n`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A030625

/-- `(A002083(abs(1-n)+1)+n)*n` -/
def P7737987755420101011.Spec : Prop :=
  ∀ n, P7737987755420101011.a n = A030625 n

theorem P7737987755420101011.correct : P7737987755420101011.Spec := by
  intro n
  simp only [A030625]

end A030625

/-! ## A030625.P2196072727590506133

`n*(A349144(A329699(n))+n)`
-/

namespace A030625.P2196072727590506133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A349144 (A329699 n).toNat + (n : ℤ))

end

end A030625.P2196072727590506133

namespace A030625

/-- `n*(A349144(A329699(n))+n)` -/
def P2196072727590506133.Spec : Prop :=
  ∀ n, P2196072727590506133.a n = A030625 n

end A030625

/-! ## A030625.P11751733079406263859

`n*(A245879(n+1)+1)`
-/

namespace A030625.P11751733079406263859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A245879 (n + 1) + 1)

end

end A030625.P11751733079406263859

namespace A030625

/-- `n*(A245879(n+1)+1)` -/
def P11751733079406263859.Spec : Prop :=
  ∀ n, P11751733079406263859.a n = A030625 n

end A030625

/-! ## A030625.P8552121500660297120

`n*A020725(A245879(n+1))`
-/

namespace A030625.P8552121500660297120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A020725 (A245879 (n + 1)).toNat

end

end A030625.P8552121500660297120

namespace A030625

/-- `n*A020725(A245879(n+1))` -/
def P8552121500660297120.Spec : Prop :=
  ∀ n, P8552121500660297120.a n = A030625 n

end A030625

/-!
# A030626: Numbers with exactly 8 divisors.

The programs for A030626, the canonical program `A030626.P13020075489056266396` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A030626 has offset 1).

The definition of A030626 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A030626.P13020075489056266396

`eq[8, A000005(n+1)]+1`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A030626

/-- `eq[8, A000005(n+1)]+1` -/
def P13020075489056266396.Spec : Prop :=
  ∀ n, (P13020075489056266396.a n : ℤ) = A030626 (n + 1)

theorem P13020075489056266396.correct : P13020075489056266396.Spec := by
  intro n
  simp only [A030626, Nat.add_sub_cancel]

end A030626

/-! ## A030626.P14855449978514528851

`∪[A007304(n+1), A297401(n+1)]`
-/

namespace A030626.P14855449978514528851
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007304 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297401 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A030626.P14855449978514528851

namespace A030626

/-- `∪[A007304(n+1), A297401(n+1)]` -/
def P14855449978514528851.Spec : Prop :=
  ∀ n, (P14855449978514528851.a n : ℤ) = A030626 (n + 1)

end A030626

/-! ## A030626.P8601632935072143933

`A111398(2+n)`
-/

namespace A030626.P8601632935072143933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111398 (2 + n)

end

end A030626.P8601632935072143933

namespace A030626

/-- `A111398(2+n)` -/
def P8601632935072143933.Spec : Prop :=
  ∀ n, P8601632935072143933.a n = A030626 (n + 1)

end A030626

/-! ## A030626.P11317794058872906911

`filter[A036456(n+1), A359473(#)]`
-/

namespace A030626.P11317794058872906911
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036456 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359473 (f1 j).toNat = 1) n)

end

end A030626.P11317794058872906911

namespace A030626

/-- `filter[A036456(n+1), A359473(#)]` -/
def P11317794058872906911.Spec : Prop :=
  ∀ n, P11317794058872906911.a n = A030626 (n + 1)

end A030626

/-! ## A030626.P12765266908977626912

`filter[A182859(n+3), A359473(#)]`
-/

namespace A030626.P12765266908977626912
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182859 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359473 (f1 j).toNat = 1) n)

end

end A030626.P12765266908977626912

namespace A030626

/-- `filter[A182859(n+3), A359473(#)]` -/
def P12765266908977626912.Spec : Prop :=
  ∀ n, P12765266908977626912.a n = A030626 (n + 1)

end A030626

/-! ## A030626.P16040465218248849756

`∩[A036456(n+1), A048945(n+1)]`
-/

namespace A030626.P16040465218248849756
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036456 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048945 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A030626.P16040465218248849756

namespace A030626

/-- `∩[A036456(n+1), A048945(n+1)]` -/
def P16040465218248849756.Spec : Prop :=
  ∀ n, (P16040465218248849756.a n : ℤ) = A030626 (n + 1)

end A030626

/-! ## A030626.P16340128468257708689

`∩[A007624(n+1), A123193(n+1)]`
-/

namespace A030626.P16340128468257708689
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007624 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123193 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A030626.P16340128468257708689

namespace A030626

/-- `∩[A007624(n+1), A123193(n+1)]` -/
def P16340128468257708689.Spec : Prop :=
  ∀ n, (P16340128468257708689.a n : ℤ) = A030626 (n + 1)

end A030626

/-! ## A030626.P13358821806521028980

`∩[A036456(n+1), A036537(n+1)]`
-/

namespace A030626.P13358821806521028980
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036456 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036537 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A030626.P13358821806521028980

namespace A030626

/-- `∩[A036456(n+1), A036537(n+1)]` -/
def P13358821806521028980.Spec : Prop :=
  ∀ n, (P13358821806521028980.a n : ℤ) = A030626 (n + 1)

end A030626

/-! ## A030626.P11560700179663336095

`eq[7, A032741(n)]`
-/

namespace A030626.P11560700179663336095
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A030626.P11560700179663336095

namespace A030626

/-- `eq[7, A032741(n)]` -/
def P11560700179663336095.Spec : Prop :=
  ∀ n, (P11560700179663336095.a n : ℤ) = A030626 (n + 1)

end A030626

/-! ## A030626.P15437152670645004863

`eq[14, A319410(n)]`
-/

namespace A030626.P15437152670645004863
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  14

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319410 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A030626.P15437152670645004863

namespace A030626

/-- `eq[14, A319410(n)]` -/
def P15437152670645004863.Spec : Prop :=
  ∀ n, (P15437152670645004863.a n : ℤ) = A030626 (n + 1)

end A030626

/-! ## A030626.P1985911729083754366

`eq[4, A145154(n)/8]`
-/

namespace A030626.P1985911729083754366
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A145154 n : ℚ) / 8

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℚ) = f2 j) n

end

end A030626.P1985911729083754366

namespace A030626

/-- `eq[4, A145154(n)/8]` -/
def P1985911729083754366.Spec : Prop :=
  ∀ n, (P1985911729083754366.a n : ℤ) = A030626 (n + 1)

end A030626

/-! ## A030626.P12506479761413326192

`eq[6, A264440(n+1)]+1`
-/

namespace A030626.P12506479761413326192
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264440 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A030626.P12506479761413326192

namespace A030626

/-- `eq[6, A264440(n+1)]+1` -/
def P12506479761413326192.Spec : Prop :=
  ∀ n, (P12506479761413326192.a n : ℤ) = A030626 (n + 1)

end A030626

/-! ## A030626.P9821667566025772500

`eq[2, A188902(n+2)-2]+2`
-/

namespace A030626.P9821667566025772500
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188902 (n + 2) - 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2

end

end A030626.P9821667566025772500

namespace A030626

/-- `eq[2, A188902(n+2)-2]+2` -/
def P9821667566025772500.Spec : Prop :=
  ∀ n, (P9821667566025772500.a n : ℤ) = A030626 (n + 1)

end A030626

/-! ## A030626.P14378424121399123134

`eq[8, A000005(A028310(n))]`
-/

namespace A030626.P14378424121399123134
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A030626.P14378424121399123134

namespace A030626

/-- `eq[8, A000005(A028310(n))]` -/
def P14378424121399123134.Spec : Prop :=
  ∀ n, (P14378424121399123134.a n : ℤ) = A030626 (n + 1)

end A030626

/-! ## A030626.P15214502445850417336

`eq[A040240(n), A145154(n)]`
-/

namespace A030626.P15214502445850417336
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040240 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145154 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A030626.P15214502445850417336

namespace A030626

/-- `eq[A040240(n), A145154(n)]` -/
def P15214502445850417336.Spec : Prop :=
  ∀ n, (P15214502445850417336.a n : ℤ) = A030626 (n + 1)

end A030626

/-! ## A030626.P7758813801293005033

`eq[A168014(n), A168102(n)]`
-/

namespace A030626.P7758813801293005033
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168014 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168102 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A030626.P7758813801293005033

namespace A030626

/-- `eq[A168014(n), A168102(n)]` -/
def P7758813801293005033.Spec : Prop :=
  ∀ n, (P7758813801293005033.a n : ℤ) = A030626 (n + 1)

end A030626

/-! ## A030626.P8751513584749472004

`eq[1, A070477(A145154(n)-1)]`
-/

namespace A030626.P8751513584749472004
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070477 (A145154 n - 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A030626.P8751513584749472004

namespace A030626

/-- `eq[1, A070477(A145154(n)-1)]` -/
def P8751513584749472004.Spec : Prop :=
  ∀ n, (P8751513584749472004.a n : ℤ) = A030626 (n + 1)

end A030626

/-! ## A030626.P11537467761790077546

`filter[A007624(n+1), A122895(#)]`
-/

namespace A030626.P11537467761790077546
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007624 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A122895 (f1 j).toNat = 1) n)

end

end A030626.P11537467761790077546

namespace A030626

/-- `filter[A007624(n+1), A122895(#)]` -/
def P11537467761790077546.Spec : Prop :=
  ∀ n, P11537467761790077546.a n = A030626 (n + 1)

end A030626

/-! ## A030626.P17703722143408452501

`filter[A089229(n+1), A122895(#)]`
-/

namespace A030626.P17703722143408452501
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089229 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A122895 (f1 j).toNat = 1) n)

end

end A030626.P17703722143408452501

namespace A030626

/-- `filter[A089229(n+1), A122895(#)]` -/
def P17703722143408452501.Spec : Prop :=
  ∀ n, P17703722143408452501.a n = A030626 (n + 1)

end A030626

/-! ## A030626.P4333314252181746155

`filter[A365535(n+1), A122895(#)]`
-/

namespace A030626.P4333314252181746155
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365535 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A122895 (f1 j).toNat = 1) n)

end

end A030626.P4333314252181746155

namespace A030626

/-- `filter[A365535(n+1), A122895(#)]` -/
def P4333314252181746155.Spec : Prop :=
  ∀ n, P4333314252181746155.a n = A030626 (n + 1)

end A030626

/-!
# A030627: Numbers with 9 divisors.

The programs for A030627, the canonical program `A030627.P5952706466757844042` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A030627 has offset 1).

The definition of A030627 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1275 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A030627.P98695259139050744

`A068993(1+n)²`
-/

namespace A030627.P98695259139050744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068993 (1 + n) ^ 2

end

end A030627.P98695259139050744

namespace A030627

/-- `A068993(1+n)²` -/
def P98695259139050744.Spec : Prop :=
  ∀ n, P98695259139050744.a n = A030627 (n + 1)

end A030627

/-! ## A030627.P1228383614234425410

`A068993(n+1)^2`
-/

namespace A030627.P1228383614234425410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068993 (n + 1) ^ 2

end

end A030627.P1228383614234425410

namespace A030627

/-- `A068993(n+1)^2` -/
def P1228383614234425410.Spec : Prop :=
  ∀ n, P1228383614234425410.a n = A030627 (n + 1)

end A030627

/-! ## A030627.P13267560924460467950

`(eq[4, A062799(1+n)]+1)²`
-/

namespace A030627.P13267560924460467950
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062799 (1 + n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1) ^ 2

end

end A030627.P13267560924460467950

namespace A030627

/-- `(eq[4, A062799(1+n)]+1)²` -/
def P13267560924460467950.Spec : Prop :=
  ∀ n, (P13267560924460467950.a n : ℤ) = A030627 (n + 1)

end A030627

/-! ## A030627.P601648309628666035

`(eq[4, A063647(1+n)]+1)²`
-/

namespace A030627.P601648309628666035
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063647 (1 + n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1) ^ 2

end

end A030627.P601648309628666035

namespace A030627

/-- `(eq[4, A063647(1+n)]+1)²` -/
def P601648309628666035.Spec : Prop :=
  ∀ n, (P601648309628666035.a n : ℤ) = A030627 (n + 1)

end A030627

/-! ## A030627.P12251301286272770259

`A000290(A068993(n+1))`
-/

namespace A030627.P12251301286272770259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000290 (A068993 (n + 1)).toNat

end

end A030627.P12251301286272770259

namespace A030627

/-- `A000290(A068993(n+1))` -/
def P12251301286272770259.Spec : Prop :=
  ∀ n, P12251301286272770259.a n = A030627 (n + 1)

end A030627

/-! ## A030627.P14609294113622382355

`record[A068993(A344180(n))²]`
-/

namespace A030627.P14609294113622382355
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068993 (A344180 n).toNat ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A030627.P14609294113622382355

namespace A030627

/-- `record[A068993(A344180(n))²]` -/
def P14609294113622382355.Spec : Prop :=
  ∀ n, P14609294113622382355.a n = A030627 (n + 1)

end A030627

/-! ## A030627.P3233708921979562839

`A002620(2*A068993(n+1))`
-/

namespace A030627.P3233708921979562839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002620 (2 * A068993 (n + 1)).toNat

end

end A030627.P3233708921979562839

namespace A030627

/-- `A002620(2*A068993(n+1))` -/
def P3233708921979562839.Spec : Prop :=
  ∀ n, P3233708921979562839.a n = A030627 (n + 1)

end A030627

/-! ## A030627.P15861078456393661702

`∪[A085986(n+1), A179645(n+1)]`
-/

namespace A030627.P15861078456393661702
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085986 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179645 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A030627.P15861078456393661702

namespace A030627

/-- `∪[A085986(n+1), A179645(n+1)]` -/
def P15861078456393661702.Spec : Prop :=
  ∀ n, (P15861078456393661702.a n : ℤ) = A030627 (n + 1)

end A030627

/-! ## A030627.P5952706466757844042

`∩[A007412(n+1), A332269(n+1)]²`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A030627

/-- `∩[A007412(n+1), A332269(n+1)]²` -/
def P5952706466757844042.Spec : Prop :=
  ∀ n, (P5952706466757844042.a n : ℤ) = A030627 (n + 1)

theorem P5952706466757844042.correct : P5952706466757844042.Spec := by
  intro n
  simp only [A030627, Nat.add_sub_cancel]

end A030627

/-! ## A030627.P3633619070936137319

`∩[A028260(n+1), A332269(n+1)]²`
-/

namespace A030627.P3633619070936137319
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028260 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332269 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n ^ 2

end

end A030627.P3633619070936137319

namespace A030627

/-- `∩[A028260(n+1), A332269(n+1)]²` -/
def P3633619070936137319.Spec : Prop :=
  ∀ n, (P3633619070936137319.a n : ℤ) = A030627 (n + 1)

end A030627

/-! ## A030627.P5314114206492679557

`∩[A210490(n+1), A332269(n+1)]²`
-/

namespace A030627.P5314114206492679557
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210490 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332269 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n ^ 2

end

end A030627.P5314114206492679557

namespace A030627

/-- `∩[A210490(n+1), A332269(n+1)]²` -/
def P5314114206492679557.Spec : Prop :=
  ∀ n, (P5314114206492679557.a n : ℤ) = A030627 (n + 1)

end A030627

/-! ## A030627.P13648983433761825516

`∩[A233182(n+1), A332269(n+1)]²`
-/

namespace A030627.P13648983433761825516
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233182 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332269 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n ^ 2

end

end A030627.P13648983433761825516

namespace A030627

/-- `∩[A233182(n+1), A332269(n+1)]²` -/
def P13648983433761825516.Spec : Prop :=
  ∀ n, (P13648983433761825516.a n : ℤ) = A030627 (n + 1)

end A030627

/-! ## A030627.P17101474224796630689

`∪[A006881(n+1), A030514(n+1)]²`
-/

namespace A030627.P17101474224796630689
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006881 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030514 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n ^ 2

end

end A030627.P17101474224796630689

namespace A030627

/-- `∪[A006881(n+1), A030514(n+1)]²` -/
def P17101474224796630689.Spec : Prop :=
  ∀ n, (P17101474224796630689.a n : ℤ) = A030627 (n + 1)

end A030627

/-! ## A030627.P15989108502297702840

`∪[A001248(n+1)², A006881(n+1)]²`
-/

namespace A030627.P15989108502297702840
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001248 (n + 1) ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006881 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n ^ 2

end

end A030627.P15989108502297702840

namespace A030627

/-- `∪[A001248(n+1)², A006881(n+1)]²` -/
def P15989108502297702840.Spec : Prop :=
  ∀ n, (P15989108502297702840.a n : ℤ) = A030627 (n + 1)

end A030627

/-! ## A030627.P7326003038175191846

`∪[A000040(n+1)²², A006881(n+1)]²`
-/

namespace A030627.P7326003038175191846
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000040 (n + 1) ^ 2) ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006881 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n ^ 2

end

end A030627.P7326003038175191846

namespace A030627

/-- `∪[A000040(n+1)²², A006881(n+1)]²` -/
def P7326003038175191846.Spec : Prop :=
  ∀ n, (P7326003038175191846.a n : ℤ) = A030627 (n + 1)

end A030627

/-! ## A030627.P1964803322340181331

`∩[A063774(n+1), A130763(n+1)]²`
-/

namespace A030627.P1964803322340181331
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063774 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130763 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n ^ 2

end

end A030627.P1964803322340181331

namespace A030627

/-- `∩[A063774(n+1), A130763(n+1)]²` -/
def P1964803322340181331.Spec : Prop :=
  ∀ n, (P1964803322340181331.a n : ℤ) = A030627 (n + 1)

end A030627

/-! ## A030627.P12741108118202972182

`(eq[6, A096827(n+1)]+1)²`
-/

namespace A030627.P12741108118202972182
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096827 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1) ^ 2

end

end A030627.P12741108118202972182

namespace A030627

/-- `(eq[6, A096827(n+1)]+1)²` -/
def P12741108118202972182.Spec : Prop :=
  ∀ n, (P12741108118202972182.a n : ℤ) = A030627 (n + 1)

end A030627

/-!
# A030628: 1 together with numbers of the form p*q^4 and p^9, where p and q are distinct primes.

The programs for A030628, the canonical program `A030628.P8221575935304841675` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A030628 has offset 1).

The definition of A030628 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 151 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A030628.P2716470600204361346

`∩[A081619(n+1), A197680(n+1)]`
-/

namespace A030628.P2716470600204361346
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081619 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197680 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A030628.P2716470600204361346

namespace A030628

/-- `∩[A081619(n+1), A197680(n+1)]` -/
def P2716470600204361346.Spec : Prop :=
  ∀ n, (P2716470600204361346.a n : ℤ) = A030628 (n + 1)

end A030628

/-! ## A030628.P3814130703616631275

`∩[A000452(n+1), A081619(n+1)]`
-/

namespace A030628.P3814130703616631275
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000452 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081619 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A030628.P3814130703616631275

namespace A030628

/-- `∩[A000452(n+1), A081619(n+1)]` -/
def P3814130703616631275.Spec : Prop :=
  ∀ n, (P3814130703616631275.a n : ℤ) = A030628 (n + 1)

end A030628

/-! ## A030628.P12169730713792061210

`eq[3, A328572(A145154(n))]`
-/

namespace A030628.P12169730713792061210
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328572 (A145154 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A030628.P12169730713792061210

namespace A030628

/-- `eq[3, A328572(A145154(n))]` -/
def P12169730713792061210.Spec : Prop :=
  ∀ n, (P12169730713792061210.a n : ℤ) = A030628 (n + 1)

end A030628

/-! ## A030628.P8221575935304841675

`eq[A113923(n)², A032741(n)]`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A030628

/-- `eq[A113923(n)², A032741(n)]` -/
def P8221575935304841675.Spec : Prop :=
  ∀ n, (P8221575935304841675.a n : ℤ) = A030628 (n + 1)

theorem P8221575935304841675.correct : P8221575935304841675.Spec := by
  intro n
  simp only [A030628, Nat.add_sub_cancel]

end A030628

/-! ## A030628.P3354004440174238578

`eq[A000007(n), A004184(A032741(n))]`
-/

namespace A030628.P3354004440174238578
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004184 (A032741 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A030628.P3354004440174238578

namespace A030628

/-- `eq[A000007(n), A004184(A032741(n))]` -/
def P3354004440174238578.Spec : Prop :=
  ∀ n, (P3354004440174238578.a n : ℤ) = A030628 (n + 1)

end A030628

/-! ## A030628.P4701850504522600186

`eq[A025824(A032741(n)), A056926(n)]`
-/

namespace A030628.P4701850504522600186
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025824 (A032741 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056926 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A030628.P4701850504522600186

namespace A030628

/-- `eq[A025824(A032741(n)), A056926(n)]` -/
def P4701850504522600186.Spec : Prop :=
  ∀ n, (P4701850504522600186.a n : ℤ) = A030628 (n + 1)

end A030628

/-! ## A030628.P331981144794916004

`eq[A057427(n), A114099(A032741(n))]`
-/

namespace A030628.P331981144794916004
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114099 (A032741 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A030628.P331981144794916004

namespace A030628

/-- `eq[A057427(n), A114099(A032741(n))]` -/
def P331981144794916004.Spec : Prop :=
  ∀ n, (P331981144794916004.a n : ℤ) = A030628 (n + 1)

end A030628

/-! ## A030628.P8804469149382285975

`eq[A032741(n), A180599(A008611(n))]`
-/

namespace A030628.P8804469149382285975
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180599 (A008611 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A030628.P8804469149382285975

namespace A030628

/-- `eq[A032741(n), A180599(A008611(n))]` -/
def P8804469149382285975.Spec : Prop :=
  ∀ n, (P8804469149382285975.a n : ℤ) = A030628 (n + 1)

end A030628

/-! ## A030628.P16528446040192356457

`eq[1, A055565(A057427(n)+A032741(n))]`
-/

namespace A030628.P16528446040192356457
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055565 (A057427 n + A032741 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A030628.P16528446040192356457

namespace A030628

/-- `eq[1, A055565(A057427(n)+A032741(n))]` -/
def P16528446040192356457.Spec : Prop :=
  ∀ n, (P16528446040192356457.a n : ℤ) = A030628 (n + 1)

end A030628

/-! ## A030628.P8820695023392302144

`eq[A055012(A032741(n)+1), A158388(n)]`
-/

namespace A030628.P8820695023392302144
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055012 (A032741 n + 1).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158388 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A030628.P8820695023392302144

namespace A030628

/-- `eq[A055012(A032741(n)+1), A158388(n)]` -/
def P8820695023392302144.Spec : Prop :=
  ∀ n, (P8820695023392302144.a n : ℤ) = A030628 (n + 1)

end A030628

/-!
# A030629: Numbers with 11 divisors.

The programs for A030629, the canonical program `A030629.P13094375079477453645` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A030629 has offset 1).

The definition of A030629 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A030629.P13094375079477453645

`A000040(n+1)^10`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A030629

/-- `A000040(n+1)^10` -/
def P13094375079477453645.Spec : Prop :=
  ∀ n, P13094375079477453645.a n = A030629 (n + 1)

theorem P13094375079477453645.correct : P13094375079477453645.Spec := by
  intro n
  simp only [A030629, Nat.add_sub_cancel]

end A030629

/-! ## A030629.P9596586770940350582

`A050997(1+n)²`
-/

namespace A030629.P9596586770940350582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050997 (1 + n) ^ 2

end

end A030629.P9596586770940350582

namespace A030629

/-- `A050997(1+n)²` -/
def P9596586770940350582.Spec : Prop :=
  ∀ n, P9596586770940350582.a n = A030629 (n + 1)

end A030629

/-! ## A030629.P10258804336901996583

`Δ[A007504(n)]^10`
-/

namespace A030629.P10258804336901996583
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) ^ 10

end

end A030629.P10258804336901996583

namespace A030629

/-- `Δ[A007504(n)]^10` -/
def P10258804336901996583.Spec : Prop :=
  ∀ n, P10258804336901996583.a n = A030629 (n + 1)

end A030629

/-! ## A030629.P11257686202353669434

`Δ[A008348(n)]^10`
-/

namespace A030629.P11257686202353669434
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008348 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) ^ 10

end

end A030629.P11257686202353669434

namespace A030629

/-- `Δ[A008348(n)]^10` -/
def P11257686202353669434.Spec : Prop :=
  ∀ n, P11257686202353669434.a n = A030629 (n + 1)

end A030629

/-! ## A030629.P651305221751914913

`Δ[A022837(n)]^10`
-/

namespace A030629.P651305221751914913
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022837 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) ^ 10

end

end A030629.P651305221751914913

namespace A030629

/-- `Δ[A022837(n)]^10` -/
def P651305221751914913.Spec : Prop :=
  ∀ n, P651305221751914913.a n = A030629 (n + 1)

end A030629

/-! ## A030629.P3099575680585220938

`Δ[A064365(n)]^10`
-/

namespace A030629.P3099575680585220938
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064365 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) ^ 10

end

end A030629.P3099575680585220938

namespace A030629

/-- `Δ[A064365(n)]^10` -/
def P3099575680585220938.Spec : Prop :=
  ∀ n, P3099575680585220938.a n = A030629 (n + 1)

end A030629

/-! ## A030629.P7779823709330835186

`Δ[A117128(n)]^10`
-/

namespace A030629.P7779823709330835186
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117128 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) ^ 10

end

end A030629.P7779823709330835186

namespace A030629

/-- `Δ[A117128(n)]^10` -/
def P7779823709330835186.Spec : Prop :=
  ∀ n, P7779823709330835186.a n = A030629 (n + 1)

end A030629

/-! ## A030629.P12485098496081106046

`A050997(n+1)^2`
-/

namespace A030629.P12485098496081106046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050997 (n + 1) ^ 2

end

end A030629.P12485098496081106046

namespace A030629

/-- `A050997(n+1)^2` -/
def P12485098496081106046.Spec : Prop :=
  ∀ n, P12485098496081106046.a n = A030629 (n + 1)

theorem P12485098496081106046.correct : P12485098496081106046.Spec := by
  intro n
  simp only [A030629, Nat.add_sub_cancel, A030629.P12485098496081106046.a, A030629.P13094375079477453645.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A050997, A050997.P5231147570234137425.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A030629

/-! ## A030629.P2160639305502786603

`A001248(n+1)^5`
-/

namespace A030629.P2160639305502786603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001248 (n + 1) ^ 5

end

end A030629.P2160639305502786603

namespace A030629

/-- `A001248(n+1)^5` -/
def P2160639305502786603.Spec : Prop :=
  ∀ n, P2160639305502786603.a n = A030629 (n + 1)

theorem P2160639305502786603.correct : P2160639305502786603.Spec := by
  intro n
  simp only [A030629, Nat.add_sub_cancel, A030629.P2160639305502786603.a, A030629.P13094375079477453645.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A001248, A001248.P16278241061688229202.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A030629

/-! ## A030629.P11971273882283129659

`sqrt(A030514(n+1))^5`
-/

namespace A030629.P11971273882283129659
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A030514 (n + 1) : ℝ) ^ 5

end

end A030629.P11971273882283129659

namespace A030629

/-- `sqrt(A030514(n+1))^5` -/
def P11971273882283129659.Spec : Prop :=
  ∀ n, P11971273882283129659.a n = (A030629 (n + 1) : ℝ)

end A030629

/-! ## A030629.P1498625681842481371

`(A000040(2*n-(n-1))^5)²`
-/

namespace A030629.P1498625681842481371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000040 ((2 * n : ℤ) - ((n : ℤ) - 1)).toNat ^ 5) ^ 2

end

end A030629.P1498625681842481371

namespace A030629

/-- `(A000040(2*n-(n-1))^5)²` -/
def P1498625681842481371.Spec : Prop :=
  ∀ n, P1498625681842481371.a n = A030629 (n + 1)

end A030629

/-! ## A030629.P14096112247541661163

`A030514(n+1)*A030516(n+1)`
-/

namespace A030629.P14096112247541661163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030514 (n + 1) * A030516 (n + 1)

end

end A030629.P14096112247541661163

namespace A030629

/-- `A030514(n+1)*A030516(n+1)` -/
def P14096112247541661163.Spec : Prop :=
  ∀ n, P14096112247541661163.a n = A030629 (n + 1)

theorem P14096112247541661163.correct : P14096112247541661163.Spec := by
  intro n
  simp only [A030629, Nat.add_sub_cancel, A030629.P14096112247541661163.a, A030629.P13094375079477453645.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A030514, A030514.P11974636125371552077.a, A030516, A030516.P1711246340231228216.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A030629

/-! ## A030629.P15530640770330264529

`A030078(n+1)*A092759(n+1)`
-/

namespace A030629.P15530640770330264529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030078 (n + 1) * A092759 (n + 1)

end

end A030629.P15530640770330264529

namespace A030629

/-- `A030078(n+1)*A092759(n+1)` -/
def P15530640770330264529.Spec : Prop :=
  ∀ n, P15530640770330264529.a n = A030629 (n + 1)

theorem P15530640770330264529.correct : P15530640770330264529.Spec := by
  intro n
  simp only [A030629, Nat.add_sub_cancel, A030629.P15530640770330264529.a, A030629.P13094375079477453645.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A030078, A030078.P13819432151207990454.a, A092759, A092759.P10365930146465751826.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A030629

/-! ## A030629.P12389247356067737368

`A000040(n+1)*A179665(n+1)`
-/

namespace A030629.P12389247356067737368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) * A179665 (n + 1)

end

end A030629.P12389247356067737368

namespace A030629

/-- `A000040(n+1)*A179665(n+1)` -/
def P12389247356067737368.Spec : Prop :=
  ∀ n, P12389247356067737368.a n = A030629 (n + 1)

theorem P12389247356067737368.correct : P12389247356067737368.Spec := by
  intro n
  simp only [A030629, Nat.add_sub_cancel, A030629.P12389247356067737368.a, A030629.P13094375079477453645.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A179665, A179665.P967492933399289079.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A030629

/-! ## A030629.P16860698715177908734

`A001248(n+1)*A179645(n+1)`
-/

namespace A030629.P16860698715177908734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001248 (n + 1) * A179645 (n + 1)

end

end A030629.P16860698715177908734

namespace A030629

/-- `A001248(n+1)*A179645(n+1)` -/
def P16860698715177908734.Spec : Prop :=
  ∀ n, P16860698715177908734.a n = A030629 (n + 1)

theorem P16860698715177908734.correct : P16860698715177908734.Spec := by
  intro n
  simp only [A030629, Nat.add_sub_cancel, A030629.P16860698715177908734.a, A030629.P13094375079477453645.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A001248, A001248.P16278241061688229202.a, A179645, A179645.P9823570256898303870.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A030629

/-! ## A030629.P17517401077807638009

`A030631(n+1)/A001248(n+1)`
-/

namespace A030629.P17517401077807638009
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A030631 (n + 1) : ℚ) / (A001248 (n + 1) : ℚ)

end

end A030629.P17517401077807638009

namespace A030629

/-- `A030631(n+1)/A001248(n+1)` -/
def P17517401077807638009.Spec : Prop :=
  ∀ n, P17517401077807638009.a n = (A030629 (n + 1) : ℚ)

end A030629

/-! ## A030629.P5804233960886946984

`(A138404(n+1)+A000040(n+1))²`
-/

namespace A030629.P5804233960886946984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A138404 (n + 1) + A000040 (n + 1)) ^ 2

end

end A030629.P5804233960886946984

namespace A030629

/-- `(A138404(n+1)+A000040(n+1))²` -/
def P5804233960886946984.Spec : Prop :=
  ∀ n, P5804233960886946984.a n = A030629 (n + 1)

theorem P5804233960886946984.correct : P5804233960886946984.Spec := by
  intro n
  simp only [A030629, Nat.add_sub_cancel, A030629.P5804233960886946984.a, A030629.P13094375079477453645.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A138404, A138404.P10090745085082303621.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A030629

/-! ## A030629.P7779899914433621635

`(A138405(n+1)+A001248(n+1))²`
-/

namespace A030629.P7779899914433621635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A138405 (n + 1) + A001248 (n + 1)) ^ 2

end

end A030629.P7779899914433621635

namespace A030629

/-- `(A138405(n+1)+A001248(n+1))²` -/
def P7779899914433621635.Spec : Prop :=
  ∀ n, P7779899914433621635.a n = A030629 (n + 1)

theorem P7779899914433621635.correct : P7779899914433621635.Spec := by
  intro n
  simp only [A030629, Nat.add_sub_cancel, A030629.P7779899914433621635.a, A030629.P13094375079477453645.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A001248, A001248.P16278241061688229202.a, A138405, A138405.P11027892364164327132.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A030629

/-! ## A030629.P10431947686373671685

`(A138406(n+1)+A030078(n+1))²`
-/

namespace A030629.P10431947686373671685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A138406 (n + 1) + A030078 (n + 1)) ^ 2

end

end A030629.P10431947686373671685

namespace A030629

/-- `(A138406(n+1)+A030078(n+1))²` -/
def P10431947686373671685.Spec : Prop :=
  ∀ n, P10431947686373671685.a n = A030629 (n + 1)

theorem P10431947686373671685.correct : P10431947686373671685.Spec := by
  intro n
  simp only [A030629, Nat.add_sub_cancel, A030629.P10431947686373671685.a, A030629.P13094375079477453645.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A030078, A030078.P13819432151207990454.a, A138406, A138406.P10473857449717588869.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A030629

/-! ## A030629.P3976802337957163709

`(A138407(n+1)+A030514(n+1))²`
-/

namespace A030629.P3976802337957163709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A138407 (n + 1) + A030514 (n + 1)) ^ 2

end

end A030629.P3976802337957163709

namespace A030629

/-- `(A138407(n+1)+A030514(n+1))²` -/
def P3976802337957163709.Spec : Prop :=
  ∀ n, P3976802337957163709.a n = A030629 (n + 1)

theorem P3976802337957163709.correct : P3976802337957163709.Spec := by
  intro n
  simp only [A030629, Nat.add_sub_cancel, A030629.P3976802337957163709.a, A030629.P13094375079477453645.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A030514, A030514.P11974636125371552077.a, A138407, A138407.P5183959354295253319.a, A050997, A050997.P5231147570234137425.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A030629

/-! ## A030629.P17168552317549742367

`p?[comp[n²]]^10`
-/

namespace A030629.P17168552317549742367
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) ^ 10

end

end A030629.P17168552317549742367

namespace A030629

/-- `p?[comp[n²]]^10` -/
def P17168552317549742367.Spec : Prop :=
  ∀ n, (P17168552317549742367.a n : ℤ) = A030629 (n + 1)

end A030629

/-!
# A030630: Numbers with 12 divisors.

The programs for A030630, the canonical program `A030630.P18236272023832021536` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A030630 has offset 1).

The definition of A030630 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5091 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A030630.P18236272023832021536

`eq[12, A000005(n+1)]+1`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A030630

/-- `eq[12, A000005(n+1)]+1` -/
def P18236272023832021536.Spec : Prop :=
  ∀ n, (P18236272023832021536.a n : ℤ) = A030630 (n + 1)

theorem P18236272023832021536.correct : P18236272023832021536.Spec := by
  intro n
  simp only [A030630, Nat.add_sub_cancel]

end A030630

/-! ## A030630.P1102090794550487645

`A002808(eq[12, A035004(n+1)])`
-/

namespace A030630.P1102090794550487645
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  12

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035004 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002808 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A030630.P1102090794550487645

namespace A030630

/-- `A002808(eq[12, A035004(n+1)])` -/
def P1102090794550487645.Spec : Prop :=
  ∀ n, P1102090794550487645.a n = A030630 (n + 1)

end A030630

/-! ## A030630.P6779692175030142895

`A079427(a(n-1))` with `a(0)=60`
-/

namespace A030630.P6779692175030142895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [60] fun n a =>
  A079427 (a (n - 1)).toNat

end

end A030630.P6779692175030142895

namespace A030630

/-- `A079427(a(n-1))` -/
def P6779692175030142895.Spec : Prop :=
  ∀ n, P6779692175030142895.a n = A030630 (n + 1)

end A030630

/-! ## A030630.P5600115852892274195

`eq[11, A032741(n)]`
-/

namespace A030630.P5600115852892274195
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A030630.P5600115852892274195

namespace A030630

/-- `eq[11, A032741(n)]` -/
def P5600115852892274195.Spec : Prop :=
  ∀ n, (P5600115852892274195.a n : ℤ) = A030630 (n + 1)

end A030630

/-! ## A030630.P6495114081016162171

`eq[2, A188902(n+2)/3]+2`
-/

namespace A030630.P6495114081016162171
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A188902 (n + 2) : ℚ) / 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℚ) = f2 j) n + 2

end

end A030630.P6495114081016162171

namespace A030630

/-- `eq[2, A188902(n+2)/3]+2` -/
def P6495114081016162171.Spec : Prop :=
  ∀ n, (P6495114081016162171.a n : ℤ) = A030630 (n + 1)

end A030630

/-! ## A030630.P12661326251560580906

`eq[24, A025480(A145154(n))]`
-/

namespace A030630.P12661326251560580906
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  24

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025480 (A145154 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A030630.P12661326251560580906

namespace A030630

/-- `eq[24, A025480(A145154(n))]` -/
def P12661326251560580906.Spec : Prop :=
  ∀ n, (P12661326251560580906.a n : ℤ) = A030630 (n + 1)

end A030630

/-! ## A030630.P651708177441285413

`eq[A040552(n), A145154(n)]`
-/

namespace A030630.P651708177441285413
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040552 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145154 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A030630.P651708177441285413

namespace A030630

/-- `eq[A040552(n), A145154(n)]` -/
def P651708177441285413.Spec : Prop :=
  ∀ n, (P651708177441285413.a n : ℤ) = A030630 (n + 1)

end A030630

/-! ## A030630.P18024644490557572024

`eq[A058319(n), A145154(n)]`
-/

namespace A030630.P18024644490557572024
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058319 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145154 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A030630.P18024644490557572024

namespace A030630

/-- `eq[A058319(n), A145154(n)]` -/
def P18024644490557572024.Spec : Prop :=
  ∀ n, (P18024644490557572024.a n : ℤ) = A030630 (n + 1)

end A030630

/-! ## A030630.P1913041526770377991

`eq[A168014(n), A168104(n)]`
-/

namespace A030630.P1913041526770377991
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168014 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168104 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A030630.P1913041526770377991

namespace A030630

/-- `eq[A168014(n), A168104(n)]` -/
def P1913041526770377991.Spec : Prop :=
  ∀ n, (P1913041526770377991.a n : ℤ) = A030630 (n + 1)

end A030630

/-! ## A030630.P11502416399902356436

`eq[A040110(n), A319410(n)]`
-/

namespace A030630.P11502416399902356436
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040110 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319410 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A030630.P11502416399902356436

namespace A030630

/-- `eq[A040110(n), A319410(n)]` -/
def P11502416399902356436.Spec : Prop :=
  ∀ n, (P11502416399902356436.a n : ℤ) = A030630 (n + 1)

end A030630

/-! ## A030630.P3918708046267541018

`eq[2, A182492(A319410(n)/2)]`
-/

namespace A030630.P3918708046267541018
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182492 (SequenceMachineLib.roundAway ((A319410 n : ℚ) / 2)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A030630.P3918708046267541018

namespace A030630

/-- `eq[2, A182492(A319410(n)/2)]` -/
def P3918708046267541018.Spec : Prop :=
  ∀ n, (P3918708046267541018.a n : ℤ) = A030630 (n + 1)

end A030630

/-! ## A030630.P711326498508576668

`eq[2*A040132(n), A145154(n)]`
-/

namespace A030630.P711326498508576668
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A040132 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145154 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A030630.P711326498508576668

namespace A030630

/-- `eq[2*A040132(n), A145154(n)]` -/
def P711326498508576668.Spec : Prop :=
  ∀ n, (P711326498508576668.a n : ℤ) = A030630 (n + 1)

end A030630

/-! ## A030630.P2082622097544120989

`eq[12, A046523(n+1)-A049820(A046523(n+1))]+1`
-/

namespace A030630.P2082622097544120989
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  12

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046523 (n + 1) - A049820 (A046523 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A030630.P2082622097544120989

namespace A030630

/-- `eq[12, A046523(n+1)-A049820(A046523(n+1))]+1` -/
def P2082622097544120989.Spec : Prop :=
  ∀ n, (P2082622097544120989.a n : ℤ) = A030630 (n + 1)

end A030630

/-! ## A030630.P9739450453474090451

`eq[12, A349620((n+1)/A003557(n+1))+A033273(n+1)]+1`
-/

namespace A030630.P9739450453474090451
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  12

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349620 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A003557 (n + 1) : ℚ))).toNat + A033273 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A030630.P9739450453474090451

namespace A030630

/-- `eq[12, A349620((n+1)/A003557(n+1))+A033273(n+1)]+1` -/
def P9739450453474090451.Spec : Prop :=
  ∀ n, (P9739450453474090451.a n : ℤ) = A030630 (n + 1)

end A030630

/-! ## A030630.P5159977722760382371

`eq[A040559(2*n), A145154(n)]`
-/

namespace A030630.P5159977722760382371
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040559 (2 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145154 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A030630.P5159977722760382371

namespace A030630

/-- `eq[A040559(2*n), A145154(n)]` -/
def P5159977722760382371.Spec : Prop :=
  ∀ n, (P5159977722760382371.a n : ℤ) = A030630 (n + 1)

end A030630

/-! ## A030630.P7717178511644696837

`eq[A040567(2*n), A145154(n)]`
-/

namespace A030630.P7717178511644696837
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040567 (2 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145154 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A030630.P7717178511644696837

namespace A030630

/-- `eq[A040567(2*n), A145154(n)]` -/
def P7717178511644696837.Spec : Prop :=
  ∀ n, (P7717178511644696837.a n : ℤ) = A030630 (n + 1)

end A030630

/-! ## A030630.P14681529497276536634

`eq[A040575(2*n), A145154(n)]`
-/

namespace A030630.P14681529497276536634
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040575 (2 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145154 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A030630.P14681529497276536634

namespace A030630

/-- `eq[A040575(2*n), A145154(n)]` -/
def P14681529497276536634.Spec : Prop :=
  ∀ n, (P14681529497276536634.a n : ℤ) = A030630 (n + 1)

end A030630

/-! ## A030630.P3930278423990075023

`eq[A040599(2*n), A145154(n)]`
-/

namespace A030630.P3930278423990075023
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040599 (2 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145154 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A030630.P3930278423990075023

namespace A030630

/-- `eq[A040599(2*n), A145154(n)]` -/
def P3930278423990075023.Spec : Prop :=
  ∀ n, (P3930278423990075023.a n : ℤ) = A030630 (n + 1)

end A030630

/-!
# A030631: Numbers with 13 divisors.

The programs for A030631, the canonical program `A030631.P2128528168171137643` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A030631 has offset 1).

The definition of A030631 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A030631.P2128528168171137643

`A000040(n+1)^12`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A030631

/-- `A000040(n+1)^12` -/
def P2128528168171137643.Spec : Prop :=
  ∀ n, P2128528168171137643.a n = A030631 (n + 1)

theorem P2128528168171137643.correct : P2128528168171137643.Spec := by
  intro n
  simp only [A030631, Nat.add_sub_cancel]

end A030631

/-! ## A030631.P141342489139303980

`A030516(1+n)²`
-/

namespace A030631.P141342489139303980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030516 (1 + n) ^ 2

end

end A030631.P141342489139303980

namespace A030631

/-- `A030516(1+n)²` -/
def P141342489139303980.Spec : Prop :=
  ∀ n, P141342489139303980.a n = A030631 (n + 1)

end A030631

/-! ## A030631.P9484964365787730602

`Δ[A242188(n)]^4`
-/

namespace A030631.P9484964365787730602
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242188 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) ^ 4

end

end A030631.P9484964365787730602

namespace A030631

/-- `Δ[A242188(n)]^4` -/
def P9484964365787730602.Spec : Prop :=
  ∀ n, P9484964365787730602.a n = A030631 (n + 1)

end A030631

/-! ## A030631.P1474621850850643209

`A030514(n+1)^3`
-/

namespace A030631.P1474621850850643209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030514 (n + 1) ^ 3

end

end A030631.P1474621850850643209

namespace A030631

/-- `A030514(n+1)^3` -/
def P1474621850850643209.Spec : Prop :=
  ∀ n, P1474621850850643209.a n = A030631 (n + 1)

theorem P1474621850850643209.correct : P1474621850850643209.Spec := by
  intro n
  simp only [A030631, Nat.add_sub_cancel, A030631.P1474621850850643209.a, A030631.P2128528168171137643.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A030514, A030514.P11974636125371552077.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A030631

/-! ## A030631.P5601958082113606640

`A030078(n+1)^4`
-/

namespace A030631.P5601958082113606640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030078 (n + 1) ^ 4

end

end A030631.P5601958082113606640

namespace A030631

/-- `A030078(n+1)^4` -/
def P5601958082113606640.Spec : Prop :=
  ∀ n, P5601958082113606640.a n = A030631 (n + 1)

theorem P5601958082113606640.correct : P5601958082113606640.Spec := by
  intro n
  simp only [A030631, Nat.add_sub_cancel, A030631.P5601958082113606640.a, A030631.P2128528168171137643.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A030078, A030078.P13819432151207990454.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A030631

/-! ## A030631.P18300771705361528915

`A001248(n+1)^6`
-/

namespace A030631.P18300771705361528915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001248 (n + 1) ^ 6

end

end A030631.P18300771705361528915

namespace A030631

/-- `A001248(n+1)^6` -/
def P18300771705361528915.Spec : Prop :=
  ∀ n, P18300771705361528915.a n = A030631 (n + 1)

theorem P18300771705361528915.correct : P18300771705361528915.Spec := by
  intro n
  simp only [A030631, Nat.add_sub_cancel, A030631.P18300771705361528915.a, A030631.P2128528168171137643.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A001248, A001248.P16278241061688229202.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A030631

/-! ## A030631.P11759276914856920019

`(A153481(n+1)+2)²²`
-/

namespace A030631.P11759276914856920019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((A153481 (n + 1) + 2) ^ 2) ^ 2

end

end A030631.P11759276914856920019

namespace A030631

/-- `(A153481(n+1)+2)²²` -/
def P11759276914856920019.Spec : Prop :=
  ∀ n, P11759276914856920019.a n = A030631 (n + 1)

theorem P11759276914856920019.correct : P11759276914856920019.Spec := by
  intro n
  simp only [A030631, Nat.add_sub_cancel, A030631.P11759276914856920019.a, A030631.P2128528168171137643.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A153481, A153481.P8415490273972627534.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A030631

/-! ## A030631.P11757729859876297232

`(A172190(n+1)/2)²²`
-/

namespace A030631.P11757729859876297232
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (((A172190 (n + 1) : ℚ) / 2) ^ 2) ^ 2

end

end A030631.P11757729859876297232

namespace A030631

/-- `(A172190(n+1)/2)²²` -/
def P11757729859876297232.Spec : Prop :=
  ∀ n, P11757729859876297232.a n = (A030631 (n + 1) : ℚ)

theorem P11757729859876297232.correct : P11757729859876297232.Spec := by
  intro n
  simp only [A030631, Nat.add_sub_cancel, A030631.P11757729859876297232.a, A030631.P2128528168171137643.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A172190, A172190.P9019848423872375971.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A030631

/-! ## A030631.P12932308199026806314

`ceil(sqrt(A138408(n+1)))²²`
-/

namespace A030631.P12932308199026806314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (⌈Real.sqrt (A138408 (n + 1) : ℝ)⌉ ^ 2) ^ 2

end

end A030631.P12932308199026806314

namespace A030631

/-- `ceil(sqrt(A138408(n+1)))²²` -/
def P12932308199026806314.Spec : Prop :=
  ∀ n, P12932308199026806314.a n = A030631 (n + 1)

end A030631

/-! ## A030631.P4428326591817096073

`(A000040(2*n-(n-1))^6)²`
-/

namespace A030631.P4428326591817096073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000040 ((2 * n : ℤ) - ((n : ℤ) - 1)).toNat ^ 6) ^ 2

end

end A030631.P4428326591817096073

namespace A030631

/-- `(A000040(2*n-(n-1))^6)²` -/
def P4428326591817096073.Spec : Prop :=
  ∀ n, P4428326591817096073.a n = A030631 (n + 1)

end A030631

/-! ## A030631.P7879151132800688908

`A001248(n+1)*A030629(n+1)`
-/

namespace A030631.P7879151132800688908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001248 (n + 1) * A030629 (n + 1)

end

end A030631.P7879151132800688908

namespace A030631

/-- `A001248(n+1)*A030629(n+1)` -/
def P7879151132800688908.Spec : Prop :=
  ∀ n, P7879151132800688908.a n = A030631 (n + 1)

theorem P7879151132800688908.correct : P7879151132800688908.Spec := by
  intro n
  simp only [A030631, Nat.add_sub_cancel, A030631.P7879151132800688908.a, A030631.P2128528168171137643.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A001248, A001248.P16278241061688229202.a, A030629, A030629.P13094375079477453645.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A030631

/-! ## A030631.P9900679450084647127

`A030516(n+1)*A030516(n+1)`
-/

namespace A030631.P9900679450084647127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030516 (n + 1) * A030516 (n + 1)

end

end A030631.P9900679450084647127

namespace A030631

/-- `A030516(n+1)*A030516(n+1)` -/
def P9900679450084647127.Spec : Prop :=
  ∀ n, P9900679450084647127.a n = A030631 (n + 1)

theorem P9900679450084647127.correct : P9900679450084647127.Spec := by
  intro n
  simp only [A030631, Nat.add_sub_cancel, A030631.P9900679450084647127.a, A030631.P2128528168171137643.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A030516, A030516.P1711246340231228216.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A030631

/-! ## A030631.P7154940999339949285

`A050997(n+1)*A092759(n+1)`
-/

namespace A030631.P7154940999339949285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050997 (n + 1) * A092759 (n + 1)

end

end A030631.P7154940999339949285

namespace A030631

/-- `A050997(n+1)*A092759(n+1)` -/
def P7154940999339949285.Spec : Prop :=
  ∀ n, P7154940999339949285.a n = A030631 (n + 1)

theorem P7154940999339949285.correct : P7154940999339949285.Spec := by
  intro n
  simp only [A030631, Nat.add_sub_cancel, A030631.P7154940999339949285.a, A030631.P2128528168171137643.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A050997, A050997.P5231147570234137425.a, A092759, A092759.P10365930146465751826.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A030631

/-! ## A030631.P758600024263014624

`A030514(n+1)*A179645(n+1)`
-/

namespace A030631.P758600024263014624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030514 (n + 1) * A179645 (n + 1)

end

end A030631.P758600024263014624

namespace A030631

/-- `A030514(n+1)*A179645(n+1)` -/
def P758600024263014624.Spec : Prop :=
  ∀ n, P758600024263014624.a n = A030631 (n + 1)

theorem P758600024263014624.correct : P758600024263014624.Spec := by
  intro n
  simp only [A030631, Nat.add_sub_cancel, A030631.P758600024263014624.a, A030631.P2128528168171137643.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A030514, A030514.P11974636125371552077.a, A179645, A179645.P9823570256898303870.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A030631

/-! ## A030631.P4464127710233842034

`A001248(n+1)*A050997(n+1)*A050997(n+1)`
-/

namespace A030631.P4464127710233842034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001248 (n + 1) * A050997 (n + 1) * A050997 (n + 1)

end

end A030631.P4464127710233842034

namespace A030631

/-- `A001248(n+1)*A050997(n+1)*A050997(n+1)` -/
def P4464127710233842034.Spec : Prop :=
  ∀ n, P4464127710233842034.a n = A030631 (n + 1)

theorem P4464127710233842034.correct : P4464127710233842034.Spec := by
  intro n
  simp only [A030631, Nat.add_sub_cancel, A030631.P4464127710233842034.a, A030631.P2128528168171137643.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A001248, A001248.P16278241061688229202.a, A050997, A050997.P5231147570234137425.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A030631

/-! ## A030631.P9459041534213483015

`Δ[A024525(n)]^6`
-/

namespace A030631.P9459041534213483015
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024525 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) ^ 6

end

end A030631.P9459041534213483015

namespace A030631

/-- `Δ[A024525(n)]^6` -/
def P9459041534213483015.Spec : Prop :=
  ∀ n, P9459041534213483015.a n = A030631 (n + 1)

end A030631

/-! ## A030631.P5652532024977010169

`A280076(n+2)^6`
-/

namespace A030631.P5652532024977010169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280076 (n + 2) ^ 6

end

end A030631.P5652532024977010169

namespace A030631

/-- `A280076(n+2)^6` -/
def P5652532024977010169.Spec : Prop :=
  ∀ n, P5652532024977010169.a n = A030631 (n + 1)

end A030631

/-! ## A030631.P3349842754992710941

`p?[A000430(n+1)]^12`
-/

namespace A030631.P3349842754992710941
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000430 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) ^ 12

end

end A030631.P3349842754992710941

namespace A030631

/-- `p?[A000430(n+1)]^12` -/
def P3349842754992710941.Spec : Prop :=
  ∀ n, P3349842754992710941.a n = A030631 (n + 1)

end A030631

/-! ## A030631.P4210491208560844138

`record[A006530(n+2)^12]`
-/

namespace A030631.P4210491208560844138
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2) ^ 12

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A030631.P4210491208560844138

namespace A030631

/-- `record[A006530(n+2)^12]` -/
def P4210491208560844138.Spec : Prop :=
  ∀ n, P4210491208560844138.a n = A030631 (n + 1)

end A030631

/-! ## A030631.P14309832555069839127

`record[A020639(n+2)^12]`
-/

namespace A030631.P14309832555069839127
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2) ^ 12

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A030631.P14309832555069839127

namespace A030631

/-- `record[A020639(n+2)^12]` -/
def P14309832555069839127.Spec : Prop :=
  ∀ n, P14309832555069839127.a n = A030631 (n + 1)

end A030631

/-! ## A030631.P2240222982327787752

`(p?[comp[n²]]^3)²²`
-/

namespace A030631.P2240222982327787752
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) ^ 3) ^ 2) ^ 2

end

end A030631.P2240222982327787752

namespace A030631

/-- `(p?[comp[n²]]^3)²²` -/
def P2240222982327787752.Spec : Prop :=
  ∀ n, (P2240222982327787752.a n : ℤ) = A030631 (n + 1)

end A030631

/-!
# A030632: Numbers with 14 divisors.

The programs for A030632, there is no canonical definition to state claims against.
-/

/-! ## A030632.P12108068031879688826

`A079427(a(n-1))` with `a(0)=192`
-/

namespace A030632.P12108068031879688826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [192] fun n a =>
  A079427 (a (n - 1)).toNat

end

end A030632.P12108068031879688826

/-!
# A030633: Numbers with 15 divisors.

The programs for A030633, the canonical program `A030633.P9556005496549386793` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A030633 has offset 1).

The definition of A030633 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 763 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A030633.P9556005496549386793

`(eq[7, A062799(n+1)]+1)²`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A030633

/-- `(eq[7, A062799(n+1)]+1)²` -/
def P9556005496549386793.Spec : Prop :=
  ∀ n, (P9556005496549386793.a n : ℤ) = A030633 (n + 1)

theorem P9556005496549386793.correct : P9556005496549386793.Spec := by
  intro n
  simp only [A030633, Nat.add_sub_cancel]

end A030633

/-! ## A030633.P9486424405979331237

`(eq[8, A018892(n+1)]+1)²`
-/

namespace A030633.P9486424405979331237
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018892 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1) ^ 2

end

end A030633.P9486424405979331237

namespace A030633

/-- `(eq[8, A018892(n+1)]+1)²` -/
def P9486424405979331237.Spec : Prop :=
  ∀ n, (P9486424405979331237.a n : ℤ) = A030633 (n + 1)

end A030633

/-! ## A030633.P848719991314033469

`A131738(eq[8, A018892(n+1)])²`
-/

namespace A030633.P848719991314033469
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018892 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131738 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n) ^ 2

end

end A030633.P848719991314033469

namespace A030633

/-- `A131738(eq[8, A018892(n+1)])²` -/
def P848719991314033469.Spec : Prop :=
  ∀ n, P848719991314033469.a n = A030633 (n + 1)

end A030633

/-! ## A030633.P16429329332166149788

`eq[7, A062799(A233583(n+1))]²`
-/

namespace A030633.P16429329332166149788
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062799 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n ^ 2

end

end A030633.P16429329332166149788

namespace A030633

/-- `eq[7, A062799(A233583(n+1))]²` -/
def P16429329332166149788.Spec : Prop :=
  ∀ n, (P16429329332166149788.a n : ℤ) = A030633 (n + 1)

end A030633

/-! ## A030633.P3278958099575489391

`(eq[15, A000005((n+1)²)]+1)²`
-/

namespace A030633.P3278958099575489391
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  15

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 ((n + 1) ^ 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1) ^ 2

end

end A030633.P3278958099575489391

namespace A030633

/-- `(eq[15, A000005((n+1)²)]+1)²` -/
def P3278958099575489391.Spec : Prop :=
  ∀ n, (P3278958099575489391.a n : ℤ) = A030633 (n + 1)

end A030633

/-!
# A030634: Numbers with 16 divisors.

The programs for A030634, there is no canonical definition to state claims against.
-/

/-! ## A030634.P11048579804179901575

`filter[A400692(n+1), A359473(#)]`
-/

namespace A030634.P11048579804179901575
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A400692 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359473 (f1 j).toNat = 1) n)

end

end A030634.P11048579804179901575

/-! ## A030634.P6050569161238609865

`∩[A026477(n+1), A365535(n+1)]`
-/

namespace A030634.P6050569161238609865
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026477 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365535 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A030634.P6050569161238609865

/-! ## A030634.P5272749557763357182

`∩[A026477(n+1), A229153(n+1)]`
-/

namespace A030634.P5272749557763357182
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026477 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229153 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A030634.P5272749557763357182

/-! ## A030634.P5580952251098320278

`A002808(eq[16, A035004(n+1)])`
-/

namespace A030634.P5580952251098320278
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  16

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035004 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002808 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A030634.P5580952251098320278

/-! ## A030634.P17398971222821380767

`eq[15, A032741(n)]`
-/

namespace A030634.P17398971222821380767
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  15

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A030634.P17398971222821380767

/-! ## A030634.P13097111213598319006

`eq[30, A319410(n)]`
-/

namespace A030634.P13097111213598319006
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  30

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319410 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A030634.P13097111213598319006

/-! ## A030634.P841817020201866360

`eq[64, A145154(n)]`
-/

namespace A030634.P841817020201866360
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  64

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145154 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A030634.P841817020201866360

/-! ## A030634.P3517959379541162213

`eq[16, A000005(A028310(n))]`
-/

namespace A030634.P3517959379541162213
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  16

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A030634.P3517959379541162213

/-! ## A030634.P1371381027863658314

`A020725(eq[5, A010553(n+1)])`
-/

namespace A030634.P1371381027863658314
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010553 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A030634.P1371381027863658314

/-! ## A030634.P14215417953174575464

`A114637(eq[8, A056924(n+1)])`
-/

namespace A030634.P14215417953174575464
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056924 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114637 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A030634.P14215417953174575464

/-! ## A030634.P3557781491623241224

`A153152(eq[8, A056924(n+1)])`
-/

namespace A030634.P3557781491623241224
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056924 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153152 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A030634.P3557781491623241224

/-! ## A030634.P7075974564081572468

`eq[16, A000005(A138153(n+1))]`
-/

namespace A030634.P7075974564081572468
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  16

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A138153 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A030634.P7075974564081572468

/-!
# A030635: Numbers with 17 divisors.

The programs for A030635, the canonical program `A030635.P15991584686606319559` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A030635 has offset 1).

The definition of A030635 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A030635.P15991584686606319559

`A179645(n+1)²`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A030635

/-- `A179645(n+1)²` -/
def P15991584686606319559.Spec : Prop :=
  ∀ n, P15991584686606319559.a n = A030635 (n + 1)

theorem P15991584686606319559.correct : P15991584686606319559.Spec := by
  intro n
  simp only [A030635, Nat.add_sub_cancel]

end A030635

/-! ## A030635.P6456282929231349523

`Δ[A007504(n)]^16`
-/

namespace A030635.P6456282929231349523
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) ^ 16

end

end A030635.P6456282929231349523

namespace A030635

/-- `Δ[A007504(n)]^16` -/
def P6456282929231349523.Spec : Prop :=
  ∀ n, P6456282929231349523.a n = A030635 (n + 1)

end A030635

/-! ## A030635.P2178768044122682367

`A030514(n+1)^4`
-/

namespace A030635.P2178768044122682367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030514 (n + 1) ^ 4

end

end A030635.P2178768044122682367

namespace A030635

/-- `A030514(n+1)^4` -/
def P2178768044122682367.Spec : Prop :=
  ∀ n, P2178768044122682367.a n = A030635 (n + 1)

theorem P2178768044122682367.correct : P2178768044122682367.Spec := by
  intro n
  simp only [A030635, Nat.add_sub_cancel, A030635.P2178768044122682367.a, A030635.P15991584686606319559.a, A030514, A030514.P11974636125371552077.a, A179645, A179645.P9823570256898303870.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A030635

/-! ## A030635.P15527613461803844469

`A001248(n+1)^8`
-/

namespace A030635.P15527613461803844469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001248 (n + 1) ^ 8

end

end A030635.P15527613461803844469

namespace A030635

/-- `A001248(n+1)^8` -/
def P15527613461803844469.Spec : Prop :=
  ∀ n, P15527613461803844469.a n = A030635 (n + 1)

theorem P15527613461803844469.correct : P15527613461803844469.Spec := by
  intro n
  simp only [A030635, Nat.add_sub_cancel, A030635.P15527613461803844469.a, A030635.P15991584686606319559.a, A001248, A001248.P16278241061688229202.a, A179645, A179645.P9823570256898303870.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A030635

/-! ## A030635.P14009325298666764893

`A000040(n+1)^16`
-/

namespace A030635.P14009325298666764893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) ^ 16

end

end A030635.P14009325298666764893

namespace A030635

/-- `A000040(n+1)^16` -/
def P14009325298666764893.Spec : Prop :=
  ∀ n, P14009325298666764893.a n = A030635 (n + 1)

theorem P14009325298666764893.correct : P14009325298666764893.Spec := by
  intro n
  simp only [A030635, Nat.add_sub_cancel, A030635.P14009325298666764893.a, A030635.P15991584686606319559.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A179645, A179645.P9823570256898303870.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A030635

/-! ## A030635.P5022682108914259134

`Δ[A008348(n)]²²²²`
-/

namespace A030635.P5022682108914259134
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008348 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((((f1 (n + 1) - f1 n) ^ 2) ^ 2) ^ 2) ^ 2

end

end A030635.P5022682108914259134

namespace A030635

/-- `Δ[A008348(n)]²²²²` -/
def P5022682108914259134.Spec : Prop :=
  ∀ n, P5022682108914259134.a n = A030635 (n + 1)

end A030635

/-! ## A030635.P11105339311526586092

`A280076(n+2)^8`
-/

namespace A030635.P11105339311526586092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280076 (n + 2) ^ 8

end

end A030635.P11105339311526586092

namespace A030635

/-- `A280076(n+2)^8` -/
def P11105339311526586092.Spec : Prop :=
  ∀ n, P11105339311526586092.a n = A030635 (n + 1)

end A030635

/-! ## A030635.P16864117750154061985

`p?[n%3+n]^16`
-/

namespace A030635.P16864117750154061985
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n % 3 + n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) ^ 16

end

end A030635.P16864117750154061985

namespace A030635

/-- `p?[n%3+n]^16` -/
def P16864117750154061985.Spec : Prop :=
  ∀ n, (P16864117750154061985.a n : ℤ) = A030635 (n + 1)

end A030635

/-! ## A030635.P1983158098720519916

`record[A006530(n+2)^16]`
-/

namespace A030635.P1983158098720519916
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2) ^ 16

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A030635.P1983158098720519916

namespace A030635

/-- `record[A006530(n+2)^16]` -/
def P1983158098720519916.Spec : Prop :=
  ∀ n, P1983158098720519916.a n = A030635 (n + 1)

end A030635

/-! ## A030635.P9249466648367508230

`record[A020639(n+2)^16]`
-/

namespace A030635.P9249466648367508230
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2) ^ 16

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A030635.P9249466648367508230

namespace A030635

/-- `record[A020639(n+2)^16]` -/
def P9249466648367508230.Spec : Prop :=
  ∀ n, P9249466648367508230.a n = A030635 (n + 1)

end A030635

/-! ## A030635.P13399416531299333180

`p?[comp[n²]]²²²²`
-/

namespace A030635.P13399416531299333180
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (((f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) ^ 2) ^ 2) ^ 2) ^ 2

end

end A030635.P13399416531299333180

namespace A030635

/-- `p?[comp[n²]]²²²²` -/
def P13399416531299333180.Spec : Prop :=
  ∀ n, (P13399416531299333180.a n : ℤ) = A030635 (n + 1)

end A030635

/-! ## A030635.P9830475464256832203

`record[∑{p}[n+2, (#^4)^4]]`
-/

namespace A030635.P9830475464256832203
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f2 n), (p ^ 4) ^ 4

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A030635.P9830475464256832203

namespace A030635

/-- `record[∑{p}[n+2, (#^4)^4]]` -/
def P9830475464256832203.Spec : Prop :=
  ∀ n, (P9830475464256832203.a n : ℤ) = A030635 (n + 1)

end A030635

/-! ## A030635.P14636741353892323968

`p?[A014681(n)]^16`
-/

namespace A030635.P14636741353892323968
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014681 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) ^ 16

end

end A030635.P14636741353892323968

namespace A030635

/-- `p?[A014681(n)]^16` -/
def P14636741353892323968.Spec : Prop :=
  ∀ n, P14636741353892323968.a n = A030635 (n + 1)

end A030635

/-! ## A030635.P5349950902743692447

`record[A014963(n+2)^16]`
-/

namespace A030635.P5349950902743692447
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 2) ^ 16

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A030635.P5349950902743692447

namespace A030635

/-- `record[A014963(n+2)^16]` -/
def P5349950902743692447.Spec : Prop :=
  ∀ n, P5349950902743692447.a n = A030635 (n + 1)

end A030635

/-! ## A030635.P5215992854369538576

`record[A005065(n+2)²²]`
-/

namespace A030635.P5215992854369538576
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A005065 (n + 2) ^ 2) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A030635.P5215992854369538576

namespace A030635

/-- `record[A005065(n+2)²²]` -/
def P5215992854369538576.Spec : Prop :=
  ∀ n, P5215992854369538576.a n = A030635 (n + 1)

end A030635

/-! ## A030635.P6305816895930866393

`A017696(record[A006530(n+2)])`
-/

namespace A030635.P6305816895930866393
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017696 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A030635.P6305816895930866393

namespace A030635

/-- `A017696(record[A006530(n+2)])` -/
def P6305816895930866393.Spec : Prop :=
  ∀ n, P6305816895930866393.a n = A030635 (n + 1)

end A030635

/-!
# A030636: Numbers with 18 divisors.

The programs for A030636, the canonical program `A030636.P8220618962207978145` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A030636 has offset 1).

The definition of A030636 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 581 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A030636.P14826109795070341379

`filter[A064499(1+n), A123927(#)]`
-/

namespace A030636.P14826109795070341379
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064499 (1 + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A123927 (f1 j).toNat = 1) n)

end

end A030636.P14826109795070341379

namespace A030636

/-- `filter[A064499(1+n), A123927(#)]` -/
def P14826109795070341379.Spec : Prop :=
  ∀ n, P14826109795070341379.a n = A030636 (n + 1)

end A030636

/-! ## A030636.P10953926866084517636

`filter[A388983(n+1), A123927(#)]`
-/

namespace A030636.P10953926866084517636
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A388983 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A123927 (f1 j).toNat = 1) n)

end

end A030636.P10953926866084517636

namespace A030636

/-- `filter[A388983(n+1), A123927(#)]` -/
def P10953926866084517636.Spec : Prop :=
  ∀ n, P10953926866084517636.a n = A030636 (n + 1)

end A030636

/-! ## A030636.P7121869033075246835

`filter[A378878(n+1), A123927(#)]`
-/

namespace A030636.P7121869033075246835
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378878 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A123927 (f1 j).toNat = 1) n)

end

end A030636.P7121869033075246835

namespace A030636

/-- `filter[A378878(n+1), A123927(#)]` -/
def P7121869033075246835.Spec : Prop :=
  ∀ n, P7121869033075246835.a n = A030636 (n + 1)

end A030636

/-! ## A030636.P11284597014293787228

`filter[A284342(n+1), A123927(#)]`
-/

namespace A030636.P11284597014293787228
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284342 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A123927 (f1 j).toNat = 1) n)

end

end A030636.P11284597014293787228

namespace A030636

/-- `filter[A284342(n+1), A123927(#)]` -/
def P11284597014293787228.Spec : Prop :=
  ∀ n, P11284597014293787228.a n = A030636 (n + 1)

end A030636

/-! ## A030636.P13619658141665259875

`filter[A393201(n+1), A123927(#)]`
-/

namespace A030636.P13619658141665259875
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A393201 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A123927 (f1 j).toNat = 1) n)

end

end A030636.P13619658141665259875

namespace A030636

/-- `filter[A393201(n+1), A123927(#)]` -/
def P13619658141665259875.Spec : Prop :=
  ∀ n, P13619658141665259875.a n = A030636 (n + 1)

end A030636

/-! ## A030636.P8220618962207978145

`filter[A036457(n+1), A123927(#)]`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A030636

/-- `filter[A036457(n+1), A123927(#)]` -/
def P8220618962207978145.Spec : Prop :=
  ∀ n, P8220618962207978145.a n = A030636 (n + 1)

theorem P8220618962207978145.correct : P8220618962207978145.Spec := by
  intro n
  simp only [A030636, Nat.add_sub_cancel]

end A030636

/-! ## A030636.P8947613386228384339

`filter[A400692(n+1), A123927(#)]`
-/

namespace A030636.P8947613386228384339
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A400692 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A123927 (f1 j).toNat = 1) n)

end

end A030636.P8947613386228384339

namespace A030636

/-- `filter[A400692(n+1), A123927(#)]` -/
def P8947613386228384339.Spec : Prop :=
  ∀ n, P8947613386228384339.a n = A030636 (n + 1)

end A030636

/-! ## A030636.P14199129470008318749

`filter[A072588(n+1), A123927(#)]`
-/

namespace A030636.P14199129470008318749
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072588 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A123927 (f1 j).toNat = 1) n)

end

end A030636.P14199129470008318749

namespace A030636

/-- `filter[A072588(n+1), A123927(#)]` -/
def P14199129470008318749.Spec : Prop :=
  ∀ n, P14199129470008318749.a n = A030636 (n + 1)

end A030636

/-! ## A030636.P10005180179247191804

`filter[A267117(n+2), A123927(#)]`
-/

namespace A030636.P10005180179247191804
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267117 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A123927 (f1 j).toNat = 1) n)

end

end A030636.P10005180179247191804

namespace A030636

/-- `filter[A267117(n+2), A123927(#)]` -/
def P10005180179247191804.Spec : Prop :=
  ∀ n, P10005180179247191804.a n = A030636 (n + 1)

end A030636

/-! ## A030636.P2788699061555595242

`filter[A084679(n+1), A123927(#)]`
-/

namespace A030636.P2788699061555595242
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084679 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A123927 (f1 j).toNat = 1) n)

end

end A030636.P2788699061555595242

namespace A030636

/-- `filter[A084679(n+1), A123927(#)]` -/
def P2788699061555595242.Spec : Prop :=
  ∀ n, P2788699061555595242.a n = A030636 (n + 1)

end A030636

/-! ## A030636.P14053270116724317670

`filter[A070011(n+1), A123927(#)]`
-/

namespace A030636.P14053270116724317670
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070011 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A123927 (f1 j).toNat = 1) n)

end

end A030636.P14053270116724317670

namespace A030636

/-- `filter[A070011(n+1), A123927(#)]` -/
def P14053270116724317670.Spec : Prop :=
  ∀ n, P14053270116724317670.a n = A030636 (n + 1)

end A030636

/-! ## A030636.P16233067041598734760

`filter[A379336(n+1), A123927(#)]`
-/

namespace A030636.P16233067041598734760
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379336 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A123927 (f1 j).toNat = 1) n)

end

end A030636.P16233067041598734760

namespace A030636

/-- `filter[A379336(n+1), A123927(#)]` -/
def P16233067041598734760.Spec : Prop :=
  ∀ n, P16233067041598734760.a n = A030636 (n + 1)

end A030636

/-! ## A030636.P2442278987028605250

`filter[A376271(n+1), A123927(#)]`
-/

namespace A030636.P2442278987028605250
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376271 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A123927 (f1 j).toNat = 1) n)

end

end A030636.P2442278987028605250

namespace A030636

/-- `filter[A376271(n+1), A123927(#)]` -/
def P2442278987028605250.Spec : Prop :=
  ∀ n, P2442278987028605250.a n = A030636 (n + 1)

end A030636

/-! ## A030636.P5122203230833793981

`filter[A119357(n+2), A123927(#)]`
-/

namespace A030636.P5122203230833793981
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119357 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A123927 (f1 j).toNat = 1) n)

end

end A030636.P5122203230833793981

namespace A030636

/-- `filter[A119357(n+2), A123927(#)]` -/
def P5122203230833793981.Spec : Prop :=
  ∀ n, P5122203230833793981.a n = A030636 (n + 1)

end A030636

/-! ## A030636.P5135215287880220143

`filter[A323055(n+1), A123927(#)]`
-/

namespace A030636.P5135215287880220143
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323055 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A123927 (f1 j).toNat = 1) n)

end

end A030636.P5135215287880220143

namespace A030636

/-- `filter[A323055(n+1), A123927(#)]` -/
def P5135215287880220143.Spec : Prop :=
  ∀ n, P5135215287880220143.a n = A030636 (n + 1)

end A030636

/-! ## A030636.P4399889359842469125

`filter[A119885(n+1), A355447(#)]`
-/

namespace A030636.P4399889359842469125
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119885 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A355447 (f1 j).toNat = 1) n)

end

end A030636.P4399889359842469125

namespace A030636

/-- `filter[A119885(n+1), A355447(#)]` -/
def P4399889359842469125.Spec : Prop :=
  ∀ n, P4399889359842469125.a n = A030636 (n + 1)

end A030636

/-! ## A030636.P11792958829442111607

`record[A273943(A257416(n+1))/2]`
-/

namespace A030636.P11792958829442111607
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A273943 (A257416 (n + 1)).toNat : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A030636.P11792958829442111607

namespace A030636

/-- `record[A273943(A257416(n+1))/2]` -/
def P11792958829442111607.Spec : Prop :=
  ∀ n, P11792958829442111607.a n = (A030636 (n + 1) : ℚ)

end A030636

/-! ## A030636.P456426509039480620

`∩[A036457(n+1), A119885(n+1)]`
-/

namespace A030636.P456426509039480620
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036457 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119885 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A030636.P456426509039480620

namespace A030636

/-- `∩[A036457(n+1), A119885(n+1)]` -/
def P456426509039480620.Spec : Prop :=
  ∀ n, (P456426509039480620.a n : ℤ) = A030636 (n + 1)

end A030636

/-! ## A030636.P5924985725408505771

`∩[A064499(n+1), A119885(n+1)]`
-/

namespace A030636.P5924985725408505771
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064499 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119885 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A030636.P5924985725408505771

namespace A030636

/-- `∩[A064499(n+1), A119885(n+1)]` -/
def P5924985725408505771.Spec : Prop :=
  ∀ n, (P5924985725408505771.a n : ℤ) = A030636 (n + 1)

end A030636

/-! ## A030636.P17102244655847490605

`∩[A070011(n+1), A119885(n+1)]`
-/

namespace A030636.P17102244655847490605
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070011 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119885 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A030636.P17102244655847490605

namespace A030636

/-- `∩[A070011(n+1), A119885(n+1)]` -/
def P17102244655847490605.Spec : Prop :=
  ∀ n, (P17102244655847490605.a n : ℤ) = A030636 (n + 1)

end A030636

/-!
# A030637: Numbers with 19 divisors.

The programs for A030637, the canonical program `A030637.P81903294619043953` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A030637 has offset 1).

The definition of A030637 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A030637.P81903294619043953

`A179665(n+1)²`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A030637

/-- `A179665(n+1)²` -/
def P81903294619043953.Spec : Prop :=
  ∀ n, P81903294619043953.a n = A030637 (n + 1)

theorem P81903294619043953.correct : P81903294619043953.Spec := by
  intro n
  simp only [A030637, Nat.add_sub_cancel]

end A030637

/-! ## A030637.P5733442486912272560

`Δ[A007504(n)]^18`
-/

namespace A030637.P5733442486912272560
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) ^ 18

end

end A030637.P5733442486912272560

namespace A030637

/-- `Δ[A007504(n)]^18` -/
def P5733442486912272560.Spec : Prop :=
  ∀ n, P5733442486912272560.a n = A030637 (n + 1)

end A030637

/-! ## A030637.P14148161241043537514

`A030516(n+1)^3`
-/

namespace A030637.P14148161241043537514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030516 (n + 1) ^ 3

end

end A030637.P14148161241043537514

namespace A030637

/-- `A030516(n+1)^3` -/
def P14148161241043537514.Spec : Prop :=
  ∀ n, P14148161241043537514.a n = A030637 (n + 1)

theorem P14148161241043537514.correct : P14148161241043537514.Spec := by
  intro n
  simp only [A030637, Nat.add_sub_cancel, A030637.P14148161241043537514.a, A030637.P81903294619043953.a, A030516, A030516.P1711246340231228216.a, A179665, A179665.P967492933399289079.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A030637

/-! ## A030637.P5712428437741767988

`A030078(n+1)^6`
-/

namespace A030637.P5712428437741767988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030078 (n + 1) ^ 6

end

end A030637.P5712428437741767988

namespace A030637

/-- `A030078(n+1)^6` -/
def P5712428437741767988.Spec : Prop :=
  ∀ n, P5712428437741767988.a n = A030637 (n + 1)

theorem P5712428437741767988.correct : P5712428437741767988.Spec := by
  intro n
  simp only [A030637, Nat.add_sub_cancel, A030637.P5712428437741767988.a, A030637.P81903294619043953.a, A030078, A030078.P13819432151207990454.a, A179665, A179665.P967492933399289079.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A030637

/-! ## A030637.P18154754453456721139

`A001248(n+1)^9`
-/

namespace A030637.P18154754453456721139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001248 (n + 1) ^ 9

end

end A030637.P18154754453456721139

namespace A030637

/-- `A001248(n+1)^9` -/
def P18154754453456721139.Spec : Prop :=
  ∀ n, P18154754453456721139.a n = A030637 (n + 1)

theorem P18154754453456721139.correct : P18154754453456721139.Spec := by
  intro n
  simp only [A030637, Nat.add_sub_cancel, A030637.P18154754453456721139.a, A030637.P81903294619043953.a, A001248, A001248.P16278241061688229202.a, A179665, A179665.P967492933399289079.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A030637

/-! ## A030637.P3770670459125883676

`A000040(n+1)^18`
-/

namespace A030637.P3770670459125883676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) ^ 18

end

end A030637.P3770670459125883676

namespace A030637

/-- `A000040(n+1)^18` -/
def P3770670459125883676.Spec : Prop :=
  ∀ n, P3770670459125883676.a n = A030637 (n + 1)

theorem P3770670459125883676.correct : P3770670459125883676.Spec := by
  intro n
  simp only [A030637, Nat.add_sub_cancel, A030637.P3770670459125883676.a, A030637.P81903294619043953.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A179665, A179665.P967492933399289079.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A030637

/-! ## A030637.P12018481439653973817

`(Δ[A242188(n)]^3)²`
-/

namespace A030637.P12018481439653973817
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242188 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((f1 (n + 1) - f1 n) ^ 3) ^ 2

end

end A030637.P12018481439653973817

namespace A030637

/-- `(Δ[A242188(n)]^3)²` -/
def P12018481439653973817.Spec : Prop :=
  ∀ n, P12018481439653973817.a n = A030637 (n + 1)

end A030637

/-! ## A030637.P3777498120868715228

`A280076(n+2)^9`
-/

namespace A030637.P3777498120868715228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280076 (n + 2) ^ 9

end

end A030637.P3777498120868715228

namespace A030637

/-- `A280076(n+2)^9` -/
def P3777498120868715228.Spec : Prop :=
  ∀ n, P3777498120868715228.a n = A030637 (n + 1)

end A030637

/-! ## A030637.P13100296645561447738

`record[A006530(n+2)^18]`
-/

namespace A030637.P13100296645561447738
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2) ^ 18

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A030637.P13100296645561447738

namespace A030637

/-- `record[A006530(n+2)^18]` -/
def P13100296645561447738.Spec : Prop :=
  ∀ n, P13100296645561447738.a n = A030637 (n + 1)

end A030637

/-! ## A030637.P16229781186300160983

`record[A020639(n+2)^18]`
-/

namespace A030637.P16229781186300160983
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2) ^ 18

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A030637.P16229781186300160983

namespace A030637

/-- `record[A020639(n+2)^18]` -/
def P16229781186300160983.Spec : Prop :=
  ∀ n, P16229781186300160983.a n = A030637 (n + 1)

end A030637

/-! ## A030637.P18401910760851309404

`p?[A014681(n)]^18`
-/

namespace A030637.P18401910760851309404
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014681 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) ^ 18

end

end A030637.P18401910760851309404

namespace A030637

/-- `p?[A014681(n)]^18` -/
def P18401910760851309404.Spec : Prop :=
  ∀ n, P18401910760851309404.a n = A030637 (n + 1)

end A030637

/-! ## A030637.P11421199183559437315

`record[A014963(n+2)^18]`
-/

namespace A030637.P11421199183559437315
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 2) ^ 18

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A030637.P11421199183559437315

namespace A030637

/-- `record[A014963(n+2)^18]` -/
def P11421199183559437315.Spec : Prop :=
  ∀ n, P11421199183559437315.a n = A030637 (n + 1)

end A030637

/-! ## A030637.P7129516526169325401

`A017700(A000040(n+1))`
-/

namespace A030637.P7129516526169325401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017700 (A000040 (n + 1)).toNat

end

end A030637.P7129516526169325401

namespace A030637

/-- `A017700(A000040(n+1))` -/
def P7129516526169325401.Spec : Prop :=
  ∀ n, P7129516526169325401.a n = A030637 (n + 1)

end A030637

/-! ## A030637.P13666904246528143994

`A001017(p?[A143051(n)])²`
-/

namespace A030637.P13666904246528143994
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143051 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001017 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat ^ 2

end

end A030637.P13666904246528143994

namespace A030637

/-- `A001017(p?[A143051(n)])²` -/
def P13666904246528143994.Spec : Prop :=
  ∀ n, P13666904246528143994.a n = A030637 (n + 1)

end A030637

/-! ## A030637.P17274751528342687939

`A001017(record[A014963(n+2)])²`
-/

namespace A030637.P17274751528342687939
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001017 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat ^ 2

end

end A030637.P17274751528342687939

namespace A030637

/-- `A001017(record[A014963(n+2)])²` -/
def P17274751528342687939.Spec : Prop :=
  ∀ n, P17274751528342687939.a n = A030637 (n + 1)

end A030637

/-! ## A030637.P6659144760382134216

`p?[A056847(n)]^18`
-/

namespace A030637.P6659144760382134216
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056847 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) ^ 18

end

end A030637.P6659144760382134216

namespace A030637

/-- `p?[A056847(n)]^18` -/
def P6659144760382134216.Spec : Prop :=
  ∀ n, P6659144760382134216.a n = A030637 (n + 1)

end A030637

/-! ## A030637.P6710240206933642810

`p?[A090223(n)]^18`
-/

namespace A030637.P6710240206933642810
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090223 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) ^ 18

end

end A030637.P6710240206933642810

namespace A030637

/-- `p?[A090223(n)]^18` -/
def P6710240206933642810.Spec : Prop :=
  ∀ n, P6710240206933642810.a n = A030637 (n + 1)

end A030637

/-!
# A030638: Numbers with 20 divisors.

The programs for A030638, the canonical program `A030638.P15405668562279692418` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A030638 has offset 1).

The definition of A030638 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 157 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A030638.P15405668562279692418

`eq[5, A007318(A032741(n))]`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A030638

/-- `eq[5, A007318(A032741(n))]` -/
def P15405668562279692418.Spec : Prop :=
  ∀ n, (P15405668562279692418.a n : ℤ) = A030638 (n + 1)

theorem P15405668562279692418.correct : P15405668562279692418.Spec := by
  intro n
  simp only [A030638, Nat.add_sub_cancel]

end A030638

/-! ## A030638.P14168471359262774991

`eq[15, A061392(A145154(n))]`
-/

namespace A030638.P14168471359262774991
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  15

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061392 (A145154 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A030638.P14168471359262774991

namespace A030638

/-- `eq[15, A061392(A145154(n))]` -/
def P14168471359262774991.Spec : Prop :=
  ∀ n, (P14168471359262774991.a n : ℤ) = A030638 (n + 1)

end A030638

/-! ## A030638.P1638715634695674213

`eq[20, A000005(A028310(n))]`
-/

namespace A030638.P1638715634695674213
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  20

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A030638.P1638715634695674213

namespace A030638

/-- `eq[20, A000005(A028310(n))]` -/
def P1638715634695674213.Spec : Prop :=
  ∀ n, (P1638715634695674213.a n : ℤ) = A030638 (n + 1)

end A030638

/-! ## A030638.P4226086360150978952

`record[A174571(A257417(n+1))]`
-/

namespace A030638.P4226086360150978952
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174571 (A257417 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A030638.P4226086360150978952

namespace A030638

/-- `record[A174571(A257417(n+1))]` -/
def P4226086360150978952.Spec : Prop :=
  ∀ n, P4226086360150978952.a n = A030638 (n + 1)

end A030638

/-!
# A030639: Weight distribution of [128,43,32] extended binary primitive BCH (or XBCH) code.

The programs for A030639, there is no canonical definition to state claims against.
-/

/-! ## A030639.P6487596417811296600

`A129374(n)*A151810(A227316(n))`
-/

namespace A030639.P6487596417811296600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129374 n * A151810 (A227316 n).toNat

end

end A030639.P6487596417811296600

/-! ## A030639.P6595271632081612322

`A151810(A227316(n))*A266448(n)`
-/

namespace A030639.P6595271632081612322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151810 (A227316 n).toNat * A266448 n

end

end A030639.P6595271632081612322

/-!
# A030640: Discriminant of lattice A_n of determinant n+1.

The programs for A030640, the canonical program `A030640.P18319959155777590497` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A030640 has offset 0).

The definition of A030640 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A030640.P13439439355724576471

`ogf((1+x-x^2)/(1+2x^2+x^4))`
-/

namespace A030640.P13439439355724576471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 1, -1] [1, 0, 2, 0, 1] n

end

end A030640.P13439439355724576471

namespace A030640

/-- `ogf((1+x-x^2)/(1+2x^2+x^4))` -/
def P13439439355724576471.Spec : Prop :=
  ∀ n, P13439439355724576471.a n = A030640 n

end A030640

/-! ## A030640.P18319959155777590497

`(-1)^floor(n/2)*A026741(n+1)`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A030640

/-- `(-1)^floor(n/2)*A026741(n+1)` -/
def P18319959155777590497.Spec : Prop :=
  ∀ n, P18319959155777590497.a n = (A030640 n : ℚ)

end A030640

/-! ## A030640.P9846304420872080610

`lcm(2, n+1)/(xor(2, n)-n)`
-/

namespace A030640.P9846304420872080610
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.lcm 2 (n + 1) : ℚ) / ((Nat.xor 2 n : ℤ) - (n : ℤ) : ℚ)

end

end A030640.P9846304420872080610

namespace A030640

/-- `lcm(2, n+1)/(xor(2, n)-n)` -/
def P9846304420872080610.Spec : Prop :=
  ∀ n, P9846304420872080610.a n = (A030640 n : ℚ)

end A030640

/-! ## A030640.P929963926585641059

`(1-and(2, n))*gcd(n+1, ∑[n])`
-/

namespace A030640.P929963926585641059
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - (Nat.land 2 n : ℤ)) * (Nat.gcd (n + 1) (∑ j ∈ Finset.range (n + 1), f1 j) : ℤ)

end

end A030640.P929963926585641059

namespace A030640

/-- `(1-and(2, n))*gcd(n+1, ∑[n])` -/
def P929963926585641059.Spec : Prop :=
  ∀ n, P929963926585641059.a n = A030640 n

end A030640

/-! ## A030640.P1300409366231829313

`a(n-2)/(n/∑[n]-1)` with `a(0)=1, a(1)=1`
-/

namespace A030640.P1300409366231829313
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 1] fun n a =>
  a (n - 2) / ((n : ℚ) / ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) - 1)

end

end A030640.P1300409366231829313

namespace A030640

/-- `a(n-2)/(n/∑[n]-1)` -/
def P1300409366231829313.Spec : Prop :=
  ∀ n, P1300409366231829313.a n = (A030640 n : ℚ)

end A030640

/-! ## A030640.P1070058570425444517

`(2/(1-n)-1)*a(n-2)` with `a(0)=1, a(1)=1`
-/

namespace A030640.P1070058570425444517
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 1] fun n a =>
  (2 / (1 - (n : ℤ) : ℚ) - 1) * a (n - 2)

end

end A030640.P1070058570425444517

namespace A030640

/-- `(2/(1-n)-1)*a(n-2)` -/
def P1070058570425444517.Spec : Prop :=
  ∀ n, P1070058570425444517.a n = (A030640 n : ℚ)

end A030640

/-! ## A030640.P11149783372282329795

`floor(a(n-2))/(2/(n+1)-1)` with `a(0)=1, a(1)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A030640.P11149783372282329795
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 1] fun n a =>
  (⌊a (n - 2)⌋ : ℚ) / (2 / (n + 1 : ℚ) - 1)

end

end A030640.P11149783372282329795

namespace A030640

/-- `floor(a(n-2))/(2/(n+1)-1)` -/
def P11149783372282329795.Spec : Prop :=
  ∀ n, P11149783372282329795.a n = (A030640 n : ℚ)

end A030640

/-! ## A030640.P6537109294787175461

`A026741(n+1)*A057077(n)`
-/

namespace A030640.P6537109294787175461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (n + 1) * A057077 n

end

end A030640.P6537109294787175461

namespace A030640

/-- `A026741(n+1)*A057077(n)` -/
def P6537109294787175461.Spec : Prop :=
  ∀ n, P6537109294787175461.a n = A030640 n

end A030640

/-! ## A030640.P10006514620948876663

`xor(A057077(n), A065423(n+1))`
-/

namespace A030640.P10006514620948876663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A057077 n) (A065423 (n + 1))

end

end A030640.P10006514620948876663

namespace A030640

/-- `xor(A057077(n), A065423(n+1))` -/
def P10006514620948876663.Spec : Prop :=
  ∀ n, P10006514620948876663.a n = A030640 n

end A030640

/-! ## A030640.P1828926892338244570

`Δ[∑[2*A026741(n)]/2]/A057077(n)`
-/

namespace A030640.P1828926892338244570
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A026741 n

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℤ) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) / (A057077 n : ℚ)

end

end A030640.P1828926892338244570

namespace A030640

/-- `Δ[∑[2*A026741(n)]/2]/A057077(n)` -/
def P1828926892338244570.Spec : Prop :=
  ∀ n, P1828926892338244570.a n = (A030640 n : ℚ)

end A030640

/-! ## A030640.P9026194986407025228

`A000027((n+1)/(n%2+1))/A057077(n)`
-/

namespace A030640.P9026194986407025228
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000027 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / ((n % 2 + 1 : ℕ) : ℚ))).toNat : ℚ) / (A057077 n : ℚ)

end

end A030640.P9026194986407025228

namespace A030640

/-- `A000027((n+1)/(n%2+1))/A057077(n)` -/
def P9026194986407025228.Spec : Prop :=
  ∀ n, P9026194986407025228.a n = (A030640 n : ℚ)

end A030640

/-! ## A030640.P11818411366069585715

`Δ[A000217(ceil(3*n/2))/3]/A057077(n)`
-/

namespace A030640.P11818411366069585715
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000217 ⌈3 * ((n : ℚ) / 2)⌉.toNat : ℚ) / 3

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) / (A057077 n : ℚ)

end

end A030640.P11818411366069585715

namespace A030640

/-- `Δ[A000217(ceil(3*n/2))/3]/A057077(n)` -/
def P11818411366069585715.Spec : Prop :=
  ∀ n, P11818411366069585715.a n = (A030640 n : ℚ)

end A030640

/-! ## A030640.P11622890916221840131

`A009531(n+1)-A009531(n)*A152271(n)`
-/

namespace A030640.P11622890916221840131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009531 (n + 1) - A009531 n * A152271 n

end

end A030640.P11622890916221840131

namespace A030640

/-- `A009531(n+1)-A009531(n)*A152271(n)` -/
def P11622890916221840131.Spec : Prop :=
  ∀ n, P11622890916221840131.a n = A030640 n

end A030640

/-! ## A030640.P16923355778005032393

`Δ[A001318(n)]*A057077(n)`
-/

namespace A030640.P16923355778005032393
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001318 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A057077 n

end

end A030640.P16923355778005032393

namespace A030640

/-- `Δ[A001318(n)]*A057077(n)` -/
def P16923355778005032393.Spec : Prop :=
  ∀ n, P16923355778005032393.a n = A030640 n

end A030640

/-! ## A030640.P10634862930088749239

`(A001318(n+1)-A001318(n))*A057077(n)`
-/

namespace A030640.P10634862930088749239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A001318 (n + 1) - A001318 n) * A057077 n

end

end A030640.P10634862930088749239

namespace A030640

/-- `(A001318(n+1)-A001318(n))*A057077(n)` -/
def P10634862930088749239.Spec : Prop :=
  ∀ n, P10634862930088749239.a n = A030640 n

end A030640

/-! ## A030640.P11277379945097712359

`A374157(n+1)/(A033999(n)-A000035(n))`
-/

namespace A030640.P11277379945097712359
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A374157 (n + 1) : ℚ) / (A033999 n - A000035 n : ℚ)

end

end A030640.P11277379945097712359

namespace A030640

/-- `A374157(n+1)/(A033999(n)-A000035(n))` -/
def P11277379945097712359.Spec : Prop :=
  ∀ n, P11277379945097712359.a n = (A030640 n : ℚ)

end A030640

/-! ## A030640.P17380300232895568546

`(A001318(n)-A001318(n+1))*A087960(n+1)`
-/

namespace A030640.P17380300232895568546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A001318 n - A001318 (n + 1)) * A087960 (n + 1)

end

end A030640.P17380300232895568546

namespace A030640

/-- `(A001318(n)-A001318(n+1))*A087960(n+1)` -/
def P17380300232895568546.Spec : Prop :=
  ∀ n, P17380300232895568546.a n = A030640 n

end A030640

/-! ## A030640.P5149821170315942580

`(n+1)/A228826(n+3)`
-/

namespace A030640.P5149821170315942580
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A228826 (n + 3) : ℚ)

end

end A030640.P5149821170315942580

namespace A030640

/-- `(n+1)/A228826(n+3)` -/
def P5149821170315942580.Spec : Prop :=
  ∀ n, P5149821170315942580.a n = (A030640 n : ℚ)

end A030640

/-! ## A030640.P14580843857651782376

`A076118(A001651(n+1))`
-/

namespace A030640.P14580843857651782376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076118 (A001651 (n + 1)).toNat

end

end A030640.P14580843857651782376

namespace A030640

/-- `A076118(A001651(n+1))` -/
def P14580843857651782376.Spec : Prop :=
  ∀ n, P14580843857651782376.a n = A030640 n

end A030640

/-! ## A030640.P16263048176454176048

`(n+1)/A128016(3*n)`
-/

namespace A030640.P16263048176454176048
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A128016 (3 * n) : ℚ)

end

end A030640.P16263048176454176048

namespace A030640

/-- `(n+1)/A128016(3*n)` -/
def P16263048176454176048.Spec : Prop :=
  ∀ n, P16263048176454176048.a n = (A030640 n : ℚ)

end A030640

/-!
# A030644: Decimal expansion of 10 - Pi.

The programs for A030644, there is no canonical definition to state claims against.
-/

/-! ## A030644.P9551998605351044499

`9-A000796(n)`
-/

namespace A030644.P9551998605351044499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  9 - A000796 (n + 1)

end

end A030644.P9551998605351044499

/-! ## A030644.P6675196611727820074

`10-A123152(n+1)`
-/

namespace A030644.P6675196611727820074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  10 - A123152 (n + 1)

end

end A030644.P6675196611727820074

/-! ## A030644.P4104371442225650670

`9-sqrt(A072448(n+1))`
-/

namespace A030644.P4104371442225650670
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  9 - Real.sqrt (A072448 (n + 1) : ℝ)

end

end A030644.P4104371442225650670

/-! ## A030644.P4224820527627935281

`9-A065253(n+1)%10`
-/

namespace A030644.P4224820527627935281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  9 - Int.tmod (A065253 (n + 1)) 10

end

end A030644.P4224820527627935281

/-! ## A030644.P6084014480830818116

`A153799(n)+Δ[A000796(n)]`
-/

namespace A030644.P6084014480830818116
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000796 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153799 n + (f1 (n + 1) - f1 n)

end

end A030644.P6084014480830818116

/-! ## A030644.P14534487729941513426

`A153799(n)+A095916(n+1)`
-/

namespace A030644.P14534487729941513426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153799 n + A095916 (n + 1)

end

end A030644.P14534487729941513426

/-! ## A030644.P8079391066403557720

`A010733(n)-A054249(n+1)`
-/

namespace A030644.P8079391066403557720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010733 n - A054249 (n + 1)

end

end A030644.P8079391066403557720

/-! ## A030644.P18059793201970468484

`A017377(n)-A081737(n+1)`
-/

namespace A030644.P18059793201970468484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017377 n - A081737 (n + 1)

end

end A030644.P18059793201970468484

/-! ## A030644.P7741250676446936696

`A010729(n)+1-A054249(n+1)`
-/

namespace A030644.P7741250676446936696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010729 n + (1 - A054249 (n + 1))

end

end A030644.P7741250676446936696

/-! ## A030644.P118344729416364862

`A010724(n)+2-A054249(n+1)`
-/

namespace A030644.P118344729416364862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010724 n + (2 - A054249 (n + 1))

end

end A030644.P118344729416364862

/-! ## A030644.P4247703006397719277

`9-Δ[A227844(n+2)-A227844(n+1)]`
-/

namespace A030644.P4247703006397719277
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227844 (n + 2) - A227844 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  9 - (f1 (n + 1) - f1 n)

end

end A030644.P4247703006397719277

/-! ## A030644.P12269000016074253473

`9-A001355(Δ[n²])`
-/

namespace A030644.P12269000016074253473
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  9 - A001355 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A030644.P12269000016074253473

/-! ## A030644.P962662372309672483

`9-A076790(Δ[n²])`
-/

namespace A030644.P962662372309672483
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  9 - A076790 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A030644.P962662372309672483

/-! ## A030644.P1180027176782996430

`9-A110766(2*n+1)`
-/

namespace A030644.P1180027176782996430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  9 - A110766 (2 * n + 1)

end

end A030644.P1180027176782996430

/-! ## A030644.P3859837294730596795

`9-Δ[A059582(n)]`
-/

namespace A030644.P3859837294730596795
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059582 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  9 - (f1 (n + 1) - f1 n)

end

end A030644.P3859837294730596795

/-! ## A030644.P12235004987966066316

`9-A097902(∑[n+2]-1)`
-/

namespace A030644.P12235004987966066316
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  9 - A097902 (∑ j ∈ Finset.range (n + 1), f1 j - 1)

end

end A030644.P12235004987966066316

/-!
# A030645: Weight enumerator of [ 40,19,10 ] shortened QR code.

The programs for A030645, there is no canonical definition to state claims against.
-/

/-! ## A030645.P7486037452931400218

`∑{d}[C(2^n, 6*n), #]`
-/

namespace A030645.P7486037452931400218
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (2 ^ n) (6 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), d

end

end A030645.P7486037452931400218

/-! ## A030645.P11102070069850144687

`C(4^n-2^n, (lcm(5, n)/gcd(5, n))²)`
-/

namespace A030645.P11102070069850144687
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose ((4 ^ n : ℤ) - (2 ^ n : ℤ)).toNat (SequenceMachineLib.roundAway (((Nat.lcm 5 n : ℚ) / (Nat.gcd 5 n : ℚ)) ^ 2)).toNat

end

end A030645.P11102070069850144687

/-!
# A030646: Weight enumerator of [ 42,21,10 ] XQR code.

The programs for A030646, there is no canonical definition to state claims against.
-/

/-! ## A030646.P2057601427877453992

`A146075(2*n)`
-/

namespace A030646.P2057601427877453992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146075 (2 * n)

end

end A030646.P2057601427877453992

/-! ## A030646.P12639315416016676487

`A146075(A004277(n))+A000007(n)`
-/

namespace A030646.P12639315416016676487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146075 (A004277 n).toNat + A000007 n

end

end A030646.P12639315416016676487

/-!
# A030647: Dimension of multiples of minimal representation of complex Lie algebra F4.

The programs for A030647, the canonical program `A030647.P5228894558019639450` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A030647 has offset 1).

The definition of A030647 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A030647.P5228894558019639450

`Δ[A030648(n)]`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A030647

/-- `Δ[A030648(n)]` -/
def P5228894558019639450.Spec : Prop :=
  ∀ n, P5228894558019639450.a n = A030647 (n + 1)

theorem P5228894558019639450.correct : P5228894558019639450.Spec := by
  intro n
  simp only [A030647, Nat.add_sub_cancel]

end A030647

/-! ## A030647.P10527154036007801160

`A030648(n+1)-A030648(n)`
-/

namespace A030647.P10527154036007801160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030648 (n + 1) - A030648 n

end

end A030647.P10527154036007801160

namespace A030647

/-- `A030648(n+1)-A030648(n)` -/
def P10527154036007801160.Spec : Prop :=
  ∀ n, P10527154036007801160.a n = A030647 (n + 1)

theorem P10527154036007801160.correct : P10527154036007801160.Spec := by
  intro n
  simp only [A030647, Nat.add_sub_cancel, A030647.P10527154036007801160.a, A030647.P5228894558019639450.f1, A030647.P5228894558019639450.a, SequenceMachineLib.memo_apply]

end A030647

/-!
# A030648: Dimensions of multiples of minimal representation of complex Lie algebra E6.

The programs for A030648, the canonical program `A030648.P116404473214068725` is in `Seq.B000.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A030648 has offset 0).

The definition of A030648 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A030648.P116404473214068725

`C(n+8, 8)*C(n+11, 8)/165`

The canonical program, it is in `Seq.B000.C007`.
-/

namespace A030648

/-- `C(n+8, 8)*C(n+11, 8)/165` -/
def P116404473214068725.Spec : Prop :=
  ∀ n, P116404473214068725.a n = (A030648 n : ℚ)

end A030648

/-! ## A030648.P12818567523775461088

`A030647(n)+a(n-1)` with `a(0)=1`
-/

namespace A030648.P12818567523775461088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A030647 n + a (n - 1)

end

end A030648.P12818567523775461088

namespace A030648

/-- `A030647(n)+a(n-1)` -/
def P12818567523775461088.Spec : Prop :=
  ∀ n, P12818567523775461088.a n = A030648 n

end A030648

/-! ## A030648.P14668927273534893378

`a(n-1)-(A000038(n)-A030647(n))` with `a(0)=1`
-/

namespace A030648.P14668927273534893378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) - (A000038 n - A030647 n)

end

end A030648.P14668927273534893378

namespace A030648

/-- `a(n-1)-(A000038(n)-A030647(n))` -/
def P14668927273534893378.Spec : Prop :=
  ∀ n, P14668927273534893378.a n = A030648 n

end A030648

/-! ## A030648.P2000273785787421109

`∑[A030647(n+1)]+1-A030647(n+1)`
-/

namespace A030648.P2000273785787421109
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030647 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (1 - A030647 (n + 1))

end

end A030648.P2000273785787421109

namespace A030648

/-- `∑[A030647(n+1)]+1-A030647(n+1)` -/
def P2000273785787421109.Spec : Prop :=
  ∀ n, P2000273785787421109.a n = A030648 n

end A030648

/-! ## A030648.P18044113273730731971

`A000581(n+8)/A105250(n)*A105254(n)`
-/

namespace A030648.P18044113273730731971
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000581 (n + 8) : ℚ) / (A105250 n : ℚ) * (A105254 n : ℚ)

end

end A030648.P18044113273730731971

namespace A030648

/-- `A000581(n+8)/A105250(n)*A105254(n)` -/
def P18044113273730731971.Spec : Prop :=
  ∀ n, P18044113273730731971.a n = (A030648 n : ℚ)

end A030648

/-! ## A030648.P12911126012044380103

`A105944(n)/165`
-/

namespace A030648.P12911126012044380103
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A105944 n : ℚ) / 165

end

end A030648.P12911126012044380103

namespace A030648

/-- `A105944(n)/165` -/
def P12911126012044380103.Spec : Prop :=
  ∀ n, P12911126012044380103.a n = (A030648 n : ℚ)

end A030648

/-!
# A030649: Dimensions of multiples of minimal representation of complex Lie algebra E7.

The programs for A030649, there is no canonical definition to state claims against.
-/

/-! ## A030649.P9642087699091261890

`A121736(A132210(1+n))`
-/

namespace A030649.P9642087699091261890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121736 (A132210 (1 + n)).toNat

end

end A030649.P9642087699091261890

/-!
# A030652: Continued fraction for Gamma(2/3).

The programs for A030652, there is no canonical definition to state claims against.
-/

/-! ## A030652.P4704428399256456417

`A141021(A057195(n+1))`
-/

namespace A030652.P4704428399256456417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141021 (A057195 (n + 1)).toNat

end

end A030652.P4704428399256456417

/-! ## A030652.P4614685214897595627

`A006519(∑[A278648(n)!])`
-/

namespace A030652.P4614685214897595627
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A278648 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006519 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A030652.P4614685214897595627

/-! ## A030652.P5320266838577267940

`A076775(∑[A278648(n)!])`
-/

namespace A030652.P5320266838577267940
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A278648 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076775 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A030652.P5320266838577267940

/-!
# A030653: n^3*a(n) is the number of circles in complex projective plane tangent to three smooth curves of degree n in general position.

The programs for A030653, the canonical program `A030653.P17752569690597270032` is in `Seq.B000.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A030653 has offset 1).

The definition of A030653 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A030653.P671998784741302414

`ogf((4+7x-8x^2+3x^3)/(1-4x+6x^2-4x^3+x^4))`
-/

namespace A030653.P671998784741302414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [4, 7, -8, 3] [1, -4, 6, -4, 1] n

end

end A030653.P671998784741302414

namespace A030653

/-- `ogf((4+7x-8x^2+3x^3)/(1-4x+6x^2-4x^3+x^4))` -/
def P671998784741302414.Spec : Prop :=
  ∀ n, P671998784741302414.a n = A030653 (n + 1)

end A030653

/-! ## A030653.P17752569690597270032

`(n+1)^3+3*(n+1)²+3*(n+1)-3`

The canonical program, it is in `Seq.B000.C007`.
-/

namespace A030653

/-- `(n+1)^3+3*(n+1)²+3*(n+1)-3` -/
def P17752569690597270032.Spec : Prop :=
  ∀ n, P17752569690597270032.a n = A030653 (n + 1)

theorem P17752569690597270032.correct : P17752569690597270032.Spec := by
  intro n
  simp only [A030653, Nat.add_sub_cancel]

end A030653

/-! ## A030653.P1269016415865213829

`4*a(n-1)-6*a(n-2)+4*a(n-3)-a(n-4)` with `a(0)=4, a(1)=23, a(2)=60, a(3)=121`
-/

namespace A030653.P1269016415865213829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [4, 23, 60, 121] fun n a =>
  4 * a (n - 1) - 6 * a (n - 2) + 4 * a (n - 3) - a (n - 4)

end

end A030653.P1269016415865213829

namespace A030653

/-- `4*a(n-1)-6*a(n-2)+4*a(n-3)-a(n-4)` -/
def P1269016415865213829.Spec : Prop :=
  ∀ n, P1269016415865213829.a n = A030653 (n + 1)

theorem P1269016415865213829.correct : P1269016415865213829.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 | 3 =>
      simp [A030653, Nat.add_sub_cancel, A030653.P1269016415865213829.a, A030653.P17752569690597270032.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 4 =>
      have h1 := ih (m + 3) (by omega)
      have h2 := ih (m + 2) (by omega)
      have h3 := ih (m + 1) (by omega)
      have h4 := ih m (by omega)
      simp only [A030653, Nat.add_sub_cancel, A030653.P1269016415865213829.a, A030653.P17752569690597270032.a, SequenceMachineLib.memo_apply] at h1 h2 h3 h4 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 4 - 1 = m + 3 by omega, show m + 4 - 2 = m + 2 by omega, show m + 4 - 3 = m + 1 by omega, show m + 4 - 4 = m by omega, show m + 3 < m + 4 by omega, show m + 2 < m + 4 by omega, show m + 1 < m + 4 by omega, show m < m + 4 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 h4 ⊢
      rw [h1, h2, h3, h4]
      first | ring1 | ring_nf | (field_simp; (first | ring1 | ring_nf)) | omega | (push_cast; ring_nf) | nlinarith

end A030653

/-! ## A030653.P2404488618629643252

`record[abs(4-n^3)]`
-/

namespace A030653.P2404488618629643252
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |4 - (n ^ 3 : ℤ)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A030653.P2404488618629643252

namespace A030653

/-- `record[abs(4-n^3)]` -/
def P2404488618629643252.Spec : Prop :=
  ∀ n, P2404488618629643252.a n = A030653 (n + 1)

end A030653

/-! ## A030653.P13319653810331628369

`sqrt(record[(4-n^3)²])`
-/

namespace A030653.P13319653810331628369
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (4 - (n ^ 3 : ℤ)) ^ 2

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℝ)

end

end A030653.P13319653810331628369

namespace A030653

/-- `sqrt(record[(4-n^3)²])` -/
def P13319653810331628369.Spec : Prop :=
  ∀ n, P13319653810331628369.a n = (A030653 (n + 1) : ℝ)

end A030653

/-! ## A030653.P12749753251980620976

`(1-xor(n, -1))^3-4`
-/

namespace A030653.P12749753251980620976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - Int.xor (n : ℤ) (-1)) ^ 3 - 4

end

end A030653.P12749753251980620976

namespace A030653

/-- `(1-xor(n, -1))^3-4` -/
def P12749753251980620976.Spec : Prop :=
  ∀ n, P12749753251980620976.a n = A030653 (n + 1)

end A030653

/-! ## A030653.P15358911770751030418

`Δ[C(n+2, 2)²-4*n]`
-/

namespace A030653.P15358911770751030418
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose (n + 2) 2 ^ 2 : ℤ) - (4 * n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A030653.P15358911770751030418

namespace A030653

/-- `Δ[C(n+2, 2)²-4*n]` -/
def P15358911770751030418.Spec : Prop :=
  ∀ n, P15358911770751030418.a n = A030653 (n + 1)

theorem P15358911770751030418.correct : P15358911770751030418.Spec := by
  intro n
  simp only [A030653, Nat.add_sub_cancel, A030653.P15358911770751030418.f1, A030653.P15358911770751030418.a, A030653.P17752569690597270032.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A030653

/-! ## A030653.P11620949698073065967

`abs(4-(n+2)*record[(n-2)²])`
-/

namespace A030653.P11620949698073065967
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - 2) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |4 - (n + 2 : ℤ) * f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)|

end

end A030653.P11620949698073065967

namespace A030653

/-- `abs(4-(n+2)*record[(n-2)²])` -/
def P11620949698073065967.Spec : Prop :=
  ∀ n, P11620949698073065967.a n = A030653 (n + 1)

end A030653

/-! ## A030653.P13046983972901786861

`a(n-1)+6*∑[n+1]+1` with `a(0)=4`
-/

namespace A030653.P13046983972901786861
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.rec [4] fun n a =>
  a (n - 1) + 6 * (∑ j ∈ Finset.range (n + 1), f1 j) + 1

end

end A030653.P13046983972901786861

namespace A030653

/-- `a(n-1)+6*∑[n+1]+1` -/
def P13046983972901786861.Spec : Prop :=
  ∀ n, (P13046983972901786861.a n : ℤ) = A030653 (n + 1)

end A030653

/-! ## A030653.P5260851536166291214

`Δ[∑[n+1]²-lcm(2, 2*n+1)]`
-/

namespace A030653.P5260851536166291214
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((∑ j ∈ Finset.range (n + 1), f2 j) ^ 2 : ℕ) : ℤ) - (Nat.lcm 2 (2 * n + 1) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A030653.P5260851536166291214

namespace A030653

/-- `Δ[∑[n+1]²-lcm(2, 2*n+1)]` -/
def P5260851536166291214.Spec : Prop :=
  ∀ n, P5260851536166291214.a n = A030653 (n + 1)

end A030653

/-! ## A030653.P9637410723145417302

`(n+3)*lcm(n+1, n+2)+n-2`
-/

namespace A030653.P9637410723145417302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 3) * Nat.lcm (n + 1) (n + 2) : ℤ) + ((n : ℤ) - 2)

end

end A030653.P9637410723145417302

namespace A030653

/-- `(n+3)*lcm(n+1, n+2)+n-2` -/
def P9637410723145417302.Spec : Prop :=
  ∀ n, P9637410723145417302.a n = A030653 (n + 1)

end A030653

/-! ## A030653.P13399044315478175359

`Δ[(n+1)*(n+1)²]+a(n-1)` with `a(0)=4`
-/

namespace A030653.P13399044315478175359
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) * (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.rec [4] fun n a =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ) + a (n - 1)

end

end A030653.P13399044315478175359

namespace A030653

/-- `Δ[(n+1)*(n+1)²]+a(n-1)` -/
def P13399044315478175359.Spec : Prop :=
  ∀ n, P13399044315478175359.a n = A030653 (n + 1)

theorem P13399044315478175359.correct : P13399044315478175359.Spec := by
  intro n
  induction n with
  | zero => simp [A030653, A030653.P13399044315478175359.f1, A030653.P13399044315478175359.a, A030653.P17752569690597270032.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
  | succ m ih =>
    simp only [A030653, Nat.add_sub_cancel, A030653.P13399044315478175359.f1, A030653.P13399044315478175359.a, A030653.P17752569690597270032.a, SequenceMachineLib.memo_apply] at ih ⊢
    rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
    try simp only [Nat.add_sub_cancel, Nat.lt_add_one, ↓reduceIte]
    try push_cast at ih ⊢
    try linarith

end A030653

/-! ## A030653.P7614179942868251712

`Δ[A000217(n+1)²-A016825(n)]`
-/

namespace A030653.P7614179942868251712
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (n + 1) ^ 2 - A016825 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A030653.P7614179942868251712

namespace A030653

/-- `Δ[A000217(n+1)²-A016825(n)]` -/
def P7614179942868251712.Spec : Prop :=
  ∀ n, P7614179942868251712.a n = A030653 (n + 1)

theorem P7614179942868251712.correct : P7614179942868251712.Spec := by
  intro n
  simp only [A030653, Nat.add_sub_cancel, A030653.P7614179942868251712.f1, A030653.P7614179942868251712.a, A030653.P17752569690597270032.a, A000217, A000217.P10269402890581615239.a, A016825, A016825.P4712696052905976233.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A030653

/-! ## A030653.P17490151383510247301

`abs(4-A000578(n+2))`
-/

namespace A030653.P17490151383510247301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |4 - A000578 (n + 2)|

end

end A030653.P17490151383510247301

namespace A030653

/-- `abs(4-A000578(n+2))` -/
def P17490151383510247301.Spec : Prop :=
  ∀ n, P17490151383510247301.a n = A030653 (n + 1)

end A030653

/-! ## A030653.P15490433228939677038

`(A258402(n+1)-3)/(n+2)`
-/

namespace A030653.P15490433228939677038
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A258402 (n + 1) - 3 : ℚ) / (n + 2 : ℚ)

end

end A030653.P15490433228939677038

namespace A030653

/-- `(A258402(n+1)-3)/(n+2)` -/
def P15490433228939677038.Spec : Prop :=
  ∀ n, P15490433228939677038.a n = (A030653 (n + 1) : ℚ)

theorem P15490433228939677038.correct : P15490433228939677038.Spec := by
  intro n
  simp only [A030653, Nat.add_sub_cancel, A030653.P15490433228939677038.a, A030653.P17752569690597270032.a, A258402, A258402.P4882434139232473822.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A030653

/-! ## A030653.P851605457300965797

`Δ[A085740(n+1)+(1-n)²]`
-/

namespace A030653.P851605457300965797
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085740 (n + 1) + (1 - (n : ℤ)) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A030653.P851605457300965797

namespace A030653

/-- `Δ[A085740(n+1)+(1-n)²]` -/
def P851605457300965797.Spec : Prop :=
  ∀ n, P851605457300965797.a n = A030653 (n + 1)

end A030653

/-! ## A030653.P2722191107702149694

`Δ[Δ[A000292(n)]²-A016825(n)]`
-/

namespace A030653.P2722191107702149694
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000292 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) - f2 n) ^ 2 - A016825 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A030653.P2722191107702149694

namespace A030653

/-- `Δ[Δ[A000292(n)]²-A016825(n)]` -/
def P2722191107702149694.Spec : Prop :=
  ∀ n, P2722191107702149694.a n = A030653 (n + 1)

theorem P2722191107702149694.correct : P2722191107702149694.Spec := by
  intro n
  simp only [A030653, Nat.add_sub_cancel, A030653.P2722191107702149694.f2, A030653.P2722191107702149694.f1, A030653.P2722191107702149694.a, A030653.P17752569690597270032.a, A000292, A000292.P18322089543142633594.a, A016825, A016825.P4712696052905976233.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A030653

/-! ## A030653.P10017107253467465861

`abs(4-Δ[A000537(n+1)])`
-/

namespace A030653.P10017107253467465861
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000537 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |4 - (f1 (n + 1) - f1 n)|

end

end A030653.P10017107253467465861

namespace A030653

/-- `abs(4-Δ[A000537(n+1)])` -/
def P10017107253467465861.Spec : Prop :=
  ∀ n, P10017107253467465861.a n = A030653 (n + 1)

end A030653

/-! ## A030653.P17113546782785459153

`Δ[A302650(n+2)+(1-n)²]`
-/

namespace A030653.P17113546782785459153
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302650 (n + 2) + (1 - (n : ℤ)) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A030653.P17113546782785459153

namespace A030653

/-- `Δ[A302650(n+2)+(1-n)²]` -/
def P17113546782785459153.Spec : Prop :=
  ∀ n, P17113546782785459153.a n = A030653 (n + 1)

end A030653

/-! ## A030653.P4123666225339187179

`Δ[A123350(n+1)-(n+3)²]`
-/

namespace A030653.P4123666225339187179
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123350 (n + 1) - ((n + 3) ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A030653.P4123666225339187179

namespace A030653

/-- `Δ[A123350(n+1)-(n+3)²]` -/
def P4123666225339187179.Spec : Prop :=
  ∀ n, P4123666225339187179.a n = A030653 (n + 1)

end A030653

/-!
# A030654: n^4*a(n) is the number of spheres in complex projective space tangent to 4 smooth surfaces of degree n in general position.

The programs for A030654, the canonical program `A030654.P12657709224460297580` is in `Seq.B000.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A030654 has offset 1).

The definition of A030654 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A030654.P12657709224460297580

`(n+1)^8+4*(n+1)^6-2*(n+1)^4+4*(n+1)²+1`

The canonical program, it is in `Seq.B000.C007`.
-/

namespace A030654

/-- `(n+1)^8+4*(n+1)^6-2*(n+1)^4+4*(n+1)²+1` -/
def P12657709224460297580.Spec : Prop :=
  ∀ n, P12657709224460297580.a n = A030654 (n + 1)

theorem P12657709224460297580.correct : P12657709224460297580.Spec := by
  intro n
  simp only [A030654, Nat.add_sub_cancel]

end A030654

/-!
# A030655: Pair up the numbers.

The programs for A030655, the canonical program `A030655.P11811847413903437405` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A030655 has offset 1).

The definition of A030655 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A030655.P11811847413903437405

`A001704(Δ[n²])`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A030655

/-- `A001704(Δ[n²])` -/
def P11811847413903437405.Spec : Prop :=
  ∀ n, P11811847413903437405.a n = A030655 (n + 1)

theorem P11811847413903437405.correct : P11811847413903437405.Spec := by
  intro n
  simp only [A030655, Nat.add_sub_cancel]

end A030655

/-! ## A030655.P6510037808703413784

`A127421(2*(1+n))`
-/

namespace A030655.P6510037808703413784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127421 (2 * (1 + n))

end

end A030655.P6510037808703413784

namespace A030655

/-- `A127421(2*(1+n))` -/
def P6510037808703413784.Spec : Prop :=
  ∀ n, P6510037808703413784.a n = A030655 (n + 1)

end A030655

/-! ## A030655.P9664839022059029635

`record[A001704(n+1)/(-1)^n]`
-/

namespace A030655.P9664839022059029635
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001704 (n + 1) : ℚ) / ((-1) ^ n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A030655.P9664839022059029635

namespace A030655

/-- `record[A001704(n+1)/(-1)^n]` -/
def P9664839022059029635.Spec : Prop :=
  ∀ n, P9664839022059029635.a n = (A030655 (n + 1) : ℚ)

end A030655

/-! ## A030655.P9381088879196986466

`record[A127421(n+2)^log2(gcd(2, n))]`
-/

namespace A030655.P9381088879196986466
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A127421 (n + 2) : ℝ) ^ (Real.logb 2 (Nat.gcd 2 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A030655.P9381088879196986466

namespace A030655

/-- `record[A127421(n+2)^log2(gcd(2, n))]` -/
def P9381088879196986466.Spec : Prop :=
  ∀ n, P9381088879196986466.a n = (A030655 (n + 1) : ℝ)

end A030655

/-! ## A030655.P13937240197911357809

`record[A001704(A000265(n+1))]`
-/

namespace A030655.P13937240197911357809
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001704 (A000265 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A030655.P13937240197911357809

namespace A030655

/-- `record[A001704(A000265(n+1))]` -/
def P13937240197911357809.Spec : Prop :=
  ∀ n, P13937240197911357809.a n = A030655 (n + 1)

end A030655

/-! ## A030655.P8476188802379352615

`A098080(1+n)`
-/

namespace A030655.P8476188802379352615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098080 (1 + n)

end

end A030655.P8476188802379352615

namespace A030655

/-- `A098080(1+n)` -/
def P8476188802379352615.Spec : Prop :=
  ∀ n, P8476188802379352615.a n = A030655 (n + 1)

end A030655

/-! ## A030655.P703730627746906292

`record[A098080(abs(1-n))]`
-/

namespace A030655.P703730627746906292
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098080 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A030655.P703730627746906292

namespace A030655

/-- `record[A098080(abs(1-n))]` -/
def P703730627746906292.Spec : Prop :=
  ∀ n, P703730627746906292.a n = A030655 (n + 1)

end A030655

/-! ## A030655.P1316484500849301931

`record[A127421(A014681(n)+2)]`
-/

namespace A030655.P1316484500849301931
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127421 (A014681 n + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A030655.P1316484500849301931

namespace A030655

/-- `record[A127421(A014681(n)+2)]` -/
def P1316484500849301931.Spec : Prop :=
  ∀ n, P1316484500849301931.a n = A030655 (n + 1)

end A030655

/-! ## A030655.P8638905345164932471

`A032607(Δ[n²])-1`
-/

namespace A030655.P8638905345164932471
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032607 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat - 1

end

end A030655.P8638905345164932471

namespace A030655

/-- `A032607(Δ[n²])-1` -/
def P8638905345164932471.Spec : Prop :=
  ∀ n, P8638905345164932471.a n = A030655 (n + 1)

end A030655

/-! ## A030655.P17539389801365343807

`2*A074993(Δ[n²])`
-/

namespace A030655.P17539389801365343807
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A074993 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A030655.P17539389801365343807

namespace A030655

/-- `2*A074993(Δ[n²])` -/
def P17539389801365343807.Spec : Prop :=
  ∀ n, P17539389801365343807.a n = A030655 (n + 1)

end A030655

/-! ## A030655.P17138325578389986655

`A074993(2*n+1)+A074993(2*n+1)`
-/

namespace A030655.P17138325578389986655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074993 (2 * n + 1) + A074993 (2 * n + 1)

end

end A030655.P17138325578389986655

namespace A030655

/-- `A074993(2*n+1)+A074993(2*n+1)` -/
def P17138325578389986655.Spec : Prop :=
  ∀ n, P17138325578389986655.a n = A030655 (n + 1)

end A030655

/-! ## A030655.P13105109983367851613

`A248378(4*n)`
-/

namespace A030655.P13105109983367851613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248378 (4 * n)

end

end A030655.P13105109983367851613

namespace A030655

/-- `A248378(4*n)` -/
def P13105109983367851613.Spec : Prop :=
  ∀ n, P13105109983367851613.a n = A030655 (n + 1)

end A030655

/-!
# A030656: Pair up the numbers.

The programs for A030656, the canonical program `A030656.P12769284707998713729` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A030656 has offset 0).

The definition of A030656 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A030656.P12704610316337749269

`record[(n*10^floor(log(10*(n+1))/log(10))+n+1)*(n+1)%2]`
-/

namespace A030656.P12704610316337749269
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n : ℚ) * (10 : ℚ) ^ (⌊Real.log (10 * (n + 1) : ℝ) / Real.log (10 : ℝ)⌋ : ℤ) + (n + 1 : ℚ)) * (((n + 1) % 2 : ℕ) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A030656.P12704610316337749269

namespace A030656

/-- `record[(n*10^floor(log(10*(n+1))/log(10))+n+1)*(n+1)%2]` -/
def P12704610316337749269.Spec : Prop :=
  ∀ n, P12704610316337749269.a n = (A030656 n : ℚ)

end A030656

/-! ## A030656.P12769284707998713729

`A127421(Δ[n²])`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A030656

/-- `A127421(Δ[n²])` -/
def P12769284707998713729.Spec : Prop :=
  ∀ n, P12769284707998713729.a n = A030656 n

theorem P12769284707998713729.correct : P12769284707998713729.Spec := by
  intro n
  simp only [A030656]

end A030656

/-! ## A030656.P14308350541073940418

`record[A127421(and(n, n+1)+1)]`
-/

namespace A030656.P14308350541073940418
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127421 (Nat.land n (n + 1) + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A030656.P14308350541073940418

namespace A030656

/-- `record[A127421(and(n, n+1)+1)]` -/
def P14308350541073940418.Spec : Prop :=
  ∀ n, P14308350541073940418.a n = A030656 n

end A030656

/-! ## A030656.P13265494332404133184

`record[A001704(1+n)^(n%2)]`
-/

namespace A030656.P13265494332404133184
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001704 (1 + n) ^ (n % 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A030656.P13265494332404133184

namespace A030656

/-- `record[A001704(1+n)^(n%2)]` -/
def P13265494332404133184.Spec : Prop :=
  ∀ n, P13265494332404133184.a n = A030656 n

end A030656

/-! ## A030656.P17687703172404354152

`record[A127421(n+1)^log2(gcd(2, n))]`
-/

namespace A030656.P17687703172404354152
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A127421 (n + 1) : ℝ) ^ (Real.logb 2 (Nat.gcd 2 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A030656.P17687703172404354152

namespace A030656

/-- `record[A127421(n+1)^log2(gcd(2, n))]` -/
def P17687703172404354152.Spec : Prop :=
  ∀ n, P17687703172404354152.a n = (A030656 n : ℝ)

end A030656

/-! ## A030656.P6509057652076109529

`record[A127421(n+1)^A033999(n)]`
-/

namespace A030656.P6509057652076109529
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A127421 (n + 1) : ℚ) ^ (A033999 n : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A030656.P6509057652076109529

namespace A030656

/-- `record[A127421(n+1)^A033999(n)]` -/
def P6509057652076109529.Spec : Prop :=
  ∀ n, P6509057652076109529.a n = (A030656 n : ℚ)

end A030656

/-! ## A030656.P1566948019097783149

`A275238(2*n)`
-/

namespace A030656.P1566948019097783149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275238 (2 * n)

end

end A030656.P1566948019097783149

namespace A030656

/-- `A275238(2*n)` -/
def P1566948019097783149.Spec : Prop :=
  ∀ n, P1566948019097783149.a n = A030656 n

end A030656

/-! ## A030656.P450569981953071920

`record[A127421(A026741(n+1))]`
-/

namespace A030656.P450569981953071920
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127421 (A026741 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A030656.P450569981953071920

namespace A030656

/-- `record[A127421(A026741(n+1))]` -/
def P450569981953071920.Spec : Prop :=
  ∀ n, P450569981953071920.a n = A030656 n

end A030656

/-! ## A030656.P907327616136987530

`∩[A127421(n+1), A275238(n)]`
-/

namespace A030656.P907327616136987530
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127421 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275238 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A030656.P907327616136987530

namespace A030656

/-- `∩[A127421(n+1), A275238(n)]` -/
def P907327616136987530.Spec : Prop :=
  ∀ n, (P907327616136987530.a n : ℤ) = A030656 n

end A030656

/-! ## A030656.P3950582707511245883

`filter[A275238(n), A000035(#)]`
-/

namespace A030656.P3950582707511245883
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275238 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A000035 (f1 j).toNat = 1) n)

end

end A030656.P3950582707511245883

namespace A030656

/-- `filter[A275238(n), A000035(#)]` -/
def P3950582707511245883.Spec : Prop :=
  ∀ n, P3950582707511245883.a n = A030656 n

end A030656

/-!
# A030657: Parity of digits of Pi.

The programs for A030657, there is no canonical definition to state claims against.
-/

/-! ## A030657.P2169371015270099452

`A000035(A000796(n))`
-/

namespace A030657.P2169371015270099452
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A000796 (n + 1)).toNat

end

end A030657.P2169371015270099452

/-! ## A030657.P3231915643871501687

`A000796(n)%2`
-/

namespace A030657.P3231915643871501687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000796 (n + 1)) 2

end

end A030657.P3231915643871501687

/-! ## A030657.P8859771112081691947

`A086994(n)%2`
-/

namespace A030657.P8859771112081691947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A086994 (n + 1)) 2

end

end A030657.P8859771112081691947

/-! ## A030657.P14689239745210201562

`log2(gcd(2, A030644(n)))`
-/

namespace A030657.P14689239745210201562
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (Int.gcd 2 (A030644 (n + 1)) : ℝ)

end

end A030657.P14689239745210201562

/-! ## A030657.P16163580677613992122

`A065253(n+1)%2`
-/

namespace A030657.P16163580677613992122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A065253 (n + 1)) 2

end

end A030657.P16163580677613992122

/-! ## A030657.P18203459434456274766

`A072448(1+n)%2`
-/

namespace A030657.P18203459434456274766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A072448 (1 + n)) 2

end

end A030657.P18203459434456274766

/-! ## A030657.P4469250561011035461

`A081737(n+1)%2`
-/

namespace A030657.P4469250561011035461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A081737 (n + 1)) 2

end

end A030657.P4469250561011035461

/-! ## A030657.P15132501234305121283

`A261197(n+1)%2`
-/

namespace A030657.P15132501234305121283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A261197 (n + 1)) 2

end

end A030657.P15132501234305121283

/-! ## A030657.P16060748375200823727

`(A059833(n+1)+1)%2`
-/

namespace A030657.P16060748375200823727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A059833 (n + 1) + 1) 2

end

end A030657.P16060748375200823727

/-! ## A030657.P14501081191709029508

`(A123152(n+1)-1)%2`
-/

namespace A030657.P14501081191709029508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A123152 (n + 1) - 1) 2

end

end A030657.P14501081191709029508

/-! ## A030657.P2617686962695179244

`and(1, A054249(n+1)+1)`
-/

namespace A030657.P2617686962695179244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A054249 (n + 1) + 1)

end

end A030657.P2617686962695179244

/-! ## A030657.P8068625667761727796

`A007877(A072448(n+1))`
-/

namespace A030657.P8068625667761727796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007877 (A072448 (n + 1)).toNat

end

end A030657.P8068625667761727796

/-! ## A030657.P15391619077435403023

`A070432(A261197(n+1))`
-/

namespace A030657.P15391619077435403023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070432 (A261197 (n + 1)).toNat

end

end A030657.P15391619077435403023

/-! ## A030657.P2340366192679056315

`and(1, A000796(A028310(n)))`
-/

namespace A030657.P2340366192679056315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A000796 ((A028310 n).toNat + 1))

end

end A030657.P2340366192679056315

/-! ## A030657.P1451893196080793210

`2-A000034(A086994(n)+1)`
-/

namespace A030657.P1451893196080793210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A000034 (A086994 (n + 1) + 1).toNat

end

end A030657.P1451893196080793210

/-! ## A030657.P11625903341817437079

`and(A010684(n), A072448(n+1))`
-/

namespace A030657.P11625903341817437079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A010684 n) (A072448 (n + 1))

end

end A030657.P11625903341817437079

/-! ## A030657.P3588513065593895681

`and(A000796(n), A089552(n+1))`
-/

namespace A030657.P3588513065593895681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A000796 (n + 1)) (A089552 (n + 1))

end

end A030657.P3588513065593895681

/-! ## A030657.P10309541893152939594

`A010673(A054249(n+1)+1)/2`
-/

namespace A030657.P10309541893152939594
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A010673 (A054249 (n + 1) + 1).toNat : ℚ) / 2

end

end A030657.P10309541893152939594

/-! ## A030657.P10988144584024261675

`A001355(2*n+1)%2`
-/

namespace A030657.P10988144584024261675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001355 (2 * n + 1)) 2

end

end A030657.P10988144584024261675

/-! ## A030657.P1573637145745024342

`A076790(2*n+1)%2`
-/

namespace A030657.P1573637145745024342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A076790 (2 * n + 1)) 2

end

end A030657.P1573637145745024342

/-!
# A030658: 1 iff n-th digit of Pi is >= (n+1)st digit.

The programs for A030658, there is no canonical definition to state claims against.
-/

/-! ## A030658.P3851108120168638293

`floor(acot(Δ[A000796(n)]))²`
-/

namespace A030658.P3851108120168638293
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000796 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊SequenceMachineLib.acot (f1 (n + 1) - f1 n : ℝ)⌋ ^ 2

end

end A030658.P3851108120168638293

/-! ## A030658.P1708207347579523830

`floor(61/(61+A095916(n+1)))`
-/

namespace A030658.P1708207347579523830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊61 / (61 + A095916 (n + 1) : ℚ)⌋

end

end A030658.P1708207347579523830

/-! ## A030658.P1300895734260379975

`A261836(∑{#}[A095916(n+1), #])`
-/

namespace A030658.P1300895734260379975
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095916 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261836 (∑ k ∈ Finset.range (f1 n + 1).toNat, k)

end

end A030658.P1300895734260379975

/-! ## A030658.P15760468452392060968

`char[lt[A000796(n+1), A000796(n)+1]]`
-/

namespace A030658.P15760468452392060968
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000796 (n + 1 + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000796 (n + 1) + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < f3 j) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A030658.P15760468452392060968

/-! ## A030658.P15912098197581487371

`char[lt[A095916(n+1), 1]]`
-/

namespace A030658.P15912098197581487371
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095916 (n + 1)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < (f3 j : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A030658.P15912098197581487371

/-! ## A030658.P12813198386754535026

`A004216(10-Δ[A001355(2*n+1)])`
-/

namespace A030658.P12813198386754535026
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001355 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004216 (10 - (f1 (n + 1) - f1 n)).toNat

end

end A030658.P12813198386754535026

/-! ## A030658.P7983003130138702103

`(1-A193496(n+1))^A095916(n+1)`
-/

namespace A030658.P7983003130138702103
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 - A193496 (n + 1) : ℚ) ^ (A095916 (n + 1) : ℤ)

end

end A030658.P7983003130138702103

/-!
# A030659: Smallest possible maximum denominator in an expression for 1 as a sum of n distinct unit (Egyptian) fractions.

The programs for A030659, there is no canonical definition to state claims against.
-/

/-! ## A030659.P1489774720846603439

`A216993(C(n+4, 2))`
-/

namespace A030659.P1489774720846603439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216993 (Nat.choose (n + 4) 2)

end

end A030659.P1489774720846603439

/-! ## A030659.P3059657938194781989

`A378723(A000217(n+3))`
-/

namespace A030659.P3059657938194781989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378723 (A000217 (n + 3)).toNat

end

end A030659.P3059657938194781989

/-!
# A030661: Product of next 2 primes after n.

The programs for A030661, the canonical program `A030661.P3495447614067155114` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A030661 has offset 1).

The definition of A030661 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A101300, A151800, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A030661.P3495447614067155114

`A151800(n+1)*A101300(n+1)`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A030661

/-- `A151800(n+1)*A101300(n+1)` -/
def P3495447614067155114.Spec : Prop :=
  ∀ n, P3495447614067155114.a n = A030661 (n + 1)

theorem P3495447614067155114.correct : P3495447614067155114.Spec := by
  intro n
  simp only [A030661, Nat.add_sub_cancel]

end A030661

/-! ## A030661.P9292984886183374457

`A006094(∑[∑{e}[1+n, #]!%2])`
-/

namespace A030661.P9292984886183374457
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1 + n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (∑ p ∈ Nat.primeFactors (f2 n), Nat.factorization (f2 n) p) % 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006094 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A030661.P9292984886183374457

namespace A030661

/-- `A006094(∑[∑{e}[1+n, #]!%2])` -/
def P9292984886183374457.Spec : Prop :=
  ∀ n, P9292984886183374457.a n = A030661 (n + 1)

end A030661

/-! ## A030661.P6073069479630102352

`A116570(2*A000720(n+1))`
-/

namespace A030661.P6073069479630102352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116570 (2 * A000720 (n + 1)).toNat

end

end A030661.P6073069479630102352

namespace A030661

/-- `A116570(2*A000720(n+1))` -/
def P6073069479630102352.Spec : Prop :=
  ∀ n, P6073069479630102352.a n = A030661 (n + 1)

end A030661

/-! ## A030661.P14237086022483954597

`A033476(2*A000720(n+1)+1)`
-/

namespace A030661.P14237086022483954597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033476 (2 * A000720 (n + 1) + 1).toNat

end

end A030661.P14237086022483954597

namespace A030661

/-- `A033476(2*A000720(n+1)+1)` -/
def P14237086022483954597.Spec : Prop :=
  ∀ n, P14237086022483954597.a n = A030661 (n + 1)

end A030661

/-! ## A030661.P4519614664014501245

`(A151799(n+3)+A072680(n+2))*A101300(n+1)`
-/

namespace A030661.P4519614664014501245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A151799 (n + 3) + A072680 (n + 2)) * A101300 (n + 1)

end

end A030661.P4519614664014501245

namespace A030661

/-- `(A151799(n+3)+A072680(n+2))*A101300(n+1)` -/
def P4519614664014501245.Spec : Prop :=
  ∀ n, P4519614664014501245.a n = A030661 (n + 1)

end A030661

/-! ## A030661.P2082888038458860171

`A151800(A028310(n+1))*A151800(A151800(n+1))`
-/

namespace A030661.P2082888038458860171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 (A028310 (n + 1)).toNat * A151800 (A151800 (n + 1)).toNat

end

end A030661.P2082888038458860171

namespace A030661

/-- `A151800(A028310(n+1))*A151800(A151800(n+1))` -/
def P2082888038458860171.Spec : Prop :=
  ∀ n, P2082888038458860171.a n = A030661 (n + 1)

end A030661

/-! ## A030661.P10527739780978968623

`A013636(A151800(n+1))`
-/

namespace A030661.P10527739780978968623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013636 (A151800 (n + 1)).toNat

end

end A030661.P10527739780978968623

namespace A030661

/-- `A013636(A151800(n+1))` -/
def P10527739780978968623.Spec : Prop :=
  ∀ n, P10527739780978968623.a n = A030661 (n + 1)

end A030661

/-! ## A030661.P11807991221148187449

`A119416(A151800(2*n+1-n))`
-/

namespace A030661.P11807991221148187449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119416 (A151800 (2 * n + 1 - n)).toNat

end

end A030661.P11807991221148187449

namespace A030661

/-- `A119416(A151800(2*n+1-n))` -/
def P11807991221148187449.Spec : Prop :=
  ∀ n, P11807991221148187449.a n = A030661 (n + 1)

end A030661

/-! ## A030661.P12661099682901069047

`A013637(A101300(n+1))`
-/

namespace A030661.P12661099682901069047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013637 (A101300 (n + 1)).toNat

end

end A030661.P12661099682901069047

namespace A030661

/-- `A013637(A101300(n+1))` -/
def P12661099682901069047.Spec : Prop :=
  ∀ n, P12661099682901069047.a n = A030661 (n + 1)

end A030661

/-! ## A030661.P10131138454936483999

`A045969(A136548(n+2))`
-/

namespace A030661.P10131138454936483999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045969 (A136548 (n + 2)).toNat

end

end A030661.P10131138454936483999

namespace A030661

/-- `A045969(A136548(n+2))` -/
def P10131138454936483999.Spec : Prop :=
  ∀ n, P10131138454936483999.a n = A030661 (n + 1)

end A030661

/-! ## A030661.P4226937398765907509

`A119416(A159477(n+2))`
-/

namespace A030661.P4226937398765907509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119416 (A159477 (n + 2)).toNat

end

end A030661.P4226937398765907509

namespace A030661

/-- `A119416(A159477(n+2))` -/
def P4226937398765907509.Spec : Prop :=
  ∀ n, P4226937398765907509.a n = A030661 (n + 1)

end A030661

/-! ## A030661.P9232379426894174312

`fp[A076820(n+1)-1]+1`
-/

namespace A030661.P9232379426894174312
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076820 (n + 1) - 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (n : ℤ) < f1 j) 0 + 1

end

end A030661.P9232379426894174312

namespace A030661

/-- `fp[A076820(n+1)-1]+1` -/
def P9232379426894174312.Spec : Prop :=
  ∀ n, (P9232379426894174312.a n : ℤ) = A030661 (n + 1)

end A030661

/-! ## A030661.P13764141565630959066

`A332461(A069549(n+2))`
-/

namespace A030661.P13764141565630959066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332461 (A069549 (n + 2)).toNat

end

end A030661.P13764141565630959066

namespace A030661

/-- `A332461(A069549(n+2))` -/
def P13764141565630959066.Spec : Prop :=
  ∀ n, P13764141565630959066.a n = A030661 (n + 1)

end A030661

/-!
# A030662: Number of combinations of n things from 1 to n at a time, with repeats allowed.

The programs for A030662, the canonical program `A030662.P11997165729521447290` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A030662 has offset 1).

The definition of A030662 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A030662.P5298686909732041430

`∑{#}[n, C(n+1, #+1)²]`
-/

namespace A030662.P5298686909732041430
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), Nat.choose (n + 1) (k + 1) ^ 2

end

end A030662.P5298686909732041430

namespace A030662

/-- `∑{#}[n, C(n+1, #+1)²]` -/
def P5298686909732041430.Spec : Prop :=
  ∀ n, (P5298686909732041430.a n : ℤ) = A030662 (n + 1)

end A030662

/-! ## A030662.P11997165729521447290

`A115112(n+1)+1`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A030662

/-- `A115112(n+1)+1` -/
def P11997165729521447290.Spec : Prop :=
  ∀ n, P11997165729521447290.a n = A030662 (n + 1)

theorem P11997165729521447290.correct : P11997165729521447290.Spec := by
  intro n
  simp only [A030662, Nat.add_sub_cancel]

end A030662

/-! ## A030662.P9460476274722414991

`A000984(n+1)-1`
-/

namespace A030662.P9460476274722414991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000984 (n + 1) - 1

end

end A030662.P9460476274722414991

namespace A030662

/-- `A000984(n+1)-1` -/
def P9460476274722414991.Spec : Prop :=
  ∀ n, P9460476274722414991.a n = A030662 (n + 1)

theorem P9460476274722414991.correct : P9460476274722414991.Spec := by
  intro n
  simp only [A030662, Nat.add_sub_cancel, A030662.P9460476274722414991.a, A030662.P11997165729521447290.a, A000984, A000984.P7946844122574426130.a, A115112, A115112.P11405233874723568779.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A030662

/-! ## A030662.P3485668154476199682

`2*A001700(n)-1`
-/

namespace A030662.P3485668154476199682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A001700 n - 1

end

end A030662.P3485668154476199682

namespace A030662

/-- `2*A001700(n)-1` -/
def P3485668154476199682.Spec : Prop :=
  ∀ n, P3485668154476199682.a n = A030662 (n + 1)

end A030662

/-! ## A030662.P7940621417898550114

`(n+2)*A000108(n+1)-1`
-/

namespace A030662.P7940621417898550114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℤ) * A000108 (n + 1) - 1

end

end A030662.P7940621417898550114

namespace A030662

/-- `(n+2)*A000108(n+1)-1` -/
def P7940621417898550114.Spec : Prop :=
  ∀ n, P7940621417898550114.a n = A030662 (n + 1)

end A030662

/-! ## A030662.P10552609502419085436

`C(2*(n+1), n+1)-1`
-/

namespace A030662.P10552609502419085436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose (2 * (n + 1)) (n + 1) : ℤ) - 1

end

end A030662.P10552609502419085436

namespace A030662

/-- `C(2*(n+1), n+1)-1` -/
def P10552609502419085436.Spec : Prop :=
  ∀ n, P10552609502419085436.a n = A030662 (n + 1)

theorem P10552609502419085436.correct : P10552609502419085436.Spec := by
  intro n
  simp only [A030662, Nat.add_sub_cancel, A030662.P10552609502419085436.a, A030662.P11997165729521447290.a, A115112, A115112.P11405233874723568779.a, A000984, A000984.P7946844122574426130.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A030662

/-! ## A030662.P13492496275439329509

`(n+1)*C(2*(n+1), n+1)*∑{#}[n, 1/((#+1)*C(n+1+#+1, #+1))]`
-/

namespace A030662.P13492496275439329509
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 1) * Nat.choose (2 * (n + 1)) (n + 1) : ℚ) * (∑ k ∈ Finset.range (f1 n + 1), 1 / ((k + 1) * Nat.choose (n + 1 + (k + 1)) (k + 1) : ℚ))

end

end A030662.P13492496275439329509

namespace A030662

/-- `(n+1)*C(2*(n+1), n+1)*∑{#}[n, 1/((#+1)*C(n+1+#+1, #+1))]` -/
def P13492496275439329509.Spec : Prop :=
  ∀ n, P13492496275439329509.a n = (A030662 (n + 1) : ℚ)

end A030662

/-! ## A030662.P9391275224258469514

`∑{#}[n, C(n+1, #)^2]`
-/

namespace A030662.P9391275224258469514
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), Nat.choose (n + 1) k ^ 2

end

end A030662.P9391275224258469514

namespace A030662

/-- `∑{#}[n, C(n+1, #)^2]` -/
def P9391275224258469514.Spec : Prop :=
  ∀ n, (P9391275224258469514.a n : ℤ) = A030662 (n + 1)

end A030662

/-! ## A030662.P9262872962641806567

`∏[4-2/(n+1)]-1`
-/

namespace A030662.P9262872962641806567
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  4 - 2 / (n + 1 : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j - 1

end

end A030662.P9262872962641806567

namespace A030662

/-- `∏[4-2/(n+1)]-1` -/
def P9262872962641806567.Spec : Prop :=
  ∀ n, P9262872962641806567.a n = (A030662 (n + 1) : ℚ)

end A030662

/-! ## A030662.P6627365499822160645

`∑{#}[n, C(n+1, #)*C(n+1, #)]`
-/

namespace A030662.P6627365499822160645
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), Nat.choose (n + 1) k * Nat.choose (n + 1) k

end

end A030662.P6627365499822160645

namespace A030662

/-- `∑{#}[n, C(n+1, #)*C(n+1, #)]` -/
def P6627365499822160645.Spec : Prop :=
  ∀ n, (P6627365499822160645.a n : ℤ) = A030662 (n + 1)

end A030662

/-! ## A030662.P1210452033895003819

`∑[A051924(n+1)]`
-/

namespace A030662.P1210452033895003819
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051924 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A030662.P1210452033895003819

namespace A030662

/-- `∑[A051924(n+1)]` -/
def P1210452033895003819.Spec : Prop :=
  ∀ n, P1210452033895003819.a n = A030662 (n + 1)

end A030662

/-! ## A030662.P18102409853536560585

`∑[A026010(2*n)]`
-/

namespace A030662.P18102409853536560585
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026010 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A030662.P18102409853536560585

namespace A030662

/-- `∑[A026010(2*n)]` -/
def P18102409853536560585.Spec : Prop :=
  ∀ n, P18102409853536560585.a n = A030662 (n + 1)

end A030662

/-! ## A030662.P15830955700623748066

`∑[A337499(2*n)]`
-/

namespace A030662.P15830955700623748066
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337499 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A030662.P15830955700623748066

namespace A030662

/-- `∑[A337499(2*n)]` -/
def P15830955700623748066.Spec : Prop :=
  ∀ n, P15830955700623748066.a n = A030662 (n + 1)

end A030662

/-! ## A030662.P13153931442407273029

`A014495(2*(n+1))`
-/

namespace A030662.P13153931442407273029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014495 (2 * (n + 1))

end

end A030662.P13153931442407273029

namespace A030662

/-- `A014495(2*(n+1))` -/
def P13153931442407273029.Spec : Prop :=
  ∀ n, P13153931442407273029.a n = A030662 (n + 1)

end A030662

/-! ## A030662.P4662857179014903118

`or(1, A171074(n+1))`
-/

namespace A030662.P4662857179014903118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A171074 (n + 1))

end

end A030662.P4662857179014903118

namespace A030662

/-- `or(1, A171074(n+1))` -/
def P4662857179014903118.Spec : Prop :=
  ∀ n, P4662857179014903118.a n = A030662 (n + 1)

end A030662

/-! ## A030662.P5440689064921822726

`(A134760(n+1)-1)/2`
-/

namespace A030662.P5440689064921822726
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A134760 (n + 1) - 1 : ℚ) / 2

end

end A030662.P5440689064921822726

namespace A030662

/-- `(A134760(n+1)-1)/2` -/
def P5440689064921822726.Spec : Prop :=
  ∀ n, P5440689064921822726.a n = (A030662 (n + 1) : ℚ)

theorem P5440689064921822726.correct : P5440689064921822726.Spec := by
  intro n
  simp only [A030662, Nat.add_sub_cancel, A030662.P5440689064921822726.a, A030662.P11997165729521447290.a, A115112, A115112.P11405233874723568779.a, A134760, A134760.P5337587419616991528.a, A000984, A000984.P7946844122574426130.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A030662

/-! ## A030662.P9636078057054085438

`(A134762(n+1)-1)/3`
-/

namespace A030662.P9636078057054085438
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A134762 (n + 1) - 1 : ℚ) / 3

end

end A030662.P9636078057054085438

namespace A030662

/-- `(A134762(n+1)-1)/3` -/
def P9636078057054085438.Spec : Prop :=
  ∀ n, P9636078057054085438.a n = (A030662 (n + 1) : ℚ)

theorem P9636078057054085438.correct : P9636078057054085438.Spec := by
  intro n
  simp only [A030662, Nat.add_sub_cancel, A030662.P9636078057054085438.a, A030662.P11997165729521447290.a, A115112, A115112.P11405233874723568779.a, A134762, A134762.P15216652540126543409.a, A000984, A000984.P7946844122574426130.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A030662

/-! ## A030662.P18415159223584297936

`A218008(2*(n+1))/2`
-/

namespace A030662.P18415159223584297936
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A218008 (2 * (n + 1)) : ℚ) / 2

end

end A030662.P18415159223584297936

namespace A030662

/-- `A218008(2*(n+1))/2` -/
def P18415159223584297936.Spec : Prop :=
  ∀ n, P18415159223584297936.a n = (A030662 (n + 1) : ℚ)

end A030662

/-!
# A030664: Product of largest prime <= n and smallest prime >= n.

The programs for A030664, the canonical program `A030664.P6535204466194912512` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A030664 has offset 0).

The definition of A030664 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A030664.P6535204466194912512

`∏{p}[A136548(1+n), #*A007918(n)]`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A030664

/-- `∏{p}[A136548(1+n), #*A007918(n)]` -/
def P6535204466194912512.Spec : Prop :=
  ∀ n, P6535204466194912512.a n = A030664 n

theorem P6535204466194912512.correct : P6535204466194912512.Spec := by
  intro n
  simp only [A030664]

end A030664

/-! ## A030664.P6391118788657838506

`(A007918(n)*A136548(n+1))^and(1, A333747(n+1))`
-/

namespace A030664.P6391118788657838506
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007918 n * A136548 (n + 1) : ℚ) ^ (Int.land 1 (A333747 (n + 1)) : ℤ)

end

end A030664.P6391118788657838506

namespace A030664

/-- `(A007918(n)*A136548(n+1))^and(1, A333747(n+1))` -/
def P6391118788657838506.Spec : Prop :=
  ∀ n, P6391118788657838506.a n = (A030664 n : ℚ)

end A030664

/-! ## A030664.P11331363650124271697

`A007918(n)*A136548(n+1)-A000007(A004526(n))`
-/

namespace A030664.P11331363650124271697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007918 n * A136548 (n + 1) - A000007 (A004526 n).toNat

end

end A030664.P11331363650124271697

namespace A030664

/-- `A007918(n)*A136548(n+1)-A000007(A004526(n))` -/
def P11331363650124271697.Spec : Prop :=
  ∀ n, P11331363650124271697.a n = A030664 n

end A030664

/-! ## A030664.P16177598300529408473

`A136548(n+1)*A159477(A028310(n))`
-/

namespace A030664.P16177598300529408473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136548 (n + 1) * A159477 (A028310 n).toNat

end

end A030664.P16177598300529408473

namespace A030664

/-- `A136548(n+1)*A159477(A028310(n))` -/
def P16177598300529408473.Spec : Prop :=
  ∀ n, P16177598300529408473.a n = A030664 n

end A030664

/-! ## A030664.P6481795382197369652

`A064989(A151800(n))*A159477(A028310(n))`
-/

namespace A030664.P6481795382197369652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064989 (A151800 n).toNat * A159477 (A028310 n).toNat

end

end A030664.P6481795382197369652

namespace A030664

/-- `A064989(A151800(n))*A159477(A028310(n))` -/
def P6481795382197369652.Spec : Prop :=
  ∀ n, P6481795382197369652.a n = A030664 n

end A030664

/-! ## A030664.P11872804015248301036

`A064989(A159477(n+1))*A159477(A028310(n))`
-/

namespace A030664.P11872804015248301036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064989 (A159477 (n + 1)).toNat * A159477 (A028310 n).toNat

end

end A030664.P11872804015248301036

namespace A030664

/-- `A064989(A159477(n+1))*A159477(A028310(n))` -/
def P11872804015248301036.Spec : Prop :=
  ∀ n, P11872804015248301036.a n = A030664 n

end A030664

/-! ## A030664.P15827814308376588124

`A136548(n+1)/A014963(A001747(n+1))*A007918(n)`
-/

namespace A030664.P15827814308376588124
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A136548 (n + 1) : ℚ) / (A014963 (A001747 (n + 1)).toNat : ℚ) * (A007918 n : ℚ)

end

end A030664.P15827814308376588124

namespace A030664

/-- `A136548(n+1)/A014963(A001747(n+1))*A007918(n)` -/
def P15827814308376588124.Spec : Prop :=
  ∀ n, P15827814308376588124.a n = (A030664 n : ℚ)

end A030664

/-! ## A030664.P12721050413761621061

`(A007918(n)-A154271(A127473(n+1)))*A136548(n+1)`
-/

namespace A030664.P12721050413761621061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A007918 n - A154271 (A127473 (n + 1)).toNat) * A136548 (n + 1)

end

end A030664.P12721050413761621061

namespace A030664

/-- `(A007918(n)-A154271(A127473(n+1)))*A136548(n+1)` -/
def P12721050413761621061.Spec : Prop :=
  ∀ n, P12721050413761621061.a n = A030664 n

end A030664

/-! ## A030664.P7302380942722371891

`A014684(A007918(n)*A136548(n+1))`
-/

namespace A030664.P7302380942722371891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014684 (A007918 n * A136548 (n + 1)).toNat

end

end A030664.P7302380942722371891

namespace A030664

/-- `A014684(A007918(n)*A136548(n+1))` -/
def P7302380942722371891.Spec : Prop :=
  ∀ n, P7302380942722371891.a n = A030664 n

end A030664

/-! ## A030664.P9312159231189382297

`A288469(A007918(n)*A136548(n+1))`
-/

namespace A030664.P9312159231189382297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288469 (A007918 n * A136548 (n + 1)).toNat

end

end A030664.P9312159231189382297

namespace A030664

/-- `A288469(A007918(n)*A136548(n+1))` -/
def P9312159231189382297.Spec : Prop :=
  ∀ n, P9312159231189382297.a n = A030664 n

end A030664

/-!
# A030665: Smallest nontrivial extension of n which is prime.

The programs for A030665, there is no canonical definition to state claims against.
-/

/-! ## A030665.P12394769096124855456

`A077344(A000124(n)+Δ[A230980(n)])`
-/

namespace A030665.P12394769096124855456
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230980 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077344 (A000124 n + (f1 (n + 1) - f1 n)).toNat

end

end A030665.P12394769096124855456

/-! ## A030665.P11039908224103198490

`A077501(n+1)`
-/

namespace A030665.P11039908224103198490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077501 (n + 1)

end

end A030665.P11039908224103198490

/-! ## A030665.P13616982345624273649

`A256481(A242474(n+1))`
-/

namespace A030665.P13616982345624273649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256481 (A242474 (n + 1)).toNat

end

end A030665.P13616982345624273649

/-! ## A030665.P160001119342304462

`filter[A256481(n), A179770(#)]`
-/

namespace A030665.P160001119342304462
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256481 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A179770 (f1 j).toNat = 1) n)

end

end A030665.P160001119342304462

/-! ## A030665.P17755082848645075212

`filter[A256481(n), A377988(#)]`
-/

namespace A030665.P17755082848645075212
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256481 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A377988 (f1 j).toNat = 1) n)

end

end A030665.P17755082848645075212

/-!
# A030666: Smallest nontrivial extension of n which is a square.

The programs for A030666, there is no canonical definition to state claims against.
-/

/-! ## A030666.P9633903744017823756

`A030667(n+1)²`
-/

namespace A030666.P9633903744017823756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030667 (n + 1) ^ 2

end

end A030666.P9633903744017823756

/-! ## A030666.P13663980259796308291

`A030667(1+n)*A030667(n+1)`
-/

namespace A030666.P13663980259796308291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030667 (1 + n) * A030667 (n + 1)

end

end A030666.P13663980259796308291

/-! ## A030666.P11318868763784862450

`A000290(A030667(1+n))`
-/

namespace A030666.P11318868763784862450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000290 (A030667 (1 + n)).toNat

end

end A030666.P11318868763784862450

/-! ## A030666.P8673675142891473349

`A030676(A032555(n+1))`
-/

namespace A030666.P8673675142891473349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030676 (A032555 (n + 1)).toNat

end

end A030666.P8673675142891473349

/-!
# A030667: Square root of A030666(n).

The programs for A030667, there is no canonical definition to state claims against.
-/

/-! ## A030667.P10414692474095799488

`sqrt(A030666(1+n))`
-/

namespace A030667.P10414692474095799488
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A030666 (1 + n) : ℝ)

end

end A030667.P10414692474095799488

/-! ## A030667.P13010910412572666278

`root(A030666(n+1), 2)`
-/

namespace A030667.P13010910412572666278
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A030666 (n + 1) : ℝ) ^ (1 / (2 : ℝ))

end

end A030667.P13010910412572666278

/-! ## A030667.P9059412751036853170

`A056926(A030666(n+1))`
-/

namespace A030667.P9059412751036853170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056926 (A030666 (n + 1)).toNat

end

end A030667.P9059412751036853170

/-! ## A030667.P9309280641364522593

`A000188(A030666(n+1))`
-/

namespace A030667.P9309280641364522593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000188 (A030666 (n + 1)).toNat

end

end A030667.P9309280641364522593

/-! ## A030667.P2719195738675471677

`A272679(A030666(2*n+1-n))`
-/

namespace A030667.P2719195738675471677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272679 (A030666 (2 * n + 1 - n)).toNat

end

end A030667.P2719195738675471677

/-!
# A030668: Smallest nontrivial extension of n which is a cube.

The programs for A030668, there is no canonical definition to state claims against.
-/

/-! ## A030668.P3917345601103307944

`A030669(1+n)^3`
-/

namespace A030668.P3917345601103307944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030669 (1 + n) ^ 3

end

end A030668.P3917345601103307944

/-! ## A030668.P9124030467591610233

`A030669(n+1)*A030669(n+1)*A030669(n+1)`
-/

namespace A030668.P9124030467591610233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030669 (n + 1) * A030669 (n + 1) * A030669 (n + 1)

end

end A030668.P9124030467591610233

/-! ## A030668.P4752270003767251680

`A000578(A030669(1+n))`
-/

namespace A030668.P4752270003767251680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000578 (A030669 (1 + n)).toNat

end

end A030668.P4752270003767251680

/-! ## A030668.P17787311633204627905

`∑{d}[A030669(1+n), A059376(#)]`
-/

namespace A030668.P17787311633204627905
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030669 (1 + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A059376 d

end

end A030668.P17787311633204627905

/-! ## A030668.P367008424294570247

`A034828(2*A030669(n+1))`
-/

namespace A030668.P367008424294570247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034828 (2 * A030669 (n + 1)).toNat

end

end A030668.P367008424294570247

/-! ## A030668.P5551760702390216447

`A109588(3*A030669(n+1))`
-/

namespace A030668.P5551760702390216447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109588 (3 * A030669 (n + 1)).toNat

end

end A030668.P5551760702390216447

/-! ## A030668.P15062928110570796289

`A018796(A030669(n+1)²)*A030669(n+1)`
-/

namespace A030668.P15062928110570796289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018796 (A030669 (n + 1) ^ 2).toNat * A030669 (n + 1)

end

end A030668.P15062928110570796289

/-!
# A030669: Cube root of A030668.

The programs for A030669, there is no canonical definition to state claims against.
-/

/-! ## A030669.P10789846227908091603

`root(A030668(1+n), 3)`
-/

namespace A030669.P10789846227908091603
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A030668 (1 + n) : ℝ) ^ (1 / (3 : ℝ))

end

end A030669.P10789846227908091603

/-! ## A030669.P7094227901289603837

`A030668(n+1)^(1/3)`
-/

namespace A030669.P7094227901289603837
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A030668 (n + 1) : ℝ) ^ ((1 : ℚ) / 3 : ℝ)

end

end A030669.P7094227901289603837

/-! ## A030669.P220893573830435388

`A054846(floor(sqrt(A030668(1+n))))`
-/

namespace A030669.P220893573830435388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054846 (Int.sqrt (A030668 (1 + n))).toNat

end

end A030669.P220893573830435388

/-! ## A030669.P954135355103225794

`A100196(ceil(sqrt(A030668(n+1))))`
-/

namespace A030669.P954135355103225794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100196 ⌈Real.sqrt (A030668 (n + 1) : ℝ)⌉.toNat

end

end A030669.P954135355103225794

/-! ## A030669.P665314873512783936

`A018852(n+1-(A018797(n+1)-A030668(n+1)))`
-/

namespace A030669.P665314873512783936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018852 ((n + 1 : ℤ) - (A018797 (n + 1) - A030668 (n + 1))).toNat

end

end A030669.P665314873512783936

/-!
# A030670: Smallest prime formed by appending a number to the n-th prime.

The programs for A030670, there is no canonical definition to state claims against.
-/

/-! ## A030670.P5042750670688711348

`A064792(n+1)`
-/

namespace A030670.P5042750670688711348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064792 (n + 1)

end

end A030670.P5042750670688711348

/-! ## A030670.P2979216054109169734

`A030665(A000040(n+1))`
-/

namespace A030670.P2979216054109169734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030665 (A000040 (n + 1)).toNat

end

end A030670.P2979216054109169734

/-! ## A030670.P15578558654975859880

`A086547(A390240(n))`
-/

namespace A030670.P15578558654975859880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086547 (A390240 n).toNat

end

end A030670.P15578558654975859880

/-! ## A030670.P4899941650132183562

`A086547(A181325(n))`
-/

namespace A030670.P4899941650132183562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086547 (A181325 n).toNat

end

end A030670.P4899941650132183562

/-! ## A030670.P58491689333389058

`A256481(A182231(n+1))`
-/

namespace A030670.P58491689333389058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256481 (A182231 (n + 1)).toNat

end

end A030670.P58491689333389058

/-!
# A030671: Smallest extension of n-th prime which is a square.

The programs for A030671, there is no canonical definition to state claims against.
-/

/-! ## A030671.P15900231303435457076

`A030666(A000040(n+1))`
-/

namespace A030671.P15900231303435457076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030666 (A000040 (n + 1)).toNat

end

end A030671.P15900231303435457076

/-! ## A030671.P15319761886096070089

`A018796(Δ[A007504(n)])`
-/

namespace A030671.P15319761886096070089
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018796 (f1 (n + 1) - f1 n).toNat

end

end A030671.P15319761886096070089

/-! ## A030671.P4954031264729144046

`A030672(n+1)²`
-/

namespace A030671.P4954031264729144046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030672 (n + 1) ^ 2

end

end A030671.P4954031264729144046

/-! ## A030671.P3247458848916609935

`A018851(Δ[A007504(n)])²`
-/

namespace A030671.P3247458848916609935
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018851 (f1 (n + 1) - f1 n).toNat ^ 2

end

end A030671.P3247458848916609935

/-! ## A030671.P17562381031991108693

`A018851(record[A006530(n+2)])²`
-/

namespace A030671.P17562381031991108693
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018851 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat ^ 2

end

end A030671.P17562381031991108693

/-! ## A030671.P7107977080334348717

`A018851(record[A020639(n+2)])²`
-/

namespace A030671.P7107977080334348717
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018851 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat ^ 2

end

end A030671.P7107977080334348717

/-! ## A030671.P10766049927840650730

`A018851(p?[A014681(n)])²`
-/

namespace A030671.P10766049927840650730
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014681 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018851 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat ^ 2

end

end A030671.P10766049927840650730

/-! ## A030671.P6705320337269148759

`A018851(record[A014963(n+2)])²`
-/

namespace A030671.P6705320337269148759
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018851 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat ^ 2

end

end A030671.P6705320337269148759

/-! ## A030671.P3778657895500738113

`A030667(record[A006530(n+2)])²`
-/

namespace A030671.P3778657895500738113
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030667 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat ^ 2

end

end A030671.P3778657895500738113

/-!
# A030672: Square root of A030671.

The programs for A030672, there is no canonical definition to state claims against.
-/

/-! ## A030672.P10464217594210811424

`sqrt(A030671(n+1))`
-/

namespace A030672.P10464217594210811424
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A030671 (n + 1) : ℝ)

end

end A030672.P10464217594210811424

/-! ## A030672.P9724324480729961360

`A018851(Δ[A007504(n)])`
-/

namespace A030672.P9724324480729961360
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018851 (f1 (n + 1) - f1 n).toNat

end

end A030672.P9724324480729961360

/-! ## A030672.P11385150904217154236

`A030667(A000040(n+1))`
-/

namespace A030672.P11385150904217154236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030667 (A000040 (n + 1)).toNat

end

end A030672.P11385150904217154236

/-! ## A030672.P7888317651301783108

`A077348(A072205(n+1))`
-/

namespace A030672.P7888317651301783108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077348 (A072205 (n + 1)).toNat

end

end A030672.P7888317651301783108

/-!
# A030673: Smallest cube that begins with n-th prime.

The programs for A030673, there is no canonical definition to state claims against.
-/

/-! ## A030673.P5128959106978102004

`A018797(A000040(n+1))`
-/

namespace A030673.P5128959106978102004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018797 (A000040 (n + 1)).toNat

end

end A030673.P5128959106978102004

/-! ## A030673.P1103126734934953101

`A018797(Δ[A007504(n)])`
-/

namespace A030673.P1103126734934953101
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018797 (f1 (n + 1) - f1 n).toNat

end

end A030673.P1103126734934953101

/-! ## A030673.P3648716132893228754

`A030668(A000040(1+n))`
-/

namespace A030673.P3648716132893228754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030668 (A000040 (1 + n)).toNat

end

end A030673.P3648716132893228754

/-! ## A030673.P16514482758365522191

`A030674(n+1)^3`
-/

namespace A030673.P16514482758365522191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030674 (n + 1) ^ 3

end

end A030673.P16514482758365522191

/-! ## A030673.P450442283738850090

`A000578(A030674(n+1))`
-/

namespace A030673.P450442283738850090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000578 (A030674 (n + 1)).toNat

end

end A030673.P450442283738850090

/-!
# A030674: Cube root of A030673.

The programs for A030674, there is no canonical definition to state claims against.
-/

/-! ## A030674.P17064886958852781821

`A018852(Δ[A007504(n)])`
-/

namespace A030674.P17064886958852781821
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018852 (f1 (n + 1) - f1 n).toNat

end

end A030674.P17064886958852781821

/-! ## A030674.P7155889017263536916

`A030669(Δ[A007504(n)])`
-/

namespace A030674.P7155889017263536916
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030669 (f1 (n + 1) - f1 n).toNat

end

end A030674.P7155889017263536916

/-! ## A030674.P765821778536685528

`A260465(A216886(n+1))`
-/

namespace A030674.P765821778536685528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260465 (A216886 (n + 1)).toNat

end

end A030674.P765821778536685528

/-!
# A030675: Smallest nontrivial extension of n-th palindrome which is a prime.

The programs for A030675, there is no canonical definition to state claims against.
-/

/-! ## A030675.P13667157142985502641

`A030665(A002113(n+2))`
-/

namespace A030675.P13667157142985502641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030665 (A002113 (n + 2)).toNat

end

end A030675.P13667157142985502641

/-! ## A030675.P13580504310995018800

`A110786(n+1)`
-/

namespace A030675.P13580504310995018800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110786 (n + 1)

end

end A030675.P13580504310995018800

/-! ## A030675.P13126330640613837536

`A256481(A283870(n+1))`
-/

namespace A030675.P13126330640613837536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256481 (A283870 (n + 1)).toNat

end

end A030675.P13126330640613837536

/-! ## A030675.P3262196081948675841

`filter[A218255(n), A103583(#)]`
-/

namespace A030675.P3262196081948675841
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218255 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A103583 (f1 j).toNat = 1) n)

end

end A030675.P3262196081948675841

/-! ## A030675.P3064792462416267523

`filter[A256481(n), A103583(#)]`
-/

namespace A030675.P3064792462416267523
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256481 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A103583 (f1 j).toNat = 1) n)

end

end A030675.P3064792462416267523

/-!
# A030676: Smallest nontrivial extension of n-th palindrome which is a square.

The programs for A030676, there is no canonical definition to state claims against.
-/

/-! ## A030676.P11972364960115917805

`A030677(1+n)²`
-/

namespace A030676.P11972364960115917805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030677 (1 + n) ^ 2

end

end A030676.P11972364960115917805

/-! ## A030676.P10711687926125626451

`A030677(n+1)^2`
-/

namespace A030676.P10711687926125626451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030677 (n + 1) ^ 2

end

end A030676.P10711687926125626451

/-! ## A030676.P14088242643672257628

`A030677(1+n)*A030677(n+1)`
-/

namespace A030676.P14088242643672257628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030677 (1 + n) * A030677 (n + 1)

end

end A030676.P14088242643672257628

/-! ## A030676.P2431932987476462379

`A030666(A002113(n+2))`
-/

namespace A030676.P2431932987476462379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030666 (A002113 (n + 2)).toNat

end

end A030676.P2431932987476462379

/-! ## A030676.P4237057141810484191

`A030667(A335779(n+2))²`
-/

namespace A030676.P4237057141810484191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030667 (A335779 (n + 2)).toNat ^ 2

end

end A030676.P4237057141810484191

/-! ## A030676.P18413239945443026399

`A000290(A030677(n+1))`
-/

namespace A030676.P18413239945443026399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000290 (A030677 (n + 1)).toNat

end

end A030676.P18413239945443026399

/-!
# A030677: a(n) is the square root of A030676(n).

The programs for A030677, there is no canonical definition to state claims against.
-/

/-! ## A030677.P15013672696936945056

`sqrt(A030676(1+n))`
-/

namespace A030677.P15013672696936945056
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A030676 (1 + n) : ℝ)

end

end A030677.P15013672696936945056

/-! ## A030677.P1665846643360761894

`root(A030676(n+1), 2)`
-/

namespace A030677.P1665846643360761894
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A030676 (n + 1) : ℝ) ^ (1 / (2 : ℝ))

end

end A030677.P1665846643360761894

/-! ## A030677.P15562538360725036133

`A030667(A002113(n+2))`
-/

namespace A030677.P15562538360725036133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030667 (A002113 (n + 2)).toNat

end

end A030677.P15562538360725036133

/-! ## A030677.P18101983908484763917

`A056926(A030676(n+1))`
-/

namespace A030677.P18101983908484763917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056926 (A030676 (n + 1)).toNat

end

end A030677.P18101983908484763917

/-! ## A030677.P3145462864458265471

`A000188(A030676(n+1))`
-/

namespace A030677.P3145462864458265471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000188 (A030676 (n + 1)).toNat

end

end A030677.P3145462864458265471

/-!
# A030678: Smallest nontrivial extension of n-th palindrome which is a cube.

The programs for A030678, there is no canonical definition to state claims against.
-/

/-! ## A030678.P5833466910633432199

`A030679(n+1)^3`
-/

namespace A030678.P5833466910633432199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030679 (n + 1) ^ 3

end

end A030678.P5833466910633432199

/-! ## A030678.P17768404352451549310

`A030668(A002113(n+2))`
-/

namespace A030678.P17768404352451549310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030668 (A002113 (n + 2)).toNat

end

end A030678.P17768404352451549310

/-! ## A030678.P8857093886115876691

`A030679(A000027(n+1))²*A030679(n+1)`
-/

namespace A030678.P8857093886115876691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030679 (A000027 (n + 1)).toNat ^ 2 * A030679 (n + 1)

end

end A030678.P8857093886115876691

/-! ## A030678.P5580153238592696518

`A000578(A030679(n+1))`
-/

namespace A030678.P5580153238592696518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000578 (A030679 (n + 1)).toNat

end

end A030678.P5580153238592696518

/-!
# A030679: Cube root of A030678.

The programs for A030679, there is no canonical definition to state claims against.
-/

/-! ## A030679.P1856148805330710811

`A030678(n+1)^(1/3)`
-/

namespace A030679.P1856148805330710811
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A030678 (n + 1) : ℝ) ^ ((1 : ℚ) / 3 : ℝ)

end

end A030679.P1856148805330710811

/-! ## A030679.P5532923005577526019

`A030669(A002113(n+2))`
-/

namespace A030679.P5532923005577526019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030669 (A002113 (n + 2)).toNat

end

end A030679.P5532923005577526019

/-! ## A030679.P15480105688047122761

`root(A030678(n+1), 3)`
-/

namespace A030679.P15480105688047122761
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A030678 (n + 1) : ℝ) ^ (1 / (3 : ℝ))

end

end A030679.P15480105688047122761

/-!
# A030680: Smallest nontrivial extension of n-th palindromic prime which is a prime.

The programs for A030680, there is no canonical definition to state claims against.
-/

/-! ## A030680.P8796488133175429921

`A030675(eq[A002113(n+1), A195294(n+1)])`
-/

namespace A030680.P8796488133175429921
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002113 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195294 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030675 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A030680.P8796488133175429921

/-! ## A030680.P12667623381109787371

`A064792(A075807(n+1))`
-/

namespace A030680.P12667623381109787371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064792 (A075807 (n + 1)).toNat

end

end A030680.P12667623381109787371

/-! ## A030680.P4640656299487204759

`A030665(A002385(n+1))`
-/

namespace A030680.P4640656299487204759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030665 (A002385 (n + 1)).toNat

end

end A030680.P4640656299487204759

/-!
# A030681: Smallest nontrivial extension of n-th palindromic prime which is a square.

The programs for A030681, there is no canonical definition to state claims against.
-/

/-! ## A030681.P6462213865085460854

`A030682(n+1)²`
-/

namespace A030681.P6462213865085460854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030682 (n + 1) ^ 2

end

end A030681.P6462213865085460854

/-! ## A030681.P10037405293352725860

`A030682(A000027(n+1))^2`
-/

namespace A030681.P10037405293352725860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030682 (A000027 (n + 1)).toNat ^ 2

end

end A030681.P10037405293352725860

/-! ## A030681.P2074400102440975526

`A030682(A000027(n+1))*A030682(n+1)`
-/

namespace A030681.P2074400102440975526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030682 (A000027 (n + 1)).toNat * A030682 (n + 1)

end

end A030681.P2074400102440975526

/-! ## A030681.P17254778385388330413

`A030682(A000124(n+1)-A000124(n))*A030682(n+1)`
-/

namespace A030681.P17254778385388330413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030682 (A000124 (n + 1) - A000124 n).toNat * A030682 (n + 1)

end

end A030681.P17254778385388330413

/-! ## A030681.P2117112170274975531

`A018796(A002385(n+1))`
-/

namespace A030681.P2117112170274975531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018796 (A002385 (n + 1)).toNat

end

end A030681.P2117112170274975531

/-! ## A030681.P10159980718096526174

`A030671(A075807(n+1))`
-/

namespace A030681.P10159980718096526174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030671 (A075807 (n + 1)).toNat

end

end A030681.P10159980718096526174

/-!
# A030682: Square root of A030681.

The programs for A030682, there is no canonical definition to state claims against.
-/

/-! ## A030682.P11900098086099540138

`sqrt(A030681(1+n))`
-/

namespace A030682.P11900098086099540138
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A030681 (1 + n) : ℝ)

end

end A030682.P11900098086099540138

/-! ## A030682.P9771492391857352702

`root(A030681(n+1), 2)`
-/

namespace A030682.P9771492391857352702
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A030681 (n + 1) : ℝ) ^ (1 / (2 : ℝ))

end

end A030682.P9771492391857352702

/-! ## A030682.P17187377556860266247

`A030672(A075807(n+1))`
-/

namespace A030682.P17187377556860266247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030672 (A075807 (n + 1)).toNat

end

end A030682.P17187377556860266247

/-! ## A030682.P10140422709339488080

`A018851(A002385(n+1))`
-/

namespace A030682.P10140422709339488080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018851 (A002385 (n + 1)).toNat

end

end A030682.P10140422709339488080

/-!
# A030683: Smallest nontrivial extension of n-th palindromic prime which is a cube.

The programs for A030683, there is no canonical definition to state claims against.
-/

/-! ## A030683.P5925918347623705821

`A030684(1+n)^3`
-/

namespace A030683.P5925918347623705821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030684 (1 + n) ^ 3

end

end A030683.P5925918347623705821

/-! ## A030683.P3839370715143756949

`A030684(A000027(n+1))²*A030684(n+1)`
-/

namespace A030683.P3839370715143756949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030684 (A000027 (n + 1)).toNat ^ 2 * A030684 (n + 1)

end

end A030683.P3839370715143756949

/-! ## A030683.P15884994285053768429

`A030684(A032742(2*(n+1)))²*A030684(n+1)`
-/

namespace A030683.P15884994285053768429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030684 (A032742 (2 * (n + 1))).toNat ^ 2 * A030684 (n + 1)

end

end A030683.P15884994285053768429

/-! ## A030683.P16593826246849126562

`A030678(eq[A002113(n+1), A195294(n+1)])`
-/

namespace A030683.P16593826246849126562
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002113 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195294 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030678 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A030683.P16593826246849126562

/-! ## A030683.P16071728874122977952

`A030673(A075807(n+1))`
-/

namespace A030683.P16071728874122977952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030673 (A075807 (n + 1)).toNat

end

end A030683.P16071728874122977952

/-!
# A030684: Cube root of A030683.

The programs for A030684, there is no canonical definition to state claims against.
-/

/-! ## A030684.P184905232483555615

`root(A030683(n+1), 3)`
-/

namespace A030684.P184905232483555615
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A030683 (n + 1) : ℝ) ^ (1 / (3 : ℝ))

end

end A030684.P184905232483555615

/-! ## A030684.P68194462221082727

`A030678(eq[A002113(n+1), A195294(n+1)])^(1/3)`
-/

namespace A030684.P68194462221082727
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002113 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195294 (n + 1)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A030678 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n) : ℝ) ^ ((1 : ℚ) / 3 : ℝ)

end

end A030684.P68194462221082727

/-! ## A030684.P6998825267185802681

`A030673(A075807(n+1))^(1/3)`
-/

namespace A030684.P6998825267185802681
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A030673 (A075807 (n + 1)).toNat : ℝ) ^ ((1 : ℚ) / 3 : ℝ)

end

end A030684.P6998825267185802681

/-! ## A030684.P1254771852472656397

`A018852(A002385(n+1))`
-/

namespace A030684.P1254771852472656397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018852 (A002385 (n + 1)).toNat

end

end A030684.P1254771852472656397

/-! ## A030684.P6685192805291405945

`A030669(A088562(n+1))`
-/

namespace A030684.P6685192805291405945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030669 (A088562 (n + 1)).toNat

end

end A030684.P6685192805291405945

/-!
# A030685: Smallest nontrivial extension of n-th square which is a prime.

The programs for A030685, there is no canonical definition to state claims against.
-/

/-! ## A030685.P13534022941451063765

`A065145(n+1)`
-/

namespace A030685.P13534022941451063765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065145 (n + 1)

end

end A030685.P13534022941451063765

/-! ## A030685.P5720702338016742653

`A018800((1+n)²)`
-/

namespace A030685.P5720702338016742653
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018800 ((1 + n) ^ 2)

end

end A030685.P5720702338016742653

/-! ## A030685.P15296472008623227975

`A030665((n+1)²)`
-/

namespace A030685.P15296472008623227975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030665 ((n + 1) ^ 2)

end

end A030685.P15296472008623227975

/-! ## A030685.P5782455408572462252

`A258337((n+1)²)`
-/

namespace A030685.P5782455408572462252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258337 ((n + 1) ^ 2)

end

end A030685.P5782455408572462252

/-! ## A030685.P1710354367058302580

`A159477(A033583(n+1))`
-/

namespace A030685.P1710354367058302580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159477 (A033583 (n + 1)).toNat

end

end A030685.P1710354367058302580

/-!
# A030686: Smallest nontrivial extension of n^2 which is a square.

The programs for A030686, there is no canonical definition to state claims against.
-/

/-! ## A030686.P9052799686777009795

`A030687(n+1)²`
-/

namespace A030686.P9052799686777009795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030687 (n + 1) ^ 2

end

end A030686.P9052799686777009795

/-! ## A030686.P1542449677708721356

`A030666((n+1)²)`
-/

namespace A030686.P1542449677708721356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030666 ((n + 1) ^ 2)

end

end A030686.P1542449677708721356

/-! ## A030686.P4909776307750045166

`A030687(A000027(n+1))^2`
-/

namespace A030686.P4909776307750045166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030687 (A000027 (n + 1)).toNat ^ 2

end

end A030686.P4909776307750045166

/-! ## A030686.P12681127072120886930

`A030687(1+n)*A030687(n+1)`
-/

namespace A030686.P12681127072120886930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030687 (1 + n) * A030687 (n + 1)

end

end A030686.P12681127072120886930

/-! ## A030686.P12482982192028440595

`A000290(A030687(n+1)%A000389(n+12))`
-/

namespace A030686.P12482982192028440595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000290 (Int.tmod (A030687 (n + 1)) (A000389 (n + 12))).toNat

end

end A030686.P12482982192028440595

/-! ## A030686.P10190767688855596063

`A030667((n+1)²)²`
-/

namespace A030686.P10190767688855596063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030667 ((n + 1) ^ 2) ^ 2

end

end A030686.P10190767688855596063

/-!
# A030687: Square root of A030686.

The programs for A030687, there is no canonical definition to state claims against.
-/

/-! ## A030687.P17139790574677974685

`sqrt(A030686(n+1))`
-/

namespace A030687.P17139790574677974685
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A030686 (n + 1) : ℝ)

end

end A030687.P17139790574677974685

/-! ## A030687.P1083428146307935046

`sqrt(A030666((n+1)²))`
-/

namespace A030687.P1083428146307935046
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A030666 ((n + 1) ^ 2) : ℝ)

end

end A030687.P1083428146307935046

/-! ## A030687.P12548942265243535272

`A030667((n+1)²)`
-/

namespace A030687.P12548942265243535272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030667 ((n + 1) ^ 2)

end

end A030687.P12548942265243535272

/-!
# A030688: Smallest nontrivial extension of n-th square which is a square not ending 00.

The programs for A030688, there is no canonical definition to state claims against.
-/

/-! ## A030688.P13773166642362761122

`A030689(1+n)²`
-/

namespace A030688.P13773166642362761122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030689 (1 + n) ^ 2

end

end A030688.P13773166642362761122

/-! ## A030688.P17808071024110541603

`A030689(n+1)^2`
-/

namespace A030688.P17808071024110541603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030689 (n + 1) ^ 2

end

end A030688.P17808071024110541603

/-! ## A030688.P15272781397134159183

`A000290(A030689(n+1))`
-/

namespace A030688.P15272781397134159183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000290 (A030689 (n + 1)).toNat

end

end A030688.P15272781397134159183

/-!
# A030689: Square root of A030688.

The programs for A030689, there is no canonical definition to state claims against.
-/

/-! ## A030689.P3864532098438213621

`sqrt(A030688(1+n))`
-/

namespace A030689.P3864532098438213621
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A030688 (1 + n) : ℝ)

end

end A030689.P3864532098438213621

/-! ## A030689.P5470834186484180502

`root(A030688(n+1), 2)`
-/

namespace A030689.P5470834186484180502
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A030688 (n + 1) : ℝ) ^ (1 / (2 : ℝ))

end

end A030689.P5470834186484180502

/-! ## A030689.P4920779242938874595

`A056926(A030688(n+1))`
-/

namespace A030689.P4920779242938874595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056926 (A030688 (n + 1)).toNat

end

end A030689.P4920779242938874595

/-!
# A030690: Smallest nontrivial extension of n-th square which is a cube.

The programs for A030690, there is no canonical definition to state claims against.
-/

/-! ## A030690.P15099114240344593422

`A030691(1+n)^3`
-/

namespace A030690.P15099114240344593422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030691 (1 + n) ^ 3

end

end A030690.P15099114240344593422

/-! ## A030690.P5226659437385813541

`A030691(n+1)²*A030691(n+1)`
-/

namespace A030690.P5226659437385813541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030691 (n + 1) ^ 2 * A030691 (n + 1)

end

end A030690.P5226659437385813541

/-! ## A030690.P13424105490932273482

`A030668((1+n)²)`
-/

namespace A030690.P13424105490932273482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030668 ((1 + n) ^ 2)

end

end A030690.P13424105490932273482

/-! ## A030690.P1289436410244609957

`A030669((n+1)²)^3`
-/

namespace A030690.P1289436410244609957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030669 ((n + 1) ^ 2) ^ 3

end

end A030690.P1289436410244609957

/-! ## A030690.P8217644534355951973

`A000578(A030691(n+1))`
-/

namespace A030690.P8217644534355951973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000578 (A030691 (n + 1)).toNat

end

end A030690.P8217644534355951973

/-!
# A030691: Cube root of A030690.

The programs for A030691, there is no canonical definition to state claims against.
-/

/-! ## A030691.P11680415178459215138

`root(A030690(1+n), 3)`
-/

namespace A030691.P11680415178459215138
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A030690 (1 + n) : ℝ) ^ (1 / (3 : ℝ))

end

end A030691.P11680415178459215138

/-! ## A030691.P3681619712815812160

`A030690(n+1)^(1/3)`
-/

namespace A030691.P3681619712815812160
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A030690 (n + 1) : ℝ) ^ ((1 : ℚ) / 3 : ℝ)

end

end A030691.P3681619712815812160

/-! ## A030691.P11683614869365398428

`A030669((n+1)²)`
-/

namespace A030691.P11683614869365398428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030669 ((n + 1) ^ 2)

end

end A030691.P11683614869365398428

/-! ## A030691.P11566585042579248336

`root(A030668((n+1)²), 3)`
-/

namespace A030691.P11566585042579248336
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A030668 ((n + 1) ^ 2) : ℝ) ^ (1 / (3 : ℝ))

end

end A030691.P11566585042579248336

/-!
# A030692: Smallest nontrivial extension of n-th cube which is a prime.

The programs for A030692, there is no canonical definition to state claims against.
-/

/-! ## A030692.P10648875491242810191

`A018800((n+1)^3)`
-/

namespace A030692.P10648875491242810191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018800 ((n + 1) ^ 3)

end

end A030692.P10648875491242810191

/-! ## A030692.P10304476178669202571

`A030665(A270436(n+1)^3)`
-/

namespace A030692.P10304476178669202571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030665 (A270436 (n + 1) ^ 3).toNat

end

end A030692.P10304476178669202571

/-!
# A030693: Smallest nontrivial extension of n-th cube which is a square.

The programs for A030693, there is no canonical definition to state claims against.
-/

/-! ## A030693.P7041162824293949658

`A030694(1+n)²`
-/

namespace A030693.P7041162824293949658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030694 (1 + n) ^ 2

end

end A030693.P7041162824293949658

/-! ## A030693.P16242085929266089882

`A030694(n+1)^2`
-/

namespace A030693.P16242085929266089882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030694 (n + 1) ^ 2

end

end A030693.P16242085929266089882

/-! ## A030693.P17560427604749913471

`A030666((n+1)^3)`
-/

namespace A030693.P17560427604749913471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030666 ((n + 1) ^ 3)

end

end A030693.P17560427604749913471

/-! ## A030693.P12941392428986411633

`A030667((n+1)^3)²`
-/

namespace A030693.P12941392428986411633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030667 ((n + 1) ^ 3) ^ 2

end

end A030693.P12941392428986411633

/-! ## A030693.P14106122718056327849

`A000290(A030694(n+1))`
-/

namespace A030693.P14106122718056327849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000290 (A030694 (n + 1)).toNat

end

end A030693.P14106122718056327849

/-!
# A030694: Square root of A030693.

The programs for A030694, there is no canonical definition to state claims against.
-/

/-! ## A030694.P793190250447083827

`sqrt(A030693(n+1))`
-/

namespace A030694.P793190250447083827
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A030693 (n + 1) : ℝ)

end

end A030694.P793190250447083827

/-! ## A030694.P17392867288026267875

`root(A030693(1+n), 2)`
-/

namespace A030694.P17392867288026267875
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A030693 (1 + n) : ℝ) ^ (1 / (2 : ℝ))

end

end A030694.P17392867288026267875

/-! ## A030694.P6640293902229621633

`sqrt(A030666((n+1)^3))`
-/

namespace A030694.P6640293902229621633
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A030666 ((n + 1) ^ 3) : ℝ)

end

end A030694.P6640293902229621633

/-! ## A030694.P848427174360318520

`A030667((n+1)^3)`
-/

namespace A030694.P848427174360318520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030667 ((n + 1) ^ 3)

end

end A030694.P848427174360318520

/-!
# A030695: Smallest nontrivial extension of n-th cube which is a cube.

The programs for A030695, there is no canonical definition to state claims against.
-/

/-! ## A030695.P14893202419105220543

`A030696(1+n)^3`
-/

namespace A030695.P14893202419105220543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030696 (1 + n) ^ 3

end

end A030695.P14893202419105220543

/-! ## A030695.P2641724297604530647

`A030696(n+1)*A030696(n+1)*A030696(n+1)`
-/

namespace A030695.P2641724297604530647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030696 (n + 1) * A030696 (n + 1) * A030696 (n + 1)

end

end A030695.P2641724297604530647

/-! ## A030695.P10254192395644541641

`A000578(A030696(1+n))`
-/

namespace A030695.P10254192395644541641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000578 (A030696 (1 + n)).toNat

end

end A030695.P10254192395644541641

/-! ## A030695.P12316590241026966124

`A000583(A030696(n+1))/A030696(n+1)`
-/

namespace A030695.P12316590241026966124
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000583 (A030696 (n + 1)).toNat : ℚ) / (A030696 (n + 1) : ℚ)

end

end A030695.P12316590241026966124

/-! ## A030695.P18194966973282034347

`A066020(A030696(n+1))`
-/

namespace A030695.P18194966973282034347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066020 (A030696 (n + 1)).toNat

end

end A030695.P18194966973282034347

/-!
# A030696: Cube root of A030695.

The programs for A030696, there is no canonical definition to state claims against.
-/

/-! ## A030696.P14787542635797481712

`A030695(1+n)^(1/3)`
-/

namespace A030696.P14787542635797481712
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A030695 (1 + n) : ℝ) ^ ((1 : ℚ) / 3 : ℝ)

end

end A030696.P14787542635797481712

/-!
# A030697: Smallest nontrivial extension of n-th cube which is a cube not ending 000.

The programs for A030697, there is no canonical definition to state claims against.
-/

/-! ## A030697.P14530983604247101812

`A030698(1+n)^3`
-/

namespace A030697.P14530983604247101812
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030698 (1 + n) ^ 3

end

end A030697.P14530983604247101812

/-! ## A030697.P5743078772498714171

`A030698(n+1)*A030698(n+1)²`
-/

namespace A030697.P5743078772498714171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030698 (n + 1) * A030698 (n + 1) ^ 2

end

end A030697.P5743078772498714171

/-! ## A030697.P16670218382266556932

`A000578(A030698(n+1))`
-/

namespace A030697.P16670218382266556932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000578 (A030698 (n + 1)).toNat

end

end A030697.P16670218382266556932

/-!
# A030698: Cube root of A030697.

The programs for A030698, there is no canonical definition to state claims against.
-/

/-! ## A030698.P9402262844100731776

`root(A030697(n+1), 3)`
-/

namespace A030698.P9402262844100731776
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A030697 (n + 1) : ℝ) ^ (1 / (3 : ℝ))

end

end A030698.P9402262844100731776

/-!
# A030699: Maximal value of Q(n,m) (number of partitions of n into m distinct summands) for given n.

The programs for A030699, there is no canonical definition to state claims against.
-/

/-! ## A030699.P16524426642171227939

`A008289(A257639(1+n)+∑[A003056(n)])`
-/

namespace A030699.P16524426642171227939
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008289 (A257639 (1 + n) + ∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A030699.P16524426642171227939

/-! ## A030699.P18284701948593473641

`A060016(A257639(1+n)+∑[n])`
-/

namespace A030699.P18284701948593473641
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060016 (A257639 (1 + n) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)).toNat

end

end A030699.P18284701948593473641

/-! ## A030699.P2177447815183271519

`A001399(A008624(p?[A091245(n)]))`
-/

namespace A030699.P2177447815183271519
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091245 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001399 (A008624 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat).toNat

end

end A030699.P2177447815183271519

/-! ## A030699.P7879113047171959851

`A025865(lt[A025831(2*(n+1)), A025866(3*n+4)])`
-/

namespace A030699.P7879113047171959851
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025831 (2 * (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025866 (3 * n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025865 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A030699.P7879113047171959851

/-! ## A030699.P14261297082603543625

`A348385(A274156(n))`
-/

namespace A030699.P14261297082603543625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348385 (A274156 n).toNat

end

end A030699.P14261297082603543625

