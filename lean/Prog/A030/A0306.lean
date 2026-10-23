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
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C022
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C035
import Seq.B000.C036
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
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C005
import Seq.B002.C006
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
import Seq.B006.C001
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

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A030600: Length of the n-th run of digit 5 in A030588.

The programs for A030600, there is no canonical definition to state claims against.
-/

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

/-! ## A030605.P18039495994286064350

`A023443(eq[A000007(n), A030604(n)])`
-/

namespace A030605.P18039495994286064350
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030604 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A030605.P18039495994286064350

/-! ## A030605.P10671190019945685732

`A023443(eq[A000038(n), A030604(n)])`
-/

namespace A030605.P10671190019945685732
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030604 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A030605.P10671190019945685732

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

/-! ## A030612.P17702519115362649566

`gcd(A007413(A067497(n+3)), A227505(n+1))`
-/

namespace A030612.P17702519115362649566
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A007413 (A067497 (n + 3)).toNat) (A227505 (n + 1))

end

end A030612.P17702519115362649566

/-! ## A030612.P10243762458343115385

`gcd(A001221(A238659(2*n+5)), A238619(2*n+1))`
-/

namespace A030612.P10243762458343115385
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A001221 (A238659 (2 * n + 5)).toNat) (A238619 (2 * n + 1))

end

end A030612.P10243762458343115385

/-!
# A030613: Length of n-th run of digit 1 in A030604.

The programs for A030613, there is no canonical definition to state claims against.
-/

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
# A030615: Length of n-th run of digit 3 in A030604.

The programs for A030615, there is no canonical definition to state claims against.
-/

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

/-! ## A030615.P1011305955810495761

`A000005(gcd(A036166(n+1), A056911(n+1)))`
-/

namespace A030615.P1011305955810495761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (Int.gcd (A036166 (n + 1)) (A056911 (n + 1)))

end

end A030615.P1011305955810495761

/-!
# A030616: Length of n-th run of digit 4 in A030604.

The programs for A030616, there is no canonical definition to state claims against.
-/

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

/-! ## A030623.P2284114692275373196

`A030624(A032559(n+1))`
-/

namespace A030623.P2284114692275373196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030624 (A032559 (n + 1)).toNat

end

end A030623.P2284114692275373196

/-! ## A030623.P16381984003283286694

`A030624(A077739(n+1))`
-/

namespace A030623.P16381984003283286694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030624 (A077739 (n + 1)).toNat

end

end A030623.P16381984003283286694

/-! ## A030623.P1653299298766973044

`A030624(A078213(n+1))`
-/

namespace A030623.P1653299298766973044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030624 (A078213 (n + 1)).toNat

end

end A030623.P1653299298766973044

/-!
# A030625: n(n+Z(n)), where Z( ) is the Narayana-Zidek-Capell sequence (A002083).

The programs for A030625, there is no canonical definition to state claims against.
-/

/-! ## A030625.P4392469459508741912

`n*(A002083(abs(1-n)+1)+n)`
-/

namespace A030625.P4392469459508741912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A002083 (|1 - (n : ℤ)| + 1).toNat + (n : ℤ))

end

end A030625.P4392469459508741912

/-! ## A030625.P2196072727590506133

`n*(A349144(A329699(n))+n)`
-/

namespace A030625.P2196072727590506133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A349144 (A329699 n).toNat + (n : ℤ))

end

end A030625.P2196072727590506133

/-! ## A030625.P11751733079406263859

`n*(A245879(n+1)+1)`
-/

namespace A030625.P11751733079406263859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A245879 (n + 1) + 1)

end

end A030625.P11751733079406263859

/-! ## A030625.P8552121500660297120

`n*A020725(A245879(n+1))`
-/

namespace A030625.P8552121500660297120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A020725 (A245879 (n + 1)).toNat

end

end A030625.P8552121500660297120

/-!
# A030626: Numbers with exactly 8 divisors.

The programs for A030626, the canonical program `A030626.P13020075489056266396` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A030626 has offset 1).

The definition of A030626 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A030626.P13020075489056266396

`eq[8, A000005(n+1)]+1`

The canonical program, it is in `Seq.B002.C000`.
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

/-! ## A030626.P917467137880771184

`A111398(n+2)`
-/

namespace A030626.P917467137880771184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111398 (n + 2)

end

end A030626.P917467137880771184

namespace A030626

/-- `A111398(n+2)` -/
def P917467137880771184.Spec : Prop :=
  ∀ n, P917467137880771184.a n = A030626 (n + 1)

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

The programs for A030627, the canonical program `A030627.P5952706466757844042` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A030627 has offset 1).

The definition of A030627 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1275 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A030627.P273295649920196028

`A068993(n+1)²`
-/

namespace A030627.P273295649920196028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068993 (n + 1) ^ 2

end

end A030627.P273295649920196028

namespace A030627

/-- `A068993(n+1)²` -/
def P273295649920196028.Spec : Prop :=
  ∀ n, P273295649920196028.a n = A030627 (n + 1)

end A030627

/-! ## A030627.P3908084951142608586

`(eq[4, A063647(n+1)]+1)²`
-/

namespace A030627.P3908084951142608586
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063647 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1) ^ 2

end

end A030627.P3908084951142608586

namespace A030627

/-- `(eq[4, A063647(n+1)]+1)²` -/
def P3908084951142608586.Spec : Prop :=
  ∀ n, (P3908084951142608586.a n : ℤ) = A030627 (n + 1)

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

The canonical program, it is in `Seq.B005.C000`.
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

/-! ## A030627.P951967088607689143

`A068993(n+1)^A053669(2*n+3)`
-/

namespace A030627.P951967088607689143
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A068993 (n + 1) : ℚ) ^ (A053669 (2 * n + 3) : ℤ)

end

end A030627.P951967088607689143

namespace A030627

/-- `A068993(n+1)^A053669(2*n+3)` -/
def P951967088607689143.Spec : Prop :=
  ∀ n, P951967088607689143.a n = (A030627 (n + 1) : ℚ)

end A030627

/-! ## A030627.P3719136737774250532

`A068993(n+1)^A101825(3*n+2)`
-/

namespace A030627.P3719136737774250532
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A068993 (n + 1) : ℚ) ^ (A101825 (3 * n + 2) : ℤ)

end

end A030627.P3719136737774250532

namespace A030627

/-- `A068993(n+1)^A101825(3*n+2)` -/
def P3719136737774250532.Spec : Prop :=
  ∀ n, P3719136737774250532.a n = (A030627 (n + 1) : ℚ)

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

/-! ## A030627.P18346174751706736068

`A000290(A068993(n+1)+A000007(n+1))`
-/

namespace A030627.P18346174751706736068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000290 (A068993 (n + 1) + A000007 (n + 1)).toNat

end

end A030627.P18346174751706736068

namespace A030627

/-- `A000290(A068993(n+1)+A000007(n+1))` -/
def P18346174751706736068.Spec : Prop :=
  ∀ n, P18346174751706736068.a n = A030627 (n + 1)

end A030627

/-! ## A030627.P14126559192511488640

`A068993(n+1)^A000688(A060687(n+1))`
-/

namespace A030627.P14126559192511488640
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A068993 (n + 1) : ℚ) ^ (A000688 (A060687 (n + 1)).toNat : ℤ)

end

end A030627.P14126559192511488640

namespace A030627

/-- `A068993(n+1)^A000688(A060687(n+1))` -/
def P14126559192511488640.Spec : Prop :=
  ∀ n, P14126559192511488640.a n = (A030627 (n + 1) : ℚ)

end A030627

/-! ## A030627.P9336457684332459749

`A068993(n+1)^A000005(A006450(n+1))`
-/

namespace A030627.P9336457684332459749
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A068993 (n + 1) : ℚ) ^ (A000005 (A006450 (n + 1)).toNat : ℤ)

end

end A030627.P9336457684332459749

namespace A030627

/-- `A068993(n+1)^A000005(A006450(n+1))` -/
def P9336457684332459749.Spec : Prop :=
  ∀ n, P9336457684332459749.a n = (A030627 (n + 1) : ℚ)

end A030627

/-! ## A030627.P14552093880906032159

`A068993(n+1)^A000005(A068990(n+1))`
-/

namespace A030627.P14552093880906032159
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A068993 (n + 1) : ℚ) ^ (A000005 (A068990 (n + 1)).toNat : ℤ)

end

end A030627.P14552093880906032159

namespace A030627

/-- `A068993(n+1)^A000005(A068990(n+1))` -/
def P14552093880906032159.Spec : Prop :=
  ∀ n, P14552093880906032159.a n = (A030627 (n + 1) : ℚ)

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

/-! ## A030627.P16990647191383590186

`∩[A130763(n+1), A197680(n+1)]²`
-/

namespace A030627.P16990647191383590186
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130763 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197680 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n ^ 2

end

end A030627.P16990647191383590186

namespace A030627

/-- `∩[A130763(n+1), A197680(n+1)]²` -/
def P16990647191383590186.Spec : Prop :=
  ∀ n, (P16990647191383590186.a n : ℤ) = A030627 (n + 1)

end A030627

/-! ## A030627.P4876026318396602855

`∩[A130763(n+1), A252895(n+1)]²`
-/

namespace A030627.P4876026318396602855
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130763 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252895 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n ^ 2

end

end A030627.P4876026318396602855

namespace A030627

/-- `∩[A130763(n+1), A252895(n+1)]²` -/
def P4876026318396602855.Spec : Prop :=
  ∀ n, (P4876026318396602855.a n : ℤ) = A030627 (n + 1)

end A030627

/-! ## A030627.P1309577390633187794

`∩[A063774(n+1), A102466(n+1)]²`
-/

namespace A030627.P1309577390633187794
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063774 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102466 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n ^ 2

end

end A030627.P1309577390633187794

namespace A030627

/-- `∩[A063774(n+1), A102466(n+1)]²` -/
def P1309577390633187794.Spec : Prop :=
  ∀ n, (P1309577390633187794.a n : ℤ) = A030627 (n + 1)

end A030627

/-!
# A030628: 1 together with numbers of the form p*q^4 and p^9, where p and q are distinct primes.

The programs for A030628, the canonical program `A030628.P8221575935304841675` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A030628 has offset 1).

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

The canonical program, it is in `Seq.B001.C001`.
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

The definition of A030629 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000040, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
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

/-! ## A030629.P2991726036753052787

`A050997(n+1)²`
-/

namespace A030629.P2991726036753052787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050997 (n + 1) ^ 2

end

end A030629.P2991726036753052787

namespace A030629

/-- `A050997(n+1)²` -/
def P2991726036753052787.Spec : Prop :=
  ∀ n, P2991726036753052787.a n = A030629 (n + 1)

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

end A030629

/-! ## A030629.P3044233089474294115

`(A135179(n+1)+A135178(n+1))²`
-/

namespace A030629.P3044233089474294115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A135179 (n + 1) + A135178 (n + 1)) ^ 2

end

end A030629.P3044233089474294115

namespace A030629

/-- `(A135179(n+1)+A135178(n+1))²` -/
def P3044233089474294115.Spec : Prop :=
  ∀ n, P3044233089474294115.a n = A030629 (n + 1)

end A030629

/-! ## A030629.P2253244760711703668

`(A135180(n+1)+A135177(n+1))²`
-/

namespace A030629.P2253244760711703668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A135180 (n + 1) + A135177 (n + 1)) ^ 2

end

end A030629.P2253244760711703668

namespace A030629

/-- `(A135180(n+1)+A135177(n+1))²` -/
def P2253244760711703668.Spec : Prop :=
  ∀ n, P2253244760711703668.a n = A030629 (n + 1)

end A030629

/-! ## A030629.P4806588854125030377

`(A030516(n+1)-A138412(n+1))²`
-/

namespace A030629.P4806588854125030377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A030516 (n + 1) - A138412 (n + 1)) ^ 2

end

end A030629.P4806588854125030377

namespace A030629

/-- `(A030516(n+1)-A138412(n+1))²` -/
def P4806588854125030377.Spec : Prop :=
  ∀ n, P4806588854125030377.a n = A030629 (n + 1)

end A030629

/-! ## A030629.P3910351145654177136

`(A131992(n+1)-A131993(n+1))²`
-/

namespace A030629.P3910351145654177136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A131992 (n + 1) - A131993 (n + 1)) ^ 2

end

end A030629.P3910351145654177136

namespace A030629

/-- `(A131992(n+1)-A131993(n+1))²` -/
def P3910351145654177136.Spec : Prop :=
  ∀ n, P3910351145654177136.a n = A030629 (n + 1)

end A030629

/-! ## A030629.P6920952714440624355

`(A135178(n+1)-A135182(n+1))²`
-/

namespace A030629.P6920952714440624355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A135178 (n + 1) - A135182 (n + 1)) ^ 2

end

end A030629.P6920952714440624355

namespace A030629

/-- `(A135178(n+1)-A135182(n+1))²` -/
def P6920952714440624355.Spec : Prop :=
  ∀ n, P6920952714440624355.a n = A030629 (n + 1)

end A030629

/-! ## A030629.P654849255144934355

`(A000040(n+1)*A030514(n+1))²`
-/

namespace A030629.P654849255144934355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000040 (n + 1) * A030514 (n + 1)) ^ 2

end

end A030629.P654849255144934355

namespace A030629

/-- `(A000040(n+1)*A030514(n+1))²` -/
def P654849255144934355.Spec : Prop :=
  ∀ n, P654849255144934355.a n = A030629 (n + 1)

end A030629

/-!
# A030630: Numbers with 12 divisors.

The programs for A030630, the canonical program `A030630.P18236272023832021536` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A030630 has offset 1).

The definition of A030630 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5091 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A030630.P18236272023832021536

`eq[12, A000005(n+1)]+1`

The canonical program, it is in `Seq.B002.C000`.
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

/-! ## A030630.P1296781306646959656

`A032742(2*A079427(a(n-1)))` with `a(0)=60`
-/

namespace A030630.P1296781306646959656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [60] fun n a =>
  A032742 (2 * A079427 (a (n - 1)).toNat).toNat

end

end A030630.P1296781306646959656

namespace A030630

/-- `A032742(2*A079427(a(n-1)))` -/
def P1296781306646959656.Spec : Prop :=
  ∀ n, P1296781306646959656.a n = A030630 (n + 1)

end A030630

/-!
# A030631: Numbers with 13 divisors.

The programs for A030631, the canonical program `A030631.P2128528168171137643` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A030631 has offset 1).

The definition of A030631 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000040, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
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

/-! ## A030631.P6932807267085118976

`A030516(n+1)²`
-/

namespace A030631.P6932807267085118976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030516 (n + 1) ^ 2

end

end A030631.P6932807267085118976

namespace A030631

/-- `A030516(n+1)²` -/
def P6932807267085118976.Spec : Prop :=
  ∀ n, P6932807267085118976.a n = A030631 (n + 1)

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

/-! ## A030631.P7853860981516197360

`A033476(2*n)^6`
-/

namespace A030631.P7853860981516197360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033476 (2 * n) ^ 6

end

end A030631.P7853860981516197360

namespace A030631

/-- `A033476(2*n)^6` -/
def P7853860981516197360.Spec : Prop :=
  ∀ n, P7853860981516197360.a n = A030631 (n + 1)

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

