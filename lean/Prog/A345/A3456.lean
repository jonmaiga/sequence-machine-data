import SequenceMachineLib
import Mathlib.Tactic
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
import Seq.B000.C014
import Seq.B000.C015
import Seq.B000.C016
import Seq.B000.C019
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C036
import Seq.B000.C038
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C004
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C008
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C006
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C004
import Seq.B004.C000
import Seq.B004.C001
import Seq.B005.C000
import Seq.B006.C000
import Seq.B008.C000
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
# A345600: Numbers that are the sum of ten fourth powers in seven or more ways.

The programs for A345600, there is no canonical definition to state claims against.
-/

/-! ## A345600.P14036176771024242334

`∪[A345601(n+1), A345859(n+1)]`
-/

namespace A345600.P14036176771024242334
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345601 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345859 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A345600.P14036176771024242334

/-! ## A345600.P12062641998260075401

`A345859(A187829(n+1))`
-/

namespace A345600.P12062641998260075401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345859 (A187829 (n + 1)).toNat

end

end A345600.P12062641998260075401

/-! ## A345600.P8613355293947255834

`A345859(A349393(2^n))`
-/

namespace A345600.P8613355293947255834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345859 (A349393 (2 ^ n)).toNat

end

end A345600.P8613355293947255834

/-! ## A345600.P12008279920862117200

`A106433(n)!*A345859(n+1)`
-/

namespace A345600.P12008279920862117200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (A106433 n).toNat : ℤ) * A345859 (n + 1)

end

end A345600.P12008279920862117200

/-!
# A345601: Numbers that are the sum of ten fourth powers in eight or more ways.

The programs for A345601, there is no canonical definition to state claims against.
-/

/-! ## A345601.P7811814130517862514

`∪[A345602(n+1), A345860(n+1)]`
-/

namespace A345601.P7811814130517862514
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345602 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345860 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A345601.P7811814130517862514

/-!
# A345602: Numbers that are the sum of ten fourth powers in nine or more ways.

The programs for A345602, there is no canonical definition to state claims against.
-/

/-! ## A345602.P13823928937861485374

`∪[A345603(n+1), A345861(n+1)]`
-/

namespace A345602.P13823928937861485374
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345603 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345861 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A345602.P13823928937861485374

/-!
# A345606: Numbers that are the sum of seven fifth powers in three or more ways.

The programs for A345606, there is no canonical definition to state claims against.
-/

/-! ## A345606.P77541868363500451

`∪[A345607(n+1), A346280(n+1)]`
-/

namespace A345606.P77541868363500451
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345607 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346280 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A345606.P77541868363500451

/-! ## A345606.P9443952222067596752

`A346280(A265647(∑[∑[n+1]]))`
-/

namespace A345606.P9443952222067596752
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346280 (A265647 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A345606.P9443952222067596752

/-! ## A345606.P2264671021711693255

`A346280(n+1)%A346277(n+4)²`
-/

namespace A345606.P2264671021711693255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A346280 (n + 1)) (A346277 (n + 4) ^ 2)

end

end A345606.P2264671021711693255

/-! ## A345606.P7623407103815486646

`A346280(n+1)+A000007(A325683(n))`
-/

namespace A345606.P7623407103815486646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346280 (n + 1) + A000007 (A325683 n).toNat

end

end A345606.P7623407103815486646

/-!
# A345608: Numbers that are the sum of seven fifth powers in five or more ways.

The programs for A345608, there is no canonical definition to state claims against.
-/

/-! ## A345608.P10044473755112256915

`∪[A345609(n+1), A346282(n+1)]`
-/

namespace A345608.P10044473755112256915
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345609 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346282 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A345608.P10044473755112256915

/-! ## A345608.P4050948478518307882

`record[A346282(A274821(n))]`
-/

namespace A345608.P4050948478518307882
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346282 (A274821 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A345608.P4050948478518307882

/-! ## A345608.P6221534105972739283

`A346282(A187829(n+1))`
-/

namespace A345608.P6221534105972739283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346282 (A187829 (n + 1)).toNat

end

end A345608.P6221534105972739283

/-! ## A345608.P111645819557339444

`A346282(∑[∑[A028240(n)]])`
-/

namespace A345608.P111645819557339444
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028240 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346282 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A345608.P111645819557339444

/-! ## A345608.P2081675179394788939

`A346282(C(A043320(n+1), n))`
-/

namespace A345608.P2081675179394788939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346282 (Nat.choose (A043320 (n + 1)).toNat n)

end

end A345608.P2081675179394788939

/-!
# A345609: Numbers that are the sum of seven fifth powers in six or more ways.

The programs for A345609, there is no canonical definition to state claims against.
-/

/-! ## A345609.P4550161593758218556

`∪[A345629(n+1), A346283(n+1)]`
-/

namespace A345609.P4550161593758218556
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345629 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346283 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A345609.P4550161593758218556

/-! ## A345609.P7985565372095686988

`A346283(A077168(n))`
-/

namespace A345609.P7985565372095686988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346283 (A077168 n).toNat

end

end A345609.P7985565372095686988

/-! ## A345609.P15189205223025152948

`A346283(A001511(2^n))`
-/

namespace A345609.P15189205223025152948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346283 (A001511 (2 ^ n)).toNat

end

end A345609.P15189205223025152948

/-! ## A345609.P2673112725872405460

`A346283(A003558(2^n))`
-/

namespace A345609.P2673112725872405460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346283 (A003558 (2 ^ n)).toNat

end

end A345609.P2673112725872405460

/-! ## A345609.P6901581473424946687

`A346283(A070939(2^n))`
-/

namespace A345609.P6901581473424946687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346283 (A070939 (2 ^ n)).toNat

end

end A345609.P6901581473424946687

/-!
# A345612: Numbers that are the sum of eight fifth powers in four or more ways.

The programs for A345612, there is no canonical definition to state claims against.
-/

/-! ## A345612.P2379186817594324863

`∪[A345613(n+1), A346329(n+1)]`
-/

namespace A345612.P2379186817594324863
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345613 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346329 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A345612.P2379186817594324863

/-! ## A345612.P9174614412459400770

`gcd(9, A124778(n))*A346329(n+1)`
-/

namespace A345612.P9174614412459400770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.gcd 9 (A124778 n) : ℤ) * A346329 (n + 1)

end

end A345612.P9174614412459400770

/-! ## A345612.P14034427305856397031

`A346329(n+1)^A034532(n+1)!`
-/

namespace A345612.P14034427305856397031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346329 (n + 1) ^ Nat.factorial (A034532 (n + 1)).toNat

end

end A345612.P14034427305856397031

/-! ## A345612.P16728631532105043588

`A346329(n+1)+A010051(A027602(n))`
-/

namespace A345612.P16728631532105043588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346329 (n + 1) + A010051 (A027602 n).toNat

end

end A345612.P16728631532105043588

/-! ## A345612.P10005966005106074712

`A346329(n+1)+A151755(A094266(n))`
-/

namespace A345612.P10005966005106074712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346329 (n + 1) + A151755 (A094266 n).toNat

end

end A345612.P10005966005106074712

/-!
# A345613: Numbers that are the sum of eight fifth powers in five or more ways.

The programs for A345613, there is no canonical definition to state claims against.
-/

/-! ## A345613.P5200891864226864327

`∪[A345614(n+1), A346330(n+1)]`
-/

namespace A345613.P5200891864226864327
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345614 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346330 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A345613.P5200891864226864327

/-! ## A345613.P12752164482220982915

`A346330(A292125(n+1))`
-/

namespace A345613.P12752164482220982915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346330 (A292125 (n + 1)).toNat

end

end A345613.P12752164482220982915

/-!
# A345614: Numbers that are the sum of eight fifth powers in six or more ways.

The programs for A345614, there is no canonical definition to state claims against.
-/

/-! ## A345614.P12808150013684216811

`∪[A345615(n+1), A346331(n+1)]`
-/

namespace A345614.P12808150013684216811
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345615 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346331 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A345614.P12808150013684216811

/-! ## A345614.P11984802404182549991

`A346331(∑[A287377(n)])`
-/

namespace A345614.P11984802404182549991
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287377 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346331 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A345614.P11984802404182549991

/-! ## A345614.P18132761844121654330

`A346331(A032555(n+1))`
-/

namespace A345614.P18132761844121654330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346331 (A032555 (n + 1)).toNat

end

end A345614.P18132761844121654330

/-! ## A345614.P17043560352359883760

`A346331(A032559(n+1))`
-/

namespace A345614.P17043560352359883760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346331 (A032559 (n + 1)).toNat

end

end A345614.P17043560352359883760

/-! ## A345614.P6723651969215822873

`A346331(A077739(n+1))`
-/

namespace A345614.P6723651969215822873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346331 (A077739 (n + 1)).toNat

end

end A345614.P6723651969215822873

/-!
# A345615: Numbers that are the sum of eight fifth powers in seven or more ways.

The programs for A345615, there is no canonical definition to state claims against.
-/

/-! ## A345615.P14648110521084052931

`∪[A345616(n+1), A346332(n+1)]`
-/

namespace A345615.P14648110521084052931
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345616 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346332 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A345615.P14648110521084052931

/-! ## A345615.P2961127633327379911

`A346332(A084192(∑[n]))`
-/

