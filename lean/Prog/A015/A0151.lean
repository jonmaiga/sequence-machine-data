import SequenceMachineLib
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C003
import Seq.B000.C004
import Seq.B000.C005
import Seq.B000.C006
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
import Seq.B000.C025
import Seq.B000.C029
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C037
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C008
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C004
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B004.C000
import Seq.B004.C001
import Seq.B005.C000
import Seq.B005.C001
import Seq.B005.C002
import Seq.B006.C000
import Seq.B006.C002
import Seq.B007.C000
import Seq.B007.C001
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
# A015100: Carlitz-Riordan q-Catalan numbers (recurrence version) for q=-5.

The programs for A015100, there is no canonical definition to state claims against.
-/

/-! ## A015100.P4442202145416464015

`A290789(eq[4, A212551(n)])`
-/

namespace A015100.P4442202145416464015
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212551 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290789 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A015100.P4442202145416464015

/-! ## A015100.P14756904431047778971

`A290789(eq[5, A025581(n)])`
-/

namespace A015100.P14756904431047778971
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290789 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A015100.P14756904431047778971

/-! ## A015100.P1610120694693934551

`A290789(eq[5, A129713(n)])`
-/

namespace A015100.P1610120694693934551
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129713 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290789 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A015100.P1610120694693934551

/-! ## A015100.P7680663696052508835

`A290789(Δ[A026054(n+3)])`
-/

namespace A015100.P7680663696052508835
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026054 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290789 (f1 (n + 1) - f1 n).toNat

end

end A015100.P7680663696052508835

/-! ## A015100.P14519709762577331940

`A290789(eq[6, A004736(n+1)])`
-/

namespace A015100.P14519709762577331940
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290789 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A015100.P14519709762577331940

/-!
# A015101: Inverse of 1092nd cyclotomic polynomial.

The programs for A015101, there is no canonical definition to state claims against.
-/

/-! ## A015101.P11649147279387926753

`A016193(A022998(n))`
-/

namespace A015101.P11649147279387926753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016193 (A022998 n).toNat

end

end A015101.P11649147279387926753

/-! ## A015101.P10611203704006729597

`A016193(A026185(n))`
-/

namespace A015101.P10611203704006729597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016193 (A026185 n).toNat

end

end A015101.P10611203704006729597

/-! ## A015101.P1222815871034139456

`A016193(A265723(n))`
-/

namespace A015101.P1222815871034139456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016193 (A265723 n).toNat

end

end A015101.P1222815871034139456

/-! ## A015101.P13078764361727863072

`A016193(A266073(n))`
-/

namespace A015101.P13078764361727863072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016193 (A266073 n).toNat

end

end A015101.P13078764361727863072

/-! ## A015101.P18329410920896941566

`A016193(2*n)`
-/

namespace A015101.P18329410920896941566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016193 (2 * n)

end

end A015101.P18329410920896941566

/-! ## A015101.P10871707080909350813

`A015647(A006368(n))`
-/

namespace A015101.P10871707080909350813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015647 (A006368 n).toNat

end

end A015101.P10871707080909350813

/-! ## A015101.P8216717933011971104

`A015647(A007494(n))`
-/

namespace A015101.P8216717933011971104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015647 (A007494 n).toNat

end

end A015101.P8216717933011971104

/-! ## A015101.P13666158185019459141

`A015647(A026430(n))`
-/

namespace A015101.P13666158185019459141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015647 (A026430 n).toNat

end

end A015101.P13666158185019459141

/-! ## A015101.P11093717605276937392

`A015647(A032766(n))`
-/

namespace A015101.P11093717605276937392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015647 (A032766 n).toNat

end

end A015101.P11093717605276937392

/-! ## A015101.P7656178416924567312

`A015647(A074306(n))`
-/

namespace A015101.P7656178416924567312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015647 (A074306 n).toNat

end

end A015101.P7656178416924567312

/-! ## A015101.P17587761073158135642

`A015647(A367806(n))`
-/

namespace A015101.P17587761073158135642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015647 (A367806 n).toNat

end

end A015101.P17587761073158135642

/-! ## A015101.P10246417247455160193

`A015647(A047229(n+1))`
-/

namespace A015101.P10246417247455160193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015647 (A047229 (n + 1)).toNat

end

end A015101.P10246417247455160193

/-! ## A015101.P4023175315907794477

`A015647(A047273(n+1))`
-/

namespace A015101.P4023175315907794477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015647 (A047273 (n + 1)).toNat

end

end A015101.P4023175315907794477

/-!
# A015102: Carlitz-Riordan q-Catalan numbers (recurrence version) for q=-6.

The programs for A015102, there is no canonical definition to state claims against.
-/

/-! ## A015102.P178287554451820048

`A290789(eq[6, A025581(n)])`
-/

namespace A015102.P178287554451820048
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290789 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A015102.P178287554451820048

/-! ## A015102.P6916669369124167523

`A290789(eq[8, A129713(n)])`
-/

namespace A015102.P6916669369124167523
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129713 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290789 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A015102.P6916669369124167523

/-! ## A015102.P13154871806303064618

`A290789(eq[13, A099375(n)])`
-/

namespace A015102.P13154871806303064618
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  13

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099375 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290789 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A015102.P13154871806303064618

/-! ## A015102.P1388990895285177227

`A290789(eq[64, A130321(n)])`
-/

namespace A015102.P1388990895285177227
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  64

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130321 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290789 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A015102.P1388990895285177227

/-! ## A015102.P15864762145931113031

`A290789(eq[7, A004736(n+1)])`
-/

namespace A015102.P15864762145931113031
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290789 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A015102.P15864762145931113031

/-!
# A015103: Carlitz-Riordan q-Catalan numbers (recurrence version) for q=-7.

The programs for A015103, there is no canonical definition to state claims against.
-/

/-! ## A015103.P11676323651343336678

`A290789(eq[7, A025581(n)])`
-/

namespace A015103.P11676323651343336678
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290789 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A015103.P11676323651343336678

/-! ## A015103.P4080678092580069178

`A290789(eq[13, A129713(n)])`
-/

namespace A015103.P4080678092580069178
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  13

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129713 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290789 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A015103.P4080678092580069178

/-! ## A015103.P4967996485473403197

`A290789(eq[15, A099375(n)])`
-/

namespace A015103.P4967996485473403197
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  15

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099375 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290789 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A015103.P4967996485473403197

/-! ## A015103.P9917809471028631392

`A290789(A000217(n+8)-8)`
-/

namespace A015103.P9917809471028631392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290789 (A000217 (n + 8) - 8).toNat

end

end A015103.P9917809471028631392

/-! ## A015103.P6703213240805541591

`A290789(eq[8, A004736(n+1)])`
-/

namespace A015103.P6703213240805541591
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290789 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A015103.P6703213240805541591

/-!
# A015104: Inverse of 1095th cyclotomic polynomial.

The programs for A015104, there is no canonical definition to state claims against.
-/

/-! ## A015104.P14562911468263171146

`∑{e}[A386036(3*n+1), #]*A015254(n)`
-/

namespace A015104.P14562911468263171146
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386036 (3 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p : ℕ) : ℤ) * A015254 n

end

end A015104.P14562911468263171146

/-!
# A015105: Carlitz-Riordan q-Catalan numbers (recurrence version) for q=-8.

The programs for A015105, there is no canonical definition to state claims against.
-/

/-! ## A015105.P1742922769626238145

`A290789(eq[8, A025581(n)])`
-/

namespace A015105.P1742922769626238145
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290789 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A015105.P1742922769626238145

/-! ## A015105.P18097054703451993400

`A290789(eq[21, A129713(n)])`
-/

namespace A015105.P18097054703451993400
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  21

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129713 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290789 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A015105.P18097054703451993400

/-! ## A015105.P7586012981147457987

`A290789(A000217(n+9)-9)`
-/

namespace A015105.P7586012981147457987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290789 (A000217 (n + 9) - 9).toNat

end

end A015105.P7586012981147457987

/-! ## A015105.P1770813897691587910

`A290789(eq[7, A068049(n+1)])`
-/

namespace A015105.P1770813897691587910
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068049 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290789 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A015105.P1770813897691587910

/-! ## A015105.P8555716567157126272

`A290789(eq[9, A004736(n+1)])`
-/

namespace A015105.P8555716567157126272
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290789 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A015105.P8555716567157126272

/-!
# A015109: Triangle of Gaussian (or q-binomial) coefficients for q = -2.

The programs for A015109, there is no canonical definition to state claims against.
-/

/-! ## A015109.P15927430813743510272

`A348691(2*A022168(n))`
-/

namespace A015109.P15927430813743510272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348691 (2 * A022168 n).toNat

end

end A015109.P15927430813743510272

/-! ## A015109.P16563069840317329287

`A348691(lcm(2, A022168(n)))`
-/

namespace A015109.P16563069840317329287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348691 (Int.lcm 2 (A022168 n))

end

end A015109.P16563069840317329287

/-! ## A015109.P13187867681462583811

`A015144(n)%A002189(A015161(n))`
-/

namespace A015109.P13187867681462583811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A015144 n) (A002189 (A015161 n).toNat)

end

end A015109.P13187867681462583811

/-! ## A015109.P7833176398959268695

`A015147(n)%A037926(A015161(n))`
-/

namespace A015109.P7833176398959268695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A015147 n) (A037926 (A015161 n).toNat)

end

end A015109.P7833176398959268695

/-!
# A015110: Triangle of q-binomial coefficients for q=-3.

The programs for A015110, there is no canonical definition to state claims against.
-/

/-! ## A015110.P1941700000590997276

`A355624(A022167(n))`
-/

namespace A015110.P1941700000590997276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355624 (A022167 n).toNat

end

end A015110.P1941700000590997276

/-!
# A015111: Inverse of 1102nd cyclotomic polynomial.

The programs for A015111, there is no canonical definition to state claims against.
-/

/-! ## A015111.P15319945229287834954

`A014560(n)*A033999(n)`
-/

namespace A015111.P15319945229287834954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014560 n * A033999 n

end

end A015111.P15319945229287834954

/-! ## A015111.P2680185920420907228

`A010892(A014560(n)+3*n-1)`
-/

namespace A015111.P2680185920420907228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010892 (A014560 n + ((3 * n : ℤ) - 1)).toNat

end

end A015111.P2680185920420907228

/-! ## A015111.P6164366356288237856

`A010892(3*n+1)*A014560(n)`
-/

namespace A015111.P6164366356288237856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010892 (3 * n + 1) * A014560 n

end

end A015111.P6164366356288237856

/-! ## A015111.P8596664586300571200

`A014560(n)*A014607(A014588(n))`
-/

namespace A015111.P8596664586300571200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014560 n * A014607 (A014588 n).toNat

end

end A015111.P8596664586300571200

/-! ## A015111.P16535236460989138671

`A016213(2*n)`
-/

namespace A015111.P16535236460989138671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016213 (2 * n)

end

end A015111.P16535236460989138671

/-!
# A015112: Triangle of q-binomial coefficients for q=-4.

The programs for A015112, there is no canonical definition to state claims against.
-/

/-! ## A015112.P16635505823997966432

`A065620(A022168(n))`
-/

namespace A015112.P16635505823997966432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065620 (A022168 n).toNat

end

end A015112.P16635505823997966432

/-! ## A015112.P12802070415631300186

`A104895(A022168(n)+2)`
-/

namespace A015112.P12802070415631300186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104895 (A022168 n + 2).toNat

end

end A015112.P12802070415631300186

/-! ## A015112.P2270137969517907996

`A104895(or(2, A022168(n)))`
-/

namespace A015112.P2270137969517907996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104895 (Int.lor 2 (A022168 n)).toNat

end

end A015112.P2270137969517907996

/-! ## A015112.P16933437584788739852

`A104895(xor(2, A022168(n)))`
-/

namespace A015112.P16933437584788739852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104895 (Int.xor 2 (A022168 n)).toNat

end

end A015112.P16933437584788739852

/-! ## A015112.P15499383860915146082

`A185037(n)-A104895(A022168(n))`
-/

namespace A015112.P15499383860915146082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185037 n - A104895 (A022168 n).toNat

end

end A015112.P15499383860915146082

/-!
# A015113: Triangle of q-binomial coefficients for q=-5.

The programs for A015113, there is no canonical definition to state claims against.
-/

/-! ## A015113.P2867209113682408453

`A073792(A022169(n))`
-/

namespace A015113.P2867209113682408453
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073792 (A022169 n).toNat

end

end A015113.P2867209113682408453

/-! ## A015113.P14279180884976709707

`A109040(A176639(n))`
-/

namespace A015113.P14279180884976709707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109040 (A176639 n).toNat

end

end A015113.P14279180884976709707

/-! ## A015113.P10337751259469671918

`A109040(2*A158117(n))`
-/

namespace A015113.P10337751259469671918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109040 (2 * A158117 n).toNat

end

end A015113.P10337751259469671918

/-! ## A015113.P7329738673089101878

`A117000(2*A158117(n))`
-/

namespace A015113.P7329738673089101878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117000 (2 * A158117 n).toNat

end

end A015113.P7329738673089101878

/-! ## A015113.P18433022868366833995