The programs for A030633, the canonical program `A030633.P9556005496549386793` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A030633 has offset 1).

The definition of A030633 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 763 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A030633.P9556005496549386793

`(eq[7, A062799(n+1)]+1)²`

The canonical program, it is in `Seq.B005.C000`.
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

The programs for A030634, the canonical program `A030634.P5580952251098320278` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A030634 has offset 1).

The definition of A030634 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 942 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

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

namespace A030634

/-- `∩[A026477(n+1), A365535(n+1)]` -/
def P6050569161238609865.Spec : Prop :=
  ∀ n, (P6050569161238609865.a n : ℤ) = A030634 (n + 1)

end A030634

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

namespace A030634

/-- `∩[A026477(n+1), A229153(n+1)]` -/
def P5272749557763357182.Spec : Prop :=
  ∀ n, (P5272749557763357182.a n : ℤ) = A030634 (n + 1)

end A030634

/-! ## A030634.P5580952251098320278

`A002808(eq[16, A035004(n+1)])`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A030634

/-- `A002808(eq[16, A035004(n+1)])` -/
def P5580952251098320278.Spec : Prop :=
  ∀ n, P5580952251098320278.a n = A030634 (n + 1)

theorem P5580952251098320278.correct : P5580952251098320278.Spec := by
  intro n
  simp only [A030634, Nat.add_sub_cancel]

end A030634

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

namespace A030634

/-- `eq[15, A032741(n)]` -/
def P17398971222821380767.Spec : Prop :=
  ∀ n, (P17398971222821380767.a n : ℤ) = A030634 (n + 1)

end A030634

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

namespace A030634

/-- `eq[30, A319410(n)]` -/
def P13097111213598319006.Spec : Prop :=
  ∀ n, (P13097111213598319006.a n : ℤ) = A030634 (n + 1)

end A030634

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

namespace A030634

/-- `eq[64, A145154(n)]` -/
def P841817020201866360.Spec : Prop :=
  ∀ n, (P841817020201866360.a n : ℤ) = A030634 (n + 1)

end A030634

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

namespace A030634

/-- `eq[16, A000005(A028310(n))]` -/
def P3517959379541162213.Spec : Prop :=
  ∀ n, (P3517959379541162213.a n : ℤ) = A030634 (n + 1)

end A030634

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

namespace A030634

/-- `A020725(eq[5, A010553(n+1)])` -/
def P1371381027863658314.Spec : Prop :=
  ∀ n, P1371381027863658314.a n = A030634 (n + 1)

end A030634

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

namespace A030634

/-- `A114637(eq[8, A056924(n+1)])` -/
def P14215417953174575464.Spec : Prop :=
  ∀ n, P14215417953174575464.a n = A030634 (n + 1)

end A030634

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

namespace A030634

/-- `A153152(eq[8, A056924(n+1)])` -/
def P3557781491623241224.Spec : Prop :=
  ∀ n, P3557781491623241224.a n = A030634 (n + 1)

end A030634

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

namespace A030634

/-- `eq[16, A000005(A138153(n+1))]` -/
def P7075974564081572468.Spec : Prop :=
  ∀ n, (P7075974564081572468.a n : ℤ) = A030634 (n + 1)

end A030634

/-!
# A030635: 

The programs for A030635, there is no canonical definition to state claims against.
-/

/-! ## A030635.P15991584686606319559

`A179645(n+1)²`
-/

namespace A030635.P15991584686606319559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179645 (n + 1) ^ 2

end

end A030635.P15991584686606319559

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

/-! ## A030635.P2178768044122682367

`A030514(n+1)^4`
-/

namespace A030635.P2178768044122682367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030514 (n + 1) ^ 4

end

end A030635.P2178768044122682367

/-! ## A030635.P15527613461803844469

`A001248(n+1)^8`
-/

namespace A030635.P15527613461803844469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001248 (n + 1) ^ 8

end

end A030635.P15527613461803844469

/-! ## A030635.P14009325298666764893

`A000040(n+1)^16`
-/

namespace A030635.P14009325298666764893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) ^ 16

end

end A030635.P14009325298666764893

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

/-! ## A030635.P11105339311526586092

`A280076(n+2)^8`
-/

namespace A030635.P11105339311526586092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280076 (n + 2) ^ 8

end

end A030635.P11105339311526586092

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

/-! ## A030635.P15596793978856314572

`A017696(record[A014963(n+2)])`
-/

namespace A030635.P15596793978856314572
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017696 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A030635.P15596793978856314572

/-! ## A030635.P8198747189929071066

`A017696(record[A020639(n+2)])`
-/

namespace A030635.P8198747189929071066
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017696 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A030635.P8198747189929071066

/-!
# A030636: Numbers with 18 divisors.

The programs for A030636, the canonical program `A030636.P8220618962207978145` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A030636 has offset 1).

The definition of A030636 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 581 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A030636.P8220618962207978145

`filter[A036457(n+1), A123927(#)]`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A030636

/-- `filter[A036457(n+1), A123927(#)]` -/
def P8220618962207978145.Spec : Prop :=
  ∀ n, P8220618962207978145.a n = A030636 (n + 1)

theorem P8220618962207978145.correct : P8220618962207978145.Spec := by
  intro n
  simp only [A030636, Nat.add_sub_cancel]

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

/-! ## A030636.P17285208964861238725

`∩[A072588(n+1), A119885(n+1)]`
-/

namespace A030636.P17285208964861238725
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072588 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119885 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A030636.P17285208964861238725

namespace A030636

/-- `∩[A072588(n+1), A119885(n+1)]` -/
def P17285208964861238725.Spec : Prop :=
  ∀ n, (P17285208964861238725.a n : ℤ) = A030636 (n + 1)

end A030636

/-! ## A030636.P13365106972563013059

`A273943(record[A273943(A257416(n+1))])`
-/

namespace A030636.P13365106972563013059
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273943 (A257416 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273943 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A030636.P13365106972563013059

namespace A030636

/-- `A273943(record[A273943(A257416(n+1))])` -/
def P13365106972563013059.Spec : Prop :=
  ∀ n, P13365106972563013059.a n = A030636 (n + 1)

end A030636

/-! ## A030636.P17211917331142422527

`∩[A059404(n+1), A119885(n+1)]`
-/

namespace A030636.P17211917331142422527
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059404 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119885 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A030636.P17211917331142422527

namespace A030636

/-- `∩[A059404(n+1), A119885(n+1)]` -/
def P17211917331142422527.Spec : Prop :=
  ∀ n, (P17211917331142422527.a n : ℤ) = A030636 (n + 1)

end A030636

/-! ## A030636.P15166728191405504699

`∩[A119885(n+1), A126706(n+1)]`
-/

namespace A030636.P15166728191405504699
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119885 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126706 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A030636.P15166728191405504699

namespace A030636

/-- `∩[A119885(n+1), A126706(n+1)]` -/
def P15166728191405504699.Spec : Prop :=
  ∀ n, (P15166728191405504699.a n : ℤ) = A030636 (n + 1)

end A030636

/-! ## A030636.P13815647757008909016

`∩[A007624(n+1), A119885(n+1)]`
-/

namespace A030636.P13815647757008909016
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007624 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119885 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A030636.P13815647757008909016

namespace A030636

/-- `∩[A007624(n+1), A119885(n+1)]` -/
def P13815647757008909016.Spec : Prop :=
  ∀ n, (P13815647757008909016.a n : ℤ) = A030636 (n + 1)

end A030636

/-! ## A030636.P13919483915149914067

`eq[10, A007318(A032741(n))]`
-/

namespace A030636.P13919483915149914067
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (A032741 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A030636.P13919483915149914067

namespace A030636

/-- `eq[10, A007318(A032741(n))]` -/
def P13919483915149914067.Spec : Prop :=
  ∀ n, (P13919483915149914067.a n : ℤ) = A030636 (n + 1)

end A030636

/-! ## A030636.P10758363304001204426

`eq[18, A000005(A028310(n))]`
-/

namespace A030636.P10758363304001204426
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  18

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A030636.P10758363304001204426

namespace A030636

/-- `eq[18, A000005(A028310(n))]` -/
def P10758363304001204426.Spec : Prop :=
  ∀ n, (P10758363304001204426.a n : ℤ) = A030636 (n + 1)

end A030636

/-! ## A030636.P8050339461769881740

`filter[A119850(n+1), A123927(#)]`
-/

namespace A030636.P8050339461769881740
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119850 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A123927 (f1 j).toNat = 1) n)

end

end A030636.P8050339461769881740

namespace A030636

/-- `filter[A119850(n+1), A123927(#)]` -/
def P8050339461769881740.Spec : Prop :=
  ∀ n, P8050339461769881740.a n = A030636 (n + 1)

end A030636

/-!
# A030637: 

The programs for A030637, there is no canonical definition to state claims against.
-/

/-! ## A030637.P81903294619043953

`A179665(n+1)²`
-/

namespace A030637.P81903294619043953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179665 (n + 1) ^ 2

end

end A030637.P81903294619043953

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

/-! ## A030637.P14148161241043537514

`A030516(n+1)^3`
-/

namespace A030637.P14148161241043537514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030516 (n + 1) ^ 3

end

end A030637.P14148161241043537514

/-! ## A030637.P5712428437741767988

`A030078(n+1)^6`
-/

namespace A030637.P5712428437741767988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030078 (n + 1) ^ 6

end

end A030637.P5712428437741767988

/-! ## A030637.P18154754453456721139

`A001248(n+1)^9`
-/

namespace A030637.P18154754453456721139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001248 (n + 1) ^ 9

end

end A030637.P18154754453456721139

/-! ## A030637.P3770670459125883676

`A000040(n+1)^18`
-/

namespace A030637.P3770670459125883676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) ^ 18

end

end A030637.P3770670459125883676

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

/-! ## A030637.P3777498120868715228

`A280076(n+2)^9`
-/

namespace A030637.P3777498120868715228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280076 (n + 2) ^ 9

end

end A030637.P3777498120868715228

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

/-! ## A030637.P7129516526169325401

`A017700(A000040(n+1))`
-/

namespace A030637.P7129516526169325401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017700 (A000040 (n + 1)).toNat

end

end A030637.P7129516526169325401

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

/-! ## A030637.P12049886854934975865

`A017700(record[A006530(n+2)])`
-/

namespace A030637.P12049886854934975865
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017700 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A030637.P12049886854934975865

/-! ## A030637.P894091322975791188

`A017700(record[A014963(n+2)])`
-/

namespace A030637.P894091322975791188
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017700 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A030637.P894091322975791188

/-! ## A030637.P6980291915639358742

`A017700(record[A020639(n+2)])`
-/

namespace A030637.P6980291915639358742
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017700 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A030637.P6980291915639358742

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

/-!
# A030638: Numbers with 20 divisors.

The programs for A030638, the canonical program `A030638.P15405668562279692418` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A030638 has offset 1).

The definition of A030638 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 157 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A030638.P15405668562279692418

`eq[5, A007318(A032741(n))]`

The canonical program, it is in `Seq.B006.C000`.
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

/-! ## A030640.P18319959155777590497

`(-1)^floor(n/2)*A026741(n+1)`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A030640

/-- `(-1)^floor(n/2)*A026741(n+1)` -/
def P18319959155777590497.Spec : Prop :=
  ∀ n, P18319959155777590497.a n = (A030640 n : ℚ)

end A030640

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

/-! ## A030640.P8060447879653314105

`A076118(A097482(n+1))`
-/

namespace A030640.P8060447879653314105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076118 (A097482 (n + 1)).toNat

end

end A030640.P8060447879653314105

namespace A030640

/-- `A076118(A097482(n+1))` -/
def P8060447879653314105.Spec : Prop :=
  ∀ n, P8060447879653314105.a n = A030640 n

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

/-! ## A030644.P2815720465121604637

`9-A076790(2*n+1)`
-/

namespace A030644.P2815720465121604637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  9 - A076790 (2 * n + 1)

end

end A030644.P2815720465121604637

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

/-! ## A030646.P4754857688435570483

`A146075(A005843(n))+char[20]`
-/

namespace A030646.P4754857688435570483
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  20

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146075 (A005843 n).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A030646.P4754857688435570483

/-! ## A030646.P12639315416016676487

`A146075(A004277(n))+A000007(n)`
-/

namespace A030646.P12639315416016676487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146075 (A004277 n).toNat + A000007 n

end

end A030646.P12639315416016676487

/-! ## A030646.P15182259162626662788

`lcm(A007318(n), A146075(A005843(n)))`
-/

namespace A030646.P15182259162626662788
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A007318 n) (A146075 (A005843 n).toNat)

end

end A030646.P15182259162626662788

/-! ## A030646.P10420524323526320547

`A146075(A005843(n))/A007318(C(2, n))`
-/

namespace A030646.P10420524323526320547
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A146075 (A005843 n).toNat : ℚ) / (A007318 (Nat.choose 2 n) : ℚ)

end

end A030646.P10420524323526320547

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

The programs for A030648, the canonical program `A030648.P116404473214068725` is in `Seq.B000.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A030648 has offset 0).

The definition of A030648 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A030648.P116404473214068725

`C(n+8, 8)*C(n+11, 8)/165`

The canonical program, it is in `Seq.B000.C006`.
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

/-! ## A030648.P16175289542076655683

`A105944(n)/A105944(A105964(3*(n+1)))`
-/

namespace A030648.P16175289542076655683
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A105944 n : ℚ) / (A105944 (A105964 (3 * (n + 1))).toNat : ℚ)

end

end A030648.P16175289542076655683

namespace A030648

/-- `A105944(n)/A105944(A105964(3*(n+1)))` -/
def P16175289542076655683.Spec : Prop :=
  ∀ n, P16175289542076655683.a n = (A030648 n : ℚ)

end A030648

/-!
# A030649: Dimensions of multiples of minimal representation of complex Lie algebra E7.

The programs for A030649, there is no canonical definition to state claims against.
-/

/-! ## A030649.P6651093252972208471

`A121736(A132210(n+1))`
-/

namespace A030649.P6651093252972208471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121736 (A132210 (n + 1)).toNat

end

end A030649.P6651093252972208471

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

/-! ## A030652.P5983474418977533120

`A006519(∑[A353508(n)!])`
-/

namespace A030652.P5983474418977533120
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A353508 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006519 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A030652.P5983474418977533120

/-!
# A030653: n^3*a(n) is the number of circles in complex projective plane tangent to three smooth curves of degree n in general position.

The programs for A030653, the canonical program `A030653.P17752569690597270032` is in `Seq.B000.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A030653 has offset 1).

The definition of A030653 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A030653.P17752569690597270032

`(n+1)^3+3*(n+1)²+3*(n+1)-3`

The canonical program, it is in `Seq.B000.C006`.
-/

namespace A030653

/-- `(n+1)^3+3*(n+1)²+3*(n+1)-3` -/
def P17752569690597270032.Spec : Prop :=
  ∀ n, P17752569690597270032.a n = A030653 (n + 1)

theorem P17752569690597270032.correct : P17752569690597270032.Spec := by
  intro n
  simp only [A030653, Nat.add_sub_cancel]

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

/-! ## A030653.P7086831744625694183

`abs((n+3)*lcm(n+1, n+2)+n-2)`
-/