namespace A345615.P2961127633327379911
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346332 (A084192 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A345615.P2961127633327379911

/-! ## A345615.P16703233071327465571

`A346332(A193897(∑[n]))`
-/

namespace A345615.P16703233071327465571
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346332 (A193897 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A345615.P16703233071327465571

/-! ## A345615.P13570953805730312882

`record[A346332(A095161(n))]`
-/

namespace A345615.P13570953805730312882
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346332 (A095161 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A345615.P13570953805730312882

/-! ## A345615.P17414190897816402053

`record[A346332(A331852(n))]`
-/

namespace A345615.P17414190897816402053
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346332 (A331852 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A345615.P17414190897816402053

/-!
# A345616: Numbers that are the sum of eight fifth powers in eight or more ways.

The programs for A345616, there is no canonical definition to state claims against.
-/

/-! ## A345616.P13887591633953999401

`∪[A345617(n+1), A346333(n+1)]`
-/

namespace A345616.P13887591633953999401
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345617 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346333 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A345616.P13887591633953999401

/-!
# A345617: Numbers that are the sum of eight fifth powers in nine or more ways.

The programs for A345617, there is no canonical definition to state claims against.
-/

/-! ## A345617.P14254905216968960882

`∪[A345618(n+1), A346334(n+1)]`
-/

namespace A345617.P14254905216968960882
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345618 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346334 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A345617.P14254905216968960882

/-! ## A345617.P1301078287280661465

`∪[A346334(n+1), A346335(n+1)]`
-/

namespace A345617.P1301078287280661465
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346334 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346335 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A345617.P1301078287280661465

/-!
# A345618: Numbers that are the sum of eight fifth powers in ten or more ways.

The programs for A345618, there is no canonical definition to state claims against.
-/

/-! ## A345618.P7262271540674850283

`A346335(n+1)^C(n, 5)!`
-/

namespace A345618.P7262271540674850283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346335 (n + 1) ^ Nat.factorial (Nat.choose n 5)

end

end A345618.P7262271540674850283

/-! ## A345618.P17629104162645236524

`A346335(A292125(n+1))`
-/

namespace A345618.P17629104162645236524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346335 (A292125 (n + 1)).toNat

end

end A345618.P17629104162645236524

/-!
# A345620: Numbers that are the sum of nine fifth powers in three or more ways.

The programs for A345620, there is no canonical definition to state claims against.
-/

/-! ## A345620.P2531899792559728096

`∪[A345621(n+1), A346338(n+1)]`
-/

namespace A345620.P2531899792559728096
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345621 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346338 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A345620.P2531899792559728096

/-! ## A345620.P2382009066237071697

`A346338(C(n²+1, 47)+n+1)`
-/

namespace A345620.P2382009066237071697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346338 (Nat.choose (n ^ 2 + 1) 47 + n + 1)

end

end A345620.P2382009066237071697

/-! ## A345620.P3876242981388015486

`A346338(A032551(n+2))`
-/

namespace A345620.P3876242981388015486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346338 (A032551 (n + 2)).toNat

end

end A345620.P3876242981388015486

/-!
# A345621: Numbers that are the sum of nine fifth powers in four or more ways.

The programs for A345621, there is no canonical definition to state claims against.
-/

/-! ## A345621.P8668773385884859422

`∪[A345622(n+1), A346339(n+1)]`
-/

namespace A345621.P8668773385884859422
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345622 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346339 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A345621.P8668773385884859422

/-! ## A345621.P1503241090486008357

`A346339(∑[A185284(n)!])`
-/

namespace A345621.P1503241090486008357
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A185284 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346339 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A345621.P1503241090486008357

/-! ## A345621.P12581983610698298503

`A346339(n+1)%A201051(n+1)`
-/

namespace A345621.P12581983610698298503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A346339 (n + 1)) (A201051 (n + 1))

end

end A345621.P12581983610698298503

/-! ## A345621.P11139056629468002507

`A346339(n+1)+A079207(A130321(n))`
-/

namespace A345621.P11139056629468002507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346339 (n + 1) + A079207 (A130321 n).toNat

end

end A345621.P11139056629468002507

/-! ## A345621.P2495778202293197205

`A346339(n+1)+A000007(A053818(n+1))`
-/

namespace A345621.P2495778202293197205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346339 (n + 1) + A000007 (A053818 (n + 1)).toNat

end

end A345621.P2495778202293197205

/-!
# A345622: Numbers that are the sum of nine fifth powers in five or more ways.

The programs for A345622, there is no canonical definition to state claims against.
-/

/-! ## A345622.P8919469773881784190

`∪[A345623(n+1), A346340(n+1)]`
-/

namespace A345622.P8919469773881784190
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345623 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346340 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A345622.P8919469773881784190

/-! ## A345622.P2203660118423181457

`A346340(n+1)%A116643(n+1)`
-/

namespace A345622.P2203660118423181457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A346340 (n + 1)) (A116643 (n + 1))

end

end A345622.P2203660118423181457

/-! ## A345622.P16047733481914409935

`A346340(n+1)+A332939(n)%2`
-/

namespace A345622.P16047733481914409935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346340 (n + 1) + Int.tmod (A332939 n) 2

end

end A345622.P16047733481914409935

/-! ## A345622.P8239672818208599901

`A346340(n+1)+val(A274498(n), 7)`
-/

namespace A345622.P8239672818208599901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346340 (n + 1) + (SequenceMachineLib.valuation (A274498 n).toNat 7 : ℤ)

end

end A345622.P8239672818208599901

/-! ## A345622.P11731764095785206299

`A346340(n+1)+A000007(A098568(n))`
-/

namespace A345622.P11731764095785206299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346340 (n + 1) + A000007 (A098568 n).toNat

end

end A345622.P11731764095785206299

/-!
# A345623: Numbers that are the sum of nine fifth powers in six or more ways.

The programs for A345623, there is no canonical definition to state claims against.
-/

/-! ## A345623.P10357260011473146474

`∪[A345624(n+1), A346341(n+1)]`
-/

namespace A345623.P10357260011473146474
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345624 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346341 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A345623.P10357260011473146474

/-! ## A345623.P2056634360475429435

`A346341(n+1)^∑[A210709(n)]`
-/

namespace A345623.P2056634360475429435
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210709 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A346341 (n + 1) : ℚ) ^ (∑ j ∈ Finset.range (n + 1), f1 j : ℤ)

end

end A345623.P2056634360475429435

/-! ## A345623.P10264574587763083610

`or(A210709(n+1)², A346341(n+1))`
-/

namespace A345623.P10264574587763083610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A210709 (n + 1) ^ 2) (A346341 (n + 1))

end

end A345623.P10264574587763083610

/-! ## A345623.P12618821105892581095

`A346341(n+1)+A335462(3*n+1)`
-/

namespace A345623.P12618821105892581095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346341 (n + 1) + A335462 (3 * n + 1)

end

end A345623.P12618821105892581095

/-! ## A345623.P4388252850903219734

`A346341(n+1)+A000038(A063008(n))`
-/

namespace A345623.P4388252850903219734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346341 (n + 1) + A000038 (A063008 n).toNat

end

end A345623.P4388252850903219734

/-!
# A345624: Numbers that are the sum of nine fifth powers in seven or more ways.

The programs for A345624, there is no canonical definition to state claims against.
-/

/-! ## A345624.P14940302459584792736

`∪[A345625(n+1), A346342(n+1)]`
-/

namespace A345624.P14940302459584792736
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345625 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346342 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A345624.P14940302459584792736

/-! ## A345624.P9195065631833901253

`∪[A346342(n+1), A346343(n+1)]%A345617(2*(n+1))`
-/

namespace A345624.P9195065631833901253
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346342 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346343 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n : ℤ) (A345617 (2 * (n + 1)))

end

end A345624.P9195065631833901253

/-!
# A345625: Numbers that are the sum of nine fifth powers in eight or more ways.

The programs for A345625, there is no canonical definition to state claims against.
-/

/-! ## A345625.P2169923002743334424

`∪[A345626(n+1), A346343(n+1)]`
-/

namespace A345625.P2169923002743334424
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345626 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346343 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A345625.P2169923002743334424

/-! ## A345625.P10791098671838966508

`∪[A346343(n+1), A346344(n+1)]%A345616(3*(n+1))`
-/

namespace A345625.P10791098671838966508
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346343 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346344 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n : ℤ) (A345616 (3 * (n + 1)))

end

end A345625.P10791098671838966508

/-! ## A345625.P3105160573755778127

`∪[A346343(n+1), A346344(n+1)]%A345617(n+1)`
-/

namespace A345625.P3105160573755778127
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346343 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346344 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n : ℤ) (A345617 (n + 1))

end

end A345625.P3105160573755778127

/-!
# A345626: Numbers that are the sum of nine fifth powers in nine or more ways.

The programs for A345626, there is no canonical definition to state claims against.
-/

/-! ## A345626.P7210445552236395656

`∪[A345627(n+1), A346344(n+1)]`
-/

namespace A345626.P7210445552236395656
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345627 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346344 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A345626.P7210445552236395656

/-! ## A345626.P7620782441042696933

`∪[A346344(n+1), A346345(n+1)]%A345617(n+1)`
-/

namespace A345626.P7620782441042696933
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346344 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346345 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n : ℤ) (A345617 (n + 1))

end

end A345626.P7620782441042696933

/-! ## A345626.P4588660977032070637

`record[A346344(A087735(n+1))]`
-/

namespace A345626.P4588660977032070637
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346344 (A087735 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A345626.P4588660977032070637

/-! ## A345626.P14217608264778427500

`record[A346344(A119585(n+1))]`
-/

namespace A345626.P14217608264778427500
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346344 (A119585 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A345626.P14217608264778427500

/-! ## A345626.P2588191856898943574

`A346344(A056239(2^(n+1)))`
-/

namespace A345626.P2588191856898943574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346344 (A056239 (2 ^ (n + 1))).toNat

end

end A345626.P2588191856898943574

/-!
# A345629: Numbers that are the sum of seven fifth powers in seven or more ways.

The programs for A345629, there is no canonical definition to state claims against.
-/

/-! ## A345629.P16216185707533171354

`∪[A345630(n+1), A346284(n+1)]`
-/

namespace A345629.P16216185707533171354
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345630 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346284 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A345629.P16216185707533171354

/-!
# A345630: Numbers that are the sum of seven fifth powers in eight or more ways.

The programs for A345630, there is no canonical definition to state claims against.
-/

/-! ## A345630.P13364669420146631282

`∪[A345631(n+1), A346285(n+1)]`
-/

namespace A345630.P13364669420146631282
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345631 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346285 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A345630.P13364669420146631282

/-! ## A345630.P5778747479076845789

`A346285(A173588(∑[n]))`
-/

namespace A345630.P5778747479076845789
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346285 (A173588 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A345630.P5778747479076845789

/-! ## A345630.P3989081336608461907

`A346285(A062399(n+1))`
-/

namespace A345630.P3989081336608461907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346285 (A062399 (n + 1)).toNat

end

end A345630.P3989081336608461907

/-! ## A345630.P13462091708947024841

`A346285(A351870(n+1))`
-/

namespace A345630.P13462091708947024841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346285 (A351870 (n + 1)).toNat

end

end A345630.P13462091708947024841

/-! ## A345630.P13891116713887777388

`A346285(∑[A309661(n)!])`
-/

namespace A345630.P13891116713887777388
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A309661 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346285 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A345630.P13891116713887777388

/-!
# A345631: Numbers that are the sum of seven fifth powers in nine or more ways.

The programs for A345631, there is no canonical definition to state claims against.
-/

/-! ## A345631.P4835281401689789079

`∪[A345643(n+1), A346286(n+1)]`
-/

namespace A345631.P4835281401689789079
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345643 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346286 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A345631.P4835281401689789079

/-!
# A345632: Sum of terms of even index in the binomial decomposition of n^(n-1).

The programs for A345632, the canonical program `A345632.P9646962262592809252` is in `Seq.B000.C038`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A345632 has offset 1).

The definition of A345632 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A345632.P9646962262592809252

`((1-n)^n+(1+n)^n)/2`

The canonical program, it is in `Seq.B000.C038`.
-/

namespace A345632

/-- `((1-n)^n+(1+n)^n)/2` -/
def P9646962262592809252.Spec : Prop :=
  ∀ n, P9646962262592809252.a n = (A345632 (n + 1) : ℚ)

end A345632

/-! ## A345632.P9195965694425891022

`(n+1)^n-A345633(n+1)`
-/

namespace A345632.P9195965694425891022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ n : ℤ) - A345633 (n + 1)

end

end A345632.P9195965694425891022

namespace A345632

/-- `(n+1)^n-A345633(n+1)` -/
def P9195965694425891022.Spec : Prop :=
  ∀ n, P9195965694425891022.a n = A345632 (n + 1)

end A345632

/-! ## A345632.P18210626255478204907

`abs(A000169(n+1)-A345633(n+1))`
-/

namespace A345632.P18210626255478204907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A000169 (n + 1) - A345633 (n + 1)|

end

end A345632.P18210626255478204907

namespace A345632

/-- `abs(A000169(n+1)-A345633(n+1))` -/
def P18210626255478204907.Spec : Prop :=
  ∀ n, P18210626255478204907.a n = A345632 (n + 1)

end A345632

/-! ## A345632.P11798739541530855608

`A062024(n)+A302583(n)-A345633(n+1)`
-/

namespace A345632.P11798739541530855608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062024 n + (A302583 n - A345633 (n + 1))

end

end A345632.P11798739541530855608

namespace A345632

/-- `A062024(n)+A302583(n)-A345633(n+1)` -/
def P11798739541530855608.Spec : Prop :=
  ∀ n, P11798739541530855608.a n = A345632 (n + 1)

end A345632

/-! ## A345632.P6367194393510137186

`A000169(n+1)-A345633(n+1)%A099714(n)`
-/

namespace A345632.P6367194393510137186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000169 (n + 1) - Int.tmod (A345633 (n + 1)) (A099714 n)

end

end A345632.P6367194393510137186

namespace A345632

/-- `A000169(n+1)-A345633(n+1)%A099714(n)` -/
def P6367194393510137186.Spec : Prop :=
  ∀ n, P6367194393510137186.a n = A345632 (n + 1)

end A345632

/-!
# A345633: Sum of terms of odd index in the binomial decomposition of n^(n-1).

The programs for A345633, the canonical program `A345633.P2439394655788921872` is in `Seq.B000.C038`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A345633 has offset 1).

