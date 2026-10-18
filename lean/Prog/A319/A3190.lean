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
import Seq.B000.C011
import Seq.B000.C013
import Seq.B000.C014
import Seq.B000.C015
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C024
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
import Seq.B006.C001
import Seq.B006.C002
import Seq.B007.C000
import Seq.B007.C001
import Seq.B008.C000
import Seq.B008.C001
import Seq.B009.C000
import Seq.B010.C000
import Seq.B011.C000
import Seq.B011.C001
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
# A319000: Regular triangle where T(n,k) is the number of finite multisets of positive integers with product n and sum k.

The programs for A319000, there is no canonical definition to state claims against.
-/

/-! ## A319000.P224488773935868854

`A318950(n+1)+A010815(A152751(n))`
-/

namespace A319000.P224488773935868854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318950 (n + 1) + A010815 (A152751 n).toNat

end

end A319000.P224488773935868854

/-! ## A319000.P5420710010048090848

`A223529(n+1)%p?[A000377(n)]`
-/

namespace A319000.P5420710010048090848
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000377 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A223529 (n + 1)) (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A319000.P5420710010048090848

/-! ## A319000.P86576243705475403

`A134451(C(A035343(n), A239103(n)))`
-/

namespace A319000.P86576243705475403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134451 (Nat.choose (A035343 n).toNat (A239103 n).toNat)

end

end A319000.P86576243705475403

/-! ## A319000.P6688435723695043215

`C(A002033(A140999(n+1)), A131252(n))`
-/

namespace A319000.P6688435723695043215
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A002033 (A140999 (n + 1)).toNat).toNat (A131252 n).toNat

end

end A319000.P6688435723695043215

/-! ## A319000.P2854332010767917579

`C(A140995(A191228(3*n+2)), A143291(n+2))`
-/

namespace A319000.P2854332010767917579
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A140995 (A191228 (3 * n + 2)).toNat).toNat (A143291 (n + 2)).toNat

end

end A319000.P2854332010767917579

/-!
# A319001: Number of ordered multiset partitions of integer partitions of n where the sequence of GCDs of the partitions is weakly increasing.

The programs for A319001, there is no canonical definition to state claims against.
-/

/-! ## A319001.P6396719499020540893

`A226143(A149809(n))`
-/

namespace A319001.P6396719499020540893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226143 (A149809 n).toNat

end

end A319001.P6396719499020540893

/-! ## A319001.P14881599465538574769

`A105098(A018242(n))+A034691(n)`
-/

namespace A319001.P14881599465538574769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105098 (A018242 n).toNat + A034691 n

end

end A319001.P14881599465538574769

/-! ## A319001.P9062280920482958877

`A225638(A000957(n))+A001333(n)`
-/

namespace A319001.P9062280920482958877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225638 (A000957 n).toNat + A001333 n

end

end A319001.P9062280920482958877

/-!
# A319002: Number of ordered factorizations of n where the sequence of GCDs of prime indices (A289508) of the factors is weakly increasing.

The programs for A319002, there is no canonical definition to state claims against.
-/

/-! ## A319002.P14879630551628090125

`A336551(A317508(2*n+5))+A317545(n+1)`
-/

namespace A319002.P14879630551628090125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336551 (A317508 (2 * n + 5)).toNat + A317545 (n + 1)

end

end A319002.P14879630551628090125

/-! ## A319002.P16359936939731291467

`A317545(n+1)+A178333(A034543(n+1))`
-/

namespace A319002.P16359936939731291467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317545 (n + 1) + A178333 (A034543 (n + 1)).toNat

end

end A319002.P16359936939731291467

/-! ## A319002.P8164803740684536205

`A317545(n+1)+A185284(A003960(A135135(n+1)))`
-/

namespace A319002.P8164803740684536205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317545 (n + 1) + A185284 (A003960 (A135135 (n + 1)).toNat).toNat

end

end A319002.P8164803740684536205

/-! ## A319002.P4198129563418705523

`A317545(n+1)+A199238(A057102(n+1))`
-/

namespace A319002.P4198129563418705523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317545 (n + 1) + A199238 (A057102 (n + 1)).toNat

end

end A319002.P4198129563418705523

/-! ## A319002.P18314446845523853619

`A317545(n+1)+A235145(A080510(n+1))`
-/

namespace A319002.P18314446845523853619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317545 (n + 1) + A235145 (A080510 (n + 1)).toNat

end

end A319002.P18314446845523853619

/-!
# A319003: Number of ordered multiset partitions of integer partitions of n where the sequence of LCMs of the blocks is weakly increasing.

The programs for A319003, there is no canonical definition to state claims against.
-/

/-! ## A319003.P18402226209157206712

`A141199(n)-A344310(A324088(n+1))`
-/

namespace A319003.P18402226209157206712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141199 n - A344310 (A324088 (n + 1)).toNat

end

end A319003.P18402226209157206712

/-! ## A319003.P10337021318921629013

`A141199(n)+A014135(A014143(n))`
-/

namespace A319003.P10337021318921629013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141199 n + A014135 (A014143 n).toNat

end

end A319003.P10337021318921629013

/-! ## A319003.P11211903241220215894

`A141199(n)-A091247(A015459(n))`
-/

namespace A319003.P11211903241220215894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141199 n - A091247 (A015459 n).toNat

end

end A319003.P11211903241220215894

/-! ## A319003.P4597368392600046677

`A141199(n)-A185284(A000124(n))`
-/

namespace A319003.P4597368392600046677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141199 n - A185284 (A000124 n).toNat

end

end A319003.P4597368392600046677

/-! ## A319003.P17394445015419259483

`A141199(n)-A262900(A052530(n))`
-/

namespace A319003.P17394445015419259483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141199 n - A262900 (A052530 n).toNat

end

end A319003.P17394445015419259483

/-!
# A319004: Number of ordered factorizations of n where the sequence of LCMs of the prime indices (A290103) of each factor is weakly increasing.

The programs for A319004, there is no canonical definition to state claims against.
-/

/-! ## A319004.P1987967847641703340

`A317545(A331580(n+1))-char[A167283(2*(n+1))]`
-/

namespace A319004.P1987967847641703340
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167283 (2 * (n + 1))

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317545 (A331580 (n + 1)).toNat - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A319004.P1987967847641703340

/-! ## A319004.P17920980963393261435

`A093178(A039593(n+1))*A317545(A331580(n+1))`
-/

namespace A319004.P17920980963393261435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093178 (A039593 (n + 1)).toNat * A317545 (A331580 (n + 1)).toNat

end

end A319004.P17920980963393261435

/-! ## A319004.P10012080960206797498

`A057427(A097247(n+1))*A317545(A331580(n+1))`
-/

namespace A319004.P10012080960206797498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (A097247 (n + 1)).toNat * A317545 (A331580 (n + 1)).toNat

end

end A319004.P10012080960206797498

/-! ## A319004.P5225082083783759477

`A057427(A175027(n)+1)*A317545(A331580(n+1))`
-/

namespace A319004.P5225082083783759477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (A175027 n + 1).toNat * A317545 (A331580 (n + 1)).toNat

end

end A319004.P5225082083783759477

/-! ## A319004.P10243317351576837611

`A057427(A167678(n))*A317545(A225891(n+1))`
-/

namespace A319004.P10243317351576837611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (A167678 n).toNat * A317545 (A225891 (n + 1)).toNat

end

end A319004.P10243317351576837611

/-! ## A319004.P11575739898934047113

`A317545(A225891(n+1))+A000007(A197957(n+1))`
-/

namespace A319004.P11575739898934047113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317545 (A225891 (n + 1)).toNat + A000007 (A197957 (n + 1)).toNat

end

end A319004.P11575739898934047113

/-! ## A319004.P12445675823210237427

`A001222(A181956(n))*A317545(A225891(n+1))`
-/

namespace A319004.P12445675823210237427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A181956 n).toNat * A317545 (A225891 (n + 1)).toNat

end

end A319004.P12445675823210237427

/-! ## A319004.P17750673154383848635

`A317545(A225891(n+1))+A008683(A016970(n))`
-/

namespace A319004.P17750673154383848635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317545 (A225891 (n + 1)).toNat + A008683 (A016970 n).toNat

end

end A319004.P17750673154383848635

/-!
# A319005: Number of integer partitions of n whose product of parts is >= n.

The programs for A319005, there is no canonical definition to state claims against.
-/

/-! ## A319005.P7657472488150606674

`A114324(abs(1-n))+A002865(n)`
-/

namespace A319005.P7657472488150606674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114324 |1 - (n : ℤ)|.toNat + A002865 n

end

end A319005.P7657472488150606674

/-! ## A319005.P608620412017902826

`A114324(A028310(n))+A001055(A028310(n))`
-/

namespace A319005.P608620412017902826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114324 (A028310 n).toNat + A001055 (A028310 n).toNat

end

end A319005.P608620412017902826

/-! ## A319005.P685374862630915201

`A277692(A187829(n+1))+A114324(n)`
-/

namespace A319005.P685374862630915201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277692 (A187829 (n + 1)).toNat + A114324 n

end

end A319005.P685374862630915201

/-! ## A319005.P13570945278132374438

`A277692(n+1)+A001055(2^n)-A096276(n)`
-/

namespace A319005.P13570945278132374438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277692 (n + 1) + (A001055 (2 ^ n) - A096276 n)

end

end A319005.P13570945278132374438

/-! ## A319005.P4028329292201944317

`A277692(n+1)+A000688(A000079(n))-A096276(n)`
-/

namespace A319005.P4028329292201944317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277692 (n + 1) + (A000688 (A000079 n).toNat - A096276 n)

end

end A319005.P4028329292201944317

/-!
# A319006: Sum of the next n positive integers repeated (A008619).

The programs for A319006, the canonical program `A319006.P11833471682432189198` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A319006 has offset 1).

The definition of A319006 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A319006.P17695436671118898225

`A319007(n+1)+n+1`
-/

namespace A319006.P17695436671118898225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319007 (n + 1) + (n + 1 : ℤ)

end

end A319006.P17695436671118898225

namespace A319006

/-- `A319007(n+1)+n+1` -/
def P17695436671118898225.Spec : Prop :=
  ∀ n, P17695436671118898225.a n = A319006 (n + 1)

end A319006

/-! ## A319006.P11833471682432189198

`∑[floor(3/2*∑[n])+1]`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A319006

/-- `∑[floor(3/2*∑[n])+1]` -/
def P11833471682432189198.Spec : Prop :=
  ∀ n, P11833471682432189198.a n = A319006 (n + 1)

theorem P11833471682432189198.correct : P11833471682432189198.Spec := by
  intro n
  simp only [A319006, Nat.add_sub_cancel]

end A319006

/-! ## A319006.P1696059635186615257

`Δ[floor(((C(n+1, 2)+1)/2)²)]`
-/

namespace A319006.P1696059635186615257
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((Nat.choose (n + 1) 2 + 1 : ℚ) / 2) ^ 2⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A319006.P1696059635186615257

namespace A319006

/-- `Δ[floor(((C(n+1, 2)+1)/2)²)]` -/
def P1696059635186615257.Spec : Prop :=
  ∀ n, P1696059635186615257.a n = A319006 (n + 1)

end A319006

/-! ## A319006.P11127116049975578049

`∑[∑[∑[and(2, n)!]-1]]+n+1`
-/

namespace A319006.P11127116049975578049
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (Nat.land 2 n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f3 j : ℕ) : ℤ) - 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n + 1 : ℤ)

end

end A319006.P11127116049975578049

namespace A319006

/-- `∑[∑[∑[and(2, n)!]-1]]+n+1` -/
def P11127116049975578049.Spec : Prop :=
  ∀ n, P11127116049975578049.a n = A319006 (n + 1)

end A319006

/-! ## A319006.P18221327908760329502

`ceil(A094792(n)/4)`
-/

namespace A319006.P18221327908760329502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A094792 n : ℚ) / 4⌉

end

end A319006.P18221327908760329502

namespace A319006

/-- `ceil(A094792(n)/4)` -/
def P18221327908760329502.Spec : Prop :=
  ∀ n, P18221327908760329502.a n = A319006 (n + 1)

end A319006

/-! ## A319006.P17119465360503793165

`ceil((A212747(n)+n)/2)`
-/

namespace A319006.P17119465360503793165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A212747 n + (n : ℤ) : ℚ) / 2⌉

end

end A319006.P17119465360503793165

namespace A319006

/-- `ceil((A212747(n)+n)/2)` -/
def P17119465360503793165.Spec : Prop :=
  ∀ n, P17119465360503793165.a n = A319006 (n + 1)

end A319006

/-! ## A319006.P13392790466873743922

`∑[n+1]+∑[A231559(n)]`
-/

namespace A319006.P13392790466873743922
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231559 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) + ∑ j ∈ Finset.range (n + 1), f2 j

end

end A319006.P13392790466873743922

namespace A319006

/-- `∑[n+1]+∑[A231559(n)]` -/
def P13392790466873743922.Spec : Prop :=
  ∀ n, P13392790466873743922.a n = A319006 (n + 1)

end A319006

/-! ## A319006.P5897191533700633193

`Δ[floor((A000217(n)+1)²/4)]`
-/

namespace A319006.P5897191533700633193
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((A000217 n + 1) ^ 2 : ℚ) / 4⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A319006.P5897191533700633193

namespace A319006

/-- `Δ[floor((A000217(n)+1)²/4)]` -/
def P5897191533700633193.Spec : Prop :=
  ∀ n, P5897191533700633193.a n = A319006 (n + 1)

end A319006

/-! ## A319006.P7897337017543380128

`a(n-1)+A281026(n)+1` with `a(0)=1`
-/

namespace A319006.P7897337017543380128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (A281026 n + 1)

end

end A319006.P7897337017543380128

namespace A319006

/-- `a(n-1)+A281026(n)+1` -/
def P7897337017543380128.Spec : Prop :=
  ∀ n, P7897337017543380128.a n = A319006 (n + 1)

end A319006

/-! ## A319006.P16517980985240476265

`∑[∑[A047273(n+1)]]+n+1`
-/

namespace A319006.P16517980985240476265
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047273 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n + 1 : ℤ)

end

end A319006.P16517980985240476265

namespace A319006

/-- `∑[∑[A047273(n+1)]]+n+1` -/
def P16517980985240476265.Spec : Prop :=
  ∀ n, P16517980985240476265.a n = A319006 (n + 1)

end A319006

/-! ## A319006.P9508431872279103674

`A212747(n)-A319007(n+1)`
-/

namespace A319006.P9508431872279103674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212747 n - A319007 (n + 1)

end

end A319006.P9508431872279103674

namespace A319006

/-- `A212747(n)-A319007(n+1)` -/
def P9508431872279103674.Spec : Prop :=
  ∀ n, P9508431872279103674.a n = A319006 (n + 1)

end A319006

/-! ## A319006.P10578811098479038101

`Δ[round((A000124(n)/2)²)]`
-/

namespace A319006.P10578811098479038101
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (((A000124 n : ℚ) / 2) ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A319006.P10578811098479038101

namespace A319006

/-- `Δ[round((A000124(n)/2)²)]` -/
def P10578811098479038101.Spec : Prop :=
  ∀ n, P10578811098479038101.a n = A319006 (n + 1)

end A319006

/-! ## A319006.P8193774130489747526

`ceil((Δ[A000537(n)]+2*n)/4)`
-/

namespace A319006.P8193774130489747526
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000537 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(f1 (n + 1) - f1 n + (2 * n : ℤ) : ℚ) / 4⌉

end

end A319006.P8193774130489747526

namespace A319006

/-- `ceil((Δ[A000537(n)]+2*n)/4)` -/
def P8193774130489747526.Spec : Prop :=
  ∀ n, P8193774130489747526.a n = A319006 (n + 1)

end A319006

/-! ## A319006.P86538304956983596

`A253012(3*n)+a(n-1)` with `a(0)=1`
-/

namespace A319006.P86538304956983596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A253012 (3 * n) + a (n - 1)

end

end A319006.P86538304956983596

namespace A319006

/-- `A253012(3*n)+a(n-1)` -/
def P86538304956983596.Spec : Prop :=
  ∀ n, P86538304956983596.a n = A319006 (n + 1)

end A319006

/-! ## A319006.P4265239636528264163

`∑[A114119(∑[n])]-n`
-/

namespace A319006.P4265239636528264163
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114119 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (n : ℤ)

end

end A319006.P4265239636528264163

namespace A319006

/-- `∑[A114119(∑[n])]-n` -/
def P4265239636528264163.Spec : Prop :=
  ∀ n, P4265239636528264163.a n = A319006 (n + 1)

end A319006

/-! ## A319006.P15991780227300434866

`∑[A032766(∑[n])]+n+1`
-/

namespace A319006.P15991780227300434866
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032766 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n + 1 : ℤ)

end

end A319006.P15991780227300434866

namespace A319006

/-- `∑[A032766(∑[n])]+n+1` -/
def P15991780227300434866.Spec : Prop :=
  ∀ n, P15991780227300434866.a n = A319006 (n + 1)

end A319006

/-! ## A319006.P2153625849909429230

`abs(∑[A001651(∑[n]+1)]-1)+1`
-/

namespace A319006.P2153625849909429230
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001651 (∑ j ∈ Finset.range (n + 1), f2 j + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∑ j ∈ Finset.range (n + 1), f1 j - 1| + 1

end

end A319006.P2153625849909429230

namespace A319006

/-- `abs(∑[A001651(∑[n]+1)]-1)+1` -/
def P2153625849909429230.Spec : Prop :=
  ∀ n, P2153625849909429230.a n = A319006 (n + 1)

end A319006

/-! ## A319006.P6409603530818982792

`∑[A001651(A000124(n))]%A157626(n+1)`
-/

namespace A319006.P6409603530818982792
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001651 (A000124 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) (A157626 (n + 1))

end

end A319006.P6409603530818982792

namespace A319006

/-- `∑[A001651(A000124(n))]%A157626(n+1)` -/
def P6409603530818982792.Spec : Prop :=
  ∀ n, P6409603530818982792.a n = A319006 (n + 1)

end A319006

/-! ## A319006.P8945682792762257164

`Δ[A002620(∑[n]+1)]`
-/

namespace A319006.P8945682792762257164
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002620 (∑ j ∈ Finset.range (n + 1), f2 j + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A319006.P8945682792762257164

namespace A319006

/-- `Δ[A002620(∑[n]+1)]` -/
def P8945682792762257164.Spec : Prop :=
  ∀ n, P8945682792762257164.a n = A319006 (n + 1)

end A319006

/-!
# A319007: Sum of the next n nonnegative integers repeated (A004526).

The programs for A319007, the canonical program `A319007.P8965321917248002935` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A319007 has offset 1).

The definition of A319007 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A319006, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A319007.P8965321917248002935

`A319006(n+1)-(n+1)`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A319007

/-- `A319006(n+1)-(n+1)` -/
def P8965321917248002935.Spec : Prop :=
  ∀ n, P8965321917248002935.a n = A319007 (n + 1)

theorem P8965321917248002935.correct : P8965321917248002935.Spec := by
  intro n
  simp only [A319007, Nat.add_sub_cancel]

end A319007

/-! ## A319007.P13489934712267643174

`∑[floor(3/2*∑[n])]`
-/

namespace A319007.P13489934712267643174
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(3 : ℚ) / 2 * ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℚ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A319007.P13489934712267643174

namespace A319007

/-- `∑[floor(3/2*∑[n])]` -/
def P13489934712267643174.Spec : Prop :=
  ∀ n, P13489934712267643174.a n = A319007 (n + 1)

end A319007

/-! ## A319007.P8663547500651949874

`∑[and(∑[3*n], -2)]/2`
-/

namespace A319007.P8663547500651949874
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ) (-2)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / 2

