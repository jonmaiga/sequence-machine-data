import SequenceMachineLib
import Mathlib.Tactic
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C003
import Seq.B000.C004
import Seq.B000.C006
import Seq.B000.C007
import Seq.B000.C008
import Seq.B000.C009
import Seq.B000.C010
import Seq.B000.C011
import Seq.B000.C012
import Seq.B000.C013
import Seq.B000.C015
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C033
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

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A034700: a(n) = smallest prime == 1 (mod 4) such that a(n) is a square mod a(i), all i

The programs for A034700, there is no canonical definition to state claims against.
-/

/-! ## A034700.P2163401778326080798

`A002144(A272455(n)+A029576(2*n))`
-/

namespace A034700.P2163401778326080798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002144 (A272455 n + A029576 (2 * n)).toNat

end

end A034700.P2163401778326080798

/-!
# A034701: a(n) is the smallest number not of the form a(i) (1<=i<=n-1) or a(i)+a(n-1) (1<=i<=n-2).

The programs for A034701, there is no canonical definition to state claims against.
-/

/-! ## A034701.P3084540202680523005

`A040001(n)*A053661(A080513(n))`
-/

namespace A034701.P3084540202680523005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040001 n * A053661 (A080513 n).toNat

end

end A034701.P3084540202680523005

/-! ## A034701.P14964521388743641818

`A040001(n)*A053661(A008619(n+1))`
-/

namespace A034701.P14964521388743641818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040001 n * A053661 (A008619 (n + 1)).toNat

end

end A034701.P14964521388743641818

/-! ## A034701.P2254218882969072577

`A040001(n)*A053661(A065033(n+2))`
-/

namespace A034701.P2254218882969072577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040001 n * A053661 (A065033 (n + 2)).toNat

end

end A034701.P2254218882969072577

/-! ## A034701.P4477750063978807647

`A040001(n)*A053661(A123108(n+3))`
-/

namespace A034701.P4477750063978807647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040001 n * A053661 (A123108 (n + 3)).toNat

end

end A034701.P4477750063978807647

/-! ## A034701.P9366043301006081839

`A040001(n)*A053661(A140106(n+5))`
-/

namespace A034701.P9366043301006081839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040001 n * A053661 (A140106 (n + 5)).toNat

end

end A034701.P9366043301006081839

/-! ## A034701.P10261630459320396899

`A171945(A080513(n))/A000034(n)`
-/

namespace A034701.P10261630459320396899
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A171945 (A080513 n).toNat : ℚ) / (A000034 n : ℚ)

end

end A034701.P10261630459320396899

/-! ## A034701.P994961998531120382

`A171945(A080513(n))/Δ[A032766(n)]`
-/

namespace A034701.P994961998531120382
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032766 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A171945 (A080513 n).toNat : ℚ) / (f1 (n + 1) - f1 n : ℚ)

end

end A034701.P994961998531120382

/-! ## A034701.P14619936264260047308

`A171945(A004526(n+3))/A000034(n)`
-/

namespace A034701.P14619936264260047308
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A171945 (A004526 (n + 3)).toNat : ℚ) / (A000034 n : ℚ)

end

end A034701.P14619936264260047308

/-! ## A034701.P2843568614807081421

`A171945(A004526(n+3))/A040001(n+1)`
-/

namespace A034701.P2843568614807081421
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A171945 (A004526 (n + 3)).toNat : ℚ) / (A040001 (n + 1) : ℚ)

end

end A034701.P2843568614807081421

/-! ## A034701.P510412092941684661

`A171945(A080513(n))/A010124(A016789(n))`
-/

namespace A034701.P510412092941684661
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A171945 (A080513 n).toNat : ℚ) / (A010124 (A016789 n).toNat : ℚ)

end

end A034701.P510412092941684661

/-! ## A034701.P2092911426744782265

`A171945(A080513(n))/(A080513(n)-A004526(n))`
-/

namespace A034701.P2092911426744782265
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A171945 (A080513 n).toNat : ℚ) / (A080513 n - A004526 n : ℚ)

end

end A034701.P2092911426744782265

/-! ## A034701.P6621020250446823456

`A171945(A004526(n+3))/A001227(A020639(n+2))`
-/

namespace A034701.P6621020250446823456
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A171945 (A004526 (n + 3)).toNat : ℚ) / (A001227 (A020639 (n + 2)).toNat : ℚ)

end

end A034701.P6621020250446823456

/-!
# A034704: Largest number that can be made using only the digits of n, exponentiation and concatenation.

The programs for A034704, there is no canonical definition to state claims against.
-/

/-! ## A034704.P418918328617603347

`A068637(n+1)+A010894(A128084(n))`
-/

namespace A034704.P418918328617603347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068637 (n + 1) + A010894 ((A128084 n).toNat + 21)

end

end A034704.P418918328617603347

/-!
# A034705: Numbers that are sums of consecutive squares.

The programs for A034705, there is no canonical definition to state claims against.
-/

/-! ## A034705.P6582312452267209674

`∪[A099776(n+1), ∪[A174070(n+1), n²]]`
-/

namespace A034705.P6582312452267209674
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099776 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174070 (n + 1)

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f3 j = (x : ℤ)) ∨ ∃ j, f4 j = x) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = x) n

end

end A034705.P6582312452267209674

/-! ## A034705.P14340467896337288685

`∪[n², A174069(n+1)]`
-/

namespace A034705.P14340467896337288685
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174069 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A034705.P14340467896337288685

/-! ## A034705.P14586649093372444912

`∪[A174069(n+1), A363284(n+1)]`
-/

namespace A034705.P14586649093372444912
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174069 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363284 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A034705.P14586649093372444912

/-! ## A034705.P2408197655950864468

`lt[0, A296338(A028310(n))]`
-/

namespace A034705.P2408197655950864468
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296338 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A034705.P2408197655950864468

/-! ## A034705.P17680294466212954796

`lt[0, A299173(n^val(A057427(n)+1, 2))]`
-/

namespace A034705.P17680294466212954796
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299173 (n ^ SequenceMachineLib.valuation (A057427 n + 1).toNat 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A034705.P17680294466212954796

/-! ## A034705.P4457862947825932895

`lt[A000007(n+1), A299173(A028310(n))]`
-/

namespace A034705.P4457862947825932895
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299173 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A034705.P4457862947825932895

/-! ## A034705.P17180812132892019155

`lt[1, A299173(A028310(n))+A071028(n)]`
-/

namespace A034705.P17180812132892019155
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299173 (A028310 n).toNat + A071028 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A034705.P17180812132892019155

/-! ## A034705.P15221820347844328332

`lt[A000007(n), 2*A299173(A028310(n))]`
-/

namespace A034705.P15221820347844328332
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A299173 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A034705.P15221820347844328332

/-! ## A034705.P14262223687248572608

`lt[n, A299173(A233583(n+1))+A233583(n+1)]`
-/

namespace A034705.P14262223687248572608
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299173 (A233583 (n + 1)).toNat + A233583 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A034705.P14262223687248572608

/-! ## A034705.P9784827006655433828

`lt[0, A299173((n-1)%A204983(n+1)+1)]`
-/

namespace A034705.P9784827006655433828
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299173 (Int.tmod ((n : ℤ) - 1) (A204983 (n + 1)) + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A034705.P9784827006655433828

/-!
# A034706: Numbers which are sums of consecutive triangular numbers.

The programs for A034706, there is no canonical definition to state claims against.
-/

/-! ## A034706.P6576699502323317179

`∪[A000217(n), A050943(n)]`
-/

namespace A034706.P6576699502323317179
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050943 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A034706.P6576699502323317179

/-! ## A034706.P13644628552031779546

`comp[A050941(n+1)]`
-/

namespace A034706.P13644628552031779546
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050941 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A034706.P13644628552031779546

/-! ## A034706.P6396213564626861653

`lt[0, A307666(A028310(n))]`
-/

namespace A034706.P6396213564626861653
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307666 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A034706.P6396213564626861653

/-! ## A034706.P3061441313387626600

`lt[2-A307666(A000007(n)+n), 2]`
-/

namespace A034706.P3061441313387626600
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A307666 (A000007 n + (n : ℤ)).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A034706.P3061441313387626600

/-! ## A034706.P3664740104090869084

`eq[char[A185915(n+1)], A178334(n)]`
-/

namespace A034706.P3664740104090869084
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185915 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178334 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A034706.P3664740104090869084

/-!
# A034707: Numbers that are sums (of a nonempty sequence) of consecutive primes.

The programs for A034707, there is no canonical definition to state claims against.
-/

/-! ## A034707.P12892055251764987365

`∪[A000040(n+1), A050936(n+1)]`
-/

namespace A034707.P12892055251764987365
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050936 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A034707.P12892055251764987365

/-! ## A034707.P2114332417308750740

`∪[A045319(n+1), A050936(n+1)]`
-/

namespace A034707.P2114332417308750740
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045319 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050936 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A034707.P2114332417308750740

/-! ## A034707.P2379897427215770956

`∪[A050936(n+1), A054996(n+1)]`
-/

namespace A034707.P2379897427215770956
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050936 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054996 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A034707.P2379897427215770956

/-! ## A034707.P9453119283491795714

`comp[A050940(n+1)]`
-/

namespace A034707.P9453119283491795714
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050940 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A034707.P9453119283491795714

/-! ## A034707.P1081062063597201277

`lt[0, A054845(n)]`
-/

namespace A034707.P1081062063597201277
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054845 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A034707.P1081062063597201277

/-! ## A034707.P6458861812058755889

`eq[1, A051023(a(A054845(n)))]` with `a(0)=2`
-/

namespace A034707.P6458861812058755889
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.rec [2] fun n f2 =>
  A051023 (f2 (A054845 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A034707.P6458861812058755889

/-! ## A034707.P17704749168361085413

`eq[1, A288942(a(A054845(n)))]` with `a(0)=2`
-/

namespace A034707.P17704749168361085413
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.rec [2] fun n f2 =>
  A288942 (f2 (A054845 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A034707.P17704749168361085413

/-! ## A034707.P14633937338945959161

`eq[2, A000005(a(A054845(n)))]` with `a(0)=4`
-/

namespace A034707.P14633937338945959161
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.rec [4] fun n f2 =>
  A000005 (f2 (A054845 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A034707.P14633937338945959161

/-! ## A034707.P17546523811778007183

`eq[1, A103921(a(A054845(n))²)]` with `a(0)=4`
-/

namespace A034707.P17546523811778007183
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.rec [4] fun n f2 =>
  A103921 (f2 (A054845 n).toNat ^ 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A034707.P17546523811778007183

/-! ## A034707.P2916100584732110179

`eq[4, A276656(a(A054845(n)²))]` with `a(0)=2`
-/

namespace A034707.P2916100584732110179
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.rec [2] fun n f2 =>
  A276656 (f2 (A054845 n ^ 2).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A034707.P2916100584732110179

/-! ## A034707.P895461780121113221

`eq[1, A019426(A008864(n+1)*A054845(n))]`
-/

namespace A034707.P895461780121113221
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019426 (A008864 (n + 1) * A054845 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A034707.P895461780121113221

/-!
# A034708: Numbers for which the sum of reciprocals of digits is an integer.

The programs for A034708, there is no canonical definition to state claims against.
-/

/-! ## A034708.P8068228313290564862

`∩[A214678(n+1), A214957(n+1)]`
-/

namespace A034708.P8068228313290564862
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214678 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214957 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A034708.P8068228313290564862

/-! ## A034708.P4976292759784337400

`∩[A214957(n+1), A261189(n+1)]`
-/

namespace A034708.P4976292759784337400
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214957 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261189 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A034708.P4976292759784337400

/-! ## A034708.P11629484851960853768

`∩[A039116(n+1), A214957(n+1)]`
-/

namespace A034708.P11629484851960853768
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039116 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214957 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A034708.P11629484851960853768

/-! ## A034708.P5087950601102596267

`∩[A039118(n+1), A214957(n+1)]`
-/

namespace A034708.P5087950601102596267
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039118 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214957 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A034708.P5087950601102596267

/-! ## A034708.P3886866513587013730

`∩[A052382(n+1), A214957(n+1)]`
-/

namespace A034708.P3886866513587013730
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052382 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214957 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A034708.P3886866513587013730

/-! ## A034708.P18446089648043265493

`eq[A168046(n), A214950(n)]`
-/

namespace A034708.P18446089648043265493
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168046 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214950 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A034708.P18446089648043265493

/-! ## A034708.P5636979083066872915

`record[A004719(A214957(n+2))]`
-/

namespace A034708.P5636979083066872915
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004719 (A214957 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A034708.P5636979083066872915

/-! ## A034708.P124229376228902177

`eq[log(A214950(n)), A055641(n)]`
-/

namespace A034708.P124229376228902177
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.log (A214950 n : ℝ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055641 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = (f2 j : ℝ)) n

end

end A034708.P124229376228902177

/-! ## A034708.P13433204062288695035

`eq[log(A214950(n)), A067898(n)]`
-/

namespace A034708.P13433204062288695035
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.log (A214950 n : ℝ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067898 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = (f2 j : ℝ)) n

end

end A034708.P13433204062288695035

/-! ## A034708.P14370810610103504236

`filter[A214957(n+1), A168046(#)]`
-/

namespace A034708.P14370810610103504236
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214957 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A168046 (f1 j).toNat = 1) n)

end

end A034708.P14370810610103504236

/-! ## A034708.P17986811842261988080

`eq[A057427(A007954(n)), A214950(n)]`
-/

namespace A034708.P17986811842261988080
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (A007954 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214950 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A034708.P17986811842261988080

/-!
# A034709: Numbers divisible by their last digit.

The programs for A034709, the canonical program `A034709.P7982939178943539614` is in `Seq.B000.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A034709 has offset 1).

The definition of A034709 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A034709.P17016207043073400442

`eq[n%10, gcd(n%10, round(sqrt(n²+1)))]`
-/

namespace A034709.P17016207043073400442
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n % 10

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd ((n % 10 : ℕ) : ℤ) (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ)))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A034709.P17016207043073400442

namespace A034709

/-- `eq[n%10, gcd(n%10, round(sqrt(n²+1)))]` -/
def P17016207043073400442.Spec : Prop :=
  ∀ n, (P17016207043073400442.a n : ℤ) = A034709 (n + 1)

end A034709

/-! ## A034709.P7982939178943539614

`eq[n+1, lcm(n+1, (n+1)%10)]+1`

The canonical program, it is in `Seq.B000.C006`.
-/

namespace A034709

/-- `eq[n+1, lcm(n+1, (n+1)%10)]+1` -/
def P7982939178943539614.Spec : Prop :=
  ∀ n, (P7982939178943539614.a n : ℤ) = A034709 (n + 1)

theorem P7982939178943539614.correct : P7982939178943539614.Spec := by
  intro n
  simp only [A034709, Nat.add_sub_cancel]

end A034709

/-! ## A034709.P8660149384336389145

`eq[lcm(n, A010879(n)), A028310(n)]`
-/

namespace A034709.P8660149384336389145
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (n : ℤ) (A010879 n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A034709.P8660149384336389145

namespace A034709

/-- `eq[lcm(n, A010879(n)), A028310(n)]` -/
def P8660149384336389145.Spec : Prop :=
  ∀ n, (P8660149384336389145.a n : ℤ) = A034709 (n + 1)

end A034709

/-! ## A034709.P7422401498986123251

`lt[A040790(n), A040790(A347323(n))]`
-/

namespace A034709.P7422401498986123251
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040790 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040790 (A347323 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A034709.P7422401498986123251

namespace A034709

/-- `lt[A040790(n), A040790(A347323(n))]` -/
def P7422401498986123251.Spec : Prop :=
  ∀ n, (P7422401498986123251.a n : ℤ) = A034709 (n + 1)

end A034709

/-! ## A034709.P17184210680382568433

`A178158(n+1)%A080739(n)`
-/

namespace A034709.P17184210680382568433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A178158 (n + 1)) (A080739 n)

end

end A034709.P17184210680382568433

namespace A034709

/-- `A178158(n+1)%A080739(n)` -/
def P17184210680382568433.Spec : Prop :=
  ∀ n, P17184210680382568433.a n = A034709 (n + 1)

end A034709

/-! ## A034709.P14174385995197856622

`A178158(1-(n-2*n))%A131906(n+1)`
-/

namespace A034709.P14174385995197856622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A178158 (1 - ((n : ℤ) - (2 * n : ℤ))).toNat) (A131906 (n + 1))

end

end A034709.P14174385995197856622

namespace A034709

/-- `A178158(1-(n-2*n))%A131906(n+1)` -/
def P14174385995197856622.Spec : Prop :=
  ∀ n, P14174385995197856622.a n = A034709 (n + 1)

end A034709

/-! ## A034709.P11129149197082886824

`A178158(n+1)+A000007(A178158(n+1)²)`
-/

namespace A034709.P11129149197082886824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178158 (n + 1) + A000007 (A178158 (n + 1) ^ 2).toNat

end

end A034709.P11129149197082886824

namespace A034709

/-- `A178158(n+1)+A000007(A178158(n+1)²)` -/
def P11129149197082886824.Spec : Prop :=
  ∀ n, P11129149197082886824.a n = A034709 (n + 1)

end A034709

/-!
# A034710: Positive numbers for which the sum of digits equals the product of digits.

The programs for A034710, there is no canonical definition to state claims against.
-/

/-! ## A034710.P15346510977437697662

`∪[A066306(n+1), A066307(n+1)]`
-/

namespace A034710.P15346510977437697662
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066306 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066307 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A034710.P15346510977437697662

/-! ## A034710.P8819844439282940463

`∩[A055931(n+1), A249334(n+1)]`
-/

namespace A034710.P8819844439282940463
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055931 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249334 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A034710.P8819844439282940463

/-! ## A034710.P9838201439395795509

`∩[A249334(n+1), A254621(n+1)]`
-/

namespace A034710.P9838201439395795509
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249334 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254621 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A034710.P9838201439395795509

/-! ## A034710.P9617431188737574816

`∩[A055931(n+1), A342048(n+1)]`
-/

namespace A034710.P9617431188737574816
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055931 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342048 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A034710.P9617431188737574816

/-! ## A034710.P1887993655941235884

`∩[A249334(n+1), A342048(n+1)]`
-/

namespace A034710.P1887993655941235884
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249334 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342048 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A034710.P1887993655941235884

/-! ## A034710.P4607562479971625834

`∩[A254621(n+1), A342048(n+1)]`
-/

namespace A034710.P4607562479971625834
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254621 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342048 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A034710.P4607562479971625834

/-! ## A034710.P1962605793768540135

`∩[A055933(n+1), A249334(n+1)]`
-/

namespace A034710.P1962605793768540135
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055933 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249334 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A034710.P1962605793768540135

/-! ## A034710.P2874796071611880510

`∩[A064158(n+1), A249334(n+1)]`
-/

namespace A034710.P2874796071611880510
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064158 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249334 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A034710.P2874796071611880510

/-! ## A034710.P1329757214515156997

`∩[A064158(n+1), A342048(n+1)]`
-/

namespace A034710.P1329757214515156997
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064158 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342048 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A034710.P1329757214515156997

/-! ## A034710.P15092328432874628345

`∩[A055931(n+1), A061013(n+1)]`
-/

namespace A034710.P15092328432874628345
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055931 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061013 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A034710.P15092328432874628345

/-!
# A034713: Dirichlet convolution of powers of 2 (2,4,8,...) with themselves.

The programs for A034713, the canonical program `A034713.P16177796597939523709` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A034713 has offset 1).

The definition of A034713 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A034733, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A034713.P16177796597939523709

`4*A034733(n+1)`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A034713

/-- `4*A034733(n+1)` -/
def P16177796597939523709.Spec : Prop :=
  ∀ n, P16177796597939523709.a n = A034713 (n + 1)

theorem P16177796597939523709.correct : P16177796597939523709.Spec := by
  intro n
  simp only [A034713, Nat.add_sub_cancel]

end A034713

/-! ## A034713.P4085925292096305861

`∑{d}[n+1, 2^((n+1)/#+#)]`
-/

namespace A034713.P4085925292096305861
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (2 : ℝ) ^ ((n + 1 : ℚ) / (d : ℚ) + (d : ℚ) : ℝ)

end

end A034713.P4085925292096305861

namespace A034713

/-- `∑{d}[n+1, 2^((n+1)/#+#)]` -/
def P4085925292096305861.Spec : Prop :=
  ∀ n, P4085925292096305861.a n = (A034713 (n + 1) : ℝ)

end A034713

/-! ## A034713.P11738887329216466790

`4*∑{d}[n+1, A034008((n+1)/#+#)]`
-/

namespace A034713.P11738887329216466790
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * (∑ d ∈ Nat.divisors (f1 n), A034008 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ) + (d : ℚ))).toNat)

end

end A034713.P11738887329216466790

namespace A034713

/-- `4*∑{d}[n+1, A034008((n+1)/#+#)]` -/
def P11738887329216466790.Spec : Prop :=
  ∀ n, P11738887329216466790.a n = A034713 (n + 1)

end A034713

/-! ## A034713.P10014977312081827718

`4*∑{d}[n+1, A000079(#-1)*A000079((n+1)/#-1)]`
-/

namespace A034713.P10014977312081827718
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * (∑ d ∈ Nat.divisors (f1 n), A000079 (d - 1) * A000079 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ) - 1)).toNat)

end

end A034713.P10014977312081827718

namespace A034713

/-- `4*∑{d}[n+1, A000079(#-1)*A000079((n+1)/#-1)]` -/
def P10014977312081827718.Spec : Prop :=
  ∀ n, P10014977312081827718.a n = A034713 (n + 1)

end A034713

/-! ## A034713.P11352446008259005816

`A034733(n+1)/(A001511(A006257(n+1))/2)²`
-/

namespace A034713.P11352446008259005816
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A034733 (n + 1) : ℚ) / ((A001511 (A006257 (n + 1)).toNat : ℚ) / 2) ^ 2

end

end A034713.P11352446008259005816

namespace A034713

/-- `A034733(n+1)/(A001511(A006257(n+1))/2)²` -/
def P11352446008259005816.Spec : Prop :=
  ∀ n, P11352446008259005816.a n = (A034713 (n + 1) : ℚ)

end A034713

/-!
# A034714: Dirichlet convolution of squares with themselves.

The programs for A034714, the canonical program `A034714.P15425672651250517908` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A034714 has offset 1).

The definition of A034714 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A034714.P15425672651250517908

`(n+1)*A038040(n+1)`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A034714

/-- `(n+1)*A038040(n+1)` -/
def P15425672651250517908.Spec : Prop :=
  ∀ n, P15425672651250517908.a n = A034714 (n + 1)

theorem P15425672651250517908.correct : P15425672651250517908.Spec := by
  intro n
  simp only [A034714, Nat.add_sub_cancel]

end A034714

/-! ## A034714.P14698703645292900834

`∑{d}[n+1, lcm(#, (n+1)²)]`
-/

namespace A034714.P14698703645292900834
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), Nat.lcm d ((n + 1) ^ 2)

end

end A034714.P14698703645292900834

namespace A034714

/-- `∑{d}[n+1, lcm(#, (n+1)²)]` -/
def P14698703645292900834.Spec : Prop :=
  ∀ n, (P14698703645292900834.a n : ℤ) = A034714 (n + 1)

end A034714

/-! ## A034714.P4406033841035555133

`∑{d}[n+1, (gcd(n, #)+n)²]`
-/

namespace A034714.P4406033841035555133
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (Nat.gcd n d + n) ^ 2

end

end A034714.P4406033841035555133

namespace A034714

/-- `∑{d}[n+1, (gcd(n, #)+n)²]` -/
def P4406033841035555133.Spec : Prop :=
  ∀ n, (P4406033841035555133.a n : ℤ) = A034714 (n + 1)

end A034714

/-! ## A034714.P5798274014992779386

`(n+1)²*∏{e}[n+1, #+1]`
-/

namespace A034714.P5798274014992779386
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2 * (∏ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p + 1))

end

end A034714.P5798274014992779386

namespace A034714

/-- `(n+1)²*∏{e}[n+1, #+1]` -/
def P5798274014992779386.Spec : Prop :=
  ∀ n, (P5798274014992779386.a n : ℤ) = A034714 (n + 1)

theorem P5798274014992779386.correct : P5798274014992779386.Spec := by
  intro n
  simp only [A034714, Nat.add_sub_cancel, A034714.P5798274014992779386.f1, A034714.P5798274014992779386.a, A034714.P15425672651250517908.a, A038040, A038040.P16512896840577774730.a, A000005, A000005.P16091521709108585461.a, A032741, A032741.P3022166995030670566.f1, A032741.P3022166995030670566.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A034714

/-! ## A034714.P15542237137919147742

`∑{d}[n+1, root(n+1, #)²^#]`
-/

namespace A034714.P15542237137919147742
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (((n + 1 : ℝ) ^ (1 / (d : ℝ))) ^ 2) ^ d

end

end A034714.P15542237137919147742

namespace A034714

/-- `∑{d}[n+1, root(n+1, #)²^#]` -/
def P15542237137919147742.Spec : Prop :=
  ∀ n, P15542237137919147742.a n = (A034714 (n + 1) : ℝ)

end A034714

/-! ## A034714.P16098056825512489208

`(n+1)*(n+1)*∏{e}[n+1, #+1]`
-/

namespace A034714.P16098056825512489208
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) * ((n + 1) * (∏ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p + 1)))

end

end A034714.P16098056825512489208

namespace A034714

/-- `(n+1)*(n+1)*∏{e}[n+1, #+1]` -/
def P16098056825512489208.Spec : Prop :=
  ∀ n, (P16098056825512489208.a n : ℤ) = A034714 (n + 1)

theorem P16098056825512489208.correct : P16098056825512489208.Spec := by
  intro n
  simp only [A034714, Nat.add_sub_cancel, A034714.P16098056825512489208.f1, A034714.P16098056825512489208.a, A034714.P15425672651250517908.a, A038040, A038040.P16512896840577774730.a, A000005, A000005.P16091521709108585461.a, A032741, A032741.P3022166995030670566.f1, A032741.P3022166995030670566.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A034714

/-! ## A034714.P14665698668260696130

`A386012(n+1)/(n+1)`
-/

namespace A034714.P14665698668260696130
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A386012 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A034714.P14665698668260696130

namespace A034714

/-- `A386012(n+1)/(n+1)` -/
def P14665698668260696130.Spec : Prop :=
  ∀ n, P14665698668260696130.a n = (A034714 (n + 1) : ℚ)

end A034714

/-! ## A034714.P11921888225681286680

`(n+1)²*Δ[A006218(n)]`
-/

namespace A034714.P11921888225681286680
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006218 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℤ) * (f1 (n + 1) - f1 n)

end

end A034714.P11921888225681286680

namespace A034714

/-- `(n+1)²*Δ[A006218(n)]` -/
def P11921888225681286680.Spec : Prop :=
  ∀ n, P11921888225681286680.a n = A034714 (n + 1)

end A034714

/-! ## A034714.P9412915766096543659

`(n+1)²*Δ[A054519(n)]`
-/

namespace A034714.P9412915766096543659
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054519 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℤ) * (f1 (n + 1) - f1 n)

end

end A034714.P9412915766096543659

namespace A034714

/-- `(n+1)²*Δ[A054519(n)]` -/
def P9412915766096543659.Spec : Prop :=
  ∀ n, P9412915766096543659.a n = A034714 (n + 1)

end A034714

/-! ## A034714.P14671203554850020818

`(n+1)²*A000005(n+1)`
-/

namespace A034714.P14671203554850020818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℤ) * A000005 (n + 1)

end

end A034714.P14671203554850020818

namespace A034714

/-- `(n+1)²*A000005(n+1)` -/
def P14671203554850020818.Spec : Prop :=
  ∀ n, P14671203554850020818.a n = A034714 (n + 1)

theorem P14671203554850020818.correct : P14671203554850020818.Spec := by
  intro n
  simp only [A034714, Nat.add_sub_cancel, A034714.P14671203554850020818.a, A034714.P15425672651250517908.a, A000005, A000005.P16091521709108585461.a, A038040, A038040.P16512896840577774730.a, A032741, A032741.P3022166995030670566.f1, A032741.P3022166995030670566.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A034714

/-! ## A034714.P9177423921430090953

`A386013(n+1)/(n+1)²`
-/

namespace A034714.P9177423921430090953
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A386013 (n + 1) : ℚ) / ((n + 1) ^ 2 : ℚ)

end

end A034714.P9177423921430090953

namespace A034714

/-- `A386013(n+1)/(n+1)²` -/
def P9177423921430090953.Spec : Prop :=
  ∀ n, P9177423921430090953.a n = (A034714 (n + 1) : ℚ)

end A034714

/-! ## A034714.P12685310956785784828

`(n+1)*(A083271(n+1)-1)`
-/

namespace A034714.P12685310956785784828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (A083271 (n + 1) - 1)

end

end A034714.P12685310956785784828

namespace A034714

/-- `(n+1)*(A083271(n+1)-1)` -/
def P12685310956785784828.Spec : Prop :=
  ∀ n, P12685310956785784828.a n = A034714 (n + 1)

theorem P12685310956785784828.correct : P12685310956785784828.Spec := by
  intro n
  simp only [A034714, Nat.add_sub_cancel, A034714.P12685310956785784828.a, A034714.P15425672651250517908.a, A038040, A038040.P16512896840577774730.a, A083271, A083271.P4870819776415420897.a, A000005, A000005.P16091521709108585461.a, A032741, A032741.P3022166995030670566.f1, A032741.P3022166995030670566.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A034714

/-! ## A034714.P7976646716183118626

`(n+1)²/2*A062011(n+1)`
-/

namespace A034714.P7976646716183118626
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℚ) / 2 * (A062011 (n + 1) : ℚ)

end

end A034714.P7976646716183118626

namespace A034714

/-- `(n+1)²/2*A062011(n+1)` -/
def P7976646716183118626.Spec : Prop :=
  ∀ n, P7976646716183118626.a n = (A034714 (n + 1) : ℚ)

theorem P7976646716183118626.correct : P7976646716183118626.Spec := by
  intro n
  simp only [A034714, Nat.add_sub_cancel, A034714.P7976646716183118626.a, A034714.P15425672651250517908.a, A038040, A038040.P16512896840577774730.a, A062011, A062011.P17525320077853469406.a, A000005, A000005.P16091521709108585461.a, A032741, A032741.P3022166995030670566.f1, A032741.P3022166995030670566.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A034714

/-! ## A034714.P1195300222035509048

`A000005(C(n+1, n))/(1/(n+1))²`
-/

namespace A034714.P1195300222035509048
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000005 (Nat.choose (n + 1) n) : ℚ) / (1 / (n + 1 : ℚ)) ^ 2

end

end A034714.P1195300222035509048

namespace A034714

/-- `A000005(C(n+1, n))/(1/(n+1))²` -/
def P1195300222035509048.Spec : Prop :=
  ∀ n, P1195300222035509048.a n = (A034714 (n + 1) : ℚ)

end A034714

/-! ## A034714.P5827398137515322003

`A000005(2*n-(n-1))*record[(n-1)²]`
-/

namespace A034714.P5827398137515322003
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 ((2 * n : ℤ) - ((n : ℤ) - 1)).toNat * f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A034714.P5827398137515322003

namespace A034714

/-- `A000005(2*n-(n-1))*record[(n-1)²]` -/
def P5827398137515322003.Spec : Prop :=
  ∀ n, P5827398137515322003.a n = A034714 (n + 1)

end A034714

/-! ## A034714.P11004947980039820726

`A000005(2*n+1-n)*∑[2*n+1]`
-/

namespace A034714.P11004947980039820726
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 ((2 * n : ℤ) + (1 - (n : ℤ))).toNat * ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A034714.P11004947980039820726

namespace A034714

/-- `A000005(2*n+1-n)*∑[2*n+1]` -/
def P11004947980039820726.Spec : Prop :=
  ∀ n, P11004947980039820726.a n = A034714 (n + 1)

end A034714

/-! ## A034714.P8306436302445640202

`(n+1)*(n+1)*A000005(2*n+1-n)`
-/

namespace A034714.P8306436302445640202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * ((n + 1 : ℤ) * A000005 (2 * n + 1 - n))

end

end A034714.P8306436302445640202

namespace A034714

/-- `(n+1)*(n+1)*A000005(2*n+1-n)` -/
def P8306436302445640202.Spec : Prop :=
  ∀ n, P8306436302445640202.a n = A034714 (n + 1)

end A034714

/-! ## A034714.P12954324389584795001

`Δ[A006218(n)]*Δ[A153058(n)]`
-/

namespace A034714.P12954324389584795001
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006218 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153058 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * (f2 (n + 1) - f2 n)

end

end A034714.P12954324389584795001

namespace A034714

/-- `Δ[A006218(n)]*Δ[A153058(n)]` -/
def P12954324389584795001.Spec : Prop :=
  ∀ n, P12954324389584795001.a n = A034714 (n + 1)

end A034714

/-! ## A034714.P509375622818634803

`A091512(n+1)*A245579(n+1)`
-/

namespace A034714.P509375622818634803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091512 (n + 1) * A245579 (n + 1)

end

end A034714.P509375622818634803

namespace A034714

/-- `A091512(n+1)*A245579(n+1)` -/
def P509375622818634803.Spec : Prop :=
  ∀ n, P509375622818634803.a n = A034714 (n + 1)

