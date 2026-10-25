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
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C028
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C037
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C005
import Seq.B001.C006
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
import Seq.B007.C000
import Seq.B007.C001
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

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A068001: Smallest number whose n-th power (A067457) starts with n.

The programs for A068001, there is no canonical definition to state claims against.
-/

/-! ## A068001.P500455099874610171

`root(A067457(n+1), n+1)`
-/

namespace A068001.P500455099874610171
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A067457 (n + 1) : ℝ) ^ (1 / (n + 1 : ℝ))

end

end A068001.P500455099874610171

/-! ## A068001.P17127830847747662513

`A067457(n+1)^(2/A103517(n))`
-/

namespace A068001.P17127830847747662513
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A067457 (n + 1) : ℝ) ^ (2 / (A103517 n : ℚ) : ℝ)

end

end A068001.P17127830847747662513

/-! ## A068001.P10221733579559602020

`A067457(n+1)^(1/A000027(n+1))`
-/

namespace A068001.P10221733579559602020
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A067457 (n + 1) : ℝ) ^ (1 / (A000027 (n + 1) : ℚ) : ℝ)

end

end A068001.P10221733579559602020

/-!
# A068005: Numbers n such that n*sigma(n) > phi(n)*prime(n).

The programs for A068005, there is no canonical definition to state claims against.
-/

/-! ## A068005.P8254439049411393375

`lt[A047255(A225530(n)), A181833(n)]`
-/

namespace A068005.P8254439049411393375
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047255 (A225530 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181833 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A068005.P8254439049411393375

/-! ## A068005.P1573668559197516659

`lt[A323256(n+1)², A138879(n+1)]`
-/

namespace A068005.P1573668559197516659
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323256 (n + 1) ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138879 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A068005.P1573668559197516659

/-!
# A068006: Number of partitions of n into distinct partition numbers.

The programs for A068006, there is no canonical definition to state claims against.
-/

/-! ## A068006.P1848382346959518983

`A003056((A249914(n)+1)*(n+1))`
-/

namespace A068006.P1848382346959518983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 ((A249914 n + 1) * (n + 1 : ℤ)).toNat

end

end A068006.P1848382346959518983

/-! ## A068006.P8471724765743648154

`A000097(n)-A037824(A000110(n))`
-/

namespace A068006.P8471724765743648154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000097 n - A037824 (A000110 n).toNat

end

end A068006.P8471724765743648154

/-! ## A068006.P14064006268892854682

`A000097(n)-A067169(A028495(n))`
-/

namespace A068006.P14064006268892854682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000097 n - A067169 ((A028495 n).toNat + 11)

end

end A068006.P14064006268892854682

/-! ## A068006.P16896573832725016113

`A000097(n)-A001222(A309861(n))`
-/

namespace A068006.P16896573832725016113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000097 n - A001222 (A309861 n).toNat

end

end A068006.P16896573832725016113

/-! ## A068006.P8228872225220117097

`A000097(n)-A037912(A279569(n))`
-/

namespace A068006.P8228872225220117097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000097 n - A037912 (A279569 n).toNat

end

end A068006.P8228872225220117097

/-!
# A068009: Square array T(m,n) with m (row) >= 1 and n (column) >= 0 read by antidiagonals: number of subsets of {1,2,3,...n} that sum to 0 mod m (including the empty set, whose sum is 0).

The programs for A068009, there is no canonical definition to state claims against.
-/

/-! ## A068009.P16884594532763427005

`ceil(A130321(n)/A152036(A152036(n)))`
-/

namespace A068009.P16884594532763427005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A130321 n : ℚ) / (A152036 (A152036 n).toNat : ℚ)⌉

end

end A068009.P16884594532763427005

/-! ## A068009.P12193158612567850853

`ceil(A348676(n)/A091010(A152036(n)))`
-/

namespace A068009.P12193158612567850853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A348676 n : ℚ) / (A091010 (A152036 n).toNat : ℚ)⌉

end

end A068009.P12193158612567850853

/-! ## A068009.P12814073194202536410

`ceil(A348676(A008554(n+1))/A059268(n))`
-/

namespace A068009.P12814073194202536410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A348676 (A008554 (n + 1)).toNat : ℚ) / (A059268 n : ℚ)⌉

end

end A068009.P12814073194202536410

/-! ## A068009.P1725091985770421132

`ceil(A348676(A008554(n+1))/A152036(n))`
-/

namespace A068009.P1725091985770421132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A348676 (A008554 (n + 1)).toNat : ℚ) / (A152036 n : ℚ)⌉

end

end A068009.P1725091985770421132

/-! ## A068009.P10641297957179298783

`A187816(A131437(n+2))`
-/

namespace A068009.P10641297957179298783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187816 (A131437 (n + 2)).toNat

end

end A068009.P10641297957179298783

/-!
# A068010: Number of subsets of {1,2,3,...,n} that sum to 0 mod 3.

The programs for A068010, the canonical program `A068010.P8679337915236840263` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A068010 has offset 0).

The definition of A068010 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A068010.P8679337915236840263

`2*a(n-3)+2^(n-2)` with `a(0)=1, a(1)=1, a(2)=2`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A068010

/-- `2*a(n-3)+2^(n-2)` -/
def P8679337915236840263.Spec : Prop :=
  ∀ n, P8679337915236840263.a n = (A068010 n : ℚ)

end A068010

/-! ## A068010.P160182624693739586

`ogf((-1+x+2x^3)/(-1+2x+2x^3-4x^4))`
-/

namespace A068010.P160182624693739586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -1, 0, -2] [1, -2, 0, -2, 4] n

end

end A068010.P160182624693739586

namespace A068010

/-- `ogf((-1+x+2x^3)/(-1+2x+2x^3-4x^4))` -/
def P160182624693739586.Spec : Prop :=
  ∀ n, P160182624693739586.a n = A068010 n

end A068010

/-! ## A068010.P13803552307752363989

`A060553(n+1)-A016116(n)`
-/

namespace A068010.P13803552307752363989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060553 (n + 1) - A016116 n

end

end A068010.P13803552307752363989

namespace A068010

/-- `A060553(n+1)-A016116(n)` -/
def P13803552307752363989.Spec : Prop :=
  ∀ n, P13803552307752363989.a n = A068010 n

end A068010

/-! ## A068010.P17260595098038777362

`A060553(n+1)-A158780(n+2)`
-/

namespace A068010.P17260595098038777362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060553 (n + 1) - A158780 (n + 2)

end

end A068010.P17260595098038777362

namespace A068010

/-- `A060553(n+1)-A158780(n+2)` -/
def P17260595098038777362.Spec : Prop :=
  ∀ n, P17260595098038777362.a n = A068010 n

end A068010

/-! ## A068010.P16018529447141488415

`A001045(n)+A001045(A008611(n))`
-/

namespace A068010.P16018529447141488415
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001045 n + A001045 (A008611 n).toNat

end

end A068010.P16018529447141488415

namespace A068010

/-- `A001045(n)+A001045(A008611(n))` -/
def P16018529447141488415.Spec : Prop :=
  ∀ n, P16018529447141488415.a n = A068010 n

end A068010

/-! ## A068010.P13780841006673291564

`A078008(A008611(n))+A078008(n)`
-/

namespace A068010.P13780841006673291564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078008 (A008611 n).toNat + A078008 n

end

end A068010.P13780841006673291564

namespace A068010

/-- `A078008(A008611(n))+A078008(n)` -/
def P13780841006673291564.Spec : Prop :=
  ∀ n, P13780841006673291564.a n = A068010 n

end A068010

/-! ## A068010.P17087550622350167063

`A060553(n+1)-A000079(A004526(n))`
-/

namespace A068010.P17087550622350167063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060553 (n + 1) - A000079 (A004526 n).toNat

end

end A068010.P17087550622350167063

namespace A068010

/-- `A060553(n+1)-A000079(A004526(n))` -/
def P17087550622350167063.Spec : Prop :=
  ∀ n, P17087550622350167063.a n = A068010 n

end A068010

/-! ## A068010.P15555732786149602672

`A167030(A008611(n))+A167030(n)+2`
-/

namespace A068010.P15555732786149602672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167030 (A008611 n).toNat + (A167030 n + 2)

end

end A068010.P15555732786149602672

namespace A068010

/-- `A167030(A008611(n))+A167030(n)+2` -/
def P15555732786149602672.Spec : Prop :=
  ∀ n, P15555732786149602672.a n = A068010 n

end A068010

/-! ## A068010.P7627511931705852782

`A001045(n)+A001045(A168056(n)-n)`
-/

namespace A068010.P7627511931705852782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001045 n + A001045 (A168056 n - (n : ℤ)).toNat

end

end A068010.P7627511931705852782

namespace A068010

/-- `A001045(n)+A001045(A168056(n)-n)` -/
def P7627511931705852782.Spec : Prop :=
  ∀ n, P7627511931705852782.a n = A068010 n

end A068010

/-! ## A068010.P8363709972002790165

`A060553(n+1)-A060546(2*A004526(n))`
-/

namespace A068010.P8363709972002790165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060553 (n + 1) - A060546 (2 * A004526 n).toNat

end

end A068010.P8363709972002790165

namespace A068010

/-- `A060553(n+1)-A060546(2*A004526(n))` -/
def P8363709972002790165.Spec : Prop :=
  ∀ n, P8363709972002790165.a n = A068010 n

end A068010

/-! ## A068010.P11092661940461892743

`(2^n+2^(floor((n+1)/3)+((n+1)%3)%2))/3`
-/

namespace A068010.P11092661940461892743
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((2 ^ n : ℚ) + (2 : ℚ) ^ (⌊(n + 1 : ℚ) / 3⌋ + (((n + 1) % 3 % 2 : ℕ) : ℤ) : ℤ)) / 3

end

end A068010.P11092661940461892743

namespace A068010

/-- `(2^n+2^(floor((n+1)/3)+((n+1)%3)%2))/3` -/
def P11092661940461892743.Spec : Prop :=
  ∀ n, P11092661940461892743.a n = (A068010 n : ℚ)

end A068010

/-! ## A068010.P16578459593350572025

`(A000079(n)+A060547(n+1))/3`
-/

namespace A068010.P16578459593350572025
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000079 n + A060547 (n + 1) : ℚ) / 3

end

end A068010.P16578459593350572025

namespace A068010

/-- `(A000079(n)+A060547(n+1))/3` -/
def P16578459593350572025.Spec : Prop :=
  ∀ n, P16578459593350572025.a n = (A068010 n : ℚ)

end A068010

/-! ## A068010.P656373750043173209

`(A000079(n)+2^A008611(n))/3`
-/

namespace A068010.P656373750043173209
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A000079 n : ℚ) + (2 : ℚ) ^ (A008611 n : ℤ)) / 3

end

end A068010.P656373750043173209

namespace A068010

/-- `(A000079(n)+2^A008611(n))/3` -/
def P656373750043173209.Spec : Prop :=
  ∀ n, P656373750043173209.a n = (A068010 n : ℚ)

end A068010

/-! ## A068010.P7884082177189170317

`A060553(n+1)-A000079(n)/A060546(n)`
-/

namespace A068010.P7884082177189170317
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A060553 (n + 1) : ℚ) - (A000079 n : ℚ) / (A060546 n : ℚ)

end

end A068010.P7884082177189170317

namespace A068010

/-- `A060553(n+1)-A000079(n)/A060546(n)` -/
def P7884082177189170317.Spec : Prop :=
  ∀ n, P7884082177189170317.a n = (A068010 n : ℚ)

end A068010

/-! ## A068010.P1736992158355329110

`A068012(n+3)-2^n`
-/

namespace A068010.P1736992158355329110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068012 (n + 3) - (2 ^ n : ℤ)

end

end A068010.P1736992158355329110

namespace A068010

/-- `A068012(n+3)-2^n` -/
def P1736992158355329110.Spec : Prop :=
  ∀ n, P1736992158355329110.a n = A068010 n

end A068010

/-! ## A068010.P6742907290671171204

`A068009(∑[n+2]+3)`
-/

namespace A068010.P6742907290671171204
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068009 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A068010.P6742907290671171204

namespace A068010

/-- `A068009(∑[n+2]+3)` -/
def P6742907290671171204.Spec : Prop :=
  ∀ n, P6742907290671171204.a n = A068010 n

end A068010

/-!
# A068011: Number of subsets of {1,2,3,...,n} that sum to 0 mod 5.

The programs for A068011, there is no canonical definition to state claims against.
-/

/-! ## A068011.P10797265764438229864

`A068031(n)*A329683(n)`
-/

namespace A068011.P10797265764438229864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068031 n * A329683 n

end

end A068011.P10797265764438229864

/-! ## A068011.P6335629795355369702

`A046698(n)!*A068031(n)`
-/

namespace A068011.P6335629795355369702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (A046698 n).toNat : ℤ) * A068031 n

end

end A068011.P6335629795355369702

/-! ## A068011.P2459861750514324273

`A068009(A155212(n)+12)`
-/

namespace A068011.P2459861750514324273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068009 (A155212 n + 12).toNat

end

end A068011.P2459861750514324273

/-! ## A068011.P14835009153300042697

`A068009(A056000(n)+14)`
-/

namespace A068011.P14835009153300042697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068009 (A056000 n + 14).toNat

end

end A068011.P14835009153300042697

/-! ## A068011.P16553427130872991625

`A068009(eq[4, A002262(n)])`
-/

namespace A068011.P16553427130872991625
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068009 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A068011.P16553427130872991625

/-! ## A068011.P11615998575797239187

`A068009(A167499(n+3)-1)`
-/

namespace A068011.P11615998575797239187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068009 (A167499 (n + 3) - 1).toNat

end

end A068011.P11615998575797239187

/-! ## A068011.P2680227759232913513

`A068009(A055998(n+2)+7)`
-/

namespace A068011.P2680227759232913513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068009 (A055998 (n + 2) + 7).toNat

end

end A068011.P2680227759232913513

/-! ## A068011.P14083892332548040779

`A068009(A000124(n+3)+n+7)`
-/

namespace A068011.P14083892332548040779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068009 (A000124 (n + 3) + (n + 7 : ℤ)).toNat

end

end A068011.P14083892332548040779

/-!
# A068012: Number of subsets of {1,2,3,...,n} that sum to 0 mod 6.

The programs for A068012, the canonical program `A068012.P13088167695542469923` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A068012 has offset 0).

The definition of A068012 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 334 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A068012.P13088167695542469923

`ceil(A068010(n)/2)`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A068012

/-- `ceil(A068010(n)/2)` -/
def P13088167695542469923.Spec : Prop :=
  ∀ n, P13088167695542469923.a n = A068012 n

theorem P13088167695542469923.correct : P13088167695542469923.Spec := by
  intro n
  simp only [A068012]

end A068012

/-! ## A068012.P5284702989312704701

`A068010(n)/A046698(n+1)`
-/

namespace A068012.P5284702989312704701
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A068010 n : ℚ) / (A046698 (n + 1) : ℚ)

end

end A068012.P5284702989312704701

namespace A068012

/-- `A068010(n)/A046698(n+1)` -/
def P5284702989312704701.Spec : Prop :=
  ∀ n, P5284702989312704701.a n = (A068012 n : ℚ)

end A068012

/-! ## A068012.P2728349900296500835

`A068010(n)/gcd(2, A000010(n+1))`
-/

namespace A068012.P2728349900296500835
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A068010 n : ℚ) / (Int.gcd 2 (A000010 (n + 1)) : ℚ)

end

end A068012.P2728349900296500835

namespace A068012

/-- `A068010(n)/gcd(2, A000010(n+1))` -/
def P2728349900296500835.Spec : Prop :=
  ∀ n, P2728349900296500835.a n = (A068012 n : ℚ)

end A068012

/-! ## A068012.P9792351423441376189

`A068010(n)/2*A054977(n-and(1, n))`
-/

namespace A068012.P9792351423441376189
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A068010 n : ℚ) / 2 * (A054977 (n - Nat.land 1 n) : ℚ)

end

end A068012.P9792351423441376189

namespace A068012

/-- `A068010(n)/2*A054977(n-and(1, n))` -/
def P9792351423441376189.Spec : Prop :=
  ∀ n, P9792351423441376189.a n = (A068012 n : ℚ)

end A068012

/-! ## A068012.P9448417612752203943

`A068010(n)/A060594(A060594(n+1)+1)`
-/

namespace A068012.P9448417612752203943
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A068010 n : ℚ) / (A060594 (A060594 (n + 1) + 1).toNat : ℚ)

end

end A068012.P9448417612752203943

namespace A068012

/-- `A068010(n)/A060594(A060594(n+1)+1)` -/
def P9448417612752203943.Spec : Prop :=
  ∀ n, P9448417612752203943.a n = (A068012 n : ℚ)

end A068012

/-! ## A068012.P6176457271537260223

`A068009(A167499(n+4))`
-/

namespace A068012.P6176457271537260223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068009 (A167499 (n + 4)).toNat

end

end A068012.P6176457271537260223

namespace A068012

/-- `A068009(A167499(n+4))` -/
def P6176457271537260223.Spec : Prop :=
  ∀ n, P6176457271537260223.a n = A068012 n

end A068012

/-! ## A068012.P3107143605084128340

`A068009(A133263(n+5)+3)`
-/

namespace A068012.P3107143605084128340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068009 (A133263 (n + 5) + 3).toNat

end

end A068012.P3107143605084128340

namespace A068012

/-- `A068009(A133263(n+5)+3)` -/
def P3107143605084128340.Spec : Prop :=
  ∀ n, P3107143605084128340.a n = A068012 n

end A068012

/-! ## A068012.P8815627638251826255

`A068009(A000217(n+6)-(n+1))`
-/

namespace A068012.P8815627638251826255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068009 (A000217 (n + 6) - (n + 1 : ℤ)).toNat

end

end A068012.P8815627638251826255

namespace A068012

/-- `A068009(A000217(n+6)-(n+1))` -/
def P8815627638251826255.Spec : Prop :=
  ∀ n, P8815627638251826255.a n = A068012 n

end A068012

/-! ## A068012.P15296197461181130377

`A068009(A027379(n+4)-(n-2))`
-/

namespace A068012.P15296197461181130377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068009 (A027379 (n + 4) - ((n : ℤ) - 2)).toNat

end

end A068012.P15296197461181130377

namespace A068012

/-- `A068009(A027379(n+4)-(n-2))` -/
def P15296197461181130377.Spec : Prop :=
  ∀ n, P15296197461181130377.a n = A068012 n

end A068012

/-! ## A068012.P11028888068418582275

`A068009(A000124(n+6)-(n+2))`
-/

namespace A068012.P11028888068418582275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068009 (A000124 (n + 6) - (n + 2 : ℤ)).toNat

end

end A068012.P11028888068418582275

namespace A068012

/-- `A068009(A000124(n+6)-(n+2))` -/
def P11028888068418582275.Spec : Prop :=
  ∀ n, P11028888068418582275.a n = A068012 n

end A068012

/-! ## A068012.P8511048799968694286

`A068009(A055999(n+4)-2*(n+1))`
-/

namespace A068012.P8511048799968694286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068009 (A055999 (n + 4) - (2 * (n + 1) : ℤ)).toNat

end

end A068012.P8511048799968694286

namespace A068012

/-- `A068009(A055999(n+4)-2*(n+1))` -/
def P8511048799968694286.Spec : Prop :=
  ∀ n, P8511048799968694286.a n = A068012 n

end A068012

/-! ## A068012.P3507323174488169127

`A068010(n)/2*A054977(n²-n)`
-/

namespace A068012.P3507323174488169127
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A068010 n : ℚ) / 2 * (A054977 (n ^ 2 - n) : ℚ)

end

end A068012.P3507323174488169127

namespace A068012

/-- `A068010(n)/2*A054977(n²-n)` -/
def P3507323174488169127.Spec : Prop :=
  ∀ n, P3507323174488169127.a n = (A068012 n : ℚ)

end A068012

/-!
# A068013: Number of subsets of {1,2,3,...,n} that sum to 0 mod 7.

The programs for A068013, there is no canonical definition to state claims against.
-/

/-! ## A068013.P14186572401201212821

`A068009(A166136(n+5))`
-/

namespace A068013.P14186572401201212821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068009 (A166136 (n + 5)).toNat

end

end A068013.P14186572401201212821

/-! ## A068013.P7803024218685419828

`A068009(eq[6, A002262(n)])`
-/

namespace A068013.P7803024218685419828
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068009 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A068013.P7803024218685419828

/-! ## A068013.P6070360517649935918

`A068009(A133263(n+6)+4)`
-/

namespace A068013.P6070360517649935918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068009 (A133263 (n + 6) + 4).toNat

end

end A068013.P6070360517649935918

/-! ## A068013.P5351960579743284185

`A068009(A000124(n+6)+5)`
-/

namespace A068013.P5351960579743284185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068009 (A000124 (n + 6) + 5).toNat

end

end A068013.P5351960579743284185

/-! ## A068013.P11888013983788951528

`A068009(A000096(n+5)+7)`
-/

namespace A068013.P11888013983788951528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068009 (A000096 (n + 5) + 7).toNat

end

end A068013.P11888013983788951528

/-!
# A068014: Nonprimes n such that 1+phi(n) and -1 + sigma(n) are prime numbers.

The programs for A068014, the canonical program `A068014.P14499668269044334980` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A068014 has offset 1).

The definition of A068014 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3409 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A068014.P14499668269044334980

`filter[A066073(n+1), A296079(#)]`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A068014

/-- `filter[A066073(n+1), A296079(#)]` -/
def P14499668269044334980.Spec : Prop :=
  ∀ n, P14499668269044334980.a n = A068014 (n + 1)

theorem P14499668269044334980.correct : P14499668269044334980.Spec := by
  intro n
  simp only [A068014, Nat.add_sub_cancel]

end A068014

/-! ## A068014.P5205320066464660159

`∩[A039698(n+1), A066073(n+1)]`
-/

namespace A068014.P5205320066464660159
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039698 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066073 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A068014.P5205320066464660159

namespace A068014

/-- `∩[A039698(n+1), A066073(n+1)]` -/
def P5205320066464660159.Spec : Prop :=
  ∀ n, (P5205320066464660159.a n : ℤ) = A068014 (n + 1)

end A068014

/-! ## A068014.P5179966918085595114

`filter[A066071(n+1), A296211(#)]`
-/

namespace A068014.P5179966918085595114
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066071 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A296211 (f1 j).toNat = 1) n)

end

end A068014.P5179966918085595114

namespace A068014

/-- `filter[A066071(n+1), A296211(#)]` -/
def P5179966918085595114.Spec : Prop :=
  ∀ n, P5179966918085595114.a n = A068014 (n + 1)

end A068014

/-! ## A068014.P17751508642898015351

`∩[A066071(n+1), A066073(n+1)]`
-/

namespace A068014.P17751508642898015351
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066071 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066073 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A068014.P17751508642898015351

namespace A068014

/-- `∩[A066071(n+1), A066073(n+1)]` -/
def P17751508642898015351.Spec : Prop :=
  ∀ n, (P17751508642898015351.a n : ℤ) = A068014 (n + 1)

end A068014

/-! ## A068014.P6995712160056426075

`∩[A066071(n+1), A248792(n+1)]`
-/

namespace A068014.P6995712160056426075
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066071 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248792 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A068014.P6995712160056426075

namespace A068014

/-- `∩[A066071(n+1), A248792(n+1)]` -/
def P6995712160056426075.Spec : Prop :=
  ∀ n, (P6995712160056426075.a n : ℤ) = A068014 (n + 1)