end

end A319007.P8663547500651949874

namespace A319007

/-- `∑[and(∑[3*n], -2)]/2` -/
def P8663547500651949874.Spec : Prop :=
  ∀ n, P8663547500651949874.a n = (A319007 (n + 1) : ℚ)

end A319007

/-! ## A319007.P17604728366382335691

`∑[or(1, ∑[3*n])-1]/2`
-/

namespace A319007.P17604728366382335691
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.lor 1 (∑ j ∈ Finset.range (n + 1), f2 j) : ℤ) - 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / 2

end

end A319007.P17604728366382335691

namespace A319007

/-- `∑[or(1, ∑[3*n])-1]/2` -/
def P17604728366382335691.Spec : Prop :=
  ∀ n, P17604728366382335691.a n = (A319007 (n + 1) : ℚ)

end A319007

/-! ## A319007.P16769268207557511367

`floor(∑[∑[∑[3-a(n-2)]]])` with `a(0)=0, a(1)=1, a(2)=2`

`floor` is left out, it is the identity on integers.
-/

namespace A319007.P16769268207557511367
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 2] fun n f3 =>
  3 - f3 (n - 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A319007.P16769268207557511367

namespace A319007

/-- `floor(∑[∑[∑[3-a(n-2)]]])` -/
def P16769268207557511367.Spec : Prop :=
  ∀ n, P16769268207557511367.a n = A319007 (n + 1)

end A319007

/-! ## A319007.P9708282354548518945

`∑[∑[∑[3-a(n-2)]]]-(n+1)` with `a(0)=1, a(1)=0, a(2)=2, a(3)=2`
-/

namespace A319007.P9708282354548518945
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 2, 2] fun n f3 =>
  3 - f3 (n - 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (n + 1 : ℤ)

end

end A319007.P9708282354548518945

namespace A319007

/-- `∑[∑[∑[3-a(n-2)]]]-(n+1)` -/
def P9708282354548518945.Spec : Prop :=
  ∀ n, P9708282354548518945.a n = A319007 (n + 1)

end A319007

/-! ## A319007.P8835916694556140048

`∑[∑[∑[3-a(n-2)]]]-1-n` with `a(0)=1, a(1)=0, a(2)=2, a(3)=2`
-/

namespace A319007.P8835916694556140048
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 2, 2] fun n f3 =>
  3 - f3 (n - 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1 - (n : ℤ)

end

end A319007.P8835916694556140048

namespace A319007

/-- `∑[∑[∑[3-a(n-2)]]]-1-n` -/
def P8835916694556140048.Spec : Prop :=
  ∀ n, P8835916694556140048.a n = A319007 (n + 1)

end A319007

/-! ## A319007.P5963155724763551859

`floor((A212747(n)-n)/2)`
-/

namespace A319007.P5963155724763551859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A212747 n - (n : ℤ) : ℚ) / 2⌋

end

end A319007.P5963155724763551859

namespace A319007

/-- `floor((A212747(n)-n)/2)` -/
def P5963155724763551859.Spec : Prop :=
  ∀ n, P5963155724763551859.a n = A319007 (n + 1)

end A319007

/-! ## A319007.P12769866681613648273

`A281026(n)+a(n-1)` with `a(0)=0`
-/

namespace A319007.P12769866681613648273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A281026 n + a (n - 1)

end

end A319007.P12769866681613648273

namespace A319007

/-- `A281026(n)+a(n-1)` -/
def P12769866681613648273.Spec : Prop :=
  ∀ n, P12769866681613648273.a n = A319007 (n + 1)

end A319007

/-! ## A319007.P11409555768001688262

`A006003(n)-a(n-2)` with `a(0)=0, a(1)=1`
-/

namespace A319007.P11409555768001688262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  A006003 n - a (n - 2)

end

end A319007.P11409555768001688262

namespace A319007

/-- `A006003(n)-a(n-2)` -/
def P11409555768001688262.Spec : Prop :=
  ∀ n, P11409555768001688262.a n = A319007 (n + 1)

end A319007

/-! ## A319007.P16740756667419904111

`floor((∑[A003215(n)-2]+1)/4)`
-/

namespace A319007.P16740756667419904111
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003215 n - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((∑ j ∈ Finset.range (n + 1), f1 j + 1 : ℤ) : ℚ) / 4⌋

end

end A319007.P16740756667419904111

namespace A319007

/-- `floor((∑[A003215(n)-2]+1)/4)` -/
def P16740756667419904111.Spec : Prop :=
  ∀ n, P16740756667419904111.a n = A319007 (n + 1)

end A319007

/-! ## A319007.P14999684922489058500

`floor(ceil(A005563(n)²/(n+1))/4)`
-/

namespace A319007.P14999684922489058500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(⌈(A005563 n ^ 2 : ℚ) / (n + 1 : ℚ)⌉ : ℚ) / 4⌋

end

end A319007.P14999684922489058500

namespace A319007

/-- `floor(ceil(A005563(n)²/(n+1))/4)` -/
def P14999684922489058500.Spec : Prop :=
  ∀ n, P14999684922489058500.a n = A319007 (n + 1)

end A319007

/-! ## A319007.P12391019256822487320

`A033436(n)+A019298(n)`
-/

namespace A319007.P12391019256822487320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033436 n + A019298 n

end

end A319007.P12391019256822487320

namespace A319007

/-- `A033436(n)+A019298(n)` -/
def P12391019256822487320.Spec : Prop :=
  ∀ n, P12391019256822487320.a n = A319007 (n + 1)

end A319007

/-! ## A319007.P15478488767965237055

`A011934(n)-A390343(n)`
-/

namespace A319007.P15478488767965237055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011934 n - A390343 n

end

end A319007.P15478488767965237055

namespace A319007

/-- `A011934(n)-A390343(n)` -/
def P15478488767965237055.Spec : Prop :=
  ∀ n, P15478488767965237055.a n = A319007 (n + 1)

end A319007

/-! ## A319007.P9244217198018919006

`A130519(n+1)+A002717(n)`
-/

namespace A319007.P9244217198018919006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130519 (n + 1) + A002717 n

end

end A319007.P9244217198018919006

namespace A319007

/-- `A130519(n+1)+A002717(n)` -/
def P9244217198018919006.Spec : Prop :=
  ∀ n, P9244217198018919006.a n = A319007 (n + 1)

end A319007

/-! ## A319007.P10147392213921328357

`A212747(n)-A319006(n+1)`
-/

namespace A319007.P10147392213921328357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212747 n - A319006 (n + 1)

end

end A319007.P10147392213921328357

namespace A319007

/-- `A212747(n)-A319006(n+1)` -/
def P10147392213921328357.Spec : Prop :=
  ∀ n, P10147392213921328357.a n = A319007 (n + 1)

end A319007

/-! ## A319007.P14032742338093696335

`floor(((A000027(n+4)-1)*A000290(n)+n+1)/4)`
-/

namespace A319007.P14032742338093696335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((A000027 (n + 4) - 1) * A000290 n + (n : ℤ) + 1 : ℚ) / 4⌋

end

end A319007.P14032742338093696335

namespace A319007

/-- `floor(((A000027(n+4)-1)*A000290(n)+n+1)/4)` -/
def P14032742338093696335.Spec : Prop :=
  ∀ n, P14032742338093696335.a n = A319007 (n + 1)

end A319007

/-! ## A319007.P10205060998250249691

`A122046(n+1)+A122046(n)+A000292(n)`
-/

namespace A319007.P10205060998250249691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122046 (n + 1) + (A122046 n + A000292 n)

end

end A319007.P10205060998250249691

namespace A319007

/-- `A122046(n+1)+A122046(n)+A000292(n)` -/
def P10205060998250249691.Spec : Prop :=
  ∀ n, P10205060998250249691.a n = A319007 (n + 1)

end A319007

/-! ## A319007.P13040878398929013263

`A004526(A002620(n))+A002717(n)`
-/

namespace A319007.P13040878398929013263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A002620 n).toNat + A002717 n

end

end A319007.P13040878398929013263

namespace A319007

/-- `A004526(A002620(n))+A002717(n)` -/
def P13040878398929013263.Spec : Prop :=
  ∀ n, P13040878398929013263.a n = A319007 (n + 1)

end A319007

/-!
# A319009: Numbers k such that the multiplicative order of 2 modulo k is psi(k), psi = A002322.

The programs for A319009, there is no canonical definition to state claims against.
-/

/-! ## A319009.P3077941304065828981

`eq[2, A229708(n+1)]+1`
-/

namespace A319009.P3077941304065828981
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229708 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A319009.P3077941304065828981

/-! ## A319009.P4428203727188868610

`A004442(eq[2, A229708(n+1)])`
-/

namespace A319009.P4428203727188868610
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229708 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004442 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A319009.P4428203727188868610

/-! ## A319009.P13949082585578361356

`A097062(eq[2, A229708(n+1)])`
-/

namespace A319009.P13949082585578361356
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229708 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097062 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A319009.P13949082585578361356

/-! ## A319009.P1463236648533105622

`A109613(eq[2, A229708(n+1)])`
-/

namespace A319009.P1463236648533105622
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229708 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109613 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A319009.P1463236648533105622

/-! ## A319009.P12246978180313183195

`A097062(record[n*(3-A111076(n+1))])`
-/

