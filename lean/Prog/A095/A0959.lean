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
import Seq.B000.C033
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C038
import Seq.B000.C041
import Seq.B000.C044
import Seq.B000.C045
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C008
import Seq.B001.C010
import Seq.B001.C011
import Seq.B001.C012
import Seq.B001.C013
import Seq.B001.C014
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C004
import Seq.B002.C005
import Seq.B002.C006
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C004
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
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
import SequenceMachineLib.Triangle

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A095900: a(n) = A004001(10^n).

The programs for A095900, the canonical program `A095900.P7388897981805196754` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A095900 has offset 0).

The definition of A095900 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A004001(10^n)` (program `A095900.P7388897981805196754`, by `A095900.P7388897981805196754.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A095900.P7388897981805196754

`A004001(10^n)`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A095900

/-- `A004001(10^n)` -/
def P7388897981805196754.Spec : Prop :=
  ∀ n, P7388897981805196754.a n = A095900 n

theorem P7388897981805196754.correct : P7388897981805196754.Spec := by
  intro n
  simp only [A095900]

end A095900

/-!
# A095901: A004001 (mod 2).

The programs for A095901, the canonical program `A095901.P11254188735192265131` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A095901 has offset 1).

The definition of A095901 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A095901.P11254188735192265131

`A004001(n+1)%2`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A095901

/-- `A004001(n+1)%2` -/
def P11254188735192265131.Spec : Prop :=
  ∀ n, P11254188735192265131.a n = A095901 (n + 1)

theorem P11254188735192265131.correct : P11254188735192265131.Spec := by
  intro n
  simp only [A095901, Nat.add_sub_cancel]

end A095901

/-! ## A095901.P11061274898155910636

`A283470(1+n)%2`
-/

namespace A095901.P11061274898155910636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A283470 (1 + n)) 2

end

end A095901.P11061274898155910636

namespace A095901

/-- `A283470(1+n)%2` -/
def P11061274898155910636.Spec : Prop :=
  ∀ n, P11061274898155910636.a n = A095901 (n + 1)

end A095901

/-! ## A095901.P1029231860699234572

`and(1, A283468(1+n))`
-/

namespace A095901.P1029231860699234572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A283468 (1 + n))

end

end A095901.P1029231860699234572

namespace A095901

/-- `and(1, A283468(1+n))` -/
def P1029231860699234572.Spec : Prop :=
  ∀ n, P1029231860699234572.a n = A095901 (n + 1)

end A095901

/-! ## A095901.P13762019379532360986

`and(1, A283470(n+1))`
-/

namespace A095901.P13762019379532360986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A283470 (n + 1))

end

end A095901.P13762019379532360986

namespace A095901

/-- `and(1, A283470(n+1))` -/
def P13762019379532360986.Spec : Prop :=
  ∀ n, P13762019379532360986.a n = A095901 (n + 1)

end A095901

/-! ## A095901.P3714676912114568419

`char[A283481(n+1)-1]`
-/

namespace A095901.P3714676912114568419
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283481 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A095901.P3714676912114568419

namespace A095901

/-- `char[A283481(n+1)-1]` -/
def P3714676912114568419.Spec : Prop :=
  ∀ n, (P3714676912114568419.a n : ℤ) = A095901 (n + 1)

end A095901

/-! ## A095901.P9229243808652096874

`char[eq[0, A095767(n+1)]]`
-/

namespace A095901.P9229243808652096874
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095767 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A095901.P9229243808652096874

namespace A095901

/-- `char[eq[0, A095767(n+1)]]` -/
def P9229243808652096874.Spec : Prop :=
  ∀ n, (P9229243808652096874.a n : ℤ) = A095901 (n + 1)

end A095901

/-! ## A095901.P3348801760821021458

`(A080677(n+1)+n)%2`
-/

namespace A095901.P3348801760821021458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A080677 (n + 1) + (n : ℤ)) 2

end

end A095901.P3348801760821021458

namespace A095901

/-- `(A080677(n+1)+n)%2` -/
def P3348801760821021458.Spec : Prop :=
  ∀ n, P3348801760821021458.a n = A095901 (n + 1)

end A095901

/-! ## A095901.P8081667163693784072

`(a(n-1)-A093879(n))²` with `a(0)=1`
-/

namespace A095901.P8081667163693784072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (a (n - 1) - A093879 n) ^ 2

end

end A095901.P8081667163693784072

namespace A095901

/-- `(a(n-1)-A093879(n))²` -/
def P8081667163693784072.Spec : Prop :=
  ∀ n, P8081667163693784072.a n = A095901 (n + 1)

end A095901

/-! ## A095901.P9101877422872607810

`A000035(A004001(n+1))`
-/

namespace A095901.P9101877422872607810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A004001 (n + 1)).toNat

end

end A095901.P9101877422872607810

namespace A095901

/-- `A000035(A004001(n+1))` -/
def P9101877422872607810.Spec : Prop :=
  ∀ n, P9101877422872607810.a n = A095901 (n + 1)

end A095901

/-! ## A095901.P10493430704169152287

`A000007(A095767(n+1))`
-/

namespace A095901.P10493430704169152287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (A095767 (n + 1)).toNat

end

end A095901.P10493430704169152287

namespace A095901

/-- `A000007(A095767(n+1))` -/
def P10493430704169152287.Spec : Prop :=
  ∀ n, P10493430704169152287.a n = A095901 (n + 1)

end A095901

/-! ## A095901.P6271611281170828181

`A000035(A283470(n+1))`
-/

namespace A095901.P6271611281170828181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A283470 (n + 1)).toNat

end

end A095901.P6271611281170828181

namespace A095901

/-- `A000035(A283470(n+1))` -/
def P6271611281170828181.Spec : Prop :=
  ∀ n, P6271611281170828181.a n = A095901 (n + 1)

end A095901

/-! ## A095901.P1849376808460765915

`and(A004001(n+1), A158388(n))`
-/

namespace A095901.P1849376808460765915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A004001 (n + 1)) (A158388 n)

end

end A095901.P1849376808460765915

namespace A095901

/-- `and(A004001(n+1), A158388(n))` -/
def P1849376808460765915.Spec : Prop :=
  ∀ n, P1849376808460765915.a n = A095901 (n + 1)

end A095901

/-! ## A095901.P8288485981216752079

`2-A000034(A004001(n+1)+1)`
-/

namespace A095901.P8288485981216752079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A000034 (A004001 (n + 1) + 1).toNat

end

end A095901.P8288485981216752079

namespace A095901

/-- `2-A000034(A004001(n+1)+1)` -/
def P8288485981216752079.Spec : Prop :=
  ∀ n, P8288485981216752079.a n = A095901 (n + 1)

end A095901

/-! ## A095901.P14271966472787495884

`and(A004001(n+1), A076877(n+1))`
-/

namespace A095901.P14271966472787495884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A004001 (n + 1)) (A076877 (n + 1))

end

end A095901.P14271966472787495884

namespace A095901

/-- `and(A004001(n+1), A076877(n+1))` -/
def P14271966472787495884.Spec : Prop :=
  ∀ n, P14271966472787495884.a n = A095901 (n + 1)

end A095901

/-! ## A095901.P16403178051668127243

`and(A004001(n+1), A080075(n+1))`
-/

namespace A095901.P16403178051668127243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A004001 (n + 1)) (A080075 (n + 1))

end

end A095901.P16403178051668127243

namespace A095901

/-- `and(A004001(n+1), A080075(n+1))` -/
def P16403178051668127243.Spec : Prop :=
  ∀ n, P16403178051668127243.a n = A095901 (n + 1)

end A095901

/-! ## A095901.P5395800385792366644

`and(A004001(n+1), A080076(n+1))`
-/

namespace A095901.P5395800385792366644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A004001 (n + 1)) (A080076 (n + 1))

end

end A095901.P5395800385792366644

namespace A095901

/-- `and(A004001(n+1), A080076(n+1))` -/
def P5395800385792366644.Spec : Prop :=
  ∀ n, P5395800385792366644.a n = A095901 (n + 1)

end A095901

/-! ## A095901.P6159515620405774460

`and(3, A016777(A004001(n+1)+1)²)`
-/

namespace A095901.P6159515620405774460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 3 (A016777 (A004001 (n + 1) + 1).toNat ^ 2)

end

end A095901.P6159515620405774460

namespace A095901

/-- `and(3, A016777(A004001(n+1)+1)²)` -/
def P6159515620405774460.Spec : Prop :=
  ∀ n, P6159515620405774460.a n = A095901 (n + 1)

end A095901

/-! ## A095901.P5032064108511729212

`and(3, A020639(A004001(n+1)+2)²)`
-/

namespace A095901.P5032064108511729212
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 3 (A020639 (A004001 (n + 1) + 2).toNat ^ 2)

end

end A095901.P5032064108511729212

namespace A095901

/-- `and(3, A020639(A004001(n+1)+2)²)` -/
def P5032064108511729212.Spec : Prop :=
  ∀ n, P5032064108511729212.a n = A095901 (n + 1)

end A095901

/-! ## A095901.P17319838427682695464

`and(1, A004001(n+1)²*A036086(n))`
-/

namespace A095901.P17319838427682695464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A004001 (n + 1) ^ 2 * A036086 n)

end

end A095901.P17319838427682695464

namespace A095901

/-- `and(1, A004001(n+1)²*A036086(n))` -/
def P17319838427682695464.Spec : Prop :=
  ∀ n, P17319838427682695464.a n = A095901 (n + 1)

end A095901

/-! ## A095901.P15915124166314823342

`and(1, (A004001(n+1)*A142993(n))²)`
-/

namespace A095901.P15915124166314823342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 ((A004001 (n + 1) * A142993 n) ^ 2)

end

end A095901.P15915124166314823342

namespace A095901

/-- `and(1, (A004001(n+1)*A142993(n))²)` -/
def P15915124166314823342.Spec : Prop :=
  ∀ n, P15915124166314823342.a n = A095901 (n + 1)

end A095901

/-!
# A095902: Number of odd entries in A004001 that are <= 2^n.

The programs for A095902, the canonical program `A095902.P2506920193957968763` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A095902 has offset 0).

The definition of A095902 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A095902.P2506920193957968763

`A283480(2^n)`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A095902

/-- `A283480(2^n)` -/
def P2506920193957968763.Spec : Prop :=
  ∀ n, P2506920193957968763.a n = A095902 n

theorem P2506920193957968763.correct : P2506920193957968763.Spec := by
  intro n
  simp only [A095902]

end A095902

/-! ## A095902.P17917847625442704800

`and(-1, A283480(A000079(n)))`
-/

namespace A095902.P17917847625442704800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A283480 (A000079 n).toNat)

end

end A095902.P17917847625442704800

namespace A095902

/-- `and(-1, A283480(A000079(n)))` -/
def P17917847625442704800.Spec : Prop :=
  ∀ n, P17917847625442704800.a n = A095902 n

end A095902

/-! ## A095902.P251870435654545143

`A283480(A000079(n))+A184955(n)`
-/

namespace A095902.P251870435654545143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283480 (A000079 n).toNat + A184955 n

end

end A095902.P251870435654545143

namespace A095902

/-- `A283480(A000079(n))+A184955(n)` -/
def P251870435654545143.Spec : Prop :=
  ∀ n, P251870435654545143.a n = A095902 n

end A095902

/-! ## A095902.P15348153135405969189

`A326457(n)+A283480(A000079(n))`
-/

namespace A095902.P15348153135405969189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326457 n + A283480 (A000079 n).toNat

end

end A095902.P15348153135405969189

namespace A095902

/-- `A326457(n)+A283480(A000079(n))` -/
def P15348153135405969189.Spec : Prop :=
  ∀ n, P15348153135405969189.a n = A095902 n

end A095902

/-! ## A095902.P10564095963865162465

`A326543(n)+A283480(A000079(n))`
-/

namespace A095902.P10564095963865162465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326543 n + A283480 (A000079 n).toNat

end

end A095902.P10564095963865162465

namespace A095902

/-- `A326543(n)+A283480(A000079(n))` -/
def P10564095963865162465.Spec : Prop :=
  ∀ n, P10564095963865162465.a n = A095902 n

end A095902

/-!
# A095903: Lexical ordering of the lazy Fibonacci representations.

The programs for A095903, there is no canonical definition to state claims against.
-/

/-! ## A095903.P16360272522357497881

`A232560(A059893(n+2))-1`
-/

namespace A095903.P16360272522357497881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232560 (A059893 (n + 2)).toNat - 1

end

end A095903.P16360272522357497881

/-! ## A095903.P5639594535006662332

`A307873(gcd(n, n+1))+A232560(A059893(n+2))`
-/

namespace A095903.P5639594535006662332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307873 (Nat.gcd n (n + 1)) + A232560 (A059893 (n + 2)).toNat

end

end A095903.P5639594535006662332

/-! ## A095903.P695873868811065826

`A307445(A031369(n+1))+A232560(A059893(n+2))`
-/

namespace A095903.P695873868811065826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307445 (A031369 (n + 1)).toNat + A232560 (A059893 (n + 2)).toNat

end

end A095903.P695873868811065826

/-! ## A095903.P4478651767945048811

`A307445(A007522(n+1))+A232560(A059893(n+2))`
-/

namespace A095903.P4478651767945048811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307445 (A007522 (n + 1)).toNat + A232560 (A059893 (n + 2)).toNat

end

end A095903.P4478651767945048811

/-! ## A095903.P11155167375940674802

`A307445(A122869(n+1))+A232560(A059893(n+2))`
-/

namespace A095903.P11155167375940674802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307445 (A122869 (n + 1)).toNat + A232560 (A059893 (n + 2)).toNat

end

end A095903.P11155167375940674802

/-! ## A095903.P15647221257085424475

`A321800(A059268(n))+A232560(A059893(n+2))`
-/

namespace A095903.P15647221257085424475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321800 (A059268 n).toNat + A232560 (A059893 (n + 2)).toNat

end

end A095903.P15647221257085424475

/-! ## A095903.P1901724602104594909

`A345253(n+2)-1`
-/

namespace A095903.P1901724602104594909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345253 (n + 2) - 1

end

end A095903.P1901724602104594909

/-! ## A095903.P7828428976579548435

`abs(∑[-Δ[A345253(n+1)]])`
-/

namespace A095903.P7828428976579548435
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345253 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∑ j ∈ Finset.range (n + 1), f1 j|

end

end A095903.P7828428976579548435

/-! ## A095903.P12745826590783998086

`A023443(A345253(n+2))`
-/

namespace A095903.P12745826590783998086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A345253 (n + 2)).toNat

end

end A095903.P12745826590783998086

/-! ## A095903.P1732125418630216397

`∑[Δ[A345253(n+1)]%A000040(n+1)]`
-/

namespace A095903.P1732125418630216397
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345253 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f2 (n + 1) - f2 n) (A000040 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A095903.P1732125418630216397

/-!
# A095904: Triangular array of natural numbers (greater than 1) arranged by prime signature.

The programs for A095904, there is no canonical definition to state claims against.
-/

/-! ## A095904.P1517553027539318039

`A179216(∑[2*n]%comp[∑[n]])`
-/

namespace A095904.P1517553027539318039
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179216 ((∑ j ∈ Finset.range (n + 1), f1 j) % SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n)

end

end A095904.P1517553027539318039

/-! ## A095904.P14138927696168469078

`A179216(∑[char[∑[n]]]²-(n+1))`
-/

namespace A095904.P14138927696168469078
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179216 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 - (n + 1))

end

end A095904.P14138927696168469078

/-! ## A095904.P13083717322163865376

`and(-1, A179216(A061579(n)))`
-/

namespace A095904.P13083717322163865376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A179216 (A061579 n).toNat)

end

end A095904.P13083717322163865376

/-! ## A095904.P6241053493152364888

`A179216(A038722(n+1)-1)%(Δ[(29*n)²]+2)`
-/

namespace A095904.P6241053493152364888
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (29 * n) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A179216 (A038722 (n + 1) - 1).toNat) ((f1 (n + 1) : ℤ) - (f1 n : ℤ) + 2)

end

end A095904.P6241053493152364888

/-! ## A095904.P320074608397064708

`A179216(A061579(n))%A001538(n)`
-/

namespace A095904.P320074608397064708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A179216 (A061579 n).toNat) (A001538 n)

end

end A095904.P320074608397064708

/-! ## A095904.P3856904046117149950

`gcd(A000038(n), A179216(A061579(n)))`
-/

namespace A095904.P3856904046117149950
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A179216 (A061579 n).toNat)

end

end A095904.P3856904046117149950

/-! ## A095904.P15701809271890998924

`A007318(∑[n])*A179216(A061579(n))`
-/

namespace A095904.P15701809271890998924
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (∑ j ∈ Finset.range (n + 1), f1 j) * A179216 (A061579 n).toNat

end

end A095904.P15701809271890998924

/-! ## A095904.P6193072634523962284

`A000108(n*char[1])*A179216(A061579(n))`
-/

namespace A095904.P6193072634523962284
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 (n * (if ∃ j, f1 j = n then 1 else 0)) * A179216 (A061579 n).toNat

end

end A095904.P6193072634523962284

/-! ## A095904.P8747269348375172876

`A008683(A005117(n+1))²*A179216(A061579(n))`
-/

namespace A095904.P8747269348375172876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A005117 (n + 1)).toNat ^ 2 * A179216 (A061579 n).toNat

end

end A095904.P8747269348375172876

/-!
# A095905: Sequence generated from Golomb's proof of de Bruijn's theorem on a torus considered as a matrix.

The programs for A095905, the canonical program `A095905.P16737062013964497107` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A095905 has offset 1).

The definition of A095905 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A095905.P16737062013964497107

`ogf((1+6x)/(1-15x-18x^2))`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A095905

/-- `ogf((1+6x)/(1-15x-18x^2))` -/
def P16737062013964497107.Spec : Prop :=
  ∀ n, P16737062013964497107.a n = A095905 (n + 1)

theorem P16737062013964497107.correct : P16737062013964497107.Spec := by
  intro n
  simp only [A095905, Nat.add_sub_cancel]

end A095905

/-! ## A095905.P2949784709736453410

`A000244(n)*A124610(n+1)`
-/

namespace A095905.P2949784709736453410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000244 n * A124610 (n + 1)

end

end A095905.P2949784709736453410

namespace A095905

/-- `A000244(n)*A124610(n+1)` -/
def P2949784709736453410.Spec : Prop :=
  ∀ n, P2949784709736453410.a n = A095905 (n + 1)

end A095905

/-! ## A095905.P10559269047842055778

`∑[Δ[A180038(n)]*A025192(n)]`
-/

namespace A095905.P10559269047842055778
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180038 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) - f2 n) * A025192 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A095905.P10559269047842055778

namespace A095905

/-- `∑[Δ[A180038(n)]*A025192(n)]` -/
def P10559269047842055778.Spec : Prop :=
  ∀ n, P10559269047842055778.a n = A095905 (n + 1)

end A095905

/-! ## A095905.P4674588753992041703

`lcm(A000244(n), A124610(A000027(n+1)))`
-/

namespace A095905.P4674588753992041703
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A000244 n) (A124610 (A000027 (n + 1)).toNat)

end

end A095905.P4674588753992041703

namespace A095905

/-- `lcm(A000244(n), A124610(A000027(n+1)))` -/
def P4674588753992041703.Spec : Prop :=
  ∀ n, (P4674588753992041703.a n : ℤ) = A095905 (n + 1)

end A095905

/-! ## A095905.P13654639835817783458

`lcm(A000244(n)%A327765(n), A124610(n+1))`
-/

namespace A095905.P13654639835817783458
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (Int.tmod (A000244 n) (A327765 n)) (A124610 (n + 1))

end

end A095905.P13654639835817783458

namespace A095905

/-- `lcm(A000244(n)%A327765(n), A124610(n+1))` -/
def P13654639835817783458.Spec : Prop :=
  ∀ n, (P13654639835817783458.a n : ℤ) = A095905 (n + 1)

end A095905

/-!
# A095907: Digits in the concatenation of strings formed from a previous string by substituting "01" for "0" and "011" for "1" simultaneously at each occurrence. Start with [0].

The programs for A095907, the canonical program `A095907.P18367013829758106203` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A095907 has offset 1).

The definition of A095907 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A095907.P18367013829758106203

`log2(Δ[floor(ϕ/acot(n))])`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A095907

/-- `log2(Δ[floor(ϕ/acot(n))])` -/
def P18367013829758106203.Spec : Prop :=
  ∀ n, P18367013829758106203.a n = (A095907 (n + 1) : ℝ)

end A095907

/-! ## A095907.P11561381480162845274

`Δ[floor(1/(n+1)+n/ϕ)]`
-/

namespace A095907.P11561381480162845274
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(1 / (n + 1 : ℚ) : ℝ) + (n : ℝ) / Real.goldenRatio⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A095907.P11561381480162845274

namespace A095907

/-- `Δ[floor(1/(n+1)+n/ϕ)]` -/
def P11561381480162845274.Spec : Prop :=
  ∀ n, P11561381480162845274.a n = A095907 (n + 1)

end A095907

/-! ## A095907.P5125446054435665259

`char[∑[runs[A005378(n)]]]`
-/

namespace A095907.P5125446054435665259
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005378 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => j = 0 ∨ f3 j ≠ f3 (j - 1)) (n + 1) - SequenceMachineLib.nth (fun j => j = 0 ∨ f3 j ≠ f3 (j - 1)) n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A095907.P5125446054435665259

namespace A095907

/-- `char[∑[runs[A005378(n)]]]` -/
def P5125446054435665259.Spec : Prop :=
  ∀ n, (P5125446054435665259.a n : ℤ) = A095907 (n + 1)

end A095907

/-! ## A095907.P18189266475387791617

`log2(runs[A005379(n+1)])`
-/

namespace A095907.P18189266475387791617
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005379 (n + 1)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 ((SequenceMachineLib.nth (fun j => j = 0 ∨ f1 j ≠ f1 (j - 1)) (n + 1) - SequenceMachineLib.nth (fun j => j = 0 ∨ f1 j ≠ f1 (j - 1)) n : ℕ) : ℝ)

end

end A095907.P18189266475387791617

namespace A095907

/-- `log2(runs[A005379(n+1)])` -/
def P18189266475387791617.Spec : Prop :=
  ∀ n, P18189266475387791617.a n = (A095907 (n + 1) : ℝ)

end A095907

/-! ## A095907.P16526286677497062092

`char[A305849(n+1)-(n+1)]`
-/

namespace A095907.P16526286677497062092
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305849 (n + 1) - (n + 1 : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A095907.P16526286677497062092

namespace A095907

/-- `char[A305849(n+1)-(n+1)]` -/
def P16526286677497062092.Spec : Prop :=
  ∀ n, (P16526286677497062092.a n : ℤ) = A095907 (n + 1)

end A095907

/-! ## A095907.P13792022920074218576

`char[row(∑[A072061(2*(n+2))])]`
-/

namespace A095907.P13792022920074218576
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072061 (2 * (n + 2))

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.triRow (∑ j ∈ Finset.range (n + 1), f2 j).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A095907.P13792022920074218576

namespace A095907

/-- `char[row(∑[A072061(2*(n+2))])]` -/
def P13792022920074218576.Spec : Prop :=
  ∀ n, (P13792022920074218576.a n : ℤ) = A095907 (n + 1)

end A095907

/-! ## A095907.P14041181783568466540

`A048675(Δ[floor(ϕ*sqrt(n²+1))])`
-/

namespace A095907.P14041181783568466540
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.goldenRatio * Real.sqrt (n ^ 2 + 1 : ℝ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048675 (f1 (n + 1) - f1 n).toNat

end

end A095907.P14041181783568466540

namespace A095907

/-- `A048675(Δ[floor(ϕ*sqrt(n²+1))])` -/
def P14041181783568466540.Spec : Prop :=
  ∀ n, P14041181783568466540.a n = A095907 (n + 1)

end A095907

/-! ## A095907.P6528828697894672731

`A162231(Δ[floor(ϕ*sqrt(n²+1))])`
-/

namespace A095907.P6528828697894672731
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.goldenRatio * Real.sqrt (n ^ 2 + 1 : ℝ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162231 (f1 (n + 1) - f1 n).toNat

end

end A095907.P6528828697894672731

namespace A095907

/-- `A162231(Δ[floor(ϕ*sqrt(n²+1))])` -/
def P6528828697894672731.Spec : Prop :=
  ∀ n, P6528828697894672731.a n = A095907 (n + 1)

end A095907

/-! ## A095907.P1510249610973523573

`char[A005379(A305849(n+1))]`
-/

namespace A095907.P1510249610973523573
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005379 (A305849 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A095907.P1510249610973523573

namespace A095907

/-- `char[A005379(A305849(n+1))]` -/
def P1510249610973523573.Spec : Prop :=
  ∀ n, (P1510249610973523573.a n : ℤ) = A095907 (n + 1)

end A095907

/-! ## A095907.P3764112764725026992

`A001221(runs[A005379(n+1)])`
-/

namespace A095907.P3764112764725026992
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005379 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (SequenceMachineLib.nth (fun j => j = 0 ∨ f1 j ≠ f1 (j - 1)) (n + 1) - SequenceMachineLib.nth (fun j => j = 0 ∨ f1 j ≠ f1 (j - 1)) n)

end

end A095907.P3764112764725026992

namespace A095907

/-- `A001221(runs[A005379(n+1)])` -/
def P3764112764725026992.Spec : Prop :=
  ∀ n, P3764112764725026992.a n = A095907 (n + 1)

end A095907

/-! ## A095907.P10812615979933797499

`A005379(runs[A005379(n+1)])`
-/

namespace A095907.P10812615979933797499
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005379 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005379 (SequenceMachineLib.nth (fun j => j = 0 ∨ f1 j ≠ f1 (j - 1)) (n + 1) - SequenceMachineLib.nth (fun j => j = 0 ∨ f1 j ≠ f1 (j - 1)) n)

end

end A095907.P10812615979933797499

namespace A095907

/-- `A005379(runs[A005379(n+1)])` -/
def P10812615979933797499.Spec : Prop :=
  ∀ n, P10812615979933797499.a n = A095907 (n + 1)

end A095907

/-!
# A095910: Where the modified Juggler sequence reaches a new record.

The programs for A095910, there is no canonical definition to state claims against.
-/

/-! ## A095910.P533031170887855027

`A094697(n+2)`
-/

namespace A095910.P533031170887855027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094697 (n + 2)

end

end A095910.P533031170887855027

/-! ## A095910.P11919262163953283103

`record[A094697(A085058(n))]`
-/

namespace A095910.P11919262163953283103
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094697 (A085058 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A095910.P11919262163953283103

/-! ## A095910.P9421568384366755965

`record[A094697(A344888(n))]`
-/

namespace A095910.P9421568384366755965
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094697 (A344888 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A095910.P9421568384366755965

/-! ## A095910.P1581753136591363282

`record[ratio[A094697(A028920(n))]]`
-/

namespace A095910.P1581753136591363282
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094697 (A028920 n).toNat

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℚ) / (f2 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A095910.P1581753136591363282

/-!
# A095911: Number of steps where the modified Juggler sequence reaches a new record (A095910).

The programs for A095911, there is no canonical definition to state claims against.
-/

/-! ## A095911.P7690666327090090288

`A094696(n+1)`
-/

namespace A095911.P7690666327090090288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094696 (n + 1)

end

end A095911.P7690666327090090288

/-! ## A095911.P6649458551890472198

`∑[abs(Δ[A094696(n)])]`
-/

namespace A095911.P6649458551890472198
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094696 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f2 (n + 1) - f2 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A095911.P6649458551890472198

/-! ## A095911.P2992153363722257866

`record[A094696(abs(1-n))]`
-/

namespace A095911.P2992153363722257866
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094696 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A095911.P2992153363722257866

/-! ## A095911.P2770468006969964533

`filter[A094696(n), A023532(#)]`
-/

namespace A095911.P2770468006969964533
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094696 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A023532 (f1 j).toNat = 1) n)

end

end A095911.P2770468006969964533

/-! ## A095911.P3024941193887445127

`filter[A094696(n), A145568(#)]`
-/

namespace A095911.P3024941193887445127
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094696 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A145568 (f1 j).toNat = 1) n)

end

end A095911.P3024941193887445127

/-!
# A095912: Variant of the pay-phone sequence A095236. Here a slot at the end of the row is always preferred over a slot sandwiched immediately between two used slots.

The programs for A095912, there is no canonical definition to state claims against.
-/

/-! ## A095912.P5456662922614715742

`A334267(a(n-1)+1)` with `a(0)=1, a(1)=2, a(2)=4`
-/

namespace A095912.P5456662922614715742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 4] fun n a =>
  A334267 (a (n - 1) + 1).toNat

end

end A095912.P5456662922614715742

/-! ## A095912.P7942153591716790358

`2*A289341(a(n-1)+2)` with `a(0)=1`
-/

namespace A095912.P7942153591716790358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  2 * A289341 (a (n - 1) + 2).toNat

end

end A095912.P7942153591716790358

/-! ## A095912.P8625145552966496007

`A108248((a(n-1)+n+1)²)` with `a(0)=1`
-/

namespace A095912.P8625145552966496007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A108248 ((a (n - 1) + (n + 1 : ℤ)) ^ 2).toNat

end

end A095912.P8625145552966496007

/-!
# A095913: Number of plasma partitions of 2n-1.

The programs for A095913, there is no canonical definition to state claims against.
-/

/-! ## A095913.P5390892013159252945

`A053253(floor(n-atan(n)))-C(n, n²)`
-/

namespace A095913.P5390892013159252945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053253 ⌊(n : ℝ) - Real.arctan (n : ℝ)⌋.toNat - (Nat.choose n (n ^ 2) : ℤ)

end

end A095913.P5390892013159252945

/-! ## A095913.P16128561405528141347

`A053253(abs(2-n))%A053253(n)`
-/

namespace A095913.P16128561405528141347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A053253 |2 - (n : ℤ)|.toNat) (A053253 n)