The definition of A345633 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A345633.P2439394655788921872

`((1+n)^n-(1-n)^n)/2`

The canonical program, it is in `Seq.B000.C038`.
-/

namespace A345633

/-- `((1+n)^n-(1-n)^n)/2` -/
def P2439394655788921872.Spec : Prop :=
  ∀ n, P2439394655788921872.a n = (A345633 (n + 1) : ℚ)

end A345633

/-! ## A345633.P11514367461863571374

`round(abs((n-1)^n-xor(n, -1)^n)/2)`
-/

namespace A345633.P11514367461863571374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((|((n : ℤ) - 1) ^ n - Int.xor (n : ℤ) (-1) ^ n| : ℚ) / 2)

end

end A345633.P11514367461863571374

namespace A345633

/-- `round(abs((n-1)^n-xor(n, -1)^n)/2)` -/
def P11514367461863571374.Spec : Prop :=
  ∀ n, P11514367461863571374.a n = A345633 (n + 1)

end A345633

/-! ## A345633.P12143401207642808316

`A000169(n+1)-A345632(n+1)`
-/

namespace A345633.P12143401207642808316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000169 (n + 1) - A345632 (n + 1)

end

end A345633.P12143401207642808316

namespace A345633

/-- `A000169(n+1)-A345632(n+1)` -/
def P12143401207642808316.Spec : Prop :=
  ∀ n, P12143401207642808316.a n = A345633 (n + 1)

end A345633

/-! ## A345633.P2119989654377735399

`∪[A062024(2*n+1), A302583(2*n)]`
-/

namespace A345633.P2119989654377735399
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062024 (2 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302583 (2 * n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A345633.P2119989654377735399

namespace A345633

/-- `∪[A062024(2*n+1), A302583(2*n)]` -/
def P2119989654377735399.Spec : Prop :=
  ∀ n, (P2119989654377735399.a n : ℤ) = A345633 (n + 1)

end A345633

/-! ## A345633.P4995199051444663951

`∪[A302583(2*n), A062024(A005408(n))]`
-/

namespace A345633.P4995199051444663951
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302583 (2 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062024 (A005408 n).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A345633.P4995199051444663951

namespace A345633

/-- `∪[A302583(2*n), A062024(A005408(n))]` -/
def P4995199051444663951.Spec : Prop :=
  ∀ n, (P4995199051444663951.a n : ℤ) = A345633 (n + 1)

end A345633

/-!
# A345634: Numbers that are the sum of ten fifth powers in two or more ways.

The programs for A345634, there is no canonical definition to state claims against.
-/

/-! ## A345634.P9523872899857279380

`∪[A345635(n+1), A346347(n+1)]`
-/

namespace A345634.P9523872899857279380
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345635 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346347 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A345634.P9523872899857279380

/-! ## A345634.P8490072525568766461

`A175126(2*A346347(n+1))`
-/

namespace A345634.P8490072525568766461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175126 (2 * A346347 (n + 1)).toNat

end

end A345634.P8490072525568766461

/-! ## A345634.P4523148956466395435

`A346347(A212157(n+1)²+n)`
-/

namespace A345634.P4523148956466395435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346347 (A212157 (n + 1) ^ 2 + (n : ℤ)).toNat

end

end A345634.P4523148956466395435

/-! ## A345634.P264502480513583145

`A346347(n+1)%A253269(n+1)`
-/

namespace A345634.P264502480513583145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A346347 (n + 1)) (A253269 (n + 1))

end

end A345634.P264502480513583145

/-! ## A345634.P4315946340869496781

`A346347(lcm(n+1, A212157(n+1)))`
-/

namespace A345634.P4315946340869496781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346347 (Int.lcm (n + 1 : ℤ) (A212157 (n + 1)))

end

end A345634.P4315946340869496781

/-! ## A345634.P9623404955324409454

`A054429(A054429(A346347(n+1)))`
-/

namespace A345634.P9623404955324409454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054429 (A054429 (A346347 (n + 1)).toNat).toNat

end

end A345634.P9623404955324409454

/-!
# A345635: Numbers that are the sum of ten fifth powers in three or more ways.

The programs for A345635, there is no canonical definition to state claims against.
-/

/-! ## A345635.P8194037680726791860

`∪[A345636(n+1), A346348(n+1)]`
-/

namespace A345635.P8194037680726791860
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345636 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346348 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A345635.P8194037680726791860

/-! ## A345635.P18202542409578391750

`record[A346348(A163258(n+1))]`
-/

namespace A345635.P18202542409578391750
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346348 (A163258 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A345635.P18202542409578391750

/-! ## A345635.P5537412247603156006

`A346348(n+1)+A329697(ceil(2^(n-1)))`
-/

namespace A345635.P5537412247603156006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346348 (n + 1) + A329697 ⌈(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉.toNat

end

end A345635.P5537412247603156006

/-! ## A345635.P10752525071683453823

`A346348(n+1)%Δ[A136473(2*n+5)]`
-/

namespace A345635.P10752525071683453823
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136473 (2 * n + 5)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A346348 (n + 1)) (f1 (n + 1) - f1 n)

end

end A345635.P10752525071683453823

/-! ## A345635.P2771056796434382913

`A346348(n+1)+A000007(A000712(n))`
-/

namespace A345635.P2771056796434382913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346348 (n + 1) + A000007 (A000712 n).toNat

end

end A345635.P2771056796434382913

/-!
# A345637: Numbers that are the sum of ten fifth powers in five or more ways.

The programs for A345637, there is no canonical definition to state claims against.
-/

/-! ## A345637.P2473007092946451234

`∪[A345638(n+1), A346350(n+1)]`
-/

namespace A345637.P2473007092946451234
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345638 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346350 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A345637.P2473007092946451234

/-! ## A345637.P4135668629752737498

`A346350(n+1)%A245210(n)`
-/

namespace A345637.P4135668629752737498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A346350 (n + 1)) (A245210 n)

end

end A345637.P4135668629752737498

/-! ## A345637.P2705048135288723158

`A000120(2^floor(n/2))*A346350(n+1)`
-/

namespace A345637.P2705048135288723158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (⌊(n : ℚ) / 2⌋ : ℤ))).toNat * A346350 (n + 1)

end

end A345637.P2705048135288723158

/-! ## A345637.P5640424027879995345

`A002487(2^floor(n/2))*A346350(n+1)`
-/

namespace A345637.P5640424027879995345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002487 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (⌊(n : ℚ) / 2⌋ : ℤ))).toNat * A346350 (n + 1)

end

end A345637.P5640424027879995345

/-! ## A345637.P3870625533709301023

`A346350(n+1)+A243055(A070934(n))`
-/

namespace A345637.P3870625533709301023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346350 (n + 1) + A243055 (A070934 n).toNat

end

end A345637.P3870625533709301023

/-!
# A345638: Numbers that are the sum of ten fifth powers in six or more ways.

The programs for A345638, there is no canonical definition to state claims against.
-/

/-! ## A345638.P11154596276335716491

`∪[A345639(n+1), A346351(n+1)]`
-/

namespace A345638.P11154596276335716491
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345639 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346351 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A345638.P11154596276335716491

/-! ## A345638.P9542529602265040096

`A346351(A077168(n))`
-/

namespace A345638.P9542529602265040096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346351 (A077168 n).toNat

end

end A345638.P9542529602265040096

/-! ## A345638.P16041561755861844477

`A346351(A330240(∑[n+1]))`
-/