namespace A030653.P7086831744625694183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |((n + 3) * Nat.lcm (n + 1) (n + 2) : ℤ) + ((n : ℤ) - 2)|

end

end A030653.P7086831744625694183

namespace A030653

/-- `abs((n+3)*lcm(n+1, n+2)+n-2)` -/
def P7086831744625694183.Spec : Prop :=
  ∀ n, P7086831744625694183.a n = A030653 (n + 1)

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

/-! ## A030653.P6964656809400817364

`abs(Δ[A033487(n)]+n-2)`
-/

namespace A030653.P6964656809400817364
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033487 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n + ((n : ℤ) - 2)|

end

end A030653.P6964656809400817364

namespace A030653

/-- `abs(Δ[A033487(n)]+n-2)` -/
def P6964656809400817364.Spec : Prop :=
  ∀ n, P6964656809400817364.a n = A030653 (n + 1)

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

/-! ## A030653.P2253086825159217444

`Δ[A117717(n+2)-(n+3)²]`
-/

namespace A030653.P2253086825159217444
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117717 (n + 2) - ((n + 3) ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A030653.P2253086825159217444

namespace A030653

/-- `Δ[A117717(n+2)-(n+3)²]` -/
def P2253086825159217444.Spec : Prop :=
  ∀ n, P2253086825159217444.a n = A030653 (n + 1)

end A030653

/-! ## A030653.P16496315456609623634

`Δ[(C(n, 2)+1)*A167614(n+2)]`
-/

namespace A030653.P16496315456609623634
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose n 2 + 1 : ℤ) * A167614 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A030653.P16496315456609623634

namespace A030653

/-- `Δ[(C(n, 2)+1)*A167614(n+2)]` -/
def P16496315456609623634.Spec : Prop :=
  ∀ n, P16496315456609623634.a n = A030653 (n + 1)

end A030653

/-! ## A030653.P2048702312491179091

`Δ[A152947(n+1)*A167614(n+2)]`
-/

namespace A030653.P2048702312491179091
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152947 (n + 1) * A167614 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A030653.P2048702312491179091

namespace A030653

/-- `Δ[A152947(n+1)*A167614(n+2)]` -/
def P2048702312491179091.Spec : Prop :=
  ∀ n, P2048702312491179091.a n = A030653 (n + 1)

end A030653

/-! ## A030653.P17763841810063545128

`Δ[A000217(n+1)²-A004767(n+1)]`
-/

namespace A030653.P17763841810063545128
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (n + 1) ^ 2 - A004767 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A030653.P17763841810063545128

namespace A030653

/-- `Δ[A000217(n+1)²-A004767(n+1)]` -/
def P17763841810063545128.Spec : Prop :=
  ∀ n, P17763841810063545128.a n = A030653 (n + 1)

end A030653

/-!
# A030654: n^4*a(n) is the number of spheres in complex projective space tangent to 4 smooth surfaces of degree n in general position.