end

end A095913.P16128561405528141347

/-! ## A095913.P10588878010501113858

`A053253(A289207(n))*A267683(A040145(n+1))`
-/

namespace A095913.P10588878010501113858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053253 (A289207 n).toNat * A267683 (A040145 (n + 1)).toNat

end

end A095913.P10588878010501113858

/-! ## A095913.P13535136742909358516

`A053253(A289207(n))%A131322(n)`
-/

namespace A095913.P13535136742909358516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A053253 (A289207 n).toNat) (A131322 n)

end

end A095913.P13535136742909358516

/-! ## A095913.P9454721408859019303

`A053253(floor(n-atan(n)))%A239075(n)`
-/

namespace A095913.P9454721408859019303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A053253 ⌊(n : ℝ) - Real.arctan (n : ℝ)⌋.toNat) (A239075 n)

end

end A095913.P9454721408859019303

/-!
# A095914: Binary numbers with 2 replacing 1 in odd positions.

The programs for A095914, there is no canonical definition to state claims against.
-/

/-! ## A095914.P5884313916971983483

`A007088(or(42, n)-42)+A007088(n)`
-/

namespace A095914.P5884313916971983483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (Nat.lor 42 n - 42) + A007088 n

end

end A095914.P5884313916971983483

/-! ## A095914.P3111778654217616568

`A007088(xor(42, or(42, n)))+A007088(n)`
-/

namespace A095914.P3111778654217616568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (Nat.xor 42 (Nat.lor 42 n)) + A007088 n

end

end A095914.P3111778654217616568

/-! ## A095914.P13633543605945806965

`A007088(n)+A007088(A063694(n))`
-/

namespace A095914.P13633543605945806965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 n + A007088 (A063694 n).toNat

end

end A095914.P13633543605945806965

/-! ## A095914.P17892937067603767393

`A185544(A004514(n))+A007088(n)`
-/

namespace A095914.P17892937067603767393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (A004514 n).toNat + A007088 n

end

end A095914.P17892937067603767393

/-! ## A095914.P14321107283979050047

`A185544(2*n)+A185544(A004514(n))`
-/

namespace A095914.P14321107283979050047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (2 * n) + A185544 (A004514 n).toNat

end

end A095914.P14321107283979050047

/-!
# A095915: Each number is twice times the product of the digits of the previous number.

The programs for A095915, the canonical program `A095915.P7464785364534173480` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A095915 has offset 1).

The definition of A095915 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A095915.P7464785364534173480

`ogf((1+x+3x^2+5x^3+10x^4)/(1-x+x^2-x^3))`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A095915

/-- `ogf((1+x+3x^2+5x^3+10x^4)/(1-x+x^2-x^3))` -/
def P7464785364534173480.Spec : Prop :=
  ∀ n, P7464785364534173480.a n = A095915 (n + 1)

theorem P7464785364534173480.correct : P7464785364534173480.Spec := by
  intro n
  simp only [A095915, Nat.add_sub_cancel]

end A095915

/-!
# A095916: Differences between adjacent digits of Pi.

The programs for A095916, there is no canonical definition to state claims against.
-/

/-! ## A095916.P14935740864395989376

`Δ[A000796(n)]`
-/

namespace A095916.P14935740864395989376
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000796 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A095916.P14935740864395989376

/-! ## A095916.P6872843620343579325

`Δ[A123152(n+1)]`
-/

namespace A095916.P6872843620343579325
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123152 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A095916.P6872843620343579325

/-! ## A095916.P4594265146643753650

`Δ[A110883(n)-a(n-1)]` with `a(0)=3`
-/

namespace A095916.P4594265146643753650
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [3] fun n f1 =>
  A110883 n - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A095916.P4594265146643753650

/-! ## A095916.P10563227864297764196

`A030644(n)-A153799(n)`
-/

namespace A095916.P10563227864297764196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030644 (n + 1) - A153799 n

end

end A095916.P10563227864297764196

/-! ## A095916.P16100987923969018018

`Δ[A187747(n)+A001113(n)]`
-/

namespace A095916.P16100987923969018018
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187747 n + A001113 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A095916.P16100987923969018018

/-! ## A095916.P5337602449710366753

`A000796(n+1)-A000796(n)`
-/

namespace A095916.P5337602449710366753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000796 (n + 1 + 1) - A000796 (n + 1)

end

end A095916.P5337602449710366753

/-! ## A095916.P9358481228432085014

`A123152(n+2)-A123152(n+1)`
-/

namespace A095916.P9358481228432085014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123152 (n + 2) - A123152 (n + 1)

end

end A095916.P9358481228432085014

/-! ## A095916.P15034810188595810516

`A110883(n+1)-A005843(A054249(n+1)+A033999(n))`
-/

namespace A095916.P15034810188595810516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110883 (n + 1) - A005843 (A054249 (n + 1) + A033999 n).toNat

end

end A095916.P15034810188595810516

/-! ## A095916.P7420030660040820271

`Δ[-A030644(n)]`
-/

namespace A095916.P7420030660040820271
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A030644 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A095916.P7420030660040820271

/-! ## A095916.P6970629256468410892

`Δ[sqrt(A072448(n+1))]`
-/

namespace A095916.P6970629256468410892
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A072448 (n + 1) : ℝ)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A095916.P6970629256468410892

/-! ## A095916.P14420458013218320046

`Δ[A065253(n+1)%10]`
-/

namespace A095916.P14420458013218320046
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A065253 (n + 1)) 10

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A095916.P14420458013218320046

/-! ## A095916.P15859879494625105579

`A030644(n)-A030644(n+1)`
-/

namespace A095916.P15859879494625105579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030644 (n + 1) - A030644 (n + 1 + 1)

end

end A095916.P15859879494625105579

/-! ## A095916.P11084977636327249986

`Δ[Δ[A046974(n)+A030644(n)]]`
-/

namespace A095916.P11084977636327249986
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046974 n + A030644 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A095916.P11084977636327249986

/-! ## A095916.P8050521070669857751

`Δ[A046974(n)]-A010879(A065253(n+1))`
-/

namespace A095916.P8050521070669857751
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046974 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A010879 (A065253 (n + 1)).toNat

end

end A095916.P8050521070669857751

/-! ## A095916.P10550442482308581975

`Δ[A010879(A065253(n+1))]`
-/

namespace A095916.P10550442482308581975
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010879 (A065253 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A095916.P10550442482308581975

/-! ## A095916.P9720256774531987043

`Δ[A001355(Δ[n²])]`
-/

namespace A095916.P9720256774531987043
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001355 ((f2 (n + 1) : ℤ) - (f2 n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A095916.P9720256774531987043

/-! ## A095916.P11048904714775826488

`Δ[A110766(Δ[n²])]`
-/

namespace A095916.P11048904714775826488
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110766 ((f2 (n + 1) : ℤ) - (f2 n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A095916.P11048904714775826488

/-! ## A095916.P1836807059379527399

`Δ[A076790(2*n+1)]`
-/

namespace A095916.P1836807059379527399
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076790 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A095916.P1836807059379527399

/-! ## A095916.P4007990071964118900

`A001355(2*n+3)-A001355(2*n+1)`
-/

namespace A095916.P4007990071964118900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001355 (2 * n + 3) - A001355 (2 * n + 1)

end

end A095916.P4007990071964118900

/-! ## A095916.P6969035239690485382

`A110766(2*n+3)-A110766(2*n+1)`
-/

namespace A095916.P6969035239690485382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110766 (2 * n + 3) - A110766 (2 * n + 1)

end

end A095916.P6969035239690485382

/-!
# A095917: Unreduced numerator of Sum[k=1..n, -(-1)^k/(F(k)*F(k+1))], with F(i) = A000045(i) the Fibonacci numbers.

The programs for A095917, there is no canonical definition to state claims against.
-/

/-! ## A095917.P14952633015688860936

`A003266(n+1)²*A000045(n+1)`
-/

namespace A095917.P14952633015688860936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003266 (n + 1) ^ 2 * A000045 (n + 1)

end

end A095917.P14952633015688860936

/-! ## A095917.P17389595689573508382

`∏[A007598(n+1)]*A000045(n+1)`
-/

namespace A095917.P17389595689573508382
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007598 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∏ j ∈ Finset.range (n + 1), f1 j) * A000045 (n + 1)

end

end A095917.P17389595689573508382

/-! ## A095917.P2919764146427047448

`∏[A007598(n+1)]*A212804(n+2)`
-/

namespace A095917.P2919764146427047448
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007598 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∏ j ∈ Finset.range (n + 1), f1 j) * A212804 (n + 2)

end

end A095917.P2919764146427047448

/-! ## A095917.P9865628653539028846

`A003266(n+1)²*sqrt(A007598(n+1))`
-/

namespace A095917.P9865628653539028846
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A003266 (n + 1) ^ 2 : ℝ) * Real.sqrt (A007598 (n + 1) : ℝ)

end

end A095917.P9865628653539028846

/-! ## A095917.P1432547482213329093

`∏[A324969(n+2)²]*A324969(n+2)`
-/

namespace A095917.P1432547482213329093
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324969 (n + 2) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∏ j ∈ Finset.range (n + 1), f1 j) * A324969 (n + 2)

end

end A095917.P1432547482213329093

/-!
# A095921: Intersection of A002182 (highly composite numbers) and A003418 (LCMs of first n positive integers).

The programs for A095921, there is no canonical definition to state claims against.
-/

/-! ## A095921.P7375897294490870429

`A051451(A243497(n))`
-/

namespace A095921.P7375897294490870429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051451 (A243497 n).toNat

end

end A095921.P7375897294490870429

/-! ## A095921.P13126822431125208941

`A051451(∑[A135723(n)])`
-/

namespace A095921.P13126822431125208941
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135723 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051451 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A095921.P13126822431125208941

/-! ## A095921.P13059384309620008355

`A051451(∑[A327722(n)])`
-/

namespace A095921.P13059384309620008355
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327722 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051451 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A095921.P13059384309620008355

/-! ## A095921.P270815947098747738

`A051451(∑[A341359(n)])`
-/

namespace A095921.P270815947098747738
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341359 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051451 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A095921.P270815947098747738

/-! ## A095921.P3199051245943144490

`A003418(record[A196416(n)])`
-/

namespace A095921.P3199051245943144490
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196416 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003418 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A095921.P3199051245943144490

/-!
# A095922: Dimension of invariants of n-th tensor power of 5-dimensional irreducible representation of B_2.

The programs for A095922, there is no canonical definition to state claims against.
-/

/-! ## A095922.P10236990816962006555

`∑{#}[n, (-1)^(n-#)*C(n, #)*A138356(#)]`
-/

namespace A095922.P10236990816962006555
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), (-1 : ℚ) ^ ((n : ℤ) - (k : ℤ) : ℤ) * (Nat.choose n k : ℚ) * (A138356 k : ℚ)

end

end A095922.P10236990816962006555

/-! ## A095922.P3677225276942385075

`A000217(A096976(A159713(n)+n))`
-/

namespace A095922.P3677225276942385075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (A096976 (A159713 n + (n : ℤ)).toNat).toNat

end

end A095922.P3677225276942385075

/-! ## A095922.P7867922377821652140

`A000217(A096976(n*A136400(n)))`
-/

namespace A095922.P7867922377821652140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (A096976 ((n : ℤ) * A136400 n).toNat).toNat

end

end A095922.P7867922377821652140

/-! ## A095922.P11117885084899692691

`A000217(A096976(n*A196222(n)))`
-/

namespace A095922.P11117885084899692691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (A096976 ((n : ℤ) * A196222 n).toNat).toNat

end

end A095922.P11117885084899692691

/-! ## A095922.P12173961039106862112

`A000217(A096976(n)^A010122(n))`
-/

namespace A095922.P12173961039106862112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (SequenceMachineLib.roundAway ((A096976 n : ℚ) ^ (A010122 n : ℤ))).toNat

end

end A095922.P12173961039106862112

/-!
# A095923: Analog of A095236 when definition of 'most distant from those in use' is 'with the highest geometric mean distance from those in use'.

The programs for A095923, there is no canonical definition to state claims against.
-/

/-! ## A095923.P17924130472907276402

`2*A285112(a(n-2))` with `a(0)=1, a(1)=2`
-/

namespace A095923.P17924130472907276402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  2 * A285112 (a (n - 2)).toNat

end

end A095923.P17924130472907276402

/-! ## A095923.P7742662028360875960

`A287662(A231811(n+1))`
-/

namespace A095923.P7742662028360875960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287662 (A231811 (n + 1)).toNat

end

end A095923.P7742662028360875960

/-! ## A095923.P10541660768280956623

`A333995(A275466(n+1))`
-/

namespace A095923.P10541660768280956623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333995 (A275466 (n + 1)).toNat

end

end A095923.P10541660768280956623

/-! ## A095923.P4400316395006246730

`lcm(A056099(n), A064691(n+1))`
-/

namespace A095923.P4400316395006246730
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A056099 n) (A064691 (n + 1))

end

end A095923.P4400316395006246730

/-! ## A095923.P7907084821032949302

`A112345(A309312(n+4)-4*n)`
-/

namespace A095923.P7907084821032949302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112345 (A309312 (n + 4) - (4 * n : ℤ)).toNat

end

end A095923.P7907084821032949302

/-!
# A095925: Smallest m such that prime(n) mod m > 1.

The programs for A095925, there is no canonical definition to state claims against.
-/

/-! ## A095925.P10392848857516251583

`A167234(A175787(n+2))`
-/

namespace A095925.P10392848857516251583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167234 (A175787 (n + 2)).toNat

end

end A095925.P10392848857516251583

/-! ## A095925.P17810405705922787757

`A167234(record[A001414(n+3)])`
-/

namespace A095925.P17810405705922787757
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001414 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167234 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A095925.P17810405705922787757

/-! ## A095925.P16722414858170996943

`A167234(A068499(2+n)+1)`
-/

namespace A095925.P16722414858170996943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167234 (A068499 (2 + n) + 1).toNat

end

end A095925.P16722414858170996943

/-! ## A095925.P6313256669191075059

`A167234(A008578(n+2)+C(n, n²))`
-/

namespace A095925.P6313256669191075059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167234 (A008578 (n + 2) + (Nat.choose n (n ^ 2) : ℤ)).toNat

end

end A095925.P6313256669191075059

/-! ## A095925.P11638944781439903425

`round(A007978(A006093(n+1))+1/(n+1))`
-/

namespace A095925.P11638944781439903425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A007978 (A006093 (n + 1)).toNat : ℚ) + 1 / (n + 1 : ℚ))

end

end A095925.P11638944781439903425

/-! ## A095925.P14253698569793812902

`A167234(A141044(n)+A006093(n+1))`
-/

namespace A095925.P14253698569793812902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167234 (A141044 n + A006093 (n + 1)).toNat

end

end A095925.P14253698569793812902

/-! ## A095925.P13415835665448779127

`A007978(A006093(n+1))+char[A007487(n)]`
-/

namespace A095925.P13415835665448779127
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007487 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007978 (A006093 (n + 1)).toNat + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A095925.P13415835665448779127

/-! ## A095925.P5487276878361256903

`A007978(A006093(n+1))+char[A015158(n)]`
-/

namespace A095925.P5487276878361256903
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015158 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007978 (A006093 (n + 1)).toNat + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A095925.P5487276878361256903

/-! ## A095925.P15497585532246696739

`A007978(A006093(n+1))+char[A015159(n)]`
-/

namespace A095925.P15497585532246696739
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015159 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007978 (A006093 (n + 1)).toNat + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A095925.P15497585532246696739

/-! ## A095925.P16993255987742840954

`A007978(A006093(n+1))+char[A015160(n)]`
-/

namespace A095925.P16993255987742840954
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015160 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007978 (A006093 (n + 1)).toNat + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A095925.P16993255987742840954

/-! ## A095925.P7782996452198190315

`A007978(A006093(n+1))+char[A015161(n)]`
-/

namespace A095925.P7782996452198190315
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015161 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007978 (A006093 (n + 1)).toNat + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A095925.P7782996452198190315

/-! ## A095925.P3921362110365567522

`A007978(A006093(n+1))+char[A015162(n)]`
-/

namespace A095925.P3921362110365567522
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015162 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007978 (A006093 (n + 1)).toNat + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A095925.P3921362110365567522

/-! ## A095925.P17265666685212836660

`A007978(A006093(n+1))+char[A015163(n)]`
-/

namespace A095925.P17265666685212836660
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015163 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007978 (A006093 (n + 1)).toNat + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A095925.P17265666685212836660

/-! ## A095925.P2284764537768145525

`A007978(A006093(n+1))+char[A015164(n)]`
-/

namespace A095925.P2284764537768145525
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015164 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007978 (A006093 (n + 1)).toNat + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A095925.P2284764537768145525

/-! ## A095925.P2068429285097742194

`A007978(A006093(n+1))+char[A106433(n)]`
-/

namespace A095925.P2068429285097742194
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106433 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007978 (A006093 (n + 1)).toNat + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A095925.P2068429285097742194

/-! ## A095925.P12640822163297586943

`A007978(A006093(n+1))+A000007(A004526(n))`
-/

namespace A095925.P12640822163297586943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007978 (A006093 (n + 1)).toNat + A000007 (A004526 n).toNat

end

end A095925.P12640822163297586943

/-! ## A095925.P11360393606890734236

`A010057(A000217(n))+A007978(A006093(n+1))`
-/

namespace A095925.P11360393606890734236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010057 (A000217 n).toNat + A007978 (A006093 (n + 1)).toNat

end

end A095925.P11360393606890734236

/-! ## A095925.P15038550054080813842

`A010057(A020946(n))+A007978(A006093(n+1))`
-/

namespace A095925.P15038550054080813842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010057 (A020946 n).toNat + A007978 (A006093 (n + 1)).toNat

end

end A095925.P15038550054080813842

/-! ## A095925.P7020281758317615472

`A007978(A006093(n+1))+A000007(A187329(n))`
-/

namespace A095925.P7020281758317615472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007978 (A006093 (n + 1)).toNat + A000007 (A187329 n).toNat

end

end A095925.P7020281758317615472

/-! ## A095925.P12815421391895509794

`A232098(A006093(n+1))+A014963(A001747(n+1))`
-/

namespace A095925.P12815421391895509794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232098 (A006093 (n + 1)).toNat + A014963 (A001747 (n + 1)).toNat

end

end A095925.P12815421391895509794

/-!
# A095929: Number of closed walks of length 2n at a vertex of the cyclic graph on 10 nodes C_10.

The programs for A095929, the canonical program `A095929.P7053161820008952723` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A095929 has offset 0).

The definition of A095929 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A095929.P5866621950577195942

`ogf((1-5x+5x^2)/(1-7x+13x^2-4x^3))`
-/

namespace A095929.P5866621950577195942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -5, 5] [1, -7, 13, -4] n

end

end A095929.P5866621950577195942

namespace A095929

/-- `ogf((1-5x+5x^2)/(1-7x+13x^2-4x^3))` -/
def P5866621950577195942.Spec : Prop :=
  ∀ n, P5866621950577195942.a n = A095929 n

end A095929

/-! ## A095929.P7053161820008952723

`7*a(n-1)-13*a(n-2)+4*a(n-3)` with `a(0)=1, a(1)=2, a(2)=6`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A095929

/-- `7*a(n-1)-13*a(n-2)+4*a(n-3)` -/
def P7053161820008952723.Spec : Prop :=
  ∀ n, P7053161820008952723.a n = A095929 n

theorem P7053161820008952723.correct : P7053161820008952723.Spec := by
  intro n
  simp only [A095929]

end A095929

/-! ## A095929.P11025478547888085383

`(4^n+2*A000032(2*n))/5`
-/

namespace A095929.P11025478547888085383
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((4 ^ n : ℤ) + 2 * A000032 (2 * n) : ℚ) / 5

end

end A095929.P11025478547888085383

namespace A095929

/-- `(4^n+2*A000032(2*n))/5` -/
def P11025478547888085383.Spec : Prop :=
  ∀ n, P11025478547888085383.a n = (A095929 n : ℚ)

end A095929

/-! ## A095929.P11922352333486998603

`2^-n*(8^n+2*(3-sqrt(5))^n+2*(3+sqrt(5))^n)/5`
-/

namespace A095929.P11922352333486998603
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((2 : ℚ) ^ (-(n : ℤ) : ℤ) : ℝ) * ((8 ^ n : ℝ) + 2 * (3 - Real.sqrt (5 : ℝ)) ^ n + 2 * (3 + Real.sqrt (5 : ℝ)) ^ n) / 5

end

end A095929.P11922352333486998603

namespace A095929

/-- `2^-n*(8^n+2*(3-sqrt(5))^n+2*(3+sqrt(5))^n)/5` -/
def P11922352333486998603.Spec : Prop :=
  ∀ n, P11922352333486998603.a n = (A095929 n : ℝ)

end A095929

/-! ## A095929.P5209653287550070206

`record[(-2)^(n-2)+a(n-1)+a(n-2)]` with `a(0)=1, a(1)=0`
-/

namespace A095929.P5209653287550070206
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [1, 0] fun n f1 =>
  (-2 : ℚ) ^ ((n : ℤ) - 2 : ℤ) + (f1 (n - 1) + f1 (n - 2))

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A095929.P5209653287550070206

namespace A095929

/-- `record[(-2)^(n-2)+a(n-1)+a(n-2)]` -/
def P5209653287550070206.Spec : Prop :=
  ∀ n, P5209653287550070206.a n = (A095929 n : ℚ)

end A095929

/-! ## A095929.P12515336894011143461

`A054877(2*n)`
-/

namespace A095929.P12515336894011143461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054877 (2 * n)

end

end A095929.P12515336894011143461

namespace A095929

/-- `A054877(2*n)` -/
def P12515336894011143461.Spec : Prop :=
  ∀ n, P12515336894011143461.a n = A095929 n

end A095929

/-! ## A095929.P765413163775691996

`A173125(2*n)`
-/

namespace A095929.P765413163775691996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173125 (2 * n)

end

end A095929.P765413163775691996

namespace A095929

/-- `A173125(2*n)` -/
def P765413163775691996.Spec : Prop :=
  ∀ n, P765413163775691996.a n = A095929 n

end A095929

/-! ## A095929.P10015154507786227700

`record[A173125(n)/(-1)^n]`
-/