end A068014

/-! ## A068014.P14522299054173128393

`eq[A039651(n+1), A296211(n+1)]+1`
-/

namespace A068014.P14522299054173128393
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039651 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296211 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A068014.P14522299054173128393

namespace A068014

/-- `eq[A039651(n+1), A296211(n+1)]+1` -/
def P14522299054173128393.Spec : Prop :=
  ∀ n, (P14522299054173128393.a n : ℤ) = A068014 (n + 1)

end A068014

/-! ## A068014.P12751970892635907813

`A020725(eq[A039651(n+1), A296211(n+1)])`
-/

namespace A068014.P12751970892635907813
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039651 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296211 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A068014.P12751970892635907813

namespace A068014

/-- `A020725(eq[A039651(n+1), A296211(n+1)])` -/
def P12751970892635907813.Spec : Prop :=
  ∀ n, P12751970892635907813.a n = A068014 (n + 1)

end A068014

/-! ## A068014.P4251249921573753774

`A095702(eq[A039651(n+1), A296211(n+1)])`
-/

namespace A068014.P4251249921573753774
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039651 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296211 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095702 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A068014.P4251249921573753774

namespace A068014

/-- `A095702(eq[A039651(n+1), A296211(n+1)])` -/
def P4251249921573753774.Spec : Prop :=
  ∀ n, P4251249921573753774.a n = A068014 (n + 1)

end A068014

/-! ## A068014.P6380124834025525987

`A095702(eq[A039651(n+1)+n, A095702(n)])`
-/

namespace A068014.P6380124834025525987
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039651 (n + 1) + (n : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095702 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095702 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A068014.P6380124834025525987

namespace A068014

/-- `A095702(eq[A039651(n+1)+n, A095702(n)])` -/
def P6380124834025525987.Spec : Prop :=
  ∀ n, P6380124834025525987.a n = A068014 (n + 1)

end A068014

/-! ## A068014.P16402940142283792082

`eq[A039651(n+2), A039652(A039655(n+2))]+2`
-/

namespace A068014.P16402940142283792082
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039651 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039652 (A039655 (n + 2)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 2

end

end A068014.P16402940142283792082

namespace A068014

/-- `eq[A039651(n+2), A039652(A039655(n+2))]+2` -/
def P16402940142283792082.Spec : Prop :=
  ∀ n, (P16402940142283792082.a n : ℤ) = A068014 (n + 1)

end A068014

/-!
# A068015: Gaps between non-twin primes.

The programs for A068015, the canonical program `A068015.P16167893793263978770` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A068015 has offset 1).

The definition of A068015 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007510, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A068015.P16167893793263978770

`A007510(n+2)-A007510(n+1)`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A068015

/-- `A007510(n+2)-A007510(n+1)` -/
def P16167893793263978770.Spec : Prop :=
  ∀ n, P16167893793263978770.a n = A068015 (n + 1)

theorem P16167893793263978770.correct : P16167893793263978770.Spec := by
  intro n
  simp only [A068015, Nat.add_sub_cancel]

end A068015

/-! ## A068015.P9413764156800983775

`A085434(n+1)-A163654(n+1)`
-/

namespace A068015.P9413764156800983775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085434 (n + 1) - A163654 (n + 1)

end

end A068015.P9413764156800983775

namespace A068015

/-- `A085434(n+1)-A163654(n+1)` -/
def P9413764156800983775.Spec : Prop :=
  ∀ n, P9413764156800983775.a n = A068015 (n + 1)

theorem P9413764156800983775.correct : P9413764156800983775.Spec := by
  intro n
  simp only [A068015, Nat.add_sub_cancel, A068015.P9413764156800983775.a, A068015.P16167893793263978770.a, A007510, A007510.P9655898748526012835.f1, A007510.P9655898748526012835.f2, A007510.P9655898748526012835.a, A085434, A085434.P6643677055624857651.a, A163654, A163654.P17404434252909917711.a, A025584, A025584.P1747553391340850671.a, A067774, A067774.P9573617290434745889.f1, A067774.P9573617290434745889.a, A134797, A134797.P10926386183801791278.a, A001248, A001248.P16278241061688229202.a, A008837, A008837.P8759727606906235899.a, A049643, A049643.P15143516310095013308.a, A156828, A156828.P15006888903266838988.a, A353464, A353464.P7528674575556997429.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A000217, A000217.P10269402890581615239.a, A049641, A049641.P593643033419943837.f1, A049641.P593643033419943837.a, A065164, A065164.P11898003082546795665.a, A151800, A151800.P4570031678714564115.a, A353463, A353463.P14904150347216604516.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A068015

/-! ## A068015.P4608121576624436080

`2*A134797(n+1)-A163654(n+1)`
-/

namespace A068015.P4608121576624436080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A134797 (n + 1) - A163654 (n + 1)

end

end A068015.P4608121576624436080

namespace A068015

/-- `2*A134797(n+1)-A163654(n+1)` -/
def P4608121576624436080.Spec : Prop :=
  ∀ n, P4608121576624436080.a n = A068015 (n + 1)

theorem P4608121576624436080.correct : P4608121576624436080.Spec := by
  intro n
  simp only [A068015, Nat.add_sub_cancel, A068015.P4608121576624436080.a, A068015.P16167893793263978770.a, A007510, A007510.P9655898748526012835.f1, A007510.P9655898748526012835.f2, A007510.P9655898748526012835.a, A134797, A134797.P10926386183801791278.a, A163654, A163654.P17404434252909917711.a, A025584, A025584.P1747553391340850671.a, A067774, A067774.P9573617290434745889.f1, A067774.P9573617290434745889.a, A001248, A001248.P16278241061688229202.a, A008837, A008837.P8759727606906235899.a, A049643, A049643.P15143516310095013308.a, A156828, A156828.P15006888903266838988.a, A353464, A353464.P7528674575556997429.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A000217, A000217.P10269402890581615239.a, A049641, A049641.P593643033419943837.f1, A049641.P593643033419943837.a, A065164, A065164.P11898003082546795665.a, A151800, A151800.P4570031678714564115.a, A353463, A353463.P14904150347216604516.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A068015

/-! ## A068015.P8112801005447513428

`Δ[A007510(n+1)]`
-/

namespace A068015.P8112801005447513428
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007510 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A068015.P8112801005447513428

namespace A068015

/-- `Δ[A007510(n+1)]` -/
def P8112801005447513428.Spec : Prop :=
  ∀ n, P8112801005447513428.a n = A068015 (n + 1)

theorem P8112801005447513428.correct : P8112801005447513428.Spec := by
  intro n
  simp only [A068015, Nat.add_sub_cancel, A068015.P8112801005447513428.f1, A068015.P8112801005447513428.a, A068015.P16167893793263978770.a, SequenceMachineLib.memo_apply]

end A068015

/-! ## A068015.P3650174111838697734

`Δ[A167277(n+1)]`
-/

namespace A068015.P3650174111838697734
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167277 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A068015.P3650174111838697734

namespace A068015

/-- `Δ[A167277(n+1)]` -/
def P3650174111838697734.Spec : Prop :=
  ∀ n, P3650174111838697734.a n = A068015 (n + 1)

theorem P3650174111838697734.correct : P3650174111838697734.Spec := by
  intro n
  simp only [A068015, Nat.add_sub_cancel, A068015.P3650174111838697734.f1, A068015.P3650174111838697734.a, A068015.P16167893793263978770.a, A007510, A007510.P9655898748526012835.f1, A007510.P9655898748526012835.f2, A007510.P9655898748526012835.a, A167277, A167277.P12308341413257393222.a, A025584, A025584.P1747553391340850671.a, A067774, A067774.P9573617290434745889.f1, A067774.P9573617290434745889.a, A001248, A001248.P16278241061688229202.a, A008837, A008837.P8759727606906235899.a, A049643, A049643.P15143516310095013308.a, A156828, A156828.P15006888903266838988.a, A353464, A353464.P7528674575556997429.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A000217, A000217.P10269402890581615239.a, A049641, A049641.P593643033419943837.f1, A049641.P593643033419943837.a, A065164, A065164.P11898003082546795665.a, A151800, A151800.P4570031678714564115.a, A353463, A353463.P14904150347216604516.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A068015

/-! ## A068015.P2582693020016175277

`Δ[A167397(n+1)]+1`
-/

namespace A068015.P2582693020016175277
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167397 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + 1

end

end A068015.P2582693020016175277

namespace A068015

/-- `Δ[A167397(n+1)]+1` -/
def P2582693020016175277.Spec : Prop :=
  ∀ n, P2582693020016175277.a n = A068015 (n + 1)

theorem P2582693020016175277.correct : P2582693020016175277.Spec := by
  intro n
  simp only [A068015, Nat.add_sub_cancel, A068015.P2582693020016175277.f1, A068015.P2582693020016175277.a, A068015.P16167893793263978770.a, A007510, A007510.P9655898748526012835.f1, A007510.P9655898748526012835.f2, A007510.P9655898748526012835.a, A167397, A167397.P6695962093421447498.a, A025584, A025584.P1747553391340850671.a, A067774, A067774.P9573617290434745889.f1, A067774.P9573617290434745889.a, A001248, A001248.P16278241061688229202.a, A008837, A008837.P8759727606906235899.a, A049643, A049643.P15143516310095013308.a, A156828, A156828.P15006888903266838988.a, A353464, A353464.P7528674575556997429.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A000217, A000217.P10269402890581615239.a, A049641, A049641.P593643033419943837.f1, A049641.P593643033419943837.a, A065164, A065164.P11898003082546795665.a, A151800, A151800.P4570031678714564115.a, A353463, A353463.P14904150347216604516.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A068015

/-! ## A068015.P10618414628522917442

`A167277(n+2)-A167277(n+1)`
-/

namespace A068015.P10618414628522917442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167277 (n + 2) - A167277 (n + 1)

end

end A068015.P10618414628522917442

namespace A068015

/-- `A167277(n+2)-A167277(n+1)` -/
def P10618414628522917442.Spec : Prop :=
  ∀ n, P10618414628522917442.a n = A068015 (n + 1)

theorem P10618414628522917442.correct : P10618414628522917442.Spec := by
  intro n
  simp only [A068015, Nat.add_sub_cancel, A068015.P10618414628522917442.a, A068015.P16167893793263978770.a, A007510, A007510.P9655898748526012835.f1, A007510.P9655898748526012835.f2, A007510.P9655898748526012835.a, A167277, A167277.P12308341413257393222.a, A025584, A025584.P1747553391340850671.a, A067774, A067774.P9573617290434745889.f1, A067774.P9573617290434745889.a, A001248, A001248.P16278241061688229202.a, A008837, A008837.P8759727606906235899.a, A049643, A049643.P15143516310095013308.a, A156828, A156828.P15006888903266838988.a, A353464, A353464.P7528674575556997429.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A000217, A000217.P10269402890581615239.a, A049641, A049641.P593643033419943837.f1, A049641.P593643033419943837.a, A065164, A065164.P11898003082546795665.a, A151800, A151800.P4570031678714564115.a, A353463, A353463.P14904150347216604516.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A068015

/-! ## A068015.P5589542190538678488

`Δ[p?[A167706(n+1)]]`
-/

namespace A068015.P5589542190538678488
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167706 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A068015.P5589542190538678488

namespace A068015

/-- `Δ[p?[A167706(n+1)]]` -/
def P5589542190538678488.Spec : Prop :=
  ∀ n, P5589542190538678488.a n = A068015 (n + 1)

end A068015

/-! ## A068015.P338064337447275473

`A134797(n+1)-A000040(A176656(n+1))`
-/

namespace A068015.P338064337447275473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134797 (n + 1) - A000040 (A176656 (n + 1)).toNat

end

end A068015.P338064337447275473

namespace A068015

/-- `A134797(n+1)-A000040(A176656(n+1))` -/
def P338064337447275473.Spec : Prop :=
  ∀ n, P338064337447275473.a n = A068015 (n + 1)

end A068015

/-! ## A068015.P14344465834479355294

`A134797(n+1)-p?[A062729(n+1)]`
-/

namespace A068015.P14344465834479355294
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062729 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134797 (n + 1) - f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A068015.P14344465834479355294

namespace A068015

/-- `A134797(n+1)-p?[A062729(n+1)]` -/
def P14344465834479355294.Spec : Prop :=
  ∀ n, P14344465834479355294.a n = A068015 (n + 1)

end A068015

/-! ## A068015.P4916590607971037135

`Δ[p?[A062729(n+1)]]`
-/

namespace A068015.P4916590607971037135
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062729 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A068015.P4916590607971037135

namespace A068015

/-- `Δ[p?[A062729(n+1)]]` -/
def P4916590607971037135.Spec : Prop :=
  ∀ n, P4916590607971037135.a n = A068015 (n + 1)

end A068015

/-! ## A068015.P9979620069787148121

`A134797(n+1)-record[A006530(A176312(n+1))]`
-/

namespace A068015.P9979620069787148121
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A176312 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134797 (n + 1) - f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A068015.P9979620069787148121

namespace A068015

/-- `A134797(n+1)-record[A006530(A176312(n+1))]` -/
def P9979620069787148121.Spec : Prop :=
  ∀ n, P9979620069787148121.a n = A068015 (n + 1)

end A068015

/-! ## A068015.P17061481799491123838

`Δ[record[A014963(A062729(n+2))]]`
-/

namespace A068015.P17061481799491123838
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A062729 (n + 2)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A068015.P17061481799491123838

namespace A068015

/-- `Δ[record[A014963(A062729(n+2))]]` -/
def P17061481799491123838.Spec : Prop :=
  ∀ n, P17061481799491123838.a n = A068015 (n + 1)

end A068015

/-!
# A068016: Lonely non-twin primes: non-twins sandwiched between two pairs of twins.

The programs for A068016, the canonical program `A068016.P14808637295794982073` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A068016 has offset 1).

The definition of A068016 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 987 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A068016.P14808637295794982073

`A088175(A242913(n+1))`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A068016

/-- `A088175(A242913(n+1))` -/
def P14808637295794982073.Spec : Prop :=
  ∀ n, P14808637295794982073.a n = A068016 (n + 1)

theorem P14808637295794982073.correct : P14808637295794982073.Spec := by
  intro n
  simp only [A068016, Nat.add_sub_cancel]

end A068016

/-! ## A068016.P4166353003810232765

`A088176(A242913(n+1)-1)`
-/

namespace A068016.P4166353003810232765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088176 (A242913 (n + 1) - 1).toNat

end

end A068016.P4166353003810232765

namespace A068016

/-- `A088176(A242913(n+1)-1)` -/
def P4166353003810232765.Spec : Prop :=
  ∀ n, P4166353003810232765.a n = A068016 (n + 1)

end A068016

/-! ## A068016.P13430165714453477320

`A088175(eq[1, A048614(n+1)]+2)`
-/

namespace A068016.P13430165714453477320
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048614 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088175 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2)

end

end A068016.P13430165714453477320

namespace A068016

/-- `A088175(eq[1, A048614(n+1)]+2)` -/
def P13430165714453477320.Spec : Prop :=
  ∀ n, P13430165714453477320.a n = A068016 (n + 1)

end A068016

/-! ## A068016.P17933341406040091451

`A088175(eq[3, A027833(n+1)]+2)`
-/

namespace A068016.P17933341406040091451
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027833 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088175 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2)

end

end A068016.P17933341406040091451

namespace A068016

/-- `A088175(eq[3, A027833(n+1)]+2)` -/
def P17933341406040091451.Spec : Prop :=
  ∀ n, P17933341406040091451.a n = A068016 (n + 1)

end A068016

/-! ## A068016.P3727044357515450488

`A088175(eq[3, A242767(n+2)]+1)`
-/

namespace A068016.P3727044357515450488
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242767 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088175 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A068016.P3727044357515450488

namespace A068016

/-- `A088175(eq[3, A242767(n+2)]+1)` -/
def P3727044357515450488.Spec : Prop :=
  ∀ n, P3727044357515450488.a n = A068016 (n + 1)

end A068016

/-! ## A068016.P11356784384154093736

`p?[gcd(A088175(n+2), A088176(n+1))]`
-/

namespace A068016.P11356784384154093736
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A088175 (n + 2)) (A088176 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A068016.P11356784384154093736

namespace A068016

/-- `p?[gcd(A088175(n+2), A088176(n+1))]` -/
def P11356784384154093736.Spec : Prop :=
  ∀ n, (P11356784384154093736.a n : ℤ) = A068016 (n + 1)

end A068016

/-! ## A068016.P15671695550809733544

`A073832(A242913(n+1)-1)`
-/

namespace A068016.P15671695550809733544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073832 (A242913 (n + 1) - 1).toNat

end

end A068016.P15671695550809733544

namespace A068016

/-- `A073832(A242913(n+1)-1)` -/
def P15671695550809733544.Spec : Prop :=
  ∀ n, P15671695550809733544.a n = A068016 (n + 1)

end A068016

/-! ## A068016.P13067577785805077581

`A045319(A105410(n+2))`
-/

namespace A068016.P13067577785805077581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045319 (A105410 (n + 2)).toNat

end

end A068016.P13067577785805077581

namespace A068016

/-- `A045319(A105410(n+2))` -/
def P13067577785805077581.Spec : Prop :=
  ∀ n, P13067577785805077581.a n = A068016 (n + 1)

end A068016

/-! ## A068016.P3366348016022910241

`A000040(A105410(n+2)+1)`
-/

namespace A068016.P3366348016022910241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A105410 (n + 2) + 1).toNat

end

end A068016.P3366348016022910241

namespace A068016

/-- `A000040(A105410(n+2)+1)` -/
def P3366348016022910241.Spec : Prop :=
  ∀ n, P3366348016022910241.a n = A068016 (n + 1)

end A068016

/-! ## A068016.P4120700227280785136

`A008578(A105410(n+2)+2)`
-/

namespace A068016.P4120700227280785136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (A105410 (n + 2) + 2).toNat

end

end A068016.P4120700227280785136

namespace A068016

/-- `A008578(A105410(n+2)+2)` -/
def P4120700227280785136.Spec : Prop :=
  ∀ n, P4120700227280785136.a n = A068016 (n + 1)

end A068016

/-! ## A068016.P16054793446281869328

`A151800(A089629(n+1)+2)`
-/

namespace A068016.P16054793446281869328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 (A089629 (n + 1) + 2).toNat

end

end A068016.P16054793446281869328

namespace A068016

/-- `A151800(A089629(n+1)+2)` -/
def P16054793446281869328.Spec : Prop :=
  ∀ n, P16054793446281869328.a n = A068016 (n + 1)

end A068016

/-! ## A068016.P15025704564657066914

`A151800(A151800(A089629(n+1)))`
-/

namespace A068016.P15025704564657066914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 (A151800 (A089629 (n + 1)).toNat).toNat

end

end A068016.P15025704564657066914

namespace A068016

/-- `A151800(A151800(A089629(n+1)))` -/
def P15025704564657066914.Spec : Prop :=
  ∀ n, P15025704564657066914.a n = A068016 (n + 1)

end A068016

/-! ## A068016.P13672235630386797231

`A000040(A000720(A089629(n+1))+2)`
-/

namespace A068016.P13672235630386797231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A000720 (A089629 (n + 1)).toNat + 2).toNat

end

end A068016.P13672235630386797231

namespace A068016

/-- `A000040(A000720(A089629(n+1))+2)` -/
def P13672235630386797231.Spec : Prop :=
  ∀ n, P13672235630386797231.a n = A068016 (n + 1)

end A068016

/-! ## A068016.P16318866071180934958

`A008578(A000720(A089629(n+1))+3)`
-/

namespace A068016.P16318866071180934958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (A000720 (A089629 (n + 1)).toNat + 3).toNat

end

end A068016.P16318866071180934958

namespace A068016

/-- `A008578(A000720(A089629(n+1))+3)` -/
def P16318866071180934958.Spec : Prop :=
  ∀ n, P16318866071180934958.a n = A068016 (n + 1)

end A068016

/-! ## A068016.P173020712994234861

`∩[A073832(n+1), A153740(n+1)]`
-/

namespace A068016.P173020712994234861
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073832 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153740 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A068016.P173020712994234861

namespace A068016

/-- `∩[A073832(n+1), A153740(n+1)]` -/
def P173020712994234861.Spec : Prop :=
  ∀ n, (P173020712994234861.a n : ℤ) = A068016 (n + 1)

end A068016

/-! ## A068016.P11155796840224651235

`∩[A088176(n+1), A144550(n+1)]`
-/

namespace A068016.P11155796840224651235
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088176 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144550 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A068016.P11155796840224651235

namespace A068016

/-- `∩[A088176(n+1), A144550(n+1)]` -/
def P11155796840224651235.Spec : Prop :=
  ∀ n, (P11155796840224651235.a n : ℤ) = A068016 (n + 1)

end A068016

/-! ## A068016.P1112280685504076529

`∩[A088175(n+1), A153740(n+1)]`
-/

namespace A068016.P1112280685504076529
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088175 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153740 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A068016.P1112280685504076529

namespace A068016

/-- `∩[A088175(n+1), A153740(n+1)]` -/
def P1112280685504076529.Spec : Prop :=
  ∀ n, (P1112280685504076529.a n : ℤ) = A068016 (n + 1)

end A068016

/-! ## A068016.P8532092838207124884

`∩[A144550(n+1), A153740(n+1)]`
-/

namespace A068016.P8532092838207124884
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144550 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153740 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A068016.P8532092838207124884

namespace A068016

/-- `∩[A144550(n+1), A153740(n+1)]` -/
def P8532092838207124884.Spec : Prop :=
  ∀ n, (P8532092838207124884.a n : ℤ) = A068016 (n + 1)

end A068016

/-! ## A068016.P943654758798410527

`∩[A144550(n+1), A227064(n+1)]`
-/

namespace A068016.P943654758798410527
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144550 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227064 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A068016.P943654758798410527

namespace A068016

/-- `∩[A144550(n+1), A227064(n+1)]` -/
def P943654758798410527.Spec : Prop :=
  ∀ n, (P943654758798410527.a n : ℤ) = A068016 (n + 1)

end A068016

/-! ## A068016.P5876053355770531180

`∩[A153740(n+1), A227064(n+1)]`
-/

namespace A068016.P5876053355770531180
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153740 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227064 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A068016.P5876053355770531180

namespace A068016

/-- `∩[A153740(n+1), A227064(n+1)]` -/
def P5876053355770531180.Spec : Prop :=
  ∀ n, (P5876053355770531180.a n : ℤ) = A068016 (n + 1)

end A068016

/-!
# A068017: Composite n such that sigma(n) - 1 and sigma(n) + 1 are twin primes.

The programs for A068017, the canonical program `A068017.P16214505298946191943` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A068017 has offset 1).

The definition of A068017 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2491 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A068017.P15063150637682620297

`filter[A072282(n+1), A005171(#)]`
-/

namespace A068017.P15063150637682620297
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072282 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A005171 (f1 j).toNat = 1) n)

end

end A068017.P15063150637682620297

namespace A068017

/-- `filter[A072282(n+1), A005171(#)]` -/
def P15063150637682620297.Spec : Prop :=
  ∀ n, P15063150637682620297.a n = A068017 (n + 1)

end A068017

/-! ## A068017.P8544258362866376442

`filter[A072282(n+1), A066247(#)]`
-/

namespace A068017.P8544258362866376442
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072282 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A066247 (f1 j).toNat = 1) n)

end