namespace A345638.P16041561755861844477
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346351 (A330240 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A345638.P16041561755861844477

/-! ## A345638.P4645665819276107370

`A346351(A348043(∑[n+1]))`
-/

namespace A345638.P4645665819276107370
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346351 (A348043 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A345638.P4645665819276107370

/-! ## A345638.P18265783228528892079

`record[A346351(A195107(n+1))]`
-/

namespace A345638.P18265783228528892079
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346351 (A195107 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A345638.P18265783228528892079

/-!
# A345639: Numbers that are the sum of ten fifth powers in seven or more ways.

The programs for A345639, there is no canonical definition to state claims against.
-/

/-! ## A345639.P17331300506599930065

`∪[A345640(n+1), A346352(n+1)]`
-/

namespace A345639.P17331300506599930065
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345640 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346352 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A345639.P17331300506599930065

/-! ## A345639.P929090960096319782

`A346352(A340019(3*n+5)%2+n)`
-/

namespace A345639.P929090960096319782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346352 (Int.tmod (A340019 (3 * n + 5)) 2 + (n : ℤ)).toNat

end

end A345639.P929090960096319782

/-! ## A345639.P3012124543402654059

`A009194(3^floor(n/2))*A346352(n+1)`
-/

namespace A345639.P3012124543402654059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009194 (SequenceMachineLib.roundAway ((3 : ℚ) ^ (⌊(n : ℚ) / 2⌋ : ℤ))).toNat * A346352 (n + 1)

end

end A345639.P3012124543402654059

/-! ## A345639.P15688769189112898119

`A346352(n+1)%∑{d}[A346352(2*(n+1))+2, #]`
-/

namespace A345639.P15688769189112898119
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346352 (2 * (n + 1)) + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A346352 (n + 1)) ((∑ d ∈ Nat.divisors (f1 n).natAbs, d : ℕ) : ℤ)

end

end A345639.P15688769189112898119

/-! ## A345639.P8701629095218202021

`A346352(n+1)+A007949(A060455(n))`
-/

namespace A345639.P8701629095218202021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346352 (n + 1) + A007949 (A060455 n).toNat

end

end A345639.P8701629095218202021

/-!
# A345640: Numbers that are the sum of ten fifth powers in eight or more ways.

The programs for A345640, there is no canonical definition to state claims against.
-/

/-! ## A345640.P17100055367314350811

`∪[A345641(n+1), A346353(n+1)]`
-/

namespace A345640.P17100055367314350811
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345641 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346353 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A345640.P17100055367314350811

/-! ## A345640.P778468049205408271

`record[A346353(∑{e}[n²+1, #]+1)]`
-/

namespace A345640.P778468049205408271
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2 + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346353 (∑ p ∈ Nat.primeFactors (f2 n), Nat.factorization (f2 n) p + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A345640.P778468049205408271

/-! ## A345640.P5986765199468479884

`A346353(A032551(n+2))`
-/

namespace A345640.P5986765199468479884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346353 (A032551 (n + 2)).toNat

end

end A345640.P5986765199468479884

/-!
# A345641: Numbers that are the sum of ten fifth powers in nine or more ways.

The programs for A345641, there is no canonical definition to state claims against.
-/

/-! ## A345641.P10419065615362846585

`∪[A345642(n+1), A346354(n+1)]`
-/

namespace A345641.P10419065615362846585
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345642 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346354 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A345641.P10419065615362846585

/-! ## A345641.P79880201182708565

`A346354(n+1)-A007053(A006761(n+1))`
-/

namespace A345641.P79880201182708565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346354 (n + 1) - A007053 (A006761 (n + 1)).toNat

end

end A345641.P79880201182708565

/-!
# A345642: Numbers that are the sum of ten fifth powers in ten or more ways.

The programs for A345642, there is no canonical definition to state claims against.
-/

/-! ## A345642.P13793588091636744200

`A346355(A046942(n+1))`
-/

namespace A345642.P13793588091636744200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346355 (A046942 (n + 1)).toNat

end

end A345642.P13793588091636744200

/-!
# A345643: Numbers that are the sum of seven fifth powers in ten or more ways.

The programs for A345643, there is no canonical definition to state claims against.
-/

/-! ## A345643.P9342124066971948469

`A346259(A292125(n+1))`
-/

namespace A345643.P9342124066971948469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346259 (A292125 (n + 1)).toNat

end

end A345643.P9342124066971948469

/-! ## A345643.P8319823378236059138

`A346259(A330928(n+1))`
-/

namespace A345643.P8319823378236059138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346259 (A330928 (n + 1)).toNat

end

end A345643.P8319823378236059138

/-!
# A345645: Numbers whose square can be represented in exactly one way as the sum of a square and a biquadrate (fourth power).

The programs for A345645, there is no canonical definition to state claims against.
-/

/-! ## A345645.P7184225846169425257

`A271576(A093641(n+1))%A182876(3*n+5)`
-/

namespace A345645.P7184225846169425257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A271576 (A093641 (n + 1)).toNat) (A182876 (3 * n + 5))

end

end A345645.P7184225846169425257

/-! ## A345645.P16116964854130583490

`A271576(∑[A331278(n)!])`
-/

namespace A345645.P16116964854130583490
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A331278 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271576 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A345645.P16116964854130583490

/-! ## A345645.P1657695954437013292

`A271576(record[A320837(n+1)])`
-/

namespace A345645.P1657695954437013292
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320837 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271576 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A345645.P1657695954437013292

/-! ## A345645.P14855576060365320962

`A273908(∑[A283494(n+1)!])`
-/

namespace A345645.P14855576060365320962
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A283494 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273908 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A345645.P14855576060365320962

/-! ## A345645.P9501028493347285915

`∩[A002157(n+1), A271576(n+1)]`
-/

namespace A345645.P9501028493347285915
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002157 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271576 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A345645.P9501028493347285915

/-!
# A345646: a(n) = Sum_{k=0..n} (4*n)! / (k! * (n-k)!)^4.

The programs for A345646, there is no canonical definition to state claims against.
-/

/-! ## A345646.P7154074431607994364

`A005260(n)*A008977(n)`
-/

namespace A345646.P7154074431607994364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005260 n * A008977 n

end

end A345646.P7154074431607994364

/-! ## A345646.P2963953903674739521

`A306641(eq[5, A027293(n+1)])`
-/

namespace A345646.P2963953903674739521
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027293 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306641 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A345646.P2963953903674739521

/-! ## A345646.P5578415154864674989

`A306641(eq[11, A104764(n+1)])`
-/

namespace A345646.P5578415154864674989
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104764 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306641 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A345646.P5578415154864674989

/-!
# A345647: Square array read by downward antidiagonals: A(n, k) = number of primes in the interval [n+1, n+k], n >= 1, k > 1.

The programs for A345647, there is no canonical definition to state claims against.
-/

/-! ## A345647.P16226123042108799979

`A143537(n+4+∑[2*char[∑[n]]])`
-/

namespace A345647.P16226123042108799979
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (if ∃ j, f2 j = n then 1 else 0)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143537 (n + 4 + ∑ j ∈ Finset.range (n + 1), f1 j)

end

end A345647.P16226123042108799979

/-! ## A345647.P6776537957990733070

`A038567(A003057(n+2))-A038567(A002260(n+1))`
-/

namespace A345647.P6776537957990733070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038567 (A003057 (n + 2)).toNat - A038567 (A002260 (n + 1)).toNat

end

end A345647.P6776537957990733070

/-! ## A345647.P16879587084067484435

`A038567(A002024(n+1)+1)-A038567(A002260(n+1))`
-/

namespace A345647.P16879587084067484435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038567 (A002024 (n + 1) + 1).toNat - A038567 (A002260 (n + 1)).toNat

end

end A345647.P16879587084067484435

/-! ## A345647.P18133852077351115548

`A139352(lcm(A130328(n), A140513(n)))`
-/

namespace A345647.P18133852077351115548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139352 (Int.lcm (A130328 n) (A140513 n))

end

end A345647.P18133852077351115548

/-! ## A345647.P15876439398616128322

`A124760(A285806(n+1))`
-/

namespace A345647.P15876439398616128322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124760 (A285806 (n + 1)).toNat

end

end A345647.P15876439398616128322

/-!
# A345648: Number of polygons formed outside an n X n square when connecting all 4n points on the perimeter of the square by infinite lines.

The programs for A345648, there is no canonical definition to state claims against.
-/

/-! ## A345648.P11554411510970478227

`A345459(n)-A255011(n)`
-/

namespace A345648.P11554411510970478227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345459 n - A255011 n

end

end A345648.P11554411510970478227

/-! ## A345648.P782622386721753448

`A345459(n)-(A331448(n)+1-A331449(n))`
-/

namespace A345648.P782622386721753448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345459 n - (A331448 n + (1 - A331449 n))

end

end A345648.P782622386721753448

/-! ## A345648.P143857486799815179

`A345459(n)-(1-(A331449(2*n-n)-A331448(n)))`
-/

namespace A345648.P143857486799815179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345459 n - (1 - (A331449 (2 * n - n) - A331448 n))

end

end A345648.P143857486799815179

/-! ## A345648.P12311303732832682408

`A057427(n)+A345650(n)-A345649(n)-A255011(n)`
-/

namespace A345648.P12311303732832682408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n + (A345650 n - A345649 n) - A255011 n

end

end A345648.P12311303732832682408

/-! ## A345648.P6288205862655064255

`A178334(n)+A345650(n)-A345649(n)-A255011(n)`
-/

namespace A345648.P6288205862655064255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178334 n + (A345650 n - A345649 n) - A255011 n

end

end A345648.P6288205862655064255

/-!
# A345649: Number of vertices formed when connecting all 4n points on the perimeter of an n X n square by infinite lines.

The programs for A345649, there is no canonical definition to state claims against.
-/

/-! ## A345649.P17783488277133062263

`A345650(n)-(A345648(n)+A014681(A255011(n)))`
-/

namespace A345649.P17783488277133062263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345650 n - (A345648 n + A014681 (A255011 n).toNat)

end

end A345649.P17783488277133062263

/-! ## A345649.P10706171085674063159

`A345650(n)-A014681(A345459(n))`
-/

namespace A345649.P10706171085674063159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345650 n - A014681 (A345459 n).toNat

end

end A345649.P10706171085674063159

/-!
# A345650: Number of polygon edges formed when connecting all 4n points on the perimeter of an n X n square by infinite lines.

The programs for A345650, there is no canonical definition to state claims against.
-/

/-! ## A345650.P12153645874324023358

`A345459(n)+A029578(A345649(n))`
-/

namespace A345650.P12153645874324023358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345459 n + A029578 (A345649 n).toNat

end

end A345650.P12153645874324023358

/-! ## A345650.P2979499872741959533

`A014681(A255011(n))+A345649(n)+A345648(n)`
-/

namespace A345650.P2979499872741959533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014681 (A255011 n).toNat + (A345649 n + A345648 n)

end

end A345650.P2979499872741959533

/-!
# A345651: Fourth column of A008296.

The programs for A345651, there is no canonical definition to state claims against.
-/

/-! ## A345651.P16340382067467763564

`A008296(A052905(n)+9)`
-/

namespace A345651.P16340382067467763564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008296 (A052905 n + 9).toNat

end

end A345651.P16340382067467763564

/-! ## A345651.P14482059673851823974

`A008296(A055999(n)+10)`
-/

namespace A345651.P14482059673851823974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008296 (A055999 n + 10).toNat

end

end A345651.P14482059673851823974

/-! ## A345651.P1051479766088720667

`A008296(A167614(n+2)+1)`
-/

namespace A345651.P1051479766088720667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008296 (A167614 (n + 2) + 1).toNat

end

end A345651.P1051479766088720667

/-! ## A345651.P7188790775353184906

`A008296(A000217(n+3)+4)`
-/

namespace A345651.P7188790775353184906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008296 (A000217 (n + 3) + 4).toNat

end

end A345651.P7188790775353184906

/-! ## A345651.P2088186931358353155

`A008296(A055998(n+1)+7)`
-/

namespace A345651.P2088186931358353155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008296 (A055998 (n + 1) + 7).toNat

end

end A345651.P2088186931358353155

/-!
# A345654: Numbers with five neighboring primes on the hexagonal spiral board of odd numbers.

The programs for A345654, there is no canonical definition to state claims against.
-/

/-! ## A345654.P7280580919505089313

`A048691(A003472(n+4)*A373843(n+1))`
-/

namespace A345654.P7280580919505089313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048691 (A003472 (n + 4) * A373843 (n + 1)).toNat

end

end A345654.P7280580919505089313

/-!
# A345655: a(n) is the number of permutations w of [n] with no w(i)+1 == w(i+1) (mod n) that are not simply cyclic permutations of the numbers 1 to n in backwards order.

The programs for A345655, there is no canonical definition to state claims against.
-/

/-! ## A345655.P12760709542507186970

`lcm(A002265(n), A215064(A008590(n)))`
-/

namespace A345655.P12760709542507186970
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A002265 n) (A215064 (A008590 n).toNat)

end

end A345655.P12760709542507186970

/-! ## A345655.P222618161195673614

`C(A293330(A000045(n)), A270559(2*n+1))`
-/

namespace A345655.P222618161195673614
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A293330 (A000045 n).toNat).toNat (A270559 (2 * n + 1)).toNat

end

end A345655.P222618161195673614

/-! ## A345655.P13741808903622257174