namespace A319009.P12246978180313183195
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (3 - A111076 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097062 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A319009.P12246978180313183195

/-! ## A319009.P2103512343828087824

`eq[A000034(n), A229708(A029579(n))]`
-/

namespace A319009.P2103512343828087824
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229708 (A029579 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A319009.P2103512343828087824

/-! ## A319009.P12567366684389589897

`record[A097062(n)/A111076(A111076(n+1))]`
-/

namespace A319009.P12567366684389589897
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A097062 n : ℚ) / (A111076 (A111076 (n + 1)).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A319009.P12567366684389589897

/-!
# A319012: a(n) = Sum_{i=1..n} prime(n*(i - 1) + i).

The programs for A319012, there is no canonical definition to state claims against.
-/

/-! ## A319012.P2889916260247573161

`∑[(3^C(a(n-1), 68)+n)^3-and(1, n)]` with `a(0)=2`
-/

namespace A319012.P2889916260247573161
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [2] fun n f1 =>
  ((3 ^ Nat.choose (f1 (n - 1)).toNat 68 + n) ^ 3 : ℤ) - (Nat.land 1 n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A319012.P2889916260247573161

/-!
# A319013: a(n) is the sum over each permutation of S_n of the least element of the descent set.

The programs for A319013, the canonical program `A319013.P5955328554395698537` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A319013 has offset 1).

The definition of A319013 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A319013.P5955328554395698537

`A002627(n+1)-(n+1)`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A319013

/-- `A002627(n+1)-(n+1)` -/
def P5955328554395698537.Spec : Prop :=
  ∀ n, P5955328554395698537.a n = A319013 (n + 1)

theorem P5955328554395698537.correct : P5955328554395698537.Spec := by
  intro n
  simp only [A319013, Nat.add_sub_cancel]

end A319013

/-! ## A319013.P2074689198094438533

`n²+(n+1)*a(n-1)` with `a(0)=0`
-/

namespace A319013.P2074689198094438533
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  n ^ 2 + (n + 1) * a (n - 1)

end

end A319013.P2074689198094438533

namespace A319013

/-- `n²+(n+1)*a(n-1)` -/
def P2074689198094438533.Spec : Prop :=
  ∀ n, (P2074689198094438533.a n : ℤ) = A319013 (n + 1)

end A319013

/-! ## A319013.P5857284072093021615

`(n+1)*(a(n-1)+n)-n` with `a(0)=0`
-/

namespace A319013.P5857284072093021615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  (n + 1 : ℤ) * (a (n - 1) + (n : ℤ)) - (n : ℤ)

end

end A319013.P5857284072093021615

namespace A319013

/-- `(n+1)*(a(n-1)+n)-n` -/
def P5857284072093021615.Spec : Prop :=
  ∀ n, P5857284072093021615.a n = A319013 (n + 1)

end A319013

/-! ## A319013.P17034490911036695459

`∑[abs(Δ[n*(a(n-1)-1)])-1]` with `a(0)=1`
-/

namespace A319013.P17034490911036695459
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f2 =>
  (n : ℤ) * (f2 (n - 1) - 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f2 (n + 1) - f2 n| - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A319013.P17034490911036695459

namespace A319013

/-- `∑[abs(Δ[n*(a(n-1)-1)])-1]` -/
def P17034490911036695459.Spec : Prop :=
  ∀ n, P17034490911036695459.a n = A319013 (n + 1)

end A319013

/-! ## A319013.P14934338812932775005

`a(n-1)+lcm(n, a(n-1)+n)` with `a(0)=0`
-/

namespace A319013.P14934338812932775005
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) + Nat.lcm n (a (n - 1) + n)

end

end A319013.P14934338812932775005

namespace A319013

/-- `a(n-1)+lcm(n, a(n-1)+n)` -/
def P14934338812932775005.Spec : Prop :=
  ∀ n, (P14934338812932775005.a n : ℤ) = A319013 (n + 1)

end A319013

/-! ## A319013.P3921753773278745314

`n²+a(n-1)/(n+1)^(-1)` with `a(0)=0`
-/

namespace A319013.P3921753773278745314
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [0] fun n a =>
  (n ^ 2 : ℚ) + a (n - 1) / (n + 1 : ℚ) ^ (-1 : ℤ)

end

end A319013.P3921753773278745314

namespace A319013

/-- `n²+a(n-1)/(n+1)^(-1)` -/
def P3921753773278745314.Spec : Prop :=
  ∀ n, P3921753773278745314.a n = (A319013 (n + 1) : ℚ)

end A319013

/-! ## A319013.P3290988120013461048

`∑[Δ[n*a(n-1)-(n-2)]-1]` with `a(0)=1`
-/

namespace A319013.P3290988120013461048
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f2 =>
  (n : ℤ) * f2 (n - 1) - ((n : ℤ) - 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A319013.P3290988120013461048

namespace A319013

/-- `∑[Δ[n*a(n-1)-(n-2)]-1]` -/
def P3290988120013461048.Spec : Prop :=
  ∀ n, P3290988120013461048.a n = A319013 (n + 1)

end A319013

/-! ## A319013.P8626059030181461163

`(a(n-1)+n)/(n+1)^(-1)-n` with `a(0)=0`
-/

namespace A319013.P8626059030181461163
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [0] fun n a =>
  (a (n - 1) + (n : ℚ)) / (n + 1 : ℚ) ^ (-1 : ℤ) - (n : ℚ)

end

end A319013.P8626059030181461163

namespace A319013

/-- `(a(n-1)+n)/(n+1)^(-1)-n` -/
def P8626059030181461163.Spec : Prop :=
  ∀ n, P8626059030181461163.a n = (A319013 (n + 1) : ℚ)

end A319013

/-! ## A319013.P6577347600994435417

`a(n-1)-(n*(1-a(n-1)-n)-n)` with `a(0)=0`
-/

namespace A319013.P6577347600994435417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) - ((n : ℤ) * (1 - a (n - 1) - (n : ℤ)) - (n : ℤ))

end

end A319013.P6577347600994435417

namespace A319013

/-- `a(n-1)-(n*(1-a(n-1)-n)-n)` -/
def P6577347600994435417.Spec : Prop :=
  ∀ n, P6577347600994435417.a n = A319013 (n + 1)

end A319013

/-! ## A319013.P6547415940264938255

`∑[A193657(n)-1]`
-/

namespace A319013.P6547415940264938255
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193657 n - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A319013.P6547415940264938255

namespace A319013

/-- `∑[A193657(n)-1]` -/
def P6547415940264938255.Spec : Prop :=
  ∀ n, P6547415940264938255.a n = A319013 (n + 1)

end A319013

/-!
# A319014: a(n) = 1*2*3 + 4*5*6 + 7*8*9 + 10*11*12 + 13*14*15 + 16*17*18 + ... + (up to n).

The programs for A319014, there is no canonical definition to state claims against.
-/

/-! ## A319014.P17149934966456929826

`A233583(A227364(n+1)+1)-1`
-/

namespace A319014.P17149934966456929826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233583 (A227364 (n + 1) + 1).toNat - 1

end

end A319014.P17149934966456929826

/-! ## A319014.P10638545797788625406

`record[A227364(n)+A062157(A236065(n+1))]`
-/

namespace A319014.P10638545797788625406
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227364 n + A062157 (A236065 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A319014.P10638545797788625406

/-! ## A319014.P6200603806317739208

`A227364(n+1)-A005131(A284863(n))`
-/

namespace A319014.P6200603806317739208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227364 (n + 1) - A005131 (A284863 n).toNat

end

end A319014.P6200603806317739208

/-!
# A319018: Number of ON cells after n generations of two-dimensional automaton based on knight moves (see Comments for definition).

The programs for A319018, there is no canonical definition to state claims against.
-/

/-! ## A319018.P4494247171566742366

`∑[A319019(n)]`
-/

namespace A319018.P4494247171566742366
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319019 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A319018.P4494247171566742366

/-! ## A319018.P13705654664706142853

`∑{d}[A000079(n), A319019(log2(#))]`
-/

namespace A319018.P13705654664706142853
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A319019 (SequenceMachineLib.roundAway (Real.logb 2 (d : ℝ))).toNat

end

end A319018.P13705654664706142853

/-! ## A319018.P7703492302422819518

`∑{d}[A011782(n+1), A319019(log2(#))]`
-/

namespace A319018.P7703492302422819518
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A319019 (SequenceMachineLib.roundAway (Real.logb 2 (d : ℝ))).toNat

end

end A319018.P7703492302422819518

/-!
# A319019: First differences of A319018.

The programs for A319019, there is no canonical definition to state claims against.
-/

/-! ## A319019.P9165363294785932522

`Δ[A319018(n-ceil(n/(n+1)))]`
-/

namespace A319019.P9165363294785932522
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319018 ((n : ℤ) - ⌈(n : ℚ) / (n + 1 : ℚ)⌉).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A319019.P9165363294785932522

/-! ## A319019.P8506513733346070327

`A319018(n)-A319018((2*n)%(n+1))`
-/

namespace A319019.P8506513733346070327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319018 n - A319018 (2 * n % (n + 1))

end

end A319019.P8506513733346070327

/-! ## A319019.P3414741983538348646

`A319018(n)-A319018(A004273(n)-n)`
-/

namespace A319019.P3414741983538348646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319018 n - A319018 (A004273 n - (n : ℤ)).toNat

end

end A319019.P3414741983538348646

/-! ## A319019.P9797918127939412910

`A319018(n)-A319018(n-A057427(n))`
-/

namespace A319019.P9797918127939412910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319018 n - A319018 ((n : ℤ) - A057427 n).toNat

end

end A319019.P9797918127939412910

/-! ## A319019.P12658738001246224012

`A319018(n)-A319018(log2(A011782(n)))`
-/

namespace A319019.P12658738001246224012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319018 n - A319018 (SequenceMachineLib.roundAway (Real.logb 2 (A011782 n : ℝ))).toNat

end

end A319019.P12658738001246224012

/-!
# A319020: Let b_i(k) = 1 for k <= i; for n > i, b_i(n) = b_i(t(n)) + b_i(n-t(n)) where t = A063882. a(n) = 3*b_2(n)-2*n if n is even, a(n) = 3*b_4(n)-n if n is odd.

The programs for A319020, there is no canonical definition to state claims against.
-/

/-! ## A319020.P18394502037612004800

`A049347(n)*A057079(A294544(n))`
-/

namespace A319020.P18394502037612004800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049347 n * A057079 (A294544 n).toNat

end

end A319020.P18394502037612004800

/-!
# A319026: Decimal expansion of Psi(3).

The programs for A319026, there is no canonical definition to state claims against.
-/

/-! ## A319026.P2626071873608134702

`A153810(n)+A020761(n)`
-/

namespace A319026.P2626071873608134702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153810 n + A020761 n

end

end A319026.P2626071873608134702

/-! ## A319026.P15484981328741567209

`A153810(n)+5*A000007(n)`
-/

namespace A319026.P15484981328741567209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153810 n + 5 * A000007 n

end

end A319026.P15484981328741567209

/-! ## A319026.P3041140451780188540

`A020761(n)+9-A001620(n)`
-/

namespace A319026.P3041140451780188540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020761 n + (9 - A001620 n)

end

end A319026.P3041140451780188540

/-! ## A319026.P15180146687263362263

`9-A001620(n)*A057427(n)`
-/

namespace A319026.P15180146687263362263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  9 - A001620 n * A057427 n

end

end A319026.P15180146687263362263

/-! ## A319026.P87156317525084704

`a(A000038(n))-A001620(n)` with `a(0)=9`
-/

namespace A319026.P87156317525084704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [9] fun n a =>
  a (A000038 n).toNat - A001620 n

end

end A319026.P87156317525084704

/-! ## A319026.P15977619789137105417

`A153810(n)+A093084(A151878(n))`
-/

namespace A319026.P15977619789137105417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153810 n + A093084 (A151878 n).toNat

end

end A319026.P15977619789137105417

/-! ## A319026.P14553263264602889676

`A153810(n)+A093084(A151933(n))`
-/

namespace A319026.P14553263264602889676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153810 n + A093084 (A151933 n).toNat

end

end A319026.P14553263264602889676

/-!
# A319027: Number of preimages of 321-avoiding permutations of [n] under West's stack-sorting map.

The programs for A319027, there is no canonical definition to state claims against.
-/

/-! ## A319027.P11595257413985076140

`∑[A110656(A125785(n))]`
-/

namespace A319027.P11595257413985076140
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110656 (A125785 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A319027.P11595257413985076140

/-! ## A319027.P5193256964528655845

`A002264(4*A005500(n))`
-/

namespace A319027.P5193256964528655845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (4 * A005500 n).toNat

end

end A319027.P5193256964528655845

/-!
# A319028: Number of permutations pi of [n] such that s(pi) avoids the patterns 132 and 321, where s is West's stack-sorting map.

The programs for A319028, the canonical program `A319028.P8839523077166718591` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A319028 has offset 1).

The definition of A319028 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 167 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A319028.P1517917938795287243

`4^n-n*∏[2*(2*n+1)/(n+2)]`
-/

namespace A319028.P1517917938795287243
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 * ((2 * n + 1 : ℚ) / (n + 2 : ℚ))

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (4 ^ n : ℚ) - (n : ℚ) * (∏ j ∈ Finset.range (n + 1), f1 j)

end

end A319028.P1517917938795287243

namespace A319028

/-- `4^n-n*∏[2*(2*n+1)/(n+2)]` -/
def P1517917938795287243.Spec : Prop :=
  ∀ n, P1517917938795287243.a n = (A319028 (n + 1) : ℚ)

end A319028

/-! ## A319028.P18303431933951579243

`abs(n*∏[2*(2*n+1)/(n+2)]-∏[4-2/(n+1)]/2-A008549(n))`
-/

namespace A319028.P18303431933951579243
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 * ((2 * n + 1 : ℚ) / (n + 2 : ℚ))

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  4 - 2 / (n + 1 : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  |(n : ℚ) * (∏ j ∈ Finset.range (n + 1), f1 j) - (∏ j ∈ Finset.range (n + 1), f2 j) / 2 - (A008549 n : ℚ)|

end

end A319028.P18303431933951579243

namespace A319028

/-- `abs(n*∏[2*(2*n+1)/(n+2)]-∏[4-2/(n+1)]/2-A008549(n))` -/
def P18303431933951579243.Spec : Prop :=
  ∀ n, P18303431933951579243.a n = (A319028 (n + 1) : ℚ)

end A319028

/-! ## A319028.P8839523077166718591

`abs(A024483(n+2)-A000302(n))`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A319028

/-- `abs(A024483(n+2)-A000302(n))` -/
def P8839523077166718591.Spec : Prop :=
  ∀ n, P8839523077166718591.a n = A319028 (n + 1)

theorem P8839523077166718591.correct : P8839523077166718591.Spec := by
  intro n
  simp only [A319028, Nat.add_sub_cancel]

end A319028

/-! ## A319028.P15207261549900107540

`abs(4^n-∏[4-2/(n+1)]/2-A104268(n+1))`
-/

namespace A319028.P15207261549900107540
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  4 - 2 / (n + 1 : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  |(4 ^ n : ℚ) - (∏ j ∈ Finset.range (n + 1), f1 j) / 2 - (A104268 (n + 1) : ℚ)|

end

end A319028.P15207261549900107540

namespace A319028

/-- `abs(4^n-∏[4-2/(n+1)]/2-A104268(n+1))` -/
def P15207261549900107540.Spec : Prop :=
  ∀ n, P15207261549900107540.a n = (A319028 (n + 1) : ℚ)

end A319028

/-! ## A319028.P14961138462710205651

`record[A000079(n)-A232500(n+2)]`
-/

namespace A319028.P14961138462710205651
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n - A232500 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A319028.P14961138462710205651

namespace A319028

/-- `record[A000079(n)-A232500(n+2)]` -/
def P14961138462710205651.Spec : Prop :=
  ∀ n, P14961138462710205651.a n = A319028 (n + 1)

end A319028

/-!
# A319029: Triangle read by rows: T(n,k) is the number of permutations pi of [n] such that pi has k descents and s(pi) avoids the patterns 132 and 321, where s is West's stack-sorting map (0 <= k <= n-1).

The programs for A319029, there is no canonical definition to state claims against.
-/

/-! ## A319029.P11154277503283706088

`A001263(n+1)+A091044(n+1)-A132812(n+1)`
-/

namespace A319029.P11154277503283706088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001263 (n + 1) + (A091044 (n + 1) - A132812 (n + 1))

end

end A319029.P11154277503283706088

/-! ## A319029.P14875248245922141199

`A072621(A056939(n))`
-/

namespace A319029.P14875248245922141199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072621 (A056939 n).toNat

end

end A319029.P14875248245922141199

/-! ## A319029.P14129882581821140866

`A259899(A142468(n))`
-/

namespace A319029.P14129882581821140866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259899 (A142468 n).toNat

end

end A319029.P14129882581821140866

/-! ## A319029.P14049089335500358616

`A212123(A362242(n))`
-/

namespace A319029.P14049089335500358616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212123 (A362242 n).toNat

end

end A319029.P14049089335500358616

/-! ## A319029.P5984425323565670655

`A072621(A089447(n))+char[12]`
-/

namespace A319029.P5984425323565670655
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  12

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072621 (A089447 n).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A319029.P5984425323565670655

/-!
# A319035: Triangular numbers T(k) that have the same number of divisors as their successors T(k+1).

The programs for A319035, the canonical program `A319035.P4592568975545693552` is in `Seq.B003.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A319035 has offset 1).

The definition of A319035 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1669 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A319035.P4592568975545693552

`A000096(eq[A063440(n+2), A063440(n+1)])+1`

The canonical program, it is in `Seq.B003.C004`.
-/

namespace A319035

/-- `A000096(eq[A063440(n+2), A063440(n+1)])+1` -/
def P4592568975545693552.Spec : Prop :=
  ∀ n, P4592568975545693552.a n = A319035 (n + 1)

theorem P4592568975545693552.correct : P4592568975545693552.Spec := by
  intro n
  simp only [A319035, Nat.add_sub_cancel]

end A319035

/-! ## A319035.P16201661783980128844

`A000217(eq[A063440(n+2), A063440(n+1)]+1)`
-/

namespace A319035.P16201661783980128844
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063440 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063440 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1)

end

end A319035.P16201661783980128844

namespace A319035

/-- `A000217(eq[A063440(n+2), A063440(n+1)]+1)` -/
def P16201661783980128844.Spec : Prop :=
  ∀ n, P16201661783980128844.a n = A319035 (n + 1)

end A319035

/-! ## A319035.P7581693157600723499

`A000217(A276542(n+1))`
-/

namespace A319035.P7581693157600723499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (A276542 (n + 1)).toNat

end

end A319035.P7581693157600723499

namespace A319035

/-- `A000217(A276542(n+1))` -/
def P7581693157600723499.Spec : Prop :=
  ∀ n, P7581693157600723499.a n = A319035 (n + 1)

end A319035

/-! ## A319035.P8241100604981196251

`A161680(A276542(n+1)+1)`
-/

namespace A319035.P8241100604981196251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161680 (A276542 (n + 1) + 1).toNat

end

end A319035.P8241100604981196251

namespace A319035

/-- `A161680(A276542(n+1)+1)` -/
def P8241100604981196251.Spec : Prop :=
  ∀ n, P8241100604981196251.a n = A319035 (n + 1)

end A319035

/-! ## A319035.P1165667081926204320

`A253145(A276542(n+1)-1)`
-/

namespace A319035.P1165667081926204320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253145 (A276542 (n + 1) - 1).toNat

end

end A319035.P1165667081926204320

namespace A319035

/-- `A253145(A276542(n+1)-1)` -/
def P1165667081926204320.Spec : Prop :=
  ∀ n, P1165667081926204320.a n = A319035 (n + 1)

end A319035

/-!
# A319037: a(n) is the length of the longest run of consecutive triangular numbers with n divisors.

The programs for A319037, there is no canonical definition to state claims against.
-/

/-! ## A319037.P7404882432758086812

`A007814(A280228(n+1))+char[11]`
-/

namespace A319037.P7404882432758086812
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (A280228 (n + 1)).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A319037.P7404882432758086812

/-! ## A319037.P16577752723588547001

`or(A007814(A280228(n+1)), A343380(n))`
-/

namespace A319037.P16577752723588547001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A007814 (A280228 (n + 1)).toNat) (A343380 n)

end

end A319037.P16577752723588547001

/-! ## A319037.P4203362663383816849

`A085393(n+1)+A007814(A280228(n+1))`
-/

namespace A319037.P4203362663383816849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085393 (n + 1) + A007814 (A280228 (n + 1)).toNat

end

end A319037.P4203362663383816849

/-! ## A319037.P14819590463716391094

`A007814(A280228(n+1))^log2(A057525(n+2))`
-/

namespace A319037.P14819590463716391094
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A007814 (A280228 (n + 1)).toNat : ℝ) ^ (Real.logb 2 (A057525 (n + 2) : ℝ))

end

end A319037.P14819590463716391094

/-! ## A319037.P13049439083714939816

`A007814(lcm(A033273(n+1)!, A280228(n+1)))`
-/

namespace A319037.P13049439083714939816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (Int.lcm (Nat.factorial (A033273 (n + 1)).toNat : ℤ) (A280228 (n + 1)))

end

end A319037.P13049439083714939816

/-!
# A319039: Triangle read by rows: T(n,k), n >= 1, k = 0..A005867(n), is the smallest integer m > 0 such that the interval [P(n)*m+1, P(n)*(m+1)] includes exactly k primes, where P(n) = A002110(n) is the n-th primorial, or 0 if no such m exists.

The programs for A319039, there is no canonical definition to state claims against.
-/

/-! ## A319039.P8603933904045594704

`A098004(A000065(2*n+1))^A214015(n+1)`
-/

namespace A319039.P8603933904045594704
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A098004 (A000065 (2 * n + 1)).toNat : ℚ) ^ (A214015 (n + 1) : ℤ)

end

end A319039.P8603933904045594704

/-!
# A319040: Numbers k > 1 such that Pell(k) == 1 (mod k).

The programs for A319040, there is no canonical definition to state claims against.
-/

/-! ## A319040.P7958133746817833945

`eq[1, A000129(n)%A290561(n)]`
-/

namespace A319040.P7958133746817833945
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000129 n) (A290561 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A319040.P7958133746817833945

/-! ## A319040.P4541070219148621797

`∩[A118905(n+1), A384354(n+1)]`
-/

namespace A319040.P4541070219148621797
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118905 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A384354 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A319040.P4541070219148621797

/-! ## A319040.P9677104028505503612

`∩[A254064(n+1), A330225(n+1)]`
-/

namespace A319040.P9677104028505503612
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254064 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330225 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A319040.P9677104028505503612

/-! ## A319040.P2347751613697835824

`∩[A254064(n+1), A384354(n+1)]`
-/

namespace A319040.P2347751613697835824
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254064 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A384354 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A319040.P2347751613697835824

/-! ## A319040.P4923674081599187159

`∩[A118905(n+1), A330225(n+1)]`
-/

namespace A319040.P4923674081599187159
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118905 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330225 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A319040.P4923674081599187159

/-!
# A319042: Composite numbers k such that Pell(k) == 1 (mod k).

The programs for A319042, there is no canonical definition to state claims against.
-/

/-! ## A319042.P1839724501502755924

`∩[A319040(n+1), A330207(n+1)]`
-/

namespace A319042.P1839724501502755924
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330207 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A319042.P1839724501502755924

/-! ## A319042.P7043246745392642854

`∩[A319040(n+1), A338010(n+1)]`
-/

namespace A319042.P7043246745392642854
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338010 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A319042.P7043246745392642854

/-!
# A319048: a(n) is the greatest k such that A000010(k) divides n where A000010 is the Euler totient function.

The programs for A319048, there is no canonical definition to state claims against.
-/

/-! ## A319048.P9091873235814771338

`A378638(∑[A070633(n+1)])`
-/

namespace A319048.P9091873235814771338
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070633 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378638 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A319048.P9091873235814771338

/-! ## A319048.P1217672617048446864

`A006511(A322315(n+1)^A155457(n+1))`
-/

namespace A319048.P1217672617048446864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006511 (SequenceMachineLib.roundAway ((A322315 (n + 1) : ℚ) ^ (A155457 (n + 1) : ℤ))).toNat

end

end A319048.P1217672617048446864

/-! ## A319048.P14696344818956686307

`A006511(A322315(n+1))%A252753((n+2)²)`
-/

namespace A319048.P14696344818956686307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A006511 (A322315 (n + 1)).toNat) (A252753 ((n + 2) ^ 2))

end

end A319048.P14696344818956686307

/-! ## A319048.P7001351398219814250

`A055667(A256708(n+1))+A006511(A322315(n+1))`
-/

namespace A319048.P7001351398219814250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055667 (A256708 (n + 1)).toNat + A006511 (A322315 (n + 1)).toNat

end

end A319048.P7001351398219814250

/-! ## A319048.P1217240079994965143

`A343877(A014963(n+1))+A006511(A322315(n+1))`
-/

namespace A319048.P1217240079994965143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343877 (A014963 (n + 1)).toNat + A006511 (A322315 (n + 1)).toNat

end

end A319048.P1217240079994965143

/-! ## A319048.P14420770451483945746

`A006511(A155040(n)²*A322315(n+1))`
-/

namespace A319048.P14420770451483945746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006511 (A155040 n ^ 2 * A322315 (n + 1)).toNat

end

end A319048.P14420770451483945746

/-! ## A319048.P14679151604122669122

`A006511(A322315(n+1)/A155040(n)²)`
-/

namespace A319048.P14679151604122669122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006511 (SequenceMachineLib.roundAway ((A322315 (n + 1) : ℚ) / (A155040 n ^ 2 : ℚ))).toNat

end

end A319048.P14679151604122669122

/-! ## A319048.P4067592020681557844

`A006511(A155040(n)*A322315(n+1)*A155040(n))`
-/

namespace A319048.P4067592020681557844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006511 (A155040 n * A322315 (n + 1) * A155040 n).toNat

end

end A319048.P4067592020681557844

/-!
# A319049: Primes p such that none of p - 1, p - 2 and p - 3 are squarefree.

The programs for A319049, there is no canonical definition to state claims against.
-/

/-! ## A319049.P4988852682908856366

`p?[A235578(n+1)+2]`
-/

namespace A319049.P4988852682908856366
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235578 (n + 1) + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A319049.P4988852682908856366

/-! ## A319049.P10753340363124969893

`p?[A070258(n+1)+3]`
-/

namespace A319049.P10753340363124969893
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070258 (n + 1) + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A319049.P10753340363124969893

/-! ## A319049.P235991980750250989

`p?[A114180(n+1)+3]`
-/

namespace A319049.P235991980750250989
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114180 (n + 1) + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A319049.P235991980750250989

/-! ## A319049.P10192200974954954263

`p?[A082284(A235578(n+1))]`
-/

namespace A319049.P10192200974954954263
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082284 (A235578 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A319049.P10192200974954954263

/-! ## A319049.P626443232992776948

`A065091(lt[1, A240473(n+1)-2])`
-/

namespace A319049.P626443232992776948
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240473 (n + 1) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A319049.P626443232992776948

/-! ## A319049.P15105729676568005925

`record[A006530(A235578(n+2)+2)]`
-/

namespace A319049.P15105729676568005925
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A235578 (n + 2) + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A319049.P15105729676568005925

/-! ## A319049.P4778732745113014218

`p?[A281192(n+1)+A007424(A281192(n+1))]`
-/

namespace A319049.P4778732745113014218
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281192 (n + 1) + A007424 (A281192 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A319049.P4778732745113014218

/-!
# A319050: Primes p such that neither p + 1 nor p + 2 is squarefree.

The programs for A319050, the canonical program `A319050.P16650929760473563245` is in `Seq.B003.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A319050 has offset 1).

The definition of A319050 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2309 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A319050.P16650929760473563245

`∩[A049098(n+1), A049232(n+1)]`

The canonical program, it is in `Seq.B003.C004`.
-/

namespace A319050

/-- `∩[A049098(n+1), A049232(n+1)]` -/
def P16650929760473563245.Spec : Prop :=
  ∀ n, (P16650929760473563245.a n : ℤ) = A319050 (n + 1)

theorem P16650929760473563245.correct : P16650929760473563245.Spec := by
  intro n
  simp only [A319050, Nat.add_sub_cancel]

end A319050

/-! ## A319050.P18264487913426841522

`p?[A013928(A013929(n+1)+2)+n]`
-/

namespace A319050.P18264487913426841522
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013928 (A013929 (n + 1) + 2).toNat + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A319050.P18264487913426841522

namespace A319050

/-- `p?[A013928(A013929(n+1)+2)+n]` -/
def P18264487913426841522.Spec : Prop :=
  ∀ n, P18264487913426841522.a n = A319050 (n + 1)

end A319050

/-! ## A319050.P4123482775054001540

`p?[A068781(n+1)-1]`
-/

namespace A319050.P4123482775054001540
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068781 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A319050.P4123482775054001540

namespace A319050

/-- `p?[A068781(n+1)-1]` -/
def P4123482775054001540.Spec : Prop :=
  ∀ n, P4123482775054001540.a n = A319050 (n + 1)

end A319050

/-! ## A319050.P11843732096957428043

`record[A006530(A068781(n+1)-1)]`
-/

namespace A319050.P11843732096957428043
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A068781 (n + 1) - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A319050.P11843732096957428043

namespace A319050

/-- `record[A006530(A068781(n+1)-1)]` -/
def P11843732096957428043.Spec : Prop :=
  ∀ n, P11843732096957428043.a n = A319050 (n + 1)

end A319050

/-! ## A319050.P2184433944085203676

`record[A020639(A068781(n+1)-1)]`
-/

namespace A319050.P2184433944085203676
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A068781 (n + 1) - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A319050.P2184433944085203676

namespace A319050

/-- `record[A020639(A068781(n+1)-1)]` -/
def P2184433944085203676.Spec : Prop :=
  ∀ n, P2184433944085203676.a n = A319050 (n + 1)

end A319050

/-! ## A319050.P15076357490508701465

`∩[A049232(n+1), A069122(n+1)]`
-/

namespace A319050.P15076357490508701465
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049232 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069122 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A319050.P15076357490508701465

namespace A319050

/-- `∩[A049232(n+1), A069122(n+1)]` -/
def P15076357490508701465.Spec : Prop :=
  ∀ n, (P15076357490508701465.a n : ℤ) = A319050 (n + 1)

end A319050

/-! ## A319050.P16479067806643014025

`∩[A049232(n+1), A079710(n+1)]`
-/

namespace A319050.P16479067806643014025
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049232 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079710 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A319050.P16479067806643014025

namespace A319050

/-- `∩[A049232(n+1), A079710(n+1)]` -/
def P16479067806643014025.Spec : Prop :=
  ∀ n, (P16479067806643014025.a n : ℤ) = A319050 (n + 1)

end A319050

/-! ## A319050.P12077692630450398928

`∩[A049232(n+1), A087249(n+1)]`
-/

namespace A319050.P12077692630450398928
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049232 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087249 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A319050.P12077692630450398928

namespace A319050

/-- `∩[A049232(n+1), A087249(n+1)]` -/
def P12077692630450398928.Spec : Prop :=
  ∀ n, (P12077692630450398928.a n : ℤ) = A319050 (n + 1)

end A319050

/-! ## A319050.P7275240392499561123

`eq[A007920(n), A261869(n+1)]`
-/

namespace A319050.P7275240392499561123
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007920 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261869 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A319050.P7275240392499561123

namespace A319050

/-- `eq[A007920(n), A261869(n+1)]` -/
def P7275240392499561123.Spec : Prop :=
  ∀ n, (P7275240392499561123.a n : ℤ) = A319050 (n + 1)

end A319050

/-! ## A319050.P7222892933203622778

`eq[A072480(n), A261869(n+1)]`
-/

namespace A319050.P7222892933203622778
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072480 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261869 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A319050.P7222892933203622778

namespace A319050

/-- `eq[A072480(n), A261869(n+1)]` -/
def P7222892933203622778.Spec : Prop :=
  ∀ n, (P7222892933203622778.a n : ℤ) = A319050 (n + 1)

end A319050

/-! ## A319050.P6547753811214548009

`eq[A082023(n), A261869(n+1)]`
-/

namespace A319050.P6547753811214548009
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082023 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261869 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A319050.P6547753811214548009

namespace A319050

/-- `eq[A082023(n), A261869(n+1)]` -/
def P6547753811214548009.Spec : Prop :=
  ∀ n, (P6547753811214548009.a n : ℤ) = A319050 (n + 1)

end A319050

/-! ## A319050.P10600192506753756526

`eq[A082024(n), A261869(n+1)]`
-/

namespace A319050.P10600192506753756526
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082024 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261869 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A319050.P10600192506753756526

namespace A319050

/-- `eq[A082024(n), A261869(n+1)]` -/
def P10600192506753756526.Spec : Prop :=
  ∀ n, (P10600192506753756526.a n : ℤ) = A319050 (n + 1)

end A319050

/-! ## A319050.P2148534788291183243

`eq[A261869(n+1), A277894(n)]`
-/

namespace A319050.P2148534788291183243
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261869 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277894 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A319050.P2148534788291183243

namespace A319050

/-- `eq[A261869(n+1), A277894(n)]` -/
def P2148534788291183243.Spec : Prop :=
  ∀ n, (P2148534788291183243.a n : ℤ) = A319050 (n + 1)

end A319050

/-! ## A319050.P333916465745687873

`eq[A261869(n+1), A295520(n)]`
-/

namespace A319050.P333916465745687873
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261869 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295520 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A319050.P333916465745687873

namespace A319050

/-- `eq[A261869(n+1), A295520(n)]` -/
def P333916465745687873.Spec : Prop :=
  ∀ n, (P333916465745687873.a n : ℤ) = A319050 (n + 1)

end A319050

/-! ## A319050.P15438770105966181159

`eq[A217668(n), A378036(n+1)]`
-/

namespace A319050.P15438770105966181159
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217668 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378036 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A319050.P15438770105966181159

namespace A319050

/-- `eq[A217668(n), A378036(n+1)]` -/
def P15438770105966181159.Spec : Prop :=
  ∀ n, (P15438770105966181159.a n : ℤ) = A319050 (n + 1)

end A319050

/-! ## A319050.P2682158616240139751

`eq[A261869(n+1), A338554(n)]`
-/

namespace A319050.P2682158616240139751
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261869 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338554 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A319050.P2682158616240139751

namespace A319050

/-- `eq[A261869(n+1), A338554(n)]` -/
def P2682158616240139751.Spec : Prop :=
  ∀ n, (P2682158616240139751.a n : ℤ) = A319050 (n + 1)

end A319050

/-! ## A319050.P3225813672259990902

`eq[A378036(n+1), A395097(n)]`
-/

namespace A319050.P3225813672259990902
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378036 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A395097 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A319050.P3225813672259990902

namespace A319050

/-- `eq[A378036(n+1), A395097(n)]` -/
def P3225813672259990902.Spec : Prop :=
  ∀ n, (P3225813672259990902.a n : ℤ) = A319050 (n + 1)

end A319050

/-! ## A319050.P2571809934653106983

`eq[n, A006530(A070321(n+2))]`
-/

namespace A319050.P2571809934653106983
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A070321 (n + 2)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A319050.P2571809934653106983

namespace A319050

/-- `eq[n, A006530(A070321(n+2))]` -/
def P2571809934653106983.Spec : Prop :=
  ∀ n, (P2571809934653106983.a n : ℤ) = A319050 (n + 1)

end A319050

/-! ## A319050.P6222990104291838883

`record[A014963(A068781(n+1)-1)]`
-/

namespace A319050.P6222990104291838883
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A068781 (n + 1) - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A319050.P6222990104291838883

namespace A319050

/-- `record[A014963(A068781(n+1)-1)]` -/
def P6222990104291838883.Spec : Prop :=
  ∀ n, P6222990104291838883.a n = A319050 (n + 1)

end A319050

/-! ## A319050.P3200047209135626749

`eq[A331991(n+1), A378036(n+1)]`
-/

namespace A319050.P3200047209135626749
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331991 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378036 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A319050.P3200047209135626749

namespace A319050

/-- `eq[A331991(n+1), A378036(n+1)]` -/
def P3200047209135626749.Spec : Prop :=
  ∀ n, (P3200047209135626749.a n : ℤ) = A319050 (n + 1)

end A319050

/-!
# A319051: Primes p such that none of p + 1, p + 2 and p + 3 are squarefree.

The programs for A319051, there is no canonical definition to state claims against.
-/

/-! ## A319051.P16420906124328622219

`p?[A070258(n+1)-1]`
-/

namespace A319051.P16420906124328622219
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070258 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A319051.P16420906124328622219

/-! ## A319051.P15279773087851448542

`p?[A235578(n+1)-2]`
-/

namespace A319051.P15279773087851448542
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235578 (n + 1) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A319051.P15279773087851448542

/-! ## A319051.P12632811696925404326

`p?[A114180(n+1)-1]`
-/

namespace A319051.P12632811696925404326
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114180 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A319051.P12632811696925404326

/-! ## A319051.P14822011982039384931

`record[A006530(A070258(n+1)-1)]`
-/

namespace A319051.P14822011982039384931
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A070258 (n + 1) - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A319051.P14822011982039384931

/-! ## A319051.P17429232382094988240

`record[A020639(A070258(n+1)-1)]`
-/

namespace A319051.P17429232382094988240
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A070258 (n + 1) - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A319051.P17429232382094988240

/-! ## A319051.P2040412081805846314

`record[A006530(A235578(n+1)-2)]`
-/

namespace A319051.P2040412081805846314
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A235578 (n + 1) - 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A319051.P2040412081805846314

/-! ## A319051.P14482159788352236872

`record[A006530(A114180(n+4)-1)]`
-/

namespace A319051.P14482159788352236872
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A114180 (n + 4) - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A319051.P14482159788352236872

/-! ## A319051.P3698951917075631322

`p?[A281192(n+1)-A007424(A281192(n+1))]`
-/

namespace A319051.P3698951917075631322
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281192 (n + 1) - A007424 (A281192 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A319051.P3698951917075631322

/-!
# A319052: Numbers that are not the sum of {2 squares, a nonnegative cube, and a nonnegative k-th power with k >= 17}.

The programs for A319052, there is no canonical definition to state claims against.
-/

/-! ## A319052.P1771573859051559760

`∩[A022552(n+1)+1, A022552(n+1)]`
-/

namespace A319052.P1771573859051559760
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022552 (n + 1) + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022552 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A319052.P1771573859051559760

/-! ## A319052.P8484666409626141658

`∩[A022552(n+1), A020725(A022552(n+1))]`
-/

namespace A319052.P8484666409626141658
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022552 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (A022552 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A319052.P8484666409626141658

/-!
# A319053: a(n) is the exponent of the largest power of 2 that appears in the factorization of the entries in the matrix {{3,1},{1,-1}}^n.

The programs for A319053, there is no canonical definition to state claims against.
-/

/-! ## A319053.P17761526266192534175

`A302242(A274817(n+2))+n`
-/

namespace A319053.P17761526266192534175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302242 (A274817 (n + 2)).toNat + (n : ℤ)

end

end A319053.P17761526266192534175

/-! ## A319053.P4088804903621056645

`A024164(n+1)+A004483(A077168(n))`
-/

namespace A319053.P4088804903621056645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024164 (n + 1) + A004483 (A077168 n).toNat

end

end A319053.P4088804903621056645

/-! ## A319053.P7723322911917968759

`A029837(A208648(n+4))+n`
-/

namespace A319053.P7723322911917968759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029837 (A208648 (n + 4)).toNat + (n : ℤ)

end

end A319053.P7723322911917968759

/-! ## A319053.P2678068648341298802

`Δ[A008620(n)]*A023402(A153732(n)+1)+n`
-/

namespace A319053.P2678068648341298802
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008620 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A023402 (A153732 n + 1).toNat + (n : ℤ)

end

end A319053.P2678068648341298802

/-!
# A319054: Maximum product of an aperiodic integer partition of n.

The programs for A319054, there is no canonical definition to state claims against.
-/

/-! ## A319054.P14243709254759776173

`3*a(n-3)` with `a(0)=1, a(1)=2, a(2)=3, a(3)=4, a(4)=6, a(5)=8`
-/

namespace A319054.P14243709254759776173
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2, 3, 4, 6, 8] fun n a =>
  3 * a (n - 3)

end

end A319054.P14243709254759776173

/-! ## A319054.P13932509135765818914

`ogf((1+2x+3x^2+x^3-x^5)/(1-3x^3))`
-/

namespace A319054.P13932509135765818914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 2, 3, 1, 0, -1] [1, 0, 0, -3] n

end

end A319054.P13932509135765818914

/-! ## A319054.P14263210593321661636

`record[ceil(A094615(n)/3)]`
-/

namespace A319054.P14263210593321661636
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A094615 n : ℚ) / 3⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A319054.P14263210593321661636

/-! ## A319054.P8575717474109211427

`record[ceil(2*A036561(n)/3)]`
-/

namespace A319054.P8575717474109211427
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(2 * A036561 n : ℚ) / 3⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A319054.P8575717474109211427

/-! ## A319054.P18098676060805098525

`round(A246080(2*(n+2))/3)`
-/

namespace A319054.P18098676060805098525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A246080 (2 * (n + 2)) : ℚ) / 3)

end

end A319054.P18098676060805098525

/-!
# A319055: Maximum product of an integer partition of n with relatively prime parts.

The programs for A319055, there is no canonical definition to state claims against.
-/

/-! ## A319055.P4650635460132618244

`A000792(A116921(n+1))*A000792(A116922(n+1))`
-/

namespace A319055.P4650635460132618244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000792 (A116921 (n + 1)).toNat * A000792 (A116922 (n + 1)).toNat

end

end A319055.P4650635460132618244

/-! ## A319055.P8435101182835898335

`lcm(A097853(n+1), A227501(A319645(n)))`
-/

namespace A319055.P8435101182835898335
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A097853 (n + 1)) (A227501 (A319645 n).toNat)