namespace A095929.P10015154507786227700
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A173125 n : ℚ) / ((-1) ^ n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A095929.P10015154507786227700

namespace A095929

/-- `record[A173125(n)/(-1)^n]` -/
def P10015154507786227700.Spec : Prop :=
  ∀ n, P10015154507786227700.a n = (A095929 n : ℚ)

end A095929

/-! ## A095929.P6187589106623303273

`record[A054877((∑[n]-1)%(n+1))]`
-/

namespace A095929.P6187589106623303273
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054877 (Int.tmod (((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ) - 1) (n + 1 : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A095929.P6187589106623303273

namespace A095929

/-- `record[A054877((∑[n]-1)%(n+1))]` -/
def P6187589106623303273.Spec : Prop :=
  ∀ n, P6187589106623303273.a n = A095929 n

end A095929

/-! ## A095929.P11337674401247573454

`record[2*(A000045(n)-a(n-1))]` with `a(0)=1`
-/

namespace A095929.P11337674401247573454
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  2 * (A000045 n - f1 (n - 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A095929.P11337674401247573454

namespace A095929

/-- `record[2*(A000045(n)-a(n-1))]` -/
def P11337674401247573454.Spec : Prop :=
  ∀ n, P11337674401247573454.a n = A095929 n

end A095929

/-! ## A095929.P4195179492676833783

`record[A054877(A004275(n))]`
-/

namespace A095929.P4195179492676833783
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054877 (A004275 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A095929.P4195179492676833783

namespace A095929

/-- `record[A054877(A004275(n))]` -/
def P4195179492676833783.Spec : Prop :=
  ∀ n, P4195179492676833783.a n = A095929 n

end A095929

/-! ## A095929.P13743649747960128773

`record[A054877(A014681(n))]`
-/

namespace A095929.P13743649747960128773
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054877 (A014681 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A095929.P13743649747960128773

namespace A095929

/-- `record[A054877(A014681(n))]` -/
def P13743649747960128773.Spec : Prop :=
  ∀ n, P13743649747960128773.a n = A095929 n

end A095929

/-! ## A095929.P7180321747462703994

`A175395(n)+A109499(n)`
-/

namespace A095929.P7180321747462703994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175395 n + A109499 n

end

end A095929.P7180321747462703994

namespace A095929

/-- `A175395(n)+A109499(n)` -/
def P7180321747462703994.Spec : Prop :=
  ∀ n, P7180321747462703994.a n = A095929 n

end A095929

/-! ## A095929.P12979596719632500740

`record[A054877(n)/(A004442(n)-n)]`
-/

namespace A095929.P12979596719632500740
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A054877 n : ℚ) / (A004442 n - (n : ℤ) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A095929.P12979596719632500740

namespace A095929

/-- `record[A054877(n)/(A004442(n)-n)]` -/
def P12979596719632500740.Spec : Prop :=
  ∀ n, P12979596719632500740.a n = (A095929 n : ℚ)

end A095929

/-! ## A095929.P644131082986714777

`A173126(2*n)+A001519(n+1)`
-/

namespace A095929.P644131082986714777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173126 (2 * n) + A001519 (n + 1)

end

end A095929.P644131082986714777

namespace A095929

/-- `A173126(2*n)+A001519(n+1)` -/
def P644131082986714777.Spec : Prop :=
  ∀ n, P644131082986714777.a n = A095929 n

end A095929

/-! ## A095929.P7616171617279787264

`A173126(2*n)+A097131(2*n)`
-/

namespace A095929.P7616171617279787264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173126 (2 * n) + A097131 (2 * n)

end

end A095929.P7616171617279787264

namespace A095929

/-- `A173126(2*n)+A097131(2*n)` -/
def P7616171617279787264.Spec : Prop :=
  ∀ n, P7616171617279787264.a n = A095929 n

end A095929

/-! ## A095929.P3810444383851594901

`A173126(2*n)+A127968(2*n)`
-/

namespace A095929.P3810444383851594901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173126 (2 * n) + A127968 (2 * n)

end

end A095929.P3810444383851594901

namespace A095929

/-- `A173126(2*n)+A127968(2*n)` -/
def P3810444383851594901.Spec : Prop :=
  ∀ n, P3810444383851594901.a n = A095929 n

end A095929

/-! ## A095929.P8206211291679760716

`A104005(2*n)-A000045(2*n)`
-/

namespace A095929.P8206211291679760716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104005 (2 * n) - A000045 (2 * n)

end

end A095929.P8206211291679760716

namespace A095929

/-- `A104005(2*n)-A000045(2*n)` -/
def P8206211291679760716.Spec : Prop :=
  ∀ n, P8206211291679760716.a n = A095929 n

end A095929

/-! ## A095929.P12719472675741915890

`A173126(2*n)+A000045(2*n+1)`
-/

namespace A095929.P12719472675741915890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173126 (2 * n) + A000045 (2 * n + 1)

end

end A095929.P12719472675741915890

namespace A095929

/-- `A173126(2*n)+A000045(2*n+1)` -/
def P12719472675741915890.Spec : Prop :=
  ∀ n, P12719472675741915890.a n = A095929 n

end A095929

/-! ## A095929.P18185292947997046318

`A173126(2*n)+A152192(2*n+1)`
-/

namespace A095929.P18185292947997046318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173126 (2 * n) + A152192 (2 * n + 1)

end

end A095929.P18185292947997046318

namespace A095929

/-- `A173126(2*n)+A152192(2*n+1)` -/
def P18185292947997046318.Spec : Prop :=
  ∀ n, P18185292947997046318.a n = A095929 n

end A095929

/-!
# A095930: Number of walks of length 2n between two nodes at distance 2 in the cycle graph C_10.

The programs for A095930, the canonical program `A095930.P5973313258084578481` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A095930 has offset 1).

The definition of A095930 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A095930.P5042038611550300506

`ogf((1-3x)/(1-7x+13x^2-4x^3))`
-/

namespace A095930.P5042038611550300506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -3] [1, -7, 13, -4] n

end

end A095930.P5042038611550300506

namespace A095930

/-- `ogf((1-3x)/(1-7x+13x^2-4x^3))` -/
def P5042038611550300506.Spec : Prop :=
  ∀ n, P5042038611550300506.a n = A095930 (n + 1)

end A095930

/-! ## A095930.P5973313258084578481

`7*a(n-1)-13*a(n-2)+4*a(n-3)` with `a(0)=1, a(1)=4, a(2)=15`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A095930

/-- `7*a(n-1)-13*a(n-2)+4*a(n-3)` -/
def P5973313258084578481.Spec : Prop :=
  ∀ n, P5973313258084578481.a n = A095930 (n + 1)

theorem P5973313258084578481.correct : P5973313258084578481.Spec := by
  intro n
  simp only [A095930, Nat.add_sub_cancel]

end A095930

/-! ## A095930.P5260187928121567998

`(4^(n+1)+A000032(2*(n+1)-1))/5`
-/

namespace A095930.P5260187928121567998
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((4 ^ (n + 1) : ℤ) + A000032 (2 * (n + 1) - 1) : ℚ) / 5

end

end A095930.P5260187928121567998

namespace A095930

/-- `(4^(n+1)+A000032(2*(n+1)-1))/5` -/
def P5260187928121567998.Spec : Prop :=
  ∀ n, P5260187928121567998.a n = (A095930 (n + 1) : ℚ)

end A095930

/-! ## A095930.P7711400371477486325

`record[(-2)^(n-2)+a(n-1)+a(n-2)]` with `a(0)=1, a(1)=0, a(2)=1`
-/

namespace A095930.P7711400371477486325
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [1, 0, 1] fun n f1 =>
  (-2 : ℚ) ^ ((n : ℤ) - 2 : ℤ) + (f1 (n - 1) + f1 (n - 2))

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A095930.P7711400371477486325

namespace A095930

/-- `record[(-2)^(n-2)+a(n-1)+a(n-2)]` -/
def P7711400371477486325.Spec : Prop :=
  ∀ n, P7711400371477486325.a n = (A095930 (n + 1) : ℚ)

end A095930

/-! ## A095930.P1732080203445608044

`A084179(Δ[n²])`
-/

namespace A095930.P1732080203445608044
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084179 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A095930.P1732080203445608044

namespace A095930

/-- `A084179(Δ[n²])` -/
def P1732080203445608044.Spec : Prop :=
  ∀ n, P1732080203445608044.a n = A095930 (n + 1)

end A095930

/-! ## A095930.P10267953502733860686

`record[A084179(n+1)]`
-/

namespace A095930.P10267953502733860686
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084179 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A095930.P10267953502733860686

namespace A095930

/-- `record[A084179(n+1)]` -/
def P10267953502733860686.Spec : Prop :=
  ∀ n, P10267953502733860686.a n = A095930 (n + 1)

end A095930

/-! ## A095930.P3872359301158478650

`abs(A084179(2*n+1))`
-/

namespace A095930.P3872359301158478650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A084179 (2 * n + 1)|

end

end A095930.P3872359301158478650

namespace A095930

/-- `abs(A084179(2*n+1))` -/
def P3872359301158478650.Spec : Prop :=
  ∀ n, P3872359301158478650.a n = A095930 (n + 1)

end A095930

/-! ## A095930.P15237978892206638604

`A117591(2*n)-a(n-1)` with `a(0)=1`
-/

namespace A095930.P15237978892206638604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A117591 (2 * n) - a (n - 1)

end

end A095930.P15237978892206638604

namespace A095930

/-- `A117591(2*n)-a(n-1)` -/
def P15237978892206638604.Spec : Prop :=
  ∀ n, P15237978892206638604.a n = A095930 (n + 1)

end A095930

/-! ## A095930.P964910536371551080

`∑{#}[n+1, C(n+1, #)*A098703(#)]`
-/

namespace A095930.P964910536371551080
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), (Nat.choose (n + 1) k : ℤ) * A098703 k

end

end A095930.P964910536371551080

namespace A095930

/-- `∑{#}[n+1, C(n+1, #)*A098703(#)]` -/
def P964910536371551080.Spec : Prop :=
  ∀ n, P964910536371551080.a n = A095930 (n + 1)

end A095930

/-! ## A095930.P1422841319084098301

`record[A000045(n+1)-2*a(n-1)]` with `a(0)=1`
-/

namespace A095930.P1422841319084098301
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  A000045 (n + 1) - 2 * f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A095930.P1422841319084098301

namespace A095930

/-- `record[A000045(n+1)-2*a(n-1)]` -/
def P1422841319084098301.Spec : Prop :=
  ∀ n, P1422841319084098301.a n = A095930 (n + 1)

end A095930

/-! ## A095930.P7715213825024276266

`A000079(n)²-A173126(2*n)`
-/

namespace A095930.P7715213825024276266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n ^ 2 - A173126 (2 * n)

end

end A095930.P7715213825024276266

namespace A095930

/-- `A000079(n)²-A173126(2*n)` -/
def P7715213825024276266.Spec : Prop :=
  ∀ n, P7715213825024276266.a n = A095930 (n + 1)

end A095930

/-! ## A095930.P8262889691350186944

`A052964(2*n)-A084179(2*n)`
-/

namespace A095930.P8262889691350186944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052964 (2 * n) - A084179 (2 * n)

end

end A095930.P8262889691350186944

namespace A095930

/-- `A052964(2*n)-A084179(2*n)` -/
def P8262889691350186944.Spec : Prop :=
  ∀ n, P8262889691350186944.a n = A095930 (n + 1)

end A095930

/-! ## A095930.P3215097399915337982

`A000079(2*n)-A173126(2*n)`
-/

namespace A095930.P3215097399915337982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (2 * n) - A173126 (2 * n)

end

end A095930.P3215097399915337982

namespace A095930

/-- `A000079(2*n)-A173126(2*n)` -/
def P3215097399915337982.Spec : Prop :=
  ∀ n, P3215097399915337982.a n = A095930 (n + 1)

end A095930

/-! ## A095930.P7981448710481668825

`A084178(2*n)+A011782(n+1)²`
-/

namespace A095930.P7981448710481668825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084178 (2 * n) + A011782 (n + 1) ^ 2

end

end A095930.P7981448710481668825

namespace A095930

/-- `A084178(2*n)+A011782(n+1)²` -/
def P7981448710481668825.Spec : Prop :=
  ∀ n, P7981448710481668825.a n = A095930 (n + 1)

end A095930

/-! ## A095930.P5576317905807775803

`A084178(2*n)+A123344(n+1)²`
-/

namespace A095930.P5576317905807775803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084178 (2 * n) + A123344 (n + 1) ^ 2

end

end A095930.P5576317905807775803

namespace A095930

/-- `A084178(2*n)+A123344(n+1)²` -/
def P5576317905807775803.Spec : Prop :=
  ∀ n, P5576317905807775803.a n = A095930 (n + 1)

end A095930

/-! ## A095930.P1205759707488811102

`A084178(2*n)+A131577(n+1)²`
-/

namespace A095930.P1205759707488811102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084178 (2 * n) + A131577 (n + 1) ^ 2

end

end A095930.P1205759707488811102

namespace A095930

/-- `A084178(2*n)+A131577(n+1)²` -/
def P1205759707488811102.Spec : Prop :=
  ∀ n, P1205759707488811102.a n = A095930 (n + 1)

end A095930

/-! ## A095930.P15916779262259171453

`A084179(2*n+1)+A000007(n+1)`
-/

namespace A095930.P15916779262259171453
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084179 (2 * n + 1) + A000007 (n + 1)

end

end A095930.P15916779262259171453

namespace A095930

/-- `A084179(2*n+1)+A000007(n+1)` -/
def P15916779262259171453.Spec : Prop :=
  ∀ n, P15916779262259171453.a n = A095930 (n + 1)

end A095930

/-! ## A095930.P17976841031760269686

`A084179(2*n+1)+A000038(n+1)`
-/

namespace A095930.P17976841031760269686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084179 (2 * n + 1) + A000038 (n + 1)

end

end A095930.P17976841031760269686

namespace A095930

/-- `A084179(2*n+1)+A000038(n+1)` -/
def P17976841031760269686.Spec : Prop :=
  ∀ n, P17976841031760269686.a n = A095930 (n + 1)

end A095930

/-! ## A095930.P8788613550131533578

`A095929(n+1)-A000045(2*n+1)`
-/

namespace A095930.P8788613550131533578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095929 (n + 1) - A000045 (2 * n + 1)

end

end A095930.P8788613550131533578

namespace A095930

/-- `A095929(n+1)-A000045(2*n+1)` -/
def P8788613550131533578.Spec : Prop :=
  ∀ n, P8788613550131533578.a n = A095930 (n + 1)

end A095930

/-! ## A095930.P14538965107843063855

`A084178(2*n)+A011782(2*n+1)`
-/

namespace A095930.P14538965107843063855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084178 (2 * n) + A011782 (2 * n + 1)

end

end A095930.P14538965107843063855

namespace A095930

/-- `A084178(2*n)+A011782(2*n+1)` -/
def P14538965107843063855.Spec : Prop :=
  ∀ n, P14538965107843063855.a n = A095930 (n + 1)

end A095930

/-!
# A095931: Number of walks of length 2n between two nodes at distance 4 in the cycle graph C_10.

The programs for A095931, the canonical program `A095931.P12838910309237292444` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A095931 has offset 2).

The definition of A095931 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A095931.P2323193848526157287

`ogf(1/(1-7x+13x^2-4x^3))`
-/

namespace A095931.P2323193848526157287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1] [1, -7, 13, -4] n

end

end A095931.P2323193848526157287

namespace A095931

/-- `ogf(1/(1-7x+13x^2-4x^3))` -/
def P2323193848526157287.Spec : Prop :=
  ∀ n, P2323193848526157287.a n = A095931 (n + 2)

end A095931

/-! ## A095931.P12838910309237292444

`7*a(n-1)-13*a(n-2)+4*a(n-3)` with `a(0)=1, a(1)=7, a(2)=36`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A095931

/-- `7*a(n-1)-13*a(n-2)+4*a(n-3)` -/
def P12838910309237292444.Spec : Prop :=
  ∀ n, P12838910309237292444.a n = A095931 (n + 2)

theorem P12838910309237292444.correct : P12838910309237292444.Spec := by
  intro n
  simp only [A095931, Nat.add_sub_cancel]

end A095931

/-! ## A095931.P10076960033936937255

`(4^(n+2)-((sqrt(5)+1)/2)^(2*(n+2)+1)+((sqrt(5)-1)/2)^(2*(n+2)+1))/5`
-/

namespace A095931.P10076960033936937255
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((4 ^ (n + 2) : ℝ) - ((Real.sqrt (5 : ℝ) + 1) / 2) ^ (2 * (n + 2) + 1) + ((Real.sqrt (5 : ℝ) - 1) / 2) ^ (2 * (n + 2) + 1)) / 5

end

end A095931.P10076960033936937255

namespace A095931

/-- `(4^(n+2)-((sqrt(5)+1)/2)^(2*(n+2)+1)+((sqrt(5)-1)/2)^(2*(n+2)+1))/5` -/
def P10076960033936937255.Spec : Prop :=
  ∀ n, P10076960033936937255.a n = (A095931 (n + 2) : ℝ)

end A095931

/-! ## A095931.P1933723831797526726

`∑{#}[floor((n+5)/5)-1, C(2*(n+2)+1, n+5-5*(#+1))]`
-/

namespace A095931.P1933723831797526726
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n + 5 : ℚ) / 5⌋ - 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1).toNat, Nat.choose (2 * (n + 2) + 1) ((n + 5 : ℤ) - (5 * (k + 1) : ℤ)).toNat

end

end A095931.P1933723831797526726

namespace A095931

/-- `∑{#}[floor((n+5)/5)-1, C(2*(n+2)+1, n+5-5*(#+1))]` -/
def P1933723831797526726.Spec : Prop :=
  ∀ n, (P1933723831797526726.a n : ℤ) = A095931 (n + 2)

end A095931

/-! ## A095931.P11577229740340004796

`∑[floor(ϕ²*a(n-1))]+4*a(n-1)` with `a(0)=1`
-/

namespace A095931.P11577229740340004796
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  ⌊Real.goldenRatio ^ 2 * (f1 (n - 1) : ℝ)⌋

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 4 * a (n - 1)

end

end A095931.P11577229740340004796

namespace A095931

/-- `∑[floor(ϕ²*a(n-1))]+4*a(n-1)` -/
def P11577229740340004796.Spec : Prop :=
  ∀ n, P11577229740340004796.a n = A095931 (n + 2)

end A095931

/-! ## A095931.P1934370034952262742

`A173126(2*(n+2))`
-/

namespace A095931.P1934370034952262742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173126 (2 * (n + 2))

end

end A095931.P1934370034952262742

namespace A095931

/-- `A173126(2*(n+2))` -/
def P1934370034952262742.Spec : Prop :=
  ∀ n, P1934370034952262742.a n = A095931 (n + 2)

end A095931

/-! ## A095931.P3658273226768449110

`A052964(2*n+3)`
-/

namespace A095931.P3658273226768449110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052964 (2 * n + 3)

end

end A095931.P3658273226768449110

namespace A095931

/-- `A052964(2*n+3)` -/
def P3658273226768449110.Spec : Prop :=
  ∀ n, P3658273226768449110.a n = A095931 (n + 2)

end A095931

/-! ## A095931.P8532369609626253812

`A008466(2*(n+1))-a(n-1)` with `a(0)=1`
-/

namespace A095931.P8532369609626253812
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A008466 (2 * (n + 1)) - a (n - 1)

end

end A095931.P8532369609626253812

namespace A095931

/-- `A008466(2*(n+1))-a(n-1)` -/
def P8532369609626253812.Spec : Prop :=
  ∀ n, P8532369609626253812.a n = A095931 (n + 2)

end A095931

/-! ## A095931.P11186307262141495666

`∑[A000045(Δ[n²])]+4*a(n-1)` with `a(0)=1`
-/

namespace A095931.P11186307262141495666
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 ((f2 (n + 1) : ℤ) - (f2 n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 4 * a (n - 1)

end

end A095931.P11186307262141495666

namespace A095931

/-- `∑[A000045(Δ[n²])]+4*a(n-1)` -/
def P11186307262141495666.Spec : Prop :=
  ∀ n, P11186307262141495666.a n = A095931 (n + 2)

end A095931

/-! ## A095931.P11633394227446509484

`A000045(2*(n+1))+4*a(n-1)` with `a(0)=1`
-/

namespace A095931.P11633394227446509484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A000045 (2 * (n + 1)) + 4 * a (n - 1)

end

end A095931.P11633394227446509484

namespace A095931

/-- `A000045(2*(n+1))+4*a(n-1)` -/
def P11633394227446509484.Spec : Prop :=
  ∀ n, P11633394227446509484.a n = A095931 (n + 2)

end A095931

/-! ## A095931.P365995385250704585

`record[A052964(A004273(n))]`
-/

namespace A095931.P365995385250704585
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052964 (A004273 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A095931.P365995385250704585

namespace A095931

/-- `record[A052964(A004273(n))]` -/
def P365995385250704585.Spec : Prop :=
  ∀ n, P365995385250704585.a n = A095931 (n + 2)

end A095931

/-! ## A095931.P6804003023766034682

`record[A052964(A004275(n+1)-1)]`
-/

namespace A095931.P6804003023766034682
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052964 (A004275 (n + 1) - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A095931.P6804003023766034682

namespace A095931

/-- `record[A052964(A004275(n+1)-1)]` -/
def P6804003023766034682.Spec : Prop :=
  ∀ n, P6804003023766034682.a n = A095931 (n + 2)

end A095931

/-! ## A095931.P2413666413520030318

`record[A052964(A004275(2*n)/2)]`
-/

namespace A095931.P2413666413520030318
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052964 (SequenceMachineLib.roundAway ((A004275 (2 * n) : ℚ) / 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A095931.P2413666413520030318

namespace A095931

/-- `record[A052964(A004275(2*n)/2)]` -/
def P2413666413520030318.Spec : Prop :=
  ∀ n, P2413666413520030318.a n = A095931 (n + 2)

end A095931

/-! ## A095931.P14510049018879628797

`record[A052964(record[A080512(n+1)]-(n+1))]`
-/

namespace A095931.P14510049018879628797
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080512 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052964 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n) - (n + 1 : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A095931.P14510049018879628797

namespace A095931

/-- `record[A052964(record[A080512(n+1)]-(n+1))]` -/
def P14510049018879628797.Spec : Prop :=
  ∀ n, P14510049018879628797.a n = A095931 (n + 2)

end A095931

/-! ## A095931.P10076458885493383223

`A000079(n+1)²-A104005(2*(n+1))`
-/

namespace A095931.P10076458885493383223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (n + 1) ^ 2 - A104005 (2 * (n + 1))

end

end A095931.P10076458885493383223

namespace A095931

/-- `A000079(n+1)²-A104005(2*(n+1))` -/
def P10076458885493383223.Spec : Prop :=
  ∀ n, P10076458885493383223.a n = A095931 (n + 2)

end A095931

/-! ## A095931.P16950897881387485440

`A000079(2*(n+1))-A104005(2*(n+1))`
-/

namespace A095931.P16950897881387485440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (2 * (n + 1)) - A104005 (2 * (n + 1))

end

end A095931.P16950897881387485440

namespace A095931

/-- `A000079(2*(n+1))-A104005(2*(n+1))` -/
def P16950897881387485440.Spec : Prop :=
  ∀ n, P16950897881387485440.a n = A095931 (n + 2)

end A095931

/-! ## A095931.P17796447746121688090

`A054877(2*n+3)-A084179(2*(n+1))`
-/

namespace A095931.P17796447746121688090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054877 (2 * n + 3) - A084179 (2 * (n + 1))

end

end A095931.P17796447746121688090

namespace A095931

/-- `A054877(2*n+3)-A084179(2*(n+1))` -/
def P17796447746121688090.Spec : Prop :=
  ∀ n, P17796447746121688090.a n = A095931 (n + 2)

end A095931

/-!
# A095932: Number of walks of length 2n+1 between two nodes at distance 3 in the cycle graph C_10.

The programs for A095932, the canonical program `A095932.P11172297204211635418` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A095932 has offset 1).

The definition of A095932 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A095932.P1398999081290809882

`ogf((1-2x)/(1-7x+13x^2-4x^3))`
-/

namespace A095932.P1398999081290809882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -2] [1, -7, 13, -4] n

end

end A095932.P1398999081290809882

namespace A095932

/-- `ogf((1-2x)/(1-7x+13x^2-4x^3))` -/
def P1398999081290809882.Spec : Prop :=
  ∀ n, P1398999081290809882.a n = A095932 (n + 1)

end A095932

/-! ## A095932.P11172297204211635418

`7*a(n-1)-13*a(n-2)+4*a(n-3)` with `a(0)=1, a(1)=5, a(2)=22`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A095932

/-- `7*a(n-1)-13*a(n-2)+4*a(n-3)` -/
def P11172297204211635418.Spec : Prop :=
  ∀ n, P11172297204211635418.a n = A095932 (n + 1)

theorem P11172297204211635418.correct : P11172297204211635418.Spec := by
  intro n
  simp only [A095932, Nat.add_sub_cancel]

end A095932

/-! ## A095932.P15544873384227081643

`4*a(n-1)+A000045(2*(n+1)-3)` with `a(0)=1`
-/

namespace A095932.P15544873384227081643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  4 * a (n - 1) + A000045 (2 * (n + 1) - 3)

end

end A095932.P15544873384227081643

namespace A095932

/-- `4*a(n-1)+A000045(2*(n+1)-3)` -/
def P15544873384227081643.Spec : Prop :=
  ∀ n, P15544873384227081643.a n = A095932 (n + 1)

end A095932

/-! ## A095932.P1125461398245544518

`4^n+∑{#}[n-1, A000045(2*(#+2)-3)*4^(n+1-(#+2))]`
-/

namespace A095932.P1125461398245544518
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (4 ^ n : ℚ) + ∑ k ∈ Finset.range (f1 n + 1).toNat, (A000045 (2 * (k + 2) - 3) : ℚ) * (4 : ℚ) ^ ((n + 1 : ℤ) - (k + 2 : ℤ) : ℤ)

end

end A095932.P1125461398245544518

namespace A095932

/-- `4^n+∑{#}[n-1, A000045(2*(#+2)-3)*4^(n+1-(#+2))]` -/
def P1125461398245544518.Spec : Prop :=
  ∀ n, P1125461398245544518.a n = (A095932 (n + 1) : ℚ)

end A095932

/-! ## A095932.P16483315812194381712

`(2^(1+2*(n+1))-(1/2*(3-sqrt(5)))^(n+1)-(1/2*(3+sqrt(5)))^(n+1))/5`
-/

namespace A095932.P16483315812194381712
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((2 ^ (1 + 2 * (n + 1)) : ℝ) - (((1 : ℚ) / 2 : ℝ) * (3 - Real.sqrt (5 : ℝ))) ^ (n + 1) - (((1 : ℚ) / 2 : ℝ) * (3 + Real.sqrt (5 : ℝ))) ^ (n + 1)) / 5

end

end A095932.P16483315812194381712

namespace A095932

/-- `(2^(1+2*(n+1))-(1/2*(3-sqrt(5)))^(n+1)-(1/2*(3+sqrt(5)))^(n+1))/5` -/
def P16483315812194381712.Spec : Prop :=
  ∀ n, P16483315812194381712.a n = (A095932 (n + 1) : ℝ)

theorem P16483315812194381712.correct : P16483315812194381712.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 =>
      simp [A095932, Nat.add_sub_cancel, A095932.P16483315812194381712.a, A095932.P11172297204211635418.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
      try ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))
    | m + 3 =>
      have h1 := ih (m + 2) (by omega)
      have h2 := ih (m + 1) (by omega)
      have h3 := ih m (by omega)
      simp only [A095932, Nat.add_sub_cancel, A095932.P16483315812194381712.a, A095932.P11172297204211635418.a, SequenceMachineLib.memo_apply] at h1 h2 h3 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 3 - 1 = m + 2 by omega, show m + 3 - 2 = m + 1 by omega, show m + 3 - 3 = m by omega, show m + 2 < m + 3 by omega, show m + 1 < m + 3 by omega, show m < m + 3 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 ⊢
      rw [← h1, ← h2, ← h3]
      first | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A095932

/-! ## A095932.P949096133262771602

`record[-A084179(n+2)]`
-/

namespace A095932.P949096133262771602
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A084179 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A095932.P949096133262771602

namespace A095932

/-- `record[-A084179(n+2)]` -/
def P949096133262771602.Spec : Prop :=
  ∀ n, P949096133262771602.a n = A095932 (n + 1)

end A095932

/-! ## A095932.P6239422290500660657

`-A084179(2*(n+1))`
-/

namespace A095932.P6239422290500660657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A084179 (2 * (n + 1))

end

end A095932.P6239422290500660657

namespace A095932

/-- `-A084179(2*(n+1))` -/
def P6239422290500660657.Spec : Prop :=
  ∀ n, P6239422290500660657.a n = A095932 (n + 1)

end A095932

/-! ## A095932.P7819762189114306232

`Δ[abs(∑[A084179(2*n)])]`
-/

namespace A095932.P7819762189114306232
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084179 (2 * n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∑ j ∈ Finset.range (n + 1), f2 j|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A095932.P7819762189114306232

namespace A095932

/-- `Δ[abs(∑[A084179(2*n)])]` -/
def P7819762189114306232.Spec : Prop :=
  ∀ n, P7819762189114306232.a n = A095932 (n + 1)

end A095932

/-! ## A095932.P14000353078451139729

`record[floor(acot(n)-A084179(n))]`
-/

namespace A095932.P14000353078451139729
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊SequenceMachineLib.acot (n : ℝ) - (A084179 n : ℝ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A095932.P14000353078451139729

namespace A095932

/-- `record[floor(acot(n)-A084179(n))]` -/
def P14000353078451139729.Spec : Prop :=
  ∀ n, P14000353078451139729.a n = A095932 (n + 1)

end A095932

/-! ## A095932.P13689330608875061796

`2*4^n-A078789(n)`
-/

namespace A095932.P13689330608875061796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * 4 ^ n : ℤ) - A078789 n

end

end A095932.P13689330608875061796

namespace A095932

/-- `2*4^n-A078789(n)` -/
def P13689330608875061796.Spec : Prop :=
  ∀ n, P13689330608875061796.a n = A095932 (n + 1)

end A095932

/-! ## A095932.P558106847764952035

`A001519(n)+4*a(n-1)` with `a(0)=1`
-/

namespace A095932.P558106847764952035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A001519 n + 4 * a (n - 1)

end

end A095932.P558106847764952035

namespace A095932

/-- `A001519(n)+4*a(n-1)` -/
def P558106847764952035.Spec : Prop :=
  ∀ n, P558106847764952035.a n = A095932 (n + 1)

end A095932

/-! ## A095932.P1904479154420346667

`record[-(A000045(n-1)+2*a(n-1))]` with `a(0)=1, a(1)=0`
-/

namespace A095932.P1904479154420346667
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n f1 =>
  -(A000045 (n - 1) + 2 * f1 (n - 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A095932.P1904479154420346667

namespace A095932

/-- `record[-(A000045(n-1)+2*a(n-1))]` -/
def P1904479154420346667.Spec : Prop :=
  ∀ n, P1904479154420346667.a n = A095932 (n + 1)

end A095932

/-! ## A095932.P16993675904652848545

`record[A000007(n)-A084179(n)]`
-/

namespace A095932.P16993675904652848545
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n - A084179 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A095932.P16993675904652848545

namespace A095932

/-- `record[A000007(n)-A084179(n)]` -/
def P16993675904652848545.Spec : Prop :=
  ∀ n, P16993675904652848545.a n = A095932 (n + 1)

end A095932

/-! ## A095932.P7993212266890746472

`record[A036987(n)-A084179(n)]`
-/

namespace A095932.P7993212266890746472
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036987 n - A084179 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A095932.P7993212266890746472

namespace A095932

/-- `record[A036987(n)-A084179(n)]` -/
def P7993212266890746472.Spec : Prop :=
  ∀ n, P7993212266890746472.a n = A095932 (n + 1)

end A095932

/-! ## A095932.P1234069987481428150

`A102900(n+1)-A059929(n)`
-/

namespace A095932.P1234069987481428150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102900 (n + 1) - A059929 n

end

end A095932.P1234069987481428150

namespace A095932

/-- `A102900(n+1)-A059929(n)` -/
def P1234069987481428150.Spec : Prop :=
  ∀ n, P1234069987481428150.a n = A095932 (n + 1)

end A095932

/-! ## A095932.P14847009365925036957

`A081294(n+1)-A052964(2*n)`
-/

namespace A095932.P14847009365925036957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081294 (n + 1) - A052964 (2 * n)

end

end A095932.P14847009365925036957

namespace A095932

/-- `A081294(n+1)-A052964(2*n)` -/
def P14847009365925036957.Spec : Prop :=
  ∀ n, P14847009365925036957.a n = A095932 (n + 1)

end A095932

/-! ## A095932.P7509859457047131905

`2*A000079(n)²-A052964(2*n)`
-/

namespace A095932.P7509859457047131905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000079 n ^ 2 - A052964 (2 * n)

end

end A095932.P7509859457047131905

namespace A095932

/-- `2*A000079(n)²-A052964(2*n)` -/
def P7509859457047131905.Spec : Prop :=
  ∀ n, P7509859457047131905.a n = A095932 (n + 1)

end A095932

/-! ## A095932.P5832390282862814519

`A095930(n+1)+A052964(2*n+1)`
-/

namespace A095932.P5832390282862814519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095930 (n + 1) + A052964 (2 * n + 1)

end

end A095932.P5832390282862814519

namespace A095932

/-- `A095930(n+1)+A052964(2*n+1)` -/
def P5832390282862814519.Spec : Prop :=
  ∀ n, P5832390282862814519.a n = A095932 (n + 1)

end A095932

/-! ## A095932.P5349560933870094947

`A007910(2*n+1)-A007598(n+1)`
-/

namespace A095932.P5349560933870094947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007910 (2 * n + 1) - A007598 (n + 1)

end

end A095932.P5349560933870094947

namespace A095932

/-- `A007910(2*n+1)-A007598(n+1)` -/
def P5349560933870094947.Spec : Prop :=
  ∀ n, P5349560933870094947.a n = A095932 (n + 1)

end A095932

/-! ## A095932.P61851325126679415

`A095930(n+1)-A084178(2*(n+1))`
-/

namespace A095932.P61851325126679415
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095930 (n + 1) - A084178 (2 * (n + 1))

end

end A095932.P61851325126679415

namespace A095932

/-- `A095930(n+1)-A084178(2*(n+1))` -/
def P61851325126679415.Spec : Prop :=
  ∀ n, P61851325126679415.a n = A095932 (n + 1)

end A095932

/-!
# A095933: Number of walks of length 2n+1 between two nodes at distance 5 in the cycle graph C_10.

The programs for A095933, the canonical program `A095933.P3485781583051658257` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A095933 has offset 2).

The definition of A095933 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A095933.P7401883677152147615

`ogf(2/(1-7x+13x^2-4x^3))`
-/

namespace A095933.P7401883677152147615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [2] [1, -7, 13, -4] n

end

end A095933.P7401883677152147615

namespace A095933

/-- `ogf(2/(1-7x+13x^2-4x^3))` -/
def P7401883677152147615.Spec : Prop :=
  ∀ n, P7401883677152147615.a n = A095933 (n + 2)

end A095933

/-! ## A095933.P3485781583051658257

`7*a(n-1)-13*a(n-2)+4*a(n-3)` with `a(0)=2, a(1)=14, a(2)=72`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A095933

/-- `7*a(n-1)-13*a(n-2)+4*a(n-3)` -/
def P3485781583051658257.Spec : Prop :=
  ∀ n, P3485781583051658257.a n = A095933 (n + 2)

theorem P3485781583051658257.correct : P3485781583051658257.Spec := by
  intro n
  simp only [A095933, Nat.add_sub_cancel]

end A095933

/-! ## A095933.P6758494553489700230

`2*A095931(n+2)`
-/

namespace A095933.P6758494553489700230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A095931 (n + 2)

end

end A095933.P6758494553489700230

namespace A095933

/-- `2*A095931(n+2)` -/
def P6758494553489700230.Spec : Prop :=
  ∀ n, P6758494553489700230.a n = A095933 (n + 2)

end A095933

/-! ## A095933.P17862433884820442779

`A054877(2*n+5)`
-/

namespace A095933.P17862433884820442779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054877 (2 * n + 5)

end

end A095933.P17862433884820442779

namespace A095933

/-- `A054877(2*n+5)` -/
def P17862433884820442779.Spec : Prop :=
  ∀ n, P17862433884820442779.a n = A095933 (n + 2)

end A095933

/-! ## A095933.P14246787969316587817

`A173126(2*n+5)`
-/

namespace A095933.P14246787969316587817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173126 (2 * n + 5)

end

end A095933.P14246787969316587817

namespace A095933

/-- `A173126(2*n+5)` -/
def P14246787969316587817.Spec : Prop :=
  ∀ n, P14246787969316587817.a n = A095933 (n + 2)

end A095933

/-! ## A095933.P8958200833129266539

`2*A052964(2*n+3)`
-/

namespace A095933.P8958200833129266539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A052964 (2 * n + 3)

end

end A095933.P8958200833129266539

namespace A095933

/-- `2*A052964(2*n+3)` -/
def P8958200833129266539.Spec : Prop :=
  ∀ n, P8958200833129266539.a n = A095933 (n + 2)

end A095933

/-! ## A095933.P12293290413037278089

`4*a(n-1)+2*Δ[A000045(Δ[n²])]` with `a(0)=2`
-/

namespace A095933.P12293290413037278089
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 ((f2 (n + 1) : ℤ) - (f2 n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  4 * a (n - 1) + 2 * (f1 (n + 1) - f1 n)

end

end A095933.P12293290413037278089

namespace A095933

/-- `4*a(n-1)+2*Δ[A000045(Δ[n²])]` -/
def P12293290413037278089.Spec : Prop :=
  ∀ n, P12293290413037278089.a n = A095933 (n + 2)

end A095933

/-! ## A095933.P3099318938295496101

`4*a(n-1)+2*A000045(2*(n+1))` with `a(0)=2`
-/

namespace A095933.P3099318938295496101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  4 * a (n - 1) + 2 * A000045 (2 * (n + 1))

end

end A095933.P3099318938295496101

namespace A095933

/-- `4*a(n-1)+2*A000045(2*(n+1))` -/
def P3099318938295496101.Spec : Prop :=
  ∀ n, P3099318938295496101.a n = A095933 (n + 2)

end A095933

/-! ## A095933.P10038920046022374330

`record[2*A052964(A004273(n))]`
-/

namespace A095933.P10038920046022374330
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A052964 (A004273 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A095933.P10038920046022374330

namespace A095933

/-- `record[2*A052964(A004273(n))]` -/
def P10038920046022374330.Spec : Prop :=
  ∀ n, P10038920046022374330.a n = A095933 (n + 2)

end A095933

/-! ## A095933.P11475204126952227946

`record[A054877(A004275(n+1)+1)]`
-/

namespace A095933.P11475204126952227946
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054877 (A004275 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A095933.P11475204126952227946

namespace A095933

/-- `record[A054877(A004275(n+1)+1)]` -/
def P11475204126952227946.Spec : Prop :=
  ∀ n, P11475204126952227946.a n = A095933 (n + 2)

end A095933

/-! ## A095933.P3767066735050125130

`A224508(2*n+3)+A027974(2*n)`
-/

namespace A095933.P3767066735050125130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224508 (2 * n + 3) + A027974 (2 * n)

end

end A095933.P3767066735050125130

namespace A095933

/-- `A224508(2*n+3)+A027974(2*n)` -/
def P3767066735050125130.Spec : Prop :=
  ∀ n, P3767066735050125130.a n = A095933 (n + 2)

end A095933

/-! ## A095933.P5456447132247025182

`A224508(2*n+3)-A227200(2*n+3)`
-/

namespace A095933.P5456447132247025182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224508 (2 * n + 3) - A227200 (2 * n + 3)

end

end A095933.P5456447132247025182

namespace A095933

/-- `A224508(2*n+3)-A227200(2*n+3)` -/
def P5456447132247025182.Spec : Prop :=
  ∀ n, P5456447132247025182.a n = A095933 (n + 2)

end A095933

/-!
# A095934: Expansion of (1-x)^2/(1-5*x+3*x^2).

The programs for A095934, the canonical program `A095934.P10930955321186613232` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A095934 has offset 0).

The definition of A095934 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1-2x+x^2)/(1-5x+3x^2))` (program `A095934.P10930955321186613232`, by `A095934.P10930955321186613232.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A095934.P10930955321186613232

`ogf((1-2x+x^2)/(1-5x+3x^2))`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A095934

/-- `ogf((1-2x+x^2)/(1-5x+3x^2))` -/
def P10930955321186613232.Spec : Prop :=
  ∀ n, P10930955321186613232.a n = A095934 n

theorem P10930955321186613232.correct : P10930955321186613232.Spec := by
  intro n
  simp only [A095934]

end A095934

/-! ## A095934.P6051818224268343059

`floor(a(n-1)/a(n-2)*a(n-1))` with `a(0)=1, a(1)=3, a(2)=13`
-/

namespace A095934.P6051818224268343059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3, 13] fun n a =>
  ⌊(a (n - 1) : ℚ) / (a (n - 2) : ℚ) * (a (n - 1) : ℚ)⌋

end

end A095934.P6051818224268343059

namespace A095934

/-- `floor(a(n-1)/a(n-2)*a(n-1))` -/
def P6051818224268343059.Spec : Prop :=
  ∀ n, P6051818224268343059.a n = A095934 n

end A095934

/-! ## A095934.P4808322376645949317

`round(a(n-1)/a(n-2)*a(n-1))` with `a(0)=1, a(1)=3, a(2)=13`
-/

namespace A095934.P4808322376645949317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3, 13] fun n a =>
  SequenceMachineLib.roundAway ((a (n - 1) : ℚ) / (a (n - 2) : ℚ) * (a (n - 1) : ℚ))

end

end A095934.P4808322376645949317

namespace A095934

/-- `round(a(n-1)/a(n-2)*a(n-1))` -/
def P4808322376645949317.Spec : Prop :=
  ∀ n, P4808322376645949317.a n = A095934 n

end A095934

/-! ## A095934.P7166896189046605191

`2*a(n-1)+3*(a(n-1)-a(n-2))` with `a(0)=1, a(1)=3, a(2)=13`
-/

namespace A095934.P7166896189046605191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3, 13] fun n a =>
  2 * a (n - 1) + 3 * (a (n - 1) - a (n - 2))

end

end A095934.P7166896189046605191

namespace A095934

/-- `2*a(n-1)+3*(a(n-1)-a(n-2))` -/
def P7166896189046605191.Spec : Prop :=
  ∀ n, P7166896189046605191.a n = A095934 n

end A095934

/-! ## A095934.P1376557025782748136

`A095940(n)+A095939(n)`
-/

namespace A095934.P1376557025782748136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095940 n + A095939 n

end

end A095934.P1376557025782748136

namespace A095934

/-- `A095940(n)+A095939(n)` -/
def P1376557025782748136.Spec : Prop :=
  ∀ n, P1376557025782748136.a n = A095934 n

end A095934

/-! ## A095934.P402253466555235000

`A081704(n)+∑[A095940(n)]-A095940(n)`
-/

namespace A095934.P402253466555235000
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095940 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081704 n + (∑ j ∈ Finset.range (n + 1), f1 j - A095940 n)

end

end A095934.P402253466555235000

namespace A095934

/-- `A081704(n)+∑[A095940(n)]-A095940(n)` -/
def P402253466555235000.Spec : Prop :=
  ∀ n, P402253466555235000.a n = A095934 n

end A095934

/-! ## A095934.P9665261447588332136

`5*a(n-1)-3*a(n-2)` with `a(0)=1, a(1)=3, a(2)=13`
-/

namespace A095934.P9665261447588332136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3, 13] fun n a =>
  5 * a (n - 1) - 3 * a (n - 2)

end

end A095934.P9665261447588332136

namespace A095934

/-- `5*a(n-1)-3*a(n-2)` -/
def P9665261447588332136.Spec : Prop :=
  ∀ n, P9665261447588332136.a n = A095934 n

end A095934

/-! ## A095934.P11957897629436898240

`Δ[A095940(n)]`
-/

namespace A095934.P11957897629436898240
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095940 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A095934.P11957897629436898240

namespace A095934

/-- `Δ[A095940(n)]` -/
def P11957897629436898240.Spec : Prop :=
  ∀ n, P11957897629436898240.a n = A095934 n

end A095934

/-! ## A095934.P14606204634520792136

`Δ[floor(A081704(n)/3)]`
-/

namespace A095934.P14606204634520792136
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A081704 n : ℚ) / 3⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A095934.P14606204634520792136

namespace A095934

/-- `Δ[floor(A081704(n)/3)]` -/
def P14606204634520792136.Spec : Prop :=
  ∀ n, P14606204634520792136.a n = A095934 n

end A095934

/-! ## A095934.P560135666502186357

`ceil(A095939(n+1)/3)`
-/

namespace A095934.P560135666502186357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A095939 (n + 1) : ℚ) / 3⌉

end

end A095934.P560135666502186357

namespace A095934

/-- `ceil(A095939(n+1)/3)` -/
def P560135666502186357.Spec : Prop :=
  ∀ n, P560135666502186357.a n = A095934 n

end A095934

/-! ## A095934.P11089794921472336266

`A018902(n)-A095940(n)`
-/

namespace A095934.P11089794921472336266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018902 n - A095940 n

end

end A095934.P11089794921472336266

namespace A095934

/-- `A018902(n)-A095940(n)` -/
def P11089794921472336266.Spec : Prop :=
  ∀ n, P11089794921472336266.a n = A095934 n

end A095934

/-! ## A095934.P13925722328310566662

`A095940(n+1)-A095940(n)`
-/

namespace A095934.P13925722328310566662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095940 (n + 1) - A095940 n

end

end A095934.P13925722328310566662

namespace A095934

/-- `A095940(n+1)-A095940(n)` -/
def P13925722328310566662.Spec : Prop :=
  ∀ n, P13925722328310566662.a n = A095934 n

end A095934

/-! ## A095934.P12505647721480969111

`(A095939(n)+A018902(n))/2`
-/

namespace A095934.P12505647721480969111
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A095939 n + A018902 n : ℚ) / 2