`A001109(3*(n+1))%A057512(A057625(n+1))`
-/

namespace A345655.P13741808903622257174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001109 (3 * (n + 1))) (A057512 (A057625 (n + 1)).toNat)

end

end A345655.P13741808903622257174

/-!
# A345657: Theta series of the canonical laminated lattice LAMBDA_26.

The programs for A345657, there is no canonical definition to state claims against.
-/

/-! ## A345657.P488560599249892976

`∑{d}[A007102(n), A222944(#)]`
-/

namespace A345657.P488560599249892976
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007102 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A222944 d

end

end A345657.P488560599249892976

/-!
# A345658: Theta series of the canonical laminated lattice LAMBDA_27.

The programs for A345658, there is no canonical definition to state claims against.
-/

/-! ## A345658.P1388370402007454063

`lcm(A353568(A271662(n)), A353880(n))`
-/

namespace A345658.P1388370402007454063
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A353568 (A271662 n).toNat) (A353880 n)

end

end A345658.P1388370402007454063

/-!
# A345659: Theta series of the canonical laminated lattice LAMBDA_28.

The programs for A345659, there is no canonical definition to state claims against.
-/

/-! ## A345659.P10633939089442785108

`and(A201010((n+3)!), A319202(n))`
-/

namespace A345659.P10633939089442785108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A201010 (Nat.factorial (n + 3))) (A319202 n)

end

end A345659.P10633939089442785108

/-!
# A345661: Theta series of the canonical laminated lattice LAMBDA_30.

The programs for A345661, there is no canonical definition to state claims against.
-/

/-! ## A345661.P8089384055608793646

`A282292(n)%A083002(A205801(n))`
-/

namespace A345661.P8089384055608793646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A282292 n) (A083002 (A205801 n).toNat)

end

end A345661.P8089384055608793646

/-!
# A345662: Theta series of the canonical laminated lattice LAMBDA_31.

The programs for A345662, there is no canonical definition to state claims against.
-/

/-! ## A345662.P9973890857384699762

`A006006(n)*A027750(A179517(n+1))`
-/

namespace A345662.P9973890857384699762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006006 n * A027750 (A179517 (n + 1)).toNat

end

end A345662.P9973890857384699762

/-!
# A345663: Numbers k such that A001414(k) is divisible by A007953(k).

The programs for A345663, the canonical program `A345663.P364657323894893647` is in `Seq.B002.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A345663 has offset 1).

The definition of A345663 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 561 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A345663.P364657323894893647

`lt[A001414(n+1)%A007953(n+1), 1]+1`

The canonical program, it is in `Seq.B002.C006`.
-/

namespace A345663

/-- `lt[A001414(n+1)%A007953(n+1), 1]+1` -/
def P364657323894893647.Spec : Prop :=
  ∀ n, (P364657323894893647.a n : ℤ) = A345663 (n + 1)

theorem P364657323894893647.correct : P364657323894893647.Spec := by
  intro n
  simp only [A345663, Nat.add_sub_cancel]

end A345663

/-! ## A345663.P9654404445979559948

`∑[A230447(A289976(n))]`
-/

namespace A345663.P9654404445979559948
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230447 (A289976 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A345663.P9654404445979559948

namespace A345663

/-- `∑[A230447(A289976(n))]` -/
def P9654404445979559948.Spec : Prop :=
  ∀ n, P9654404445979559948.a n = A345663 (n + 1)

end A345663

/-! ## A345663.P7842588729039776954

`record[A333867(A193969(n))]`
-/

namespace A345663.P7842588729039776954
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333867 (A193969 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A345663.P7842588729039776954

namespace A345663

/-- `record[A333867(A193969(n))]` -/
def P7842588729039776954.Spec : Prop :=
  ∀ n, P7842588729039776954.a n = A345663 (n + 1)

end A345663

/-! ## A345663.P13717178737661735575

`A151948(A020130(n))+n`
-/

namespace A345663.P13717178737661735575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151948 (A020130 n).toNat + (n : ℤ)

end

end A345663.P13717178737661735575

namespace A345663

/-- `A151948(A020130(n))+n` -/
def P13717178737661735575.Spec : Prop :=
  ∀ n, P13717178737661735575.a n = A345663 (n + 1)

end A345663

/-! ## A345663.P18228442327204094233

`eq[A131389(A056924(3*n+5)), A374748(2*(n+1))]`
-/

namespace A345663.P18228442327204094233
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131389 (A056924 (3 * n + 5)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374748 (2 * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A345663.P18228442327204094233

namespace A345663

/-- `eq[A131389(A056924(3*n+5)), A374748(2*(n+1))]` -/
def P18228442327204094233.Spec : Prop :=
  ∀ n, (P18228442327204094233.a n : ℤ) = A345663 (n + 1)

end A345663

/-!
# A345665: Ceiling of circumradius of quadrilateral with consecutive prime sides configured as a cyclic quadrilateral.

The programs for A345665, there is no canonical definition to state claims against.
-/

/-! ## A345665.P6574515025735778557

`ceil(sqrt(A133524(n+1)/8))`
-/

namespace A345665.P6574515025735778557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt ((A133524 (n + 1) : ℚ) / 8 : ℝ)⌉

end

end A345665.P6574515025735778557

/-! ## A345665.P9325835714027208945

`ceil(sqrt((A133529(n+2)+A000040(n+1)²)/2)/2)`
-/

namespace A345665.P9325835714027208945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt ((A133529 (n + 2) + A000040 (n + 1) ^ 2 : ℚ) / 2 : ℝ) / 2⌉

end

end A345665.P9325835714027208945

/-! ## A345665.P229233435530794552

`A254075(2*n+3)+A010054(A071810(n+1))`
-/

namespace A345665.P229233435530794552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254075 (2 * n + 3) + A010054 (A071810 (n + 1)).toNat

end

end A345665.P229233435530794552

/-! ## A345665.P10327604821788855622

`A204562(A133524(n+1)-A325186(3*n+4))`
-/

namespace A345665.P10327604821788855622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204562 (A133524 (n + 1) - A325186 (3 * n + 4)).toNat

end

end A345665.P10327604821788855622

/-!
# A345666: Composite numbers whose largest prime substring is greater than the record of all previous terms.

The programs for A345666, there is no canonical definition to state claims against.
-/

/-! ## A345666.P6085719577392788086

`A080470(p?[2*n-A337243(3*(n+1))])`
-/

namespace A345666.P6085719577392788086
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) - A337243 (3 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080470 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A345666.P6085719577392788086

/-!
# A345667: a(n) is the largest prime substring of A345666(n).

The programs for A345667, there is no canonical definition to state claims against.
-/

/-! ## A345667.P2804683005346214951

`record[p?[A330384(n+1)]]`
-/

namespace A345667.P2804683005346214951
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330384 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A345667.P2804683005346214951

/-! ## A345667.P7902604826966409300

`A047814(A345666(n+1))`
-/

namespace A345667.P7902604826966409300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047814 (A345666 (n + 1)).toNat

end

end A345667.P7902604826966409300

/-! ## A345667.P10488078449868563971

`record[A047814(A071904(n+3))]`
-/

namespace A345667.P10488078449868563971
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047814 (A071904 (n + 3)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A345667.P10488078449868563971

/-! ## A345667.P9493893196150406818

`record[A047814(A014076(n+4))]`
-/

namespace A345667.P9493893196150406818
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047814 (A014076 (n + 4)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A345667.P9493893196150406818

/-! ## A345667.P16535928632816878894

`p?[record[A047814(A002808(n+1))]]`
-/

namespace A345667.P16535928632816878894
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047814 (A002808 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A345667.P16535928632816878894

/-! ## A345667.P881325927288333273

`p?[record[A047814(A018252(n+1))]]`
-/

namespace A345667.P881325927288333273
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047814 (A018252 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A345667.P881325927288333273

/-! ## A345667.P7926924574046266003

`p?[record[A047814(n)%A219209(n)]]`
-/

namespace A345667.P7926924574046266003
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A047814 n) (A219209 n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A345667.P7926924574046266003

/-!
# A345668: Last prime minus distance to last prime.

The programs for A345668, the canonical program `A345668.P4398126403795898940` is in `Seq.B003.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A345668 has offset 3).

The definition of A345668 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A175856, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A345668.P4398126403795898940

`A175856(n+2)-1`

The canonical program, it is in `Seq.B003.C004`.
-/

namespace A345668

/-- `A175856(n+2)-1` -/
def P4398126403795898940.Spec : Prop :=
  ∀ n, P4398126403795898940.a n = A345668 (n + 3)

theorem P4398126403795898940.correct : P4398126403795898940.Spec := by
  intro n
  simp only [A345668, Nat.add_sub_cancel]

end A345668

/-! ## A345668.P4821447661632820360

`2*A007917(n+2)-(n+3)`
-/

namespace A345668.P4821447661632820360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A007917 (n + 2) - (n + 3 : ℤ)

end

end A345668.P4821447661632820360

namespace A345668

/-- `2*A007917(n+2)-(n+3)` -/
def P4821447661632820360.Spec : Prop :=
  ∀ n, P4821447661632820360.a n = A345668 (n + 3)

end A345668

/-! ## A345668.P16894583978657818364

`n+3-2*A175851(n+2)`
-/

namespace A345668.P16894583978657818364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 3 : ℤ) - 2 * A175851 (n + 2)

end

end A345668.P16894583978657818364

namespace A345668

/-- `n+3-2*A175851(n+2)` -/
def P16894583978657818364.Spec : Prop :=
  ∀ n, P16894583978657818364.a n = A345668 (n + 3)

theorem P16894583978657818364.correct : P16894583978657818364.Spec := by
  intro n
  simp only [A345668, Nat.add_sub_cancel, A345668.P16894583978657818364.a, A345668.P4398126403795898940.a, A175851, A175851.P13592010490707745070.a, A175856, A175856.P13215807738889420678.a, A061007, A061007.P1649170130193805129.f1, A061007.P1649170130193805129.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A345668

/-! ## A345668.P7062992770101986649

`A037168(A000720(n+2))-(n+1)`
-/

namespace A345668.P7062992770101986649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037168 (A000720 (n + 2)).toNat - (n + 1 : ℤ)

end

end A345668.P7062992770101986649

namespace A345668

/-- `A037168(A000720(n+2))-(n+1)` -/
def P7062992770101986649.Spec : Prop :=
  ∀ n, P7062992770101986649.a n = A345668 (n + 3)

end A345668

/-! ## A345668.P8384904752753440240

`A007917(n+2)-A049711(n+3)`
-/

namespace A345668.P8384904752753440240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007917 (n + 2) - A049711 (n + 3)

end

end A345668.P8384904752753440240

namespace A345668

/-- `A007917(n+2)-A049711(n+3)` -/
def P8384904752753440240.Spec : Prop :=
  ∀ n, P8384904752753440240.a n = A345668 (n + 3)

end A345668

/-! ## A345668.P14056274278712166057

`A013635(n+3)-A033557(n+3)`
-/

namespace A345668.P14056274278712166057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013635 (n + 3) - A033557 (n + 3)

end

end A345668.P14056274278712166057

namespace A345668

/-- `A013635(n+3)-A033557(n+3)` -/
def P14056274278712166057.Spec : Prop :=
  ∀ n, P14056274278712166057.a n = A345668 (n + 3)

end A345668

/-! ## A345668.P1998389857239568549

`A064924(n+2)/A049711(n+3)-A049711(n+3)`
-/

namespace A345668.P1998389857239568549
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A064924 (n + 2) : ℚ) / (A049711 (n + 3) : ℚ) - (A049711 (n + 3) : ℚ)