end A034714

/-! ## A034714.P18058808412257713399

`A038040(n+1)²/Δ[A006218(n)]`
-/

namespace A034714.P18058808412257713399
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006218 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038040 (n + 1) ^ 2 : ℚ) / (f1 (n + 1) - f1 n : ℚ)

end

end A034714.P18058808412257713399

namespace A034714

/-- `A038040(n+1)²/Δ[A006218(n)]` -/
def P18058808412257713399.Spec : Prop :=
  ∀ n, P18058808412257713399.a n = (A034714 (n + 1) : ℚ)

end A034714

/-!
# A034715: Dirichlet convolution of triangular numbers with themselves.

The programs for A034715, the canonical program `A034715.P12105668079414109745` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A034715 has offset 1).

The definition of A034715 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A034715.P9191628309234660507

`A309731(n+1)+A308084(n+1)`
-/

namespace A034715.P9191628309234660507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309731 (n + 1) + A308084 (n + 1)

end

end A034715.P9191628309234660507

namespace A034715

/-- `A309731(n+1)+A308084(n+1)` -/
def P9191628309234660507.Spec : Prop :=
  ∀ n, P9191628309234660507.a n = A034715 (n + 1)

end A034715

/-! ## A034715.P9753543394041506522

`A309732(n+1)-A308084(n+1)`
-/

namespace A034715.P9753543394041506522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309732 (n + 1) - A308084 (n + 1)

end

end A034715.P9753543394041506522

namespace A034715

/-- `A309732(n+1)-A308084(n+1)` -/
def P9753543394041506522.Spec : Prop :=
  ∀ n, P9753543394041506522.a n = A034715 (n + 1)

end A034715

/-! ## A034715.P12478770970874994596

`(A309732(n+1)+A309731(n+1))/2`
-/

namespace A034715.P12478770970874994596
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A309732 (n + 1) + A309731 (n + 1) : ℚ) / 2

end

end A034715.P12478770970874994596

namespace A034715

/-- `(A309732(n+1)+A309731(n+1))/2` -/
def P12478770970874994596.Spec : Prop :=
  ∀ n, P12478770970874994596.a n = (A034715 (n + 1) : ℚ)

end A034715

/-! ## A034715.P12105668079414109745

`∑{d}[n+1, A000217(#)*A000217((n+1)/#)]`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A034715

/-- `∑{d}[n+1, A000217(#)*A000217((n+1)/#)]` -/
def P12105668079414109745.Spec : Prop :=
  ∀ n, P12105668079414109745.a n = A034715 (n + 1)

theorem P12105668079414109745.correct : P12105668079414109745.Spec := by
  intro n
  simp only [A034715, Nat.add_sub_cancel]

end A034715

/-! ## A034715.P11256084143048859872

`∑{d}[n+1, A007437(#)*A007438((n+1)/#)]`
-/

namespace A034715.P11256084143048859872
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A007437 d * A007438 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A034715.P11256084143048859872

namespace A034715

/-- `∑{d}[n+1, A007437(#)*A007438((n+1)/#)]` -/
def P11256084143048859872.Spec : Prop :=
  ∀ n, P11256084143048859872.a n = A034715 (n + 1)

end A034715

/-! ## A034715.P1113803374644811710

`∑{d}[n+1, A023896(#)*A309731((n+1)/#)]`
-/

namespace A034715.P1113803374644811710
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A023896 d * A309731 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A034715.P1113803374644811710

namespace A034715

/-- `∑{d}[n+1, A023896(#)*A309731((n+1)/#)]` -/
def P1113803374644811710.Spec : Prop :=
  ∀ n, P1113803374644811710.a n = A034715 (n + 1)

end A034715

/-! ## A034715.P15228522339325979668

`∑{d}[n+1, A057661(#)*A309322((n+1)/#)]`
-/

namespace A034715.P15228522339325979668
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A057661 d * A309322 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A034715.P15228522339325979668

namespace A034715

/-- `∑{d}[n+1, A057661(#)*A309322((n+1)/#)]` -/
def P15228522339325979668.Spec : Prop :=
  ∀ n, P15228522339325979668.a n = A034715 (n + 1)

end A034715

/-! ## A034715.P3345052359296549852

`∑{d}[n+1, A326826(#)*A326828((n+1)/#)]`
-/

namespace A034715.P3345052359296549852
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A326826 d * A326828 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A034715.P3345052359296549852

namespace A034715

/-- `∑{d}[n+1, A326826(#)*A326828((n+1)/#)]` -/
def P3345052359296549852.Spec : Prop :=
  ∀ n, P3345052359296549852.a n = A034715 (n + 1)

end A034715

/-!
# A034716: Dirichlet convolution of factorials with themselves.

The programs for A034716, there is no canonical definition to state claims against.
-/

/-! ## A034716.P4689861354748942062

`A002131(A161644(n)+A135922(n+1))`
-/

namespace A034716.P4689861354748942062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002131 (A161644 n + A135922 (n + 1)).toNat

end

end A034716.P4689861354748942062

/-! ## A034716.P15523848296190198979

`A241313(A005282(n+3))+A241139(n+2)`
-/

namespace A034716.P15523848296190198979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241313 (A005282 (n + 3)).toNat + A241139 (n + 2)

end

end A034716.P15523848296190198979

/-!
# A034717: Dirichlet convolution of Catalan numbers (1,2,5,14...) with themselves.

The programs for A034717, the canonical program `A034717.P12656796764018422404` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A034717 has offset 1).

The definition of A034717 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 171 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A034717.P12656796764018422404

`∑{d}[n+1, A000108((n+1)/#)*A000108(#)]`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A034717

/-- `∑{d}[n+1, A000108((n+1)/#)*A000108(#)]` -/
def P12656796764018422404.Spec : Prop :=
  ∀ n, P12656796764018422404.a n = A034717 (n + 1)

theorem P12656796764018422404.correct : P12656796764018422404.Spec := by
  intro n
  simp only [A034717, Nat.add_sub_cancel]

end A034717

/-! ## A034717.P16426439623982496481

`∑{d}[n+1, A002996(#)*A237670((n+1)/#)]`
-/

namespace A034717.P16426439623982496481
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A002996 d * A237670 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A034717.P16426439623982496481

namespace A034717

/-- `∑{d}[n+1, A002996(#)*A237670((n+1)/#)]` -/
def P16426439623982496481.Spec : Prop :=
  ∀ n, P16426439623982496481.a n = A034717 (n + 1)

end A034717

/-!
# A034718: Dirichlet convolution of b_n=n with b_n with b_n.

The programs for A034718, the canonical program `A034718.P3593226666238207661` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A034718 has offset 1).

The definition of A034718 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007425, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A034718.P3593226666238207661

`(n+1)*A007425(n+1)`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A034718

/-- `(n+1)*A007425(n+1)` -/
def P3593226666238207661.Spec : Prop :=
  ∀ n, P3593226666238207661.a n = A034718 (n + 1)

theorem P3593226666238207661.correct : P3593226666238207661.Spec := by
  intro n
  simp only [A034718, Nat.add_sub_cancel]

end A034718

/-! ## A034718.P7233327581045138097

`∑{d}[n+1, A390258(#)]`
-/

namespace A034718.P7233327581045138097
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A390258 d

end

end A034718.P7233327581045138097

namespace A034718

/-- `∑{d}[n+1, A390258(#)]` -/
def P7233327581045138097.Spec : Prop :=
  ∀ n, P7233327581045138097.a n = A034718 (n + 1)

end A034718

/-! ## A034718.P14307364613065197621

`(n+1)*sqrt(A097988(n+1))`
-/

namespace A034718.P14307364613065197621
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℝ) * Real.sqrt (A097988 (n + 1) : ℝ)

end

end A034718.P14307364613065197621

namespace A034718

/-- `(n+1)*sqrt(A097988(n+1))` -/
def P14307364613065197621.Spec : Prop :=
  ∀ n, P14307364613065197621.a n = (A034718 (n + 1) : ℝ)

end A034718

/-! ## A034718.P3606798250573156396

`∑{d}[n+1, (n+1)*A000005(#)]`
-/

namespace A034718.P3606798250573156396
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (n + 1 : ℤ) * A000005 d

end

end A034718.P3606798250573156396

namespace A034718

/-- `∑{d}[n+1, (n+1)*A000005(#)]` -/
def P3606798250573156396.Spec : Prop :=
  ∀ n, P3606798250573156396.a n = A034718 (n + 1)

end A034718

/-! ## A034718.P7423034342686981724

`∑{d}[n+1, #*A038040((n+1)/#)]`
-/

namespace A034718.P7423034342686981724
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * A038040 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A034718.P7423034342686981724

namespace A034718

/-- `∑{d}[n+1, #*A038040((n+1)/#)]` -/
def P7423034342686981724.Spec : Prop :=
  ∀ n, P7423034342686981724.a n = A034718 (n + 1)

end A034718

/-! ## A034718.P16896258717201781987

`∑{d}[n+1, A000203(#)*A018804((n+1)/#)]`
-/

namespace A034718.P16896258717201781987
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000203 d * A018804 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A034718.P16896258717201781987

namespace A034718

/-- `∑{d}[n+1, A000203(#)*A018804((n+1)/#)]` -/
def P16896258717201781987.Spec : Prop :=
  ∀ n, P16896258717201781987.a n = A034718 (n + 1)

end A034718

/-! ## A034718.P14696598493146610748

`∑{d}[n+1, A007429(#)*A029935((n+1)/#)]`
-/

namespace A034718.P14696598493146610748
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A007429 d * A029935 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A034718.P14696598493146610748

namespace A034718

/-- `∑{d}[n+1, A007429(#)*A029935((n+1)/#)]` -/
def P14696598493146610748.Spec : Prop :=
  ∀ n, P14696598493146610748.a n = A034718 (n + 1)

end A034718

/-! ## A034718.P8229262364008897977

`∑{d}[n+1, A000010(#)*A060640((n+1)/#)]`
-/

namespace A034718.P8229262364008897977
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000010 d * A060640 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A034718.P8229262364008897977

namespace A034718

/-- `∑{d}[n+1, A000010(#)*A060640((n+1)/#)]` -/
def P8229262364008897977.Spec : Prop :=
  ∀ n, P8229262364008897977.a n = A034718 (n + 1)

end A034718

/-! ## A034718.P7769802742394734969

`∑{d}[n+1, A007430(#)*A143275((n+1)/#)]`
-/

namespace A034718.P7769802742394734969
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A007430 d * A143275 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A034718.P7769802742394734969

namespace A034718

/-- `∑{d}[n+1, A007430(#)*A143275((n+1)/#)]` -/
def P7769802742394734969.Spec : Prop :=
  ∀ n, P7769802742394734969.a n = A034718 (n + 1)

end A034718

/-! ## A034718.P5135088342109852240

`∑{d}[n+1, A008683(#)*A174466((n+1)/#)]`
-/

namespace A034718.P5135088342109852240
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008683 d * A174466 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A034718.P5135088342109852240

namespace A034718

/-- `∑{d}[n+1, A008683(#)*A174466((n+1)/#)]` -/
def P5135088342109852240.Spec : Prop :=
  ∀ n, P5135088342109852240.a n = A034718 (n + 1)

end A034718

/-! ## A034718.P9359388450860197290

`∑{d}[n+1, A068984(#)*A158523((n+1)/#)]`
-/

namespace A034718.P9359388450860197290
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A068984 d * A158523 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A034718.P9359388450860197290

namespace A034718

/-- `∑{d}[n+1, A068984(#)*A158523((n+1)/#)]` -/
def P9359388450860197290.Spec : Prop :=
  ∀ n, P9359388450860197290.a n = A034718 (n + 1)

end A034718

/-! ## A034718.P17099942269870876362

`∑{d}[n+1, A109386(#)*A162728((n+1)/#)]`
-/

namespace A034718.P17099942269870876362
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A109386 d * A162728 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A034718.P17099942269870876362

namespace A034718

/-- `∑{d}[n+1, A109386(#)*A162728((n+1)/#)]` -/
def P17099942269870876362.Spec : Prop :=
  ∀ n, P17099942269870876362.a n = A034718 (n + 1)

end A034718

/-! ## A034718.P15886945130234661065

`∑{d}[n+1, A091512(#)*A245579((n+1)/#)]`
-/

namespace A034718.P15886945130234661065
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A091512 d * A245579 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A034718.P15886945130234661065

namespace A034718

/-- `∑{d}[n+1, A091512(#)*A245579((n+1)/#)]` -/
def P15886945130234661065.Spec : Prop :=
  ∀ n, P15886945130234661065.a n = A034718 (n + 1)

end A034718

/-! ## A034718.P6398981831675057166

`∑{d}[n+1, A002131(#)*A344372((n+1)/#)]`
-/

namespace A034718.P6398981831675057166
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A002131 d * A344372 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A034718.P6398981831675057166

namespace A034718

/-- `∑{d}[n+1, A002131(#)*A344372((n+1)/#)]` -/
def P6398981831675057166.Spec : Prop :=
  ∀ n, P6398981831675057166.a n = A034718 (n + 1)

end A034718

/-! ## A034718.P4403236665365048389

`∑{d}[n+1, A008836(#)*A360430((n+1)/#)]`
-/

namespace A034718.P4403236665365048389
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008836 d * A360430 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A034718.P4403236665365048389

namespace A034718

/-- `∑{d}[n+1, A008836(#)*A360430((n+1)/#)]` -/
def P4403236665365048389.Spec : Prop :=
  ∀ n, P4403236665365048389.a n = A034718 (n + 1)

end A034718

/-! ## A034718.P6467394992029111728

`∑{d}[n+1, A076752(#)*A322577((n+1)/#)]`
-/

namespace A034718.P6467394992029111728
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A076752 d * A322577 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A034718.P6467394992029111728

namespace A034718

/-- `∑{d}[n+1, A076752(#)*A322577((n+1)/#)]` -/
def P6467394992029111728.Spec : Prop :=
  ∀ n, P6467394992029111728.a n = A034718 (n + 1)

end A034718

/-! ## A034718.P16658083496253229396

`∑{d}[n+1, A064950(#)*A358272((n+1)/#)]`
-/

namespace A034718.P16658083496253229396
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A064950 d * A358272 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A034718.P16658083496253229396

namespace A034718

/-- `∑{d}[n+1, A064950(#)*A358272((n+1)/#)]` -/
def P16658083496253229396.Spec : Prop :=
  ∀ n, P16658083496253229396.a n = A034718 (n + 1)

end A034718

/-! ## A034718.P9419389399905870917

`∑{d}[n+1, A074722(#)*A365649((n+1)/#)]`
-/

namespace A034718.P9419389399905870917
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A074722 d * A365649 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A034718.P9419389399905870917

namespace A034718

/-- `∑{d}[n+1, A074722(#)*A365649((n+1)/#)]` -/
def P9419389399905870917.Spec : Prop :=
  ∀ n, P9419389399905870917.a n = A034718 (n + 1)

end A034718

/-! ## A034718.P4860581747797246321

`∑{d}[n+1, A113061(#)*A359949((n+1)/#)]`
-/

namespace A034718.P4860581747797246321
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A113061 d * A359949 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A034718.P4860581747797246321

namespace A034718

/-- `∑{d}[n+1, A113061(#)*A359949((n+1)/#)]` -/
def P4860581747797246321.Spec : Prop :=
  ∀ n, P4860581747797246321.a n = A034718 (n + 1)

end A034718

/-! ## A034718.P5780876432762968970

`∑{d}[n+1, A130054(#)*A349692((n+1)/#)]`
-/

namespace A034718.P5780876432762968970
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A130054 d * A349692 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A034718.P5780876432762968970

namespace A034718

/-- `∑{d}[n+1, A130054(#)*A349692((n+1)/#)]` -/
def P5780876432762968970.Spec : Prop :=
  ∀ n, P5780876432762968970.a n = A034718 (n + 1)

end A034718

/-!
# A034719: Dirichlet convolution of powers of 3 (3,9,27,...) with themselves.

The programs for A034719, the canonical program `A034719.P18413001168880020072` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A034719 has offset 1).

The definition of A034719 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 207 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A034719.P8168938417806625004

`∑{d}[n+1, 3^((n+1)/#+#)]`
-/

namespace A034719.P8168938417806625004
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (3 : ℝ) ^ ((n + 1 : ℚ) / (d : ℚ) + (d : ℚ) : ℝ)

end

end A034719.P8168938417806625004

namespace A034719

/-- `∑{d}[n+1, 3^((n+1)/#+#)]` -/
def P8168938417806625004.Spec : Prop :=
  ∀ n, P8168938417806625004.a n = (A034719 (n + 1) : ℝ)

end A034719

/-! ## A034719.P3002697210102514489

`9*A034751(n+1)`
-/

namespace A034719.P3002697210102514489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  9 * A034751 (n + 1)

end

end A034719.P3002697210102514489

namespace A034719

/-- `9*A034751(n+1)` -/
def P3002697210102514489.Spec : Prop :=
  ∀ n, P3002697210102514489.a n = A034719 (n + 1)

end A034719

/-! ## A034719.P17030866796323677511

`9*∑{d}[n+1, A034730(#)*A034741((n+1)/#)]`
-/

namespace A034719.P17030866796323677511
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  9 * (∑ d ∈ Nat.divisors (f1 n), A034730 d * A034741 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat)

end

end A034719.P17030866796323677511

namespace A034719

/-- `9*∑{d}[n+1, A034730(#)*A034741((n+1)/#)]` -/
def P17030866796323677511.Spec : Prop :=
  ∀ n, P17030866796323677511.a n = A034719 (n + 1)

end A034719

/-! ## A034719.P7076519457629284341

`9*∑{d}[n+1, A034735(#)*A349567((n+1)/#)]`
-/

namespace A034719.P7076519457629284341
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  9 * (∑ d ∈ Nat.divisors (f1 n), A034735 d * A349567 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat)

end

end A034719.P7076519457629284341

namespace A034719

/-- `9*∑{d}[n+1, A034735(#)*A349567((n+1)/#)]` -/
def P7076519457629284341.Spec : Prop :=
  ∀ n, P7076519457629284341.a n = A034719 (n + 1)

end A034719

/-! ## A034719.P18413001168880020072

`9*∑{d}[n+1, A000244(#-1)*A000244((n+1)/#-1)]`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A034719

/-- `9*∑{d}[n+1, A000244(#-1)*A000244((n+1)/#-1)]` -/
def P18413001168880020072.Spec : Prop :=
  ∀ n, P18413001168880020072.a n = A034719 (n + 1)

theorem P18413001168880020072.correct : P18413001168880020072.Spec := by
  intro n
  simp only [A034719, Nat.add_sub_cancel]

end A034719

/-!
# A034720: Number of different words that can be formed from an n X n grid of letters, reading horizontally, vertically or diagonally.

The programs for A034720, the canonical program `A034720.P983704987878517972` is in `Seq.B000.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A034720 has offset 1).

The definition of A034720 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A034720.P983704987878517972

`(n+1)*(2*(n+1)-1)*(5*(n+1)-2)/3`

The canonical program, it is in `Seq.B000.C006`.
-/

namespace A034720

/-- `(n+1)*(2*(n+1)-1)*(5*(n+1)-2)/3` -/
def P983704987878517972.Spec : Prop :=
  ∀ n, P983704987878517972.a n = (A034720 (n + 1) : ℚ)

end A034720

/-! ## A034720.P13284124905188012507

`∑[∑[a(n-1)+20]]` with `a(0)=1, a(1)=14`
-/

namespace A034720.P13284124905188012507
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [1, 14] fun n f2 =>
  f2 (n - 1) + 20

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A034720.P13284124905188012507

namespace A034720

/-- `∑[∑[a(n-1)+20]]` -/
def P13284124905188012507.Spec : Prop :=
  ∀ n, (P13284124905188012507.a n : ℤ) = A034720 (n + 1)

end A034720

/-! ## A034720.P11473913369980035631

`∑[6*n²]+C(2*n+3, 3)`
-/

namespace A034720.P11473913369980035631
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6 * n ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + Nat.choose (2 * n + 3) 3

end

end A034720.P11473913369980035631

namespace A034720

/-- `∑[6*n²]+C(2*n+3, 3)` -/
def P11473913369980035631.Spec : Prop :=
  ∀ n, (P11473913369980035631.a n : ℤ) = A034720 (n + 1)

end A034720

/-! ## A034720.P11024825278026590011

`∑[5*C(2*n+1, 2)-(n-1)]`
-/

namespace A034720.P11024825278026590011
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (5 * Nat.choose (2 * n + 1) 2 : ℤ) - ((n : ℤ) - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A034720.P11024825278026590011

namespace A034720

/-- `∑[5*C(2*n+1, 2)-(n-1)]` -/
def P11024825278026590011.Spec : Prop :=
  ∀ n, P11024825278026590011.a n = A034720 (n + 1)

end A034720

/-! ## A034720.P669349022180365002

`a(n-1)+n*(10*n+4)+1` with `a(0)=1`
-/

namespace A034720.P669349022180365002
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (n * (10 * n + 4) + 1)

end

end A034720.P669349022180365002

namespace A034720

/-- `a(n-1)+n*(10*n+4)+1` -/
def P669349022180365002.Spec : Prop :=
  ∀ n, (P669349022180365002.a n : ℤ) = A034720 (n + 1)

end A034720

/-! ## A034720.P14679817858005970019

`∑[(2*n)²]+lcm(2*n+1, (n+1)²)`
-/

namespace A034720.P14679817858005970019
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (2 * n) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + Nat.lcm (2 * n + 1) ((n + 1) ^ 2)

end

end A034720.P14679817858005970019

namespace A034720

/-- `∑[(2*n)²]+lcm(2*n+1, (n+1)²)` -/
def P14679817858005970019.Spec : Prop :=
  ∀ n, (P14679817858005970019.a n : ℤ) = A034720 (n + 1)

end A034720

/-! ## A034720.P12866042966323773799

`∑[A272039(n)]`
-/

namespace A034720.P12866042966323773799
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272039 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A034720.P12866042966323773799

namespace A034720

/-- `∑[A272039(n)]` -/
def P12866042966323773799.Spec : Prop :=
  ∀ n, P12866042966323773799.a n = A034720 (n + 1)

end A034720

/-! ## A034720.P17480443916984340443

`A220084(n)+∑[n]`
-/

namespace A034720.P17480443916984340443
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220084 n + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A034720.P17480443916984340443

namespace A034720

/-- `A220084(n)+∑[n]` -/
def P17480443916984340443.Spec : Prop :=
  ∀ n, P17480443916984340443.a n = A034720 (n + 1)

end A034720

/-! ## A034720.P5435874281013459135

`∑[A080860(n)-n]`
-/

namespace A034720.P5435874281013459135
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080860 n - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A034720.P5435874281013459135

namespace A034720

/-- `∑[A080860(n)-n]` -/
def P5435874281013459135.Spec : Prop :=
  ∀ n, P5435874281013459135.a n = A034720 (n + 1)

end A034720

/-! ## A034720.P308445842638905397

`Δ[A346636(n)]+n²`
-/

namespace A034720.P308445842638905397
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346636 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + (n ^ 2 : ℤ)

end

end A034720.P308445842638905397

namespace A034720

/-- `Δ[A346636(n)]+n²` -/
def P308445842638905397.Spec : Prop :=
  ∀ n, P308445842638905397.a n = A034720 (n + 1)

end A034720

/-! ## A034720.P18345320671966853811

`∑[A295906(n+1)-1]`
-/

namespace A034720.P18345320671966853811
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295906 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A034720.P18345320671966853811

namespace A034720

/-- `∑[A295906(n+1)-1]` -/
def P18345320671966853811.Spec : Prop :=
  ∀ n, P18345320671966853811.a n = A034720 (n + 1)

end A034720

/-! ## A034720.P15759031086018322571

`Δ[n²²]-A146298(n)`
-/

namespace A034720.P15759031086018322571
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n ^ 2) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ) - A146298 n

end

end A034720.P15759031086018322571

namespace A034720

/-- `Δ[n²²]-A146298(n)` -/
def P15759031086018322571.Spec : Prop :=
  ∀ n, P15759031086018322571.a n = A034720 (n + 1)

end A034720

/-! ## A034720.P4890113437237833678

`A228219(n)+a(n-1)` with `a(0)=1`
-/

namespace A034720.P4890113437237833678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A228219 n + a (n - 1)

end

end A034720.P4890113437237833678

namespace A034720

/-- `A228219(n)+a(n-1)` -/
def P4890113437237833678.Spec : Prop :=
  ∀ n, P4890113437237833678.a n = A034720 (n + 1)

end A034720

/-! ## A034720.P2818515237275801897

`∑[A147296(n)+(n+1)²]`
-/

namespace A034720.P2818515237275801897
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147296 n + ((n + 1) ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A034720.P2818515237275801897

namespace A034720

/-- `∑[A147296(n)+(n+1)²]` -/
def P2818515237275801897.Spec : Prop :=
  ∀ n, P2818515237275801897.a n = A034720 (n + 1)

end A034720

/-! ## A034720.P6788495828304452210

`A035005(n+1)+(n+1)²`
-/

namespace A034720.P6788495828304452210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035005 (n + 1) + ((n + 1) ^ 2 : ℤ)

end

end A034720.P6788495828304452210

namespace A034720

/-- `A035005(n+1)+(n+1)²` -/
def P6788495828304452210.Spec : Prop :=
  ∀ n, P6788495828304452210.a n = A034720 (n + 1)

end A034720

/-! ## A034720.P17056806520790971814

`A100174(n+1)+∑[2*n]`
-/

namespace A034720.P17056806520790971814
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100174 (n + 1) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A034720.P17056806520790971814

namespace A034720

/-- `A100174(n+1)+∑[2*n]` -/
def P17056806520790971814.Spec : Prop :=
  ∀ n, P17056806520790971814.a n = A034720 (n + 1)

end A034720

/-! ## A034720.P6582700141588923760

`2*A100179(n+1)-(n+1)`
-/

namespace A034720.P6582700141588923760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A100179 (n + 1) - (n + 1 : ℤ)

end

end A034720.P6582700141588923760

namespace A034720

/-- `2*A100179(n+1)-(n+1)` -/
def P6582700141588923760.Spec : Prop :=
  ∀ n, P6582700141588923760.a n = A034720 (n + 1)

end A034720

/-! ## A034720.P1645408623296542043

`(n+1)²²-A035291(n+1)`
-/

namespace A034720.P1645408623296542043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((n + 1) ^ 2) ^ 2 : ℤ) - A035291 (n + 1)

end

end A034720.P1645408623296542043

namespace A034720

/-- `(n+1)²²-A035291(n+1)` -/
def P1645408623296542043.Spec : Prop :=
  ∀ n, P1645408623296542043.a n = A034720 (n + 1)

end A034720

/-! ## A034720.P12937961244352306134

`A014105(n)+A005902(n)`
-/

namespace A034720.P12937961244352306134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014105 n + A005902 n

end

end A034720.P12937961244352306134

namespace A034720

/-- `A014105(n)+A005902(n)` -/
def P12937961244352306134.Spec : Prop :=
  ∀ n, P12937961244352306134.a n = A034720 (n + 1)

end A034720

/-! ## A034720.P7137731699243891905

`A051895(n)+A051662(n)`
-/

namespace A034720.P7137731699243891905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051895 n + A051662 n

end

end A034720.P7137731699243891905

namespace A034720

/-- `A051895(n)+A051662(n)` -/
def P7137731699243891905.Spec : Prop :=
  ∀ n, P7137731699243891905.a n = A034720 (n + 1)

end A034720

/-!
# A034721: a(n) = (10*n^3 - 9*n^2 + 2*n)/3 + 1.

The programs for A034721, the canonical program `A034721.P12183180036091575082` is in `Seq.B000.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A034721 has offset 0).

The definition of A034721 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A034721.P12183180036091575082

`(10*n^3-9*n²+2*n)/3+1`

The canonical program, it is in `Seq.B000.C006`.
-/

namespace A034721

/-- `(10*n^3-9*n²+2*n)/3+1` -/
def P12183180036091575082.Spec : Prop :=
  ∀ n, P12183180036091575082.a n = (A034721 n : ℚ)

end A034721

/-! ## A034721.P14592341620560901434

`∑[∑[a(n-1)+20]]` with `a(0)=1, a(1)=0, a(2)=14`
-/

namespace A034721.P14592341620560901434
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [1, 0, 14] fun n f2 =>
  f2 (n - 1) + 20

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A034721.P14592341620560901434

namespace A034721

/-- `∑[∑[a(n-1)+20]]` -/
def P14592341620560901434.Spec : Prop :=
  ∀ n, (P14592341620560901434.a n : ℤ) = A034721 n

end A034721

/-! ## A034721.P4020749574084414224

`∑[A272039(A028310(n)-1)]`
-/