`A061020(5^A101164(n))`
-/

namespace A015113.P18433022868366833995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061020 (SequenceMachineLib.roundAway ((5 : ℚ) ^ (A101164 n : ℤ))).toNat

end

end A015113.P18433022868366833995

/-!
# A015114: Inverse of 1105th cyclotomic polynomial.

The programs for A015114, there is no canonical definition to state claims against.
-/

/-! ## A015114.P12329744496937887321

`A016219(n)*A033999(n)`
-/

namespace A015114.P12329744496937887321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016219 n * A033999 n

end

end A015114.P12329744496937887321

/-!
# A015115: Inverse of 1106th cyclotomic polynomial.

The programs for A015115, there is no canonical definition to state claims against.
-/

/-! ## A015115.P14256896934950866640

`A014562(n)*A033999(n)`
-/

namespace A015115.P14256896934950866640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014562 n * A033999 n

end

end A015115.P14256896934950866640

/-! ## A015115.P4938204231214623927

`A009001(A005843(n))*A014562(n)`
-/

namespace A015115.P4938204231214623927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009001 (A005843 n).toNat * A014562 n

end

end A015115.P4938204231214623927

/-! ## A015115.P16396311388452707152

`A014562(n)*A054354(A054353(n+1))`
-/

namespace A015115.P16396311388452707152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014562 n * A054354 (A054353 (n + 1)).toNat

end

end A015115.P16396311388452707152

/-! ## A015115.P17244436047676293070

`A014560(A055803(n+3))*A014583(n)`
-/

namespace A015115.P17244436047676293070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014560 (A055803 (n + 3)).toNat * A014583 n

end

end A015115.P17244436047676293070

/-! ## A015115.P5702075950435409422

`A015171(n)*A078495(n)`
-/

namespace A015115.P5702075950435409422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015171 n * A078495 n

end

end A015115.P5702075950435409422

/-! ## A015115.P6437095161039174417

`A010815(∑[A002202(n+1)+n-1])`
-/

namespace A015115.P6437095161039174417
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002202 (n + 1) + ((n : ℤ) - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010815 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A015115.P6437095161039174417

/-!
# A015116: Triangle of q-binomial coefficients for q=-6.

The programs for A015116, there is no canonical definition to state claims against.
-/

/-! ## A015116.P4137179227137703040

`A073793(A022170(n))`
-/

namespace A015116.P4137179227137703040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073793 (A022170 n).toNat

end

end A015116.P4137179227137703040

/-! ## A015116.P4209763124034729703

`A349612(7^A007318(n))`
-/

namespace A015116.P4209763124034729703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349612 (SequenceMachineLib.roundAway ((7 : ℚ) ^ (A007318 n : ℤ))).toNat

end

end A015116.P4209763124034729703

/-! ## A015116.P15437072364261381911

`A349612(7^A028657(n))`
-/

namespace A015116.P15437072364261381911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349612 (SequenceMachineLib.roundAway ((7 : ℚ) ^ (A028657 n : ℤ))).toNat

end

end A015116.P15437072364261381911

/-! ## A015116.P8941070126536175561

`A349612(7^A034328(n))`
-/

namespace A015116.P8941070126536175561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349612 (SequenceMachineLib.roundAway ((7 : ℚ) ^ (A034328 n : ℤ))).toNat

end

end A015116.P8941070126536175561

/-! ## A015116.P18325748004305535052

`A349612(7^A034932(n))`
-/

namespace A015116.P18325748004305535052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349612 (SequenceMachineLib.roundAway ((7 : ℚ) ^ (A034932 n : ℤ))).toNat

end

end A015116.P18325748004305535052

/-!
# A015117: Triangle of q-binomial coefficients for q=-7.

The programs for A015117, there is no canonical definition to state claims against.
-/

/-! ## A015117.P8833112748752570119

`A073794(A022171(n))`
-/

namespace A015117.P8833112748752570119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073794 (A022171 n).toNat

end

end A015117.P8833112748752570119

/-! ## A015117.P8994892532916262082

`A109040(A176643(n))`
-/

namespace A015117.P8994892532916262082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109040 (A176643 n).toNat

end

end A015117.P8994892532916262082

/-! ## A015117.P9741761735419934265

`A050457(7^A014473(n))`
-/

namespace A015117.P9741761735419934265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050457 (SequenceMachineLib.roundAway ((7 : ℚ) ^ (A014473 n : ℤ))).toNat

end

end A015117.P9741761735419934265

/-! ## A015117.P10287600998642935940

`A061020(7^A014473(n))`
-/

namespace A015117.P10287600998642935940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061020 (SequenceMachineLib.roundAway ((7 : ℚ) ^ (A014473 n : ℤ))).toNat

end

end A015117.P10287600998642935940

/-! ## A015117.P12944170922370718842

`A014989(A007318(n)^A361948(n))`
-/

namespace A015117.P12944170922370718842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014989 (SequenceMachineLib.roundAway ((A007318 n : ℚ) ^ (A361948 n : ℤ))).toNat

end

end A015117.P12944170922370718842

/-!
# A015118: Triangle of q-binomial coefficients for q=-8.

The programs for A015118, there is no canonical definition to state claims against.
-/

/-! ## A015118.P1626791628367790033

`A065620(A022172(n))`
-/

namespace A015118.P1626791628367790033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065620 (A022172 n).toNat

end

end A015118.P1626791628367790033

/-! ## A015118.P2803220791157331279

`A104895(A022172(n)+2)`
-/

namespace A015118.P2803220791157331279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104895 (A022172 n + 2).toNat

end

end A015118.P2803220791157331279

/-! ## A015118.P134323010358099955

`A104895(or(2, A022172(n)))`
-/

namespace A015118.P134323010358099955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104895 (Int.lor 2 (A022172 n)).toNat

end

end A015118.P134323010358099955

/-! ## A015118.P15886149065216097326

`A104895(xor(2, A022172(n)))`
-/

namespace A015118.P15886149065216097326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104895 (Int.xor 2 (A022172 n)).toNat

end

end A015118.P15886149065216097326

/-! ## A015118.P818737082025647398

`A185037(n)-A104895(A022172(n))`
-/

namespace A015118.P818737082025647398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185037 n - A104895 (A022172 n).toNat

end

end A015118.P818737082025647398

/-!
# A015119: Inverse of 1110th cyclotomic polynomial.

The programs for A015119, there is no canonical definition to state claims against.
-/

/-! ## A015119.P17173978820009807504

`A014564(n)*A033999(n)`
-/

namespace A015119.P17173978820009807504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014564 n * A033999 n

end

end A015119.P17173978820009807504

/-! ## A015119.P2012668803323844321

`A014564(n)/A010892(3*n)`
-/

namespace A015119.P2012668803323844321
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A014564 n : ℚ) / (A010892 (3 * n) : ℚ)

end

end A015119.P2012668803323844321

/-! ## A015119.P561784059111617740

`A010892(A014564(n)+3*n-1)`
-/

namespace A015119.P561784059111617740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010892 (A014564 n + ((3 * n : ℤ) - 1)).toNat

end

end A015119.P561784059111617740

/-! ## A015119.P14987689046999814702

`A010892(3*n+1)*A014564(n)`
-/

namespace A015119.P14987689046999814702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010892 (3 * n + 1) * A014564 n

end

end A015119.P14987689046999814702

/-! ## A015119.P11844887658559112069

`A016229(2*n)`
-/

namespace A015119.P11844887658559112069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016229 (2 * n)

end

end A015119.P11844887658559112069

/-!
# A015120: Inverse of 1111th cyclotomic polynomial.

The programs for A015120, there is no canonical definition to state claims against.
-/

/-! ## A015120.P18245652969735793234

`A009001(2*n)*A016231(n)`
-/

namespace A015120.P18245652969735793234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009001 (2 * n) * A016231 n

end

end A015120.P18245652969735793234

/-! ## A015120.P16264937052740507441

`floor(1/A112348(n))`
-/

namespace A015120.P16264937052740507441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊1 / (A112348 n : ℚ)⌋

end

end A015120.P16264937052740507441

/-! ## A015120.P9636039829047586879

`floor(3/∑[A341021(n)])%2`
-/

namespace A015120.P9636039829047586879
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341021 (n + 20)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ⌊3 / ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ)⌋ 2

end

end A015120.P9636039829047586879

/-! ## A015120.P8420189789268325635

`A086299(n²)*a(n-1)` with `a(0)=1`
-/

namespace A015120.P8420189789268325635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A086299 (n ^ 2) * a (n - 1)

end

end A015120.P8420189789268325635

/-! ## A015120.P8793917500583048897

`A019590(∑[A341022(n)])`
-/

namespace A015120.P8793917500583048897
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341022 (n + 35)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019590 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A015120.P8793917500583048897

/-! ## A015120.P14439624141651581822

`A000007(∑[A179801(n+1)])`
-/

namespace A015120.P14439624141651581822
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179801 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A015120.P14439624141651581822

/-! ## A015120.P5653319230567435314

`floor(A004207(n)/A325676(n))`
-/

namespace A015120.P5653319230567435314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A004207 n : ℚ) / (A325676 n : ℚ)⌋

end

end A015120.P5653319230567435314

/-! ## A015120.P3702028078429742735

`C(A137579(n), ∑[A085863(n)])`
-/

namespace A015120.P3702028078429742735
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085863 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A137579 n).toNat (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A015120.P3702028078429742735

/-! ## A015120.P15763701663724910602

`C(A124763(n+4), A326465(n)²)`
-/

namespace A015120.P15763701663724910602
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A124763 (n + 4)).toNat (A326465 n ^ 2).toNat

end

end A015120.P15763701663724910602

/-! ## A015120.P4428150727490007811

`round(sqrt(A000700(2*n+1)/A088314(n)))`
-/

namespace A015120.P4428150727490007811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt ((A000700 (2 * n + 1) : ℚ) / (A088314 n : ℚ) : ℝ))

end

end A015120.P4428150727490007811

/-! ## A015120.P9526586784507114382

`A008683(A261585(n)^A061901(n))`
-/

namespace A015120.P9526586784507114382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (SequenceMachineLib.roundAway ((A261585 n : ℚ) ^ (A061901 n : ℤ))).toNat

end

end A015120.P9526586784507114382

/-! ## A015120.P764385270585087900

`C(A343378(A135585(n)), A135585(n))`
-/

namespace A015120.P764385270585087900
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A343378 (A135585 n).toNat).toNat (A135585 n).toNat

end

end A015120.P764385270585087900

/-! ## A015120.P3356066307085877667

`A143631((3-A103318(n))*a(n-1))` with `a(0)=1`
-/

namespace A015120.P3356066307085877667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A143631 ((3 - A103318 n) * a (n - 1)).toNat

end

end A015120.P3356066307085877667

/-! ## A015120.P12962653742073971448

`A284619((3-A103318(n))*a(n-1)+1)` with `a(0)=1`
-/

namespace A015120.P12962653742073971448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A284619 ((3 - A103318 n) * a (n - 1) + 1).toNat

end

end A015120.P12962653742073971448

/-!
# A015121: Triangle of q-binomial coefficients for q=-9.

The programs for A015121, there is no canonical definition to state claims against.
-/

/-! ## A015121.P13605757465203501356

`A073796(A022173(n))`
-/

namespace A015121.P13605757465203501356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073796 (A022173 n).toNat

end

end A015121.P13605757465203501356

/-! ## A015121.P2158689490955192148

`A073835(A022175(n))`
-/

namespace A015121.P2158689490955192148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073835 (A022175 n).toNat

end

end A015121.P2158689490955192148

/-! ## A015121.P12236621325660917000

`A002173(A176627(n))`
-/

namespace A015121.P12236621325660917000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002173 (A176627 n).toNat

end

end A015121.P12236621325660917000

/-! ## A015121.P9203153770286912820

`A138810(A176643(n))`
-/

namespace A015121.P9203153770286912820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138810 (A176643 n).toNat

end

end A015121.P9203153770286912820

/-! ## A015121.P1184636188963383125

`A002173(A223202(n+1))`
-/

namespace A015121.P1184636188963383125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002173 (A223202 (n + 1)).toNat

end

end A015121.P1184636188963383125

/-!
# A015122: Inverse of 1113th cyclotomic polynomial.

The programs for A015122, there is no canonical definition to state claims against.
-/

/-! ## A015122.P1695127463257134979

`A009001(2*n)*A016235(n)`
-/

namespace A015122.P1695127463257134979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009001 (2 * n) * A016235 n

end

end A015122.P1695127463257134979

/-! ## A015122.P5870024684335481484

`A014996(A283657(n+1))`
-/

namespace A015122.P5870024684335481484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014996 (A283657 (n + 1)).toNat

end

end A015122.P5870024684335481484

/-! ## A015122.P6618845696739333572

`A003415(A069681(n+1))*A015668(n)`
-/

namespace A015122.P6618845696739333572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 (A069681 (n + 1)).toNat * A015668 n

end

end A015122.P6618845696739333572

/-! ## A015122.P2070557846230380677

`A016202(A171596(n))`
-/

namespace A015122.P2070557846230380677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016202 (A171596 n).toNat

end

end A015122.P2070557846230380677