end A068017.P8544258362866376442

namespace A068017

/-- `filter[A072282(n+1), A066247(#)]` -/
def P8544258362866376442.Spec : Prop :=
  ∀ n, P8544258362866376442.a n = A068017 (n + 1)

end A068017

/-! ## A068017.P13786074983192574606

`filter[A072282(n+1), A202238(#)]`
-/

namespace A068017.P13786074983192574606
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072282 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A202238 (f1 j).toNat = 1) n)

end

end A068017.P13786074983192574606

namespace A068017

/-- `filter[A072282(n+1), A202238(#)]` -/
def P13786074983192574606.Spec : Prop :=
  ∀ n, P13786074983192574606.a n = A068017 (n + 1)

end A068017

/-! ## A068017.P4734848724698732622

`filter[A072282(n+1), A283265(#)]`
-/

namespace A068017.P4734848724698732622
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072282 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A283265 (f1 j).toNat = 1) n)

end

end A068017.P4734848724698732622

namespace A068017

/-- `filter[A072282(n+1), A283265(#)]` -/
def P4734848724698732622.Spec : Prop :=
  ∀ n, P4734848724698732622.a n = A068017 (n + 1)

end A068017

/-! ## A068017.P16214505298946191943

`filter[A066073(n+1), A296212(#)]`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A068017

/-- `filter[A066073(n+1), A296212(#)]` -/
def P16214505298946191943.Spec : Prop :=
  ∀ n, P16214505298946191943.a n = A068017 (n + 1)

theorem P16214505298946191943.correct : P16214505298946191943.Spec := by
  intro n
  simp only [A068017, Nat.add_sub_cancel]

end A068017

/-! ## A068017.P4954745084051249468

`∩[A066073(n+1), A072282(n+1)]`
-/

namespace A068017.P4954745084051249468
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066073 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072282 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A068017.P4954745084051249468

namespace A068017

/-- `∩[A066073(n+1), A072282(n+1)]` -/
def P4954745084051249468.Spec : Prop :=
  ∀ n, (P4954745084051249468.a n : ℤ) = A068017 (n + 1)

end A068017

/-! ## A068017.P3518648160064416266

`∩[A065512(n+1), A066073(n+1)]`
-/

namespace A068017.P3518648160064416266
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065512 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066073 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A068017.P3518648160064416266

namespace A068017

/-- `∩[A065512(n+1), A066073(n+1)]` -/
def P3518648160064416266.Spec : Prop :=
  ∀ n, (P3518648160064416266.a n : ℤ) = A068017 (n + 1)

end A068017

/-! ## A068017.P3255850310019800313

`filter[A072282(n+1), A174898(#)]`
-/

namespace A068017.P3255850310019800313
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072282 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A174898 (f1 j).toNat = 1) n)

end

end A068017.P3255850310019800313

namespace A068017

/-- `filter[A072282(n+1), A174898(#)]` -/
def P3255850310019800313.Spec : Prop :=
  ∀ n, P3255850310019800313.a n = A068017 (n + 1)

end A068017

/-! ## A068017.P13096745583727579112

`∩[A002808(n+1), A072282(n+1)]`
-/

namespace A068017.P13096745583727579112
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002808 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072282 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A068017.P13096745583727579112

namespace A068017

/-- `∩[A002808(n+1), A072282(n+1)]` -/
def P13096745583727579112.Spec : Prop :=
  ∀ n, (P13096745583727579112.a n : ℤ) = A068017 (n + 1)

end A068017

/-! ## A068017.P2084428091658889984

`∩[A018252(n+1), A072282(n+1)]`
-/

namespace A068017.P2084428091658889984
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072282 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A068017.P2084428091658889984

namespace A068017

/-- `∩[A018252(n+1), A072282(n+1)]` -/
def P2084428091658889984.Spec : Prop :=
  ∀ n, (P2084428091658889984.a n : ℤ) = A068017 (n + 1)

end A068017

/-! ## A068017.P899861377458458397

`∩[A072282(n+1), A141468(n+1)]`
-/

namespace A068017.P899861377458458397
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072282 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141468 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A068017.P899861377458458397

namespace A068017

/-- `∩[A072282(n+1), A141468(n+1)]` -/
def P899861377458458397.Spec : Prop :=
  ∀ n, (P899861377458458397.a n : ℤ) = A068017 (n + 1)

end A068017

/-! ## A068017.P8369194111033051382

`∩[A072282(n+1), A089229(n+1)]`
-/

namespace A068017.P8369194111033051382
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072282 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089229 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A068017.P8369194111033051382

namespace A068017

/-- `∩[A072282(n+1), A089229(n+1)]` -/
def P8369194111033051382.Spec : Prop :=
  ∀ n, (P8369194111033051382.a n : ℤ) = A068017 (n + 1)

end A068017

/-! ## A068017.P230037188900798890

`∩[A024619(n+1), A072282(n+1)]`
-/

namespace A068017.P230037188900798890
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024619 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072282 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A068017.P230037188900798890

namespace A068017

/-- `∩[A024619(n+1), A072282(n+1)]` -/
def P230037188900798890.Spec : Prop :=
  ∀ n, (P230037188900798890.a n : ℤ) = A068017 (n + 1)

end A068017

/-! ## A068017.P4619767484013177607

`∩[A072282(n+1), A361102(n+1)]`
-/

namespace A068017.P4619767484013177607
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072282 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361102 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A068017.P4619767484013177607

namespace A068017

/-- `∩[A072282(n+1), A361102(n+1)]` -/
def P4619767484013177607.Spec : Prop :=
  ∀ n, (P4619767484013177607.a n : ℤ) = A068017 (n + 1)

end A068017

/-! ## A068017.P2438182016908300365

`∩[A072282(n+1), A387335(n+1)]`
-/

namespace A068017.P2438182016908300365
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072282 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387335 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A068017.P2438182016908300365

namespace A068017

/-- `∩[A072282(n+1), A387335(n+1)]` -/
def P2438182016908300365.Spec : Prop :=
  ∀ n, (P2438182016908300365.a n : ℤ) = A068017 (n + 1)

end A068017

/-! ## A068017.P10236196695747435996

`∩[A072282(n+1), A139118(n+1)]`
-/

namespace A068017.P10236196695747435996
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072282 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139118 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A068017.P10236196695747435996

namespace A068017

/-- `∩[A072282(n+1), A139118(n+1)]` -/
def P10236196695747435996.Spec : Prop :=
  ∀ n, (P10236196695747435996.a n : ℤ) = A068017 (n + 1)

end A068017

/-! ## A068017.P7682823537463082387

`∩[A072282(n+1), A268388(n+1)]`
-/

namespace A068017.P7682823537463082387
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072282 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268388 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A068017.P7682823537463082387

namespace A068017

/-- `∩[A072282(n+1), A268388(n+1)]` -/
def P7682823537463082387.Spec : Prop :=
  ∀ n, (P7682823537463082387.a n : ℤ) = A068017 (n + 1)

end A068017

/-! ## A068017.P3185949403409311495

`∩[A072282(n+1), A080257(n+1)]`
-/

namespace A068017.P3185949403409311495
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072282 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080257 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A068017.P3185949403409311495

namespace A068017

/-- `∩[A072282(n+1), A080257(n+1)]` -/
def P3185949403409311495.Spec : Prop :=
  ∀ n, (P3185949403409311495.a n : ℤ) = A068017 (n + 1)

end A068017

/-! ## A068017.P1197962014384532982

`∩[A056653(n+1), A072282(n+1)]`
-/

namespace A068017.P1197962014384532982
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056653 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072282 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A068017.P1197962014384532982

namespace A068017

/-- `∩[A056653(n+1), A072282(n+1)]` -/
def P1197962014384532982.Spec : Prop :=
  ∀ n, (P1197962014384532982.a n : ℤ) = A068017 (n + 1)

end A068017

/-! ## A068017.P11407885540444836957

`∩[A062973(n+1), A072282(n+1)]`
-/

namespace A068017.P11407885540444836957
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062973 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072282 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A068017.P11407885540444836957

namespace A068017

/-- `∩[A062973(n+1), A072282(n+1)]` -/
def P11407885540444836957.Spec : Prop :=
  ∀ n, (P11407885540444836957.a n : ℤ) = A068017 (n + 1)

end A068017

/-!
# A068018: Number of fixed points in all 132- and 213-avoiding permutations of {1,2,...,n} (these are permutations with runs consisting of consecutive integers).

The programs for A068018, the canonical program `A068018.P7612174996434742927` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A068018 has offset 0).

The definition of A068018 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A068018.P7612174996434742927

`2^n/4-(-2)^n/36+2*n/3-2/9`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A068018

/-- `2^n/4-(-2)^n/36+2*n/3-2/9` -/
def P7612174996434742927.Spec : Prop :=
  ∀ n, P7612174996434742927.a n = (A068018 n : ℚ)

end A068018

/-! ## A068018.P5680289692596423291

`∑[4*a(n-2)-2]` with `a(0)=0, a(1)=1, a(2)=1`
-/

namespace A068018.P5680289692596423291
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 1] fun n f1 =>
  4 * f1 (n - 2) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A068018.P5680289692596423291

namespace A068018

/-- `∑[4*a(n-2)-2]` -/
def P5680289692596423291.Spec : Prop :=
  ∀ n, P5680289692596423291.a n = A068018 n

end A068018

/-! ## A068018.P2445029258976551065

`2*(2*a(n-2)+3-n)` with `a(0)=0, a(1)=1`
-/

namespace A068018.P2445029258976551065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  2 * (2 * a (n - 2) + (3 - (n : ℤ)))

end

end A068018.P2445029258976551065

namespace A068018

/-- `2*(2*a(n-2)+3-n)` -/
def P2445029258976551065.Spec : Prop :=
  ∀ n, P2445029258976551065.a n = A068018 n

end A068018

/-! ## A068018.P18186850382625273120

`2*(3-(n-2*a(n-2)))` with `a(0)=0, a(1)=1`
-/

namespace A068018.P18186850382625273120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  2 * (3 - ((n : ℤ) - 2 * a (n - 2)))

end

end A068018.P18186850382625273120

namespace A068018

/-- `2*(3-(n-2*a(n-2)))` -/
def P18186850382625273120.Spec : Prop :=
  ∀ n, P18186850382625273120.a n = A068018 n

end A068018

/-! ## A068018.P11356576086779854659

`∑[A011782(n)-A061547(n)]`
-/

namespace A068018.P11356576086779854659
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 n - A061547 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A068018.P11356576086779854659

namespace A068018

/-- `∑[A011782(n)-A061547(n)]` -/
def P11356576086779854659.Spec : Prop :=
  ∀ n, P11356576086779854659.a n = A068018 n

end A068018

/-!
# A068019: Composite n such that both 1 + phi(n) and -1 + phi(n) are primes, i.e., phi(n) is the middle term between twin primes (A014574).

The programs for A068019, there is no canonical definition to state claims against.
-/

/-! ## A068019.P11021275531545046461

`filter[A072281(n+1), A005171(#)]`
-/

namespace A068019.P11021275531545046461
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072281 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A005171 (f1 j).toNat = 1) n)

end

end A068019.P11021275531545046461

/-! ## A068019.P10064757218409720675

`filter[A072281(n+1), A066247(#)]`
-/

namespace A068019.P10064757218409720675
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072281 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A066247 (f1 j).toNat = 1) n)

end

end A068019.P10064757218409720675

/-! ## A068019.P14988074901112746998

`filter[A072281(n+1), A283265(#)]`
-/

namespace A068019.P14988074901112746998
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072281 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A283265 (f1 j).toNat = 1) n)

end

end A068019.P14988074901112746998

/-! ## A068019.P17983612206250786087

`filter[A078893(n+1), A296079(#)]`
-/

namespace A068019.P17983612206250786087
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078893 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A296079 (f1 j).toNat = 1) n)

end

end A068019.P17983612206250786087

/-! ## A068019.P1044258227026878563

`∩[A039698(n+1), A078893(n+1)]`
-/

namespace A068019.P1044258227026878563
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039698 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078893 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A068019.P1044258227026878563

/-! ## A068019.P9810051203786735873

`∩[A072281(n+1), A078893(n+1)]`
-/

namespace A068019.P9810051203786735873
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072281 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078893 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A068019.P9810051203786735873

/-! ## A068019.P12784651662871747805

`∩[A066071(n+1), A072281(n+1)]`
-/

namespace A068019.P12784651662871747805
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066071 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072281 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A068019.P12784651662871747805

/-! ## A068019.P11686669831226207815

`∩[A066071(n+1), A078892(n+1)]`
-/

namespace A068019.P11686669831226207815
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066071 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078892 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A068019.P11686669831226207815

/-! ## A068019.P4178802185446170750

`∩[A066071(n+1), A078893(n+1)]`
-/

namespace A068019.P4178802185446170750
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066071 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078893 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A068019.P4178802185446170750

/-! ## A068019.P8317546829417086190

`∩[A002808(n+1), A072281(n+1)]`
-/

namespace A068019.P8317546829417086190
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002808 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072281 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A068019.P8317546829417086190

/-! ## A068019.P3782355774003900179

`∩[A018252(n+1), A072281(n+1)]`
-/

namespace A068019.P3782355774003900179
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072281 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A068019.P3782355774003900179

/-! ## A068019.P5112234289041882272

`∩[A072281(n+1), A141468(n+1)]`
-/

namespace A068019.P5112234289041882272
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072281 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141468 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A068019.P5112234289041882272

/-! ## A068019.P9468061481167421710

`∩[A072281(n+1), A296214(n+1)]`
-/

namespace A068019.P9468061481167421710
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072281 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296214 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A068019.P9468061481167421710

/-! ## A068019.P18277239839097181403

`∩[A056653(n+1), A072281(n+1)]`
-/

namespace A068019.P18277239839097181403
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056653 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072281 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A068019.P18277239839097181403

/-! ## A068019.P330652855772669556

`∩[A065090(n+1), A072281(n+1)]`
-/

namespace A068019.P330652855772669556
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065090 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072281 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A068019.P330652855772669556

/-! ## A068019.P4967558975176191231

`∩[A072281(n+1), A171581(n+1)]`
-/

namespace A068019.P4967558975176191231
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072281 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171581 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A068019.P4967558975176191231

/-! ## A068019.P5341032531780512806

`∩[A072281(n+1), A173905(n+1)]`
-/

namespace A068019.P5341032531780512806
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072281 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173905 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A068019.P5341032531780512806

/-! ## A068019.P17046681999722206514

`A026239(p?[A026239(A072281(n+1))])`
-/

namespace A068019.P17046681999722206514
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026239 (A072281 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026239 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A068019.P17046681999722206514

/-!
# A068020: a(n) = Z(S_m; sigma[1](n), sigma[2](n),..., sigma[m](n)) where Z(S_m; x_1,x_2,...,x_m) is the cycle index of the symmetric group S_m and sigma[k](n) is the sum of k-th powers of divisors of n; m=3.

The programs for A068020, there is no canonical definition to state claims against.
-/

/-! ## A068020.P17296521403843688092

`A067817(n+1)+∑{d}[n+1, #²]*∑{d}[n+1, #]`
-/

namespace A068020.P17296521403843688092
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067817 (n + 1) + (((∑ d ∈ Nat.divisors (f1 n), d ^ 2) * (∑ d ∈ Nat.divisors (f2 n), d) : ℕ) : ℤ)

end

end A068020.P17296521403843688092

/-! ## A068020.P8840997205351834280

`A379812(n+1)+A067817(n+1)`
-/

namespace A068020.P8840997205351834280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379812 (n + 1) + A067817 (n + 1)

end

end A068020.P8840997205351834280

/-! ## A068020.P6213150294862683091

`A067817(n+1)+A000203(n+1)*A001157(n+1)`
-/

namespace A068020.P6213150294862683091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067817 (n + 1) + A000203 (n + 1) * A001157 (n + 1)

end

end A068020.P6213150294862683091

/-! ## A068020.P9885175068648551158

`A069939(A037278(n+1))`
-/

namespace A068020.P9885175068648551158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069939 (A037278 (n + 1)).toNat

end

end A068020.P9885175068648551158

/-! ## A068020.P9206976209963008319

`A069939(A176558(n+1))`
-/

namespace A068020.P9206976209963008319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069939 (A176558 (n + 1)).toNat

end

end A068020.P9206976209963008319

/-!
# A068028: Decimal expansion of 22/7.

The programs for A068028, the canonical program `A068028.P7650815687401952447` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A068028 has offset 1).

The definition of A068028 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A068028.P7650815687401952447

`9-a(n-3)` with `a(0)=3, a(1)=1, a(2)=4, a(3)=2`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A068028

/-- `9-a(n-3)` -/
def P7650815687401952447.Spec : Prop :=
  ∀ n, P7650815687401952447.a n = A068028 (n + 1)

theorem P7650815687401952447.correct : P7650815687401952447.Spec := by
  intro n
  simp only [A068028, Nat.add_sub_cancel]

end A068028

/-!
# A068029: Table of sorted score sequences (including duplications), with A000571 giving the number of score sequences of length n.

The programs for A068029, there is no canonical definition to state claims against.
-/

/-! ## A068029.P1847323252191038962

`A324966(A287381(n)+A030679(n+1))`
-/

namespace A068029.P1847323252191038962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324966 (A287381 n + A030679 (n + 1)).toNat

end

end A068029.P1847323252191038962

/-! ## A068029.P7802654831028361479

`A112689(and(A039653(n), A237362(n+1)))`
-/

namespace A068029.P7802654831028361479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112689 (Int.land (A039653 n) (A237362 (n + 1))).toNat

end

end A068029.P7802654831028361479

/-! ## A068029.P11300576511355502986

`xor(A001221(n+1), A063725(A326076(n)))`
-/

namespace A068029.P11300576511355502986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A001221 (n + 1)) (A063725 (A326076 n).toNat)

end

end A068029.P11300576511355502986

/-! ## A068029.P111873348156121321

`A160380(∑[A160404(n+1)+A160383(n)])`
-/

namespace A068029.P111873348156121321
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160404 (n + 1) + A160383 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160380 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A068029.P111873348156121321

/-! ## A068029.P673510438373587664

`A338156(n+1)-A014019(A364912(3*n+1))`
-/

namespace A068029.P673510438373587664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338156 (n + 1) - A014019 (A364912 (3 * n + 1)).toNat

end

end A068029.P673510438373587664

/-!
# A068030: Number of subsets of {1,2,3,...,n} that sum to 0 mod 9.

The programs for A068030, there is no canonical definition to state claims against.
-/

/-! ## A068030.P4765040644364609564

`A068009(A167499(n+7)+3)`
-/

namespace A068030.P4765040644364609564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068009 (A167499 (n + 7) + 3).toNat

end

end A068030.P4765040644364609564

/-! ## A068030.P7897173678831123377

`A068009(A000124(n+8)+7)`
-/

namespace A068030.P7897173678831123377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068009 (A000124 (n + 8) + 7).toNat

end

end A068030.P7897173678831123377

/-! ## A068030.P1257539091478179171

`A068009(A253145(n+7)+8)`
-/

namespace A068030.P1257539091478179171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068009 (A253145 (n + 7) + 8).toNat

end

end A068030.P1257539091478179171

/-! ## A068030.P9673213019430469842

`A068009(A000096(n+7)+9)`
-/

namespace A068030.P9673213019430469842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068009 (A000096 (n + 7) + 9).toNat

end

end A068030.P9673213019430469842

/-! ## A068030.P12071100054617458271

`A068009(A000217(n+8)+8)`
-/

namespace A068030.P12071100054617458271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068009 (A000217 (n + 8) + 8).toNat

end

end A068030.P12071100054617458271

/-!
# A068031: Number of subsets of {1,2,3,...,n} that sum to 0 mod 10.

The programs for A068031, there is no canonical definition to state claims against.
-/

/-! ## A068031.P7037274468018694423

`ceil(A068011(n)/2)`
-/

namespace A068031.P7037274468018694423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A068011 n : ℚ) / 2⌉

end

end A068031.P7037274468018694423

/-! ## A068031.P4166983549109792740

`A068011(n)/A329683(n)`
-/

namespace A068031.P4166983549109792740
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A068011 n : ℚ) / (A329683 n : ℚ)

end

end A068031.P4166983549109792740

/-! ## A068031.P4921453618638505445

`A068009(A000124(n+9)+8)`
-/

namespace A068031.P4921453618638505445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068009 (A000124 (n + 9) + 8).toNat

end

end A068031.P4921453618638505445

/-! ## A068031.P8589108640486921658

`A068009(A000217(n+10)-(n+1))`
-/

namespace A068031.P8589108640486921658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068009 (A000217 (n + 10) - (n + 1 : ℤ)).toNat

end

end A068031.P8589108640486921658

/-!
# A068032: Number of subsets of {1,2,3,...,n} that sum to 0 mod 11.

The programs for A068032, there is no canonical definition to state claims against.
-/

/-! ## A068032.P8961741733149532975

`A068009(eq[10, A002262(n)])`
-/

namespace A068032.P8961741733149532975
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068009 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A068032.P8961741733149532975

/-! ## A068032.P10164012137705589272

`A068009(eq[11, A002260(n+1)])`
-/

namespace A068032.P10164012137705589272
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068009 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A068032.P10164012137705589272

/-! ## A068032.P10256469695186497201

`A068009(A000217(n+11)-(n+1))`
-/

namespace A068032.P10256469695186497201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068009 (A000217 (n + 11) - (n + 1 : ℤ)).toNat

end

end A068032.P10256469695186497201

/-! ## A068032.P12821974096071302260

`A068009(A000124(n+11)-(n+2))`
-/

namespace A068032.P12821974096071302260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068009 (A000124 (n + 11) - (n + 2 : ℤ)).toNat

end

end A068032.P12821974096071302260

/-!
# A068033: Number of subsets of {1,2,3,...,n} that sum to 0 mod 12.

The programs for A068033, the canonical program `A068033.P10495819639348123950` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A068033 has offset 0).

The definition of A068033 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 335 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A068033.P10495819639348123950

`ceil((abs(2-A068012(n))+1)/2)`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A068033

/-- `ceil((abs(2-A068012(n))+1)/2)` -/
def P10495819639348123950.Spec : Prop :=
  ∀ n, P10495819639348123950.a n = A068033 n

theorem P10495819639348123950.correct : P10495819639348123950.Spec := by
  intro n
  simp only [A068033]

end A068033

/-! ## A068033.P6476182908082434873

`A068009(A000217(n+11)+11)`
-/

namespace A068033.P6476182908082434873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068009 (A000217 (n + 11) + 11).toNat

end

end A068033.P6476182908082434873

namespace A068033

/-- `A068009(A000217(n+11)+11)` -/
def P6476182908082434873.Spec : Prop :=
  ∀ n, P6476182908082434873.a n = A068033 n

end A068033

/-! ## A068033.P7164007542820380986

`A068009(eq[12, A002260(n+1)])`
-/

namespace A068033.P7164007542820380986
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  12

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068009 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A068033.P7164007542820380986

namespace A068033

/-- `A068009(eq[12, A002260(n+1)])` -/
def P7164007542820380986.Spec : Prop :=
  ∀ n, P7164007542820380986.a n = A068033 n

end A068033

/-! ## A068033.P14546854639068427239

`floor(A068012(n)/A020639(A000016(n)))`
-/

namespace A068033.P14546854639068427239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A068012 n : ℚ) / (A020639 (A000016 n).toNat : ℚ)⌋

end

end A068033.P14546854639068427239