The programs for A030654, the canonical program `A030654.P12657709224460297580` is in `Seq.B000.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A030654 has offset 1).

The definition of A030654 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A030654.P12657709224460297580

`(n+1)^8+4*(n+1)^6-2*(n+1)^4+4*(n+1)²+1`

The canonical program, it is in `Seq.B000.C006`.
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

/-! ## A030655.P3780796162531465732

`A127421(2*(n+1))`
-/

namespace A030655.P3780796162531465732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127421 (2 * (n + 1))

end

end A030655.P3780796162531465732

namespace A030655

/-- `A127421(2*(n+1))` -/
def P3780796162531465732.Spec : Prop :=
  ∀ n, P3780796162531465732.a n = A030655 (n + 1)

end A030655

/-! ## A030655.P1303874119259364677

`lcm(2, A001704(2*n+1))`
-/

namespace A030655.P1303874119259364677
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A001704 (2 * n + 1))

end

end A030655.P1303874119259364677

namespace A030655

/-- `lcm(2, A001704(2*n+1))` -/
def P1303874119259364677.Spec : Prop :=
  ∀ n, (P1303874119259364677.a n : ℤ) = A030655 (n + 1)

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

/-! ## A030655.P18437054044808145529

`A033999(n)²*A001704(2*n+1)`
-/

namespace A030655.P18437054044808145529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n ^ 2 * A001704 (2 * n + 1)

end

end A030655.P18437054044808145529

namespace A030655

/-- `A033999(n)²*A001704(2*n+1)` -/
def P18437054044808145529.Spec : Prop :=
  ∀ n, P18437054044808145529.a n = A030655 (n + 1)

end A030655

/-! ## A030655.P16642992654281891331

`A001704(record[xor(1, n)])%A049202(n+1)`
-/

namespace A030655.P16642992654281891331
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001704 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))) (A049202 (n + 1))

end

end A030655.P16642992654281891331

namespace A030655

/-- `A001704(record[xor(1, n)])%A049202(n+1)` -/
def P16642992654281891331.Spec : Prop :=
  ∀ n, P16642992654281891331.a n = A030655 (n + 1)

end A030655

/-! ## A030655.P17272094459019964937

`A001704(2*n+1)+A000038(n+1)`
-/

namespace A030655.P17272094459019964937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001704 (2 * n + 1) + A000038 (n + 1)

end

end A030655.P17272094459019964937

namespace A030655

/-- `A001704(2*n+1)+A000038(n+1)` -/
def P17272094459019964937.Spec : Prop :=
  ∀ n, P17272094459019964937.a n = A030655 (n + 1)

end A030655

/-! ## A030655.P11225641243214698937

`A001704(2*n+1)%A049202(n+1)`
-/

namespace A030655.P11225641243214698937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001704 (2 * n + 1)) (A049202 (n + 1))

end

end A030655.P11225641243214698937

namespace A030655

/-- `A001704(2*n+1)%A049202(n+1)` -/
def P11225641243214698937.Spec : Prop :=
  ∀ n, P11225641243214698937.a n = A030655 (n + 1)

end A030655

/-! ## A030655.P2169228409759518380

`A127421(n+2+n)%A095958(n+1)`
-/

namespace A030655.P2169228409759518380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A127421 (n + 2 + n)) (A095958 (n + 1))

end

end A030655.P2169228409759518380

namespace A030655

/-- `A127421(n+2+n)%A095958(n+1)` -/
def P2169228409759518380.Spec : Prop :=
  ∀ n, P2169228409759518380.a n = A030655 (n + 1)

end A030655

/-! ## A030655.P1695623832115449256

`A010051(2*(n+2))+A001704(2*n+1)`
-/

namespace A030655.P1695623832115449256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (2 * (n + 2)) + A001704 (2 * n + 1)

end

end A030655.P1695623832115449256

namespace A030655

/-- `A010051(2*(n+2))+A001704(2*n+1)` -/
def P1695623832115449256.Spec : Prop :=
  ∀ n, P1695623832115449256.a n = A030655 (n + 1)

end A030655

/-! ## A030655.P10059690646996363227

`A001704(2*n+1)+2-A020639(2*(n+1))`
-/

namespace A030655.P10059690646996363227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001704 (2 * n + 1) + (2 - A020639 (2 * (n + 1)))

end

end A030655.P10059690646996363227

namespace A030655

/-- `A001704(2*n+1)+2-A020639(2*(n+1))` -/
def P10059690646996363227.Spec : Prop :=
  ∀ n, P10059690646996363227.a n = A030655 (n + 1)

end A030655

/-! ## A030655.P10042906452673697626

`A098080(n+1)`
-/

namespace A030655.P10042906452673697626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098080 (n + 1)

end

end A030655.P10042906452673697626

namespace A030655

/-- `A098080(n+1)` -/
def P10042906452673697626.Spec : Prop :=
  ∀ n, P10042906452673697626.a n = A030655 (n + 1)

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

/-! ## A030655.P1650844727656900543

`(A008619(2*n)-n)*A001704(2*n+1)`
-/

namespace A030655.P1650844727656900543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A008619 (2 * n) - (n : ℤ)) * A001704 (2 * n + 1)

end

end A030655.P1650844727656900543

namespace A030655

/-- `(A008619(2*n)-n)*A001704(2*n+1)` -/
def P1650844727656900543.Spec : Prop :=
  ∀ n, P1650844727656900543.a n = A030655 (n + 1)

end A030655

/-! ## A030655.P17104024858273846135

`or(A001704(2*n+1), A001704(A004442(2*n)))`
-/

namespace A030655.P17104024858273846135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A001704 (2 * n + 1)) (A001704 (A004442 (2 * n)).toNat)

end

end A030655.P17104024858273846135

namespace A030655

/-- `or(A001704(2*n+1), A001704(A004442(2*n)))` -/
def P17104024858273846135.Spec : Prop :=
  ∀ n, P17104024858273846135.a n = A030655 (n + 1)

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

/-!
# A030656: Pair up the numbers.

The programs for A030656, the canonical program `A030656.P12769284707998713729` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A030656 has offset 0).

The definition of A030656 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

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

/-! ## A030656.P16384217457323016732

`or(1, A127421(2*n+1))`
-/

namespace A030656.P16384217457323016732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A127421 (2 * n + 1))

end

end A030656.P16384217457323016732

namespace A030656

/-- `or(1, A127421(2*n+1))` -/
def P16384217457323016732.Spec : Prop :=
  ∀ n, P16384217457323016732.a n = A030656 n

end A030656

/-! ## A030656.P7245925698160268510

`record[A001704(n+1)^(n%2)]`
-/

namespace A030656.P7245925698160268510
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001704 (n + 1) ^ (n % 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A030656.P7245925698160268510

namespace A030656

/-- `record[A001704(n+1)^(n%2)]` -/
def P7245925698160268510.Spec : Prop :=
  ∀ n, P7245925698160268510.a n = A030656 n

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

/-! ## A030656.P17308094857504061190

`∩[A127421(2*n+1), A127421(n+1)]`
-/

namespace A030656.P17308094857504061190
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127421 (2 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127421 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A030656.P17308094857504061190

namespace A030656

/-- `∩[A127421(2*n+1), A127421(n+1)]` -/
def P17308094857504061190.Spec : Prop :=
  ∀ n, (P17308094857504061190.a n : ℤ) = A030656 n

end A030656

/-! ## A030656.P7247628781130385005

`A127421(2*n+1)+char[A157840(n+1)]`
-/

namespace A030656.P7247628781130385005
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157840 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127421 (2 * n + 1) + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A030656.P7247628781130385005

namespace A030656

/-- `A127421(2*n+1)+char[A157840(n+1)]` -/
def P7247628781130385005.Spec : Prop :=
  ∀ n, P7247628781130385005.a n = A030656 n

end A030656

/-! ## A030656.P9751432837910680706

`A127421(2*n+1)+char[A139670(n+7)]`
-/

namespace A030656.P9751432837910680706
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139670 (n + 7)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127421 (2 * n + 1) + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A030656.P9751432837910680706

namespace A030656

/-- `A127421(2*n+1)+char[A139670(n+7)]` -/
def P9751432837910680706.Spec : Prop :=
  ∀ n, P9751432837910680706.a n = A030656 n

end A030656

/-! ## A030656.P13055521690471332535

`A127421(2*n+1)+char[A184078(2*n+5)]`
-/

namespace A030656.P13055521690471332535
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184078 (2 * n + 5)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127421 (2 * n + 1) + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A030656.P13055521690471332535

namespace A030656

/-- `A127421(2*n+1)+char[A184078(2*n+5)]` -/
def P13055521690471332535.Spec : Prop :=
  ∀ n, P13055521690471332535.a n = A030656 n

end A030656

/-! ## A030656.P2366357694178694861

`gcd(A025469(A325817(3*n+2)), A127421(2*n+1))`
-/

namespace A030656.P2366357694178694861
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A025469 (A325817 (3 * n + 2)).toNat) (A127421 (2 * n + 1))

end

end A030656.P2366357694178694861

namespace A030656

/-- `gcd(A025469(A325817(3*n+2)), A127421(2*n+1))` -/
def P2366357694178694861.Spec : Prop :=
  ∀ n, (P2366357694178694861.a n : ℤ) = A030656 n

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

/-!
# A030657: Parity of digits of Pi.

The programs for A030657, there is no canonical definition to state claims against.
-/

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

/-! ## A030657.P10463941855507096812

`(A030644(n)+1)%2`
-/

namespace A030657.P10463941855507096812
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A030644 (n + 1) + 1) 2

end

end A030657.P10463941855507096812

/-! ## A030657.P16163580677613992122

`A065253(n+1)%2`
-/

namespace A030657.P16163580677613992122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A065253 (n + 1)) 2

end

end A030657.P16163580677613992122

/-! ## A030657.P2648863874907275861

`A072448(n+1)%2`
-/

namespace A030657.P2648863874907275861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A072448 (n + 1)) 2

end

end A030657.P2648863874907275861

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

/-! ## A030657.P3725332126068965978

`A000035(A086994(n))`
-/

namespace A030657.P3725332126068965978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A086994 (n + 1)).toNat

end

end A030657.P3725332126068965978

/-! ## A030657.P12043006003126674977

`A000035(A072448(n+1))`
-/

namespace A030657.P12043006003126674977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A072448 (n + 1)).toNat

end

end A030657.P12043006003126674977

/-! ## A030657.P2830845744859865587

`A000035(A261197(n+1))`
-/

namespace A030657.P2830845744859865587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A261197 (n + 1)).toNat

end

end A030657.P2830845744859865587

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

/-! ## A030657.P2270657637952950070

`and(-A000796(n), a(A132748(2*n+1)))` with `a(0)=1`
-/

namespace A030657.P2270657637952950070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  Int.land (-A000796 (n + 1)) (a (A132748 (2 * n + 1)).toNat)

end

end A030657.P2270657637952950070

/-! ## A030657.P4598444084224004735

`and(A000796(n), A033676(A089026(n+1)))`
-/

namespace A030657.P4598444084224004735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A000796 (n + 1)) (A033676 (A089026 (n + 1)).toNat)

end

end A030657.P4598444084224004735

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

/-! ## A030658.P16028953779518796057

`A000045(floor(4/(exp(A095916(n+1))+2)))`
-/

namespace A030658.P16028953779518796057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 ⌊4 / (Real.exp (A095916 (n + 1) : ℝ) + 2)⌋.toNat

end

end A030658.P16028953779518796057

/-! ## A030658.P17346499391114492592

`A000120(floor(4/(exp(A095916(n+1))+2)))`
-/

namespace A030658.P17346499391114492592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 ⌊4 / (Real.exp (A095916 (n + 1) : ℝ) + 2)⌋.toNat

end

end A030658.P17346499391114492592

/-! ## A030658.P6270366988125253815

`floor((A002808(n+1)-A095916(n+1))/A002808(n+1))`
-/

namespace A030658.P6270366988125253815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A002808 (n + 1) - A095916 (n + 1) : ℚ) / (A002808 (n + 1) : ℚ)⌋

end

end A030658.P6270366988125253815

/-! ## A030658.P9713691498562205712

`floor((A219498(n+1)-A095916(n+1))/A219498(n+1))`
-/

namespace A030658.P9713691498562205712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A219498 (n + 1) - A095916 (n + 1) : ℚ) / (A219498 (n + 1) : ℚ)⌋

end

end A030658.P9713691498562205712

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

/-! ## A030658.P383804065841695059

`A037833(A107114(n+1))`
-/

namespace A030658.P383804065841695059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037833 (A107114 (n + 1)).toNat

end

end A030658.P383804065841695059

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

/-! ## A030659.P14628165946305537765

`A216993(∑[n+3]+3)`
-/

namespace A030659.P14628165946305537765
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216993 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A030659.P14628165946305537765

/-! ## A030659.P14412654756420027859

`A216993(A034856(n+2)+2)%p?[A301223(n)]`
-/

namespace A030659.P14412654756420027859
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301223 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A216993 (A034856 (n + 2) + 2).toNat) (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A030659.P14412654756420027859

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

/-! ## A030661.P11745209945400185624

`A006094(Δ[A002815(n)])`
-/

namespace A030661.P11745209945400185624
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002815 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006094 (f1 (n + 1) - f1 n).toNat

end

end A030661.P11745209945400185624

namespace A030661

/-- `A006094(Δ[A002815(n)])` -/
def P11745209945400185624.Spec : Prop :=
  ∀ n, P11745209945400185624.a n = A030661 (n + 1)

end A030661

/-! ## A030661.P6164724354721596436

`A006094(A036234(n+1))`
-/

namespace A030661.P6164724354721596436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006094 (A036234 (n + 1)).toNat

end

end A030661.P6164724354721596436

namespace A030661

/-- `A006094(A036234(n+1))` -/
def P6164724354721596436.Spec : Prop :=
  ∀ n, P6164724354721596436.a n = A030661 (n + 1)

end A030661

/-! ## A030661.P4476597618674230773

`A006094(A000720(n+1)+1)`
-/

namespace A030661.P4476597618674230773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006094 (A000720 (n + 1) + 1).toNat

end

end A030661.P4476597618674230773

namespace A030661

/-- `A006094(A000720(n+1)+1)` -/
def P4476597618674230773.Spec : Prop :=
  ∀ n, P4476597618674230773.a n = A030661 (n + 1)

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

/-! ## A030661.P3079447355528229046

`A006094(∑[A010051(n+1)]+1)`
-/

namespace A030661.P3079447355528229046
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006094 (∑ j ∈ Finset.range (n + 1), f1 j + 1).toNat

end

end A030661.P3079447355528229046

namespace A030661

/-- `A006094(∑[A010051(n+1)]+1)` -/
def P3079447355528229046.Spec : Prop :=
  ∀ n, P3079447355528229046.a n = A030661 (n + 1)

end A030661

/-! ## A030661.P4110771275847168537

`A006094(∑[C(A000010(n+1), n)])`
-/

namespace A030661.P4110771275847168537
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A000010 (n + 1)).toNat n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006094 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A030661.P4110771275847168537

namespace A030661

/-- `A006094(∑[C(A000010(n+1), n)])` -/
def P4110771275847168537.Spec : Prop :=
  ∀ n, P4110771275847168537.a n = A030661 (n + 1)

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

/-! ## A030661.P15497891749498377802

`A006094(∑[char[A006530(n+1)-1]])`
-/

namespace A030661.P15497891749498377802
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 1) - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006094 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A030661.P15497891749498377802

namespace A030661

/-- `A006094(∑[char[A006530(n+1)-1]])` -/
def P15497891749498377802.Spec : Prop :=
  ∀ n, P15497891749498377802.a n = A030661 (n + 1)

end A030661

/-! ## A030661.P17418271049800133086

`A006094(∑[1-A005171(n+1)]+1)`
-/

namespace A030661.P17418271049800133086
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A005171 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006094 (∑ j ∈ Finset.range (n + 1), f1 j + 1).toNat

end

end A030661.P17418271049800133086

namespace A030661

/-- `A006094(∑[1-A005171(n+1)]+1)` -/
def P17418271049800133086.Spec : Prop :=
  ∀ n, P17418271049800133086.a n = A030661 (n + 1)

end A030661

/-! ## A030661.P9858386835535918140

`A006094(∑[C(2, A000005(n+1))]-1)`
-/

namespace A030661.P9858386835535918140
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 2 (A000005 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006094 (∑ j ∈ Finset.range (n + 1), f1 j - 1)

end

end A030661.P9858386835535918140

namespace A030661

/-- `A006094(∑[C(2, A000005(n+1))]-1)` -/
def P9858386835535918140.Spec : Prop :=
  ∀ n, P9858386835535918140.a n = A030661 (n + 1)

end A030661

/-! ## A030661.P10977490660598069472

`A006094(A002815(n+1)-A002815(n))`
-/

namespace A030661.P10977490660598069472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006094 (A002815 (n + 1) - A002815 n).toNat

end

end A030661.P10977490660598069472

namespace A030661

/-- `A006094(A002815(n+1)-A002815(n))` -/
def P10977490660598069472.Spec : Prop :=
  ∀ n, P10977490660598069472.a n = A030661 (n + 1)

end A030661

/-! ## A030661.P10655260002781545902

`A151800(n+1)*A151800(p?[A151800(n+1)])`
-/

namespace A030661.P10655260002781545902
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 (n + 1) * A151800 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A030661.P10655260002781545902

namespace A030661

/-- `A151800(n+1)*A151800(p?[A151800(n+1)])` -/
def P10655260002781545902.Spec : Prop :=
  ∀ n, P10655260002781545902.a n = A030661 (n + 1)

end A030661

/-! ## A030661.P2616646222751414448

`A033476(A000720(n+1)+A000720(n+1)+1)`
-/

namespace A030661.P2616646222751414448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033476 (A000720 (n + 1) + (A000720 (n + 1) + 1)).toNat

end

end A030661.P2616646222751414448

namespace A030661

/-- `A033476(A000720(n+1)+A000720(n+1)+1)` -/
def P2616646222751414448.Spec : Prop :=
  ∀ n, P2616646222751414448.a n = A030661 (n + 1)

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

/-! ## A030661.P15238906996451547839

`A007918(n+2)*A101300(n+1)`
-/

namespace A030661.P15238906996451547839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007918 (n + 2) * A101300 (n + 1)

end

end A030661.P15238906996451547839

namespace A030661

/-- `A007918(n+2)*A101300(n+1)` -/
def P15238906996451547839.Spec : Prop :=
  ∀ n, P15238906996451547839.a n = A030661 (n + 1)

end A030661

/-! ## A030661.P4830882331643089602

`A007918(n+2)*A151800(A151800(n+1))`
-/

namespace A030661.P4830882331643089602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007918 (n + 2) * A151800 (A151800 (n + 1)).toNat

end

end A030661.P4830882331643089602

namespace A030661

/-- `A007918(n+2)*A151800(A151800(n+1))` -/
def P4830882331643089602.Spec : Prop :=
  ∀ n, P4830882331643089602.a n = A030661 (n + 1)

end A030661

/-! ## A030661.P17286535170387275822

`A151800(A151800(n+1))*A151800(A014684(n+2))`
-/

namespace A030661.P17286535170387275822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 (A151800 (n + 1)).toNat * A151800 (A014684 (n + 2)).toNat

end

end A030661.P17286535170387275822

namespace A030661

/-- `A151800(A151800(n+1))*A151800(A014684(n+2))` -/
def P17286535170387275822.Spec : Prop :=
  ∀ n, P17286535170387275822.a n = A030661 (n + 1)

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

/-!
# A030662: Number of combinations of n things from 1 to n at a time, with repeats allowed.

The programs for A030662, the canonical program `A030662.P11997165729521447290` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A030662 has offset 1).

The definition of A030662 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

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

end A030662

/-! ## A030662.P4703152932437536674

`2*(2*(n+1)-1)!/((n+1)!*n!)-1`
-/

namespace A030662.P4703152932437536674
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 * Nat.factorial ((2 * (n + 1) : ℤ) - 1).toNat : ℚ) / (Nat.factorial (n + 1) * Nat.factorial n : ℚ) - 1

end

end A030662.P4703152932437536674

namespace A030662

/-- `2*(2*(n+1)-1)!/((n+1)!*n!)-1` -/
def P4703152932437536674.Spec : Prop :=
  ∀ n, P4703152932437536674.a n = (A030662 (n + 1) : ℚ)

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

/-! ## A030662.P16856777986490729085

`(A134759(n+1)+n)/2`
-/

namespace A030662.P16856777986490729085
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A134759 (n + 1) + (n : ℤ) : ℚ) / 2

end

end A030662.P16856777986490729085

namespace A030662

/-- `(A134759(n+1)+n)/2` -/
def P16856777986490729085.Spec : Prop :=
  ∀ n, P16856777986490729085.a n = (A030662 (n + 1) : ℚ)

end A030662

/-! ## A030662.P5091995096651944198

`∑[A352626(n+1)/(n+1)]`
-/

namespace A030662.P5091995096651944198
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A352626 (n + 1) : ℚ) / (n + 1 : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A030662.P5091995096651944198

namespace A030662

/-- `∑[A352626(n+1)/(n+1)]` -/
def P5091995096651944198.Spec : Prop :=
  ∀ n, P5091995096651944198.a n = (A030662 (n + 1) : ℚ)

end A030662

/-! ## A030662.P17162248948113315475

`(A119580(n+1)-A011379(n+1))/A011379(n+1)`
-/

namespace A030662.P17162248948113315475
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A119580 (n + 1) - A011379 (n + 1) : ℚ) / (A011379 (n + 1) : ℚ)

end

end A030662.P17162248948113315475

namespace A030662

/-- `(A119580(n+1)-A011379(n+1))/A011379(n+1)` -/
def P17162248948113315475.Spec : Prop :=
  ∀ n, P17162248948113315475.a n = (A030662 (n + 1) : ℚ)

end A030662

/-! ## A030662.P17647412062482810111

`A205008(∑[n]+1)`
-/

namespace A030662.P17647412062482810111
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205008 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A030662.P17647412062482810111

namespace A030662

/-- `A205008(∑[n]+1)` -/
def P17647412062482810111.Spec : Prop :=
  ∀ n, P17647412062482810111.a n = A030662 (n + 1)

end A030662

/-! ## A030662.P7906552759718097803

`record[A205008(n+1)]`
-/

namespace A030662.P7906552759718097803
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205008 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A030662.P7906552759718097803

namespace A030662

/-- `record[A205008(n+1)]` -/
def P7906552759718097803.Spec : Prop :=
  ∀ n, P7906552759718097803.a n = A030662 (n + 1)

end A030662

/-! ## A030662.P5579628102311507276

`record[Δ[A092392(n)]]`
-/

namespace A030662.P5579628102311507276
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092392 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A030662.P5579628102311507276

namespace A030662

/-- `record[Δ[A092392(n)]]` -/
def P5579628102311507276.Spec : Prop :=
  ∀ n, P5579628102311507276.a n = A030662 (n + 1)

end A030662

/-!
# A030664: Product of largest prime <= n and smallest prime >= n.

The programs for A030664, the canonical program `A030664.P2721385197302219876` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A030664 has offset 0).

The definition of A030664 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A030664.P2721385197302219876

`∏{p}[A136548(n+1), #*A007918(n)]`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A030664

/-- `∏{p}[A136548(n+1), #*A007918(n)]` -/
def P2721385197302219876.Spec : Prop :=
  ∀ n, P2721385197302219876.a n = A030664 n

theorem P2721385197302219876.correct : P2721385197302219876.Spec := by
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

/-! ## A030665.P2141640247709709760

`A077344(Δ[A230980(n)+A000125(n)])`
-/

namespace A030665.P2141640247709709760
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230980 n + A000125 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077344 (f1 (n + 1) - f1 n).toNat

end

end A030665.P2141640247709709760

/-! ## A030665.P8681506128679500126

`A077344(Δ[A230980(n)+A004006(n)])`
-/

namespace A030665.P8681506128679500126
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230980 n + A004006 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077344 (f1 (n + 1) - f1 n).toNat

end

end A030665.P8681506128679500126

/-! ## A030665.P18071980448771249153

`A077344(A010051(n+1)+A000124(n))`
-/

namespace A030665.P18071980448771249153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077344 (A010051 (n + 1) + A000124 n).toNat

end

end A030665.P18071980448771249153

/-! ## A030665.P17706203792758584317

`A077344(A010051(n+1)+Δ[A000125(n)])`
-/

namespace A030665.P17706203792758584317
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000125 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077344 (A010051 (n + 1) + (f1 (n + 1) - f1 n)).toNat

end

end A030665.P17706203792758584317

/-! ## A030665.P7523985370737453212

`A077344(A010051(n+1)+Δ[A004006(n)])`
-/

namespace A030665.P7523985370737453212
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004006 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077344 (A010051 (n + 1) + (f1 (n + 1) - f1 n)).toNat

end

end A030665.P7523985370737453212

/-! ## A030665.P2727122759271018836

`A077344(A000124(n)+char[A006093(n+1)])`
-/

namespace A030665.P2727122759271018836
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006093 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077344 (A000124 n + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)).toNat

end

end A030665.P2727122759271018836

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

/-! ## A030666.P5079059474935407118

`A030667(n+1)^A020639(2*(n+1))`
-/

namespace A030666.P5079059474935407118
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A030667 (n + 1) : ℚ) ^ (A020639 (2 * (n + 1)) : ℤ)

end

end A030666.P5079059474935407118

/-! ## A030666.P6974825974751872154

`A030667(A000027(n+1))*A030667(n+1)`
-/

namespace A030666.P6974825974751872154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030667 (A000027 (n + 1)).toNat * A030667 (n + 1)

end

end A030666.P6974825974751872154

/-! ## A030666.P7480050235517300413

`A030667(n+1)^gcd(2, A022837(2*(n+1)))`
-/

namespace A030666.P7480050235517300413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030667 (n + 1) ^ Int.gcd 2 (A022837 (2 * (n + 1)))

end

end A030666.P7480050235517300413

/-! ## A030666.P10029761397341904143

`A030667(n+1)^A000005(A003628(n+1))`
-/

namespace A030666.P10029761397341904143
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A030667 (n + 1) : ℚ) ^ (A000005 (A003628 (n + 1)).toNat : ℤ)

end

end A030666.P10029761397341904143

/-! ## A030666.P6320477021511663620

`A030667(n+1)^A000005(A019397(n+1))`
-/

namespace A030666.P6320477021511663620
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A030667 (n + 1) : ℚ) ^ (A000005 (A019397 (n + 1)).toNat : ℤ)

end

end A030666.P6320477021511663620

/-! ## A030666.P678942489320192652

`A030667(n+1)^A000005(A006567(n+1))`
-/

namespace A030666.P678942489320192652
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A030667 (n + 1) : ℚ) ^ (A000005 (A006567 (n + 1)).toNat : ℤ)

end

end A030666.P678942489320192652

/-! ## A030666.P5399573298541157235

`A030667(n+1)^A000005(A129864(n+1))`
-/

namespace A030666.P5399573298541157235
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A030667 (n + 1) : ℚ) ^ (A000005 (A129864 (n + 1)).toNat : ℤ)

end

end A030666.P5399573298541157235

/-! ## A030666.P12563190414697847984

`A018796(A030667(n+1)*A030667(n+1))`
-/

namespace A030666.P12563190414697847984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018796 (A030667 (n + 1) * A030667 (n + 1)).toNat

end