/-! ## A015122.P6932995022554216230

`A015752(A244511(n+1))`
-/

namespace A015122.P6932995022554216230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015752 (A244511 (n + 1)).toNat

end

end A015122.P6932995022554216230

/-!
# A015123: Triangle of q-binomial coefficients for q=-10.

The programs for A015123, there is no canonical definition to state claims against.
-/

/-! ## A015123.P8111665168032840519

`A073835(A022174(n))`
-/

namespace A015123.P8111665168032840519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073835 (A022174 n).toNat

end

end A015123.P8111665168032840519

/-! ## A015123.P12783219140606438337

`A349612(11^A007318(n))`
-/

namespace A015123.P12783219140606438337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349612 (SequenceMachineLib.roundAway ((11 : ℚ) ^ (A007318 n : ℤ))).toNat

end

end A015123.P12783219140606438337

/-! ## A015123.P8762696280546681525

`A349612(11^A028657(n))`
-/

namespace A015123.P8762696280546681525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349612 (SequenceMachineLib.roundAway ((11 : ℚ) ^ (A028657 n : ℤ))).toNat

end

end A015123.P8762696280546681525

/-! ## A015123.P15425506048926294283

`A349612(11^A034328(n))`
-/

namespace A015123.P15425506048926294283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349612 (SequenceMachineLib.roundAway ((11 : ℚ) ^ (A034328 n : ℤ))).toNat

end

end A015123.P15425506048926294283

/-! ## A015123.P17831371478293701940

`A349612(11^A034932(n))`
-/

namespace A015123.P17831371478293701940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349612 (SequenceMachineLib.roundAway ((11 : ℚ) ^ (A034932 n : ℤ))).toNat

end

end A015123.P17831371478293701940

/-!
# A015124: Triangle of q-binomial coefficients for q=-11.

The programs for A015124, there is no canonical definition to state claims against.
-/

/-! ## A015124.P438080971640103225

`A050457(11^A004247(n))`
-/

namespace A015124.P438080971640103225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050457 (SequenceMachineLib.roundAway ((11 : ℚ) ^ (A004247 n : ℤ))).toNat

end

end A015124.P438080971640103225

/-! ## A015124.P16575330523051957468

`A050457(11^A014473(n))`
-/

namespace A015124.P16575330523051957468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050457 (SequenceMachineLib.roundAway ((11 : ℚ) ^ (A014473 n : ℤ))).toNat

end

end A015124.P16575330523051957468

/-! ## A015124.P10386356242654005862

`A061020(11^A004247(n))`
-/

namespace A015124.P10386356242654005862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061020 (SequenceMachineLib.roundAway ((11 : ℚ) ^ (A004247 n : ℤ))).toNat

end

end A015124.P10386356242654005862

/-! ## A015124.P8036061793467370566

`A061020(11^A014473(n))`
-/

namespace A015124.P8036061793467370566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061020 (SequenceMachineLib.roundAway ((11 : ℚ) ^ (A014473 n : ℤ))).toNat

end

end A015124.P8036061793467370566

/-! ## A015124.P1025562137610845676

`A050457(11^A048720(n))`
-/

namespace A015124.P1025562137610845676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050457 (SequenceMachineLib.roundAway ((11 : ℚ) ^ (A048720 n : ℤ))).toNat

end

end A015124.P1025562137610845676

/-!
# A015125: Triangle of q-binomial coefficients for q=-12.

The programs for A015125, there is no canonical definition to state claims against.
-/

/-! ## A015125.P1584468470034607513

`A014994(A167040(n))`
-/

namespace A015125.P1584468470034607513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014994 (A167040 n).toNat

end

end A015125.P1584468470034607513

/-! ## A015125.P5463415476779591398

`∑{d}[A222144(n+1), A125131(#)]`
-/

namespace A015125.P5463415476779591398
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222144 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A125131 d

end

end A015125.P5463415476779591398

/-! ## A015125.P13337120644863035844

`A014994(A007318(n)^A040739(n))`
-/

namespace A015125.P13337120644863035844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014994 (SequenceMachineLib.roundAway ((A007318 n : ℚ) ^ (A040739 n : ℤ))).toNat

end

end A015125.P13337120644863035844

/-! ## A015125.P14782201136730088576

`A014994(A028657(n)^A040739(n))`
-/

namespace A015125.P14782201136730088576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014994 (SequenceMachineLib.roundAway ((A028657 n : ℚ) ^ (A040739 n : ℤ))).toNat

end

end A015125.P14782201136730088576

/-! ## A015125.P14219464286348732227

`A014994(A034328(n)^A040739(n))`
-/

namespace A015125.P14219464286348732227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014994 (SequenceMachineLib.roundAway ((A034328 n : ℚ) ^ (A040739 n : ℤ))).toNat

end

end A015125.P14219464286348732227

/-!
# A015126: Least k such that phi(k) = phi(n).

The programs for A015126, there is no canonical definition to state claims against.
-/

/-! ## A015126.P2770856254296026837

`A049283((n+1)/∏{p}[n+1, #]*∏{p}[n+1, #-1])`
-/

namespace A015126.P2770856254296026837
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049283 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℚ) * ((∏ p ∈ Nat.primeFactors (f2 n), ((p : ℤ) - 1) : ℤ) : ℚ))).toNat

end

end A015126.P2770856254296026837

/-! ## A015126.P8881358065483392376

`A061026((n+1)/∏{p}[n+1, #]*∏{p}[n+1, #-1])`
-/

namespace A015126.P8881358065483392376
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061026 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℚ) * ((∏ p ∈ Nat.primeFactors (f2 n), ((p : ℤ) - 1) : ℤ) : ℚ))).toNat

end

end A015126.P8881358065483392376

/-! ## A015126.P14167921017434305716

`A049283(Δ[A002088(n)])`
-/

namespace A015126.P14167921017434305716
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002088 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049283 (f1 (n + 1) - f1 n).toNat

end

end A015126.P14167921017434305716

/-! ## A015126.P14681101772748123673

`A049283(Δ[A005728(n)])`
-/

namespace A015126.P14681101772748123673
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005728 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049283 (f1 (n + 1) - f1 n).toNat

end

end A015126.P14681101772748123673

/-! ## A015126.P10674000915017551177

`A061026(Δ[A002088(n)])`
-/

namespace A015126.P10674000915017551177
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002088 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061026 (f1 (n + 1) - f1 n).toNat

end

end A015126.P10674000915017551177

/-! ## A015126.P10718807745040271847

`A049283(A000010(n+1))`
-/

namespace A015126.P10718807745040271847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049283 (A000010 (n + 1)).toNat

end

end A015126.P10718807745040271847

/-! ## A015126.P1150172873509985622

`A049283(A109606(n+1)+1)`
-/

namespace A015126.P1150172873509985622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049283 (A109606 (n + 1) + 1).toNat

end

end A015126.P1150172873509985622

/-! ## A015126.P8029170786207140605

`A061026(A039649(n+1)-1)`
-/

namespace A015126.P8029170786207140605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061026 (A039649 (n + 1) - 1).toNat

end

end A015126.P8029170786207140605

/-! ## A015126.P4463062748484016829

`A061026(n-A219428(n+1))`
-/

namespace A015126.P4463062748484016829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061026 ((n : ℤ) - A219428 (n + 1)).toNat

end

end A015126.P4463062748484016829

/-! ## A015126.P4194405980230346161

`A049283(A319998(2*(n+1))/2)`
-/

namespace A015126.P4194405980230346161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049283 (SequenceMachineLib.roundAway ((A319998 (2 * (n + 1)) : ℚ) / 2)).toNat

end

end A015126.P4194405980230346161

/-! ## A015126.P6430693374965486123

`A061026(1-A051953(n+1)+n)`
-/

namespace A015126.P6430693374965486123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061026 (1 - A051953 (n + 1) + (n : ℤ)).toNat

end

end A015126.P6430693374965486123

/-! ## A015126.P14864926173858556817

`A049283(A002618(n+1)/(n+1))`
-/

namespace A015126.P14864926173858556817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049283 (SequenceMachineLib.roundAway ((A002618 (n + 1) : ℚ) / (n + 1 : ℚ))).toNat

end

end A015126.P14864926173858556817

/-! ## A015126.P783077681524379808

`A061026(A002618(n+1)/(n+1))`
-/

namespace A015126.P783077681524379808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061026 (SequenceMachineLib.roundAway ((A002618 (n + 1) : ℚ) / (n + 1 : ℚ))).toNat

end

end A015126.P783077681524379808

/-! ## A015126.P5922020706848937310

`A061026(A000010(2*n+1-n))`
-/

namespace A015126.P5922020706848937310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061026 (A000010 (2 * n + 1 - n)).toNat

end

end A015126.P5922020706848937310

/-! ## A015126.P8748269656786601587

`A049283(A002088(n+1)-A002088(n))`
-/

namespace A015126.P8748269656786601587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049283 (A002088 (n + 1) - A002088 n).toNat

end

end A015126.P8748269656786601587

/-! ## A015126.P5140489202205144391

`A049283(A005728(n+1)-A005728(n))`
-/

namespace A015126.P5140489202205144391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049283 (A005728 (n + 1) - A005728 n).toNat

end

end A015126.P5140489202205144391

/-! ## A015126.P10508710824761113788

`A061026(A002088(n+1)-A002088(n))`
-/

namespace A015126.P10508710824761113788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061026 (A002088 (n + 1) - A002088 n).toNat

end

end A015126.P10508710824761113788

/-! ## A015126.P9403611041059023804

`A074987(lcm(2, n+1))`
-/

namespace A015126.P9403611041059023804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074987 (Nat.lcm 2 (n + 1))

end

end A015126.P9403611041059023804

/-! ## A015126.P11736531591455840954

`A074987(A109043(n+1))`
-/

namespace A015126.P11736531591455840954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074987 (A109043 (n + 1)).toNat

end

end A015126.P11736531591455840954

/-! ## A015126.P9912803664145666010

`A074987((n+1)*A081373(A074987(n+1)))`
-/

namespace A015126.P9912803664145666010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074987 ((n + 1 : ℤ) * A081373 (A074987 (n + 1)).toNat).toNat

end

end A015126.P9912803664145666010

/-!
# A015127: Inverse of 1118th cyclotomic polynomial.

The programs for A015127, there is no canonical definition to state claims against.
-/

/-! ## A015127.P13881212816810496304

`A014568(n)*A033999(n)`
-/

namespace A015127.P13881212816810496304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014568 n * A033999 n

end

end A015127.P13881212816810496304

/-! ## A015127.P9235607044589889087

`A016245(2*n)`
-/

namespace A015127.P9235607044589889087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016245 (2 * n)

end

end A015127.P9235607044589889087

/-! ## A015127.P3817778237787858907

`A015231(A175427(n+1))`
-/

namespace A015127.P3817778237787858907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015231 (A175427 (n + 1)).toNat

end

end A015127.P3817778237787858907

/-! ## A015127.P5987155025024581340

`A015267(A259624(n+1))`
-/

namespace A015127.P5987155025024581340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015267 (A259624 (n + 1)).toNat

end

end A015127.P5987155025024581340

/-! ## A015127.P6528821851992932365

`A015231(n)*A362113(n)`
-/

namespace A015127.P6528821851992932365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015231 n * A362113 n

end

end A015127.P6528821851992932365

/-!
# A015128: Number of overpartitions of n: an overpartition of n is an ordered sequence of nonincreasing integers that sum to n, where the first occurrence of each integer may be overlined.

The programs for A015128, there is no canonical definition to state claims against.
-/

/-! ## A015128.P4860301813979281977

`abs(A004402(n))`
-/

namespace A015128.P4860301813979281977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A004402 n|

end

end A015128.P4860301813979281977

/-! ## A015128.P12703418233458821598

`∑[A211971(n)]`
-/

namespace A015128.P12703418233458821598
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211971 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A015128.P12703418233458821598

/-! ## A015128.P16599007350633894091

`A230441(n)+A000041(n)`
-/

namespace A015128.P16599007350633894091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230441 n + A000041 n

end

end A015128.P16599007350633894091

/-! ## A015128.P7923727564835309354

`A004402(n)*A033999(n)`
-/

namespace A015128.P7923727564835309354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004402 n * A033999 n

end

end A015128.P7923727564835309354

/-! ## A015128.P9196482635798031386

`gcd(A000038(n), A004402(n))`
-/

namespace A015128.P9196482635798031386
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A004402 n)

end

end A015128.P9196482635798031386

/-! ## A015128.P2801390964585224889

`lcm(A000034(n), A004402(n))`
-/

namespace A015128.P2801390964585224889
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A000034 n) (A004402 n)

end

end A015128.P2801390964585224889

/-! ## A015128.P14589280984270416105

`lcm(-A004402(n), A057077(n))`
-/

namespace A015128.P14589280984270416105
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (-A004402 n) (A057077 n)

end

end A015128.P14589280984270416105

/-! ## A015128.P814461090835544469

`2*A207641(n)-A300415(n)`
-/

namespace A015128.P814461090835544469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A207641 n - A300415 n

end

end A015128.P814461090835544469

/-! ## A015128.P7167109031138850642