end

end A345668.P1998389857239568549

namespace A345668

/-- `A064924(n+2)/A049711(n+3)-A049711(n+3)` -/
def P1998389857239568549.Spec : Prop :=
  ∀ n, P1998389857239568549.a n = (A345668 (n + 3) : ℚ)

end A345668

/-! ## A345668.P11967472796068583998

`∑[or(1, Δ[A175856(n+1)])]`
-/

namespace A345668.P11967472796068583998
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175856 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A345668.P11967472796068583998

namespace A345668

/-- `∑[or(1, Δ[A175856(n+1)])]` -/
def P11967472796068583998.Spec : Prop :=
  ∀ n, P11967472796068583998.a n = A345668 (n + 3)

end A345668

/-! ## A345668.P15963689721799306242

`1-2*A064722(n+2)+n`
-/

namespace A345668.P15963689721799306242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - 2 * A064722 (n + 2) + (n : ℤ)

end

end A345668.P15963689721799306242

namespace A345668

/-- `1-2*A064722(n+2)+n` -/
def P15963689721799306242.Spec : Prop :=
  ∀ n, P15963689721799306242.a n = A345668 (n + 3)

theorem P15963689721799306242.correct : P15963689721799306242.Spec := by
  intro n
  simp only [A345668, Nat.add_sub_cancel, A345668.P15963689721799306242.a, A345668.P4398126403795898940.a, A064722, A064722.P17255395012520951887.a, A175856, A175856.P13215807738889420678.a, A175851, A175851.P13592010490707745070.a, A061007, A061007.P1649170130193805129.f1, A061007.P1649170130193805129.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A345668

/-! ## A345668.P12774773369932075977

`A023443(A175856(n+2))`
-/

namespace A345668.P12774773369932075977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A175856 (n + 2)).toNat

end

end A345668.P12774773369932075977

namespace A345668

/-- `A023443(A175856(n+2))` -/
def P12774773369932075977.Spec : Prop :=
  ∀ n, P12774773369932075977.a n = A345668 (n + 3)

end A345668

/-! ## A345668.P8608915538153172742

`n-A060747(A064722(n+2))`
-/

namespace A345668.P8608915538153172742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A060747 (A064722 (n + 2)).toNat

end

end A345668.P8608915538153172742

namespace A345668

/-- `n-A060747(A064722(n+2))` -/
def P8608915538153172742.Spec : Prop :=
  ∀ n, P8608915538153172742.a n = A345668 (n + 3)

end A345668

/-! ## A345668.P16476524806717093997

`2*A136548(n+3)-(n+3)`
-/

namespace A345668.P16476524806717093997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A136548 (n + 3) - (n + 3 : ℤ)

end

end A345668.P16476524806717093997

namespace A345668

/-- `2*A136548(n+3)-(n+3)` -/
def P16476524806717093997.Spec : Prop :=
  ∀ n, P16476524806717093997.a n = A345668 (n + 3)

end A345668

/-! ## A345668.P13014230367803817112

`A136548(n+3)-A175851(n+2)`
-/

namespace A345668.P13014230367803817112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136548 (n + 3) - A175851 (n + 2)

end

end A345668.P13014230367803817112

namespace A345668

/-- `A136548(n+3)-A175851(n+2)` -/
def P13014230367803817112.Spec : Prop :=
  ∀ n, P13014230367803817112.a n = A345668 (n + 3)

end A345668

/-! ## A345668.P11335691106697688875

`A056737(A064924(n+2))`
-/

namespace A345668.P11335691106697688875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056737 (A064924 (n + 2)).toNat

end

end A345668.P11335691106697688875

namespace A345668

/-- `A056737(A064924(n+2))` -/
def P11335691106697688875.Spec : Prop :=
  ∀ n, P11335691106697688875.a n = A345668 (n + 3)

end A345668

/-!
# A345669: Antidiagonal sums of array containing i-bonacci sequences nac(i,n), where nac(i,n) is the n-th i-bonacci number with nac(i,1..i) = 1 (see comments).

The programs for A345669, there is no canonical definition to state claims against.
-/

/-! ## A345669.P2410194734166542271

`A101888(A274160(n))+n`
-/

namespace A345669.P2410194734166542271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101888 (A274160 n).toNat + (n : ℤ)

end

end A345669.P2410194734166542271

/-! ## A345669.P724246834409500141

`A316502(A095766(n+1))+n`
-/

namespace A345669.P724246834409500141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316502 (A095766 (n + 1)).toNat + (n : ℤ)

end

end A345669.P724246834409500141

/-! ## A345669.P14376013762924503170

`record[ceil(A345442(n+1)/A047449(n+1))]`
-/

namespace A345669.P14376013762924503170
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A345442 (n + 1) : ℚ) / (A047449 (n + 1) : ℚ)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A345669.P14376013762924503170

/-! ## A345669.P14428825922521633858

`A003056(A084078(n)+∑{d}[∏{p}[n+1, #], (n+1)/#])`
-/

namespace A345669.P14428825922521633858
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), p

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (SequenceMachineLib.roundAway ((A084078 n : ℚ) + ∑ d ∈ Nat.divisors (f1 n), (n + 1 : ℚ) / (d : ℚ))).toNat

end

end A345669.P14428825922521633858

/-! ## A345669.P18076029772400024753

`A005314(n)+A001221(A189318(n))`
-/

namespace A345669.P18076029772400024753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005314 n + A001221 (A189318 n).toNat

end

end A345669.P18076029772400024753

/-!
# A345671: Inverse permutation to A344792.

The programs for A345671, the canonical program `A345671.P18289345079455578265` is in `Seq.B002.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A345671 has offset 1).

The definition of A345671 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 500 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A345671.P18289345079455578265

`A205591(2*n+1)/A205592(2*(n+1))`

The canonical program, it is in `Seq.B002.C006`.
-/

namespace A345671

/-- `A205591(2*n+1)/A205592(2*(n+1))` -/
def P18289345079455578265.Spec : Prop :=
  ∀ n, P18289345079455578265.a n = (A345671 (n + 1) : ℚ)

end A345671

/-! ## A345671.P930688124864689641

`A205591(2*n+1)/2^A205593(2*(n+1))`
-/

namespace A345671.P930688124864689641
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A205591 (2 * n + 1) : ℚ) / (2 : ℚ) ^ (A205593 (2 * (n + 1)) : ℤ)

end

end A345671.P930688124864689641

namespace A345671

/-- `A205591(2*n+1)/2^A205593(2*(n+1))` -/
def P930688124864689641.Spec : Prop :=
  ∀ n, P930688124864689641.a n = (A345671 (n + 1) : ℚ)

end A345671

/-! ## A345671.P345062566661832746

`A205591(2*n+1)/(A205591(2*(n+1))-A205591(2*n+1))`
-/

namespace A345671.P345062566661832746
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A205591 (2 * n + 1) : ℚ) / (A205591 (2 * (n + 1)) - A205591 (2 * n + 1) : ℚ)

end

end A345671.P345062566661832746

namespace A345671

/-- `A205591(2*n+1)/(A205591(2*(n+1))-A205591(2*n+1))` -/
def P345062566661832746.Spec : Prop :=
  ∀ n, P345062566661832746.a n = (A345671 (n + 1) : ℚ)

end A345671

/-! ## A345671.P10824936176589356969

`A205591(2*n+1)/A205591(3*(n+1))%A205591(3*n+2)`
-/

namespace A345671.P10824936176589356969
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A205591 (2 * n + 1) : ℚ) / (Int.tmod (A205591 (3 * (n + 1))) (A205591 (3 * n + 2)) : ℚ)

end

end A345671.P10824936176589356969

namespace A345671

/-- `A205591(2*n+1)/A205591(3*(n+1))%A205591(3*n+2)` -/
def P10824936176589356969.Spec : Prop :=
  ∀ n, P10824936176589356969.a n = (A345671 (n + 1) : ℚ)

end A345671

/-! ## A345671.P15085998875080038

`lcm(A205591(3*n+2), A205591(3*n+4))/A205591(3*n+4)`
-/

namespace A345671.P15085998875080038
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm (A205591 (3 * n + 2)) (A205591 (3 * n + 4)) : ℚ) / (A205591 (3 * n + 4) : ℚ)

end

end A345671.P15085998875080038

namespace A345671

/-- `lcm(A205591(3*n+2), A205591(3*n+4))/A205591(3*n+4)` -/
def P15085998875080038.Spec : Prop :=
  ∀ n, P15085998875080038.a n = (A345671 (n + 1) : ℚ)

end A345671

/-!
# A345672: a(n) is the least m such that the decimal expansion of n appears in the concatenation of m, ..., m+k for some k >= 0 and Sum_{i = m..m+k-1} A055642(i) < A055642(n) <= Sum_{i = m..m+k} A055642(i).

The programs for A345672, there is no canonical definition to state claims against.
-/

/-! ## A345672.P6062038671484283596

`A333921(n)-char[A116700(n+1)]`
-/

namespace A345672.P6062038671484283596
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116700 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333921 n - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A345672.P6062038671484283596

/-! ## A345672.P15394310860558665761

`A333921(n)-A179801(A028310(n))`
-/

namespace A345672.P15394310860558665761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333921 n - A179801 (A028310 n).toNat

end

end A345672.P15394310860558665761

/-!
# A345673: Number of GP-posets (gluing-parallel posets) with n points.

The programs for A345673, there is no canonical definition to state claims against.
-/

/-! ## A345673.P13423148653639227525

`A054899(A001764(n))+A000088(n)`
-/

namespace A345673.P13423148653639227525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054899 (A001764 n).toNat + A000088 n

end

end A345673.P13423148653639227525

/-!
# A345674: Euler totient function phi(n) - number of primitive roots modulo n.

The programs for A345674, the canonical program `A345674.P823125279381487032` is in `Seq.B014.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A345674 has offset 1).

The definition of A345674 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, A046144, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A345674.P823125279381487032

`A000010(n+1)-A046144(n+1)`

The canonical program, it is in `Seq.B014.C000`.
-/

namespace A345674

/-- `A000010(n+1)-A046144(n+1)` -/
def P823125279381487032.Spec : Prop :=
  ∀ n, P823125279381487032.a n = A345674 (n + 1)

theorem P823125279381487032.correct : P823125279381487032.Spec := by
  intro n
  simp only [A345674, Nat.add_sub_cancel]

end A345674

/-! ## A345674.P2742870671154891786

`Δ[A002088(n)]-A046144(n+1)`
-/

namespace A345674.P2742870671154891786
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002088 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A046144 (n + 1)

end

end A345674.P2742870671154891786

namespace A345674

/-- `Δ[A002088(n)]-A046144(n+1)` -/
def P2742870671154891786.Spec : Prop :=
  ∀ n, P2742870671154891786.a n = A345674 (n + 1)