end A030666.P12563190414697847984

/-! ## A030666.P10109820451069290665

`A030667(n+1)^A000005(A337648(n+1))`
-/

namespace A030666.P10109820451069290665
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A030667 (n + 1) : ℚ) ^ (A000005 (A337648 (n + 1)).toNat : ℤ)

end

end A030666.P10109820451069290665

/-!
# A030667: Square root of A030666(n).

The programs for A030667, there is no canonical definition to state claims against.
-/

/-! ## A030667.P6685849736544786216

`sqrt(A030666(n+1))`
-/

namespace A030667.P6685849736544786216
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A030666 (n + 1) : ℝ)

end

end A030667.P6685849736544786216

/-! ## A030667.P16737611704314682092

`A000027(root(A030666(n+1), 2))`
-/

namespace A030667.P16737611704314682092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (SequenceMachineLib.roundAway ((A030666 (n + 1) : ℝ) ^ (1 / (2 : ℝ)))).toNat

end

end A030667.P16737611704314682092

/-! ## A030667.P8962962149120517336

`root(A030666(n+1), gcd(2, A005843(n)))`
-/

namespace A030667.P8962962149120517336
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A030666 (n + 1) : ℝ) ^ (1 / (Int.gcd 2 (A005843 n) : ℝ))

end

end A030667.P8962962149120517336

/-! ## A030667.P5265069900321403964

`root(A030666(n+1), A020639(2*(n+1)))`
-/

namespace A030667.P5265069900321403964
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A030666 (n + 1) : ℝ) ^ (1 / (A020639 (2 * (n + 1)) : ℝ))

end

end A030667.P5265069900321403964

/-! ## A030667.P16809928749282239189

`A000035(2*n)+root(A030666(n+1), 2)`
-/

namespace A030667.P16809928749282239189
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A000035 (2 * n) : ℝ) + (A030666 (n + 1) : ℝ) ^ (1 / (2 : ℝ))

end

end A030667.P16809928749282239189

/-! ## A030667.P9244957629312893987

`A028310(root(A030666(n+1), 2))`
-/

namespace A030667.P9244957629312893987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (SequenceMachineLib.roundAway ((A030666 (n + 1) : ℝ) ^ (1 / (2 : ℝ)))).toNat

end

end A030667.P9244957629312893987

/-! ## A030667.P2217415133721667910

`A123108(2*root(A030666(n+1), 2))`
-/

namespace A030667.P2217415133721667910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123108 (SequenceMachineLib.roundAway (2 * (A030666 (n + 1) : ℝ) ^ (1 / (2 : ℝ)))).toNat

end

end A030667.P2217415133721667910

/-! ## A030667.P5537965062682290208

`root(A030666(n+1), 2)%A000045(n+7)`
-/

namespace A030667.P5537965062682290208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway ((A030666 (n + 1) : ℝ) ^ (1 / (2 : ℝ)))) (A000045 (n + 7))

end

end A030667.P5537965062682290208

/-! ## A030667.P5391683798806023795

`A233583(root(A030666(n+1), 2)+1)`
-/

namespace A030667.P5391683798806023795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233583 (SequenceMachineLib.roundAway ((A030666 (n + 1) : ℝ) ^ (1 / (2 : ℝ)) + 1)).toNat

end

end A030667.P5391683798806023795

/-!
# A030668: Smallest nontrivial extension of n which is a cube.

The programs for A030668, there is no canonical definition to state claims against.
-/

/-! ## A030668.P9493480789180061657

`A030669(n+1)^3`
-/

namespace A030668.P9493480789180061657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030669 (n + 1) ^ 3

end

end A030668.P9493480789180061657

/-! ## A030668.P8657594309130323000

`A000578(A030669(n+1))`
-/

namespace A030668.P8657594309130323000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000578 (A030669 (n + 1)).toNat

end

end A030668.P8657594309130323000

/-! ## A030668.P15152738371993236094

`∑{d}[A030669(n+1), A059376(#)]`
-/

namespace A030668.P15152738371993236094
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030669 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A059376 d

end

end A030668.P15152738371993236094

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

/-! ## A030669.P334195695425402477

`root(A030668(n+1), 3)`
-/

namespace A030669.P334195695425402477
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A030668 (n + 1) : ℝ) ^ (1 / (3 : ℝ))

end

end A030669.P334195695425402477

/-! ## A030669.P13648338961497875407

`A030668(n+1)^3^A008683(A002476(n+1))`
-/

namespace A030669.P13648338961497875407
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A030668 (n + 1) : ℝ) ^ ((3 : ℚ) ^ (A008683 (A002476 (n + 1)).toNat : ℤ) : ℝ)

end

end A030669.P13648338961497875407

/-! ## A030669.P1655966276106509646

`A054846(floor(sqrt(A030668(n+1))))`
-/

namespace A030669.P1655966276106509646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054846 (Int.sqrt (A030668 (n + 1))).toNat

end

end A030669.P1655966276106509646

/-! ## A030669.P17518932967973463121

`A054846(ceil(sqrt(A030668(n+1))))`
-/

namespace A030669.P17518932967973463121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054846 ⌈Real.sqrt (A030668 (n + 1) : ℝ)⌉.toNat

end

end A030669.P17518932967973463121

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

/-! ## A030670.P4597350538275961890

`∑{p}[A064792(n+1)², #]`
-/

namespace A030670.P4597350538275961890
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064792 (n + 1) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A030670.P4597350538275961890

/-! ## A030670.P12657769434625654286

`A050367(A064792(n+1))`
-/

namespace A030670.P12657769434625654286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050367 (A064792 (n + 1)).toNat

end

end A030670.P12657769434625654286

/-! ## A030670.P8607401911829599492

`A064792(A187829(n+1))`
-/

namespace A030670.P8607401911829599492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064792 (A187829 (n + 1)).toNat

end

end A030670.P8607401911829599492

/-! ## A030670.P13147351571763461524

`A030665(eq[2, A321721(n)])`
-/

namespace A030670.P13147351571763461524
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321721 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030665 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A030670.P13147351571763461524

/-! ## A030670.P9291800928161579252

`A124741(A064792(n+1)+1)`
-/

namespace A030670.P9291800928161579252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124741 (A064792 (n + 1) + 1).toNat

end

end A030670.P9291800928161579252

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

/-! ## A030671.P4837120773004570467

`A018796(A008578(n+2))`
-/

namespace A030671.P4837120773004570467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018796 (A008578 (n + 2)).toNat

end

end A030671.P4837120773004570467

/-! ## A030671.P4510076084510357689

`A018796(A182986(n+2))`
-/

namespace A030671.P4510076084510357689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018796 (A182986 (n + 2)).toNat

end

end A030671.P4510076084510357689

/-! ## A030671.P15135987952213801242

`A018796(sqrt(A001248(n+1)))`
-/

namespace A030671.P15135987952213801242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018796 (SequenceMachineLib.roundAway (Real.sqrt (A001248 (n + 1) : ℝ))).toNat

end

end A030671.P15135987952213801242

/-! ## A030671.P3283235155655635941

`A018796(record[A006530(n+2)])`
-/

namespace A030671.P3283235155655635941
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018796 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A030671.P3283235155655635941

/-! ## A030671.P6466670717074186685

`A018796(record[A020639(n+2)])`
-/

namespace A030671.P6466670717074186685
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018796 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A030671.P6466670717074186685

/-! ## A030671.P14094402466934896323

`A018796(A014692(n+1)+n)`
-/

namespace A030671.P14094402466934896323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018796 (A014692 (n + 1) + (n : ℤ)).toNat

end

end A030671.P14094402466934896323

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

/-! ## A030671.P16107099161211096990

`A030666(record[A006530(n+2)])`
-/

namespace A030671.P16107099161211096990
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030666 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A030671.P16107099161211096990

/-! ## A030671.P729649100486735898

`A030666(record[A020639(n+2)])`
-/

namespace A030671.P729649100486735898
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030666 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A030671.P729649100486735898

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

/-! ## A030671.P4854950227403719130

`A018796(record[A014963(n+2)])`
-/

namespace A030671.P4854950227403719130
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018796 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A030671.P4854950227403719130

/-! ## A030671.P680584769987888341

`A030666(record[A014963(n+2)])`
-/

namespace A030671.P680584769987888341
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030666 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A030671.P680584769987888341

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

/-! ## A030672.P1080603784546795759

`A018851(A000040(n+1))`
-/

namespace A030672.P1080603784546795759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018851 (A000040 (n + 1)).toNat

end

end A030672.P1080603784546795759

/-! ## A030672.P4085213418308407366

`A018851(A008578(n+2))`
-/

namespace A030672.P4085213418308407366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018851 (A008578 (n + 2)).toNat

end

end A030672.P4085213418308407366

/-! ## A030672.P14935094540027346644

`A018851(A182986(n+2))`
-/

namespace A030672.P14935094540027346644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018851 (A182986 (n + 2)).toNat

end

end A030672.P14935094540027346644

/-! ## A030672.P555315505801727966

`A018851(record[A006530(n+2)])`
-/

namespace A030672.P555315505801727966
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018851 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A030672.P555315505801727966

/-! ## A030672.P11443668778814572885

`A018851(record[A020639(n+2)])`
-/

namespace A030672.P11443668778814572885
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018851 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A030672.P11443668778814572885

/-! ## A030672.P1905847420671332502

`A018851(A007504(n+1)-A007504(n))`
-/

namespace A030672.P1905847420671332502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018851 (A007504 (n + 1) - A007504 n).toNat

end

end A030672.P1905847420671332502

/-! ## A030672.P4722259131976966321

`A018851(p?[A014681(n)])`
-/

namespace A030672.P4722259131976966321
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014681 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018851 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A030672.P4722259131976966321

/-! ## A030672.P5259161336599214622

`A018851(record[A014963(n+2)])`
-/

namespace A030672.P5259161336599214622
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018851 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A030672.P5259161336599214622

/-! ## A030672.P12694907250375783506

`A030667(record[A006530(n+2)])`
-/

namespace A030672.P12694907250375783506
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030667 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A030672.P12694907250375783506

/-! ## A030672.P8425436435406312902

`A030667(record[A014963(n+2)])`
-/

namespace A030672.P8425436435406312902
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030667 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A030672.P8425436435406312902

/-! ## A030672.P13450116109725023495

`A030667(record[A020639(n+2)])`
-/

namespace A030672.P13450116109725023495
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030667 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A030672.P13450116109725023495

/-! ## A030672.P18003921352581178187

`A018851(∑{p}[A001248(n+1), #])`
-/

namespace A030672.P18003921352581178187
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001248 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018851 (∑ p ∈ Nat.primeFactors (f1 n).natAbs, p)

end

end A030672.P18003921352581178187

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

/-! ## A030673.P17476507341296803908

`A018797(A008578(n+2))`
-/

namespace A030673.P17476507341296803908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018797 (A008578 (n + 2)).toNat

end

end A030673.P17476507341296803908

/-! ## A030673.P8510984009196733457

`A018797(A182986(n+2))`
-/

namespace A030673.P8510984009196733457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018797 (A182986 (n + 2)).toNat

end

end A030673.P8510984009196733457

/-! ## A030673.P4828699698913031340

`A018797(∑[A054541(n+1)])`
-/

namespace A030673.P4828699698913031340
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054541 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018797 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A030673.P4828699698913031340

/-! ## A030673.P7905573199182776948

`A018797(record[A006530(n+2)])`
-/

namespace A030673.P7905573199182776948
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018797 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A030673.P7905573199182776948

/-! ## A030673.P1988282462232772247

`A018797(record[A014963(n+2)])`
-/

namespace A030673.P1988282462232772247
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018797 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A030673.P1988282462232772247

/-! ## A030673.P1537671102469635429

`A030668(record[A006530(n+2)])`
-/

namespace A030673.P1537671102469635429
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030668 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A030673.P1537671102469635429

/-! ## A030673.P386497478542764944

`A018797(record[A020639(n+2)])`
-/

namespace A030673.P386497478542764944
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018797 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A030673.P386497478542764944

/-! ## A030673.P13548636293747563222

`A030668(record[A014963(n+2)])`
-/

namespace A030673.P13548636293747563222
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030668 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A030673.P13548636293747563222

/-! ## A030673.P15580458939557308111

`A030668(record[A020639(n+2)])`
-/

namespace A030673.P15580458939557308111
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030668 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A030673.P15580458939557308111

/-! ## A030673.P17352419404248371819

`A018797(A014692(n+1)+n)`
-/

namespace A030673.P17352419404248371819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018797 (A014692 (n + 1) + (n : ℤ)).toNat

end

end A030673.P17352419404248371819

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

/-! ## A030674.P15743630579649864802

`A018852(A000040(n+1))`
-/

namespace A030674.P15743630579649864802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018852 (A000040 (n + 1)).toNat

end

end A030674.P15743630579649864802

/-! ## A030674.P14528223438138925860

`A018852(A216883(n+1))`
-/

namespace A030674.P14528223438138925860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018852 (A216883 (n + 1)).toNat

end

end A030674.P14528223438138925860

/-! ## A030674.P754411268815536868

`A018852(A216884(n+1))`
-/

namespace A030674.P754411268815536868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018852 (A216884 (n + 1)).toNat

end

end A030674.P754411268815536868

/-! ## A030674.P4776322493516057496

`A018852(A216885(n+1))`
-/

namespace A030674.P4776322493516057496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018852 (A216885 (n + 1)).toNat

end

end A030674.P4776322493516057496

/-! ## A030674.P17026295216421254007

`A018852(A216887(n+1))`
-/

namespace A030674.P17026295216421254007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018852 (A216887 (n + 1)).toNat

end

end A030674.P17026295216421254007

/-! ## A030674.P5492764640130938584

`A018852(A385492(n+1))`
-/

namespace A030674.P5492764640130938584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018852 (A385492 (n + 1)).toNat

end

end A030674.P5492764640130938584

/-! ## A030674.P13466865198195194736

`A018852(A008578(n+2))`
-/

namespace A030674.P13466865198195194736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018852 (A008578 (n + 2)).toNat

end

end A030674.P13466865198195194736

/-! ## A030674.P4071455269490252308

`A018852(A015919(n+2))`
-/

namespace A030674.P4071455269490252308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018852 (A015919 (n + 2)).toNat

end

end A030674.P4071455269490252308

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

/-! ## A030675.P17085832708386894557

`A030665(∑[A086862(n+1)])`
-/

namespace A030675.P17085832708386894557
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086862 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030665 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A030675.P17085832708386894557

/-! ## A030675.P8689857283159792093

`A030665(record[A047813(n+1)])`
-/

namespace A030675.P8689857283159792093
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047813 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030665 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A030675.P8689857283159792093

/-! ## A030675.P302380042763989840

`A030665(record[A331472(n+1)])`
-/

namespace A030675.P302380042763989840
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331472 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030665 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A030675.P302380042763989840

/-! ## A030675.P1252721221237734465

`A030665(lcm(A110751(n+1), A155040(n)))`
-/

namespace A030675.P1252721221237734465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030665 (Int.lcm (A110751 (n + 1)) (A155040 n))

end

end A030675.P1252721221237734465

/-! ## A030675.P6068957743503311202

`A030665(A155040(n)²*A110751(n+1))`
-/