`ratio[A057077(n+4)]*A004402(n)`
-/

namespace A015128.P7167109031138850642
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057077 (n + 4)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℚ) / (f1 n : ℚ) * (A004402 n : ℚ)

end

end A015128.P7167109031138850642

/-! ## A015128.P10533391174411338615

`∑[A300415(abs(1-n))+A300415(n)]`
-/

namespace A015128.P10533391174411338615
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300415 |1 - (n : ℤ)|.toNat + A300415 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A015128.P10533391174411338615

/-! ## A015128.P16696027470881065259

`A014968(A004277(n)-n)+A014968(n)`
-/

namespace A015128.P16696027470881065259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014968 (A004277 n - (n : ℤ)).toNat + A014968 n

end

end A015128.P16696027470881065259

/-! ## A015128.P16634730223524415358

`A004402(n)/A080054(n)*A108494(n)`
-/

namespace A015128.P16634730223524415358
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A004402 n : ℚ) / (A080054 n : ℚ) * (A108494 n : ℚ)

end

end A015128.P16634730223524415358

/-! ## A015128.P14285068685082124823

`A207641(n+1)+A207641(n)-A211971(n+1)`
-/

namespace A015128.P14285068685082124823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207641 (n + 1) + (A207641 n - A211971 (n + 1))

end

end A015128.P14285068685082124823

/-! ## A015128.P2915463149965359476

`A309266(n)-a(n-1)` with `a(0)=1`
-/

namespace A015128.P2915463149965359476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A309266 n - a (n - 1)

end

end A015128.P2915463149965359476

/-! ## A015128.P16630316234741032571

`A309266(n+1)-(A207641(n+1)+A207641(n))`
-/

namespace A015128.P16630316234741032571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309266 (n + 1) - (A207641 (n + 1) + A207641 n)

end

end A015128.P16630316234741032571

/-! ## A015128.P7852703379956598703

`A277643(n+1)-(A277643(n)+A211971(n+1))`
-/

namespace A015128.P7852703379956598703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277643 (n + 1) - (A277643 n + A211971 (n + 1))

end

end A015128.P7852703379956598703

/-! ## A015128.P169420670293705675

`A309266(n+1)+A277643(n)-A277643(n+1)`
-/

namespace A015128.P169420670293705675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309266 (n + 1) + (A277643 n - A277643 (n + 1))

end

end A015128.P169420670293705675

/-! ## A015128.P14590388627800071057

`A004402(n)*A057077(2*n)`
-/

namespace A015128.P14590388627800071057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004402 n * A057077 (2 * n)

end

end A015128.P14590388627800071057

/-! ## A015128.P2590724537509167137

`A230441(n)+A304991(n)/A000009(n)`
-/

namespace A015128.P2590724537509167137
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A230441 n : ℚ) + (A304991 n : ℚ) / (A000009 n : ℚ)

end

end A015128.P2590724537509167137

/-! ## A015128.P9505804977436413634

`A004402(n)*A320098(n)/A320968(n)`
-/

namespace A015128.P9505804977436413634
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A004402 n * A320098 n : ℚ) / (A320968 n : ℚ)

end

end A015128.P9505804977436413634

/-!
# A015129: Triangle of (Gaussian) q-binomial coefficients for q = -13.

The programs for A015129, there is no canonical definition to state claims against.
-/

/-! ## A015129.P1694486500923281609

`A015000(A167040(n))`
-/

namespace A015129.P1694486500923281609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015000 (A167040 n).toNat

end

end A015129.P1694486500923281609

/-! ## A015129.P14815104078147849262

`A117000(A222144(n+1))`
-/

namespace A015129.P14815104078147849262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117000 (A222144 (n + 1)).toNat

end

end A015129.P14815104078147849262

/-! ## A015129.P9669313218024211518

`A061020(13^A004247(n))`
-/

namespace A015129.P9669313218024211518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061020 (SequenceMachineLib.roundAway ((13 : ℚ) ^ (A004247 n : ℤ))).toNat

end

end A015129.P9669313218024211518

/-! ## A015129.P15371186900692925492

`A061020(13^A014473(n))`
-/

namespace A015129.P15371186900692925492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061020 (SequenceMachineLib.roundAway ((13 : ℚ) ^ (A014473 n : ℤ))).toNat

end

end A015129.P15371186900692925492

/-! ## A015129.P7756814608662155024

`A061020(13^A048720(n))`
-/

namespace A015129.P7756814608662155024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061020 (SequenceMachineLib.roundAway ((13 : ℚ) ^ (A048720 n : ℤ))).toNat

end

end A015129.P7756814608662155024

/-!
# A015130: Inverse of 1121st cyclotomic polynomial.

The programs for A015130, there is no canonical definition to state claims against.
-/

/-! ## A015130.P16513009953071201141

`A016251(n)*A033999(n)`
-/

namespace A015130.P16513009953071201141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016251 n * A033999 n

end

end A015130.P16513009953071201141

/-! ## A015130.P7202734193836465269

`A242718(A151800(n))`
-/

namespace A015130.P7202734193836465269
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242718 (A151800 n).toNat

end

end A015130.P7202734193836465269

/-! ## A015130.P1052291805200984226

`C(2, A370637(A372512(n)))`
-/

namespace A015130.P1052291805200984226
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 2 (A370637 (A372512 n).toNat).toNat

end

end A015130.P1052291805200984226

/-! ## A015130.P10405596257776149687

`A242718(A013632(n)+n)`
-/

namespace A015130.P10405596257776149687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242718 (A013632 n + (n : ℤ)).toNat

end

end A015130.P10405596257776149687

/-! ## A015130.P3020769345903411934

`A010057(floor(A322855(n)/10))`
-/

namespace A015130.P3020769345903411934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010057 ⌊(A322855 n : ℚ) / 10⌋.toNat

end

end A015130.P3020769345903411934

/-! ## A015130.P2445962933383376961

`A080676(A302568(n+1))%2`
-/

namespace A015130.P2445962933383376961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A080676 (A302568 (n + 1)).toNat) 2

end

end A015130.P2445962933383376961

/-! ## A015130.P2218352725866875116

`A127243(∑[A328981(n+1)]²)`
-/

namespace A015130.P2218352725866875116
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328981 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127243 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2).toNat

end

end A015130.P2218352725866875116

/-! ## A015130.P9836995643712701213

`A121373(∑[A212619(2*(n+2))]²)`
-/

namespace A015130.P9836995643712701213
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212619 (2 * (n + 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121373 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2).toNat

end

end A015130.P9836995643712701213

/-! ## A015130.P11051436599366949055

`A384005(A293405(floor((n+1)/10))+1)`
-/

namespace A015130.P11051436599366949055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A384005 (A293405 ⌊(n + 1 : ℚ) / 10⌋.toNat + 1).toNat

end

end A015130.P11051436599366949055

/-!
# A015131: Inverse of 1122nd cyclotomic polynomial.

The programs for A015131, there is no canonical definition to state claims against.
-/

/-! ## A015131.P18237561947217897725

`A014570(n)*A033999(n)`
-/

namespace A015131.P18237561947217897725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014570 n * A033999 n

end

end A015131.P18237561947217897725

/-!
# A015132: Triangle of (Gaussian) q-binomial coefficients for q=-14.

The programs for A015132, there is no canonical definition to state claims against.
-/

/-! ## A015132.P17944539229631103496

`A268413(A167040(n)-1)`
-/

namespace A015132.P17944539229631103496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268413 (A167040 n - 1).toNat

end

end A015132.P17944539229631103496

/-! ## A015132.P11012628408447016370

`A268413(A004247(n)*A040739(n))`
-/

namespace A015132.P11012628408447016370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268413 (A004247 n * A040739 n).toNat

end

end A015132.P11012628408447016370

/-! ## A015132.P9586490654430773488

`A268413(A014473(n)*A040739(n))`
-/

namespace A015132.P9586490654430773488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268413 (A014473 n * A040739 n).toNat

end

end A015132.P9586490654430773488

/-! ## A015132.P14980755053026992059

`A268413(A040739(n)*A048720(n))`
-/

namespace A015132.P14980755053026992059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268413 (A040739 n * A048720 n).toNat

end

end A015132.P14980755053026992059

/-! ## A015132.P2026164547898881209

`A268413(A040739(n)*A101164(n))`
-/

namespace A015132.P2026164547898881209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268413 (A040739 n * A101164 n).toNat

end

end A015132.P2026164547898881209

/-!
# A015133: Triangle of (Gaussian) q-binomial coefficients for q=-15.

The programs for A015133, there is no canonical definition to state claims against.
-/

/-! ## A015133.P11056577812425120321

`A323834(A032685(n+1)^A251711(n))`
-/

namespace A015133.P11056577812425120321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323834 (SequenceMachineLib.roundAway ((A032685 (n + 1) : ℚ) ^ (A251711 n : ℤ))).toNat

end

end A015133.P11056577812425120321

/-!
# A015134: Consider Fibonacci-type sequences b(0)=X, b(1)=Y, b(k)=b(k-1)+b(k-2) mod n; all are periodic; sequence gives number of distinct periods.

The programs for A015134, there is no canonical definition to state claims against.
-/

/-! ## A015134.P8654809562444031488

`∑{d}[n+1, A365519(#)]`
-/

namespace A015134.P8654809562444031488
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A365519 d

end

end A015134.P8654809562444031488

/-! ## A015134.P13484939387402916235

`Δ[eq[0, A179392(n+1)]]`
-/

namespace A015134.P13484939387402916235
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179392 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A015134.P13484939387402916235

/-! ## A015134.P14121485422006792003

`A028310(Δ[lt[A179392(n+1), 1]])`
-/

namespace A015134.P14121485422006792003
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179392 (n + 1)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < (f3 j : ℤ)) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A015134.P14121485422006792003

/-! ## A015134.P3534708730564316165

`Δ[lt[A179392(n+1), A288120(n)]]`
-/

namespace A015134.P3534708730564316165
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179392 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288120 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < f3 j) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A015134.P3534708730564316165

/-! ## A015134.P8731265670381125156

`Δ[record[n*A108563(A179392(n+1)²)]]`
-/

namespace A015134.P8731265670381125156
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A108563 (A179392 (n + 1) ^ 2).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A015134.P8731265670381125156

/-!
# A015135: Consider Fibonacci-type sequences f(0)=X, f(1)=Y, f(k)=f(k-1)+f(k-2) mod n; all are periodic; sequence gives number of distinct periods.

The programs for A015135, there is no canonical definition to state claims against.
-/

/-! ## A015135.P17279573022848900453

`A316557((n+1)*A036570(n+1))`
-/

namespace A015135.P17279573022848900453
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316557 ((n + 1 : ℤ) * A036570 (n + 1)).toNat

end

end A015135.P17279573022848900453

/-! ## A015135.P5585391529378483832

`A327527(n+1)+A083890(A282655(n))`
-/

namespace A015135.P5585391529378483832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327527 (n + 1) + A083890 (A282655 n).toNat

end

end A015135.P5585391529378483832

/-! ## A015135.P6918543836323441706

`A000120(A247278(2*(n+3))*A300841(n+1))`
-/

namespace A015135.P6918543836323441706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A247278 (2 * (n + 3)) * A300841 (n + 1)).toNat

end

end A015135.P6918543836323441706

/-! ## A015135.P14249155197789897251

`A215884(A176463(3*n+5))+A046051(n+1)`
-/

namespace A015135.P14249155197789897251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215884 (A176463 (3 * n + 5)).toNat + A046051 (n + 1)

end

end A015135.P14249155197789897251

/-!
# A015137: Consider Fibonacci-type sequences b(0)=X, b(1)=Y, b(k)=b(k-1)+b(k-2) mod n; all are periodic; sequence gives number of nontrivial periods of minimal length.

The programs for A015137, there is no canonical definition to state claims against.
-/

/-! ## A015137.P5046825710428258774

`gcd(n, A070939(A247310(2*(n+2))))`
-/

namespace A015137.P5046825710428258774
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n : ℤ) (A070939 (A247310 (2 * (n + 2))).toNat)

end

end A015137.P5046825710428258774

/-! ## A015137.P1236107931054335329

`gcd(A000982(n), A087735(A078812(n)))`
-/

namespace A015137.P1236107931054335329
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000982 n) (A087735 (A078812 n).toNat)

end

end A015137.P1236107931054335329

/-! ## A015137.P18418271901855677885

`gcd(n, A000608(A091594(n)))`
-/

namespace A015137.P18418271901855677885
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n : ℤ) (A000608 (A091594 n).toNat)

end

end A015137.P18418271901855677885

/-! ## A015137.P18033890160007143263

`gcd(A030104(n), A109152(A114164(n)))`
-/

namespace A015137.P18033890160007143263
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A030104 n) (A109152 (A114164 n).toNat)

end

end A015137.P18033890160007143263

/-! ## A015137.P16098403707970524001

`A048766(A064189(A055396(n+1)²))`
-/

namespace A015137.P16098403707970524001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048766 (A064189 (A055396 (n + 1) ^ 2).toNat).toNat

end

end A015137.P16098403707970524001