namespace A034721.P4020749574084414224
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272039 (A028310 n - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A034721.P4020749574084414224

namespace A034721

/-- `∑[A272039(A028310(n)-1)]` -/
def P4020749574084414224.Spec : Prop :=
  ∀ n, P4020749574084414224.a n = A034721 n

end A034721

/-! ## A034721.P12758378426139699912

`abs(A056000(n)-A247608(n))`
-/

namespace A034721.P12758378426139699912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A056000 n - A247608 n|

end

end A034721.P12758378426139699912

namespace A034721

/-- `abs(A056000(n)-A247608(n))` -/
def P12758378426139699912.Spec : Prop :=
  ∀ n, P12758378426139699912.a n = A034721 n

end A034721

/-! ## A034721.P8489090096683188517

`∑[A272039(n-A057427(n))]`
-/

namespace A034721.P8489090096683188517
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272039 ((n : ℤ) - A057427 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A034721.P8489090096683188517

namespace A034721

/-- `∑[A272039(n-A057427(n))]` -/
def P8489090096683188517.Spec : Prop :=
  ∀ n, P8489090096683188517.a n = A034721 n

end A034721

/-! ## A034721.P14734088285154812911

`abs(A100174(n+1)-A045945(n))`
-/

namespace A034721.P14734088285154812911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A100174 (n + 1) - A045945 n|

end

end A034721.P14734088285154812911

namespace A034721

/-- `abs(A100174(n+1)-A045945(n))` -/
def P14734088285154812911.Spec : Prop :=
  ∀ n, P14734088285154812911.a n = A034721 n

end A034721

/-! ## A034721.P5522398020733074826

`∑[A272039(A000007(n)-1+n)]`
-/

namespace A034721.P5522398020733074826
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272039 (A000007 n - 1 + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A034721.P5522398020733074826

namespace A034721

/-- `∑[A272039(A000007(n)-1+n)]` -/
def P5522398020733074826.Spec : Prop :=
  ∀ n, P5522398020733074826.a n = A034721 n

end A034721

/-!
# A034722: Products of successive Fibonacci numbers.

The programs for A034722, there is no canonical definition to state claims against.
-/

/-! ## A034722.P17345401242480926052

`record[or(A019586(n+1), A257243(n+1))]`
-/

namespace A034722.P17345401242480926052
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A019586 (n + 1)) (A257243 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A034722.P17345401242480926052

/-! ## A034722.P3718951397760405252

`eq[A010056(n), A342000(A138960(n+1))]`
-/

namespace A034722.P3718951397760405252
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010056 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342000 (A138960 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A034722.P3718951397760405252

/-! ## A034722.P15066280075124535244

`eq[A007895(n), A214247(A138180(3*n+2))]`
-/

namespace A034722.P15066280075124535244
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007895 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214247 (A138180 (3 * n + 2)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A034722.P15066280075124535244

/-!
# A034723: a(n) is the n-th sextic factorial number divided by 3.

The programs for A034723, the canonical program `A034723.P7140936171952426082` is in `Seq.B000.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A034723 has offset 1).

The definition of A034723 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A034723.P7140936171952426082

`3^n*(2*(n+1))!/(2^(n+1)*(n+1)!)`

The canonical program, it is in `Seq.B000.C006`.
-/

namespace A034723

/-- `3^n*(2*(n+1))!/(2^(n+1)*(n+1)!)` -/
def P7140936171952426082.Spec : Prop :=
  ∀ n, P7140936171952426082.a n = (A034723 (n + 1) : ℚ)

end A034723

/-! ## A034723.P15306812693571779608

`∏[6*n+3]/3`
-/

namespace A034723.P15306812693571779608
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6 * n + 3

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∏ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) / 3

end

end A034723.P15306812693571779608

namespace A034723

/-- `∏[6*n+3]/3` -/
def P15306812693571779608.Spec : Prop :=
  ∀ n, P15306812693571779608.a n = (A034723 (n + 1) : ℚ)

end A034723

/-! ## A034723.P14170113357640763043

`∏[a(n-1)+6]` with `a(0)=1, a(1)=9`
-/

namespace A034723.P14170113357640763043
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 9] fun n f1 =>
  f1 (n - 1) + 6

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A034723.P14170113357640763043

namespace A034723

/-- `∏[a(n-1)+6]` -/
def P14170113357640763043.Spec : Prop :=
  ∀ n, (P14170113357640763043.a n : ℤ) = A034723 (n + 1)

end A034723

/-! ## A034723.P586292703977538112

`(6*n+3)*a(n-1)` with `a(0)=1`
-/

namespace A034723.P586292703977538112
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  (6 * n + 3) * a (n - 1)

end

end A034723.P586292703977538112

namespace A034723

/-- `(6*n+3)*a(n-1)` -/
def P586292703977538112.Spec : Prop :=
  ∀ n, (P586292703977538112.a n : ℤ) = A034723 (n + 1)

end A034723

/-! ## A034723.P3635989439422237354

`3*a(n-1)*Δ[n²]` with `a(0)=1`
-/

namespace A034723.P3635989439422237354
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  3 * (a (n - 1) * ((f1 (n + 1) : ℤ) - (f1 n : ℤ)))

end

end A034723.P3635989439422237354

namespace A034723

/-- `3*a(n-1)*Δ[n²]` -/
def P3635989439422237354.Spec : Prop :=
  ∀ n, P3635989439422237354.a n = A034723 (n + 1)

end A034723

/-!
# A034724: a(n) = n-th sextic factorial number divided by 4.

The programs for A034724, there is no canonical definition to state claims against.
-/

/-! ## A034724.P11156555872305196174

`∏[a(n-1)+6]` with `a(0)=1, a(1)=10`
-/

namespace A034724.P11156555872305196174
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 10] fun n f1 =>
  f1 (n - 1) + 6

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A034724.P11156555872305196174

/-! ## A034724.P13079555005417072433

`(6*n+4)*a(n-1)` with `a(0)=1`
-/

namespace A034724.P13079555005417072433
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  (6 * n + 4) * a (n - 1)

end

end A034724.P13079555005417072433

/-! ## A034724.P12653618793729572629

`record[2*n*a(n-3)]` with `a(0)=1, a(1)=0, a(2)=1, a(3)=0`
-/

namespace A034724.P12653618793729572629
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 0, 1, 0] fun n f1 =>
  2 * n * f1 (n - 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A034724.P12653618793729572629

/-! ## A034724.P11941781617326855470

`2*a(n-1)*comp[n-gcd(3, n)]` with `a(0)=1`
-/

namespace A034724.P11941781617326855470
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - (Nat.gcd 3 n : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  2 * (a (n - 1) * SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A034724.P11941781617326855470

/-! ## A034724.P17308147929420686673

`a(n-1)*Δ[Δ[(n-1)*n²]]` with `a(0)=1`
-/

namespace A034724.P17308147929420686673
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - 1) * (n ^ 2 : ℤ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) * (f1 (n + 1) - f1 n)

end

end A034724.P17308147929420686673

/-!
# A034725: Product of digits of A034686(n).

The programs for A034725, there is no canonical definition to state claims against.
-/

/-! ## A034725.P14390031194363052819

`∏{digits}[A034686(n+1), #]`
-/

namespace A034725.P14390031194363052819
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034686 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).prod

end

end A034725.P14390031194363052819

/-! ## A034725.P14066373006724947519

`A034686(n+1)/A034685(n+1)`
-/

namespace A034725.P14066373006724947519
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A034686 (n + 1) : ℚ) / (A034685 (n + 1) : ℚ)

end

end A034725.P14066373006724947519

/-!
# A034726: Smallest integral value of m/(sum of digits of m) for any n-digit number m.

The programs for A034726, there is no canonical definition to state claims against.
-/

/-! ## A034726.P16915236952127654840

`A034727(n+1)/A034728(n+1)`
-/

namespace A034726.P16915236952127654840
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A034727 (n + 1) : ℚ) / (A034728 (n + 1) : ℚ)

end

end A034726.P16915236952127654840

/-! ## A034726.P10286221299165969973

`A034727(A000027(n+1))/∑{digits}[A034727(n+1), #]`
-/

namespace A034726.P10286221299165969973
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034727 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A034727 (A000027 (n + 1)).toNat : ℚ) / ((((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum : ℕ) : ℚ)

end

end A034726.P10286221299165969973

/-! ## A034726.P2837229754363422782

`A034727(n+1)/A028310(∑{digits}[A034727(n+1), #])`
-/

namespace A034726.P2837229754363422782
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034727 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A034727 (n + 1) : ℚ) / (A028310 ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum : ℚ)

end

end A034726.P2837229754363422782

/-!
# A034727: a(n) = that n-digit number m which gives minimal integral value of m/(sum of digits of m); in case of a tie pick the smallest.

The programs for A034727, there is no canonical definition to state claims against.
-/

/-! ## A034727.P3629403787700930358

`A034726(n+1)*A034728(n+1)`
-/

namespace A034727.P3629403787700930358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034726 (n + 1) * A034728 (n + 1)

end

end A034727.P3629403787700930358

/-!
# A034728: Sum of digits of A034727(n).

The programs for A034728, there is no canonical definition to state claims against.
-/

/-! ## A034728.P13234115616663583830

`∑{digits}[A034727(n+1), #]`
-/

namespace A034728.P13234115616663583830
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034727 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum

end

end A034728.P13234115616663583830

/-! ## A034728.P13680743906514819708

`A034727(n+1)/A034726(n+1)`
-/

namespace A034728.P13680743906514819708
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A034727 (n + 1) : ℚ) / (A034726 (n + 1) : ℚ)

end

end A034728.P13680743906514819708

/-!
# A034729: a(n) = Sum_{ k, k|n } 2^(k-1).

The programs for A034729, the canonical program `A034729.P14831145742905992677` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A034729 has offset 1).

The definition of A034729 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A055895, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A034729.P14831145742905992677

`1/2*A055895(n+1)`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A034729

/-- `1/2*A055895(n+1)` -/
def P14831145742905992677.Spec : Prop :=
  ∀ n, P14831145742905992677.a n = (A034729 (n + 1) : ℚ)

end A034729

/-! ## A034729.P452641225771588276

`∑{d}[n+1, 2^(#-1)]`
-/

namespace A034729.P452641225771588276
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (2 : ℚ) ^ ((d : ℤ) - 1 : ℤ)

end

end A034729.P452641225771588276

namespace A034729

/-- `∑{d}[n+1, 2^(#-1)]` -/
def P452641225771588276.Spec : Prop :=
  ∀ n, P452641225771588276.a n = (A034729 (n + 1) : ℚ)

end A034729

/-! ## A034729.P5933428879946685937

`record[∑{d}[n-1, 2^(#-1)]]`
-/

namespace A034729.P5933428879946685937
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n).natAbs, (2 : ℚ) ^ ((d : ℤ) - 1 : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A034729.P5933428879946685937

namespace A034729

/-- `record[∑{d}[n-1, 2^(#-1)]]` -/
def P5933428879946685937.Spec : Prop :=
  ∀ n, P5933428879946685937.a n = (A034729 (n + 1) : ℚ)

end A034729

/-! ## A034729.P12676844058642099896

`A247146(n+1)+2^n`
-/

namespace A034729.P12676844058642099896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247146 (n + 1) + (2 ^ n : ℤ)

end

end A034729.P12676844058642099896

namespace A034729

/-- `A247146(n+1)+2^n` -/
def P12676844058642099896.Spec : Prop :=
  ∀ n, P12676844058642099896.a n = A034729 (n + 1)

end A034729

/-! ## A034729.P4778487794034686008

`or(1, ∑{d}[n+1, A000079(n%#)])`
-/

namespace A034729.P4778487794034686008
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (∑ d ∈ Nat.divisors (f1 n), A000079 (n % d))

end

end A034729.P4778487794034686008

namespace A034729

/-- `or(1, ∑{d}[n+1, A000079(n%#)])` -/
def P4778487794034686008.Spec : Prop :=
  ∀ n, P4778487794034686008.a n = A034729 (n + 1)

end A034729

/-! ## A034729.P5221127809525068289

`A328337(n+1)+A083318(n)`
-/

namespace A034729.P5221127809525068289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328337 (n + 1) + A083318 n

end

end A034729.P5221127809525068289

namespace A034729

/-- `A328337(n+1)+A083318(n)` -/
def P5221127809525068289.Spec : Prop :=
  ∀ n, P5221127809525068289.a n = A034729 (n + 1)

end A034729

/-! ## A034729.P2733771697848806874

`xor(A000079(n), A247146(n+1))`
-/

namespace A034729.P2733771697848806874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A000079 n) (A247146 (n + 1))

end

end A034729.P2733771697848806874

namespace A034729

/-- `xor(A000079(n), A247146(n+1))` -/
def P2733771697848806874.Spec : Prop :=
  ∀ n, P2733771697848806874.a n = A034729 (n + 1)

end A034729

/-! ## A034729.P7019579743639493108

`A130711(n+1)+A108046(n+1)`
-/

namespace A034729.P7019579743639493108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130711 (n + 1) + A108046 (n + 1)

end

end A034729.P7019579743639493108

namespace A034729

/-- `A130711(n+1)+A108046(n+1)` -/
def P7019579743639493108.Spec : Prop :=
  ∀ n, P7019579743639493108.a n = A034729 (n + 1)

end A034729

/-! ## A034729.P4451002711131084066

`A000740(n+1)+A247146(n+1)+A178472(n+1)`
-/

namespace A034729.P4451002711131084066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000740 (n + 1) + (A247146 (n + 1) + A178472 (n + 1))

end

end A034729.P4451002711131084066

namespace A034729

/-- `A000740(n+1)+A247146(n+1)+A178472(n+1)` -/
def P4451002711131084066.Spec : Prop :=
  ∀ n, P4451002711131084066.a n = A034729 (n + 1)

end A034729

/-! ## A034729.P6846326890442184688

`∑{d}[n+1, 2^#]/2`
-/

namespace A034729.P6846326890442184688
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ d ∈ Nat.divisors (f1 n), 2 ^ d : ℕ) : ℚ) / 2

end

end A034729.P6846326890442184688

namespace A034729

/-- `∑{d}[n+1, 2^#]/2` -/
def P6846326890442184688.Spec : Prop :=
  ∀ n, P6846326890442184688.a n = (A034729 (n + 1) : ℚ)

end A034729

/-! ## A034729.P7017551567300902524

`A055895(n+1)/2`
-/

namespace A034729.P7017551567300902524
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A055895 (n + 1) : ℚ) / 2

end

end A034729.P7017551567300902524

namespace A034729

/-- `A055895(n+1)/2` -/
def P7017551567300902524.Spec : Prop :=
  ∀ n, P7017551567300902524.a n = (A034729 (n + 1) : ℚ)

end A034729

/-! ## A034729.P1682062138854526168

`A245392(n+1)-A054432(n+1)`
-/

namespace A034729.P1682062138854526168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245392 (n + 1) - A054432 (n + 1)

end

end A034729.P1682062138854526168

namespace A034729

/-- `A245392(n+1)-A054432(n+1)` -/
def P1682062138854526168.Spec : Prop :=
  ∀ n, P1682062138854526168.a n = A034729 (n + 1)

end A034729

/-!
# A034730: Dirichlet convolution of b_n=1 with c_n=3^(n-1).

The programs for A034730, the canonical program `A034730.P89336423345869223` is in `Seq.B000.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A034730 has offset 1).

The definition of A034730 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A034730.P89336423345869223

`∑{d}[n+1, 3^(#-1)]`

The canonical program, it is in `Seq.B000.C006`.
-/

namespace A034730

/-- `∑{d}[n+1, 3^(#-1)]` -/
def P89336423345869223.Spec : Prop :=
  ∀ n, P89336423345869223.a n = (A034730 (n + 1) : ℚ)

end A034730

/-! ## A034730.P18182786946890580517

`record[∑{d}[n-1, 3^(#-1)]]`
-/

namespace A034730.P18182786946890580517
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n).natAbs, (3 : ℚ) ^ ((d : ℤ) - 1 : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A034730.P18182786946890580517

namespace A034730

/-- `record[∑{d}[n-1, 3^(#-1)]]` -/
def P18182786946890580517.Spec : Prop :=
  ∀ n, P18182786946890580517.a n = (A034730 (n + 1) : ℚ)

end A034730

/-! ## A034730.P3879363400060436239

`∑{d}[n+1, 3^#]/3`
-/

namespace A034730.P3879363400060436239
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ d ∈ Nat.divisors (f1 n), 3 ^ d : ℕ) : ℚ) / 3

end

end A034730.P3879363400060436239

namespace A034730

/-- `∑{d}[n+1, 3^#]/3` -/
def P3879363400060436239.Spec : Prop :=
  ∀ n, P3879363400060436239.a n = (A034730 (n + 1) : ℚ)

end A034730

/-! ## A034730.P14834351146561129166

`Δ[∑[∑{d}[n, 3^#]]/3]`
-/

namespace A034730.P14834351146561129166
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f3 n), 3 ^ d

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℚ) / 3

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A034730.P14834351146561129166

namespace A034730

/-- `Δ[∑[∑{d}[n, 3^#]]/3]` -/
def P14834351146561129166.Spec : Prop :=
  ∀ n, P14834351146561129166.a n = (A034730 (n + 1) : ℚ)

end A034730

/-! ## A034730.P9696330452200953898

`A363913(n+1)/3`
-/

namespace A034730.P9696330452200953898
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A363913 (n + 1) : ℚ) / 3

end

end A034730.P9696330452200953898

namespace A034730

/-- `A363913(n+1)/3` -/
def P9696330452200953898.Spec : Prop :=
  ∀ n, P9696330452200953898.a n = (A034730 (n + 1) : ℚ)

end A034730

/-! ## A034730.P5552100106701233049

`A308813(A056000(n)+7)`
-/

namespace A034730.P5552100106701233049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308813 (A056000 n + 7).toNat

end

end A034730.P5552100106701233049

namespace A034730

/-- `A308813(A056000(n)+7)` -/
def P5552100106701233049.Spec : Prop :=
  ∀ n, P5552100106701233049.a n = A034730 (n + 1)

end A034730

/-! ## A034730.P17786984402464965878

`A308813(A046691(n+2)+1)`
-/

namespace A034730.P17786984402464965878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308813 (A046691 (n + 2) + 1).toNat

end

end A034730.P17786984402464965878

namespace A034730

/-- `A308813(A046691(n+2)+1)` -/
def P17786984402464965878.Spec : Prop :=
  ∀ n, P17786984402464965878.a n = A034730 (n + 1)

end A034730

/-! ## A034730.P9892654735851451627

`A308813(A052905(n+1)+2)`
-/

namespace A034730.P9892654735851451627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308813 (A052905 (n + 1) + 2).toNat

end

end A034730.P9892654735851451627

namespace A034730

/-- `A308813(A052905(n+1)+2)` -/
def P9892654735851451627.Spec : Prop :=
  ∀ n, P9892654735851451627.a n = A034730 (n + 1)

end A034730

/-!
# A034731: Dirichlet convolution of b_n=1 with Catalan numbers.

The programs for A034731, the canonical program `A034731.P7299098543500313061` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A034731 has offset 1).

The definition of A034731 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 173 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A034731.P8984289404446165602

`∑{d}[n+1, A120588(#)]`
-/

namespace A034731.P8984289404446165602
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A120588 d

end

end A034731.P8984289404446165602

namespace A034731

/-- `∑{d}[n+1, A120588(#)]` -/
def P8984289404446165602.Spec : Prop :=
  ∀ n, P8984289404446165602.a n = A034731 (n + 1)

end A034731

/-! ## A034731.P7575676203344893636

`∑{d}[n+1, abs(A115140(#))]`
-/

namespace A034731.P7575676203344893636
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), |A115140 d|

end

end A034731.P7575676203344893636

namespace A034731

/-- `∑{d}[n+1, abs(A115140(#))]` -/
def P7575676203344893636.Spec : Prop :=
  ∀ n, P7575676203344893636.a n = A034731 (n + 1)

end A034731

/-! ## A034731.P7299098543500313061

`∑{d}[n+1, A000108(#-1)]`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A034731

/-- `∑{d}[n+1, A000108(#-1)]` -/
def P7299098543500313061.Spec : Prop :=
  ∀ n, P7299098543500313061.a n = A034731 (n + 1)

theorem P7299098543500313061.correct : P7299098543500313061.Spec := by
  intro n
  simp only [A034731, Nat.add_sub_cancel]

end A034731

/-! ## A034731.P4817337802407258722

`∑{d}[n+1, A097331(#-1+#)]`
-/

namespace A034731.P4817337802407258722
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A097331 ((d : ℤ) - 1 + (d : ℤ)).toNat

end

end A034731.P4817337802407258722

namespace A034731

/-- `∑{d}[n+1, A097331(#-1+#)]` -/
def P4817337802407258722.Spec : Prop :=
  ∀ n, P4817337802407258722.a n = A034731 (n + 1)

end A034731

/-! ## A034731.P17322488717443628089

`∑{d}[n+1, A000005(#)*A034742((n+1)/#)]`
-/

namespace A034731.P17322488717443628089
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000005 d * A034742 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A034731.P17322488717443628089

namespace A034731

/-- `∑{d}[n+1, A000005(#)*A034742((n+1)/#)]` -/
def P17322488717443628089.Spec : Prop :=
  ∀ n, P17322488717443628089.a n = A034731 (n + 1)

end A034731

/-! ## A034731.P5928739125798003570

`∑{d}[n+1, A008683(#)*A034774((n+1)/#)]`
-/

namespace A034731.P5928739125798003570
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008683 d * A034774 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A034731.P5928739125798003570

namespace A034731

/-- `∑{d}[n+1, A008683(#)*A034774((n+1)/#)]` -/
def P5928739125798003570.Spec : Prop :=
  ∀ n, P5928739125798003570.a n = A034731 (n + 1)

end A034731

/-! ## A034731.P5090666198939120889

`∑{d}[n+1, A034764(#)*A055615((n+1)/#)]`
-/

namespace A034731.P5090666198939120889
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A034764 d * A055615 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A034731.P5090666198939120889

namespace A034731

/-- `∑{d}[n+1, A034764(#)*A055615((n+1)/#)]` -/
def P5090666198939120889.Spec : Prop :=
  ∀ n, P5090666198939120889.a n = A034731 (n + 1)

end A034731

/-! ## A034731.P13220784801914852884

`∑{d}[n+1, A034766(#)*A130054((n+1)/#)]`
-/

namespace A034731.P13220784801914852884
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A034766 d * A130054 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A034731.P13220784801914852884

namespace A034731

/-- `∑{d}[n+1, A034766(#)*A130054((n+1)/#)]` -/
def P13220784801914852884.Spec : Prop :=
  ∀ n, P13220784801914852884.a n = A034731 (n + 1)

end A034731

/-! ## A034731.P5302213276113126032

`∑{d}[n+1, A034729(#)*A349563((n+1)/#)]`
-/

namespace A034731.P5302213276113126032
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A034729 d * A349563 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A034731.P5302213276113126032

namespace A034731

/-- `∑{d}[n+1, A034729(#)*A349563((n+1)/#)]` -/
def P5302213276113126032.Spec : Prop :=
  ∀ n, P5302213276113126032.a n = A034731 (n + 1)

end A034731

/-! ## A034731.P7775838436032026279

`∑{d}[n+1, A000912(#-1)*A001511((n+1)/#)]`
-/

namespace A034731.P7775838436032026279
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000912 (d - 1) * A001511 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A034731.P7775838436032026279

namespace A034731

/-- `∑{d}[n+1, A000912(#-1)*A001511((n+1)/#)]` -/
def P7775838436032026279.Spec : Prop :=
  ∀ n, P7775838436032026279.a n = A034731 (n + 1)

end A034731

/-!
# A034732: Dirichlet convolution of b_n=1 with Bell numbers.

The programs for A034732, there is no canonical definition to state claims against.
-/

/-! ## A034732.P9988511249369513318

`∑{d}[n+1, A000110(#-1)]`
-/

namespace A034732.P9988511249369513318
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000110 (d - 1)

end

end A034732.P9988511249369513318

/-! ## A034732.P492934459017395373

`∑{d}[n+1, A011971(A161680(#))]`
-/

namespace A034732.P492934459017395373
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A011971 (A161680 d).toNat

end

end A034732.P492934459017395373

/-! ## A034732.P8455730857992366435

`∑{d}[n+1, A011971(A179865(#))]`
-/

namespace A034732.P8455730857992366435
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A011971 (A179865 d).toNat

end

end A034732.P8455730857992366435

/-! ## A034732.P8360065597726211337

`∑{d}[n+1, A000005(#)*A034743((n+1)/#)]`
-/

namespace A034732.P8360065597726211337
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000005 d * A034743 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A034732.P8360065597726211337

/-! ## A034732.P3596668388063765288

`∑{d}[n+1, A008683(#)*A034775((n+1)/#)]`
-/

namespace A034732.P3596668388063765288
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008683 d * A034775 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A034732.P3596668388063765288

/-! ## A034732.P18107783090179055482

`∑{d}[n+1, A034765(#)*A055615((n+1)/#)]`
-/

namespace A034732.P18107783090179055482
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A034765 d * A055615 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A034732.P18107783090179055482

/-! ## A034732.P14032730579750241414

`∑{d}[n+1, A034767(#)*A130054((n+1)/#)]`
-/

namespace A034732.P14032730579750241414
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A034767 d * A130054 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A034732.P14032730579750241414

/-! ## A034732.P8943271730011499381

`∑{d}[n+1, A034743(#)*A179941((n+1)/#)]`
-/

namespace A034732.P8943271730011499381
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A034743 d * A179941 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A034732.P8943271730011499381

/-! ## A034732.P15675164967286742269

`∑{d}[n+1, A095149(A000124(#))]`
-/

namespace A034732.P15675164967286742269
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A095149 (A000124 d).toNat

end

end A034732.P15675164967286742269

/-!
# A034733: Dirichlet convolution of b_n=2^(n-1) with itself.

The programs for A034733, the canonical program `A034733.P3061551494499971223` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A034733 has offset 1).

The definition of A034733 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 332 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A034733.P3061551494499971223

`∑{d}[n+1, A034008((n+1)/#+#)]`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A034733

/-- `∑{d}[n+1, A034008((n+1)/#+#)]` -/
def P3061551494499971223.Spec : Prop :=
  ∀ n, P3061551494499971223.a n = A034733 (n + 1)

theorem P3061551494499971223.correct : P3061551494499971223.Spec := by
  intro n
  simp only [A034733, Nat.add_sub_cancel]

end A034733

/-! ## A034733.P11465124126683095142

`∑{d}[n+1, A166444((n+1)/#+#)]`
-/

namespace A034733.P11465124126683095142
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A166444 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ) + (d : ℚ))).toNat

end

end A034733.P11465124126683095142

namespace A034733

/-- `∑{d}[n+1, A166444((n+1)/#+#)]` -/
def P11465124126683095142.Spec : Prop :=
  ∀ n, P11465124126683095142.a n = A034733 (n + 1)

end A034733

/-! ## A034733.P18270274198834905662

`∑{d}[n+1, A011782((n+1)/#)*A011782(#)]`
-/

namespace A034733.P18270274198834905662
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A011782 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat * A011782 d

end

end A034733.P18270274198834905662

namespace A034733

/-- `∑{d}[n+1, A011782((n+1)/#)*A011782(#)]` -/
def P18270274198834905662.Spec : Prop :=
  ∀ n, P18270274198834905662.a n = A034733 (n + 1)

end A034733

/-! ## A034733.P5357727088051816018

`∑{d}[n+1, A000740(#)*A034729((n+1)/#)]`
-/

namespace A034733.P5357727088051816018
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000740 d * A034729 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A034733.P5357727088051816018

namespace A034733

/-- `∑{d}[n+1, A000740(#)*A034729((n+1)/#)]` -/
def P5357727088051816018.Spec : Prop :=
  ∀ n, P5357727088051816018.a n = A034733 (n + 1)

end A034733

/-! ## A034733.P16917126907168612856

`∑{d}[n+1, A034771(#)*A296302((n+1)/#)]`
-/

namespace A034733.P16917126907168612856
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A034771 d * A296302 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A034733.P16917126907168612856

namespace A034733

/-- `∑{d}[n+1, A034771(#)*A296302((n+1)/#)]` -/
def P16917126907168612856.Spec : Prop :=
  ∀ n, P16917126907168612856.a n = A034733 (n + 1)

end A034733

/-! ## A034733.P14214549094635814880

`∑{d}[n+1, A034734(#)*A349566((n+1)/#)]`
-/

namespace A034733.P14214549094635814880
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A034734 d * A349566 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A034733.P14214549094635814880

namespace A034733

/-- `∑{d}[n+1, A034734(#)*A349566((n+1)/#)]` -/
def P14214549094635814880.Spec : Prop :=
  ∀ n, P14214549094635814880.a n = A034733 (n + 1)

end A034733

/-! ## A034733.P11948183779032669891

`∑{d}[n+1, A000079(#-1)*A000079((n+1)/#-1)]`
-/

namespace A034733.P11948183779032669891
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000079 (d - 1) * A000079 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ) - 1)).toNat

end

end A034733.P11948183779032669891

namespace A034733

/-- `∑{d}[n+1, A000079(#-1)*A000079((n+1)/#-1)]` -/
def P11948183779032669891.Spec : Prop :=
  ∀ n, P11948183779032669891.a n = A034733 (n + 1)

end A034733

/-! ## A034733.P15079581149071180018

`∑{d}[n+1, 2^((n+1)/#+#)]/4`
-/

namespace A034733.P15079581149071180018
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (∑ d ∈ Nat.divisors (f1 n), (2 : ℝ) ^ ((n + 1 : ℚ) / (d : ℚ) + (d : ℚ) : ℝ)) / 4

end

end A034733.P15079581149071180018

namespace A034733

/-- `∑{d}[n+1, 2^((n+1)/#+#)]/4` -/
def P15079581149071180018.Spec : Prop :=
  ∀ n, P15079581149071180018.a n = (A034733 (n + 1) : ℝ)

end A034733

/-! ## A034733.P15145429651719697365

`A034713(n+1)/4`
-/

namespace A034733.P15145429651719697365
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A034713 (n + 1) : ℚ) / 4

end

end A034733.P15145429651719697365

namespace A034733

/-- `A034713(n+1)/4` -/
def P15145429651719697365.Spec : Prop :=
  ∀ n, P15145429651719697365.a n = (A034733 (n + 1) : ℚ)

theorem P15145429651719697365.correct : P15145429651719697365.Spec := by
  intro n
  simp only [A034733, Nat.add_sub_cancel, A034733.P15145429651719697365.a, A034733.P3061551494499971223.f1, A034733.P3061551494499971223.a, A034008, A034008.P7593150546580332811.a, A034713, A034713.P16177796597939523709.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A034733

/-! ## A034733.P16218626879241216825

`∑{d}[n+1, A034735(#)*A349568((n+1)/#)]`
-/

namespace A034733.P16218626879241216825
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A034735 d * A349568 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A034733.P16218626879241216825

namespace A034733

/-- `∑{d}[n+1, A034735(#)*A349568((n+1)/#)]` -/
def P16218626879241216825.Spec : Prop :=
  ∀ n, P16218626879241216825.a n = A034733 (n + 1)

end A034733

/-! ## A034733.P5079699470824373816

`∑{d}[n+1, A034739(#)*A349564((n+1)/#)]`
-/

namespace A034733.P5079699470824373816
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A034739 d * A349564 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A034733.P5079699470824373816

namespace A034733

/-- `∑{d}[n+1, A034739(#)*A349564((n+1)/#)]` -/
def P5079699470824373816.Spec : Prop :=
  ∀ n, P5079699470824373816.a n = A034733 (n + 1)

end A034733

/-!
# A034734: Dirichlet convolution of b_n=2^(n-1) with Fibonacci numbers.

The programs for A034734, the canonical program `A034734.P15721239827703422834` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A034734 has offset 1).

The definition of A034734 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 333 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A034734.P15721239827703422834

`∑{d}[n+1, A000740(#)*A007435((n+1)/#)]`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A034734

/-- `∑{d}[n+1, A000740(#)*A007435((n+1)/#)]` -/
def P15721239827703422834.Spec : Prop :=
  ∀ n, P15721239827703422834.a n = A034734 (n + 1)

theorem P15721239827703422834.correct : P15721239827703422834.Spec := by
  intro n
  simp only [A034734, Nat.add_sub_cancel]

end A034734

/-! ## A034734.P14705867530767932552

`∑{d}[n+1, A007436(#)*A034729((n+1)/#)]`
-/

namespace A034734.P14705867530767932552
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A007436 d * A034729 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A034734.P14705867530767932552

namespace A034734

/-- `∑{d}[n+1, A007436(#)*A034729((n+1)/#)]` -/
def P14705867530767932552.Spec : Prop :=
  ∀ n, P14705867530767932552.a n = A034734 (n + 1)

end A034734

/-! ## A034734.P2275543038498535564

`∑{d}[n+1, A034772(#)*A296302((n+1)/#)]`
-/

namespace A034734.P2275543038498535564
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A034772 d * A296302 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A034734.P2275543038498535564

namespace A034734

/-- `∑{d}[n+1, A034772(#)*A296302((n+1)/#)]` -/
def P2275543038498535564.Spec : Prop :=
  ∀ n, P2275543038498535564.a n = A034734 (n + 1)

end A034734

/-! ## A034734.P14523774155866701628

`∑{d}[n+1, A034744(#)*A349566((n+1)/#)]`
-/

namespace A034734.P14523774155866701628
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A034744 d * A349566 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A034734.P14523774155866701628

namespace A034734

/-- `∑{d}[n+1, A034744(#)*A349566((n+1)/#)]` -/
def P14523774155866701628.Spec : Prop :=
  ∀ n, P14523774155866701628.a n = A034734 (n + 1)

end A034734

/-! ## A034734.P10528973503303592514

`∑{d}[n+1, A066769(#)*A349570((n+1)/#)]`
-/

namespace A034734.P10528973503303592514
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A066769 d * A349570 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A034734.P10528973503303592514

namespace A034734

/-- `∑{d}[n+1, A066769(#)*A349570((n+1)/#)]` -/
def P10528973503303592514.Spec : Prop :=
  ∀ n, P10528973503303592514.a n = A034734 (n + 1)

end A034734

/-! ## A034734.P11315124007084889091

`∑{d}[n+1, A034733(#)*A349565((n+1)/#)]`
-/

namespace A034734.P11315124007084889091
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A034733 d * A349565 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A034734.P11315124007084889091

namespace A034734

/-- `∑{d}[n+1, A034733(#)*A349565((n+1)/#)]` -/
def P11315124007084889091.Spec : Prop :=
  ∀ n, P11315124007084889091.a n = A034734 (n + 1)

end A034734

/-! ## A034734.P18271161596243556595

`∑{d}[n+1, A034745(#)*A349568((n+1)/#)]`
-/

namespace A034734.P18271161596243556595
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A034745 d * A349568 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A034734.P18271161596243556595

namespace A034734

/-- `∑{d}[n+1, A034745(#)*A349568((n+1)/#)]` -/
def P18271161596243556595.Spec : Prop :=
  ∀ n, P18271161596243556595.a n = A034734 (n + 1)

end A034734

/-! ## A034734.P14298741636003963411

`∑{d}[n+1, A034749(#)*A349564((n+1)/#)]`
-/

namespace A034734.P14298741636003963411
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A034749 d * A349564 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A034734.P14298741636003963411

namespace A034734

/-- `∑{d}[n+1, A034749(#)*A349564((n+1)/#)]` -/
def P14298741636003963411.Spec : Prop :=
  ∀ n, P14298741636003963411.a n = A034734 (n + 1)

end A034734

/-!
# A034735: Dirichlet convolution of b_n=2^(n-1) with c_n=3^(n-1).

The programs for A034735, the canonical program `A034735.P10548595079160747412` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A034735 has offset 1).

The definition of A034735 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 210 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A034735.P18133785987918299957

`∑{d}[n+1, A000740(#)*A034730((n+1)/#)]`
-/

namespace A034735.P18133785987918299957
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000740 d * A034730 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A034735.P18133785987918299957

namespace A034735

/-- `∑{d}[n+1, A000740(#)*A034730((n+1)/#)]` -/
def P18133785987918299957.Spec : Prop :=
  ∀ n, P18133785987918299957.a n = A034735 (n + 1)

end A034735

/-! ## A034735.P10056383334451176488

`∑{d}[n+1, A034729(#)*A034741((n+1)/#)]`
-/

namespace A034735.P10056383334451176488
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A034729 d * A034741 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A034735.P10056383334451176488

namespace A034735

/-- `∑{d}[n+1, A034729(#)*A034741((n+1)/#)]` -/
def P10056383334451176488.Spec : Prop :=
  ∀ n, P10056383334451176488.a n = A034735 (n + 1)

end A034735

/-! ## A034735.P8739264015114215738

`∑{d}[n+1, A034733(#)*A349567((n+1)/#)]`
-/

namespace A034735.P8739264015114215738
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A034733 d * A349567 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A034735.P8739264015114215738

namespace A034735

/-- `∑{d}[n+1, A034733(#)*A349567((n+1)/#)]` -/
def P8739264015114215738.Spec : Prop :=
  ∀ n, P8739264015114215738.a n = A034735 (n + 1)

end A034735

/-! ## A034735.P12293493259498043602

`∑{d}[n+1, A034745(#)*A349566((n+1)/#)]`
-/

namespace A034735.P12293493259498043602
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A034745 d * A349566 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A034735.P12293493259498043602

namespace A034735

/-- `∑{d}[n+1, A034745(#)*A349566((n+1)/#)]` -/
def P12293493259498043602.Spec : Prop :=
  ∀ n, P12293493259498043602.a n = A034735 (n + 1)

end A034735

/-! ## A034735.P15894204042395569534

`∑{d}[n+1, A349570(#)*A359189((n+1)/#)]`
-/

namespace A034735.P15894204042395569534
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A349570 d * A359189 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A034735.P15894204042395569534