end

end A319055.P8435101182835898335

/-! ## A319055.P1461137563853288698

`(4-A322794(A032702(3*n+4)))*a(n-2)` with `a(0)=1, a(1)=1`
-/

namespace A319055.P1461137563853288698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  (4 - A322794 (A032702 (3 * n + 4)).toNat) * a (n - 2)

end

end A319055.P1461137563853288698

/-! ## A319055.P16837606808701152990

`A140494(or(A002998(n), A033762(n)))`
-/

namespace A319055.P16837606808701152990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140494 (Int.lor (A002998 n) (A033762 n)).toNat

end

end A319055.P16837606808701152990

/-! ## A319055.P6136053414010736521

`A062821(A000625(n)*A085079(n+1))`
-/

namespace A319055.P6136053414010736521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062821 (A000625 n * A085079 (n + 1)).toNat

end

end A319055.P6136053414010736521

/-!
# A319057: Minimum sum of a strict factorization of n into factors > 1.

The programs for A319057, there is no canonical definition to state claims against.
-/

/-! ## A319057.P17341869090510198964

`A318994(A318954(n+1)%A318948(n+5))`
-/

namespace A319057.P17341869090510198964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318994 (Int.tmod (A318954 (n + 1)) (A318948 (n + 5))).toNat

end

end A319057.P17341869090510198964

/-! ## A319057.P8143101052107455580

`A093178(A290845(n+1))*A318994(A318954(n+1))`
-/

namespace A319057.P8143101052107455580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093178 (A290845 (n + 1)).toNat * A318994 (A318954 (n + 1)).toNat

end

end A319057.P8143101052107455580

/-! ## A319057.P10575997108953315605

`A318994(A318954(n+1))+A151878(A069799(n+1))`
-/

namespace A319057.P10575997108953315605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318994 (A318954 (n + 1)).toNat + A151878 (A069799 (n + 1)).toNat

end

end A319057.P10575997108953315605

/-! ## A319057.P11343338008034582384

`A318994(A318954(n+1)²)/2`
-/

namespace A319057.P11343338008034582384
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A318994 (A318954 (n + 1) ^ 2).toNat : ℚ) / 2

end

end A319057.P11343338008034582384

/-! ## A319057.P13776698014803872928

`A181894(A187829(n+1))`
-/

namespace A319057.P13776698014803872928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181894 (A187829 (n + 1)).toNat

end

end A319057.P13776698014803872928

/-!
# A319058: Number of relatively prime aperiodic factorizations of n into factors > 1.

The programs for A319058, there is no canonical definition to state claims against.
-/

/-! ## A319058.P15951864552255692374

`A281116(n+1)-char[35]`
-/

namespace A319058.P15951864552255692374
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  35

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281116 (n + 1) - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A319058.P15951864552255692374

/-! ## A319058.P17659701180052404327

`A059893(∑{e}[n+1, #]!/∏{e}[n+1, #!])-1`
-/

namespace A319058.P17659701180052404327
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059893 (SequenceMachineLib.roundAway ((Nat.factorial (∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p) : ℚ) / ((∏ p ∈ Nat.primeFactors (f2 n), Nat.factorial (Nat.factorization (f2 n) p) : ℕ) : ℚ))).toNat - 1

end

end A319058.P17659701180052404327

/-! ## A319058.P888292228853330754

`∑{d}[∑{e}[n+1, #]!/∏{e}[n+1, #!]-1, A005206(#)]`
-/

namespace A319058.P888292228853330754
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (∑ p ∈ Nat.primeFactors (f2 n), Nat.factorization (f2 n) p) : ℚ) / ((∏ p ∈ Nat.primeFactors (f3 n), Nat.factorial (Nat.factorization (f3 n) p) : ℕ) : ℚ) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (SequenceMachineLib.roundAway (f1 n)).natAbs, A005206 d

end

end A319058.P888292228853330754

/-! ## A319058.P3929523171146430564

`A059893(A008480(n+1))-1`
-/

namespace A319058.P3929523171146430564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059893 (A008480 (n + 1)).toNat - 1

end

end A319058.P3929523171146430564

/-! ## A319058.P3417463187461786737

`A069766(A008480(n+1)-1)`
-/

namespace A319058.P3417463187461786737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069766 (A008480 (n + 1) - 1).toNat

end

end A319058.P3417463187461786737

/-! ## A319058.P9397531539508582481

`A153150(A008480(n+1)-1)`
-/

namespace A319058.P9397531539508582481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153150 (A008480 (n + 1) - 1).toNat

end

end A319058.P9397531539508582481

/-! ## A319058.P3940687104263968335

`A059893(A335447(n+1)+1)-1`
-/

namespace A319058.P3940687104263968335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059893 (A335447 (n + 1) + 1).toNat - 1

end

end A319058.P3940687104263968335

/-! ## A319058.P8221759140487768675

`and(-A052409(n+1), A281116(n+1))`
-/

namespace A319058.P8221759140487768675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-A052409 (n + 1)) (A281116 (n + 1))

end

end A319058.P8221759140487768675

/-! ## A319058.P7077216473458173251

`and(-A089723(n+1), A281116(n+1))`
-/

namespace A319058.P7077216473458173251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-A089723 (n + 1)) (A281116 (n + 1))

end

end A319058.P7077216473458173251

/-! ## A319058.P10361445102265087123

`and(-A327502(n+1), A281116(n+1))`
-/

namespace A319058.P10361445102265087123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-A327502 (n + 1)) (A281116 (n + 1))

end

end A319058.P10361445102265087123

/-!
# A319066: Number of partitions of integer partitions of n where all parts have the same length.

The programs for A319066, there is no canonical definition to state claims against.
-/

/-! ## A319066.P5815503670551271446

`A323429(n)+A037860(A180064(n))`
-/

namespace A319066.P5815503670551271446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323429 n + A037860 (A180064 n).toNat