end

end A095934.P12505647721480969111

namespace A095934

/-- `(A095939(n)+A018902(n))/2` -/
def P12505647721480969111.Spec : Prop :=
  ∀ n, P12505647721480969111.a n = (A095934 n : ℚ)

end A095934

/-! ## A095934.P8747198227166835629

`ceil(A208309(n+1)/6)`
-/

namespace A095934.P8747198227166835629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A208309 (n + 1) : ℚ) / 6⌉

end

end A095934.P8747198227166835629

namespace A095934

/-- `ceil(A208309(n+1)/6)` -/
def P8747198227166835629.Spec : Prop :=
  ∀ n, P8747198227166835629.a n = A095934 n

end A095934

/-! ## A095934.P7974870369151020222

`Δ[A116415(n)%A095939(n)]`
-/

namespace A095934.P7974870369151020222
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A116415 n) (A095939 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A095934.P7974870369151020222

namespace A095934

/-- `Δ[A116415(n)%A095939(n)]` -/
def P7974870369151020222.Spec : Prop :=
  ∀ n, P7974870369151020222.a n = A095934 n

end A095934

/-!
# A095936: One- or two-digit primes encountered in the decimal expansion of e.

The programs for A095936, there is no canonical definition to state claims against.
-/

/-! ## A095936.P2434646045024225778

`p?[A001113(n+1)+10*A001113(n)]`
-/

namespace A095936.P2434646045024225778
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001113 (n + 1 + 1) + 10 * A001113 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A095936.P2434646045024225778

/-!
# A095937: a(n) = Sum_{k=0..n} (k-1)^k.

The programs for A095937, there is no canonical definition to state claims against.
-/

/-! ## A095937.P2559004703880903309

`1+∑[n^(n+1)]`
-/

namespace A095937.P2559004703880903309
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1 + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A095937.P2559004703880903309

/-! ## A095937.P18002782785167778393

`∑[n^n*round(1/acot(n))]`
-/

namespace A095937.P18002782785167778393
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ n : ℤ) * SequenceMachineLib.roundAway (1 / SequenceMachineLib.acot (n : ℝ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A095937.P18002782785167778393

/-! ## A095937.P16763097142850994013

`∑{#}[n, C(#, n)+#^(#+1)]`
-/

namespace A095937.P16763097142850994013
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), (Nat.choose k n + k ^ (k + 1))

end

end A095937.P16763097142850994013

/-! ## A095937.P7310209391673804661

`abs(a(n-1)+n^(n+1))` with `a(0)=1`
-/

namespace A095937.P7310209391673804661
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + n ^ (n + 1)

end

end A095937.P7310209391673804661

/-! ## A095937.P6040704035213077585

`floor(a(n-1)+n^(n+1))` with `a(0)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A095937.P6040704035213077585
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + n ^ (n + 1)

end

end A095937.P6040704035213077585

/-! ## A095937.P11879909271829592151

`ceil(a(n-1)+n^(n+1))` with `a(0)=1`

`ceil` is left out, it is the identity on integers.
-/

namespace A095937.P11879909271829592151
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + n ^ (n + 1)

end

end A095937.P11879909271829592151

/-! ## A095937.P9288200688165392096

`round(a(n-1)+n^(n+1))` with `a(0)=1`

`round` is left out, it is the identity on integers.
-/

namespace A095937.P9288200688165392096
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + n ^ (n + 1)

end

end A095937.P9288200688165392096

/-! ## A095937.P15355184038357481411

`n*(n^n+a(n-1)/n)` with `a(0)=1`
-/

namespace A095937.P15355184038357481411
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (n : ℚ) * ((n ^ n : ℚ) + a (n - 1) / (n : ℚ))

end

end A095937.P15355184038357481411

/-! ## A095937.P14817090419428058117

`∑[A028310(n)^(n+1)]`
-/

namespace A095937.P14817090419428058117
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 n ^ (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A095937.P14817090419428058117

/-!
# A095938: a(n+1) = (a(n)-1)-th prime + 1, a(1) = 2.

The programs for A095938, the canonical program `A095938.P17213610060414589339` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A095938 has offset 1).

The definition of A095938 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A095938.P17213610060414589339

`A000040(a(n-1)-1)+1` with `a(0)=2`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A095938

/-- `A000040(a(n-1)-1)+1` -/
def P17213610060414589339.Spec : Prop :=
  ∀ n, P17213610060414589339.a n = A095938 (n + 1)

theorem P17213610060414589339.correct : P17213610060414589339.Spec := by
  intro n
  simp only [A095938, Nat.add_sub_cancel]

end A095938

/-! ## A095938.P3170029839755177464

`1+A007097(n)`
-/

namespace A095938.P3170029839755177464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 + A007097 n

end

end A095938.P3170029839755177464

namespace A095938

/-- `1+A007097(n)` -/
def P3170029839755177464.Spec : Prop :=
  ∀ n, P3170029839755177464.a n = A095938 (n + 1)

end A095938

/-! ## A095938.P13465822219763152709

`1-(A025444(n)-A007097(n))`
-/

namespace A095938.P13465822219763152709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (A025444 n - A007097 n)

end

end A095938.P13465822219763152709

namespace A095938

/-- `1-(A025444(n)-A007097(n))` -/
def P13465822219763152709.Spec : Prop :=
  ∀ n, P13465822219763152709.a n = A095938 (n + 1)

end A095938

/-! ## A095938.P1165927611812365149

`n-(A023443(n)-A007097(n))`
-/

namespace A095938.P1165927611812365149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - (A023443 n - A007097 n)

end

end A095938.P1165927611812365149

namespace A095938

/-- `n-(A023443(n)-A007097(n))` -/
def P1165927611812365149.Spec : Prop :=
  ∀ n, P1165927611812365149.a n = A095938 (n + 1)

end A095938

/-! ## A095938.P1136559549701157278

`2-(A033999(n)²-A007097(n))`
-/

namespace A095938.P1136559549701157278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - (A033999 n ^ 2 - A007097 n)

end

end A095938.P1136559549701157278

namespace A095938

/-- `2-(A033999(n)²-A007097(n))` -/
def P1136559549701157278.Spec : Prop :=
  ∀ n, P1136559549701157278.a n = A095938 (n + 1)

end A095938

/-!
# A095939: a(n+2) = 5a(n+1) - 3a(n) (n >= 1); a(0) = 1, a(1) = 2, a(2) = 9.

The programs for A095939, the canonical program `A095939.P15158776874180774160` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A095939 has offset 0).

The definition of A095939 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 159 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A095939.P16657108066596711877

`ogf((1-3x+2x^2)/(1-5x+3x^2))`
-/

namespace A095939.P16657108066596711877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -3, 2] [1, -5, 3] n

end

end A095939.P16657108066596711877

namespace A095939

/-- `ogf((1-3x+2x^2)/(1-5x+3x^2))` -/
def P16657108066596711877.Spec : Prop :=
  ∀ n, P16657108066596711877.a n = A095939 n

end A095939

/-! ## A095939.P15158776874180774160

`5*a(n-1)-3*a(n-2)` with `a(0)=1, a(1)=2, a(2)=9`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A095939

/-- `5*a(n-1)-3*a(n-2)` -/
def P15158776874180774160.Spec : Prop :=
  ∀ n, P15158776874180774160.a n = A095939 n

theorem P15158776874180774160.correct : P15158776874180774160.Spec := by
  intro n
  simp only [A095939]

end A095939

/-! ## A095939.P7607252139048741010

`A095934(n)-A095940(n)`
-/

namespace A095939.P7607252139048741010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095934 n - A095940 n

end

end A095939.P7607252139048741010

namespace A095939

/-- `A095934(n)-A095940(n)` -/
def P7607252139048741010.Spec : Prop :=
  ∀ n, P7607252139048741010.a n = A095939 n

end A095939

/-! ## A095939.P13594502874446366777

`ceil(A109114(n)/3)`
-/

namespace A095939.P13594502874446366777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A109114 n : ℚ) / 3⌉

end

end A095939.P13594502874446366777

namespace A095939

/-- `ceil(A109114(n)/3)` -/
def P13594502874446366777.Spec : Prop :=
  ∀ n, P13594502874446366777.a n = A095939 n

end A095939

/-! ## A095939.P17185471177356566676

`ceil(A228791(n+1)/4)`
-/

namespace A095939.P17185471177356566676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A228791 (n + 1) : ℚ) / 4⌉

end

end A095939.P17185471177356566676

namespace A095939

/-- `ceil(A228791(n+1)/4)` -/
def P17185471177356566676.Spec : Prop :=
  ∀ n, P17185471177356566676.a n = A095939 n

end A095939

/-! ## A095939.P11761264297700320378

`A109114(n)/A122553(n)`
-/

namespace A095939.P11761264297700320378
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A109114 n : ℚ) / (A122553 n : ℚ)

end

end A095939.P11761264297700320378

namespace A095939

/-- `A109114(n)/A122553(n)` -/
def P11761264297700320378.Spec : Prop :=
  ∀ n, P11761264297700320378.a n = (A095939 n : ℚ)

end A095939

/-! ## A095939.P2259058875027651107

`A228791(n+1)-A109114(n)`
-/

namespace A095939.P2259058875027651107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228791 (n + 1) - A109114 n

end

end A095939.P2259058875027651107

namespace A095939

/-- `A228791(n+1)-A109114(n)` -/
def P2259058875027651107.Spec : Prop :=
  ∀ n, P2259058875027651107.a n = A095939 n

end A095939

/-! ## A095939.P12850856105441111928

`A228791(n+1)/A040002(n)`
-/

namespace A095939.P12850856105441111928
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A228791 (n + 1) : ℚ) / (A040002 n : ℚ)

end

end A095939.P12850856105441111928

namespace A095939

/-- `A228791(n+1)/A040002(n)` -/
def P12850856105441111928.Spec : Prop :=
  ∀ n, P12850856105441111928.a n = (A095939 n : ℚ)

end A095939

/-! ## A095939.P15367100221948411963

`2*A095934(n)-A018902(n)`
-/

namespace A095939.P15367100221948411963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A095934 n - A018902 n

end

end A095939.P15367100221948411963

namespace A095939

/-- `2*A095934(n)-A018902(n)` -/
def P15367100221948411963.Spec : Prop :=
  ∀ n, P15367100221948411963.a n = A095939 n

end A095939

/-! ## A095939.P15776613310235630611

`A018902(n)-2*A095940(n)`
-/

namespace A095939.P15776613310235630611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018902 n - 2 * A095940 n

end

end A095939.P15776613310235630611

namespace A095939

/-- `A018902(n)-2*A095940(n)` -/
def P15776613310235630611.Spec : Prop :=
  ∀ n, P15776613310235630611.a n = A095939 n

end A095939

/-! ## A095939.P6760065995409893046

`A095940(n+1)-2*A095940(n)`
-/

namespace A095939.P6760065995409893046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095940 (n + 1) - 2 * A095940 n

end

end A095939.P6760065995409893046

namespace A095939

/-- `A095940(n+1)-2*A095940(n)` -/
def P6760065995409893046.Spec : Prop :=
  ∀ n, P6760065995409893046.a n = A095939 n

end A095939

/-!
# A095940: a(n+2) = 5*a(n+1) - 3*a(n) (n >= 1); a(0) = 0, a(1) = 1, a(2) = 4.

The programs for A095940, the canonical program `A095940.P10942198118752155456` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A095940 has offset 0).

The definition of A095940 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A095940.P10942198118752155456

`ogf((x-x^2)/(1-5x+3x^2))`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A095940

/-- `ogf((x-x^2)/(1-5x+3x^2))` -/
def P10942198118752155456.Spec : Prop :=
  ∀ n, P10942198118752155456.a n = A095940 n

theorem P10942198118752155456.correct : P10942198118752155456.Spec := by
  intro n
  simp only [A095940]

end A095940

/-! ## A095940.P738030727713081487

`5*a(n-1)-3*a(n-2)` with `a(0)=0, a(1)=1, a(2)=4`
-/

namespace A095940.P738030727713081487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 4] fun n a =>
  5 * a (n - 1) - 3 * a (n - 2)

end

end A095940.P738030727713081487

namespace A095940

/-- `5*a(n-1)-3*a(n-2)` -/
def P738030727713081487.Spec : Prop :=
  ∀ n, P738030727713081487.a n = A095940 n

end A095940

/-! ## A095940.P11745649281728511127

`lcm(5, a(n-1))-lcm(3, a(n-2))` with `a(0)=0, a(1)=1, a(2)=4`
-/

namespace A095940.P11745649281728511127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 4] fun n a =>
  (Int.lcm 5 (a (n - 1)) : ℤ) - (Int.lcm 3 (a (n - 2)) : ℤ)

end

end A095940.P11745649281728511127

namespace A095940

/-- `lcm(5, a(n-1))-lcm(3, a(n-2))` -/
def P11745649281728511127.Spec : Prop :=
  ∀ n, P11745649281728511127.a n = A095940 n

end A095940

/-! ## A095940.P2419716898457253158

`floor(A081704(n)/3)`
-/

namespace A095940.P2419716898457253158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A081704 n : ℚ) / 3⌋

end

end A095940.P2419716898457253158

namespace A095940

/-- `floor(A081704(n)/3)` -/
def P2419716898457253158.Spec : Prop :=
  ∀ n, P2419716898457253158.a n = A095940 n

end A095940

/-! ## A095940.P10574224933865015395

`A095934(n)-A095939(n)`
-/

namespace A095940.P10574224933865015395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095934 n - A095939 n

end

end A095940.P10574224933865015395

namespace A095940

/-- `A095934(n)-A095939(n)` -/
def P10574224933865015395.Spec : Prop :=
  ∀ n, P10574224933865015395.a n = A095940 n

end A095940

/-! ## A095940.P14613015842332666758

`A057427(n)/3*A081704(n)`
-/

namespace A095940.P14613015842332666758
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A057427 n : ℚ) / 3 * (A081704 n : ℚ)

end

end A095940.P14613015842332666758

namespace A095940

/-- `A057427(n)/3*A081704(n)` -/
def P14613015842332666758.Spec : Prop :=
  ∀ n, P14613015842332666758.a n = (A095940 n : ℚ)

end A095940

/-! ## A095940.P10083228020660504532

`ceil(A081704(n)/3-A000007(n))`
-/

namespace A095940.P10083228020660504532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A081704 n : ℚ) / 3 - (A000007 n : ℚ)⌉

end

end A095940.P10083228020660504532

namespace A095940

/-- `ceil(A081704(n)/3-A000007(n))` -/
def P10083228020660504532.Spec : Prop :=
  ∀ n, P10083228020660504532.a n = A095940 n

end A095940

/-! ## A095940.P9987419142741879300

`A081704(n)/3*char[A002251(n+1)]`
-/

namespace A095940.P9987419142741879300
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002251 (n + 1)

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A081704 n : ℚ) / 3 * ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℚ)

end

end A095940.P9987419142741879300

namespace A095940

/-- `A081704(n)/3*char[A002251(n+1)]` -/
def P9987419142741879300.Spec : Prop :=
  ∀ n, P9987419142741879300.a n = (A095940 n : ℚ)

end A095940

/-! ## A095940.P15057549166695791869

`(A020639(A246037(n))-1)*A081704(n)/3`
-/

namespace A095940.P15057549166695791869
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A020639 (A246037 n).toNat - 1 : ℚ) * ((A081704 n : ℚ) / 3)

end

end A095940.P15057549166695791869

namespace A095940

/-- `(A020639(A246037(n))-1)*A081704(n)/3` -/
def P15057549166695791869.Spec : Prop :=
  ∀ n, P15057549166695791869.a n = (A095940 n : ℚ)

end A095940

/-! ## A095940.P16907475262008517845

`A018902(n)-A095934(n)`
-/

namespace A095940.P16907475262008517845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018902 n - A095934 n

end

end A095940.P16907475262008517845

namespace A095940

/-- `A018902(n)-A095934(n)` -/
def P16907475262008517845.Spec : Prop :=
  ∀ n, P16907475262008517845.a n = A095940 n

end A095940

/-! ## A095940.P18124128233100973802

`A010903(n)%A095934(n)`
-/

namespace A095940.P18124128233100973802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A010903 n) (A095934 n)

end

end A095940.P18124128233100973802

namespace A095940

/-- `A010903(n)%A095934(n)` -/
def P18124128233100973802.Spec : Prop :=
  ∀ n, P18124128233100973802.a n = A095940 n

end A095940

/-! ## A095940.P7916482230825108003

`A116415(n)%A095939(n)`
-/

namespace A095940.P7916482230825108003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A116415 n) (A095939 n)

end

end A095940.P7916482230825108003

namespace A095940

/-- `A116415(n)%A095939(n)` -/
def P7916482230825108003.Spec : Prop :=
  ∀ n, P7916482230825108003.a n = A095940 n

end A095940

/-! ## A095940.P14374052019518957329

`(A018902(n)-A095939(n))/2`
-/

namespace A095940.P14374052019518957329
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A018902 n - A095939 n : ℚ) / 2

end

end A095940.P14374052019518957329

namespace A095940

/-- `(A018902(n)-A095939(n))/2` -/
def P14374052019518957329.Spec : Prop :=
  ∀ n, P14374052019518957329.a n = (A095940 n : ℚ)

end A095940

/-! ## A095940.P6361285071378448023

`A018902(abs(1-n))%A018902(n)`
-/

namespace A095940.P6361285071378448023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A018902 |1 - (n : ℤ)|.toNat) (A018902 n)

end

end A095940.P6361285071378448023

namespace A095940

/-- `A018902(abs(1-n))%A018902(n)` -/
def P6361285071378448023.Spec : Prop :=
  ∀ n, P6361285071378448023.a n = A095940 n

end A095940

/-! ## A095940.P2629475343832776211

`A052961(n+1)-(A095934(n)+A081704(n))`
-/

namespace A095940.P2629475343832776211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052961 (n + 1) - (A095934 n + A081704 n)

end

end A095940.P2629475343832776211

namespace A095940

/-- `A052961(n+1)-(A095934(n)+A081704(n))` -/
def P2629475343832776211.Spec : Prop :=
  ∀ n, P2629475343832776211.a n = A095940 n

end A095940

/-!
# A095941: Number of subsets of {1,2,...,n} such that every number in the set is no larger than the sum of the other numbers in the set.

The programs for A095941, there is no canonical definition to state claims against.
-/

/-! ## A095941.P9579462474399615610

`∑[∑[A337698(n)]]`
-/

namespace A095941.P9579462474399615610
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337698 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A095941.P9579462474399615610

/-! ## A095941.P15070913393416229654

`A341507(n)+A000295(n)`
-/

namespace A095941.P15070913393416229654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341507 n + A000295 n

end

end A095941.P15070913393416229654

/-! ## A095941.P5921795903286871441

`∑[A000079(n)-A036469(n)]`
-/

namespace A095941.P5921795903286871441
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n - A036469 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A095941.P5921795903286871441

/-! ## A095941.P15806234902895661847

`A126646(n)-∑[A036469(n)]`
-/

namespace A095941.P15806234902895661847
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036469 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126646 n - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A095941.P15806234902895661847

/-! ## A095941.P15007699275930573234

`A126646(n)-A095944(n+1)`
-/

namespace A095941.P15007699275930573234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126646 n - A095944 (n + 1)

end

end A095941.P15007699275930573234

/-! ## A095941.P17990650601885417706

`∑[∑[A056823(n)+A047967(n)]]`
-/

namespace A095941.P17990650601885417706
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056823 n + A047967 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A095941.P17990650601885417706

/-! ## A095941.P11991936559898786627

`∑[A000079(n)-∑[A000009(n)]]`
-/

namespace A095941.P11991936559898786627
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000009 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n - ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A095941.P11991936559898786627

/-! ## A095941.P13984908173014205442

`∑[∑[A011782(n)-A000009(n)]]`
-/

namespace A095941.P13984908173014205442
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 n - A000009 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A095941.P13984908173014205442

/-! ## A095941.P6590512102295081073

`∑[A131577(n+1)-A036469(n)]`
-/

namespace A095941.P6590512102295081073
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131577 (n + 1) - A036469 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A095941.P6590512102295081073

/-! ## A095941.P10916153054458618728

`A341507(n+1)+A317910(n+1)`
-/

namespace A095941.P10916153054458618728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341507 (n + 1) + A317910 (n + 1)

end

end A095941.P10916153054458618728

/-! ## A095941.P15812058161486538153

`A000225(n+1)-∑[∑[A000009(n)]]`
-/

namespace A095941.P15812058161486538153
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000009 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 (n + 1) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A095941.P15812058161486538153

/-! ## A095941.P11478931419051816405

`A255047(n+1)-∑[∑[A000009(n)]]`
-/

namespace A095941.P11478931419051816405
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000009 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255047 (n + 1) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A095941.P11478931419051816405

/-! ## A095941.P17923580260090047462

`A000079(n+1)-(A095944(n+1)+1)`
-/

namespace A095941.P17923580260090047462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (n + 1) - (A095944 (n + 1) + 1)

end

end A095941.P17923580260090047462

/-!
# A095942: Differences between adjacent digits of e.

The programs for A095942, the canonical program `A095942.P15034568882361005307` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A095942 has offset 1).

The definition of A095942 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A095942.P4920211991947415285

`Δ[A001113(n)]`
-/

namespace A095942.P4920211991947415285
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001113 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A095942.P4920211991947415285

namespace A095942

/-- `Δ[A001113(n)]` -/
def P4920211991947415285.Spec : Prop :=
  ∀ n, P4920211991947415285.a n = A095942 (n + 1)

end A095942

/-! ## A095942.P15488989429046725428

`Δ[-A121239(n)]`
-/

namespace A095942.P15488989429046725428
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A121239 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A095942.P15488989429046725428

namespace A095942

/-- `Δ[-A121239(n)]` -/
def P15488989429046725428.Spec : Prop :=
  ∀ n, P15488989429046725428.a n = A095942 (n + 1)

end A095942

/-! ## A095942.P15034568882361005307

`Δ[A138115(∑[n+1])]`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A095942

/-- `Δ[A138115(∑[n+1])]` -/
def P15034568882361005307.Spec : Prop :=
  ∀ n, P15034568882361005307.a n = A095942 (n + 1)

theorem P15034568882361005307.correct : P15034568882361005307.Spec := by
  intro n
  simp only [A095942, Nat.add_sub_cancel]

end A095942

/-! ## A095942.P9808238401635474865

`Δ[A098363(∑[n+3])]`
-/

namespace A095942.P9808238401635474865
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098363 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A095942.P9808238401635474865

namespace A095942

/-- `Δ[A098363(∑[n+3])]` -/
def P9808238401635474865.Spec : Prop :=
  ∀ n, P9808238401635474865.a n = A095942 (n + 1)

end A095942

/-! ## A095942.P4494569648559366902

`Δ[A098363(∑[n])/2]`
-/

namespace A095942.P4494569648559366902
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A098363 (∑ j ∈ Finset.range (n + 1), f2 j) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A095942.P4494569648559366902

namespace A095942

/-- `Δ[A098363(∑[n])/2]` -/
def P4494569648559366902.Spec : Prop :=
  ∀ n, P4494569648559366902.a n = (A095942 (n + 1) : ℚ)

end A095942

/-! ## A095942.P3403191526634794426

`Δ[A001355(2*(n+1))]`
-/

namespace A095942.P3403191526634794426
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001355 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A095942.P3403191526634794426

namespace A095942

/-- `Δ[A001355(2*(n+1))]` -/
def P3403191526634794426.Spec : Prop :=
  ∀ n, P3403191526634794426.a n = A095942 (n + 1)

end A095942

/-! ## A095942.P337166278596593766

`Δ[A110779(2*n+1)]`
-/

namespace A095942.P337166278596593766
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110779 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A095942.P337166278596593766

namespace A095942

/-- `Δ[A110779(2*n+1)]` -/
def P337166278596593766.Spec : Prop :=
  ∀ n, P337166278596593766.a n = A095942 (n + 1)

end A095942

/-! ## A095942.P6379872233030811307

`Δ[floor(A091131(n)+acot(n))]`
-/

namespace A095942.P6379872233030811307
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A091131 (n + 1) : ℝ) + SequenceMachineLib.acot (n : ℝ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A095942.P6379872233030811307

namespace A095942

/-- `Δ[floor(A091131(n)+acot(n))]` -/
def P6379872233030811307.Spec : Prop :=
  ∀ n, P6379872233030811307.a n = A095942 (n + 1)

end A095942

/-! ## A095942.P875423199639247837

`A121239(n)-A153805(n)`
-/

namespace A095942.P875423199639247837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121239 (n + 1) - A153805 n

end

end A095942.P875423199639247837

namespace A095942

/-- `A121239(n)-A153805(n)` -/
def P875423199639247837.Spec : Prop :=
  ∀ n, P875423199639247837.a n = A095942 (n + 1)

end A095942

/-! ## A095942.P9028024735576741183

`Δ[A091131(n)+A000007(n)]`
-/

namespace A095942.P9028024735576741183
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091131 (n + 1) + A000007 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A095942.P9028024735576741183

namespace A095942

/-- `Δ[A091131(n)+A000007(n)]` -/
def P9028024735576741183.Spec : Prop :=
  ∀ n, P9028024735576741183.a n = A095942 (n + 1)

end A095942

/-! ## A095942.P78941529488714003

`Δ[A000796(n)-A187747(n)]`
-/

namespace A095942.P78941529488714003
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000796 (n + 1) - A187747 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A095942.P78941529488714003

namespace A095942

/-- `Δ[A000796(n)-A187747(n)]` -/
def P78941529488714003.Spec : Prop :=
  ∀ n, P78941529488714003.a n = A095942 (n + 1)

end A095942

/-! ## A095942.P13138212482873548974

`A001113(n+1)-A001113(n)`
-/

namespace A095942.P13138212482873548974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001113 (n + 1 + 1) - A001113 (n + 1)

end

end A095942.P13138212482873548974

namespace A095942

/-- `A001113(n+1)-A001113(n)` -/
def P13138212482873548974.Spec : Prop :=
  ∀ n, P13138212482873548974.a n = A095942 (n + 1)

end A095942

/-! ## A095942.P10220975300827030769

`A121239(n)-A121239(n+1)`
-/

namespace A095942.P10220975300827030769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121239 (n + 1) - A121239 (n + 1 + 1)

end

end A095942.P10220975300827030769

namespace A095942

/-- `A121239(n)-A121239(n+1)` -/
def P10220975300827030769.Spec : Prop :=
  ∀ n, P10220975300827030769.a n = A095942 (n + 1)

end A095942

/-! ## A095942.P6125815257560342682

`Δ[A073212(n)-Δ[A059582(n)]]`
-/

namespace A095942.P6125815257560342682
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059582 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073212 n - (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A095942.P6125815257560342682

namespace A095942

/-- `Δ[A073212(n)-Δ[A059582(n)]]` -/
def P6125815257560342682.Spec : Prop :=
  ∀ n, P6125815257560342682.a n = A095942 (n + 1)

end A095942

/-! ## A095942.P13831620947501638014

`Δ[Δ[A059582(n)]-A187747(n)]`
-/

namespace A095942.P13831620947501638014
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059582 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n - A187747 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A095942.P13831620947501638014

namespace A095942

/-- `Δ[Δ[A059582(n)]-A187747(n)]` -/
def P13831620947501638014.Spec : Prop :=
  ∀ n, P13831620947501638014.a n = A095942 (n + 1)

end A095942

/-! ## A095942.P17090174465119787542

`Δ[A007318(C(2, n))-A121239(n)]`
-/

namespace A095942.P17090174465119787542
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) - A121239 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A095942.P17090174465119787542

namespace A095942

/-- `Δ[A007318(C(2, n))-A121239(n)]` -/
def P17090174465119787542.Spec : Prop :=
  ∀ n, P17090174465119787542.a n = A095942 (n + 1)

end A095942

/-! ## A095942.P12093328355536034590

`Δ[A091131(n)+gcd(2, A000040(n+1))]`
-/

namespace A095942.P12093328355536034590
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091131 (n + 1) + (Int.gcd 2 (A000040 (n + 1)) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A095942.P12093328355536034590

namespace A095942

/-- `Δ[A091131(n)+gcd(2, A000040(n+1))]` -/
def P12093328355536034590.Spec : Prop :=
  ∀ n, P12093328355536034590.a n = A095942 (n + 1)

end A095942

/-! ## A095942.P15607782790745785478

`A001355(2*(n+2))-A001355(2*(n+1))`
-/

namespace A095942.P15607782790745785478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001355 (2 * (n + 2)) - A001355 (2 * (n + 1))

end

end A095942.P15607782790745785478

namespace A095942

/-- `A001355(2*(n+2))-A001355(2*(n+1))` -/
def P15607782790745785478.Spec : Prop :=
  ∀ n, P15607782790745785478.a n = A095942 (n + 1)

end A095942

/-! ## A095942.P14964067988468433492

`Δ[A091131(n)-A020639(A000010(n+2))]`
-/

namespace A095942.P14964067988468433492
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091131 (n + 1) - A020639 (A000010 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A095942.P14964067988468433492

namespace A095942

/-- `Δ[A091131(n)-A020639(A000010(n+2))]` -/
def P14964067988468433492.Spec : Prop :=
  ∀ n, P14964067988468433492.a n = A095942 (n + 1)

end A095942

/-!
# A095943: Differences between adjacent digits of golden ratio phi.

The programs for A095943, the canonical program `A095943.P14568149226162292481` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A095943 has offset 1).

The definition of A095943 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A095943.P11046387150627266727

`Δ[A001622(n)]`
-/

namespace A095943.P11046387150627266727
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001622 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A095943.P11046387150627266727

namespace A095943

/-- `Δ[A001622(n)]` -/
def P11046387150627266727.Spec : Prop :=
  ∀ n, P11046387150627266727.a n = A095943 (n + 1)

end A095943

/-! ## A095943.P14568149226162292481

`Δ[A098369(∑[n])]`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A095943

/-- `Δ[A098369(∑[n])]` -/
def P14568149226162292481.Spec : Prop :=
  ∀ n, P14568149226162292481.a n = A095943 (n + 1)

theorem P14568149226162292481.correct : P14568149226162292481.Spec := by
  intro n
  simp only [A095943, Nat.add_sub_cancel]

end A095943

/-! ## A095943.P13404289891726248197

`Δ[A094214(abs(1-n))]`
-/

namespace A095943.P13404289891726248197
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094214 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A095943.P13404289891726248197

namespace A095943

/-- `Δ[A094214(abs(1-n))]` -/
def P13404289891726248197.Spec : Prop :=
  ∀ n, P13404289891726248197.a n = A095943 (n + 1)

end A095943

/-! ## A095943.P14142573706069416569

`Δ[-A109866(n+1)]`
-/

namespace A095943.P14142573706069416569
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A109866 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A095943.P14142573706069416569

namespace A095943

/-- `Δ[-A109866(n+1)]` -/
def P14142573706069416569.Spec : Prop :=
  ∀ n, P14142573706069416569.a n = A095943 (n + 1)

end A095943

/-! ## A095943.P9252560816133589506

`Δ[A138116(∑[n+1])]`
-/

namespace A095943.P9252560816133589506
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138116 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A095943.P9252560816133589506

namespace A095943

/-- `Δ[A138116(∑[n+1])]` -/
def P9252560816133589506.Spec : Prop :=
  ∀ n, P9252560816133589506.a n = A095943 (n + 1)

end A095943

/-! ## A095943.P11170666310255330232

`Δ[A382130(2*n+1)]`
-/

namespace A095943.P11170666310255330232
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382130 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A095943.P11170666310255330232

namespace A095943

/-- `Δ[A382130(2*n+1)]` -/
def P11170666310255330232.Spec : Prop :=
  ∀ n, P11170666310255330232.a n = A095943 (n + 1)

end A095943

/-! ## A095943.P14314655954929114384

`Δ[A078424(3*(n+1))]`
-/

namespace A095943.P14314655954929114384
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078424 (3 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A095943.P14314655954929114384

namespace A095943

/-- `Δ[A078424(3*(n+1))]` -/
def P14314655954929114384.Spec : Prop :=
  ∀ n, P14314655954929114384.a n = A095943 (n + 1)

end A095943

/-! ## A095943.P9354223508109133352

`or(C(2, n), Δ[A104457(n)])`
-/

namespace A095943.P9354223508109133352
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104457 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (Nat.choose 2 n : ℤ) (f1 (n + 1) - f1 n)

end

end A095943.P9354223508109133352

namespace A095943

/-- `or(C(2, n), Δ[A104457(n)])` -/
def P9354223508109133352.Spec : Prop :=
  ∀ n, P9354223508109133352.a n = A095943 (n + 1)

end A095943

/-! ## A095943.P913666047693302252

`Δ[A104457(abs(1-n)+1)]`
-/

namespace A095943.P913666047693302252
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104457 ((|1 - (n : ℤ)| + 1).toNat + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A095943.P913666047693302252

namespace A095943

/-- `Δ[A104457(abs(1-n)+1)]` -/
def P913666047693302252.Spec : Prop :=
  ∀ n, P913666047693302252.a n = A095943 (n + 1)

end A095943

/-! ## A095943.P14871944767590443056

`-Δ[A109866(abs(xor(n, -1)))]`
-/

namespace A095943.P14871944767590443056
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109866 |Int.xor (n : ℤ) (-1)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(f1 (n + 1) - f1 n)

end

end A095943.P14871944767590443056

namespace A095943

/-- `-Δ[A109866(abs(xor(n, -1)))]` -/
def P14871944767590443056.Spec : Prop :=
  ∀ n, P14871944767590443056.a n = A095943 (n + 1)

end A095943

/-! ## A095943.P16255366201407962011

`A094214(n)-A001622(n)`
-/

namespace A095943.P16255366201407962011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094214 n - A001622 (n + 1)

end

end A095943.P16255366201407962011

namespace A095943

/-- `A094214(n)-A001622(n)` -/
def P16255366201407962011.Spec : Prop :=
  ∀ n, P16255366201407962011.a n = A095943 (n + 1)

end A095943

/-! ## A095943.P5747107950016752649

`A000007(n)+Δ[A104457(n)]`
-/

namespace A095943.P5747107950016752649
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104457 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n + (f1 (n + 1) - f1 n)

end

end A095943.P5747107950016752649

namespace A095943

/-- `A000007(n)+Δ[A104457(n)]` -/
def P5747107950016752649.Spec : Prop :=
  ∀ n, P5747107950016752649.a n = A095943 (n + 1)

end A095943

/-! ## A095943.P7143039436508366733

`Δ[A104457(n)+A040000(n)]`
-/

namespace A095943.P7143039436508366733
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104457 (n + 1) + A040000 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A095943.P7143039436508366733

namespace A095943

/-- `Δ[A104457(n)+A040000(n)]` -/
def P7143039436508366733.Spec : Prop :=
  ∀ n, P7143039436508366733.a n = A095943 (n + 1)

end A095943

/-! ## A095943.P18350090307044405914

`Δ[A104457(n)+A057427(n)]`
-/

namespace A095943.P18350090307044405914
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104457 (n + 1) + A057427 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A095943.P18350090307044405914

namespace A095943

/-- `Δ[A104457(n)+A057427(n)]` -/
def P18350090307044405914.Spec : Prop :=
  ∀ n, P18350090307044405914.a n = A095943 (n + 1)

end A095943

/-! ## A095943.P8364307214622669348

`Δ[A178334(n)+A104457(n)]`
-/

namespace A095943.P8364307214622669348
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178334 n + A104457 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A095943.P8364307214622669348

namespace A095943

/-- `Δ[A178334(n)+A104457(n)]` -/
def P8364307214622669348.Spec : Prop :=
  ∀ n, P8364307214622669348.a n = A095943 (n + 1)

end A095943

/-! ## A095943.P6650473991655548999

`A001622(n+1)-A001622(n)`
-/

namespace A095943.P6650473991655548999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001622 (n + 1 + 1) - A001622 (n + 1)

end

end A095943.P6650473991655548999

namespace A095943

/-- `A001622(n+1)-A001622(n)` -/
def P6650473991655548999.Spec : Prop :=
  ∀ n, P6650473991655548999.a n = A095943 (n + 1)

end A095943

/-! ## A095943.P11263276753488907895

`A109866(n+1)-A132338(n)`
-/

namespace A095943.P11263276753488907895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109866 (n + 1) - A132338 n

end

end A095943.P11263276753488907895

namespace A095943

/-- `A109866(n+1)-A132338(n)` -/
def P11263276753488907895.Spec : Prop :=
  ∀ n, P11263276753488907895.a n = A095943 (n + 1)

end A095943

/-! ## A095943.P468247254454044708

`A109866(n+1)-A079585(n+1)`
-/

namespace A095943.P468247254454044708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109866 (n + 1) - A079585 (n + 1 + 1)

end

end A095943.P468247254454044708

namespace A095943

/-- `A109866(n+1)-A079585(n+1)` -/
def P468247254454044708.Spec : Prop :=
  ∀ n, P468247254454044708.a n = A095943 (n + 1)

end A095943

/-! ## A095943.P1816409030739974792

`A109866(n+1)-A094874(n+1)`
-/

namespace A095943.P1816409030739974792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109866 (n + 1) - A094874 (n + 1 + 1)

end

end A095943.P1816409030739974792

namespace A095943

/-- `A109866(n+1)-A094874(n+1)` -/
def P1816409030739974792.Spec : Prop :=
  ∀ n, P1816409030739974792.a n = A095943 (n + 1)

end A095943

/-! ## A095943.P10085298475961562979

`A109866(n+1)-A109866(n+2)`
-/

namespace A095943.P10085298475961562979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109866 (n + 1) - A109866 (n + 2)

end

end A095943.P10085298475961562979

namespace A095943

/-- `A109866(n+1)-A109866(n+2)` -/
def P10085298475961562979.Spec : Prop :=
  ∀ n, P10085298475961562979.a n = A095943 (n + 1)

end A095943

/-!
# A095944: Number of subsets S of {1,2,...,n} which contain a number that is greater than the sum of the other numbers in S.

The programs for A095944, there is no canonical definition to state claims against.
-/

/-! ## A095944.P10856371835080757104

`∑[A036469(n)]`
-/

namespace A095944.P10856371835080757104
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036469 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A095944.P10856371835080757104

/-! ## A095944.P15317770054891309946

`∑[∑[A000009(n)]]`
-/

namespace A095944.P15317770054891309946
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000009 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A095944.P15317770054891309946

/-! ## A095944.P3356106517817465012

`∑[∑[abs(A081360(n))]]`
-/

namespace A095944.P3356106517817465012
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A081360 n|

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A095944.P3356106517817465012

/-! ## A095944.P1709833874435409432

`∑[∑[∑[A087897(n)]]]`
-/

namespace A095944.P1709833874435409432
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087897 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A095944.P1709833874435409432

/-! ## A095944.P12578932459290969192

`∑[∑[1+A111133(n)]]`
-/

namespace A095944.P12578932459290969192
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 + A111133 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A095944.P12578932459290969192

/-! ## A095944.P8424511630665940204

`∑[∑[A052839(n)]-n]`
-/

namespace A095944.P8424511630665940204
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052839 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A095944.P8424511630665940204

/-! ## A095944.P7118549124997713130

`∑[A317910(n)+1+n]`
-/

namespace A095944.P7118549124997713130
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317910 n + 1 + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A095944.P7118549124997713130

/-! ## A095944.P3359783532770436925

`∑[∑[ceil(A087135(n)/2)]]`
-/

namespace A095944.P3359783532770436925
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A087135 n : ℚ) / 2⌉

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A095944.P3359783532770436925

/-! ## A095944.P4359046635848152022

`∑[∑[ceil(A333147(n)/2)]]`
-/

namespace A095944.P4359046635848152022
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A333147 n : ℚ) / 2⌉

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A095944.P4359046635848152022

/-! ## A095944.P13890040653116660172

`a(n-1)+A026906(n)+1` with `a(0)=1`
-/

namespace A095944.P13890040653116660172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (A026906 n + 1)

end

end A095944.P13890040653116660172

/-! ## A095944.P17860718658880719287

`A346822(n)-A036469(n)`
-/

namespace A095944.P17860718658880719287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346822 n - A036469 n

end

end A095944.P17860718658880719287

/-! ## A095944.P18429791237409252974

`∑[∑[A057428(n)+A052839(n)]]`
-/

namespace A095944.P18429791237409252974
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 n + A052839 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A095944.P18429791237409252974

/-! ## A095944.P16484376563284544375

`∑[∑[A096765(n)+A025147(n)]]`
-/

namespace A095944.P16484376563284544375
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096765 n + A025147 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A095944.P16484376563284544375

/-! ## A095944.P14058854168548638249

`∑[2*A038348(n)]-A038348(n)`
-/

namespace A095944.P14058854168548638249
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A038348 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A038348 n

end

end A095944.P14058854168548638249

/-! ## A095944.P4848045237884409862

`∑[A090858(n+1)+A015723(n+1)]`
-/

namespace A095944.P4848045237884409862
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090858 (n + 1) + A015723 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A095944.P4848045237884409862

/-! ## A095944.P5038622048139189332

`∑[A026906(n+1)+1]-A026906(n+1)`
-/

namespace A095944.P5038622048139189332
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026906 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A026906 (n + 1)

end

end A095944.P5038622048139189332

/-! ## A095944.P11886776321219929994

`∑[∑[A096765(n+1)+A096765(n)]]`
-/

namespace A095944.P11886776321219929994
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096765 (n + 1) + A096765 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A095944.P11886776321219929994

/-! ## A095944.P16091376192349730123

`A325951(n+1)-(A325951(n)+A036469(n+1))`
-/

namespace A095944.P16091376192349730123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325951 (n + 1) - (A325951 n + A036469 (n + 1))

end

end A095944.P16091376192349730123

/-! ## A095944.P6072427384554439548

`A096914(n+2)+A096914(n+3)-A036469(n+1)`
-/

namespace A095944.P6072427384554439548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096914 (n + 2) + (A096914 (n + 3) - A036469 (n + 1))

end

end A095944.P6072427384554439548

/-! ## A095944.P508080287963697556

`∑[∑[A000041(n)-A047967(n)]]`
-/

namespace A095944.P508080287963697556
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n - A047967 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A095944.P508080287963697556

/-!
# A095952: Initial values for f(x)=phi(sigma(x)) such that iteration of f ends in cycle of length=1.

The programs for A095952, there is no canonical definition to state claims against.
-/

/-! ## A095952.P2941557776865613192

`lt[A082991(n+1)/2, 2]+1`
-/

namespace A095952.P2941557776865613192
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A082991 (n + 1) : ℚ) / 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℚ)) n + 1

end

end A095952.P2941557776865613192

/-! ## A095952.P8300966780710325790

`eq[1, A095955(n+1)]+1`
-/

namespace A095952.P8300966780710325790
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095955 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A095952.P8300966780710325790

/-! ## A095952.P692534404185683458

`record[root(A000027(n+1), A095955(n+1))]`
-/

namespace A095952.P692534404185683458
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A000027 (n + 1) : ℝ) ^ (1 / (A095955 (n + 1) : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A095952.P692534404185683458

/-! ## A095952.P8334916888757060510

`record[(n+1)/A095955(n+1)^A000194(n)]`
-/

namespace A095952.P8334916888757060510
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A095955 (n + 1) : ℚ) ^ (A000194 n : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A095952.P8334916888757060510

/-! ## A095952.P15440492582932444329

`eq[n, A028310(n)*A095955(A028310(n))]`
-/

namespace A095952.P15440492582932444329
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 n * A095955 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A095952.P15440492582932444329

/-! ## A095952.P15988205618789244744

`eq[1, A096993(A000203(n+1))]+1`
-/

namespace A095952.P15988205618789244744
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096993 (A000203 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A095952.P15988205618789244744

/-! ## A095952.P2383582695615558459

`record[(n+1)*(2-A095955(A062401(n+1)))]`
-/

namespace A095952.P2383582695615558459
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (2 - A095955 (A062401 (n + 1)).toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A095952.P2383582695615558459

/-!
# A095953: Initial values for f(x) = phi(sigma(x)) such that iteration of f ends in a cycle of length 3.

The programs for A095953, there is no canonical definition to state claims against.
-/

/-! ## A095953.P17277630662994003646

`eq[6, A082991(n+1)]+1`
-/

namespace A095953.P17277630662994003646
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082991 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A095953.P17277630662994003646

/-! ## A095953.P282505392608092619

`eq[3, A095955(n+1)]+1`
-/

namespace A095953.P282505392608092619
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095955 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A095953.P282505392608092619

/-! ## A095953.P1042750907040045258

`eq[3, A095955(A028310(n))]`
-/

namespace A095953.P1042750907040045258
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095955 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A095953.P1042750907040045258

/-! ## A095953.P13571021895294451975

`A020725(eq[3, A095955(n+1)])`
-/

namespace A095953.P13571021895294451975
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095955 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A095953.P13571021895294451975

/-! ## A095953.P13350464894833643839

`eq[3, A095955(A000007(n)+n)]`
-/

namespace A095953.P13350464894833643839
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095955 (A000007 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A095953.P13350464894833643839

/-! ## A095953.P10793761059612436075

`eq[3, A095955(A000038(n)+n)]`
-/

namespace A095953.P10793761059612436075
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095955 (A000038 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A095953.P10793761059612436075

/-!
# A095954: Initial values for f(x)=phi(sigma(x)) such that iteration of f ends in a cycle of length 6.

The programs for A095954, there is no canonical definition to state claims against.
-/

/-! ## A095954.P16167083335461552697

`eq[6, A095955(A028310(n))]`
-/

namespace A095954.P16167083335461552697
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095955 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A095954.P16167083335461552697

/-! ## A095954.P12152521079882284765

`A020725(eq[6, A095955(n+1)])`
-/

namespace A095954.P12152521079882284765
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095955 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A095954.P12152521079882284765

/-!
# A095955: Function f(x) = phi(sigma(x)) is iterated with initial value n; a(n) is the length of the cycle into which the trajectory merges.

The programs for A095955, there is no canonical definition to state claims against.
-/

/-! ## A095955.P17049553821336115957

`ceil(A082991(n+1)/2)`
-/

namespace A095955.P17049553821336115957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A082991 (n + 1) : ℚ) / 2⌉

end

end A095955.P17049553821336115957

/-! ## A095955.P296523531930494437

`A082991(abs(1-n)+2)/2`
-/

namespace A095955.P296523531930494437
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A082991 (|1 - (n : ℤ)| + 2).toNat : ℚ) / 2

end

end A095955.P296523531930494437

/-! ## A095955.P5113147042312163303

`A000006(A082991(n+1))`
-/

namespace A095955.P5113147042312163303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000006 (A082991 (n + 1)).toNat

end

end A095955.P5113147042312163303

/-! ## A095955.P17601747431699159381

`A096859(n+1)-A096860(n+1)`
-/

namespace A095955.P17601747431699159381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096859 (n + 1) - A096860 (n + 1)

end

end A095955.P17601747431699159381

/-! ## A095955.P3234161667900841186

`1/A040000(n)*A082991(n+1)`
-/

namespace A095955.P3234161667900841186
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  1 / (A040000 n : ℚ) * (A082991 (n + 1) : ℚ)

end

end A095955.P3234161667900841186

/-! ## A095955.P12179623080064196878

`A096993(∑{d}[n+1, #])`
-/

namespace A095955.P12179623080064196878
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096993 (∑ d ∈ Nat.divisors (f1 n), d)

end

end A095955.P12179623080064196878

/-! ## A095955.P16850047202140556436

`A096993(Δ[A160664(n)])`
-/

namespace A095955.P16850047202140556436
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160664 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096993 (f1 (n + 1) - f1 n).toNat

end

end A095955.P16850047202140556436

/-! ## A095955.P6810328662322982717

`A096993(A000203(n+1))`
-/

namespace A095955.P6810328662322982717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096993 (A000203 (n + 1)).toNat

end

end A095955.P6810328662322982717

/-! ## A095955.P17270832134225655989

`A096993(abs(A143348(n+1)))`
-/

namespace A095955.P17270832134225655989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096993 |A143348 (n + 1)|.toNat

end

end A095955.P17270832134225655989

/-! ## A095955.P13266623683753932547

`A096993(sqrt(A072861(n+1)))`
-/

namespace A095955.P13266623683753932547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096993 (SequenceMachineLib.roundAway (Real.sqrt (A072861 (n + 1) : ℝ))).toNat

end

end A095955.P13266623683753932547

/-! ## A095955.P5961173662165336898

`A096993(A160664(n+1)-A160664(n))`
-/

namespace A095955.P5961173662165336898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096993 (A160664 (n + 1) - A160664 n).toNat

end

end A095955.P5961173662165336898

/-! ## A095955.P4740204212584758488

`A096993(A163372(n+1))`
-/

namespace A095955.P4740204212584758488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096993 (A163372 (n + 1)).toNat

end

end A095955.P4740204212584758488

/-! ## A095955.P5901312150128861162

`A082991(n+1)/2*A014963(4*n+2)`
-/

namespace A095955.P5901312150128861162
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A082991 (n + 1) : ℚ) / 2 * (A014963 (4 * n + 2) : ℚ)

end

end A095955.P5901312150128861162

/-!
# A095958: Twin prime pairs concatenated in decimal representation.

The programs for A095958, there is no canonical definition to state claims against.
-/

/-! ## A095958.P9169276754576306685

`A045533(A029707(1+n))`
-/

namespace A095958.P9169276754576306685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045533 (A029707 (1 + n)).toNat

end

end A095958.P9169276754576306685

/-! ## A095958.P745351459052889666

`A045533(A155752(n+1)+1)`
-/

namespace A095958.P745351459052889666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045533 (A155752 (n + 1) + 1).toNat

end

end A095958.P745351459052889666

/-! ## A095958.P1061787911445701497

`A045533(A107770(n+1)-1)`
-/

namespace A095958.P1061787911445701497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045533 (A107770 (n + 1) - 1).toNat

end

end A095958.P1061787911445701497

/-! ## A095958.P2288042130079440844

`A045533(eq[2, A000040(n+2)-A000040(n+1)]+1)`
-/

namespace A095958.P2288042130079440844
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 2) - A000040 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045533 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A095958.P2288042130079440844

/-! ## A095958.P4275161572830113063

`A045533(eq[2, A045533(n+1)%A000040(n+1)]+1)`
-/

namespace A095958.P4275161572830113063
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A045533 (n + 1)) (A000040 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045533 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A095958.P4275161572830113063

/-! ## A095958.P15616160101622423215

`A045533(A000720(A077800(2*n+1)))`
-/

namespace A095958.P15616160101622423215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045533 (A000720 (A077800 (2 * n + 1)).toNat).toNat

end

end A095958.P15616160101622423215

/-! ## A095958.P17197760400719587914

`A001704(A001359(n+1))+1`
-/

namespace A095958.P17197760400719587914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001704 (A001359 (n + 1)).toNat + 1

end

end A095958.P17197760400719587914

/-! ## A095958.P13586255161944710753

`A127421(A014574(n+1))+1`
-/

namespace A095958.P13586255161944710753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127421 (A014574 (n + 1)).toNat + 1

end

end A095958.P13586255161944710753

/-! ## A095958.P6069286543919030507

`A127421(A006512(n+1)-1)+1`
-/

namespace A095958.P6069286543919030507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127421 (A006512 (n + 1) - 1).toNat + 1

end

end A095958.P6069286543919030507

/-! ## A095958.P14767773434111185208

`A001704(A006512(n+1)-2)+1`
-/

namespace A095958.P14767773434111185208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001704 (A006512 (n + 1) - 2).toNat + 1

end

end A095958.P14767773434111185208

/-! ## A095958.P11874698356539814094

`A032607(A001359(n+1))`
-/

namespace A095958.P11874698356539814094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032607 (A001359 (n + 1)).toNat

end

end A095958.P11874698356539814094

/-! ## A095958.P16729879448040897393

`A049851(A006512(n+1))`
-/

namespace A095958.P16729879448040897393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049851 (A006512 (n + 1)).toNat

end

end A095958.P16729879448040897393

/-! ## A095958.P1209591104875584445

`A049851(A067829(n+2))`
-/

namespace A095958.P1209591104875584445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049851 (A067829 (n + 2)).toNat

end

end A095958.P1209591104875584445

/-! ## A095958.P455321966250042531

`A049851(A094743(n+2))`
-/

namespace A095958.P455321966250042531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049851 (A094743 (n + 2)).toNat

end

end A095958.P455321966250042531

/-! ## A095958.P1663637646329686071

`A032607(A124588(n+2))`
-/

namespace A095958.P1663637646329686071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032607 (A124588 (n + 2)).toNat

end

end A095958.P1663637646329686071

/-! ## A095958.P18078217580410515174

`A032607(A181747(n+2))`
-/

namespace A095958.P18078217580410515174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032607 (A181747 (n + 2)).toNat

end

end A095958.P18078217580410515174

/-! ## A095958.P8498706290133040001

`A049851(p?[A000040(n+1)+2])`
-/

namespace A095958.P8498706290133040001
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049851 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A095958.P8498706290133040001

/-! ## A095958.P6671580428955658098

`A049852(p?[A000040(n+1)-2])`
-/

namespace A095958.P6671580428955658098
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049852 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A095958.P6671580428955658098

/-! ## A095958.P1033826778621033347

`A020338(A006512(n+1)-2)+2`
-/

namespace A095958.P1033826778621033347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020338 (A006512 (n + 1) - 2).toNat + 2

end

end A095958.P1033826778621033347

/-! ## A095958.P13667232671648550465

`∩[A032607(n+1), A045533(n+1)]`
-/

namespace A095958.P13667232671648550465
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032607 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045533 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A095958.P13667232671648550465

/-!
# A095959: a(n) = n-th prime modulo 30.

The programs for A095959, the canonical program `A095959.P10311453454862289343` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A095959 has offset 1).