namespace A034735

/-- `∑{d}[n+1, A349570(#)*A359189((n+1)/#)]` -/
def P15894204042395569534.Spec : Prop :=
  ∀ n, P15894204042395569534.a n = A034735 (n + 1)

end A034735

/-! ## A034735.P10548595079160747412

`∑{d}[n+1, A000079(#-1)*A000244((n+1)/#-1)]`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A034735

/-- `∑{d}[n+1, A000079(#-1)*A000244((n+1)/#-1)]` -/
def P10548595079160747412.Spec : Prop :=
  ∀ n, P10548595079160747412.a n = A034735 (n + 1)

theorem P10548595079160747412.correct : P10548595079160747412.Spec := by
  intro n
  simp only [A034735, Nat.add_sub_cancel]

end A034735

/-! ## A034735.P15177118467337135531

`∑{d}[n+1, A034751(#)*A349568((n+1)/#)]`
-/

namespace A034735.P15177118467337135531
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A034751 d * A349568 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A034735.P15177118467337135531

namespace A034735

/-- `∑{d}[n+1, A034751(#)*A349568((n+1)/#)]` -/
def P15177118467337135531.Spec : Prop :=
  ∀ n, P15177118467337135531.a n = A034735 (n + 1)

end A034735

/-! ## A034735.P7635444397819341830

`A038039(n+1)/6`
-/

namespace A034735.P7635444397819341830
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038039 (n + 1) : ℚ) / 6

end

end A034735.P7635444397819341830

namespace A034735

/-- `A038039(n+1)/6` -/
def P7635444397819341830.Spec : Prop :=
  ∀ n, P7635444397819341830.a n = (A034735 (n + 1) : ℚ)

theorem P7635444397819341830.correct : P7635444397819341830.Spec := by
  intro n
  simp only [A034735, Nat.add_sub_cancel, A034735.P7635444397819341830.a, A034735.P10548595079160747412.f1, A034735.P10548595079160747412.a, A000079, A000079.P10855139691139572931.a, A000244, A000244.P17162167222172810417.a, A038039, A038039.P16577234562836912527.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A034735

/-! ## A034735.P3963159764729448528

`∑{d}[n+1, A034755(#)*A349564((n+1)/#)]`
-/

namespace A034735.P3963159764729448528
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A034755 d * A349564 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A034735.P3963159764729448528

namespace A034735

/-- `∑{d}[n+1, A034755(#)*A349564((n+1)/#)]` -/
def P3963159764729448528.Spec : Prop :=
  ∀ n, P3963159764729448528.a n = A034735 (n + 1)

end A034735

/-!
# A034736: Dirichlet convolution of b_n=2^(n-1) with Primes (with 1).

The programs for A034736, the canonical program `A034736.P10113879758376514175` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A034736 has offset 1).

The definition of A034736 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 333 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A034736.P10113879758376514175

`∑{d}[n+1, A000740(#)*A030014((n+1)/#)]`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A034736

/-- `∑{d}[n+1, A000740(#)*A030014((n+1)/#)]` -/
def P10113879758376514175.Spec : Prop :=
  ∀ n, P10113879758376514175.a n = A034736 (n + 1)

theorem P10113879758376514175.correct : P10113879758376514175.Spec := by
  intro n
  simp only [A034736, Nat.add_sub_cancel]

end A034736

/-! ## A034736.P16382539875346381530

`∑{d}[n+1, A030013(#)*A034729((n+1)/#)]`
-/

namespace A034736.P16382539875346381530
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A030013 d * A034729 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A034736.P16382539875346381530

namespace A034736

/-- `∑{d}[n+1, A030013(#)*A034729((n+1)/#)]` -/
def P16382539875346381530.Spec : Prop :=
  ∀ n, P16382539875346381530.a n = A034736 (n + 1)

end A034736

/-! ## A034736.P13142838618250843995

`∑{d}[n+1, A034773(#)*A296302((n+1)/#)]`
-/

namespace A034736.P13142838618250843995
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A034773 d * A296302 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A034736.P13142838618250843995

namespace A034736

/-- `∑{d}[n+1, A034773(#)*A296302((n+1)/#)]` -/
def P13142838618250843995.Spec : Prop :=
  ∀ n, P13142838618250843995.a n = A034736 (n + 1)

end A034736

/-! ## A034736.P10274240044961334947

`∑{d}[n+1, A034746(#)*A349566((n+1)/#)]`
-/

namespace A034736.P10274240044961334947
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A034746 d * A349566 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A034736.P10274240044961334947

namespace A034736

/-- `∑{d}[n+1, A034746(#)*A349566((n+1)/#)]` -/
def P10274240044961334947.Spec : Prop :=
  ∀ n, P10274240044961334947.a n = A034736 (n + 1)

end A034736

/-! ## A034736.P13440909669536022741

`∑{d}[n+1, A000079(#-1)*A008578((n+1)/#)]`
-/

namespace A034736.P13440909669536022741
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000079 (d - 1) * A008578 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A034736.P13440909669536022741

namespace A034736

/-- `∑{d}[n+1, A000079(#-1)*A008578((n+1)/#)]` -/
def P13440909669536022741.Spec : Prop :=
  ∀ n, P13440909669536022741.a n = A034736 (n + 1)

end A034736

/-! ## A034736.P13776097392727926730

`∑{d}[n+1, A034752(#)*A349568((n+1)/#)]`
-/

namespace A034736.P13776097392727926730
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A034752 d * A349568 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A034736.P13776097392727926730

namespace A034736

/-- `∑{d}[n+1, A034752(#)*A349568((n+1)/#)]` -/
def P13776097392727926730.Spec : Prop :=
  ∀ n, P13776097392727926730.a n = A034736 (n + 1)

end A034736

/-! ## A034736.P12934158678471084220

`∑{d}[n+1, A034763(#)*A349564((n+1)/#)]`
-/

namespace A034736.P12934158678471084220
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A034763 d * A349564 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A034736.P12934158678471084220

namespace A034736

/-- `∑{d}[n+1, A034763(#)*A349564((n+1)/#)]` -/
def P12934158678471084220.Spec : Prop :=
  ∀ n, P12934158678471084220.a n = A034736 (n + 1)

end A034736

/-!
# A034737: Dirichlet convolution of b_n=2^(n-1) with sigma(n).

The programs for A034737, the canonical program `A034737.P1233646584205894789` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A034737 has offset 1).

The definition of A034737 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 333 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A034737.P1996609397753384372

`∑{d}[n+1, A054599(#)]`
-/

namespace A034737.P1996609397753384372
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A054599 d

end

end A034737.P1996609397753384372

namespace A034737

/-- `∑{d}[n+1, A054599(#)]` -/
def P1996609397753384372.Spec : Prop :=
  ∀ n, P1996609397753384372.a n = A034737 (n + 1)

end A034737

/-! ## A034737.P1233646584205894789

`∑{d}[n+1, #*A034729((n+1)/#)]`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A034737

/-- `∑{d}[n+1, #*A034729((n+1)/#)]` -/
def P1233646584205894789.Spec : Prop :=
  ∀ n, P1233646584205894789.a n = A034737 (n + 1)

theorem P1233646584205894789.correct : P1233646584205894789.Spec := by
  intro n
  simp only [A034737, Nat.add_sub_cancel]

end A034737

/-! ## A034737.P12476910853751099949

`∑{d}[n+1, A000740(#)*A007429((n+1)/#)]`
-/

namespace A034737.P12476910853751099949
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000740 d * A007429 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A034737.P12476910853751099949

namespace A034737

/-- `∑{d}[n+1, A000740(#)*A007429((n+1)/#)]` -/
def P12476910853751099949.Spec : Prop :=
  ∀ n, P12476910853751099949.a n = A034737 (n + 1)

end A034737

/-! ## A034737.P3780462869123502921

`∑{d}[n+1, A000005(#)*A034738((n+1)/#)]`
-/

namespace A034737.P3780462869123502921
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000005 d * A034738 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A034737.P3780462869123502921

namespace A034737

/-- `∑{d}[n+1, A000005(#)*A034738((n+1)/#)]` -/
def P3780462869123502921.Spec : Prop :=
  ∀ n, P3780462869123502921.a n = A034737 (n + 1)

end A034737

/-! ## A034737.P12416584572745755867

`∑{d}[n+1, A000010(#)*A034771((n+1)/#)]`
-/

namespace A034737.P12416584572745755867
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000010 d * A034771 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A034737.P12416584572745755867

namespace A034737

/-- `∑{d}[n+1, A000010(#)*A034771((n+1)/#)]` -/
def P12416584572745755867.Spec : Prop :=
  ∀ n, P12416584572745755867.a n = A034737 (n + 1)

end A034737

/-! ## A034737.P7638394076486103331

`∑{d}[n+1, A007430(#)*A296302((n+1)/#)]`
-/

namespace A034737.P7638394076486103331
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A007430 d * A296302 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A034737.P7638394076486103331

namespace A034737

/-- `∑{d}[n+1, A007430(#)*A296302((n+1)/#)]` -/
def P7638394076486103331.Spec : Prop :=
  ∀ n, P7638394076486103331.a n = A034737 (n + 1)

end A034737

/-! ## A034737.P9735371158132768817

`∑{d}[n+1, A001227(#)*A306905((n+1)/#)]`
-/

namespace A034737.P9735371158132768817
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A001227 d * A306905 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A034737.P9735371158132768817

namespace A034737

/-- `∑{d}[n+1, A001227(#)*A306905((n+1)/#)]` -/
def P9735371158132768817.Spec : Prop :=
  ∀ n, P9735371158132768817.a n = A034737 (n + 1)

end A034737

/-! ## A034737.P11728927376632252144

`∑{d}[n+1, A011946(#)*A327096((n+1)/#)]`
-/

namespace A034737.P11728927376632252144
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A011946 d * A327096 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A034737.P11728927376632252144

namespace A034737

/-- `∑{d}[n+1, A011946(#)*A327096((n+1)/#)]` -/
def P11728927376632252144.Spec : Prop :=
  ∀ n, P11728927376632252144.a n = A034737 (n + 1)

end A034737

/-! ## A034737.P10657268411990108178

`∑{d}[n+1, A034747(#)*A349566((n+1)/#)]`
-/

namespace A034737.P10657268411990108178
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A034747 d * A349566 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A034737.P10657268411990108178

namespace A034737

/-- `∑{d}[n+1, A034747(#)*A349566((n+1)/#)]` -/
def P10657268411990108178.Spec : Prop :=
  ∀ n, P10657268411990108178.a n = A034737 (n + 1)

end A034737

/-! ## A034737.P396807645824598309

`∑{d}[n+1, A060640(#)*A349570((n+1)/#)]`
-/

namespace A034737.P396807645824598309
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A060640 d * A349570 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A034737.P396807645824598309

namespace A034737

/-- `∑{d}[n+1, A060640(#)*A349570((n+1)/#)]` -/
def P396807645824598309.Spec : Prop :=
  ∀ n, P396807645824598309.a n = A034737 (n + 1)

end A034737

/-! ## A034737.P15223527569792743114

`∑{d}[n+1, A091512(#)*A373275((n+1)/#)]`
-/

namespace A034737.P15223527569792743114
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A091512 d * A373275 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A034737.P15223527569792743114

namespace A034737

/-- `∑{d}[n+1, A091512(#)*A373275((n+1)/#)]` -/
def P15223527569792743114.Spec : Prop :=
  ∀ n, P15223527569792743114.a n = A034737 (n + 1)

end A034737

/-! ## A034737.P164753853791652200

`∑{d}[n+1, A000079(#-1)*A000203((n+1)/#)]`
-/

namespace A034737.P164753853791652200
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000079 (d - 1) * A000203 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A034737.P164753853791652200

namespace A034737

/-- `∑{d}[n+1, A000079(#-1)*A000203((n+1)/#)]` -/
def P164753853791652200.Spec : Prop :=
  ∀ n, P164753853791652200.a n = A034737 (n + 1)

end A034737

/-! ## A034737.P1832413850239454991

`∑{d}[n+1, A034753(#)*A349568((n+1)/#)]`
-/

namespace A034737.P1832413850239454991
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A034753 d * A349568 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A034737.P1832413850239454991

namespace A034737

/-- `∑{d}[n+1, A034753(#)*A349568((n+1)/#)]` -/
def P1832413850239454991.Spec : Prop :=
  ∀ n, P1832413850239454991.a n = A034737 (n + 1)

end A034737

/-! ## A034737.P1199493135619303072

`∑{d}[n+1, A296075(#)*A317100((n+1)/#)]`
-/

namespace A034737.P1199493135619303072
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A296075 d * A317100 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A034737.P1199493135619303072

namespace A034737

/-- `∑{d}[n+1, A296075(#)*A317100((n+1)/#)]` -/
def P1199493135619303072.Spec : Prop :=
  ∀ n, P1199493135619303072.a n = A034737 (n + 1)

end A034737

/-! ## A034737.P2830685178854389999

`∑{d}[n+1, A034764(#)*A349564((n+1)/#)]`
-/

namespace A034737.P2830685178854389999
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A034764 d * A349564 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A034737.P2830685178854389999

namespace A034737

/-- `∑{d}[n+1, A034764(#)*A349564((n+1)/#)]` -/
def P2830685178854389999.Spec : Prop :=
  ∀ n, P2830685178854389999.a n = A034737 (n + 1)

end A034737

/-!
# A034738: Dirichlet convolution of b_n = 2^(n-1) with phi(n).

The programs for A034738, the canonical program `A034738.P13091520895152506623` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A034738 has offset 1).

The definition of A034738 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A053635, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A034738.P13091520895152506623

`A053635(n+1)/2`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A034738

/-- `A053635(n+1)/2` -/
def P13091520895152506623.Spec : Prop :=
  ∀ n, P13091520895152506623.a n = (A034738 (n + 1) : ℚ)

end A034738

/-! ## A034738.P6479120504520808392

`A393352(n+1)+n`
-/

namespace A034738.P6479120504520808392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A393352 (n + 1) + (n : ℤ)

end

end A034738.P6479120504520808392

namespace A034738

/-- `A393352(n+1)+n` -/
def P6479120504520808392.Spec : Prop :=
  ∀ n, P6479120504520808392.a n = A034738 (n + 1)

end A034738

/-! ## A034738.P11846028437377921800

`(n+1)/2*A000031(n+1)`
-/

namespace A034738.P11846028437377921800
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / 2 * (A000031 (n + 1) : ℚ)

end

end A034738.P11846028437377921800

namespace A034738

/-- `(n+1)/2*A000031(n+1)` -/
def P11846028437377921800.Spec : Prop :=
  ∀ n, P11846028437377921800.a n = (A034738 (n + 1) : ℚ)

end A034738

/-! ## A034738.P11770540450171531884

`(n+1)/4*A161219(n+1)`
-/

namespace A034738.P11770540450171531884
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / 4 * (A161219 (n + 1) : ℚ)

end

end A034738.P11770540450171531884

namespace A034738

/-- `(n+1)/4*A161219(n+1)` -/
def P11770540450171531884.Spec : Prop :=
  ∀ n, P11770540450171531884.a n = (A034738 (n + 1) : ℚ)

end A034738

/-! ## A034738.P17645486143933631718

`(n+1)*(A008965(n+1)+1)/2`
-/

namespace A034738.P17645486143933631718
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) * ((A008965 (n + 1) + 1 : ℚ) / 2)

end

end A034738.P17645486143933631718

namespace A034738

/-- `(n+1)*(A008965(n+1)+1)/2` -/
def P17645486143933631718.Spec : Prop :=
  ∀ n, P17645486143933631718.a n = (A034738 (n + 1) : ℚ)

end A034738

/-! ## A034738.P12073123484907289979

`∑{d}[n+1, #*A000740((n+1)/#)]`
-/

namespace A034738.P12073123484907289979
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * A000740 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A034738.P12073123484907289979

namespace A034738

/-- `∑{d}[n+1, #*A000740((n+1)/#)]` -/
def P12073123484907289979.Spec : Prop :=
  ∀ n, P12073123484907289979.a n = A034738 (n + 1)

end A034738

/-! ## A034738.P10286811658297623229

`∑{d}[n+1, A007427(#)*A034737((n+1)/#)]`
-/

namespace A034738.P10286811658297623229
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A007427 d * A034737 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A034738.P10286811658297623229

namespace A034738

/-- `∑{d}[n+1, A007427(#)*A034737((n+1)/#)]` -/
def P10286811658297623229.Spec : Prop :=
  ∀ n, P10286811658297623229.a n = A034738 (n + 1)

end A034738

/-! ## A034738.P18295077514739199338

`∑{d}[n+1, A007432(#)*A034771((n+1)/#)]`
-/

namespace A034738.P18295077514739199338
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A007432 d * A034771 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A034738.P18295077514739199338

namespace A034738

/-- `∑{d}[n+1, A007432(#)*A034771((n+1)/#)]` -/
def P18295077514739199338.Spec : Prop :=
  ∀ n, P18295077514739199338.a n = A034738 (n + 1)

end A034738

/-! ## A034738.P500725659714286388

`∑{d}[n+1, A000203(#)*A296302((n+1)/#)]`
-/

namespace A034738.P500725659714286388
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000203 d * A296302 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A034738.P500725659714286388

namespace A034738

/-- `∑{d}[n+1, A000203(#)*A296302((n+1)/#)]` -/
def P500725659714286388.Spec : Prop :=
  ∀ n, P500725659714286388.a n = A034738 (n + 1)

end A034738

/-! ## A034738.P64757747690097006

`∑{d}[n+1, A018804(#)*A349570((n+1)/#)]`
-/

namespace A034738.P64757747690097006
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A018804 d * A349570 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A034738.P64757747690097006

namespace A034738

/-- `∑{d}[n+1, A018804(#)*A349570((n+1)/#)]` -/
def P64757747690097006.Spec : Prop :=
  ∀ n, P64757747690097006.a n = A034738 (n + 1)

end A034738

/-! ## A034738.P14662252467929447388

`∑{d}[n+1, A034748(#)*A349566((n+1)/#)]`
-/

namespace A034738.P14662252467929447388
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A034748 d * A349566 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A034738.P14662252467929447388

namespace A034738

/-- `∑{d}[n+1, A034748(#)*A349566((n+1)/#)]` -/
def P14662252467929447388.Spec : Prop :=
  ∀ n, P14662252467929447388.a n = A034738 (n + 1)

end A034738

/-! ## A034738.P14900212929431334360

`∑{d}[n+1, A154955(#)*A306905((n+1)/#)]`
-/

namespace A034738.P14900212929431334360
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A154955 d * A306905 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A034738.P14900212929431334360

namespace A034738

/-- `∑{d}[n+1, A154955(#)*A306905((n+1)/#)]` -/
def P14900212929431334360.Spec : Prop :=
  ∀ n, P14900212929431334360.a n = A034738 (n + 1)

end A034738

/-! ## A034738.P14538118146246965652

`∑{d}[n+1, A000010(#)*A000079((n+1)/#-1)]`
-/

namespace A034738.P14538118146246965652
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000010 d * A000079 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ) - 1)).toNat

end

end A034738.P14538118146246965652

namespace A034738

/-- `∑{d}[n+1, A000010(#)*A000079((n+1)/#-1)]` -/
def P14538118146246965652.Spec : Prop :=
  ∀ n, P14538118146246965652.a n = A034738 (n + 1)

end A034738

/-! ## A034738.P7529885692493818616

`∑{d}[n+1, A127804(#-1)*A326305((n+1)/#)]`
-/

namespace A034738.P7529885692493818616
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A127804 (d - 1) * A326305 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A034738.P7529885692493818616

namespace A034738

/-- `∑{d}[n+1, A127804(#-1)*A326305((n+1)/#)]` -/
def P7529885692493818616.Spec : Prop :=
  ∀ n, P7529885692493818616.a n = A034738 (n + 1)

end A034738

/-! ## A034738.P366613778836140664

`∑[Δ[A053635(n)]/2]`
-/

namespace A034738.P366613778836140664
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053635 n

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) - f2 n : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A034738.P366613778836140664

namespace A034738

/-- `∑[Δ[A053635(n)]/2]` -/
def P366613778836140664.Spec : Prop :=
  ∀ n, P366613778836140664.a n = (A034738 (n + 1) : ℚ)

end A034738

/-! ## A034738.P1587732048499638772

`A102688(n+1)-2^n`
-/

namespace A034738.P1587732048499638772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102688 (n + 1) - (2 ^ n : ℤ)

end

end A034738.P1587732048499638772

namespace A034738

/-- `A102688(n+1)-2^n` -/
def P1587732048499638772.Spec : Prop :=
  ∀ n, P1587732048499638772.a n = A034738 (n + 1)

end A034738

/-! ## A034738.P17804812265414988860

`(A346558(n+1)+n+1)/2`
-/

namespace A034738.P17804812265414988860
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A346558 (n + 1) + (n + 1 : ℤ) : ℚ) / 2

end

end A034738.P17804812265414988860

namespace A034738

/-- `(A346558(n+1)+n+1)/2` -/
def P17804812265414988860.Spec : Prop :=
  ∀ n, P17804812265414988860.a n = (A034738 (n + 1) : ℚ)

end A034738

/-! ## A034738.P16160104443544965599

`A160619(n+1)/4`
-/

namespace A034738.P16160104443544965599
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A160619 (n + 1) : ℚ) / 4

end

end A034738.P16160104443544965599

namespace A034738

/-- `A160619(n+1)/4` -/
def P16160104443544965599.Spec : Prop :=
  ∀ n, P16160104443544965599.a n = (A034738 (n + 1) : ℚ)

end A034738

/-! ## A034738.P16521878925984046702

`xor(A007283(n), A102688(n+1))`
-/

namespace A034738.P16521878925984046702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A007283 n) (A102688 (n + 1))

end

end A034738.P16521878925984046702

namespace A034738

/-- `xor(A007283(n), A102688(n+1))` -/
def P16521878925984046702.Spec : Prop :=
  ∀ n, P16521878925984046702.a n = A034738 (n + 1)

end A034738

/-! ## A034738.P240885738352373667

`∑{d}[n+1, A034754(#)*A349568((n+1)/#)]`
-/

namespace A034738.P240885738352373667
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A034754 d * A349568 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A034738.P240885738352373667

namespace A034738

/-- `∑{d}[n+1, A034754(#)*A349568((n+1)/#)]` -/
def P240885738352373667.Spec : Prop :=
  ∀ n, P240885738352373667.a n = A034738 (n + 1)

end A034738

/-!
# A034739: Dirichlet convolution of b_n=2^(n-1) with Catalan numbers.

The programs for A034739, the canonical program `A034739.P11447172640487104679` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A034739 has offset 1).

The definition of A034739 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 173 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A034739.P5822319818411751668

`∑{d}[n+1, A000740(#)*A034731((n+1)/#)]`
-/

namespace A034739.P5822319818411751668
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000740 d * A034731 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A034739.P5822319818411751668

namespace A034739

/-- `∑{d}[n+1, A000740(#)*A034731((n+1)/#)]` -/
def P5822319818411751668.Spec : Prop :=
  ∀ n, P5822319818411751668.a n = A034739 (n + 1)

end A034739

/-! ## A034739.P216228188400555830

`∑{d}[n+1, A034729(#)*A034742((n+1)/#)]`
-/

namespace A034739.P216228188400555830
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A034729 d * A034742 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A034739.P216228188400555830

namespace A034739

/-- `∑{d}[n+1, A034729(#)*A034742((n+1)/#)]` -/
def P216228188400555830.Spec : Prop :=
  ∀ n, P216228188400555830.a n = A034739 (n + 1)

end A034739

/-! ## A034739.P6296467817120957767

`∑{d}[n+1, A034774(#)*A296302((n+1)/#)]`
-/

namespace A034739.P6296467817120957767
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A034774 d * A296302 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A034739.P6296467817120957767

namespace A034739

/-- `∑{d}[n+1, A034774(#)*A296302((n+1)/#)]` -/
def P6296467817120957767.Spec : Prop :=
  ∀ n, P6296467817120957767.a n = A034739 (n + 1)

end A034739

/-! ## A034739.P1046537376569343321

`∑{d}[n+1, A034733(#)*A349563((n+1)/#)]`
-/

namespace A034739.P1046537376569343321
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A034733 d * A349563 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A034739.P1046537376569343321

namespace A034739

/-- `∑{d}[n+1, A034733(#)*A349563((n+1)/#)]` -/
def P1046537376569343321.Spec : Prop :=
  ∀ n, P1046537376569343321.a n = A034739 (n + 1)

end A034739

/-! ## A034739.P17235881063534714043

`∑{d}[n+1, A034749(#)*A349566((n+1)/#)]`
-/

namespace A034739.P17235881063534714043
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A034749 d * A349566 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A034739.P17235881063534714043

namespace A034739

/-- `∑{d}[n+1, A034749(#)*A349566((n+1)/#)]` -/
def P17235881063534714043.Spec : Prop :=
  ∀ n, P17235881063534714043.a n = A034739 (n + 1)

end A034739

/-! ## A034739.P4314139324802637480

`∑{d}[n+1, A034755(#)*A349568((n+1)/#)]`
-/

namespace A034739.P4314139324802637480
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A034755 d * A349568 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A034739.P4314139324802637480

namespace A034739

/-- `∑{d}[n+1, A034755(#)*A349568((n+1)/#)]` -/
def P4314139324802637480.Spec : Prop :=
  ∀ n, P4314139324802637480.a n = A034739 (n + 1)

end A034739

/-! ## A034739.P11447172640487104679

`∑{d}[n+1, A000079(#-1)*A000108((n+1)/#-1)]`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A034739

/-- `∑{d}[n+1, A000079(#-1)*A000108((n+1)/#-1)]` -/
def P11447172640487104679.Spec : Prop :=
  ∀ n, P11447172640487104679.a n = A034739 (n + 1)

theorem P11447172640487104679.correct : P11447172640487104679.Spec := by
  intro n
  simp only [A034739, Nat.add_sub_cancel]

end A034739

/-! ## A034739.P9035251896673168502

`∑{d}[n+1, A000912(#-1)*A127804((n+1)/#-1)]`
-/

namespace A034739.P9035251896673168502
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000912 (d - 1) * A127804 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ) - 1)).toNat

end

end A034739.P9035251896673168502

namespace A034739

/-- `∑{d}[n+1, A000912(#-1)*A127804((n+1)/#-1)]` -/
def P9035251896673168502.Spec : Prop :=
  ∀ n, P9035251896673168502.a n = A034739 (n + 1)

end A034739

/-! ## A034739.P17453225291044214442

`∑{d}[n+1, A034768(#)*A349564((n+1)/#)]`
-/

namespace A034739.P17453225291044214442
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A034768 d * A349564 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A034739.P17453225291044214442

namespace A034739

/-- `∑{d}[n+1, A034768(#)*A349564((n+1)/#)]` -/
def P17453225291044214442.Spec : Prop :=
  ∀ n, P17453225291044214442.a n = A034739 (n + 1)

end A034739

/-!
# A034740: Dirichlet convolution of b_n=2^(n-1) with Bell numbers.

The programs for A034740, there is no canonical definition to state claims against.
-/

/-! ## A034740.P12738248983304904451

`∑{d}[n+1, A000740(#)*A034732((n+1)/#)]`
-/

namespace A034740.P12738248983304904451
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000740 d * A034732 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A034740.P12738248983304904451

/-! ## A034740.P4760788441724140218

`∑{d}[n+1, A034729(#)*A034743((n+1)/#)]`
-/

namespace A034740.P4760788441724140218
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A034729 d * A034743 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A034740.P4760788441724140218

/-! ## A034740.P11652433046421725217

`∑{d}[n+1, A034775(#)*A296302((n+1)/#)]`
-/

namespace A034740.P11652433046421725217
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A034775 d * A296302 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A034740.P11652433046421725217

/-! ## A034740.P2589850366272078867

`∑{d}[n+1, A034750(#)*A349566((n+1)/#)]`
-/

namespace A034740.P2589850366272078867
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A034750 d * A349566 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A034740.P2589850366272078867

/-! ## A034740.P14345041351090115893

`∑{d}[n+1, A034756(#)*A349568((n+1)/#)]`
-/

namespace A034740.P14345041351090115893
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A034756 d * A349568 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A034740.P14345041351090115893

/-! ## A034740.P8581642175704975962

`∑{d}[n+1, A034769(#)*A349564((n+1)/#)]`
-/

namespace A034740.P8581642175704975962
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A034769 d * A349564 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A034740.P8581642175704975962

/-! ## A034740.P7792657982700350975

`∑{d}[n+1, A000079(#-1)*A000110((n+1)/#-1)]`
-/

namespace A034740.P7792657982700350975
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000079 (d - 1) * A000110 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ) - 1)).toNat

end

end A034740.P7792657982700350975

/-!
# A034741: Dirichlet convolution of mu(n) with 3^(n-1).

The programs for A034741, the canonical program `A034741.P4749384178526345619` is in `Seq.B013.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A034741 has offset 1).

The definition of A034741 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 210 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A034741.P18197168917157303708

`(n+1)/3*A027376(n+1)`
-/

namespace A034741.P18197168917157303708
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / 3 * (A027376 (n + 1) : ℚ)

end

end A034741.P18197168917157303708

namespace A034741

/-- `(n+1)/3*A027376(n+1)` -/
def P18197168917157303708.Spec : Prop :=
  ∀ n, P18197168917157303708.a n = (A034741 (n + 1) : ℚ)

end A034741

/-! ## A034741.P14718496388557909951

`(ceil(sin(n)²)+1)*A056274(n+1)`
-/

namespace A034741.P14718496388557909951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (⌈Real.sin (n : ℝ) ^ 2⌉ + 1) * A056274 (n + 1)

end

end A034741.P14718496388557909951

namespace A034741

/-- `(ceil(sin(n)²)+1)*A056274(n+1)` -/
def P14718496388557909951.Spec : Prop :=
  ∀ n, P14718496388557909951.a n = A034741 (n + 1)

end A034741

/-! ## A034741.P16951067351639910777

`A036453(n+1)*A056274(n+1)`
-/

namespace A034741.P16951067351639910777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036453 (n + 1) * A056274 (n + 1)

end

end A034741.P16951067351639910777

namespace A034741

/-- `A036453(n+1)*A056274(n+1)` -/
def P16951067351639910777.Spec : Prop :=
  ∀ n, P16951067351639910777.a n = A034741 (n + 1)

end A034741

/-! ## A034741.P7375324221827359655

`∑{d}[n+1, A007427(#)*A034730((n+1)/#)]`
-/

namespace A034741.P7375324221827359655
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A007427 d * A034730 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A034741.P7375324221827359655

namespace A034741

/-- `∑{d}[n+1, A007427(#)*A034730((n+1)/#)]` -/
def P7375324221827359655.Spec : Prop :=
  ∀ n, P7375324221827359655.a n = A034741 (n + 1)

end A034741

/-! ## A034741.P4749384178526345619

`∑{d}[n+1, A034754(#)*A055615((n+1)/#)]`

The canonical program, it is in `Seq.B013.C000`.
-/

namespace A034741

/-- `∑{d}[n+1, A034754(#)*A055615((n+1)/#)]` -/
def P4749384178526345619.Spec : Prop :=
  ∀ n, P4749384178526345619.a n = A034741 (n + 1)

theorem P4749384178526345619.correct : P4749384178526345619.Spec := by
  intro n
  simp only [A034741, Nat.add_sub_cancel]

end A034741

/-! ## A034741.P2224762024457626510

`∑{d}[n+1, A000740(#)*A349567((n+1)/#)]`
-/

namespace A034741.P2224762024457626510
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000740 d * A349567 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A034741.P2224762024457626510

namespace A034741

/-- `∑{d}[n+1, A000740(#)*A349567((n+1)/#)]` -/
def P2224762024457626510.Spec : Prop :=
  ∀ n, P2224762024457626510.a n = A034741 (n + 1)

end A034741

/-! ## A034741.P11242647986783933867

`∑{d}[n+1, A046692(#)*A359189((n+1)/#)]`
-/

namespace A034741.P11242647986783933867
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A046692 d * A359189 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A034741.P11242647986783933867

namespace A034741

/-- `∑{d}[n+1, A046692(#)*A359189((n+1)/#)]` -/
def P11242647986783933867.Spec : Prop :=
  ∀ n, P11242647986783933867.a n = A034741 (n + 1)

end A034741

/-! ## A034741.P6390027937954488622

`∑{d}[n+1, A327274(#)*A373276((n+1)/#)]`
-/

namespace A034741.P6390027937954488622
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A327274 d * A373276 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A034741.P6390027937954488622

namespace A034741

/-- `∑{d}[n+1, A327274(#)*A373276((n+1)/#)]` -/
def P6390027937954488622.Spec : Prop :=
  ∀ n, P6390027937954488622.a n = A034741 (n + 1)

end A034741

/-! ## A034741.P16535609575865558584

`∑{d}[n+1, A000244(#-1)*A008683((n+1)/#)]`
-/

namespace A034741.P16535609575865558584
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000244 (d - 1) * A008683 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A034741.P16535609575865558584

namespace A034741

/-- `∑{d}[n+1, A000244(#-1)*A008683((n+1)/#)]` -/
def P16535609575865558584.Spec : Prop :=
  ∀ n, P16535609575865558584.a n = A034741 (n + 1)

end A034741

/-! ## A034741.P14912324151827119730

`A020639(A046109(n))*A056274(n+1)`
-/

namespace A034741.P14912324151827119730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A046109 n).toNat * A056274 (n + 1)

end

end A034741.P14912324151827119730

namespace A034741

/-- `A020639(A046109(n))*A056274(n+1)` -/
def P14912324151827119730.Spec : Prop :=
  ∀ n, P14912324151827119730.a n = A034741 (n + 1)

end A034741

/-! ## A034741.P7672903441764519429

`A020639(A278223(n+1))*A056274(n+1)`
-/

namespace A034741.P7672903441764519429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A278223 (n + 1)).toNat * A056274 (n + 1)