end

end A319066.P5815503670551271446

/-! ## A319066.P10940167183182453515

`A323429(n)+A089789(A135401(n))`
-/

namespace A319066.P10940167183182453515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323429 n + A089789 (A135401 n).toNat

end

end A319066.P10940167183182453515

/-! ## A319066.P2287877324199355998

`A323429(n)+A285007(A050613(n))`
-/

namespace A319066.P2287877324199355998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323429 n + A285007 (A050613 n).toNat

end

end A319066.P2287877324199355998

/-! ## A319066.P9778174028020734419

`A306319(n)-A007949(A119611(n))`
-/

namespace A319066.P9778174028020734419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306319 n - A007949 (A119611 n).toNat

end

end A319066.P9778174028020734419

/-! ## A319066.P939955529507104270

`A117333(A097513(n))`
-/

namespace A319066.P939955529507104270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117333 (A097513 n).toNat

end

end A319066.P939955529507104270

/-!
# A319067: a(n) is the least k such that n divides A047994(k) where A047994 is the unitary totient function.

The programs for A319067, there is no canonical definition to state claims against.
-/

/-! ## A319067.P12615107115965056306

`A329524((n+1)*A081418(n))`
-/

namespace A319067.P12615107115965056306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329524 ((n + 1 : ℤ) * A081418 n).toNat

end

end A319067.P12615107115965056306

/-! ## A319067.P14667794865093975784

`A329524((n+1)*A290104(n+1))`
-/

namespace A319067.P14667794865093975784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329524 ((n + 1 : ℤ) * A290104 (n + 1)).toNat

end

end A319067.P14667794865093975784

/-! ## A319067.P16121750414904652695

`A329524(A290104(n+1)*A348553(n))`
-/

namespace A319067.P16121750414904652695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329524 (A290104 (n + 1) * A348553 n).toNat

end

end A319067.P16121750414904652695

/-! ## A319067.P11046179130605931313

`A329524(A205406(n+1))`
-/

namespace A319067.P11046179130605931313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329524 (A205406 (n + 1)).toNat

end

end A319067.P11046179130605931313

/-! ## A319067.P7831710335954175441

`A329524((n+1)*A294333(n))`
-/

namespace A319067.P7831710335954175441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329524 ((n + 1 : ℤ) * A294333 n).toNat

end

end A319067.P7831710335954175441

/-!
# A319068: a(n) is the greatest k such that A000203(k) divides n where A000203 is the sum of divisors of n.

The programs for A319068, there is no canonical definition to state claims against.
-/

/-! ## A319068.P10897919627674172069

`A378912(eq[A057427(n), A378912(n+1)])`
-/

namespace A319068.P10897919627674172069
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378912 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378912 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A319068.P10897919627674172069

/-! ## A319068.P4102818236927269984

`A378912(eq[A157928(2*n+1), A378912(n+1)])`
-/

namespace A319068.P4102818236927269984
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157928 (2 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378912 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378912 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A319068.P4102818236927269984

/-! ## A319068.P17771093230758105505

`A378912(eq[A267868(3*(n+1)), A378912(n+1)])`
-/

namespace A319068.P17771093230758105505
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267868 (3 * (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378912 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378912 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A319068.P17771093230758105505

/-! ## A319068.P11515341479439287730

`A335423(n^A050782(n))`
-/

namespace A319068.P11515341479439287730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335423 (SequenceMachineLib.roundAway ((n : ℚ) ^ (A050782 n : ℤ))).toNat

end

end A319068.P11515341479439287730

/-! ## A319068.P8636217058274421005

`A335423(n^A048865(n+1))`
-/

namespace A319068.P8636217058274421005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335423 (SequenceMachineLib.roundAway ((n : ℚ) ^ (A048865 (n + 1) : ℤ))).toNat

end

end A319068.P8636217058274421005

/-!
# A319069: a(1) = a(2) = 1; a(n) = a(n-A000005(n-1)) + a(n-A000005(n-2)) for n > 2.

The programs for A319069, the canonical program `A319069.P492491038514716107` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A319069 has offset 1).

The definition of A319069 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000005, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A319069.P492491038514716107

`a(n-A000005(n-1))+a(n-A000005(n))` with `a(0)=1, a(1)=1`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A319069

/-- `a(n-A000005(n-1))+a(n-A000005(n))` -/
def P492491038514716107.Spec : Prop :=
  ∀ n, (P492491038514716107.a n : ℤ) = A319069 (n + 1)

theorem P492491038514716107.correct : P492491038514716107.Spec := by
  intro n
  simp only [A319069, Nat.add_sub_cancel]

end A319069

/-! ## A319069.P18129333977997995935

`a(n-A000005(n))+a(n-A000005(n-1))` with `a(0)=1, a(1)=1`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A319069.P18129333977997995935
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 1] fun n a =>
  a ((n : ℤ) - A000005 n).toNat + a ((n : ℤ) - A000005 (n - 1)).toNat

end

end A319069.P18129333977997995935

namespace A319069

/-- `a(n-A000005(n))+a(n-A000005(n-1))` -/
def P18129333977997995935.Spec : Prop :=
  ∀ n, (P18129333977997995935.a n : ℤ) = A319069 (n + 1)

end A319069

/-! ## A319069.P10933028383183594325

`A048766(A076293(n))`
-/

namespace A319069.P10933028383183594325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048766 (A076293 n).toNat

end

end A319069.P10933028383183594325

namespace A319069

/-- `A048766(A076293(n))` -/
def P10933028383183594325.Spec : Prop :=
  ∀ n, P10933028383183594325.a n = A319069 (n + 1)

end A319069

/-! ## A319069.P1009677784452652493

`A062575(A241391(n+1))`
-/

namespace A319069.P1009677784452652493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062575 (A241391 (n + 1)).toNat

end

end A319069.P1009677784452652493

namespace A319069

/-- `A062575(A241391(n+1))` -/
def P1009677784452652493.Spec : Prop :=
  ∀ n, P1009677784452652493.a n = A319069 (n + 1)

end A319069

/-! ## A319069.P3201023089947289939

`A048766(A048766(n+4)*A076295(n))`
-/

namespace A319069.P3201023089947289939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048766 (A048766 (n + 4) * A076295 n).toNat

end

end A319069.P3201023089947289939

namespace A319069

/-- `A048766(A048766(n+4)*A076295(n))` -/
def P3201023089947289939.Spec : Prop :=
  ∀ n, P3201023089947289939.a n = A319069 (n + 1)

end A319069

/-!
# A319071: Number of integer partitions of n whose product of parts is a perfect power and whose parts all have the same number of prime factors, counted with multiplicity.

The programs for A319071, there is no canonical definition to state claims against.
-/

/-! ## A319071.P6378574565067144910

`and(A008624(n), A316984(A022130(n)))`
-/

namespace A319071.P6378574565067144910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A008624 n) (A316984 (A022130 n).toNat)

end

end A319071.P6378574565067144910

/-! ## A319071.P2711984631397185585

`and(A008624(n), A064413(A069041(n+1)))`
-/

namespace A319071.P2711984631397185585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A008624 n) (A064413 (A069041 (n + 1)).toNat)

end

end A319071.P2711984631397185585

/-! ## A319071.P9777158653324143714

`xor(A010051(A350202(n+2)), A032741(n))`
-/

namespace A319071.P9777158653324143714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A010051 (A350202 (n + 2)).toNat) (A032741 n)

end

end A319071.P9777158653324143714

/-! ## A319071.P11249590105635048270

`and(A258571(n+1), A352515(A000930(n)))`
-/

namespace A319071.P11249590105635048270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A258571 (n + 1)) (A352515 (A000930 n).toNat)

end

end A319071.P11249590105635048270

/-! ## A319071.P17618891819811979158

`A286055(A358522(3*n+2))+A274576(n)`
-/

namespace A319071.P17618891819811979158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286055 (A358522 (3 * n + 2)).toNat + A274576 n

end

end A319071.P17618891819811979158

/-!
# A319072: a(n) is the sum of the non-bi-unitary divisors of n.

The programs for A319072, there is no canonical definition to state claims against.
-/

/-! ## A319072.P5006000803656806823

`A000203(n+1)-A188999(n+1)`
-/

namespace A319072.P5006000803656806823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1) - A188999 (n + 1)

end

end A319072.P5006000803656806823

/-! ## A319072.P9636167345767102195

`∑{d}[n+1, #]-(A331970(-xor(n, -1))-xor(n, -1))`
-/

namespace A319072.P9636167345767102195
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ d ∈ Nat.divisors (f1 n), d : ℕ) : ℤ) - (A331970 (-Int.xor (n : ℤ) (-1)).toNat - Int.xor (n : ℤ) (-1))

end

end A319072.P9636167345767102195

/-! ## A319072.P11132815425351485225

`Δ[A160664(n)]-A188999(n+1)`
-/

namespace A319072.P11132815425351485225
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160664 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A188999 (n + 1)

end

end A319072.P11132815425351485225

/-! ## A319072.P11317124976130470820

`A001065(n+1)-A331970(n+1)`
-/

namespace A319072.P11317124976130470820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001065 (n + 1) - A331970 (n + 1)

end

end A319072.P11317124976130470820

/-! ## A319072.P5428168731436103522

`A074400(n+1)/2-A188999(n+1)`
-/

namespace A319072.P5428168731436103522
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A074400 (n + 1) : ℚ) / 2 - (A188999 (n + 1) : ℚ)

end

end A319072.P5428168731436103522

/-! ## A319072.P3048579607361286581

`A001065(n+1)+1+n-A188999(n+1)`
-/

namespace A319072.P3048579607361286581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001065 (n + 1) + 1 + (n : ℤ) - A188999 (n + 1)

end

end A319072.P3048579607361286581

/-! ## A319072.P553960137098562487

`A000203(n+1)-(A331970(n+1)+1+n)`
-/

namespace A319072.P553960137098562487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1) - (A331970 (n + 1) + 1 + (n : ℤ))

end

end A319072.P553960137098562487

/-! ## A319072.P261155597163041948

`∑{d}[n+1, #-A000010(#)]-A331970(n+1)`
-/

namespace A319072.P261155597163041948
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), ((d : ℤ) - A000010 d) - A331970 (n + 1)

end

end A319072.P261155597163041948

/-! ## A319072.P14599366858321398139

`abs(A188999(n+1)-(A155085(n+1)-(n+1)))`
-/

namespace A319072.P14599366858321398139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A188999 (n + 1) - (A155085 (n + 1) - (n + 1 : ℤ))|

end

end A319072.P14599366858321398139

/-! ## A319072.P17773612015398539282

`abs(A188999(n+1)-(A237588(n+1)+Δ[n²]))`
-/

namespace A319072.P17773612015398539282
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A188999 (n + 1) - (A237588 (n + 1) + ((f1 (n + 1) : ℤ) - (f1 n : ℤ)))|

end

end A319072.P17773612015398539282

/-! ## A319072.P354575764106845025

`2*(n+1)-A033879(n+1)-A188999(n+1)`
-/

namespace A319072.P354575764106845025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * (n + 1) : ℤ) - A033879 (n + 1) - A188999 (n + 1)

end

end A319072.P354575764106845025

/-! ## A319072.P17808908224748034964

`A245092(A005408(n))-A188999(n+1)`
-/

namespace A319072.P17808908224748034964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245092 (A005408 n).toNat - A188999 (n + 1)

end

end A319072.P17808908224748034964

/-! ## A319072.P4921861636837935227

`A034448(n+1)+A048146(n+1)-A188999(n+1)`
-/

namespace A319072.P4921861636837935227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034448 (n + 1) + (A048146 (n + 1) - A188999 (n + 1))

end

end A319072.P4921861636837935227

/-! ## A319072.P4985211486988793018

`A326065(A103517(n))-A188999(n+1)`
-/

namespace A319072.P4985211486988793018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326065 (A103517 n).toNat - A188999 (n + 1)

end

end A319072.P4985211486988793018

/-! ## A319072.P3737370306157102514

`A127057(A000124(n))-A188999(n+1)`
-/

namespace A319072.P3737370306157102514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127057 (A000124 n).toNat - A188999 (n + 1)

end

end A319072.P3737370306157102514

/-!
# A319073: Square array read by antidiagonals upwards: T(n,k) = k*sigma(n), n >= 1, k >= 1.

The programs for A319073, there is no canonical definition to state claims against.
-/

/-! ## A319073.P12363244199678388611

`A274824(∑[char[∑[n]]]²-n)`
-/

namespace A319073.P12363244199678388611
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274824 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 - n)

end

end A319073.P12363244199678388611

/-! ## A319073.P5539775991060002571

`(1-C(∑[char[∑[n]]], 2)+n)*A245093(∑[char[∑[n]]]²-n)`
-/

namespace A319073.P5539775991060002571
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def f6 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f5 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f6 j

open Classical in
def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f5 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - (Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j) 2 : ℤ) + (n : ℤ)) * A245093 ((∑ j ∈ Finset.range (n + 1), f4 j) ^ 2 - n)

end

end A319073.P5539775991060002571

/-! ## A319073.P10946312799343076011

`(1-C(∑[char[∑[n]]], 2)+n)*A000203(C(comp[∑[n]]-n, 2)-n)`
-/

namespace A319073.P10946312799343076011
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def f5 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f5 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - (Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j) 2 : ℤ) + (n : ℤ)) * A000203 (Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f4 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 - n)

end

end A319073.P10946312799343076011

/-! ## A319073.P232917449983576423

`(1-C(∑[char[∑[n]]], 2)+n)*A324545(C(comp[∑[n]]-n, 2)-n)`
-/

namespace A319073.P232917449983576423
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def f5 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f5 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - (Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j) 2 : ℤ) + (n : ℤ)) * A324545 (Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f4 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 - n)

end

end A319073.P232917449983576423

/-! ## A319073.P3592932441830798522

`A002260(n+1)*A272172(n+1)`
-/

namespace A319073.P3592932441830798522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1) * A272172 (n + 1)

end

end A319073.P3592932441830798522

/-! ## A319073.P18153611670518056989

`(A002262(n)+1)*A272172(n+1)`
-/

namespace A319073.P18153611670518056989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A002262 n + 1) * A272172 (n + 1)

end

end A319073.P18153611670518056989

/-! ## A319073.P1824984215271329556

`A057555(2*n+1)*A272172(n+1)`
-/

namespace A319073.P1824984215271329556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057555 (2 * n + 1) * A272172 (n + 1)

end

end A319073.P1824984215271329556

/-! ## A319073.P12307360452847342988

`A000203(C(comp[∑[n]]-n, 2)-n)*A002260(n+1)`
-/

namespace A319073.P12307360452847342988
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 - n) * A002260 (n + 1)

end

end A319073.P12307360452847342988

/-! ## A319073.P1505205008713818088

`(A002262(n)+1)*A000203(C(comp[∑[n]]-n, 2)-n)`
-/

namespace A319073.P1505205008713818088
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A002262 n + 1) * A000203 (Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 - n)

end

end A319073.P1505205008713818088

/-!
# A319074: a(n) is the sum of the first n nonnegative powers of the n-th prime.

The programs for A319074, the canonical program `A319074.P3718773338656599450` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A319074 has offset 1).

The definition of A319074 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000040, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A319074.P16275530427838274997

`A069459(n+1)/A006093(n+1)`
-/

namespace A319074.P16275530427838274997
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A069459 (n + 1) : ℚ) / (A006093 (n + 1) : ℚ)

end

end A319074.P16275530427838274997

namespace A319074

/-- `A069459(n+1)/A006093(n+1)` -/
def P16275530427838274997.Spec : Prop :=
  ∀ n, P16275530427838274997.a n = (A319074 (n + 1) : ℚ)

end A319074

/-! ## A319074.P7270215316129454968

`(A062457(n+1)-1)/A006093(n+1)`
-/

namespace A319074.P7270215316129454968
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A062457 (n + 1) - 1 : ℚ) / (A006093 (n + 1) : ℚ)

end

end A319074.P7270215316129454968

namespace A319074

/-- `(A062457(n+1)-1)/A006093(n+1)` -/
def P7270215316129454968.Spec : Prop :=
  ∀ n, P7270215316129454968.a n = (A319074 (n + 1) : ℚ)

end A319074

/-! ## A319074.P3718773338656599450

`(A000040(n+1)^(n+1)-1)/(A000040(n+1)-1)`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A319074

/-- `(A000040(n+1)^(n+1)-1)/(A000040(n+1)-1)` -/
def P3718773338656599450.Spec : Prop :=
  ∀ n, P3718773338656599450.a n = (A319074 (n + 1) : ℚ)

end A319074

/-!
# A319075: Square array T(n,k) read by antidiagonal upwards in which row n lists the n-th powers of primes, hence column k lists the powers of the k-th prime, n >= 0, k >= 1.

The programs for A319075, there is no canonical definition to state claims against.
-/

/-! ## A319075.P9810454860043107689

`A037126(n+1)^(C(comp[∑[n]]-n, 2)-(n+1))`
-/

namespace A319075.P9810454860043107689
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A037126 (n + 1) : ℚ) ^ ((Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 : ℤ) - (n + 1 : ℤ) : ℤ)

end

end A319075.P9810454860043107689

/-! ## A319075.P8865226980444369870

`A000040(1-C(∑[char[∑[n]]], 2)+n)^(C(comp[∑[n]]-n, 2)-(n+1))`
-/

namespace A319075.P8865226980444369870
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def f5 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f5 j

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000040 (1 - (Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j) 2 : ℤ) + (n : ℤ)).toNat : ℚ) ^ ((Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f4 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 : ℤ) - (n + 1 : ℤ) : ℤ)

end

end A319075.P8865226980444369870

/-! ## A319075.P17850164708619470276

`A344028(A130328(n))`
-/

namespace A319075.P17850164708619470276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344028 (A130328 n).toNat

end

end A319075.P17850164708619470276

/-! ## A319075.P8709723859621317360

`A324395(A173787(n))`
-/

namespace A319075.P8709723859621317360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324395 (A173787 n).toNat

end

end A319075.P8709723859621317360

/-! ## A319075.P15473673918594582965

`A005940(A173787(n)+1)`
-/

namespace A319075.P15473673918594582965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005940 (A173787 n + 1).toNat

end

end A319075.P15473673918594582965

/-! ## A319075.P18401286679008614160

`A337377(A130328(n+1))`
-/

namespace A319075.P18401286679008614160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337377 (A130328 (n + 1)).toNat

end

end A319075.P18401286679008614160

/-! ## A319075.P98993657528022366

`A337377(2*A173787(n))`
-/

namespace A319075.P98993657528022366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337377 (2 * A173787 n).toNat

end

end A319075.P98993657528022366

/-! ## A319075.P12243591423625515490

`A337377(A204985(n+2)/2)`
-/

namespace A319075.P12243591423625515490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337377 (SequenceMachineLib.roundAway ((A204985 (n + 2) : ℚ) / 2)).toNat

end

end A319075.P12243591423625515490

/-! ## A319075.P17524695793941734849

`gcd(A182944(n+1), A332644(n))`
-/

namespace A319075.P17524695793941734849
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A182944 (n + 1)) (A332644 n)

end

end A319075.P17524695793941734849

/-! ## A319075.P10571802630087770363

`A182944(n+1)/A037126(n+1)`
-/