namespace A068033

/-- `floor(A068012(n)/A020639(A000016(n)))` -/
def P14546854639068427239.Spec : Prop :=
  ∀ n, P14546854639068427239.a n = A068033 n

end A068033

/-! ## A068033.P13933134558953809011

`A068012(n)/∏{p}[A068037(n+3), #%n]`
-/

namespace A068033.P13933134558953809011
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068037 (n + 3)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A068012 n : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n).natAbs, p % n : ℕ) : ℚ)

end

end A068033.P13933134558953809011

namespace A068033

/-- `A068012(n)/∏{p}[A068037(n+3), #%n]` -/
def P13933134558953809011.Spec : Prop :=
  ∀ n, P13933134558953809011.a n = (A068033 n : ℚ)

end A068033

/-!
# A068034: Number of subsets of {1,2,3,...,n} that sum to 0 mod 13.

The programs for A068034, there is no canonical definition to state claims against.
-/

/-! ## A068034.P8158737757354697656

`A068009(eq[12, A002262(n)])`
-/

namespace A068034.P8158737757354697656
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  12

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068009 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A068034.P8158737757354697656

/-! ## A068034.P3956629392908036535

`A068009(eq[13, A002260(n+1)])`
-/

namespace A068034.P3956629392908036535
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  13

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068009 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A068034.P3956629392908036535

/-! ## A068034.P15829579073233614794

`A342383(A068035(n))`
-/

namespace A068034.P15829579073233614794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342383 (A068035 n).toNat

end

end A068034.P15829579073233614794

/-! ## A068034.P2009160120270199364

`A118168(A054194(n))`
-/

namespace A068034.P2009160120270199364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118168 (A054194 n).toNat

end

end A068034.P2009160120270199364

/-!
# A068035: Number of subsets of {1,2,3,...,n} that sum to 0 mod 14.

The programs for A068035, there is no canonical definition to state claims against.
-/

/-! ## A068035.P11998275432405010542

`A068009(eq[13, A002262(n)])`
-/

namespace A068035.P11998275432405010542
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  13

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068009 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A068035.P11998275432405010542

/-! ## A068035.P12665169697495502791

`A068009(eq[14, A002260(n+1)])`
-/

namespace A068035.P12665169697495502791
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  14

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068009 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A068035.P12665169697495502791

/-! ## A068035.P1881683715405647850

`A178804(A068013(n))`
-/

namespace A068035.P1881683715405647850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178804 (A068013 n).toNat

end

end A068035.P1881683715405647850

/-! ## A068035.P12766415971300277200

`A065033(A068013(n)-1)`
-/

namespace A068035.P12766415971300277200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (A068013 n - 1).toNat

end

end A068035.P12766415971300277200

/-! ## A068035.P4403071416894031042

`A123108(xor(1, A068013(n)))`
-/

namespace A068035.P4403071416894031042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123108 (Int.xor 1 (A068013 n)).toNat

end

end A068035.P4403071416894031042

/-!
# A068036: Number of subsets of {1,2,3,...,n} that sum to 0 mod 15.

The programs for A068036, there is no canonical definition to state claims against.
-/

/-! ## A068036.P11065978235510052887

`A068009(eq[14, A002262(n)])`
-/

namespace A068036.P11065978235510052887
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  14

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068009 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A068036.P11065978235510052887

/-! ## A068036.P3963402857992272326

`A068009(eq[14, A130270(n+1)])`
-/

namespace A068036.P3963402857992272326
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  14

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130270 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068009 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A068036.P3963402857992272326

/-! ## A068036.P9456271041136291979

`A068009(eq[15, A002260(n+1)])`
-/

namespace A068036.P9456271041136291979
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  15

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068009 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A068036.P9456271041136291979

/-! ## A068036.P9209551796691714236

`A261104(or(1, A377659(n)))`
-/

namespace A068036.P9209551796691714236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261104 (Int.lor 1 (A377659 n)).toNat

end

end A068036.P9209551796691714236

/-!
# A068037: Number of subsets of {1,2,3,...,n} that sum to 0 mod 16.

The programs for A068037, the canonical program `A068037.P10391205254623814335` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A068037 has offset 0).

The definition of A068037 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 337 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A068037.P10391205254623814335

`ogf((-1+x+x^2+x^3+x^4+x^5-2x^6-x^7+2x^8)/(-1+2x))`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A068037

/-- `ogf((-1+x+x^2+x^3+x^4+x^5-2x^6-x^7+2x^8)/(-1+2x))` -/
def P10391205254623814335.Spec : Prop :=
  ∀ n, P10391205254623814335.a n = A068037 n

theorem P10391205254623814335.correct : P10391205254623814335.Spec := by
  intro n
  simp only [A068037]

end A068037

/-! ## A068037.P15153513185374846920

`A068009(eq[15, A002262(n)])`
-/

namespace A068037.P15153513185374846920
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  15

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068009 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A068037.P15153513185374846920

namespace A068037

/-- `A068009(eq[15, A002262(n)])` -/
def P15153513185374846920.Spec : Prop :=
  ∀ n, P15153513185374846920.a n = A068037 n

end A068037

/-! ## A068037.P11855652613944390638

`A068009(eq[16, A002260(n+1)])`
-/

namespace A068037.P11855652613944390638
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  16

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068009 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A068037.P11855652613944390638

namespace A068037

/-- `A068009(eq[16, A002260(n+1)])` -/
def P11855652613944390638.Spec : Prop :=
  ∀ n, P11855652613944390638.a n = A068037 n

end A068037

/-! ## A068037.P18389766825665405987

`gcd(record[A156552(n+1)], A205303(3*n+4))`
-/

namespace A068037.P18389766825665405987
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156552 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)) (A205303 (3 * n + 4))

end

end A068037.P18389766825665405987

namespace A068037

/-- `gcd(record[A156552(n+1)], A205303(3*n+4))` -/
def P18389766825665405987.Spec : Prop :=
  ∀ n, (P18389766825665405987.a n : ℤ) = A068037 n

end A068037

/-! ## A068037.P7032498270431743841

`A081676(A130628(2*n+3)+1)`
-/

namespace A068037.P7032498270431743841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081676 (A130628 (2 * n + 3) + 1).toNat

end

end A068037.P7032498270431743841

namespace A068037

/-- `A081676(A130628(2*n+3)+1)` -/
def P7032498270431743841.Spec : Prop :=
  ∀ n, P7032498270431743841.a n = A068037 n

end A068037

/-!
# A068038: Number of subsets of {1,2,3,...,n} that sum to 0 mod 17.

The programs for A068038, there is no canonical definition to state claims against.
-/

/-! ## A068038.P9553852932160321503

`A068009(eq[16, A002262(n)])`
-/

namespace A068038.P9553852932160321503
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  16

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068009 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A068038.P9553852932160321503

/-! ## A068038.P10140349722395726834

`A068009(A055999(n+13)+22)`
-/

namespace A068038.P10140349722395726834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068009 (A055999 (n + 13) + 22).toNat

end

end A068038.P10140349722395726834

/-! ## A068038.P13912751446256442472

`A342191(A146939(n+1))`
-/

namespace A068038.P13912751446256442472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342191 (A146939 (n + 1)).toNat

end

end A068038.P13912751446256442472

/-! ## A068038.P1064780238281563684

`A257212(A320644(n+1))`
-/

namespace A068038.P1064780238281563684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257212 (A320644 (n + 1)).toNat

end

end A068038.P1064780238281563684

/-!
# A068039: Number of subsets of {1,2,3,...,n} that sum to 0 mod 18.

The programs for A068039, there is no canonical definition to state claims against.
-/

/-! ## A068039.P5741921379899904162

`A068009(eq[17, A130270(n+1)])`
-/

namespace A068039.P5741921379899904162
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  17

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130270 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068009 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A068039.P5741921379899904162

/-! ## A068039.P11878570538277962365

`A227310(3*n+1)-A079979(A107475(n))`
-/

namespace A068039.P11878570538277962365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227310 (3 * n + 1) - A079979 (A107475 n).toNat

end

end A068039.P11878570538277962365

/-! ## A068039.P4808625549150544553

`A084827(A316795(n+1)+1)+A001222(A068040(n))`
-/

namespace A068039.P4808625549150544553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084827 (A316795 (n + 1) + 1).toNat + A001222 (A068040 n).toNat

end

end A068039.P4808625549150544553

/-!
# A068040: Number of subsets of {1,2,3,...,n} that sum to 0 mod 19.

The programs for A068040, there is no canonical definition to state claims against.
-/

/-! ## A068040.P10688519471207044143

`A068009(eq[19, A002260(n+1)])`
-/

namespace A068040.P10688519471207044143
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  19

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068009 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A068040.P10688519471207044143

/-! ## A068040.P3767174018384733526

`A084827(A316795(n+1)+1)`
-/

namespace A068040.P3767174018384733526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084827 (A316795 (n + 1) + 1).toNat

end

end A068040.P3767174018384733526

/-! ## A068040.P16596408664559857957

`A084827(A001037(n))+A054899(n)`
-/

namespace A068040.P16596408664559857957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084827 (A001037 n).toNat + A054899 n

end

end A068040.P16596408664559857957

/-!
# A068041: Number of subsets of {1,2,3,...,n} that sum to 0 mod 20.

The programs for A068041, there is no canonical definition to state claims against.
-/

/-! ## A068041.P7580838056350165420

`A068009(eq[19, A130270(n+1)])`
-/

namespace A068041.P7580838056350165420
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  19

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130270 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068009 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A068041.P7580838056350165420

/-! ## A068041.P10782545006732427956

`A068009(eq[20, A002260(n+1)])`
-/

namespace A068041.P10782545006732427956
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  20

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068009 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A068041.P10782545006732427956

/-! ## A068041.P8989409716695649088

`A087554(A068042(n))`
-/

namespace A068041.P8989409716695649088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087554 (A068042 n).toNat

end

end A068041.P8989409716695649088

/-! ## A068041.P14252169299786301932

`A084827(A339711(n+1))`
-/

namespace A068041.P14252169299786301932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084827 (A339711 (n + 1)).toNat

end

end A068041.P14252169299786301932

/-! ## A068041.P18022076476801173710

`A057036(A146228(n+1)^2)`
-/

namespace A068041.P18022076476801173710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057036 (A146228 (n + 1) ^ 2).toNat

end

end A068041.P18022076476801173710

/-!
# A068042: Number of subsets of {1,2,3,...,n} that sum to 0 mod 21.

The programs for A068042, there is no canonical definition to state claims against.
-/

/-! ## A068042.P16063484206258490222

`A068009(eq[20, A002262(n)])`
-/

namespace A068042.P16063484206258490222
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  20

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068009 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A068042.P16063484206258490222

/-! ## A068042.P7591446161772534883

`A068009(eq[20, A130270(n+1)])`
-/

namespace A068042.P7591446161772534883
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  20

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130270 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068009 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A068042.P7591446161772534883

/-! ## A068042.P8034954717522888431

`A171751(A068041(n))`
-/

namespace A068042.P8034954717522888431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171751 (A068041 n).toNat

end

end A068042.P8034954717522888431

/-! ## A068042.P3056313994532068466

`A208507(A191520(n)+1)`
-/

namespace A068042.P3056313994532068466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208507 (A191520 n + 1).toNat

end

end A068042.P3056313994532068466

/-! ## A068042.P5732659204432356229

`A068041(n)-A054908(A051885(n))`
-/

namespace A068042.P5732659204432356229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068041 n - A054908 (A051885 n).toNat

end

end A068042.P5732659204432356229

/-!
# A068043: Number of subsets of {1,2,3,...,n} that sum to 0 mod 25.

The programs for A068043, there is no canonical definition to state claims against.
-/

/-! ## A068043.P15234160498193275618

`A068009(eq[25, A002260(n+1)])`
-/

namespace A068043.P15234160498193275618
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  25

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068009 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A068043.P15234160498193275618

/-! ## A068043.P7971283037732511041

`A091010(A058058(n+1))`
-/

namespace A068043.P7971283037732511041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091010 (A058058 (n + 1)).toNat

end

end A068043.P7971283037732511041

/-! ## A068043.P12778709426831631468

`A168389(A068044(n+1))`
-/

namespace A068043.P12778709426831631468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168389 (A068044 (n + 1)).toNat

end

end A068043.P12778709426831631468

/-! ## A068043.P16887499613406248597

`A002487(or(32, A061993(n)))`
-/

namespace A068043.P16887499613406248597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002487 (Int.lor 32 (A061993 n)).toNat

end

end A068043.P16887499613406248597

/-! ## A068043.P5184985505356018692

`A325106(A146590(n+1))+1`
-/

namespace A068043.P5184985505356018692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325106 (A146590 (n + 1)).toNat + 1

end

end A068043.P5184985505356018692

/-!
# A068044: Number of subsets of {1,2,3,...,n} that sum to 0 mod 32.

The programs for A068044, there is no canonical definition to state claims against.
-/

/-! ## A068044.P5366692877803847359

`A108455(A131892(n))`
-/

namespace A068044.P5366692877803847359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108455 (A131892 n).toNat

end

end A068044.P5366692877803847359

/-! ## A068044.P14798099692195323910

`A072657(A322282(n))`
-/

namespace A068044.P14798099692195323910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072657 (A322282 n).toNat

end

end A068044.P14798099692195323910

/-! ## A068044.P13603645778329117345

`A325512(A248091(n))`
-/

namespace A068044.P13603645778329117345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325512 (A248091 n).toNat

end

end A068044.P13603645778329117345

/-! ## A068044.P6271295823464156328

`A299403(A036632(n)+1)`
-/

namespace A068044.P6271295823464156328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299403 (A036632 n + 1).toNat

end

end A068044.P6271295823464156328

/-! ## A068044.P1062605136823999850

`A114280(A339152(n+1))`
-/

namespace A068044.P1062605136823999850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114280 (A339152 (n + 1)).toNat

end

end A068044.P1062605136823999850

/-!
# A068045: Number of subsets of {1,2,3,...,n} that sum to 0 mod 64.

The programs for A068045, there is no canonical definition to state claims against.
-/

/-! ## A068045.P10348705701517116375

`A320436(A141765(n))`
-/

namespace A068045.P10348705701517116375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320436 (A141765 n).toNat

end

end A068045.P10348705701517116375

/-! ## A068045.P11984111806524105400

`A111706(A036600(n)+1)`
-/

namespace A068045.P11984111806524105400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111706 (A036600 n + 1).toNat

end

end A068045.P11984111806524105400

/-! ## A068045.P17693589246356421708

`A137604(A011856(n)+1)`
-/

namespace A068045.P17693589246356421708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137604 (A011856 n + 1).toNat

end

end A068045.P17693589246356421708

/-! ## A068045.P17963751936724877948

`A343344(abs(A352129(3*n+1)-1-n)+1)+1`
-/

namespace A068045.P17963751936724877948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343344 (|A352129 (3 * n + 1) - 1 - (n : ℤ)| + 1).toNat + 1

end

end A068045.P17963751936724877948

/-! ## A068045.P4457189437585201398

`A262408(ceil(A130378(n)/(A226255(n)+1)))`
-/

namespace A068045.P4457189437585201398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262408 ⌈(A130378 n : ℚ) / (A226255 n + 1 : ℚ)⌉.toNat

end

end A068045.P4457189437585201398

/-!
# A068049: The first term greater than one on each row of A068009. a(n) = A068009[n, A002024[n]].

The programs for A068049, there is no canonical definition to state claims against.
-/

/-! ## A068049.P16432695906191056897

`A219347(n+1)+1`
-/

namespace A068049.P16432695906191056897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 (n + 1) + 1

end

end A068049.P16432695906191056897

/-! ## A068049.P3703290369656746976

`A000009(C(comp[∑[n]]-n, 2)-(n+1))+1`
-/

namespace A068049.P3703290369656746976
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000009 (Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 - (n + 1)) + 1

end

end A068049.P3703290369656746976

/-! ## A068049.P6401834129791842689

`A111133(C(comp[∑[n]]-n, 2)-(n+1))+2`
-/

namespace A068049.P6401834129791842689
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111133 (Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 - (n + 1)) + 2

end

end A068049.P6401834129791842689

/-! ## A068049.P18040480949798585555

`A000009(A025581(n))+1`
-/

namespace A068049.P18040480949798585555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000009 (A025581 n).toNat + 1

end

end A068049.P18040480949798585555

/-! ## A068049.P12485424415213932284

`A035457(2*A025581(n))+1`
-/

namespace A068049.P12485424415213932284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035457 (2 * A025581 n).toNat + 1

end

end A068049.P12485424415213932284

/-! ## A068049.P7303732522665575055

`A000009(A004736(n+1)-1)+1`
-/

namespace A068049.P7303732522665575055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000009 (A004736 (n + 1) - 1).toNat + 1

end

end A068049.P7303732522665575055

/-! ## A068049.P12941517497427974186

`A000009(A057554(2*(n+1)))+1`
-/

namespace A068049.P12941517497427974186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000009 (A057554 (2 * (n + 1))).toNat + 1

end

end A068049.P12941517497427974186

/-! ## A068049.P9608816828078298761

`A000009(A003056(n)-A002262(n))+1`
-/

namespace A068049.P9608816828078298761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000009 (A003056 n - A002262 n).toNat + 1

end

end A068049.P9608816828078298761

/-! ## A068049.P15634881998952500003

`A000009(A002024(n+1)-A002260(n+1))+1`
-/

namespace A068049.P15634881998952500003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000009 (A002024 (n + 1) - A002260 (n + 1)).toNat + 1

end

end A068049.P15634881998952500003

/-! ## A068049.P6802244380020222398

`A052839(A193592(n+1))`
-/

namespace A068049.P6802244380020222398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052839 (A193592 (n + 1)).toNat

end

end A068049.P6802244380020222398

/-! ## A068049.P14788690119259608043

`A002024(A000124(A219347(A002024(A000124(n)))))`
-/

namespace A068049.P14788690119259608043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002024 (A000124 (A219347 (A002024 (A000124 n).toNat).toNat).toNat).toNat

end

end A068049.P14788690119259608043

/-!
# A068050: Number of values of k, 1<=k<=n, for which floor(n/k) is prime.

The programs for A068050, the canonical program `A068050.P2800692697421074325` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A068050 has offset 1).

The definition of A068050 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A068050.P12861401440102911120

`∑[A001221(n+1)-A072627(n+1)]`
-/

namespace A068050.P12861401440102911120
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (n + 1) - A072627 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A068050.P12861401440102911120

namespace A068050

/-- `∑[A001221(n+1)-A072627(n+1)]` -/
def P12861401440102911120.Spec : Prop :=
  ∀ n, P12861401440102911120.a n = A068050 (n + 1)

end A068050

/-! ## A068050.P2800692697421074325

`A013939(n+1)-∑[A072627(n+1)]`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A068050

/-- `A013939(n+1)-∑[A072627(n+1)]` -/
def P2800692697421074325.Spec : Prop :=
  ∀ n, P2800692697421074325.a n = A068050 (n + 1)

theorem P2800692697421074325.correct : P2800692697421074325.Spec := by
  intro n
  simp only [A068050, Nat.add_sub_cancel]

end A068050

/-! ## A068050.P17705775214525064147

`∑[A001222(A007947(n+1))-A072627(n+1)]`
-/

namespace A068050.P17705775214525064147
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A007947 (n + 1)).toNat - A072627 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A068050.P17705775214525064147

namespace A068050

/-- `∑[A001222(A007947(n+1))-A072627(n+1)]` -/
def P17705775214525064147.Spec : Prop :=
  ∀ n, P17705775214525064147.a n = A068050 (n + 1)

end A068050

/-! ## A068050.P15584681975951899146

`∑[A001222(A073184(n+1))-A072627(n+1)]`
-/

namespace A068050.P15584681975951899146
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A073184 (n + 1)).toNat - A072627 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A068050.P15584681975951899146

namespace A068050

/-- `∑[A001222(A073184(n+1))-A072627(n+1)]` -/
def P15584681975951899146.Spec : Prop :=
  ∀ n, P15584681975951899146.a n = A068050 (n + 1)

end A068050

/-! ## A068050.P8037929636572764640

`∑[A001221(n+1)-∑{d}[n+1, A046926(2*#)]]`
-/

namespace A068050.P8037929636572764640
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (n + 1) - ∑ d ∈ Nat.divisors (f2 n), A046926 (2 * d)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A068050.P8037929636572764640

namespace A068050

/-- `∑[A001221(n+1)-∑{d}[n+1, A046926(2*#)]]` -/
def P8037929636572764640.Spec : Prop :=
  ∀ n, P8037929636572764640.a n = A068050 (n + 1)

end A068050

/-!
# A068051: Number of n-node connected graphs with one cycle, possibly of length 1 or 2.

The programs for A068051, there is no canonical definition to state claims against.
-/

/-! ## A068051.P6573982787707977970

`A368983(n+1)+A027852(n+1)`
-/

namespace A068051.P6573982787707977970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368983 (n + 1) + A027852 (n + 1)

end

end A068051.P6573982787707977970

/-! ## A068051.P12028709313471920410

`A322115(∑[n+2]-1)`
-/

namespace A068051.P12028709313471920410
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322115 (∑ j ∈ Finset.range (n + 1), f1 j - 1)

end

end A068051.P12028709313471920410

/-! ## A068051.P17035860513347478032

`record[A322115(eq[1, A275421(n+1)])]`
-/