end

end A034741.P7672903441764519429

namespace A034741

/-- `A020639(A278223(n+1))*A056274(n+1)` -/
def P7672903441764519429.Spec : Prop :=
  ∀ n, P7672903441764519429.a n = A034741 (n + 1)

end A034741

/-! ## A034741.P6475570661678687277

`A054718(n+1)/3`
-/

namespace A034741.P6475570661678687277
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A054718 (n + 1) : ℚ) / 3

end

end A034741.P6475570661678687277

namespace A034741

/-- `A054718(n+1)/3` -/
def P6475570661678687277.Spec : Prop :=
  ∀ n, P6475570661678687277.a n = (A034741 (n + 1) : ℚ)

end A034741

/-! ## A034741.P12697831401504480667

`A020639(A278252(n+1))*A056274(n+1)`
-/

namespace A034741.P12697831401504480667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A278252 (n + 1)).toNat * A056274 (n + 1)

end

end A034741.P12697831401504480667

namespace A034741

/-- `A020639(A278252(n+1))*A056274(n+1)` -/
def P12697831401504480667.Spec : Prop :=
  ∀ n, P12697831401504480667.a n = A034741 (n + 1)

end A034741

/-!
# A034742: Dirichlet convolution of Moebius function mu(n) (A008683) with Catalan numbers (A000108).

The programs for A034742, the canonical program `A034742.P15572167906451431055` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A034742 has offset 1).

The definition of A034742 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 173 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A034742.P15572167906451431055

`∑{d}[n+1, A007427(#)*A034731((n+1)/#)]`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A034742

/-- `∑{d}[n+1, A007427(#)*A034731((n+1)/#)]` -/
def P15572167906451431055.Spec : Prop :=
  ∀ n, P15572167906451431055.a n = A034742 (n + 1)

theorem P15572167906451431055.correct : P15572167906451431055.Spec := by
  intro n
  simp only [A034742, Nat.add_sub_cancel]

end A034742

/-! ## A034742.P2064837962109132923

`∑{d}[n+1, A007428(#)*A034774((n+1)/#)]`
-/

namespace A034742.P2064837962109132923
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A007428 d * A034774 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A034742.P2064837962109132923

namespace A034742

/-- `∑{d}[n+1, A007428(#)*A034774((n+1)/#)]` -/
def P2064837962109132923.Spec : Prop :=
  ∀ n, P2064837962109132923.a n = A034742 (n + 1)

end A034742

/-! ## A034742.P16179380676421727913

`∑{d}[n+1, A034766(#)*A055615((n+1)/#)]`
-/

namespace A034742.P16179380676421727913
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A034766 d * A055615 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A034742.P16179380676421727913

namespace A034742

/-- `∑{d}[n+1, A034766(#)*A055615((n+1)/#)]` -/
def P16179380676421727913.Spec : Prop :=
  ∀ n, P16179380676421727913.a n = A034742 (n + 1)

end A034742

/-! ## A034742.P3425374875447103841

`∑{d}[n+1, A000740(#)*A349563((n+1)/#)]`
-/

namespace A034742.P3425374875447103841
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000740 d * A349563 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A034742.P3425374875447103841

namespace A034742

/-- `∑{d}[n+1, A000740(#)*A349563((n+1)/#)]` -/
def P3425374875447103841.Spec : Prop :=
  ∀ n, P3425374875447103841.a n = A034742 (n + 1)

end A034742

/-! ## A034742.P6801165296166085125

`∑{d}[n+1, A000108(#-1)*A008683((n+1)/#)]`
-/

namespace A034742.P6801165296166085125
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000108 (d - 1) * A008683 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A034742.P6801165296166085125

namespace A034742

/-- `∑{d}[n+1, A000108(#-1)*A008683((n+1)/#)]` -/
def P6801165296166085125.Spec : Prop :=
  ∀ n, P6801165296166085125.a n = A034742 (n + 1)

end A034742

/-! ## A034742.P12649033956154344895

`∑{d}[n+1, A000912(#-1)*A087003((n+1)/#)]`
-/

namespace A034742.P12649033956154344895
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000912 (d - 1) * A087003 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A034742.P12649033956154344895

namespace A034742

/-- `∑{d}[n+1, A000912(#-1)*A087003((n+1)/#)]` -/
def P12649033956154344895.Spec : Prop :=
  ∀ n, P12649033956154344895.a n = A034742 (n + 1)

end A034742

/-!
# A034743: a(n) = Sum_{d | n} mu(n/d) * Bell(d-1).

The programs for A034743, there is no canonical definition to state claims against.
-/

/-! ## A034743.P16705876830390535612

`∑{d}[n+1, A007427(#)*A034732((n+1)/#)]`
-/

namespace A034743.P16705876830390535612
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A007427 d * A034732 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A034743.P16705876830390535612

/-! ## A034743.P7727632815304261386

`∑{d}[n+1, A007428(#)*A034775((n+1)/#)]`
-/

namespace A034743.P7727632815304261386
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A007428 d * A034775 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A034743.P7727632815304261386

/-! ## A034743.P17436651997104754933

`∑{d}[n+1, A034767(#)*A055615((n+1)/#)]`
-/

namespace A034743.P17436651997104754933
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A034767 d * A055615 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A034743.P17436651997104754933

/-! ## A034743.P14393217829506061543

`∑{d}[n+1, A008683(#)*A000110((n+1)/#-1)]`
-/

namespace A034743.P14393217829506061543
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008683 d * A000110 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ) - 1)).toNat

end

end A034743.P14393217829506061543

/-! ## A034743.P16226949882205979100

`A034742(n+1)-A001489(A016098(n))`
-/

namespace A034743.P16226949882205979100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034742 (n + 1) - A001489 (A016098 n).toNat

end

end A034743.P16226949882205979100

/-!
# A034744: Dirichlet convolution of Fibonacci numbers with themselves.

The programs for A034744, the canonical program `A034744.P4901700119150074156` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A034744 has offset 1).

The definition of A034744 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 478 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A034744.P4901700119150074156

`∑{d}[n+1, A000045((n+1)/#)*A000045(#)]`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A034744

/-- `∑{d}[n+1, A000045((n+1)/#)*A000045(#)]` -/
def P4901700119150074156.Spec : Prop :=
  ∀ n, P4901700119150074156.a n = A034744 (n + 1)

theorem P4901700119150074156.correct : P4901700119150074156.Spec := by
  intro n
  simp only [A034744, Nat.add_sub_cancel]

end A034744

/-! ## A034744.P5617970876028828592

`∑{d}[n+1, A007435(#)*A007436((n+1)/#)]`
-/

namespace A034744.P5617970876028828592
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A007435 d * A007436 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A034744.P5617970876028828592

namespace A034744

/-- `∑{d}[n+1, A007435(#)*A007436((n+1)/#)]` -/
def P5617970876028828592.Spec : Prop :=
  ∀ n, P5617970876028828592.a n = A034744 (n + 1)

end A034744

/-! ## A034744.P14468642894624024216

`∑{d}[n+1, A034734(#)*A349565((n+1)/#)]`
-/

namespace A034744.P14468642894624024216
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A034734 d * A349565 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A034744.P14468642894624024216

namespace A034744

/-- `∑{d}[n+1, A034734(#)*A349565((n+1)/#)]` -/
def P14468642894624024216.Spec : Prop :=
  ∀ n, P14468642894624024216.a n = A034744 (n + 1)

end A034744

/-! ## A034744.P11210960977454177386

`A004277(A034749(n+1))-A034768(n+1)`
-/

namespace A034744.P11210960977454177386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A034749 (n + 1)).toNat - A034768 (n + 1)

end

end A034744.P11210960977454177386

namespace A034744

/-- `A004277(A034749(n+1))-A034768(n+1)` -/
def P11210960977454177386.Spec : Prop :=
  ∀ n, P11210960977454177386.a n = A034744 (n + 1)

end A034744

/-! ## A034744.P12968582738018769347

`A004277(A034750(n+1))-A034770(n+1)`
-/

namespace A034744.P12968582738018769347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A034750 (n + 1)).toNat - A034770 (n + 1)

end

end A034744.P12968582738018769347

namespace A034744

/-- `A004277(A034750(n+1))-A034770(n+1)` -/
def P12968582738018769347.Spec : Prop :=
  ∀ n, P12968582738018769347.a n = A034744 (n + 1)

end A034744

/-!
# A034745: Dirichlet convolution of Fibonacci numbers with 3^(n-1).

The programs for A034745, the canonical program `A034745.P1976367546847420112` is in `Seq.B013.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A034745 has offset 1).

The definition of A034745 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 210 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A034745.P15810877644414923991

`∑{d}[n+1, A007436(#)*A034730((n+1)/#)]`
-/

namespace A034745.P15810877644414923991
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A007436 d * A034730 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A034745.P15810877644414923991

namespace A034745

/-- `∑{d}[n+1, A007436(#)*A034730((n+1)/#)]` -/
def P15810877644414923991.Spec : Prop :=
  ∀ n, P15810877644414923991.a n = A034745 (n + 1)

end A034745

/-! ## A034745.P1976367546847420112

`∑{d}[n+1, A007435(#)*A034741((n+1)/#)]`

The canonical program, it is in `Seq.B013.C000`.
-/

namespace A034745

/-- `∑{d}[n+1, A007435(#)*A034741((n+1)/#)]` -/
def P1976367546847420112.Spec : Prop :=
  ∀ n, P1976367546847420112.a n = A034745 (n + 1)

theorem P1976367546847420112.correct : P1976367546847420112.Spec := by
  intro n
  simp only [A034745, Nat.add_sub_cancel]

end A034745

/-! ## A034745.P1632394153242612805

`∑{d}[n+1, A034734(#)*A349567((n+1)/#)]`
-/

namespace A034745.P1632394153242612805
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A034734 d * A349567 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A034745.P1632394153242612805

namespace A034745

/-- `∑{d}[n+1, A034734(#)*A349567((n+1)/#)]` -/
def P1632394153242612805.Spec : Prop :=
  ∀ n, P1632394153242612805.a n = A034745 (n + 1)

end A034745

/-! ## A034745.P10487784922152538423

`∑{d}[n+1, A034735(#)*A349565((n+1)/#)]`
-/

namespace A034745.P10487784922152538423
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A034735 d * A349565 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A034745.P10487784922152538423

namespace A034745

/-- `∑{d}[n+1, A034735(#)*A349565((n+1)/#)]` -/
def P10487784922152538423.Spec : Prop :=
  ∀ n, P10487784922152538423.a n = A034745 (n + 1)

end A034745

/-!
# A034746: Dirichlet convolution of Fibonacci numbers with Primes (with 1).

The programs for A034746, the canonical program `A034746.P17647171061663066197` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A034746 has offset 1).

The definition of A034746 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 480 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A034746.P17647171061663066197

`∑{d}[n+1, A000045(#)*A008578((n+1)/#)]`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A034746

/-- `∑{d}[n+1, A000045(#)*A008578((n+1)/#)]` -/
def P17647171061663066197.Spec : Prop :=
  ∀ n, P17647171061663066197.a n = A034746 (n + 1)

theorem P17647171061663066197.correct : P17647171061663066197.Spec := by
  intro n
  simp only [A034746, Nat.add_sub_cancel]

end A034746

/-! ## A034746.P8992051657004484582

`∑{d}[n+1, A007435(#)*A030013((n+1)/#)]`
-/

namespace A034746.P8992051657004484582
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A007435 d * A030013 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A034746.P8992051657004484582

namespace A034746

/-- `∑{d}[n+1, A007435(#)*A030013((n+1)/#)]` -/
def P8992051657004484582.Spec : Prop :=
  ∀ n, P8992051657004484582.a n = A034746 (n + 1)

end A034746

/-! ## A034746.P5098252490158046121

`∑{d}[n+1, A007436(#)*A030014((n+1)/#)]`
-/

namespace A034746.P5098252490158046121
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A007436 d * A030014 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A034746.P5098252490158046121

namespace A034746

/-- `∑{d}[n+1, A007436(#)*A030014((n+1)/#)]` -/
def P5098252490158046121.Spec : Prop :=
  ∀ n, P5098252490158046121.a n = A034746 (n + 1)

end A034746

/-! ## A034746.P6643033798041572400

`∑{d}[n+1, A034736(#)*A349565((n+1)/#)]`
-/

namespace A034746.P6643033798041572400
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A034736 d * A349565 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A034746.P6643033798041572400

namespace A034746

/-- `∑{d}[n+1, A034736(#)*A349565((n+1)/#)]` -/
def P6643033798041572400.Spec : Prop :=
  ∀ n, P6643033798041572400.a n = A034746 (n + 1)

end A034746

/-!
# A034747: Dirichlet convolution of Fibonacci numbers with sigma(n).

The programs for A034747, the canonical program `A034747.P1402406264465569334` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A034747 has offset 1).

The definition of A034747 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 480 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A034747.P13790531070245210391

`∑{d}[n+1, A066769(#)]`
-/

namespace A034747.P13790531070245210391
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A066769 d

end

end A034747.P13790531070245210391

namespace A034747

/-- `∑{d}[n+1, A066769(#)]` -/
def P13790531070245210391.Spec : Prop :=
  ∀ n, P13790531070245210391.a n = A034747 (n + 1)

end A034747

/-! ## A034747.P1402406264465569334

`∑{d}[n+1, #*A007435((n+1)/#)]`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A034747

/-- `∑{d}[n+1, #*A007435((n+1)/#)]` -/
def P1402406264465569334.Spec : Prop :=
  ∀ n, P1402406264465569334.a n = A034747 (n + 1)

theorem P1402406264465569334.correct : P1402406264465569334.Spec := by
  intro n
  simp only [A034747, Nat.add_sub_cancel]

end A034747

/-! ## A034747.P8545023431615629682

`∑{d}[n+1, A000045((n+1)/#)*A000203(#)]`
-/

namespace A034747.P8545023431615629682
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000045 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat * A000203 d

end

end A034747.P8545023431615629682

namespace A034747

/-- `∑{d}[n+1, A000045((n+1)/#)*A000203(#)]` -/
def P8545023431615629682.Spec : Prop :=
  ∀ n, P8545023431615629682.a n = A034747 (n + 1)

end A034747

/-! ## A034747.P15537736511723860676

`∑{d}[n+1, A007429(#)*A007436((n+1)/#)]`
-/

namespace A034747.P15537736511723860676
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A007429 d * A007436 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A034747.P15537736511723860676

namespace A034747

/-- `∑{d}[n+1, A007429(#)*A007436((n+1)/#)]` -/
def P15537736511723860676.Spec : Prop :=
  ∀ n, P15537736511723860676.a n = A034747 (n + 1)

end A034747

/-! ## A034747.P4753792463618010707

`∑{d}[n+1, A000005(#)*A034748((n+1)/#)]`
-/

namespace A034747.P4753792463618010707
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000005 d * A034748 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A034747.P4753792463618010707

namespace A034747

/-- `∑{d}[n+1, A000005(#)*A034748((n+1)/#)]` -/
def P4753792463618010707.Spec : Prop :=
  ∀ n, P4753792463618010707.a n = A034747 (n + 1)

end A034747

/-! ## A034747.P16117471858971848319

`∑{d}[n+1, A000010(#)*A034772((n+1)/#)]`
-/

namespace A034747.P16117471858971848319
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000010 d * A034772 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A034747.P16117471858971848319

namespace A034747

/-- `∑{d}[n+1, A000010(#)*A034772((n+1)/#)]` -/
def P16117471858971848319.Spec : Prop :=
  ∀ n, P16117471858971848319.a n = A034747 (n + 1)

end A034747

/-! ## A034747.P9921857768561656145

`∑{d}[n+1, A108700(#)*A327096((n+1)/#)]`
-/

namespace A034747.P9921857768561656145
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A108700 d * A327096 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A034747.P9921857768561656145

namespace A034747

/-- `∑{d}[n+1, A108700(#)*A327096((n+1)/#)]` -/
def P9921857768561656145.Spec : Prop :=
  ∀ n, P9921857768561656145.a n = A034747 (n + 1)

end A034747

/-! ## A034747.P11519144322710258340

`∑{d}[n+1, A034737(#)*A349565((n+1)/#)]`
-/

namespace A034747.P11519144322710258340
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A034737 d * A349565 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A034747.P11519144322710258340

namespace A034747

/-- `∑{d}[n+1, A034737(#)*A349565((n+1)/#)]` -/
def P11519144322710258340.Spec : Prop :=
  ∀ n, P11519144322710258340.a n = A034747 (n + 1)

end A034747

/-!
# A034748: Dirichlet convolution of Fibonacci numbers with phi(n).

The programs for A034748, the canonical program `A034748.P1038499301982470669` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A034748 has offset 1).

The definition of A034748 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 480 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A034748.P1038499301982470669

`∑{d}[n+1, #*A007436((n+1)/#)]`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A034748

/-- `∑{d}[n+1, #*A007436((n+1)/#)]` -/
def P1038499301982470669.Spec : Prop :=
  ∀ n, P1038499301982470669.a n = A034748 (n + 1)

theorem P1038499301982470669.correct : P1038499301982470669.Spec := by
  intro n
  simp only [A034748, Nat.add_sub_cancel]

end A034748

/-! ## A034748.P11815319920147037636

`∑{d}[n+1, A000045(#)*A000010((n+1)/#)]`
-/

namespace A034748.P11815319920147037636
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000045 d * A000010 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A034748.P11815319920147037636

namespace A034748

/-- `∑{d}[n+1, A000045(#)*A000010((n+1)/#)]` -/
def P11815319920147037636.Spec : Prop :=
  ∀ n, P11815319920147037636.a n = A034748 (n + 1)

end A034748

/-! ## A034748.P16756043133479750781

`∑{d}[n+1, A007427(#)*A034747((n+1)/#)]`
-/

namespace A034748.P16756043133479750781
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A007427 d * A034747 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A034748.P16756043133479750781

namespace A034748

/-- `∑{d}[n+1, A007427(#)*A034747((n+1)/#)]` -/
def P16756043133479750781.Spec : Prop :=
  ∀ n, P16756043133479750781.a n = A034748 (n + 1)

end A034748

/-! ## A034748.P8232088806540053912

`∑{d}[n+1, A007432(#)*A034772((n+1)/#)]`
-/

namespace A034748.P8232088806540053912
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A007432 d * A034772 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A034748.P8232088806540053912

namespace A034748

/-- `∑{d}[n+1, A007432(#)*A034772((n+1)/#)]` -/
def P8232088806540053912.Spec : Prop :=
  ∀ n, P8232088806540053912.a n = A034748 (n + 1)

end A034748

/-! ## A034748.P8822894140824566433

`∑{d}[n+1, A008683(#)*A066769((n+1)/#)]`
-/

namespace A034748.P8822894140824566433
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008683 d * A066769 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A034748.P8822894140824566433

namespace A034748

/-- `∑{d}[n+1, A008683(#)*A066769((n+1)/#)]` -/
def P8822894140824566433.Spec : Prop :=
  ∀ n, P8822894140824566433.a n = A034748 (n + 1)

end A034748

/-! ## A034748.P15765344578255370190

`∑{d}[n+1, A034738(#)*A349565((n+1)/#)]`
-/

namespace A034748.P15765344578255370190
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A034738 d * A349565 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A034748.P15765344578255370190

namespace A034748

/-- `∑{d}[n+1, A034738(#)*A349565((n+1)/#)]` -/
def P15765344578255370190.Spec : Prop :=
  ∀ n, P15765344578255370190.a n = A034748 (n + 1)

end A034748

/-!
# A034749: Dirichlet convolution of Fibonacci numbers with Catalan numbers.

The programs for A034749, the canonical program `A034749.P16979121441155564528` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A034749 has offset 1).

The definition of A034749 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 173 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A034749.P16979121441155564528

`∑{d}[n+1, A007436(#)*A034731((n+1)/#)]`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A034749

/-- `∑{d}[n+1, A007436(#)*A034731((n+1)/#)]` -/
def P16979121441155564528.Spec : Prop :=
  ∀ n, P16979121441155564528.a n = A034749 (n + 1)

theorem P16979121441155564528.correct : P16979121441155564528.Spec := by
  intro n
  simp only [A034749, Nat.add_sub_cancel]

end A034749

/-! ## A034749.P14664723963325262572

`∑{d}[n+1, A007435(#)*A034742((n+1)/#)]`
-/

namespace A034749.P14664723963325262572
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A007435 d * A034742 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A034749.P14664723963325262572

namespace A034749

/-- `∑{d}[n+1, A007435(#)*A034742((n+1)/#)]` -/
def P14664723963325262572.Spec : Prop :=
  ∀ n, P14664723963325262572.a n = A034749 (n + 1)

end A034749

/-! ## A034749.P5930499652092796918

`∑{d}[n+1, A034734(#)*A349563((n+1)/#)]`
-/

namespace A034749.P5930499652092796918
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A034734 d * A349563 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A034749.P5930499652092796918

namespace A034749

/-- `∑{d}[n+1, A034734(#)*A349563((n+1)/#)]` -/
def P5930499652092796918.Spec : Prop :=
  ∀ n, P5930499652092796918.a n = A034749 (n + 1)

end A034749

/-! ## A034749.P15607711776481471530

`∑{d}[n+1, A034739(#)*A349565((n+1)/#)]`
-/

namespace A034749.P15607711776481471530
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A034739 d * A349565 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A034749.P15607711776481471530

namespace A034749

/-- `∑{d}[n+1, A034739(#)*A349565((n+1)/#)]` -/
def P15607711776481471530.Spec : Prop :=
  ∀ n, P15607711776481471530.a n = A034749 (n + 1)

end A034749

/-! ## A034749.P16708087938922757509

`A014682(A034768(n+1)+A034744(n+1))`
-/

namespace A034749.P16708087938922757509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A034768 (n + 1) + A034744 (n + 1)).toNat

end

end A034749.P16708087938922757509

namespace A034749

/-- `A014682(A034768(n+1)+A034744(n+1))` -/
def P16708087938922757509.Spec : Prop :=
  ∀ n, P16708087938922757509.a n = A034749 (n + 1)

end A034749

/-!
# A034750: Dirichlet convolution of Fibonacci numbers with Bell numbers.

The programs for A034750, there is no canonical definition to state claims against.
-/

/-! ## A034750.P10625557555462378015

`∑{d}[n+1, A007436(#)*A034732((n+1)/#)]`
-/

namespace A034750.P10625557555462378015
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A007436 d * A034732 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A034750.P10625557555462378015

/-! ## A034750.P18247975836010525899

`∑{d}[n+1, A007435(#)*A034743((n+1)/#)]`
-/

namespace A034750.P18247975836010525899
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A007435 d * A034743 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A034750.P18247975836010525899

/-! ## A034750.P2729796995405059456

`∑{d}[n+1, A034740(#)*A349565((n+1)/#)]`
-/

namespace A034750.P2729796995405059456
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A034740 d * A349565 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A034750.P2729796995405059456

/-! ## A034750.P8259406763964426227

`A032742(A034770(n+1)+A034744(n+1))`
-/

namespace A034750.P8259406763964426227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032742 (A034770 (n + 1) + A034744 (n + 1)).toNat

end

end A034750.P8259406763964426227

/-! ## A034750.P10664062844305492003

`A110654(A034770(n+1)+A034744(n+1))`
-/

namespace A034750.P10664062844305492003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (A034770 (n + 1) + A034744 (n + 1)).toNat

end

end A034750.P10664062844305492003

/-!
# A034751: Dirichlet convolution of 3^(n-1) with itself.

The programs for A034751, the canonical program `A034751.P500003660580225969` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A034751 has offset 1).

The definition of A034751 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 209 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A034751.P2604427758221621152

`∑{d}[n+1, A034730(#)*A034741((n+1)/#)]`
-/

namespace A034751.P2604427758221621152
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A034730 d * A034741 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A034751.P2604427758221621152

namespace A034751

/-- `∑{d}[n+1, A034730(#)*A034741((n+1)/#)]` -/
def P2604427758221621152.Spec : Prop :=
  ∀ n, P2604427758221621152.a n = A034751 (n + 1)

end A034751

/-! ## A034751.P11239751483288822343

`∑{d}[n+1, A034735(#)*A349567((n+1)/#)]`
-/

namespace A034751.P11239751483288822343
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A034735 d * A349567 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A034751.P11239751483288822343

namespace A034751

/-- `∑{d}[n+1, A034735(#)*A349567((n+1)/#)]` -/
def P11239751483288822343.Spec : Prop :=
  ∀ n, P11239751483288822343.a n = A034751 (n + 1)

end A034751

/-! ## A034751.P500003660580225969

`∑{d}[n+1, A000244(#-1)*A000244((n+1)/#-1)]`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A034751

/-- `∑{d}[n+1, A000244(#-1)*A000244((n+1)/#-1)]` -/
def P500003660580225969.Spec : Prop :=
  ∀ n, P500003660580225969.a n = A034751 (n + 1)

theorem P500003660580225969.correct : P500003660580225969.Spec := by
  intro n
  simp only [A034751, Nat.add_sub_cancel]

end A034751

/-! ## A034751.P10437028283983116575

`∑{d}[n+1, 3^((n+1)/#+#)]/9`
-/

namespace A034751.P10437028283983116575
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (∑ d ∈ Nat.divisors (f1 n), (3 : ℝ) ^ ((n + 1 : ℚ) / (d : ℚ) + (d : ℚ) : ℝ)) / 9

end

end A034751.P10437028283983116575

namespace A034751

/-- `∑{d}[n+1, 3^((n+1)/#+#)]/9` -/
def P10437028283983116575.Spec : Prop :=
  ∀ n, P10437028283983116575.a n = (A034751 (n + 1) : ℝ)

end A034751

/-! ## A034751.P16800234138734392948

`A034719(n+1)/9`
-/

namespace A034751.P16800234138734392948
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A034719 (n + 1) : ℚ) / 9

end

end A034751.P16800234138734392948

namespace A034751

/-- `A034719(n+1)/9` -/
def P16800234138734392948.Spec : Prop :=
  ∀ n, P16800234138734392948.a n = (A034751 (n + 1) : ℚ)

theorem P16800234138734392948.correct : P16800234138734392948.Spec := by
  intro n
  simp only [A034751, Nat.add_sub_cancel, A034751.P16800234138734392948.a, A034751.P500003660580225969.f1, A034751.P500003660580225969.a, A000244, A000244.P17162167222172810417.a, A034719, A034719.P18413001168880020072.f1, A034719.P18413001168880020072.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A034751

/-!
# A034752: Dirichlet convolution of 3^(n-1) with primes (with 1).

The programs for A034752, the canonical program `A034752.P8472321955714511973` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A034752 has offset 1).

The definition of A034752 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 210 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A034752.P9762924604438246700

`∑{d}[n+1, A030013(#)*A034730((n+1)/#)]`
-/

namespace A034752.P9762924604438246700
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A030013 d * A034730 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A034752.P9762924604438246700

namespace A034752

/-- `∑{d}[n+1, A030013(#)*A034730((n+1)/#)]` -/
def P9762924604438246700.Spec : Prop :=
  ∀ n, P9762924604438246700.a n = A034752 (n + 1)

end A034752

/-! ## A034752.P17504039400456501432

`∑{d}[n+1, A030014(#)*A034741((n+1)/#)]`
-/

namespace A034752.P17504039400456501432
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A030014 d * A034741 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A034752.P17504039400456501432

namespace A034752

/-- `∑{d}[n+1, A030014(#)*A034741((n+1)/#)]` -/
def P17504039400456501432.Spec : Prop :=
  ∀ n, P17504039400456501432.a n = A034752 (n + 1)

end A034752

/-! ## A034752.P2059228045537630164

`∑{d}[n+1, A034736(#)*A349567((n+1)/#)]`
-/

namespace A034752.P2059228045537630164
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A034736 d * A349567 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A034752.P2059228045537630164

namespace A034752

/-- `∑{d}[n+1, A034736(#)*A349567((n+1)/#)]` -/
def P2059228045537630164.Spec : Prop :=
  ∀ n, P2059228045537630164.a n = A034752 (n + 1)

end A034752

/-! ## A034752.P8472321955714511973

`∑{d}[n+1, A000244(#-1)*A008578((n+1)/#)]`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A034752

/-- `∑{d}[n+1, A000244(#-1)*A008578((n+1)/#)]` -/
def P8472321955714511973.Spec : Prop :=
  ∀ n, P8472321955714511973.a n = A034752 (n + 1)

theorem P8472321955714511973.correct : P8472321955714511973.Spec := by
  intro n
  simp only [A034752, Nat.add_sub_cancel]

end A034752

/-!
# A034753: Dirichlet convolution of 3^(n-1) with sigma(n).

The programs for A034753, the canonical program `A034753.P12853043952854742106` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A034753 has offset 1).

The definition of A034753 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 210 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A034753.P12853043952854742106

`∑{d}[n+1, A359189(#)]`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A034753

/-- `∑{d}[n+1, A359189(#)]` -/
def P12853043952854742106.Spec : Prop :=
  ∀ n, P12853043952854742106.a n = A034753 (n + 1)

theorem P12853043952854742106.correct : P12853043952854742106.Spec := by
  intro n
  simp only [A034753, Nat.add_sub_cancel]

end A034753

/-! ## A034753.P762931780987331648

`∑{d}[n+1, #*A034730((n+1)/#)]`
-/

namespace A034753.P762931780987331648
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * A034730 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A034753.P762931780987331648

namespace A034753

/-- `∑{d}[n+1, #*A034730((n+1)/#)]` -/
def P762931780987331648.Spec : Prop :=
  ∀ n, P762931780987331648.a n = A034753 (n + 1)

end A034753

/-! ## A034753.P7714074765016537864

`∑{d}[n+1, A000005(#)*A034754((n+1)/#)]`
-/

namespace A034753.P7714074765016537864
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000005 d * A034754 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A034753.P7714074765016537864

namespace A034753

/-- `∑{d}[n+1, A000005(#)*A034754((n+1)/#)]` -/
def P7714074765016537864.Spec : Prop :=
  ∀ n, P7714074765016537864.a n = A034753 (n + 1)

end A034753

/-! ## A034753.P5329670248816931374

`∑{d}[n+1, A007429(#)*A034741((n+1)/#)]`
-/

namespace A034753.P5329670248816931374
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A007429 d * A034741 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A034753.P5329670248816931374

namespace A034753

/-- `∑{d}[n+1, A007429(#)*A034741((n+1)/#)]` -/
def P5329670248816931374.Spec : Prop :=
  ∀ n, P5329670248816931374.a n = A034753 (n + 1)

end A034753

/-! ## A034753.P15170440975543760733

`∑{d}[n+1, A034737(#)*A349567((n+1)/#)]`
-/

namespace A034753.P15170440975543760733
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A034737 d * A349567 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A034753.P15170440975543760733

namespace A034753

/-- `∑{d}[n+1, A034737(#)*A349567((n+1)/#)]` -/
def P15170440975543760733.Spec : Prop :=
  ∀ n, P15170440975543760733.a n = A034753 (n + 1)

end A034753

/-! ## A034753.P17364725844921623707

`∑{d}[n+1, A078708(#)*A373279((n+1)/#)]`
-/

namespace A034753.P17364725844921623707
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A078708 d * A373279 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A034753.P17364725844921623707

namespace A034753

/-- `∑{d}[n+1, A078708(#)*A373279((n+1)/#)]` -/
def P17364725844921623707.Spec : Prop :=
  ∀ n, P17364725844921623707.a n = A034753 (n + 1)

end A034753

/-! ## A034753.P6807961576888176710

`∑{d}[n+1, A091512(#)*A373276((n+1)/#)]`
-/

namespace A034753.P6807961576888176710
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A091512 d * A373276 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A034753.P6807961576888176710

namespace A034753

/-- `∑{d}[n+1, A091512(#)*A373276((n+1)/#)]` -/
def P6807961576888176710.Spec : Prop :=
  ∀ n, P6807961576888176710.a n = A034753 (n + 1)

end A034753

/-! ## A034753.P3707249840691970647

`∑{d}[n+1, A000203(#)*A000244((n+1)/#-1)]`
-/

namespace A034753.P3707249840691970647
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000203 d * A000244 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ) - 1)).toNat

end

end A034753.P3707249840691970647

namespace A034753

/-- `∑{d}[n+1, A000203(#)*A000244((n+1)/#-1)]` -/
def P3707249840691970647.Spec : Prop :=
  ∀ n, P3707249840691970647.a n = A034753 (n + 1)

end A034753

/-!
# A034754: Dirichlet convolution of 3^(n-1) with phi(n).

The programs for A034754, the canonical program `A034754.P850414589168933379` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A034754 has offset 1).

The definition of A034754 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 210 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A034754.P9772589299607913288

`A054610(n+1)/3`
-/