The definition of A095959 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A095959.P10311453454862289343

`A000040(n+1)%30`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A095959

/-- `A000040(n+1)%30` -/
def P10311453454862289343.Spec : Prop :=
  ∀ n, P10311453454862289343.a n = A095959 (n + 1)

theorem P10311453454862289343.correct : P10311453454862289343.Spec := by
  intro n
  simp only [A095959, Nat.add_sub_cancel]

end A095959

/-! ## A095959.P6099282460068338647

`Δ[A007504(n)]%30`
-/

namespace A095959.P6099282460068338647
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (n + 1) - f1 n) 30

end

end A095959.P6099282460068338647

namespace A095959

/-- `Δ[A007504(n)]%30` -/
def P6099282460068338647.Spec : Prop :=
  ∀ n, P6099282460068338647.a n = A095959 (n + 1)

end A095959

/-! ## A095959.P6514452010635745514

`abs(Δ[A008348(n)])%30`
-/

namespace A095959.P6514452010635745514
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008348 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod |f1 (n + 1) - f1 n| 30

end

end A095959.P6514452010635745514

namespace A095959

/-- `abs(Δ[A008348(n)])%30` -/
def P6514452010635745514.Spec : Prop :=
  ∀ n, P6514452010635745514.a n = A095959 (n + 1)