namespace A030675.P6068957743503311202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030665 (A155040 n ^ 2 * A110751 (n + 1)).toNat

end

end A030675.P6068957743503311202

/-! ## A030675.P13369086862920450999

`A030665(A110751(n+1)/A155040(n)²)`
-/

namespace A030675.P13369086862920450999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030665 (SequenceMachineLib.roundAway ((A110751 (n + 1) : ℚ) / (A155040 n ^ 2 : ℚ))).toNat

end

end A030675.P13369086862920450999

/-! ## A030675.P5320497789234086244

`A030665(A110751(n+1)*A155040(n)*A155040(n))`
-/

namespace A030675.P5320497789234086244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030665 (A110751 (n + 1) * A155040 n * A155040 n).toNat

end

end A030675.P5320497789234086244

/-!
# A030676: Smallest nontrivial extension of n-th palindrome which is a square.

The programs for A030676, there is no canonical definition to state claims against.
-/

/-! ## A030676.P1167179339877817649

`A030677(n+1)²`
-/

namespace A030676.P1167179339877817649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030677 (n + 1) ^ 2

end

end A030676.P1167179339877817649

/-! ## A030676.P9432825609924263028

`A030677(n+1)^A000799(C(2, n)!)`
-/

namespace A030676.P9432825609924263028
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A030677 (n + 1) : ℚ) ^ (A000799 (Nat.factorial (Nat.choose 2 n)) : ℤ)

end

end A030676.P9432825609924263028

/-! ## A030676.P4063147917145008705

`A030677(A000027(n+1))*A030677(n+1)`
-/

namespace A030676.P4063147917145008705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030677 (A000027 (n + 1)).toNat * A030677 (n + 1)

end

end A030676.P4063147917145008705

/-! ## A030676.P2473866457337591694

`(A030677(n+2)-Δ[A030677(n+1)])^2`
-/

namespace A030676.P2473866457337591694
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030677 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A030677 (n + 2) - (f1 (n + 1) - f1 n)) ^ 2

end

end A030676.P2473866457337591694

/-! ## A030676.P16316166816110036695

`A030677(n+1)^A020639(A038387(2*(n+1)))`
-/

namespace A030676.P16316166816110036695
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A030677 (n + 1) : ℚ) ^ (A020639 (A038387 (2 * (n + 1))).toNat : ℤ)

end

end A030676.P16316166816110036695

/-! ## A030676.P8350329828828890327

`A014963(18*(n+1))*A030677(n+1)*A030677(n+1)`
-/

namespace A030676.P8350329828828890327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (18 * (n + 1)) * A030677 (n + 1) * A030677 (n + 1)

end

end A030676.P8350329828828890327

/-! ## A030676.P2431932987476462379

`A030666(A002113(n+2))`
-/

namespace A030676.P2431932987476462379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030666 (A002113 (n + 2)).toNat

end

end A030676.P2431932987476462379

/-! ## A030676.P14022129693599024292

`A030677(n+1)^A020639(2*A131065(n))`
-/

namespace A030676.P14022129693599024292
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A030677 (n + 1) : ℚ) ^ (A020639 (2 * A131065 n).toNat : ℤ)

end

end A030676.P14022129693599024292

/-! ## A030676.P3829576185926566294

`A000290(A030677(n+1))%A030695(n+1)`
-/

namespace A030676.P3829576185926566294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000290 (A030677 (n + 1)).toNat) (A030695 (n + 1))

end

end A030676.P3829576185926566294

/-! ## A030676.P17055804286786900108

`A000290(A030677(n+1)%A000389(n+12))`
-/

namespace A030676.P17055804286786900108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000290 (Int.tmod (A030677 (n + 1)) (A000389 (n + 12))).toNat

end

end A030676.P17055804286786900108

/-! ## A030676.P1525189624882211432

`A030677(n+1)*A038572(2*A030677(n+1))`
-/

namespace A030676.P1525189624882211432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030677 (n + 1) * A038572 (2 * A030677 (n + 1)).toNat

end

end A030676.P1525189624882211432

/-!
# A030677: a(n) is the square root of A030676(n).

The programs for A030677, there is no canonical definition to state claims against.
-/

/-! ## A030677.P8854192901077980405

`sqrt(A030676(n+1))`
-/

namespace A030677.P8854192901077980405
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A030676 (n + 1) : ℝ)

end

end A030677.P8854192901077980405

/-! ## A030677.P1989145775693874565

`root(A030676(n+1), 2%A030666(n+1))`
-/

namespace A030677.P1989145775693874565
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A030676 (n + 1) : ℝ) ^ (1 / (Int.tmod 2 (A030666 (n + 1)) : ℝ))

end

end A030677.P1989145775693874565

/-! ## A030677.P14551908245650575252

`root(A030676(n+1), A002265(n+8)-A002265(n))`
-/

namespace A030677.P14551908245650575252
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A030676 (n + 1) : ℝ) ^ (1 / (A002265 (n + 8) - A002265 n : ℝ))

end

end A030677.P14551908245650575252

/-! ## A030677.P16871802351553402589

`A000027(root(A030676(n+1), 2))`
-/

namespace A030677.P16871802351553402589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (SequenceMachineLib.roundAway ((A030676 (n + 1) : ℝ) ^ (1 / (2 : ℝ)))).toNat

end

end A030677.P16871802351553402589

/-! ## A030677.P5004142463104460006

`root(A030676(n+1), ratio[A000079(n)])`
-/

namespace A030677.P5004142463104460006
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A030676 (n + 1) : ℝ) ^ (1 / ((f1 (n + 1) : ℚ) / (f1 n : ℚ) : ℝ))

end

end A030677.P5004142463104460006

/-! ## A030677.P15562538360725036133

`A030667(A002113(n+2))`
-/

namespace A030677.P15562538360725036133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030667 (A002113 (n + 2)).toNat

end

end A030677.P15562538360725036133

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

/-! ## A030678.P2494608080658486063

`A030668(∑[A086862(n+1)])`
-/

namespace A030678.P2494608080658486063
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086862 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030668 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A030678.P2494608080658486063

/-! ## A030678.P16561136702759058415

`A030668(eq[n+1, A004086(n+1)]+1)`
-/

namespace A030678.P16561136702759058415
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004086 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030668 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A030678.P16561136702759058415

/-! ## A030678.P15807052023685878547

`A030668(record[A262038(A032742(n+1))])`
-/

namespace A030678.P15807052023685878547
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262038 (A032742 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030668 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A030678.P15807052023685878547

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

/-! ## A030679.P18218118893079498905

`A030669(∑[A086862(n+1)])`
-/

namespace A030679.P18218118893079498905
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086862 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030669 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A030679.P18218118893079498905

/-! ## A030679.P15466892501623570253

`A030669(record[A047813(n+1)])`
-/

namespace A030679.P15466892501623570253
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047813 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030669 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A030679.P15466892501623570253

/-! ## A030679.P8577702596279707436

`A030669(record[A093030(n+1)])`
-/

namespace A030679.P8577702596279707436
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093030 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030669 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A030679.P8577702596279707436

/-! ## A030679.P224644579509599480

`A030669(eq[A000007(n), A064834(n)])`
-/

namespace A030679.P224644579509599480
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064834 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030669 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A030679.P224644579509599480

/-! ## A030679.P15691150771516597500

`A030669(eq[A000007(n), A256756(n)])`
-/

namespace A030679.P15691150771516597500
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256756 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030669 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A030679.P15691150771516597500

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

/-! ## A030680.P10434398240310808029

`A030665(A088562(n+1))`
-/

namespace A030680.P10434398240310808029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030665 (A088562 (n + 1)).toNat

end

end A030680.P10434398240310808029

/-! ## A030680.P6400283166357528900

`A030665(A069217(n+2))`
-/

namespace A030680.P6400283166357528900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030665 (A069217 (n + 2)).toNat

end

end A030680.P6400283166357528900

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

/-! ## A030681.P5243530668045525747

`A030682(n+1)^A000799(C(2, n)!)`
-/

namespace A030681.P5243530668045525747
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A030682 (n + 1) : ℚ) ^ (A000799 (Nat.factorial (Nat.choose 2 n)) : ℤ)

end

end A030681.P5243530668045525747

/-! ## A030681.P11919543333954065126

`A030682(n+1)^A307313(A062383(n))`
-/

namespace A030681.P11919543333954065126
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A030682 (n + 1) : ℚ) ^ (A307313 (A062383 n).toNat : ℤ)

end

end A030681.P11919543333954065126

/-! ## A030681.P2074400102440975526

`A030682(A000027(n+1))*A030682(n+1)`
-/

namespace A030681.P2074400102440975526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030682 (A000027 (n + 1)).toNat * A030682 (n + 1)

end

end A030681.P2074400102440975526

/-! ## A030681.P1611167056875613131

`A030682(n+1)^A000005(A056608(n+1))`
-/

namespace A030681.P1611167056875613131
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A030682 (n + 1) : ℚ) ^ (A000005 (A056608 (n + 1)).toNat : ℤ)

end

end A030681.P1611167056875613131

/-! ## A030681.P11997703623934002296

`A030682(n+1)^A020639(A087560(n+1))`
-/

namespace A030681.P11997703623934002296
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A030682 (n + 1) : ℚ) ^ (A020639 (A087560 (n + 1)).toNat : ℤ)

end

end A030681.P11997703623934002296

/-! ## A030681.P3766552500436340720

`A030682(n+1)^A010882(A137165(n+1))`
-/

namespace A030681.P3766552500436340720
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A030682 (n + 1) : ℚ) ^ (A010882 (A137165 (n + 1)).toNat : ℤ)

end

end A030681.P3766552500436340720

/-! ## A030681.P5173359237762806764

`A030682(n+1)^A000005(A228353(n+1))`
-/

namespace A030681.P5173359237762806764
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A030682 (n + 1) : ℚ) ^ (A000005 (A228353 (n + 1)).toNat : ℤ)

end

end A030681.P5173359237762806764

/-! ## A030681.P5295418104708785398

`A030682(n+1)^A014963(A307313(n+1))`
-/

namespace A030681.P5295418104708785398
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A030682 (n + 1) : ℚ) ^ (A014963 (A307313 (n + 1)).toNat : ℤ)

end

end A030681.P5295418104708785398

/-! ## A030681.P6688955334844949536

`A030682(n+1)^A020639(A006512(n+1)-1)`
-/

namespace A030681.P6688955334844949536
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A030682 (n + 1) : ℚ) ^ (A020639 (A006512 (n + 1) - 1).toNat : ℤ)

end

end A030681.P6688955334844949536

/-! ## A030681.P6308277332651093739

`A030682(n+1)^A225373(A000032(C(2, n+2)))`
-/

namespace A030681.P6308277332651093739
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A030682 (n + 1) : ℚ) ^ (A225373 (A000032 (Nat.choose 2 (n + 2))).toNat : ℤ)

end

end A030681.P6308277332651093739

/-! ## A030681.P17254778385388330413

`A030682(A000124(n+1)-A000124(n))*A030682(n+1)`
-/

namespace A030681.P17254778385388330413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030682 (A000124 (n + 1) - A000124 n).toNat * A030682 (n + 1)

end

end A030681.P17254778385388330413

/-! ## A030681.P8999547594539943002

`A030682(n+1)^A001222(A030661(n+1))`
-/

namespace A030681.P8999547594539943002
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A030682 (n + 1) : ℚ) ^ (A001222 (A030661 (n + 1)).toNat : ℤ)

end

end A030681.P8999547594539943002

/-! ## A030681.P11821182203750226219

`A030682(n+1)^A030707(A030714(n+1))`
-/

namespace A030681.P11821182203750226219
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A030682 (n + 1) : ℚ) ^ (A030707 (A030714 (n + 1)).toNat : ℤ)

end

end A030681.P11821182203750226219

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

/-! ## A030681.P9007138498564799348

`A018796(A069217(n+2))`
-/

namespace A030681.P9007138498564799348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018796 (A069217 (n + 2)).toNat

end

end A030681.P9007138498564799348

/-! ## A030681.P8650525269282119813

`A018796(p?[A002113(n+1)])`
-/

namespace A030681.P8650525269282119813
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002113 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018796 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A030681.P8650525269282119813

/-! ## A030681.P1893070909738334416

`A030682(n+1)^A000005(A030675(n+1))`
-/

namespace A030681.P1893070909738334416
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A030682 (n + 1) : ℚ) ^ (A000005 (A030675 (n + 1)).toNat : ℤ)

end

end A030681.P1893070909738334416

/-!
# A030682: Square root of A030681.

The programs for A030682, there is no canonical definition to state claims against.
-/

/-! ## A030682.P609698073626495

`sqrt(A030681(n+1))`
-/

namespace A030682.P609698073626495
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A030681 (n + 1) : ℝ)

end

end A030682.P609698073626495

/-! ## A030682.P8336224312375792554

`floor(sqrt(A030681(Δ[n²]-n)))`
-/

namespace A030682.P8336224312375792554
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A030681 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) - (n : ℤ)).toNat)

end

end A030682.P8336224312375792554

/-! ## A030682.P12167306413607789270

`ceil(sqrt(A030681(ϕ²-(ϕ-n))))`
-/

namespace A030682.P12167306413607789270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (A030681 (SequenceMachineLib.roundAway (Real.goldenRatio ^ 2 - (Real.goldenRatio - (n : ℝ)))).toNat : ℝ)⌉

end

end A030682.P12167306413607789270

/-! ## A030682.P2083938996057138819

`root(A030681(n+1), ratio[A000079(n)])`
-/

namespace A030682.P2083938996057138819
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A030681 (n + 1) : ℝ) ^ (1 / ((f1 (n + 1) : ℚ) / (f1 n : ℚ) : ℝ))

end

end A030682.P2083938996057138819

/-! ## A030682.P12313381812881756942

`root(A030681(n+1), A020639(2*(n+1)))`
-/

namespace A030682.P12313381812881756942
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A030681 (n + 1) : ℝ) ^ (1 / (A020639 (2 * (n + 1)) : ℝ))

end

end A030682.P12313381812881756942

/-! ## A030682.P8188150985909558228

`sqrt(A030681(Δ[n²]-n))%A017018(n)²`
-/

namespace A030682.P8188150985909558228
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway (Real.sqrt (A030681 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) - (n : ℤ)).toNat : ℝ))) (A017018 n ^ 2)

end

end A030682.P8188150985909558228

/-! ## A030682.P13358222692524604796

`A087960(2*n)²*sqrt(A030681(Δ[n²]-n))`
-/

namespace A030682.P13358222692524604796
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A087960 (2 * n) ^ 2 : ℝ) * Real.sqrt (A030681 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) - (n : ℤ)).toNat : ℝ)

end

end A030682.P13358222692524604796

/-! ## A030682.P17187377556860266247

`A030672(A075807(n+1))`
-/

namespace A030682.P17187377556860266247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030672 (A075807 (n + 1)).toNat

end

end A030682.P17187377556860266247

/-!
# A030683: Smallest nontrivial extension of n-th palindromic prime which is a cube.

The programs for A030683, there is no canonical definition to state claims against.
-/

/-! ## A030683.P17729449585403822080

`A030684(n+1)^3`
-/

namespace A030683.P17729449585403822080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030684 (n + 1) ^ 3

end