namespace A034754.P9772589299607913288
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A054610 (n + 1) : ℚ) / 3

end

end A034754.P9772589299607913288

namespace A034754

/-- `A054610(n+1)/3` -/
def P9772589299607913288.Spec : Prop :=
  ∀ n, P9772589299607913288.a n = (A034754 (n + 1) : ℚ)

end A034754

/-! ## A034754.P7442815024489761951

`(n+1)/3*A001867(n+1)`
-/

namespace A034754.P7442815024489761951
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / 3 * (A001867 (n + 1) : ℚ)

end

end A034754.P7442815024489761951

namespace A034754

/-- `(n+1)/3*A001867(n+1)` -/
def P7442815024489761951.Spec : Prop :=
  ∀ n, P7442815024489761951.a n = (A034754 (n + 1) : ℚ)

end A034754

/-! ## A034754.P12298225474058267330

`∑{d}[n+1, #*A034741((n+1)/#)]`
-/

namespace A034754.P12298225474058267330
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * A034741 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A034754.P12298225474058267330

namespace A034754

/-- `∑{d}[n+1, #*A034741((n+1)/#)]` -/
def P12298225474058267330.Spec : Prop :=
  ∀ n, P12298225474058267330.a n = A034754 (n + 1)

end A034754

/-! ## A034754.P850414589168933379

`∑{d}[n+1, A007427(#)*A034753((n+1)/#)]`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A034754

/-- `∑{d}[n+1, A007427(#)*A034753((n+1)/#)]` -/
def P850414589168933379.Spec : Prop :=
  ∀ n, P850414589168933379.a n = A034754 (n + 1)

theorem P850414589168933379.correct : P850414589168933379.Spec := by
  intro n
  simp only [A034754, Nat.add_sub_cancel]

end A034754

/-! ## A034754.P15211031380880882442

`∑{d}[n+1, A008683(#)*A359189((n+1)/#)]`
-/

namespace A034754.P15211031380880882442
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008683 d * A359189 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A034754.P15211031380880882442

namespace A034754

/-- `∑{d}[n+1, A008683(#)*A359189((n+1)/#)]` -/
def P15211031380880882442.Spec : Prop :=
  ∀ n, P15211031380880882442.a n = A034754 (n + 1)

end A034754

/-! ## A034754.P4052835669961826262

`∑{d}[n+1, A034738(#)*A349567((n+1)/#)]`
-/

namespace A034754.P4052835669961826262
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A034738 d * A349567 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A034754.P4052835669961826262

namespace A034754

/-- `∑{d}[n+1, A034738(#)*A349567((n+1)/#)]` -/
def P4052835669961826262.Spec : Prop :=
  ∀ n, P4052835669961826262.a n = A034754 (n + 1)

end A034754

/-! ## A034754.P8120973694859334386

`∑{d}[n+1, A000010(#)*A000244((n+1)/#-1)]`
-/

namespace A034754.P8120973694859334386
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000010 d * A000244 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ) - 1)).toNat

end

end A034754.P8120973694859334386

namespace A034754

/-- `∑{d}[n+1, A000010(#)*A000244((n+1)/#-1)]` -/
def P8120973694859334386.Spec : Prop :=
  ∀ n, P8120973694859334386.a n = A034754 (n + 1)

end A034754

/-! ## A034754.P6032957227549611220

`Δ[∑[A054610(n)]/3]`
-/

namespace A034754.P6032957227549611220
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054610 n

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℤ) : ℚ) / 3

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A034754.P6032957227549611220

namespace A034754

/-- `Δ[∑[A054610(n)]/3]` -/
def P6032957227549611220.Spec : Prop :=
  ∀ n, P6032957227549611220.a n = (A034754 (n + 1) : ℚ)

end A034754

/-!
# A034755: Dirichlet convolution of 3^(n-1) with Catalan numbers.

The programs for A034755, the canonical program `A034755.P6404292671530710847` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A034755 has offset 1).

The definition of A034755 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 173 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A034755.P8585483229857686131

`∑{d}[n+1, A034730(#)*A034742((n+1)/#)]`
-/

namespace A034755.P8585483229857686131
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A034730 d * A034742 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A034755.P8585483229857686131

namespace A034755

/-- `∑{d}[n+1, A034730(#)*A034742((n+1)/#)]` -/
def P8585483229857686131.Spec : Prop :=
  ∀ n, P8585483229857686131.a n = A034755 (n + 1)

end A034755

/-! ## A034755.P18041568103333411742

`∑{d}[n+1, A034731(#)*A034741((n+1)/#)]`
-/

namespace A034755.P18041568103333411742
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A034731 d * A034741 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A034755.P18041568103333411742

namespace A034755

/-- `∑{d}[n+1, A034731(#)*A034741((n+1)/#)]` -/
def P18041568103333411742.Spec : Prop :=
  ∀ n, P18041568103333411742.a n = A034755 (n + 1)

end A034755

/-! ## A034755.P2311311569609386859

`∑{d}[n+1, A034735(#)*A349563((n+1)/#)]`
-/

namespace A034755.P2311311569609386859
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A034735 d * A349563 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A034755.P2311311569609386859

namespace A034755

/-- `∑{d}[n+1, A034735(#)*A349563((n+1)/#)]` -/
def P2311311569609386859.Spec : Prop :=
  ∀ n, P2311311569609386859.a n = A034755 (n + 1)

end A034755

/-! ## A034755.P704614024926091736

`∑{d}[n+1, A034739(#)*A349567((n+1)/#)]`
-/

namespace A034755.P704614024926091736
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A034739 d * A349567 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A034755.P704614024926091736

namespace A034755

/-- `∑{d}[n+1, A034739(#)*A349567((n+1)/#)]` -/
def P704614024926091736.Spec : Prop :=
  ∀ n, P704614024926091736.a n = A034755 (n + 1)

end A034755

/-! ## A034755.P6404292671530710847

`∑{d}[n+1, A000108(#-1)*A000244((n+1)/#-1)]`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A034755

/-- `∑{d}[n+1, A000108(#-1)*A000244((n+1)/#-1)]` -/
def P6404292671530710847.Spec : Prop :=
  ∀ n, P6404292671530710847.a n = A034755 (n + 1)

theorem P6404292671530710847.correct : P6404292671530710847.Spec := by
  intro n
  simp only [A034755, Nat.add_sub_cancel]

end A034755

/-!
# A034756: Dirichlet convolution of 3^(n-1) with Bell numbers.

The programs for A034756, there is no canonical definition to state claims against.
-/

/-! ## A034756.P11715548729165851206

`∑{d}[n+1, A034730(#)*A034743((n+1)/#)]`
-/

namespace A034756.P11715548729165851206
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A034730 d * A034743 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A034756.P11715548729165851206

/-! ## A034756.P661030512089696100

`∑{d}[n+1, A034732(#)*A034741((n+1)/#)]`
-/

namespace A034756.P661030512089696100
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A034732 d * A034741 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A034756.P661030512089696100

/-! ## A034756.P18419388583598429025

`∑{d}[n+1, A034740(#)*A349567((n+1)/#)]`
-/

namespace A034756.P18419388583598429025
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A034740 d * A349567 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A034756.P18419388583598429025

/-! ## A034756.P8165596182577760140

`∑{d}[n+1, A000110(#-1)*A000244((n+1)/#-1)]`
-/

namespace A034756.P8165596182577760140
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000110 (d - 1) * A000244 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ) - 1)).toNat

end

end A034756.P8165596182577760140

/-!
# A034757: a(1)=1, a(n) = smallest odd number such that all sums of pairs of (not necessarily distinct) terms in the sequence are distinct.

The programs for A034757, there is no canonical definition to state claims against.
-/

/-! ## A034757.P6724359836495858864

`2*A005282(n+1)-1`
-/

namespace A034757.P6724359836495858864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A005282 (n + 1) - 1

end

end A034757.P6724359836495858864

/-! ## A034757.P9473979947742062746

`∑[A287178(n+1)]`
-/

namespace A034757.P9473979947742062746
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287178 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A034757.P9473979947742062746

/-! ## A034757.P15211357586521033554

`2*A025582(n+1)+1`
-/

namespace A034757.P15211357586521033554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A025582 (n + 1) + 1

end

end A034757.P15211357586521033554

/-! ## A034757.P533347844676843904

`2*(A284917(n+1)+n)-1`
-/

namespace A034757.P533347844676843904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A284917 (n + 1) + (n : ℤ)) - 1

end

end A034757.P533347844676843904

/-! ## A034757.P1114833398630578705

`A025582(n+1)+A005282(n+1)`
-/

namespace A034757.P1114833398630578705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025582 (n + 1) + A005282 (n + 1)

end

end A034757.P1114833398630578705

/-! ## A034757.P220772155294727556

`A054354(A156242(n+1))+2*A005282(n+1)`
-/

namespace A034757.P220772155294727556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054354 (A156242 (n + 1)).toNat + 2 * A005282 (n + 1)

end

end A034757.P220772155294727556

/-! ## A034757.P11192440396610057420

`A005282(n+1)+A133097(n+1)+A010672(n)`
-/

namespace A034757.P11192440396610057420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005282 (n + 1) + (A133097 (n + 1) + A010672 n)

end

end A034757.P11192440396610057420

/-! ## A034757.P13453162294820151315

`A011185(n+1)+A133097(n+1)+A025582(n+1)`
-/

namespace A034757.P13453162294820151315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011185 (n + 1) + (A133097 (n + 1) + A025582 (n + 1))

end

end A034757.P13453162294820151315

/-! ## A034757.P10218867336421725866

`A025582(n+1)+A115561(A115561(n+1))+A025582(n+1)`
-/

namespace A034757.P10218867336421725866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025582 (n + 1) + (A115561 (A115561 (n + 1)).toNat + A025582 (n + 1))

end

end A034757.P10218867336421725866

/-! ## A034757.P3626678471986027543

`a(n-1)+2*A101274(n)` with `a(0)=1`
-/

namespace A034757.P3626678471986027543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + 2 * A101274 n

end

end A034757.P3626678471986027543

/-! ## A034757.P5057890967314825433

`A005282(n+1)+A394214(n+1)-A101274(n+2)`
-/

namespace A034757.P5057890967314825433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005282 (n + 1) + (A394214 (n + 1) - A101274 (n + 2))

end

end A034757.P5057890967314825433

/-! ## A034757.P639421250004708196

`A000265(A005282(n+1)+A005282(n+1)-1)`
-/

namespace A034757.P639421250004708196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A005282 (n + 1) + (A005282 (n + 1) - 1)).toNat

end

end A034757.P639421250004708196

/-!
# A034758: Dirichlet convolution of primes (with 1) with Bell numbers.

The programs for A034758, there is no canonical definition to state claims against.
-/

/-! ## A034758.P2426107766354721887

`∑{d}[n+1, A030013(#)*A034732((n+1)/#)]`
-/

namespace A034758.P2426107766354721887
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A030013 d * A034732 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A034758.P2426107766354721887

/-! ## A034758.P11031895195619201954

`∑{d}[n+1, A030014(#)*A034743((n+1)/#)]`
-/

namespace A034758.P11031895195619201954
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A030014 d * A034743 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A034758.P11031895195619201954

/-! ## A034758.P15242151608475960778

`∑{d}[n+1, A000110(#-1)*A008578((n+1)/#)]`
-/

namespace A034758.P15242151608475960778
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000110 (d - 1) * A008578 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A034758.P15242151608475960778

/-! ## A034758.P18117163501363957617

`∑{d}[n+1, A000110(#-1)*A324050((n+1)/#)]`
-/

namespace A034758.P18117163501363957617
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000110 (d - 1) * A324050 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A034758.P18117163501363957617

/-!
# A034759: Dirichlet convolution of primes (with 1) with themselves.

The programs for A034759, the canonical program `A034759.P7395327973398037914` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A034759 has offset 1).

The definition of A034759 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A034759.P7395327973398037914

`∑{d}[n+1, A008578((n+1)/#)*A008578(#)]`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A034759

/-- `∑{d}[n+1, A008578((n+1)/#)*A008578(#)]` -/
def P7395327973398037914.Spec : Prop :=
  ∀ n, P7395327973398037914.a n = A034759 (n + 1)

theorem P7395327973398037914.correct : P7395327973398037914.Spec := by
  intro n
  simp only [A034759, Nat.add_sub_cancel]

end A034759

/-! ## A034759.P5766506755608220426

`∑{d}[n+1, A030013(#)*A030014((n+1)/#)]`
-/

namespace A034759.P5766506755608220426
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A030013 d * A030014 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A034759.P5766506755608220426

namespace A034759

/-- `∑{d}[n+1, A030013(#)*A030014((n+1)/#)]` -/
def P5766506755608220426.Spec : Prop :=
  ∀ n, P5766506755608220426.a n = A034759 (n + 1)

end A034759

/-!
# A034760: Dirichlet convolution of primes (with 1) with phi(n).

The programs for A034760, the canonical program `A034760.P11851512362780914640` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A034760 has offset 1).

The definition of A034760 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A034760.P11851512362780914640

`∑{d}[n+1, #*A030013((n+1)/#)]`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A034760

/-- `∑{d}[n+1, #*A030013((n+1)/#)]` -/
def P11851512362780914640.Spec : Prop :=
  ∀ n, P11851512362780914640.a n = A034760 (n + 1)

theorem P11851512362780914640.correct : P11851512362780914640.Spec := by
  intro n
  simp only [A034760, Nat.add_sub_cancel]

end A034760

/-! ## A034760.P6515166358504911773

`∑{d}[n+1, A000010(#)*A008578((n+1)/#)]`
-/

namespace A034760.P6515166358504911773
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000010 d * A008578 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A034760.P6515166358504911773

namespace A034760

/-- `∑{d}[n+1, A000010(#)*A008578((n+1)/#)]` -/
def P6515166358504911773.Spec : Prop :=
  ∀ n, P6515166358504911773.a n = A034760 (n + 1)

end A034760

/-! ## A034760.P3805684229934384896

`∑{d}[n+1, A007431(#)*A030014((n+1)/#)]`
-/

namespace A034760.P3805684229934384896
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A007431 d * A030014 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A034760.P3805684229934384896

namespace A034760

/-- `∑{d}[n+1, A007431(#)*A030014((n+1)/#)]` -/
def P3805684229934384896.Spec : Prop :=
  ∀ n, P3805684229934384896.a n = A034760 (n + 1)

end A034760

/-! ## A034760.P11823133967461001128

`∑{d}[n+1, A007427(#)*A034762((n+1)/#)]`
-/

namespace A034760.P11823133967461001128
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A007427 d * A034762 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A034760.P11823133967461001128

namespace A034760

/-- `∑{d}[n+1, A007427(#)*A034762((n+1)/#)]` -/
def P11823133967461001128.Spec : Prop :=
  ∀ n, P11823133967461001128.a n = A034760 (n + 1)

end A034760

/-! ## A034760.P17980916598839486685

`∑{d}[n+1, A007432(#)*A034773((n+1)/#)]`
-/

namespace A034760.P17980916598839486685
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A007432 d * A034773 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A034760.P17980916598839486685

namespace A034760

/-- `∑{d}[n+1, A007432(#)*A034773((n+1)/#)]` -/
def P17980916598839486685.Spec : Prop :=
  ∀ n, P17980916598839486685.a n = A034760 (n + 1)

end A034760

/-!
# A034761: Dirichlet convolution of sigma(n) with itself.

The programs for A034761, the canonical program `A034761.P7021873278512007717` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A034761 has offset 1).

The definition of A034761 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A034761.P10168868120111506672

`∑{d}[n+1, A060640(#)]`
-/

namespace A034761.P10168868120111506672
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A060640 d

end

end A034761.P10168868120111506672

namespace A034761

/-- `∑{d}[n+1, A060640(#)]` -/
def P10168868120111506672.Spec : Prop :=
  ∀ n, P10168868120111506672.a n = A034761 (n + 1)

end A034761

/-! ## A034761.P7021873278512007717

`∑{d}[n+1, #*A007429((n+1)/#)]`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A034761

/-- `∑{d}[n+1, #*A007429((n+1)/#)]` -/
def P7021873278512007717.Spec : Prop :=
  ∀ n, P7021873278512007717.a n = A034761 (n + 1)

theorem P7021873278512007717.correct : P7021873278512007717.Spec := by
  intro n
  simp only [A034761, Nat.add_sub_cancel]

end A034761

/-! ## A034761.P4303905872917013551

`∑{d}[n+1, A000203(#)*A000203((n+1)/#)]`
-/

namespace A034761.P4303905872917013551
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000203 d * A000203 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A034761.P4303905872917013551

namespace A034761

/-- `∑{d}[n+1, A000203(#)*A000203((n+1)/#)]` -/
def P4303905872917013551.Spec : Prop :=
  ∀ n, P4303905872917013551.a n = A034761 (n + 1)

end A034761

/-! ## A034761.P34963517207661189

`∑{d}[n+1, A000010(#)*A007430((n+1)/#)]`
-/

namespace A034761.P34963517207661189
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000010 d * A007430 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A034761.P34963517207661189

namespace A034761

/-- `∑{d}[n+1, A000010(#)*A007430((n+1)/#)]` -/
def P34963517207661189.Spec : Prop :=
  ∀ n, P34963517207661189.a n = A034761 (n + 1)

end A034761

/-! ## A034761.P9650353823108518696

`∑{d}[n+1, A007425(#)*A018804((n+1)/#)]`
-/

namespace A034761.P9650353823108518696
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A007425 d * A018804 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A034761.P9650353823108518696

namespace A034761

/-- `∑{d}[n+1, A007425(#)*A018804((n+1)/#)]` -/
def P9650353823108518696.Spec : Prop :=
  ∀ n, P9650353823108518696.a n = A034761 (n + 1)

end A034761

/-! ## A034761.P5206540353623339234

`∑{d}[n+1, A007426(#)*A029935((n+1)/#)]`
-/

namespace A034761.P5206540353623339234
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A007426 d * A029935 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A034761.P5206540353623339234

namespace A034761

/-- `∑{d}[n+1, A007426(#)*A029935((n+1)/#)]` -/
def P5206540353623339234.Spec : Prop :=
  ∀ n, P5206540353623339234.a n = A034761 (n + 1)

end A034761

/-! ## A034761.P390483088671459085

`∑{d}[n+1, A000005(#)*A038040((n+1)/#)]`
-/

namespace A034761.P390483088671459085
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000005 d * A038040 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A034761.P390483088671459085

namespace A034761

/-- `∑{d}[n+1, A000005(#)*A038040((n+1)/#)]` -/
def P390483088671459085.Spec : Prop :=
  ∀ n, P390483088671459085.a n = A034761 (n + 1)

end A034761

/-! ## A034761.P5724021014349289472

`∑{d}[n+1, A037213(#)*A064840((n+1)/#)]`
-/

namespace A034761.P5724021014349289472
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A037213 d * A064840 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A034761.P5724021014349289472

namespace A034761

/-- `∑{d}[n+1, A037213(#)*A064840((n+1)/#)]` -/
def P5724021014349289472.Spec : Prop :=
  ∀ n, P5724021014349289472.a n = A034761 (n + 1)

end A034761

/-! ## A034761.P15240779225069759834

`∑{d}[n+1, A061020(#)*A064950((n+1)/#)]`
-/

namespace A034761.P15240779225069759834
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A061020 d * A064950 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A034761.P15240779225069759834

namespace A034761

/-- `∑{d}[n+1, A061020(#)*A064950((n+1)/#)]` -/
def P15240779225069759834.Spec : Prop :=
  ∀ n, P15240779225069759834.a n = A034761 (n + 1)

end A034761

/-! ## A034761.P17142961807752979037

`∑{d}[n+1, A062369(#)*A074722((n+1)/#)]`
-/

namespace A034761.P17142961807752979037
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A062369 d * A074722 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A034761.P17142961807752979037

namespace A034761

/-- `∑{d}[n+1, A062369(#)*A074722((n+1)/#)]` -/
def P17142961807752979037.Spec : Prop :=
  ∀ n, P17142961807752979037.a n = A034761 (n + 1)

end A034761

/-! ## A034761.P4714922586513959313

`∑{d}[n+1, A060648(#)*A076752((n+1)/#)]`
-/

namespace A034761.P4714922586513959313
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A060648 d * A076752 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A034761.P4714922586513959313

namespace A034761

/-- `∑{d}[n+1, A060648(#)*A076752((n+1)/#)]` -/
def P4714922586513959313.Spec : Prop :=
  ∀ n, P4714922586513959313.a n = A034761 (n + 1)

end A034761

/-! ## A034761.P7787709412317279738

`∑{d}[n+1, A038712(#)*A109386((n+1)/#)]`
-/

namespace A034761.P7787709412317279738
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A038712 d * A109386 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A034761.P7787709412317279738

namespace A034761

/-- `∑{d}[n+1, A038712(#)*A109386((n+1)/#)]` -/
def P7787709412317279738.Spec : Prop :=
  ∀ n, P7787709412317279738.a n = A034761 (n + 1)

end A034761

/-! ## A034761.P8141166567023009012

`∑{d}[n+1, A034718(#)*A130054((n+1)/#)]`
-/

namespace A034761.P8141166567023009012
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A034718 d * A130054 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A034761.P8141166567023009012

namespace A034761

/-- `∑{d}[n+1, A034718(#)*A130054((n+1)/#)]` -/
def P8141166567023009012.Spec : Prop :=
  ∀ n, P8141166567023009012.a n = A034761 (n + 1)

end A034761

/-! ## A034761.P9111528756246666108

`∑{d}[n+1, A023900(#)*A174466((n+1)/#)]`
-/

namespace A034761.P9111528756246666108
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A023900 d * A174466 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A034761.P9111528756246666108

namespace A034761

/-- `∑{d}[n+1, A023900(#)*A174466((n+1)/#)]` -/
def P9111528756246666108.Spec : Prop :=
  ∀ n, P9111528756246666108.a n = A034761 (n + 1)

end A034761

/-! ## A034761.P12650432803633048309

`∑{d}[n+1, A061200(#)*A143275((n+1)/#)]`
-/

namespace A034761.P12650432803633048309
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A061200 d * A143275 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A034761.P12650432803633048309

namespace A034761

/-- `∑{d}[n+1, A061200(#)*A143275((n+1)/#)]` -/
def P12650432803633048309.Spec : Prop :=
  ∀ n, P12650432803633048309.a n = A034761 (n + 1)

end A034761

/-! ## A034761.P11575106889100852114

`∑{d}[n+1, A046970(#)*A174468((n+1)/#)]`
-/

namespace A034761.P11575106889100852114
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A046970 d * A174468 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A034761.P11575106889100852114

namespace A034761

/-- `∑{d}[n+1, A046970(#)*A174468((n+1)/#)]` -/
def P11575106889100852114.Spec : Prop :=
  ∀ n, P11575106889100852114.a n = A034761 (n + 1)

end A034761

/-! ## A034761.P15578060186083652311

`∑{d}[n+1, A091512(#)*A288417((n+1)/#)]`
-/

namespace A034761.P15578060186083652311
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A091512 d * A288417 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A034761.P15578060186083652311

namespace A034761

/-- `∑{d}[n+1, A091512(#)*A288417((n+1)/#)]` -/
def P15578060186083652311.Spec : Prop :=
  ∀ n, P15578060186083652311.a n = A034761 (n + 1)

end A034761

/-! ## A034761.P18263420783876094652

`∑{d}[n+1, A068976(#)*A332618((n+1)/#)]`
-/

namespace A034761.P18263420783876094652
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A068976 d * A332618 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A034761.P18263420783876094652

namespace A034761

/-- `∑{d}[n+1, A068976(#)*A332618((n+1)/#)]` -/
def P18263420783876094652.Spec : Prop :=
  ∀ n, P18263420783876094652.a n = A034761 (n + 1)

end A034761

/-! ## A034761.P11990567933713032077

`∑{d}[n+1, A245212(#)*A253249((n+1)/#)]`
-/

namespace A034761.P11990567933713032077
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A245212 d * A253249 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A034761.P11990567933713032077

namespace A034761

/-- `∑{d}[n+1, A245212(#)*A253249((n+1)/#)]` -/
def P11990567933713032077.Spec : Prop :=
  ∀ n, P11990567933713032077.a n = A034761 (n + 1)

end A034761

/-!
# A034762: Dirichlet convolution of primes (with 1) with sigma(n).

The programs for A034762, the canonical program `A034762.P11132840516407714243` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A034762 has offset 1).

The definition of A034762 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A034762.P11132840516407714243

`∑{d}[n+1, #*A030014((n+1)/#)]`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A034762

/-- `∑{d}[n+1, #*A030014((n+1)/#)]` -/
def P11132840516407714243.Spec : Prop :=
  ∀ n, P11132840516407714243.a n = A034762 (n + 1)

theorem P11132840516407714243.correct : P11132840516407714243.Spec := by
  intro n
  simp only [A034762, Nat.add_sub_cancel]

end A034762

/-! ## A034762.P2518441696009923759

`∑{d}[n+1, A000203(#)*A008578((n+1)/#)]`
-/

namespace A034762.P2518441696009923759
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000203 d * A008578 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A034762.P2518441696009923759

namespace A034762

/-- `∑{d}[n+1, A000203(#)*A008578((n+1)/#)]` -/
def P2518441696009923759.Spec : Prop :=
  ∀ n, P2518441696009923759.a n = A034762 (n + 1)

end A034762

/-! ## A034762.P820905140575964495

`∑{d}[n+1, A000005(#)*A034760((n+1)/#)]`
-/

namespace A034762.P820905140575964495
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000005 d * A034760 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A034762.P820905140575964495

namespace A034762

/-- `∑{d}[n+1, A000005(#)*A034760((n+1)/#)]` -/
def P820905140575964495.Spec : Prop :=
  ∀ n, P820905140575964495.a n = A034762 (n + 1)

end A034762

/-! ## A034762.P16135560928466856234

`∑{d}[n+1, A000010(#)*A034773((n+1)/#)]`
-/

namespace A034762.P16135560928466856234
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000010 d * A034773 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A034762.P16135560928466856234

namespace A034762

/-- `∑{d}[n+1, A000010(#)*A034773((n+1)/#)]` -/
def P16135560928466856234.Spec : Prop :=
  ∀ n, P16135560928466856234.a n = A034762 (n + 1)

end A034762

/-! ## A034762.P16607785751023818121

`∑{d}[n+1, A007429(#)*A030013((n+1)/#)]`
-/

namespace A034762.P16607785751023818121
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A007429 d * A030013 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A034762.P16607785751023818121

namespace A034762

/-- `∑{d}[n+1, A007429(#)*A030013((n+1)/#)]` -/
def P16607785751023818121.Spec : Prop :=
  ∀ n, P16607785751023818121.a n = A034762 (n + 1)

end A034762

/-!
# A034763: Dirichlet convolution of primes (with 1) with Catalan numbers.

The programs for A034763, the canonical program `A034763.P16998395620027400134` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A034763 has offset 1).

The definition of A034763 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 173 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A034763.P137110523914852985

`∑{d}[n+1, A030013(#)*A034731((n+1)/#)]`
-/

namespace A034763.P137110523914852985
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A030013 d * A034731 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A034763.P137110523914852985

namespace A034763

/-- `∑{d}[n+1, A030013(#)*A034731((n+1)/#)]` -/
def P137110523914852985.Spec : Prop :=
  ∀ n, P137110523914852985.a n = A034763 (n + 1)

end A034763

/-! ## A034763.P16998395620027400134

`∑{d}[n+1, A030014(#)*A034742((n+1)/#)]`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A034763

/-- `∑{d}[n+1, A030014(#)*A034742((n+1)/#)]` -/
def P16998395620027400134.Spec : Prop :=
  ∀ n, P16998395620027400134.a n = A034763 (n + 1)

theorem P16998395620027400134.correct : P16998395620027400134.Spec := by
  intro n
  simp only [A034763, Nat.add_sub_cancel]

end A034763

/-! ## A034763.P13549828293634139902

`∑{d}[n+1, A034736(#)*A349563((n+1)/#)]`
-/

namespace A034763.P13549828293634139902
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A034736 d * A349563 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A034763.P13549828293634139902

namespace A034763

/-- `∑{d}[n+1, A034736(#)*A349563((n+1)/#)]` -/
def P13549828293634139902.Spec : Prop :=
  ∀ n, P13549828293634139902.a n = A034763 (n + 1)

end A034763

/-! ## A034763.P15134122274134070332

`∑{d}[n+1, A000108(#-1)*A008578((n+1)/#)]`
-/

namespace A034763.P15134122274134070332
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000108 (d - 1) * A008578 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A034763.P15134122274134070332

namespace A034763

/-- `∑{d}[n+1, A000108(#-1)*A008578((n+1)/#)]` -/
def P15134122274134070332.Spec : Prop :=
  ∀ n, P15134122274134070332.a n = A034763 (n + 1)

end A034763

/-!
# A034764: Dirichlet convolution of sigma(n) with Catalan numbers.

The programs for A034764, the canonical program `A034764.P3490427444608940755` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A034764 has offset 1).

The definition of A034764 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 173 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A034764.P3490427444608940755

`∑{d}[n+1, #*A034731((n+1)/#)]`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A034764

/-- `∑{d}[n+1, #*A034731((n+1)/#)]` -/
def P3490427444608940755.Spec : Prop :=
  ∀ n, P3490427444608940755.a n = A034764 (n + 1)

theorem P3490427444608940755.correct : P3490427444608940755.Spec := by
  intro n
  simp only [A034764, Nat.add_sub_cancel]

end A034764

/-! ## A034764.P2461895960229741467

`∑{d}[n+1, A000005(#)*A034766((n+1)/#)]`
-/

namespace A034764.P2461895960229741467
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000005 d * A034766 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A034764.P2461895960229741467

namespace A034764

/-- `∑{d}[n+1, A000005(#)*A034766((n+1)/#)]` -/
def P2461895960229741467.Spec : Prop :=
  ∀ n, P2461895960229741467.a n = A034764 (n + 1)

end A034764

/-! ## A034764.P804027007802605957

`∑{d}[n+1, A000010(#)*A034774((n+1)/#)]`
-/

namespace A034764.P804027007802605957
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000010 d * A034774 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A034764.P804027007802605957

namespace A034764

/-- `∑{d}[n+1, A000010(#)*A034774((n+1)/#)]` -/
def P804027007802605957.Spec : Prop :=
  ∀ n, P804027007802605957.a n = A034764 (n + 1)

end A034764

/-! ## A034764.P8455745637069011955

`∑{d}[n+1, A007429(#)*A034742((n+1)/#)]`
-/

namespace A034764.P8455745637069011955
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A007429 d * A034742 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A034764.P8455745637069011955

namespace A034764

/-- `∑{d}[n+1, A007429(#)*A034742((n+1)/#)]` -/
def P8455745637069011955.Spec : Prop :=
  ∀ n, P8455745637069011955.a n = A034764 (n + 1)

end A034764

/-! ## A034764.P3366969934625124053

`∑{d}[n+1, A034737(#)*A349563((n+1)/#)]`
-/

namespace A034764.P3366969934625124053
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A034737 d * A349563 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A034764.P3366969934625124053

namespace A034764

/-- `∑{d}[n+1, A034737(#)*A349563((n+1)/#)]` -/
def P3366969934625124053.Spec : Prop :=
  ∀ n, P3366969934625124053.a n = A034764 (n + 1)

end A034764

/-! ## A034764.P13691571436776360328

`∑{d}[n+1, A000108(#-1)*A000203((n+1)/#)]`
-/

namespace A034764.P13691571436776360328
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000108 (d - 1) * A000203 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A034764.P13691571436776360328

namespace A034764

/-- `∑{d}[n+1, A000108(#-1)*A000203((n+1)/#)]` -/
def P13691571436776360328.Spec : Prop :=
  ∀ n, P13691571436776360328.a n = A034764 (n + 1)

end A034764

/-!
# A034765: Dirichlet convolution of sigma(n) with Bell numbers.

The programs for A034765, there is no canonical definition to state claims against.
-/

/-! ## A034765.P1577596825274842972

`∑{d}[n+1, #*A034732((n+1)/#)]`
-/

namespace A034765.P1577596825274842972
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * A034732 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A034765.P1577596825274842972

/-! ## A034765.P2518717595413087844

`∑{d}[n+1, A000005(#)*A034767((n+1)/#)]`
-/

namespace A034765.P2518717595413087844
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000005 d * A034767 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A034765.P2518717595413087844

/-! ## A034765.P14064411321410226580

`∑{d}[n+1, A000010(#)*A034775((n+1)/#)]`
-/

namespace A034765.P14064411321410226580
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000010 d * A034775 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A034765.P14064411321410226580

/-! ## A034765.P15019026165033121473

`∑{d}[n+1, A007429(#)*A034743((n+1)/#)]`
-/

namespace A034765.P15019026165033121473
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A007429 d * A034743 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A034765.P15019026165033121473

/-! ## A034765.P7130460002490110944

`∑{d}[n+1, A034767(#)*A179941((n+1)/#)]`
-/

namespace A034765.P7130460002490110944
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A034767 d * A179941 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A034765.P7130460002490110944

/-! ## A034765.P3993901591577229427

`∑{d}[n+1, A000203(#)*A000110((n+1)/#-1)]`
-/

namespace A034765.P3993901591577229427
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000203 d * A000110 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ) - 1)).toNat

end

end A034765.P3993901591577229427