namespace A319075.P10571802630087770363
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A182944 (n + 1) : ℚ) / (A037126 (n + 1) : ℚ)

end

end A319075.P10571802630087770363

/-!
# A319076: Square array T(n,k) read by antidiagonal upwards in which column k lists the partial sums of the powers of the k-th prime, n >= 0, k >= 1.

The programs for A319076, there is no canonical definition to state claims against.
-/

/-! ## A319076.P14850946244706748057

`A324054(A173787(n))`
-/

namespace A319076.P14850946244706748057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324054 (A173787 n).toNat

end

end A319076.P14850946244706748057

/-! ## A319076.P9303379766409592345

`A324054(A137688(n)-A059268(n))`
-/

namespace A319076.P9303379766409592345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324054 (A137688 n - A059268 n).toNat

end

end A319076.P9303379766409592345

/-! ## A319076.P14929222711695605928

`A324054(A130328(n)-A137688(n))`
-/

namespace A319076.P14929222711695605928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324054 (A130328 n - A137688 n).toNat

end

end A319076.P14929222711695605928

/-! ## A319076.P15327050968771721548

`A324054(A130328(n)%A137688(n))`
-/

namespace A319076.P15327050968771721548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324054 (Int.tmod (A130328 n) (A137688 n)).toNat

end

end A319076.P15327050968771721548

/-! ## A319076.P13452490643319910615

`A324054(A130328(n))-A182944(n+1)`
-/

namespace A319076.P13452490643319910615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324054 (A130328 n).toNat - A182944 (n + 1)

end

end A319076.P13452490643319910615

/-! ## A319076.P1933796545422285106

`∑{d}[A319075(n), #]`
-/

namespace A319076.P1933796545422285106
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319075 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, d

end

end A319076.P1933796545422285106

/-! ## A319076.P6135570499071110835

`∑{d}[A037126(n+1)^(C(comp[∑[n]]-n, 2)-(n+1)), #]`
-/

namespace A319076.P6135570499071110835
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A037126 (n + 1) : ℚ) ^ ((Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 : ℤ) - (n + 1 : ℤ) : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (SequenceMachineLib.roundAway (f1 n)).natAbs, d

end

end A319076.P6135570499071110835

/-! ## A319076.P14096775604299339057

`∑{d}[A344028(A130328(n)), #]`
-/

namespace A319076.P14096775604299339057
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344028 (A130328 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, d

end

end A319076.P14096775604299339057

/-! ## A319076.P9520321610129975894

`∑{d}[A005940(A173787(n)+1), #]`
-/

namespace A319076.P9520321610129975894
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005940 (A173787 n + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, d

end

end A319076.P9520321610129975894

/-! ## A319076.P15159758068381934027

`∑{d}[A337377(A130328(n+1)), #]`
-/

namespace A319076.P15159758068381934027
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337377 (A130328 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, d

end

end A319076.P15159758068381934027

/-!
# A319077: Number of non-isomorphic strict multiset partitions (sets of multisets) of weight n with empty intersection.

The programs for A319077, there is no canonical definition to state claims against.
-/

/-! ## A319077.P5053339695887731072

`A316980(n)+A319793(n)-A319557(n)`
-/

namespace A319077.P5053339695887731072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316980 n + (A319793 n - A319557 n)

end

end A319077.P5053339695887731072

/-! ## A319077.P7660712926131761253

`A000108(n)-A001222(A125052(n))`
-/

namespace A319077.P7660712926131761253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 n - A001222 (A125052 n).toNat

end

end A319077.P7660712926131761253

/-! ## A319077.P17144931040840245249

`abs(A168491(n))-A001222(A125052(n))`
-/

namespace A319077.P17144931040840245249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A168491 n| - A001222 (A125052 n).toNat

end

end A319077.P17144931040840245249

/-! ## A319077.P11048348017606258401

`A120588(n+1)-A001222(A125052(n))`
-/

namespace A319077.P11048348017606258401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120588 (n + 1) - A001222 (A125052 n).toNat

end

end A319077.P11048348017606258401

/-!
# A319078: Expansion of phi(-q) * phi(q)^2 in powers of q where phi() is a Ramanujan theta function.

The programs for A319078, there is no canonical definition to state claims against.
-/

/-! ## A319078.P9613246850474200015

`A080965(2*n)`
-/

namespace A319078.P9613246850474200015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080965 (2 * n)

end

end A319078.P9613246850474200015

/-! ## A319078.P13718059689081840471

`A083703(2*n)`
-/

namespace A319078.P13718059689081840471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083703 (2 * n)

end

end A319078.P13718059689081840471

/-! ## A319078.P9903497550423830414

`(-1)^n*A212885(n)`
-/

namespace A319078.P9903497550423830414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A212885 n

end

end A319078.P9903497550423830414

/-! ## A319078.P7340813793417488968

`A057077(n)*A246631(n)`
-/

namespace A319078.P7340813793417488968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057077 n * A246631 n

end

end A319078.P7340813793417488968

/-! ## A319078.P4667777110861090761

`A212885(n)/A033999(n)`
-/

namespace A319078.P4667777110861090761
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A212885 n : ℚ) / (A033999 n : ℚ)

end

end A319078.P4667777110861090761

/-! ## A319078.P6829464821674319723

`abs(A212885(n))*A057077(n)`
-/

namespace A319078.P6829464821674319723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A212885 n| * A057077 n

end

end A319078.P6829464821674319723

/-! ## A319078.P6247332300426162018

`2*A169783(n)-A005875(n)`
-/

namespace A319078.P6247332300426162018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A169783 n - A005875 n

end

end A319078.P6247332300426162018

/-! ## A319078.P5847106476569017093

`A212885(n)/A087960(2*n)`
-/

namespace A319078.P5847106476569017093
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A212885 n : ℚ) / (A087960 (2 * n) : ℚ)

end

end A319078.P5847106476569017093

/-! ## A319078.P4723369988533599865

`abs(A212885(n))/A057077(n+4)`
-/

namespace A319078.P4723369988533599865
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (|A212885 n| : ℚ) / (A057077 (n + 4) : ℚ)

end

end A319078.P4723369988533599865

/-! ## A319078.P15794203815006649098

`A212885(n)*A213624(n)/A246833(n)`
-/

namespace A319078.P15794203815006649098
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A212885 n * A213624 n : ℚ) / (A246833 n : ℚ)

end

end A319078.P15794203815006649098

/-! ## A319078.P11301118092139370828

`A080964(8*n)`
-/

namespace A319078.P11301118092139370828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080964 (8 * n)

end

end A319078.P11301118092139370828

/-! ## A319078.P15190528110966868481

`A212885(n)*A219977(n²)`
-/

namespace A319078.P15190528110966868481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212885 n * A219977 (n ^ 2)

end

end A319078.P15190528110966868481

/-!
# A319080: Sequence, read by rows, encoding an infinite sequence of diamond-shaped arrays of nonnegative integers (see example).

The programs for A319080, there is no canonical definition to state claims against.
-/

/-! ## A319080.P12574158717328303860

`A033270(p?[A026814(A280913(n))])`
-/

namespace A319080.P12574158717328303860
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026814 (A280913 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033270 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A319080.P12574158717328303860

/-! ## A319080.P9186972533542810155

`A071585(A256749(n))%A043277(n+1)`
-/

namespace A319080.P9186972533542810155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A071585 (A256749 n).toNat) (A043277 (n + 1))

end

end A319080.P9186972533542810155

/-! ## A319080.P2195547470559101692

`A263958(n+1)%A129398(n)`
-/

namespace A319080.P2195547470559101692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A263958 (n + 1)) (A129398 n)

end

end A319080.P2195547470559101692

/-! ## A319080.P11627922115290166608

`A129386(n+2)²%A129398(n)`
-/

namespace A319080.P11627922115290166608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A129386 (n + 2) ^ 2) (A129398 n)

end

end A319080.P11627922115290166608

/-! ## A319080.P2459298163898317354

`and(A088950(n+1), A250246(A047866(2*n+1)))`
-/

namespace A319080.P2459298163898317354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A088950 (n + 1)) (A250246 (A047866 (2 * n + 1)).toNat)

end

end A319080.P2459298163898317354

/-!
# A319081: Number of primes of the form k^3 + n^2 for 0 <= k <= n.

The programs for A319081, there is no canonical definition to state claims against.
-/

/-! ## A319081.P2859629524479461921

`A007369(n+1)%A084126(A005578(n))`
-/

namespace A319081.P2859629524479461921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A007369 (n + 1)) (A084126 (A005578 n).toNat)

end

end A319081.P2859629524479461921

/-! ## A319081.P14228190885927492416

`A260773(A025480(n))%A007947(A166646(n+1))`
-/

namespace A319081.P14228190885927492416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A260773 (A025480 n).toNat) (A007947 (A166646 (n + 1)).toNat)

end

end A319081.P14228190885927492416

/-! ## A319081.P5295984326881733957

`A075685(A083760(n+2))`
-/

namespace A319081.P5295984326881733957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075685 (A083760 (n + 2)).toNat

end

end A319081.P5295984326881733957

/-! ## A319081.P4603336715331431805

`and(A078898(n), A087473(A077168(n)))`
-/

namespace A319081.P4603336715331431805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A078898 n) (A087473 (A077168 n).toNat)

end

end A319081.P4603336715331431805

/-! ## A319081.P9343480214832823336

`and(A078898(n), A218320(A004148(n)))`
-/

namespace A319081.P9343480214832823336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A078898 n) (A218320 (A004148 n).toNat)

end

end A319081.P9343480214832823336

/-!
# A319082: A(n, k) = (1/k)*Sum_{d|k} EulerPhi(d)*n^(k/d) for n >= 0 and k > 0, A(n, 0) = 0, square array read by ascending antidiagonals.

The programs for A319082, there is no canonical definition to state claims against.
-/

/-! ## A319082.P9659427852637658133

`A185651(n)/A130270(n+1)`
-/

namespace A319082.P9659427852637658133
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A185651 n : ℚ) / (A130270 (n + 1) : ℚ)

end

end A319082.P9659427852637658133

/-! ## A319082.P4644584200761205204

`A185651(n)/A144328(n+1)`
-/

namespace A319082.P4644584200761205204
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A185651 n : ℚ) / (A144328 (n + 1) : ℚ)

end

end A319082.P4644584200761205204

/-! ## A319082.P13950918473411394374

`A185651(n)/A002260(A028310(n))`
-/

namespace A319082.P13950918473411394374
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A185651 n : ℚ) / (A002260 (A028310 n).toNat : ℚ)

end

end A319082.P13950918473411394374

/-! ## A319082.P3761675564088903013

`A025581(n)*A343489(n)/A130270(n+1)`
-/

namespace A319082.P3761675564088903013
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A025581 n * A343489 n : ℚ) / (A130270 (n + 1) : ℚ)

end

end A319082.P3761675564088903013

/-! ## A319082.P14006535944411277445

`A185651(n)/A136480(A059268(n))`
-/

namespace A319082.P14006535944411277445
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A185651 n : ℚ) / (A136480 (A059268 n).toNat : ℚ)

end

end A319082.P14006535944411277445

/-! ## A319082.P3465456382162262715

`A185651(n)/A136480(A173787(n))`
-/

namespace A319082.P3465456382162262715
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A185651 n : ℚ) / (A136480 (A173787 n).toNat : ℚ)

end

end A319082.P3465456382162262715

/-!
# A319083: Coefficients of polynomials related to the D'Arcais polynomials and Dedekind's eta(q) function, triangle read by rows, T(n,k) for 0 <= k <= n.

The programs for A319083, there is no canonical definition to state claims against.
-/

/-! ## A319083.P7446989480353538192

`or(A067898(A011782(n)), A207327(n))`
-/

namespace A319083.P7446989480353538192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A067898 (A011782 n).toNat) (A207327 n)

end

end A319083.P7446989480353538192

/-! ## A319083.P4601289975521120718

`or(A067898(A215095(n)), A207327(n))`
-/

namespace A319083.P4601289975521120718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A067898 (A215095 n).toNat) (A207327 n)

end

end A319083.P4601289975521120718

/-! ## A319083.P5832352322652194580

`A207327(n)+A067898(A215095(A067898(n)+n))`
-/

namespace A319083.P5832352322652194580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207327 n + A067898 (A215095 (A067898 n + (n : ℤ)).toNat).toNat

end

end A319083.P5832352322652194580

/-! ## A319083.P2098602974965849461

`A207327(n)+A067898(A010750(n))`
-/

namespace A319083.P2098602974965849461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207327 n + A067898 (A010750 n).toNat

end

end A319083.P2098602974965849461

/-! ## A319083.P2416219749311073427

`A352104(A370432(n))`
-/

namespace A319083.P2416219749311073427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352104 (A370432 n).toNat

end

end A319083.P2416219749311073427

/-!
# A319084: Numbers k such that the denominator of the Bernoulli polynomial B_k(x) is the squarefree kernel of k+1.

The programs for A319084, there is no canonical definition to state claims against.
-/

/-! ## A319084.P10944326514650542636

`eq[1, A318256(n)]`
-/

namespace A319084.P10944326514650542636
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318256 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A319084.P10944326514650542636

/-! ## A319084.P9953226386778464675

`p?[A005555(n)]-2`
-/

namespace A319084.P9953226386778464675
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005555 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - 2

end

end A319084.P9953226386778464675

/-! ## A319084.P12708762936204534152

`A094960(n+1)-1`
-/

namespace A319084.P12708762936204534152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094960 (n + 1) - 1

end

end A319084.P12708762936204534152

/-! ## A319084.P3604308216560351498

`eq[1, A366189(n+1)]`
-/

namespace A319084.P3604308216560351498
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366189 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A319084.P3604308216560351498

/-!
# A319085: a(n) = Sum_{k=1..n} k^2*tau(k), where tau is A000005.

The programs for A319085, the canonical program `A319085.P9667317154857527139` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A319085 has offset 1).

The definition of A319085 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A319085.P9667317154857527139

`∑[∑{d}[n+1, lcm(#, (n+1)²)]]`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A319085

/-- `∑[∑{d}[n+1, lcm(#, (n+1)²)]]` -/
def P9667317154857527139.Spec : Prop :=
  ∀ n, (P9667317154857527139.a n : ℤ) = A319085 (n + 1)

theorem P9667317154857527139.correct : P9667317154857527139.Spec := by
  intro n
  simp only [A319085, Nat.add_sub_cancel]

end A319085

/-! ## A319085.P1752918762570941085

`∑[∑{d}[n+1, (gcd(n, #)+n)²]]`
-/

namespace A319085.P1752918762570941085
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n), (Nat.gcd n d + n) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A319085.P1752918762570941085

namespace A319085

/-- `∑[∑{d}[n+1, (gcd(n, #)+n)²]]` -/
def P1752918762570941085.Spec : Prop :=
  ∀ n, (P1752918762570941085.a n : ℤ) = A319085 (n + 1)

end A319085

/-! ## A319085.P444469302342259767

`∑[∑{d}[n+1, (n-or(#, -1))²]]`
-/

namespace A319085.P444469302342259767
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n), ((n : ℤ) - Int.lor (d : ℤ) (-1)) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A319085.P444469302342259767

namespace A319085

/-- `∑[∑{d}[n+1, (n-or(#, -1))²]]` -/
def P444469302342259767.Spec : Prop :=
  ∀ n, P444469302342259767.a n = A319085 (n + 1)

end A319085

/-! ## A319085.P12592456123714789761

`∑[(n+1)²*∏{e}[n+1, #+1]]`
-/

namespace A319085.P12592456123714789761
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2 * (∏ p ∈ Nat.primeFactors (f2 n), (Nat.factorization (f2 n) p + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A319085.P12592456123714789761

namespace A319085

/-- `∑[(n+1)²*∏{e}[n+1, #+1]]` -/
def P12592456123714789761.Spec : Prop :=
  ∀ n, (P12592456123714789761.a n : ℤ) = A319085 (n + 1)

end A319085

/-! ## A319085.P14323426986133482107

`∑[(n+1)*(n+1)*∏{e}[n+1, #+1]]`
-/

namespace A319085.P14323426986133482107
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) * ((n + 1) * (∏ p ∈ Nat.primeFactors (f2 n), (Nat.factorization (f2 n) p + 1)))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A319085.P14323426986133482107

namespace A319085

/-- `∑[(n+1)*(n+1)*∏{e}[n+1, #+1]]` -/
def P14323426986133482107.Spec : Prop :=
  ∀ n, (P14323426986133482107.a n : ℤ) = A319085 (n + 1)

end A319085

/-! ## A319085.P12665869387369938327

`∑[A034714(n+1)]`
-/

namespace A319085.P12665869387369938327
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034714 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A319085.P12665869387369938327

namespace A319085

/-- `∑[A034714(n+1)]` -/
def P12665869387369938327.Spec : Prop :=
  ∀ n, P12665869387369938327.a n = A319085 (n + 1)

end A319085

/-! ## A319085.P13352069467306440711

`∑[(n+1)*A038040(n+1)]`
-/

namespace A319085.P13352069467306440711
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A038040 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A319085.P13352069467306440711

namespace A319085

/-- `∑[(n+1)*A038040(n+1)]` -/
def P13352069467306440711.Spec : Prop :=
  ∀ n, P13352069467306440711.a n = A319085 (n + 1)

end A319085

/-! ## A319085.P516431530613891494

`∑[A386012(n+1)/(n+1)]`
-/

namespace A319085.P516431530613891494
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A386012 (n + 1) : ℚ) / (n + 1 : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A319085.P516431530613891494

namespace A319085

/-- `∑[A386012(n+1)/(n+1)]` -/
def P516431530613891494.Spec : Prop :=
  ∀ n, P516431530613891494.a n = (A319085 (n + 1) : ℚ)

end A319085

/-! ## A319085.P3278623402779486960

`∑[(n+1)²*Δ[A006218(n)]]`
-/

namespace A319085.P3278623402779486960
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006218 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℤ) * (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A319085.P3278623402779486960

namespace A319085

/-- `∑[(n+1)²*Δ[A006218(n)]]` -/
def P3278623402779486960.Spec : Prop :=
  ∀ n, P3278623402779486960.a n = A319085 (n + 1)

end A319085

/-! ## A319085.P5377469975453395797

`∑[(n+1)²*A000005(n+1)]`
-/

namespace A319085.P5377469975453395797
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℤ) * A000005 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A319085.P5377469975453395797

namespace A319085

/-- `∑[(n+1)²*A000005(n+1)]` -/
def P5377469975453395797.Spec : Prop :=
  ∀ n, P5377469975453395797.a n = A319085 (n + 1)

end A319085

/-! ## A319085.P9843922371560940000

`∑[A386013(n+1)/(n+1)²]`
-/

namespace A319085.P9843922371560940000
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A386013 (n + 1) : ℚ) / ((n + 1) ^ 2 : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A319085.P9843922371560940000

namespace A319085

/-- `∑[A386013(n+1)/(n+1)²]` -/
def P9843922371560940000.Spec : Prop :=
  ∀ n, P9843922371560940000.a n = (A319085 (n + 1) : ℚ)

end A319085

/-! ## A319085.P1553312469902751912

`∑[(n+1)²*A320111(2*(n+1))]`
-/

namespace A319085.P1553312469902751912
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℤ) * A320111 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A319085.P1553312469902751912