end A030683.P17729449585403822080

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

/-! ## A030684.P12534784104266005812

`A030683(n+1)^3^or(-1, A000041(n))`
-/

namespace A030684.P12534784104266005812
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A030683 (n + 1) : ℝ) ^ ((3 : ℚ) ^ (Int.lor (-1) (A000041 n) : ℤ) : ℝ)

end

end A030684.P12534784104266005812

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

/-!
# A030685: Smallest nontrivial extension of n-th square which is a prime.

The programs for A030685, there is no canonical definition to state claims against.
-/

/-! ## A030685.P7941042516078341862

`A000015(A065145(n+1))`
-/

namespace A030685.P7941042516078341862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000015 (A065145 (n + 1)).toNat

end

end A030685.P7941042516078341862

/-! ## A030685.P2942886228848131856

`A014963(A018800((n+1)²))`
-/

namespace A030685.P2942886228848131856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A018800 ((n + 1) ^ 2)).toNat

end

end A030685.P2942886228848131856

/-! ## A030685.P4223874065707093639

`A014963(A030665((n+1)²))`
-/

namespace A030685.P4223874065707093639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A030665 ((n + 1) ^ 2)).toNat

end

end A030685.P4223874065707093639

/-! ## A030685.P14953089892923204520

`A030665(A161951(n+1)²)`
-/

namespace A030685.P14953089892923204520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030665 (A161951 (n + 1) ^ 2).toNat

end

end A030685.P14953089892923204520

/-! ## A030685.P6850516432276443170

`A018800(A256481((n+1)²))`
-/

namespace A030685.P6850516432276443170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018800 (A256481 ((n + 1) ^ 2)).toNat

end

end A030685.P6850516432276443170

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

/-! ## A030686.P14321191211161041566

`A030687(n+1)^A000799(C(2, n)!)`
-/

namespace A030686.P14321191211161041566
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A030687 (n + 1) : ℚ) ^ (A000799 (Nat.factorial (Nat.choose 2 n)) : ℤ)

end

end A030686.P14321191211161041566

/-! ## A030686.P11729573273077674406

`A030687(n+1)^A020639(2*(n+1))`
-/

namespace A030686.P11729573273077674406
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A030687 (n + 1) : ℚ) ^ (A020639 (2 * (n + 1)) : ℤ)

end

end A030686.P11729573273077674406

/-! ## A030686.P9760845200761146182

`A030687(n+1)^(2%A030673(n+1))`
-/

namespace A030686.P9760845200761146182
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A030687 (n + 1) : ℚ) ^ (Int.tmod 2 (A030673 (n + 1)) : ℤ)

end

end A030686.P9760845200761146182

/-! ## A030686.P2272753068573836367

`A030687(A000027(n+1))*A030687(n+1)`
-/

namespace A030686.P2272753068573836367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030687 (A000027 (n + 1)).toNat * A030687 (n + 1)

end

end A030686.P2272753068573836367

/-! ## A030686.P6933726644353369036

`A030687(n+1)^A001222(A001358(n+1))`
-/

namespace A030686.P6933726644353369036
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A030687 (n + 1) : ℚ) ^ (A001222 (A001358 (n + 1)).toNat : ℤ)

end

end A030686.P6933726644353369036

/-! ## A030686.P12482982192028440595

`A000290(A030687(n+1)%A000389(n+12))`
-/

namespace A030686.P12482982192028440595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000290 (Int.tmod (A030687 (n + 1)) (A000389 (n + 12))).toNat

end

end A030686.P12482982192028440595

/-! ## A030686.P18317247968121076376

`A007318(∑[n])*A030666((n+1)^2)`
-/

namespace A030686.P18317247968121076376
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (∑ j ∈ Finset.range (n + 1), f1 j) * A030666 ((n + 1) ^ 2)

end

end A030686.P18317247968121076376

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

/-! ## A030687.P16904739842048440193

`floor(sqrt(A030686(Δ[n²]-n)))`
-/

namespace A030687.P16904739842048440193
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A030686 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) - (n : ℤ)).toNat)

end

end A030687.P16904739842048440193

/-! ## A030687.P7738810958549366005

`ceil(sqrt(A030686(ϕ²-(ϕ-n))))`
-/

namespace A030687.P7738810958549366005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (A030686 (SequenceMachineLib.roundAway (Real.goldenRatio ^ 2 - (Real.goldenRatio - (n : ℝ)))).toNat : ℝ)⌉

end

end A030687.P7738810958549366005

/-! ## A030687.P14561633142907635653

`A000027(root(A030686(n+1), 2))`
-/

namespace A030687.P14561633142907635653
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (SequenceMachineLib.roundAway ((A030686 (n + 1) : ℝ) ^ (1 / (2 : ℝ)))).toNat

end

end A030687.P14561633142907635653

/-! ## A030687.P9761854004941214894

`root(A030686(n+1), A307313(A307313(n+1)))`
-/

namespace A030687.P9761854004941214894
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A030686 (n + 1) : ℝ) ^ (1 / (A307313 (A307313 (n + 1)).toNat : ℝ))

end

end A030687.P9761854004941214894

/-! ## A030687.P1458718900026518721

`sqrt(A030686(Δ[n²]-n))*A000034(2*n)`
-/

namespace A030687.P1458718900026518721
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A030686 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) - (n : ℤ)).toNat : ℝ) * (A000034 (2 * n) : ℝ)

end

end A030687.P1458718900026518721

/-! ## A030687.P8629436408749758569

`A004277(sqrt(A030686(Δ[n²]-n)))/2`
-/

namespace A030687.P8629436408749758569
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A004277 (SequenceMachineLib.roundAway (Real.sqrt (A030686 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) - (n : ℤ)).toNat : ℝ))).toNat : ℚ) / 2

end

end A030687.P8629436408749758569

/-! ## A030687.P6817224982687841132

`A008458(sqrt(A030686(Δ[n²]-n)))/6`
-/

namespace A030687.P6817224982687841132
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008458 (SequenceMachineLib.roundAway (Real.sqrt (A030686 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) - (n : ℤ)).toNat : ℝ))).toNat : ℚ) / 6

end

end A030687.P6817224982687841132

/-! ## A030687.P1083428146307935046

`sqrt(A030666((n+1)²))`
-/

namespace A030687.P1083428146307935046
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A030666 ((n + 1) ^ 2) : ℝ)

end

end A030687.P1083428146307935046

/-! ## A030687.P12396139908281177719

`floor(sqrt(A030666(∑[2*n+1])))`
-/

namespace A030687.P12396139908281177719
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A030666 (∑ j ∈ Finset.range (n + 1), f1 j))

end

end A030687.P12396139908281177719

/-! ## A030687.P12548942265243535272

`A030667((n+1)²)`
-/

namespace A030687.P12548942265243535272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030667 ((n + 1) ^ 2)

end

end A030687.P12548942265243535272

/-! ## A030687.P10121893654889285140

`A000027(A030667(∑[2*n+1]))`
-/

namespace A030687.P10121893654889285140
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A030667 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A030687.P10121893654889285140

/-! ## A030687.P18369372543301994492

`A030667(A000290(n+1))%A017054(n)`
-/

namespace A030687.P18369372543301994492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A030667 (A000290 (n + 1)).toNat) (A017054 n)

end

end A030687.P18369372543301994492

/-! ## A030687.P14902093701630377766

`A001221(A243588(n+1))*A030667(A000290(n+1))`
-/

namespace A030687.P14902093701630377766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A243588 (n + 1)).toNat * A030667 (A000290 (n + 1)).toNat

end

end A030687.P14902093701630377766

/-!
# A030688: Smallest nontrivial extension of n-th square which is a square not ending 00.

The programs for A030688, there is no canonical definition to state claims against.
-/

/-! ## A030688.P14039901781247320713

`A030689(n+1)²`
-/

namespace A030688.P14039901781247320713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030689 (n + 1) ^ 2

end

end A030688.P14039901781247320713

/-! ## A030688.P6150500917113924981

`A030689(n+1)^A014963(xor(n, n+1)+1)`
-/

namespace A030688.P6150500917113924981
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A030689 (n + 1) : ℚ) ^ (A014963 (Nat.xor n (n + 1) + 1) : ℤ)

end

end A030688.P6150500917113924981

/-! ## A030688.P10955555107428101695

`A030689(n+1)^A000005(A002476(n+1))`
-/

namespace A030688.P10955555107428101695
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A030689 (n + 1) : ℚ) ^ (A000005 (A002476 (n + 1)).toNat : ℤ)

end

end A030688.P10955555107428101695

/-! ## A030688.P3797417813036471218

`(A030689(n+1)*A030689(n+1))%A030697(n+1)`
-/

namespace A030688.P3797417813036471218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A030689 (n + 1) * A030689 (n + 1)) (A030697 (n + 1))

end

end A030688.P3797417813036471218

/-! ## A030688.P1105153640584339916

`A030689(n+1)%A030690(n+1)*A030689(n+1)`
-/

namespace A030688.P1105153640584339916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A030689 (n + 1)) (A030690 (n + 1)) * A030689 (n + 1)

end

end A030688.P1105153640584339916

/-!
# A030689: Square root of A030688.

The programs for A030689, there is no canonical definition to state claims against.
-/

/-! ## A030689.P9419755081926055115

`sqrt(A030688(n+1))`
-/

namespace A030689.P9419755081926055115
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A030688 (n + 1) : ℝ)

end

end A030689.P9419755081926055115

/-! ## A030689.P1721077623805162487

`A000007(n+1)+root(A030688(n+1), 2)`
-/

namespace A030689.P1721077623805162487
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A000007 (n + 1) : ℝ) + (A030688 (n + 1) : ℝ) ^ (1 / (2 : ℝ))

end

end A030689.P1721077623805162487

/-! ## A030689.P14832223526877667658

`A000035(2*n)+root(A030688(n+1), 2)`
-/

namespace A030689.P14832223526877667658
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A000035 (2 * n) : ℝ) + (A030688 (n + 1) : ℝ) ^ (1 / (2 : ℝ))

end

end A030689.P14832223526877667658

/-! ## A030689.P6642916490262644702

`root(A030688(n+1), 2)%A000096(n+5)²`
-/

namespace A030689.P6642916490262644702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway ((A030688 (n + 1) : ℝ) ^ (1 / (2 : ℝ)))) (A000096 (n + 5) ^ 2)

end

end A030689.P6642916490262644702

/-! ## A030689.P1352064011799940376

`root(A030688(n+1), A001316(A001316(n)))`
-/

namespace A030689.P1352064011799940376
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A030688 (n + 1) : ℝ) ^ (1 / (A001316 (A001316 n).toNat : ℝ))

end

end A030689.P1352064011799940376

/-! ## A030689.P5800162779158566951

`A000027(root(A030688(n+1), 2))`
-/

namespace A030689.P5800162779158566951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (SequenceMachineLib.roundAway ((A030688 (n + 1) : ℝ) ^ (1 / (2 : ℝ)))).toNat

end

end A030689.P5800162779158566951

/-! ## A030689.P18300124561979738412

`root(A030688(n+1), 2)%A000045(n+7)`
-/

namespace A030689.P18300124561979738412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway ((A030688 (n + 1) : ℝ) ^ (1 / (2 : ℝ)))) (A000045 (n + 7))

end

end A030689.P18300124561979738412

/-! ## A030689.P11896097812333457486

`root(A030688(n+1), ratio[A000079(n)])`
-/

namespace A030689.P11896097812333457486
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A030688 (n + 1) : ℝ) ^ (1 / ((f1 (n + 1) : ℚ) / (f1 n : ℚ) : ℝ))

end

end A030689.P11896097812333457486

/-!
# A030690: Smallest nontrivial extension of n-th square which is a cube.

The programs for A030690, there is no canonical definition to state claims against.
-/

/-! ## A030690.P9726158464166358391

`A030691(n+1)^3`
-/

namespace A030690.P9726158464166358391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030691 (n + 1) ^ 3

end

end A030690.P9726158464166358391

/-! ## A030690.P9243408100522669030

`A030691(2*n+1-n)²*A030691(n+1)`
-/

namespace A030690.P9243408100522669030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030691 (2 * n + 1 - n) ^ 2 * A030691 (n + 1)

end

end A030690.P9243408100522669030

/-! ## A030690.P15219951416615939620

`A030668((n+1)²)`
-/

namespace A030690.P15219951416615939620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030668 ((n + 1) ^ 2)

end

end A030690.P15219951416615939620

/-! ## A030690.P1289436410244609957

`A030669((n+1)²)^3`
-/

namespace A030690.P1289436410244609957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030669 ((n + 1) ^ 2) ^ 3

end

end A030690.P1289436410244609957

/-! ## A030690.P14415451935629770087

`xor(1, xor(1, A030668((n+1)*(n+1))))`
-/

namespace A030690.P14415451935629770087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (Int.xor 1 (A030668 ((n + 1) * (n + 1))))

end

end A030690.P14415451935629770087

/-! ## A030690.P14639577981314503682

`∑{d}[A030669((n+1)^2), A000010(#)]^3`
-/

namespace A030690.P14639577981314503682
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030669 ((n + 1) ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 d) ^ 3

end

end A030690.P14639577981314503682

/-! ## A030690.P15772125560785750490

`A030668(A000290(n+1))+A135453(n)%2`
-/

namespace A030690.P15772125560785750490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030668 (A000290 (n + 1)).toNat + Int.tmod (A135453 n) 2

end

end A030690.P15772125560785750490

/-! ## A030690.P4869352041103777870

`A030668((n+1)*(n+1))-A300252(A122564(n+1))`
-/

namespace A030690.P4869352041103777870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030668 ((n + 1) * (n + 1)) - A300252 (A122564 (n + 1)).toNat

end

end A030690.P4869352041103777870

/-! ## A030690.P8217644534355951973

`A000578(A030691(n+1))`
-/

namespace A030690.P8217644534355951973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000578 (A030691 (n + 1)).toNat

end

end A030690.P8217644534355951973

/-! ## A030690.P2517035669961998863

`A000578(A030669((n+1)²))`
-/

namespace A030690.P2517035669961998863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000578 (A030669 ((n + 1) ^ 2)).toNat

end

end A030690.P2517035669961998863

/-!
# A030691: Cube root of A030690.

The programs for A030691, there is no canonical definition to state claims against.
-/

/-! ## A030691.P5756386872533140412

`root(A030690(n+1), 3)`
-/

namespace A030691.P5756386872533140412
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A030690 (n + 1) : ℝ) ^ (1 / (3 : ℝ))

end

end A030691.P5756386872533140412

/-! ## A030691.P9707414905519378868

`A030690(n+1)^3^or(-1, A000041(n))`
-/

namespace A030691.P9707414905519378868
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A030690 (n + 1) : ℝ) ^ ((3 : ℚ) ^ (Int.lor (-1) (A000041 n) : ℤ) : ℝ)

end

end A030691.P9707414905519378868

/-! ## A030691.P15800895898139792771

`A030690(n+1)^3^(A278482(A000096(n))-1)`
-/

namespace A030691.P15800895898139792771
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A030690 (n + 1) : ℝ) ^ ((3 : ℚ) ^ (A278482 (A000096 n).toNat - 1 : ℤ) : ℝ)

end

end A030691.P15800895898139792771

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