end A095959

/-! ## A095959.P10181662656389765335

`abs(Δ[A022837(n)])%30`
-/

namespace A095959.P10181662656389765335
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022837 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod |f1 (n + 1) - f1 n| 30

end

end A095959.P10181662656389765335

namespace A095959

/-- `abs(Δ[A022837(n)])%30` -/
def P10181662656389765335.Spec : Prop :=
  ∀ n, P10181662656389765335.a n = A095959 (n + 1)

end A095959

/-! ## A095959.P6985944530833988830

`sqrt(A001248(n+1))%30`
-/

namespace A095959.P6985944530833988830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway (Real.sqrt (A001248 (n + 1) : ℝ))) 30

end

end A095959.P6985944530833988830

namespace A095959

/-- `sqrt(A001248(n+1))%30` -/
def P6985944530833988830.Spec : Prop :=
  ∀ n, P6985944530833988830.a n = A095959 (n + 1)

end A095959

/-! ## A095959.P5910065601825557919

`A050997(n+1)%A040210(n)`
-/

namespace A095959.P5910065601825557919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A050997 (n + 1)) (A040210 n)

end

end A095959.P5910065601825557919

namespace A095959

/-- `A050997(n+1)%A040210(n)` -/
def P5910065601825557919.Spec : Prop :=
  ∀ n, P5910065601825557919.a n = A095959 (n + 1)

end A095959

/-! ## A095959.P1858461496460388148

`A171028(n+1)%A040210(n)`
-/

namespace A095959.P1858461496460388148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A171028 (n + 1)) (A040210 n)

end

end A095959.P1858461496460388148

namespace A095959

/-- `A171028(n+1)%A040210(n)` -/
def P1858461496460388148.Spec : Prop :=
  ∀ n, P1858461496460388148.a n = A095959 (n + 1)

end A095959

/-! ## A095959.P17486689489244838242

`A301378(n+1)%A040210(n)`
-/

namespace A095959.P17486689489244838242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A301378 (n + 1)) (A040210 n)

end

end A095959.P17486689489244838242

namespace A095959

/-- `A301378(n+1)%A040210(n)` -/
def P17486689489244838242.Spec : Prop :=
  ∀ n, P17486689489244838242.a n = A095959 (n + 1)

end A095959

/-! ## A095959.P8597772850288068150

`A008578(n+2)%30`
-/

namespace A095959.P8597772850288068150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A008578 (n + 2)) 30

end

end A095959.P8597772850288068150

namespace A095959

/-- `A008578(n+2)%30` -/
def P8597772850288068150.Spec : Prop :=
  ∀ n, P8597772850288068150.a n = A095959 (n + 1)

end A095959

/-! ## A095959.P7226963889678908115

`A061395(A006450(n+1))%30`
-/

namespace A095959.P7226963889678908115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A061395 (A006450 (n + 1)).toNat) 30

end

end A095959.P7226963889678908115

namespace A095959

/-- `A061395(A006450(n+1))%30` -/
def P7226963889678908115.Spec : Prop :=
  ∀ n, P7226963889678908115.a n = A095959 (n + 1)

end A095959

/-! ## A095959.P14899809614133213755

`A092909(n+1)%A040210(n)`
-/

namespace A095959.P14899809614133213755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A092909 (n + 1)) (A040210 n)

end

end A095959.P14899809614133213755

namespace A095959

/-- `A092909(n+1)%A040210(n)` -/
def P14899809614133213755.Spec : Prop :=
  ∀ n, P14899809614133213755.a n = A095959 (n + 1)

end A095959

/-!
# A095960: Number of divisors of n that are less than the squarefree kernel of n.

The programs for A095960, there is no canonical definition to state claims against.
-/

/-! ## A095960.P10198147029011241346

`A073180(1+n)-1`
-/

namespace A095960.P10198147029011241346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073180 (1 + n) - 1

end

end A095960.P10198147029011241346

/-! ## A095960.P17595159544024506328

`A136602(A073180(n+1))`
-/

namespace A095960.P17595159544024506328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136602 (A073180 (n + 1)).toNat

end

end A095960.P17595159544024506328

/-! ## A095960.P772404426176202073

`A025581(C(A073180(n+1), 2))`
-/

namespace A095960.P772404426176202073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 (Nat.choose (A073180 (n + 1)).toNat 2)

end

end A095960.P772404426176202073

/-! ## A095960.P458326596898465545

`A001478(n+1)+A073180(n+1)+n`
-/

namespace A095960.P458326596898465545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001478 (n + 1) + (A073180 (n + 1) + (n : ℤ))

end

end A095960.P458326596898465545

/-! ## A095960.P5836538883636059435

`(A073180(n+1)+n)%A007948(n+1)`
-/

namespace A095960.P5836538883636059435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A073180 (n + 1) + (n : ℤ)) (A007948 (n + 1))

end

end A095960.P5836538883636059435

/-! ## A095960.P7199438498957093820

`A097945(A020639(2*(n+2)))+A073180(n+1)`
-/

namespace A095960.P7199438498957093820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097945 (A020639 (2 * (n + 2))).toNat + A073180 (n + 1)

end

end A095960.P7199438498957093820

/-! ## A095960.P9125631374420956913

`(A073180(n+1)+A000578(2*n+1))%(n+1)`
-/

namespace A095960.P9125631374420956913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A073180 (n + 1) + A000578 (2 * n + 1)) (n + 1 : ℤ)

end

end A095960.P9125631374420956913

/-! ## A095960.P17386834014134802227

`A117010(n+1)%A073180(n+1)`
-/

namespace A095960.P17386834014134802227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A117010 (n + 1)) (A073180 (n + 1))

end

end A095960.P17386834014134802227

/-! ## A095960.P18174418396989530694

`A083800(n+1)%A073180(n+1)`
-/

namespace A095960.P18174418396989530694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A083800 (n + 1)) (A073180 (n + 1))

end

end A095960.P18174418396989530694

/-! ## A095960.P3914824839509430447

`A070198(n)%A073180(n+1)`
-/

namespace A095960.P3914824839509430447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A070198 n) (A073180 (n + 1))

end

end A095960.P3914824839509430447

/-! ## A095960.P15870834171776867316

`A079782(n+1)%A073180(n+1)`
-/

namespace A095960.P15870834171776867316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A079782 (n + 1)) (A073180 (n + 1))

end

end A095960.P15870834171776867316

/-! ## A095960.P12082858290410897335

`A083685(n+1)%A073180(n+1)`
-/

namespace A095960.P12082858290410897335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A083685 (n + 1)) (A073180 (n + 1))

end

end A095960.P12082858290410897335

/-! ## A095960.P16305888118897777299

`A121934(n+1)%A073180(n+1)`
-/

namespace A095960.P16305888118897777299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A121934 (n + 1)) (A073180 (n + 1))

end

end A095960.P16305888118897777299

/-! ## A095960.P5231032938835874234

`A004907(A073180(n+1))%A000720(A003215(n+1))`
-/

namespace A095960.P5231032938835874234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A004907 (A073180 (n + 1)).toNat) (A000720 (A003215 (n + 1)).toNat)

end

end A095960.P5231032938835874234

/-! ## A095960.P5718796661370175250

`A243987(A007947(n+1)+A000217(n))-1`
-/

namespace A095960.P5718796661370175250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243987 (A007947 (n + 1) + A000217 n).toNat - 1

end

end A095960.P5718796661370175250

/-! ## A095960.P5407732567993457265

`A030494(n+1)%A073180(n+1)`
-/

namespace A095960.P5407732567993457265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A030494 (n + 1)) (A073180 (n + 1))

end

end A095960.P5407732567993457265

/-! ## A095960.P7851757273620370642

`A072828(n+1)%A073180(n+1)`
-/

namespace A095960.P7851757273620370642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A072828 (n + 1)) (A073180 (n + 1))

end

end A095960.P7851757273620370642

/-! ## A095960.P8477183220973230585

`A198277(n)%A073180(n+1)`
-/

namespace A095960.P8477183220973230585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A198277 n) (A073180 (n + 1))

end

end A095960.P8477183220973230585

/-!
# A095961: If p(x) is the x-th prime, then the n-th set of 2 consecutive sexy prime pairs starts at p(a(n)).

The programs for A095961, there is no canonical definition to state claims against.
-/

/-! ## A095961.P7220104385609715144

`∩[A022884(n+1), A320701(n+1)]`
-/

namespace A095961.P7220104385609715144
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022884 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320701 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A095961.P7220104385609715144

/-! ## A095961.P9908540853405366202

`∩[A320701(n+1), A320701(n+2)-2]`
-/

namespace A095961.P9908540853405366202
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320701 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320701 (n + 2) - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A095961.P9908540853405366202

/-! ## A095961.P1330212431022045096

`eq[A054541(n+1), A056338(A135732(n+1))]`
-/