namespace A068051.P17035860513347478032
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275421 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322115 (SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A068051.P17035860513347478032

/-! ## A068051.P10337665354256546910

`record[A322115(record[n/A275421(n+1)])]`
-/

namespace A068051.P10337665354256546910
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / (A275421 (n + 1) : ℚ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322115 (SequenceMachineLib.roundAway (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A068051.P10337665354256546910

/-! ## A068051.P15751656007582617321

`record[(2-A275421(n+1))*A322115(n)]`
-/

namespace A068051.P15751656007582617321
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - A275421 (n + 1)) * A322115 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A068051.P15751656007582617321

/-!
# A068052: Start from 1, shift one left and sum mod 2 (bitwise-XOR) to get 3 (11 in binary), then shift two steps left and XOR to get 15 (1111 in binary), then three steps and XOR to get 119 (1110111 in binary), then four steps and so on.

The programs for A068052, the canonical program `A068052.P10071118187423725799` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A068052 has offset 0).

The definition of A068052 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A068052.P10071118187423725799

`xor(a(n-1), 2^n*a(n-1))` with `a(0)=1`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A068052

/-- `xor(a(n-1), 2^n*a(n-1))` -/
def P10071118187423725799.Spec : Prop :=
  ∀ n, (P10071118187423725799.a n : ℤ) = A068052 n

theorem P10071118187423725799.correct : P10071118187423725799.Spec := by
  intro n
  simp only [A068052]

end A068052

/-! ## A068052.P824574382098727423

`xor(lcm(2^n, a(n-1)), a(n-1))` with `a(0)=1`
-/

namespace A068052.P824574382098727423
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  Nat.xor (Nat.lcm (2 ^ n) (a (n - 1))) (a (n - 1))

end

end A068052.P824574382098727423

namespace A068052

/-- `xor(lcm(2^n, a(n-1)), a(n-1))` -/
def P824574382098727423.Spec : Prop :=
  ∀ n, (P824574382098727423.a n : ℤ) = A068052 n

end A068052

/-! ## A068052.P9531917986658514313

`xor(a(n-1)*A000079(n), a(n-1))` with `a(0)=1`
-/

namespace A068052.P9531917986658514313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  Int.xor (a (n - 1) * A000079 n) (a (n - 1))

end

end A068052.P9531917986658514313

namespace A068052

/-- `xor(a(n-1)*A000079(n), a(n-1))` -/
def P9531917986658514313.Spec : Prop :=
  ∀ n, P9531917986658514313.a n = A068052 n

end A068052

/-!
# A068053: Start with one 1 in the infinite vector of zeros, shift one right or left and sum mod 2 (bitwise-XOR) to get 11, then shift two steps and XOR to get 1111, then three steps and XOR to get 1110111, then four steps and so on.

The programs for A068053, there is no canonical definition to state claims against.
-/

/-! ## A068053.P17224225325521846106

`A007088(A068052(n))`
-/

namespace A068053.P17224225325521846106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A068052 n).toNat

end

end A068053.P17224225325521846106

/-!
# A068054: First differences of A066425.

The programs for A068054, there is no canonical definition to state claims against.
-/

/-! ## A068054.P15816018659442770939

`Δ[A066425(n+1)]`
-/

namespace A068054.P15816018659442770939
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066425 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A068054.P15816018659442770939

/-! ## A068054.P7423463540223743324

`Δ[Δ[A068739(n+1)]]`
-/

namespace A068054.P7423463540223743324
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068739 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A068054.P7423463540223743324

/-! ## A068054.P16064034891433178103

`record[Δ[A066425(A020986(n))]]`
-/

namespace A068054.P16064034891433178103
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066425 (A020986 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A068054.P16064034891433178103

/-! ## A068054.P15702021207267841113

`Δ[record[A066425(A022446(n))]]`
-/

namespace A068054.P15702021207267841113
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066425 (A022446 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A068054.P15702021207267841113

/-! ## A068054.P11410479454255835003

`A068058(n+1)+A066425(n+1)`
-/

namespace A068054.P11410479454255835003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068058 (n + 1) + A066425 (n + 1)

end

end A068054.P11410479454255835003

/-! ## A068054.P15976690985245091502

`A066425(n+2)-A066425(n+1)`
-/

namespace A068054.P15976690985245091502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066425 (n + 2) - A066425 (n + 1)

end

end A068054.P15976690985245091502

/-! ## A068054.P10196102566837201805

`A068058(n+1)+A068739(n+2)-A068739(n+1)`
-/

namespace A068054.P10196102566837201805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068058 (n + 1) + (A068739 (n + 2) - A068739 (n + 1))

end

end A068054.P10196102566837201805

/-!
# A068055: Partial sums of A066425.

The programs for A068055, there is no canonical definition to state claims against.
-/

/-! ## A068055.P6183584988968365803

`∑[A066425(n+1)]`
-/

namespace A068055.P6183584988968365803
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066425 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A068055.P6183584988968365803

/-! ## A068055.P17472597595751046365

`A068739(n+2)-1`
-/

namespace A068055.P17472597595751046365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068739 (n + 2) - 1

end

end A068055.P17472597595751046365

/-! ## A068055.P2690195533827700213

`A068059(n+1)+2*a(n-1)` with `a(0)=1`
-/

namespace A068055.P2690195533827700213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A068059 (n + 1) + 2 * a (n - 1)

end

end A068055.P2690195533827700213

/-! ## A068055.P2230776584954060209

`∑[record[A066425(A020986(n))]]`
-/

namespace A068055.P2230776584954060209
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066425 (A020986 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A068055.P2230776584954060209

/-! ## A068055.P14713982442755993655

`A066425(n+2)-A068059(n+2)`
-/

namespace A068055.P14713982442755993655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066425 (n + 2) - A068059 (n + 2)

end

end A068055.P14713982442755993655

/-! ## A068055.P12143610191479315443

`∑[A068054(n+1)-A068058(n+1)]`
-/

namespace A068055.P12143610191479315443
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068054 (n + 1) - A068058 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A068055.P12143610191479315443

/-! ## A068055.P6961329216833762824

`A068054(n+2)-A068059(n+3)`
-/

namespace A068055.P6961329216833762824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068054 (n + 2) - A068059 (n + 3)

end

end A068055.P6961329216833762824

/-!
# A068056: Sums of all subsets of A066425.

The programs for A068056, there is no canonical definition to state claims against.
-/

/-! ## A068056.P4222161700521486801

`A068057(n)+a(n-1)` with `a(0)=0`
-/

namespace A068056.P4222161700521486801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A068057 n + a (n - 1)

end

end A068056.P4222161700521486801

/-! ## A068056.P335005823804366131

`∑[A068057(round(sqrt(n²+1)))]-1`
-/

namespace A068056.P335005823804366131
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068057 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A068056.P335005823804366131

/-! ## A068056.P3350719434417457340

`∑[A068057(A065190(n+1))%A000203(n+1)]`
-/

namespace A068056.P3350719434417457340
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A068057 (A065190 (n + 1)).toNat) (A000203 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A068056.P3350719434417457340

/-! ## A068056.P6062266399857393165

`∑[A068057(A033627(n+1)+2)%A000203(n+1)]`
-/

namespace A068056.P6062266399857393165
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A068057 (A033627 (n + 1) + 2).toNat) (A000203 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A068056.P6062266399857393165

/-! ## A068056.P7808274987065928241

`∑[A068057(A028310(n))%A000010((n+1)²)]`
-/

namespace A068056.P7808274987065928241
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A068057 (A028310 n).toNat) (A000010 ((n + 1) ^ 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A068056.P7808274987065928241

/-!
# A068057: First differences of A068056.

The programs for A068057, there is no canonical definition to state claims against.
-/

/-! ## A068057.P3510717087442508192

`A068059(A001511(n+1))`
-/

namespace A068057.P3510717087442508192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068059 (A001511 (n + 1)).toNat

end

end A068057.P3510717087442508192

/-! ## A068057.P10954745768423172304

`A068059(val(n+1, 2)+1)`
-/

namespace A068057.P10954745768423172304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068059 (SequenceMachineLib.valuation (n + 1) 2 + 1)

end

end A068057.P10954745768423172304

/-! ## A068057.P5831786652278588381

`A068059(Δ[a(floor(n/2))+n])` with `a(0)=0`
-/

namespace A068057.P5831786652278588381
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0] fun n f1 =>
  f1 ⌊(n : ℚ) / 2⌋.toNat + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068059 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A068057.P5831786652278588381

/-! ## A068057.P13115623008615100414

`A068059(log2(xor(n, or(n, n+1)))+1)`
-/

namespace A068057.P13115623008615100414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068059 (SequenceMachineLib.roundAway (Real.logb 2 (Nat.xor n (Nat.lor n (n + 1)) : ℝ) + 1)).toNat

end

end A068057.P13115623008615100414

/-! ## A068057.P3008433267577798138

`A068059(log2(and(n+1, -(n+1)))+1)`
-/

namespace A068057.P3008433267577798138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068059 (SequenceMachineLib.roundAway (Real.logb 2 (Int.land (n + 1 : ℤ) (-(n + 1 : ℤ)) : ℝ) + 1)).toNat

end

end A068057.P3008433267577798138

/-! ## A068057.P7479009829068976424

`A068059(log2(1-and(n, n+1)+n)+1)`
-/

namespace A068057.P7479009829068976424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068059 (SequenceMachineLib.roundAway (Real.logb 2 (1 - (Nat.land n (n + 1) : ℤ) + (n : ℤ) : ℝ) + 1)).toNat

end

end A068057.P7479009829068976424

/-! ## A068057.P9181084143032001362

`A068059(log2(abs(or(n+1, -(n+1))))+1)`
-/

namespace A068057.P9181084143032001362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068059 (SequenceMachineLib.roundAway (Real.logb 2 (|Int.lor (n + 1 : ℤ) (-(n + 1 : ℤ))| : ℝ) + 1)).toNat

end

end A068057.P9181084143032001362

/-! ## A068057.P1737529227701764003

`A068059(log2(-or(n+1, -(n+1)))+1)`
-/

namespace A068057.P1737529227701764003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068059 (SequenceMachineLib.roundAway (Real.logb 2 (-Int.lor (n + 1 : ℤ) (-(n + 1 : ℤ)) : ℝ) + 1)).toNat

end

end A068057.P1737529227701764003

/-! ## A068057.P13246572618996320572

`A068059(Δ[A005187(n)])`
-/

namespace A068057.P13246572618996320572
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005187 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068059 (f1 (n + 1) - f1 n).toNat

end

end A068057.P13246572618996320572

/-! ## A068057.P5807330239650053063

`A068059(A085058(n)-1)`
-/

namespace A068057.P5807330239650053063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068059 (A085058 n - 1).toNat

end

end A068057.P5807330239650053063

/-! ## A068057.P3930342792424938749

`A068059(Δ[A011371(n)]+1)`
-/

namespace A068057.P3930342792424938749
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011371 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068059 (f1 (n + 1) - f1 n + 1).toNat

end

end A068057.P3930342792424938749

/-! ## A068057.P2144949952799274517

`A068059(A007814(n+1)+1)`
-/

namespace A068057.P2144949952799274517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068059 (A007814 (n + 1) + 1).toNat

end

end A068057.P2144949952799274517

/-! ## A068057.P2603012485328919648

`A068059(val(A158271(n+1), 2))`
-/

namespace A068057.P2603012485328919648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068059 (SequenceMachineLib.valuation (A158271 (n + 1)).toNat 2)

end

end A068057.P2603012485328919648

/-! ## A068057.P17116453112130796478

`A068059(A001222(and(n+1, -(n+1)))+1)`
-/

namespace A068057.P17116453112130796478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068059 (A001222 (Int.land (n + 1 : ℤ) (-(n + 1 : ℤ))).toNat + 1).toNat

end

end A068057.P17116453112130796478

/-! ## A068057.P4326295517740804251

`A068059(A135523(n+1)+A043545(n))`
-/

namespace A068057.P4326295517740804251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068059 (A135523 (n + 1) + A043545 n).toNat

end

end A068057.P4326295517740804251

/-! ## A068057.P16315513345733273830

`A068059(A005187(n+1)-A005187(n))`
-/

namespace A068057.P16315513345733273830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068059 (A005187 (n + 1) - A005187 n).toNat

end

end A068057.P16315513345733273830

/-! ## A068057.P4771389958615500955

`Δ[A068056(n)]`
-/

namespace A068057.P4771389958615500955
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068056 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A068057.P4771389958615500955

/-! ## A068057.P11475432038782598239

`A068056(n+1)-A068056(n)`
-/

namespace A068057.P11475432038782598239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068056 (n + 1) - A068056 n

end

end A068057.P11475432038782598239

/-! ## A068057.P2560297327990594100

`A068059(A050603(2*n))`
-/

namespace A068057.P2560297327990594100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068059 (A050603 (2 * n)).toNat

end

end A068057.P2560297327990594100

/-! ## A068057.P780329266281083029

`A068059(Δ[A011371(2*n)])`
-/

namespace A068057.P780329266281083029
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011371 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068059 (f1 (n + 1) - f1 n).toNat

end

end A068057.P780329266281083029

/-!
# A068058: Zero-based position of the least significant (rightmost) zero bit in the bit-masks A068222 (A068224).

The programs for A068058, there is no canonical definition to state claims against.
-/

/-! ## A068058.P4693998017836219377

`Δ[A068059(n+1)]`
-/

namespace A068058.P4693998017836219377
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068059 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A068058.P4693998017836219377

/-! ## A068058.P14737209011166554956

`A068059(n+2)-A068059(n+1)`
-/

namespace A068058.P14737209011166554956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068059 (n + 2) - A068059 (n + 1)

end

end A068058.P14737209011166554956

/-! ## A068058.P4381944423577554013

`A066425(n+2)-2*A066425(n+1)`
-/

namespace A068058.P4381944423577554013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066425 (n + 2) - 2 * A066425 (n + 1)

end

end A068058.P4381944423577554013

/-! ## A068058.P2025228790800351312

`Δ[Δ[A068739(n+1)]-A068739(n+1)]`
-/

namespace A068058.P2025228790800351312
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068739 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n - A068739 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A068058.P2025228790800351312

/-! ## A068058.P15180475360068379010

`A066425(A292579(n+2))%(2*A066425(n+1))`
-/

namespace A068058.P15180475360068379010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A066425 (A292579 (n + 2)).toNat) (2 * A066425 (n + 1))

end

end A068058.P15180475360068379010

/-! ## A068058.P5860278379251718823

`A068054(n+1)-A066425(n+1)`
-/

namespace A068058.P5860278379251718823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068054 (n + 1) - A066425 (n + 1)

end

end A068058.P5860278379251718823

/-!
# A068059: Partial sums of A068058 + 1.

The programs for A068059, there is no canonical definition to state claims against.
-/

/-! ## A068059.P10239699159515087865

`a(n-1)+A068058(n)` with `a(0)=1`
-/

namespace A068059.P10239699159515087865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + A068058 n

end

end A068059.P10239699159515087865

/-! ## A068059.P516207044531691515

`∑[A068058(floor(acot(n)+n))]`
-/

namespace A068059.P516207044531691515
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068058 ⌊SequenceMachineLib.acot (n : ℝ) + (n : ℝ)⌋.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A068059.P516207044531691515

/-! ## A068059.P1895588511508666587

`∑[A068058(round(sqrt(n²+1)))]`
-/

namespace A068059.P1895588511508666587
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068058 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A068059.P1895588511508666587

/-! ## A068059.P16850580710961111685

`2*A066425(n+1)-A068055(n+1)`
-/

namespace A068059.P16850580710961111685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A066425 (n + 1) - A068055 (n + 1)

end

end A068059.P16850580710961111685

/-! ## A068059.P3758342434351551011

`∑[A068058(n+1)]+1-A068058(n+1)`
-/

namespace A068059.P3758342434351551011
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068058 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (1 - A068058 (n + 1))

end

end A068059.P3758342434351551011

/-!
# A068061: Palindromic numbers j that are not of the form k + reverse(k) for any k.

The programs for A068061, there is no canonical definition to state claims against.
-/

/-! ## A068061.P2168701986911214941

`A056525(Δ[n²])`
-/

namespace A068061.P2168701986911214941
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056525 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A068061.P2168701986911214941

/-! ## A068061.P5863575389157814177

`xor(1, xor(1, A056525(2*n+1)))`
-/

namespace A068061.P5863575389157814177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (Int.xor 1 (A056525 (2 * n + 1)))

end

end A068061.P5863575389157814177

/-! ## A068061.P2025398181420957102

`record[gcd(val(n+1, 2), A056525(n+1))]`
-/

namespace A068061.P2025398181420957102
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (SequenceMachineLib.valuation (n + 1) 2 : ℤ) (A056525 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A068061.P2025398181420957102

/-! ## A068061.P2463029313177144633

`record[A056525(A000265(n+1))]`
-/

namespace A068061.P2463029313177144633
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056525 (A000265 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A068061.P2463029313177144633

/-! ## A068061.P3527069368507183408

`A056525(2*n+1)+A000007(n+4)`
-/

namespace A068061.P3527069368507183408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056525 (2 * n + 1) + A000007 (n + 4)

end

end A068061.P3527069368507183408

/-! ## A068061.P224568924437603491

`A056525(2*n+1)%A067087(n+1)`
-/

namespace A068061.P224568924437603491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A056525 (2 * n + 1)) (A067087 (n + 1))

end

end A068061.P224568924437603491

/-! ## A068061.P2143327667182327299

`lcm(Δ[A018837(n+2)], A056525(2*n+1))`
-/

namespace A068061.P2143327667182327299
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018837 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (f1 (n + 1) - f1 n) (A056525 (2 * n + 1))

end

end A068061.P2143327667182327299

/-! ## A068061.P16370122982094259662

`A014963(A315741(3*(n+1)))*A056525(2*n+1)`
-/

namespace A068061.P16370122982094259662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A315741 (3 * (n + 1))).toNat * A056525 (2 * n + 1)

end

end A068061.P16370122982094259662

/-! ## A068061.P9958442335226403519

`A004086(A056525(2*n+1))`
-/

namespace A068061.P9958442335226403519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004086 (A056525 (2 * n + 1)).toNat

end

end A068061.P9958442335226403519

/-! ## A068061.P10819804572192978270

`A055483(A056525(n+1+n))`
-/

namespace A068061.P10819804572192978270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055483 (A056525 (n + 1 + n)).toNat

end

end A068061.P10819804572192978270

/-! ## A068061.P12279953422901365136

`∩[A002113(n+1), A054684(n+1)]`
-/

namespace A068061.P12279953422901365136
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002113 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054684 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A068061.P12279953422901365136

/-! ## A068061.P16094042251225934649

`∩[A054684(n+1), A056525(n+1)]`
-/

namespace A068061.P16094042251225934649
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054684 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056525 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A068061.P16094042251225934649

/-! ## A068061.P10049943766853580762

`∩[A054684(n+1), A092361(n+1)]`
-/

namespace A068061.P10049943766853580762
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054684 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092361 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A068061.P10049943766853580762

/-! ## A068061.P10987972302863402542

`∩[A056525(n+1), A356929(n+1)]`
-/

namespace A068061.P10987972302863402542
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056525 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356929 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A068061.P10987972302863402542

/-! ## A068061.P7375519348322998399

`∩[A002113(n+1), A054683(n+1)+1]`
-/

namespace A068061.P7375519348322998399
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002113 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054683 (n + 1) + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A068061.P7375519348322998399

/-!
# A068062: Palindromes n of the form k + reverse(k) for at least one k.

The programs for A068062, there is no canonical definition to state claims against.
-/

/-! ## A068062.P17556979345211854397

`∩[A002113(n+1), A067030(n)]`
-/

namespace A068062.P17556979345211854397
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002113 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067030 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A068062.P17556979345211854397

/-! ## A068062.P13844583378918821659

`∩[A002113(n+1), A056964(A067033(n))]`
-/

namespace A068062.P13844583378918821659
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002113 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056964 (A067033 n).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A068062.P13844583378918821659

/-! ## A068062.P15322472629091702684

`∩[A002113(n+1), A056964(A067034(n))]`
-/

namespace A068062.P15322472629091702684
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002113 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056964 (A067034 n).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A068062.P15322472629091702684

/-! ## A068062.P15505745663097496655

`∩[A002113(n+1), A054683(n+1)]`
-/

namespace A068062.P15505745663097496655
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002113 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054683 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A068062.P15505745663097496655

/-! ## A068062.P15505805881816374528

`record[A047813(A067030(n))]`
-/

namespace A068062.P15505805881816374528
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047813 (A067030 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A068062.P15505805881816374528

/-! ## A068062.P1464735432394289444

`filter[A067030(n), A136522(#)]`
-/

namespace A068062.P1464735432394289444
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067030 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A136522 (f1 j).toNat = 1) n)

end

end A068062.P1464735432394289444

/-! ## A068062.P16679972194646061565

`eq[A056965(n), A179081(n)]`
-/

namespace A068062.P16679972194646061565
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056965 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179081 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A068062.P16679972194646061565

/-! ## A068062.P5773870049382252573

`eq[A179081(n), A256756(n)]`
-/

namespace A068062.P5773870049382252573
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179081 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256756 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A068062.P5773870049382252573

/-! ## A068062.P13183579040958074361

`eq[A179081(n), A338827(n)]`
-/

namespace A068062.P13183579040958074361
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179081 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338827 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A068062.P13183579040958074361

/-! ## A068062.P11902198463183177368

`record[A047813(A054683(n+1))]`
-/

namespace A068062.P11902198463183177368
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047813 (A054683 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A068062.P11902198463183177368

/-! ## A068062.P219331549868887532

`filter[A054683(n+1), A136522(#)]`
-/

namespace A068062.P219331549868887532
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054683 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A136522 (f1 j).toNat = 1) n)

end

end A068062.P219331549868887532

/-! ## A068062.P1526892424820958196

`eq[A019426(A062028(n)+n), A050782(n)]`
-/

namespace A068062.P1526892424820958196
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019426 (A062028 n + (n : ℤ)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050782 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A068062.P1526892424820958196

/-!
# A068063: Maximum cardinality of a nondividing subset of {1, 2, ..., n}.

The programs for A068063, there is no canonical definition to state claims against.
-/

/-! ## A068063.P13128445078594725525

`round(A209229(A326590(n))+sqrt(n))`
-/

namespace A068063.P13128445078594725525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A209229 (A326590 n).toNat : ℝ) + Real.sqrt (n : ℝ))

end

end A068063.P13128445078594725525

/-! ## A068063.P17231700327556166933

`A000194(n)-A014592(A296520(n+1))`
-/

namespace A068063.P17231700327556166933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000194 n - A014592 (A296520 (n + 1)).toNat

end

end A068063.P17231700327556166933

/-!
# A068064: a(n) = number of integers k such that palindrome A068062(n) = k + reverse(k).

The programs for A068064, there is no canonical definition to state claims against.
-/

/-! ## A068064.P6270757779000733677

`A067032(eq[0, A056965(A067030(n))])`
-/

namespace A068064.P6270757779000733677
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056965 (A067030 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067032 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A068064.P6270757779000733677

/-!
# A068065: Palindromes n for which there is a unique k such that n = k + reverse(k).

The programs for A068065, there is no canonical definition to state claims against.
-/

/-! ## A068065.P11497440968940256366

`∩[A002113(n+1), A072427(n+1)]`
-/

namespace A068065.P11497440968940256366
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002113 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072427 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A068065.P11497440968940256366

/-! ## A068065.P9211652989708830258

`∩[A068062(n+1), A072427(n+1)]`
-/

namespace A068065.P9211652989708830258
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068062 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072427 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A068065.P9211652989708830258

/-! ## A068065.P17613333647586833307

`∩[A072427(n+1), A117055(n+1)]`
-/

namespace A068065.P17613333647586833307
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072427 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117055 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A068065.P17613333647586833307

/-! ## A068065.P17686008494457660079

`∩[A072427(n+1), A118600(n+1)]`
-/

namespace A068065.P17686008494457660079
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072427 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118600 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A068065.P17686008494457660079

/-! ## A068065.P8404856548431489372

`record[A068062(n+1)/A068064(n+1)]`
-/

namespace A068065.P8404856548431489372
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A068062 (n + 1) : ℚ) / (A068064 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A068065.P8404856548431489372

/-!
# A068067: Number of integers m, 0 < m <= n, such that n divides m(m+1)/2.

The programs for A068067, the canonical program `A068067.P8429999717288911896` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A068067 has offset 1).

The definition of A068067 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A068067.P8429999717288911896

`A068068(n+1)-n%2`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A068067

/-- `A068068(n+1)-n%2` -/
def P8429999717288911896.Spec : Prop :=
  ∀ n, P8429999717288911896.a n = A068067 (n + 1)

theorem P8429999717288911896.correct : P8429999717288911896.Spec := by
  intro n
  simp only [A068067, Nat.add_sub_cancel]

end A068067

/-! ## A068067.P7271259258925376227

`A206824(2*(n+1))-and(1, n)`
-/

namespace A068067.P7271259258925376227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206824 (2 * (n + 1)) - (Nat.land 1 n : ℤ)

end

end A068067.P7271259258925376227

namespace A068067

/-- `A206824(2*(n+1))-and(1, n)` -/
def P7271259258925376227.Spec : Prop :=
  ∀ n, P7271259258925376227.a n = A068067 (n + 1)

end A068067

/-! ## A068067.P10969084516778692824

`A068068(n+1)-A000035(n)`
-/

namespace A068067.P10969084516778692824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068068 (n + 1) - A000035 n