/-!
# A015138: Consider Fibonacci-type sequences b(0)=X, b(1)=Y, b(k)=b(k-1)+b(k-2) mod n; all are periodic; sequence gives number of maximal length periods.

The programs for A015138, there is no canonical definition to state claims against.
-/

/-! ## A015138.P9155594286858685337

`or(A331902(A109975(n)), A344180(n))`
-/

namespace A015138.P9155594286858685337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A331902 (A109975 n).toNat) (A344180 n)

end

end A015138.P9155594286858685337

/-! ## A015138.P17680298306029123796

`A344180(n)+A331902(A109975(n)-1)`
-/

namespace A015138.P17680298306029123796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344180 n + A331902 (A109975 n - 1).toNat

end

end A015138.P17680298306029123796

/-!
# A015139: Triangle of (Gaussian) q-binomial coefficients for q=-16.

The programs for A015139, there is no canonical definition to state claims against.
-/

/-! ## A015139.P9735063469937508387

`A065620(A022180(n))`
-/

namespace A015139.P9735063469937508387
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065620 (A022180 n).toNat

end

end A015139.P9735063469937508387

/-! ## A015139.P17690332165344745502

`A104895(A022180(n)+2)`
-/

namespace A015139.P17690332165344745502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104895 (A022180 n + 2).toNat

end

end A015139.P17690332165344745502

/-! ## A015139.P9303912912423803480

`A104895(or(2, A022180(n)))`
-/

namespace A015139.P9303912912423803480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104895 (Int.lor 2 (A022180 n)).toNat

end

end A015139.P9303912912423803480

/-! ## A015139.P6324745369058276761

`A104895(xor(2, A022180(n)))`
-/

namespace A015139.P6324745369058276761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104895 (Int.xor 2 (A022180 n)).toNat

end

end A015139.P6324745369058276761

/-! ## A015139.P5153476758691587563

`∑{d}[A156581(n), A125131(#)]`
-/

namespace A015139.P5153476758691587563
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A125131 d

end

end A015139.P5153476758691587563

/-!
# A015140: Inverse of 1131st cyclotomic polynomial.

The programs for A015140, there is no canonical definition to state claims against.
-/

/-! ## A015140.P10029295017962113809

`A016271(n)*A033999(n)`
-/

namespace A015140.P10029295017962113809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016271 n * A033999 n

end

end A015140.P10029295017962113809

/-! ## A015140.P1489670404714225243

`A016076(n)/A087436(A215421(n+1))`
-/

namespace A015140.P1489670404714225243
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016076 n : ℚ) / (A087436 (A215421 (n + 1)).toNat : ℚ)

end

end A015140.P1489670404714225243

/-! ## A015140.P16407482154215249225

`A015218(n)%A139092(n+4)`
-/

namespace A015140.P16407482154215249225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A015218 n) (A139092 (n + 4))

end

end A015140.P16407482154215249225

/-! ## A015140.P10928444739231475865

`A015452(n)%A139092(n+4)`
-/

namespace A015140.P10928444739231475865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A015452 n) (A139092 (n + 4))

end

end A015140.P10928444739231475865

/-! ## A015140.P2122010870979389539

`A015608(n)%A139092(n+4)`
-/

namespace A015140.P2122010870979389539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A015608 n) (A139092 (n + 4))

end

end A015140.P2122010870979389539

/-!
# A015141: Triangle of (Gaussian) q-binomial coefficients for q=-17.

The programs for A015141, there is no canonical definition to state claims against.
-/

/-! ## A015141.P9286182152816276535

`A061020(A156581(n))`
-/

namespace A015141.P9286182152816276535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061020 (A156581 n).toNat

end

end A015141.P9286182152816276535

/-! ## A015141.P9201361121610363893

`A109040(2*A156581(n))`
-/

namespace A015141.P9201361121610363893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109040 (2 * A156581 n).toNat

end

end A015141.P9201361121610363893

/-! ## A015141.P15231325339076199007

`A109040(lcm(2, A156581(n)))`
-/

namespace A015141.P15231325339076199007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109040 (Int.lcm 2 (A156581 n))

end

end A015141.P15231325339076199007

/-! ## A015141.P7886974673568033083

`A109040(or(1, A156581(n)))`
-/

namespace A015141.P7886974673568033083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109040 (Int.lor 1 (A156581 n)).toNat

end

end A015141.P7886974673568033083

/-! ## A015141.P15254851039733133147

`A109091(or(1, A156581(n)))`
-/

namespace A015141.P15254851039733133147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109091 (Int.lor 1 (A156581 n)).toNat

end

end A015141.P15254851039733133147

/-!
# A015142: Inverse of 1133rd cyclotomic polynomial.

The programs for A015142, there is no canonical definition to state claims against.
-/

/-! ## A015142.P11113685649045908755

`(A004442(n)-n)*A016275(n)`
-/

namespace A015142.P11113685649045908755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A004442 n - (n : ℤ)) * A016275 n

end

end A015142.P11113685649045908755

/-! ## A015142.P5477632475626057162

`floor(1/(n+1))^A309439(n)`
-/

namespace A015142.P5477632475626057162
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (⌊1 / (n + 1 : ℚ)⌋ : ℚ) ^ (A309439 n : ℤ)

end

end A015142.P5477632475626057162

/-! ## A015142.P5870551381447842463

`and(1, A034188(A128508(n)))`
-/

namespace A015142.P5870551381447842463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A034188 (A128508 n).toNat)

end

end A015142.P5870551381447842463

/-! ## A015142.P4155360354790320846

`∏{p}[A326524(n), A373976(#)]`
-/

namespace A015142.P4155360354790320846
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326524 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A373976 p

end

end A015142.P4155360354790320846

/-! ## A015142.P433271822790976834

`C(2, A268395(A248782(n+1)))`
-/

namespace A015142.P433271822790976834
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 2 (A268395 (A248782 (n + 1)).toNat).toNat

end

end A015142.P433271822790976834

/-! ## A015142.P14427828073823378186

`C(A124768(n+2), ∑[A294889(2*(n+1))])`
-/

namespace A015142.P14427828073823378186
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294889 (2 * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A124768 (n + 2)).toNat (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A015142.P14427828073823378186

/-! ## A015142.P4944020771954183512

`C(A115382(A246162(n+1)), A135585(n))`
-/

namespace A015142.P4944020771954183512
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A115382 (A246162 (n + 1)).toNat).toNat (A135585 n).toNat

end

end A015142.P4944020771954183512

/-! ## A015142.P12373369419117058019

`C(n, comp[A238795(2*n+5)])`
-/

namespace A015142.P12373369419117058019
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238795 (2 * n + 5)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A015142.P12373369419117058019

/-!
# A015143: Triangle of (Gaussian) q-binomial coefficients for q=-18.

The programs for A015143, there is no canonical definition to state claims against.
-/

/-! ## A015143.P2768920640867826772

`A073796(A022182(n))`
-/

namespace A015143.P2768920640867826772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073796 (A022182 n).toNat

end

end A015143.P2768920640867826772

/-! ## A015143.P9622095665722044213

`A349612(19^A349593(n))`
-/

namespace A015143.P9622095665722044213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349612 (SequenceMachineLib.roundAway ((19 : ℚ) ^ (A349593 n : ℤ))).toNat

end

end A015143.P9622095665722044213

/-!
# A015144: Triangle of (Gaussian) q-binomial coefficients for q=-19.

The programs for A015144, there is no canonical definition to state claims against.
-/

/-! ## A015144.P3684780916789730878

`A050457(19^A004247(n))`
-/

namespace A015144.P3684780916789730878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050457 (SequenceMachineLib.roundAway ((19 : ℚ) ^ (A004247 n : ℤ))).toNat

end

end A015144.P3684780916789730878

/-! ## A015144.P3862850153402076011

`A050457(19^A014473(n))`
-/

namespace A015144.P3862850153402076011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050457 (SequenceMachineLib.roundAway ((19 : ℚ) ^ (A014473 n : ℤ))).toNat

end

end A015144.P3862850153402076011

/-! ## A015144.P14531900610661228572

`A061020(19^A004247(n))`
-/

namespace A015144.P14531900610661228572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061020 (SequenceMachineLib.roundAway ((19 : ℚ) ^ (A004247 n : ℤ))).toNat

end

end A015144.P14531900610661228572

/-! ## A015144.P7585186067793056749

`A061020(19^A014473(n))`
-/

namespace A015144.P7585186067793056749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061020 (SequenceMachineLib.roundAway ((19 : ℚ) ^ (A014473 n : ℤ))).toNat

end

end A015144.P7585186067793056749

/-! ## A015144.P8591088753679036162

`A050457(19^A048720(n))`
-/

namespace A015144.P8591088753679036162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050457 (SequenceMachineLib.roundAway ((19 : ℚ) ^ (A048720 n : ℤ))).toNat

end

end A015144.P8591088753679036162

/-!
# A015145: Triangle of (Gaussian) q-binomial coefficients for q=-20.

The programs for A015145, there is no canonical definition to state claims against.
-/

/-! ## A015145.P11027323648843485093

`A073835(A022184(n))`
-/

namespace A015145.P11027323648843485093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073835 (A022184 n).toNat

end

end A015145.P11027323648843485093

/-!
# A015147: Triangle of (Gaussian) q-binomial coefficients for q=-22.

The programs for A015147, there is no canonical definition to state claims against.
-/

/-! ## A015147.P6236658613634899163

`A349612(23^A073165(n))`
-/

namespace A015147.P6236658613634899163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349612 (SequenceMachineLib.roundAway ((23 : ℚ) ^ (A073165 n : ℤ))).toNat

end

end A015147.P6236658613634899163

/-! ## A015147.P10562418572520969244

`A349612(23^A349593(n))`
-/

namespace A015147.P10562418572520969244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349612 (SequenceMachineLib.roundAway ((23 : ℚ) ^ (A349593 n : ℤ))).toNat

end

end A015147.P10562418572520969244

/-!
# A015148: Inverse of 1139th cyclotomic polynomial.

The programs for A015148, there is no canonical definition to state claims against.
-/

/-! ## A015148.P10074302395288837734

`A016287(n)/A087960(2*n)`
-/

namespace A015148.P10074302395288837734
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016287 n : ℚ) / (A087960 (2 * n) : ℚ)

end

end A015148.P10074302395288837734

/-!
# A015149: Inverse of 1140th cyclotomic polynomial.

The programs for A015149, there is no canonical definition to state claims against.
-/

/-! ## A015149.P1551848562432723507

`A016289(A022998(n))`
-/

namespace A015149.P1551848562432723507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016289 (A022998 n).toNat

end

end A015149.P1551848562432723507

/-!
# A015152: Sum of (Gaussian) q-binomial coefficients for q=-2.

The programs for A015152, there is no canonical definition to state claims against.
-/

/-! ## A015152.P9359015110711583607

`A282510(A243054(n))`
-/

namespace A015152.P9359015110711583607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282510 (A243054 n).toNat

end

end A015152.P9359015110711583607

/-! ## A015152.P7342720360109883086

`A071622(∑[A059294(n)²])`
-/

namespace A015152.P7342720360109883086
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059294 n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071622 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A015152.P7342720360109883086

/-!
# A015153: Inverse of 1144th cyclotomic polynomial.

The programs for A015153, there is no canonical definition to state claims against.
-/

/-! ## A015153.P2736792608606665100

`A014581(n/gcd(2, n))`
-/

namespace A015153.P2736792608606665100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014581 (SequenceMachineLib.roundAway ((n : ℚ) / (Nat.gcd 2 n : ℚ))).toNat

end

end A015153.P2736792608606665100

/-! ## A015153.P15518729999682041292

`A014581(A004525(n))`
-/

namespace A015153.P15518729999682041292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014581 (A004525 n).toNat

end

end A015153.P15518729999682041292

/-! ## A015153.P17027862204597381422

`A014581(A026741(n))`
-/

namespace A015153.P17027862204597381422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014581 (A026741 n).toNat

end

end A015153.P17027862204597381422

/-! ## A015153.P12131298710655524427

`A014581(A057979(n+1))`
-/

namespace A015153.P12131298710655524427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014581 (A057979 (n + 1)).toNat

end

end A015153.P12131298710655524427

/-! ## A015153.P13438899426219221797

`A014581(A116921(n+1))`
-/

namespace A015153.P13438899426219221797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014581 (A116921 (n + 1)).toNat

end

end A015153.P13438899426219221797

/-!
# A015154: Sum of (Gaussian) q-binomial coefficients for q=-3.

The programs for A015154, there is no canonical definition to state claims against.
-/

/-! ## A015154.P9875173454559583520

`and(A000203(A206296(n)), A134086(n))`
-/

namespace A015154.P9875173454559583520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A000203 (A206296 n).toNat) (A134086 n)

end

end A015154.P9875173454559583520

/-! ## A015154.P17624708382126985436

`and(A101406(A006318(n)), A153467(n+1))`
-/

namespace A015154.P17624708382126985436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A101406 (A006318 n).toNat) (A153467 (n + 1))

end

end A015154.P17624708382126985436

/-!
# A015155: Sum of (Gaussian) q-binomial coefficients for q=-4.

The programs for A015155, there is no canonical definition to state claims against.
-/

/-! ## A015155.P7653822441155206038