namespace A095961.P1330212431022045096
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054541 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056338 (A135732 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A095961.P1330212431022045096

/-! ## A095961.P5650017867872647081

`eq[A054541(n+1), A056338(A176246(n+1))]`
-/

namespace A095961.P5650017867872647081
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054541 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056338 (A176246 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A095961.P5650017867872647081

/-! ## A095961.P15933496505833779356

`eq[A005581(A028334(n+2)), A076368(n+1)]`
-/

namespace A095961.P15933496505833779356
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005581 (A028334 (n + 2)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076368 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A095961.P15933496505833779356

/-! ## A095961.P14448264900321275248

`eq[A054541(n+1), A131513(A028334(n+2))]`
-/

namespace A095961.P14448264900321275248
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054541 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131513 (A028334 (n + 2)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A095961.P14448264900321275248

/-! ## A095961.P16077279268218867776

`eq[A028334(n+2), A078024(A230847(n+1))]`
-/

namespace A095961.P16077279268218867776
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028334 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078024 (A230847 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A095961.P16077279268218867776

/-!
# A095962: If p(x) is the x-th prime, then the n-th set of 3 consecutive sexy prime pairs starts at p(a(n)).

The programs for A095962, there is no canonical definition to state claims against.
-/

/-! ## A095962.P12943070426473396569

`∩[A022888(n+1), A095961(n+1)]`
-/

namespace A095962.P12943070426473396569
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022888 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095961 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A095962.P12943070426473396569

/-! ## A095962.P15325257034003713084

`∩[A095961(n+1), A338425(n+1)]`
-/

namespace A095962.P15325257034003713084
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095961 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338425 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A095962.P15325257034003713084

/-! ## A095962.P9253001592465425154

`∩[A022884(n+1)-2, A095961(n+1)]`
-/

namespace A095962.P9253001592465425154
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022884 (n + 1) - 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095961 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A095962.P9253001592465425154

/-! ## A095962.P9349378830437365886

`∩[A095961(n+1)-2, A320701(n+1)]`
-/

namespace A095962.P9349378830437365886
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095961 (n + 1) - 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320701 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A095962.P9349378830437365886

/-! ## A095962.P6519562478919540511

`∩[A095961(n+2)-2, A095961(n+2)]`
-/

namespace A095962.P6519562478919540511
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095961 (n + 2) - 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095961 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A095962.P6519562478919540511

/-!
# A095963: If p(x) is the x-th prime, then the n-th set of 4 consecutive sexy prime pairs starts at p(a(n)).

The programs for A095963, there is no canonical definition to state claims against.
-/

/-! ## A095963.P12158366545850003074

`∩[A095962(n+1)-2, A095962(n+1)]`
-/

namespace A095963.P12158366545850003074
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095962 (n + 1) - 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095962 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A095963.P12158366545850003074

/-!
# A095964: If p(x) is the x-th prime, then the n-th set of 5 consecutive sexy prime pairs starts at p(a(n)).

The programs for A095964, there is no canonical definition to state claims against.
-/

/-! ## A095964.P13700215599306732341

`∩[A095963(n+1)-2, A095963(n+1)]`
-/

namespace A095964.P13700215599306732341
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095963 (n + 1) - 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095963 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A095964.P13700215599306732341

/-!
# A095966: Numbers k such that k * (largest digit of k) is a square.

The programs for A095966, there is no canonical definition to state claims against.
-/

/-! ## A095966.P15481285349023919951

`∑{e}[3^n, A066565(#)]`
-/

namespace A095966.P15481285349023919951
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), A066565 (Nat.factorization (f1 n) p)

end

end A095966.P15481285349023919951

/-! ## A095966.P3498527095266244102

`eq[0, A350178(A230101(n))]`
-/

namespace A095966.P3498527095266244102
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350178 (A230101 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A095966.P3498527095266244102

/-! ## A095966.P116710046835527828

`eq[char[A066565(n+1)], A347447(n+1)]`
-/

namespace A095966.P116710046835527828
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066565 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347447 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A095966.P116710046835527828

/-! ## A095966.P11387283868120106122

`eq[A151933(n), A301573(A230101(n))]`
-/

namespace A095966.P11387283868120106122
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151933 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301573 (A230101 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A095966.P11387283868120106122

/-! ## A095966.P2833090321454595338

`lt[A350178(A230101(n)), A347447(n+3)]`
-/

namespace A095966.P2833090321454595338
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350178 (A230101 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347447 (n + 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A095966.P2833090321454595338

/-!
# A095968: Number of tilings of an n X n section of the square lattice with "ribbon tiles". A ribbon tile is a polyomino which has at most one square on each diagonal running from northwest to southeast.

The programs for A095968, there is no canonical definition to state claims against.
-/

/-! ## A095968.P9872859358557731820

`∏[A088305(n)²]`
-/

namespace A095968.P9872859358557731820
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088305 n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A095968.P9872859358557731820

/-! ## A095968.P15277937919578107509

`∏[A152189(2*n)]`
-/

namespace A095968.P15277937919578107509
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152189 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A095968.P15277937919578107509

/-! ## A095968.P11585139202302904633

`∏[A128100(n²)²]`
-/

namespace A095968.P11585139202302904633
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128100 (n ^ 2) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A095968.P11585139202302904633

/-! ## A095968.P14977193244708158917

`a(n-1)*A049684(n)` with `a(0)=1`
-/

namespace A095968.P14977193244708158917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) * A049684 n

end

end A095968.P14977193244708158917

/-! ## A095968.P9581909228467216178

`∏[A324969(2*n+1)²]`
-/

namespace A095968.P9581909228467216178
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324969 (2 * n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A095968.P9581909228467216178

/-!
# A095969: If p(k) is the k-th prime, then the n-th set of 2 consecutive cousin prime pairs starts at p(a(n)).

The programs for A095969, there is no canonical definition to state claims against.
-/

/-! ## A095969.P12459523365777755992

`∩[A022884(n+1), A029709(n+1)]`
-/

namespace A095969.P12459523365777755992
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022884 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029709 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A095969.P12459523365777755992

/-! ## A095969.P8174033667217406157

`A000720(p?[A022885(n+1)+4]-1)`
-/

namespace A095969.P8174033667217406157
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022885 (n + 1) + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - 1).toNat

end

end A095969.P8174033667217406157

/-! ## A095969.P6951682521167623332

`A000720(xor(1, p?[A022885(n+1)+4]))`
-/

namespace A095969.P6951682521167623332
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022885 (n + 1) + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (Int.xor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))).toNat

end

end A095969.P6951682521167623332

/-! ## A095969.P6076601354693199959

`eq[10, A028334(n+2)*A076368(n+1)]`
-/

namespace A095969.P6076601354693199959
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028334 (n + 2) * A076368 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A095969.P6076601354693199959

/-! ## A095969.P15914481942183236271

`eq[A000330(A028334(n+2)), A230847(n+1)]`
-/

namespace A095969.P15914481942183236271
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000330 (A028334 (n + 2)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230847 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A095969.P15914481942183236271

/-! ## A095969.P12757730629527572231

`eq[A230847(n+1), A326418(A052180(n+2))]`
-/

namespace A095969.P12757730629527572231
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230847 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326418 (A052180 (n + 2)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A095969.P12757730629527572231

/-! ## A095969.P13466622397081878742

`eq[A052180(n+2)², A007444(A076368(n+1))]`
-/

namespace A095969.P13466622397081878742
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052180 (n + 2) ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007444 (A076368 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A095969.P13466622397081878742

/-! ## A095969.P3723176617362073459

`eq[A056338(A054541(n+1))+2, A176246(n+1)]`
-/

namespace A095969.P3723176617362073459
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056338 (A054541 (n + 1)).toNat + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176246 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A095969.P3723176617362073459

/-! ## A095969.P10244345351448512771

`eq[A000045(A230850(2*n+1)), A052180(n+2)]`
-/

namespace A095969.P10244345351448512771
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (A230850 (2 * n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052180 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A095969.P10244345351448512771

/-! ## A095969.P1769634488819704903

`A029709(eq[2, A029709(n+2)-A029709(n+1)]+1)`
-/

namespace A095969.P1769634488819704903
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029709 (n + 2) - A029709 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029709 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A095969.P1769634488819704903

/-!
# A095970: If p(k) is the k-th prime, then the n-th set of 3 consecutive cousin prime pairs starts at p(a(n)).

The programs for A095970, there is no canonical definition to state claims against.
-/

/-! ## A095970.P3499080017519686895

`∩[A022888(n+1), A095969(n+1)]`
-/

namespace A095970.P3499080017519686895
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022888 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095969 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A095970.P3499080017519686895

/-! ## A095970.P1395793204699427550

`∩[A095969(n+1), A338425(n+1)]`
-/

namespace A095970.P1395793204699427550
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095969 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338425 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A095970.P1395793204699427550

/-! ## A095970.P15972130820678374583

`∩[A022884(n+1)-2, A095969(n+1)]`
-/

namespace A095970.P15972130820678374583
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022884 (n + 1) - 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095969 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A095970.P15972130820678374583

/-! ## A095970.P587908431919324118

`∩[A095969(n+1)-2, A029709(n+1)]`
-/

namespace A095970.P587908431919324118
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095969 (n + 1) - 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029709 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A095970.P587908431919324118

/-!
# A095971: If p(k) is the k-th prime, then the n-th set of 4 consecutive cousin prime pairs starts at p(a(n)).

The programs for A095971, there is no canonical definition to state claims against.
-/

/-! ## A095971.P15110841060774979766

`∩[A095970(n+1)-2, A095970(n+1)]`
-/

namespace A095971.P15110841060774979766
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095970 (n + 1) - 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095970 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A095971.P15110841060774979766

/-!
# A095972: Number of quadratic nonresidues modulo n.

The programs for A095972, there is no canonical definition to state claims against.
-/

/-! ## A095972.P933499195955695970

`n+1-A000224(n+1)`
-/

namespace A095972.P933499195955695970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A000224 (n + 1)

end

end A095972.P933499195955695970

/-! ## A095972.P18031720986595249006

`n-A105612(1+n)`
-/

namespace A095972.P18031720986595249006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A105612 (1 + n)

end

end A095972.P18031720986595249006

/-! ## A095972.P6580830156815005191

`1-A000224(n+1)+n`
-/

namespace A095972.P6580830156815005191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A000224 (n + 1) + (n : ℤ)

end

end A095972.P6580830156815005191

/-! ## A095972.P5399758451705012746

`n+1-sqrt(sqrt(A226757(n+1)))`
-/

namespace A095972.P5399758451705012746
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℝ) - Real.sqrt (Real.sqrt (A226757 (n + 1) : ℝ))

end

end A095972.P5399758451705012746

/-! ## A095972.P5318059212966025037

`A024000(A000224(n+1))+n`
-/

namespace A095972.P5318059212966025037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024000 (A000224 (n + 1)).toNat + (n : ℤ)

end

end A095972.P5318059212966025037

/-! ## A095972.P12048309683308828105

`abs(A105612(n+1)+A001489(n))`
-/

namespace A095972.P12048309683308828105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A105612 (n + 1) + A001489 n|

end

end A095972.P12048309683308828105

/-! ## A095972.P5981173742887971518

`A024000(A105612(n+1)+1)+n`
-/

namespace A095972.P5981173742887971518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024000 (A105612 (n + 1) + 1).toNat + (n : ℤ)

end

end A095972.P5981173742887971518

/-! ## A095972.P1683413633154915310

`Δ[A000290(n)]%(A000224(n+1)+n)`
-/

namespace A095972.P1683413633154915310
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000290 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (n + 1) - f1 n) (A000224 (n + 1) + (n : ℤ))

end

end A095972.P1683413633154915310

/-! ## A095972.P6685429094768455547

`(n*(A105612(n+1)+A056105(n+1)))%(n+1)`
-/

namespace A095972.P6685429094768455547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((n : ℤ) * (A105612 (n + 1) + A056105 (n + 1))) (n + 1 : ℤ)

end

end A095972.P6685429094768455547

/-! ## A095972.P10223985089161133192

`A165927(n+1)+A165918(n+1)`
-/

namespace A095972.P10223985089161133192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165927 (n + 1) + A165918 (n + 1)

end

end A095972.P10223985089161133192

/-! ## A095972.P14673646130917400977

`n-(A165924(n+1)+A165915(n+1))`
-/

namespace A095972.P14673646130917400977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - (A165924 (n + 1) + A165915 (n + 1))

end

end A095972.P14673646130917400977

/-!
# A095975: -a(n) is inverse EULER transform of -A000041(n).

The programs for A095975, there is no canonical definition to state claims against.
-/

/-! ## A095975.P2960862391684009896

`∑[A360247(A063834(n))]`
-/

namespace A095975.P2960862391684009896
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360247 (A063834 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A095975.P2960862391684009896

/-! ## A095975.P15134448314533789206

`A080595(A179342(n+1))`
-/

namespace A095975.P15134448314533789206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080595 (A179342 (n + 1)).toNat

end

end A095975.P15134448314533789206

/-! ## A095975.P858714135425134861

`A080595(A179346(n+1))`
-/

namespace A095975.P858714135425134861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080595 (A179346 (n + 1)).toNat

end

end A095975.P858714135425134861

/-!
# A095976: Numbers k such that (largest digit of k) + (largest digit of k+1) is prime.

The programs for A095976, there is no canonical definition to state claims against.
-/

/-! ## A095976.P17279047699340908719

`lt[A065712(n), A305313(A305313(n+1))]`
-/

namespace A095976.P17279047699340908719
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065712 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305313 (A305313 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A095976.P17279047699340908719

/-! ## A095976.P10808999663459833538

`lt[A159933(n+2), A159956(A159924(n+1))]`
-/

namespace A095976.P10808999663459833538
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159933 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159956 (A159924 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A095976.P10808999663459833538

/-! ## A095976.P12939377121006908544

`lt[A264116(3*n+2), A237519(A061579(n)+1)]`
-/

namespace A095976.P12939377121006908544
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264116 (3 * n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237519 (A061579 n + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A095976.P12939377121006908544

/-! ## A095976.P12974099950706002597

`∑[A094840(∑[A282869(2*n+1)])]`
-/

namespace A095976.P12974099950706002597
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282869 (2 * n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094840 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A095976.P12974099950706002597

/-!
# A095977: Expansion of g.f. 2*x / ((1+x)^2*(1-2*x)^2).

The programs for A095977, the canonical program `A095977.P12952145134405979518` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A095977 has offset 1).

The definition of A095977 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(2/(1-2x-3x^2+4x^3+4x^4))` (program `A095977.P12952145134405979518`, by `A095977.P12952145134405979518.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A095977.P4421298746552143726

`∑{#}[floor((n+2)/2), #*2^#*C(n+2-#, #)]`
-/

namespace A095977.P4421298746552143726
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n + 2 : ℚ) / 2⌋

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1).toNat, k * 2 ^ k * Nat.choose ((n + 2 : ℤ) - (k : ℤ)).toNat k

end

end A095977.P4421298746552143726

namespace A095977

/-- `∑{#}[floor((n+2)/2), #*2^#*C(n+2-#, #)]` -/
def P4421298746552143726.Spec : Prop :=
  ∀ n, (P4421298746552143726.a n : ℤ) = A095977 (n + 1)

end A095977

/-! ## A095977.P17934905867334659227

`2*A073371(n)`
-/

namespace A095977.P17934905867334659227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A073371 n

end

end A095977.P17934905867334659227

namespace A095977

/-- `2*A073371(n)` -/
def P17934905867334659227.Spec : Prop :=
  ∀ n, P17934905867334659227.a n = A095977 (n + 1)

end A095977

/-! ## A095977.P12952145134405979518

`ogf(2/(1-2x-3x^2+4x^3+4x^4))`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A095977

/-- `ogf(2/(1-2x-3x^2+4x^3+4x^4))` -/
def P12952145134405979518.Spec : Prop :=
  ∀ n, P12952145134405979518.a n = A095977 (n + 1)

theorem P12952145134405979518.correct : P12952145134405979518.Spec := by
  intro n
  simp only [A095977, Nat.add_sub_cancel]

end A095977

/-! ## A095977.P11260369530842656680

`1/27*((3*(n+1)+2)*2^(n+3)-(6*(n+1)+8)*(-1)^(n+1))`
-/

namespace A095977.P11260369530842656680
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 : ℚ) / 27 * (((3 * (n + 1) + 2) * 2 ^ (n + 3) : ℤ) - (6 * (n + 1) + 8 : ℤ) * (-1) ^ (n + 1) : ℚ)

end

end A095977.P11260369530842656680

namespace A095977

/-- `1/27*((3*(n+1)+2)*2^(n+3)-(6*(n+1)+8)*(-1)^(n+1))` -/
def P11260369530842656680.Spec : Prop :=
  ∀ n, P11260369530842656680.a n = (A095977 (n + 1) : ℚ)

end A095977

/-! ## A095977.P1611377806737430061

`∑[2*A127976(n+1)]`
-/

namespace A095977.P1611377806737430061
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A127976 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A095977.P1611377806737430061

namespace A095977

/-- `∑[2*A127976(n+1)]` -/
def P1611377806737430061.Spec : Prop :=
  ∀ n, P1611377806737430061.a n = A095977 (n + 1)

end A095977

/-! ## A095977.P18222206193934916236

`∑[∑[abs(2*A322039(n))]]`
-/

namespace A095977.P18222206193934916236
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |2 * A322039 n|

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A095977.P18222206193934916236

namespace A095977

/-- `∑[∑[abs(2*A322039(n))]]` -/
def P18222206193934916236.Spec : Prop :=
  ∀ n, P18222206193934916236.a n = A095977 (n + 1)

end A095977

/-! ## A095977.P5298420561170406996

`A073371(n)+∑[A127976(n+1)]`
-/

namespace A095977.P5298420561170406996
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127976 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073371 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A095977.P5298420561170406996

namespace A095977

/-- `A073371(n)+∑[A127976(n+1)]` -/
def P5298420561170406996.Spec : Prop :=
  ∀ n, P5298420561170406996.a n = A095977 (n + 1)

end A095977

/-! ## A095977.P12424852347136061734

`A102713(n+1)+A059570(n+1)`
-/

namespace A095977.P12424852347136061734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102713 (n + 1) + A059570 (n + 1)

end

end A095977.P12424852347136061734

namespace A095977

/-- `A102713(n+1)+A059570(n+1)` -/
def P12424852347136061734.Spec : Prop :=
  ∀ n, P12424852347136061734.a n = A095977 (n + 1)

end A095977

/-! ## A095977.P886783314262882234

`A127976(n+1)+A045883(n+1)`
-/

namespace A095977.P886783314262882234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127976 (n + 1) + A045883 (n + 1)

end

end A095977.P886783314262882234

namespace A095977

/-- `A127976(n+1)+A045883(n+1)` -/
def P886783314262882234.Spec : Prop :=
  ∀ n, P886783314262882234.a n = A095977 (n + 1)

end A095977

/-! ## A095977.P4791499140207540013

`A127976(n+3)-A001045(n+3)`
-/

namespace A095977.P4791499140207540013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127976 (n + 3) - A001045 (n + 3)

end

end A095977.P4791499140207540013

namespace A095977

/-- `A127976(n+3)-A001045(n+3)` -/
def P4791499140207540013.Spec : Prop :=
  ∀ n, P4791499140207540013.a n = A095977 (n + 1)

end A095977

/-! ## A095977.P14501303920805517626

`∑[2*(A102713(n+1)-A045883(n))]`
-/

namespace A095977.P14501303920805517626
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A102713 (n + 1) - A045883 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A095977.P14501303920805517626

namespace A095977

/-- `∑[2*(A102713(n+1)-A045883(n))]` -/
def P14501303920805517626.Spec : Prop :=
  ∀ n, P14501303920805517626.a n = A095977 (n + 1)

end A095977

/-! ## A095977.P13561323087888952460

`A073371(A020725(n+1)-2)+A073371(n)`
-/

namespace A095977.P13561323087888952460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073371 (A020725 (n + 1) - 2).toNat + A073371 n

end

end A095977.P13561323087888952460

namespace A095977

/-- `A073371(A020725(n+1)-2)+A073371(n)` -/
def P13561323087888952460.Spec : Prop :=
  ∀ n, P13561323087888952460.a n = A095977 (n + 1)

end A095977

/-! ## A095977.P10681602608713175680

`A045883(n+1)+A102713(n+1)-A045883(n)`
-/

namespace A095977.P10681602608713175680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045883 (n + 1) + (A102713 (n + 1) - A045883 n)

end

end A095977.P10681602608713175680

namespace A095977

/-- `A045883(n+1)+A102713(n+1)-A045883(n)` -/
def P10681602608713175680.Spec : Prop :=
  ∀ n, P10681602608713175680.a n = A095977 (n + 1)

end A095977

/-! ## A095977.P4914452983798785796

`A073371(n+1)+A073371(n)-A127976(n+2)`
-/

namespace A095977.P4914452983798785796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073371 (n + 1) + (A073371 n - A127976 (n + 2))

end

end A095977.P4914452983798785796

namespace A095977

/-- `A073371(n+1)+A073371(n)-A127976(n+2)` -/
def P4914452983798785796.Spec : Prop :=
  ∀ n, P4914452983798785796.a n = A095977 (n + 1)

end A095977

/-! ## A095977.P4586171654710335738

`abs(∑[A232600(n+1)])`
-/

namespace A095977.P4586171654710335738
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232600 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∑ j ∈ Finset.range (n + 1), f1 j|

end

end A095977.P4586171654710335738

namespace A095977

/-- `abs(∑[A232600(n+1)])` -/
def P4586171654710335738.Spec : Prop :=
  ∀ n, P4586171654710335738.a n = A095977 (n + 1)

end A095977

/-! ## A095977.P17743236488857824740

`A140960(n+2)-a(n-1)` with `a(0)=2`
-/

namespace A095977.P17743236488857824740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A140960 (n + 2) - a (n - 1)

end

end A095977.P17743236488857824740

namespace A095977

/-- `A140960(n+2)-a(n-1)` -/
def P17743236488857824740.Spec : Prop :=
  ∀ n, P17743236488857824740.a n = A095977 (n + 1)

end A095977

/-! ## A095977.P8988334940789545495

`Δ[A073371(n+1)]-A001045(n+3)`
-/

namespace A095977.P8988334940789545495
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073371 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A001045 (n + 3)

end

end A095977.P8988334940789545495

namespace A095977

/-- `Δ[A073371(n+1)]-A001045(n+3)` -/
def P8988334940789545495.Spec : Prop :=
  ∀ n, P8988334940789545495.a n = A095977 (n + 1)

end A095977

/-! ## A095977.P842511058438578070

`A127976(n+1)+A127981(n+1)-A127985(n)`
-/

namespace A095977.P842511058438578070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127976 (n + 1) + (A127981 (n + 1) - A127985 n)

end

end A095977.P842511058438578070

namespace A095977

/-- `A127976(n+1)+A127981(n+1)-A127985(n)` -/
def P842511058438578070.Spec : Prop :=
  ∀ n, P842511058438578070.a n = A095977 (n + 1)

end A095977

/-! ## A095977.P18129212246682483915

`A127979(n+2)+A073371(n)-A127984(n+2)`
-/

namespace A095977.P18129212246682483915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127979 (n + 2) + (A073371 n - A127984 (n + 2))

end

end A095977.P18129212246682483915

namespace A095977

/-- `A127979(n+2)+A073371(n)-A127984(n+2)` -/
def P18129212246682483915.Spec : Prop :=
  ∀ n, P18129212246682483915.a n = A095977 (n + 1)

end A095977

/-! ## A095977.P16543426488035678874

`A127976(n+1)+A102713(n+2)-A127976(n+2)`
-/

namespace A095977.P16543426488035678874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127976 (n + 1) + (A102713 (n + 2) - A127976 (n + 2))

end

end A095977.P16543426488035678874

namespace A095977

/-- `A127976(n+1)+A102713(n+2)-A127976(n+2)` -/
def P16543426488035678874.Spec : Prop :=
  ∀ n, P16543426488035678874.a n = A095977 (n + 1)

end A095977

/-!
# A095979: Height of n-th rational point on y^2=x^3 + 17.

The programs for A095979, there is no canonical definition to state claims against.
-/

/-! ## A095979.P6070721424328607785

`A167008(a(n-1))` with `a(0)=2, a(1)=1, a(2)=4, a(3)=2`
-/

namespace A095979.P6070721424328607785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 1, 4, 2] fun n a =>
  A167008 (a (n - 1)).toNat

end

end A095979.P6070721424328607785

/-! ## A095979.P2642061843809192663

`A318695(a(n-1))` with `a(0)=2, a(1)=1, a(2)=4, a(3)=2`
-/

namespace A095979.P2642061843809192663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 1, 4, 2] fun n a =>
  A318695 (a (n - 1)).toNat

end

end A095979.P2642061843809192663

/-!
# A095980: Number of UFU-free Motzkin paths of length n.

The programs for A095980, there is no canonical definition to state claims against.
-/

/-! ## A095980.P8475533669808685432

`A067168(A265581(n))+A058386(n+2)`
-/

namespace A095980.P8475533669808685432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067168 ((A265581 n).toNat + 10) + A058386 (n + 2)

end

end A095980.P8475533669808685432

/-! ## A095980.P10531169992483301233

`or(A058386(n+2), A067168(A035082(n)))`
-/

namespace A095980.P10531169992483301233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A058386 (n + 2)) (A067168 ((A035082 n).toNat + 10))

end

end A095980.P10531169992483301233

/-! ## A095980.P4331086352961546267

`xor(A082858(A147022(n+1)), A091500(n))`
-/

namespace A095980.P4331086352961546267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A082858 (A147022 (n + 1)).toNat) (A091500 n)

end

end A095980.P4331086352961546267

/-! ## A095980.P15029442374141950391

`A095773(A078483(n))`
-/

namespace A095980.P15029442374141950391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095773 (A078483 n).toNat

end

end A095980.P15029442374141950391

/-! ## A095980.P15154172197386907091

`A141204(A114584(n))`
-/

namespace A095980.P15154172197386907091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141204 (A114584 n).toNat

end

end A095980.P15154172197386907091

/-!
# A095981: Number of plateau-free Motzkin paths of length n.

The programs for A095981, there is no canonical definition to state claims against.
-/

/-! ## A095981.P14599036157857183350

`A001462(A202059(n))-1`
-/

namespace A095981.P14599036157857183350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001462 (A202059 n).toNat - 1

end

end A095981.P14599036157857183350

/-! ## A095981.P11283940339249217353

`floor(A019249(3*n+7)/A019299(3*n+4))`
-/

namespace A095981.P11283940339249217353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A019249 (3 * n + 7) : ℚ) / (A019299 (3 * n + 4) : ℚ)⌋

end

end A095981.P11283940339249217353

/-! ## A095981.P12627021125068299823

`A262689(A276057(n)+A047755(n))`
-/

namespace A095981.P12627021125068299823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262689 (A276057 n + A047755 n).toNat

end

end A095981.P12627021125068299823

/-! ## A095981.P17107345495521544670

`A339087(A353850(n))+A337481(n)`
-/

namespace A095981.P17107345495521544670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339087 (A353850 n).toNat + A337481 n

end

end A095981.P17107345495521544670

/-! ## A095981.P11013183555195437384

`A141204(A114584(n))-abs(A166587(n))`
-/

namespace A095981.P11013183555195437384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141204 (A114584 n).toNat - |A166587 n|

end

end A095981.P11013183555195437384

/-!
# A095982: a(n) = a(n-1) + a(n-2) + a(n-4) with a(0) = 2, a(1) = 3, a(2) = 6, a(3) = 9.

The programs for A095982, the canonical program `A095982.P14027984297251162201` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A095982 has offset 0).

The definition of A095982 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-1)+a(n-2)+a(n-4)` (program `A095982.P14027984297251162201`, by `A095982.P14027984297251162201.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A095982.P1426625648371831593

`ogf((2+x+x^2)/(1-x-x^2-x^4))`
-/

namespace A095982.P1426625648371831593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [2, 1, 1] [1, -1, -1, 0, -1] n

end

end A095982.P1426625648371831593

namespace A095982

/-- `ogf((2+x+x^2)/(1-x-x^2-x^4))` -/
def P1426625648371831593.Spec : Prop :=
  ∀ n, P1426625648371831593.a n = A095982 n

end A095982

/-! ## A095982.P14027984297251162201

`a(n-1)+a(n-2)+a(n-4)` with `a(0)=2, a(1)=3, a(2)=6, a(3)=9`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A095982

/-- `a(n-1)+a(n-2)+a(n-4)` -/
def P14027984297251162201.Spec : Prop :=
  ∀ n, (P14027984297251162201.a n : ℤ) = A095982 n

theorem P14027984297251162201.correct : P14027984297251162201.Spec := by
  intro n
  simp only [A095982]

end A095982

/-! ## A095982.P9465405177241175462

`A347493(n)+∑[A049853(n)]`
-/

namespace A095982.P9465405177241175462
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049853 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347493 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A095982.P9465405177241175462

namespace A095982

/-- `A347493(n)+∑[A049853(n)]` -/
def P9465405177241175462.Spec : Prop :=
  ∀ n, P9465405177241175462.a n = A095982 n

end A095982

/-! ## A095982.P16419554965274788308

`A005314(n)+2*A060945(n)`
-/

namespace A095982.P16419554965274788308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005314 n + 2 * A060945 n

end

end A095982.P16419554965274788308

namespace A095982

/-- `A005314(n)+2*A060945(n)` -/
def P16419554965274788308.Spec : Prop :=
  ∀ n, P16419554965274788308.a n = A095982 n

end A095982

/-! ## A095982.P5160369151397950521

`∑[A005251(n)]+2*A060945(n)`
-/

namespace A095982.P5160369151397950521
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005251 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 2 * A060945 n

end

end A095982.P5160369151397950521

namespace A095982

/-- `∑[A005251(n)]+2*A060945(n)` -/
def P5160369151397950521.Spec : Prop :=
  ∀ n, P5160369151397950521.a n = A095982 n

end A095982

/-! ## A095982.P11902272602351294513

`∑[A005251(n)+2*A347493(n)]`
-/

namespace A095982.P11902272602351294513
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005251 n + 2 * A347493 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A095982.P11902272602351294513

namespace A095982

/-- `∑[A005251(n)+2*A347493(n)]` -/
def P11902272602351294513.Spec : Prop :=
  ∀ n, P11902272602351294513.a n = A095982 n

end A095982

/-! ## A095982.P6924930249605691856

`A347493(n+2)+A005314(n+1)`
-/

namespace A095982.P6924930249605691856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347493 (n + 2) + A005314 (n + 1)

end

end A095982.P6924930249605691856

namespace A095982

/-- `A347493(n+2)+A005314(n+1)` -/
def P6924930249605691856.Spec : Prop :=
  ∀ n, P6924930249605691856.a n = A095982 n

end A095982

/-! ## A095982.P13759048566958258623

`∑[3*A060945(n)-A060945(n+1)]`
-/

namespace A095982.P13759048566958258623
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A060945 n - A060945 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A095982.P13759048566958258623

namespace A095982

/-- `∑[3*A060945(n)-A060945(n+1)]` -/
def P13759048566958258623.Spec : Prop :=
  ∀ n, P13759048566958258623.a n = A095982 n

end A095982

/-! ## A095982.P12595464235850228446

`A084338(2*n+1)+A017818(2*n)`
-/

namespace A095982.P12595464235850228446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084338 (2 * n + 1) + A017818 (2 * n)

end

end A095982.P12595464235850228446

namespace A095982

/-- `A084338(2*n+1)+A017818(2*n)` -/
def P12595464235850228446.Spec : Prop :=
  ∀ n, P12595464235850228446.a n = A095982 n

end A095982

/-! ## A095982.P17409558198928502286

`A347493(n)+∑[A005251(n+1)+A005251(n)]`
-/

namespace A095982.P17409558198928502286
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005251 (n + 1) + A005251 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347493 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A095982.P17409558198928502286

namespace A095982

/-- `A347493(n)+∑[A005251(n+1)+A005251(n)]` -/
def P17409558198928502286.Spec : Prop :=
  ∀ n, P17409558198928502286.a n = A095982 n

end A095982

/-! ## A095982.P2714109947725763430

`A181532(n+1)+A181532(n+1)+A005314(n)`
-/

namespace A095982.P2714109947725763430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181532 (n + 1) + (A181532 (n + 1) + A005314 n)

end

end A095982.P2714109947725763430

namespace A095982

/-- `A181532(n+1)+A181532(n+1)+A005314(n)` -/
def P2714109947725763430.Spec : Prop :=
  ∀ n, P2714109947725763430.a n = A095982 n

end A095982

/-! ## A095982.P17090788639099252332

`A001608(2*n+1)+A017818(2*n)+A000931(2*n)`
-/

namespace A095982.P17090788639099252332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001608 (2 * n + 1) + (A017818 (2 * n) + A000931 (2 * n))

end

end A095982.P17090788639099252332

namespace A095982

/-- `A001608(2*n+1)+A017818(2*n)+A000931(2*n)` -/
def P17090788639099252332.Spec : Prop :=
  ∀ n, P17090788639099252332.a n = A095982 n

end A095982

/-!
# A095983: Number of 2-edge-connected labeled graphs on n nodes.

The programs for A095983, there is no canonical definition to state claims against.
-/

/-! ## A095983.P4308418978450178151

`A327072(∑[n])%A001187(n)`
-/

namespace A095983.P4308418978450178151
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A327072 (∑ j ∈ Finset.range (n + 1), f1 j)) (A001187 n)

end

end A095983.P4308418978450178151

/-! ## A095983.P8737411210415498830

`A327072(A000217(n))-char[1-n²]`
-/

namespace A095983.P8737411210415498830
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (n ^ 2 : ℤ)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327072 (A000217 n).toNat - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A095983.P8737411210415498830

/-! ## A095983.P4628740613552177669

`A327072(A000217(n))%A006125(n)`
-/

namespace A095983.P4628740613552177669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A327072 (A000217 n).toNat) (A006125 n)

end

end A095983.P4628740613552177669

/-! ## A095983.P12336243732771244887

`A327072(A179865(n+1))%A327078(n)`
-/

namespace A095983.P12336243732771244887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A327072 (A179865 (n + 1)).toNat) (A327078 n)

end

end A095983.P12336243732771244887

/-! ## A095983.P12134777340828007082

`(A001187(n)-A327071(n))%A001187(n)`
-/

namespace A095983.P12134777340828007082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001187 n - A327071 n) (A001187 n)

end

end A095983.P12134777340828007082

/-!
# A095985: Numbers k such that k * (largest digit of k) is a triangular number.

The programs for A095985, there is no canonical definition to state claims against.
-/

/-! ## A095985.P18289412750607664251

`eq[1, A059268(n*A054055(n))]`
-/

namespace A095985.P18289412750607664251
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059268 ((n : ℤ) * A054055 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A095985.P18289412750607664251

/-! ## A095985.P9885721613221219199

`eq[1, A002260(n*A054055(n)+1)]`
-/

namespace A095985.P9885721613221219199
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 ((n : ℤ) * A054055 n + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A095985.P9885721613221219199

/-! ## A095985.P1582171294323871495

`eq[2, A035214(n*A054055(n))]`
-/

namespace A095985.P1582171294323871495
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035214 ((n : ℤ) * A054055 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A095985.P1582171294323871495

/-!
# A095986: A card-arranging problem: number of permutations p_1, ..., p_n of 1, ..., n such that i + p_i is a square for every i.

The programs for A095986, there is no canonical definition to state claims against.
-/

/-! ## A095986.P8038074678173378289

`A351977(n)^A331569(A000009(n))`
-/

namespace A095986.P8038074678173378289
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A351977 n : ℚ) ^ (A331569 (A000009 n).toNat : ℤ)

end

end A095986.P8038074678173378289

/-! ## A095986.P12691887646444612108

`A281082(record[A293463(n)])`
-/

namespace A095986.P12691887646444612108
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293463 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281082 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A095986.P12691887646444612108

/-! ## A095986.P13047310981526811126

`A309061(A031223(n+2))`
-/

namespace A095986.P13047310981526811126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309061 (A031223 (n + 2)).toNat

end

end A095986.P13047310981526811126

/-! ## A095986.P5430450732887420954

`A344739(eq[1, A361025(n+3)])`
-/

namespace A095986.P5430450732887420954
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361025 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344739 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A095986.P5430450732887420954

/-! ## A095986.P6710244296244665972

`A152905(n)-A095076(floor(2^(n-1)))`
-/

namespace A095986.P6710244296244665972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152905 n - A095076 ⌊(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌋.toNat

end

end A095986.P6710244296244665972

/-!
# A095987: a(n) = gcd(n!!, (n-1)!!) where n!! = A006882.

The programs for A095987, the canonical program `A095987.P7585680597754048457` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A095987 has offset 0).

The definition of A095987 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 166 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A095987.P7585680597754048457

`floor(n/and(n, 1-n))*a(n-2)` with `a(0)=1, a(1)=1`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A095987

/-- `floor(n/and(n, 1-n))*a(n-2)` -/
def P7585680597754048457.Spec : Prop :=
  ∀ n, P7585680597754048457.a n = A095987 n

theorem P7585680597754048457.correct : P7585680597754048457.Spec := by
  intro n
  simp only [A095987]

end A095987

/-! ## A095987.P14000187370577586808

`A049606(floor(n/2))`
-/

namespace A095987.P14000187370577586808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049606 ⌊(n : ℚ) / 2⌋.toNat

end

end A095987.P14000187370577586808

namespace A095987

/-- `A049606(floor(n/2))` -/
def P14000187370577586808.Spec : Prop :=
  ∀ n, P14000187370577586808.a n = A095987 n

end A095987

/-! ## A095987.P9415401716317483748

`∏[gcd(n, A004731(n))]`
-/

namespace A095987.P9415401716317483748
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n : ℤ) (A004731 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A095987.P9415401716317483748

namespace A095987

/-- `∏[gcd(n, A004731(n))]` -/
def P9415401716317483748.Spec : Prop :=
  ∀ n, (P9415401716317483748.a n : ℤ) = A095987 n

end A095987

/-! ## A095987.P16197405545229849384

`∏[A086767(abs(1-n))]`
-/

namespace A095987.P16197405545229849384
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086767 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A095987.P16197405545229849384

namespace A095987

/-- `∏[A086767(abs(1-n))]` -/
def P16197405545229849384.Spec : Prop :=
  ∀ n, P16197405545229849384.a n = A095987 n

end A095987

/-! ## A095987.P11097789734779711220

`gcd(Δ[A123022(n)], A081123(n))`
-/

namespace A095987.P11097789734779711220
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123022 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (f1 (n + 1) - f1 n) (A081123 n)

end

end A095987.P11097789734779711220

namespace A095987

/-- `gcd(Δ[A123022(n)], A081123(n))` -/
def P11097789734779711220.Spec : Prop :=
  ∀ n, (P11097789734779711220.a n : ℤ) = A095987 n

end A095987

/-! ## A095987.P4850359436868189113

`A037223(n)/A060818(n)`
-/

namespace A095987.P4850359436868189113
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A037223 n : ℚ) / (A060818 n : ℚ)

end

end A095987.P4850359436868189113

namespace A095987

/-- `A037223(n)/A060818(n)` -/
def P4850359436868189113.Spec : Prop :=
  ∀ n, P4850359436868189113.a n = (A095987 n : ℚ)

end A095987

/-! ## A095987.P3985458758349378090

`gcd(A081123(n), A133221(n))`
-/

namespace A095987.P3985458758349378090
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A081123 n) (A133221 n)

end

end A095987.P3985458758349378090

namespace A095987

/-- `gcd(A081123(n), A133221(n))` -/
def P3985458758349378090.Spec : Prop :=
  ∀ n, (P3985458758349378090.a n : ℤ) = A095987 n

end A095987

/-! ## A095987.P5221162389565504989

`A006882(n)/A380909(n)`
-/

namespace A095987.P5221162389565504989
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A006882 n : ℚ) / (A380909 n : ℚ)

end

end A095987.P5221162389565504989

namespace A095987

/-- `A006882(n)/A380909(n)` -/
def P5221162389565504989.Spec : Prop :=
  ∀ n, P5221162389565504989.a n = (A095987 n : ℚ)

end A095987

/-! ## A095987.P12616987394864366285

`gcd(A037223(n), A055634(n))`
-/

namespace A095987.P12616987394864366285
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A037223 n) (A055634 n)

end

end A095987.P12616987394864366285

namespace A095987

/-- `gcd(A037223(n), A055634(n))` -/
def P12616987394864366285.Spec : Prop :=
  ∀ n, (P12616987394864366285.a n : ℤ) = A095987 n

end A095987

/-! ## A095987.P8403618762331886378

`A006882(n)/A004731(n+1)`
-/

namespace A095987.P8403618762331886378
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A006882 n : ℚ) / (A004731 (n + 1) : ℚ)

end

end A095987.P8403618762331886378

namespace A095987

/-- `A006882(n)/A004731(n+1)` -/
def P8403618762331886378.Spec : Prop :=
  ∀ n, P8403618762331886378.a n = (A095987 n : ℚ)

end A095987

/-! ## A095987.P17945083015462945624

`A006882(n)/(A004730(n)*A086767(n))`
-/

namespace A095987.P17945083015462945624
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A006882 n : ℚ) / (A004730 n * A086767 n : ℚ)

end

end A095987.P17945083015462945624

namespace A095987

/-- `A006882(n)/(A004730(n)*A086767(n))` -/
def P17945083015462945624.Spec : Prop :=
  ∀ n, P17945083015462945624.a n = (A095987 n : ℚ)

end A095987

/-! ## A095987.P10729218847931081469

`A004730(n)/A380949(n+1)*A006882(n)`
-/

namespace A095987.P10729218847931081469
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A004730 n : ℚ) / (A380949 (n + 1) : ℚ) * (A006882 n : ℚ)

end

end A095987.P10729218847931081469

namespace A095987

/-- `A004730(n)/A380949(n+1)*A006882(n)` -/
def P10729218847931081469.Spec : Prop :=
  ∀ n, P10729218847931081469.a n = (A095987 n : ℚ)

end A095987

/-! ## A095987.P7744608043150520419

`A006882(n)/(A086767(n)*A380910(n+1))`
-/

namespace A095987.P7744608043150520419
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A006882 n : ℚ) / (A086767 n * A380910 (n + 1) : ℚ)

end

end A095987.P7744608043150520419

namespace A095987

/-- `A006882(n)/(A086767(n)*A380910(n+1))` -/
def P7744608043150520419.Spec : Prop :=
  ∀ n, P7744608043150520419.a n = (A095987 n : ℚ)

end A095987

/-! ## A095987.P15550916545833398642

`A380910(n+1)/A380949(n+1)*A006882(n)`
-/

namespace A095987.P15550916545833398642
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A380910 (n + 1) : ℚ) / (A380949 (n + 1) : ℚ) * (A006882 n : ℚ)

end

end A095987.P15550916545833398642

namespace A095987

/-- `A380910(n+1)/A380949(n+1)*A006882(n)` -/
def P15550916545833398642.Spec : Prop :=
  ∀ n, P15550916545833398642.a n = (A095987 n : ℚ)

end A095987

/-! ## A095987.P15614111105071716816

`gcd(A076051(n+1), A094941(n))`
-/

namespace A095987.P15614111105071716816
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A076051 (n + 1)) (A094941 n)

end

end A095987.P15614111105071716816

namespace A095987

/-- `gcd(A076051(n+1), A094941(n))` -/
def P15614111105071716816.Spec : Prop :=
  ∀ n, (P15614111105071716816.a n : ℤ) = A095987 n

end A095987

/-!
# A095988: Number of Gray codes for partitions of n.

The programs for A095988, there is no canonical definition to state claims against.
-/

/-! ## A095988.P8980818404945189746

`A126760(A326616(∑[n]))`
-/