end

end A068067.P10969084516778692824

namespace A068067

/-- `A068068(n+1)-A000035(n)` -/
def P10969084516778692824.Spec : Prop :=
  ∀ n, P10969084516778692824.a n = A068067 (n + 1)

end A068067

/-! ## A068067.P8761939053486151554

`A068068(n+1)+1-A000034(n)`
-/

namespace A068067.P8761939053486151554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068068 (n + 1) + (1 - A000034 n)

end

end A068067.P8761939053486151554

namespace A068067

/-- `A068068(n+1)+1-A000034(n)` -/
def P8761939053486151554.Spec : Prop :=
  ∀ n, P8761939053486151554.a n = A068067 (n + 1)

theorem P8761939053486151554.correct : P8761939053486151554.Spec := by
  intro n
  simp only [A068067, Nat.add_sub_cancel, A068067.P8761939053486151554.a, A068067.P8429999717288911896.a, A000034, A000034.P10773112074177680709.a, A068068, A068068.P4574816363977512760.a, A034444, A034444.P6574915864346323298.a, A001221, A001221.P10258181745752134128.a, A005089, A005089.P4329807401814625450.f1, A005089.P4329807401814625450.a, A005091, A005091.P2802037195389751204.f1, A005091.P2802037195389751204.a, A059841, A059841.P2666504972441551157.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A068067

/-! ## A068067.P6337072539073535606

`A068068(n+1)+A059841(n)-1`
-/

namespace A068067.P6337072539073535606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068068 (n + 1) + (A059841 n - 1)

end

end A068067.P6337072539073535606

namespace A068067

/-- `A068068(n+1)+A059841(n)-1` -/
def P6337072539073535606.Spec : Prop :=
  ∀ n, P6337072539073535606.a n = A068067 (n + 1)

end A068067

/-! ## A068067.P12193827227389187669

`A001227(A007947(n+1))-and(1, n)`
-/

namespace A068067.P12193827227389187669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001227 (A007947 (n + 1)).toNat - (Nat.land 1 n : ℤ)

end

end A068067.P12193827227389187669

namespace A068067

/-- `A001227(A007947(n+1))-and(1, n)` -/
def P12193827227389187669.Spec : Prop :=
  ∀ n, P12193827227389187669.a n = A068067 (n + 1)

end A068067

/-! ## A068067.P8856664757620108780

`A000010(A100008(n+1))-and(1, n)`
-/

namespace A068067.P8856664757620108780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A100008 (n + 1)).toNat - (Nat.land 1 n : ℤ)

end

end A068067.P8856664757620108780

namespace A068067

/-- `A000010(A100008(n+1))-and(1, n)` -/
def P8856664757620108780.Spec : Prop :=
  ∀ n, P8856664757620108780.a n = A068067 (n + 1)

end A068067

/-! ## A068067.P13303941900412338495

`A000005(A204455(n+1))-and(1, n)`
-/

namespace A068067.P13303941900412338495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A204455 (n + 1)).toNat - (Nat.land 1 n : ℤ)

end

end A068067.P13303941900412338495

namespace A068067

/-- `A000005(A204455(n+1))-and(1, n)` -/
def P13303941900412338495.Spec : Prop :=
  ∀ n, P13303941900412338495.a n = A068067 (n + 1)

end A068067

/-! ## A068067.P5808511041030901171

`A001227(∏{p}[n+1, #])-A000035(n)`
-/

namespace A068067.P5808511041030901171
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001227 (∏ p ∈ Nat.primeFactors (f1 n), p) - A000035 n

end

end A068067.P5808511041030901171

namespace A068067

/-- `A001227(∏{p}[n+1, #])-A000035(n)` -/
def P5808511041030901171.Spec : Prop :=
  ∀ n, P5808511041030901171.a n = A068067 (n + 1)

end A068067

/-! ## A068067.P8881192337345812956

`A068068(n+1)+A056594(n)²-1`
-/

namespace A068067.P8881192337345812956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068068 (n + 1) + (A056594 n ^ 2 - 1)

end

end A068067.P8881192337345812956

namespace A068067

/-- `A068068(n+1)+A056594(n)²-1` -/
def P8881192337345812956.Spec : Prop :=
  ∀ n, P8881192337345812956.a n = A068067 (n + 1)

end A068067

/-! ## A068067.P1641108939058241015

`2^A005087(n+1)-Δ[A008619(n)]`
-/

namespace A068067.P1641108939058241015
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A005087 (n + 1) : ℤ) - (f1 (n + 1) - f1 n : ℚ)

end

end A068067.P1641108939058241015

namespace A068067

/-- `2^A005087(n+1)-Δ[A008619(n)]` -/
def P1641108939058241015.Spec : Prop :=
  ∀ n, P1641108939058241015.a n = (A068067 (n + 1) : ℚ)

end A068067

/-! ## A068067.P5405487574723585877

`A068068(n+1)-A318315(∏{p}[n+1, #])`
-/

namespace A068067.P5405487574723585877
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068068 (n + 1) - A318315 (∏ p ∈ Nat.primeFactors (f1 n), p)

end

end A068067.P5405487574723585877

namespace A068067

/-- `A068068(n+1)-A318315(∏{p}[n+1, #])` -/
def P5405487574723585877.Spec : Prop :=
  ∀ n, P5405487574723585877.a n = A068067 (n + 1)

end A068067

/-! ## A068067.P15527941843023041729

`A068068(n+1)-A318455(∏{p}[n+1, #])`
-/

namespace A068067.P15527941843023041729
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068068 (n + 1) - A318455 (∏ p ∈ Nat.primeFactors (f1 n), p)

end

end A068067.P15527941843023041729

namespace A068067

/-- `A068068(n+1)-A318455(∏{p}[n+1, #])` -/
def P15527941843023041729.Spec : Prop :=
  ∀ n, P15527941843023041729.a n = A068067 (n + 1)

end A068067

/-! ## A068067.P11246224362943553164

`A068068(n+1)-A001221(and(n+1, -(n+1)))`
-/

namespace A068067.P11246224362943553164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068068 (n + 1) - A001221 (Int.land (n + 1 : ℤ) (-(n + 1 : ℤ))).toNat

end

end A068067.P11246224362943553164

namespace A068067

/-- `A068068(n+1)-A001221(and(n+1, -(n+1)))` -/
def P11246224362943553164.Spec : Prop :=
  ∀ n, P11246224362943553164.a n = A068067 (n + 1)

end A068067

/-! ## A068067.P17131514293795572222

`2^A001221((n+1)/and(n+1, -(n+1)))-A000035(n)`
-/

namespace A068067.P17131514293795572222
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A001221 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (Int.land (n + 1 : ℤ) (-(n + 1 : ℤ)) : ℚ))).toNat : ℤ) - (A000035 n : ℚ)

end

end A068067.P17131514293795572222

namespace A068067

/-- `2^A001221((n+1)/and(n+1, -(n+1)))-A000035(n)` -/
def P17131514293795572222.Spec : Prop :=
  ∀ n, P17131514293795572222.a n = (A068067 (n + 1) : ℚ)

end A068067

/-! ## A068067.P14113021679900729019

`A034444(A000265(n+1))-A000035(n)`
-/

namespace A068067.P14113021679900729019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034444 (A000265 (n + 1)).toNat - A000035 n

end

end A068067.P14113021679900729019

namespace A068067

/-- `A034444(A000265(n+1))-A000035(n)` -/
def P14113021679900729019.Spec : Prop :=
  ∀ n, P14113021679900729019.a n = A068067 (n + 1)

end A068067

/-! ## A068067.P15757679302136758157

`A324983(A007947(n+1))-A000035(n)`
-/

namespace A068067.P15757679302136758157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324983 (A007947 (n + 1)).toNat - A000035 n

end

end A068067.P15757679302136758157

namespace A068067

/-- `A324983(A007947(n+1))-A000035(n)` -/
def P15757679302136758157.Spec : Prop :=
  ∀ n, P15757679302136758157.a n = A068067 (n + 1)

end A068067

/-! ## A068067.P11160511547272999080

`A068068(n+1)-A001221(A006519(n+1))`
-/

namespace A068067.P11160511547272999080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068068 (n + 1) - A001221 (A006519 (n + 1)).toNat

end

end A068067.P11160511547272999080

namespace A068067

/-- `A068068(n+1)-A001221(A006519(n+1))` -/
def P11160511547272999080.Spec : Prop :=
  ∀ n, P11160511547272999080.a n = A068067 (n + 1)

end A068067

/-! ## A068067.P17422959237378351125

`A068068(n+1)+A001221(n+2)-A099812(n+2)`
-/

namespace A068067.P17422959237378351125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068068 (n + 1) + (A001221 (n + 2) - A099812 (n + 2))

end

end A068067.P17422959237378351125

namespace A068067

/-- `A068068(n+1)+A001221(n+2)-A099812(n+2)` -/
def P17422959237378351125.Spec : Prop :=
  ∀ n, P17422959237378351125.a n = A068067 (n + 1)

end A068067

/-! ## A068067.P15413608109209358207

`A068068(n+1)-A318455(n²+1)`
-/

namespace A068067.P15413608109209358207
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068068 (n + 1) - A318455 (n ^ 2 + 1)

end

end A068067.P15413608109209358207

namespace A068067

/-- `A068068(n+1)-A318455(n²+1)` -/
def P15413608109209358207.Spec : Prop :=
  ∀ n, P15413608109209358207.a n = A068067 (n + 1)

end A068067

/-!
# A068068: Number of odd unitary divisors of n. d is a unitary divisor of n if d divides n and gcd(d,n/d) = 1.

The programs for A068068, the canonical program `A068068.P4574816363977512760` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A068068 has offset 1).

The definition of A068068 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A034444, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A068068.P10830392554542421051

`A024361(4*(n+1))`
-/

namespace A068068.P10830392554542421051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024361 (4 * (n + 1))

end

end A068068.P10830392554542421051

namespace A068068

/-- `A024361(4*(n+1))` -/
def P10830392554542421051.Spec : Prop :=
  ∀ n, P10830392554542421051.a n = A068068 (n + 1)

end A068068

/-! ## A068068.P4574816363977512760

`A034444(2*(n+1))/2`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A068068

/-- `A034444(2*(n+1))/2` -/
def P4574816363977512760.Spec : Prop :=
  ∀ n, P4574816363977512760.a n = (A068068 (n + 1) : ℚ)

end A068068

/-! ## A068068.P3640829078961881001

`∏{p}[n+1, (2%#)!]`
-/

namespace A068068.P3640829078961881001
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), Nat.factorial (2 % p)

end

end A068068.P3640829078961881001

namespace A068068

/-- `∏{p}[n+1, (2%#)!]` -/
def P3640829078961881001.Spec : Prop :=
  ∀ n, (P3640829078961881001.a n : ℤ) = A068068 (n + 1)

end A068068

/-! ## A068068.P9805663471055460049

`∏{p}[n+1, #%2+1]`
-/

namespace A068068.P9805663471055460049
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), (p % 2 + 1)

end

end A068068.P9805663471055460049

namespace A068068

/-- `∏{p}[n+1, #%2+1]` -/
def P9805663471055460049.Spec : Prop :=
  ∀ n, (P9805663471055460049.a n : ℤ) = A068068 (n + 1)

end A068068

/-! ## A068068.P9920591134894834626

`∏{p}[n+1, gcd(2, #+1)]`
-/

namespace A068068.P9920591134894834626
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), Nat.gcd 2 (p + 1)

end

end A068068.P9920591134894834626

namespace A068068

/-- `∏{p}[n+1, gcd(2, #+1)]` -/
def P9920591134894834626.Spec : Prop :=
  ∀ n, (P9920591134894834626.a n : ℤ) = A068068 (n + 1)

end A068068

/-! ## A068068.P10961126791627564187

`∏{p}[n+1, and(1, #)+1]`
-/

namespace A068068.P10961126791627564187
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), (Nat.land 1 p + 1)

end

end A068068.P10961126791627564187

namespace A068068

/-- `∏{p}[n+1, and(1, #)+1]` -/
def P10961126791627564187.Spec : Prop :=
  ∀ n, (P10961126791627564187.a n : ℤ) = A068068 (n + 1)

end A068068

/-! ## A068068.P18263836656346152734

`∏{p}[n+1, 2-val(#, 2)]`
-/

namespace A068068.P18263836656346152734
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), (2 - (SequenceMachineLib.valuation p 2 : ℤ))

end

end A068068.P18263836656346152734

namespace A068068

/-- `∏{p}[n+1, 2-val(#, 2)]` -/
def P18263836656346152734.Spec : Prop :=
  ∀ n, P18263836656346152734.a n = A068068 (n + 1)

end A068068

/-! ## A068068.P10719781440101729956

`∏{p}[n+1, 2-C(2, #)]`
-/

namespace A068068.P10719781440101729956
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), (2 - (Nat.choose 2 p : ℤ))

end

end A068068.P10719781440101729956

namespace A068068

/-- `∏{p}[n+1, 2-C(2, #)]` -/
def P10719781440101729956.Spec : Prop :=
  ∀ n, P10719781440101729956.a n = A068068 (n + 1)

end A068068

/-! ## A068068.P11243549990533975010

`2^∑{p}[n+1, and(1, #)]`
-/

namespace A068068.P11243549990533975010
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ (∑ p ∈ Nat.primeFactors (f1 n), Nat.land 1 p)

end

end A068068.P11243549990533975010

namespace A068068

/-- `2^∑{p}[n+1, and(1, #)]` -/
def P11243549990533975010.Spec : Prop :=
  ∀ n, (P11243549990533975010.a n : ℤ) = A068068 (n + 1)

end A068068

/-! ## A068068.P9110918772402510966

`∏{p}[n+1, lcm(2, #)/#]`
-/

namespace A068068.P9110918772402510966
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), (Nat.lcm 2 p : ℚ) / (p : ℚ)

end

end A068068.P9110918772402510966

namespace A068068

/-- `∏{p}[n+1, lcm(2, #)/#]` -/
def P9110918772402510966.Spec : Prop :=
  ∀ n, P9110918772402510966.a n = (A068068 (n + 1) : ℚ)

end A068068

/-! ## A068068.P16627899056613972731

`2^∑{p}[n+1, #²%2]`
-/

namespace A068068.P16627899056613972731
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ (∑ p ∈ Nat.primeFactors (f1 n), p ^ 2 % 2)

end

end A068068.P16627899056613972731

namespace A068068

/-- `2^∑{p}[n+1, #²%2]` -/
def P16627899056613972731.Spec : Prop :=
  ∀ n, (P16627899056613972731.a n : ℤ) = A068068 (n + 1)

end A068068

/-! ## A068068.P11431524000115920414

`∏{p}[n+1, 2-floor(2/#)]`
-/

namespace A068068.P11431524000115920414
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), (2 - ⌊2 / (p : ℚ)⌋)

end

end A068068.P11431524000115920414

namespace A068068

/-- `∏{p}[n+1, 2-floor(2/#)]` -/
def P11431524000115920414.Spec : Prop :=
  ∀ n, P11431524000115920414.a n = A068068 (n + 1)

end A068068

/-! ## A068068.P9651780532702409471

`A206824(2*(n+1))`
-/

namespace A068068.P9651780532702409471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206824 (2 * (n + 1))

end

end A068068.P9651780532702409471

namespace A068068

/-- `A206824(2*(n+1))` -/
def P9651780532702409471.Spec : Prop :=
  ∀ n, P9651780532702409471.a n = A068068 (n + 1)

end A068068

/-! ## A068068.P13742185295339635394

`A100008(n+1)/2`
-/

namespace A068068.P13742185295339635394
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A100008 (n + 1) : ℚ) / 2

end

end A068068.P13742185295339635394

namespace A068068

/-- `A100008(n+1)/2` -/
def P13742185295339635394.Spec : Prop :=
  ∀ n, P13742185295339635394.a n = (A068068 (n + 1) : ℚ)

end A068068

/-! ## A068068.P4886857805972641716

`2^A005087(n+1)`
-/

namespace A068068.P4886857805972641716
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A005087 (n + 1) : ℤ)

end

end A068068.P4886857805972641716

namespace A068068

/-- `2^A005087(n+1)` -/
def P4886857805972641716.Spec : Prop :=
  ∀ n, P4886857805972641716.a n = (A068068 (n + 1) : ℚ)

end A068068

/-! ## A068068.P13336628961315683570

`∑{d}[n+1, A323239(#)]`
-/

namespace A068068.P13336628961315683570
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A323239 d

end

end A068068.P13336628961315683570

namespace A068068

/-- `∑{d}[n+1, A323239(#)]` -/
def P13336628961315683570.Spec : Prop :=
  ∀ n, P13336628961315683570.a n = A068068 (n + 1)

end A068068

/-! ## A068068.P15932208067100798761

`A001227(∏{p}[n+1, #])`
-/

namespace A068068.P15932208067100798761
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001227 (∏ p ∈ Nat.primeFactors (f1 n), p)

end

end A068068.P15932208067100798761

namespace A068068

/-- `A001227(∏{p}[n+1, #])` -/
def P15932208067100798761.Spec : Prop :=
  ∀ n, P15932208067100798761.a n = A068068 (n + 1)

end A068068

/-! ## A068068.P111716997163005386

`A346773(2*(n+1))/2`
-/

namespace A068068.P111716997163005386
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A346773 (2 * (n + 1)) : ℚ) / 2

end

end A068068.P111716997163005386

namespace A068068

/-- `A346773(2*(n+1))/2` -/
def P111716997163005386.Spec : Prop :=
  ∀ n, P111716997163005386.a n = (A068068 (n + 1) : ℚ)

end A068068

/-! ## A068068.P9435489424038178627

`2^(A099812(n+1)-1)`
-/

namespace A068068.P9435489424038178627
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A099812 (n + 1) - 1 : ℤ)

end

end A068068.P9435489424038178627

namespace A068068

/-- `2^(A099812(n+1)-1)` -/
def P9435489424038178627.Spec : Prop :=
  ∀ n, P9435489424038178627.a n = (A068068 (n + 1) : ℚ)

end A068068

/-! ## A068068.P2357929821151145967

`∑{d}[n+1, A008683(2*#)²]`
-/

namespace A068068.P2357929821151145967
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008683 (2 * d) ^ 2

end

end A068068.P2357929821151145967

namespace A068068

/-- `∑{d}[n+1, A008683(2*#)²]` -/
def P2357929821151145967.Spec : Prop :=
  ∀ n, P2357929821151145967.a n = A068068 (n + 1)

end A068068

/-!
# A068069: a(n) is the least k which is the start of n consecutive integers each with a different number, 1 through n, of distinct prime factors.

The programs for A068069, there is no canonical definition to state claims against.
-/

/-! ## A068069.P18070462521730888683

`lcm(n, ∏{p}[(2*n)!, #])-(n-1)`
-/

namespace A068069.P18070462521730888683
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.lcm n (∏ p ∈ Nat.primeFactors (f1 n), p) : ℤ) - ((n : ℤ) - 1)

end

end A068069.P18070462521730888683

/-!
# A068070: Number of digits in 10^n-th Fibonacci number.

The programs for A068070, there is no canonical definition to state claims against.
-/

/-! ## A068070.P8203259765870852488

`A114469(n)-A010054(A299642(2*(n+2)))`
-/

namespace A068070.P8203259765870852488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114469 n - A010054 (A299642 (2 * (n + 2))).toNat

end

end A068070.P8203259765870852488

/-! ## A068070.P5840100589223293523

`A114469(n)-A000007(A060435(n))`
-/

namespace A068070.P5840100589223293523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114469 n - A000007 (A060435 n).toNat

end

end A068070.P5840100589223293523

/-! ## A068070.P13747142722862799492

`A114469(n)-A010060(A073974(n+1))`
-/

namespace A068070.P13747142722862799492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114469 n - A010060 (A073974 (n + 1)).toNat

end

end A068070.P13747142722862799492

/-!
# A068071: Triangular numbers that remain triangular when the least significant digit is moved to the beginning.

The programs for A068071, there is no canonical definition to state claims against.
-/

/-! ## A068071.P18159110493464891657

`record[C(A007920(ceil(n²/2)), 2)]`
-/

namespace A068071.P18159110493464891657
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A007920 ⌈(n ^ 2 : ℚ) / 2⌉.toNat).toNat 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A068071.P18159110493464891657

/-! ## A068071.P5996839575129429988

`record[A255974(A211318(n+1))]`
-/

namespace A068071.P5996839575129429988
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255974 (A211318 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A068071.P5996839575129429988

/-! ## A068071.P13006550444697792894

`∩[A061304(n+1), A180482(n+1)]`
-/

namespace A068071.P13006550444697792894
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061304 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180482 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A068071.P13006550444697792894

/-!
# A068073: Period 4 sequence [ 1, 2, 3, 2, ...].

The programs for A068073, the canonical program `A068073.P13340883488754094545` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A068073 has offset 0).

The definition of A068073 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A068073.P13340883488754094545

`2-A056594(n)`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A068073

/-- `2-A056594(n)` -/
def P13340883488754094545.Spec : Prop :=
  ∀ n, P13340883488754094545.a n = A068073 n

theorem P13340883488754094545.correct : P13340883488754094545.Spec := by
  intro n
  simp only [A068073]

end A068073

/-!
# A068074: a(n) = Sum_{d|n} (-1)^d*2^omega(n/d) where omega(x) is the number of distinct prime factors in the factorization of x.

The programs for A068074, the canonical program `A068074.P5533713125246169927` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A068074 has offset 1).

The definition of A068074 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A228441, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A068074.P5533713125246169927

`(-1)^(n+1)*A228441((n+1)²)`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A068074

/-- `(-1)^(n+1)*A228441((n+1)²)` -/
def P5533713125246169927.Spec : Prop :=
  ∀ n, P5533713125246169927.a n = A068074 (n + 1)

theorem P5533713125246169927.correct : P5533713125246169927.Spec := by
  intro n
  simp only [A068074, Nat.add_sub_cancel]

end A068074

/-! ## A068074.P10780644470615338530

`∑{d}[n+1, -A317528(#)]`
-/

namespace A068074.P10780644470615338530
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (-A317528 d)

end

end A068074.P10780644470615338530

namespace A068074

/-- `∑{d}[n+1, -A317528(#)]` -/
def P10780644470615338530.Spec : Prop :=
  ∀ n, P10780644470615338530.a n = A068074 (n + 1)

end A068074

/-! ## A068074.P4305319837823651269

`∑{d}[A007947(n+1), -A048272((n+1)/#)]`
-/

namespace A068074.P4305319837823651269
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, (-A048272 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat)

end

end A068074.P4305319837823651269

namespace A068074

/-- `∑{d}[A007947(n+1), -A048272((n+1)/#)]` -/
def P4305319837823651269.Spec : Prop :=
  ∀ n, P4305319837823651269.a n = A068074 (n + 1)

end A068074

/-! ## A068074.P6721948597973583267

`A005408(A046079(n+1))-A156688(A000265(n+1))`
-/

namespace A068074.P6721948597973583267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 (A046079 (n + 1)).toNat - A156688 (A000265 (n + 1)).toNat

end

end A068074.P6721948597973583267

namespace A068074

/-- `A005408(A046079(n+1))-A156688(A000265(n+1))` -/
def P6721948597973583267.Spec : Prop :=
  ∀ n, P6721948597973583267.a n = A068074 (n + 1)

end A068074

/-! ## A068074.P1913959915895269769