`A048138(A358498(n+3))-n`
-/

namespace A015155.P7653822441155206038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048138 (A358498 (n + 3)).toNat - (n : ℤ)

end

end A015155.P7653822441155206038

/-!
# A015156: Inverse of 1147th cyclotomic polynomial.

The programs for A015156, there is no canonical definition to state claims against.
-/

/-! ## A015156.P9153968709249360806

`A016303(n)*A033999(n)`
-/

namespace A015156.P9153968709249360806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016303 n * A033999 n

end

end A015156.P9153968709249360806

/-! ## A015156.P14853070188819301037

`A015600(A328594(n+1)-A337546(n+1))`
-/

namespace A015156.P14853070188819301037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015600 (A328594 (n + 1) - A337546 (n + 1)).toNat

end

end A015156.P14853070188819301037

/-! ## A015156.P17172003436603189774

`A015936(A335433(n+1))`
-/

namespace A015156.P17172003436603189774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015936 (A335433 (n + 1)).toNat

end

end A015156.P17172003436603189774

/-! ## A015156.P14873250542744911084

`A015600(A331995(n+1)+2)`
-/

namespace A015156.P14873250542744911084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015600 (A331995 (n + 1) + 2).toNat

end

end A015156.P14873250542744911084

/-! ## A015156.P4855341776084870339

`A015936(A381432(n+1)+A040001(n+1))`
-/

namespace A015156.P4855341776084870339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015936 (A381432 (n + 1) + A040001 (n + 1)).toNat

end

end A015156.P4855341776084870339

/-! ## A015156.P11483446318554435917

`A015600(A328594(n+2)-A124765(n+4))`
-/

namespace A015156.P11483446318554435917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015600 (A328594 (n + 2) - A124765 (n + 4)).toNat

end

end A015156.P11483446318554435917

/-! ## A015156.P12509916213648615036

`A015936(A381432(n+1)+A066099(3*(n+1)))`
-/

namespace A015156.P12509916213648615036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015936 (A381432 (n + 1) + A066099 (3 * (n + 1))).toNat

end

end A015156.P12509916213648615036

/-! ## A015156.P7180554115649479270

`A015936((comp[A177763(n+1)-1]+1)%A325131(n+1))`
-/

namespace A015156.P7180554115649479270
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177763 (n + 1) - 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015936 (Int.tmod (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1 : ℤ) (A325131 (n + 1))).toNat

end

end A015156.P7180554115649479270

/-! ## A015156.P15057350177378023496

`A015936(A101358(n))`
-/

namespace A015156.P15057350177378023496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015936 (A101358 n).toNat

end

end A015156.P15057350177378023496

/-! ## A015156.P7614534966375624334

`A015936(A179439(n+1)%A360006(n+1))`
-/

namespace A015156.P7614534966375624334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015936 (Int.tmod (A179439 (n + 1)) (A360006 (n + 1))).toNat

end

end A015156.P7614534966375624334

/-!
# A015157: Inverse of 1148th cyclotomic polynomial.

The programs for A015157, there is no canonical definition to state claims against.
-/

/-! ## A015157.P2688769937060607378

`A015213(lt[A057355(n), A059890(3*n+5)])`
-/

namespace A015157.P2688769937060607378
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057355 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059890 (3 * n + 5)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015213 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A015157.P2688769937060607378

/-! ## A015157.P17993823331935926672

`A121373((n+1)*A292665(n+1))`
-/

namespace A015157.P17993823331935926672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121373 ((n + 1 : ℤ) * A292665 (n + 1)).toNat

end

end A015157.P17993823331935926672

/-! ## A015157.P1059274399645355332

`A015493(lt[A354578(n), 4])`
-/

namespace A015157.P1059274399645355332
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354578 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015493 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A015157.P1059274399645355332

/-! ## A015157.P15686500641575668583

`A056594(A246075(n+1)-1)`
-/

namespace A015157.P15686500641575668583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056594 (A246075 (n + 1) - 1).toNat

end

end A015157.P15686500641575668583

/-! ## A015157.P6567882107381611725

`A015885(A326458(n)+n)`
-/

namespace A015157.P6567882107381611725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015885 (A326458 n + (n : ℤ)).toNat

end

end A015157.P6567882107381611725

/-! ## A015157.P15200590432436249945

`A015213(n)*A304327(A125172(n+1))`
-/

namespace A015157.P15200590432436249945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015213 n * A304327 (A125172 (n + 1)).toNat

end

end A015157.P15200590432436249945

/-! ## A015157.P13246912986631286903

`A015493(n)*A304327(A125172(n+1))`
-/

namespace A015157.P13246912986631286903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015493 n * A304327 (A125172 (n + 1)).toNat

end

end A015157.P13246912986631286903

/-! ## A015157.P9627028382919225440

`A121373(A004526(3*n+2)*A398164(n+1))`
-/

namespace A015157.P9627028382919225440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121373 (A004526 (3 * n + 2) * A398164 (n + 1)).toNat

end

end A015157.P9627028382919225440

/-! ## A015157.P8896749405991852148

`A015493(A038510(3*n+4))+A015493(n)`
-/

namespace A015157.P8896749405991852148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015493 (A038510 (3 * n + 4)).toNat + A015493 n

end

end A015157.P8896749405991852148

/-!
# A015158: Theta series of 17-dimensional lattice Q_17(6).

The programs for A015158, there is no canonical definition to state claims against.
-/

/-! ## A015158.P709451930641670730

`A015160(3*n)`
-/

namespace A015158.P709451930641670730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015160 (3 * n)

end

end A015158.P709451930641670730

/-! ## A015158.P3344193799593765789

`A015160(A008585(n))+char[20]`
-/

namespace A015158.P3344193799593765789
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  20

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015160 (A008585 n).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A015158.P3344193799593765789

/-! ## A015158.P18146498616067107910

`A015160(A008486(n))+A000007(n)`
-/

namespace A015158.P18146498616067107910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015160 (A008486 n).toNat + A000007 n

end

end A015158.P18146498616067107910

/-! ## A015158.P9932956492720774677

`gcd(A000038(n), A015160(A008585(n)))`
-/

namespace A015158.P9932956492720774677
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A015160 (A008585 n).toNat)

end

end A015158.P9932956492720774677

/-! ## A015158.P5539505190803812623

`lcm(A001221(n+2), A015160(A008585(n)))`
-/

namespace A015158.P5539505190803812623
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A001221 (n + 2)) (A015160 (A008585 n).toNat)

end

end A015158.P5539505190803812623

/-!
# A015159: Theta series of 17-dimensional lattice Q_17(6)^{+2}.

The programs for A015159, there is no canonical definition to state claims against.
-/

/-! ## A015159.P4781767582255472923

`A015161(A112652(n))`
-/

namespace A015159.P4781767582255472923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015161 (A112652 n).toNat

end

end A015159.P4781767582255472923

/-! ## A015159.P14934135061164333645

`A015161(A106618(3*n))`
-/

namespace A015159.P14934135061164333645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015161 (A106618 (3 * n)).toNat

end

end A015159.P14934135061164333645

/-! ## A015159.P10539528324184341740

`A015161(and(-3, A008585(n)))`
-/

namespace A015159.P10539528324184341740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015161 (Int.land (-3) (A008585 n)).toNat

end

end A015159.P10539528324184341740

/-! ## A015159.P17284424882607329011

`A015161(4*n-A071669(n))`
-/

namespace A015159.P17284424882607329011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015161 ((4 * n : ℤ) - A071669 n).toNat

end

end A015159.P17284424882607329011

/-! ## A015159.P9567774386996090068

`A015161(A106618(n)+n+n)`
-/

namespace A015159.P9567774386996090068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015161 (A106618 n + (n : ℤ) + (n : ℤ)).toNat

end

end A015159.P9567774386996090068

/-!
# A015160: Theta series of 17-dimensional lattice Q_17(6)^{+3}.

The programs for A015160, there is no canonical definition to state claims against.
-/

/-! ## A015160.P8097337953347883249

`A015161(4*n)`
-/

namespace A015160.P8097337953347883249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015161 (4 * n)

end

end A015160.P8097337953347883249

/-! ## A015160.P7746504817616679805

`A015161(A008586(n))+char[31]`
-/

namespace A015160.P7746504817616679805
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  31

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015161 (A008586 n).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A015160.P7746504817616679805

/-! ## A015160.P12779407794973918616

`floor(A015161(A008574(n))+acot(n))`
-/

namespace A015160.P12779407794973918616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A015161 (A008574 n).toNat : ℝ) + SequenceMachineLib.acot (n : ℝ)⌋

end

end A015160.P12779407794973918616

/-! ## A015160.P9177864034441750179

`A015161(A008574(n))+A000007(n)`
-/

namespace A015160.P9177864034441750179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015161 (A008574 n).toNat + A000007 n

end

end A015160.P9177864034441750179

/-! ## A015160.P2852635858170432321

`A355480(n)+A015161(A008586(n))`
-/

namespace A015160.P2852635858170432321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355480 n + A015161 (A008586 n).toNat

end

end A015160.P2852635858170432321

/-!
# A015161: Theta series of 17-dimensional lattice Q_17(6)^{+6}.

The programs for A015161, there is no canonical definition to state claims against.
-/

/-! ## A015161.P18333294216923388483

`C(A117937(n+1), ∑[∑{d}[n, #]]+1)`
-/

namespace A015161.P18333294216923388483
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n), d

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A117937 (n + 1)).toNat (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A015161.P18333294216923388483

/-! ## A015161.P15146928653298072580

`C(A211178(n+1), ∑[∑{d}[n, #]]+1)`
-/

namespace A015161.P15146928653298072580
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n), d

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A211178 (n + 1)).toNat (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A015161.P15146928653298072580

/-! ## A015161.P16231610231808062101

`(n-2)*and(n-1, A000032(a(n-1))²²)` with `a(0)=1`
-/

namespace A015161.P16231610231808062101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ((n : ℤ) - 2) * Int.land ((n : ℤ) - 1) ((A000032 (a (n - 1)).toNat ^ 2) ^ 2)

end

end A015161.P16231610231808062101

/-! ## A015161.P12401331096268341985

`A089804(A190591(n))`
-/

namespace A015161.P12401331096268341985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089804 (A190591 n).toNat

end

end A015161.P12401331096268341985

/-! ## A015161.P1946379105167581167

`A300717(A007574(n+1))`
-/

namespace A015161.P1946379105167581167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300717 (A007574 (n + 1)).toNat

end

end A015161.P1946379105167581167

/-!
# A015162: Theta series of 17-dimensional lattice Q'_17(6).

The programs for A015162, there is no canonical definition to state claims against.
-/

/-! ## A015162.P3372613939712931090

`A015164(3*n)`
-/

namespace A015162.P3372613939712931090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015164 (3 * n)

end

end A015162.P3372613939712931090

/-! ## A015162.P13247488998809143844

`A015164(A008585(n))+char[20]`
-/

namespace A015162.P13247488998809143844
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  20

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015164 (A008585 n).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A015162.P13247488998809143844

/-! ## A015162.P1117168600771258521

`A015164(A008486(n))^ceil(n/39)`
-/

namespace A015162.P1117168600771258521
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A015164 (A008486 n).toNat : ℚ) ^ (⌈(n : ℚ) / 39⌉ : ℤ)

end

end A015162.P1117168600771258521

/-! ## A015162.P12770301465526571856

`A015164(A008486(n))+A015161(n)`
-/

namespace A015162.P12770301465526571856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015164 (A008486 n).toNat + A015161 n

end

end A015162.P12770301465526571856

/-! ## A015162.P14133262463888336551

`A015164(A008585(n))%A017491(n)`
-/

namespace A015162.P14133262463888336551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A015164 (A008585 n).toNat) (A017491 n)

end

end A015162.P14133262463888336551

/-!
# A015163: Theta series of 17-dimensional lattice Q'_17(6)^{+2}.

The programs for A015163, there is no canonical definition to state claims against.
-/

/-! ## A015163.P5715443724064291223

`A015165(3*n)`
-/

namespace A015163.P5715443724064291223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015165 (3 * n)

end

end A015163.P5715443724064291223

/-! ## A015163.P3466036458687981388

`A015165(A008585(n))+char[32]`
-/

namespace A015163.P3466036458687981388
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  32

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015165 (A008585 n).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A015163.P3466036458687981388

/-! ## A015163.P1295243389863205677

`A015165(A008486(n))+A000007(n)`
-/

namespace A015163.P1295243389863205677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015165 (A008486 n).toNat + A000007 n

end

end A015163.P1295243389863205677

/-! ## A015163.P16368863727463481784

`A015165(A008585(n))/A007318(∑[n])`
-/

namespace A015163.P16368863727463481784
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A015165 (A008585 n).toNat : ℚ) / (A007318 (∑ j ∈ Finset.range (n + 1), f1 j) : ℚ)

end

end A015163.P16368863727463481784

/-!
# A015164: Theta series of 17-dimensional lattice Q'_17(6)^{+3}.

The programs for A015164, there is no canonical definition to state claims against.
-/

/-! ## A015164.P14808378232074082867

`A015165(2*n)`
-/