/-!
# A034766: Dirichlet convolution of phi(n) with Catalan numbers.

The programs for A034766, the canonical program `A034766.P9231521320511394635` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A034766 has offset 1).

The definition of A034766 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 173 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A034766.P9231521320511394635

`∑{d}[n+1, #*A034742((n+1)/#)]`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A034766

/-- `∑{d}[n+1, #*A034742((n+1)/#)]` -/
def P9231521320511394635.Spec : Prop :=
  ∀ n, P9231521320511394635.a n = A034766 (n + 1)

theorem P9231521320511394635.correct : P9231521320511394635.Spec := by
  intro n
  simp only [A034766, Nat.add_sub_cancel]

end A034766

/-! ## A034766.P5617901865050062465

`∑{d}[n+1, A007427(#)*A034764((n+1)/#)]`
-/

namespace A034766.P5617901865050062465
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A007427 d * A034764 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A034766.P5617901865050062465

namespace A034766

/-- `∑{d}[n+1, A007427(#)*A034764((n+1)/#)]` -/
def P5617901865050062465.Spec : Prop :=
  ∀ n, P5617901865050062465.a n = A034766 (n + 1)

end A034766

/-! ## A034766.P6098761463766177514

`∑{d}[n+1, A007432(#)*A034774((n+1)/#)]`
-/

namespace A034766.P6098761463766177514
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A007432 d * A034774 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A034766.P6098761463766177514

namespace A034766

/-- `∑{d}[n+1, A007432(#)*A034774((n+1)/#)]` -/
def P6098761463766177514.Spec : Prop :=
  ∀ n, P6098761463766177514.a n = A034766 (n + 1)

end A034766

/-! ## A034766.P10201183331647743813

`∑{d}[n+1, A034738(#)*A349563((n+1)/#)]`
-/

namespace A034766.P10201183331647743813
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A034738 d * A349563 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A034766.P10201183331647743813

namespace A034766

/-- `∑{d}[n+1, A034738(#)*A349563((n+1)/#)]` -/
def P10201183331647743813.Spec : Prop :=
  ∀ n, P10201183331647743813.a n = A034766 (n + 1)

end A034766

/-! ## A034766.P1886278568418300087

`∑{d}[n+1, A000108(#-1)*A000010((n+1)/#)]`
-/

namespace A034766.P1886278568418300087
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000108 (d - 1) * A000010 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A034766.P1886278568418300087

namespace A034766

/-- `∑{d}[n+1, A000108(#-1)*A000010((n+1)/#)]` -/
def P1886278568418300087.Spec : Prop :=
  ∀ n, P1886278568418300087.a n = A034766 (n + 1)

end A034766

/-! ## A034766.P9793731001283517230

`∑{d}[n+1, A000912(#-1)*A062570((n+1)/#)]`
-/

namespace A034766.P9793731001283517230
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000912 (d - 1) * A062570 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A034766.P9793731001283517230

namespace A034766

/-- `∑{d}[n+1, A000912(#-1)*A062570((n+1)/#)]` -/
def P9793731001283517230.Spec : Prop :=
  ∀ n, P9793731001283517230.a n = A034766 (n + 1)

end A034766

/-!
# A034767: Dirichlet convolution of phi(n) with Bell numbers.

The programs for A034767, there is no canonical definition to state claims against.
-/

/-! ## A034767.P16581133239090302025

`∑{d}[n+1, #*A034743((n+1)/#)]`
-/

namespace A034767.P16581133239090302025
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * A034743 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A034767.P16581133239090302025

/-! ## A034767.P11881905251544040350

`∑{d}[n+1, A007427(#)*A034765((n+1)/#)]`
-/

namespace A034767.P11881905251544040350
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A007427 d * A034765 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A034767.P11881905251544040350

/-! ## A034767.P7751024673588778595

`∑{d}[n+1, A007432(#)*A034775((n+1)/#)]`
-/

namespace A034767.P7751024673588778595
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A007432 d * A034775 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A034767.P7751024673588778595

/-! ## A034767.P1166648733449077917

`∑{d}[n+1, A000010(#)*A000110((n+1)/#-1)]`
-/

namespace A034767.P1166648733449077917
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000010 d * A000110 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ) - 1)).toNat

end

end A034767.P1166648733449077917

/-!
# A034768: Dirichlet convolution of Catalan numbers with themselves.

The programs for A034768, the canonical program `A034768.P13889137241695126334` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A034768 has offset 1).

The definition of A034768 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 172 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A034768.P13889137241695126334

`∑{d}[n+1, A034731(#)*A034742((n+1)/#)]`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A034768

/-- `∑{d}[n+1, A034731(#)*A034742((n+1)/#)]` -/
def P13889137241695126334.Spec : Prop :=
  ∀ n, P13889137241695126334.a n = A034768 (n + 1)

theorem P13889137241695126334.correct : P13889137241695126334.Spec := by
  intro n
  simp only [A034768, Nat.add_sub_cancel]

end A034768

/-! ## A034768.P8358986495130663970

`∑{d}[n+1, A034739(#)*A349563((n+1)/#)]`
-/

namespace A034768.P8358986495130663970
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A034739 d * A349563 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A034768.P8358986495130663970

namespace A034768

/-- `∑{d}[n+1, A034739(#)*A349563((n+1)/#)]` -/
def P8358986495130663970.Spec : Prop :=
  ∀ n, P8358986495130663970.a n = A034768 (n + 1)

end A034768

/-! ## A034768.P15649375729696058499

`∑{d}[n+1, A000108(#-1)*A000108((n+1)/#-1)]`
-/

namespace A034768.P15649375729696058499
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000108 (d - 1) * A000108 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ) - 1)).toNat

end

end A034768.P15649375729696058499

namespace A034768

/-- `∑{d}[n+1, A000108(#-1)*A000108((n+1)/#-1)]` -/
def P15649375729696058499.Spec : Prop :=
  ∀ n, P15649375729696058499.a n = A034768 (n + 1)

end A034768

/-! ## A034768.P11601210874894723229

`A004277(A034749(n+1))-A034744(n+1)`
-/

namespace A034768.P11601210874894723229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A034749 (n + 1)).toNat - A034744 (n + 1)

end

end A034768.P11601210874894723229

namespace A034768

/-- `A004277(A034749(n+1))-A034744(n+1)` -/
def P11601210874894723229.Spec : Prop :=
  ∀ n, P11601210874894723229.a n = A034768 (n + 1)

end A034768

/-! ## A034768.P7018019006135685860

`A004277(A034749(n+1))-∑{d}[n+1, A000045((n+1)/#)*A000045(#)]`
-/

namespace A034768.P7018019006135685860
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A034749 (n + 1)).toNat - ∑ d ∈ Nat.divisors (f1 n), A000045 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat * A000045 d

end

end A034768.P7018019006135685860

namespace A034768

/-- `A004277(A034749(n+1))-∑{d}[n+1, A000045((n+1)/#)*A000045(#)]` -/
def P7018019006135685860.Spec : Prop :=
  ∀ n, P7018019006135685860.a n = A034768 (n + 1)

end A034768

/-!
# A034769: Dirichlet convolution of Catalan numbers with Bell numbers.

The programs for A034769, there is no canonical definition to state claims against.
-/

/-! ## A034769.P8949682588264530920

`∑{d}[n+1, A034731(#)*A034743((n+1)/#)]`
-/

namespace A034769.P8949682588264530920
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A034731 d * A034743 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A034769.P8949682588264530920

/-! ## A034769.P13050623706773752891

`∑{d}[n+1, A034732(#)*A034742((n+1)/#)]`
-/

namespace A034769.P13050623706773752891
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A034732 d * A034742 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A034769.P13050623706773752891

/-! ## A034769.P5123626622109394886

`∑{d}[n+1, A034740(#)*A349563((n+1)/#)]`
-/

namespace A034769.P5123626622109394886
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A034740 d * A349563 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A034769.P5123626622109394886

/-! ## A034769.P12421552496168725849

`∑{d}[n+1, A000108(#-1)*A000110((n+1)/#-1)]`
-/

namespace A034769.P12421552496168725849
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000108 (d - 1) * A000110 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ) - 1)).toNat

end

end A034769.P12421552496168725849

/-! ## A034769.P1687237978192296360

`A014682(A034770(n+1)+A034768(n+1))`
-/

namespace A034769.P1687237978192296360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A034770 (n + 1) + A034768 (n + 1)).toNat

end

end A034769.P1687237978192296360

/-!
# A034770: Dirichlet convolution of Bell numbers with themselves.

The programs for A034770, there is no canonical definition to state claims against.
-/

/-! ## A034770.P14093201961280499982

`∑{d}[n+1, A034732(#)*A034743((n+1)/#)]`
-/

namespace A034770.P14093201961280499982
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A034732 d * A034743 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A034770.P14093201961280499982

/-! ## A034770.P10844241298453246550

`∑{d}[n+1, A000110(#-1)*A000110((n+1)/#-1)]`
-/

namespace A034770.P10844241298453246550
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000110 (d - 1) * A000110 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ) - 1)).toNat

end

end A034770.P10844241298453246550

/-! ## A034770.P3902973472763528212

`A004277(A034750(n+1))-A034744(n+1)`
-/

namespace A034770.P3902973472763528212
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A034750 (n + 1)).toNat - A034744 (n + 1)

end

end A034770.P3902973472763528212

/-! ## A034770.P18012617064622047842

`A004277(A034769(n+1))-A034768(n+1)`
-/

namespace A034770.P18012617064622047842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A034769 (n + 1)).toNat - A034768 (n + 1)

end

end A034770.P18012617064622047842

/-!
# A034771: Dirichlet convolution of d(n) (# of divisors) with b_n=2^(n-1).

The programs for A034771, the canonical program `A034771.P14136708575511469544` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A034771 has offset 1).

The definition of A034771 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 333 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A034771.P14136708575511469544

`∑{d}[n+1, A034729(#)]`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A034771

/-- `∑{d}[n+1, A034729(#)]` -/
def P14136708575511469544.Spec : Prop :=
  ∀ n, P14136708575511469544.a n = A034771 (n + 1)

theorem P14136708575511469544.correct : P14136708575511469544.Spec := by
  intro n
  simp only [A034771, Nat.add_sub_cancel]

end A034771

/-! ## A034771.P10599923921348892242

`∑{d}[n+1, A000740(#)*A007425((n+1)/#)]`
-/

namespace A034771.P10599923921348892242
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000740 d * A007425 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A034771.P10599923921348892242

namespace A034771

/-- `∑{d}[n+1, A000740(#)*A007425((n+1)/#)]` -/
def P10599923921348892242.Spec : Prop :=
  ∀ n, P10599923921348892242.a n = A034771 (n + 1)

end A034771

/-! ## A034771.P7699259086517754918

`∑{d}[n+1, A023900(#)*A034737((n+1)/#)]`
-/

namespace A034771.P7699259086517754918
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A023900 d * A034737 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A034771.P7699259086517754918

namespace A034771

/-- `∑{d}[n+1, A023900(#)*A034737((n+1)/#)]` -/
def P7699259086517754918.Spec : Prop :=
  ∀ n, P7699259086517754918.a n = A034771 (n + 1)

end A034771

/-! ## A034771.P12872095193802836861

`∑{d}[n+1, A011946(#)*A133700((n+1)/#)]`
-/

namespace A034771.P12872095193802836861
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A011946 d * A133700 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A034771.P12872095193802836861

namespace A034771

/-- `∑{d}[n+1, A011946(#)*A133700((n+1)/#)]` -/
def P12872095193802836861.Spec : Prop :=
  ∀ n, P12872095193802836861.a n = A034771 (n + 1)

end A034771

/-! ## A034771.P8581080497282350095

`∑{d}[n+1, A007426(#)*A296302((n+1)/#)]`
-/

namespace A034771.P8581080497282350095
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A007426 d * A296302 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A034771.P8581080497282350095

namespace A034771

/-- `∑{d}[n+1, A007426(#)*A296302((n+1)/#)]` -/
def P8581080497282350095.Spec : Prop :=
  ∀ n, P8581080497282350095.a n = A034771 (n + 1)

end A034771

/-! ## A034771.P2705189443729891114

`∑{d}[n+1, A007429(#)*A349570((n+1)/#)]`
-/

namespace A034771.P2705189443729891114
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A007429 d * A349570 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A034771.P2705189443729891114

namespace A034771

/-- `∑{d}[n+1, A007429(#)*A349570((n+1)/#)]` -/
def P2705189443729891114.Spec : Prop :=
  ∀ n, P2705189443729891114.a n = A034771 (n + 1)

end A034771

/-! ## A034771.P7980098710486706633

`∑{d}[n+1, A034772(#)*A349566((n+1)/#)]`
-/

namespace A034771.P7980098710486706633
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A034772 d * A349566 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A034771.P7980098710486706633

namespace A034771

/-- `∑{d}[n+1, A034772(#)*A349566((n+1)/#)]` -/
def P7980098710486706633.Spec : Prop :=
  ∀ n, P7980098710486706633.a n = A034771 (n + 1)

end A034771

/-! ## A034771.P265656183680629624

`∑{d}[n+1, A038712(#)*A373275((n+1)/#)]`
-/

namespace A034771.P265656183680629624
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A038712 d * A373275 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A034771.P265656183680629624

namespace A034771

/-- `∑{d}[n+1, A038712(#)*A373275((n+1)/#)]` -/
def P265656183680629624.Spec : Prop :=
  ∀ n, P265656183680629624.a n = A034771 (n + 1)

end A034771

/-! ## A034771.P302296426081306746

`∑{d}[n+1, A000005(#)*A000079((n+1)/#-1)]`
-/

namespace A034771.P302296426081306746
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000005 d * A000079 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ) - 1)).toNat

end

end A034771.P302296426081306746

namespace A034771

/-- `∑{d}[n+1, A000005(#)*A000079((n+1)/#-1)]` -/
def P302296426081306746.Spec : Prop :=
  ∀ n, P302296426081306746.a n = A034771 (n + 1)

end A034771

/-! ## A034771.P3107791089339307799

`∑{d}[n+1, A001227(#)*A127804((n+1)/#-1)]`
-/

namespace A034771.P3107791089339307799
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A001227 d * A127804 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ) - 1)).toNat

end

end A034771.P3107791089339307799

namespace A034771

/-- `∑{d}[n+1, A001227(#)*A127804((n+1)/#-1)]` -/
def P3107791089339307799.Spec : Prop :=
  ∀ n, P3107791089339307799.a n = A034771 (n + 1)

end A034771

/-! ## A034771.P16822687752465867570

`∑{d}[n+1, A051437(#-1)*A174273((n+1)/#)]`
-/

namespace A034771.P16822687752465867570
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A051437 (d - 1) * A174273 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A034771.P16822687752465867570

namespace A034771

/-- `∑{d}[n+1, A051437(#-1)*A174273((n+1)/#)]` -/
def P16822687752465867570.Spec : Prop :=
  ∀ n, P16822687752465867570.a n = A034771 (n + 1)

end A034771

/-! ## A034771.P16082013956926637691

`∑{d}[n+1, A034774(#)*A349564((n+1)/#)]`
-/

namespace A034771.P16082013956926637691
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A034774 d * A349564 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A034771.P16082013956926637691

namespace A034771

/-- `∑{d}[n+1, A034774(#)*A349564((n+1)/#)]` -/
def P16082013956926637691.Spec : Prop :=
  ∀ n, P16082013956926637691.a n = A034771 (n + 1)

end A034771

/-!
# A034772: Dirichlet convolution of d(n) (number of divisors) with Fibonacci numbers.

The programs for A034772, the canonical program `A034772.P11684027232908170233` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A034772 has offset 1).

The definition of A034772 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 480 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A034772.P11684027232908170233

`∑{d}[n+1, A007435(#)]`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A034772

/-- `∑{d}[n+1, A007435(#)]` -/
def P11684027232908170233.Spec : Prop :=
  ∀ n, P11684027232908170233.a n = A034772 (n + 1)

theorem P11684027232908170233.correct : P11684027232908170233.Spec := by
  intro n
  simp only [A034772, Nat.add_sub_cancel]

end A034772

/-! ## A034772.P1003657839071466940

`∑{d}[n+1, A000045(#)*A000005((n+1)/#)]`
-/

namespace A034772.P1003657839071466940
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000045 d * A000005 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A034772.P1003657839071466940

namespace A034772

/-- `∑{d}[n+1, A000045(#)*A000005((n+1)/#)]` -/
def P1003657839071466940.Spec : Prop :=
  ∀ n, P1003657839071466940.a n = A034772 (n + 1)

end A034772

/-! ## A034772.P68133630079271863

`∑{d}[n+1, A007425(#)*A007436((n+1)/#)]`
-/

namespace A034772.P68133630079271863
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A007425 d * A007436 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A034772.P68133630079271863

namespace A034772

/-- `∑{d}[n+1, A007425(#)*A007436((n+1)/#)]` -/
def P68133630079271863.Spec : Prop :=
  ∀ n, P68133630079271863.a n = A034772 (n + 1)

end A034772

/-! ## A034772.P13257650016209881073

`∑{d}[n+1, A023900(#)*A034747((n+1)/#)]`
-/

namespace A034772.P13257650016209881073
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A023900 d * A034747 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A034772.P13257650016209881073

namespace A034772

/-- `∑{d}[n+1, A023900(#)*A034747((n+1)/#)]` -/
def P13257650016209881073.Spec : Prop :=
  ∀ n, P13257650016209881073.a n = A034772 (n + 1)

end A034772

/-! ## A034772.P3945301993536697856

`∑{d}[n+1, A066769(#)*A130054((n+1)/#)]`
-/

namespace A034772.P3945301993536697856
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A066769 d * A130054 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A034772.P3945301993536697856

namespace A034772

/-- `∑{d}[n+1, A066769(#)*A130054((n+1)/#)]` -/
def P3945301993536697856.Spec : Prop :=
  ∀ n, P3945301993536697856.a n = A034772 (n + 1)

end A034772

/-! ## A034772.P17764402953488181405

`∑{d}[n+1, A108700(#)*A133700((n+1)/#)]`
-/

namespace A034772.P17764402953488181405
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A108700 d * A133700 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A034772.P17764402953488181405

namespace A034772

/-- `∑{d}[n+1, A108700(#)*A133700((n+1)/#)]` -/
def P17764402953488181405.Spec : Prop :=
  ∀ n, P17764402953488181405.a n = A034772 (n + 1)

end A034772

/-! ## A034772.P16126110842723174317

`∑{d}[n+1, A034771(#)*A349565((n+1)/#)]`
-/

namespace A034772.P16126110842723174317
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A034771 d * A349565 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A034772.P16126110842723174317

namespace A034772

/-- `∑{d}[n+1, A034771(#)*A349565((n+1)/#)]` -/
def P16126110842723174317.Spec : Prop :=
  ∀ n, P16126110842723174317.a n = A034772 (n + 1)

end A034772

/-!
# A034773: Dirichlet convolution of d(n) (number of divisors of n) with primes (with 1).

The programs for A034773, the canonical program `A034773.P6091639492477816883` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A034773 has offset 1).

The definition of A034773 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A034773.P6091639492477816883

`∑{d}[n+1, A030014(#)]`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A034773

/-- `∑{d}[n+1, A030014(#)]` -/
def P6091639492477816883.Spec : Prop :=
  ∀ n, P6091639492477816883.a n = A034773 (n + 1)

theorem P6091639492477816883.correct : P6091639492477816883.Spec := by
  intro n
  simp only [A034773, Nat.add_sub_cancel]

end A034773

/-! ## A034773.P9941504860139369520

`∑{d}[n+1, A000005(#)*A008578((n+1)/#)]`
-/

namespace A034773.P9941504860139369520
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000005 d * A008578 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A034773.P9941504860139369520

namespace A034773

/-- `∑{d}[n+1, A000005(#)*A008578((n+1)/#)]` -/
def P9941504860139369520.Spec : Prop :=
  ∀ n, P9941504860139369520.a n = A034773 (n + 1)

end A034773

/-! ## A034773.P11970168624233607870

`∑{d}[n+1, A007425(#)*A030013((n+1)/#)]`
-/

namespace A034773.P11970168624233607870
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A007425 d * A030013 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A034773.P11970168624233607870

namespace A034773

/-- `∑{d}[n+1, A007425(#)*A030013((n+1)/#)]` -/
def P11970168624233607870.Spec : Prop :=
  ∀ n, P11970168624233607870.a n = A034773 (n + 1)

end A034773

/-! ## A034773.P16087698719342965990

`∑{d}[n+1, A023900(#)*A034762((n+1)/#)]`
-/

namespace A034773.P16087698719342965990
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A023900 d * A034762 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A034773.P16087698719342965990

namespace A034773

/-- `∑{d}[n+1, A023900(#)*A034762((n+1)/#)]` -/
def P16087698719342965990.Spec : Prop :=
  ∀ n, P16087698719342965990.a n = A034773 (n + 1)

end A034773

/-!
# A034774: Dirichlet convolution of d(n) (# of divisors) with Catalan numbers.

The programs for A034774, the canonical program `A034774.P12219374095223123193` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A034774 has offset 1).

The definition of A034774 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 173 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A034774.P12219374095223123193

`∑{d}[n+1, A034731(#)]`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A034774

/-- `∑{d}[n+1, A034731(#)]` -/
def P12219374095223123193.Spec : Prop :=
  ∀ n, P12219374095223123193.a n = A034774 (n + 1)

theorem P12219374095223123193.correct : P12219374095223123193.Spec := by
  intro n
  simp only [A034774, Nat.add_sub_cancel]

end A034774

/-! ## A034774.P1807984169864205661

`∑{d}[n+1, A007425(#)*A034742((n+1)/#)]`
-/

namespace A034774.P1807984169864205661
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A007425 d * A034742 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A034774.P1807984169864205661

namespace A034774

/-- `∑{d}[n+1, A007425(#)*A034742((n+1)/#)]` -/
def P1807984169864205661.Spec : Prop :=
  ∀ n, P1807984169864205661.a n = A034774 (n + 1)

end A034774

/-! ## A034774.P10753663485690333452

`∑{d}[n+1, A023900(#)*A034764((n+1)/#)]`
-/

namespace A034774.P10753663485690333452
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A023900 d * A034764 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A034774.P10753663485690333452

namespace A034774

/-- `∑{d}[n+1, A023900(#)*A034764((n+1)/#)]` -/
def P10753663485690333452.Spec : Prop :=
  ∀ n, P10753663485690333452.a n = A034774 (n + 1)

end A034774

/-! ## A034774.P14545496360063162347

`∑{d}[n+1, A034771(#)*A349563((n+1)/#)]`
-/

namespace A034774.P14545496360063162347
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A034771 d * A349563 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A034774.P14545496360063162347

namespace A034774

/-- `∑{d}[n+1, A034771(#)*A349563((n+1)/#)]` -/
def P14545496360063162347.Spec : Prop :=
  ∀ n, P14545496360063162347.a n = A034774 (n + 1)

end A034774

/-! ## A034774.P14943938086025148937

`∑{d}[n+1, A000108(#-1)*A000005((n+1)/#)]`
-/

namespace A034774.P14943938086025148937
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000108 (d - 1) * A000005 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A034774.P14943938086025148937

namespace A034774

/-- `∑{d}[n+1, A000108(#-1)*A000005((n+1)/#)]` -/
def P14943938086025148937.Spec : Prop :=
  ∀ n, P14943938086025148937.a n = A034774 (n + 1)

end A034774

/-! ## A034774.P4127033295654792647

`∑{d}[n+1, A000912(#-1)*A129628((n+1)/#)]`
-/

namespace A034774.P4127033295654792647
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000912 (d - 1) * A129628 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A034774.P4127033295654792647

namespace A034774

/-- `∑{d}[n+1, A000912(#-1)*A129628((n+1)/#)]` -/
def P4127033295654792647.Spec : Prop :=
  ∀ n, P4127033295654792647.a n = A034774 (n + 1)

end A034774

/-!
# A034775: Dirichlet convolution of d(n) (# of divisors) with Bell numbers.

The programs for A034775, there is no canonical definition to state claims against.
-/

/-! ## A034775.P1480111799361218008

`∑{d}[n+1, A034732(#)]`
-/

namespace A034775.P1480111799361218008
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A034732 d

end

end A034775.P1480111799361218008

/-! ## A034775.P10371961556644726100

`record[∑{d}[A117910(n), A034732(#)]]`
-/

namespace A034775.P10371961556644726100
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117910 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n).natAbs, A034732 d

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A034775.P10371961556644726100

/-! ## A034775.P11060242203166029996

`∑{d}[n+1, A007425(#)*A034743((n+1)/#)]`
-/

namespace A034775.P11060242203166029996
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A007425 d * A034743 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A034775.P11060242203166029996

/-! ## A034775.P4601239791716308566

`∑{d}[n+1, A023900(#)*A034765((n+1)/#)]`
-/

namespace A034775.P4601239791716308566
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A023900 d * A034765 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A034775.P4601239791716308566

/-! ## A034775.P18116530616507845439

`∑{d}[n+1, A000005(#)*A000110((n+1)/#-1)]`
-/

namespace A034775.P18116530616507845439
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000005 d * A000110 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ) - 1)).toNat

end

end A034775.P18116530616507845439

/-!
# A034776: Gozinta numbers: possible number of gozinta chains for some positive integer.

The programs for A034776, there is no canonical definition to state claims against.
-/

/-! ## A034776.P10560070438238145735

`eq[1, char[A238962(n)]]`
-/

namespace A034776.P10560070438238145735
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238962 n

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A034776.P10560070438238145735

/-! ## A034776.P5667943888958874563

`eq[1, char[A238975(n)]]`
-/

namespace A034776.P5667943888958874563
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238975 n

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A034776.P5667943888958874563

/-! ## A034776.P4677503460811458931

`eq[1, char[A050324(n+1)]]`
-/

namespace A034776.P4677503460811458931
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050324 (n + 1)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A034776.P4677503460811458931

/-! ## A034776.P4044570064869829779

`lt[2, char[A238975(n+1)]+2]`
-/

namespace A034776.P4044570064869829779
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238975 (n + 1)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f3 j = (n : ℤ) then 1 else 0) + 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A034776.P4044570064869829779

/-! ## A034776.P12876580190433875170

`eq[char[A074206(n)], A178334(n)]`
-/

namespace A034776.P12876580190433875170
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074206 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178334 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A034776.P12876580190433875170

/-!
# A034777: Dirichlet convolution of [ 1,1,1,... ] with Ramanujan numbers (A000594).

The programs for A034777, there is no canonical definition to state claims against.
-/

/-! ## A034777.P7903785087176098511

`∑{d}[n+1, A000594(#)]`
-/

namespace A034777.P7903785087176098511
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000594 d

end

end A034777.P7903785087176098511

/-! ## A034777.P1149782554351443069

`∑{d}[n+1, A034779(#)*A181104((n+1)/#)]`
-/

namespace A034777.P1149782554351443069
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A034779 d * A181104 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A034777.P1149782554351443069

/-! ## A034777.P11942580461052541121

`∑{d}[n+1, A000005(#)*A308492((n+1)/#)]`
-/

namespace A034777.P11942580461052541121
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000005 d * A308492 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A034777.P11942580461052541121

/-!
# A034778: Dirichlet convolution of Ramanujan numbers (A000594) with themselves.

The programs for A034778, there is no canonical definition to state claims against.
-/

/-! ## A034778.P7572538471979457081

`∑{d}[n+1, A000594(#)*A000594((n+1)/#)]`
-/

namespace A034778.P7572538471979457081
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000594 d * A000594 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A034778.P7572538471979457081

/-! ## A034778.P261055817007148772

`∑{d}[n+1, A008683(#)*A034779((n+1)/#)]`
-/

namespace A034778.P261055817007148772
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008683 d * A034779 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A034778.P261055817007148772

/-! ## A034778.P17277153155881842039

`∑{d}[n+1, A034777(#)*A308492((n+1)/#)]`
-/

namespace A034778.P17277153155881842039
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A034777 d * A308492 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A034778.P17277153155881842039

/-!
# A034779: Dirichlet convolution of [ 1,1,1,... ] with A034778.

The programs for A034779, there is no canonical definition to state claims against.
-/

/-! ## A034779.P18114095425788860324

`∑{d}[n+1, A034778(#)]`
-/

namespace A034779.P18114095425788860324
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A034778 d

end

end A034779.P18114095425788860324

/-! ## A034779.P10710021943817446512

`∑{d}[n+1, A000594(#)*A034777((n+1)/#)]`
-/

namespace A034779.P10710021943817446512
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000594 d * A034777 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A034779.P10710021943817446512

/-!
# A034780: Numbers k such that A034693(k) = 4.

The programs for A034780, there is no canonical definition to state claims against.
-/

/-! ## A034780.P11437910579093400171

`floor(A034847(n+1)/4)`
-/

namespace A034780.P11437910579093400171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A034847 (n + 1) : ℚ) / 4⌋

end

end A034780.P11437910579093400171

/-! ## A034780.P10661276817615366351

`round(A034847(2*n-n+1)/4)`
-/

namespace A034780.P10661276817615366351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A034847 ((2 * n : ℤ) - (n : ℤ) + 1).toNat : ℚ) / 4)

end

end A034780.P10661276817615366351

/-! ## A034780.P4184521930379302074

`eq[4, A034693(n+1)]+1`
-/

namespace A034780.P4184521930379302074
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034693 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A034780.P4184521930379302074

/-! ## A034780.P2760578071987168591

`eq[2, A034693(A028310(n))-2]`
-/

namespace A034780.P2760578071987168591
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034693 (A028310 n).toNat - 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A034780.P2760578071987168591

/-! ## A034780.P12436717270801891050

`A000720(p?[(5-A034693(n+1))*A000040(n+1)])`
-/

namespace A034780.P12436717270801891050
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (5 - A034693 (n + 1)) * A000040 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A034780.P12436717270801891050

/-! ## A034780.P3106257416625569233

`A002265(A034847(n+1))`
-/

namespace A034780.P3106257416625569233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (A034847 (n + 1)).toNat

end

end A034780.P3106257416625569233

/-! ## A034780.P5453318436055388135

`A110657(A034847(n+1)-1)`
-/

namespace A034780.P5453318436055388135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110657 (A034847 (n + 1) - 1).toNat

end

end A034780.P5453318436055388135

/-! ## A034780.P1835807253920187774

`A110653(A034847(n+1)-2)`
-/

namespace A034780.P1835807253920187774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110653 (A034847 (n + 1) - 2).toNat

end

end A034780.P1835807253920187774

/-! ## A034780.P12573468869469751753

`A003602(A034847(n+1)-3)`
-/

namespace A034780.P12573468869469751753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003602 (A034847 (n + 1) - 3).toNat

end

end A034780.P12573468869469751753

/-!
# A034781: Triangle of number of rooted trees with n >= 2 nodes and height h >= 1.

The programs for A034781, there is no canonical definition to state claims against.
-/

/-! ## A034781.P6808852290989763248

`A002024(A263859(n+1)^A254730(n))`
-/

namespace A034781.P6808852290989763248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002024 (SequenceMachineLib.roundAway ((A263859 (n + 1) : ℚ) ^ (A254730 n : ℤ))).toNat

end

end A034781.P6808852290989763248

/-! ## A034781.P9284000826115499916

`A008619(A328083(n+1)^A254730(n))`
-/

namespace A034781.P9284000826115499916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (SequenceMachineLib.roundAway ((A328083 (n + 1) : ℚ) ^ (A254730 n : ℤ))).toNat

end

end A034781.P9284000826115499916

/-! ## A034781.P15700293016814726906

`A002024(C(A263859(n+1), A254730(n)))`
-/

namespace A034781.P15700293016814726906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002024 (Nat.choose (A263859 (n + 1)).toNat (A254730 n).toNat)

end

end A034781.P15700293016814726906

/-! ## A034781.P4122528932897693182

`A002024(A263859(n+1)%A347770(2*(n+2)))`
-/

namespace A034781.P4122528932897693182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002024 (Int.tmod (A263859 (n + 1)) (A347770 (2 * (n + 2)))).toNat

end

end A034781.P4122528932897693182

/-! ## A034781.P7261285949581537951

`A018293(A026769(n))`
-/

namespace A034781.P7261285949581537951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018293 (A026769 n).toNat

end

end A034781.P7261285949581537951

/-!
# A034782: Numbers n such that A034693(n) = 3: 3n + 1 is prime, but neither n + 1 nor 2n + 1.

The programs for A034782, there is no canonical definition to state claims against.
-/

/-! ## A034782.P12845498307597421543

`(A034848(n+1)-1)/3`
-/

namespace A034782.P12845498307597421543
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A034848 (n + 1) - 1 : ℚ) / 3

end

end A034782.P12845498307597421543

/-! ## A034782.P5576969315718687429

`A000010(A034848(n+1))/3`
-/

namespace A034782.P5576969315718687429
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000010 (A034848 (n + 1)).toNat : ℚ) / 3

end

end A034782.P5576969315718687429

/-! ## A034782.P15589457556811488674

`∩[A024892(n+1), A064673(n+1)]`
-/

namespace A034782.P15589457556811488674
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024892 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064673 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A034782.P15589457556811488674

/-! ## A034782.P7626040325877922807

`eq[3, A034693(n+1)]+1`
-/

namespace A034782.P7626040325877922807
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034693 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A034782.P7626040325877922807

/-! ## A034782.P13467658876995675786