`∑{d}[gcd(n+1, ∑[n])², xor(1, #)-#]`
-/

namespace A068074.P1913959915895269769
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd (n + 1) (∑ j ∈ Finset.range (n + 1), f2 j) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), ((Nat.xor 1 d : ℤ) - (d : ℤ))

end

end A068074.P1913959915895269769

namespace A068074

/-- `∑{d}[gcd(n+1, ∑[n])², xor(1, #)-#]` -/
def P1913959915895269769.Spec : Prop :=
  ∀ n, P1913959915895269769.a n = A068074 (n + 1)

end A068074

/-! ## A068074.P11936113375644895737

`∑{d}[A168077(n+1), (-1)^#]`
-/

namespace A068074.P11936113375644895737
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168077 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, (-1) ^ d

end

end A068074.P11936113375644895737

namespace A068074

/-- `∑{d}[A168077(n+1), (-1)^#]` -/
def P11936113375644895737.Spec : Prop :=
  ∀ n, P11936113375644895737.a n = A068074 (n + 1)

end A068074

/-! ## A068074.P5493201175368640017

`∑{d}[A026741(n+1)², (-1)^#]`
-/

namespace A068074.P5493201175368640017
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, (-1) ^ d

end

end A068074.P5493201175368640017

namespace A068074

/-- `∑{d}[A026741(n+1)², (-1)^#]` -/
def P5493201175368640017.Spec : Prop :=
  ∀ n, P5493201175368640017.a n = A068074 (n + 1)

end A068074

/-! ## A068074.P5267817394858788501

`A092089(2*(n+1))-A092089(A003961(2*(n+1)))`
-/

namespace A068074.P5267817394858788501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092089 (2 * (n + 1)) - A092089 (A003961 (2 * (n + 1))).toNat

end

end A068074.P5267817394858788501

namespace A068074

/-- `A092089(2*(n+1))-A092089(A003961(2*(n+1)))` -/
def P5267817394858788501.Spec : Prop :=
  ∀ n, P5267817394858788501.a n = A068074 (n + 1)

end A068074

/-! ## A068074.P4337532180923485864

`∑{d}[(n+1)², (-1)^A160467(#)]`
-/

namespace A068074.P4337532180923485864
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (-1 : ℚ) ^ (A160467 d : ℤ)

end

end A068074.P4337532180923485864

namespace A068074

/-- `∑{d}[(n+1)², (-1)^A160467(#)]` -/
def P4337532180923485864.Spec : Prop :=
  ∀ n, P4337532180923485864.a n = (A068074 (n + 1) : ℚ)

end A068074

/-! ## A068074.P9985999287056515512

`∑{d}[(n+1)², A138745(#/A065883(#))]`
-/

namespace A068074.P9985999287056515512
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A138745 (SequenceMachineLib.roundAway ((d : ℚ) / (A065883 d : ℚ))).toNat

end

end A068074.P9985999287056515512

namespace A068074

/-- `∑{d}[(n+1)², A138745(#/A065883(#))]` -/
def P9985999287056515512.Spec : Prop :=
  ∀ n, P9985999287056515512.a n = A068074 (n + 1)

end A068074

/-! ## A068074.P15994519337069433369

`-A048272(gcd(n+1, ∑[n])²)`
-/

namespace A068074.P15994519337069433369
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A048272 (Nat.gcd (n + 1) (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2)

end

end A068074.P15994519337069433369

namespace A068074

/-- `-A048272(gcd(n+1, ∑[n])²)` -/
def P15994519337069433369.Spec : Prop :=
  ∀ n, P15994519337069433369.a n = A068074 (n + 1)

end A068074

/-! ## A068074.P2777356215340071726

`∑{d}[(n+1)², (-1)^A003557(#)]`
-/

namespace A068074.P2777356215340071726
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (-1 : ℚ) ^ (A003557 d : ℤ)

end

end A068074.P2777356215340071726

namespace A068074

/-- `∑{d}[(n+1)², (-1)^A003557(#)]` -/
def P2777356215340071726.Spec : Prop :=
  ∀ n, P2777356215340071726.a n = (A068074 (n + 1) : ℚ)

end A068074

/-! ## A068074.P11800554877229256948

`-A048272(Δ[A001318(n)]²)`
-/

namespace A068074.P11800554877229256948
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001318 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A048272 ((f1 (n + 1) - f1 n) ^ 2).toNat

end

end A068074.P11800554877229256948

namespace A068074

/-- `-A048272(Δ[A001318(n)]²)` -/
def P11800554877229256948.Spec : Prop :=
  ∀ n, P11800554877229256948.a n = A068074 (n + 1)

end A068074

/-! ## A068074.P18384659045098844963

`-A048272(A026741(n+1)²)`
-/

namespace A068074.P18384659045098844963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A048272 (A026741 (n + 1) ^ 2).toNat

end

end A068074.P18384659045098844963

namespace A068074

/-- `-A048272(A026741(n+1)²)` -/
def P18384659045098844963.Spec : Prop :=
  ∀ n, P18384659045098844963.a n = A068074 (n + 1)

end A068074

/-! ## A068074.P8445269933053686219

`-A048272(A026741(n+1)^2)`
-/

namespace A068074.P8445269933053686219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A048272 (A026741 (n + 1) ^ 2).toNat

end

end A068074.P8445269933053686219

namespace A068074

/-- `-A048272(A026741(n+1)^2)` -/
def P8445269933053686219.Spec : Prop :=
  ∀ n, P8445269933053686219.a n = A068074 (n + 1)

end A068074

/-!
# A068075: Lesser of a primitive pair such that n and its 10's complement are simultaneously square.

The programs for A068075, there is no canonical definition to state claims against.
-/

/-! ## A068075.P8431929767190308237

`A068810(A139476(n+1))`
-/

namespace A068075.P8431929767190308237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068810 (A139476 (n + 1)).toNat

end

end A068075.P8431929767190308237

/-!
# A068076: Number of positive integers < n with the same number of 1's in their binary expansions as n.

The programs for A068076, there is no canonical definition to state claims against.
-/

/-! ## A068076.P16881876853046736307

`A263017(n)-1`
-/

namespace A068076.P16881876853046736307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263017 n - 1

end

end A068076.P16881876853046736307

/-! ## A068076.P11932758166393097527

`A361079(2*n+1)-A361079(n)-1`
-/

namespace A068076.P11932758166393097527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361079 (2 * n + 1) - A361079 n - 1

end

end A068076.P11932758166393097527

/-! ## A068076.P15605703574326144571

`A079071(A004760(n+2))`
-/

namespace A068076.P15605703574326144571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079071 (A004760 (n + 2)).toNat

end

end A068076.P15605703574326144571

/-! ## A068076.P4859961728879658901

`A079071(A206332(n+1))`
-/

namespace A068076.P4859961728879658901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079071 (A206332 (n + 1)).toNat

end

end A068076.P4859961728879658901

/-! ## A068076.P7907524771982677872

`A182630(C(A263017(n), 2))`
-/

namespace A068076.P7907524771982677872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182630 (Nat.choose (A263017 n).toNat 2)

end

end A068076.P7907524771982677872

/-! ## A068076.P9588373562446019367

`A083800(n+1)%A263017(n)`
-/

namespace A068076.P9588373562446019367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A083800 (n + 1)) (A263017 n)

end

end A068076.P9588373562446019367

/-! ## A068076.P16776879835151880286

`A070198(n)%A263017(n)`
-/

namespace A068076.P16776879835151880286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A070198 n) (A263017 n)

end

end A068076.P16776879835151880286

/-! ## A068076.P8086651616229427244

`A079782(n+1)%A263017(n)`
-/

namespace A068076.P8086651616229427244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A079782 (n + 1)) (A263017 n)

end

end A068076.P8086651616229427244

/-! ## A068076.P14478528286245455009

`A083685(n+1)%A263017(n)`
-/

namespace A068076.P14478528286245455009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A083685 (n + 1)) (A263017 n)

end

end A068076.P14478528286245455009

/-! ## A068076.P2370318550171945634

`A121934(n+1)%A263017(n)`
-/

namespace A068076.P2370318550171945634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A121934 (n + 1)) (A263017 n)

end

end A068076.P2370318550171945634

/-! ## A068076.P17482998916664121630

`A030494(n+1)%A263017(n)`
-/

namespace A068076.P17482998916664121630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A030494 (n + 1)) (A263017 n)

end

end A068076.P17482998916664121630

/-! ## A068076.P2257320461163085757

`A072828(n+1)%A263017(n)`
-/

namespace A068076.P2257320461163085757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A072828 (n + 1)) (A263017 n)

end

end A068076.P2257320461163085757

/-!
# A068078: Numbers k such that (sigma(k)+sigma(k+1))/k is an integer.

The programs for A068078, there is no canonical definition to state claims against.
-/

/-! ## A068078.P10298636800467491842

`A000027(∪[A067806(n+1), A068077(n+1)])`
-/

namespace A068078.P10298636800467491842
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067806 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068077 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n)

end

end A068078.P10298636800467491842

/-! ## A068078.P9048392407043769600

`∏{e}[7^n, A067806(#)]`
-/

namespace A068078.P9048392407043769600
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A067806 (Nat.factorization (f1 n) p)

end

end A068078.P9048392407043769600

/-! ## A068078.P12326333972738048797

`A067806(A028310(n))%A064456(2*(n+1))`
-/

namespace A068078.P12326333972738048797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A067806 (A028310 n).toNat) (A064456 (2 * (n + 1)))

end

end A068078.P12326333972738048797

/-!
# A068080: Integers n such that n + phi(n) is a prime.

The programs for A068080, the canonical program `A068080.P15022809947655922069` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A068080 has offset 1).

The definition of A068080 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4246 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A068080.P15022809947655922069

`eq[1, A001222(A000010(n+1)+n+1)]+1`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A068080

/-- `eq[1, A001222(A000010(n+1)+n+1)]+1` -/
def P15022809947655922069.Spec : Prop :=
  ∀ n, (P15022809947655922069.a n : ℤ) = A068080 (n + 1)

theorem P15022809947655922069.correct : P15022809947655922069.Spec := by
  intro n
  simp only [A068080, Nat.add_sub_cancel]

end A068080

/-! ## A068080.P409187056605656314

`eq[2, A000005(A000010(n+1)+n+1)]+1`
-/

namespace A068080.P409187056605656314
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A000010 (n + 1) + (n + 1 : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A068080.P409187056605656314

namespace A068080

/-- `eq[2, A000005(A000010(n+1)+n+1)]+1` -/
def P409187056605656314.Spec : Prop :=
  ∀ n, (P409187056605656314.a n : ℤ) = A068080 (n + 1)

end A068080

/-! ## A068080.P15430705909246296048

`lt[A001222(A000010(n+1)+1+n), 2]+1`
-/

namespace A068080.P15430705909246296048
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A000010 (n + 1) + 1 + (n : ℤ)).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A068080.P15430705909246296048

namespace A068080

/-- `lt[A001222(A000010(n+1)+1+n), 2]+1` -/
def P15430705909246296048.Spec : Prop :=
  ∀ n, (P15430705909246296048.a n : ℤ) = A068080 (n + 1)

end A068080

/-! ## A068080.P1554613722596728137

`record[(n+1)/A001222(A000010(n+1)+n+1)]`
-/

namespace A068080.P1554613722596728137
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A001222 (A000010 (n + 1) + (n : ℤ) + 1).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A068080.P1554613722596728137

namespace A068080

/-- `record[(n+1)/A001222(A000010(n+1)+n+1)]` -/
def P1554613722596728137.Spec : Prop :=
  ∀ n, P1554613722596728137.a n = (A068080 (n + 1) : ℚ)

end A068080

/-! ## A068080.P15068903610797189233

`record[(n+1)%A020639(A000010(n+1)+n+1)]`
-/

namespace A068080.P15068903610797189233
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n + 1 : ℤ) (A020639 (A000010 (n + 1) + (n + 1 : ℤ)).toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A068080.P15068903610797189233

namespace A068080

/-- `record[(n+1)%A020639(A000010(n+1)+n+1)]` -/
def P15068903610797189233.Spec : Prop :=
  ∀ n, P15068903610797189233.a n = A068080 (n + 1)

end A068080

/-! ## A068080.P10758116354070348219

`eq[1, A001222(A121048(n+1))]+1`
-/

namespace A068080.P10758116354070348219
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A121048 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A068080.P10758116354070348219

namespace A068080

/-- `eq[1, A001222(A121048(n+1))]+1` -/
def P10758116354070348219.Spec : Prop :=
  ∀ n, (P10758116354070348219.a n : ℤ) = A068080 (n + 1)

theorem P10758116354070348219.correct : P10758116354070348219.Spec := by
  intro n
  simp only [A068080, Nat.add_sub_cancel, A068080.P10758116354070348219.f1, A068080.P10758116354070348219.f2, A068080.P10758116354070348219.a, A068080.P15022809947655922069.f1, A068080.P15022809947655922069.f2, A068080.P15022809947655922069.a, A000010, A000010.P4673923239450215316.a, A001222, A001222.P11318177267732088261.a, A121048, A121048.P10222907602682812102.a, A003557, A003557.P6364735403900941810.a, A061395, A061395.P8431317036300486107.a, A122111, A122111.P18124015185857335041.a, A173557, A173557.P15666735857375843373.a, A001221, A001221.P10258181745752134128.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A023900, A023900.P6802385856234332486.f1, A023900.P6802385856234332486.a, A029837, A029837.P1050578713049589.a, A064989, A064989.P13349672914146769936.a, A087207, A087207.P12536008426233777954.a, A105560, A105560.P7897608420550643844.f1, A105560.P7897608420550643844.a, A005089, A005089.P4329807401814625450.f1, A005089.P4329807401814625450.a, A005091, A005091.P2802037195389751204.f1, A005091.P2802037195389751204.a, A008578, A008578.P3639467937083264764.a, A048675, A048675.P15792214674053257917.f1, A048675.P15792214674053257917.a, A052126, A052126.P1944428405920482243.a, A059841, A059841.P2666504972441551157.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A068080

/-! ## A068080.P169880105632990253

`lt[A001222(A039649(n+1)+n)+1, 3]+1`
-/

namespace A068080.P169880105632990253
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A039649 (n + 1) + (n : ℤ)).toNat + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A068080.P169880105632990253

namespace A068080

/-- `lt[A001222(A039649(n+1)+n)+1, 3]+1` -/
def P169880105632990253.Spec : Prop :=
  ∀ n, (P169880105632990253.a n : ℤ) = A068080 (n + 1)

end A068080

/-! ## A068080.P9769578760511382067

`lt[A000005(A109606(n+1)+n+2), 3]+1`
-/

namespace A068080.P9769578760511382067
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A109606 (n + 1) + (n + 2 : ℤ)).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A068080.P9769578760511382067

namespace A068080

/-- `lt[A000005(A109606(n+1)+n+2), 3]+1` -/
def P9769578760511382067.Spec : Prop :=
  ∀ n, (P9769578760511382067.a n : ℤ) = A068080 (n + 1)

end A068080

/-! ## A068080.P8931079066436556259

`eq[2, A318885(A109606(n+1)+n+2)]+1`
-/

namespace A068080.P8931079066436556259
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318885 (A109606 (n + 1) + (n + 2 : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A068080.P8931079066436556259

namespace A068080

/-- `eq[2, A318885(A109606(n+1)+n+2)]+1` -/
def P8931079066436556259.Spec : Prop :=
  ∀ n, (P8931079066436556259.a n : ℤ) = A068080 (n + 1)

end A068080

/-! ## A068080.P10938214253561377319

`eq[1, A008476(A039649(n+1)+n)]+1`
-/

namespace A068080.P10938214253561377319
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008476 (A039649 (n + 1) + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A068080.P10938214253561377319

namespace A068080

/-- `eq[1, A008476(A039649(n+1)+n)]+1` -/
def P10938214253561377319.Spec : Prop :=
  ∀ n, (P10938214253561377319.a n : ℤ) = A068080 (n + 1)

end A068080

/-! ## A068080.P16546750329378341478

`lt[A033676(A000010(n+1)+1+n), 2]+1`
-/

namespace A068080.P16546750329378341478
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033676 (A000010 (n + 1) + 1 + (n : ℤ)).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A068080.P16546750329378341478

namespace A068080

/-- `lt[A033676(A000010(n+1)+1+n), 2]+1` -/
def P16546750329378341478.Spec : Prop :=
  ∀ n, (P16546750329378341478.a n : ℤ) = A068080 (n + 1)

end A068080

/-! ## A068080.P11437442728103246845

`record[(n+1)/A104725(A000010(n+1)+n+1)]`
-/

namespace A068080.P11437442728103246845
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A104725 (A000010 (n + 1) + (n + 1 : ℤ)).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A068080.P11437442728103246845

namespace A068080

/-- `record[(n+1)/A104725(A000010(n+1)+n+1)]` -/
def P11437442728103246845.Spec : Prop :=
  ∀ n, P11437442728103246845.a n = (A068080 (n + 1) : ℚ)

end A068080

/-!
# A068081: Numbers n such that n + phi(n) and n - phi(n) are prime.

The programs for A068081, the canonical program `A068081.P7218818830272040274` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A068081 has offset 1).

The definition of A068081 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2725 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A068081.P7218818830272040274

`∩[A050530(n+1), A068080(n+1)]`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A068081

/-- `∩[A050530(n+1), A068080(n+1)]` -/
def P7218818830272040274.Spec : Prop :=
  ∀ n, (P7218818830272040274.a n : ℤ) = A068081 (n + 1)

theorem P7218818830272040274.correct : P7218818830272040274.Spec := by
  intro n
  simp only [A068081, Nat.add_sub_cancel]

end A068081

/-! ## A068081.P17008938124482213972

`∩[eq[3, A326198(n+1)]+1, A068080(n+3)]`
-/

namespace A068081.P17008938124482213972
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326198 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n + 1

def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068080 (n + 3)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f4 j = (x : ℤ)) n

end

end A068081.P17008938124482213972

namespace A068081

/-- `∩[eq[3, A326198(n+1)]+1, A068080(n+3)]` -/
def P17008938124482213972.Spec : Prop :=
  ∀ n, (P17008938124482213972.a n : ℤ) = A068081 (n + 1)

end A068081

/-! ## A068081.P14362936816268569907

`∩[A053343(n+1), A229859(n+1)]`
-/

namespace A068081.P14362936816268569907
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053343 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229859 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A068081.P14362936816268569907

namespace A068081

/-- `∩[A053343(n+1), A229859(n+1)]` -/
def P14362936816268569907.Spec : Prop :=
  ∀ n, (P14362936816268569907.a n : ℤ) = A068081 (n + 1)

end A068081

/-! ## A068081.P2225867623430474568

`∩[A229859(n+1), A291318(n+1)]`
-/

namespace A068081.P2225867623430474568
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229859 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291318 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A068081.P2225867623430474568

namespace A068081

/-- `∩[A229859(n+1), A291318(n+1)]` -/
def P2225867623430474568.Spec : Prop :=
  ∀ n, (P2225867623430474568.a n : ℤ) = A068081 (n + 1)

end A068081

/-! ## A068081.P16633686276106794008

`A053343(eq[A080345(n+1), A140437(n+1)])`
-/

namespace A068081.P16633686276106794008
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080345 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140437 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053343 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A068081.P16633686276106794008

namespace A068081

/-- `A053343(eq[A080345(n+1), A140437(n+1)])` -/
def P16633686276106794008.Spec : Prop :=
  ∀ n, P16633686276106794008.a n = A068081 (n + 1)

end A068081

/-!
# A068082: a(1) = 1, a(n) = smallest triangular number of the form k*a(n-1) + 1 for some positive integer k.

The programs for A068082, the canonical program `A068082.P13594583604330320635` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A068082 has offset 0).

The definition of A068082 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 107 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A068082.P13594583604330320635

`10*a(n-1)-9*a(n-2)` with `a(0)=1, a(1)=3, a(2)=10, a(3)=21, a(4)=190`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A068082

/-- `10*a(n-1)-9*a(n-2)` -/
def P13594583604330320635.Spec : Prop :=
  ∀ n, P13594583604330320635.a n = A068082 n

theorem P13594583604330320635.correct : P13594583604330320635.Spec := by
  intro n
  simp only [A068082]

end A068082

/-! ## A068082.P17936186054363131872

`A076987(a(n-1))` with `a(0)=1`
-/

namespace A068082.P17936186054363131872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A076987 (a (n - 1)).toNat

end

end A068082.P17936186054363131872

namespace A068082

/-- `A076987(a(n-1))` -/
def P17936186054363131872.Spec : Prop :=
  ∀ n, P17936186054363131872.a n = A068082 n

end A068082

/-!
# A068083: a(1) = 1, a(n) is the smallest Fibonacci number of the form k*a(n-1) + 1 with k>0.

The programs for A068083, there is no canonical definition to state claims against.
-/

/-! ## A068083.P16904167692186790840

`A327035(2^(n+1)+2)`
-/

namespace A068083.P16904167692186790840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327035 (2 ^ (n + 1) + 2)

end

end A068083.P16904167692186790840

/-! ## A068083.P1510249457670175963

`A000045(floor(∑[2^n/3])+2)`
-/

namespace A068083.P1510249457670175963
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℚ) / 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (⌊∑ j ∈ Finset.range (n + 1), f1 j⌋ + 2).toNat

end

end A068083.P1510249457670175963

/-! ## A068083.P4468096817088948651

`record[A000045(2*n-and(n, 3*n)+2)]`
-/

namespace A068083.P4468096817088948651
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 ((2 * n : ℤ) - (Nat.land n (3 * n) : ℤ) + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A068083.P4468096817088948651

/-! ## A068083.P17399466287797892519

`A123231(A026644(n))`
-/

namespace A068083.P17399466287797892519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123231 (A026644 n).toNat

end

end A068083.P17399466287797892519

/-! ## A068083.P7448856690569776023

`A142880(A094373(n))`
-/

namespace A068083.P7448856690569776023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142880 (A094373 n).toNat

end

end A068083.P7448856690569776023

/-!
# A068084: Smallest triangular number which is a multiple (>1) of the n-th triangular number.

The programs for A068084, there is no canonical definition to state claims against.
-/

/-! ## A068084.P8749386284191454510

`C(A069752(n+1)+1, 2)`
-/

namespace A068084.P8749386284191454510
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A069752 (n + 1) + 1).toNat 2

end

end A068084.P8749386284191454510

/-! ## A068084.P16321414069283966368

`∑[n+1]*A188621(n+1)`
-/

namespace A068084.P16321414069283966368
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) * A188621 (n + 1)

end

end A068084.P16321414069283966368

/-! ## A068084.P7746840553187962273

`A110351(n+1)+∑[n+1]`
-/

namespace A068084.P7746840553187962273
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110351 (n + 1) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A068084.P7746840553187962273

/-! ## A068084.P15437260652559271280

`A110351(n+1)+A000096(n)+1`
-/

namespace A068084.P15437260652559271280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110351 (n + 1) + A000096 n + 1

end

end A068084.P15437260652559271280

/-! ## A068084.P9284297240468887587

`A161680(n+2)+A110351(n+1)`
-/

namespace A068084.P9284297240468887587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161680 (n + 2) + A110351 (n + 1)

end

end A068084.P9284297240468887587

/-! ## A068084.P10174610387649083095

`A179865(n+2)+A110351(n+1)`
-/

namespace A068084.P10174610387649083095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179865 (n + 2) + A110351 (n + 1)

end

end A068084.P10174610387649083095