namespace A095988.P8980818404945189746
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126760 (A326616 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A095988.P8980818404945189746

/-!
# A095989: INVERTi transform applied to the ordered Bell numbers.

The programs for A095989, there is no canonical definition to state claims against.
-/

/-! ## A095989.P10440717853019460631

`A163204(∑[n+1])`
-/

namespace A095989.P10440717853019460631
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163204 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A095989.P10440717853019460631

/-! ## A095989.P10900570175099442828

`∏[record[ratio[A163204(n+1)]]]`
-/

namespace A095989.P10900570175099442828
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163204 (n + 1)

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f3 (n + 1) : ℚ) / (f3 n : ℚ)

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A095989.P10900570175099442828

/-! ## A095989.P12342015387308475530

`record[A163204(A038722(n+1))]`
-/

namespace A095989.P12342015387308475530
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163204 (A038722 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A095989.P12342015387308475530

/-! ## A095989.P17797112173586953915

`record[A163204(A276956(n+1))]`
-/

namespace A095989.P17797112173586953915
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163204 (A276956 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A095989.P17797112173586953915

/-! ## A095989.P5617972616377771029

`record[A163204(n+1)/A135278(n)]`
-/

namespace A095989.P5617972616377771029
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A163204 (n + 1) : ℚ) / (A135278 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A095989.P5617972616377771029

/-!
# A095990: Numbers with ordered prime signature (1,2).

The programs for A095990, there is no canonical definition to state claims against.
-/

/-! ## A095990.P1448305042335257655

`∩[A102835(n+1), A102836(n+1)]`
-/

namespace A095990.P1448305042335257655
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102835 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102836 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A095990.P1448305042335257655

/-! ## A095990.P2431211523984477251

`∩[A102835(n+1), A166402(n+1)]`
-/

namespace A095990.P2431211523984477251
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102835 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166402 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A095990.P2431211523984477251

/-! ## A095990.P13208931453287259530

`∩[A102835(n+1), A166403(n+1)]`
-/

namespace A095990.P13208931453287259530
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102835 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166403 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A095990.P13208931453287259530

/-! ## A095990.P10002903087826304083

`∩[A102835(n+1), A187101(n+1)]`
-/

namespace A095990.P10002903087826304083
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102835 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187101 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A095990.P10002903087826304083

/-! ## A095990.P2685777070834826866

`∩[A102835(n+1), A390096(n+1)]`
-/

namespace A095990.P2685777070834826866
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102835 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390096 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A095990.P2685777070834826866

/-! ## A095990.P2882818851998778225

`∩[A166402(n+1), A390096(n+1)]`
-/

namespace A095990.P2882818851998778225
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166402 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390096 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A095990.P2882818851998778225

/-! ## A095990.P8818407911542807373

`∩[A166403(n+1), A390096(n+1)]`
-/

namespace A095990.P8818407911542807373
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166403 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390096 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A095990.P8818407911542807373

/-! ## A095990.P9916821170197220632

`∩[A187101(n+1), A390096(n+1)]`
-/

namespace A095990.P9916821170197220632
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187101 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390096 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A095990.P9916821170197220632

/-! ## A095990.P13470876401443949952

`∩[A102835(n+1), A229027(n+1)]`
-/

namespace A095990.P13470876401443949952
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102835 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229027 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A095990.P13470876401443949952

/-! ## A095990.P3875890189370461481

`∩[A166403(n+1), A229027(n+1)]`
-/

namespace A095990.P3875890189370461481
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166403 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229027 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A095990.P3875890189370461481

/-! ## A095990.P9216936643602614051

`∩[A187101(n+1), A229027(n+1)]`
-/

namespace A095990.P9216936643602614051
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187101 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229027 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A095990.P9216936643602614051

/-! ## A095990.P17655147848885991939

`∩[A102835(n+1), A379033(n+1)]`
-/

namespace A095990.P17655147848885991939
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102835 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379033 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A095990.P17655147848885991939

/-! ## A095990.P15790311789594127458

`∩[A166403(n+1), A379033(n+1)]`
-/

namespace A095990.P15790311789594127458
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166403 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379033 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A095990.P15790311789594127458

/-! ## A095990.P8948262074485390971

`∩[A379033(n+1), A390096(n+1)]`
-/

namespace A095990.P8948262074485390971
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379033 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390096 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A095990.P8948262074485390971

/-! ## A095990.P11484928586195688612

`∩[A102835(n+1), A368780(n+1)]`
-/

namespace A095990.P11484928586195688612
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102835 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368780 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A095990.P11484928586195688612

/-! ## A095990.P8267622547310049213

`∩[A368780(n+1), A379033(n+1)]`
-/

namespace A095990.P8267622547310049213
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368780 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379033 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A095990.P8267622547310049213

/-! ## A095990.P8860394105294578708

`∩[A102646(n+1), A102835(n+1)]`
-/

namespace A095990.P8860394105294578708
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102646 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102835 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A095990.P8860394105294578708

/-! ## A095990.P10843327393743912005

`∩[A102646(n+1), A379033(n+1)]`
-/

namespace A095990.P10843327393743912005
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102646 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379033 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A095990.P10843327393743912005

/-! ## A095990.P3095032956111202644

`∩[A379033(n+1), A389145(n+1)]`
-/

namespace A095990.P3095032956111202644
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379033 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389145 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A095990.P3095032956111202644

/-! ## A095990.P16497806336482316580

`∩[A102835(n+1), A195212(n+1)]`
-/

namespace A095990.P16497806336482316580
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102835 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195212 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A095990.P16497806336482316580

/-!
# A095991: Numbers m such that f(k) * 2^m - 1 is prime, where f(j) = A070826(j) and k is the number of decimal digits of 2^m.

The programs for A095991, there is no canonical definition to state claims against.
-/

/-! ## A095991.P12848008957475695651

`eq[A281854(2*(n+2)), A281855(2*n+1)]+2`
-/

namespace A095991.P12848008957475695651
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281854 (2 * (n + 2))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281855 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 2

end

end A095991.P12848008957475695651

/-!
# A095992: a(1) = 30; for n > 1, a(n+1) = a(n) + {product of nonzero digits of a(n)}.

The programs for A095992, there is no canonical definition to state claims against.
-/

/-! ## A095992.P14147348043597470169

`A063114(a(n-1))` with `a(0)=30`
-/

namespace A095992.P14147348043597470169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [30] fun n a =>
  A063114 (a (n - 1)).toNat

end

end A095992.P14147348043597470169

/-! ## A095992.P394484201530680507

`A051801(a(n-1))+a(n-1)` with `a(0)=30`
-/

namespace A095992.P394484201530680507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [30] fun n a =>
  A051801 (a (n - 1)).toNat + a (n - 1)

end

end A095992.P394484201530680507

/-! ## A095992.P11921539144657459518

`A007954(A004719(a(n-1)))+a(n-1)` with `a(0)=30`
-/

namespace A095992.P11921539144657459518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [30] fun n a =>
  A007954 (A004719 (a (n - 1)).toNat).toNat + a (n - 1)

end

end A095992.P11921539144657459518

/-!
# A095993: Inverse Euler transform of the ordered Bell numbers A000670.

The programs for A095993, there is no canonical definition to state claims against.
-/

/-! ## A095993.P7684223944192172552

`or(A056172(A121677(n)), A121677(n))`
-/

namespace A095993.P7684223944192172552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A056172 (A121677 n).toNat) (A121677 n)

end

end A095993.P7684223944192172552

/-! ## A095993.P9386577214761581201

`A100196(A331690(n))`
-/

namespace A095993.P9386577214761581201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100196 (A331690 n).toNat

end

end A095993.P9386577214761581201

/-!
# A095994: Numbers k such that k - (largest digit of k) is prime.

The programs for A095994, the canonical program `A095994.P6399885986967306928` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A095994 has offset 1).

The definition of A095994 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 880 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A095994.P6399885986967306928

`eq[1, A003415(n-A054055(n))]`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A095994

/-- `eq[1, A003415(n-A054055(n))]` -/
def P6399885986967306928.Spec : Prop :=
  ∀ n, (P6399885986967306928.a n : ℤ) = A095994 (n + 1)

theorem P6399885986967306928.correct : P6399885986967306928.Spec := by
  intro n
  simp only [A095994, Nat.add_sub_cancel]

end A095994

/-! ## A095994.P14339646429966170462

`eq[1, A018783(n-A054055(n))]`
-/

namespace A095994.P14339646429966170462
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018783 ((n : ℤ) - A054055 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A095994.P14339646429966170462

namespace A095994

/-- `eq[1, A018783(n-A054055(n))]` -/
def P14339646429966170462.Spec : Prop :=
  ∀ n, (P14339646429966170462.a n : ℤ) = A095994 (n + 1)

end A095994

/-! ## A095994.P1559811701356490167

`eq[1, A032741(n-A054055(n))]`
-/

namespace A095994.P1559811701356490167
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 ((n : ℤ) - A054055 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A095994.P1559811701356490167

namespace A095994

/-- `eq[1, A032741(n-A054055(n))]` -/
def P1559811701356490167.Spec : Prop :=
  ∀ n, (P1559811701356490167.a n : ℤ) = A095994 (n + 1)

end A095994

/-! ## A095994.P4013903102518158810

`eq[1, A078898(n-A054055(n))]`
-/

namespace A095994.P4013903102518158810
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078898 ((n : ℤ) - A054055 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A095994.P4013903102518158810

namespace A095994

/-- `eq[1, A078898(n-A054055(n))]` -/
def P4013903102518158810.Spec : Prop :=
  ∀ n, (P4013903102518158810.a n : ℤ) = A095994 (n + 1)

end A095994

/-! ## A095994.P16250163356646714897

`eq[1, A074206(n-val(A069877(n), 2))]`
-/

namespace A095994.P16250163356646714897
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074206 (n - SequenceMachineLib.valuation (A069877 n).toNat 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A095994.P16250163356646714897

namespace A095994

/-- `eq[1, A074206(n-val(A069877(n), 2))]` -/
def P16250163356646714897.Spec : Prop :=
  ∀ n, (P16250163356646714897.a n : ℤ) = A095994 (n + 1)

end A095994

/-!
# A095995: Primes of the form 100n - 1.

The programs for A095995, the canonical program `A095995.P3218875470991724980` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A095995 has offset 1).

The definition of A095995 is `verified`: an anchor theorem with a hand-written proof shows that the Lean definition equals an independent definition of the sequence: the theorem `A095995.anchor (n : ℕ) (hn : 1 ≤ n) : A095995 n = (Nat.nth (fun p => p.Prime ∧ p % 100 = 99) (n - 1) : ℤ)` in `Proof.A095.A095995`. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A095995.P733241783455969625

`∩[A030433(n+1), A383978(n+1)]`
-/

namespace A095995.P733241783455969625
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030433 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383978 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A095995.P733241783455969625

namespace A095995

/-- `∩[A030433(n+1), A383978(n+1)]` -/
def P733241783455969625.Spec : Prop :=
  ∀ n, (P733241783455969625.a n : ℤ) = A095995 (n + 1)

end A095995

/-! ## A095995.P6556250620826790138

`∩[A141946(n+1), A383978(n+1)]`
-/

namespace A095995.P6556250620826790138
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141946 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383978 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A095995.P6556250620826790138

namespace A095995

/-- `∩[A141946(n+1), A383978(n+1)]` -/
def P6556250620826790138.Spec : Prop :=
  ∀ n, (P6556250620826790138.a n : ℤ) = A095995 (n + 1)

end A095995

/-! ## A095995.P5737442392808339792

`∩[A141887(n+1), A141946(n+1)]`
-/

namespace A095995.P5737442392808339792
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141887 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141946 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A095995.P5737442392808339792

namespace A095995

/-- `∩[A141887(n+1), A141946(n+1)]` -/
def P5737442392808339792.Spec : Prop :=
  ∀ n, (P5737442392808339792.a n : ℤ) = A095995 (n + 1)

end A095995

/-! ## A095995.P8525194107696238027

`∩[A141887(n+1), A383978(n+1)]`
-/

namespace A095995.P8525194107696238027
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141887 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383978 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A095995.P8525194107696238027

namespace A095995

/-- `∩[A141887(n+1), A383978(n+1)]` -/
def P8525194107696238027.Spec : Prop :=
  ∀ n, (P8525194107696238027.a n : ℤ) = A095995 (n + 1)

end A095995

/-! ## A095995.P3218875470991724980

`p?[10*10*n-1]`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A095995

/-- `p?[10*10*n-1]` -/
def P3218875470991724980.Spec : Prop :=
  ∀ n, P3218875470991724980.a n = A095995 (n + 1)

theorem P3218875470991724980.correct : P3218875470991724980.Spec := by
  intro n
  simp only [A095995, Nat.add_sub_cancel]

end A095995

/-! ## A095995.P17139603512329265523

`or(1, p?[10*10*n+99])`
-/

namespace A095995.P17139603512329265523
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10 * (10 * n) + 99

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A095995.P17139603512329265523

namespace A095995

/-- `or(1, p?[10*10*n+99])` -/
def P17139603512329265523.Spec : Prop :=
  ∀ n, (P17139603512329265523.a n : ℤ) = A095995 (n + 1)

end A095995

/-! ## A095995.P11705135347114354186

`∩[A141887(n+1), A172469(n+1)]`
-/

namespace A095995.P11705135347114354186
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141887 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172469 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A095995.P11705135347114354186

namespace A095995

/-- `∩[A141887(n+1), A172469(n+1)]` -/
def P11705135347114354186.Spec : Prop :=
  ∀ n, (P11705135347114354186.a n : ℤ) = A095995 (n + 1)

end A095995

/-! ## A095995.P4527373353080737910

`∩[A172469(n+1), A383978(n+1)]`
-/

namespace A095995.P4527373353080737910
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172469 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383978 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A095995.P4527373353080737910

namespace A095995

/-- `∩[A172469(n+1), A383978(n+1)]` -/
def P4527373353080737910.Spec : Prop :=
  ∀ n, (P4527373353080737910.a n : ℤ) = A095995 (n + 1)

end A095995

/-! ## A095995.P2974880562981863864

`∩[A158128(n+1)-2, A172469(n+1)]`
-/

namespace A095995.P2974880562981863864
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158128 (n + 1) - 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172469 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A095995.P2974880562981863864

namespace A095995

/-- `∩[A158128(n+1)-2, A172469(n+1)]` -/
def P2974880562981863864.Spec : Prop :=
  ∀ n, (P2974880562981863864.a n : ℤ) = A095995 (n + 1)

end A095995

/-! ## A095995.P11190969734468800379

`∩[A045457(n+1), A383978(n+1)]`
-/

namespace A095995.P11190969734468800379
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045457 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383978 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A095995.P11190969734468800379

namespace A095995

/-- `∩[A045457(n+1), A383978(n+1)]` -/
def P11190969734468800379.Spec : Prop :=
  ∀ n, (P11190969734468800379.a n : ℤ) = A095995 (n + 1)

end A095995

/-! ## A095995.P11517290027076865405

`∩[A122869(n+1), A141946(n+1)]`
-/

namespace A095995.P11517290027076865405
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122869 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141946 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A095995.P11517290027076865405

namespace A095995

/-- `∩[A122869(n+1), A141946(n+1)]` -/
def P11517290027076865405.Spec : Prop :=
  ∀ n, (P11517290027076865405.a n : ℤ) = A095995 (n + 1)

end A095995

/-! ## A095995.P2967158032814511839

`∩[A327753(n+1), A383978(n+1)]`
-/

namespace A095995.P2967158032814511839
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327753 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383978 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A095995.P2967158032814511839

namespace A095995

/-- `∩[A327753(n+1), A383978(n+1)]` -/
def P2967158032814511839.Spec : Prop :=
  ∀ n, (P2967158032814511839.a n : ℤ) = A095995 (n + 1)

end A095995

/-! ## A095995.P12469658598544180635

`∩[A004618(n+1), A383978(n+1)]`
-/

namespace A095995.P12469658598544180635
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004618 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383978 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A095995.P12469658598544180635

namespace A095995

/-- `∩[A004618(n+1), A383978(n+1)]` -/
def P12469658598544180635.Spec : Prop :=
  ∀ n, (P12469658598544180635.a n : ℤ) = A095995 (n + 1)

end A095995

/-! ## A095995.P7840665372434520333

`∩[A030433(n+1), A265424(n)]`
-/

namespace A095995.P7840665372434520333
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030433 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265424 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A095995.P7840665372434520333

namespace A095995

/-- `∩[A030433(n+1), A265424(n)]` -/
def P7840665372434520333.Spec : Prop :=
  ∀ n, (P7840665372434520333.a n : ℤ) = A095995 (n + 1)

end A095995

/-! ## A095995.P18120002561305411016

`∩[A040105(n+1), A265424(n)]`
-/

namespace A095995.P18120002561305411016
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040105 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265424 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A095995.P18120002561305411016

namespace A095995

/-- `∩[A040105(n+1), A265424(n)]` -/
def P18120002561305411016.Spec : Prop :=
  ∀ n, (P18120002561305411016.a n : ℤ) = A095995 (n + 1)

end A095995

/-! ## A095995.P13446927462020463713

`∩[A040147(n+1), A265424(n)]`
-/

namespace A095995.P13446927462020463713
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040147 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265424 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A095995.P13446927462020463713

namespace A095995

/-- `∩[A040147(n+1), A265424(n)]` -/
def P13446927462020463713.Spec : Prop :=
  ∀ n, (P13446927462020463713.a n : ℤ) = A095995 (n + 1)

end A095995

/-! ## A095995.P16685337177702937965

`∩[A045457(n+1), A265424(n)]`
-/

namespace A095995.P16685337177702937965
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045457 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265424 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A095995.P16685337177702937965

namespace A095995

/-- `∩[A045457(n+1), A265424(n)]` -/
def P16685337177702937965.Spec : Prop :=
  ∀ n, (P16685337177702937965.a n : ℤ) = A095995 (n + 1)

end A095995

/-! ## A095995.P11146499200234977780

`∩[A050758(n+1), A265424(n)]`
-/

namespace A095995.P11146499200234977780
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050758 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265424 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A095995.P11146499200234977780

namespace A095995

/-- `∩[A050758(n+1), A265424(n)]` -/
def P11146499200234977780.Spec : Prop :=
  ∀ n, (P11146499200234977780.a n : ℤ) = A095995 (n + 1)

end A095995

/-! ## A095995.P1104632164599746571

`∩[A053032(n+1), A265424(n)]`
-/

namespace A095995.P1104632164599746571
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053032 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265424 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A095995.P1104632164599746571

namespace A095995

/-- `∩[A053032(n+1), A265424(n)]` -/
def P1104632164599746571.Spec : Prop :=
  ∀ n, (P1104632164599746571.a n : ℤ) = A095995 (n + 1)

end A095995

/-! ## A095995.P1973710464288618116

`∩[A112860(n+1), A265424(n)]`
-/

namespace A095995.P1973710464288618116
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112860 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265424 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A095995.P1973710464288618116

namespace A095995

/-- `∩[A112860(n+1), A265424(n)]` -/
def P1973710464288618116.Spec : Prop :=
  ∀ n, (P1973710464288618116.a n : ℤ) = A095995 (n + 1)

end A095995

/-!
# A095996: a(n) = largest divisor of n! that is coprime to n.

The programs for A095996, the canonical program `A095996.P12633643353262663407` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A095996 has offset 1).

The definition of A095996 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A095996.P12633643353262663407

`n!/A062763(n+1)`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A095996

/-- `n!/A062763(n+1)` -/
def P12633643353262663407.Spec : Prop :=
  ∀ n, P12633643353262663407.a n = (A095996 (n + 1) : ℚ)

end A095996

/-! ## A095996.P9829359939522238537

`(n+1)!/A051696(n+1)`
-/

namespace A095996.P9829359939522238537
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (n + 1) : ℚ) / (A051696 (n + 1) : ℚ)

end

end A095996.P9829359939522238537

namespace A095996

/-- `(n+1)!/A051696(n+1)` -/
def P9829359939522238537.Spec : Prop :=
  ∀ n, P9829359939522238537.a n = (A095996 (n + 1) : ℚ)

end A095996

/-! ## A095996.P9076080154029136739

`∑{d}[(n+1)!, A000203((n+1)!/#)*A008683(#)*gcd(#, n+1)]`
-/

namespace A095996.P9076080154029136739
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000203 (SequenceMachineLib.roundAway ((Nat.factorial (n + 1) : ℚ) / (d : ℚ))).toNat * A008683 d * (Nat.gcd d (n + 1) : ℤ)

end

end A095996.P9076080154029136739

namespace A095996

/-- `∑{d}[(n+1)!, A000203((n+1)!/#)*A008683(#)*gcd(#, n+1)]` -/
def P9076080154029136739.Spec : Prop :=
  ∀ n, P9076080154029136739.a n = A095996 (n + 1)

end A095996

/-! ## A095996.P7422573630117462274

`n!/∏{p}[n+1, #^val((n-1)!, #)]`
-/

namespace A095996.P7422573630117462274
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), p ^ SequenceMachineLib.valuation (Nat.factorial ((n : ℤ) - 1).toNat) p : ℕ) : ℚ)

end

end A095996.P7422573630117462274

namespace A095996

/-- `n!/∏{p}[n+1, #^val((n-1)!, #)]` -/
def P7422573630117462274.Spec : Prop :=
  ∀ n, P7422573630117462274.a n = (A095996 (n + 1) : ℚ)

end A095996

/-! ## A095996.P2078734585237983226

`A036503(n+1)-char[1]`
-/

namespace A095996.P2078734585237983226
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036503 (n + 1) - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A095996.P2078734585237983226

namespace A095996

/-- `A036503(n+1)-char[1]` -/
def P2078734585237983226.Spec : Prop :=
  ∀ n, P2078734585237983226.a n = A095996 (n + 1)

end A095996

/-! ## A095996.P18344141930057599964

`A264235(n+1)/(n+2)`
-/

namespace A095996.P18344141930057599964
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A264235 (n + 1) : ℚ) / (n + 2 : ℚ)

end

end A095996.P18344141930057599964

namespace A095996

/-- `A264235(n+1)/(n+2)` -/
def P18344141930057599964.Spec : Prop :=
  ∀ n, P18344141930057599964.a n = (A095996 (n + 1) : ℚ)

end A095996

/-! ## A095996.P3802000703994811957

`A000142(n)/A062763(n+1)`
-/

namespace A095996.P3802000703994811957
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000142 n : ℚ) / (A062763 (n + 1) : ℚ)

end

end A095996.P3802000703994811957

namespace A095996

/-- `A000142(n)/A062763(n+1)` -/
def P3802000703994811957.Spec : Prop :=
  ∀ n, P3802000703994811957.a n = (A095996 (n + 1) : ℚ)

end A095996

/-! ## A095996.P9948844581897211495

`gcd(A000142(n), A036503(n+1))`
-/

namespace A095996.P9948844581897211495
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000142 n) (A036503 (n + 1))

end

end A095996.P9948844581897211495

namespace A095996

/-- `gcd(A000142(n), A036503(n+1))` -/
def P9948844581897211495.Spec : Prop :=
  ∀ n, (P9948844581897211495.a n : ℤ) = A095996 (n + 1)

end A095996

/-! ## A095996.P9211193215852738166

`A081123(2*n)/A062763(n+1)`
-/

namespace A095996.P9211193215852738166
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A081123 (2 * n) : ℚ) / (A062763 (n + 1) : ℚ)

end

end A095996.P9211193215852738166

namespace A095996

/-- `A081123(2*n)/A062763(n+1)` -/
def P9211193215852738166.Spec : Prop :=
  ∀ n, P9211193215852738166.a n = (A095996 (n + 1) : ℚ)

end A095996

/-! ## A095996.P16877148431313985361

`A036503(gcd(n+1, A348776(n+1)))`
-/

namespace A095996.P16877148431313985361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036503 (Int.gcd (n + 1 : ℤ) (A348776 (n + 1)))

end

end A095996.P16877148431313985361

namespace A095996

/-- `A036503(gcd(n+1, A348776(n+1)))` -/
def P16877148431313985361.Spec : Prop :=
  ∀ n, P16877148431313985361.a n = A095996 (n + 1)

end A095996

/-!
# A095997: Number of divisors of n! that are coprime to n.

The programs for A095997, there is no canonical definition to state claims against.
-/

/-! ## A095997.P6799343265447424019

`A027423(n)/A000005(A062763(n+1))`
-/

namespace A095997.P6799343265447424019
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A027423 n : ℚ) / (A000005 (A062763 (n + 1)).toNat : ℚ)

end

end A095997.P6799343265447424019

/-! ## A095997.P12017278407006470182

`(A153823(n)+1)/A000005(A062763(n+1))`
-/

namespace A095997.P12017278407006470182
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A153823 n + 1 : ℚ) / (A000005 (A062763 (n + 1)).toNat : ℚ)

end

end A095997.P12017278407006470182

/-! ## A095997.P8934302969615442318

`(A337257(n)+A336940(n))/A000005(A062763(n+1))`
-/

namespace A095997.P8934302969615442318
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A337257 n + A336940 n : ℚ) / (A000005 (A062763 (n + 1)).toNat : ℚ)

end

end A095997.P8934302969615442318

/-! ## A095997.P3703042581124041500

`(A153824(n)+1-A153825(n))/A000005(A062763(n+1))`
-/

namespace A095997.P3703042581124041500
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A153824 n + (1 - A153825 n) : ℚ) / (A000005 (A062763 (n + 1)).toNat : ℚ)

end

end A095997.P3703042581124041500

/-! ## A095997.P5707300906984020176

`gcd(A038024(n+1), A355303(A027423(n)))`
-/

namespace A095997.P5707300906984020176
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A038024 (n + 1)) (A355303 (A027423 n).toNat)

end

end A095997.P5707300906984020176

/-!
# A095998: n! * (fractional part of n-th harmonic number).

The programs for A095998, there is no canonical definition to state claims against.
-/

/-! ## A095998.P359914717748985030

`A056612(n+1)*A104174(n+1)`
-/

namespace A095998.P359914717748985030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056612 (n + 1) * A104174 (n + 1)

end

end A095998.P359914717748985030

/-! ## A095998.P3566956137528063615

`A001705(n)%(n+1)!`
-/

namespace A095998.P3566956137528063615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001705 n) (Nat.factorial (n + 1) : ℤ)

end

end A095998.P3566956137528063615

/-! ## A095998.P5815551018927120303

`Δ[A097422(n)]%∏[n+1]`
-/

namespace A095998.P5815551018927120303
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097422 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (n + 1) - f1 n) ((∏ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)

end

end A095998.P5815551018927120303

/-! ## A095998.P5727046284241194277

`A001705(n)%Δ[A007489(n)]`
-/

namespace A095998.P5727046284241194277
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007489 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001705 n) (f1 (n + 1) - f1 n)

end

end A095998.P5727046284241194277

/-! ## A095998.P12215098275444330755

`A000254(n+1)%record[A084938(n)]`
-/

namespace A095998.P12215098275444330755
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084938 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000254 (n + 1)) (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))

end

end A095998.P12215098275444330755

/-!
# A095999: Number of divisors of n that are < log(n).

The programs for A095999, the canonical program `A095999.P7492773986647818788` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A095999 has offset 1).

The definition of A095999 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A095999.P7492773986647818788

`∑{d}[n+1, floor(sqrt(sqrt(log(n+1)/#)))]`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A095999

/-- `∑{d}[n+1, floor(sqrt(sqrt(log(n+1)/#)))]` -/
def P7492773986647818788.Spec : Prop :=
  ∀ n, P7492773986647818788.a n = A095999 (n + 1)

theorem P7492773986647818788.correct : P7492773986647818788.Spec := by
  intro n
  simp only [A095999, Nat.add_sub_cancel]

end A095999

/-! ## A095999.P14270135605070762203

`A334948(n+1)%A191792(n)`
-/

namespace A095999.P14270135605070762203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A334948 (n + 1)) (A191792 n)

end

end A095999.P14270135605070762203

namespace A095999

/-- `A334948(n+1)%A191792(n)` -/
def P14270135605070762203.Spec : Prop :=
  ∀ n, P14270135605070762203.a n = A095999 (n + 1)

end A095999

/-! ## A095999.P3610577671458417924

`A334948(n+1)-A238618(2*n+3)^floor(n/2)`
-/

namespace A095999.P3610577671458417924
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A334948 (n + 1) : ℚ) - (A238618 (2 * n + 3) : ℚ) ^ (⌊(n : ℚ) / 2⌋ : ℤ)

end

end A095999.P3610577671458417924

namespace A095999

/-- `A334948(n+1)-A238618(2*n+3)^floor(n/2)` -/
def P3610577671458417924.Spec : Prop :=
  ∀ n, P3610577671458417924.a n = (A095999 (n + 1) : ℚ)

end A095999

/-! ## A095999.P16565743119360156765

`A020639(A334948(n+1))%A200144(n+1)`
-/

namespace A095999.P16565743119360156765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A020639 (A334948 (n + 1)).toNat) (A200144 (n + 1))

end

end A095999.P16565743119360156765

namespace A095999

/-- `A020639(A334948(n+1))%A200144(n+1)` -/
def P16565743119360156765.Spec : Prop :=
  ∀ n, P16565743119360156765.a n = A095999 (n + 1)

end A095999

/-! ## A095999.P7372716955464833356

`A334945(A334948(n+1))%A167227(n+2)`
-/

namespace A095999.P7372716955464833356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A334945 (A334948 (n + 1)).toNat) (A167227 (n + 2))

end

end A095999.P7372716955464833356

namespace A095999

/-- `A334945(A334948(n+1))%A167227(n+2)` -/
def P7372716955464833356.Spec : Prop :=
  ∀ n, P7372716955464833356.a n = A095999 (n + 1)

end A095999