`2*(eq[3, A016014(n+1)]+1)`
-/

namespace A034782.P13467658876995675786
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016014 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A034782.P13467658876995675786

/-! ## A034782.P10655905217915254153

`∩[A024892(n+1), A166602(n+1)]`
-/

namespace A034782.P10655905217915254153
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024892 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166602 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A034782.P10655905217915254153

/-! ## A034782.P3861975785909905966

`∩[A024892(n+1), A123608(n+1)]`
-/

namespace A034782.P3861975785909905966
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024892 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123608 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A034782.P3861975785909905966

/-! ## A034782.P4382679912779013865

`eq[1, A034693(A028310(n))-2]`
-/

namespace A034782.P4382679912779013865
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034693 (A028310 n).toNat - 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A034782.P4382679912779013865

/-! ## A034782.P17338020980501015360

`A002264(A034848(n+1))`
-/

namespace A034782.P17338020980501015360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (A034848 (n + 1)).toNat

end

end A034782.P17338020980501015360

/-! ## A034782.P10899870712803861939

`eq[A245511(2*(n+1))+A245511(n+3), A245511(3*n+2)]`
-/

namespace A034782.P10899870712803861939
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245511 (2 * (n + 1)) + A245511 (n + 3)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245511 (3 * n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A034782.P10899870712803861939

/-! ## A034782.P772256939470205772

`2*eq[3, A251717(2*n+1)]`
-/

namespace A034782.P772256939470205772
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251717 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A034782.P772256939470205772

/-! ## A034782.P5911632008919071175

`eq[A174971(n), A251717(n+1)]`
-/

namespace A034782.P5911632008919071175
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174971 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251717 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A034782.P5911632008919071175

/-! ## A034782.P12991298548922344284

`eq[A057816(n+1), A251717(n+1)]`
-/

namespace A034782.P12991298548922344284
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057816 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251717 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A034782.P12991298548922344284

/-! ## A034782.P6405674914311823917

`eq[A085296(n+1), A251717(n+1)]`
-/

namespace A034782.P6405674914311823917
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085296 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251717 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A034782.P6405674914311823917

/-! ## A034782.P1515333631961182138

`eq[A168330(n+1), A251717(n+1)]`
-/

namespace A034782.P1515333631961182138
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168330 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251717 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A034782.P1515333631961182138

/-! ## A034782.P15595543144532467623

`eq[A251717(n+1)+1, A107279(n)²]`
-/

namespace A034782.P15595543144532467623
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251717 (n + 1) + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107279 n ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A034782.P15595543144532467623

/-! ## A034782.P10584429553398037935

`eq[A251717(n+1)+1, A107393(n)²]`
-/

namespace A034782.P10584429553398037935
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251717 (n + 1) + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107393 n ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A034782.P10584429553398037935

/-! ## A034782.P15895915363589337236

`∩[A024892(n+1), A067656(n+1)]`
-/

namespace A034782.P15895915363589337236
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024892 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067656 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A034782.P15895915363589337236

/-! ## A034782.P16605754145504695846

`eq[A251717(n+1), A378639(n+1)]`
-/

namespace A034782.P16605754145504695846
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251717 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378639 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A034782.P16605754145504695846

/-!
# A034783: Numbers k such that A034693(k) = 6.

The programs for A034783, there is no canonical definition to state claims against.
-/

/-! ## A034783.P11741572180743597576

`floor(A034846(n+1)/6)`
-/

namespace A034783.P11741572180743597576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A034846 (n + 1) : ℚ) / 6⌋

end

end A034783.P11741572180743597576

/-! ## A034783.P3547443589225746554

`ceil(A034846(n+1)/6-A007318(C(3, n)))`
-/

namespace A034783.P3547443589225746554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A034846 (n + 1) : ℚ) / 6 - (A007318 (Nat.choose 3 n) : ℚ)⌉

end

end A034783.P3547443589225746554

/-! ## A034783.P9438678935838790476

`eq[6, A034693(n+1)]+1`
-/

namespace A034783.P9438678935838790476
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034693 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A034783.P9438678935838790476

/-! ## A034783.P4812200698077384281

`eq[6, A034693(A028310(n))]`
-/

namespace A034783.P4812200698077384281
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034693 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A034783.P4812200698077384281

/-! ## A034783.P11285778066439576833

`A000720(p?[(A034693(n+1)-5)*A000040(n+1)])`
-/

namespace A034783.P11285778066439576833
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A034693 (n + 1) - 5) * A000040 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A034783.P11285778066439576833

/-! ## A034783.P16823056317488553730

`A008612(A034846(n+1))`
-/

namespace A034783.P16823056317488553730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008612 (A034846 (n + 1)).toNat

end

end A034783.P16823056317488553730

/-!
# A034784: Numbers n such that A034693(n) = 2.

The programs for A034784, the canonical program `A034784.P9791422119006832211` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A034784 has offset 1).

The definition of A034784 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8919 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A034784.P3586020738295780818

`A174166(n+1)-1`
-/

namespace A034784.P3586020738295780818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174166 (n + 1) - 1

end

end A034784.P3586020738295780818

namespace A034784

/-- `A174166(n+1)-1` -/
def P3586020738295780818.Spec : Prop :=
  ∀ n, P3586020738295780818.a n = A034784 (n + 1)

theorem P3586020738295780818.correct : P3586020738295780818.Spec := by
  intro n
  simp only [A034784, Nat.add_sub_cancel, A034784.P3586020738295780818.a, A034784.P9791422119006832211.f1, A034784.P9791422119006832211.f2, A034784.P9791422119006832211.a, A010051, A010051.P15078252821583414300.a, A101264, A101264.P18132826973570150985.a, A174166, A174166.P8885773317569641825.a, A057427, A057427.P3058147525557661423.a, A085090, A085090.P7648760271981686645.f1, A085090.P7648760271981686645.a, A100995, A100995.P9596901243079307024.f1, A100995.P9596901243079307024.a, A193056, A193056.P6449544040074946363.a, A000007, A000007.P6599383543502402472.a, A157658, A157658.P9261385800012601708.f1, A157658.P9261385800012601708.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A034784

/-! ## A034784.P3674849978749618487

`floor(A034849(n+1)/2)`
-/

namespace A034784.P3674849978749618487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A034849 (n + 1) : ℚ) / 2⌋

end

end A034784.P3674849978749618487

namespace A034784

/-- `floor(A034849(n+1)/2)` -/
def P3674849978749618487.Spec : Prop :=
  ∀ n, P3674849978749618487.a n = A034784 (n + 1)

end A034784

/-! ## A034784.P9158130009799198884

`A034849(n+1)%A174166(n+1)`
-/

namespace A034784.P9158130009799198884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A034849 (n + 1)) (A174166 (n + 1))

end

end A034784.P9158130009799198884

namespace A034784

/-- `A034849(n+1)%A174166(n+1)` -/
def P9158130009799198884.Spec : Prop :=
  ∀ n, P9158130009799198884.a n = A034784 (n + 1)

end A034784

/-! ## A034784.P15652069554931593979

`∪[A096784(n+1), A163778(n+1)]`
-/

namespace A034784.P15652069554931593979
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096784 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163778 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A034784.P15652069554931593979

namespace A034784

/-- `∪[A096784(n+1), A163778(n+1)]` -/
def P15652069554931593979.Spec : Prop :=
  ∀ n, (P15652069554931593979.a n : ℤ) = A034784 (n + 1)

end A034784

/-! ## A034784.P9791422119006832211

`lt[A010051(n+1), A101264(n)]`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A034784

/-- `lt[A010051(n+1), A101264(n)]` -/
def P9791422119006832211.Spec : Prop :=
  ∀ n, (P9791422119006832211.a n : ℤ) = A034784 (n + 1)

theorem P9791422119006832211.correct : P9791422119006832211.Spec := by
  intro n
  simp only [A034784, Nat.add_sub_cancel]

end A034784

/-! ## A034784.P17452503231865250572

`eq[2, A101264(n)+A005171(n+1)]`
-/

namespace A034784.P17452503231865250572
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101264 n + A005171 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A034784.P17452503231865250572

namespace A034784

/-- `eq[2, A101264(n)+A005171(n+1)]` -/
def P17452503231865250572.Spec : Prop :=
  ∀ n, (P17452503231865250572.a n : ℤ) = A034784 (n + 1)

end A034784

/-! ## A034784.P13944365938282821682

`lt[A010051(n+1), A010051(2*n+1)]`
-/

namespace A034784.P13944365938282821682
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A034784.P13944365938282821682

namespace A034784

/-- `lt[A010051(n+1), A010051(2*n+1)]` -/
def P13944365938282821682.Spec : Prop :=
  ∀ n, (P13944365938282821682.a n : ℤ) = A034784 (n + 1)

end A034784

/-! ## A034784.P5243511742240654780

`lt[A305800(2*n+1), A000005(n+1)]`
-/

namespace A034784.P5243511742240654780
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305800 (2 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A034784.P5243511742240654780

namespace A034784

/-- `lt[A305800(2*n+1), A000005(n+1)]` -/
def P5243511742240654780.Spec : Prop :=
  ∀ n, (P5243511742240654780.a n : ℤ) = A034784 (n + 1)

end A034784

/-! ## A034784.P6181947810809500771

`lt[A305800(2*n+1), A305800(n+1)]`
-/

namespace A034784.P6181947810809500771
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305800 (2 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305800 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A034784.P6181947810809500771

namespace A034784

/-- `lt[A305800(2*n+1), A305800(n+1)]` -/
def P6181947810809500771.Spec : Prop :=
  ∀ n, (P6181947810809500771.a n : ℤ) = A034784 (n + 1)

end A034784

/-! ## A034784.P4338729527577997413

`lt[A305801(2*n+1), A305801(n+1)]`
-/

namespace A034784.P4338729527577997413
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305801 (2 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305801 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A034784.P4338729527577997413

namespace A034784

/-- `lt[A305801(2*n+1), A305801(n+1)]` -/
def P4338729527577997413.Spec : Prop :=
  ∀ n, (P4338729527577997413.a n : ℤ) = A034784 (n + 1)

end A034784

/-! ## A034784.P9834161893301203881

`lt[A001222(2*n+1), atan(A001222(n+1))]`
-/

namespace A034784.P9834161893301203881
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (2 * n + 1)

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.arctan (A001222 (n + 1) : ℝ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℝ) < f2 j) n

end

end A034784.P9834161893301203881

namespace A034784

/-- `lt[A001222(2*n+1), atan(A001222(n+1))]` -/
def P9834161893301203881.Spec : Prop :=
  ∀ n, (P9834161893301203881.a n : ℤ) = A034784 (n + 1)

end A034784

/-! ## A034784.P916102616304797683

`lt[A006530(2*(n+1))+n, A006530(2*n+1)]`
-/

namespace A034784.P916102616304797683
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (2 * (n + 1)) + (n : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A034784.P916102616304797683

namespace A034784

/-- `lt[A006530(2*(n+1))+n, A006530(2*n+1)]` -/
def P916102616304797683.Spec : Prop :=
  ∀ n, (P916102616304797683.a n : ℤ) = A034784 (n + 1)

end A034784

/-! ## A034784.P9131086385584567227

`lt[A001222(2*n+1)², log2(A001222(2*(n+1)))]`
-/

namespace A034784.P9131086385584567227
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (2 * n + 1) ^ 2

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A001222 (2 * (n + 1)) : ℝ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℝ) < f2 j) n

end

end A034784.P9131086385584567227

namespace A034784

/-- `lt[A001222(2*n+1)², log2(A001222(2*(n+1)))]` -/
def P9131086385584567227.Spec : Prop :=
  ∀ n, (P9131086385584567227.a n : ℤ) = A034784 (n + 1)

end A034784

/-! ## A034784.P651081223868124454

`eq[A066247(n+1), A340101(n)]`
-/

namespace A034784.P651081223868124454
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066247 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340101 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A034784.P651081223868124454

namespace A034784

/-- `eq[A066247(n+1), A340101(n)]` -/
def P651081223868124454.Spec : Prop :=
  ∀ n, (P651081223868124454.a n : ℤ) = A034784 (n + 1)

end A034784

/-! ## A034784.P15786542819368594715

`lt[A351236(2*n+1), A000005(n+1)]`
-/

namespace A034784.P15786542819368594715
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351236 (2 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A034784.P15786542819368594715

namespace A034784

/-- `lt[A351236(2*n+1), A000005(n+1)]` -/
def P15786542819368594715.Spec : Prop :=
  ∀ n, (P15786542819368594715.a n : ℤ) = A034784 (n + 1)

end A034784

/-! ## A034784.P14960277327206265121

`(p?[2*A002808(n+1)-1]-1)/2`
-/

namespace A034784.P14960277327206265121
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A002808 (n + 1) - 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - 1 : ℚ) / 2

end

end A034784.P14960277327206265121

namespace A034784

/-- `(p?[2*A002808(n+1)-1]-1)/2` -/
def P14960277327206265121.Spec : Prop :=
  ∀ n, P14960277327206265121.a n = (A034784 (n + 1) : ℚ)

end A034784

/-! ## A034784.P12772349490719344771

`(p?[2*A018252(n+1)-1]-1)/2`
-/

namespace A034784.P12772349490719344771
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A018252 (n + 1) - 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - 1 : ℚ) / 2

end

end A034784.P12772349490719344771

namespace A034784

/-- `(p?[2*A018252(n+1)-1]-1)/2` -/
def P12772349490719344771.Spec : Prop :=
  ∀ n, P12772349490719344771.a n = (A034784 (n + 1) : ℚ)

end A034784

/-! ## A034784.P16782323160737110083

`lt[2, A101264(n)*A299701(n+1)]`
-/

namespace A034784.P16782323160737110083
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101264 n * A299701 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A034784.P16782323160737110083

namespace A034784

/-- `lt[2, A101264(n)*A299701(n+1)]` -/
def P16782323160737110083.Spec : Prop :=
  ∀ n, (P16782323160737110083.a n : ℤ) = A034784 (n + 1)

end A034784

/-! ## A034784.P6781410444934172856

`lt[A101040(n+2), A101040(2*(n+1))]/2`
-/

namespace A034784.P6781410444934172856
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101040 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101040 (2 * (n + 1))

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => f1 j < f2 j) n : ℚ) / 2

end

end A034784.P6781410444934172856

namespace A034784

/-- `lt[A101040(n+2), A101040(2*(n+1))]/2` -/
def P6781410444934172856.Spec : Prop :=
  ∀ n, P6781410444934172856.a n = (A034784 (n + 1) : ℚ)

end A034784

/-! ## A034784.P54786147676722896

`lt[A319357(2*(n+1)), A319357(n+2)]/2`
-/

namespace A034784.P54786147676722896
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319357 (2 * (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319357 (n + 2)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => f1 j < f2 j) n : ℚ) / 2

end

end A034784.P54786147676722896

namespace A034784

/-- `lt[A319357(2*(n+1)), A319357(n+2)]/2` -/
def P54786147676722896.Spec : Prop :=
  ∀ n, P54786147676722896.a n = (A034784 (n + 1) : ℚ)

end A034784

/-!
# A034785: a(n) = 2^(n-th prime).

The programs for A034785, the canonical program `A034785.P3164045001840823400` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A034785 has offset 1).

The definition of A034785 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A034785.P3164045001840823400

`2^A000040(n+1)`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A034785

/-- `2^A000040(n+1)` -/
def P3164045001840823400.Spec : Prop :=
  ∀ n, P3164045001840823400.a n = (A034785 (n + 1) : ℚ)

end A034785

/-! ## A034785.P11195167087703062631

`2^p?[comp[n²]]`
-/

namespace A034785.P11195167087703062631
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A034785.P11195167087703062631

namespace A034785

/-- `2^p?[comp[n²]]` -/
def P11195167087703062631.Spec : Prop :=
  ∀ n, (P11195167087703062631.a n : ℤ) = A034785 (n + 1)

end A034785

/-! ## A034785.P5746778607461801969

`2^eq[1, ∑{e}[n, #]]`
-/

namespace A034785.P5746778607461801969
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f3 n), Nat.factorization (f3 n) p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A034785.P5746778607461801969

namespace A034785

/-- `2^eq[1, ∑{e}[n, #]]` -/
def P5746778607461801969.Spec : Prop :=
  ∀ n, (P5746778607461801969.a n : ℤ) = A034785 (n + 1)

end A034785

/-! ## A034785.P1678771924503793743

`record[2^∑{p}[n+2, #]]`
-/

namespace A034785.P1678771924503793743
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ (∑ p ∈ Nat.primeFactors (f2 n), p)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A034785.P1678771924503793743

namespace A034785

/-- `record[2^∑{p}[n+2, #]]` -/
def P1678771924503793743.Spec : Prop :=
  ∀ n, (P1678771924503793743.a n : ℤ) = A034785 (n + 1)

end A034785

/-! ## A034785.P12541017597366603666

`2^record[∑{p}[2-n, #]]`
-/

namespace A034785.P12541017597366603666
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - (n : ℤ)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f2 n).natAbs, p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A034785.P12541017597366603666

namespace A034785

/-- `2^record[∑{p}[2-n, #]]` -/
def P12541017597366603666.Spec : Prop :=
  ∀ n, (P12541017597366603666.a n : ℤ) = A034785 (n + 1)

end A034785

/-! ## A034785.P6093287607428127784

`record[∏{p}[n+2, 2^#]]`
-/

namespace A034785.P6093287607428127784
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), 2 ^ p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A034785.P6093287607428127784

namespace A034785

/-- `record[∏{p}[n+2, 2^#]]` -/
def P6093287607428127784.Spec : Prop :=
  ∀ n, (P6093287607428127784.a n : ℤ) = A034785 (n + 1)

end A034785

/-! ## A034785.P10553244328636757595

`record[4^∏{p}[n, #/2]]`
-/

namespace A034785.P10553244328636757595
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (4 : ℝ) ^ ((∏ p ∈ Nat.primeFactors (f2 n), (p : ℚ) / 2 : ℚ) : ℝ)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A034785.P10553244328636757595

namespace A034785

/-- `record[4^∏{p}[n, #/2]]` -/
def P10553244328636757595.Spec : Prop :=
  ∀ n, P10553244328636757595.a n = (A034785 (n + 1) : ℝ)

end A034785

/-! ## A034785.P105679609655894391

`2^eq[2, ∏{e}[n², #]]`
-/

namespace A034785.P105679609655894391
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f3 n), Nat.factorization (f3 n) p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A034785.P105679609655894391

namespace A034785

/-- `2^eq[2, ∏{e}[n², #]]` -/
def P105679609655894391.Spec : Prop :=
  ∀ n, (P105679609655894391.a n : ℤ) = A034785 (n + 1)

end A034785

/-! ## A034785.P4763568550578999216

`2^eq[n, ∏{d}[n, -#]]`
-/

namespace A034785.P4763568550578999216
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f3 n), (-(d : ℤ))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A034785.P4763568550578999216

namespace A034785

/-- `2^eq[n, ∏{d}[n, -#]]` -/
def P4763568550578999216.Spec : Prop :=
  ∀ n, (P4763568550578999216.a n : ℤ) = A034785 (n + 1)

end A034785

/-! ## A034785.P17891006650686622914

`2^eq[n+1, ∑{d}[n, #]]`
-/

namespace A034785.P17891006650686622914
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f3 n), d

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A034785.P17891006650686622914

namespace A034785

/-- `2^eq[n+1, ∑{d}[n, #]]` -/
def P17891006650686622914.Spec : Prop :=
  ∀ n, (P17891006650686622914.a n : ℤ) = A034785 (n + 1)

end A034785

/-!
# A034786: Number of linearly ordered Girard monoids of size n; number of t-norms on an n-chain inducing an involutive residual negator.

The programs for A034786, there is no canonical definition to state claims against.
-/

/-! ## A034786.P9936686286906501986

`A305749(4*C((n-1)%(n+1), 2)+1)`
-/

namespace A034786.P9936686286906501986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305749 (4 * Nat.choose (Int.tmod ((n : ℤ) - 1) (n + 1 : ℤ)).toNat 2 + 1)

end

end A034786.P9936686286906501986

/-! ## A034786.P15862375303939418169

`A105363(A047749(n))`
-/

namespace A034786.P15862375303939418169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105363 (A047749 n).toNat

end

end A034786.P15862375303939418169

/-! ## A034786.P15252462372302849283

`A227194(A210736(n))`
-/

namespace A034786.P15252462372302849283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227194 (A210736 n).toNat

end

end A034786.P15252462372302849283

/-! ## A034786.P13524982237711692715

`A335524(A047749(n)+1)`
-/

namespace A034786.P13524982237711692715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335524 (A047749 n + 1).toNat

end

end A034786.P13524982237711692715

/-! ## A034786.P13284344397156973966

`A135665(A287278(n))+A319685(n+1)!`
-/

namespace A034786.P13284344397156973966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135665 (A287278 n).toNat + (Nat.factorial (A319685 (n + 1)).toNat : ℤ)

end

end A034786.P13284344397156973966

/-!
# A034787: a(n) = n-th sextic factorial number divided by 5.

The programs for A034787, there is no canonical definition to state claims against.
-/

/-! ## A034787.P8159726341712811273

`∏[a(n-1)+6]` with `a(0)=1, a(1)=11`
-/

namespace A034787.P8159726341712811273
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 11] fun n f1 =>
  f1 (n - 1) + 6

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A034787.P8159726341712811273

/-! ## A034787.P8309350383879112338

`(6*n+5)*a(n-1)` with `a(0)=1`
-/

namespace A034787.P8309350383879112338
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  (6 * n + 5) * a (n - 1)

end

end A034787.P8309350383879112338

/-! ## A034787.P2702213435685061894

`a(n-1)*Δ[(2*n)²-(1-n)²]` with `a(0)=1`
-/

namespace A034787.P2702213435685061894
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((2 * n) ^ 2 : ℤ) - (1 - (n : ℤ)) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) * (f1 (n + 1) - f1 n)

end

end A034787.P2702213435685061894

/-! ## A034787.P8835603367729023093

`∏[record[Δ[A166304(n)]]]`
-/

namespace A034787.P8835603367729023093
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166304 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A034787.P8835603367729023093

/-! ## A034787.P17285523193720920155

`∏[record[A166521(n+1)]]`
-/

namespace A034787.P17285523193720920155
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166521 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A034787.P17285523193720920155

/-!
# A034788: a(n) is the n-th sextic factorial number divided by 6.

The programs for A034788, the canonical program `A034788.P15575982674204980159` is in `Seq.B000.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A034788 has offset 1).

The definition of A034788 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A034788.P15575982674204980159

`6^n*(n+1)!`

The canonical program, it is in `Seq.B000.C006`.
-/

namespace A034788

/-- `6^n*(n+1)!` -/
def P15575982674204980159.Spec : Prop :=
  ∀ n, (P15575982674204980159.a n : ℤ) = A034788 (n + 1)

theorem P15575982674204980159.correct : P15575982674204980159.Spec := by
  intro n
  simp only [A034788, Nat.add_sub_cancel]

end A034788

/-! ## A034788.P6590869707224471846

`6*(n+1)*a(n-1)` with `a(0)=1`
-/

namespace A034788.P6590869707224471846
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  6 * (n + 1) * a (n - 1)

end

end A034788.P6590869707224471846

namespace A034788

/-- `6*(n+1)*a(n-1)` -/
def P6590869707224471846.Spec : Prop :=
  ∀ n, (P6590869707224471846.a n : ℤ) = A034788 (n + 1)

end A034788

/-! ## A034788.P3867193138812103266

`∏[6*(n+1)]/6`
-/

namespace A034788.P3867193138812103266
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6 * (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∏ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) / 6

end

end A034788.P3867193138812103266

namespace A034788

/-- `∏[6*(n+1)]/6` -/
def P3867193138812103266.Spec : Prop :=
  ∀ n, P3867193138812103266.a n = (A034788 (n + 1) : ℚ)

end A034788

/-! ## A034788.P15501673671567807880

`∏[a(n-1)+6]` with `a(0)=1, a(1)=12`
-/

namespace A034788.P15501673671567807880
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 12] fun n f1 =>
  f1 (n - 1) + 6

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A034788.P15501673671567807880

namespace A034788

/-- `∏[a(n-1)+6]` -/
def P15501673671567807880.Spec : Prop :=
  ∀ n, (P15501673671567807880.a n : ℤ) = A034788 (n + 1)

end A034788

/-! ## A034788.P4728961949416025409

`∏[(n+1)*(3%(n+3))!]`
-/

namespace A034788.P4728961949416025409
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) * Nat.factorial (3 % (n + 3))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A034788.P4728961949416025409

namespace A034788

/-- `∏[(n+1)*(3%(n+3))!]` -/
def P4728961949416025409.Spec : Prop :=
  ∀ n, (P4728961949416025409.a n : ℤ) = A034788 (n + 1)

end A034788

/-!
# A034789: Related to sextic factorial numbers A008542.

The programs for A034789, there is no canonical definition to state claims against.
-/

/-! ## A034789.P11216477740927886556

`6^n*A008542(n+1)/(n+1)!`
-/

namespace A034789.P11216477740927886556
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((6 ^ n : ℤ) * A008542 (n + 1) : ℚ) / (Nat.factorial (n + 1) : ℚ)

end

end A034789.P11216477740927886556

/-! ## A034789.P4631191035305917412

`A092083(∑[n]+1)`
-/

namespace A034789.P4631191035305917412
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092083 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A034789.P4631191035305917412

/-! ## A034789.P11983285366596106485

`record[A092083(n+1)]`
-/

namespace A034789.P11983285366596106485
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092083 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A034789.P11983285366596106485

/-! ## A034789.P16139219108528496504

`3*a(n-1)/(n+1)*A017545(n)` with `a(0)=1`
-/

namespace A034789.P16139219108528496504
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  3 * a (n - 1) / (n + 1 : ℚ) * (A017545 n : ℚ)

end

end A034789.P16139219108528496504

/-! ## A034789.P2433784981089574497

`A004993(n+1)/6`
-/

namespace A034789.P2433784981089574497
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A004993 (n + 1) : ℚ) / 6

end

end A034789.P2433784981089574497

/-! ## A034789.P11323819956755340342

`A004997(n)/(n+1)`
-/

namespace A034789.P11323819956755340342
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A004997 n : ℚ) / (n + 1 : ℚ)

end

end A034789.P11323819956755340342

/-! ## A034789.P5497896041401258134

`Δ[∑[A004993(n)]/6]`
-/

namespace A034789.P5497896041401258134
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004993 n

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℤ) : ℚ) / 6

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A034789.P5497896041401258134

/-! ## A034789.P15456605014571626057

`record[A004993(A057979(n))/6]`
-/

namespace A034789.P15456605014571626057
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A004993 (A057979 n).toNat : ℚ) / 6

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A034789.P15456605014571626057

/-!
# A034791: a(n) is square mod a(i), i < n.

The programs for A034791, there is no canonical definition to state claims against.
-/

/-! ## A034791.P8359115046266467859

`xor(A018346(n+1), A026741(n+2))+1`
-/

namespace A034791.P8359115046266467859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A018346 (n + 1)) (A026741 (n + 2)) + 1

end

end A034791.P8359115046266467859

/-! ## A034791.P13706430511016993177

`A344167(A065494(n))`
-/

namespace A034791.P13706430511016993177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344167 (A065494 n).toNat

end

end A034791.P13706430511016993177

/-! ## A034791.P9223415357352654438

`A316094(A136299(n))`
-/

namespace A034791.P9223415357352654438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316094 (A136299 n).toNat

end

end A034791.P9223415357352654438

/-!
# A034792: Lexicographically earliest sequence of pairwise coprime triangular numbers.

The programs for A034792, there is no canonical definition to state claims against.
-/

/-! ## A034792.P5856885218672638146

`A057944(∑[∑[A042549(n)]])`
-/

namespace A034792.P5856885218672638146
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042549 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057944 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A034792.P5856885218672638146

/-! ## A034792.P10889843159410752173

`A127739(A059502(record[∏{p}[n, #]]))`
-/

namespace A034792.P10889843159410752173
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), p

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127739 (A059502 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))).toNat

end

end A034792.P10889843159410752173

/-!
# A034793: a(1)=1; thereafter a(n+1) is the least k > a(n) such that k is a square mod a(i) for all i<= n.

The programs for A034793, there is no canonical definition to state claims against.
-/

/-! ## A034793.P5413938670769999287

`record[A032742(n+1)²-A176447(n)]`
-/

namespace A034793.P5413938670769999287
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032742 (n + 1) ^ 2 - A176447 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A034793.P5413938670769999287

/-! ## A034793.P11402536931189780074

`A181385(lt[A272252(n), A272273(2*n)])`
-/

namespace A034793.P11402536931189780074
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272252 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272273 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181385 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A034793.P11402536931189780074

/-! ## A034793.P6446175954151032753

`record[A061579(A105570(n))+A000026(n+1)]`
-/

namespace A034793.P6446175954151032753
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061579 (A105570 n).toNat + A000026 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A034793.P6446175954151032753

/-! ## A034793.P3579662479751993151

`eq[A027926(n+2), A027926(n)]+1`
-/

namespace A034793.P3579662479751993151
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027926 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027926 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A034793.P3579662479751993151

/-! ## A034793.P16058545467380035390

`eq[A006705(n+1), A303697(n)]`
-/

namespace A034793.P16058545467380035390
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006705 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303697 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A034793.P16058545467380035390

/-! ## A034793.P10845314024443722182

`record[A273943(A110654(A138326(n+1)))]`
-/

namespace A034793.P10845314024443722182
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273943 (A110654 (A138326 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A034793.P10845314024443722182

/-!
# A034794: a(n) is the least prime p > a(n-1) such that a(n-1) is a quadratic residue mod p.

The programs for A034794, there is no canonical definition to state claims against.
-/

/-! ## A034794.P11130679301921077

`A097152(a(n-1))` with `a(0)=2`
-/

namespace A034794.P11130679301921077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A097152 (a (n - 1)).toNat

end

end A034794.P11130679301921077

/-! ## A034794.P12255658135579764571

`A184774(lt[A004125(n+1), A077371(n+1)])`
-/

namespace A034794.P12255658135579764571
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004125 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077371 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184774 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A034794.P12255658135579764571

/-! ## A034794.P10048355751446738833

`p?[∑[A072341(A003386(n+1))]]`
-/

namespace A034794.P10048355751446738833
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072341 (A003386 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A034794.P10048355751446738833

/-! ## A034794.P3984442812693252437

`A184774(lt[A027642(3*n+4), A079368(n+1)])`
-/

namespace A034794.P3984442812693252437
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027642 (3 * n + 4)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079368 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184774 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A034794.P3984442812693252437

/-!
# A034795: a(n) is the least prime > a(n-1) that is a quadratic residue mod a(n-1).

The programs for A034795, there is no canonical definition to state claims against.
-/

/-! ## A034795.P3931149730967614295

`∩[A000040(A091072(n+1)), A234852(n+1)]`
-/

namespace A034795.P3931149730967614295
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A091072 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234852 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A034795.P3931149730967614295

/-! ## A034795.P17866509557134296905

`p?[∑[A219609(A062201(n))]]`
-/

namespace A034795.P17866509557134296905
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219609 (A062201 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A034795.P17866509557134296905

/-! ## A034795.P3242707118813758381

`p?[∑[A083021(A244788(n+1))]]`
-/

namespace A034795.P3242707118813758381
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083021 (A244788 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A034795.P3242707118813758381

/-!
# A034796: a(1)=1, a(n-1) is a square mod a(n), and a(n) > a(n-1).

The programs for A034796, there is no canonical definition to state claims against.
-/

/-! ## A034796.P5267333718616174419

`A047224(a(n-1))` with `a(0)=1`
-/

namespace A034796.P5267333718616174419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A047224 (a (n - 1)).toNat

end

end A034796.P5267333718616174419

/-!
# A034797: a(0) = 0; a(n+1) = a(n) + 2^a(n).

The programs for A034797, there is no canonical definition to state claims against.
-/

/-! ## A034797.P3333086768708644816

`∑[record[2/a(n-1)²]]` with `a(0)=0, a(1)=1`
-/

namespace A034797.P3333086768708644816
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.rec [0, 1] fun n f2 =>
  2 / f2 (n - 1) ^ 2

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A034797.P3333086768708644816

/-!
# A034798: Value of n considered as a game.

The programs for A034798, there is no canonical definition to state claims against.
-/

/-! ## A034798.P10783608283217376743

`A276084(A344535(n)%A025420(n+1))`
-/

namespace A034798.P10783608283217376743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276084 (Int.tmod (A344535 n) (A025420 (n + 1))).toNat

end

end A034798.P10783608283217376743

/-! ## A034798.P11406581746855510837

`A276084(A006519(n+1)*A344535(n))`
-/

namespace A034798.P11406581746855510837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276084 (A006519 (n + 1) * A344535 n).toNat

end

end A034798.P11406581746855510837

/-! ## A034798.P756487969627083190

`A328620(A087612(n+1)*A344535(n))`
-/

namespace A034798.P756487969627083190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328620 (A087612 (n + 1) * A344535 n).toNat

end

end A034798.P756487969627083190

/-! ## A034798.P14051321259088931277

`A276084(A001511(n+1)²*A344535(n))`
-/

namespace A034798.P14051321259088931277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276084 (A001511 (n + 1) ^ 2 * A344535 n).toNat

end

end A034798.P14051321259088931277