/-! ## A030691.P9791955956758178331

`xor(1, xor(1, A030669((n+1)*(n+1))))`
-/

namespace A030691.P9791955956758178331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (Int.xor 1 (A030669 ((n + 1) * (n + 1))))

end

end A030691.P9791955956758178331

/-! ## A030691.P6824698200303498056

`∑{d}[A030669((n+1)^2), A000010(#)]`
-/

namespace A030691.P6824698200303498056
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030669 ((n + 1) ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 d

end

end A030691.P6824698200303498056

/-!
# A030692: Smallest nontrivial extension of n-th cube which is a prime.

The programs for A030692, there is no canonical definition to state claims against.
-/

/-! ## A030692.P13476176142869043192

`A018800(ratio[A016743(n!)])`
-/

namespace A030692.P13476176142869043192
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016743 (Nat.factorial n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018800 (SequenceMachineLib.roundAway ((f1 (n + 1) : ℚ) / (f1 n : ℚ))).toNat

end

end A030692.P13476176142869043192

/-! ## A030692.P17121623276113189251

`A018800(A018800((n+1)^3))`
-/

namespace A030692.P17121623276113189251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018800 (A018800 ((n + 1) ^ 3)).toNat

end

end A030692.P17121623276113189251

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

/-! ## A030693.P16420671647634538807

`A030694(n+1)²`
-/

namespace A030693.P16420671647634538807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030694 (n + 1) ^ 2

end

end A030693.P16420671647634538807

/-! ## A030693.P3066936451689343322

`A030694(A000027(n+1))^2`
-/

namespace A030693.P3066936451689343322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030694 (A000027 (n + 1)).toNat ^ 2

end

end A030693.P3066936451689343322

/-! ## A030693.P15814217052610906409

`A030694(n+1)^A036453(n+3)`
-/

namespace A030693.P15814217052610906409
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A030694 (n + 1) : ℚ) ^ (A036453 (n + 3) : ℤ)

end

end A030693.P15814217052610906409

/-! ## A030693.P11372083313205231091

`A030694(A003963(p?[n%3+n]))^2`
-/

namespace A030693.P11372083313205231091
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n % 3 + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030694 (A003963 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))).toNat ^ 2

end

end A030693.P11372083313205231091

/-! ## A030693.P6462729326532202110

`A030694(n+1)^A000034(2*n+1)`
-/

namespace A030693.P6462729326532202110
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A030694 (n + 1) : ℚ) ^ (A000034 (2 * n + 1) : ℤ)

end

end A030693.P6462729326532202110

/-! ## A030693.P16586650164770390934

`A030694(n+1)^A020639(2*(n+1))`
-/

namespace A030693.P16586650164770390934
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A030694 (n + 1) : ℚ) ^ (A020639 (2 * (n + 1)) : ℤ)

end

end A030693.P16586650164770390934

/-! ## A030693.P7782906911795692439

`A030694(n+1)^(n*A000007(n)+2)`
-/

namespace A030693.P7782906911795692439
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A030694 (n + 1) : ℚ) ^ ((n : ℤ) * A000007 n + 2 : ℤ)

end

end A030693.P7782906911795692439

/-! ## A030693.P15207743485344018165

`A030694(n+1)^(1-or(-1, A000041(n)))`
-/

namespace A030693.P15207743485344018165
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A030694 (n + 1) : ℚ) ^ (1 - Int.lor (-1) (A000041 n) : ℤ)

end

end A030693.P15207743485344018165

/-! ## A030693.P2891289438955084076

`A030694(n+1)^A307313(A062383(n))`
-/

namespace A030693.P2891289438955084076
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A030694 (n + 1) : ℚ) ^ (A307313 (A062383 n).toNat : ℤ)

end

end A030693.P2891289438955084076

/-! ## A030693.P197549844154943442

`A030694(A000027(n+1))*A030694(n+1)`
-/

namespace A030693.P197549844154943442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030694 (A000027 (n + 1)).toNat * A030694 (n + 1)

end

end A030693.P197549844154943442

/-! ## A030693.P7270219911216051585

`A030694(n+1)^A000005(A030665(n+1))`
-/

namespace A030693.P7270219911216051585
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A030694 (n + 1) : ℚ) ^ (A000005 (A030665 (n + 1)).toNat : ℤ)

end

end A030693.P7270219911216051585

/-! ## A030693.P9382402571198545538

`A030694(n+1)^A000005(A030670(n+1))`
-/

namespace A030693.P9382402571198545538
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A030694 (n + 1) : ℚ) ^ (A000005 (A030670 (n + 1)).toNat : ℤ)

end

end A030693.P9382402571198545538

/-! ## A030693.P7067204532811681648

`A030694(n+1)^A000005(A056608(n+1))`
-/

namespace A030693.P7067204532811681648
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A030694 (n + 1) : ℚ) ^ (A000005 (A056608 (n + 1)).toNat : ℤ)

end

end A030693.P7067204532811681648

/-! ## A030693.P4778652175581082969

`A030694(n+1)^A030707(A030714(n+1))`
-/

namespace A030693.P4778652175581082969
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A030694 (n + 1) : ℚ) ^ (A030707 (A030714 (n + 1)).toNat : ℤ)

end

end A030693.P4778652175581082969

/-! ## A030693.P1362473594826908092

`A030694(n+1)^A014963(A307313(n+1))`
-/

namespace A030693.P1362473594826908092
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A030694 (n + 1) : ℚ) ^ (A014963 (A307313 (n + 1)).toNat : ℤ)

end

end A030693.P1362473594826908092

/-! ## A030693.P17534938616436838029

`A030694(n+1)^A001223(p?[A001222(n+1)])`
-/

namespace A030693.P17534938616436838029
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A030694 (n + 1) : ℚ) ^ (A001223 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat : ℤ)

end

end A030693.P17534938616436838029

/-! ## A030693.P11429851912467092157

`A030694(n+1)^A000005(record[A014963(n+2)])`
-/

namespace A030693.P11429851912467092157
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 2)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A030694 (n + 1) : ℚ) ^ (A000005 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat : ℤ)

end

end A030693.P11429851912467092157

/-! ## A030693.P8910880268125864935

`A030694(n+1)^A001222(2*A000040(n+1))`
-/

namespace A030693.P8910880268125864935
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A030694 (n + 1) : ℚ) ^ (A001222 (2 * A000040 (n + 1)).toNat : ℤ)

end

end A030693.P8910880268125864935

/-! ## A030693.P5732725060509771696

`A030694(n+1)^A000040(A007318(C(2, n+1)))`
-/

namespace A030693.P5732725060509771696
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A030694 (n + 1) : ℚ) ^ (A000040 (A007318 (Nat.choose 2 (n + 1))).toNat : ℤ)

end

end A030693.P5732725060509771696

/-! ## A030693.P2044861968864628144

`A030694(n+1)^A000040(A000041(gcd(n, n+1)))`
-/

namespace A030693.P2044861968864628144
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A030694 (n + 1) : ℚ) ^ (A000040 (A000041 (Nat.gcd n (n + 1))).toNat : ℤ)

end

end A030693.P2044861968864628144

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

/-! ## A030694.P393790704798367701

`root(A030693(C(n+1, n)), 2)`
-/

namespace A030694.P393790704798367701
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A030693 (Nat.choose (n + 1) n) : ℝ) ^ (1 / (2 : ℝ))

end

end A030694.P393790704798367701

/-! ## A030694.P978921930228848094

`root(A030693(Δ[n²]-n), 2)`
-/

namespace A030694.P978921930228848094
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A030693 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) - (n : ℤ)).toNat : ℝ) ^ (1 / (2 : ℝ))

end

end A030694.P978921930228848094

/-! ## A030694.P12756941474979492376

`A033999(n)²*root(A030693(n+1), 2)`
-/

namespace A030694.P12756941474979492376
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A033999 n ^ 2 : ℝ) * (A030693 (n + 1) : ℝ) ^ (1 / (2 : ℝ))

end

end A030694.P12756941474979492376

/-! ## A030694.P3931293347159730704

`sqrt(A030693(Δ[n²]-n))%A016828(n)`
-/

namespace A030694.P3931293347159730704
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway (Real.sqrt (A030693 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) - (n : ℤ)).toNat : ℝ))) (A016828 n)

end

end A030694.P3931293347159730704

/-! ## A030694.P8035571359501581174

`A020985(n)²*sqrt(A030693(Δ[n²]-n))`
-/

namespace A030694.P8035571359501581174
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A020985 n ^ 2 : ℝ) * Real.sqrt (A030693 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) - (n : ℤ)).toNat : ℝ)

end

end A030694.P8035571359501581174

/-! ## A030694.P1008637851282874103

`root(A030693(n+1), 2)*ceil(1/A000041(n))`
-/

namespace A030694.P1008637851282874103
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A030693 (n + 1) : ℝ) ^ (1 / (2 : ℝ)) * (⌈1 / (A000041 n : ℚ)⌉ : ℝ)

end

end A030694.P1008637851282874103

/-! ## A030694.P12816384638270957467

`sqrt(A030693(Δ[n²]-n))*A000034(2*n)`
-/

namespace A030694.P12816384638270957467
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A030693 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) - (n : ℤ)).toNat : ℝ) * (A000034 (2 * n) : ℝ)

end

end A030694.P12816384638270957467

/-! ## A030694.P11922760006417859063

`sqrt(A030693(Δ[n²]-n))*A057979(2*n)`
-/

namespace A030694.P11922760006417859063
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A030693 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) - (n : ℤ)).toNat : ℝ) * (A057979 (2 * n) : ℝ)

end

end A030694.P11922760006417859063

/-! ## A030694.P10541157966198693879

`sqrt(A030693(Δ[n²]-n))-n*A000007(n)`
-/

namespace A030694.P10541157966198693879
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A030693 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) - (n : ℤ)).toNat : ℝ) - ((n : ℤ) * A000007 n : ℝ)

end

end A030694.P10541157966198693879

/-! ## A030694.P11482543758795019031

`root(A030693(n+1), 2)*A000045(gcd(n, n+1))`
-/

namespace A030694.P11482543758795019031
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A030693 (n + 1) : ℝ) ^ (1 / (2 : ℝ)) * (A000045 (Nat.gcd n (n + 1)) : ℝ)

end

end A030694.P11482543758795019031

/-! ## A030694.P343618848027844205

`root(A030693(n+1), 2)*A000108(ceil(1/(n+1)))`
-/

namespace A030694.P343618848027844205
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A030693 (n + 1) : ℝ) ^ (1 / (2 : ℝ)) * (A000108 ⌈1 / (n + 1 : ℚ)⌉.toNat : ℝ)

end

end A030694.P343618848027844205

/-! ## A030694.P701160229396160512

`sqrt(A030693(Δ[n²]-n))*A000203(((-1)^n)²)`
-/

namespace A030694.P701160229396160512
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A030693 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) - (n : ℤ)).toNat : ℝ) * (A000203 (((-1) ^ n) ^ 2).toNat : ℝ)

end

end A030694.P701160229396160512

/-! ## A030694.P6825743498930935337

`-((n-A008619(2*n))*sqrt(A030693(Δ[n²]-n)))`
-/

namespace A030694.P6825743498930935337
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  -(((n : ℤ) - A008619 (2 * n) : ℝ) * Real.sqrt (A030693 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) - (n : ℤ)).toNat : ℝ))

end

end A030694.P6825743498930935337

/-! ## A030694.P11418998676003943599

`A008683(A014963(n+2))^2*root(A030693(n+1), 2)`
-/

namespace A030694.P11418998676003943599
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A008683 (A014963 (n + 2)).toNat ^ 2 : ℝ) * (A030693 (n + 1) : ℝ) ^ (1 / (2 : ℝ))

end

end A030694.P11418998676003943599

/-!
# A030695: Smallest nontrivial extension of n-th cube which is a cube.

The programs for A030695, there is no canonical definition to state claims against.
-/

/-! ## A030695.P2122309667205921267

`A030696(n+1)^3`
-/

namespace A030695.P2122309667205921267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030696 (n + 1) ^ 3

end

end A030695.P2122309667205921267

/-! ## A030695.P10440338586773799902

`A000578(A030696(n+1))`
-/

namespace A030695.P10440338586773799902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000578 (A030696 (n + 1)).toNat

end

end A030695.P10440338586773799902

/-! ## A030695.P12326920376706786864

`A030668(Δ[∑[n]²])`
-/

namespace A030695.P12326920376706786864
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f2 j) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030668 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A030695.P12326920376706786864

/-! ## A030695.P11083957519810047916

`A030669((n+1)^3)^3`
-/

namespace A030695.P11083957519810047916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030669 ((n + 1) ^ 3) ^ 3

end

end A030695.P11083957519810047916

/-! ## A030695.P5993147569194135276

`A000578(A030669((n+1)^3))`
-/

namespace A030695.P5993147569194135276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000578 (A030669 ((n + 1) ^ 3)).toNat

end

end A030695.P5993147569194135276

/-!
# A030696: Cube root of A030695.

The programs for A030696, there is no canonical definition to state claims against.
-/

/-! ## A030696.P17130704317805741831

`A030695(n+1)^(1/3)`
-/

namespace A030696.P17130704317805741831
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A030695 (n + 1) : ℝ) ^ ((1 : ℚ) / 3 : ℝ)

end

end A030696.P17130704317805741831

/-!
# A030697: Smallest nontrivial extension of n-th cube which is a cube not ending 000.

The programs for A030697, there is no canonical definition to state claims against.
-/

/-! ## A030697.P2574397104012988023

`A030698(n+1)^3`
-/

namespace A030697.P2574397104012988023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030698 (n + 1) ^ 3

end

end A030697.P2574397104012988023

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

/-! ## A030698.P4910935006678927899

`A030697(n+1)^3^or(-1, A000041(n))`
-/

namespace A030698.P4910935006678927899
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A030697 (n + 1) : ℝ) ^ ((3 : ℚ) ^ (Int.lor (-1) (A000041 n) : ℤ) : ℝ)

end

end A030698.P4910935006678927899

/-! ## A030698.P18040276357902002604

`A030697(n+1)^3^A033999(2*n+3)`
-/

namespace A030698.P18040276357902002604
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A030697 (n + 1) : ℝ) ^ ((3 : ℚ) ^ (A033999 (2 * n + 3) : ℤ) : ℝ)

end

end A030698.P18040276357902002604

/-!
# A030699: Maximal value of Q(n,m) (number of partitions of n into m distinct summands) for given n.

The programs for A030699, there is no canonical definition to state claims against.
-/

/-! ## A030699.P8186355609063427497

`A008289(A257639(n+1)+∑[A003056(n)])`
-/

namespace A030699.P8186355609063427497
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008289 (A257639 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A030699.P8186355609063427497

/-! ## A030699.P8990101857462218658

`A008289(A257639(n+1)+A006463(n+1))`
-/

namespace A030699.P8990101857462218658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008289 (A257639 (n + 1) + A006463 (n + 1)).toNat

end

end A030699.P8990101857462218658

/-! ## A030699.P2440739298749056116

`A060016(A257639(n+1)+∑[n])`
-/

namespace A030699.P2440739298749056116
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060016 (A257639 (n + 1) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)).toNat

end

end A030699.P2440739298749056116

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