end A345674

/-! ## A345674.P14909387908454794174

`Δ[A005728(n)]-A046144(n+1)`
-/

namespace A345674.P14909387908454794174
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005728 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A046144 (n + 1)

end

end A345674.P14909387908454794174

namespace A345674

/-- `Δ[A005728(n)]-A046144(n+1)` -/
def P14909387908454794174.Spec : Prop :=
  ∀ n, P14909387908454794174.a n = A345674 (n + 1)

end A345674

/-! ## A345674.P11505642660155454893

`sqrt(A127473(n+1))-A046144(n+1)`
-/

namespace A345674.P11505642660155454893
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A127473 (n + 1) : ℝ) - (A046144 (n + 1) : ℝ)

end

end A345674.P11505642660155454893

namespace A345674

/-- `sqrt(A127473(n+1))-A046144(n+1)` -/
def P11505642660155454893.Spec : Prop :=
  ∀ n, P11505642660155454893.a n = (A345674 (n + 1) : ℝ)

end A345674

/-! ## A345674.P14240800004245888360

`A039649(n+1)-(A046144(n+1)+1)`
-/

namespace A345674.P14240800004245888360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039649 (n + 1) - (A046144 (n + 1) + 1)

end

end A345674.P14240800004245888360

namespace A345674

/-- `A039649(n+1)-(A046144(n+1)+1)` -/
def P14240800004245888360.Spec : Prop :=
  ∀ n, P14240800004245888360.a n = A345674 (n + 1)

theorem P14240800004245888360.correct : P14240800004245888360.Spec := by
  intro n
  simp only [A345674, Nat.add_sub_cancel, A345674.P14240800004245888360.a, A345674.P823125279381487032.a, A000010, A000010.P4673923239450215316.a, A039649, A039649.P16717312505280968063.a, A046144, A046144.P10723392011678918045.a, A003557, A003557.P6364735403900941810.a, A046072, A046072.P3486266862875082890.f1, A046072.P3486266862875082890.a, A173557, A173557.P15666735857375843373.a, A001221, A001221.P10258181745752134128.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A023900, A023900.P6802385856234332486.f1, A023900.P6802385856234332486.a, A060594, A060594.P2818484457649056228.f1, A060594.P2818484457649056228.a, A005089, A005089.P4329807401814625450.f1, A005089.P4329807401814625450.a, A005091, A005091.P2802037195389751204.f1, A005091.P2802037195389751204.a, A059841, A059841.P7264174615531153985.a, A114643, A114643.P3385208476335884825.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A345674

/-! ## A345674.P14855406121907431003

`A067541(A005408(n))-A046144(n+1)`
-/

namespace A345674.P14855406121907431003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067541 (A005408 n).toNat - A046144 (n + 1)

end

end A345674.P14855406121907431003

namespace A345674

/-- `A067541(A005408(n))-A046144(n+1)` -/
def P14855406121907431003.Spec : Prop :=
  ∀ n, P14855406121907431003.a n = A345674 (n + 1)

end A345674

/-! ## A345674.P13723092711284754100

`A067541(A267872(n))-A046144(n+1)`
-/

namespace A345674.P13723092711284754100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067541 (A267872 n).toNat - A046144 (n + 1)

end

end A345674.P13723092711284754100

namespace A345674

/-- `A067541(A267872(n))-A046144(n+1)` -/
def P13723092711284754100.Spec : Prop :=
  ∀ n, P13723092711284754100.a n = A345674 (n + 1)

end A345674

/-! ## A345674.P16215713071123942100

`A029578(A039649(n+1)-A046144(n+1))`
-/

namespace A345674.P16215713071123942100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029578 (A039649 (n + 1) - A046144 (n + 1)).toNat

end

end A345674.P16215713071123942100

namespace A345674

/-- `A029578(A039649(n+1)-A046144(n+1))` -/
def P16215713071123942100.Spec : Prop :=
  ∀ n, P16215713071123942100.a n = A345674 (n + 1)

end A345674

/-! ## A345674.P7359053799419567433

`A002322(n+1)*A034380(n+1)-A046144(n+1)`
-/

namespace A345674.P7359053799419567433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002322 (n + 1) * A034380 (n + 1) - A046144 (n + 1)

end

end A345674.P7359053799419567433

namespace A345674

/-- `A002322(n+1)*A034380(n+1)-A046144(n+1)` -/
def P7359053799419567433.Spec : Prop :=
  ∀ n, P7359053799419567433.a n = A345674 (n + 1)

end A345674

/-! ## A345674.P15018159602160462985

`A054523(A000124(n))-A046144(n+1)`
-/

namespace A345674.P15018159602160462985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054523 (A000124 n).toNat - A046144 (n + 1)

end

end A345674.P15018159602160462985

namespace A345674

/-- `A054523(A000124(n))-A046144(n+1)` -/
def P15018159602160462985.Spec : Prop :=
  ∀ n, P15018159602160462985.a n = A345674 (n + 1)

end A345674

/-!
# A345676: Number of closed-loop self-avoiding paths on a 2-dimensional square lattice where each path consists of steps with successive lengths equal to the square numbers, from 1 to n^2.

The programs for A345676, there is no canonical definition to state claims against.
-/

/-! ## A345676.P205358726731171111

`A000755(A208673(lt[∑{d}[n, #], 2*n]))`
-/

namespace A345676.P205358726731171111
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n), d

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000755 (A208673 (SequenceMachineLib.nth (fun j => f1 j < f3 j) n)).toNat

end

end A345676.P205358726731171111

/-! ## A345676.P10764312972376577802

`A000755(A208673(lt[∑{d}[n, #]/2, n]))`
-/

namespace A345676.P10764312972376577802
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ d ∈ Nat.divisors (f2 n), d : ℕ) : ℚ) / 2

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000755 (A208673 (SequenceMachineLib.nth (fun j => f1 j < (f3 j : ℚ)) n)).toNat

end

end A345676.P10764312972376577802

/-! ## A345676.P7331673923782603649

`A000755(A208673(lt[∑{d}[n, #]-n, n]))`
-/

namespace A345676.P7331673923782603649
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ d ∈ Nat.divisors (f2 n), d : ℕ) : ℤ) - (n : ℤ)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000755 (A208673 (SequenceMachineLib.nth (fun j => f1 j < (f3 j : ℤ)) n)).toNat

end

end A345676.P7331673923782603649

/-! ## A345676.P12398073333440300764

`A151813(A213744(n))%A325552(n)`
-/

namespace A345676.P12398073333440300764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A151813 (A213744 n).toNat) (A325552 n)

end

end A345676.P12398073333440300764

/-! ## A345676.P16536655784296812612

`A099306(A113263(n+1)^A008680(n))`
-/

namespace A345676.P16536655784296812612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099306 (SequenceMachineLib.roundAway ((A113263 (n + 1) : ℚ) ^ (A008680 n : ℤ))).toNat

end

end A345676.P16536655784296812612

/-!
# A345677: Total number of nodes of the binary decision diagrams (BDDs) for all Boolean functions of n variables.

The programs for A345677, there is no canonical definition to state claims against.
-/

/-! ## A345677.P15131396081888319131

`A345678(n)+A065035(n)`
-/

namespace A345677.P15131396081888319131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345678 n + A065035 n

end

end A345677.P15131396081888319131

/-! ## A345677.P2616389206532332012

`A000058(n)+A345678(n)-2`
-/

namespace A345677.P2616389206532332012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000058 n + (A345678 n - 2)

end

end A345677.P2616389206532332012

/-!
# A345678: Total number of nodes of the zero-suppressed decision diagrams (ZDDs) for all Boolean functions of n variables.

The programs for A345678, there is no canonical definition to state claims against.
-/

/-! ## A345678.P9689666116413708443

`A345677(n)-A000058(n)+2`
-/

namespace A345678.P9689666116413708443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345677 n - A000058 n + 2

end

end A345678.P9689666116413708443

/-! ## A345678.P6033486094250703367

`A345677(n)-A065035(n)`
-/

namespace A345678.P6033486094250703367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345677 n - A065035 n

end

end A345678.P6033486094250703367

/-!
# A345680: Nonnegative integers whose trajectory under iteration of taking the absolute value of the alternating sum of the squares of the digits (A257588) includes zero.

The programs for A345680, there is no canonical definition to state claims against.
-/

/-! ## A345680.P7975261931319663508

`eq[0, n*A257796(A028310(n))]`
-/

namespace A345680.P7975261931319663508
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A257796 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A345680.P7975261931319663508

/-! ## A345680.P10595735201346964433

`record[(n+1)*A005369(A257796(n+1))]`
-/