/-! ## A068084.P13625276757469143240

`A167499(n)+A110351(n+1)-5`
-/

namespace A068084.P13625276757469143240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167499 n + (A110351 (n + 1) - 5)

end

end A068084.P13625276757469143240

/-! ## A068084.P17955035161300283684

`A110351(n+1)+A000124(n)+n`
-/

namespace A068084.P17955035161300283684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110351 (n + 1) + A000124 n + (n : ℤ)

end

end A068084.P17955035161300283684

/-! ## A068084.P13799547109127033566

`A000217(A069752(n+1))`
-/

namespace A068084.P13799547109127033566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (A069752 (n + 1)).toNat

end

end A068084.P13799547109127033566

/-! ## A068084.P14112218745695927664

`A000217(A110353(n+1)+1+n)`
-/

namespace A068084.P14112218745695927664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (A110353 (n + 1) + 1 + (n : ℤ)).toNat

end

end A068084.P14112218745695927664

/-!
# A068085: Numbers k such that k and 10*k are both triangular numbers.

The programs for A068085, there is no canonical definition to state claims against.
-/

/-! ## A068085.P9538810162567584825

`A180003(n+1)/2*A341893(n+1)`
-/

namespace A068085.P9538810162567584825
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A180003 (n + 1) : ℚ) / 2 * (A341893 (n + 1) : ℚ)

end

end A068085.P9538810162567584825

/-! ## A068085.P6184760899227605418

`C(A180003(n+1), 2)`
-/

namespace A068085.P6184760899227605418
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A180003 (n + 1)).toNat 2

end

end A068085.P6184760899227605418

/-! ## A068085.P15808678721414974057

`C(A341893(n+1)+1, 2)`
-/

namespace A068085.P15808678721414974057
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A341893 (n + 1) + 1).toNat 2

end

end A068085.P15808678721414974057

/-! ## A068085.P17135742812548824392

`floor(A052454(n+1)²/8)`
-/

namespace A068085.P17135742812548824392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A052454 (n + 1) ^ 2 : ℚ) / 8⌋

end

end A068085.P17135742812548824392

/-! ## A068085.P16756191065609197300

`ceil(A052454(n+1)²/8-A000034(A231609(n+1)-1))`
-/

namespace A068085.P16756191065609197300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A052454 (n + 1) ^ 2 : ℚ) / 8 - (A000034 (A231609 (n + 1) - 1).toNat : ℚ)⌉

end

end A068085.P16756191065609197300

/-!
# A068086: a(n) = A036229(n) - 111...1 (with n 1's).

The programs for A068086, there is no canonical definition to state claims against.
-/

/-! ## A068086.P14270439340455563479

`A036229(n+1)-∑[A011557(n)]`
-/

namespace A068086.P14270439340455563479
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011557 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036229 (n + 1) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A068086.P14270439340455563479

/-! ## A068086.P5316035836210315142

`A036229(n+1)-A000042(n+1)`
-/

namespace A068086.P5316035836210315142
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036229 (n + 1) - A000042 (n + 1)

end

end A068086.P5316035836210315142

/-! ## A068086.P13936855663674094683

`A036229(n+1)-A002275(n+1)`
-/

namespace A068086.P13936855663674094683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036229 (n + 1) - A002275 (n + 1)

end

end A068086.P13936855663674094683

/-! ## A068086.P10432304342502987816

`A036229(n+1)-A094026(2*n+1)`
-/

namespace A068086.P10432304342502987816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036229 (n + 1) - A094026 (2 * n + 1)

end

end A068086.P10432304342502987816

/-! ## A068086.P4259013801179751056

`A036229(n+1)-∑[A025621(A025742(n))]`
-/

namespace A068086.P4259013801179751056
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025621 (A025742 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036229 (n + 1) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A068086.P4259013801179751056

/-!
# A068087: a(n) = n^(2*n-2).

The programs for A068087, the canonical program `A068087.P1756694442987373916` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A068087 has offset 1).

The definition of A068087 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A068087.P1756694442987373916

`(n+1)^(2*(n+1)-2)`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A068087

/-- `(n+1)^(2*(n+1)-2)` -/
def P1756694442987373916.Spec : Prop :=
  ∀ n, P1756694442987373916.a n = (A068087 (n + 1) : ℚ)

end A068087

/-! ## A068087.P312213746649374141

`((n+1)^n*acos(cos(1)))²`
-/

namespace A068087.P312213746649374141
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (((n + 1) ^ n : ℝ) * Real.arccos (Real.cos (1 : ℝ))) ^ 2

end

end A068087.P312213746649374141

namespace A068087

/-- `((n+1)^n*acos(cos(1)))²` -/
def P312213746649374141.Spec : Prop :=
  ∀ n, P312213746649374141.a n = (A068087 (n + 1) : ℝ)

end A068087

/-! ## A068087.P5043217221783016854

`((n+1)^n/acos(cos(1)))²`
-/

namespace A068087.P5043217221783016854
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (((n + 1) ^ n : ℝ) / Real.arccos (Real.cos (1 : ℝ))) ^ 2

end

end A068087.P5043217221783016854

namespace A068087

/-- `((n+1)^n/acos(cos(1)))²` -/
def P5043217221783016854.Spec : Prop :=
  ∀ n, P5043217221783016854.a n = (A068087 (n + 1) : ℝ)

end A068087

/-! ## A068087.P13731391824153466308

`((n+1)^n*tan(acot(1)))²`
-/

namespace A068087.P13731391824153466308
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (((n + 1) ^ n : ℝ) * Real.tan (SequenceMachineLib.acot (1 : ℝ))) ^ 2

end

end A068087.P13731391824153466308

namespace A068087

/-- `((n+1)^n*tan(acot(1)))²` -/
def P13731391824153466308.Spec : Prop :=
  ∀ n, P13731391824153466308.a n = (A068087 (n + 1) : ℝ)

end A068087

/-! ## A068087.P1483219107614634200

`((n+1)^n/tan(acot(1)))²`
-/

namespace A068087.P1483219107614634200
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (((n + 1) ^ n : ℝ) / Real.tan (SequenceMachineLib.acot (1 : ℝ))) ^ 2

end

end A068087.P1483219107614634200

namespace A068087

/-- `((n+1)^n/tan(acot(1)))²` -/
def P1483219107614634200.Spec : Prop :=
  ∀ n, P1483219107614634200.a n = (A068087 (n + 1) : ℝ)

end A068087

/-!
# A068088: Numbers k such that k-3, k-2, k-1, k+1, k+2 and k+3 are squarefree.

The programs for A068088, there is no canonical definition to state claims against.
-/

/-! ## A068088.P6445924205475822882

`4*A283628(n+1)`
-/

namespace A068088.P6445924205475822882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A283628 (n + 1)

end

end A068088.P6445924205475822882

/-! ## A068088.P1953615241923177618

`A008574(A283628(n+1))`
-/

namespace A068088.P1953615241923177618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008574 (A283628 (n + 1)).toNat

end

end A068088.P1953615241923177618

/-! ## A068088.P4970727337863344205

`A008586(A283628(n+1)%A061224(n))`
-/

namespace A068088.P4970727337863344205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008586 (Int.tmod (A283628 (n + 1)) (A061224 n)).toNat

end

end A068088.P4970727337863344205

/-! ## A068088.P11176179893616108793

`A008586(A283628(n+1))%A206343(n+1)`
-/

namespace A068088.P11176179893616108793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A008586 (A283628 (n + 1)).toNat) (A206343 (n + 1))

end

end A068088.P11176179893616108793

/-! ## A068088.P3068356355057789485

`A005843(A008486(A283628(n+1))-A283628(n+1))`
-/

namespace A068088.P3068356355057789485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A008486 (A283628 (n + 1)).toNat - A283628 (n + 1)).toNat

end

end A068088.P3068356355057789485

/-!
# A068089: Decimal expansion of 104348 / 33215.

The programs for A068089, there is no canonical definition to state claims against.
-/

/-! ## A068089.P5194964054251249816

`A000796(A345406(n+1)%A000029(n))`
-/

namespace A068089.P5194964054251249816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000796 ((Int.tmod (A345406 (n + 1)) (A000029 n)).toNat + 1)

end

end A068089.P5194964054251249816

/-!
# A068090: Numbers n which divide the right concatenation of the first n even numbers.

The programs for A068090, there is no canonical definition to state claims against.
-/

/-! ## A068090.P7996262038602286076

`eq[char[24*n], A008651(n)]+1`
-/

namespace A068090.P7996262038602286076
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  24 * n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008651 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n + 1

end

end A068090.P7996262038602286076

/-! ## A068090.P2831409482195799234

`eq[char[A266952(n)], A036875(n+1)]`
-/

namespace A068090.P2831409482195799234
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266952 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036875 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A068090.P2831409482195799234

/-! ## A068090.P16798044190031134992

`record[gcd(A077342(n+1), A263104(n+9))]`
-/

namespace A068090.P16798044190031134992
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A077342 (n + 1)) (A263104 (n + 9))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A068090.P16798044190031134992

/-! ## A068090.P13362623790018106986

`A277903(record[A342248(n+8)])+A088567(n)`
-/

namespace A068090.P13362623790018106986
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342248 (n + 8)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277903 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat + A088567 n

end

end A068090.P13362623790018106986

/-! ## A068090.P4553798787969876706

`lt[A032742(A050027(n+1)), A050932(2*n)]`
-/

namespace A068090.P4553798787969876706
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032742 (A050027 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050932 (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A068090.P4553798787969876706

/-!
# A068091: Number of board-pair-pile hexagonal polyominoes with n cells.

The programs for A068091, there is no canonical definition to state claims against.
-/

/-! ## A068091.P11818013567803845116

`A028310(A129156(n)+A085362(n))`
-/

namespace A068091.P11818013567803845116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A129156 n + A085362 n).toNat

end

end A068091.P11818013567803845116

/-! ## A068091.P12264231675328882059

`A205406(A129156(n)+A085362(n))`
-/

namespace A068091.P12264231675328882059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205406 (A129156 n + A085362 n).toNat

end

end A068091.P12264231675328882059

/-! ## A068091.P18341143809191127447

`A001207(n+1)-A058348(A002905(n))`
-/

namespace A068091.P18341143809191127447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001207 (n + 1) - A058348 (A002905 n).toNat

end

end A068091.P18341143809191127447

/-!
# A068092: Index of smallest triangular number with n digits.

The programs for A068092, the canonical program `A068092.P3786387799136448240` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A068092 has offset 1).

The definition of A068092 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A068092.P3786387799136448240

`round(sqrt(2*10^n))`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A068092

/-- `round(sqrt(2*10^n))` -/
def P3786387799136448240.Spec : Prop :=
  ∀ n, P3786387799136448240.a n = A068092 (n + 1)

theorem P3786387799136448240.correct : P3786387799136448240.Spec := by
  intro n
  simp only [A068092, Nat.add_sub_cancel]

end A068092

/-! ## A068092.P2511247753414410731

`A068094(n)+a(n-1)` with `a(0)=1`
-/

namespace A068092.P2511247753414410731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A068094 n + a (n - 1)

end

end A068092.P2511247753414410731

namespace A068092

/-- `A068094(n)+a(n-1)` -/
def P2511247753414410731.Spec : Prop :=
  ∀ n, P2511247753414410731.a n = A068092 (n + 1)

end A068092

/-! ## A068092.P14934908355665277181

`A236043(n)-A019590(n+1)`
-/

namespace A068092.P14934908355665277181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236043 n - A019590 (n + 1)

end

end A068092.P14934908355665277181

namespace A068092

/-- `A236043(n)-A019590(n+1)` -/
def P14934908355665277181.Spec : Prop :=
  ∀ n, P14934908355665277181.a n = A068092 (n + 1)

end A068092

/-! ## A068092.P1559038805325269317

`A068093(n+2)-(A095864(n+1)+A068094(n+1))`
-/

namespace A068092.P1559038805325269317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068093 (n + 2) - (A095864 (n + 1) + A068094 (n + 1))

end

end A068092.P1559038805325269317

namespace A068092

/-- `A068093(n+2)-(A095864(n+1)+A068094(n+1))` -/
def P1559038805325269317.Spec : Prop :=
  ∀ n, P1559038805325269317.a n = A068092 (n + 1)

theorem P1559038805325269317.correct : P1559038805325269317.Spec := by
  intro n
  simp only [A068092, Nat.add_sub_cancel, A068092.P1559038805325269317.a, A068092.P3786387799136448240.a, A068093, A068093.P11725195299041626924.a, A068094, A068094.P8683545945666724130.f1, A068094.P8683545945666724130.a, A095864, A095864.P7106599436942101963.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A068092

/-! ## A068092.P1369725034668768584

`A022846(A017935(n))`
-/

namespace A068092.P1369725034668768584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022846 (A017935 n).toNat

end

end A068092.P1369725034668768584

namespace A068092

/-- `A022846(A017935(n))` -/
def P1369725034668768584.Spec : Prop :=
  ∀ n, P1369725034668768584.a n = A068092 (n + 1)

end A068092

/-!
# A068093: Smallest n-digit triangular number.

The programs for A068093, the canonical program `A068093.P11725195299041626924` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A068093 has offset 1).

The definition of A068093 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A068093.P11725195299041626924

`C(A068092(n+1)+1, 2)`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A068093

/-- `C(A068092(n+1)+1, 2)` -/
def P11725195299041626924.Spec : Prop :=
  ∀ n, (P11725195299041626924.a n : ℤ) = A068093 (n + 1)

theorem P11725195299041626924.correct : P11725195299041626924.Spec := by
  intro n
  simp only [A068093, Nat.add_sub_cancel]

end A068093

/-! ## A068093.P3985682089150238587

`10^n+A095865(n+1)`
-/

namespace A068093.P3985682089150238587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (10 ^ n : ℤ) + A095865 (n + 1)

end

end A068093.P3985682089150238587

namespace A068093

/-- `10^n+A095865(n+1)` -/
def P3985682089150238587.Spec : Prop :=
  ∀ n, P3985682089150238587.a n = A068093 (n + 1)

theorem P3985682089150238587.correct : P3985682089150238587.Spec := by
  intro n
  simp only [A068093, Nat.add_sub_cancel, A068093.P3985682089150238587.a, A068093.P11725195299041626924.a, A068092, A068092.P3786387799136448240.a, A095865, A095865.P3428909612435295110.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A068093

/-! ## A068093.P8497316258519887035

`A095865(n+1)+A011557(n)`
-/

namespace A068093.P8497316258519887035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095865 (n + 1) + A011557 n

end

end A068093.P8497316258519887035

namespace A068093

/-- `A095865(n+1)+A011557(n)` -/
def P8497316258519887035.Spec : Prop :=
  ∀ n, P8497316258519887035.a n = A068093 (n + 1)

theorem P8497316258519887035.correct : P8497316258519887035.Spec := by
  intro n
  simp only [A068093, Nat.add_sub_cancel, A068093.P8497316258519887035.a, A068093.P11725195299041626924.a, A011557, A011557.P11220211478167790856.a, A068092, A068092.P3786387799136448240.a, A095865, A095865.P3428909612435295110.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A068093

/-! ## A068093.P4305098049767028303

`A095865(n+1)+Δ[A002275(n)]`
-/

namespace A068093.P4305098049767028303
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002275 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095865 (n + 1) + (f1 (n + 1) - f1 n)

end

end A068093.P4305098049767028303

namespace A068093

/-- `A095865(n+1)+Δ[A002275(n)]` -/
def P4305098049767028303.Spec : Prop :=
  ∀ n, P4305098049767028303.a n = A068093 (n + 1)

end A068093

/-! ## A068093.P13222039008260826901

`A095865(n+1)+A002283(n)+1`
-/

namespace A068093.P13222039008260826901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095865 (n + 1) + (A002283 n + 1)

end

end A068093.P13222039008260826901

namespace A068093

/-- `A095865(n+1)+A002283(n)+1` -/
def P13222039008260826901.Spec : Prop :=
  ∀ n, P13222039008260826901.a n = A068093 (n + 1)

theorem P13222039008260826901.correct : P13222039008260826901.Spec := by
  intro n
  simp only [A068093, Nat.add_sub_cancel, A068093.P13222039008260826901.a, A068093.P11725195299041626924.a, A002283, A002283.P2252111154706607536.a, A068092, A068092.P3786387799136448240.a, A095865, A095865.P3428909612435295110.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A068093

/-!
# A068094: Number of n-digit triangular numbers.

The programs for A068094, the canonical program `A068094.P8683545945666724130` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A068094 has offset 1).

The definition of A068094 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 199 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A068094.P8683545945666724130

`Δ[A068092(n+1)]`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A068094

/-- `Δ[A068092(n+1)]` -/
def P8683545945666724130.Spec : Prop :=
  ∀ n, P8683545945666724130.a n = A068094 (n + 1)

theorem P8683545945666724130.correct : P8683545945666724130.Spec := by
  intro n
  simp only [A068094, Nat.add_sub_cancel]

end A068094

/-! ## A068094.P1260895493028072749

`record[Δ[A068092(A080513(n))]]`
-/

namespace A068094.P1260895493028072749
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068092 (A080513 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A068094.P1260895493028072749

namespace A068094

/-- `record[Δ[A068092(A080513(n))]]` -/
def P1260895493028072749.Spec : Prop :=
  ∀ n, P1260895493028072749.a n = A068094 (n + 1)

end A068094

/-! ## A068094.P3384102598101847254

`A068092(n+2)-A068092(n+1)`
-/

namespace A068094.P3384102598101847254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068092 (n + 2) - A068092 (n + 1)

end

end A068094.P3384102598101847254

namespace A068094

/-- `A068092(n+2)-A068092(n+1)` -/
def P3384102598101847254.Spec : Prop :=
  ∀ n, P3384102598101847254.a n = A068094 (n + 1)

theorem P3384102598101847254.correct : P3384102598101847254.Spec := by
  intro n
  simp only [A068094, Nat.add_sub_cancel, A068094.P3384102598101847254.a, A068094.P8683545945666724130.f1, A068094.P8683545945666724130.a, SequenceMachineLib.memo_apply]

end A068094

/-! ## A068094.P5231445192798237749

`Δ[A236043(n)-A019590(n+1)]%A018906(n+2)`
-/

namespace A068094.P5231445192798237749
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236043 n - A019590 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (n + 1) - f1 n) (A018906 (n + 2))

end

end A068094.P5231445192798237749

namespace A068094

/-- `Δ[A236043(n)-A019590(n+1)]%A018906(n+2)` -/
def P5231445192798237749.Spec : Prop :=
  ∀ n, P5231445192798237749.a n = A068094 (n + 1)

end A068094

/-! ## A068094.P5731634595848864478

`Δ[round(sqrt(2*10^n))]`
-/

namespace A068094.P5731634595848864478
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (2 * 10 ^ n : ℝ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A068094.P5731634595848864478

namespace A068094

/-- `Δ[round(sqrt(2*10^n))]` -/
def P5731634595848864478.Spec : Prop :=
  ∀ n, P5731634595848864478.a n = A068094 (n + 1)

end A068094

/-! ## A068094.P17004401646285207768

`-Δ[-floor(A067272(n+1)/A083377(n+1))]`
-/

namespace A068094.P17004401646285207768
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -⌊(A067272 (n + 1) : ℚ) / (A083377 (n + 1) : ℚ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(f1 (n + 1) - f1 n)

end

end A068094.P17004401646285207768

namespace A068094

/-- `-Δ[-floor(A067272(n+1)/A083377(n+1))]` -/
def P17004401646285207768.Spec : Prop :=
  ∀ n, P17004401646285207768.a n = A068094 (n + 1)

end A068094

/-!
# A068095: All primes dividing each term are Fibonacci numbers.

The programs for A068095, there is no canonical definition to state claims against.
-/

/-! ## A068095.P3650698611440356970

`eq[2, A182544(A141256(n))]`
-/

namespace A068095.P3650698611440356970
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182544 (A141256 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A068095.P3650698611440356970

/-! ## A068095.P15900699812999972149

`eq[9, A025581(17*A141256(n)²)]`
-/

namespace A068095.P15900699812999972149
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 (17 * A141256 n ^ 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A068095.P15900699812999972149

/-! ## A068095.P7521537711278510067

`eq[1, A133299(A006530(n+1))]+1`
-/

namespace A068095.P7521537711278510067
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133299 (A006530 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A068095.P7521537711278510067

/-!
# A068096: a(n) = F(L(n)) where F(n) = n-th Fibonacci number and L(n) = n-th Lucas number.

The programs for A068096, there is no canonical definition to state claims against.
-/

/-! ## A068096.P3497423174911321380

`A000045(round(ϕ^n))`
-/

namespace A068096.P3497423174911321380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (SequenceMachineLib.roundAway (Real.goldenRatio ^ n)).toNat

end

end A068096.P3497423174911321380

/-! ## A068096.P7130840773515175485

`A059974(A094894(n))`
-/

namespace A068096.P7130840773515175485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059974 (A094894 n).toNat

end

end A068096.P7130840773515175485

/-! ## A068096.P16729694645212369096

`A212804(A001612(n))`
-/

namespace A068096.P16729694645212369096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212804 (A001612 n).toNat

end

end A068096.P16729694645212369096

/-! ## A068096.P12518712731196249556

`A103610(A258160(n))`
-/

namespace A068096.P12518712731196249556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103610 (A258160 n).toNat

end

end A068096.P12518712731196249556

/-! ## A068096.P17224328572875072462

`A280688(A156279(n))`
-/

namespace A068096.P17224328572875072462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280688 (A156279 n).toNat

end

end A068096.P17224328572875072462

/-!
# A068098: a(n) = Lucas(Fibonacci(n)).

The programs for A068098, there is no canonical definition to state claims against.
-/

/-! ## A068098.P6024918614278103843

`A000032(round(ϕ^n/sqrt(5)))`
-/

namespace A068098.P6024918614278103843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 (SequenceMachineLib.roundAway (Real.goldenRatio ^ n / Real.sqrt (5 : ℝ))).toNat

end

end A068098.P6024918614278103843

/-! ## A068098.P17883253034693485128

`A090244(A001588(n))`
-/

namespace A068098.P17883253034693485128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090244 (A001588 n).toNat

end

end A068098.P17883253034693485128

/-! ## A068098.P1671177670775553428

`A127218(A055389(n))`
-/

namespace A068098.P1671177670775553428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127218 (A055389 n).toNat

end

end A068098.P1671177670775553428

/-! ## A068098.P16509214713337117550

`A329723(A157725(n))`
-/

namespace A068098.P16509214713337117550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329723 (A157725 n).toNat

end

end A068098.P16509214713337117550

/-! ## A068098.P4854471757311183040

`A127218(A006355(n+1))`
-/

namespace A068098.P4854471757311183040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127218 (A006355 (n + 1)).toNat

end

end A068098.P4854471757311183040

/-!
# A068099: a(1) = 1; a(n+1) = n! * Sum_{d|n} a(d)/d where the sum is over the positive divisors d of n.

The programs for A068099, there is no canonical definition to state claims against.
-/

/-! ## A068099.P10495177447231592939

`A332339(A290866(n+1))`
-/

namespace A068099.P10495177447231592939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332339 (A290866 (n + 1)).toNat

end

end A068099.P10495177447231592939

/-! ## A068099.P12701724431557465463

`A332339(A013939(2^n))`
-/

namespace A068099.P12701724431557465463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332339 (A013939 (2 ^ n)).toNat

end

end A068099.P12701724431557465463