namespace A015164.P14808378232074082867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015165 (2 * n)

end

end A015164.P14808378232074082867

/-! ## A015164.P3914263682966153652

`A015165(A005843(n))+C(n, 41)`
-/

namespace A015164.P3914263682966153652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015165 (A005843 n).toNat + (Nat.choose n 41 : ℤ)

end

end A015164.P3914263682966153652

/-! ## A015164.P3869610244101385926

`A015165(A004277(n))+A000007(n)`
-/

namespace A015164.P3869610244101385926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015165 (A004277 n).toNat + A000007 n

end

end A015164.P3869610244101385926

/-! ## A015164.P8990063663206273333

`A151934(n)+A015165(A004277(n))`
-/

namespace A015164.P8990063663206273333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151934 n + A015165 (A004277 n).toNat

end

end A015164.P8990063663206273333

/-! ## A015164.P16036520642233604385

`A015165(A005843(n))^A020985(n)²`
-/

namespace A015164.P16036520642233604385
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A015165 (A005843 n).toNat : ℚ) ^ (A020985 n ^ 2 : ℤ)

end

end A015164.P16036520642233604385

/-!
# A015165: Theta series of 17-dimensional lattice Q'_17(6)^{+6}.

The programs for A015165, there is no canonical definition to state claims against.
-/

/-! ## A015165.P10544807627198059243

`and(A000203(8*n+4), A010366(n+1))`
-/

namespace A015165.P10544807627198059243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A000203 (8 * n + 4)) (A010366 (n + 1))

end

end A015165.P10544807627198059243

/-! ## A015165.P12527614047203652669

`and(A075219(n+1), A075231(A075207(n+4)))`
-/

namespace A015165.P12527614047203652669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A075219 (n + 1)) (A075231 (A075207 (n + 4)).toNat)

end

end A015165.P12527614047203652669

/-! ## A015165.P11590124835542086345

`A182560(and(A001045(3*n+4), A353893(n)))`
-/

namespace A015165.P11590124835542086345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182560 (Int.land (A001045 (3 * n + 4)) (A353893 n)).toNat

end

end A015165.P11590124835542086345

/-! ## A015165.P8044548974811493392

`A151934(A238626(2*(n+1)))%A238574(n+4)`
-/

namespace A015165.P8044548974811493392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A151934 (A238626 (2 * (n + 1))).toNat) (A238574 (n + 4))

end

end A015165.P8044548974811493392

/-! ## A015165.P15349969939488978187

`A015164(xor(val(n, 2)+1, a(n-1)))` with `a(0)=1, a(1)=0`
-/

namespace A015165.P15349969939488978187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n a =>
  A015164 (Int.xor (SequenceMachineLib.valuation n 2 + 1 : ℤ) (a (n - 1))).toNat

end

end A015165.P15349969939488978187

/-!
# A015166: Inverse of 1157th cyclotomic polynomial.

The programs for A015166, there is no canonical definition to state claims against.
-/

/-! ## A015166.P10681837888611633153

`A016323(Δ[A008619(n)])*A016323(n)`
-/

namespace A015166.P10681837888611633153
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016323 (f1 (n + 1) - f1 n).toNat * A016323 n

end

end A015166.P10681837888611633153

/-! ## A015166.P15167387852682480903

`-A010815(ceil(root(n+1, 2)-root(n+1, 5))!)`
-/

namespace A015166.P15167387852682480903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A010815 (Nat.factorial ⌈(n + 1 : ℝ) ^ (1 / (2 : ℝ)) - (n + 1 : ℝ) ^ (1 / (5 : ℝ))⌉.toNat)

end

end A015166.P15167387852682480903

/-! ## A015166.P10474202373542622165

`A000007(∑[A112801(n+1)])`
-/

namespace A015166.P10474202373542622165
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112801 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A015166.P10474202373542622165

/-! ## A015166.P6409784734063555703

`A003266(A111894(n+1))%2`
-/

namespace A015166.P6409784734063555703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A003266 (A111894 (n + 1)).toNat) 2

end

end A015166.P6409784734063555703

/-! ## A015166.P17520908210468653321

`A015972(A151878(n+2)+n)`
-/

namespace A015166.P17520908210468653321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015972 (A151878 (n + 2) + (n : ℤ)).toNat

end

end A015166.P17520908210468653321

/-! ## A015166.P3456378941315275231

`A202022(∑[∑[A001617(n+4)]])`
-/

namespace A015166.P3456378941315275231
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001617 (n + 4)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202022 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A015166.P3456378941315275231

/-! ## A015166.P4422408363592696723

`C(A303707(A179382(n+1)), A326593(n))`
-/

namespace A015166.P4422408363592696723
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A303707 (A179382 (n + 1)).toNat).toNat (A326593 n).toNat

end

end A015166.P4422408363592696723

/-! ## A015166.P414288087292047901

`A202022(A053610(3*(n+1))*A308857(n))`
-/

namespace A015166.P414288087292047901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202022 (A053610 (3 * (n + 1)) * A308857 n).toNat

end

end A015166.P414288087292047901

/-! ## A015166.P15517278468925331954

`A324539(A003376(3*n+5))^A093391(n)`
-/

namespace A015166.P15517278468925331954
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A324539 (A003376 (3 * n + 5)).toNat : ℚ) ^ (A093391 n : ℤ)

end

end A015166.P15517278468925331954

/-!
# A015167: Sum of (Gaussian) q-binomial coefficients for q=-5.

The programs for A015167, there is no canonical definition to state claims against.
-/

/-! ## A015167.P8638555046077874220

`A167389(A215037(n))-A296247(n)`
-/

namespace A015167.P8638555046077874220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167389 (A215037 n).toNat - A296247 n

end

end A015167.P8638555046077874220

/-!
# A015168: Inverse of 1159th cyclotomic polynomial.

The programs for A015168, there is no canonical definition to state claims against.
-/

/-! ## A015168.P6232595446311085592

`A016327(n)*A033999(n)`
-/

namespace A015168.P6232595446311085592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016327 n * A033999 n

end

end A015168.P6232595446311085592

/-! ## A015168.P1706231116144620288

`2-A110592(A349463(n))`
-/

namespace A015168.P1706231116144620288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A110592 (A349463 n).toNat

end

end A015168.P1706231116144620288

/-! ## A015168.P7282555421620950915

`A010815(A001840(3*n+4))*A016327(n)`
-/

namespace A015168.P7282555421620950915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010815 (A001840 (3 * n + 4)).toNat * A016327 n

end

end A015168.P7282555421620950915

/-! ## A015168.P17366861871922929430

`A014542(A156349(n+1)-A000002(n+1))`
-/

namespace A015168.P17366861871922929430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014542 (A156349 (n + 1) - A000002 (n + 1)).toNat

end

end A015168.P17366861871922929430

/-! ## A015168.P7034552654253948435

`A014542(A156349(n+1)-A287571(2*n+1))`
-/

namespace A015168.P7034552654253948435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014542 (A156349 (n + 1) - A287571 (2 * n + 1)).toNat

end

end A015168.P7034552654253948435

/-! ## A015168.P7540639713644301722

`round((n+1)/A244671(n+1))`
-/

namespace A015168.P7540639713644301722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A244671 (n + 1) : ℚ))

end

end A015168.P7540639713644301722

/-! ## A015168.P12031014337173224784

`round((n+1)/A363727(n+1))`
-/

namespace A015168.P12031014337173224784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A363727 (n + 1) : ℚ))

end

end A015168.P12031014337173224784

/-! ## A015168.P8968640052718666618

`floor((comp[xor(n, 2*n)]+1)/A371445(n+1))`
-/

namespace A015168.P8968640052718666618
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor n (2 * n)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + 1 : ℚ) / (A371445 (n + 1) : ℚ)⌋

end

end A015168.P8968640052718666618

/-! ## A015168.P3712131309368773599

`A034188(8*A017881(n))`
-/

namespace A015168.P3712131309368773599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034188 (8 * A017881 n).toNat

end

end A015168.P3712131309368773599

/-! ## A015168.P14661221670117205282

`A010054(∑[A326546(n)]+1)`
-/

namespace A015168.P14661221670117205282
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326546 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 (∑ j ∈ Finset.range (n + 1), f1 j + 1).toNat

end

end A015168.P14661221670117205282

/-!
# A015169: Sum of (Gaussian) q-binomial coefficients for q=-6.

The programs for A015169, there is no canonical definition to state claims against.
-/

/-! ## A015169.P2761789303829506330

`A060546(n)-A001057(A214698(n+1))`
-/

namespace A015169.P2761789303829506330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060546 n - A001057 (A214698 (n + 1)).toNat

end

end A015169.P2761789303829506330

/-!
# A015170: Sum of (Gaussian) q-binomial coefficients for q=-7.

The programs for A015170, there is no canonical definition to state claims against.
-/

/-! ## A015170.P3946443587109831034

`A217799(n)-A303642(A014137(n))`
-/

namespace A015170.P3946443587109831034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217799 n - A303642 (A014137 n).toNat

end

end A015170.P3946443587109831034

/-!
# A015171: Inverse of 1162nd cyclotomic polynomial.

The programs for A015171, there is no canonical definition to state claims against.
-/

/-! ## A015171.P11525272262028211835

`A014583(C(2, A020639(n+1)))*A014590(n)`
-/

namespace A015171.P11525272262028211835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014583 (Nat.choose 2 (A020639 (n + 1)).toNat) * A014590 n

end

end A015171.P11525272262028211835

/-! ## A015171.P12469427705354268939

`(A286520(n+5)-2)*a(n-1)` with `a(0)=1`
-/

namespace A015171.P12469427705354268939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (A286520 (n + 5) - 2) * a (n - 1)

end

end A015171.P12469427705354268939

/-! ## A015171.P5419569956960876179

`A010815(A005449(n)-A007093(n))`
-/

namespace A015171.P5419569956960876179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010815 (A005449 n - A007093 n).toNat

end

end A015171.P5419569956960876179

/-! ## A015171.P7354124824123318823

`A010815(A007093(n)+A000326(n))`
-/

namespace A015171.P7354124824123318823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010815 (A007093 n + A000326 n).toNat

end

end A015171.P7354124824123318823

/-! ## A015171.P17270516303477948573

`A010815(A005449(n)-A000378(n+1))`
-/

namespace A015171.P17270516303477948573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010815 (A005449 n - A000378 (n + 1)).toNat

end

end A015171.P17270516303477948573

/-!
# A015175: Inverse of 1166th cyclotomic polynomial.

The programs for A015175, there is no canonical definition to state claims against.
-/

/-! ## A015175.P5911779330464383748

`A101455(A017317(n)+A014592(n))`
-/

namespace A015175.P5911779330464383748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101455 (A017317 n + A014592 n).toNat

end

end A015175.P5911779330464383748

/-! ## A015175.P12786422457865398267

`(-floor(2*n/A390446(n+4)))^n`
-/

namespace A015175.P12786422457865398267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-⌊(2 * n : ℚ) / (A390446 (n + 4) : ℚ)⌋) ^ n

end

end A015175.P12786422457865398267

/-! ## A015175.P2902129509053981320

`(A332640(n)-A014218(n))*a(n-1)` with `a(0)=1`
-/

namespace A015175.P2902129509053981320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (A332640 n - A014218 n) * a (n - 1)

end

end A015175.P2902129509053981320

/-! ## A015175.P12071894579641724469

`Δ[A165573(A169975(2*(n+2))²)]`
-/