namespace A345680.P10595735201346964433
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A005369 (A257796 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A345680.P10595735201346964433

/-! ## A345680.P5051306555517057432

`record[(n+1)%gcd(A005843(n), A257796(n+1))]`
-/

namespace A345680.P5051306555517057432
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) % Int.gcd (A005843 n) (A257796 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A345680.P5051306555517057432

/-! ## A345680.P16598387783748657355

`eq[A000007(n), A257796(A028310(n))]`
-/

namespace A345680.P16598387783748657355
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257796 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A345680.P16598387783748657355

/-! ## A345680.P6771580649562412703

`lt[A257796(A028310(n)), A054977(n)]`
-/

namespace A345680.P6771580649562412703
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257796 (A028310 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054977 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A345680.P6771580649562412703

/-! ## A345680.P8187491275550952293

`eq[A000007(n), A257796(A000007(n)+n)]`
-/

namespace A345680.P8187491275550952293
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257796 (A000007 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A345680.P8187491275550952293

/-!
# A345681: a(0) = 0; for n >= 1, a(n) = A004185(a(n-1)+n).

The programs for A345681, there is no canonical definition to state claims against.
-/

/-! ## A345681.P15760110785381944474

`A004185(a(n-1)+n)` with `a(0)=0, a(1)=1`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A345681.P15760110785381944474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  A004185 (a (n - 1) + (n : ℤ)).toNat

end

end A345681.P15760110785381944474

/-! ## A345681.P11816005027804668035

`A004086(A004186(a(n-1)+n))` with `a(0)=0`
-/

namespace A345681.P11816005027804668035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A004086 (A004186 (a (n - 1) + (n : ℤ)).toNat).toNat

end

end A345681.P11816005027804668035

/-! ## A345681.P4130884029865538236

`A004086(A004186(n-ceil(-a(n-1))))` with `a(0)=0`

`ceil` is left out, it is the identity on integers.
-/

namespace A345681.P4130884029865538236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A004086 (A004186 ((n : ℤ) - (-a (n - 1))).toNat).toNat

end

end A345681.P4130884029865538236

/-!
# A345682: a(n) = n! * Sum_{k=1..n} 1/(k*floor(n/k)).

The programs for A345682, there is no canonical definition to state claims against.
-/

/-! ## A345682.P7009636960485339673

`A226233(A193961(2*n)+A155604(n))`
-/

namespace A345682.P7009636960485339673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226233 (A193961 (2 * n) + A155604 n).toNat

end

end A345682.P7009636960485339673

/-! ## A345682.P6978567533574579872

`xor(A004526(A030853(n+1)), A052745(n))`
-/

namespace A345682.P6978567533574579872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A004526 (A030853 (n + 1)).toNat) (A052745 n)

end

end A345682.P6978567533574579872

/-!
# A345683: a(n) = n! * Sum_{k=1..n} 1/floor(n/k).

The programs for A345683, there is no canonical definition to state claims against.
-/

/-! ## A345683.P1894048959055755758

`(A195185(A101265(n+1))+A109004(n))*A329702(n)`
-/

namespace A345683.P1894048959055755758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A195185 (A101265 (n + 1)).toNat + A109004 n) * A329702 n

end

end A345683.P1894048959055755758

/-!
# A345684: a(n) = n! * Sum_{k=1..n} k/floor(n/k).

The programs for A345684, there is no canonical definition to state claims against.
-/

/-! ## A345684.P9811379358929294167

`A310457(A067273(n))+n`
-/

namespace A345684.P9811379358929294167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310457 (A067273 n).toNat + (n : ℤ)

end

end A345684.P9811379358929294167

/-!
# A345686: a(n) = n! * Sum_{k=1..n} n/floor(n/k)^2.

The programs for A345686, there is no canonical definition to state claims against.
-/

/-! ## A345686.P577203935745006670

`A160181(n)*A343609(A149536(n+3))`
-/

namespace A345686.P577203935745006670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160181 n * A343609 (A149536 (n + 3)).toNat

end

end A345686.P577203935745006670

/-!
# A345687: For 1<=x<=n, 1<=y<=n, write gcd(x,y) = u*x+v*y with u,v minimal; a(n) = n^4*s, where s is the population variance of the values of u.

The programs for A345687, there is no canonical definition to state claims against.
-/

/-! ## A345687.P4719138351310286534

`A006566(n)+A002372(A090409(n))`
-/

namespace A345687.P4719138351310286534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006566 n + A002372 (A090409 n).toNat

end

end A345687.P4719138351310286534

/-!
# A345688: For 1<=x<=n, 1<=y<=n, write gcd(x,y) = u*x+v*y with u,v minimal; a(n) = n^4*s, where s is the population variance of the values of v.

The programs for A345688, there is no canonical definition to state claims against.
-/

/-! ## A345688.P11740671883472296168

`A263473(n+1)-A002260(A263474(n+1))`
-/

namespace A345688.P11740671883472296168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263473 (n + 1) - A002260 (A263474 (n + 1)).toNat

end

end A345688.P11740671883472296168

/-!
# A345689: For 1<=x<=n, 1<=y<=n, write gcd(x,y) = u*x+v*y with u,v minimal; a(n) = n^4*s, where s is the population variance of the values of |u|.

The programs for A345689, there is no canonical definition to state claims against.
-/

/-! ## A345689.P4216278098065705137

`A357628(A306831(n))+A014105(n)`
-/

namespace A345689.P4216278098065705137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357628 (A306831 n).toNat + A014105 n

end

end A345689.P4216278098065705137

/-!
# A345690: For 1<=x<=n, 1<=y<=n, write gcd(x,y) = u*x+v*y with u,v minimal; a(n) = n^4*s, where s is the population variance of the values of |v|.

The programs for A345690, there is no canonical definition to state claims against.
-/

/-! ## A345690.P4229731629809164726

`A054404(A164298(n))`
-/

namespace A345690.P4229731629809164726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054404 (A164298 n).toNat

end

end A345690.P4229731629809164726

/-!
# A345691: For 1<=x<=n, 1<=y<=n, write gcd(x,y) = u*x+v*y with u,v minimal; a(n) = n^4*s, where s is the population variance of the values of u^2+v^2.

The programs for A345691, there is no canonical definition to state claims against.
-/

/-! ## A345691.P17722494095585276585

`A108874(A000041(A000108(n)))`
-/

namespace A345691.P17722494095585276585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108874 (A000041 (A000108 n).toNat).toNat

end

end A345691.P17722494095585276585

/-!
# A345692: For 1<=x<=n, 1<=y<=n with gcd(x,y)=1, write 1 = gcd(x,y) = u*x+v*y with u,v minimal; a(n) = m^2*s, where s is the population variance of the values of u and m is the number of such values.

The programs for A345692, there is no canonical definition to state claims against.
-/

/-! ## A345692.P11121167800593724102

`A316774(A229451(n))*A316774(n)`
-/

namespace A345692.P11121167800593724102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316774 (A229451 n).toNat * A316774 n

end

end A345692.P11121167800593724102

/-!
# A345693: For 1<=x<=n, 1<=y<=n with gcd(x,y)=1, write 1 = gcd(x,y) = u*x+v*y with u,v minimal; a(n) = m^2*s, where s is the population variance of the values of v and m is the number of such values.

The programs for A345693, there is no canonical definition to state claims against.
-/

/-! ## A345693.P3950412490044697656

`filter[A241824(3*n), A383302(#)]`
-/

namespace A345693.P3950412490044697656
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241824 (3 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A383302 (f1 j).toNat = 1) n)

end

end A345693.P3950412490044697656

/-!
# A345694: For 1<=x<=n, 1<=y<=n with gcd(x,y)=1, write 1 = gcd(x,y) = u*x+v*y with u,v minimal; a(n) = m^2*s, where s is the population variance of the values of |u| and m is the number of such values.

The programs for A345694, there is no canonical definition to state claims against.
-/

/-! ## A345694.P11943832342101748986

`A102125(n+3)*A182850(A057088(n))`
-/

namespace A345694.P11943832342101748986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102125 (n + 3) * A182850 (A057088 n).toNat

end

end A345694.P11943832342101748986

/-! ## A345694.P16588470119774036353

`A070194(2*(n+3))*A330110(A174191(n))`
-/

namespace A345694.P16588470119774036353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070194 (2 * (n + 3)) * A330110 (A174191 n).toNat

end

end A345694.P16588470119774036353

/-!
# A345695: For 1<=x<=n, 1<=y<=n with gcd(x,y)=1, write 1 = gcd(x,y) = u*x+v*y with u,v minimal; a(n) = m^2*s, where s is the population variance of the values of |v| and m is the number of such values.

The programs for A345695, there is no canonical definition to state claims against.
-/

/-! ## A345695.P6630634208958265356

`A047212(A120110(n)^A030272(n))`
-/

namespace A345695.P6630634208958265356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047212 (SequenceMachineLib.roundAway ((A120110 n : ℚ) ^ (A030272 n : ℤ))).toNat

end

end A345695.P6630634208958265356

/-! ## A345695.P16148288468055099125

`A047212(C(A120110(n), A030272(n)))`
-/

namespace A345695.P16148288468055099125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047212 (Nat.choose (A120110 n).toNat (A030272 n).toNat)

end

end A345695.P16148288468055099125

/-!
# A345696: For 1<=x<=n, 1<=y<=n with gcd(x,y)=1, write 1 = gcd(x,y) = u*x+v*y with u,v minimal; a(n) = m^2*s, where s is the population variance of the values of u^2+v^2 and m is the number of such values.

The programs for A345696, there is no canonical definition to state claims against.
-/

/-! ## A345696.P16526833775514310595

`A144740((n+1)^(n+1)+2)`
-/

namespace A345696.P16526833775514310595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144740 ((n + 1) ^ (n + 1) + 2)

end

end A345696.P16526833775514310595

/-!
# A345697: Expansion of the e.g.f. sqrt(1 / (2*exp(x) - 2*x*exp(x) - 1)).

The programs for A345697, there is no canonical definition to state claims against.
-/

/-! ## A345697.P12335242664407399852

`A004525(A328007(n)+A000166(n))`
-/

namespace A345697.P12335242664407399852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A328007 n + A000166 n).toNat

end

end A345697.P12335242664407399852

/-! ## A345697.P15485312062381522855

`A004526(A328007(n)+A000166(n))`
-/

namespace A345697.P15485312062381522855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A328007 n + A000166 n).toNat

end

end A345697.P15485312062381522855

/-! ## A345697.P13696473474997049160

`A025480(A328007(n)+A000166(n))`
-/

namespace A345697.P13696473474997049160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025480 (A328007 n + A000166 n).toNat

end

end A345697.P13696473474997049160

/-! ## A345697.P6670143968021167582

`A026741(A328007(n)+A000166(n))`
-/

namespace A345697.P6670143968021167582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (A328007 n + A000166 n).toNat

end

end A345697.P6670143968021167582

/-!
# A345698: Sierpiński problem in base 5: a(n) is the smallest k >= 0 such that (2*n)*5^k + 1 is prime, or -1 if no such k exists.

The programs for A345698, there is no canonical definition to state claims against.
-/

/-! ## A345698.P13898848149760365777

`A377365(n+1)%A053277(A053205(2*n+3))`
-/

namespace A345698.P13898848149760365777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A377365 (n + 1)) (A053277 (A053205 (2 * n + 3)).toNat)

end

end A345698.P13898848149760365777

/-! ## A345698.P334024684932168814

`A040076(2*(n+1))^A256914(A052942(n))`
-/

namespace A345698.P334024684932168814
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A040076 (2 * (n + 1)) : ℚ) ^ (A256914 (A052942 n).toNat : ℤ)

end

end A345698.P334024684932168814

/-! ## A345698.P4650568341648966396

`A040076(2*(n+1))^A088617(A320079(n))`
-/

namespace A345698.P4650568341648966396
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A040076 (2 * (n + 1)) : ℚ) ^ (A088617 (A320079 n).toNat : ℤ)

end

end A345698.P4650568341648966396

/-! ## A345698.P11019728354726985894

`A040076(2*(n+1))^A032008(A226629(n+1))`
-/

namespace A345698.P11019728354726985894
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A040076 (2 * (n + 1)) : ℚ) ^ (A032008 (A226629 (n + 1)).toNat : ℤ)

end

end A345698.P11019728354726985894

/-! ## A345698.P9972153871980845218

`A010879(A040076(2*(n+1))^A339564(n+2))`
-/

namespace A345698.P9972153871980845218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010879 (SequenceMachineLib.roundAway ((A040076 (2 * (n + 1)) : ℚ) ^ (A339564 (n + 2) : ℤ))).toNat

end

end A345698.P9972153871980845218

/-!
# A345699: Multiplicative with a(p) = a(p-1) and a(p^e) = a(p) + a(e) if e>1.

The programs for A345699, there is no canonical definition to state claims against.
-/

/-! ## A345699.P8836770731731784652

`A001221(A000034(n)+∑[A216633(n+1)])`
-/

namespace A345699.P8836770731731784652
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216633 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A000034 n + ∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A345699.P8836770731731784652

/-! ## A345699.P18058356255196559917

`A043278(A000040(n+1)*A237606(n+1))`
-/

namespace A345699.P18058356255196559917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043278 (A000040 (n + 1) * A237606 (n + 1)).toNat

end

end A345699.P18058356255196559917

/-! ## A345699.P8734204934880420503

`A196563(lcm(A342262(n+1), A342262(n+4)))`
-/

namespace A345699.P8734204934880420503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196563 (Int.lcm (A342262 (n + 1)) (A342262 (n + 4)))

end

end A345699.P8734204934880420503