namespace A319085

/-- `∑[(n+1)²*A320111(2*(n+1))]` -/
def P1553312469902751912.Spec : Prop :=
  ∀ n, P1553312469902751912.a n = A319085 (n + 1)

end A319085

/-! ## A319085.P5622787281963590143

`∑[(n+1)*(n+1)*A000005(C(n+1, n))]`
-/

namespace A319085.P5622787281963590143
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * ((n + 1 : ℤ) * A000005 (Nat.choose (n + 1) n))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A319085.P5622787281963590143

namespace A319085

/-- `∑[(n+1)*(n+1)*A000005(C(n+1, n))]` -/
def P5622787281963590143.Spec : Prop :=
  ∀ n, P5622787281963590143.a n = A319085 (n + 1)

end A319085

/-! ## A319085.P13583340551427940974

`∑[A000005(2*n+1-n)*∑[2*n+1]]`
-/

namespace A319085.P13583340551427940974
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (2 * n + 1 - n) * ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A319085.P13583340551427940974

namespace A319085

/-- `∑[A000005(2*n+1-n)*∑[2*n+1]]` -/
def P13583340551427940974.Spec : Prop :=
  ∀ n, P13583340551427940974.a n = A319085 (n + 1)

end A319085

/-! ## A319085.P9910828799053239490

`∑[A038040(n+1)²/A000005(n+1)]`
-/

namespace A319085.P9910828799053239490
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038040 (n + 1) ^ 2 : ℚ) / (A000005 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A319085.P9910828799053239490

namespace A319085

/-- `∑[A038040(n+1)²/A000005(n+1)]` -/
def P9910828799053239490.Spec : Prop :=
  ∀ n, P9910828799053239490.a n = (A319085 (n + 1) : ℚ)

end A319085

/-! ## A319085.P10290839776610729124

`∑[(n+1)²*A183063(2*(n+1))]`
-/

namespace A319085.P10290839776610729124
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℤ) * A183063 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A319085.P10290839776610729124

namespace A319085

/-- `∑[(n+1)²*A183063(2*(n+1))]` -/
def P10290839776610729124.Spec : Prop :=
  ∀ n, P10290839776610729124.a n = A319085 (n + 1)

end A319085

/-!
# A319086: a(n) = Sum_{k=1..n} k^2*sigma(k), where sigma is A000203.

The programs for A319086, the canonical program `A319086.P3185666596476070828` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A319086 has offset 1).

The definition of A319086 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A319086.P3185666596476070828

`∑[∑{d}[n+1, #*(n+1)²]]`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A319086

/-- `∑[∑{d}[n+1, #*(n+1)²]]` -/
def P3185666596476070828.Spec : Prop :=
  ∀ n, (P3185666596476070828.a n : ℤ) = A319086 (n + 1)

theorem P3185666596476070828.correct : P3185666596476070828.Spec := by
  intro n
  simp only [A319086, Nat.add_sub_cancel]

end A319086

/-! ## A319086.P12053149674023314124

`∑[∑[2*n+1]*∑{d}[n+1, #]]`
-/

namespace A319086.P12053149674023314124
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f2 j) * (∑ d ∈ Nat.divisors (f3 n), d)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A319086.P12053149674023314124

namespace A319086

/-- `∑[∑[2*n+1]*∑{d}[n+1, #]]` -/
def P12053149674023314124.Spec : Prop :=
  ∀ n, (P12053149674023314124.a n : ℤ) = A319086 (n + 1)

end A319086

/-! ## A319086.P17230706408175775790

`∑[(n+1)*A064987(n+1)]`
-/

namespace A319086.P17230706408175775790
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A064987 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A319086.P17230706408175775790

namespace A319086

/-- `∑[(n+1)*A064987(n+1)]` -/
def P17230706408175775790.Spec : Prop :=
  ∀ n, P17230706408175775790.a n = A319086 (n + 1)

end A319086

/-! ## A319086.P3052531405007825095

`∑[(n+1)²*A000203(n+1)]`
-/

namespace A319086.P3052531405007825095
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℤ) * A000203 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A319086.P3052531405007825095

namespace A319086

/-- `∑[(n+1)²*A000203(n+1)]` -/
def P3052531405007825095.Spec : Prop :=
  ∀ n, P3052531405007825095.a n = A319086 (n + 1)

end A319086

/-! ## A319086.P11487217313534018707

`∑[(n+1)²*A245092(2*n+1)]`
-/

namespace A319086.P11487217313534018707
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℤ) * A245092 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A319086.P11487217313534018707

namespace A319086

/-- `∑[(n+1)²*A245092(2*n+1)]` -/
def P11487217313534018707.Spec : Prop :=
  ∀ n, P11487217313534018707.a n = A319086 (n + 1)

end A319086

/-! ## A319086.P3139147426454756924

`∑[(n+1)*(n+1)*A000203(C(n+1, n))]`
-/

namespace A319086.P3139147426454756924
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * ((n + 1 : ℤ) * A000203 (Nat.choose (n + 1) n))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A319086.P3139147426454756924

namespace A319086

/-- `∑[(n+1)*(n+1)*A000203(C(n+1, n))]` -/
def P3139147426454756924.Spec : Prop :=
  ∀ n, P3139147426454756924.a n = A319086 (n + 1)

end A319086

/-! ## A319086.P15838789416802725687

`∑[A000203(2*n+1-n)*∑[2*n+1]]`
-/

namespace A319086.P15838789416802725687
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (2 * n + 1 - n) * ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A319086.P15838789416802725687

namespace A319086

/-- `∑[A000203(2*n+1-n)*∑[2*n+1]]` -/
def P15838789416802725687.Spec : Prop :=
  ∀ n, P15838789416802725687.a n = A319086 (n + 1)

end A319086

/-! ## A319086.P14882816120616746478

`∑[A064987(n+1)²/A000203(n+1)]`
-/

namespace A319086.P14882816120616746478
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A064987 (n + 1) ^ 2 : ℚ) / (A000203 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A319086.P14882816120616746478

namespace A319086

/-- `∑[A064987(n+1)²/A000203(n+1)]` -/
def P14882816120616746478.Spec : Prop :=
  ∀ n, P14882816120616746478.a n = (A319086 (n + 1) : ℚ)

end A319086

/-! ## A319086.P2461902549741093665

`∑[A064987(n+1)²/∑[A340793(n+1)]]`
-/

namespace A319086.P2461902549741093665
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340793 (n + 1)

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A064987 (n + 1) ^ 2 : ℚ) / ((∑ j ∈ Finset.range (n + 1), f2 j : ℤ) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A319086.P2461902549741093665

namespace A319086

/-- `∑[A064987(n+1)²/∑[A340793(n+1)]]` -/
def P2461902549741093665.Spec : Prop :=
  ∀ n, P2461902549741093665.a n = (A319086 (n + 1) : ℚ)

end A319086

/-! ## A319086.P12810440214376358471

`∑[A282097(n+1)]`
-/

namespace A319086.P12810440214376358471
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282097 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A319086.P12810440214376358471

namespace A319086

/-- `∑[A282097(n+1)]` -/
def P12810440214376358471.Spec : Prop :=
  ∀ n, P12810440214376358471.a n = A319086 (n + 1)

end A319086

/-! ## A319086.P4217990605453361319

`∑[A282211(n+1)/(n+1)]`
-/

namespace A319086.P4217990605453361319
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A282211 (n + 1) : ℚ) / (n + 1 : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A319086.P4217990605453361319

namespace A319086

/-- `∑[A282211(n+1)/(n+1)]` -/
def P4217990605453361319.Spec : Prop :=
  ∀ n, P4217990605453361319.a n = (A319086 (n + 1) : ℚ)

end A319086

/-! ## A319086.P9020147029030119104

`∑[A280022(n+1)/(n+1)²]`
-/

namespace A319086.P9020147029030119104
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A280022 (n + 1) : ℚ) / ((n + 1) ^ 2 : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A319086.P9020147029030119104

namespace A319086

/-- `∑[A280022(n+1)/(n+1)²]` -/
def P9020147029030119104.Spec : Prop :=
  ∀ n, P9020147029030119104.a n = (A319086 (n + 1) : ℚ)

end A319086

/-! ## A319086.P1381070385649964377

`∑[(n+1)²*A262610(2*n+1)]`
-/

namespace A319086.P1381070385649964377
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℤ) * A262610 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A319086.P1381070385649964377

namespace A319086

/-- `∑[(n+1)²*A262610(2*n+1)]` -/
def P1381070385649964377.Spec : Prop :=
  ∀ n, P1381070385649964377.a n = A319086 (n + 1)

end A319086

/-! ## A319086.P6381210651947293962

`∑[(n+1)*A340774((n+1)²)]`
-/

namespace A319086.P6381210651947293962
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A340774 ((n + 1) ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A319086.P6381210651947293962

namespace A319086

/-- `∑[(n+1)*A340774((n+1)²)]` -/
def P6381210651947293962.Spec : Prop :=
  ∀ n, P6381210651947293962.a n = A319086 (n + 1)

end A319086

/-!
# A319087: a(n) = Sum_{k=1..n} k^2*phi(k), where phi is the Euler totient function A000010.

The programs for A319087, the canonical program `A319087.P11873426032925542692` is in `Seq.B007.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A319087 has offset 1).

The definition of A319087 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A319087.P11873426032925542692

`∑[A053191(n+1)]`

The canonical program, it is in `Seq.B007.C001`.
-/

namespace A319087

/-- `∑[A053191(n+1)]` -/
def P11873426032925542692.Spec : Prop :=
  ∀ n, P11873426032925542692.a n = A319087 (n + 1)

theorem P11873426032925542692.correct : P11873426032925542692.Spec := by
  intro n
  simp only [A319087, Nat.add_sub_cancel]

end A319087

/-! ## A319087.P677107598936641048

`∑[(n+1)*Δ[A240877(n)]]`
-/

namespace A319087.P677107598936641048
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240877 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A319087.P677107598936641048

namespace A319087

/-- `∑[(n+1)*Δ[A240877(n)]]` -/
def P677107598936641048.Spec : Prop :=
  ∀ n, P677107598936641048.a n = A319087 (n + 1)

end A319087

/-! ## A319087.P15838236526613351111

`∑[(n+1)*A002618(n+1)]`
-/

namespace A319087.P15838236526613351111
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A002618 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A319087.P15838236526613351111

namespace A319087

/-- `∑[(n+1)*A002618(n+1)]` -/
def P15838236526613351111.Spec : Prop :=
  ∀ n, P15838236526613351111.a n = A319087 (n + 1)

end A319087

/-! ## A319087.P9917390117421174014

`∑[A189393(n+1)/(n+1)]`
-/

namespace A319087.P9917390117421174014
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A189393 (n + 1) : ℚ) / (n + 1 : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A319087.P9917390117421174014

namespace A319087

/-- `∑[A189393(n+1)/(n+1)]` -/
def P9917390117421174014.Spec : Prop :=
  ∀ n, P9917390117421174014.a n = (A319087 (n + 1) : ℚ)

end A319087

/-! ## A319087.P5018140209876491260

`∑[(n+1)²*Δ[A002088(n)]]`
-/

namespace A319087.P5018140209876491260
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002088 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℤ) * (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A319087.P5018140209876491260

namespace A319087

/-- `∑[(n+1)²*Δ[A002088(n)]]` -/
def P5018140209876491260.Spec : Prop :=
  ∀ n, P5018140209876491260.a n = A319087 (n + 1)

end A319087

/-! ## A319087.P6374406243607072001

`∑[(n+1)²*A000010(n+1)]`
-/

namespace A319087.P6374406243607072001
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℤ) * A000010 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A319087.P6374406243607072001

namespace A319087

/-- `∑[(n+1)²*A000010(n+1)]` -/
def P6374406243607072001.Spec : Prop :=
  ∀ n, P6374406243607072001.a n = A319087 (n + 1)

end A319087

/-! ## A319087.P15324133654863706256

`∑[A238533(n+1)/(n+1)²]`
-/

namespace A319087.P15324133654863706256
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A238533 (n + 1) : ℚ) / ((n + 1) ^ 2 : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A319087.P15324133654863706256

namespace A319087

/-- `∑[A238533(n+1)/(n+1)²]` -/
def P15324133654863706256.Spec : Prop :=
  ∀ n, P15324133654863706256.a n = (A319087 (n + 1) : ℚ)

end A319087

/-! ## A319087.P961637161705465259

`∑[(A109606(n+1)+1)*(n+1)²]`
-/

namespace A319087.P961637161705465259
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A109606 (n + 1) + 1) * ((n + 1) ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A319087.P961637161705465259

namespace A319087

/-- `∑[(A109606(n+1)+1)*(n+1)²]` -/
def P961637161705465259.Spec : Prop :=
  ∀ n, P961637161705465259.a n = A319087 (n + 1)

end A319087

/-! ## A319087.P11122793778309431705

`∑[(A039649(n+1)-1)*(n+1)²]`
-/

namespace A319087.P11122793778309431705
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A039649 (n + 1) - 1) * ((n + 1) ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A319087.P11122793778309431705

namespace A319087

/-- `∑[(A039649(n+1)-1)*(n+1)²]` -/
def P11122793778309431705.Spec : Prop :=
  ∀ n, P11122793778309431705.a n = A319087 (n + 1)

end A319087

/-! ## A319087.P6881448014561555188

`∑[(n+1)*(n+1)*A000010(lcm(2, n+1))]`
-/

namespace A319087.P6881448014561555188
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * ((n + 1 : ℤ) * A000010 (Nat.lcm 2 (n + 1)))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A319087.P6881448014561555188

namespace A319087

/-- `∑[(n+1)*(n+1)*A000010(lcm(2, n+1))]` -/
def P6881448014561555188.Spec : Prop :=
  ∀ n, P6881448014561555188.a n = A319087 (n + 1)

end A319087

/-! ## A319087.P13103413771812797027

`∑[(n+1)*(n+1)*A000010(C(n+1, n))]`
-/

namespace A319087.P13103413771812797027
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * ((n + 1 : ℤ) * A000010 (Nat.choose (n + 1) n))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A319087.P13103413771812797027

namespace A319087

/-- `∑[(n+1)*(n+1)*A000010(C(n+1, n))]` -/
def P13103413771812797027.Spec : Prop :=
  ∀ n, P13103413771812797027.a n = A319087 (n + 1)

end A319087

/-! ## A319087.P2265983535353927596

`∑[A000010(2*n+1-n)*∑[2*n+1]]`
-/

namespace A319087.P2265983535353927596
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (2 * n + 1 - n) * ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A319087.P2265983535353927596

namespace A319087

/-- `∑[A000010(2*n+1-n)*∑[2*n+1]]` -/
def P2265983535353927596.Spec : Prop :=
  ∀ n, P2265983535353927596.a n = A319087 (n + 1)

end A319087

/-! ## A319087.P15623986939352711046

`∑[A002618(n+1)²/A000010(n+1)]`
-/

namespace A319087.P15623986939352711046
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002618 (n + 1) ^ 2 : ℚ) / (A000010 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A319087.P15623986939352711046

namespace A319087

/-- `∑[A002618(n+1)²/A000010(n+1)]` -/
def P15623986939352711046.Spec : Prop :=
  ∀ n, P15623986939352711046.a n = (A319087 (n + 1) : ℚ)

end A319087

/-! ## A319087.P3988234867004151443

`∑[(n+1)*A000010(n+1)*A000027(n+1)]`
-/

namespace A319087.P3988234867004151443
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A000010 (n + 1) * A000027 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A319087.P3988234867004151443

namespace A319087

/-- `∑[(n+1)*A000010(n+1)*A000027(n+1)]` -/
def P3988234867004151443.Spec : Prop :=
  ∀ n, P3988234867004151443.a n = A319087 (n + 1)

end A319087

/-! ## A319087.P8851041862887544988

`∑[A046073(n+1)*A060594(n+1)*(n+1)²]`
-/

namespace A319087.P8851041862887544988
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046073 (n + 1) * A060594 (n + 1) * ((n + 1) ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A319087.P8851041862887544988

namespace A319087

/-- `∑[A046073(n+1)*A060594(n+1)*(n+1)²]` -/
def P8851041862887544988.Spec : Prop :=
  ∀ n, P8851041862887544988.a n = A319087 (n + 1)

end A319087

/-! ## A319087.P2468687965586170374

`∑[(A049633(n)-A049632(n))*(n+1)²]`
-/

namespace A319087.P2468687965586170374
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A049633 n - A049632 n) * ((n + 1) ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A319087.P2468687965586170374

namespace A319087

/-- `∑[(A049633(n)-A049632(n))*(n+1)²]` -/
def P2468687965586170374.Spec : Prop :=
  ∀ n, P2468687965586170374.a n = A319087 (n + 1)

end A319087

/-! ## A319087.P5358600844239052180

`∑[A076402(A340699(n+1))]`
-/

namespace A319087.P5358600844239052180
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076402 (A340699 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A319087.P5358600844239052180

namespace A319087

/-- `∑[A076402(A340699(n+1))]` -/
def P5358600844239052180.Spec : Prop :=
  ∀ n, P5358600844239052180.a n = A319087 (n + 1)

end A319087

/-! ## A319087.P13216782114043799602

`∑[A000010((n+1)²)²/A000010(n+1)]`
-/

namespace A319087.P13216782114043799602
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000010 ((n + 1) ^ 2) ^ 2 : ℚ) / (A000010 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A319087.P13216782114043799602

namespace A319087

/-- `∑[A000010((n+1)²)²/A000010(n+1)]` -/
def P13216782114043799602.Spec : Prop :=
  ∀ n, P13216782114043799602.a n = (A319087 (n + 1) : ℚ)

end A319087

/-! ## A319087.P10628183202667654197

`A333292(∑[n+1])`
-/

namespace A319087.P10628183202667654197
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333292 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A319087.P10628183202667654197

namespace A319087

/-- `A333292(∑[n+1])` -/
def P10628183202667654197.Spec : Prop :=
  ∀ n, P10628183202667654197.a n = A319087 (n + 1)

end A319087

/-! ## A319087.P1316491905357703087

`∑[(n+1)*A327171((n+1)²)]`
-/

namespace A319087.P1316491905357703087
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A327171 ((n + 1) ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A319087.P1316491905357703087

namespace A319087

/-- `∑[(n+1)*A327171((n+1)²)]` -/
def P1316491905357703087.Spec : Prop :=
  ∀ n, P1316491905357703087.a n = A319087 (n + 1)

end A319087

/-!
# A319088: a(n) = Sum_{k=1..n} k^2*tau_3(k), where tau_3 is A007425.

The programs for A319088, the canonical program `A319088.P2047469914631572688` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A319088 has offset 1).

The definition of A319088 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A319088.P2047469914631572688

`∑[(n+1)*A034718(n+1)]`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A319088

/-- `∑[(n+1)*A034718(n+1)]` -/
def P2047469914631572688.Spec : Prop :=
  ∀ n, P2047469914631572688.a n = A319088 (n + 1)

theorem P2047469914631572688.correct : P2047469914631572688.Spec := by
  intro n
  simp only [A319088, Nat.add_sub_cancel]

end A319088

/-! ## A319088.P16035768668080049520

`∑[(n+1)²*A007425(n+1)]`
-/

namespace A319088.P16035768668080049520
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℤ) * A007425 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A319088.P16035768668080049520

namespace A319088

/-- `∑[(n+1)²*A007425(n+1)]` -/
def P16035768668080049520.Spec : Prop :=
  ∀ n, P16035768668080049520.a n = A319088 (n + 1)

end A319088

/-! ## A319088.P717590115666225282

`∑[(n+1)²*sqrt(A097988(n+1))]`
-/

namespace A319088.P717590115666225282
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℝ) * Real.sqrt (A097988 (n + 1) : ℝ)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A319088.P717590115666225282

namespace A319088

/-- `∑[(n+1)²*sqrt(A097988(n+1))]` -/
def P717590115666225282.Spec : Prop :=
  ∀ n, P717590115666225282.a n = (A319088 (n + 1) : ℝ)

end A319088

/-! ## A319088.P2334720227881715632

`∑[∑{d}[n+1, (n+1)²*A000005(#)]]`
-/

namespace A319088.P2334720227881715632
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n), ((n + 1) ^ 2 : ℤ) * A000005 d

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A319088.P2334720227881715632

namespace A319088

/-- `∑[∑{d}[n+1, (n+1)²*A000005(#)]]` -/
def P2334720227881715632.Spec : Prop :=
  ∀ n, P2334720227881715632.a n = A319088 (n + 1)

end A319088

/-! ## A319088.P5580333616777167160

`∑[A007425(n+1)*A008642(4*n)]`
-/

namespace A319088.P5580333616777167160
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007425 (n + 1) * A008642 (4 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A319088.P5580333616777167160

namespace A319088

/-- `∑[A007425(n+1)*A008642(4*n)]` -/
def P5580333616777167160.Spec : Prop :=
  ∀ n, P5580333616777167160.a n = A319088 (n + 1)

end A319088

/-! ## A319088.P10994102522391667029

`∑[(n+1)²*A133700(A064988(n+1))]`
-/

namespace A319088.P10994102522391667029
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℤ) * A133700 (A064988 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A319088.P10994102522391667029

namespace A319088

/-- `∑[(n+1)²*A133700(A064988(n+1))]` -/
def P10994102522391667029.Spec : Prop :=
  ∀ n, P10994102522391667029.a n = A319088 (n + 1)

end A319088

/-! ## A319088.P15734553890463743296

`∑[(n+1)²*A133700(A297002(n+1))]`
-/

namespace A319088.P15734553890463743296
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℤ) * A133700 (A297002 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A319088.P15734553890463743296

namespace A319088

/-- `∑[(n+1)²*A133700(A297002(n+1))]` -/
def P15734553890463743296.Spec : Prop :=
  ∀ n, P15734553890463743296.a n = A319088 (n + 1)

end A319088

/-!
# A319089: a(n) = tau(n)^3, where tau is A000005.

The programs for A319089, the canonical program `A319089.P15206136038751736355` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A319089 has offset 1).

The definition of A319089 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A319089.P15206136038751736355

`∏{e}[n+1, (#+1)^3]`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A319089

/-- `∏{e}[n+1, (#+1)^3]` -/
def P15206136038751736355.Spec : Prop :=
  ∀ n, (P15206136038751736355.a n : ℤ) = A319089 (n + 1)

theorem P15206136038751736355.correct : P15206136038751736355.Spec := by
  intro n
  simp only [A319089, Nat.add_sub_cancel]

end A319089

/-! ## A319089.P16889477894683104648

`∑{d}[n+1, gcd(n, #)]^3`
-/

namespace A319089.P16889477894683104648
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ d ∈ Nat.divisors (f1 n), Nat.gcd n d) ^ 3

end

end A319089.P16889477894683104648

namespace A319089

/-- `∑{d}[n+1, gcd(n, #)]^3` -/
def P16889477894683104648.Spec : Prop :=
  ∀ n, (P16889477894683104648.a n : ℤ) = A319089 (n + 1)

end A319089

/-! ## A319089.P18338541720430263508

`∑{d}[n+1, ceil(acot(#))]^3`
-/

namespace A319089.P18338541720430263508
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ d ∈ Nat.divisors (f1 n), ⌈SequenceMachineLib.acot (d : ℝ)⌉) ^ 3

end

end A319089.P18338541720430263508

namespace A319089

/-- `∑{d}[n+1, ceil(acot(#))]^3` -/
def P18338541720430263508.Spec : Prop :=
  ∀ n, P18338541720430263508.a n = A319089 (n + 1)

end A319089

/-! ## A319089.P1925625776104120574

`∑{d}[n+1, ceil(1/#)]^3`
-/

namespace A319089.P1925625776104120574
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ d ∈ Nat.divisors (f1 n), ⌈1 / (d : ℚ)⌉) ^ 3