namespace A015175.P12071894579641724469
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165573 (A169975 (2 * (n + 2)) ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A015175.P12071894579641724469

/-! ## A015175.P11219839138973429876

`A003415(A069681(n+1))*A015615(n)`
-/

namespace A015175.P11219839138973429876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 (A069681 (n + 1)).toNat * A015615 n

end

end A015175.P11219839138973429876

/-! ## A015175.P352937214036507402

`A015751(lt[A136252(n+4), A283477(n+2)])`
-/

namespace A015175.P352937214036507402
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136252 (n + 4)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283477 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015751 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A015175.P352937214036507402

/-!
# A015179: Inverse of 1170th cyclotomic polynomial.

The programs for A015179, there is no canonical definition to state claims against.
-/

/-! ## A015179.P14928727969989174513

`A014789(A004396(n))`
-/

namespace A015179.P14928727969989174513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014789 (A004396 n).toNat

end

end A015179.P14928727969989174513

/-! ## A015179.P16464897531383449593

`A014789(A006369(n))`
-/

namespace A015179.P16464897531383449593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014789 (A006369 n).toNat

end

end A015179.P16464897531383449593

/-! ## A015179.P13461562983146499474

`A014789(A074305(n))`
-/

namespace A015179.P13461562983146499474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014789 (A074305 n).toNat

end

end A015179.P13461562983146499474

/-! ## A015179.P10464035207961852840

`A014789(A092942(n))`
-/

namespace A015179.P10464035207961852840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014789 (A092942 n).toNat

end

end A015179.P10464035207961852840

/-! ## A015179.P8847558932465228607

`A014789(A160080(n))`
-/

namespace A015179.P8847558932465228607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014789 (A160080 n).toNat

end

end A015179.P8847558932465228607

/-! ## A015179.P12684684539676039699

`A014789(A272071(n))`
-/

namespace A015179.P12684684539676039699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014789 (A272071 n).toNat

end

end A015179.P12684684539676039699

/-! ## A015179.P15108896387692412842

`A014789(A005131(n+1))`
-/

namespace A015179.P15108896387692412842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014789 (A005131 (n + 1)).toNat

end

end A015179.P15108896387692412842

/-! ## A015179.P1806287266881491705

`A010892(n)*A014594(n)`
-/

namespace A015179.P1806287266881491705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010892 n * A014594 n

end

end A015179.P1806287266881491705

/-! ## A015179.P14289979215094192328

`A014594(n)*A033999(n)`
-/

namespace A015179.P14289979215094192328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014594 n * A033999 n

end

end A015179.P14289979215094192328

/-! ## A015179.P2483206152974323537

`A014594(n)*A057079(n)`
-/

namespace A015179.P2483206152974323537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014594 n * A057079 n

end

end A015179.P2483206152974323537

/-! ## A015179.P10509489226498637287

`A014594(n)*A081729(n)`
-/

namespace A015179.P10509489226498637287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014594 n * A081729 n

end

end A015179.P10509489226498637287

/-! ## A015179.P1935364861722021582

`A014594(n)*A101676(n)`
-/

namespace A015179.P1935364861722021582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014594 n * A101676 n

end

end A015179.P1935364861722021582

/-! ## A015179.P12703535655753524880

`A014594(n)*A103368(n)`
-/

namespace A015179.P12703535655753524880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014594 n * A103368 n

end

end A015179.P12703535655753524880

/-! ## A015179.P6981662977199166502

`A014594(n)*A117373(n)`
-/

namespace A015179.P6981662977199166502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014594 n * A117373 n

end

end A015179.P6981662977199166502

/-! ## A015179.P16223139082566601524

`A014594(n)*A117378(n)`
-/

namespace A015179.P16223139082566601524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014594 n * A117378 n

end

end A015179.P16223139082566601524

/-! ## A015179.P15087002267437786538

`A014594(n)*A128213(n)`
-/

namespace A015179.P15087002267437786538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014594 n * A128213 n

end

end A015179.P15087002267437786538

/-! ## A015179.P12924866810979908203

`A014594(n)*A130151(n)`
-/

namespace A015179.P12924866810979908203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014594 n * A130151 n

end

end A015179.P12924866810979908203

/-! ## A015179.P9021495836710476979

`A014594(n)*A130806(n)`
-/

namespace A015179.P9021495836710476979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014594 n * A130806 n

end

end A015179.P9021495836710476979

/-! ## A015179.P10310318337338874435

`A014594(n)*A130815(n)`
-/

namespace A015179.P10310318337338874435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014594 n * A130815 n

end

end A015179.P10310318337338874435

/-! ## A015179.P809931123706767121

`A014594(n)*A131017(n)`
-/

namespace A015179.P809931123706767121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014594 n * A131017 n

end

end A015179.P809931123706767121

/-!
# A015182: Inverse of 1173rd cyclotomic polynomial.

The programs for A015182, there is no canonical definition to state claims against.
-/

/-! ## A015182.P16946052910514719977

`A016100(n)-A016124(A174159(n+1))`
-/

namespace A015182.P16946052910514719977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016100 n - A016124 (A174159 (n + 1)).toNat

end

end A015182.P16946052910514719977

/-! ## A015182.P14376877684713863247

`A016010(A004917(n+1))`
-/

namespace A015182.P14376877684713863247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016010 (A004917 (n + 1)).toNat

end

end A015182.P14376877684713863247

/-! ## A015182.P16021728237628937976

`A015488(A373582(2*(n+1))+n)`
-/

namespace A015182.P16021728237628937976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015488 (A373582 (2 * (n + 1)) + (n : ℤ)).toNat

end

end A015182.P16021728237628937976

/-! ## A015182.P16664479493772561812

`A131534(A080535(n))-A131534(n)`
-/

namespace A015182.P16664479493772561812
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131534 (A080535 n).toNat - A131534 n

end

end A015182.P16664479493772561812

/-! ## A015182.P4412244462941898166

`A049347(lt[A248982(n+1), A039371(3*(n+1))])`
-/

namespace A015182.P4412244462941898166
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248982 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039371 (3 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049347 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A015182.P4412244462941898166

/-!
# A015186: Inverse of 1177th cyclotomic polynomial.

The programs for A015186, there is no canonical definition to state claims against.
-/

/-! ## A015186.P10598093289265606226

`A015972(record[A008615(A157931(n+1))])`
-/

namespace A015186.P10598093289265606226
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008615 (A157931 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015972 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A015186.P10598093289265606226

/-! ## A015186.P8613602035816876576

`A242393((2*n+1-(-1)^((n+1)*(n+2)/2))/2)%2`
-/

namespace A015186.P8613602035816876576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A242393 (SequenceMachineLib.roundAway (((2 * n : ℝ) + (1 - (-1 : ℝ) ^ ((n + 1 : ℚ) * ((n + 2 : ℚ) / 2) : ℝ))) / 2)).toNat) 2

end

end A015186.P8613602035816876576

/-! ## A015186.P17149579382653902173

`A160406(A210964(n))%2`
-/

namespace A015186.P17149579382653902173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A160406 (A210964 n).toNat) 2

end

end A015186.P17149579382653902173

/-! ## A015186.P15671649026074165456

`C(A257654(n), ∑[A309471(n)])`
-/

namespace A015186.P15671649026074165456
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309471 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A257654 n).toNat (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A015186.P15671649026074165456

/-! ## A015186.P1514813210240035627

`A357138(C(4, A370461(n+1)))`
-/

namespace A015186.P1514813210240035627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357138 (Nat.choose 4 (A370461 (n + 1)).toNat)

end

end A015186.P1514813210240035627

/-! ## A015186.P1939634361144761521

`A023533(∑[A115981(∏{e}[n+1, #+1])])`
-/

namespace A015186.P1939634361144761521
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115981 (∏ p ∈ Nat.primeFactors (f2 n), (Nat.factorization (f2 n) p + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023533 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A015186.P1939634361144761521

/-! ## A015186.P4673567628459645029

`C(A333769(A006257(n)), A033106(n+2))`
-/

namespace A015186.P4673567628459645029
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A333769 (A006257 n).toNat).toNat (A033106 (n + 2)).toNat

end

end A015186.P4673567628459645029

/-! ## A015186.P2752860754590554861

`C(n, comp[A321804(2*n+1)])`
-/

namespace A015186.P2752860754590554861
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321804 (2 * n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A015186.P2752860754590554861

/-! ## A015186.P1843064516169301751

`A024767(A069623(2*(n+2)))%2`
-/

namespace A015186.P1843064516169301751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A024767 (A069623 (2 * (n + 2))).toNat) 2

end

end A015186.P1843064516169301751

/-! ## A015186.P5696746120679854054

`C(n, comp[A088134(n+2)])`
-/

namespace A015186.P5696746120679854054
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088134 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A015186.P5696746120679854054

/-!
# A015187: Inverse of 1178th cyclotomic polynomial.

The programs for A015187, there is no canonical definition to state claims against.
-/

/-! ## A015187.P11340946491985821800

`A014598(n)*A033999(n)`
-/

namespace A015187.P11340946491985821800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014598 n * A033999 n

end

end A015187.P11340946491985821800

/-! ## A015187.P3440376334792676720

`A014598(n)*A062157(n+1)`
-/

namespace A015187.P3440376334792676720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014598 n * A062157 (n + 1)

end

end A015187.P3440376334792676720

/-! ## A015187.P1261735915951787466

`A014383(A330239(n+2))`
-/

namespace A015187.P1261735915951787466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014383 (A330239 (n + 2)).toNat

end

end A015187.P1261735915951787466

/-! ## A015187.P2681278524186508205

`A015567(A182049(n+1))`
-/

namespace A015187.P2681278524186508205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015567 (A182049 (n + 1)).toNat

end

end A015187.P2681278524186508205

/-!
# A015194: Inverse of 1185th cyclotomic polynomial.

The programs for A015194, there is no canonical definition to state claims against.
-/

/-! ## A015194.P13999289051253911034

`A014564(n)*A014568(A017881(n))`
-/

namespace A015194.P13999289051253911034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014564 n * A014568 (A017881 n).toNat

end

end A015194.P13999289051253911034

/-!
# A015195: Sum of Gaussian binomial coefficients for q=9.

The programs for A015195, the canonical program `A015195.P2569711752939892422` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A015195 has offset 0).

The definition of A015195 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A015195.P2569711752939892422

`2*a(n-1)+(9^(n-1)-1)*a(n-2)` with `a(0)=1, a(1)=2`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A015195

/-- `2*a(n-1)+(9^(n-1)-1)*a(n-2)` -/
def P2569711752939892422.Spec : Prop :=
  ∀ n, P2569711752939892422.a n = (A015195 n : ℚ)

end A015195

/-!
# A015196: Sum of Gaussian binomial coefficients for q=10.

The programs for A015196, the canonical program `A015196.P5794910707825965742` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A015196 has offset 0).

The definition of A015196 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A015196.P5794910707825965742

`2*a(n-1)+(10^(n-1)-1)*a(n-2)` with `a(0)=1, a(1)=2`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A015196

/-- `2*a(n-1)+(10^(n-1)-1)*a(n-2)` -/
def P5794910707825965742.Spec : Prop :=
  ∀ n, P5794910707825965742.a n = (A015196 n : ℚ)

end A015196

/-!
# A015197: Sum of Gaussian binomial coefficients for q=11.

The programs for A015197, the canonical program `A015197.P12984991222081966108` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A015197 has offset 0).

The definition of A015197 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A015197.P12984991222081966108

`2*a(n-1)+(11^(n-1)-1)*a(n-2)` with `a(0)=1, a(1)=2`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A015197

/-- `2*a(n-1)+(11^(n-1)-1)*a(n-2)` -/
def P12984991222081966108.Spec : Prop :=
  ∀ n, P12984991222081966108.a n = (A015197 n : ℚ)

end A015197

/-! ## A015197.P16336985363092971155

`A370887(A000217(n+4)+n)`
-/

namespace A015197.P16336985363092971155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370887 (A000217 (n + 4) + (n : ℤ)).toNat

end

end A015197.P16336985363092971155

namespace A015197

/-- `A370887(A000217(n+4)+n)` -/
def P16336985363092971155.Spec : Prop :=
  ∀ n, P16336985363092971155.a n = A015197 n

end A015197

/-!
# A015198: Inverse of 1189th cyclotomic polynomial.

The programs for A015198, there is no canonical definition to state claims against.
-/

/-! ## A015198.P17354017120465476704

`A016182(eq[A016232(8*n+17), A016264(7*n+18)])`
-/

namespace A015198.P17354017120465476704
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016232 (8 * n + 17)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016264 (7 * n + 18)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016182 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A015198.P17354017120465476704

/-! ## A015198.P6850174689066294056

`A015970(comp[A324694(3*n+5)]+1)`
-/

namespace A015198.P6850174689066294056
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324694 (3 * n + 5)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015970 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1)

end

end A015198.P6850174689066294056

/-! ## A015198.P15969158934378161699

`A015748(A390432(n+3)+A351290(n+1))`
-/

namespace A015198.P15969158934378161699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015748 (A390432 (n + 3) + A351290 (n + 1)).toNat

end

end A015198.P15969158934378161699

/-! ## A015198.P17391680687293607557

`A015970(A364347(n+1)+A319954(n))`
-/

namespace A015198.P17391680687293607557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015970 (A364347 (n + 1) + A319954 n).toNat

end

end A015198.P17391680687293607557

/-! ## A015198.P1655629075255234836

`A015970(A364347(n+1)+A001221(n+1))`
-/

namespace A015198.P1655629075255234836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015970 (A364347 (n + 1) + A001221 (n + 1)).toNat

end

end A015198.P1655629075255234836

/-! ## A015198.P14184454726696776557

`A015970(lt[A122202(n+4), A102347(3*n+1)])`
-/

namespace A015198.P14184454726696776557
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122202 (n + 4)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102347 (3 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015970 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A015198.P14184454726696776557

/-! ## A015198.P16969073909493096320

`A015970(lt[A054354(n+1), A329744(n+1)])`
-/

namespace A015198.P16969073909493096320
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054354 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329744 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015970 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A015198.P16969073909493096320

/-! ## A015198.P12592540788883423859

`A051903(A082992(n+1))-A082998(n+1)`
-/

namespace A015198.P12592540788883423859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051903 (A082992 (n + 1)).toNat - A082998 (n + 1)

end

end A015198.P12592540788883423859

/-!
# A015199: Inverse of 1190th cyclotomic polynomial.

The programs for A015199, there is no canonical definition to state claims against.
-/

/-! ## A015199.P16430653158213878064

`(-1)^n*A014604(n)`
-/

namespace A015199.P16430653158213878064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A014604 n

end

end A015199.P16430653158213878064

/-! ## A015199.P10480219317395052339

`A014604(n)*A033999(n)`
-/

namespace A015199.P10480219317395052339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014604 n * A033999 n

end

end A015199.P10480219317395052339