end

end A319089.P1925625776104120574

namespace A319089

/-- `∑{d}[n+1, ceil(1/#)]^3` -/
def P1925625776104120574.Spec : Prop :=
  ∀ n, P1925625776104120574.a n = A319089 (n + 1)

end A319089

/-! ## A319089.P9409795064336447298

`ceil(∑{d}[n+1, tanh(sqrt(#))])^3`
-/

namespace A319089.P9409795064336447298
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈∑ d ∈ Nat.divisors (f1 n), Real.tanh (Real.sqrt (d : ℝ))⌉ ^ 3

end

end A319089.P9409795064336447298

namespace A319089

/-- `ceil(∑{d}[n+1, tanh(sqrt(#))])^3` -/
def P9409795064336447298.Spec : Prop :=
  ∀ n, P9409795064336447298.a n = A319089 (n + 1)

end A319089

/-! ## A319089.P925924143927175394

`ceil(∑{d}[n+1, sin(atan(#))])^3`
-/

namespace A319089.P925924143927175394
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈∑ d ∈ Nat.divisors (f1 n), Real.sin (Real.arctan (d : ℝ))⌉ ^ 3

end

end A319089.P925924143927175394

namespace A319089

/-- `ceil(∑{d}[n+1, sin(atan(#))])^3` -/
def P925924143927175394.Spec : Prop :=
  ∀ n, P925924143927175394.a n = A319089 (n + 1)

end A319089

/-! ## A319089.P4599772813952905315

`floor(∑{d}[n+1, cosh(acot(#))])^3`
-/

namespace A319089.P4599772813952905315
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊∑ d ∈ Nat.divisors (f1 n), Real.cosh (SequenceMachineLib.acot (d : ℝ))⌋ ^ 3

end

end A319089.P4599772813952905315

namespace A319089

/-- `floor(∑{d}[n+1, cosh(acot(#))])^3` -/
def P4599772813952905315.Spec : Prop :=
  ∀ n, P4599772813952905315.a n = A319089 (n + 1)

end A319089

/-! ## A319089.P3680763469519908838

`root(∏{e}[n+1, #+1], 1/3)`
-/

namespace A319089.P3680763469519908838
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((∏ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p + 1) : ℕ) : ℝ) ^ (1 / ((1 : ℚ) / 3 : ℝ))

end

end A319089.P3680763469519908838

namespace A319089

/-- `root(∏{e}[n+1, #+1], 1/3)` -/
def P3680763469519908838.Spec : Prop :=
  ∀ n, P3680763469519908838.a n = (A319089 (n + 1) : ℝ)

end A319089

/-! ## A319089.P12399599786310918311

`2^∑{e}[n+1, log2(#+1)]^3`
-/

namespace A319089.P12399599786310918311
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((2 : ℝ) ^ (∑ p ∈ Nat.primeFactors (f1 n), Real.logb 2 (Nat.factorization (f1 n) p + 1 : ℝ))) ^ 3

end

end A319089.P12399599786310918311

namespace A319089

/-- `2^∑{e}[n+1, log2(#+1)]^3` -/
def P12399599786310918311.Spec : Prop :=
  ∀ n, P12399599786310918311.a n = (A319089 (n + 1) : ℝ)

end A319089

/-! ## A319089.P17668587626096034280

`∏{e}[n+1, #+1]²*∏{e}[n+1, #+1]`
-/

namespace A319089.P17668587626096034280
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∏ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p + 1)) ^ 2 * (∏ p ∈ Nat.primeFactors (f2 n), (Nat.factorization (f2 n) p + 1))

end

end A319089.P17668587626096034280

namespace A319089

/-- `∏{e}[n+1, #+1]²*∏{e}[n+1, #+1]` -/
def P17668587626096034280.Spec : Prop :=
  ∀ n, (P17668587626096034280.a n : ℤ) = A319089 (n + 1)

end A319089

/-! ## A319089.P13585182467450347129

`Δ[A006218(n)]^3`
-/

namespace A319089.P13585182467450347129
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006218 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) ^ 3

end

end A319089.P13585182467450347129

namespace A319089

/-- `Δ[A006218(n)]^3` -/
def P13585182467450347129.Spec : Prop :=
  ∀ n, P13585182467450347129.a n = A319089 (n + 1)

end A319089

/-! ## A319089.P15968015012186530832

`Δ[A054519(n)]^3`
-/

namespace A319089.P15968015012186530832
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054519 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) ^ 3

end

end A319089.P15968015012186530832

namespace A319089

/-- `Δ[A054519(n)]^3` -/
def P15968015012186530832.Spec : Prop :=
  ∀ n, P15968015012186530832.a n = A319089 (n + 1)

end A319089

/-! ## A319089.P16898314972654708204

`A000005(n+1)^3`
-/

namespace A319089.P16898314972654708204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) ^ 3

end

end A319089.P16898314972654708204

namespace A319089

/-- `A000005(n+1)^3` -/
def P16898314972654708204.Spec : Prop :=
  ∀ n, P16898314972654708204.a n = A319089 (n + 1)

end A319089

/-! ## A319089.P14947363925418059482

`∑{d}[n+1, A070919(#)]`
-/

namespace A319089.P14947363925418059482
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A070919 d

end

end A319089.P14947363925418059482

namespace A319089

/-- `∑{d}[n+1, A070919(#)]` -/
def P14947363925418059482.Spec : Prop :=
  ∀ n, P14947363925418059482.a n = A319089 (n + 1)

end A319089

/-! ## A319089.P2178400652674530316

`sqrt(A035116(n+1)^3)`
-/

namespace A319089.P2178400652674530316
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A035116 (n + 1) ^ 3 : ℝ)

end

end A319089.P2178400652674530316

namespace A319089

/-- `sqrt(A035116(n+1)^3)` -/
def P2178400652674530316.Spec : Prop :=
  ∀ n, P2178400652674530316.a n = (A319089 (n + 1) : ℝ)

end A319089

/-! ## A319089.P8247056596574034012

`root(A000005(C(n+1, n)), 1/3)`
-/

namespace A319089.P8247056596574034012
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A000005 (Nat.choose (n + 1) n) : ℝ) ^ (1 / ((1 : ℚ) / 3 : ℝ))

end

end A319089.P8247056596574034012

namespace A319089

/-- `root(A000005(C(n+1, n)), 1/3)` -/
def P8247056596574034012.Spec : Prop :=
  ∀ n, P8247056596574034012.a n = (A319089 (n + 1) : ℝ)

end A319089

/-! ## A319089.P3079203467701583020

`root(A000005(n-log2(1/2)), 1/3)`
-/

namespace A319089.P3079203467701583020
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A000005 (SequenceMachineLib.roundAway ((n : ℝ) - Real.logb 2 ((1 : ℚ) / 2 : ℝ))).toNat : ℝ) ^ (1 / ((1 : ℚ) / 3 : ℝ))

end

end A319089.P3079203467701583020

namespace A319089

/-- `root(A000005(n-log2(1/2)), 1/3)` -/
def P3079203467701583020.Spec : Prop :=
  ∀ n, P3079203467701583020.a n = (A319089 (n + 1) : ℝ)

end A319089

/-! ## A319089.P5583374285465610814

`abs((-A000005(2*n-(n-1)))^3)`
-/

namespace A319089.P5583374285465610814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(-A000005 ((2 * n : ℤ) - ((n : ℤ) - 1)).toNat) ^ 3|

end

end A319089.P5583374285465610814

namespace A319089

/-- `abs((-A000005(2*n-(n-1)))^3)` -/
def P5583374285465610814.Spec : Prop :=
  ∀ n, P5583374285465610814.a n = A319089 (n + 1)

end A319089

/-! ## A319089.P16726365939335054673

`A000578(A000005(n+1))`
-/

namespace A319089.P16726365939335054673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000578 (A000005 (n + 1)).toNat

end

end A319089.P16726365939335054673

namespace A319089

/-- `A000578(A000005(n+1))` -/
def P16726365939335054673.Spec : Prop :=
  ∀ n, P16726365939335054673.a n = A319089 (n + 1)

end A319089

/-! ## A319089.P11214519578114062607

`A000093(A035116(n+1))`
-/

namespace A319089.P11214519578114062607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000093 (A035116 (n + 1)).toNat

end

end A319089.P11214519578114062607

namespace A319089

/-- `A000093(A035116(n+1))` -/
def P11214519578114062607.Spec : Prop :=
  ∀ n, P11214519578114062607.a n = A319089 (n + 1)

end A319089

/-!
# A319097: One of the three successive approximations up to 7^n for 7-adic integer 6^(1/3). This is the 3 (mod 7) case (except for n = 0).

The programs for A319097, there is no canonical definition to state claims against.
-/

/-! ## A319097.P10815071801189598371

`808%A330396(A000420(n))`
-/

namespace A319097.P10815071801189598371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod 808 (A330396 (A000420 n).toNat)

end

end A319097.P10815071801189598371

/-!
# A319098: One of the three successive approximations up to 7^n for 7-adic integer 6^(1/3). This is the 5 (mod 7) case (except for n = 0).

The programs for A319098, there is no canonical definition to state claims against.
-/

/-! ## A319098.P9709592020800380753

`A016957(A199489(n))%A165759(n)`
-/

namespace A319098.P9709592020800380753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A016957 (A199489 n).toNat) (A165759 n)

end

end A319098.P9709592020800380753

/-!
# A319099: Number of solutions to x^5 == 1 (mod n).

The programs for A319099, there is no canonical definition to state claims against.
-/

/-! ## A319099.P11544050054441318005

`A000010(n+1)/A293482(n+1)`
-/

namespace A319099.P11544050054441318005
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000010 (n + 1) : ℚ) / (A293482 (n + 1) : ℚ)

end

end A319099.P11544050054441318005

/-! ## A319099.P11160196202393343883

`∑{d}[n+1, A307380(#)]`
-/

namespace A319099.P11160196202393343883
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A307380 d

end

end A319099.P11160196202393343883

/-! ## A319099.P9171383213899316881

`A060839(n+1)*A087692(n+1)/A293482(n+1)`
-/

namespace A319099.P9171383213899316881
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A060839 (n + 1) * A087692 (n + 1) : ℚ) / (A293482 (n + 1) : ℚ)

end

end A319099.P9171383213899316881

/-! ## A319099.P12655728581288535336

`A073103(n+1)*A250207(n+1)/A293482(n+1)`
-/

namespace A319099.P12655728581288535336
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A073103 (n + 1) * A250207 (n + 1) : ℚ) / (A293482 (n + 1) : ℚ)

end

end A319099.P12655728581288535336

/-! ## A319099.P12512220808191628162

`A247257(n+1)/A293482(n+1)*A293485(n+1)`
-/

namespace A319099.P12512220808191628162
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A247257 (n + 1) : ℚ) / (A293482 (n + 1) : ℚ) * (A293485 (n + 1) : ℚ)

end

end A319099.P12512220808191628162

/-! ## A319099.P229864886988075824

`A293483(n+1)/A293482(n+1)*A319100(n+1)`
-/

namespace A319099.P229864886988075824
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A293483 (n + 1) : ℚ) / (A293482 (n + 1) : ℚ) * (A319100 (n + 1) : ℚ)

end

end A319099.P229864886988075824

/-! ## A319099.P15583477157600516778

`A293484(n+1)/A293482(n+1)*A319101(n+1)`
-/

namespace A319099.P15583477157600516778
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A293484 (n + 1) : ℚ) / (A293482 (n + 1) : ℚ) * (A319101 (n + 1) : ℚ)

end

end A319099.P15583477157600516778

/-! ## A319099.P16516399376736367197

`A089086(Δ[A100449(n)])`
-/

namespace A319099.P16516399376736367197
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100449 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089086 (f1 (n + 1) - f1 n).toNat

end

end A319099.P16516399376736367197

/-! ## A319099.P3285321404537507101

`A089086(Δ[A140466(n)])`
-/

namespace A319099.P3285321404537507101
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140466 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089086 (f1 (n + 1) - f1 n).toNat

end

end A319099.P3285321404537507101

/-! ## A319099.P18054637003414911051

`A089086(2*A140434(n+1))`
-/

namespace A319099.P18054637003414911051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089086 (2 * A140434 (n + 1)).toNat

end

end A319099.P18054637003414911051

/-! ## A319099.P17634945293855530043

`A089086(2*2*A000010(n+1))`
-/

namespace A319099.P17634945293855530043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089086 (2 * (2 * A000010 (n + 1))).toNat

end

end A319099.P17634945293855530043

/-! ## A319099.P3401637957422220615

`gcd(5, A065451(n+1)²)`
-/

namespace A319099.P3401637957422220615
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 5 (A065451 (n + 1) ^ 2)

end

end A319099.P3401637957422220615

/-! ## A319099.P12859450567325189544

`A109009(A308828(n+1))`
-/

namespace A319099.P12859450567325189544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109009 (A308828 (n + 1)).toNat

end

end A319099.P12859450567325189544

/-! ## A319099.P2309300933260416642

`gcd(5, A395282(n+1))`
-/

namespace A319099.P2309300933260416642
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 5 (A395282 (n + 1))

end

end A319099.P2309300933260416642

/-! ## A319099.P2256412122409852683

`A089086(A000010(Δ[A024966(n)]))`
-/

namespace A319099.P2256412122409852683
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024966 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089086 (A000010 (f1 (n + 1) - f1 n).toNat).toNat

end

end A319099.P2256412122409852683

/-! ## A319099.P15363872455466931031

`A010128(A000010(n+1)²)/2`
-/

namespace A319099.P15363872455466931031
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A010128 (A000010 (n + 1) ^ 2).toNat : ℚ) / 2

end

end A319099.P15363872455466931031

/-! ## A319099.P18148704573753052793

`gcd(5, Δ[A210000(n)])`
-/

namespace A319099.P18148704573753052793
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210000 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 5 (f1 (n + 1) - f1 n)

end

end A319099.P18148704573753052793

/-! ## A319099.P3391207471432164702

`gcd(A059376(n+1), A094389(n+1))`
-/

namespace A319099.P3391207471432164702
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A059376 (n + 1)) (A094389 (n + 1))

end

end A319099.P3391207471432164702

/-! ## A319099.P829160407456435223

`2-A291568(A000010(n+1)²)`
-/

namespace A319099.P829160407456435223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A291568 (A000010 (n + 1) ^ 2).toNat

end

end A319099.P829160407456435223

/-! ## A319099.P12332474291243759349

`A109009(A000010(n+1)²)`
-/

namespace A319099.P12332474291243759349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109009 (A000010 (n + 1) ^ 2).toNat

end

end A319099.P12332474291243759349

